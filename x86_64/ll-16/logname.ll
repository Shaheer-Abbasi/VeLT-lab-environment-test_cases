; ModuleID = 'src/logname.bc'
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !347
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !317
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !337
@.str.1.30 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !339
@.str.2.32 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !341
@.str.3.31 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !343
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !345
@.str.4.25 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !349
@.str.5.26 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !351
@.str.6.27 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !356
@opterr = external local_unnamed_addr global i32, align 4
@.str.40 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !361
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.41, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.42, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !364
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !740, metadata !DIExpression()), !dbg !741
  %2 = icmp eq i32 %0, 0, !dbg !742
  br i1 %2, label %8, label %3, !dbg !744

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !745, !tbaa !747
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !745
  %6 = load ptr, ptr @program_name, align 8, !dbg !745, !tbaa !747
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !745
  br label %31, !dbg !745

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !751
  %10 = load ptr, ptr @program_name, align 8, !dbg !751, !tbaa !747
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #36, !dbg !751
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !753
  %13 = load ptr, ptr @stdout, align 8, !dbg !753, !tbaa !747
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !753
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !754
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !754
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !755
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !755
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !756, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !768, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata ptr poison, metadata !768, metadata !DIExpression()), !dbg !773
  tail call void @emit_bug_reporting_address() #36, !dbg !775
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !776
  call void @llvm.dbg.value(metadata ptr %17, metadata !771, metadata !DIExpression()), !dbg !773
  %18 = icmp eq ptr %17, null, !dbg !777
  br i1 %18, label %26, label %19, !dbg !779

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.43, i64 noundef 3) #37, !dbg !780
  %21 = icmp eq i32 %20, 0, !dbg !780
  br i1 %21, label %26, label %22, !dbg !781

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #36, !dbg !782
  %24 = load ptr, ptr @stdout, align 8, !dbg !782, !tbaa !747
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !782
  br label %26, !dbg !784

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !768, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !772, metadata !DIExpression()), !dbg !773
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #36, !dbg !785
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3) #36, !dbg !785
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #36, !dbg !786
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.47) #36, !dbg !786
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !787
  unreachable, !dbg !787
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !788 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !793 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !799 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !802 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !66 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !212, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata ptr %0, metadata !213, metadata !DIExpression()), !dbg !806
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !807, !tbaa !808
  %3 = icmp eq i32 %2, -1, !dbg !810
  br i1 %3, label %4, label %16, !dbg !811

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.13) #36, !dbg !812
  call void @llvm.dbg.value(metadata ptr %5, metadata !214, metadata !DIExpression()), !dbg !813
  %6 = icmp eq ptr %5, null, !dbg !814
  br i1 %6, label %14, label %7, !dbg !815

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !816, !tbaa !817
  %9 = icmp eq i8 %8, 0, !dbg !816
  br i1 %9, label %14, label %10, !dbg !818

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !819, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata ptr @.str.14, metadata !825, metadata !DIExpression()), !dbg !826
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.14) #37, !dbg !828
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
  br label %128, !dbg !837

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !217, metadata !DIExpression()), !dbg !806
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.15) #37, !dbg !838
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !839
  call void @llvm.dbg.value(metadata ptr %24, metadata !219, metadata !DIExpression()), !dbg !806
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !840
  call void @llvm.dbg.value(metadata ptr %25, metadata !220, metadata !DIExpression()), !dbg !806
  %26 = icmp eq ptr %25, null, !dbg !841
  br i1 %26, label %58, label %27, !dbg !842

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !843
  br i1 %28, label %58, label %29, !dbg !844

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !221, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata i64 0, metadata !225, metadata !DIExpression()), !dbg !845
  %30 = icmp ult ptr %24, %25, !dbg !846
  br i1 %30, label %31, label %52, !dbg !847

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !806
  %33 = load ptr, ptr %32, align 8, !tbaa !747
  br label %34, !dbg !847

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !221, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata i64 %36, metadata !225, metadata !DIExpression()), !dbg !845
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !848
  call void @llvm.dbg.value(metadata ptr %37, metadata !221, metadata !DIExpression()), !dbg !845
  %38 = load i8, ptr %35, align 1, !dbg !848, !tbaa !817
  %39 = sext i8 %38 to i64, !dbg !848
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !848
  %41 = load i16, ptr %40, align 2, !dbg !848, !tbaa !849
  %42 = freeze i16 %41, !dbg !851
  %43 = lshr i16 %42, 13, !dbg !851
  %44 = and i16 %43, 1, !dbg !851
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !852
  call void @llvm.dbg.value(metadata i64 %46, metadata !225, metadata !DIExpression()), !dbg !845
  %47 = icmp ult ptr %37, %25, !dbg !846
  %48 = icmp ult i64 %46, 2, !dbg !853
  %49 = select i1 %47, i1 %48, i1 false, !dbg !853
  br i1 %49, label %34, label %50, !dbg !847, !llvm.loop !854

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !856
  br i1 %51, label %52, label %54, !dbg !858

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !858

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !858
  call void @llvm.dbg.value(metadata i8 %57, metadata !217, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata ptr %56, metadata !220, metadata !DIExpression()), !dbg !806
  br label %58, !dbg !859

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !806
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !806
  call void @llvm.dbg.value(metadata i8 %60, metadata !217, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata ptr %59, metadata !220, metadata !DIExpression()), !dbg !806
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.16) #37, !dbg !860
  call void @llvm.dbg.value(metadata i64 %61, metadata !226, metadata !DIExpression()), !dbg !806
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !861
  call void @llvm.dbg.value(metadata ptr %62, metadata !227, metadata !DIExpression()), !dbg !806
  br label %63, !dbg !862

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !806
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !806
  call void @llvm.dbg.value(metadata i8 %65, metadata !217, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata ptr %64, metadata !227, metadata !DIExpression()), !dbg !806
  %66 = load i8, ptr %64, align 1, !dbg !863, !tbaa !817
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !864

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !865
  %69 = load i8, ptr %68, align 1, !dbg !868, !tbaa !817
  %70 = icmp eq i8 %69, 45, !dbg !869
  %71 = select i1 %70, i8 0, i8 %65, !dbg !870
  br label %72, !dbg !870

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !806
  call void @llvm.dbg.value(metadata i8 %73, metadata !217, metadata !DIExpression()), !dbg !806
  %74 = tail call ptr @__ctype_b_loc() #39, !dbg !871
  %75 = load ptr, ptr %74, align 8, !dbg !871, !tbaa !747
  %76 = sext i8 %66 to i64, !dbg !871
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !871
  %78 = load i16, ptr %77, align 2, !dbg !871, !tbaa !849
  %79 = and i16 %78, 8192, !dbg !871
  %80 = icmp eq i16 %79, 0, !dbg !871
  br i1 %80, label %96, label %81, !dbg !873

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !874
  br i1 %82, label %98, label %83, !dbg !877

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !878
  %85 = load i8, ptr %84, align 1, !dbg !878, !tbaa !817
  %86 = sext i8 %85 to i64, !dbg !878
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !878
  %88 = load i16, ptr %87, align 2, !dbg !878, !tbaa !849
  %89 = and i16 %88, 8192, !dbg !878
  %90 = icmp eq i16 %89, 0, !dbg !878
  br i1 %90, label %91, label %98, !dbg !879

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !880
  %93 = icmp ne i8 %92, 0, !dbg !880
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !882
  br i1 %95, label %96, label %98, !dbg !882

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !883
  call void @llvm.dbg.value(metadata ptr %97, metadata !227, metadata !DIExpression()), !dbg !806
  br label %63, !dbg !862, !llvm.loop !884

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !886
  %100 = load ptr, ptr @stdout, align 8, !dbg !886, !tbaa !747
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !886
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !282, metadata !DIExpression()), !dbg !806
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.30, i64 noundef 6) #37, !dbg !907
  %103 = icmp eq i32 %102, 0, !dbg !907
  br i1 %103, label %107, label %104, !dbg !909

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.31, i64 noundef 9) #37, !dbg !910
  %106 = icmp eq i32 %105, 0, !dbg !910
  br i1 %106, label %107, label %110, !dbg !911

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !912
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #36, !dbg !912
  br label %113, !dbg !914

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !915
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #36, !dbg !915
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !917, !tbaa !747
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %114), !dbg !917
  %116 = load ptr, ptr @stdout, align 8, !dbg !918, !tbaa !747
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %116), !dbg !918
  %118 = ptrtoint ptr %64 to i64, !dbg !919
  %119 = sub i64 %118, %99, !dbg !919
  %120 = load ptr, ptr @stdout, align 8, !dbg !919, !tbaa !747
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !919
  %122 = load ptr, ptr @stdout, align 8, !dbg !920, !tbaa !747
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %122), !dbg !920
  %124 = load ptr, ptr @stdout, align 8, !dbg !921, !tbaa !747
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %124), !dbg !921
  %126 = load ptr, ptr @stdout, align 8, !dbg !922, !tbaa !747
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !922
  br label %128, !dbg !923

128:                                              ; preds = %113, %19
  ret void, !dbg !923
}

; Function Attrs: nounwind
declare !dbg !924 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !928 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !932 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !934 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !937 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !940 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !943 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !946 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !952 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !953 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !959 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !964, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.value(metadata ptr %1, metadata !965, metadata !DIExpression()), !dbg !967
  %3 = load ptr, ptr %1, align 8, !dbg !968, !tbaa !747
  tail call void @set_program_name(ptr noundef %3) #36, !dbg !969
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #36, !dbg !970
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #36, !dbg !971
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #36, !dbg !972
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !973
  %8 = load ptr, ptr @Version, align 8, !dbg !974, !tbaa !747
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #36, !dbg !975
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %8, i1 noundef zeroext true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #36, !dbg !976
  %10 = load i32, ptr @optind, align 4, !dbg !977, !tbaa !808
  %11 = icmp slt i32 %10, %0, !dbg !979
  br i1 %11, label %12, label %19, !dbg !980

12:                                               ; preds = %2
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #36, !dbg !981
  %14 = load i32, ptr @optind, align 4, !dbg !981, !tbaa !808
  %15 = sext i32 %14 to i64, !dbg !981
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !981
  %17 = load ptr, ptr %16, align 8, !dbg !981, !tbaa !747
  %18 = tail call ptr @quote(ptr noundef %17) #36, !dbg !981
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13, ptr noundef %18) #36, !dbg !981
  tail call void @usage(i32 noundef 1) #40, !dbg !983
  unreachable, !dbg !983

19:                                               ; preds = %2
  %20 = tail call ptr @getlogin() #36, !dbg !984
  call void @llvm.dbg.value(metadata ptr %20, metadata !966, metadata !DIExpression()), !dbg !967
  %21 = icmp eq ptr %20, null, !dbg !985
  br i1 %21, label %22, label %24, !dbg !987

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #36, !dbg !988
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %23) #36, !dbg !988
  unreachable, !dbg !988

24:                                               ; preds = %19
  %25 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %20), !dbg !989
  ret i32 0, !dbg !990
}

; Function Attrs: nounwind
declare !dbg !991 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !994 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !995 i32 @atexit(ptr noundef) local_unnamed_addr #2

declare !dbg !998 ptr @getlogin() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1001 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1004 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1006, metadata !DIExpression()), !dbg !1007
  store ptr %0, ptr @file_name, align 8, !dbg !1008, !tbaa !747
  ret void, !dbg !1009
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1010 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1014, metadata !DIExpression()), !dbg !1015
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1016, !tbaa !1017
  ret void, !dbg !1019
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1020 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1025, !tbaa !747
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1026
  %3 = icmp eq i32 %2, 0, !dbg !1027
  br i1 %3, label %22, label %4, !dbg !1028

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1029, !tbaa !1017, !range !1030, !noundef !792
  %6 = icmp eq i8 %5, 0, !dbg !1029
  br i1 %6, label %11, label %7, !dbg !1031

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1032
  %9 = load i32, ptr %8, align 4, !dbg !1032, !tbaa !808
  %10 = icmp eq i32 %9, 32, !dbg !1033
  br i1 %10, label %22, label %11, !dbg !1034

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1.21, i32 noundef 5) #36, !dbg !1035
  call void @llvm.dbg.value(metadata ptr %12, metadata !1022, metadata !DIExpression()), !dbg !1036
  %13 = load ptr, ptr @file_name, align 8, !dbg !1037, !tbaa !747
  %14 = icmp eq ptr %13, null, !dbg !1037
  %15 = tail call ptr @__errno_location() #39, !dbg !1039
  %16 = load i32, ptr %15, align 4, !dbg !1039, !tbaa !808
  br i1 %14, label %19, label %17, !dbg !1040

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1041
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.22, ptr noundef %18, ptr noundef %12) #36, !dbg !1041
  br label %20, !dbg !1041

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.23, ptr noundef %12) #36, !dbg !1042
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1043, !tbaa !808
  tail call void @_exit(i32 noundef %21) #38, !dbg !1044
  unreachable, !dbg !1044

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1045, !tbaa !747
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1047
  %25 = icmp eq i32 %24, 0, !dbg !1048
  br i1 %25, label %28, label %26, !dbg !1049

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1050, !tbaa !808
  tail call void @_exit(i32 noundef %27) #38, !dbg !1051
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !1062, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i32 %1, metadata !1063, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata ptr %2, metadata !1064, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata ptr %3, metadata !1065, metadata !DIExpression()), !dbg !1066
  tail call fastcc void @flush_stdout(), !dbg !1067
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1068, !tbaa !747
  %6 = icmp eq ptr %5, null, !dbg !1068
  br i1 %6, label %8, label %7, !dbg !1070

7:                                                ; preds = %4
  tail call void %5() #36, !dbg !1071
  br label %12, !dbg !1071

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1072, !tbaa !747
  %10 = tail call ptr @getprogname() #37, !dbg !1072
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef %10) #36, !dbg !1072
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1074
  ret void, !dbg !1075
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1076 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1078, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i32 1, metadata !1080, metadata !DIExpression()), !dbg !1085
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1088
  %2 = icmp slt i32 %1, 0, !dbg !1089
  br i1 %2, label %6, label %3, !dbg !1090

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1091, !tbaa !747
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1091
  br label %6, !dbg !1091

6:                                                ; preds = %3, %0
  ret void, !dbg !1092
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1093 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1095, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %1, metadata !1096, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata ptr %2, metadata !1097, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata ptr %3, metadata !1098, metadata !DIExpression()), !dbg !1099
  %6 = load ptr, ptr @stderr, align 8, !dbg !1100, !tbaa !747
  call void @llvm.dbg.value(metadata ptr %6, metadata !1101, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata ptr %2, metadata !1141, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata ptr %3, metadata !1142, metadata !DIExpression()), !dbg !1143
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #36, !dbg !1145
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1146, !tbaa !808
  %9 = add i32 %8, 1, !dbg !1146
  store i32 %9, ptr @error_message_count, align 4, !dbg !1146, !tbaa !808
  %10 = icmp eq i32 %1, 0, !dbg !1147
  br i1 %10, label %20, label %11, !dbg !1149

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1150, metadata !DIExpression()), !dbg !1158
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1160
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1154, metadata !DIExpression()), !dbg !1161
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1162
  call void @llvm.dbg.value(metadata ptr %12, metadata !1153, metadata !DIExpression()), !dbg !1158
  %13 = icmp eq ptr %12, null, !dbg !1163
  br i1 %13, label %14, label %16, !dbg !1165

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.25, ptr noundef nonnull @.str.5.26, i32 noundef 5) #36, !dbg !1166
  call void @llvm.dbg.value(metadata ptr %15, metadata !1153, metadata !DIExpression()), !dbg !1158
  br label %16, !dbg !1167

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1158
  call void @llvm.dbg.value(metadata ptr %17, metadata !1153, metadata !DIExpression()), !dbg !1158
  %18 = load ptr, ptr @stderr, align 8, !dbg !1168, !tbaa !747
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.27, ptr noundef %17) #36, !dbg !1168
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1169
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
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #36, !dbg !1181
  br label %31, !dbg !1181

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1181
  store ptr %30, ptr %22, align 8, !dbg !1181, !tbaa !1182
  store i8 10, ptr %23, align 1, !dbg !1181, !tbaa !817
  br label %31, !dbg !1181

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1187, !tbaa !747
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #36, !dbg !1187
  %34 = icmp eq i32 %0, 0, !dbg !1188
  br i1 %34, label %36, label %35, !dbg !1190

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #38, !dbg !1191
  unreachable, !dbg !1191

36:                                               ; preds = %31
  ret void, !dbg !1192
}

declare !dbg !1193 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1196 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1199 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1202 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1205 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1209 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1213, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i32 %1, metadata !1214, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata ptr %2, metadata !1215, metadata !DIExpression()), !dbg !1222
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #36, !dbg !1223
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1216, metadata !DIExpression()), !dbg !1224
  call void @llvm.va_start(ptr nonnull %4), !dbg !1225
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #41, !dbg !1226
  call void @llvm.va_end(ptr nonnull %4), !dbg !1227
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #36, !dbg !1228
  ret void, !dbg !1228
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !319 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !331, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 %1, metadata !332, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata ptr %2, metadata !333, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 %3, metadata !334, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata ptr %4, metadata !335, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata ptr %5, metadata !336, metadata !DIExpression()), !dbg !1229
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
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1243
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
  tail call void %24() #36, !dbg !1253
  br label %31, !dbg !1253

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1254, !tbaa !747
  %29 = tail call ptr @getprogname() #37, !dbg !1254
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.30, ptr noundef %29) #36, !dbg !1254
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1256, !tbaa !747
  %33 = icmp eq ptr %2, null, !dbg !1256
  %34 = select i1 %33, ptr @.str.3.31, ptr @.str.2.32, !dbg !1256
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #36, !dbg !1256
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1257
  br label %36, !dbg !1258

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1258
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1259 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1263, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %1, metadata !1264, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata ptr %2, metadata !1265, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %3, metadata !1266, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata ptr %4, metadata !1267, metadata !DIExpression()), !dbg !1269
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #36, !dbg !1270
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1268, metadata !DIExpression()), !dbg !1271
  call void @llvm.va_start(ptr nonnull %6), !dbg !1272
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #41, !dbg !1273
  call void @llvm.va_end(ptr nonnull %6), !dbg !1274
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #36, !dbg !1275
  ret void, !dbg !1275
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1276 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1279, !tbaa !747
  ret ptr %1, !dbg !1280
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1281 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1286, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata ptr %1, metadata !1287, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata ptr %2, metadata !1288, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata ptr %3, metadata !1289, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata ptr %4, metadata !1290, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata ptr %5, metadata !1291, metadata !DIExpression()), !dbg !1312
  %8 = load i32, ptr @opterr, align 4, !dbg !1313, !tbaa !808
  call void @llvm.dbg.value(metadata i32 %8, metadata !1292, metadata !DIExpression()), !dbg !1312
  store i32 0, ptr @opterr, align 4, !dbg !1314, !tbaa !808
  %9 = icmp eq i32 %0, 2, !dbg !1315
  br i1 %9, label %10, label %15, !dbg !1316

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1317
  call void @llvm.dbg.value(metadata i32 %11, metadata !1293, metadata !DIExpression()), !dbg !1318
  switch i32 %11, label %15 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1319

12:                                               ; preds = %10
  tail call void %5(i32 noundef 0) #36, !dbg !1320
  br label %15, !dbg !1321

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #36, !dbg !1322
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1296, metadata !DIExpression()), !dbg !1323
  call void @llvm.va_start(ptr nonnull %7), !dbg !1324
  %14 = load ptr, ptr @stdout, align 8, !dbg !1325, !tbaa !747
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #36, !dbg !1326
  call void @exit(i32 noundef 0) #38, !dbg !1327
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
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1341, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata ptr %1, metadata !1342, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata ptr %2, metadata !1343, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata ptr %3, metadata !1344, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata ptr %4, metadata !1345, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i1 %5, metadata !1346, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1356
  call void @llvm.dbg.value(metadata ptr %6, metadata !1347, metadata !DIExpression()), !dbg !1356
  %9 = load i32, ptr @opterr, align 4, !dbg !1357, !tbaa !808
  call void @llvm.dbg.value(metadata i32 %9, metadata !1348, metadata !DIExpression()), !dbg !1356
  store i32 1, ptr @opterr, align 4, !dbg !1358, !tbaa !808
  %10 = select i1 %5, ptr @.str.1.45, ptr @.str.40, !dbg !1359
  call void @llvm.dbg.value(metadata ptr %10, metadata !1349, metadata !DIExpression()), !dbg !1356
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %11, metadata !1350, metadata !DIExpression()), !dbg !1356
  switch i32 %11, label %14 [
    i32 -1, label %18
    i32 104, label %16
    i32 118, label %12
  ], !dbg !1361

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #36, !dbg !1362
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1351, metadata !DIExpression()), !dbg !1363
  call void @llvm.va_start(ptr nonnull %8), !dbg !1364
  %13 = load ptr, ptr @stdout, align 8, !dbg !1365, !tbaa !747
  call void @version_etc_va(ptr noundef %13, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #36, !dbg !1366
  call void @exit(i32 noundef 0) #38, !dbg !1367
  unreachable, !dbg !1367

14:                                               ; preds = %7
  %15 = load volatile i32, ptr @exit_failure, align 4, !dbg !1368, !tbaa !808
  br label %16, !dbg !1369

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %7 ]
  tail call void %6(i32 noundef %17) #36, !dbg !1370
  br label %18, !dbg !1371

18:                                               ; preds = %16, %7
  store i32 %9, ptr @opterr, align 4, !dbg !1371, !tbaa !808
  ret void, !dbg !1372
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1373 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1375, metadata !DIExpression()), !dbg !1378
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1379
  call void @llvm.dbg.value(metadata ptr %2, metadata !1376, metadata !DIExpression()), !dbg !1378
  %3 = icmp eq ptr %2, null, !dbg !1380
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1380
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1380
  call void @llvm.dbg.value(metadata ptr %5, metadata !1377, metadata !DIExpression()), !dbg !1378
  %6 = ptrtoint ptr %5 to i64, !dbg !1381
  %7 = ptrtoint ptr %0 to i64, !dbg !1381
  %8 = sub i64 %6, %7, !dbg !1381
  %9 = icmp sgt i64 %8, 6, !dbg !1383
  br i1 %9, label %10, label %19, !dbg !1384

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1385
  call void @llvm.dbg.value(metadata ptr %11, metadata !1386, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr @.str.50, metadata !1391, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i64 7, metadata !1392, metadata !DIExpression()), !dbg !1393
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.50, i64 7), !dbg !1395
  %13 = icmp eq i32 %12, 0, !dbg !1396
  br i1 %13, label %14, label %19, !dbg !1397

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1375, metadata !DIExpression()), !dbg !1378
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.51, i64 noundef 3) #37, !dbg !1398
  %16 = icmp eq i32 %15, 0, !dbg !1401
  %17 = select i1 %16, i64 3, i64 0, !dbg !1402
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1402
  br label %19, !dbg !1402

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1378
  call void @llvm.dbg.value(metadata ptr %21, metadata !1377, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata ptr %20, metadata !1375, metadata !DIExpression()), !dbg !1378
  store ptr %20, ptr @program_name, align 8, !dbg !1403, !tbaa !747
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1404, !tbaa !747
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1405, !tbaa !747
  ret void, !dbg !1406
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1407 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !396 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !403, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata ptr %1, metadata !404, metadata !DIExpression()), !dbg !1408
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1409
  call void @llvm.dbg.value(metadata ptr %5, metadata !405, metadata !DIExpression()), !dbg !1408
  %6 = icmp eq ptr %5, %0, !dbg !1410
  br i1 %6, label %7, label %14, !dbg !1412

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1413
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1414
  call void @llvm.dbg.declare(metadata ptr %4, metadata !411, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata ptr %4, metadata !1416, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata ptr %4, metadata !1425, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i32 0, metadata !1431, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 8, metadata !1432, metadata !DIExpression()), !dbg !1433
  store i64 0, ptr %4, align 8, !dbg !1435
  call void @llvm.dbg.value(metadata ptr %3, metadata !406, metadata !DIExpression(DW_OP_deref)), !dbg !1408
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1436
  %9 = icmp eq i64 %8, 2, !dbg !1438
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !406, metadata !DIExpression()), !dbg !1408
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1439
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1408
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1440
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1440
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1408
  ret ptr %15, !dbg !1440
}

; Function Attrs: nounwind
declare !dbg !1441 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1447 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1452, metadata !DIExpression()), !dbg !1455
  %2 = tail call ptr @__errno_location() #39, !dbg !1456
  %3 = load i32, ptr %2, align 4, !dbg !1456, !tbaa !808
  call void @llvm.dbg.value(metadata i32 %3, metadata !1453, metadata !DIExpression()), !dbg !1455
  %4 = icmp eq ptr %0, null, !dbg !1457
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1457
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1458
  call void @llvm.dbg.value(metadata ptr %6, metadata !1454, metadata !DIExpression()), !dbg !1455
  store i32 %3, ptr %2, align 4, !dbg !1459, !tbaa !808
  ret ptr %6, !dbg !1460
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1461 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1467, metadata !DIExpression()), !dbg !1468
  %2 = icmp eq ptr %0, null, !dbg !1469
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1469
  %4 = load i32, ptr %3, align 8, !dbg !1470, !tbaa !1471
  ret i32 %4, !dbg !1473
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1474 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1478, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i32 %1, metadata !1479, metadata !DIExpression()), !dbg !1480
  %3 = icmp eq ptr %0, null, !dbg !1481
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1481
  store i32 %1, ptr %4, align 8, !dbg !1482, !tbaa !1471
  ret void, !dbg !1483
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1484 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1488, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i8 %1, metadata !1489, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i32 %2, metadata !1490, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i8 %1, metadata !1491, metadata !DIExpression()), !dbg !1496
  %4 = icmp eq ptr %0, null, !dbg !1497
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1497
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1498
  %7 = lshr i8 %1, 5, !dbg !1499
  %8 = zext i8 %7 to i64, !dbg !1499
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1500
  call void @llvm.dbg.value(metadata ptr %9, metadata !1492, metadata !DIExpression()), !dbg !1496
  %10 = and i8 %1, 31, !dbg !1501
  %11 = zext i8 %10 to i32, !dbg !1501
  call void @llvm.dbg.value(metadata i32 %11, metadata !1494, metadata !DIExpression()), !dbg !1496
  %12 = load i32, ptr %9, align 4, !dbg !1502, !tbaa !808
  %13 = lshr i32 %12, %11, !dbg !1503
  %14 = and i32 %13, 1, !dbg !1504
  call void @llvm.dbg.value(metadata i32 %14, metadata !1495, metadata !DIExpression()), !dbg !1496
  %15 = xor i32 %13, %2, !dbg !1505
  %16 = and i32 %15, 1, !dbg !1505
  %17 = shl nuw i32 %16, %11, !dbg !1506
  %18 = xor i32 %17, %12, !dbg !1507
  store i32 %18, ptr %9, align 4, !dbg !1507, !tbaa !808
  ret i32 %14, !dbg !1508
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1509 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1513, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata i32 %1, metadata !1514, metadata !DIExpression()), !dbg !1516
  %3 = icmp eq ptr %0, null, !dbg !1517
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1519
  call void @llvm.dbg.value(metadata ptr %4, metadata !1513, metadata !DIExpression()), !dbg !1516
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1520
  %6 = load i32, ptr %5, align 4, !dbg !1520, !tbaa !1521
  call void @llvm.dbg.value(metadata i32 %6, metadata !1515, metadata !DIExpression()), !dbg !1516
  store i32 %1, ptr %5, align 4, !dbg !1522, !tbaa !1521
  ret i32 %6, !dbg !1523
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1524 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1528, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata ptr %1, metadata !1529, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata ptr %2, metadata !1530, metadata !DIExpression()), !dbg !1531
  %4 = icmp eq ptr %0, null, !dbg !1532
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1534
  call void @llvm.dbg.value(metadata ptr %5, metadata !1528, metadata !DIExpression()), !dbg !1531
  store i32 10, ptr %5, align 8, !dbg !1535, !tbaa !1471
  %6 = icmp ne ptr %1, null, !dbg !1536
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1538
  br i1 %8, label %10, label %9, !dbg !1538

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1539
  unreachable, !dbg !1539

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1540
  store ptr %1, ptr %11, align 8, !dbg !1541, !tbaa !1542
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1543
  store ptr %2, ptr %12, align 8, !dbg !1544, !tbaa !1545
  ret void, !dbg !1546
}

; Function Attrs: noreturn nounwind
declare !dbg !1547 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1548 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1552, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i64 %1, metadata !1553, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata ptr %2, metadata !1554, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i64 %3, metadata !1555, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata ptr %4, metadata !1556, metadata !DIExpression()), !dbg !1560
  %6 = icmp eq ptr %4, null, !dbg !1561
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1561
  call void @llvm.dbg.value(metadata ptr %7, metadata !1557, metadata !DIExpression()), !dbg !1560
  %8 = tail call ptr @__errno_location() #39, !dbg !1562
  %9 = load i32, ptr %8, align 4, !dbg !1562, !tbaa !808
  call void @llvm.dbg.value(metadata i32 %9, metadata !1558, metadata !DIExpression()), !dbg !1560
  %10 = load i32, ptr %7, align 8, !dbg !1563, !tbaa !1471
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1564
  %12 = load i32, ptr %11, align 4, !dbg !1564, !tbaa !1521
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1565
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1566
  %15 = load ptr, ptr %14, align 8, !dbg !1566, !tbaa !1542
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1567
  %17 = load ptr, ptr %16, align 8, !dbg !1567, !tbaa !1545
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %18, metadata !1559, metadata !DIExpression()), !dbg !1560
  store i32 %9, ptr %8, align 4, !dbg !1569, !tbaa !808
  ret i64 %18, !dbg !1570
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1571 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1577, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %1, metadata !1578, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %2, metadata !1579, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %3, metadata !1580, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i32 %4, metadata !1581, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i32 %5, metadata !1582, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %6, metadata !1583, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %7, metadata !1584, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %8, metadata !1585, metadata !DIExpression()), !dbg !1639
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1640
  %17 = icmp eq i64 %16, 1, !dbg !1641
  call void @llvm.dbg.value(metadata i1 %17, metadata !1586, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1639
  call void @llvm.dbg.value(metadata i64 0, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 0, metadata !1588, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr null, metadata !1589, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 0, metadata !1590, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 0, metadata !1591, metadata !DIExpression()), !dbg !1639
  %18 = trunc i32 %5 to i8, !dbg !1642
  %19 = lshr i8 %18, 1, !dbg !1642
  %20 = and i8 %19, 1, !dbg !1642
  call void @llvm.dbg.value(metadata i8 %20, metadata !1592, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 0, metadata !1593, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 1, metadata !1594, metadata !DIExpression()), !dbg !1639
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1643

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !1644
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !1645
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !1646
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !1647
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !1639
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !1648
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !1649
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1578, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %39, metadata !1594, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %38, metadata !1593, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %37, metadata !1592, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %36, metadata !1591, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %35, metadata !1590, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %34, metadata !1589, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %33, metadata !1588, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 0, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %32, metadata !1580, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %31, metadata !1585, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %30, metadata !1584, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i32 %29, metadata !1581, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.label(metadata !1632), !dbg !1650
  call void @llvm.dbg.value(metadata i8 0, metadata !1595, metadata !DIExpression()), !dbg !1639
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
  ], !dbg !1651

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1592, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i32 5, metadata !1581, metadata !DIExpression()), !dbg !1639
  br label %115, !dbg !1652

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1592, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i32 5, metadata !1581, metadata !DIExpression()), !dbg !1639
  %43 = and i8 %37, 1, !dbg !1653
  %44 = icmp eq i8 %43, 0, !dbg !1653
  br i1 %44, label %45, label %115, !dbg !1652

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1655
  br i1 %46, label %115, label %47, !dbg !1658

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1655, !tbaa !817
  br label %115, !dbg !1655

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.64, metadata !509, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i32 %29, metadata !510, metadata !DIExpression()), !dbg !1659
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.65, ptr noundef nonnull @.str.11.64, i32 noundef 5) #36, !dbg !1663
  call void @llvm.dbg.value(metadata ptr %49, metadata !511, metadata !DIExpression()), !dbg !1659
  %50 = icmp eq ptr %49, @.str.11.64, !dbg !1664
  br i1 %50, label %51, label %60, !dbg !1666

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1667
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1668
  call void @llvm.dbg.declare(metadata ptr %13, metadata !513, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr %13, metadata !1670, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %13, metadata !1678, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i32 0, metadata !1681, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 8, metadata !1682, metadata !DIExpression()), !dbg !1683
  store i64 0, ptr %13, align 8, !dbg !1685
  call void @llvm.dbg.value(metadata ptr %12, metadata !512, metadata !DIExpression(DW_OP_deref)), !dbg !1659
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1686
  %53 = icmp eq i64 %52, 3, !dbg !1688
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !512, metadata !DIExpression()), !dbg !1659
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1689
  %57 = icmp eq i32 %29, 9, !dbg !1689
  %58 = select i1 %57, ptr @.str.10.66, ptr @.str.12.67, !dbg !1689
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1689
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1690
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1690
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1659
  call void @llvm.dbg.value(metadata ptr %61, metadata !1584, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr @.str.12.67, metadata !509, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i32 %29, metadata !510, metadata !DIExpression()), !dbg !1691
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.65, ptr noundef nonnull @.str.12.67, i32 noundef 5) #36, !dbg !1693
  call void @llvm.dbg.value(metadata ptr %62, metadata !511, metadata !DIExpression()), !dbg !1691
  %63 = icmp eq ptr %62, @.str.12.67, !dbg !1694
  br i1 %63, label %64, label %73, !dbg !1695

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1696
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1697
  call void @llvm.dbg.declare(metadata ptr %11, metadata !513, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata ptr %11, metadata !1670, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata ptr %11, metadata !1678, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i32 0, metadata !1681, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 8, metadata !1682, metadata !DIExpression()), !dbg !1701
  store i64 0, ptr %11, align 8, !dbg !1703
  call void @llvm.dbg.value(metadata ptr %10, metadata !512, metadata !DIExpression(DW_OP_deref)), !dbg !1691
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1704
  %66 = icmp eq i64 %65, 3, !dbg !1705
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !512, metadata !DIExpression()), !dbg !1691
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1706
  %70 = icmp eq i32 %29, 9, !dbg !1706
  %71 = select i1 %70, ptr @.str.10.66, ptr @.str.12.67, !dbg !1706
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1706
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1707
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1707
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1585, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %74, metadata !1584, metadata !DIExpression()), !dbg !1639
  %76 = and i8 %37, 1, !dbg !1708
  %77 = icmp eq i8 %76, 0, !dbg !1708
  br i1 %77, label %78, label %93, !dbg !1709

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1596, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i64 0, metadata !1587, metadata !DIExpression()), !dbg !1639
  %79 = load i8, ptr %74, align 1, !dbg !1711, !tbaa !817
  %80 = icmp eq i8 %79, 0, !dbg !1713
  br i1 %80, label %93, label %81, !dbg !1713

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1596, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i64 %84, metadata !1587, metadata !DIExpression()), !dbg !1639
  %85 = icmp ult i64 %84, %40, !dbg !1714
  br i1 %85, label %86, label %88, !dbg !1717

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1714
  store i8 %82, ptr %87, align 1, !dbg !1714, !tbaa !817
  br label %88, !dbg !1714

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %89, metadata !1587, metadata !DIExpression()), !dbg !1639
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1718
  call void @llvm.dbg.value(metadata ptr %90, metadata !1596, metadata !DIExpression()), !dbg !1710
  %91 = load i8, ptr %90, align 1, !dbg !1711, !tbaa !817
  %92 = icmp eq i8 %91, 0, !dbg !1713
  br i1 %92, label %93, label %81, !dbg !1713, !llvm.loop !1719

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1721
  call void @llvm.dbg.value(metadata i64 %94, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 1, metadata !1591, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %75, metadata !1589, metadata !DIExpression()), !dbg !1639
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #37, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %95, metadata !1590, metadata !DIExpression()), !dbg !1639
  br label %115, !dbg !1723

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1591, metadata !DIExpression()), !dbg !1639
  br label %97, !dbg !1724

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !1639
  call void @llvm.dbg.value(metadata i8 %98, metadata !1591, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 1, metadata !1592, metadata !DIExpression()), !dbg !1639
  br label %99, !dbg !1725

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !1647
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !1639
  call void @llvm.dbg.value(metadata i8 %101, metadata !1592, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %100, metadata !1591, metadata !DIExpression()), !dbg !1639
  %102 = and i8 %101, 1, !dbg !1726
  %103 = icmp eq i8 %102, 0, !dbg !1726
  %104 = select i1 %103, i8 1, i8 %100, !dbg !1728
  br label %105, !dbg !1728

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !1639
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !1642
  call void @llvm.dbg.value(metadata i8 %107, metadata !1592, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %106, metadata !1591, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i32 2, metadata !1581, metadata !DIExpression()), !dbg !1639
  %108 = and i8 %107, 1, !dbg !1729
  %109 = icmp eq i8 %108, 0, !dbg !1729
  br i1 %109, label %110, label %115, !dbg !1731

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !1732
  br i1 %111, label %115, label %112, !dbg !1735

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !1732, !tbaa !817
  br label %115, !dbg !1732

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1592, metadata !DIExpression()), !dbg !1639
  br label %115, !dbg !1736

114:                                              ; preds = %28
  call void @abort() #38, !dbg !1737
  unreachable, !dbg !1737

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !1721
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.66, %45 ], [ @.str.10.66, %47 ], [ @.str.10.66, %42 ], [ %34, %28 ], [ @.str.12.67, %110 ], [ @.str.12.67, %112 ], [ @.str.12.67, %105 ], [ @.str.10.66, %41 ], !dbg !1639
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !1639
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !1639
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !1639
  call void @llvm.dbg.value(metadata i8 %123, metadata !1592, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %122, metadata !1591, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %121, metadata !1590, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %120, metadata !1589, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %119, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %118, metadata !1585, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %117, metadata !1584, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i32 %116, metadata !1581, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 0, metadata !1601, metadata !DIExpression()), !dbg !1738
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
  br label %138, !dbg !1739

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !1721
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !1644
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !1648
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !1649
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !1740
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !1741
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1578, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %145, metadata !1601, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 %144, metadata !1595, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %143, metadata !1594, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %142, metadata !1593, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %141, metadata !1588, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %140, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %139, metadata !1580, metadata !DIExpression()), !dbg !1639
  %147 = icmp eq i64 %139, -1, !dbg !1742
  br i1 %147, label %148, label %152, !dbg !1743

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1744
  %150 = load i8, ptr %149, align 1, !dbg !1744, !tbaa !817
  %151 = icmp eq i8 %150, 0, !dbg !1745
  br i1 %151, label %627, label %154, !dbg !1746

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1747
  br i1 %153, label %627, label %154, !dbg !1746

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1603, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 0, metadata !1606, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 0, metadata !1607, metadata !DIExpression()), !dbg !1748
  br i1 %129, label %155, label %170, !dbg !1749

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !1751
  %157 = select i1 %147, i1 %130, i1 false, !dbg !1752
  br i1 %157, label %158, label %160, !dbg !1752

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1753
  call void @llvm.dbg.value(metadata i64 %159, metadata !1580, metadata !DIExpression()), !dbg !1639
  br label %160, !dbg !1754

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1754
  call void @llvm.dbg.value(metadata i64 %161, metadata !1580, metadata !DIExpression()), !dbg !1639
  %162 = icmp ugt i64 %156, %161, !dbg !1755
  br i1 %162, label %170, label %163, !dbg !1756

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1757
  call void @llvm.dbg.value(metadata ptr %164, metadata !1758, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata ptr %120, metadata !1761, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i64 %121, metadata !1762, metadata !DIExpression()), !dbg !1763
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !1765
  %166 = icmp ne i32 %165, 0, !dbg !1766
  %167 = select i1 %166, i1 true, i1 %132, !dbg !1767
  %168 = xor i1 %166, true, !dbg !1767
  %169 = zext i1 %168 to i8, !dbg !1767
  br i1 %167, label %170, label %688, !dbg !1767

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1748
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1748
  call void @llvm.dbg.value(metadata i8 %173, metadata !1603, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 %171, metadata !1580, metadata !DIExpression()), !dbg !1639
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1768
  %175 = load i8, ptr %174, align 1, !dbg !1768, !tbaa !817
  call void @llvm.dbg.value(metadata i8 %175, metadata !1608, metadata !DIExpression()), !dbg !1748
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
  ], !dbg !1769

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !1770

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !1771

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1606, metadata !DIExpression()), !dbg !1748
  %179 = and i8 %144, 1, !dbg !1775
  %180 = icmp eq i8 %179, 0, !dbg !1775
  %181 = select i1 %133, i1 %180, i1 false, !dbg !1775
  br i1 %181, label %182, label %198, !dbg !1775

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1777
  br i1 %183, label %184, label %186, !dbg !1781

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1777
  store i8 39, ptr %185, align 1, !dbg !1777, !tbaa !817
  br label %186, !dbg !1777

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %187, metadata !1587, metadata !DIExpression()), !dbg !1639
  %188 = icmp ult i64 %187, %146, !dbg !1782
  br i1 %188, label %189, label %191, !dbg !1785

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1782
  store i8 36, ptr %190, align 1, !dbg !1782, !tbaa !817
  br label %191, !dbg !1782

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %192, metadata !1587, metadata !DIExpression()), !dbg !1639
  %193 = icmp ult i64 %192, %146, !dbg !1786
  br i1 %193, label %194, label %196, !dbg !1789

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1786
  store i8 39, ptr %195, align 1, !dbg !1786, !tbaa !817
  br label %196, !dbg !1786

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %197, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 1, metadata !1595, metadata !DIExpression()), !dbg !1639
  br label %198, !dbg !1790

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1639
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1639
  call void @llvm.dbg.value(metadata i8 %200, metadata !1595, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %199, metadata !1587, metadata !DIExpression()), !dbg !1639
  %201 = icmp ult i64 %199, %146, !dbg !1791
  br i1 %201, label %202, label %204, !dbg !1794

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1791
  store i8 92, ptr %203, align 1, !dbg !1791, !tbaa !817
  br label %204, !dbg !1791

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %205, metadata !1587, metadata !DIExpression()), !dbg !1639
  br i1 %126, label %206, label %491, !dbg !1795

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1797
  %208 = icmp ult i64 %207, %171, !dbg !1798
  br i1 %208, label %209, label %480, !dbg !1799

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1800
  %211 = load i8, ptr %210, align 1, !dbg !1800, !tbaa !817
  %212 = add i8 %211, -48, !dbg !1801
  %213 = icmp ult i8 %212, 10, !dbg !1801
  br i1 %213, label %214, label %480, !dbg !1801

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1802
  br i1 %215, label %216, label %218, !dbg !1806

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1802
  store i8 48, ptr %217, align 1, !dbg !1802, !tbaa !817
  br label %218, !dbg !1802

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1806
  call void @llvm.dbg.value(metadata i64 %219, metadata !1587, metadata !DIExpression()), !dbg !1639
  %220 = icmp ult i64 %219, %146, !dbg !1807
  br i1 %220, label %221, label %223, !dbg !1810

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1807
  store i8 48, ptr %222, align 1, !dbg !1807, !tbaa !817
  br label %223, !dbg !1807

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %224, metadata !1587, metadata !DIExpression()), !dbg !1639
  br label %480, !dbg !1811

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !1812

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1813

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !1814

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !1816

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1818
  %231 = icmp ult i64 %230, %171, !dbg !1819
  br i1 %231, label %232, label %480, !dbg !1820

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !1821
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !1822
  %235 = load i8, ptr %234, align 1, !dbg !1822, !tbaa !817
  %236 = icmp eq i8 %235, 63, !dbg !1823
  br i1 %236, label %237, label %480, !dbg !1824

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1825
  %239 = load i8, ptr %238, align 1, !dbg !1825, !tbaa !817
  %240 = sext i8 %239 to i32, !dbg !1825
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
  ], !dbg !1826

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !1827

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1608, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 %230, metadata !1601, metadata !DIExpression()), !dbg !1738
  %243 = icmp ult i64 %140, %146, !dbg !1829
  br i1 %243, label %244, label %246, !dbg !1832

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1829
  store i8 63, ptr %245, align 1, !dbg !1829, !tbaa !817
  br label %246, !dbg !1829

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !1832
  call void @llvm.dbg.value(metadata i64 %247, metadata !1587, metadata !DIExpression()), !dbg !1639
  %248 = icmp ult i64 %247, %146, !dbg !1833
  br i1 %248, label %249, label %251, !dbg !1836

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !1833
  store i8 34, ptr %250, align 1, !dbg !1833, !tbaa !817
  br label %251, !dbg !1833

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %252, metadata !1587, metadata !DIExpression()), !dbg !1639
  %253 = icmp ult i64 %252, %146, !dbg !1837
  br i1 %253, label %254, label %256, !dbg !1840

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !1837
  store i8 34, ptr %255, align 1, !dbg !1837, !tbaa !817
  br label %256, !dbg !1837

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %257, metadata !1587, metadata !DIExpression()), !dbg !1639
  %258 = icmp ult i64 %257, %146, !dbg !1841
  br i1 %258, label %259, label %261, !dbg !1844

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !1841
  store i8 63, ptr %260, align 1, !dbg !1841, !tbaa !817
  br label %261, !dbg !1841

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !1844
  call void @llvm.dbg.value(metadata i64 %262, metadata !1587, metadata !DIExpression()), !dbg !1639
  br label %480, !dbg !1845

263:                                              ; preds = %170
  br label %274, !dbg !1846

264:                                              ; preds = %170
  br label %274, !dbg !1847

265:                                              ; preds = %170
  br label %272, !dbg !1848

266:                                              ; preds = %170
  br label %272, !dbg !1849

267:                                              ; preds = %170
  br label %274, !dbg !1850

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !1851

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !1852

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !1855

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !1857

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !1858
  call void @llvm.dbg.label(metadata !1633), !dbg !1859
  br i1 %134, label %274, label %670, !dbg !1860

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !1858
  call void @llvm.dbg.label(metadata !1635), !dbg !1862
  br i1 %125, label %535, label %491, !dbg !1863

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !1864

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !1865, !tbaa !817
  %279 = icmp eq i8 %278, 0, !dbg !1867
  br i1 %279, label %280, label %480, !dbg !1868

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !1869
  br i1 %281, label %282, label %480, !dbg !1871

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1607, metadata !DIExpression()), !dbg !1748
  br label %283, !dbg !1872

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !1748
  call void @llvm.dbg.value(metadata i8 %284, metadata !1607, metadata !DIExpression()), !dbg !1748
  br i1 %134, label %480, label %670, !dbg !1873

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1593, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 1, metadata !1607, metadata !DIExpression()), !dbg !1748
  br i1 %133, label %286, label %480, !dbg !1875

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !1876

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !1879
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !1881
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !1881
  %292 = select i1 %290, i64 %146, i64 0, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %292, metadata !1578, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %291, metadata !1588, metadata !DIExpression()), !dbg !1639
  %293 = icmp ult i64 %140, %292, !dbg !1882
  br i1 %293, label %294, label %296, !dbg !1885

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1882
  store i8 39, ptr %295, align 1, !dbg !1882, !tbaa !817
  br label %296, !dbg !1882

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !1885
  call void @llvm.dbg.value(metadata i64 %297, metadata !1587, metadata !DIExpression()), !dbg !1639
  %298 = icmp ult i64 %297, %292, !dbg !1886
  br i1 %298, label %299, label %301, !dbg !1889

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !1886
  store i8 92, ptr %300, align 1, !dbg !1886, !tbaa !817
  br label %301, !dbg !1886

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %302, metadata !1587, metadata !DIExpression()), !dbg !1639
  %303 = icmp ult i64 %302, %292, !dbg !1890
  br i1 %303, label %304, label %306, !dbg !1893

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !1890
  store i8 39, ptr %305, align 1, !dbg !1890, !tbaa !817
  br label %306, !dbg !1890

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !1893
  call void @llvm.dbg.value(metadata i64 %307, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 0, metadata !1595, metadata !DIExpression()), !dbg !1639
  br label %480, !dbg !1894

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !1895

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1609, metadata !DIExpression()), !dbg !1896
  %310 = tail call ptr @__ctype_b_loc() #39, !dbg !1897
  %311 = load ptr, ptr %310, align 8, !dbg !1897, !tbaa !747
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !1897
  %314 = load i16, ptr %313, align 2, !dbg !1897, !tbaa !849
  %315 = lshr i16 %314, 14, !dbg !1899
  %316 = trunc i16 %315 to i8, !dbg !1899
  %317 = and i8 %316, 1, !dbg !1899
  call void @llvm.dbg.value(metadata i8 %317, metadata !1612, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i64 %171, metadata !1580, metadata !DIExpression()), !dbg !1639
  %318 = icmp eq i8 %317, 0, !dbg !1900
  call void @llvm.dbg.value(metadata i1 %318, metadata !1607, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1748
  br label %368, !dbg !1901

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !1902
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1613, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata ptr %14, metadata !1670, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata ptr %14, metadata !1678, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i32 0, metadata !1681, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 8, metadata !1682, metadata !DIExpression()), !dbg !1906
  store i64 0, ptr %14, align 8, !dbg !1908
  call void @llvm.dbg.value(metadata i64 0, metadata !1609, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8 1, metadata !1612, metadata !DIExpression()), !dbg !1896
  %320 = icmp eq i64 %171, -1, !dbg !1909
  br i1 %320, label %321, label %323, !dbg !1911

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %322, metadata !1580, metadata !DIExpression()), !dbg !1639
  br label %323, !dbg !1913

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !1748
  call void @llvm.dbg.value(metadata i64 %324, metadata !1580, metadata !DIExpression()), !dbg !1639
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !1914
  %325 = sub i64 %324, %145, !dbg !1915
  call void @llvm.dbg.value(metadata ptr %15, metadata !1616, metadata !DIExpression(DW_OP_deref)), !dbg !1916
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #36, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %326, metadata !1620, metadata !DIExpression()), !dbg !1916
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !1918

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1609, metadata !DIExpression()), !dbg !1896
  %328 = icmp ugt i64 %324, %145, !dbg !1919
  br i1 %328, label %331, label %329, !dbg !1921

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1612, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i64 0, metadata !1609, metadata !DIExpression()), !dbg !1896
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %324, metadata !1580, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i1 true, metadata !1607, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1748
  br label %368, !dbg !1901

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1612, metadata !DIExpression()), !dbg !1896
  br label %360, !dbg !1924

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1609, metadata !DIExpression()), !dbg !1896
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !1926
  %335 = load i8, ptr %334, align 1, !dbg !1926, !tbaa !817
  %336 = icmp eq i8 %335, 0, !dbg !1921
  br i1 %336, label %363, label %337, !dbg !1927

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !1928
  call void @llvm.dbg.value(metadata i64 %338, metadata !1609, metadata !DIExpression()), !dbg !1896
  %339 = add i64 %338, %145, !dbg !1929
  %340 = icmp eq i64 %338, %325, !dbg !1919
  br i1 %340, label %363, label %331, !dbg !1921, !llvm.loop !1930

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !1931
  %344 = and i1 %343, %133, !dbg !1931
  call void @llvm.dbg.value(metadata i64 1, metadata !1621, metadata !DIExpression()), !dbg !1932
  br i1 %344, label %345, label %354, !dbg !1931

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1621, metadata !DIExpression()), !dbg !1932
  %347 = add i64 %346, %145, !dbg !1933
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !1935
  %349 = load i8, ptr %348, align 1, !dbg !1935, !tbaa !817
  %350 = sext i8 %349 to i32, !dbg !1935
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !1936

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %352, metadata !1621, metadata !DIExpression()), !dbg !1932
  %353 = icmp eq i64 %352, %326, !dbg !1938
  br i1 %353, label %354, label %345, !dbg !1939, !llvm.loop !1940

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !1942, !tbaa !808
  call void @llvm.dbg.value(metadata i32 %355, metadata !1616, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i32 %355, metadata !1944, metadata !DIExpression()), !dbg !1952
  %356 = call i32 @iswprint(i32 noundef %355) #36, !dbg !1954
  %357 = icmp ne i32 %356, 0, !dbg !1955
  %358 = zext i1 %357 to i8, !dbg !1956
  call void @llvm.dbg.value(metadata i8 %358, metadata !1612, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i64 %326, metadata !1609, metadata !DIExpression()), !dbg !1896
  br label %363, !dbg !1957

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1612, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i64 0, metadata !1609, metadata !DIExpression()), !dbg !1896
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1923
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1612, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i64 0, metadata !1609, metadata !DIExpression()), !dbg !1896
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %324, metadata !1580, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i1 %361, metadata !1607, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1748
  br label %368, !dbg !1901

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1612, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i64 %364, metadata !1609, metadata !DIExpression()), !dbg !1896
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %324, metadata !1580, metadata !DIExpression()), !dbg !1639
  %366 = icmp eq i8 %365, 0, !dbg !1900
  call void @llvm.dbg.value(metadata i1 %366, metadata !1607, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1748
  %367 = icmp ugt i64 %364, 1, !dbg !1958
  br i1 %367, label %374, label %368, !dbg !1901

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !1959
  br i1 %373, label %374, label %480, !dbg !1959

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %379, metadata !1629, metadata !DIExpression()), !dbg !1961
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !1962

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !1639
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !1740
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !1738
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !1748
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !1963
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !1748
  call void @llvm.dbg.value(metadata i8 %387, metadata !1608, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 %386, metadata !1606, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 %385, metadata !1603, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 %384, metadata !1601, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 %383, metadata !1595, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %382, metadata !1587, metadata !DIExpression()), !dbg !1639
  br i1 %380, label %388, label %434, !dbg !1964

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !1969

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1606, metadata !DIExpression()), !dbg !1748
  %390 = and i8 %383, 1, !dbg !1972
  %391 = icmp eq i8 %390, 0, !dbg !1972
  %392 = select i1 %133, i1 %391, i1 false, !dbg !1972
  br i1 %392, label %393, label %409, !dbg !1972

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !1974
  br i1 %394, label %395, label %397, !dbg !1978

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !1974
  store i8 39, ptr %396, align 1, !dbg !1974, !tbaa !817
  br label %397, !dbg !1974

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %398, metadata !1587, metadata !DIExpression()), !dbg !1639
  %399 = icmp ult i64 %398, %146, !dbg !1979
  br i1 %399, label %400, label %402, !dbg !1982

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !1979
  store i8 36, ptr %401, align 1, !dbg !1979, !tbaa !817
  br label %402, !dbg !1979

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !1982
  call void @llvm.dbg.value(metadata i64 %403, metadata !1587, metadata !DIExpression()), !dbg !1639
  %404 = icmp ult i64 %403, %146, !dbg !1983
  br i1 %404, label %405, label %407, !dbg !1986

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !1983
  store i8 39, ptr %406, align 1, !dbg !1983, !tbaa !817
  br label %407, !dbg !1983

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %408, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 1, metadata !1595, metadata !DIExpression()), !dbg !1639
  br label %409, !dbg !1987

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !1639
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !1639
  call void @llvm.dbg.value(metadata i8 %411, metadata !1595, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %410, metadata !1587, metadata !DIExpression()), !dbg !1639
  %412 = icmp ult i64 %410, %146, !dbg !1988
  br i1 %412, label %413, label %415, !dbg !1991

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !1988
  store i8 92, ptr %414, align 1, !dbg !1988, !tbaa !817
  br label %415, !dbg !1988

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !1991
  call void @llvm.dbg.value(metadata i64 %416, metadata !1587, metadata !DIExpression()), !dbg !1639
  %417 = icmp ult i64 %416, %146, !dbg !1992
  br i1 %417, label %418, label %422, !dbg !1995

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !1992
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !1992
  store i8 %420, ptr %421, align 1, !dbg !1992, !tbaa !817
  br label %422, !dbg !1992

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %423, metadata !1587, metadata !DIExpression()), !dbg !1639
  %424 = icmp ult i64 %423, %146, !dbg !1996
  br i1 %424, label %425, label %430, !dbg !1999

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !1996
  %428 = or i8 %427, 48, !dbg !1996
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !1996
  store i8 %428, ptr %429, align 1, !dbg !1996, !tbaa !817
  br label %430, !dbg !1996

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %431, metadata !1587, metadata !DIExpression()), !dbg !1639
  %432 = and i8 %387, 7, !dbg !2000
  %433 = or i8 %432, 48, !dbg !2001
  call void @llvm.dbg.value(metadata i8 %433, metadata !1608, metadata !DIExpression()), !dbg !1748
  br label %443, !dbg !2002

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2003
  %436 = icmp eq i8 %435, 0, !dbg !2003
  br i1 %436, label %443, label %437, !dbg !2005

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2006
  br i1 %438, label %439, label %441, !dbg !2010

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2006
  store i8 92, ptr %440, align 1, !dbg !2006, !tbaa !817
  br label %441, !dbg !2006

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %442, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 0, metadata !1603, metadata !DIExpression()), !dbg !1748
  br label %443, !dbg !2011

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !1639
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !1740
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !1748
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !1748
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !1748
  call void @llvm.dbg.value(metadata i8 %448, metadata !1608, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 %447, metadata !1606, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 %446, metadata !1603, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 %445, metadata !1595, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %444, metadata !1587, metadata !DIExpression()), !dbg !1639
  %449 = add i64 %384, 1, !dbg !2012
  %450 = icmp ugt i64 %379, %449, !dbg !2014
  br i1 %450, label %451, label %478, !dbg !2015

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2016
  %453 = icmp ne i8 %452, 0, !dbg !2016
  %454 = and i8 %447, 1, !dbg !2016
  %455 = icmp eq i8 %454, 0, !dbg !2016
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2016
  br i1 %456, label %457, label %468, !dbg !2016

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2019
  br i1 %458, label %459, label %461, !dbg !2023

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2019
  store i8 39, ptr %460, align 1, !dbg !2019, !tbaa !817
  br label %461, !dbg !2019

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %462, metadata !1587, metadata !DIExpression()), !dbg !1639
  %463 = icmp ult i64 %462, %146, !dbg !2024
  br i1 %463, label %464, label %466, !dbg !2027

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2024
  store i8 39, ptr %465, align 1, !dbg !2024, !tbaa !817
  br label %466, !dbg !2024

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %467, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 0, metadata !1595, metadata !DIExpression()), !dbg !1639
  br label %468, !dbg !2028

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2029
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !1639
  call void @llvm.dbg.value(metadata i8 %470, metadata !1595, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %469, metadata !1587, metadata !DIExpression()), !dbg !1639
  %471 = icmp ult i64 %469, %146, !dbg !2030
  br i1 %471, label %472, label %474, !dbg !2033

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2030
  store i8 %448, ptr %473, align 1, !dbg !2030, !tbaa !817
  br label %474, !dbg !2030

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %475, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %449, metadata !1601, metadata !DIExpression()), !dbg !1738
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2034
  %477 = load i8, ptr %476, align 1, !dbg !2034, !tbaa !817
  call void @llvm.dbg.value(metadata i8 %477, metadata !1608, metadata !DIExpression()), !dbg !1748
  br label %381, !dbg !2035, !llvm.loop !2036

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !1748
  call void @llvm.dbg.value(metadata i8 %448, metadata !1608, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 %479, metadata !1607, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 %447, metadata !1606, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 %446, metadata !1603, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 %384, metadata !1601, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 %445, metadata !1595, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %444, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %378, metadata !1580, metadata !DIExpression()), !dbg !1639
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2039
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !1639
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !1644
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !1639
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !1639
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !1738
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !1748
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !1748
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !1748
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1578, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %489, metadata !1608, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 %488, metadata !1607, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 %487, metadata !1606, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 %173, metadata !1603, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 %486, metadata !1601, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 %485, metadata !1595, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %484, metadata !1593, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %483, metadata !1588, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %482, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %481, metadata !1580, metadata !DIExpression()), !dbg !1639
  br i1 %127, label %502, label %491, !dbg !2040

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
  br i1 %137, label %503, label %524, !dbg !2042

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2043

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
  %514 = lshr i8 %505, 5, !dbg !2044
  %515 = zext i8 %514 to i64, !dbg !2044
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2045
  %517 = load i32, ptr %516, align 4, !dbg !2045, !tbaa !808
  %518 = and i8 %505, 31, !dbg !2046
  %519 = zext i8 %518 to i32, !dbg !2046
  %520 = shl nuw i32 1, %519, !dbg !2047
  %521 = and i32 %517, %520, !dbg !2047
  %522 = icmp eq i32 %521, 0, !dbg !2047
  %523 = and i1 %172, %522, !dbg !2048
  br i1 %523, label %573, label %535, !dbg !2048

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
  br i1 %172, label %573, label %535, !dbg !2049

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2039
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !1639
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !1644
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !1648
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !1740
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2050
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !1748
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !1748
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1578, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %543, metadata !1608, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 %542, metadata !1607, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 %541, metadata !1601, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 %540, metadata !1595, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %539, metadata !1593, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %538, metadata !1588, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %537, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %536, metadata !1580, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.label(metadata !1636), !dbg !2051
  br i1 %132, label %545, label %674, !dbg !2052

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1606, metadata !DIExpression()), !dbg !1748
  %546 = and i8 %540, 1, !dbg !2054
  %547 = icmp eq i8 %546, 0, !dbg !2054
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2054
  br i1 %548, label %549, label %565, !dbg !2054

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2056
  br i1 %550, label %551, label %553, !dbg !2060

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2056
  store i8 39, ptr %552, align 1, !dbg !2056, !tbaa !817
  br label %553, !dbg !2056

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %554, metadata !1587, metadata !DIExpression()), !dbg !1639
  %555 = icmp ult i64 %554, %544, !dbg !2061
  br i1 %555, label %556, label %558, !dbg !2064

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2061
  store i8 36, ptr %557, align 1, !dbg !2061, !tbaa !817
  br label %558, !dbg !2061

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %559, metadata !1587, metadata !DIExpression()), !dbg !1639
  %560 = icmp ult i64 %559, %544, !dbg !2065
  br i1 %560, label %561, label %563, !dbg !2068

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2065
  store i8 39, ptr %562, align 1, !dbg !2065, !tbaa !817
  br label %563, !dbg !2065

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2068
  call void @llvm.dbg.value(metadata i64 %564, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 1, metadata !1595, metadata !DIExpression()), !dbg !1639
  br label %565, !dbg !2069

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !1748
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !1639
  call void @llvm.dbg.value(metadata i8 %567, metadata !1595, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %566, metadata !1587, metadata !DIExpression()), !dbg !1639
  %568 = icmp ult i64 %566, %544, !dbg !2070
  br i1 %568, label %569, label %571, !dbg !2073

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2070
  store i8 92, ptr %570, align 1, !dbg !2070, !tbaa !817
  br label %571, !dbg !2070

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %544, metadata !1578, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %543, metadata !1608, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 %542, metadata !1607, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 1, metadata !1606, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 %541, metadata !1601, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 %567, metadata !1595, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %539, metadata !1593, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %538, metadata !1588, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %572, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %536, metadata !1580, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.label(metadata !1637), !dbg !2074
  br label %600, !dbg !2075

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2039
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !1639
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !1644
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !1648
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !1740
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2050
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !1748
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !1748
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2078
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1578, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %582, metadata !1608, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 %581, metadata !1607, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 %580, metadata !1606, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 %579, metadata !1601, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 %578, metadata !1595, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %577, metadata !1593, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %576, metadata !1588, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %575, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %574, metadata !1580, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.label(metadata !1637), !dbg !2074
  %584 = and i8 %578, 1, !dbg !2075
  %585 = icmp ne i8 %584, 0, !dbg !2075
  %586 = and i8 %580, 1, !dbg !2075
  %587 = icmp eq i8 %586, 0, !dbg !2075
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2075
  br i1 %588, label %589, label %600, !dbg !2075

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2079
  br i1 %590, label %591, label %593, !dbg !2083

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2079
  store i8 39, ptr %592, align 1, !dbg !2079, !tbaa !817
  br label %593, !dbg !2079

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %594, metadata !1587, metadata !DIExpression()), !dbg !1639
  %595 = icmp ult i64 %594, %583, !dbg !2084
  br i1 %595, label %596, label %598, !dbg !2087

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2084
  store i8 39, ptr %597, align 1, !dbg !2084, !tbaa !817
  br label %598, !dbg !2084

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %599, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 0, metadata !1595, metadata !DIExpression()), !dbg !1639
  br label %600, !dbg !2088

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !1748
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !1639
  call void @llvm.dbg.value(metadata i8 %609, metadata !1595, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %608, metadata !1587, metadata !DIExpression()), !dbg !1639
  %610 = icmp ult i64 %608, %601, !dbg !2089
  br i1 %610, label %611, label %613, !dbg !2092

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2089
  store i8 %602, ptr %612, align 1, !dbg !2089, !tbaa !817
  br label %613, !dbg !2089

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %614, metadata !1587, metadata !DIExpression()), !dbg !1639
  %615 = icmp eq i8 %603, 0, !dbg !2093
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2095
  call void @llvm.dbg.value(metadata i8 %616, metadata !1594, metadata !DIExpression()), !dbg !1639
  br label %617, !dbg !2096

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2039
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !1639
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !1644
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !1648
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !1649
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !1740
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2050
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1578, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %624, metadata !1601, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 %623, metadata !1595, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %622, metadata !1594, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %621, metadata !1593, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %620, metadata !1588, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %619, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %618, metadata !1580, metadata !DIExpression()), !dbg !1639
  %626 = add i64 %624, 1, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %626, metadata !1601, metadata !DIExpression()), !dbg !1738
  br label %138, !dbg !2098, !llvm.loop !2099

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1578, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %143, metadata !1594, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 %142, metadata !1593, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %141, metadata !1588, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %140, metadata !1587, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %139, metadata !1580, metadata !DIExpression()), !dbg !1639
  %628 = icmp eq i64 %140, 0, !dbg !2101
  %629 = and i1 %133, %628, !dbg !2103
  %630 = xor i1 %629, true, !dbg !2103
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2103
  br i1 %631, label %632, label %670, !dbg !2103

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2104
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2104
  br i1 %636, label %637, label %646, !dbg !2104

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2106
  %639 = icmp eq i8 %638, 0, !dbg !2106
  br i1 %639, label %642, label %640, !dbg !2109

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2110
  br label %694, !dbg !2111

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2112
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2114
  br i1 %645, label %28, label %646, !dbg !2114

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2115
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2117
  br i1 %649, label %650, label %665, !dbg !2117

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1589, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %140, metadata !1587, metadata !DIExpression()), !dbg !1639
  %651 = load i8, ptr %120, align 1, !dbg !2118, !tbaa !817
  %652 = icmp eq i8 %651, 0, !dbg !2121
  br i1 %652, label %665, label %653, !dbg !2121

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1589, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %656, metadata !1587, metadata !DIExpression()), !dbg !1639
  %657 = icmp ult i64 %656, %146, !dbg !2122
  br i1 %657, label %658, label %660, !dbg !2125

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2122
  store i8 %654, ptr %659, align 1, !dbg !2122, !tbaa !817
  br label %660, !dbg !2122

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %661, metadata !1587, metadata !DIExpression()), !dbg !1639
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2126
  call void @llvm.dbg.value(metadata ptr %662, metadata !1589, metadata !DIExpression()), !dbg !1639
  %663 = load i8, ptr %662, align 1, !dbg !2118, !tbaa !817
  %664 = icmp eq i8 %663, 0, !dbg !2121
  br i1 %664, label %665, label %653, !dbg !2121, !llvm.loop !2127

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !1721
  call void @llvm.dbg.value(metadata i64 %666, metadata !1587, metadata !DIExpression()), !dbg !1639
  %667 = icmp ult i64 %666, %146, !dbg !2129
  br i1 %667, label %668, label %694, !dbg !2131

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2132
  store i8 0, ptr %669, align 1, !dbg !2133, !tbaa !817
  br label %694, !dbg !2132

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !1638), !dbg !2134
  %672 = icmp eq i8 %124, 0, !dbg !2135
  %673 = select i1 %672, i32 2, i32 4, !dbg !2135
  br label %684, !dbg !2135

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2135
  %678 = select i1 %677, i32 2, i32 4, !dbg !2135
  br label %679, !dbg !2137

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !1638), !dbg !2134
  %683 = icmp eq i32 %116, 2, !dbg !2137
  br i1 %683, label %684, label %688, !dbg !2135

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2135

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1581, metadata !DIExpression()), !dbg !1639
  %692 = and i32 %5, -3, !dbg !2138
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2139
  br label %694, !dbg !2140

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2141
}

; Function Attrs: nounwind
declare !dbg !2142 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2145 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2148 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2150 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2154, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %1, metadata !2155, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata ptr %2, metadata !2156, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata ptr %0, metadata !2158, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i64 %1, metadata !2163, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata ptr null, metadata !2164, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata ptr %2, metadata !2165, metadata !DIExpression()), !dbg !2171
  %4 = icmp eq ptr %2, null, !dbg !2173
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2173
  call void @llvm.dbg.value(metadata ptr %5, metadata !2166, metadata !DIExpression()), !dbg !2171
  %6 = tail call ptr @__errno_location() #39, !dbg !2174
  %7 = load i32, ptr %6, align 4, !dbg !2174, !tbaa !808
  call void @llvm.dbg.value(metadata i32 %7, metadata !2167, metadata !DIExpression()), !dbg !2171
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2175
  %9 = load i32, ptr %8, align 4, !dbg !2175, !tbaa !1521
  %10 = or i32 %9, 1, !dbg !2176
  call void @llvm.dbg.value(metadata i32 %10, metadata !2168, metadata !DIExpression()), !dbg !2171
  %11 = load i32, ptr %5, align 8, !dbg !2177, !tbaa !1471
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2178
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2179
  %14 = load ptr, ptr %13, align 8, !dbg !2179, !tbaa !1542
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2180
  %16 = load ptr, ptr %15, align 8, !dbg !2180, !tbaa !1545
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2181
  %18 = add i64 %17, 1, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %18, metadata !2169, metadata !DIExpression()), !dbg !2171
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2183
  call void @llvm.dbg.value(metadata ptr %19, metadata !2170, metadata !DIExpression()), !dbg !2171
  %20 = load i32, ptr %5, align 8, !dbg !2184, !tbaa !1471
  %21 = load ptr, ptr %13, align 8, !dbg !2185, !tbaa !1542
  %22 = load ptr, ptr %15, align 8, !dbg !2186, !tbaa !1545
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2187
  store i32 %7, ptr %6, align 4, !dbg !2188, !tbaa !808
  ret ptr %19, !dbg !2189
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2159 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2158, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i64 %1, metadata !2163, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata ptr %2, metadata !2164, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata ptr %3, metadata !2165, metadata !DIExpression()), !dbg !2190
  %5 = icmp eq ptr %3, null, !dbg !2191
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2191
  call void @llvm.dbg.value(metadata ptr %6, metadata !2166, metadata !DIExpression()), !dbg !2190
  %7 = tail call ptr @__errno_location() #39, !dbg !2192
  %8 = load i32, ptr %7, align 4, !dbg !2192, !tbaa !808
  call void @llvm.dbg.value(metadata i32 %8, metadata !2167, metadata !DIExpression()), !dbg !2190
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2193
  %10 = load i32, ptr %9, align 4, !dbg !2193, !tbaa !1521
  %11 = icmp eq ptr %2, null, !dbg !2194
  %12 = zext i1 %11 to i32, !dbg !2194
  %13 = or i32 %10, %12, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %13, metadata !2168, metadata !DIExpression()), !dbg !2190
  %14 = load i32, ptr %6, align 8, !dbg !2196, !tbaa !1471
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2197
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2198
  %17 = load ptr, ptr %16, align 8, !dbg !2198, !tbaa !1542
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2199
  %19 = load ptr, ptr %18, align 8, !dbg !2199, !tbaa !1545
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2200
  %21 = add i64 %20, 1, !dbg !2201
  call void @llvm.dbg.value(metadata i64 %21, metadata !2169, metadata !DIExpression()), !dbg !2190
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2202
  call void @llvm.dbg.value(metadata ptr %22, metadata !2170, metadata !DIExpression()), !dbg !2190
  %23 = load i32, ptr %6, align 8, !dbg !2203, !tbaa !1471
  %24 = load ptr, ptr %16, align 8, !dbg !2204, !tbaa !1542
  %25 = load ptr, ptr %18, align 8, !dbg !2205, !tbaa !1545
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2206
  store i32 %8, ptr %7, align 4, !dbg !2207, !tbaa !808
  br i1 %11, label %28, label %27, !dbg !2208

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2209, !tbaa !2211
  br label %28, !dbg !2212

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2213
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2214 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2219, !tbaa !747
  call void @llvm.dbg.value(metadata ptr %1, metadata !2216, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i32 1, metadata !2217, metadata !DIExpression()), !dbg !2221
  %2 = load i32, ptr @nslots, align 4, !tbaa !808
  call void @llvm.dbg.value(metadata i32 1, metadata !2217, metadata !DIExpression()), !dbg !2221
  %3 = icmp sgt i32 %2, 1, !dbg !2222
  br i1 %3, label %4, label %6, !dbg !2224

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2222
  br label %10, !dbg !2224

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2225
  %8 = load ptr, ptr %7, align 8, !dbg !2225, !tbaa !2227
  %9 = icmp eq ptr %8, @slot0, !dbg !2229
  br i1 %9, label %17, label %16, !dbg !2230

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2217, metadata !DIExpression()), !dbg !2221
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2231
  %13 = load ptr, ptr %12, align 8, !dbg !2231, !tbaa !2227
  tail call void @free(ptr noundef %13) #36, !dbg !2232
  %14 = add nuw nsw i64 %11, 1, !dbg !2233
  call void @llvm.dbg.value(metadata i64 %14, metadata !2217, metadata !DIExpression()), !dbg !2221
  %15 = icmp eq i64 %14, %5, !dbg !2222
  br i1 %15, label %6, label %10, !dbg !2224, !llvm.loop !2234

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2236
  store i64 256, ptr @slotvec0, align 8, !dbg !2238, !tbaa !2239
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2240, !tbaa !2227
  br label %17, !dbg !2241

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2242
  br i1 %18, label %20, label %19, !dbg !2244

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2245
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2247, !tbaa !747
  br label %20, !dbg !2248

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2249, !tbaa !808
  ret void, !dbg !2250
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2251 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2254 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2256, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata ptr %1, metadata !2257, metadata !DIExpression()), !dbg !2258
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2259
  ret ptr %3, !dbg !2260
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2261 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2265, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata ptr %1, metadata !2266, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i64 %2, metadata !2267, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata ptr %3, metadata !2268, metadata !DIExpression()), !dbg !2281
  %6 = tail call ptr @__errno_location() #39, !dbg !2282
  %7 = load i32, ptr %6, align 4, !dbg !2282, !tbaa !808
  call void @llvm.dbg.value(metadata i32 %7, metadata !2269, metadata !DIExpression()), !dbg !2281
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2283, !tbaa !747
  call void @llvm.dbg.value(metadata ptr %8, metadata !2270, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2271, metadata !DIExpression()), !dbg !2281
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2284
  br i1 %9, label %10, label %11, !dbg !2284

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2286
  unreachable, !dbg !2286

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2287, !tbaa !808
  %13 = icmp sgt i32 %12, %0, !dbg !2288
  br i1 %13, label %32, label %14, !dbg !2289

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2290
  call void @llvm.dbg.value(metadata i1 %15, metadata !2272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2291
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2292
  %16 = sext i32 %12 to i64, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %16, metadata !2275, metadata !DIExpression()), !dbg !2291
  store i64 %16, ptr %5, align 8, !dbg !2294, !tbaa !2211
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2295
  %18 = add nuw nsw i32 %0, 1, !dbg !2296
  %19 = sub i32 %18, %12, !dbg !2297
  %20 = sext i32 %19 to i64, !dbg !2298
  call void @llvm.dbg.value(metadata ptr %5, metadata !2275, metadata !DIExpression(DW_OP_deref)), !dbg !2291
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2299
  call void @llvm.dbg.value(metadata ptr %21, metadata !2270, metadata !DIExpression()), !dbg !2281
  store ptr %21, ptr @slotvec, align 8, !dbg !2300, !tbaa !747
  br i1 %15, label %22, label %23, !dbg !2301

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2302, !tbaa.struct !2304
  br label %23, !dbg !2305

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2306, !tbaa !808
  %25 = sext i32 %24 to i64, !dbg !2307
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2307
  %27 = load i64, ptr %5, align 8, !dbg !2308, !tbaa !2211
  call void @llvm.dbg.value(metadata i64 %27, metadata !2275, metadata !DIExpression()), !dbg !2291
  %28 = sub nsw i64 %27, %25, !dbg !2309
  %29 = shl i64 %28, 4, !dbg !2310
  call void @llvm.dbg.value(metadata ptr %26, metadata !1678, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 0, metadata !1681, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %29, metadata !1682, metadata !DIExpression()), !dbg !2311
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2313
  %30 = load i64, ptr %5, align 8, !dbg !2314, !tbaa !2211
  call void @llvm.dbg.value(metadata i64 %30, metadata !2275, metadata !DIExpression()), !dbg !2291
  %31 = trunc i64 %30 to i32, !dbg !2314
  store i32 %31, ptr @nslots, align 4, !dbg !2315, !tbaa !808
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2316
  br label %32, !dbg !2317

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2281
  call void @llvm.dbg.value(metadata ptr %33, metadata !2270, metadata !DIExpression()), !dbg !2281
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2318
  %36 = load i64, ptr %35, align 8, !dbg !2319, !tbaa !2239
  call void @llvm.dbg.value(metadata i64 %36, metadata !2276, metadata !DIExpression()), !dbg !2320
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2321
  %38 = load ptr, ptr %37, align 8, !dbg !2321, !tbaa !2227
  call void @llvm.dbg.value(metadata ptr %38, metadata !2278, metadata !DIExpression()), !dbg !2320
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2322
  %40 = load i32, ptr %39, align 4, !dbg !2322, !tbaa !1521
  %41 = or i32 %40, 1, !dbg !2323
  call void @llvm.dbg.value(metadata i32 %41, metadata !2279, metadata !DIExpression()), !dbg !2320
  %42 = load i32, ptr %3, align 8, !dbg !2324, !tbaa !1471
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2325
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2326
  %45 = load ptr, ptr %44, align 8, !dbg !2326, !tbaa !1542
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2327
  %47 = load ptr, ptr %46, align 8, !dbg !2327, !tbaa !1545
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2328
  call void @llvm.dbg.value(metadata i64 %48, metadata !2280, metadata !DIExpression()), !dbg !2320
  %49 = icmp ugt i64 %36, %48, !dbg !2329
  br i1 %49, label %60, label %50, !dbg !2331

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2332
  call void @llvm.dbg.value(metadata i64 %51, metadata !2276, metadata !DIExpression()), !dbg !2320
  store i64 %51, ptr %35, align 8, !dbg !2334, !tbaa !2239
  %52 = icmp eq ptr %38, @slot0, !dbg !2335
  br i1 %52, label %54, label %53, !dbg !2337

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2338
  br label %54, !dbg !2338

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2339
  call void @llvm.dbg.value(metadata ptr %55, metadata !2278, metadata !DIExpression()), !dbg !2320
  store ptr %55, ptr %37, align 8, !dbg !2340, !tbaa !2227
  %56 = load i32, ptr %3, align 8, !dbg !2341, !tbaa !1471
  %57 = load ptr, ptr %44, align 8, !dbg !2342, !tbaa !1542
  %58 = load ptr, ptr %46, align 8, !dbg !2343, !tbaa !1545
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2344
  br label %60, !dbg !2345

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2320
  call void @llvm.dbg.value(metadata ptr %61, metadata !2278, metadata !DIExpression()), !dbg !2320
  store i32 %7, ptr %6, align 4, !dbg !2346, !tbaa !808
  ret ptr %61, !dbg !2347
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2348 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2352, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata ptr %1, metadata !2353, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %2, metadata !2354, metadata !DIExpression()), !dbg !2355
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2356
  ret ptr %4, !dbg !2357
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2358 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2360, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i32 0, metadata !2256, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata ptr %0, metadata !2257, metadata !DIExpression()), !dbg !2362
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2364
  ret ptr %2, !dbg !2365
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2366 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2370, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i64 %1, metadata !2371, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i32 0, metadata !2352, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata ptr %0, metadata !2353, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i64 %1, metadata !2354, metadata !DIExpression()), !dbg !2373
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2375
  ret ptr %3, !dbg !2376
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2377 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2381, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i32 %1, metadata !2382, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata ptr %2, metadata !2383, metadata !DIExpression()), !dbg !2385
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2386
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2384, metadata !DIExpression()), !dbg !2387
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2388), !dbg !2391
  call void @llvm.dbg.value(metadata i32 %1, metadata !2392, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2397, metadata !DIExpression()), !dbg !2400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2400, !alias.scope !2388
  %5 = icmp eq i32 %1, 10, !dbg !2401
  br i1 %5, label %6, label %7, !dbg !2403

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2404, !noalias !2388
  unreachable, !dbg !2404

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2405, !tbaa !1471, !alias.scope !2388
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2406
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2407
  ret ptr %8, !dbg !2408
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2409 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2413, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i32 %1, metadata !2414, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata ptr %2, metadata !2415, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i64 %3, metadata !2416, metadata !DIExpression()), !dbg !2418
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2419
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2417, metadata !DIExpression()), !dbg !2420
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2421), !dbg !2424
  call void @llvm.dbg.value(metadata i32 %1, metadata !2392, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2397, metadata !DIExpression()), !dbg !2427
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2427, !alias.scope !2421
  %6 = icmp eq i32 %1, 10, !dbg !2428
  br i1 %6, label %7, label %8, !dbg !2429

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2430, !noalias !2421
  unreachable, !dbg !2430

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2431, !tbaa !1471, !alias.scope !2421
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2432
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2433
  ret ptr %9, !dbg !2434
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2435 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2439, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata ptr %1, metadata !2440, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 0, metadata !2381, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i32 %0, metadata !2382, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata ptr %1, metadata !2383, metadata !DIExpression()), !dbg !2442
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2444
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2384, metadata !DIExpression()), !dbg !2445
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2446), !dbg !2449
  call void @llvm.dbg.value(metadata i32 %0, metadata !2392, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2397, metadata !DIExpression()), !dbg !2452
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2452, !alias.scope !2446
  %4 = icmp eq i32 %0, 10, !dbg !2453
  br i1 %4, label %5, label %6, !dbg !2454

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2455, !noalias !2446
  unreachable, !dbg !2455

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2456, !tbaa !1471, !alias.scope !2446
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2457
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2458
  ret ptr %7, !dbg !2459
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2460 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2464, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata ptr %1, metadata !2465, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i64 %2, metadata !2466, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 0, metadata !2413, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i32 %0, metadata !2414, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata ptr %1, metadata !2415, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i64 %2, metadata !2416, metadata !DIExpression()), !dbg !2468
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2470
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2417, metadata !DIExpression()), !dbg !2471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2472), !dbg !2475
  call void @llvm.dbg.value(metadata i32 %0, metadata !2392, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2397, metadata !DIExpression()), !dbg !2478
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2478, !alias.scope !2472
  %5 = icmp eq i32 %0, 10, !dbg !2479
  br i1 %5, label %6, label %7, !dbg !2480

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2481, !noalias !2472
  unreachable, !dbg !2481

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2482, !tbaa !1471, !alias.scope !2472
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2483
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2484
  ret ptr %8, !dbg !2485
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2486 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2490, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i64 %1, metadata !2491, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i8 %2, metadata !2492, metadata !DIExpression()), !dbg !2494
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2495
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2493, metadata !DIExpression()), !dbg !2496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2497, !tbaa.struct !2498
  call void @llvm.dbg.value(metadata ptr %4, metadata !1488, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i8 %2, metadata !1489, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i32 1, metadata !1490, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i8 %2, metadata !1491, metadata !DIExpression()), !dbg !2499
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2501
  %6 = lshr i8 %2, 5, !dbg !2502
  %7 = zext i8 %6 to i64, !dbg !2502
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2503
  call void @llvm.dbg.value(metadata ptr %8, metadata !1492, metadata !DIExpression()), !dbg !2499
  %9 = and i8 %2, 31, !dbg !2504
  %10 = zext i8 %9 to i32, !dbg !2504
  call void @llvm.dbg.value(metadata i32 %10, metadata !1494, metadata !DIExpression()), !dbg !2499
  %11 = load i32, ptr %8, align 4, !dbg !2505, !tbaa !808
  %12 = lshr i32 %11, %10, !dbg !2506
  call void @llvm.dbg.value(metadata i32 %12, metadata !1495, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2499
  %13 = and i32 %12, 1, !dbg !2507
  %14 = xor i32 %13, 1, !dbg !2507
  %15 = shl nuw i32 %14, %10, !dbg !2508
  %16 = xor i32 %15, %11, !dbg !2509
  store i32 %16, ptr %8, align 4, !dbg !2509, !tbaa !808
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2510
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2511
  ret ptr %17, !dbg !2512
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2513 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2517, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 %1, metadata !2518, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata ptr %0, metadata !2490, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i64 -1, metadata !2491, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i8 %1, metadata !2492, metadata !DIExpression()), !dbg !2520
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2522
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2493, metadata !DIExpression()), !dbg !2523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2524, !tbaa.struct !2498
  call void @llvm.dbg.value(metadata ptr %3, metadata !1488, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 %1, metadata !1489, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 1, metadata !1490, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 %1, metadata !1491, metadata !DIExpression()), !dbg !2525
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2527
  %5 = lshr i8 %1, 5, !dbg !2528
  %6 = zext i8 %5 to i64, !dbg !2528
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2529
  call void @llvm.dbg.value(metadata ptr %7, metadata !1492, metadata !DIExpression()), !dbg !2525
  %8 = and i8 %1, 31, !dbg !2530
  %9 = zext i8 %8 to i32, !dbg !2530
  call void @llvm.dbg.value(metadata i32 %9, metadata !1494, metadata !DIExpression()), !dbg !2525
  %10 = load i32, ptr %7, align 4, !dbg !2531, !tbaa !808
  %11 = lshr i32 %10, %9, !dbg !2532
  call void @llvm.dbg.value(metadata i32 %11, metadata !1495, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2525
  %12 = and i32 %11, 1, !dbg !2533
  %13 = xor i32 %12, 1, !dbg !2533
  %14 = shl nuw i32 %13, %9, !dbg !2534
  %15 = xor i32 %14, %10, !dbg !2535
  store i32 %15, ptr %7, align 4, !dbg !2535, !tbaa !808
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2536
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2537
  ret ptr %16, !dbg !2538
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2539 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2541, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata ptr %0, metadata !2517, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 58, metadata !2518, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata ptr %0, metadata !2490, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i64 -1, metadata !2491, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 58, metadata !2492, metadata !DIExpression()), !dbg !2545
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2547
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2493, metadata !DIExpression()), !dbg !2548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2549, !tbaa.struct !2498
  call void @llvm.dbg.value(metadata ptr %2, metadata !1488, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8 58, metadata !1489, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i32 1, metadata !1490, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8 58, metadata !1491, metadata !DIExpression()), !dbg !2550
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2552
  call void @llvm.dbg.value(metadata ptr %3, metadata !1492, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i32 26, metadata !1494, metadata !DIExpression()), !dbg !2550
  %4 = load i32, ptr %3, align 4, !dbg !2553, !tbaa !808
  call void @llvm.dbg.value(metadata i32 %4, metadata !1495, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2550
  %5 = or i32 %4, 67108864, !dbg !2554
  store i32 %5, ptr %3, align 4, !dbg !2554, !tbaa !808
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2555
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2556
  ret ptr %6, !dbg !2557
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2558 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2560, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i64 %1, metadata !2561, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata ptr %0, metadata !2490, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i64 %1, metadata !2491, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 58, metadata !2492, metadata !DIExpression()), !dbg !2563
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2565
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2493, metadata !DIExpression()), !dbg !2566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2567, !tbaa.struct !2498
  call void @llvm.dbg.value(metadata ptr %3, metadata !1488, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8 58, metadata !1489, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i32 1, metadata !1490, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8 58, metadata !1491, metadata !DIExpression()), !dbg !2568
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2570
  call void @llvm.dbg.value(metadata ptr %4, metadata !1492, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i32 26, metadata !1494, metadata !DIExpression()), !dbg !2568
  %5 = load i32, ptr %4, align 4, !dbg !2571, !tbaa !808
  call void @llvm.dbg.value(metadata i32 %5, metadata !1495, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2568
  %6 = or i32 %5, 67108864, !dbg !2572
  store i32 %6, ptr %4, align 4, !dbg !2572, !tbaa !808
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2573
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2574
  ret ptr %7, !dbg !2575
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2576 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2397, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %0, metadata !2578, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32 %1, metadata !2579, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata ptr %2, metadata !2580, metadata !DIExpression()), !dbg !2584
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2585
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2581, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i32 %1, metadata !2392, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i32 0, metadata !2397, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2587
  %5 = icmp eq i32 %1, 10, !dbg !2588
  br i1 %5, label %6, label %7, !dbg !2589

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2590, !noalias !2591
  unreachable, !dbg !2590

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2397, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2587
  store i32 %1, ptr %4, align 8, !dbg !2594, !tbaa.struct !2498
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2594
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2594
  call void @llvm.dbg.value(metadata ptr %4, metadata !1488, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 58, metadata !1489, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 1, metadata !1490, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 58, metadata !1491, metadata !DIExpression()), !dbg !2595
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2597
  call void @llvm.dbg.value(metadata ptr %9, metadata !1492, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 26, metadata !1494, metadata !DIExpression()), !dbg !2595
  %10 = load i32, ptr %9, align 4, !dbg !2598, !tbaa !808
  call void @llvm.dbg.value(metadata i32 %10, metadata !1495, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2595
  %11 = or i32 %10, 67108864, !dbg !2599
  store i32 %11, ptr %9, align 4, !dbg !2599, !tbaa !808
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2600
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2601
  ret ptr %12, !dbg !2602
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2603 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2607, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata ptr %1, metadata !2608, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata ptr %2, metadata !2609, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata ptr %3, metadata !2610, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %0, metadata !2612, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata ptr %1, metadata !2617, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata ptr %2, metadata !2618, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata ptr %3, metadata !2619, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i64 -1, metadata !2620, metadata !DIExpression()), !dbg !2622
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2624
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2621, metadata !DIExpression()), !dbg !2625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2626, !tbaa.struct !2498
  call void @llvm.dbg.value(metadata ptr %5, metadata !1528, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata ptr %1, metadata !1529, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata ptr %2, metadata !1530, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata ptr %5, metadata !1528, metadata !DIExpression()), !dbg !2627
  store i32 10, ptr %5, align 8, !dbg !2629, !tbaa !1471
  %6 = icmp ne ptr %1, null, !dbg !2630
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2631
  br i1 %8, label %10, label %9, !dbg !2631

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2632
  unreachable, !dbg !2632

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2633
  store ptr %1, ptr %11, align 8, !dbg !2634, !tbaa !1542
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2635
  store ptr %2, ptr %12, align 8, !dbg !2636, !tbaa !1545
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2637
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2638
  ret ptr %13, !dbg !2639
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2613 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2612, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %1, metadata !2617, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %2, metadata !2618, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %3, metadata !2619, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %4, metadata !2620, metadata !DIExpression()), !dbg !2640
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2641
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2621, metadata !DIExpression()), !dbg !2642
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2643, !tbaa.struct !2498
  call void @llvm.dbg.value(metadata ptr %6, metadata !1528, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata ptr %1, metadata !1529, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata ptr %2, metadata !1530, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata ptr %6, metadata !1528, metadata !DIExpression()), !dbg !2644
  store i32 10, ptr %6, align 8, !dbg !2646, !tbaa !1471
  %7 = icmp ne ptr %1, null, !dbg !2647
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2648
  br i1 %9, label %11, label %10, !dbg !2648

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2649
  unreachable, !dbg !2649

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2650
  store ptr %1, ptr %12, align 8, !dbg !2651, !tbaa !1542
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2652
  store ptr %2, ptr %13, align 8, !dbg !2653, !tbaa !1545
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2654
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2655
  ret ptr %14, !dbg !2656
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2657 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2661, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %1, metadata !2662, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %2, metadata !2663, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32 0, metadata !2607, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata ptr %0, metadata !2608, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata ptr %1, metadata !2609, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata ptr %2, metadata !2610, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i32 0, metadata !2612, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata ptr %0, metadata !2617, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata ptr %1, metadata !2618, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata ptr %2, metadata !2619, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i64 -1, metadata !2620, metadata !DIExpression()), !dbg !2667
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2669
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2621, metadata !DIExpression()), !dbg !2670
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2671, !tbaa.struct !2498
  call void @llvm.dbg.value(metadata ptr %4, metadata !1528, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %0, metadata !1529, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %1, metadata !1530, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %4, metadata !1528, metadata !DIExpression()), !dbg !2672
  store i32 10, ptr %4, align 8, !dbg !2674, !tbaa !1471
  %5 = icmp ne ptr %0, null, !dbg !2675
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2676
  br i1 %7, label %9, label %8, !dbg !2676

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2677
  unreachable, !dbg !2677

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2678
  store ptr %0, ptr %10, align 8, !dbg !2679, !tbaa !1542
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2680
  store ptr %1, ptr %11, align 8, !dbg !2681, !tbaa !1545
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2682
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2683
  ret ptr %12, !dbg !2684
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2685 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2689, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata ptr %1, metadata !2690, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata ptr %2, metadata !2691, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 %3, metadata !2692, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32 0, metadata !2612, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %0, metadata !2617, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %1, metadata !2618, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %2, metadata !2619, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i64 %3, metadata !2620, metadata !DIExpression()), !dbg !2694
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2696
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2621, metadata !DIExpression()), !dbg !2697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2698, !tbaa.struct !2498
  call void @llvm.dbg.value(metadata ptr %5, metadata !1528, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata ptr %0, metadata !1529, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata ptr %1, metadata !1530, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata ptr %5, metadata !1528, metadata !DIExpression()), !dbg !2699
  store i32 10, ptr %5, align 8, !dbg !2701, !tbaa !1471
  %6 = icmp ne ptr %0, null, !dbg !2702
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2703
  br i1 %8, label %10, label %9, !dbg !2703

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2704
  unreachable, !dbg !2704

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2705
  store ptr %0, ptr %11, align 8, !dbg !2706, !tbaa !1542
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2707
  store ptr %1, ptr %12, align 8, !dbg !2708, !tbaa !1545
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2709
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2710
  ret ptr %13, !dbg !2711
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2712 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2716, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata ptr %1, metadata !2717, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %2, metadata !2718, metadata !DIExpression()), !dbg !2719
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2720
  ret ptr %4, !dbg !2721
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2722 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2726, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 %1, metadata !2727, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 0, metadata !2716, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata ptr %0, metadata !2717, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i64 %1, metadata !2718, metadata !DIExpression()), !dbg !2729
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2731
  ret ptr %3, !dbg !2732
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2733 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2737, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata ptr %1, metadata !2738, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i32 %0, metadata !2716, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata ptr %1, metadata !2717, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i64 -1, metadata !2718, metadata !DIExpression()), !dbg !2740
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2742
  ret ptr %3, !dbg !2743
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2744 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2748, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i32 0, metadata !2737, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata ptr %0, metadata !2738, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 0, metadata !2716, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata ptr %0, metadata !2717, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i64 -1, metadata !2718, metadata !DIExpression()), !dbg !2752
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2754
  ret ptr %2, !dbg !2755
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2756 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2795, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata ptr %1, metadata !2796, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata ptr %2, metadata !2797, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata ptr %3, metadata !2798, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata ptr %4, metadata !2799, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i64 %5, metadata !2800, metadata !DIExpression()), !dbg !2801
  %7 = icmp eq ptr %1, null, !dbg !2802
  br i1 %7, label %10, label %8, !dbg !2804

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.72, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !2805
  br label %12, !dbg !2805

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.73, ptr noundef %2, ptr noundef %3) #36, !dbg !2806
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.3.75, i32 noundef 5) #36, !dbg !2807
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !2807
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %0), !dbg !2808
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.5.77, i32 noundef 5) #36, !dbg !2809
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.78) #36, !dbg !2809
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %0), !dbg !2810
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
  ], !dbg !2811

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.7.79, i32 noundef 5) #36, !dbg !2812
  %21 = load ptr, ptr %4, align 8, !dbg !2812, !tbaa !747
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !2812
  br label %147, !dbg !2814

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.8.80, i32 noundef 5) #36, !dbg !2815
  %25 = load ptr, ptr %4, align 8, !dbg !2815, !tbaa !747
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2815
  %27 = load ptr, ptr %26, align 8, !dbg !2815, !tbaa !747
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !2815
  br label %147, !dbg !2816

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.9.81, i32 noundef 5) #36, !dbg !2817
  %31 = load ptr, ptr %4, align 8, !dbg !2817, !tbaa !747
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2817
  %33 = load ptr, ptr %32, align 8, !dbg !2817, !tbaa !747
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2817
  %35 = load ptr, ptr %34, align 8, !dbg !2817, !tbaa !747
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !2817
  br label %147, !dbg !2818

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.10.82, i32 noundef 5) #36, !dbg !2819
  %39 = load ptr, ptr %4, align 8, !dbg !2819, !tbaa !747
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2819
  %41 = load ptr, ptr %40, align 8, !dbg !2819, !tbaa !747
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2819
  %43 = load ptr, ptr %42, align 8, !dbg !2819, !tbaa !747
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2819
  %45 = load ptr, ptr %44, align 8, !dbg !2819, !tbaa !747
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !2819
  br label %147, !dbg !2820

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.11.83, i32 noundef 5) #36, !dbg !2821
  %49 = load ptr, ptr %4, align 8, !dbg !2821, !tbaa !747
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2821
  %51 = load ptr, ptr %50, align 8, !dbg !2821, !tbaa !747
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2821
  %53 = load ptr, ptr %52, align 8, !dbg !2821, !tbaa !747
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2821
  %55 = load ptr, ptr %54, align 8, !dbg !2821, !tbaa !747
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2821
  %57 = load ptr, ptr %56, align 8, !dbg !2821, !tbaa !747
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !2821
  br label %147, !dbg !2822

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.12.84, i32 noundef 5) #36, !dbg !2823
  %61 = load ptr, ptr %4, align 8, !dbg !2823, !tbaa !747
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2823
  %63 = load ptr, ptr %62, align 8, !dbg !2823, !tbaa !747
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2823
  %65 = load ptr, ptr %64, align 8, !dbg !2823, !tbaa !747
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2823
  %67 = load ptr, ptr %66, align 8, !dbg !2823, !tbaa !747
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2823
  %69 = load ptr, ptr %68, align 8, !dbg !2823, !tbaa !747
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2823
  %71 = load ptr, ptr %70, align 8, !dbg !2823, !tbaa !747
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !2823
  br label %147, !dbg !2824

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.13.85, i32 noundef 5) #36, !dbg !2825
  %75 = load ptr, ptr %4, align 8, !dbg !2825, !tbaa !747
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2825
  %77 = load ptr, ptr %76, align 8, !dbg !2825, !tbaa !747
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2825
  %79 = load ptr, ptr %78, align 8, !dbg !2825, !tbaa !747
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2825
  %81 = load ptr, ptr %80, align 8, !dbg !2825, !tbaa !747
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2825
  %83 = load ptr, ptr %82, align 8, !dbg !2825, !tbaa !747
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2825
  %85 = load ptr, ptr %84, align 8, !dbg !2825, !tbaa !747
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2825
  %87 = load ptr, ptr %86, align 8, !dbg !2825, !tbaa !747
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !2825
  br label %147, !dbg !2826

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.14.86, i32 noundef 5) #36, !dbg !2827
  %91 = load ptr, ptr %4, align 8, !dbg !2827, !tbaa !747
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2827
  %93 = load ptr, ptr %92, align 8, !dbg !2827, !tbaa !747
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2827
  %95 = load ptr, ptr %94, align 8, !dbg !2827, !tbaa !747
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2827
  %97 = load ptr, ptr %96, align 8, !dbg !2827, !tbaa !747
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2827
  %99 = load ptr, ptr %98, align 8, !dbg !2827, !tbaa !747
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2827
  %101 = load ptr, ptr %100, align 8, !dbg !2827, !tbaa !747
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2827
  %103 = load ptr, ptr %102, align 8, !dbg !2827, !tbaa !747
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2827
  %105 = load ptr, ptr %104, align 8, !dbg !2827, !tbaa !747
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !2827
  br label %147, !dbg !2828

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.15.87, i32 noundef 5) #36, !dbg !2829
  %109 = load ptr, ptr %4, align 8, !dbg !2829, !tbaa !747
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2829
  %111 = load ptr, ptr %110, align 8, !dbg !2829, !tbaa !747
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2829
  %113 = load ptr, ptr %112, align 8, !dbg !2829, !tbaa !747
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2829
  %115 = load ptr, ptr %114, align 8, !dbg !2829, !tbaa !747
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2829
  %117 = load ptr, ptr %116, align 8, !dbg !2829, !tbaa !747
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2829
  %119 = load ptr, ptr %118, align 8, !dbg !2829, !tbaa !747
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2829
  %121 = load ptr, ptr %120, align 8, !dbg !2829, !tbaa !747
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2829
  %123 = load ptr, ptr %122, align 8, !dbg !2829, !tbaa !747
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2829
  %125 = load ptr, ptr %124, align 8, !dbg !2829, !tbaa !747
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !2829
  br label %147, !dbg !2830

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.16.88, i32 noundef 5) #36, !dbg !2831
  %129 = load ptr, ptr %4, align 8, !dbg !2831, !tbaa !747
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2831
  %131 = load ptr, ptr %130, align 8, !dbg !2831, !tbaa !747
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2831
  %133 = load ptr, ptr %132, align 8, !dbg !2831, !tbaa !747
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2831
  %135 = load ptr, ptr %134, align 8, !dbg !2831, !tbaa !747
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2831
  %137 = load ptr, ptr %136, align 8, !dbg !2831, !tbaa !747
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2831
  %139 = load ptr, ptr %138, align 8, !dbg !2831, !tbaa !747
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2831
  %141 = load ptr, ptr %140, align 8, !dbg !2831, !tbaa !747
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2831
  %143 = load ptr, ptr %142, align 8, !dbg !2831, !tbaa !747
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2831
  %145 = load ptr, ptr %144, align 8, !dbg !2831, !tbaa !747
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !2831
  br label %147, !dbg !2832

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2833
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2834 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2838, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata ptr %1, metadata !2839, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata ptr %2, metadata !2840, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata ptr %3, metadata !2841, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata ptr %4, metadata !2842, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 0, metadata !2843, metadata !DIExpression()), !dbg !2844
  br label %6, !dbg !2845

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2847
  call void @llvm.dbg.value(metadata i64 %7, metadata !2843, metadata !DIExpression()), !dbg !2844
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2848
  %9 = load ptr, ptr %8, align 8, !dbg !2848, !tbaa !747
  %10 = icmp eq ptr %9, null, !dbg !2850
  %11 = add i64 %7, 1, !dbg !2851
  call void @llvm.dbg.value(metadata i64 %11, metadata !2843, metadata !DIExpression()), !dbg !2844
  br i1 %10, label %12, label %6, !dbg !2850, !llvm.loop !2852

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2854
  ret void, !dbg !2855
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2856 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2868, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata ptr %1, metadata !2869, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata ptr %2, metadata !2870, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata ptr %3, metadata !2871, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata ptr %4, metadata !2872, metadata !DIExpression()), !dbg !2876
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !2877
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2874, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 0, metadata !2873, metadata !DIExpression()), !dbg !2876
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2873, metadata !DIExpression()), !dbg !2876
  %10 = icmp ult i32 %9, 41, !dbg !2879
  br i1 %10, label %11, label %16, !dbg !2879

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2879
  %13 = zext i32 %9 to i64, !dbg !2879
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2879
  %15 = add nuw nsw i32 %9, 8, !dbg !2879
  store i32 %15, ptr %4, align 8, !dbg !2879
  br label %19, !dbg !2879

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2879
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2879
  store ptr %18, ptr %7, align 8, !dbg !2879
  br label %19, !dbg !2879

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2879
  %22 = load ptr, ptr %21, align 8, !dbg !2879
  store ptr %22, ptr %6, align 16, !dbg !2882, !tbaa !747
  %23 = icmp eq ptr %22, null, !dbg !2883
  br i1 %23, label %128, label %24, !dbg !2884

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !2873, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 1, metadata !2873, metadata !DIExpression()), !dbg !2876
  %25 = icmp ult i32 %20, 41, !dbg !2879
  br i1 %25, label %29, label %26, !dbg !2879

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2879
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2879
  store ptr %28, ptr %7, align 8, !dbg !2879
  br label %34, !dbg !2879

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2879
  %31 = zext i32 %20 to i64, !dbg !2879
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2879
  %33 = add nuw nsw i32 %20, 8, !dbg !2879
  store i32 %33, ptr %4, align 8, !dbg !2879
  br label %34, !dbg !2879

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2879
  %37 = load ptr, ptr %36, align 8, !dbg !2879
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2885
  store ptr %37, ptr %38, align 8, !dbg !2882, !tbaa !747
  %39 = icmp eq ptr %37, null, !dbg !2883
  br i1 %39, label %128, label %40, !dbg !2884

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !2873, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 2, metadata !2873, metadata !DIExpression()), !dbg !2876
  %41 = icmp ult i32 %35, 41, !dbg !2879
  br i1 %41, label %45, label %42, !dbg !2879

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2879
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2879
  store ptr %44, ptr %7, align 8, !dbg !2879
  br label %50, !dbg !2879

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2879
  %47 = zext i32 %35 to i64, !dbg !2879
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2879
  %49 = add nuw nsw i32 %35, 8, !dbg !2879
  store i32 %49, ptr %4, align 8, !dbg !2879
  br label %50, !dbg !2879

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2879
  %53 = load ptr, ptr %52, align 8, !dbg !2879
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2885
  store ptr %53, ptr %54, align 16, !dbg !2882, !tbaa !747
  %55 = icmp eq ptr %53, null, !dbg !2883
  br i1 %55, label %128, label %56, !dbg !2884

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !2873, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 3, metadata !2873, metadata !DIExpression()), !dbg !2876
  %57 = icmp ult i32 %51, 41, !dbg !2879
  br i1 %57, label %61, label %58, !dbg !2879

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2879
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2879
  store ptr %60, ptr %7, align 8, !dbg !2879
  br label %66, !dbg !2879

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2879
  %63 = zext i32 %51 to i64, !dbg !2879
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2879
  %65 = add nuw nsw i32 %51, 8, !dbg !2879
  store i32 %65, ptr %4, align 8, !dbg !2879
  br label %66, !dbg !2879

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2879
  %69 = load ptr, ptr %68, align 8, !dbg !2879
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2885
  store ptr %69, ptr %70, align 8, !dbg !2882, !tbaa !747
  %71 = icmp eq ptr %69, null, !dbg !2883
  br i1 %71, label %128, label %72, !dbg !2884

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !2873, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 4, metadata !2873, metadata !DIExpression()), !dbg !2876
  %73 = icmp ult i32 %67, 41, !dbg !2879
  br i1 %73, label %77, label %74, !dbg !2879

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2879
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2879
  store ptr %76, ptr %7, align 8, !dbg !2879
  br label %82, !dbg !2879

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2879
  %79 = zext i32 %67 to i64, !dbg !2879
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2879
  %81 = add nuw nsw i32 %67, 8, !dbg !2879
  store i32 %81, ptr %4, align 8, !dbg !2879
  br label %82, !dbg !2879

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2879
  %85 = load ptr, ptr %84, align 8, !dbg !2879
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2885
  store ptr %85, ptr %86, align 16, !dbg !2882, !tbaa !747
  %87 = icmp eq ptr %85, null, !dbg !2883
  br i1 %87, label %128, label %88, !dbg !2884

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !2873, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 5, metadata !2873, metadata !DIExpression()), !dbg !2876
  %89 = icmp ult i32 %83, 41, !dbg !2879
  br i1 %89, label %93, label %90, !dbg !2879

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2879
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2879
  store ptr %92, ptr %7, align 8, !dbg !2879
  br label %98, !dbg !2879

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2879
  %95 = zext i32 %83 to i64, !dbg !2879
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2879
  %97 = add nuw nsw i32 %83, 8, !dbg !2879
  store i32 %97, ptr %4, align 8, !dbg !2879
  br label %98, !dbg !2879

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2879
  %100 = load ptr, ptr %99, align 8, !dbg !2879
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2885
  store ptr %100, ptr %101, align 8, !dbg !2882, !tbaa !747
  %102 = icmp eq ptr %100, null, !dbg !2883
  br i1 %102, label %128, label %103, !dbg !2884

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !2873, metadata !DIExpression()), !dbg !2876
  %104 = load ptr, ptr %7, align 8, !dbg !2879
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2879
  store ptr %105, ptr %7, align 8, !dbg !2879
  %106 = load ptr, ptr %104, align 8, !dbg !2879
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2885
  store ptr %106, ptr %107, align 16, !dbg !2882, !tbaa !747
  %108 = icmp eq ptr %106, null, !dbg !2883
  br i1 %108, label %128, label %109, !dbg !2884

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !2873, metadata !DIExpression()), !dbg !2876
  %110 = load ptr, ptr %7, align 8, !dbg !2879
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2879
  store ptr %111, ptr %7, align 8, !dbg !2879
  %112 = load ptr, ptr %110, align 8, !dbg !2879
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2885
  store ptr %112, ptr %113, align 8, !dbg !2882, !tbaa !747
  %114 = icmp eq ptr %112, null, !dbg !2883
  br i1 %114, label %128, label %115, !dbg !2884

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !2873, metadata !DIExpression()), !dbg !2876
  %116 = load ptr, ptr %7, align 8, !dbg !2879
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2879
  store ptr %117, ptr %7, align 8, !dbg !2879
  %118 = load ptr, ptr %116, align 8, !dbg !2879
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2885
  store ptr %118, ptr %119, align 16, !dbg !2882, !tbaa !747
  %120 = icmp eq ptr %118, null, !dbg !2883
  br i1 %120, label %128, label %121, !dbg !2884

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !2873, metadata !DIExpression()), !dbg !2876
  %122 = load ptr, ptr %7, align 8, !dbg !2879
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2879
  store ptr %123, ptr %7, align 8, !dbg !2879
  %124 = load ptr, ptr %122, align 8, !dbg !2879
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2885
  store ptr %124, ptr %125, align 8, !dbg !2882, !tbaa !747
  %126 = icmp eq ptr %124, null, !dbg !2883
  %127 = select i1 %126, i64 9, i64 10, !dbg !2884
  br label %128, !dbg !2884

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2886
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2887
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !2888
  ret void, !dbg !2888
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2889 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2893, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata ptr %1, metadata !2894, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata ptr %2, metadata !2895, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata ptr %3, metadata !2896, metadata !DIExpression()), !dbg !2902
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #36, !dbg !2903
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2897, metadata !DIExpression()), !dbg !2904
  call void @llvm.va_start(ptr nonnull %5), !dbg !2905
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2906
  call void @llvm.va_end(ptr nonnull %5), !dbg !2907
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #36, !dbg !2908
  ret void, !dbg !2908
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2909 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2910, !tbaa !747
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %1), !dbg !2910
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.17.93, i32 noundef 5) #36, !dbg !2911
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18) #36, !dbg !2911
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.19, i32 noundef 5) #36, !dbg !2912
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.94, ptr noundef nonnull @.str.21) #36, !dbg !2912
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !2913
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !2913
  ret void, !dbg !2914
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2915 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2920, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i64 %1, metadata !2921, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i64 %2, metadata !2922, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata ptr %0, metadata !2924, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i64 %1, metadata !2927, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i64 %2, metadata !2928, metadata !DIExpression()), !dbg !2929
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2931
  call void @llvm.dbg.value(metadata ptr %4, metadata !2932, metadata !DIExpression()), !dbg !2937
  %5 = icmp eq ptr %4, null, !dbg !2939
  br i1 %5, label %6, label %7, !dbg !2941

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2942
  unreachable, !dbg !2942

7:                                                ; preds = %3
  ret ptr %4, !dbg !2943
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2925 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2924, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 %1, metadata !2927, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 %2, metadata !2928, metadata !DIExpression()), !dbg !2944
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2945
  call void @llvm.dbg.value(metadata ptr %4, metadata !2932, metadata !DIExpression()), !dbg !2946
  %5 = icmp eq ptr %4, null, !dbg !2948
  br i1 %5, label %6, label %7, !dbg !2949

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2950
  unreachable, !dbg !2950

7:                                                ; preds = %3
  ret ptr %4, !dbg !2951
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2952 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2956, metadata !DIExpression()), !dbg !2957
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2958
  call void @llvm.dbg.value(metadata ptr %2, metadata !2932, metadata !DIExpression()), !dbg !2959
  %3 = icmp eq ptr %2, null, !dbg !2961
  br i1 %3, label %4, label %5, !dbg !2962

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2963
  unreachable, !dbg !2963

5:                                                ; preds = %1
  ret ptr %2, !dbg !2964
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2965 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2966 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2970, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %0, metadata !2972, metadata !DIExpression()), !dbg !2976
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2978
  call void @llvm.dbg.value(metadata ptr %2, metadata !2932, metadata !DIExpression()), !dbg !2979
  %3 = icmp eq ptr %2, null, !dbg !2981
  br i1 %3, label %4, label %5, !dbg !2982

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2983
  unreachable, !dbg !2983

5:                                                ; preds = %1
  ret ptr %2, !dbg !2984
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2985 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2989, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i64 %0, metadata !2956, metadata !DIExpression()), !dbg !2991
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2993
  call void @llvm.dbg.value(metadata ptr %2, metadata !2932, metadata !DIExpression()), !dbg !2994
  %3 = icmp eq ptr %2, null, !dbg !2996
  br i1 %3, label %4, label %5, !dbg !2997

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2998
  unreachable, !dbg !2998

5:                                                ; preds = %1
  ret ptr %2, !dbg !2999
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3000 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3004, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 %1, metadata !3005, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata ptr %0, metadata !3007, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i64 %1, metadata !3011, metadata !DIExpression()), !dbg !3012
  %3 = icmp eq i64 %1, 0, !dbg !3014
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3014
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3015
  call void @llvm.dbg.value(metadata ptr %5, metadata !2932, metadata !DIExpression()), !dbg !3016
  %6 = icmp eq ptr %5, null, !dbg !3018
  br i1 %6, label %7, label %8, !dbg !3019

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3020
  unreachable, !dbg !3020

8:                                                ; preds = %2
  ret ptr %5, !dbg !3021
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3022 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3023 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3027, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %1, metadata !3028, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata ptr %0, metadata !3030, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i64 %1, metadata !3033, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata ptr %0, metadata !3007, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i64 %1, metadata !3011, metadata !DIExpression()), !dbg !3036
  %3 = icmp eq i64 %1, 0, !dbg !3038
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3038
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3039
  call void @llvm.dbg.value(metadata ptr %5, metadata !2932, metadata !DIExpression()), !dbg !3040
  %6 = icmp eq ptr %5, null, !dbg !3042
  br i1 %6, label %7, label %8, !dbg !3043

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3044
  unreachable, !dbg !3044

8:                                                ; preds = %2
  ret ptr %5, !dbg !3045
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3046 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3050, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %1, metadata !3051, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %2, metadata !3052, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %0, metadata !3054, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %1, metadata !3057, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %2, metadata !3058, metadata !DIExpression()), !dbg !3059
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3061
  call void @llvm.dbg.value(metadata ptr %4, metadata !2932, metadata !DIExpression()), !dbg !3062
  %5 = icmp eq ptr %4, null, !dbg !3064
  br i1 %5, label %6, label %7, !dbg !3065

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3066
  unreachable, !dbg !3066

7:                                                ; preds = %3
  ret ptr %4, !dbg !3067
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3068 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3072, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %1, metadata !3073, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata ptr null, metadata !2924, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64 %0, metadata !2927, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64 %1, metadata !2928, metadata !DIExpression()), !dbg !3075
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3077
  call void @llvm.dbg.value(metadata ptr %3, metadata !2932, metadata !DIExpression()), !dbg !3078
  %4 = icmp eq ptr %3, null, !dbg !3080
  br i1 %4, label %5, label %6, !dbg !3081

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3082
  unreachable, !dbg !3082

6:                                                ; preds = %2
  ret ptr %3, !dbg !3083
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3084 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3088, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %1, metadata !3089, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr null, metadata !3050, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i64 %0, metadata !3051, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i64 %1, metadata !3052, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata ptr null, metadata !3054, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %0, metadata !3057, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %1, metadata !3058, metadata !DIExpression()), !dbg !3093
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3095
  call void @llvm.dbg.value(metadata ptr %3, metadata !2932, metadata !DIExpression()), !dbg !3096
  %4 = icmp eq ptr %3, null, !dbg !3098
  br i1 %4, label %5, label %6, !dbg !3099

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3100
  unreachable, !dbg !3100

6:                                                ; preds = %2
  ret ptr %3, !dbg !3101
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3102 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3106, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr %1, metadata !3107, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr %0, metadata !683, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata ptr %1, metadata !684, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 1, metadata !685, metadata !DIExpression()), !dbg !3109
  %3 = load i64, ptr %1, align 8, !dbg !3111, !tbaa !2211
  call void @llvm.dbg.value(metadata i64 %3, metadata !686, metadata !DIExpression()), !dbg !3109
  %4 = icmp eq ptr %0, null, !dbg !3112
  br i1 %4, label %5, label %8, !dbg !3114

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3115
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3118
  br label %15, !dbg !3118

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3119
  %10 = add nuw i64 %9, 1, !dbg !3119
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3119
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3119
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3119
  call void @llvm.dbg.value(metadata i64 %13, metadata !686, metadata !DIExpression()), !dbg !3109
  br i1 %12, label %14, label %15, !dbg !3122

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3123
  unreachable, !dbg !3123

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3109
  call void @llvm.dbg.value(metadata i64 %16, metadata !686, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata ptr %0, metadata !2924, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %16, metadata !2927, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 1, metadata !2928, metadata !DIExpression()), !dbg !3124
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3126
  call void @llvm.dbg.value(metadata ptr %17, metadata !2932, metadata !DIExpression()), !dbg !3127
  %18 = icmp eq ptr %17, null, !dbg !3129
  br i1 %18, label %19, label %20, !dbg !3130

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3131
  unreachable, !dbg !3131

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !683, metadata !DIExpression()), !dbg !3109
  store i64 %16, ptr %1, align 8, !dbg !3132, !tbaa !2211
  ret ptr %17, !dbg !3133
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !678 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !683, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata ptr %1, metadata !684, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %2, metadata !685, metadata !DIExpression()), !dbg !3134
  %4 = load i64, ptr %1, align 8, !dbg !3135, !tbaa !2211
  call void @llvm.dbg.value(metadata i64 %4, metadata !686, metadata !DIExpression()), !dbg !3134
  %5 = icmp eq ptr %0, null, !dbg !3136
  br i1 %5, label %6, label %13, !dbg !3137

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3138
  br i1 %7, label %8, label %20, !dbg !3139

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3140
  call void @llvm.dbg.value(metadata i64 %9, metadata !686, metadata !DIExpression()), !dbg !3134
  %10 = icmp ugt i64 %2, 128, !dbg !3142
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3143
  call void @llvm.dbg.value(metadata i64 %12, metadata !686, metadata !DIExpression()), !dbg !3134
  br label %20, !dbg !3144

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3145
  %15 = add nuw i64 %14, 1, !dbg !3145
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3145
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3145
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3145
  call void @llvm.dbg.value(metadata i64 %18, metadata !686, metadata !DIExpression()), !dbg !3134
  br i1 %17, label %19, label %20, !dbg !3146

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3147
  unreachable, !dbg !3147

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3134
  call void @llvm.dbg.value(metadata i64 %21, metadata !686, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata ptr %0, metadata !2924, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %21, metadata !2927, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %2, metadata !2928, metadata !DIExpression()), !dbg !3148
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3150
  call void @llvm.dbg.value(metadata ptr %22, metadata !2932, metadata !DIExpression()), !dbg !3151
  %23 = icmp eq ptr %22, null, !dbg !3153
  br i1 %23, label %24, label %25, !dbg !3154

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3155
  unreachable, !dbg !3155

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !683, metadata !DIExpression()), !dbg !3134
  store i64 %21, ptr %1, align 8, !dbg !3156, !tbaa !2211
  ret ptr %22, !dbg !3157
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !690 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !698, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata ptr %1, metadata !699, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i64 %2, metadata !700, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i64 %3, metadata !701, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i64 %4, metadata !702, metadata !DIExpression()), !dbg !3158
  %6 = load i64, ptr %1, align 8, !dbg !3159, !tbaa !2211
  call void @llvm.dbg.value(metadata i64 %6, metadata !703, metadata !DIExpression()), !dbg !3158
  %7 = ashr i64 %6, 1, !dbg !3160
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3160
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3160
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %10, metadata !704, metadata !DIExpression()), !dbg !3158
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3162
  call void @llvm.dbg.value(metadata i64 %11, metadata !704, metadata !DIExpression()), !dbg !3158
  %12 = icmp sgt i64 %3, -1, !dbg !3163
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3165
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3165
  call void @llvm.dbg.value(metadata i64 %15, metadata !704, metadata !DIExpression()), !dbg !3158
  %16 = icmp slt i64 %4, 0, !dbg !3166
  br i1 %16, label %17, label %30, !dbg !3166

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3166
  br i1 %18, label %19, label %24, !dbg !3166

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3166
  %21 = udiv i64 9223372036854775807, %20, !dbg !3166
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3166
  br i1 %23, label %46, label %43, !dbg !3166

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3166
  br i1 %25, label %43, label %26, !dbg !3166

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3166
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3166
  %29 = icmp ult i64 %28, %15, !dbg !3166
  br i1 %29, label %46, label %43, !dbg !3166

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3166
  br i1 %31, label %43, label %32, !dbg !3166

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3166
  br i1 %33, label %34, label %40, !dbg !3166

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3166
  br i1 %35, label %43, label %36, !dbg !3166

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3166
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3166
  %39 = icmp ult i64 %38, %4, !dbg !3166
  br i1 %39, label %46, label %43, !dbg !3166

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3166
  br i1 %42, label %46, label %43, !dbg !3166

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !705, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3158
  %44 = mul i64 %15, %4, !dbg !3166
  call void @llvm.dbg.value(metadata i64 %44, metadata !705, metadata !DIExpression()), !dbg !3158
  %45 = icmp slt i64 %44, 128, !dbg !3166
  br i1 %45, label %46, label %51, !dbg !3166

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !706, metadata !DIExpression()), !dbg !3158
  %48 = sdiv i64 %47, %4, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %48, metadata !704, metadata !DIExpression()), !dbg !3158
  %49 = srem i64 %47, %4, !dbg !3170
  %50 = sub nsw i64 %47, %49, !dbg !3171
  call void @llvm.dbg.value(metadata i64 %50, metadata !705, metadata !DIExpression()), !dbg !3158
  br label %51, !dbg !3172

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3158
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3158
  call void @llvm.dbg.value(metadata i64 %53, metadata !705, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i64 %52, metadata !704, metadata !DIExpression()), !dbg !3158
  %54 = icmp eq ptr %0, null, !dbg !3173
  br i1 %54, label %55, label %56, !dbg !3175

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3176, !tbaa !2211
  br label %56, !dbg !3177

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3178
  %58 = icmp slt i64 %57, %2, !dbg !3180
  br i1 %58, label %59, label %96, !dbg !3181

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3182
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3182
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3182
  call void @llvm.dbg.value(metadata i64 %62, metadata !704, metadata !DIExpression()), !dbg !3158
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3183
  br i1 %65, label %95, label %66, !dbg !3183

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3184

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3184
  br i1 %68, label %69, label %74, !dbg !3184

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3184
  %71 = udiv i64 9223372036854775807, %70, !dbg !3184
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3184
  br i1 %73, label %95, label %93, !dbg !3184

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3184
  br i1 %75, label %93, label %76, !dbg !3184

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3184
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3184
  %79 = icmp ult i64 %78, %62, !dbg !3184
  br i1 %79, label %95, label %93, !dbg !3184

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3184
  br i1 %81, label %93, label %82, !dbg !3184

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3184
  br i1 %83, label %84, label %90, !dbg !3184

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3184
  br i1 %85, label %93, label %86, !dbg !3184

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3184
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3184
  %89 = icmp ult i64 %88, %4, !dbg !3184
  br i1 %89, label %95, label %93, !dbg !3184

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3184
  br i1 %92, label %95, label %93, !dbg !3184

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !705, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3158
  %94 = mul i64 %62, %4, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %94, metadata !705, metadata !DIExpression()), !dbg !3158
  br label %96, !dbg !3185

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #38, !dbg !3186
  unreachable, !dbg !3186

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3158
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3158
  call void @llvm.dbg.value(metadata i64 %98, metadata !705, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i64 %97, metadata !704, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata ptr %0, metadata !3004, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 %98, metadata !3005, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata ptr %0, metadata !3007, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i64 %98, metadata !3011, metadata !DIExpression()), !dbg !3189
  %99 = icmp eq i64 %98, 0, !dbg !3191
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3191
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #42, !dbg !3192
  call void @llvm.dbg.value(metadata ptr %101, metadata !2932, metadata !DIExpression()), !dbg !3193
  %102 = icmp eq ptr %101, null, !dbg !3195
  br i1 %102, label %103, label %104, !dbg !3196

103:                                              ; preds = %96
  tail call void @xalloc_die() #38, !dbg !3197
  unreachable, !dbg !3197

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !698, metadata !DIExpression()), !dbg !3158
  store i64 %97, ptr %1, align 8, !dbg !3198, !tbaa !2211
  ret ptr %101, !dbg !3199
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3200 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3202, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %0, metadata !3204, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i64 1, metadata !3207, metadata !DIExpression()), !dbg !3208
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3210
  call void @llvm.dbg.value(metadata ptr %2, metadata !2932, metadata !DIExpression()), !dbg !3211
  %3 = icmp eq ptr %2, null, !dbg !3213
  br i1 %3, label %4, label %5, !dbg !3214

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3215
  unreachable, !dbg !3215

5:                                                ; preds = %1
  ret ptr %2, !dbg !3216
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3217 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3205 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3204, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 %1, metadata !3207, metadata !DIExpression()), !dbg !3218
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3219
  call void @llvm.dbg.value(metadata ptr %3, metadata !2932, metadata !DIExpression()), !dbg !3220
  %4 = icmp eq ptr %3, null, !dbg !3222
  br i1 %4, label %5, label %6, !dbg !3223

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3224
  unreachable, !dbg !3224

6:                                                ; preds = %2
  ret ptr %3, !dbg !3225
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3226 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3228, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %0, metadata !3230, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 1, metadata !3233, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 %0, metadata !3236, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i64 1, metadata !3239, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i64 %0, metadata !3236, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i64 1, metadata !3239, metadata !DIExpression()), !dbg !3240
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3242
  call void @llvm.dbg.value(metadata ptr %2, metadata !2932, metadata !DIExpression()), !dbg !3243
  %3 = icmp eq ptr %2, null, !dbg !3245
  br i1 %3, label %4, label %5, !dbg !3246

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3247
  unreachable, !dbg !3247

5:                                                ; preds = %1
  ret ptr %2, !dbg !3248
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3231 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3230, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %1, metadata !3233, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %0, metadata !3236, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 %1, metadata !3239, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 %0, metadata !3236, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 %1, metadata !3239, metadata !DIExpression()), !dbg !3250
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3252
  call void @llvm.dbg.value(metadata ptr %3, metadata !2932, metadata !DIExpression()), !dbg !3253
  %4 = icmp eq ptr %3, null, !dbg !3255
  br i1 %4, label %5, label %6, !dbg !3256

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3257
  unreachable, !dbg !3257

6:                                                ; preds = %2
  ret ptr %3, !dbg !3258
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3259 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3263, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %1, metadata !3264, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %1, metadata !2956, metadata !DIExpression()), !dbg !3266
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3268
  call void @llvm.dbg.value(metadata ptr %3, metadata !2932, metadata !DIExpression()), !dbg !3269
  %4 = icmp eq ptr %3, null, !dbg !3271
  br i1 %4, label %5, label %6, !dbg !3272

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3273
  unreachable, !dbg !3273

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3274, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata ptr %0, metadata !3280, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %1, metadata !3281, metadata !DIExpression()), !dbg !3282
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3284
  ret ptr %3, !dbg !3285
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3286 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3290, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i64 %1, metadata !3291, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i64 %1, metadata !2970, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %1, metadata !2972, metadata !DIExpression()), !dbg !3295
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3297
  call void @llvm.dbg.value(metadata ptr %3, metadata !2932, metadata !DIExpression()), !dbg !3298
  %4 = icmp eq ptr %3, null, !dbg !3300
  br i1 %4, label %5, label %6, !dbg !3301

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3302
  unreachable, !dbg !3302

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3274, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata ptr %0, metadata !3280, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i64 %1, metadata !3281, metadata !DIExpression()), !dbg !3303
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3305
  ret ptr %3, !dbg !3306
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3307 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %1, metadata !3312, metadata !DIExpression()), !dbg !3314
  %3 = add nsw i64 %1, 1, !dbg !3315
  call void @llvm.dbg.value(metadata i64 %3, metadata !2970, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i64 %3, metadata !2972, metadata !DIExpression()), !dbg !3318
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3320
  call void @llvm.dbg.value(metadata ptr %4, metadata !2932, metadata !DIExpression()), !dbg !3321
  %5 = icmp eq ptr %4, null, !dbg !3323
  br i1 %5, label %6, label %7, !dbg !3324

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3325
  unreachable, !dbg !3325

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3313, metadata !DIExpression()), !dbg !3314
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3326
  store i8 0, ptr %8, align 1, !dbg !3327, !tbaa !817
  call void @llvm.dbg.value(metadata ptr %4, metadata !3274, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata ptr %0, metadata !3280, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %1, metadata !3281, metadata !DIExpression()), !dbg !3328
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3330
  ret ptr %4, !dbg !3331
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3332 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3334, metadata !DIExpression()), !dbg !3335
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3336
  %3 = add i64 %2, 1, !dbg !3337
  call void @llvm.dbg.value(metadata ptr %0, metadata !3263, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %3, metadata !3264, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %3, metadata !2956, metadata !DIExpression()), !dbg !3340
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3342
  call void @llvm.dbg.value(metadata ptr %4, metadata !2932, metadata !DIExpression()), !dbg !3343
  %5 = icmp eq ptr %4, null, !dbg !3345
  br i1 %5, label %6, label %7, !dbg !3346

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3347
  unreachable, !dbg !3347

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3274, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata ptr %0, metadata !3280, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i64 %3, metadata !3281, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3350
  ret ptr %4, !dbg !3351
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3352 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3357, !tbaa !808
  call void @llvm.dbg.value(metadata i32 %1, metadata !3354, metadata !DIExpression()), !dbg !3358
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.105, ptr noundef nonnull @.str.2.106, i32 noundef 5) #36, !dbg !3357
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.107, ptr noundef %2) #36, !dbg !3357
  %3 = icmp eq i32 %1, 0, !dbg !3357
  tail call void @llvm.assume(i1 %3), !dbg !3357
  tail call void @abort() #38, !dbg !3359
  unreachable, !dbg !3359
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3360 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3398, metadata !DIExpression()), !dbg !3403
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3404
  call void @llvm.dbg.value(metadata i1 poison, metadata !3399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3403
  call void @llvm.dbg.value(metadata ptr %0, metadata !3405, metadata !DIExpression()), !dbg !3408
  %3 = load i32, ptr %0, align 8, !dbg !3410, !tbaa !3411
  %4 = and i32 %3, 32, !dbg !3412
  %5 = icmp eq i32 %4, 0, !dbg !3412
  call void @llvm.dbg.value(metadata i1 %5, metadata !3401, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3403
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3413
  %7 = icmp eq i32 %6, 0, !dbg !3414
  call void @llvm.dbg.value(metadata i1 %7, metadata !3402, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3403
  br i1 %5, label %8, label %18, !dbg !3415

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3417
  call void @llvm.dbg.value(metadata i1 %9, metadata !3399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3403
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3418
  %11 = xor i1 %7, true, !dbg !3418
  %12 = sext i1 %11 to i32, !dbg !3418
  br i1 %10, label %21, label %13, !dbg !3418

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3419
  %15 = load i32, ptr %14, align 4, !dbg !3419, !tbaa !808
  %16 = icmp ne i32 %15, 9, !dbg !3420
  %17 = sext i1 %16 to i32, !dbg !3421
  br label %21, !dbg !3421

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3422

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3424
  store i32 0, ptr %20, align 4, !dbg !3426, !tbaa !808
  br label %21, !dbg !3424

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3403
  ret i32 %22, !dbg !3427
}

; Function Attrs: nounwind
declare !dbg !3428 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3432 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3470, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 0, metadata !3471, metadata !DIExpression()), !dbg !3474
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3475
  call void @llvm.dbg.value(metadata i32 %2, metadata !3472, metadata !DIExpression()), !dbg !3474
  %3 = icmp slt i32 %2, 0, !dbg !3476
  br i1 %3, label %4, label %6, !dbg !3478

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3479
  br label %24, !dbg !3480

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3481
  %8 = icmp eq i32 %7, 0, !dbg !3481
  br i1 %8, label %13, label %9, !dbg !3483

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3484
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3485
  %12 = icmp eq i64 %11, -1, !dbg !3486
  br i1 %12, label %16, label %13, !dbg !3487

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3488
  %15 = icmp eq i32 %14, 0, !dbg !3488
  br i1 %15, label %16, label %18, !dbg !3489

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3471, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 0, metadata !3473, metadata !DIExpression()), !dbg !3474
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3490
  call void @llvm.dbg.value(metadata i32 %17, metadata !3473, metadata !DIExpression()), !dbg !3474
  br label %24, !dbg !3491

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3492
  %20 = load i32, ptr %19, align 4, !dbg !3492, !tbaa !808
  call void @llvm.dbg.value(metadata i32 %20, metadata !3471, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 0, metadata !3473, metadata !DIExpression()), !dbg !3474
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3490
  call void @llvm.dbg.value(metadata i32 %21, metadata !3473, metadata !DIExpression()), !dbg !3474
  %22 = icmp eq i32 %20, 0, !dbg !3493
  br i1 %22, label %24, label %23, !dbg !3491

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3495, !tbaa !808
  call void @llvm.dbg.value(metadata i32 -1, metadata !3473, metadata !DIExpression()), !dbg !3474
  br label %24, !dbg !3497

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3474
  ret i32 %25, !dbg !3498
}

; Function Attrs: nofree nounwind
declare !dbg !3499 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3500 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3501 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3502 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3505 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3543, metadata !DIExpression()), !dbg !3544
  %2 = icmp eq ptr %0, null, !dbg !3545
  br i1 %2, label %6, label %3, !dbg !3547

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3548
  %5 = icmp eq i32 %4, 0, !dbg !3548
  br i1 %5, label %6, label %8, !dbg !3549

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3550
  br label %16, !dbg !3551

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3552, metadata !DIExpression()), !dbg !3557
  %9 = load i32, ptr %0, align 8, !dbg !3559, !tbaa !3411
  %10 = and i32 %9, 256, !dbg !3561
  %11 = icmp eq i32 %10, 0, !dbg !3561
  br i1 %11, label %14, label %12, !dbg !3562

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3563
  br label %14, !dbg !3563

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3564
  br label %16, !dbg !3565

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3544
  ret i32 %17, !dbg !3566
}

; Function Attrs: nofree nounwind
declare !dbg !3567 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3568 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3607, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i64 %1, metadata !3608, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 %2, metadata !3609, metadata !DIExpression()), !dbg !3613
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3614
  %5 = load ptr, ptr %4, align 8, !dbg !3614, !tbaa !3615
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3616
  %7 = load ptr, ptr %6, align 8, !dbg !3616, !tbaa !3617
  %8 = icmp eq ptr %5, %7, !dbg !3618
  br i1 %8, label %9, label %27, !dbg !3619

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3620
  %11 = load ptr, ptr %10, align 8, !dbg !3620, !tbaa !1182
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3621
  %13 = load ptr, ptr %12, align 8, !dbg !3621, !tbaa !3622
  %14 = icmp eq ptr %11, %13, !dbg !3623
  br i1 %14, label %15, label %27, !dbg !3624

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3625
  %17 = load ptr, ptr %16, align 8, !dbg !3625, !tbaa !3626
  %18 = icmp eq ptr %17, null, !dbg !3627
  br i1 %18, label %19, label %27, !dbg !3628

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3629
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3630
  call void @llvm.dbg.value(metadata i64 %21, metadata !3610, metadata !DIExpression()), !dbg !3631
  %22 = icmp eq i64 %21, -1, !dbg !3632
  br i1 %22, label %29, label %23, !dbg !3634

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3635, !tbaa !3411
  %25 = and i32 %24, -17, !dbg !3635
  store i32 %25, ptr %0, align 8, !dbg !3635, !tbaa !3411
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3636
  store i64 %21, ptr %26, align 8, !dbg !3637, !tbaa !3638
  br label %29, !dbg !3639

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3640
  br label %29, !dbg !3641

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3613
  ret i32 %30, !dbg !3642
}

; Function Attrs: nofree nounwind
declare !dbg !3643 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3646 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3651, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata ptr %1, metadata !3652, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64 %2, metadata !3653, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata ptr %3, metadata !3654, metadata !DIExpression()), !dbg !3656
  %5 = icmp eq ptr %1, null, !dbg !3657
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3659
  %7 = select i1 %5, ptr @.str.118, ptr %1, !dbg !3659
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3659
  call void @llvm.dbg.value(metadata i64 %8, metadata !3653, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata ptr %7, metadata !3652, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata ptr %6, metadata !3651, metadata !DIExpression()), !dbg !3656
  %9 = icmp eq ptr %3, null, !dbg !3660
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3662
  call void @llvm.dbg.value(metadata ptr %10, metadata !3654, metadata !DIExpression()), !dbg !3656
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3663
  call void @llvm.dbg.value(metadata i64 %11, metadata !3655, metadata !DIExpression()), !dbg !3656
  %12 = icmp ult i64 %11, -3, !dbg !3664
  br i1 %12, label %13, label %17, !dbg !3666

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !3667
  %15 = icmp eq i32 %14, 0, !dbg !3667
  br i1 %15, label %16, label %29, !dbg !3668

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3669, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata ptr %10, metadata !3676, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64 8, metadata !3680, metadata !DIExpression()), !dbg !3681
  store i64 0, ptr %10, align 1, !dbg !3683
  br label %29, !dbg !3684

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3685
  br i1 %18, label %19, label %20, !dbg !3687

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3688
  unreachable, !dbg !3688

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3689

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #36, !dbg !3691
  br i1 %23, label %29, label %24, !dbg !3692

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3693
  br i1 %25, label %29, label %26, !dbg !3696

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3697, !tbaa !817
  %28 = zext i8 %27 to i32, !dbg !3698
  store i32 %28, ptr %6, align 4, !dbg !3699, !tbaa !808
  br label %29, !dbg !3700

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3656
  ret i64 %30, !dbg !3701
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3702 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3708 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3710, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i64 %1, metadata !3711, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i64 %2, metadata !3712, metadata !DIExpression()), !dbg !3714
  %4 = icmp eq i64 %2, 0, !dbg !3715
  br i1 %4, label %8, label %5, !dbg !3715

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3715
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3715
  br i1 %7, label %13, label %8, !dbg !3715

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3713, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3714
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3713, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3714
  %9 = mul i64 %2, %1, !dbg !3715
  call void @llvm.dbg.value(metadata i64 %9, metadata !3713, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata ptr %0, metadata !3717, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i64 %9, metadata !3720, metadata !DIExpression()), !dbg !3721
  %10 = icmp eq i64 %9, 0, !dbg !3723
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3723
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3724
  br label %15, !dbg !3725

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3713, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3714
  %14 = tail call ptr @__errno_location() #39, !dbg !3726
  store i32 12, ptr %14, align 4, !dbg !3728, !tbaa !808
  br label %15, !dbg !3729

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3714
  ret ptr %16, !dbg !3730
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3731 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3735, metadata !DIExpression()), !dbg !3740
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !3741
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3736, metadata !DIExpression()), !dbg !3742
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !3743
  %4 = icmp eq i32 %3, 0, !dbg !3743
  br i1 %4, label %5, label %12, !dbg !3745

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3746, metadata !DIExpression()), !dbg !3750
  %6 = load i16, ptr %2, align 16, !dbg !3753
  %7 = icmp eq i16 %6, 67, !dbg !3753
  br i1 %7, label %11, label %8, !dbg !3754

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3746, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata ptr @.str.1.123, metadata !3749, metadata !DIExpression()), !dbg !3755
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.123, i64 6), !dbg !3757
  %10 = icmp eq i32 %9, 0, !dbg !3758
  br i1 %10, label %11, label %12, !dbg !3759

11:                                               ; preds = %8, %5
  br label %12, !dbg !3760

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3740
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !3761
  ret i1 %13, !dbg !3761
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3762 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3766, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata ptr %1, metadata !3767, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i64 %2, metadata !3768, metadata !DIExpression()), !dbg !3769
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !3770
  ret i32 %4, !dbg !3771
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3772 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3776, metadata !DIExpression()), !dbg !3777
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !3778
  ret ptr %2, !dbg !3779
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3780 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3782, metadata !DIExpression()), !dbg !3784
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3785
  call void @llvm.dbg.value(metadata ptr %2, metadata !3783, metadata !DIExpression()), !dbg !3784
  ret ptr %2, !dbg !3786
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3787 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3789, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata ptr %1, metadata !3790, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i64 %2, metadata !3791, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i32 %0, metadata !3782, metadata !DIExpression()), !dbg !3797
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3799
  call void @llvm.dbg.value(metadata ptr %4, metadata !3783, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata ptr %4, metadata !3792, metadata !DIExpression()), !dbg !3796
  %5 = icmp eq ptr %4, null, !dbg !3800
  br i1 %5, label %6, label %9, !dbg !3801

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3802
  br i1 %7, label %19, label %8, !dbg !3805

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3806, !tbaa !817
  br label %19, !dbg !3807

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !3808
  call void @llvm.dbg.value(metadata i64 %10, metadata !3793, metadata !DIExpression()), !dbg !3809
  %11 = icmp ult i64 %10, %2, !dbg !3810
  br i1 %11, label %12, label %14, !dbg !3812

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3813
  call void @llvm.dbg.value(metadata ptr %1, metadata !3815, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata ptr %4, metadata !3818, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 %13, metadata !3819, metadata !DIExpression()), !dbg !3820
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !3822
  br label %19, !dbg !3823

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3824
  br i1 %15, label %19, label %16, !dbg !3827

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3828
  call void @llvm.dbg.value(metadata ptr %1, metadata !3815, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata ptr %4, metadata !3818, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 %17, metadata !3819, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !3832
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3833
  store i8 0, ptr %18, align 1, !dbg !3834, !tbaa !817
  br label %19, !dbg !3835

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3836
  ret i32 %20, !dbg !3837
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.dbg.cu = !{!72, !292, !296, !311, !633, !665, !366, !386, !400, !451, !667, !625, !674, !708, !710, !712, !714, !716, !649, !718, !721, !725, !727}
!llvm.ident = !{!729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729}
!llvm.module.flags = !{!730, !731, !732, !733, !734, !735}

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
!72 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !90, globals: !98, splitDebugInlining: false, nameTableKind: None)
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
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 46, baseType: !96)
!95 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!292 = distinct !DICompileUnit(language: DW_LANG_C11, file: !289, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !293, splitDebugInlining: false, nameTableKind: None)
!293 = !{!287, !290}
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(name: "file_name", scope: !296, file: !297, line: 45, type: !70, isLocal: true, isDefinition: true)
!296 = distinct !DICompileUnit(language: DW_LANG_C11, file: !297, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !298, splitDebugInlining: false, nameTableKind: None)
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
!310 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !311, file: !312, line: 66, type: !358, isLocal: false, isDefinition: true)
!311 = distinct !DICompileUnit(language: DW_LANG_C11, file: !312, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !313, globals: !314, splitDebugInlining: false, nameTableKind: None)
!312 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!313 = !{!91, !97}
!314 = !{!315, !317, !337, !339, !341, !343, !309, !345, !347, !349, !351, !356}
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !312, line: 272, type: !101, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "old_file_name", scope: !319, file: !312, line: 304, type: !70, isLocal: true, isDefinition: true)
!319 = distinct !DISubprogram(name: "verror_at_line", scope: !312, file: !312, line: 298, type: !320, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !330)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !92, !92, !70, !76, !70, !322}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !324)
!324 = !{!325, !327, !328, !329}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !323, file: !326, baseType: !76, size: 32)
!326 = !DIFile(filename: "lib/error.c", directory: "/src")
!327 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !323, file: !326, baseType: !76, size: 32, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !323, file: !326, baseType: !91, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !323, file: !326, baseType: !91, size: 64, offset: 128)
!330 = !{!331, !332, !333, !334, !335, !336}
!331 = !DILocalVariable(name: "status", arg: 1, scope: !319, file: !312, line: 298, type: !92)
!332 = !DILocalVariable(name: "errnum", arg: 2, scope: !319, file: !312, line: 298, type: !92)
!333 = !DILocalVariable(name: "file_name", arg: 3, scope: !319, file: !312, line: 298, type: !70)
!334 = !DILocalVariable(name: "line_number", arg: 4, scope: !319, file: !312, line: 298, type: !76)
!335 = !DILocalVariable(name: "message", arg: 5, scope: !319, file: !312, line: 298, type: !70)
!336 = !DILocalVariable(name: "args", arg: 6, scope: !319, file: !312, line: 298, type: !322)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "old_line_number", scope: !319, file: !312, line: 305, type: !76, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !312, line: 338, type: !108, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !312, line: 346, type: !19, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !312, line: 346, type: !118, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "error_message_count", scope: !311, file: !312, line: 69, type: !76, isLocal: false, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !311, file: !312, line: 295, type: !92, isLocal: false, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !312, line: 208, type: !138, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !312, line: 208, type: !353, isLocal: true, isDefinition: true)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 21)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !312, line: 214, type: !101, isLocal: true, isDefinition: true)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{null}
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !363, line: 60, type: !118, isLocal: true, isDefinition: true)
!363 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(name: "long_options", scope: !366, file: !363, line: 34, type: !374, isLocal: true, isDefinition: true)
!366 = distinct !DICompileUnit(language: DW_LANG_C11, file: !363, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !367, splitDebugInlining: false, nameTableKind: None)
!367 = !{!361, !368, !370, !372, !364}
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !363, line: 112, type: !34, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !363, line: 36, type: !101, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !363, line: 37, type: !19, isLocal: true, isDefinition: true)
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
!386 = distinct !DICompileUnit(language: DW_LANG_C11, file: !387, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !388, globals: !389, splitDebugInlining: false, nameTableKind: None)
!387 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!388 = !{!239}
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
!400 = distinct !DICompileUnit(language: DW_LANG_C11, file: !397, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !401, splitDebugInlining: false, nameTableKind: None)
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
!451 = distinct !DICompileUnit(language: DW_LANG_C11, file: !427, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !452, retainedTypes: !472, globals: !473, splitDebugInlining: false, nameTableKind: None)
!452 = !{!453, !467, !74}
!453 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !454, line: 42, baseType: !76, size: 32, elements: !455)
!454 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
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
!472 = !{!92, !93, !94}
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
!625 = distinct !DICompileUnit(language: DW_LANG_C11, file: !626, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !627, splitDebugInlining: false, nameTableKind: None)
!626 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!627 = !{!623}
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 376, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 47)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(name: "exit_failure", scope: !633, file: !634, line: 24, type: !636, isLocal: false, isDefinition: true)
!633 = distinct !DICompileUnit(language: DW_LANG_C11, file: !634, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !635, splitDebugInlining: false, nameTableKind: None)
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
!649 = distinct !DICompileUnit(language: DW_LANG_C11, file: !646, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !650, globals: !651, splitDebugInlining: false, nameTableKind: None)
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
!665 = distinct !DICompileUnit(language: DW_LANG_C11, file: !666, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!666 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!667 = distinct !DICompileUnit(language: DW_LANG_C11, file: !543, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !668, retainedTypes: !672, globals: !673, splitDebugInlining: false, nameTableKind: None)
!668 = !{!669}
!669 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !543, line: 40, baseType: !76, size: 32, elements: !670)
!670 = !{!671}
!671 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!672 = !{!91}
!673 = !{!541, !544, !546, !548, !550, !552, !557, !562, !564, !569, !574, !579, !584, !586, !591, !596, !601, !606, !608, !610, !612, !614, !616, !618}
!674 = distinct !DICompileUnit(language: DW_LANG_C11, file: !675, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !676, retainedTypes: !707, splitDebugInlining: false, nameTableKind: None)
!675 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!676 = !{!677, !689}
!677 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !678, file: !675, line: 188, baseType: !76, size: 32, elements: !687)
!678 = distinct !DISubprogram(name: "x2nrealloc", scope: !675, file: !675, line: 176, type: !679, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !682)
!679 = !DISubroutineType(types: !680)
!680 = !{!91, !91, !681, !94}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!682 = !{!683, !684, !685, !686}
!683 = !DILocalVariable(name: "p", arg: 1, scope: !678, file: !675, line: 176, type: !91)
!684 = !DILocalVariable(name: "pn", arg: 2, scope: !678, file: !675, line: 176, type: !681)
!685 = !DILocalVariable(name: "s", arg: 3, scope: !678, file: !675, line: 176, type: !94)
!686 = !DILocalVariable(name: "n", scope: !678, file: !675, line: 178, type: !94)
!687 = !{!688}
!688 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!689 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !690, file: !675, line: 228, baseType: !76, size: 32, elements: !687)
!690 = distinct !DISubprogram(name: "xpalloc", scope: !675, file: !675, line: 223, type: !691, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !697)
!691 = !DISubroutineType(types: !692)
!692 = !{!91, !91, !693, !694, !696, !694}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !695, line: 130, baseType: !696)
!695 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !95, line: 35, baseType: !260)
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706}
!698 = !DILocalVariable(name: "pa", arg: 1, scope: !690, file: !675, line: 223, type: !91)
!699 = !DILocalVariable(name: "pn", arg: 2, scope: !690, file: !675, line: 223, type: !693)
!700 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !690, file: !675, line: 223, type: !694)
!701 = !DILocalVariable(name: "n_max", arg: 4, scope: !690, file: !675, line: 223, type: !696)
!702 = !DILocalVariable(name: "s", arg: 5, scope: !690, file: !675, line: 223, type: !694)
!703 = !DILocalVariable(name: "n0", scope: !690, file: !675, line: 230, type: !694)
!704 = !DILocalVariable(name: "n", scope: !690, file: !675, line: 237, type: !694)
!705 = !DILocalVariable(name: "nbytes", scope: !690, file: !675, line: 248, type: !694)
!706 = !DILocalVariable(name: "adjusted_nbytes", scope: !690, file: !675, line: 252, type: !694)
!707 = !{!239, !91, !218, !260, !96}
!708 = distinct !DICompileUnit(language: DW_LANG_C11, file: !639, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !709, splitDebugInlining: false, nameTableKind: None)
!709 = !{!637, !640, !642}
!710 = distinct !DICompileUnit(language: DW_LANG_C11, file: !711, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!711 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!712 = distinct !DICompileUnit(language: DW_LANG_C11, file: !713, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!713 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!714 = distinct !DICompileUnit(language: DW_LANG_C11, file: !715, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !672, splitDebugInlining: false, nameTableKind: None)
!715 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!716 = distinct !DICompileUnit(language: DW_LANG_C11, file: !717, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !672, splitDebugInlining: false, nameTableKind: None)
!717 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!718 = distinct !DICompileUnit(language: DW_LANG_C11, file: !719, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !720, splitDebugInlining: false, nameTableKind: None)
!719 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!720 = !{!218, !96, !91}
!721 = distinct !DICompileUnit(language: DW_LANG_C11, file: !664, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !722, splitDebugInlining: false, nameTableKind: None)
!722 = !{!723, !662}
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !664, line: 35, type: !118, isLocal: true, isDefinition: true)
!725 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!726 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !728, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !672, splitDebugInlining: false, nameTableKind: None)
!728 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!729 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!730 = !{i32 7, !"Dwarf Version", i32 5}
!731 = !{i32 2, !"Debug Info Version", i32 3}
!732 = !{i32 1, !"wchar_size", i32 4}
!733 = !{i32 8, !"PIC Level", i32 2}
!734 = !{i32 7, !"PIE Level", i32 2}
!735 = !{i32 7, !"uwtable", i32 2}
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
!775 = !DILocation(line: 857, column: 3, scope: !757, inlinedAt: !774)
!776 = !DILocation(line: 861, column: 29, scope: !757, inlinedAt: !774)
!777 = !DILocation(line: 862, column: 7, scope: !778, inlinedAt: !774)
!778 = distinct !DILexicalBlock(scope: !757, file: !67, line: 862, column: 7)
!779 = !DILocation(line: 862, column: 19, scope: !778, inlinedAt: !774)
!780 = !DILocation(line: 862, column: 22, scope: !778, inlinedAt: !774)
!781 = !DILocation(line: 862, column: 7, scope: !757, inlinedAt: !774)
!782 = !DILocation(line: 868, column: 7, scope: !783, inlinedAt: !774)
!783 = distinct !DILexicalBlock(scope: !778, file: !67, line: 863, column: 5)
!784 = !DILocation(line: 870, column: 5, scope: !783, inlinedAt: !774)
!785 = !DILocation(line: 875, column: 3, scope: !757, inlinedAt: !774)
!786 = !DILocation(line: 877, column: 3, scope: !757, inlinedAt: !774)
!787 = !DILocation(line: 46, column: 3, scope: !736)
!788 = !DISubprogram(name: "dcgettext", scope: !789, file: !789, line: 51, type: !790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!789 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!790 = !DISubroutineType(types: !791)
!791 = !{!239, !70, !70, !92}
!792 = !{}
!793 = !DISubprogram(name: "__fprintf_chk", scope: !794, file: !794, line: 93, type: !795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!794 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!795 = !DISubroutineType(types: !796)
!796 = !{!92, !797, !92, !798, null}
!797 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !231)
!798 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!799 = !DISubprogram(name: "__printf_chk", scope: !794, file: !794, line: 95, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!800 = !DISubroutineType(types: !801)
!801 = !{!92, !92, !798, null}
!802 = !DISubprogram(name: "fputs_unlocked", scope: !803, file: !803, line: 691, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
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
!859 = !DILocation(line: 618, column: 5, scope: !222)
!860 = !DILocation(line: 620, column: 23, scope: !66)
!861 = !DILocation(line: 625, column: 39, scope: !66)
!862 = !DILocation(line: 626, column: 3, scope: !66)
!863 = !DILocation(line: 626, column: 10, scope: !66)
!864 = !DILocation(line: 626, column: 21, scope: !66)
!865 = !DILocation(line: 628, column: 44, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !67, line: 628, column: 11)
!867 = distinct !DILexicalBlock(scope: !66, file: !67, line: 627, column: 5)
!868 = !DILocation(line: 628, column: 32, scope: !866)
!869 = !DILocation(line: 628, column: 49, scope: !866)
!870 = !DILocation(line: 628, column: 11, scope: !867)
!871 = !DILocation(line: 630, column: 11, scope: !872)
!872 = distinct !DILexicalBlock(scope: !867, file: !67, line: 630, column: 11)
!873 = !DILocation(line: 630, column: 11, scope: !867)
!874 = !DILocation(line: 632, column: 26, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !67, line: 632, column: 15)
!876 = distinct !DILexicalBlock(scope: !872, file: !67, line: 631, column: 9)
!877 = !DILocation(line: 632, column: 34, scope: !875)
!878 = !DILocation(line: 632, column: 37, scope: !875)
!879 = !DILocation(line: 632, column: 15, scope: !876)
!880 = !DILocation(line: 636, column: 16, scope: !881)
!881 = distinct !DILexicalBlock(scope: !876, file: !67, line: 636, column: 15)
!882 = !DILocation(line: 636, column: 29, scope: !881)
!883 = !DILocation(line: 640, column: 16, scope: !867)
!884 = distinct !{!884, !862, !885, !855}
!885 = !DILocation(line: 641, column: 5, scope: !66)
!886 = !DILocation(line: 644, column: 3, scope: !66)
!887 = !DILocation(line: 0, scope: !820, inlinedAt: !888)
!888 = distinct !DILocation(line: 648, column: 31, scope: !66)
!889 = !DILocation(line: 0, scope: !820, inlinedAt: !890)
!890 = distinct !DILocation(line: 649, column: 31, scope: !66)
!891 = !DILocation(line: 0, scope: !820, inlinedAt: !892)
!892 = distinct !DILocation(line: 650, column: 31, scope: !66)
!893 = !DILocation(line: 0, scope: !820, inlinedAt: !894)
!894 = distinct !DILocation(line: 651, column: 31, scope: !66)
!895 = !DILocation(line: 0, scope: !820, inlinedAt: !896)
!896 = distinct !DILocation(line: 652, column: 31, scope: !66)
!897 = !DILocation(line: 0, scope: !820, inlinedAt: !898)
!898 = distinct !DILocation(line: 653, column: 31, scope: !66)
!899 = !DILocation(line: 0, scope: !820, inlinedAt: !900)
!900 = distinct !DILocation(line: 654, column: 31, scope: !66)
!901 = !DILocation(line: 0, scope: !820, inlinedAt: !902)
!902 = distinct !DILocation(line: 655, column: 31, scope: !66)
!903 = !DILocation(line: 0, scope: !820, inlinedAt: !904)
!904 = distinct !DILocation(line: 656, column: 31, scope: !66)
!905 = !DILocation(line: 0, scope: !820, inlinedAt: !906)
!906 = distinct !DILocation(line: 657, column: 31, scope: !66)
!907 = !DILocation(line: 663, column: 7, scope: !908)
!908 = distinct !DILexicalBlock(scope: !66, file: !67, line: 663, column: 7)
!909 = !DILocation(line: 664, column: 7, scope: !908)
!910 = !DILocation(line: 664, column: 10, scope: !908)
!911 = !DILocation(line: 663, column: 7, scope: !66)
!912 = !DILocation(line: 669, column: 7, scope: !913)
!913 = distinct !DILexicalBlock(scope: !908, file: !67, line: 665, column: 5)
!914 = !DILocation(line: 671, column: 5, scope: !913)
!915 = !DILocation(line: 676, column: 7, scope: !916)
!916 = distinct !DILexicalBlock(scope: !908, file: !67, line: 673, column: 5)
!917 = !DILocation(line: 679, column: 3, scope: !66)
!918 = !DILocation(line: 683, column: 3, scope: !66)
!919 = !DILocation(line: 686, column: 3, scope: !66)
!920 = !DILocation(line: 688, column: 3, scope: !66)
!921 = !DILocation(line: 691, column: 3, scope: !66)
!922 = !DILocation(line: 695, column: 3, scope: !66)
!923 = !DILocation(line: 696, column: 1, scope: !66)
!924 = !DISubprogram(name: "setlocale", scope: !925, file: !925, line: 122, type: !926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!925 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!926 = !DISubroutineType(types: !927)
!927 = !{!239, !92, !70}
!928 = !DISubprogram(name: "strncmp", scope: !929, file: !929, line: 159, type: !930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!929 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!930 = !DISubroutineType(types: !931)
!931 = !{!92, !70, !70, !94}
!932 = !DISubprogram(name: "exit", scope: !933, file: !933, line: 624, type: !737, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !792)
!933 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!934 = !DISubprogram(name: "getenv", scope: !933, file: !933, line: 641, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!935 = !DISubroutineType(types: !936)
!936 = !{!239, !70}
!937 = !DISubprogram(name: "strcmp", scope: !929, file: !929, line: 156, type: !938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!938 = !DISubroutineType(types: !939)
!939 = !{!92, !70, !70}
!940 = !DISubprogram(name: "strspn", scope: !929, file: !929, line: 297, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!941 = !DISubroutineType(types: !942)
!942 = !{!96, !70, !70}
!943 = !DISubprogram(name: "strchr", scope: !929, file: !929, line: 246, type: !944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!944 = !DISubroutineType(types: !945)
!945 = !{!239, !70, !92}
!946 = !DISubprogram(name: "__ctype_b_loc", scope: !75, file: !75, line: 79, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!947 = !DISubroutineType(types: !948)
!948 = !{!949}
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!952 = !DISubprogram(name: "strcspn", scope: !929, file: !929, line: 293, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!953 = !DISubprogram(name: "fwrite_unlocked", scope: !803, file: !803, line: 704, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!954 = !DISubroutineType(types: !955)
!955 = !{!94, !956, !94, !94, !797}
!956 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !957)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!959 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 50, type: !960, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !963)
!960 = !DISubroutineType(types: !961)
!961 = !{!92, !92, !962}
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!963 = !{!964, !965, !966}
!964 = !DILocalVariable(name: "argc", arg: 1, scope: !959, file: !2, line: 50, type: !92)
!965 = !DILocalVariable(name: "argv", arg: 2, scope: !959, file: !2, line: 50, type: !962)
!966 = !DILocalVariable(name: "cp", scope: !959, file: !2, line: 72, type: !70)
!967 = !DILocation(line: 0, scope: !959)
!968 = !DILocation(line: 53, column: 21, scope: !959)
!969 = !DILocation(line: 53, column: 3, scope: !959)
!970 = !DILocation(line: 54, column: 3, scope: !959)
!971 = !DILocation(line: 55, column: 3, scope: !959)
!972 = !DILocation(line: 56, column: 3, scope: !959)
!973 = !DILocation(line: 58, column: 3, scope: !959)
!974 = !DILocation(line: 61, column: 36, scope: !959)
!975 = !DILocation(line: 61, column: 58, scope: !959)
!976 = !DILocation(line: 60, column: 3, scope: !959)
!977 = !DILocation(line: 64, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !959, file: !2, line: 64, column: 7)
!979 = !DILocation(line: 64, column: 14, scope: !978)
!980 = !DILocation(line: 64, column: 7, scope: !959)
!981 = !DILocation(line: 66, column: 7, scope: !982)
!982 = distinct !DILexicalBlock(scope: !978, file: !2, line: 65, column: 5)
!983 = !DILocation(line: 67, column: 7, scope: !982)
!984 = !DILocation(line: 72, column: 20, scope: !959)
!985 = !DILocation(line: 73, column: 9, scope: !986)
!986 = distinct !DILexicalBlock(scope: !959, file: !2, line: 73, column: 7)
!987 = !DILocation(line: 73, column: 7, scope: !959)
!988 = !DILocation(line: 74, column: 5, scope: !986)
!989 = !DILocation(line: 76, column: 3, scope: !959)
!990 = !DILocation(line: 77, column: 3, scope: !959)
!991 = !DISubprogram(name: "bindtextdomain", scope: !789, file: !789, line: 86, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!992 = !DISubroutineType(types: !993)
!993 = !{!239, !70, !70}
!994 = !DISubprogram(name: "textdomain", scope: !789, file: !789, line: 82, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!995 = !DISubprogram(name: "atexit", scope: !933, file: !933, line: 602, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!996 = !DISubroutineType(types: !997)
!997 = !{!92, !358}
!998 = !DISubprogram(name: "getlogin", scope: !999, file: !999, line: 881, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!999 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1000 = !DISubroutineType(types: !388)
!1001 = !DISubprogram(name: "puts", scope: !803, file: !803, line: 661, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
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
!1020 = distinct !DISubprogram(name: "close_stdout", scope: !297, file: !297, line: 116, type: !359, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1021)
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
!1053 = !DISubprogram(name: "__errno_location", scope: !1054, file: !1054, line: 37, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!1054 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!382}
!1057 = !DISubprogram(name: "_exit", scope: !999, file: !999, line: 624, type: !737, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !792)
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
!1076 = distinct !DISubprogram(name: "flush_stdout", scope: !312, file: !312, line: 163, type: !359, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1077)
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
!1099 = !DILocation(line: 0, scope: !1093)
!1100 = !DILocation(line: 229, column: 13, scope: !1093)
!1101 = !DILocalVariable(name: "__stream", arg: 1, scope: !1102, file: !794, line: 132, type: !1105)
!1102 = distinct !DISubprogram(name: "vfprintf", scope: !794, file: !794, line: 132, type: !1103, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1140)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!92, !1105, !798, !322}
!1105 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1106)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !1109)
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1108, file: !235, line: 51, baseType: !92, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1108, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1108, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1108, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1108, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1108, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1108, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1108, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1108, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1108, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1108, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1108, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1108, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1108, file: !235, line: 70, baseType: !1124, size: 64, offset: 832)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1108, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1108, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1108, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1108, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1108, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1108, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1108, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1108, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1108, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1108, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1108, file: !235, line: 93, baseType: !1124, size: 64, offset: 1344)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1108, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1108, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1108, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1108, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!1140 = !{!1101, !1141, !1142}
!1141 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1102, file: !794, line: 133, type: !798)
!1142 = !DILocalVariable(name: "__ap", arg: 3, scope: !1102, file: !794, line: 133, type: !322)
!1143 = !DILocation(line: 0, scope: !1102, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 229, column: 3, scope: !1093)
!1145 = !DILocation(line: 135, column: 10, scope: !1102, inlinedAt: !1144)
!1146 = !DILocation(line: 232, column: 3, scope: !1093)
!1147 = !DILocation(line: 233, column: 7, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1093, file: !312, line: 233, column: 7)
!1149 = !DILocation(line: 233, column: 7, scope: !1093)
!1150 = !DILocalVariable(name: "errnum", arg: 1, scope: !1151, file: !312, line: 188, type: !92)
!1151 = distinct !DISubprogram(name: "print_errno_message", scope: !312, file: !312, line: 188, type: !737, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1152)
!1152 = !{!1150, !1153, !1154}
!1153 = !DILocalVariable(name: "s", scope: !1151, file: !312, line: 190, type: !70)
!1154 = !DILocalVariable(name: "errbuf", scope: !1151, file: !312, line: 193, type: !1155)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1156)
!1156 = !{!1157}
!1157 = !DISubrange(count: 1024)
!1158 = !DILocation(line: 0, scope: !1151, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 234, column: 5, scope: !1148)
!1160 = !DILocation(line: 193, column: 3, scope: !1151, inlinedAt: !1159)
!1161 = !DILocation(line: 193, column: 8, scope: !1151, inlinedAt: !1159)
!1162 = !DILocation(line: 195, column: 7, scope: !1151, inlinedAt: !1159)
!1163 = !DILocation(line: 207, column: 9, scope: !1164, inlinedAt: !1159)
!1164 = distinct !DILexicalBlock(scope: !1151, file: !312, line: 207, column: 7)
!1165 = !DILocation(line: 207, column: 7, scope: !1151, inlinedAt: !1159)
!1166 = !DILocation(line: 208, column: 9, scope: !1164, inlinedAt: !1159)
!1167 = !DILocation(line: 208, column: 5, scope: !1164, inlinedAt: !1159)
!1168 = !DILocation(line: 214, column: 3, scope: !1151, inlinedAt: !1159)
!1169 = !DILocation(line: 216, column: 1, scope: !1151, inlinedAt: !1159)
!1170 = !DILocation(line: 234, column: 5, scope: !1148)
!1171 = !DILocation(line: 238, column: 3, scope: !1093)
!1172 = !DILocalVariable(name: "__c", arg: 1, scope: !1173, file: !1174, line: 101, type: !92)
!1173 = distinct !DISubprogram(name: "putc_unlocked", scope: !1174, file: !1174, line: 101, type: !1175, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1177)
!1174 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!92, !92, !1106}
!1177 = !{!1172, !1178}
!1178 = !DILocalVariable(name: "__stream", arg: 2, scope: !1173, file: !1174, line: 101, type: !1106)
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
!1193 = !DISubprogram(name: "__vfprintf_chk", scope: !794, file: !794, line: 96, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!92, !1105, !92, !798, !322}
!1196 = !DISubprogram(name: "strerror_r", scope: !929, file: !929, line: 444, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!239, !92, !239, !94}
!1199 = !DISubprogram(name: "__overflow", scope: !803, file: !803, line: 886, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!92, !1106, !92}
!1202 = !DISubprogram(name: "fflush_unlocked", scope: !803, file: !803, line: 239, type: !1203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!92, !1106}
!1205 = !DISubprogram(name: "fcntl", scope: !1206, file: !1206, line: 149, type: !1207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
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
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1219, line: 14, baseType: !1220)
!1219 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !326, baseType: !1221)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 192, elements: !35)
!1222 = !DILocation(line: 0, scope: !1209)
!1223 = !DILocation(line: 287, column: 3, scope: !1209)
!1224 = !DILocation(line: 287, column: 11, scope: !1209)
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
!1269 = !DILocation(line: 0, scope: !1259)
!1270 = !DILocation(line: 362, column: 3, scope: !1259)
!1271 = !DILocation(line: 362, column: 11, scope: !1259)
!1272 = !DILocation(line: 363, column: 3, scope: !1259)
!1273 = !DILocation(line: 364, column: 3, scope: !1259)
!1274 = !DILocation(line: 366, column: 3, scope: !1259)
!1275 = !DILocation(line: 367, column: 1, scope: !1259)
!1276 = distinct !DISubprogram(name: "getprogname", scope: !666, file: !666, line: 54, type: !1277, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !792)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!70}
!1279 = !DILocation(line: 58, column: 10, scope: !1276)
!1280 = !DILocation(line: 58, column: 3, scope: !1276)
!1281 = distinct !DISubprogram(name: "parse_long_options", scope: !363, file: !363, line: 45, type: !1282, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !366, retainedNodes: !1285)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !92, !962, !70, !70, !70, !1284, null}
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1296}
!1286 = !DILocalVariable(name: "argc", arg: 1, scope: !1281, file: !363, line: 45, type: !92)
!1287 = !DILocalVariable(name: "argv", arg: 2, scope: !1281, file: !363, line: 46, type: !962)
!1288 = !DILocalVariable(name: "command_name", arg: 3, scope: !1281, file: !363, line: 47, type: !70)
!1289 = !DILocalVariable(name: "package", arg: 4, scope: !1281, file: !363, line: 48, type: !70)
!1290 = !DILocalVariable(name: "version", arg: 5, scope: !1281, file: !363, line: 49, type: !70)
!1291 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1281, file: !363, line: 50, type: !1284)
!1292 = !DILocalVariable(name: "saved_opterr", scope: !1281, file: !363, line: 53, type: !92)
!1293 = !DILocalVariable(name: "c", scope: !1294, file: !363, line: 60, type: !92)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !363, line: 59, column: 5)
!1295 = distinct !DILexicalBlock(scope: !1281, file: !363, line: 58, column: 7)
!1296 = !DILocalVariable(name: "authors", scope: !1297, file: !363, line: 71, type: !1301)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !363, line: 70, column: 15)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !363, line: 64, column: 13)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !363, line: 62, column: 9)
!1300 = distinct !DILexicalBlock(scope: !1294, file: !363, line: 61, column: 11)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !803, line: 52, baseType: !1302)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1219, line: 14, baseType: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1304, baseType: !1305)
!1304 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1306, size: 192, elements: !35)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1307)
!1307 = !{!1308, !1309, !1310, !1311}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1306, file: !1304, line: 71, baseType: !76, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1306, file: !1304, line: 71, baseType: !76, size: 32, offset: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1306, file: !1304, line: 71, baseType: !91, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1306, file: !1304, line: 71, baseType: !91, size: 64, offset: 128)
!1312 = !DILocation(line: 0, scope: !1281)
!1313 = !DILocation(line: 53, column: 22, scope: !1281)
!1314 = !DILocation(line: 56, column: 10, scope: !1281)
!1315 = !DILocation(line: 58, column: 12, scope: !1295)
!1316 = !DILocation(line: 58, column: 7, scope: !1281)
!1317 = !DILocation(line: 60, column: 15, scope: !1294)
!1318 = !DILocation(line: 0, scope: !1294)
!1319 = !DILocation(line: 61, column: 11, scope: !1294)
!1320 = !DILocation(line: 66, column: 15, scope: !1298)
!1321 = !DILocation(line: 67, column: 15, scope: !1298)
!1322 = !DILocation(line: 71, column: 17, scope: !1297)
!1323 = !DILocation(line: 71, column: 25, scope: !1297)
!1324 = !DILocation(line: 72, column: 17, scope: !1297)
!1325 = !DILocation(line: 73, column: 33, scope: !1297)
!1326 = !DILocation(line: 73, column: 17, scope: !1297)
!1327 = !DILocation(line: 74, column: 17, scope: !1297)
!1328 = !DILocation(line: 85, column: 10, scope: !1281)
!1329 = !DILocation(line: 89, column: 10, scope: !1281)
!1330 = !DILocation(line: 90, column: 1, scope: !1281)
!1331 = !DISubprogram(name: "getopt_long", scope: !377, file: !377, line: 66, type: !1332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!92, !92, !1334, !70, !1336, !382}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!1337 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !363, file: !363, line: 98, type: !1338, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !366, retainedNodes: !1340)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{null, !92, !962, !70, !70, !70, !218, !1284, null}
!1340 = !{!1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351}
!1341 = !DILocalVariable(name: "argc", arg: 1, scope: !1337, file: !363, line: 98, type: !92)
!1342 = !DILocalVariable(name: "argv", arg: 2, scope: !1337, file: !363, line: 99, type: !962)
!1343 = !DILocalVariable(name: "command_name", arg: 3, scope: !1337, file: !363, line: 100, type: !70)
!1344 = !DILocalVariable(name: "package", arg: 4, scope: !1337, file: !363, line: 101, type: !70)
!1345 = !DILocalVariable(name: "version", arg: 5, scope: !1337, file: !363, line: 102, type: !70)
!1346 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1337, file: !363, line: 103, type: !218)
!1347 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1337, file: !363, line: 104, type: !1284)
!1348 = !DILocalVariable(name: "saved_opterr", scope: !1337, file: !363, line: 107, type: !92)
!1349 = !DILocalVariable(name: "optstring", scope: !1337, file: !363, line: 112, type: !70)
!1350 = !DILocalVariable(name: "c", scope: !1337, file: !363, line: 114, type: !92)
!1351 = !DILocalVariable(name: "authors", scope: !1352, file: !363, line: 125, type: !1301)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !363, line: 124, column: 11)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !363, line: 118, column: 9)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !363, line: 116, column: 5)
!1355 = distinct !DILexicalBlock(scope: !1337, file: !363, line: 115, column: 7)
!1356 = !DILocation(line: 0, scope: !1337)
!1357 = !DILocation(line: 107, column: 22, scope: !1337)
!1358 = !DILocation(line: 110, column: 10, scope: !1337)
!1359 = !DILocation(line: 112, column: 27, scope: !1337)
!1360 = !DILocation(line: 114, column: 11, scope: !1337)
!1361 = !DILocation(line: 115, column: 7, scope: !1337)
!1362 = !DILocation(line: 125, column: 13, scope: !1352)
!1363 = !DILocation(line: 125, column: 21, scope: !1352)
!1364 = !DILocation(line: 126, column: 13, scope: !1352)
!1365 = !DILocation(line: 127, column: 29, scope: !1352)
!1366 = !DILocation(line: 127, column: 13, scope: !1352)
!1367 = !DILocation(line: 128, column: 13, scope: !1352)
!1368 = !DILocation(line: 132, column: 26, scope: !1353)
!1369 = !DILocation(line: 133, column: 11, scope: !1353)
!1370 = !DILocation(line: 0, scope: !1353)
!1371 = !DILocation(line: 138, column: 10, scope: !1337)
!1372 = !DILocation(line: 139, column: 1, scope: !1337)
!1373 = distinct !DISubprogram(name: "set_program_name", scope: !387, file: !387, line: 37, type: !758, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !1374)
!1374 = !{!1375, !1376, !1377}
!1375 = !DILocalVariable(name: "argv0", arg: 1, scope: !1373, file: !387, line: 37, type: !70)
!1376 = !DILocalVariable(name: "slash", scope: !1373, file: !387, line: 44, type: !70)
!1377 = !DILocalVariable(name: "base", scope: !1373, file: !387, line: 45, type: !70)
!1378 = !DILocation(line: 0, scope: !1373)
!1379 = !DILocation(line: 44, column: 23, scope: !1373)
!1380 = !DILocation(line: 45, column: 22, scope: !1373)
!1381 = !DILocation(line: 46, column: 17, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1373, file: !387, line: 46, column: 7)
!1383 = !DILocation(line: 46, column: 9, scope: !1382)
!1384 = !DILocation(line: 46, column: 25, scope: !1382)
!1385 = !DILocation(line: 46, column: 40, scope: !1382)
!1386 = !DILocalVariable(name: "__s1", arg: 1, scope: !1387, file: !821, line: 974, type: !957)
!1387 = distinct !DISubprogram(name: "memeq", scope: !821, file: !821, line: 974, type: !1388, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !1390)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!218, !957, !957, !94}
!1390 = !{!1386, !1391, !1392}
!1391 = !DILocalVariable(name: "__s2", arg: 2, scope: !1387, file: !821, line: 974, type: !957)
!1392 = !DILocalVariable(name: "__n", arg: 3, scope: !1387, file: !821, line: 974, type: !94)
!1393 = !DILocation(line: 0, scope: !1387, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 46, column: 28, scope: !1382)
!1395 = !DILocation(line: 976, column: 11, scope: !1387, inlinedAt: !1394)
!1396 = !DILocation(line: 976, column: 10, scope: !1387, inlinedAt: !1394)
!1397 = !DILocation(line: 46, column: 7, scope: !1373)
!1398 = !DILocation(line: 49, column: 11, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !387, line: 49, column: 11)
!1400 = distinct !DILexicalBlock(scope: !1382, file: !387, line: 47, column: 5)
!1401 = !DILocation(line: 49, column: 36, scope: !1399)
!1402 = !DILocation(line: 49, column: 11, scope: !1400)
!1403 = !DILocation(line: 65, column: 16, scope: !1373)
!1404 = !DILocation(line: 71, column: 27, scope: !1373)
!1405 = !DILocation(line: 74, column: 33, scope: !1373)
!1406 = !DILocation(line: 76, column: 1, scope: !1373)
!1407 = !DISubprogram(name: "strrchr", scope: !929, file: !929, line: 273, type: !944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!1408 = !DILocation(line: 0, scope: !396)
!1409 = !DILocation(line: 40, column: 29, scope: !396)
!1410 = !DILocation(line: 41, column: 19, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !396, file: !397, line: 41, column: 7)
!1412 = !DILocation(line: 41, column: 7, scope: !396)
!1413 = !DILocation(line: 47, column: 3, scope: !396)
!1414 = !DILocation(line: 48, column: 3, scope: !396)
!1415 = !DILocation(line: 48, column: 13, scope: !396)
!1416 = !DILocalVariable(name: "ps", arg: 1, scope: !1417, file: !1418, line: 1135, type: !1421)
!1417 = distinct !DISubprogram(name: "mbszero", scope: !1418, file: !1418, line: 1135, type: !1419, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !1422)
!1418 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !1421}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!1422 = !{!1416}
!1423 = !DILocation(line: 0, scope: !1417, inlinedAt: !1424)
!1424 = distinct !DILocation(line: 48, column: 18, scope: !396)
!1425 = !DILocalVariable(name: "__dest", arg: 1, scope: !1426, file: !1427, line: 57, type: !91)
!1426 = distinct !DISubprogram(name: "memset", scope: !1427, file: !1427, line: 57, type: !1428, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !1430)
!1427 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!91, !91, !92, !94}
!1430 = !{!1425, !1431, !1432}
!1431 = !DILocalVariable(name: "__ch", arg: 2, scope: !1426, file: !1427, line: 57, type: !92)
!1432 = !DILocalVariable(name: "__len", arg: 3, scope: !1426, file: !1427, line: 57, type: !94)
!1433 = !DILocation(line: 0, scope: !1426, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 1137, column: 3, scope: !1417, inlinedAt: !1424)
!1435 = !DILocation(line: 59, column: 10, scope: !1426, inlinedAt: !1434)
!1436 = !DILocation(line: 49, column: 7, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !396, file: !397, line: 49, column: 7)
!1438 = !DILocation(line: 49, column: 39, scope: !1437)
!1439 = !DILocation(line: 49, column: 44, scope: !1437)
!1440 = !DILocation(line: 54, column: 1, scope: !396)
!1441 = !DISubprogram(name: "mbrtoc32", scope: !408, file: !408, line: 57, type: !1442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!94, !1444, !798, !94, !1446}
!1444 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1445)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1421)
!1447 = distinct !DISubprogram(name: "clone_quoting_options", scope: !427, file: !427, line: 113, type: !1448, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1451)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!1450, !1450}
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!1451 = !{!1452, !1453, !1454}
!1452 = !DILocalVariable(name: "o", arg: 1, scope: !1447, file: !427, line: 113, type: !1450)
!1453 = !DILocalVariable(name: "saved_errno", scope: !1447, file: !427, line: 115, type: !92)
!1454 = !DILocalVariable(name: "p", scope: !1447, file: !427, line: 116, type: !1450)
!1455 = !DILocation(line: 0, scope: !1447)
!1456 = !DILocation(line: 115, column: 21, scope: !1447)
!1457 = !DILocation(line: 116, column: 40, scope: !1447)
!1458 = !DILocation(line: 116, column: 31, scope: !1447)
!1459 = !DILocation(line: 118, column: 9, scope: !1447)
!1460 = !DILocation(line: 119, column: 3, scope: !1447)
!1461 = distinct !DISubprogram(name: "get_quoting_style", scope: !427, file: !427, line: 124, type: !1462, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1466)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!453, !1464}
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!1466 = !{!1467}
!1467 = !DILocalVariable(name: "o", arg: 1, scope: !1461, file: !427, line: 124, type: !1464)
!1468 = !DILocation(line: 0, scope: !1461)
!1469 = !DILocation(line: 126, column: 11, scope: !1461)
!1470 = !DILocation(line: 126, column: 46, scope: !1461)
!1471 = !{!1472, !749, i64 0}
!1472 = !{!"quoting_options", !749, i64 0, !809, i64 4, !749, i64 8, !748, i64 40, !748, i64 48}
!1473 = !DILocation(line: 126, column: 3, scope: !1461)
!1474 = distinct !DISubprogram(name: "set_quoting_style", scope: !427, file: !427, line: 132, type: !1475, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1477)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{null, !1450, !453}
!1477 = !{!1478, !1479}
!1478 = !DILocalVariable(name: "o", arg: 1, scope: !1474, file: !427, line: 132, type: !1450)
!1479 = !DILocalVariable(name: "s", arg: 2, scope: !1474, file: !427, line: 132, type: !453)
!1480 = !DILocation(line: 0, scope: !1474)
!1481 = !DILocation(line: 134, column: 4, scope: !1474)
!1482 = !DILocation(line: 134, column: 45, scope: !1474)
!1483 = !DILocation(line: 135, column: 1, scope: !1474)
!1484 = distinct !DISubprogram(name: "set_char_quoting", scope: !427, file: !427, line: 143, type: !1485, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1487)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!92, !1450, !4, !92}
!1487 = !{!1488, !1489, !1490, !1491, !1492, !1494, !1495}
!1488 = !DILocalVariable(name: "o", arg: 1, scope: !1484, file: !427, line: 143, type: !1450)
!1489 = !DILocalVariable(name: "c", arg: 2, scope: !1484, file: !427, line: 143, type: !4)
!1490 = !DILocalVariable(name: "i", arg: 3, scope: !1484, file: !427, line: 143, type: !92)
!1491 = !DILocalVariable(name: "uc", scope: !1484, file: !427, line: 145, type: !97)
!1492 = !DILocalVariable(name: "p", scope: !1484, file: !427, line: 146, type: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1494 = !DILocalVariable(name: "shift", scope: !1484, file: !427, line: 148, type: !92)
!1495 = !DILocalVariable(name: "r", scope: !1484, file: !427, line: 149, type: !76)
!1496 = !DILocation(line: 0, scope: !1484)
!1497 = !DILocation(line: 147, column: 6, scope: !1484)
!1498 = !DILocation(line: 147, column: 41, scope: !1484)
!1499 = !DILocation(line: 147, column: 62, scope: !1484)
!1500 = !DILocation(line: 147, column: 57, scope: !1484)
!1501 = !DILocation(line: 148, column: 15, scope: !1484)
!1502 = !DILocation(line: 149, column: 21, scope: !1484)
!1503 = !DILocation(line: 149, column: 24, scope: !1484)
!1504 = !DILocation(line: 149, column: 34, scope: !1484)
!1505 = !DILocation(line: 150, column: 19, scope: !1484)
!1506 = !DILocation(line: 150, column: 24, scope: !1484)
!1507 = !DILocation(line: 150, column: 6, scope: !1484)
!1508 = !DILocation(line: 151, column: 3, scope: !1484)
!1509 = distinct !DISubprogram(name: "set_quoting_flags", scope: !427, file: !427, line: 159, type: !1510, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1512)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!92, !1450, !92}
!1512 = !{!1513, !1514, !1515}
!1513 = !DILocalVariable(name: "o", arg: 1, scope: !1509, file: !427, line: 159, type: !1450)
!1514 = !DILocalVariable(name: "i", arg: 2, scope: !1509, file: !427, line: 159, type: !92)
!1515 = !DILocalVariable(name: "r", scope: !1509, file: !427, line: 163, type: !92)
!1516 = !DILocation(line: 0, scope: !1509)
!1517 = !DILocation(line: 161, column: 8, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1509, file: !427, line: 161, column: 7)
!1519 = !DILocation(line: 161, column: 7, scope: !1509)
!1520 = !DILocation(line: 163, column: 14, scope: !1509)
!1521 = !{!1472, !809, i64 4}
!1522 = !DILocation(line: 164, column: 12, scope: !1509)
!1523 = !DILocation(line: 165, column: 3, scope: !1509)
!1524 = distinct !DISubprogram(name: "set_custom_quoting", scope: !427, file: !427, line: 169, type: !1525, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1527)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{null, !1450, !70, !70}
!1527 = !{!1528, !1529, !1530}
!1528 = !DILocalVariable(name: "o", arg: 1, scope: !1524, file: !427, line: 169, type: !1450)
!1529 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1524, file: !427, line: 170, type: !70)
!1530 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1524, file: !427, line: 170, type: !70)
!1531 = !DILocation(line: 0, scope: !1524)
!1532 = !DILocation(line: 172, column: 8, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1524, file: !427, line: 172, column: 7)
!1534 = !DILocation(line: 172, column: 7, scope: !1524)
!1535 = !DILocation(line: 174, column: 12, scope: !1524)
!1536 = !DILocation(line: 175, column: 8, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1524, file: !427, line: 175, column: 7)
!1538 = !DILocation(line: 175, column: 19, scope: !1537)
!1539 = !DILocation(line: 176, column: 5, scope: !1537)
!1540 = !DILocation(line: 177, column: 6, scope: !1524)
!1541 = !DILocation(line: 177, column: 17, scope: !1524)
!1542 = !{!1472, !748, i64 40}
!1543 = !DILocation(line: 178, column: 6, scope: !1524)
!1544 = !DILocation(line: 178, column: 18, scope: !1524)
!1545 = !{!1472, !748, i64 48}
!1546 = !DILocation(line: 179, column: 1, scope: !1524)
!1547 = !DISubprogram(name: "abort", scope: !933, file: !933, line: 598, type: !359, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !792)
!1548 = distinct !DISubprogram(name: "quotearg_buffer", scope: !427, file: !427, line: 774, type: !1549, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1551)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!94, !239, !94, !70, !94, !1464}
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559}
!1552 = !DILocalVariable(name: "buffer", arg: 1, scope: !1548, file: !427, line: 774, type: !239)
!1553 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1548, file: !427, line: 774, type: !94)
!1554 = !DILocalVariable(name: "arg", arg: 3, scope: !1548, file: !427, line: 775, type: !70)
!1555 = !DILocalVariable(name: "argsize", arg: 4, scope: !1548, file: !427, line: 775, type: !94)
!1556 = !DILocalVariable(name: "o", arg: 5, scope: !1548, file: !427, line: 776, type: !1464)
!1557 = !DILocalVariable(name: "p", scope: !1548, file: !427, line: 778, type: !1464)
!1558 = !DILocalVariable(name: "saved_errno", scope: !1548, file: !427, line: 779, type: !92)
!1559 = !DILocalVariable(name: "r", scope: !1548, file: !427, line: 780, type: !94)
!1560 = !DILocation(line: 0, scope: !1548)
!1561 = !DILocation(line: 778, column: 37, scope: !1548)
!1562 = !DILocation(line: 779, column: 21, scope: !1548)
!1563 = !DILocation(line: 781, column: 43, scope: !1548)
!1564 = !DILocation(line: 781, column: 53, scope: !1548)
!1565 = !DILocation(line: 781, column: 63, scope: !1548)
!1566 = !DILocation(line: 782, column: 43, scope: !1548)
!1567 = !DILocation(line: 782, column: 58, scope: !1548)
!1568 = !DILocation(line: 780, column: 14, scope: !1548)
!1569 = !DILocation(line: 783, column: 9, scope: !1548)
!1570 = !DILocation(line: 784, column: 3, scope: !1548)
!1571 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !427, file: !427, line: 251, type: !1572, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1576)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!94, !239, !94, !70, !94, !453, !92, !1574, !70, !70}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1576 = !{!1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1601, !1603, !1606, !1607, !1608, !1609, !1612, !1613, !1616, !1620, !1621, !1629, !1632, !1633, !1635, !1636, !1637, !1638}
!1577 = !DILocalVariable(name: "buffer", arg: 1, scope: !1571, file: !427, line: 251, type: !239)
!1578 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1571, file: !427, line: 251, type: !94)
!1579 = !DILocalVariable(name: "arg", arg: 3, scope: !1571, file: !427, line: 252, type: !70)
!1580 = !DILocalVariable(name: "argsize", arg: 4, scope: !1571, file: !427, line: 252, type: !94)
!1581 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1571, file: !427, line: 253, type: !453)
!1582 = !DILocalVariable(name: "flags", arg: 6, scope: !1571, file: !427, line: 253, type: !92)
!1583 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1571, file: !427, line: 254, type: !1574)
!1584 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1571, file: !427, line: 255, type: !70)
!1585 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1571, file: !427, line: 256, type: !70)
!1586 = !DILocalVariable(name: "unibyte_locale", scope: !1571, file: !427, line: 258, type: !218)
!1587 = !DILocalVariable(name: "len", scope: !1571, file: !427, line: 260, type: !94)
!1588 = !DILocalVariable(name: "orig_buffersize", scope: !1571, file: !427, line: 261, type: !94)
!1589 = !DILocalVariable(name: "quote_string", scope: !1571, file: !427, line: 262, type: !70)
!1590 = !DILocalVariable(name: "quote_string_len", scope: !1571, file: !427, line: 263, type: !94)
!1591 = !DILocalVariable(name: "backslash_escapes", scope: !1571, file: !427, line: 264, type: !218)
!1592 = !DILocalVariable(name: "elide_outer_quotes", scope: !1571, file: !427, line: 265, type: !218)
!1593 = !DILocalVariable(name: "encountered_single_quote", scope: !1571, file: !427, line: 266, type: !218)
!1594 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1571, file: !427, line: 267, type: !218)
!1595 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1571, file: !427, line: 309, type: !218)
!1596 = !DILocalVariable(name: "lq", scope: !1597, file: !427, line: 361, type: !70)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !427, line: 361, column: 11)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !427, line: 360, column: 13)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !427, line: 333, column: 7)
!1600 = distinct !DILexicalBlock(scope: !1571, file: !427, line: 312, column: 5)
!1601 = !DILocalVariable(name: "i", scope: !1602, file: !427, line: 395, type: !94)
!1602 = distinct !DILexicalBlock(scope: !1571, file: !427, line: 395, column: 3)
!1603 = !DILocalVariable(name: "is_right_quote", scope: !1604, file: !427, line: 397, type: !218)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !427, line: 396, column: 5)
!1605 = distinct !DILexicalBlock(scope: !1602, file: !427, line: 395, column: 3)
!1606 = !DILocalVariable(name: "escaping", scope: !1604, file: !427, line: 398, type: !218)
!1607 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1604, file: !427, line: 399, type: !218)
!1608 = !DILocalVariable(name: "c", scope: !1604, file: !427, line: 417, type: !97)
!1609 = !DILocalVariable(name: "m", scope: !1610, file: !427, line: 598, type: !94)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !427, line: 596, column: 11)
!1611 = distinct !DILexicalBlock(scope: !1604, file: !427, line: 419, column: 9)
!1612 = !DILocalVariable(name: "printable", scope: !1610, file: !427, line: 600, type: !218)
!1613 = !DILocalVariable(name: "mbs", scope: !1614, file: !427, line: 609, type: !514)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !427, line: 608, column: 15)
!1615 = distinct !DILexicalBlock(scope: !1610, file: !427, line: 602, column: 17)
!1616 = !DILocalVariable(name: "w", scope: !1617, file: !427, line: 618, type: !407)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !427, line: 617, column: 19)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !427, line: 616, column: 17)
!1619 = distinct !DILexicalBlock(scope: !1614, file: !427, line: 616, column: 17)
!1620 = !DILocalVariable(name: "bytes", scope: !1617, file: !427, line: 619, type: !94)
!1621 = !DILocalVariable(name: "j", scope: !1622, file: !427, line: 648, type: !94)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !427, line: 648, column: 29)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !427, line: 647, column: 27)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !427, line: 645, column: 29)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !427, line: 636, column: 23)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !427, line: 628, column: 30)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !427, line: 623, column: 30)
!1628 = distinct !DILexicalBlock(scope: !1617, file: !427, line: 621, column: 25)
!1629 = !DILocalVariable(name: "ilim", scope: !1630, file: !427, line: 674, type: !94)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !427, line: 671, column: 15)
!1631 = distinct !DILexicalBlock(scope: !1610, file: !427, line: 670, column: 17)
!1632 = !DILabel(scope: !1571, name: "process_input", file: !427, line: 308)
!1633 = !DILabel(scope: !1634, name: "c_and_shell_escape", file: !427, line: 502)
!1634 = distinct !DILexicalBlock(scope: !1611, file: !427, line: 478, column: 9)
!1635 = !DILabel(scope: !1634, name: "c_escape", file: !427, line: 507)
!1636 = !DILabel(scope: !1604, name: "store_escape", file: !427, line: 709)
!1637 = !DILabel(scope: !1604, name: "store_c", file: !427, line: 712)
!1638 = !DILabel(scope: !1571, name: "force_outer_quoting_style", file: !427, line: 753)
!1639 = !DILocation(line: 0, scope: !1571)
!1640 = !DILocation(line: 258, column: 25, scope: !1571)
!1641 = !DILocation(line: 258, column: 36, scope: !1571)
!1642 = !DILocation(line: 265, column: 8, scope: !1571)
!1643 = !DILocation(line: 267, column: 3, scope: !1571)
!1644 = !DILocation(line: 261, column: 10, scope: !1571)
!1645 = !DILocation(line: 262, column: 15, scope: !1571)
!1646 = !DILocation(line: 263, column: 10, scope: !1571)
!1647 = !DILocation(line: 264, column: 8, scope: !1571)
!1648 = !DILocation(line: 266, column: 8, scope: !1571)
!1649 = !DILocation(line: 267, column: 8, scope: !1571)
!1650 = !DILocation(line: 308, column: 2, scope: !1571)
!1651 = !DILocation(line: 311, column: 3, scope: !1571)
!1652 = !DILocation(line: 318, column: 11, scope: !1600)
!1653 = !DILocation(line: 318, column: 12, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1600, file: !427, line: 318, column: 11)
!1655 = !DILocation(line: 319, column: 9, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !427, line: 319, column: 9)
!1657 = distinct !DILexicalBlock(scope: !1654, file: !427, line: 319, column: 9)
!1658 = !DILocation(line: 319, column: 9, scope: !1657)
!1659 = !DILocation(line: 0, scope: !505, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 357, column: 26, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !427, line: 335, column: 11)
!1662 = distinct !DILexicalBlock(scope: !1599, file: !427, line: 334, column: 13)
!1663 = !DILocation(line: 199, column: 29, scope: !505, inlinedAt: !1660)
!1664 = !DILocation(line: 201, column: 19, scope: !1665, inlinedAt: !1660)
!1665 = distinct !DILexicalBlock(scope: !505, file: !427, line: 201, column: 7)
!1666 = !DILocation(line: 201, column: 7, scope: !505, inlinedAt: !1660)
!1667 = !DILocation(line: 229, column: 3, scope: !505, inlinedAt: !1660)
!1668 = !DILocation(line: 230, column: 3, scope: !505, inlinedAt: !1660)
!1669 = !DILocation(line: 230, column: 13, scope: !505, inlinedAt: !1660)
!1670 = !DILocalVariable(name: "ps", arg: 1, scope: !1671, file: !1418, line: 1135, type: !1674)
!1671 = distinct !DISubprogram(name: "mbszero", scope: !1418, file: !1418, line: 1135, type: !1672, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1675)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{null, !1674}
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!1675 = !{!1670}
!1676 = !DILocation(line: 0, scope: !1671, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 230, column: 18, scope: !505, inlinedAt: !1660)
!1678 = !DILocalVariable(name: "__dest", arg: 1, scope: !1679, file: !1427, line: 57, type: !91)
!1679 = distinct !DISubprogram(name: "memset", scope: !1427, file: !1427, line: 57, type: !1428, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1680)
!1680 = !{!1678, !1681, !1682}
!1681 = !DILocalVariable(name: "__ch", arg: 2, scope: !1679, file: !1427, line: 57, type: !92)
!1682 = !DILocalVariable(name: "__len", arg: 3, scope: !1679, file: !1427, line: 57, type: !94)
!1683 = !DILocation(line: 0, scope: !1679, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 1137, column: 3, scope: !1671, inlinedAt: !1677)
!1685 = !DILocation(line: 59, column: 10, scope: !1679, inlinedAt: !1684)
!1686 = !DILocation(line: 231, column: 7, scope: !1687, inlinedAt: !1660)
!1687 = distinct !DILexicalBlock(scope: !505, file: !427, line: 231, column: 7)
!1688 = !DILocation(line: 231, column: 40, scope: !1687, inlinedAt: !1660)
!1689 = !DILocation(line: 231, column: 45, scope: !1687, inlinedAt: !1660)
!1690 = !DILocation(line: 235, column: 1, scope: !505, inlinedAt: !1660)
!1691 = !DILocation(line: 0, scope: !505, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 358, column: 27, scope: !1661)
!1693 = !DILocation(line: 199, column: 29, scope: !505, inlinedAt: !1692)
!1694 = !DILocation(line: 201, column: 19, scope: !1665, inlinedAt: !1692)
!1695 = !DILocation(line: 201, column: 7, scope: !505, inlinedAt: !1692)
!1696 = !DILocation(line: 229, column: 3, scope: !505, inlinedAt: !1692)
!1697 = !DILocation(line: 230, column: 3, scope: !505, inlinedAt: !1692)
!1698 = !DILocation(line: 230, column: 13, scope: !505, inlinedAt: !1692)
!1699 = !DILocation(line: 0, scope: !1671, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 230, column: 18, scope: !505, inlinedAt: !1692)
!1701 = !DILocation(line: 0, scope: !1679, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 1137, column: 3, scope: !1671, inlinedAt: !1700)
!1703 = !DILocation(line: 59, column: 10, scope: !1679, inlinedAt: !1702)
!1704 = !DILocation(line: 231, column: 7, scope: !1687, inlinedAt: !1692)
!1705 = !DILocation(line: 231, column: 40, scope: !1687, inlinedAt: !1692)
!1706 = !DILocation(line: 231, column: 45, scope: !1687, inlinedAt: !1692)
!1707 = !DILocation(line: 235, column: 1, scope: !505, inlinedAt: !1692)
!1708 = !DILocation(line: 360, column: 14, scope: !1598)
!1709 = !DILocation(line: 360, column: 13, scope: !1599)
!1710 = !DILocation(line: 0, scope: !1597)
!1711 = !DILocation(line: 361, column: 45, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1597, file: !427, line: 361, column: 11)
!1713 = !DILocation(line: 361, column: 11, scope: !1597)
!1714 = !DILocation(line: 362, column: 13, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !427, line: 362, column: 13)
!1716 = distinct !DILexicalBlock(scope: !1712, file: !427, line: 362, column: 13)
!1717 = !DILocation(line: 362, column: 13, scope: !1716)
!1718 = !DILocation(line: 361, column: 52, scope: !1712)
!1719 = distinct !{!1719, !1713, !1720, !855}
!1720 = !DILocation(line: 362, column: 13, scope: !1597)
!1721 = !DILocation(line: 260, column: 10, scope: !1571)
!1722 = !DILocation(line: 365, column: 28, scope: !1599)
!1723 = !DILocation(line: 367, column: 7, scope: !1600)
!1724 = !DILocation(line: 370, column: 7, scope: !1600)
!1725 = !DILocation(line: 373, column: 7, scope: !1600)
!1726 = !DILocation(line: 376, column: 12, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1600, file: !427, line: 376, column: 11)
!1728 = !DILocation(line: 376, column: 11, scope: !1600)
!1729 = !DILocation(line: 381, column: 12, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1600, file: !427, line: 381, column: 11)
!1731 = !DILocation(line: 381, column: 11, scope: !1600)
!1732 = !DILocation(line: 382, column: 9, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !427, line: 382, column: 9)
!1734 = distinct !DILexicalBlock(scope: !1730, file: !427, line: 382, column: 9)
!1735 = !DILocation(line: 382, column: 9, scope: !1734)
!1736 = !DILocation(line: 389, column: 7, scope: !1600)
!1737 = !DILocation(line: 392, column: 7, scope: !1600)
!1738 = !DILocation(line: 0, scope: !1602)
!1739 = !DILocation(line: 395, column: 8, scope: !1602)
!1740 = !DILocation(line: 309, column: 8, scope: !1571)
!1741 = !DILocation(line: 395, scope: !1602)
!1742 = !DILocation(line: 395, column: 34, scope: !1605)
!1743 = !DILocation(line: 395, column: 26, scope: !1605)
!1744 = !DILocation(line: 395, column: 48, scope: !1605)
!1745 = !DILocation(line: 395, column: 55, scope: !1605)
!1746 = !DILocation(line: 395, column: 3, scope: !1602)
!1747 = !DILocation(line: 395, column: 67, scope: !1605)
!1748 = !DILocation(line: 0, scope: !1604)
!1749 = !DILocation(line: 402, column: 11, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1604, file: !427, line: 401, column: 11)
!1751 = !DILocation(line: 404, column: 17, scope: !1750)
!1752 = !DILocation(line: 405, column: 39, scope: !1750)
!1753 = !DILocation(line: 409, column: 32, scope: !1750)
!1754 = !DILocation(line: 405, column: 19, scope: !1750)
!1755 = !DILocation(line: 405, column: 15, scope: !1750)
!1756 = !DILocation(line: 410, column: 11, scope: !1750)
!1757 = !DILocation(line: 410, column: 25, scope: !1750)
!1758 = !DILocalVariable(name: "__s1", arg: 1, scope: !1759, file: !821, line: 974, type: !957)
!1759 = distinct !DISubprogram(name: "memeq", scope: !821, file: !821, line: 974, type: !1388, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1760)
!1760 = !{!1758, !1761, !1762}
!1761 = !DILocalVariable(name: "__s2", arg: 2, scope: !1759, file: !821, line: 974, type: !957)
!1762 = !DILocalVariable(name: "__n", arg: 3, scope: !1759, file: !821, line: 974, type: !94)
!1763 = !DILocation(line: 0, scope: !1759, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 410, column: 14, scope: !1750)
!1765 = !DILocation(line: 976, column: 11, scope: !1759, inlinedAt: !1764)
!1766 = !DILocation(line: 976, column: 10, scope: !1759, inlinedAt: !1764)
!1767 = !DILocation(line: 401, column: 11, scope: !1604)
!1768 = !DILocation(line: 417, column: 25, scope: !1604)
!1769 = !DILocation(line: 418, column: 7, scope: !1604)
!1770 = !DILocation(line: 421, column: 15, scope: !1611)
!1771 = !DILocation(line: 423, column: 15, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !427, line: 423, column: 15)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !427, line: 422, column: 13)
!1774 = distinct !DILexicalBlock(scope: !1611, file: !427, line: 421, column: 15)
!1775 = !DILocation(line: 423, column: 15, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1772, file: !427, line: 423, column: 15)
!1777 = !DILocation(line: 423, column: 15, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !427, line: 423, column: 15)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !427, line: 423, column: 15)
!1780 = distinct !DILexicalBlock(scope: !1776, file: !427, line: 423, column: 15)
!1781 = !DILocation(line: 423, column: 15, scope: !1779)
!1782 = !DILocation(line: 423, column: 15, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !427, line: 423, column: 15)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !427, line: 423, column: 15)
!1785 = !DILocation(line: 423, column: 15, scope: !1784)
!1786 = !DILocation(line: 423, column: 15, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !427, line: 423, column: 15)
!1788 = distinct !DILexicalBlock(scope: !1780, file: !427, line: 423, column: 15)
!1789 = !DILocation(line: 423, column: 15, scope: !1788)
!1790 = !DILocation(line: 423, column: 15, scope: !1780)
!1791 = !DILocation(line: 423, column: 15, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !427, line: 423, column: 15)
!1793 = distinct !DILexicalBlock(scope: !1772, file: !427, line: 423, column: 15)
!1794 = !DILocation(line: 423, column: 15, scope: !1793)
!1795 = !DILocation(line: 431, column: 19, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1773, file: !427, line: 430, column: 19)
!1797 = !DILocation(line: 431, column: 24, scope: !1796)
!1798 = !DILocation(line: 431, column: 28, scope: !1796)
!1799 = !DILocation(line: 431, column: 38, scope: !1796)
!1800 = !DILocation(line: 431, column: 48, scope: !1796)
!1801 = !DILocation(line: 431, column: 59, scope: !1796)
!1802 = !DILocation(line: 433, column: 19, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !427, line: 433, column: 19)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !427, line: 433, column: 19)
!1805 = distinct !DILexicalBlock(scope: !1796, file: !427, line: 432, column: 17)
!1806 = !DILocation(line: 433, column: 19, scope: !1804)
!1807 = !DILocation(line: 434, column: 19, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !427, line: 434, column: 19)
!1809 = distinct !DILexicalBlock(scope: !1805, file: !427, line: 434, column: 19)
!1810 = !DILocation(line: 434, column: 19, scope: !1809)
!1811 = !DILocation(line: 435, column: 17, scope: !1805)
!1812 = !DILocation(line: 442, column: 20, scope: !1774)
!1813 = !DILocation(line: 447, column: 11, scope: !1611)
!1814 = !DILocation(line: 450, column: 19, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1611, file: !427, line: 448, column: 13)
!1816 = !DILocation(line: 456, column: 19, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1815, file: !427, line: 455, column: 19)
!1818 = !DILocation(line: 456, column: 24, scope: !1817)
!1819 = !DILocation(line: 456, column: 28, scope: !1817)
!1820 = !DILocation(line: 456, column: 38, scope: !1817)
!1821 = !DILocation(line: 456, column: 47, scope: !1817)
!1822 = !DILocation(line: 456, column: 41, scope: !1817)
!1823 = !DILocation(line: 456, column: 52, scope: !1817)
!1824 = !DILocation(line: 455, column: 19, scope: !1815)
!1825 = !DILocation(line: 457, column: 25, scope: !1817)
!1826 = !DILocation(line: 457, column: 17, scope: !1817)
!1827 = !DILocation(line: 464, column: 25, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1817, file: !427, line: 458, column: 19)
!1829 = !DILocation(line: 468, column: 21, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !427, line: 468, column: 21)
!1831 = distinct !DILexicalBlock(scope: !1828, file: !427, line: 468, column: 21)
!1832 = !DILocation(line: 468, column: 21, scope: !1831)
!1833 = !DILocation(line: 469, column: 21, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !427, line: 469, column: 21)
!1835 = distinct !DILexicalBlock(scope: !1828, file: !427, line: 469, column: 21)
!1836 = !DILocation(line: 469, column: 21, scope: !1835)
!1837 = !DILocation(line: 470, column: 21, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !427, line: 470, column: 21)
!1839 = distinct !DILexicalBlock(scope: !1828, file: !427, line: 470, column: 21)
!1840 = !DILocation(line: 470, column: 21, scope: !1839)
!1841 = !DILocation(line: 471, column: 21, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !427, line: 471, column: 21)
!1843 = distinct !DILexicalBlock(scope: !1828, file: !427, line: 471, column: 21)
!1844 = !DILocation(line: 471, column: 21, scope: !1843)
!1845 = !DILocation(line: 472, column: 21, scope: !1828)
!1846 = !DILocation(line: 482, column: 33, scope: !1634)
!1847 = !DILocation(line: 483, column: 33, scope: !1634)
!1848 = !DILocation(line: 485, column: 33, scope: !1634)
!1849 = !DILocation(line: 486, column: 33, scope: !1634)
!1850 = !DILocation(line: 487, column: 33, scope: !1634)
!1851 = !DILocation(line: 490, column: 17, scope: !1634)
!1852 = !DILocation(line: 492, column: 21, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !427, line: 491, column: 15)
!1854 = distinct !DILexicalBlock(scope: !1634, file: !427, line: 490, column: 17)
!1855 = !DILocation(line: 499, column: 35, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1634, file: !427, line: 499, column: 17)
!1857 = !DILocation(line: 499, column: 57, scope: !1856)
!1858 = !DILocation(line: 0, scope: !1634)
!1859 = !DILocation(line: 502, column: 11, scope: !1634)
!1860 = !DILocation(line: 504, column: 17, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1634, file: !427, line: 503, column: 17)
!1862 = !DILocation(line: 507, column: 11, scope: !1634)
!1863 = !DILocation(line: 508, column: 17, scope: !1634)
!1864 = !DILocation(line: 517, column: 15, scope: !1611)
!1865 = !DILocation(line: 517, column: 40, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1611, file: !427, line: 517, column: 15)
!1867 = !DILocation(line: 517, column: 47, scope: !1866)
!1868 = !DILocation(line: 517, column: 18, scope: !1866)
!1869 = !DILocation(line: 521, column: 17, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1611, file: !427, line: 521, column: 15)
!1871 = !DILocation(line: 521, column: 15, scope: !1611)
!1872 = !DILocation(line: 525, column: 11, scope: !1611)
!1873 = !DILocation(line: 537, column: 15, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1611, file: !427, line: 536, column: 15)
!1875 = !DILocation(line: 544, column: 15, scope: !1611)
!1876 = !DILocation(line: 546, column: 19, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !427, line: 545, column: 13)
!1878 = distinct !DILexicalBlock(scope: !1611, file: !427, line: 544, column: 15)
!1879 = !DILocation(line: 549, column: 19, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1877, file: !427, line: 549, column: 19)
!1881 = !DILocation(line: 549, column: 30, scope: !1880)
!1882 = !DILocation(line: 558, column: 15, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !427, line: 558, column: 15)
!1884 = distinct !DILexicalBlock(scope: !1877, file: !427, line: 558, column: 15)
!1885 = !DILocation(line: 558, column: 15, scope: !1884)
!1886 = !DILocation(line: 559, column: 15, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !427, line: 559, column: 15)
!1888 = distinct !DILexicalBlock(scope: !1877, file: !427, line: 559, column: 15)
!1889 = !DILocation(line: 559, column: 15, scope: !1888)
!1890 = !DILocation(line: 560, column: 15, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !427, line: 560, column: 15)
!1892 = distinct !DILexicalBlock(scope: !1877, file: !427, line: 560, column: 15)
!1893 = !DILocation(line: 560, column: 15, scope: !1892)
!1894 = !DILocation(line: 562, column: 13, scope: !1877)
!1895 = !DILocation(line: 602, column: 17, scope: !1610)
!1896 = !DILocation(line: 0, scope: !1610)
!1897 = !DILocation(line: 605, column: 29, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1615, file: !427, line: 603, column: 15)
!1899 = !DILocation(line: 605, column: 27, scope: !1898)
!1900 = !DILocation(line: 668, column: 40, scope: !1610)
!1901 = !DILocation(line: 670, column: 23, scope: !1631)
!1902 = !DILocation(line: 609, column: 17, scope: !1614)
!1903 = !DILocation(line: 609, column: 27, scope: !1614)
!1904 = !DILocation(line: 0, scope: !1671, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 609, column: 32, scope: !1614)
!1906 = !DILocation(line: 0, scope: !1679, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 1137, column: 3, scope: !1671, inlinedAt: !1905)
!1908 = !DILocation(line: 59, column: 10, scope: !1679, inlinedAt: !1907)
!1909 = !DILocation(line: 613, column: 29, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1614, file: !427, line: 613, column: 21)
!1911 = !DILocation(line: 613, column: 21, scope: !1614)
!1912 = !DILocation(line: 614, column: 29, scope: !1910)
!1913 = !DILocation(line: 614, column: 19, scope: !1910)
!1914 = !DILocation(line: 618, column: 21, scope: !1617)
!1915 = !DILocation(line: 620, column: 54, scope: !1617)
!1916 = !DILocation(line: 0, scope: !1617)
!1917 = !DILocation(line: 619, column: 36, scope: !1617)
!1918 = !DILocation(line: 621, column: 25, scope: !1617)
!1919 = !DILocation(line: 631, column: 38, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1626, file: !427, line: 629, column: 23)
!1921 = !DILocation(line: 631, column: 48, scope: !1920)
!1922 = !DILocation(line: 665, column: 19, scope: !1618)
!1923 = !DILocation(line: 666, column: 15, scope: !1615)
!1924 = !DILocation(line: 626, column: 25, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1627, file: !427, line: 624, column: 23)
!1926 = !DILocation(line: 631, column: 51, scope: !1920)
!1927 = !DILocation(line: 631, column: 25, scope: !1920)
!1928 = !DILocation(line: 632, column: 28, scope: !1920)
!1929 = !DILocation(line: 631, column: 34, scope: !1920)
!1930 = distinct !{!1930, !1927, !1928, !855}
!1931 = !DILocation(line: 646, column: 29, scope: !1624)
!1932 = !DILocation(line: 0, scope: !1622)
!1933 = !DILocation(line: 649, column: 49, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1622, file: !427, line: 648, column: 29)
!1935 = !DILocation(line: 649, column: 39, scope: !1934)
!1936 = !DILocation(line: 649, column: 31, scope: !1934)
!1937 = !DILocation(line: 648, column: 60, scope: !1934)
!1938 = !DILocation(line: 648, column: 50, scope: !1934)
!1939 = !DILocation(line: 648, column: 29, scope: !1622)
!1940 = distinct !{!1940, !1939, !1941, !855}
!1941 = !DILocation(line: 654, column: 33, scope: !1622)
!1942 = !DILocation(line: 657, column: 43, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1625, file: !427, line: 657, column: 29)
!1944 = !DILocalVariable(name: "wc", arg: 1, scope: !1945, file: !1946, line: 865, type: !1949)
!1945 = distinct !DISubprogram(name: "c32isprint", scope: !1946, file: !1946, line: 865, type: !1947, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1951)
!1946 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!92, !1949}
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1950, line: 20, baseType: !76)
!1950 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1951 = !{!1944}
!1952 = !DILocation(line: 0, scope: !1945, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 657, column: 31, scope: !1943)
!1954 = !DILocation(line: 871, column: 10, scope: !1945, inlinedAt: !1953)
!1955 = !DILocation(line: 657, column: 31, scope: !1943)
!1956 = !DILocation(line: 657, column: 29, scope: !1625)
!1957 = !DILocation(line: 664, column: 23, scope: !1617)
!1958 = !DILocation(line: 670, column: 19, scope: !1631)
!1959 = !DILocation(line: 670, column: 45, scope: !1631)
!1960 = !DILocation(line: 674, column: 33, scope: !1630)
!1961 = !DILocation(line: 0, scope: !1630)
!1962 = !DILocation(line: 676, column: 17, scope: !1630)
!1963 = !DILocation(line: 398, column: 12, scope: !1604)
!1964 = !DILocation(line: 678, column: 43, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !427, line: 678, column: 25)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !427, line: 677, column: 19)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !427, line: 676, column: 17)
!1968 = distinct !DILexicalBlock(scope: !1630, file: !427, line: 676, column: 17)
!1969 = !DILocation(line: 680, column: 25, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !427, line: 680, column: 25)
!1971 = distinct !DILexicalBlock(scope: !1965, file: !427, line: 679, column: 23)
!1972 = !DILocation(line: 680, column: 25, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1970, file: !427, line: 680, column: 25)
!1974 = !DILocation(line: 680, column: 25, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !427, line: 680, column: 25)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !427, line: 680, column: 25)
!1977 = distinct !DILexicalBlock(scope: !1973, file: !427, line: 680, column: 25)
!1978 = !DILocation(line: 680, column: 25, scope: !1976)
!1979 = !DILocation(line: 680, column: 25, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !427, line: 680, column: 25)
!1981 = distinct !DILexicalBlock(scope: !1977, file: !427, line: 680, column: 25)
!1982 = !DILocation(line: 680, column: 25, scope: !1981)
!1983 = !DILocation(line: 680, column: 25, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !427, line: 680, column: 25)
!1985 = distinct !DILexicalBlock(scope: !1977, file: !427, line: 680, column: 25)
!1986 = !DILocation(line: 680, column: 25, scope: !1985)
!1987 = !DILocation(line: 680, column: 25, scope: !1977)
!1988 = !DILocation(line: 680, column: 25, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !427, line: 680, column: 25)
!1990 = distinct !DILexicalBlock(scope: !1970, file: !427, line: 680, column: 25)
!1991 = !DILocation(line: 680, column: 25, scope: !1990)
!1992 = !DILocation(line: 681, column: 25, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !427, line: 681, column: 25)
!1994 = distinct !DILexicalBlock(scope: !1971, file: !427, line: 681, column: 25)
!1995 = !DILocation(line: 681, column: 25, scope: !1994)
!1996 = !DILocation(line: 682, column: 25, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !427, line: 682, column: 25)
!1998 = distinct !DILexicalBlock(scope: !1971, file: !427, line: 682, column: 25)
!1999 = !DILocation(line: 682, column: 25, scope: !1998)
!2000 = !DILocation(line: 683, column: 38, scope: !1971)
!2001 = !DILocation(line: 683, column: 33, scope: !1971)
!2002 = !DILocation(line: 684, column: 23, scope: !1971)
!2003 = !DILocation(line: 685, column: 30, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1965, file: !427, line: 685, column: 30)
!2005 = !DILocation(line: 685, column: 30, scope: !1965)
!2006 = !DILocation(line: 687, column: 25, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !427, line: 687, column: 25)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !427, line: 687, column: 25)
!2009 = distinct !DILexicalBlock(scope: !2004, file: !427, line: 686, column: 23)
!2010 = !DILocation(line: 687, column: 25, scope: !2008)
!2011 = !DILocation(line: 689, column: 23, scope: !2009)
!2012 = !DILocation(line: 690, column: 35, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1966, file: !427, line: 690, column: 25)
!2014 = !DILocation(line: 690, column: 30, scope: !2013)
!2015 = !DILocation(line: 690, column: 25, scope: !1966)
!2016 = !DILocation(line: 692, column: 21, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !427, line: 692, column: 21)
!2018 = distinct !DILexicalBlock(scope: !1966, file: !427, line: 692, column: 21)
!2019 = !DILocation(line: 692, column: 21, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !427, line: 692, column: 21)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !427, line: 692, column: 21)
!2022 = distinct !DILexicalBlock(scope: !2017, file: !427, line: 692, column: 21)
!2023 = !DILocation(line: 692, column: 21, scope: !2021)
!2024 = !DILocation(line: 692, column: 21, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !427, line: 692, column: 21)
!2026 = distinct !DILexicalBlock(scope: !2022, file: !427, line: 692, column: 21)
!2027 = !DILocation(line: 692, column: 21, scope: !2026)
!2028 = !DILocation(line: 692, column: 21, scope: !2022)
!2029 = !DILocation(line: 0, scope: !1966)
!2030 = !DILocation(line: 693, column: 21, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !427, line: 693, column: 21)
!2032 = distinct !DILexicalBlock(scope: !1966, file: !427, line: 693, column: 21)
!2033 = !DILocation(line: 693, column: 21, scope: !2032)
!2034 = !DILocation(line: 694, column: 25, scope: !1966)
!2035 = !DILocation(line: 676, column: 17, scope: !1967)
!2036 = distinct !{!2036, !2037, !2038}
!2037 = !DILocation(line: 676, column: 17, scope: !1968)
!2038 = !DILocation(line: 695, column: 19, scope: !1968)
!2039 = !DILocation(line: 409, column: 30, scope: !1750)
!2040 = !DILocation(line: 702, column: 34, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !1604, file: !427, line: 702, column: 11)
!2042 = !DILocation(line: 704, column: 14, scope: !2041)
!2043 = !DILocation(line: 705, column: 14, scope: !2041)
!2044 = !DILocation(line: 705, column: 35, scope: !2041)
!2045 = !DILocation(line: 705, column: 17, scope: !2041)
!2046 = !DILocation(line: 705, column: 47, scope: !2041)
!2047 = !DILocation(line: 705, column: 65, scope: !2041)
!2048 = !DILocation(line: 706, column: 11, scope: !2041)
!2049 = !DILocation(line: 702, column: 11, scope: !1604)
!2050 = !DILocation(line: 395, column: 15, scope: !1602)
!2051 = !DILocation(line: 709, column: 5, scope: !1604)
!2052 = !DILocation(line: 710, column: 7, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1604, file: !427, line: 710, column: 7)
!2054 = !DILocation(line: 710, column: 7, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2053, file: !427, line: 710, column: 7)
!2056 = !DILocation(line: 710, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !427, line: 710, column: 7)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !427, line: 710, column: 7)
!2059 = distinct !DILexicalBlock(scope: !2055, file: !427, line: 710, column: 7)
!2060 = !DILocation(line: 710, column: 7, scope: !2058)
!2061 = !DILocation(line: 710, column: 7, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !427, line: 710, column: 7)
!2063 = distinct !DILexicalBlock(scope: !2059, file: !427, line: 710, column: 7)
!2064 = !DILocation(line: 710, column: 7, scope: !2063)
!2065 = !DILocation(line: 710, column: 7, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !427, line: 710, column: 7)
!2067 = distinct !DILexicalBlock(scope: !2059, file: !427, line: 710, column: 7)
!2068 = !DILocation(line: 710, column: 7, scope: !2067)
!2069 = !DILocation(line: 710, column: 7, scope: !2059)
!2070 = !DILocation(line: 710, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !427, line: 710, column: 7)
!2072 = distinct !DILexicalBlock(scope: !2053, file: !427, line: 710, column: 7)
!2073 = !DILocation(line: 710, column: 7, scope: !2072)
!2074 = !DILocation(line: 712, column: 5, scope: !1604)
!2075 = !DILocation(line: 713, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !427, line: 713, column: 7)
!2077 = distinct !DILexicalBlock(scope: !1604, file: !427, line: 713, column: 7)
!2078 = !DILocation(line: 417, column: 21, scope: !1604)
!2079 = !DILocation(line: 713, column: 7, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !427, line: 713, column: 7)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !427, line: 713, column: 7)
!2082 = distinct !DILexicalBlock(scope: !2076, file: !427, line: 713, column: 7)
!2083 = !DILocation(line: 713, column: 7, scope: !2081)
!2084 = !DILocation(line: 713, column: 7, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !427, line: 713, column: 7)
!2086 = distinct !DILexicalBlock(scope: !2082, file: !427, line: 713, column: 7)
!2087 = !DILocation(line: 713, column: 7, scope: !2086)
!2088 = !DILocation(line: 713, column: 7, scope: !2082)
!2089 = !DILocation(line: 714, column: 7, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !427, line: 714, column: 7)
!2091 = distinct !DILexicalBlock(scope: !1604, file: !427, line: 714, column: 7)
!2092 = !DILocation(line: 714, column: 7, scope: !2091)
!2093 = !DILocation(line: 716, column: 13, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !1604, file: !427, line: 716, column: 11)
!2095 = !DILocation(line: 716, column: 11, scope: !1604)
!2096 = !DILocation(line: 718, column: 5, scope: !1605)
!2097 = !DILocation(line: 395, column: 82, scope: !1605)
!2098 = !DILocation(line: 395, column: 3, scope: !1605)
!2099 = distinct !{!2099, !1746, !2100, !855}
!2100 = !DILocation(line: 718, column: 5, scope: !1602)
!2101 = !DILocation(line: 720, column: 11, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1571, file: !427, line: 720, column: 7)
!2103 = !DILocation(line: 720, column: 16, scope: !2102)
!2104 = !DILocation(line: 728, column: 51, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !1571, file: !427, line: 728, column: 7)
!2106 = !DILocation(line: 731, column: 11, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !427, line: 731, column: 11)
!2108 = distinct !DILexicalBlock(scope: !2105, file: !427, line: 730, column: 5)
!2109 = !DILocation(line: 731, column: 11, scope: !2108)
!2110 = !DILocation(line: 732, column: 16, scope: !2107)
!2111 = !DILocation(line: 732, column: 9, scope: !2107)
!2112 = !DILocation(line: 736, column: 18, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2107, file: !427, line: 736, column: 16)
!2114 = !DILocation(line: 736, column: 29, scope: !2113)
!2115 = !DILocation(line: 745, column: 7, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !1571, file: !427, line: 745, column: 7)
!2117 = !DILocation(line: 745, column: 20, scope: !2116)
!2118 = !DILocation(line: 746, column: 12, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !427, line: 746, column: 5)
!2120 = distinct !DILexicalBlock(scope: !2116, file: !427, line: 746, column: 5)
!2121 = !DILocation(line: 746, column: 5, scope: !2120)
!2122 = !DILocation(line: 747, column: 7, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !427, line: 747, column: 7)
!2124 = distinct !DILexicalBlock(scope: !2119, file: !427, line: 747, column: 7)
!2125 = !DILocation(line: 747, column: 7, scope: !2124)
!2126 = !DILocation(line: 746, column: 39, scope: !2119)
!2127 = distinct !{!2127, !2121, !2128, !855}
!2128 = !DILocation(line: 747, column: 7, scope: !2120)
!2129 = !DILocation(line: 749, column: 11, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !1571, file: !427, line: 749, column: 7)
!2131 = !DILocation(line: 749, column: 7, scope: !1571)
!2132 = !DILocation(line: 750, column: 5, scope: !2130)
!2133 = !DILocation(line: 750, column: 17, scope: !2130)
!2134 = !DILocation(line: 753, column: 2, scope: !1571)
!2135 = !DILocation(line: 756, column: 51, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !1571, file: !427, line: 756, column: 7)
!2137 = !DILocation(line: 756, column: 21, scope: !2136)
!2138 = !DILocation(line: 760, column: 42, scope: !1571)
!2139 = !DILocation(line: 758, column: 10, scope: !1571)
!2140 = !DILocation(line: 758, column: 3, scope: !1571)
!2141 = !DILocation(line: 762, column: 1, scope: !1571)
!2142 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !933, file: !933, line: 98, type: !2143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!94}
!2145 = !DISubprogram(name: "strlen", scope: !929, file: !929, line: 407, type: !2146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!96, !70}
!2148 = !DISubprogram(name: "iswprint", scope: !2149, file: !2149, line: 120, type: !1947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!2149 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2150 = distinct !DISubprogram(name: "quotearg_alloc", scope: !427, file: !427, line: 788, type: !2151, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2153)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!239, !70, !94, !1464}
!2153 = !{!2154, !2155, !2156}
!2154 = !DILocalVariable(name: "arg", arg: 1, scope: !2150, file: !427, line: 788, type: !70)
!2155 = !DILocalVariable(name: "argsize", arg: 2, scope: !2150, file: !427, line: 788, type: !94)
!2156 = !DILocalVariable(name: "o", arg: 3, scope: !2150, file: !427, line: 789, type: !1464)
!2157 = !DILocation(line: 0, scope: !2150)
!2158 = !DILocalVariable(name: "arg", arg: 1, scope: !2159, file: !427, line: 801, type: !70)
!2159 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !427, file: !427, line: 801, type: !2160, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2162)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!239, !70, !94, !681, !1464}
!2162 = !{!2158, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170}
!2163 = !DILocalVariable(name: "argsize", arg: 2, scope: !2159, file: !427, line: 801, type: !94)
!2164 = !DILocalVariable(name: "size", arg: 3, scope: !2159, file: !427, line: 801, type: !681)
!2165 = !DILocalVariable(name: "o", arg: 4, scope: !2159, file: !427, line: 802, type: !1464)
!2166 = !DILocalVariable(name: "p", scope: !2159, file: !427, line: 804, type: !1464)
!2167 = !DILocalVariable(name: "saved_errno", scope: !2159, file: !427, line: 805, type: !92)
!2168 = !DILocalVariable(name: "flags", scope: !2159, file: !427, line: 807, type: !92)
!2169 = !DILocalVariable(name: "bufsize", scope: !2159, file: !427, line: 808, type: !94)
!2170 = !DILocalVariable(name: "buf", scope: !2159, file: !427, line: 812, type: !239)
!2171 = !DILocation(line: 0, scope: !2159, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 791, column: 10, scope: !2150)
!2173 = !DILocation(line: 804, column: 37, scope: !2159, inlinedAt: !2172)
!2174 = !DILocation(line: 805, column: 21, scope: !2159, inlinedAt: !2172)
!2175 = !DILocation(line: 807, column: 18, scope: !2159, inlinedAt: !2172)
!2176 = !DILocation(line: 807, column: 24, scope: !2159, inlinedAt: !2172)
!2177 = !DILocation(line: 808, column: 72, scope: !2159, inlinedAt: !2172)
!2178 = !DILocation(line: 809, column: 56, scope: !2159, inlinedAt: !2172)
!2179 = !DILocation(line: 810, column: 49, scope: !2159, inlinedAt: !2172)
!2180 = !DILocation(line: 811, column: 49, scope: !2159, inlinedAt: !2172)
!2181 = !DILocation(line: 808, column: 20, scope: !2159, inlinedAt: !2172)
!2182 = !DILocation(line: 811, column: 62, scope: !2159, inlinedAt: !2172)
!2183 = !DILocation(line: 812, column: 15, scope: !2159, inlinedAt: !2172)
!2184 = !DILocation(line: 813, column: 60, scope: !2159, inlinedAt: !2172)
!2185 = !DILocation(line: 815, column: 32, scope: !2159, inlinedAt: !2172)
!2186 = !DILocation(line: 815, column: 47, scope: !2159, inlinedAt: !2172)
!2187 = !DILocation(line: 813, column: 3, scope: !2159, inlinedAt: !2172)
!2188 = !DILocation(line: 816, column: 9, scope: !2159, inlinedAt: !2172)
!2189 = !DILocation(line: 791, column: 3, scope: !2150)
!2190 = !DILocation(line: 0, scope: !2159)
!2191 = !DILocation(line: 804, column: 37, scope: !2159)
!2192 = !DILocation(line: 805, column: 21, scope: !2159)
!2193 = !DILocation(line: 807, column: 18, scope: !2159)
!2194 = !DILocation(line: 807, column: 27, scope: !2159)
!2195 = !DILocation(line: 807, column: 24, scope: !2159)
!2196 = !DILocation(line: 808, column: 72, scope: !2159)
!2197 = !DILocation(line: 809, column: 56, scope: !2159)
!2198 = !DILocation(line: 810, column: 49, scope: !2159)
!2199 = !DILocation(line: 811, column: 49, scope: !2159)
!2200 = !DILocation(line: 808, column: 20, scope: !2159)
!2201 = !DILocation(line: 811, column: 62, scope: !2159)
!2202 = !DILocation(line: 812, column: 15, scope: !2159)
!2203 = !DILocation(line: 813, column: 60, scope: !2159)
!2204 = !DILocation(line: 815, column: 32, scope: !2159)
!2205 = !DILocation(line: 815, column: 47, scope: !2159)
!2206 = !DILocation(line: 813, column: 3, scope: !2159)
!2207 = !DILocation(line: 816, column: 9, scope: !2159)
!2208 = !DILocation(line: 817, column: 7, scope: !2159)
!2209 = !DILocation(line: 818, column: 11, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2159, file: !427, line: 817, column: 7)
!2211 = !{!1184, !1184, i64 0}
!2212 = !DILocation(line: 818, column: 5, scope: !2210)
!2213 = !DILocation(line: 819, column: 3, scope: !2159)
!2214 = distinct !DISubprogram(name: "quotearg_free", scope: !427, file: !427, line: 837, type: !359, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2215)
!2215 = !{!2216, !2217}
!2216 = !DILocalVariable(name: "sv", scope: !2214, file: !427, line: 839, type: !528)
!2217 = !DILocalVariable(name: "i", scope: !2218, file: !427, line: 840, type: !92)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !427, line: 840, column: 3)
!2219 = !DILocation(line: 839, column: 24, scope: !2214)
!2220 = !DILocation(line: 0, scope: !2214)
!2221 = !DILocation(line: 0, scope: !2218)
!2222 = !DILocation(line: 840, column: 21, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2218, file: !427, line: 840, column: 3)
!2224 = !DILocation(line: 840, column: 3, scope: !2218)
!2225 = !DILocation(line: 842, column: 13, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2214, file: !427, line: 842, column: 7)
!2227 = !{!2228, !748, i64 8}
!2228 = !{!"slotvec", !1184, i64 0, !748, i64 8}
!2229 = !DILocation(line: 842, column: 17, scope: !2226)
!2230 = !DILocation(line: 842, column: 7, scope: !2214)
!2231 = !DILocation(line: 841, column: 17, scope: !2223)
!2232 = !DILocation(line: 841, column: 5, scope: !2223)
!2233 = !DILocation(line: 840, column: 32, scope: !2223)
!2234 = distinct !{!2234, !2224, !2235, !855}
!2235 = !DILocation(line: 841, column: 20, scope: !2218)
!2236 = !DILocation(line: 844, column: 7, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2226, file: !427, line: 843, column: 5)
!2238 = !DILocation(line: 845, column: 21, scope: !2237)
!2239 = !{!2228, !1184, i64 0}
!2240 = !DILocation(line: 846, column: 20, scope: !2237)
!2241 = !DILocation(line: 847, column: 5, scope: !2237)
!2242 = !DILocation(line: 848, column: 10, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2214, file: !427, line: 848, column: 7)
!2244 = !DILocation(line: 848, column: 7, scope: !2214)
!2245 = !DILocation(line: 850, column: 7, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2243, file: !427, line: 849, column: 5)
!2247 = !DILocation(line: 851, column: 15, scope: !2246)
!2248 = !DILocation(line: 852, column: 5, scope: !2246)
!2249 = !DILocation(line: 853, column: 10, scope: !2214)
!2250 = !DILocation(line: 854, column: 1, scope: !2214)
!2251 = !DISubprogram(name: "free", scope: !1418, file: !1418, line: 786, type: !2252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{null, !91}
!2254 = distinct !DISubprogram(name: "quotearg_n", scope: !427, file: !427, line: 919, type: !926, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2255)
!2255 = !{!2256, !2257}
!2256 = !DILocalVariable(name: "n", arg: 1, scope: !2254, file: !427, line: 919, type: !92)
!2257 = !DILocalVariable(name: "arg", arg: 2, scope: !2254, file: !427, line: 919, type: !70)
!2258 = !DILocation(line: 0, scope: !2254)
!2259 = !DILocation(line: 921, column: 10, scope: !2254)
!2260 = !DILocation(line: 921, column: 3, scope: !2254)
!2261 = distinct !DISubprogram(name: "quotearg_n_options", scope: !427, file: !427, line: 866, type: !2262, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!239, !92, !70, !94, !1464}
!2264 = !{!2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2275, !2276, !2278, !2279, !2280}
!2265 = !DILocalVariable(name: "n", arg: 1, scope: !2261, file: !427, line: 866, type: !92)
!2266 = !DILocalVariable(name: "arg", arg: 2, scope: !2261, file: !427, line: 866, type: !70)
!2267 = !DILocalVariable(name: "argsize", arg: 3, scope: !2261, file: !427, line: 866, type: !94)
!2268 = !DILocalVariable(name: "options", arg: 4, scope: !2261, file: !427, line: 867, type: !1464)
!2269 = !DILocalVariable(name: "saved_errno", scope: !2261, file: !427, line: 869, type: !92)
!2270 = !DILocalVariable(name: "sv", scope: !2261, file: !427, line: 871, type: !528)
!2271 = !DILocalVariable(name: "nslots_max", scope: !2261, file: !427, line: 873, type: !92)
!2272 = !DILocalVariable(name: "preallocated", scope: !2273, file: !427, line: 879, type: !218)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !427, line: 878, column: 5)
!2274 = distinct !DILexicalBlock(scope: !2261, file: !427, line: 877, column: 7)
!2275 = !DILocalVariable(name: "new_nslots", scope: !2273, file: !427, line: 880, type: !694)
!2276 = !DILocalVariable(name: "size", scope: !2277, file: !427, line: 891, type: !94)
!2277 = distinct !DILexicalBlock(scope: !2261, file: !427, line: 890, column: 3)
!2278 = !DILocalVariable(name: "val", scope: !2277, file: !427, line: 892, type: !239)
!2279 = !DILocalVariable(name: "flags", scope: !2277, file: !427, line: 894, type: !92)
!2280 = !DILocalVariable(name: "qsize", scope: !2277, file: !427, line: 895, type: !94)
!2281 = !DILocation(line: 0, scope: !2261)
!2282 = !DILocation(line: 869, column: 21, scope: !2261)
!2283 = !DILocation(line: 871, column: 24, scope: !2261)
!2284 = !DILocation(line: 874, column: 17, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2261, file: !427, line: 874, column: 7)
!2286 = !DILocation(line: 875, column: 5, scope: !2285)
!2287 = !DILocation(line: 877, column: 7, scope: !2274)
!2288 = !DILocation(line: 877, column: 14, scope: !2274)
!2289 = !DILocation(line: 877, column: 7, scope: !2261)
!2290 = !DILocation(line: 879, column: 31, scope: !2273)
!2291 = !DILocation(line: 0, scope: !2273)
!2292 = !DILocation(line: 880, column: 7, scope: !2273)
!2293 = !DILocation(line: 880, column: 26, scope: !2273)
!2294 = !DILocation(line: 880, column: 13, scope: !2273)
!2295 = !DILocation(line: 882, column: 31, scope: !2273)
!2296 = !DILocation(line: 883, column: 33, scope: !2273)
!2297 = !DILocation(line: 883, column: 42, scope: !2273)
!2298 = !DILocation(line: 883, column: 31, scope: !2273)
!2299 = !DILocation(line: 882, column: 22, scope: !2273)
!2300 = !DILocation(line: 882, column: 15, scope: !2273)
!2301 = !DILocation(line: 884, column: 11, scope: !2273)
!2302 = !DILocation(line: 885, column: 15, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2273, file: !427, line: 884, column: 11)
!2304 = !{i64 0, i64 8, !2211, i64 8, i64 8, !747}
!2305 = !DILocation(line: 885, column: 9, scope: !2303)
!2306 = !DILocation(line: 886, column: 20, scope: !2273)
!2307 = !DILocation(line: 886, column: 18, scope: !2273)
!2308 = !DILocation(line: 886, column: 32, scope: !2273)
!2309 = !DILocation(line: 886, column: 43, scope: !2273)
!2310 = !DILocation(line: 886, column: 53, scope: !2273)
!2311 = !DILocation(line: 0, scope: !1679, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 886, column: 7, scope: !2273)
!2313 = !DILocation(line: 59, column: 10, scope: !1679, inlinedAt: !2312)
!2314 = !DILocation(line: 887, column: 16, scope: !2273)
!2315 = !DILocation(line: 887, column: 14, scope: !2273)
!2316 = !DILocation(line: 888, column: 5, scope: !2274)
!2317 = !DILocation(line: 888, column: 5, scope: !2273)
!2318 = !DILocation(line: 891, column: 19, scope: !2277)
!2319 = !DILocation(line: 891, column: 25, scope: !2277)
!2320 = !DILocation(line: 0, scope: !2277)
!2321 = !DILocation(line: 892, column: 23, scope: !2277)
!2322 = !DILocation(line: 894, column: 26, scope: !2277)
!2323 = !DILocation(line: 894, column: 32, scope: !2277)
!2324 = !DILocation(line: 896, column: 55, scope: !2277)
!2325 = !DILocation(line: 897, column: 55, scope: !2277)
!2326 = !DILocation(line: 898, column: 55, scope: !2277)
!2327 = !DILocation(line: 899, column: 55, scope: !2277)
!2328 = !DILocation(line: 895, column: 20, scope: !2277)
!2329 = !DILocation(line: 901, column: 14, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2277, file: !427, line: 901, column: 9)
!2331 = !DILocation(line: 901, column: 9, scope: !2277)
!2332 = !DILocation(line: 903, column: 35, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2330, file: !427, line: 902, column: 7)
!2334 = !DILocation(line: 903, column: 20, scope: !2333)
!2335 = !DILocation(line: 904, column: 17, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2333, file: !427, line: 904, column: 13)
!2337 = !DILocation(line: 904, column: 13, scope: !2333)
!2338 = !DILocation(line: 905, column: 11, scope: !2336)
!2339 = !DILocation(line: 906, column: 27, scope: !2333)
!2340 = !DILocation(line: 906, column: 19, scope: !2333)
!2341 = !DILocation(line: 907, column: 69, scope: !2333)
!2342 = !DILocation(line: 909, column: 44, scope: !2333)
!2343 = !DILocation(line: 910, column: 44, scope: !2333)
!2344 = !DILocation(line: 907, column: 9, scope: !2333)
!2345 = !DILocation(line: 911, column: 7, scope: !2333)
!2346 = !DILocation(line: 913, column: 11, scope: !2277)
!2347 = !DILocation(line: 914, column: 5, scope: !2277)
!2348 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !427, file: !427, line: 925, type: !2349, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2351)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!239, !92, !70, !94}
!2351 = !{!2352, !2353, !2354}
!2352 = !DILocalVariable(name: "n", arg: 1, scope: !2348, file: !427, line: 925, type: !92)
!2353 = !DILocalVariable(name: "arg", arg: 2, scope: !2348, file: !427, line: 925, type: !70)
!2354 = !DILocalVariable(name: "argsize", arg: 3, scope: !2348, file: !427, line: 925, type: !94)
!2355 = !DILocation(line: 0, scope: !2348)
!2356 = !DILocation(line: 927, column: 10, scope: !2348)
!2357 = !DILocation(line: 927, column: 3, scope: !2348)
!2358 = distinct !DISubprogram(name: "quotearg", scope: !427, file: !427, line: 931, type: !935, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2359)
!2359 = !{!2360}
!2360 = !DILocalVariable(name: "arg", arg: 1, scope: !2358, file: !427, line: 931, type: !70)
!2361 = !DILocation(line: 0, scope: !2358)
!2362 = !DILocation(line: 0, scope: !2254, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 933, column: 10, scope: !2358)
!2364 = !DILocation(line: 921, column: 10, scope: !2254, inlinedAt: !2363)
!2365 = !DILocation(line: 933, column: 3, scope: !2358)
!2366 = distinct !DISubprogram(name: "quotearg_mem", scope: !427, file: !427, line: 937, type: !2367, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2369)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!239, !70, !94}
!2369 = !{!2370, !2371}
!2370 = !DILocalVariable(name: "arg", arg: 1, scope: !2366, file: !427, line: 937, type: !70)
!2371 = !DILocalVariable(name: "argsize", arg: 2, scope: !2366, file: !427, line: 937, type: !94)
!2372 = !DILocation(line: 0, scope: !2366)
!2373 = !DILocation(line: 0, scope: !2348, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 939, column: 10, scope: !2366)
!2375 = !DILocation(line: 927, column: 10, scope: !2348, inlinedAt: !2374)
!2376 = !DILocation(line: 939, column: 3, scope: !2366)
!2377 = distinct !DISubprogram(name: "quotearg_n_style", scope: !427, file: !427, line: 943, type: !2378, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2380)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!239, !92, !453, !70}
!2380 = !{!2381, !2382, !2383, !2384}
!2381 = !DILocalVariable(name: "n", arg: 1, scope: !2377, file: !427, line: 943, type: !92)
!2382 = !DILocalVariable(name: "s", arg: 2, scope: !2377, file: !427, line: 943, type: !453)
!2383 = !DILocalVariable(name: "arg", arg: 3, scope: !2377, file: !427, line: 943, type: !70)
!2384 = !DILocalVariable(name: "o", scope: !2377, file: !427, line: 945, type: !1465)
!2385 = !DILocation(line: 0, scope: !2377)
!2386 = !DILocation(line: 945, column: 3, scope: !2377)
!2387 = !DILocation(line: 945, column: 32, scope: !2377)
!2388 = !{!2389}
!2389 = distinct !{!2389, !2390, !"quoting_options_from_style: argument 0"}
!2390 = distinct !{!2390, !"quoting_options_from_style"}
!2391 = !DILocation(line: 945, column: 36, scope: !2377)
!2392 = !DILocalVariable(name: "style", arg: 1, scope: !2393, file: !427, line: 183, type: !453)
!2393 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !427, file: !427, line: 183, type: !2394, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!480, !453}
!2396 = !{!2392, !2397}
!2397 = !DILocalVariable(name: "o", scope: !2393, file: !427, line: 185, type: !480)
!2398 = !DILocation(line: 0, scope: !2393, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 945, column: 36, scope: !2377)
!2400 = !DILocation(line: 185, column: 26, scope: !2393, inlinedAt: !2399)
!2401 = !DILocation(line: 186, column: 13, scope: !2402, inlinedAt: !2399)
!2402 = distinct !DILexicalBlock(scope: !2393, file: !427, line: 186, column: 7)
!2403 = !DILocation(line: 186, column: 7, scope: !2393, inlinedAt: !2399)
!2404 = !DILocation(line: 187, column: 5, scope: !2402, inlinedAt: !2399)
!2405 = !DILocation(line: 188, column: 11, scope: !2393, inlinedAt: !2399)
!2406 = !DILocation(line: 946, column: 10, scope: !2377)
!2407 = !DILocation(line: 947, column: 1, scope: !2377)
!2408 = !DILocation(line: 946, column: 3, scope: !2377)
!2409 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !427, file: !427, line: 950, type: !2410, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2412)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!239, !92, !453, !70, !94}
!2412 = !{!2413, !2414, !2415, !2416, !2417}
!2413 = !DILocalVariable(name: "n", arg: 1, scope: !2409, file: !427, line: 950, type: !92)
!2414 = !DILocalVariable(name: "s", arg: 2, scope: !2409, file: !427, line: 950, type: !453)
!2415 = !DILocalVariable(name: "arg", arg: 3, scope: !2409, file: !427, line: 951, type: !70)
!2416 = !DILocalVariable(name: "argsize", arg: 4, scope: !2409, file: !427, line: 951, type: !94)
!2417 = !DILocalVariable(name: "o", scope: !2409, file: !427, line: 953, type: !1465)
!2418 = !DILocation(line: 0, scope: !2409)
!2419 = !DILocation(line: 953, column: 3, scope: !2409)
!2420 = !DILocation(line: 953, column: 32, scope: !2409)
!2421 = !{!2422}
!2422 = distinct !{!2422, !2423, !"quoting_options_from_style: argument 0"}
!2423 = distinct !{!2423, !"quoting_options_from_style"}
!2424 = !DILocation(line: 953, column: 36, scope: !2409)
!2425 = !DILocation(line: 0, scope: !2393, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 953, column: 36, scope: !2409)
!2427 = !DILocation(line: 185, column: 26, scope: !2393, inlinedAt: !2426)
!2428 = !DILocation(line: 186, column: 13, scope: !2402, inlinedAt: !2426)
!2429 = !DILocation(line: 186, column: 7, scope: !2393, inlinedAt: !2426)
!2430 = !DILocation(line: 187, column: 5, scope: !2402, inlinedAt: !2426)
!2431 = !DILocation(line: 188, column: 11, scope: !2393, inlinedAt: !2426)
!2432 = !DILocation(line: 954, column: 10, scope: !2409)
!2433 = !DILocation(line: 955, column: 1, scope: !2409)
!2434 = !DILocation(line: 954, column: 3, scope: !2409)
!2435 = distinct !DISubprogram(name: "quotearg_style", scope: !427, file: !427, line: 958, type: !2436, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2438)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!239, !453, !70}
!2438 = !{!2439, !2440}
!2439 = !DILocalVariable(name: "s", arg: 1, scope: !2435, file: !427, line: 958, type: !453)
!2440 = !DILocalVariable(name: "arg", arg: 2, scope: !2435, file: !427, line: 958, type: !70)
!2441 = !DILocation(line: 0, scope: !2435)
!2442 = !DILocation(line: 0, scope: !2377, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 960, column: 10, scope: !2435)
!2444 = !DILocation(line: 945, column: 3, scope: !2377, inlinedAt: !2443)
!2445 = !DILocation(line: 945, column: 32, scope: !2377, inlinedAt: !2443)
!2446 = !{!2447}
!2447 = distinct !{!2447, !2448, !"quoting_options_from_style: argument 0"}
!2448 = distinct !{!2448, !"quoting_options_from_style"}
!2449 = !DILocation(line: 945, column: 36, scope: !2377, inlinedAt: !2443)
!2450 = !DILocation(line: 0, scope: !2393, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 945, column: 36, scope: !2377, inlinedAt: !2443)
!2452 = !DILocation(line: 185, column: 26, scope: !2393, inlinedAt: !2451)
!2453 = !DILocation(line: 186, column: 13, scope: !2402, inlinedAt: !2451)
!2454 = !DILocation(line: 186, column: 7, scope: !2393, inlinedAt: !2451)
!2455 = !DILocation(line: 187, column: 5, scope: !2402, inlinedAt: !2451)
!2456 = !DILocation(line: 188, column: 11, scope: !2393, inlinedAt: !2451)
!2457 = !DILocation(line: 946, column: 10, scope: !2377, inlinedAt: !2443)
!2458 = !DILocation(line: 947, column: 1, scope: !2377, inlinedAt: !2443)
!2459 = !DILocation(line: 960, column: 3, scope: !2435)
!2460 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !427, file: !427, line: 964, type: !2461, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2463)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!239, !453, !70, !94}
!2463 = !{!2464, !2465, !2466}
!2464 = !DILocalVariable(name: "s", arg: 1, scope: !2460, file: !427, line: 964, type: !453)
!2465 = !DILocalVariable(name: "arg", arg: 2, scope: !2460, file: !427, line: 964, type: !70)
!2466 = !DILocalVariable(name: "argsize", arg: 3, scope: !2460, file: !427, line: 964, type: !94)
!2467 = !DILocation(line: 0, scope: !2460)
!2468 = !DILocation(line: 0, scope: !2409, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 966, column: 10, scope: !2460)
!2470 = !DILocation(line: 953, column: 3, scope: !2409, inlinedAt: !2469)
!2471 = !DILocation(line: 953, column: 32, scope: !2409, inlinedAt: !2469)
!2472 = !{!2473}
!2473 = distinct !{!2473, !2474, !"quoting_options_from_style: argument 0"}
!2474 = distinct !{!2474, !"quoting_options_from_style"}
!2475 = !DILocation(line: 953, column: 36, scope: !2409, inlinedAt: !2469)
!2476 = !DILocation(line: 0, scope: !2393, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 953, column: 36, scope: !2409, inlinedAt: !2469)
!2478 = !DILocation(line: 185, column: 26, scope: !2393, inlinedAt: !2477)
!2479 = !DILocation(line: 186, column: 13, scope: !2402, inlinedAt: !2477)
!2480 = !DILocation(line: 186, column: 7, scope: !2393, inlinedAt: !2477)
!2481 = !DILocation(line: 187, column: 5, scope: !2402, inlinedAt: !2477)
!2482 = !DILocation(line: 188, column: 11, scope: !2393, inlinedAt: !2477)
!2483 = !DILocation(line: 954, column: 10, scope: !2409, inlinedAt: !2469)
!2484 = !DILocation(line: 955, column: 1, scope: !2409, inlinedAt: !2469)
!2485 = !DILocation(line: 966, column: 3, scope: !2460)
!2486 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !427, file: !427, line: 970, type: !2487, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2489)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!239, !70, !94, !4}
!2489 = !{!2490, !2491, !2492, !2493}
!2490 = !DILocalVariable(name: "arg", arg: 1, scope: !2486, file: !427, line: 970, type: !70)
!2491 = !DILocalVariable(name: "argsize", arg: 2, scope: !2486, file: !427, line: 970, type: !94)
!2492 = !DILocalVariable(name: "ch", arg: 3, scope: !2486, file: !427, line: 970, type: !4)
!2493 = !DILocalVariable(name: "options", scope: !2486, file: !427, line: 972, type: !480)
!2494 = !DILocation(line: 0, scope: !2486)
!2495 = !DILocation(line: 972, column: 3, scope: !2486)
!2496 = !DILocation(line: 972, column: 26, scope: !2486)
!2497 = !DILocation(line: 973, column: 13, scope: !2486)
!2498 = !{i64 0, i64 4, !817, i64 4, i64 4, !808, i64 8, i64 32, !817, i64 40, i64 8, !747, i64 48, i64 8, !747}
!2499 = !DILocation(line: 0, scope: !1484, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 974, column: 3, scope: !2486)
!2501 = !DILocation(line: 147, column: 41, scope: !1484, inlinedAt: !2500)
!2502 = !DILocation(line: 147, column: 62, scope: !1484, inlinedAt: !2500)
!2503 = !DILocation(line: 147, column: 57, scope: !1484, inlinedAt: !2500)
!2504 = !DILocation(line: 148, column: 15, scope: !1484, inlinedAt: !2500)
!2505 = !DILocation(line: 149, column: 21, scope: !1484, inlinedAt: !2500)
!2506 = !DILocation(line: 149, column: 24, scope: !1484, inlinedAt: !2500)
!2507 = !DILocation(line: 150, column: 19, scope: !1484, inlinedAt: !2500)
!2508 = !DILocation(line: 150, column: 24, scope: !1484, inlinedAt: !2500)
!2509 = !DILocation(line: 150, column: 6, scope: !1484, inlinedAt: !2500)
!2510 = !DILocation(line: 975, column: 10, scope: !2486)
!2511 = !DILocation(line: 976, column: 1, scope: !2486)
!2512 = !DILocation(line: 975, column: 3, scope: !2486)
!2513 = distinct !DISubprogram(name: "quotearg_char", scope: !427, file: !427, line: 979, type: !2514, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2516)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!239, !70, !4}
!2516 = !{!2517, !2518}
!2517 = !DILocalVariable(name: "arg", arg: 1, scope: !2513, file: !427, line: 979, type: !70)
!2518 = !DILocalVariable(name: "ch", arg: 2, scope: !2513, file: !427, line: 979, type: !4)
!2519 = !DILocation(line: 0, scope: !2513)
!2520 = !DILocation(line: 0, scope: !2486, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 981, column: 10, scope: !2513)
!2522 = !DILocation(line: 972, column: 3, scope: !2486, inlinedAt: !2521)
!2523 = !DILocation(line: 972, column: 26, scope: !2486, inlinedAt: !2521)
!2524 = !DILocation(line: 973, column: 13, scope: !2486, inlinedAt: !2521)
!2525 = !DILocation(line: 0, scope: !1484, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 974, column: 3, scope: !2486, inlinedAt: !2521)
!2527 = !DILocation(line: 147, column: 41, scope: !1484, inlinedAt: !2526)
!2528 = !DILocation(line: 147, column: 62, scope: !1484, inlinedAt: !2526)
!2529 = !DILocation(line: 147, column: 57, scope: !1484, inlinedAt: !2526)
!2530 = !DILocation(line: 148, column: 15, scope: !1484, inlinedAt: !2526)
!2531 = !DILocation(line: 149, column: 21, scope: !1484, inlinedAt: !2526)
!2532 = !DILocation(line: 149, column: 24, scope: !1484, inlinedAt: !2526)
!2533 = !DILocation(line: 150, column: 19, scope: !1484, inlinedAt: !2526)
!2534 = !DILocation(line: 150, column: 24, scope: !1484, inlinedAt: !2526)
!2535 = !DILocation(line: 150, column: 6, scope: !1484, inlinedAt: !2526)
!2536 = !DILocation(line: 975, column: 10, scope: !2486, inlinedAt: !2521)
!2537 = !DILocation(line: 976, column: 1, scope: !2486, inlinedAt: !2521)
!2538 = !DILocation(line: 981, column: 3, scope: !2513)
!2539 = distinct !DISubprogram(name: "quotearg_colon", scope: !427, file: !427, line: 985, type: !935, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2540)
!2540 = !{!2541}
!2541 = !DILocalVariable(name: "arg", arg: 1, scope: !2539, file: !427, line: 985, type: !70)
!2542 = !DILocation(line: 0, scope: !2539)
!2543 = !DILocation(line: 0, scope: !2513, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 987, column: 10, scope: !2539)
!2545 = !DILocation(line: 0, scope: !2486, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 981, column: 10, scope: !2513, inlinedAt: !2544)
!2547 = !DILocation(line: 972, column: 3, scope: !2486, inlinedAt: !2546)
!2548 = !DILocation(line: 972, column: 26, scope: !2486, inlinedAt: !2546)
!2549 = !DILocation(line: 973, column: 13, scope: !2486, inlinedAt: !2546)
!2550 = !DILocation(line: 0, scope: !1484, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 974, column: 3, scope: !2486, inlinedAt: !2546)
!2552 = !DILocation(line: 147, column: 57, scope: !1484, inlinedAt: !2551)
!2553 = !DILocation(line: 149, column: 21, scope: !1484, inlinedAt: !2551)
!2554 = !DILocation(line: 150, column: 6, scope: !1484, inlinedAt: !2551)
!2555 = !DILocation(line: 975, column: 10, scope: !2486, inlinedAt: !2546)
!2556 = !DILocation(line: 976, column: 1, scope: !2486, inlinedAt: !2546)
!2557 = !DILocation(line: 987, column: 3, scope: !2539)
!2558 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !427, file: !427, line: 991, type: !2367, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2559)
!2559 = !{!2560, !2561}
!2560 = !DILocalVariable(name: "arg", arg: 1, scope: !2558, file: !427, line: 991, type: !70)
!2561 = !DILocalVariable(name: "argsize", arg: 2, scope: !2558, file: !427, line: 991, type: !94)
!2562 = !DILocation(line: 0, scope: !2558)
!2563 = !DILocation(line: 0, scope: !2486, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 993, column: 10, scope: !2558)
!2565 = !DILocation(line: 972, column: 3, scope: !2486, inlinedAt: !2564)
!2566 = !DILocation(line: 972, column: 26, scope: !2486, inlinedAt: !2564)
!2567 = !DILocation(line: 973, column: 13, scope: !2486, inlinedAt: !2564)
!2568 = !DILocation(line: 0, scope: !1484, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 974, column: 3, scope: !2486, inlinedAt: !2564)
!2570 = !DILocation(line: 147, column: 57, scope: !1484, inlinedAt: !2569)
!2571 = !DILocation(line: 149, column: 21, scope: !1484, inlinedAt: !2569)
!2572 = !DILocation(line: 150, column: 6, scope: !1484, inlinedAt: !2569)
!2573 = !DILocation(line: 975, column: 10, scope: !2486, inlinedAt: !2564)
!2574 = !DILocation(line: 976, column: 1, scope: !2486, inlinedAt: !2564)
!2575 = !DILocation(line: 993, column: 3, scope: !2558)
!2576 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !427, file: !427, line: 997, type: !2378, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2577)
!2577 = !{!2578, !2579, !2580, !2581}
!2578 = !DILocalVariable(name: "n", arg: 1, scope: !2576, file: !427, line: 997, type: !92)
!2579 = !DILocalVariable(name: "s", arg: 2, scope: !2576, file: !427, line: 997, type: !453)
!2580 = !DILocalVariable(name: "arg", arg: 3, scope: !2576, file: !427, line: 997, type: !70)
!2581 = !DILocalVariable(name: "options", scope: !2576, file: !427, line: 999, type: !480)
!2582 = !DILocation(line: 185, column: 26, scope: !2393, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 1000, column: 13, scope: !2576)
!2584 = !DILocation(line: 0, scope: !2576)
!2585 = !DILocation(line: 999, column: 3, scope: !2576)
!2586 = !DILocation(line: 999, column: 26, scope: !2576)
!2587 = !DILocation(line: 0, scope: !2393, inlinedAt: !2583)
!2588 = !DILocation(line: 186, column: 13, scope: !2402, inlinedAt: !2583)
!2589 = !DILocation(line: 186, column: 7, scope: !2393, inlinedAt: !2583)
!2590 = !DILocation(line: 187, column: 5, scope: !2402, inlinedAt: !2583)
!2591 = !{!2592}
!2592 = distinct !{!2592, !2593, !"quoting_options_from_style: argument 0"}
!2593 = distinct !{!2593, !"quoting_options_from_style"}
!2594 = !DILocation(line: 1000, column: 13, scope: !2576)
!2595 = !DILocation(line: 0, scope: !1484, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 1001, column: 3, scope: !2576)
!2597 = !DILocation(line: 147, column: 57, scope: !1484, inlinedAt: !2596)
!2598 = !DILocation(line: 149, column: 21, scope: !1484, inlinedAt: !2596)
!2599 = !DILocation(line: 150, column: 6, scope: !1484, inlinedAt: !2596)
!2600 = !DILocation(line: 1002, column: 10, scope: !2576)
!2601 = !DILocation(line: 1003, column: 1, scope: !2576)
!2602 = !DILocation(line: 1002, column: 3, scope: !2576)
!2603 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !427, file: !427, line: 1006, type: !2604, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2606)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!239, !92, !70, !70, !70}
!2606 = !{!2607, !2608, !2609, !2610}
!2607 = !DILocalVariable(name: "n", arg: 1, scope: !2603, file: !427, line: 1006, type: !92)
!2608 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2603, file: !427, line: 1006, type: !70)
!2609 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2603, file: !427, line: 1007, type: !70)
!2610 = !DILocalVariable(name: "arg", arg: 4, scope: !2603, file: !427, line: 1007, type: !70)
!2611 = !DILocation(line: 0, scope: !2603)
!2612 = !DILocalVariable(name: "n", arg: 1, scope: !2613, file: !427, line: 1014, type: !92)
!2613 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !427, file: !427, line: 1014, type: !2614, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!239, !92, !70, !70, !70, !94}
!2616 = !{!2612, !2617, !2618, !2619, !2620, !2621}
!2617 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2613, file: !427, line: 1014, type: !70)
!2618 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2613, file: !427, line: 1015, type: !70)
!2619 = !DILocalVariable(name: "arg", arg: 4, scope: !2613, file: !427, line: 1016, type: !70)
!2620 = !DILocalVariable(name: "argsize", arg: 5, scope: !2613, file: !427, line: 1016, type: !94)
!2621 = !DILocalVariable(name: "o", scope: !2613, file: !427, line: 1018, type: !480)
!2622 = !DILocation(line: 0, scope: !2613, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 1009, column: 10, scope: !2603)
!2624 = !DILocation(line: 1018, column: 3, scope: !2613, inlinedAt: !2623)
!2625 = !DILocation(line: 1018, column: 26, scope: !2613, inlinedAt: !2623)
!2626 = !DILocation(line: 1018, column: 30, scope: !2613, inlinedAt: !2623)
!2627 = !DILocation(line: 0, scope: !1524, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 1019, column: 3, scope: !2613, inlinedAt: !2623)
!2629 = !DILocation(line: 174, column: 12, scope: !1524, inlinedAt: !2628)
!2630 = !DILocation(line: 175, column: 8, scope: !1537, inlinedAt: !2628)
!2631 = !DILocation(line: 175, column: 19, scope: !1537, inlinedAt: !2628)
!2632 = !DILocation(line: 176, column: 5, scope: !1537, inlinedAt: !2628)
!2633 = !DILocation(line: 177, column: 6, scope: !1524, inlinedAt: !2628)
!2634 = !DILocation(line: 177, column: 17, scope: !1524, inlinedAt: !2628)
!2635 = !DILocation(line: 178, column: 6, scope: !1524, inlinedAt: !2628)
!2636 = !DILocation(line: 178, column: 18, scope: !1524, inlinedAt: !2628)
!2637 = !DILocation(line: 1020, column: 10, scope: !2613, inlinedAt: !2623)
!2638 = !DILocation(line: 1021, column: 1, scope: !2613, inlinedAt: !2623)
!2639 = !DILocation(line: 1009, column: 3, scope: !2603)
!2640 = !DILocation(line: 0, scope: !2613)
!2641 = !DILocation(line: 1018, column: 3, scope: !2613)
!2642 = !DILocation(line: 1018, column: 26, scope: !2613)
!2643 = !DILocation(line: 1018, column: 30, scope: !2613)
!2644 = !DILocation(line: 0, scope: !1524, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 1019, column: 3, scope: !2613)
!2646 = !DILocation(line: 174, column: 12, scope: !1524, inlinedAt: !2645)
!2647 = !DILocation(line: 175, column: 8, scope: !1537, inlinedAt: !2645)
!2648 = !DILocation(line: 175, column: 19, scope: !1537, inlinedAt: !2645)
!2649 = !DILocation(line: 176, column: 5, scope: !1537, inlinedAt: !2645)
!2650 = !DILocation(line: 177, column: 6, scope: !1524, inlinedAt: !2645)
!2651 = !DILocation(line: 177, column: 17, scope: !1524, inlinedAt: !2645)
!2652 = !DILocation(line: 178, column: 6, scope: !1524, inlinedAt: !2645)
!2653 = !DILocation(line: 178, column: 18, scope: !1524, inlinedAt: !2645)
!2654 = !DILocation(line: 1020, column: 10, scope: !2613)
!2655 = !DILocation(line: 1021, column: 1, scope: !2613)
!2656 = !DILocation(line: 1020, column: 3, scope: !2613)
!2657 = distinct !DISubprogram(name: "quotearg_custom", scope: !427, file: !427, line: 1024, type: !2658, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!239, !70, !70, !70}
!2660 = !{!2661, !2662, !2663}
!2661 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2657, file: !427, line: 1024, type: !70)
!2662 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2657, file: !427, line: 1024, type: !70)
!2663 = !DILocalVariable(name: "arg", arg: 3, scope: !2657, file: !427, line: 1025, type: !70)
!2664 = !DILocation(line: 0, scope: !2657)
!2665 = !DILocation(line: 0, scope: !2603, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 1027, column: 10, scope: !2657)
!2667 = !DILocation(line: 0, scope: !2613, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 1009, column: 10, scope: !2603, inlinedAt: !2666)
!2669 = !DILocation(line: 1018, column: 3, scope: !2613, inlinedAt: !2668)
!2670 = !DILocation(line: 1018, column: 26, scope: !2613, inlinedAt: !2668)
!2671 = !DILocation(line: 1018, column: 30, scope: !2613, inlinedAt: !2668)
!2672 = !DILocation(line: 0, scope: !1524, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 1019, column: 3, scope: !2613, inlinedAt: !2668)
!2674 = !DILocation(line: 174, column: 12, scope: !1524, inlinedAt: !2673)
!2675 = !DILocation(line: 175, column: 8, scope: !1537, inlinedAt: !2673)
!2676 = !DILocation(line: 175, column: 19, scope: !1537, inlinedAt: !2673)
!2677 = !DILocation(line: 176, column: 5, scope: !1537, inlinedAt: !2673)
!2678 = !DILocation(line: 177, column: 6, scope: !1524, inlinedAt: !2673)
!2679 = !DILocation(line: 177, column: 17, scope: !1524, inlinedAt: !2673)
!2680 = !DILocation(line: 178, column: 6, scope: !1524, inlinedAt: !2673)
!2681 = !DILocation(line: 178, column: 18, scope: !1524, inlinedAt: !2673)
!2682 = !DILocation(line: 1020, column: 10, scope: !2613, inlinedAt: !2668)
!2683 = !DILocation(line: 1021, column: 1, scope: !2613, inlinedAt: !2668)
!2684 = !DILocation(line: 1027, column: 3, scope: !2657)
!2685 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !427, file: !427, line: 1031, type: !2686, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!239, !70, !70, !70, !94}
!2688 = !{!2689, !2690, !2691, !2692}
!2689 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2685, file: !427, line: 1031, type: !70)
!2690 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2685, file: !427, line: 1031, type: !70)
!2691 = !DILocalVariable(name: "arg", arg: 3, scope: !2685, file: !427, line: 1032, type: !70)
!2692 = !DILocalVariable(name: "argsize", arg: 4, scope: !2685, file: !427, line: 1032, type: !94)
!2693 = !DILocation(line: 0, scope: !2685)
!2694 = !DILocation(line: 0, scope: !2613, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 1034, column: 10, scope: !2685)
!2696 = !DILocation(line: 1018, column: 3, scope: !2613, inlinedAt: !2695)
!2697 = !DILocation(line: 1018, column: 26, scope: !2613, inlinedAt: !2695)
!2698 = !DILocation(line: 1018, column: 30, scope: !2613, inlinedAt: !2695)
!2699 = !DILocation(line: 0, scope: !1524, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 1019, column: 3, scope: !2613, inlinedAt: !2695)
!2701 = !DILocation(line: 174, column: 12, scope: !1524, inlinedAt: !2700)
!2702 = !DILocation(line: 175, column: 8, scope: !1537, inlinedAt: !2700)
!2703 = !DILocation(line: 175, column: 19, scope: !1537, inlinedAt: !2700)
!2704 = !DILocation(line: 176, column: 5, scope: !1537, inlinedAt: !2700)
!2705 = !DILocation(line: 177, column: 6, scope: !1524, inlinedAt: !2700)
!2706 = !DILocation(line: 177, column: 17, scope: !1524, inlinedAt: !2700)
!2707 = !DILocation(line: 178, column: 6, scope: !1524, inlinedAt: !2700)
!2708 = !DILocation(line: 178, column: 18, scope: !1524, inlinedAt: !2700)
!2709 = !DILocation(line: 1020, column: 10, scope: !2613, inlinedAt: !2695)
!2710 = !DILocation(line: 1021, column: 1, scope: !2613, inlinedAt: !2695)
!2711 = !DILocation(line: 1034, column: 3, scope: !2685)
!2712 = distinct !DISubprogram(name: "quote_n_mem", scope: !427, file: !427, line: 1049, type: !2713, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2715)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!70, !92, !70, !94}
!2715 = !{!2716, !2717, !2718}
!2716 = !DILocalVariable(name: "n", arg: 1, scope: !2712, file: !427, line: 1049, type: !92)
!2717 = !DILocalVariable(name: "arg", arg: 2, scope: !2712, file: !427, line: 1049, type: !70)
!2718 = !DILocalVariable(name: "argsize", arg: 3, scope: !2712, file: !427, line: 1049, type: !94)
!2719 = !DILocation(line: 0, scope: !2712)
!2720 = !DILocation(line: 1051, column: 10, scope: !2712)
!2721 = !DILocation(line: 1051, column: 3, scope: !2712)
!2722 = distinct !DISubprogram(name: "quote_mem", scope: !427, file: !427, line: 1055, type: !2723, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2725)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!70, !70, !94}
!2725 = !{!2726, !2727}
!2726 = !DILocalVariable(name: "arg", arg: 1, scope: !2722, file: !427, line: 1055, type: !70)
!2727 = !DILocalVariable(name: "argsize", arg: 2, scope: !2722, file: !427, line: 1055, type: !94)
!2728 = !DILocation(line: 0, scope: !2722)
!2729 = !DILocation(line: 0, scope: !2712, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 1057, column: 10, scope: !2722)
!2731 = !DILocation(line: 1051, column: 10, scope: !2712, inlinedAt: !2730)
!2732 = !DILocation(line: 1057, column: 3, scope: !2722)
!2733 = distinct !DISubprogram(name: "quote_n", scope: !427, file: !427, line: 1061, type: !2734, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2736)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!70, !92, !70}
!2736 = !{!2737, !2738}
!2737 = !DILocalVariable(name: "n", arg: 1, scope: !2733, file: !427, line: 1061, type: !92)
!2738 = !DILocalVariable(name: "arg", arg: 2, scope: !2733, file: !427, line: 1061, type: !70)
!2739 = !DILocation(line: 0, scope: !2733)
!2740 = !DILocation(line: 0, scope: !2712, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 1063, column: 10, scope: !2733)
!2742 = !DILocation(line: 1051, column: 10, scope: !2712, inlinedAt: !2741)
!2743 = !DILocation(line: 1063, column: 3, scope: !2733)
!2744 = distinct !DISubprogram(name: "quote", scope: !427, file: !427, line: 1067, type: !2745, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2747)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!70, !70}
!2747 = !{!2748}
!2748 = !DILocalVariable(name: "arg", arg: 1, scope: !2744, file: !427, line: 1067, type: !70)
!2749 = !DILocation(line: 0, scope: !2744)
!2750 = !DILocation(line: 0, scope: !2733, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 1069, column: 10, scope: !2744)
!2752 = !DILocation(line: 0, scope: !2712, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 1063, column: 10, scope: !2733, inlinedAt: !2751)
!2754 = !DILocation(line: 1051, column: 10, scope: !2712, inlinedAt: !2753)
!2755 = !DILocation(line: 1069, column: 3, scope: !2744)
!2756 = distinct !DISubprogram(name: "version_etc_arn", scope: !543, file: !543, line: 61, type: !2757, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2794)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{null, !2759, !70, !70, !70, !2793, !94}
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !2761)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !2762)
!2762 = !{!2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2761, file: !235, line: 51, baseType: !92, size: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2761, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2761, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2761, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2761, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2761, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2761, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2761, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2761, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2761, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2761, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2761, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2761, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2761, file: !235, line: 70, baseType: !2777, size: 64, offset: 832)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2761, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2761, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2761, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2761, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2761, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2761, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2761, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2761, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2761, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2761, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2761, file: !235, line: 93, baseType: !2777, size: 64, offset: 1344)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2761, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2761, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2761, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2761, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!2794 = !{!2795, !2796, !2797, !2798, !2799, !2800}
!2795 = !DILocalVariable(name: "stream", arg: 1, scope: !2756, file: !543, line: 61, type: !2759)
!2796 = !DILocalVariable(name: "command_name", arg: 2, scope: !2756, file: !543, line: 62, type: !70)
!2797 = !DILocalVariable(name: "package", arg: 3, scope: !2756, file: !543, line: 62, type: !70)
!2798 = !DILocalVariable(name: "version", arg: 4, scope: !2756, file: !543, line: 63, type: !70)
!2799 = !DILocalVariable(name: "authors", arg: 5, scope: !2756, file: !543, line: 64, type: !2793)
!2800 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2756, file: !543, line: 64, type: !94)
!2801 = !DILocation(line: 0, scope: !2756)
!2802 = !DILocation(line: 66, column: 7, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2756, file: !543, line: 66, column: 7)
!2804 = !DILocation(line: 66, column: 7, scope: !2756)
!2805 = !DILocation(line: 67, column: 5, scope: !2803)
!2806 = !DILocation(line: 69, column: 5, scope: !2803)
!2807 = !DILocation(line: 83, column: 3, scope: !2756)
!2808 = !DILocation(line: 85, column: 3, scope: !2756)
!2809 = !DILocation(line: 88, column: 3, scope: !2756)
!2810 = !DILocation(line: 95, column: 3, scope: !2756)
!2811 = !DILocation(line: 97, column: 3, scope: !2756)
!2812 = !DILocation(line: 105, column: 7, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2756, file: !543, line: 98, column: 5)
!2814 = !DILocation(line: 106, column: 7, scope: !2813)
!2815 = !DILocation(line: 109, column: 7, scope: !2813)
!2816 = !DILocation(line: 110, column: 7, scope: !2813)
!2817 = !DILocation(line: 113, column: 7, scope: !2813)
!2818 = !DILocation(line: 115, column: 7, scope: !2813)
!2819 = !DILocation(line: 120, column: 7, scope: !2813)
!2820 = !DILocation(line: 122, column: 7, scope: !2813)
!2821 = !DILocation(line: 127, column: 7, scope: !2813)
!2822 = !DILocation(line: 129, column: 7, scope: !2813)
!2823 = !DILocation(line: 134, column: 7, scope: !2813)
!2824 = !DILocation(line: 137, column: 7, scope: !2813)
!2825 = !DILocation(line: 142, column: 7, scope: !2813)
!2826 = !DILocation(line: 145, column: 7, scope: !2813)
!2827 = !DILocation(line: 150, column: 7, scope: !2813)
!2828 = !DILocation(line: 154, column: 7, scope: !2813)
!2829 = !DILocation(line: 159, column: 7, scope: !2813)
!2830 = !DILocation(line: 163, column: 7, scope: !2813)
!2831 = !DILocation(line: 170, column: 7, scope: !2813)
!2832 = !DILocation(line: 174, column: 7, scope: !2813)
!2833 = !DILocation(line: 176, column: 1, scope: !2756)
!2834 = distinct !DISubprogram(name: "version_etc_ar", scope: !543, file: !543, line: 183, type: !2835, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2837)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{null, !2759, !70, !70, !70, !2793}
!2837 = !{!2838, !2839, !2840, !2841, !2842, !2843}
!2838 = !DILocalVariable(name: "stream", arg: 1, scope: !2834, file: !543, line: 183, type: !2759)
!2839 = !DILocalVariable(name: "command_name", arg: 2, scope: !2834, file: !543, line: 184, type: !70)
!2840 = !DILocalVariable(name: "package", arg: 3, scope: !2834, file: !543, line: 184, type: !70)
!2841 = !DILocalVariable(name: "version", arg: 4, scope: !2834, file: !543, line: 185, type: !70)
!2842 = !DILocalVariable(name: "authors", arg: 5, scope: !2834, file: !543, line: 185, type: !2793)
!2843 = !DILocalVariable(name: "n_authors", scope: !2834, file: !543, line: 187, type: !94)
!2844 = !DILocation(line: 0, scope: !2834)
!2845 = !DILocation(line: 189, column: 8, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2834, file: !543, line: 189, column: 3)
!2847 = !DILocation(line: 189, scope: !2846)
!2848 = !DILocation(line: 189, column: 23, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2846, file: !543, line: 189, column: 3)
!2850 = !DILocation(line: 189, column: 3, scope: !2846)
!2851 = !DILocation(line: 189, column: 52, scope: !2849)
!2852 = distinct !{!2852, !2850, !2853, !855}
!2853 = !DILocation(line: 190, column: 5, scope: !2846)
!2854 = !DILocation(line: 191, column: 3, scope: !2834)
!2855 = !DILocation(line: 192, column: 1, scope: !2834)
!2856 = distinct !DISubprogram(name: "version_etc_va", scope: !543, file: !543, line: 199, type: !2857, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2867)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{null, !2759, !70, !70, !70, !2859}
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2861)
!2861 = !{!2862, !2864, !2865, !2866}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2860, file: !2863, line: 192, baseType: !76, size: 32)
!2863 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2860, file: !2863, line: 192, baseType: !76, size: 32, offset: 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2860, file: !2863, line: 192, baseType: !91, size: 64, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2860, file: !2863, line: 192, baseType: !91, size: 64, offset: 128)
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2873, !2874}
!2868 = !DILocalVariable(name: "stream", arg: 1, scope: !2856, file: !543, line: 199, type: !2759)
!2869 = !DILocalVariable(name: "command_name", arg: 2, scope: !2856, file: !543, line: 200, type: !70)
!2870 = !DILocalVariable(name: "package", arg: 3, scope: !2856, file: !543, line: 200, type: !70)
!2871 = !DILocalVariable(name: "version", arg: 4, scope: !2856, file: !543, line: 201, type: !70)
!2872 = !DILocalVariable(name: "authors", arg: 5, scope: !2856, file: !543, line: 201, type: !2859)
!2873 = !DILocalVariable(name: "n_authors", scope: !2856, file: !543, line: 203, type: !94)
!2874 = !DILocalVariable(name: "authtab", scope: !2856, file: !543, line: 204, type: !2875)
!2875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 640, elements: !40)
!2876 = !DILocation(line: 0, scope: !2856)
!2877 = !DILocation(line: 204, column: 3, scope: !2856)
!2878 = !DILocation(line: 204, column: 15, scope: !2856)
!2879 = !DILocation(line: 208, column: 35, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !543, line: 206, column: 3)
!2881 = distinct !DILexicalBlock(scope: !2856, file: !543, line: 206, column: 3)
!2882 = !DILocation(line: 208, column: 33, scope: !2880)
!2883 = !DILocation(line: 208, column: 67, scope: !2880)
!2884 = !DILocation(line: 206, column: 3, scope: !2881)
!2885 = !DILocation(line: 208, column: 14, scope: !2880)
!2886 = !DILocation(line: 0, scope: !2881)
!2887 = !DILocation(line: 211, column: 3, scope: !2856)
!2888 = !DILocation(line: 213, column: 1, scope: !2856)
!2889 = distinct !DISubprogram(name: "version_etc", scope: !543, file: !543, line: 230, type: !2890, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{null, !2759, !70, !70, !70, null}
!2892 = !{!2893, !2894, !2895, !2896, !2897}
!2893 = !DILocalVariable(name: "stream", arg: 1, scope: !2889, file: !543, line: 230, type: !2759)
!2894 = !DILocalVariable(name: "command_name", arg: 2, scope: !2889, file: !543, line: 231, type: !70)
!2895 = !DILocalVariable(name: "package", arg: 3, scope: !2889, file: !543, line: 231, type: !70)
!2896 = !DILocalVariable(name: "version", arg: 4, scope: !2889, file: !543, line: 232, type: !70)
!2897 = !DILocalVariable(name: "authors", scope: !2889, file: !543, line: 234, type: !2898)
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !803, line: 52, baseType: !2899)
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1219, line: 14, baseType: !2900)
!2900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2863, baseType: !2901)
!2901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2860, size: 192, elements: !35)
!2902 = !DILocation(line: 0, scope: !2889)
!2903 = !DILocation(line: 234, column: 3, scope: !2889)
!2904 = !DILocation(line: 234, column: 11, scope: !2889)
!2905 = !DILocation(line: 235, column: 3, scope: !2889)
!2906 = !DILocation(line: 236, column: 3, scope: !2889)
!2907 = !DILocation(line: 237, column: 3, scope: !2889)
!2908 = !DILocation(line: 238, column: 1, scope: !2889)
!2909 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !543, file: !543, line: 241, type: !359, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !792)
!2910 = !DILocation(line: 243, column: 3, scope: !2909)
!2911 = !DILocation(line: 248, column: 3, scope: !2909)
!2912 = !DILocation(line: 254, column: 3, scope: !2909)
!2913 = !DILocation(line: 259, column: 3, scope: !2909)
!2914 = !DILocation(line: 261, column: 1, scope: !2909)
!2915 = distinct !DISubprogram(name: "xnrealloc", scope: !2916, file: !2916, line: 147, type: !2917, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2919)
!2916 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!91, !91, !94, !94}
!2919 = !{!2920, !2921, !2922}
!2920 = !DILocalVariable(name: "p", arg: 1, scope: !2915, file: !2916, line: 147, type: !91)
!2921 = !DILocalVariable(name: "n", arg: 2, scope: !2915, file: !2916, line: 147, type: !94)
!2922 = !DILocalVariable(name: "s", arg: 3, scope: !2915, file: !2916, line: 147, type: !94)
!2923 = !DILocation(line: 0, scope: !2915)
!2924 = !DILocalVariable(name: "p", arg: 1, scope: !2925, file: !675, line: 83, type: !91)
!2925 = distinct !DISubprogram(name: "xreallocarray", scope: !675, file: !675, line: 83, type: !2917, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2926)
!2926 = !{!2924, !2927, !2928}
!2927 = !DILocalVariable(name: "n", arg: 2, scope: !2925, file: !675, line: 83, type: !94)
!2928 = !DILocalVariable(name: "s", arg: 3, scope: !2925, file: !675, line: 83, type: !94)
!2929 = !DILocation(line: 0, scope: !2925, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 149, column: 10, scope: !2915)
!2931 = !DILocation(line: 85, column: 25, scope: !2925, inlinedAt: !2930)
!2932 = !DILocalVariable(name: "p", arg: 1, scope: !2933, file: !675, line: 37, type: !91)
!2933 = distinct !DISubprogram(name: "check_nonnull", scope: !675, file: !675, line: 37, type: !2934, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2936)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!91, !91}
!2936 = !{!2932}
!2937 = !DILocation(line: 0, scope: !2933, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 85, column: 10, scope: !2925, inlinedAt: !2930)
!2939 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !2938)
!2940 = distinct !DILexicalBlock(scope: !2933, file: !675, line: 39, column: 7)
!2941 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !2938)
!2942 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !2938)
!2943 = !DILocation(line: 149, column: 3, scope: !2915)
!2944 = !DILocation(line: 0, scope: !2925)
!2945 = !DILocation(line: 85, column: 25, scope: !2925)
!2946 = !DILocation(line: 0, scope: !2933, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 85, column: 10, scope: !2925)
!2948 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !2947)
!2949 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !2947)
!2950 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !2947)
!2951 = !DILocation(line: 85, column: 3, scope: !2925)
!2952 = distinct !DISubprogram(name: "xmalloc", scope: !675, file: !675, line: 47, type: !2953, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!91, !94}
!2955 = !{!2956}
!2956 = !DILocalVariable(name: "s", arg: 1, scope: !2952, file: !675, line: 47, type: !94)
!2957 = !DILocation(line: 0, scope: !2952)
!2958 = !DILocation(line: 49, column: 25, scope: !2952)
!2959 = !DILocation(line: 0, scope: !2933, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 49, column: 10, scope: !2952)
!2961 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !2960)
!2962 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !2960)
!2963 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !2960)
!2964 = !DILocation(line: 49, column: 3, scope: !2952)
!2965 = !DISubprogram(name: "malloc", scope: !933, file: !933, line: 540, type: !2953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!2966 = distinct !DISubprogram(name: "ximalloc", scope: !675, file: !675, line: 53, type: !2967, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!91, !694}
!2969 = !{!2970}
!2970 = !DILocalVariable(name: "s", arg: 1, scope: !2966, file: !675, line: 53, type: !694)
!2971 = !DILocation(line: 0, scope: !2966)
!2972 = !DILocalVariable(name: "s", arg: 1, scope: !2973, file: !2974, line: 55, type: !694)
!2973 = distinct !DISubprogram(name: "imalloc", scope: !2974, file: !2974, line: 55, type: !2967, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2975)
!2974 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2975 = !{!2972}
!2976 = !DILocation(line: 0, scope: !2973, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 55, column: 25, scope: !2966)
!2978 = !DILocation(line: 57, column: 26, scope: !2973, inlinedAt: !2977)
!2979 = !DILocation(line: 0, scope: !2933, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 55, column: 10, scope: !2966)
!2981 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !2980)
!2982 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !2980)
!2983 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !2980)
!2984 = !DILocation(line: 55, column: 3, scope: !2966)
!2985 = distinct !DISubprogram(name: "xcharalloc", scope: !675, file: !675, line: 59, type: !2986, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2988)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!239, !94}
!2988 = !{!2989}
!2989 = !DILocalVariable(name: "n", arg: 1, scope: !2985, file: !675, line: 59, type: !94)
!2990 = !DILocation(line: 0, scope: !2985)
!2991 = !DILocation(line: 0, scope: !2952, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 61, column: 10, scope: !2985)
!2993 = !DILocation(line: 49, column: 25, scope: !2952, inlinedAt: !2992)
!2994 = !DILocation(line: 0, scope: !2933, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 49, column: 10, scope: !2952, inlinedAt: !2992)
!2996 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !2995)
!2997 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !2995)
!2998 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !2995)
!2999 = !DILocation(line: 61, column: 3, scope: !2985)
!3000 = distinct !DISubprogram(name: "xrealloc", scope: !675, file: !675, line: 68, type: !3001, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !3003)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!91, !91, !94}
!3003 = !{!3004, !3005}
!3004 = !DILocalVariable(name: "p", arg: 1, scope: !3000, file: !675, line: 68, type: !91)
!3005 = !DILocalVariable(name: "s", arg: 2, scope: !3000, file: !675, line: 68, type: !94)
!3006 = !DILocation(line: 0, scope: !3000)
!3007 = !DILocalVariable(name: "ptr", arg: 1, scope: !3008, file: !3009, line: 2057, type: !91)
!3008 = distinct !DISubprogram(name: "rpl_realloc", scope: !3009, file: !3009, line: 2057, type: !3001, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !3010)
!3009 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3010 = !{!3007, !3011}
!3011 = !DILocalVariable(name: "size", arg: 2, scope: !3008, file: !3009, line: 2057, type: !94)
!3012 = !DILocation(line: 0, scope: !3008, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 70, column: 25, scope: !3000)
!3014 = !DILocation(line: 2059, column: 24, scope: !3008, inlinedAt: !3013)
!3015 = !DILocation(line: 2059, column: 10, scope: !3008, inlinedAt: !3013)
!3016 = !DILocation(line: 0, scope: !2933, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 70, column: 10, scope: !3000)
!3018 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !3017)
!3019 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !3017)
!3020 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !3017)
!3021 = !DILocation(line: 70, column: 3, scope: !3000)
!3022 = !DISubprogram(name: "realloc", scope: !933, file: !933, line: 551, type: !3001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!3023 = distinct !DISubprogram(name: "xirealloc", scope: !675, file: !675, line: 74, type: !3024, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !3026)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!91, !91, !694}
!3026 = !{!3027, !3028}
!3027 = !DILocalVariable(name: "p", arg: 1, scope: !3023, file: !675, line: 74, type: !91)
!3028 = !DILocalVariable(name: "s", arg: 2, scope: !3023, file: !675, line: 74, type: !694)
!3029 = !DILocation(line: 0, scope: !3023)
!3030 = !DILocalVariable(name: "p", arg: 1, scope: !3031, file: !2974, line: 66, type: !91)
!3031 = distinct !DISubprogram(name: "irealloc", scope: !2974, file: !2974, line: 66, type: !3024, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !3032)
!3032 = !{!3030, !3033}
!3033 = !DILocalVariable(name: "s", arg: 2, scope: !3031, file: !2974, line: 66, type: !694)
!3034 = !DILocation(line: 0, scope: !3031, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 76, column: 25, scope: !3023)
!3036 = !DILocation(line: 0, scope: !3008, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 68, column: 26, scope: !3031, inlinedAt: !3035)
!3038 = !DILocation(line: 2059, column: 24, scope: !3008, inlinedAt: !3037)
!3039 = !DILocation(line: 2059, column: 10, scope: !3008, inlinedAt: !3037)
!3040 = !DILocation(line: 0, scope: !2933, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 76, column: 10, scope: !3023)
!3042 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !3041)
!3043 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !3041)
!3044 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !3041)
!3045 = !DILocation(line: 76, column: 3, scope: !3023)
!3046 = distinct !DISubprogram(name: "xireallocarray", scope: !675, file: !675, line: 89, type: !3047, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!91, !91, !694, !694}
!3049 = !{!3050, !3051, !3052}
!3050 = !DILocalVariable(name: "p", arg: 1, scope: !3046, file: !675, line: 89, type: !91)
!3051 = !DILocalVariable(name: "n", arg: 2, scope: !3046, file: !675, line: 89, type: !694)
!3052 = !DILocalVariable(name: "s", arg: 3, scope: !3046, file: !675, line: 89, type: !694)
!3053 = !DILocation(line: 0, scope: !3046)
!3054 = !DILocalVariable(name: "p", arg: 1, scope: !3055, file: !2974, line: 98, type: !91)
!3055 = distinct !DISubprogram(name: "ireallocarray", scope: !2974, file: !2974, line: 98, type: !3047, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !3056)
!3056 = !{!3054, !3057, !3058}
!3057 = !DILocalVariable(name: "n", arg: 2, scope: !3055, file: !2974, line: 98, type: !694)
!3058 = !DILocalVariable(name: "s", arg: 3, scope: !3055, file: !2974, line: 98, type: !694)
!3059 = !DILocation(line: 0, scope: !3055, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 91, column: 25, scope: !3046)
!3061 = !DILocation(line: 101, column: 13, scope: !3055, inlinedAt: !3060)
!3062 = !DILocation(line: 0, scope: !2933, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 91, column: 10, scope: !3046)
!3064 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !3063)
!3065 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !3063)
!3066 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !3063)
!3067 = !DILocation(line: 91, column: 3, scope: !3046)
!3068 = distinct !DISubprogram(name: "xnmalloc", scope: !675, file: !675, line: 98, type: !3069, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!91, !94, !94}
!3071 = !{!3072, !3073}
!3072 = !DILocalVariable(name: "n", arg: 1, scope: !3068, file: !675, line: 98, type: !94)
!3073 = !DILocalVariable(name: "s", arg: 2, scope: !3068, file: !675, line: 98, type: !94)
!3074 = !DILocation(line: 0, scope: !3068)
!3075 = !DILocation(line: 0, scope: !2925, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 100, column: 10, scope: !3068)
!3077 = !DILocation(line: 85, column: 25, scope: !2925, inlinedAt: !3076)
!3078 = !DILocation(line: 0, scope: !2933, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 85, column: 10, scope: !2925, inlinedAt: !3076)
!3080 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !3079)
!3081 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !3079)
!3082 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !3079)
!3083 = !DILocation(line: 100, column: 3, scope: !3068)
!3084 = distinct !DISubprogram(name: "xinmalloc", scope: !675, file: !675, line: 104, type: !3085, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !3087)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!91, !694, !694}
!3087 = !{!3088, !3089}
!3088 = !DILocalVariable(name: "n", arg: 1, scope: !3084, file: !675, line: 104, type: !694)
!3089 = !DILocalVariable(name: "s", arg: 2, scope: !3084, file: !675, line: 104, type: !694)
!3090 = !DILocation(line: 0, scope: !3084)
!3091 = !DILocation(line: 0, scope: !3046, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 106, column: 10, scope: !3084)
!3093 = !DILocation(line: 0, scope: !3055, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 91, column: 25, scope: !3046, inlinedAt: !3092)
!3095 = !DILocation(line: 101, column: 13, scope: !3055, inlinedAt: !3094)
!3096 = !DILocation(line: 0, scope: !2933, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 91, column: 10, scope: !3046, inlinedAt: !3092)
!3098 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !3097)
!3099 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !3097)
!3100 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !3097)
!3101 = !DILocation(line: 106, column: 3, scope: !3084)
!3102 = distinct !DISubprogram(name: "x2realloc", scope: !675, file: !675, line: 116, type: !3103, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !3105)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!91, !91, !681}
!3105 = !{!3106, !3107}
!3106 = !DILocalVariable(name: "p", arg: 1, scope: !3102, file: !675, line: 116, type: !91)
!3107 = !DILocalVariable(name: "ps", arg: 2, scope: !3102, file: !675, line: 116, type: !681)
!3108 = !DILocation(line: 0, scope: !3102)
!3109 = !DILocation(line: 0, scope: !678, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 118, column: 10, scope: !3102)
!3111 = !DILocation(line: 178, column: 14, scope: !678, inlinedAt: !3110)
!3112 = !DILocation(line: 180, column: 9, scope: !3113, inlinedAt: !3110)
!3113 = distinct !DILexicalBlock(scope: !678, file: !675, line: 180, column: 7)
!3114 = !DILocation(line: 180, column: 7, scope: !678, inlinedAt: !3110)
!3115 = !DILocation(line: 182, column: 13, scope: !3116, inlinedAt: !3110)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !675, line: 182, column: 11)
!3117 = distinct !DILexicalBlock(scope: !3113, file: !675, line: 181, column: 5)
!3118 = !DILocation(line: 182, column: 11, scope: !3117, inlinedAt: !3110)
!3119 = !DILocation(line: 197, column: 11, scope: !3120, inlinedAt: !3110)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !675, line: 197, column: 11)
!3121 = distinct !DILexicalBlock(scope: !3113, file: !675, line: 195, column: 5)
!3122 = !DILocation(line: 197, column: 11, scope: !3121, inlinedAt: !3110)
!3123 = !DILocation(line: 198, column: 9, scope: !3120, inlinedAt: !3110)
!3124 = !DILocation(line: 0, scope: !2925, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 201, column: 7, scope: !678, inlinedAt: !3110)
!3126 = !DILocation(line: 85, column: 25, scope: !2925, inlinedAt: !3125)
!3127 = !DILocation(line: 0, scope: !2933, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 85, column: 10, scope: !2925, inlinedAt: !3125)
!3129 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !3128)
!3130 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !3128)
!3131 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !3128)
!3132 = !DILocation(line: 202, column: 7, scope: !678, inlinedAt: !3110)
!3133 = !DILocation(line: 118, column: 3, scope: !3102)
!3134 = !DILocation(line: 0, scope: !678)
!3135 = !DILocation(line: 178, column: 14, scope: !678)
!3136 = !DILocation(line: 180, column: 9, scope: !3113)
!3137 = !DILocation(line: 180, column: 7, scope: !678)
!3138 = !DILocation(line: 182, column: 13, scope: !3116)
!3139 = !DILocation(line: 182, column: 11, scope: !3117)
!3140 = !DILocation(line: 190, column: 30, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3116, file: !675, line: 183, column: 9)
!3142 = !DILocation(line: 191, column: 16, scope: !3141)
!3143 = !DILocation(line: 191, column: 13, scope: !3141)
!3144 = !DILocation(line: 192, column: 9, scope: !3141)
!3145 = !DILocation(line: 197, column: 11, scope: !3120)
!3146 = !DILocation(line: 197, column: 11, scope: !3121)
!3147 = !DILocation(line: 198, column: 9, scope: !3120)
!3148 = !DILocation(line: 0, scope: !2925, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 201, column: 7, scope: !678)
!3150 = !DILocation(line: 85, column: 25, scope: !2925, inlinedAt: !3149)
!3151 = !DILocation(line: 0, scope: !2933, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 85, column: 10, scope: !2925, inlinedAt: !3149)
!3153 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !3152)
!3154 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !3152)
!3155 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !3152)
!3156 = !DILocation(line: 202, column: 7, scope: !678)
!3157 = !DILocation(line: 203, column: 3, scope: !678)
!3158 = !DILocation(line: 0, scope: !690)
!3159 = !DILocation(line: 230, column: 14, scope: !690)
!3160 = !DILocation(line: 238, column: 7, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !690, file: !675, line: 238, column: 7)
!3162 = !DILocation(line: 238, column: 7, scope: !690)
!3163 = !DILocation(line: 240, column: 9, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !690, file: !675, line: 240, column: 7)
!3165 = !DILocation(line: 240, column: 18, scope: !3164)
!3166 = !DILocation(line: 253, column: 8, scope: !690)
!3167 = !DILocation(line: 258, column: 27, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !675, line: 257, column: 5)
!3169 = distinct !DILexicalBlock(scope: !690, file: !675, line: 256, column: 7)
!3170 = !DILocation(line: 259, column: 50, scope: !3168)
!3171 = !DILocation(line: 259, column: 32, scope: !3168)
!3172 = !DILocation(line: 260, column: 5, scope: !3168)
!3173 = !DILocation(line: 262, column: 9, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !690, file: !675, line: 262, column: 7)
!3175 = !DILocation(line: 262, column: 7, scope: !690)
!3176 = !DILocation(line: 263, column: 9, scope: !3174)
!3177 = !DILocation(line: 263, column: 5, scope: !3174)
!3178 = !DILocation(line: 264, column: 9, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !690, file: !675, line: 264, column: 7)
!3180 = !DILocation(line: 264, column: 14, scope: !3179)
!3181 = !DILocation(line: 265, column: 7, scope: !3179)
!3182 = !DILocation(line: 265, column: 11, scope: !3179)
!3183 = !DILocation(line: 266, column: 11, scope: !3179)
!3184 = !DILocation(line: 267, column: 14, scope: !3179)
!3185 = !DILocation(line: 264, column: 7, scope: !690)
!3186 = !DILocation(line: 268, column: 5, scope: !3179)
!3187 = !DILocation(line: 0, scope: !3000, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 269, column: 8, scope: !690)
!3189 = !DILocation(line: 0, scope: !3008, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 70, column: 25, scope: !3000, inlinedAt: !3188)
!3191 = !DILocation(line: 2059, column: 24, scope: !3008, inlinedAt: !3190)
!3192 = !DILocation(line: 2059, column: 10, scope: !3008, inlinedAt: !3190)
!3193 = !DILocation(line: 0, scope: !2933, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 70, column: 10, scope: !3000, inlinedAt: !3188)
!3195 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !3194)
!3196 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !3194)
!3197 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !3194)
!3198 = !DILocation(line: 270, column: 7, scope: !690)
!3199 = !DILocation(line: 271, column: 3, scope: !690)
!3200 = distinct !DISubprogram(name: "xzalloc", scope: !675, file: !675, line: 279, type: !2953, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !3201)
!3201 = !{!3202}
!3202 = !DILocalVariable(name: "s", arg: 1, scope: !3200, file: !675, line: 279, type: !94)
!3203 = !DILocation(line: 0, scope: !3200)
!3204 = !DILocalVariable(name: "n", arg: 1, scope: !3205, file: !675, line: 294, type: !94)
!3205 = distinct !DISubprogram(name: "xcalloc", scope: !675, file: !675, line: 294, type: !3069, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !3206)
!3206 = !{!3204, !3207}
!3207 = !DILocalVariable(name: "s", arg: 2, scope: !3205, file: !675, line: 294, type: !94)
!3208 = !DILocation(line: 0, scope: !3205, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 281, column: 10, scope: !3200)
!3210 = !DILocation(line: 296, column: 25, scope: !3205, inlinedAt: !3209)
!3211 = !DILocation(line: 0, scope: !2933, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 296, column: 10, scope: !3205, inlinedAt: !3209)
!3213 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !3212)
!3214 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !3212)
!3215 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !3212)
!3216 = !DILocation(line: 281, column: 3, scope: !3200)
!3217 = !DISubprogram(name: "calloc", scope: !933, file: !933, line: 543, type: !3069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!3218 = !DILocation(line: 0, scope: !3205)
!3219 = !DILocation(line: 296, column: 25, scope: !3205)
!3220 = !DILocation(line: 0, scope: !2933, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 296, column: 10, scope: !3205)
!3222 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !3221)
!3223 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !3221)
!3224 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !3221)
!3225 = !DILocation(line: 296, column: 3, scope: !3205)
!3226 = distinct !DISubprogram(name: "xizalloc", scope: !675, file: !675, line: 285, type: !2967, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !3227)
!3227 = !{!3228}
!3228 = !DILocalVariable(name: "s", arg: 1, scope: !3226, file: !675, line: 285, type: !694)
!3229 = !DILocation(line: 0, scope: !3226)
!3230 = !DILocalVariable(name: "n", arg: 1, scope: !3231, file: !675, line: 300, type: !694)
!3231 = distinct !DISubprogram(name: "xicalloc", scope: !675, file: !675, line: 300, type: !3085, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !3232)
!3232 = !{!3230, !3233}
!3233 = !DILocalVariable(name: "s", arg: 2, scope: !3231, file: !675, line: 300, type: !694)
!3234 = !DILocation(line: 0, scope: !3231, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 287, column: 10, scope: !3226)
!3236 = !DILocalVariable(name: "n", arg: 1, scope: !3237, file: !2974, line: 77, type: !694)
!3237 = distinct !DISubprogram(name: "icalloc", scope: !2974, file: !2974, line: 77, type: !3085, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !3238)
!3238 = !{!3236, !3239}
!3239 = !DILocalVariable(name: "s", arg: 2, scope: !3237, file: !2974, line: 77, type: !694)
!3240 = !DILocation(line: 0, scope: !3237, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 302, column: 25, scope: !3231, inlinedAt: !3235)
!3242 = !DILocation(line: 91, column: 10, scope: !3237, inlinedAt: !3241)
!3243 = !DILocation(line: 0, scope: !2933, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 302, column: 10, scope: !3231, inlinedAt: !3235)
!3245 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !3244)
!3246 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !3244)
!3247 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !3244)
!3248 = !DILocation(line: 287, column: 3, scope: !3226)
!3249 = !DILocation(line: 0, scope: !3231)
!3250 = !DILocation(line: 0, scope: !3237, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 302, column: 25, scope: !3231)
!3252 = !DILocation(line: 91, column: 10, scope: !3237, inlinedAt: !3251)
!3253 = !DILocation(line: 0, scope: !2933, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 302, column: 10, scope: !3231)
!3255 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !3254)
!3256 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !3254)
!3257 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !3254)
!3258 = !DILocation(line: 302, column: 3, scope: !3231)
!3259 = distinct !DISubprogram(name: "xmemdup", scope: !675, file: !675, line: 310, type: !3260, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !3262)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!91, !957, !94}
!3262 = !{!3263, !3264}
!3263 = !DILocalVariable(name: "p", arg: 1, scope: !3259, file: !675, line: 310, type: !957)
!3264 = !DILocalVariable(name: "s", arg: 2, scope: !3259, file: !675, line: 310, type: !94)
!3265 = !DILocation(line: 0, scope: !3259)
!3266 = !DILocation(line: 0, scope: !2952, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 312, column: 18, scope: !3259)
!3268 = !DILocation(line: 49, column: 25, scope: !2952, inlinedAt: !3267)
!3269 = !DILocation(line: 0, scope: !2933, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 49, column: 10, scope: !2952, inlinedAt: !3267)
!3271 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !3270)
!3272 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !3270)
!3273 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !3270)
!3274 = !DILocalVariable(name: "__dest", arg: 1, scope: !3275, file: !1427, line: 26, type: !3278)
!3275 = distinct !DISubprogram(name: "memcpy", scope: !1427, file: !1427, line: 26, type: !3276, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !3279)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!91, !3278, !956, !94}
!3278 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!3279 = !{!3274, !3280, !3281}
!3280 = !DILocalVariable(name: "__src", arg: 2, scope: !3275, file: !1427, line: 26, type: !956)
!3281 = !DILocalVariable(name: "__len", arg: 3, scope: !3275, file: !1427, line: 26, type: !94)
!3282 = !DILocation(line: 0, scope: !3275, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 312, column: 10, scope: !3259)
!3284 = !DILocation(line: 29, column: 10, scope: !3275, inlinedAt: !3283)
!3285 = !DILocation(line: 312, column: 3, scope: !3259)
!3286 = distinct !DISubprogram(name: "ximemdup", scope: !675, file: !675, line: 316, type: !3287, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !3289)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!91, !957, !694}
!3289 = !{!3290, !3291}
!3290 = !DILocalVariable(name: "p", arg: 1, scope: !3286, file: !675, line: 316, type: !957)
!3291 = !DILocalVariable(name: "s", arg: 2, scope: !3286, file: !675, line: 316, type: !694)
!3292 = !DILocation(line: 0, scope: !3286)
!3293 = !DILocation(line: 0, scope: !2966, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 318, column: 18, scope: !3286)
!3295 = !DILocation(line: 0, scope: !2973, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 55, column: 25, scope: !2966, inlinedAt: !3294)
!3297 = !DILocation(line: 57, column: 26, scope: !2973, inlinedAt: !3296)
!3298 = !DILocation(line: 0, scope: !2933, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 55, column: 10, scope: !2966, inlinedAt: !3294)
!3300 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !3299)
!3301 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !3299)
!3302 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !3299)
!3303 = !DILocation(line: 0, scope: !3275, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 318, column: 10, scope: !3286)
!3305 = !DILocation(line: 29, column: 10, scope: !3275, inlinedAt: !3304)
!3306 = !DILocation(line: 318, column: 3, scope: !3286)
!3307 = distinct !DISubprogram(name: "ximemdup0", scope: !675, file: !675, line: 325, type: !3308, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!239, !957, !694}
!3310 = !{!3311, !3312, !3313}
!3311 = !DILocalVariable(name: "p", arg: 1, scope: !3307, file: !675, line: 325, type: !957)
!3312 = !DILocalVariable(name: "s", arg: 2, scope: !3307, file: !675, line: 325, type: !694)
!3313 = !DILocalVariable(name: "result", scope: !3307, file: !675, line: 327, type: !239)
!3314 = !DILocation(line: 0, scope: !3307)
!3315 = !DILocation(line: 327, column: 30, scope: !3307)
!3316 = !DILocation(line: 0, scope: !2966, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 327, column: 18, scope: !3307)
!3318 = !DILocation(line: 0, scope: !2973, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 55, column: 25, scope: !2966, inlinedAt: !3317)
!3320 = !DILocation(line: 57, column: 26, scope: !2973, inlinedAt: !3319)
!3321 = !DILocation(line: 0, scope: !2933, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 55, column: 10, scope: !2966, inlinedAt: !3317)
!3323 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !3322)
!3324 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !3322)
!3325 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !3322)
!3326 = !DILocation(line: 328, column: 3, scope: !3307)
!3327 = !DILocation(line: 328, column: 13, scope: !3307)
!3328 = !DILocation(line: 0, scope: !3275, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 329, column: 10, scope: !3307)
!3330 = !DILocation(line: 29, column: 10, scope: !3275, inlinedAt: !3329)
!3331 = !DILocation(line: 329, column: 3, scope: !3307)
!3332 = distinct !DISubprogram(name: "xstrdup", scope: !675, file: !675, line: 335, type: !935, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !3333)
!3333 = !{!3334}
!3334 = !DILocalVariable(name: "string", arg: 1, scope: !3332, file: !675, line: 335, type: !70)
!3335 = !DILocation(line: 0, scope: !3332)
!3336 = !DILocation(line: 337, column: 27, scope: !3332)
!3337 = !DILocation(line: 337, column: 43, scope: !3332)
!3338 = !DILocation(line: 0, scope: !3259, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 337, column: 10, scope: !3332)
!3340 = !DILocation(line: 0, scope: !2952, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 312, column: 18, scope: !3259, inlinedAt: !3339)
!3342 = !DILocation(line: 49, column: 25, scope: !2952, inlinedAt: !3341)
!3343 = !DILocation(line: 0, scope: !2933, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 49, column: 10, scope: !2952, inlinedAt: !3341)
!3345 = !DILocation(line: 39, column: 8, scope: !2940, inlinedAt: !3344)
!3346 = !DILocation(line: 39, column: 7, scope: !2933, inlinedAt: !3344)
!3347 = !DILocation(line: 40, column: 5, scope: !2940, inlinedAt: !3344)
!3348 = !DILocation(line: 0, scope: !3275, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 312, column: 10, scope: !3259, inlinedAt: !3339)
!3350 = !DILocation(line: 29, column: 10, scope: !3275, inlinedAt: !3349)
!3351 = !DILocation(line: 337, column: 3, scope: !3332)
!3352 = distinct !DISubprogram(name: "xalloc_die", scope: !639, file: !639, line: 32, type: !359, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3353)
!3353 = !{!3354}
!3354 = !DILocalVariable(name: "__errstatus", scope: !3355, file: !639, line: 34, type: !3356)
!3355 = distinct !DILexicalBlock(scope: !3352, file: !639, line: 34, column: 3)
!3356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!3357 = !DILocation(line: 34, column: 3, scope: !3355)
!3358 = !DILocation(line: 0, scope: !3355)
!3359 = !DILocation(line: 40, column: 3, scope: !3352)
!3360 = distinct !DISubprogram(name: "close_stream", scope: !711, file: !711, line: 55, type: !3361, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3397)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!92, !3363}
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3365)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3366)
!3366 = !{!3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3365, file: !235, line: 51, baseType: !92, size: 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3365, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3365, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3365, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3365, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3365, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3365, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3365, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3365, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3365, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3365, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3365, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3365, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3365, file: !235, line: 70, baseType: !3381, size: 64, offset: 832)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3365, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3365, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3365, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3365, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3365, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3365, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3365, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3365, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3365, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3365, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3365, file: !235, line: 93, baseType: !3381, size: 64, offset: 1344)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3365, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3365, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3365, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3365, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!3397 = !{!3398, !3399, !3401, !3402}
!3398 = !DILocalVariable(name: "stream", arg: 1, scope: !3360, file: !711, line: 55, type: !3363)
!3399 = !DILocalVariable(name: "some_pending", scope: !3360, file: !711, line: 57, type: !3400)
!3400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!3401 = !DILocalVariable(name: "prev_fail", scope: !3360, file: !711, line: 58, type: !3400)
!3402 = !DILocalVariable(name: "fclose_fail", scope: !3360, file: !711, line: 59, type: !3400)
!3403 = !DILocation(line: 0, scope: !3360)
!3404 = !DILocation(line: 57, column: 30, scope: !3360)
!3405 = !DILocalVariable(name: "__stream", arg: 1, scope: !3406, file: !1174, line: 135, type: !3363)
!3406 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1174, file: !1174, line: 135, type: !3361, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3407)
!3407 = !{!3405}
!3408 = !DILocation(line: 0, scope: !3406, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 58, column: 27, scope: !3360)
!3410 = !DILocation(line: 137, column: 10, scope: !3406, inlinedAt: !3409)
!3411 = !{!1183, !809, i64 0}
!3412 = !DILocation(line: 58, column: 43, scope: !3360)
!3413 = !DILocation(line: 59, column: 29, scope: !3360)
!3414 = !DILocation(line: 59, column: 45, scope: !3360)
!3415 = !DILocation(line: 69, column: 17, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3360, file: !711, line: 69, column: 7)
!3417 = !DILocation(line: 57, column: 50, scope: !3360)
!3418 = !DILocation(line: 69, column: 33, scope: !3416)
!3419 = !DILocation(line: 69, column: 53, scope: !3416)
!3420 = !DILocation(line: 69, column: 59, scope: !3416)
!3421 = !DILocation(line: 69, column: 7, scope: !3360)
!3422 = !DILocation(line: 71, column: 11, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3416, file: !711, line: 70, column: 5)
!3424 = !DILocation(line: 72, column: 9, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3423, file: !711, line: 71, column: 11)
!3426 = !DILocation(line: 72, column: 15, scope: !3425)
!3427 = !DILocation(line: 77, column: 1, scope: !3360)
!3428 = !DISubprogram(name: "__fpending", scope: !3429, file: !3429, line: 75, type: !3430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!3429 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!94, !3363}
!3432 = distinct !DISubprogram(name: "rpl_fclose", scope: !713, file: !713, line: 58, type: !3433, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3469)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!92, !3435}
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3437)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3438)
!3438 = !{!3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3437, file: !235, line: 51, baseType: !92, size: 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3437, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3437, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3437, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3437, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3437, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3437, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3437, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3437, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3437, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3437, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3437, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3437, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3437, file: !235, line: 70, baseType: !3453, size: 64, offset: 832)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3437, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3437, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3437, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3437, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3437, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3437, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3437, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3437, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3437, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3437, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3437, file: !235, line: 93, baseType: !3453, size: 64, offset: 1344)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3437, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3437, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3437, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3437, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!3469 = !{!3470, !3471, !3472, !3473}
!3470 = !DILocalVariable(name: "fp", arg: 1, scope: !3432, file: !713, line: 58, type: !3435)
!3471 = !DILocalVariable(name: "saved_errno", scope: !3432, file: !713, line: 60, type: !92)
!3472 = !DILocalVariable(name: "fd", scope: !3432, file: !713, line: 63, type: !92)
!3473 = !DILocalVariable(name: "result", scope: !3432, file: !713, line: 74, type: !92)
!3474 = !DILocation(line: 0, scope: !3432)
!3475 = !DILocation(line: 63, column: 12, scope: !3432)
!3476 = !DILocation(line: 64, column: 10, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3432, file: !713, line: 64, column: 7)
!3478 = !DILocation(line: 64, column: 7, scope: !3432)
!3479 = !DILocation(line: 65, column: 12, scope: !3477)
!3480 = !DILocation(line: 65, column: 5, scope: !3477)
!3481 = !DILocation(line: 70, column: 9, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3432, file: !713, line: 70, column: 7)
!3483 = !DILocation(line: 70, column: 23, scope: !3482)
!3484 = !DILocation(line: 70, column: 33, scope: !3482)
!3485 = !DILocation(line: 70, column: 26, scope: !3482)
!3486 = !DILocation(line: 70, column: 59, scope: !3482)
!3487 = !DILocation(line: 71, column: 7, scope: !3482)
!3488 = !DILocation(line: 71, column: 10, scope: !3482)
!3489 = !DILocation(line: 70, column: 7, scope: !3432)
!3490 = !DILocation(line: 100, column: 12, scope: !3432)
!3491 = !DILocation(line: 105, column: 7, scope: !3432)
!3492 = !DILocation(line: 72, column: 19, scope: !3482)
!3493 = !DILocation(line: 105, column: 19, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3432, file: !713, line: 105, column: 7)
!3495 = !DILocation(line: 107, column: 13, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3494, file: !713, line: 106, column: 5)
!3497 = !DILocation(line: 109, column: 5, scope: !3496)
!3498 = !DILocation(line: 112, column: 1, scope: !3432)
!3499 = !DISubprogram(name: "fileno", scope: !803, file: !803, line: 809, type: !3433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!3500 = !DISubprogram(name: "fclose", scope: !803, file: !803, line: 178, type: !3433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!3501 = !DISubprogram(name: "__freading", scope: !3429, file: !3429, line: 51, type: !3433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!3502 = !DISubprogram(name: "lseek", scope: !999, file: !999, line: 339, type: !3503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!258, !92, !258, !92}
!3505 = distinct !DISubprogram(name: "rpl_fflush", scope: !715, file: !715, line: 130, type: !3506, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3542)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!92, !3508}
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3510)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3511)
!3511 = !{!3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3510, file: !235, line: 51, baseType: !92, size: 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3510, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3510, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3510, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3510, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3510, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3510, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3510, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3510, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3510, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3510, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3510, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3510, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3510, file: !235, line: 70, baseType: !3526, size: 64, offset: 832)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3510, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3510, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3510, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3510, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3510, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3510, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3510, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3510, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3510, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3510, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3510, file: !235, line: 93, baseType: !3526, size: 64, offset: 1344)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3510, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3510, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3510, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3510, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!3542 = !{!3543}
!3543 = !DILocalVariable(name: "stream", arg: 1, scope: !3505, file: !715, line: 130, type: !3508)
!3544 = !DILocation(line: 0, scope: !3505)
!3545 = !DILocation(line: 151, column: 14, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3505, file: !715, line: 151, column: 7)
!3547 = !DILocation(line: 151, column: 22, scope: !3546)
!3548 = !DILocation(line: 151, column: 27, scope: !3546)
!3549 = !DILocation(line: 151, column: 7, scope: !3505)
!3550 = !DILocation(line: 152, column: 12, scope: !3546)
!3551 = !DILocation(line: 152, column: 5, scope: !3546)
!3552 = !DILocalVariable(name: "fp", arg: 1, scope: !3553, file: !715, line: 42, type: !3508)
!3553 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !715, file: !715, line: 42, type: !3554, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3556)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{null, !3508}
!3556 = !{!3552}
!3557 = !DILocation(line: 0, scope: !3553, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 157, column: 3, scope: !3505)
!3559 = !DILocation(line: 44, column: 12, scope: !3560, inlinedAt: !3558)
!3560 = distinct !DILexicalBlock(scope: !3553, file: !715, line: 44, column: 7)
!3561 = !DILocation(line: 44, column: 19, scope: !3560, inlinedAt: !3558)
!3562 = !DILocation(line: 44, column: 7, scope: !3553, inlinedAt: !3558)
!3563 = !DILocation(line: 46, column: 5, scope: !3560, inlinedAt: !3558)
!3564 = !DILocation(line: 159, column: 10, scope: !3505)
!3565 = !DILocation(line: 159, column: 3, scope: !3505)
!3566 = !DILocation(line: 236, column: 1, scope: !3505)
!3567 = !DISubprogram(name: "fflush", scope: !803, file: !803, line: 230, type: !3506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!3568 = distinct !DISubprogram(name: "rpl_fseeko", scope: !717, file: !717, line: 28, type: !3569, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3606)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!92, !3571, !3605, !92}
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3573)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3574)
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3573, file: !235, line: 51, baseType: !92, size: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3573, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3573, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3573, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3573, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3573, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3573, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3573, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3573, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3573, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3573, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3573, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3573, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3573, file: !235, line: 70, baseType: !3589, size: 64, offset: 832)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3573, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3573, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3573, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3573, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3573, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3573, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3573, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3573, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3573, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3573, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3573, file: !235, line: 93, baseType: !3589, size: 64, offset: 1344)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3573, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3573, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3573, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3573, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!3605 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !803, line: 63, baseType: !258)
!3606 = !{!3607, !3608, !3609, !3610}
!3607 = !DILocalVariable(name: "fp", arg: 1, scope: !3568, file: !717, line: 28, type: !3571)
!3608 = !DILocalVariable(name: "offset", arg: 2, scope: !3568, file: !717, line: 28, type: !3605)
!3609 = !DILocalVariable(name: "whence", arg: 3, scope: !3568, file: !717, line: 28, type: !92)
!3610 = !DILocalVariable(name: "pos", scope: !3611, file: !717, line: 123, type: !3605)
!3611 = distinct !DILexicalBlock(scope: !3612, file: !717, line: 119, column: 5)
!3612 = distinct !DILexicalBlock(scope: !3568, file: !717, line: 55, column: 7)
!3613 = !DILocation(line: 0, scope: !3568)
!3614 = !DILocation(line: 55, column: 12, scope: !3612)
!3615 = !{!1183, !748, i64 16}
!3616 = !DILocation(line: 55, column: 33, scope: !3612)
!3617 = !{!1183, !748, i64 8}
!3618 = !DILocation(line: 55, column: 25, scope: !3612)
!3619 = !DILocation(line: 56, column: 7, scope: !3612)
!3620 = !DILocation(line: 56, column: 15, scope: !3612)
!3621 = !DILocation(line: 56, column: 37, scope: !3612)
!3622 = !{!1183, !748, i64 32}
!3623 = !DILocation(line: 56, column: 29, scope: !3612)
!3624 = !DILocation(line: 57, column: 7, scope: !3612)
!3625 = !DILocation(line: 57, column: 15, scope: !3612)
!3626 = !{!1183, !748, i64 72}
!3627 = !DILocation(line: 57, column: 29, scope: !3612)
!3628 = !DILocation(line: 55, column: 7, scope: !3568)
!3629 = !DILocation(line: 123, column: 26, scope: !3611)
!3630 = !DILocation(line: 123, column: 19, scope: !3611)
!3631 = !DILocation(line: 0, scope: !3611)
!3632 = !DILocation(line: 124, column: 15, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3611, file: !717, line: 124, column: 11)
!3634 = !DILocation(line: 124, column: 11, scope: !3611)
!3635 = !DILocation(line: 135, column: 19, scope: !3611)
!3636 = !DILocation(line: 136, column: 12, scope: !3611)
!3637 = !DILocation(line: 136, column: 20, scope: !3611)
!3638 = !{!1183, !1184, i64 144}
!3639 = !DILocation(line: 167, column: 7, scope: !3611)
!3640 = !DILocation(line: 169, column: 10, scope: !3568)
!3641 = !DILocation(line: 169, column: 3, scope: !3568)
!3642 = !DILocation(line: 170, column: 1, scope: !3568)
!3643 = !DISubprogram(name: "fseeko", scope: !803, file: !803, line: 736, type: !3644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!92, !3571, !258, !92}
!3646 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !646, file: !646, line: 100, type: !3647, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3650)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!94, !1445, !70, !94, !3649}
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!3650 = !{!3651, !3652, !3653, !3654, !3655}
!3651 = !DILocalVariable(name: "pwc", arg: 1, scope: !3646, file: !646, line: 100, type: !1445)
!3652 = !DILocalVariable(name: "s", arg: 2, scope: !3646, file: !646, line: 100, type: !70)
!3653 = !DILocalVariable(name: "n", arg: 3, scope: !3646, file: !646, line: 100, type: !94)
!3654 = !DILocalVariable(name: "ps", arg: 4, scope: !3646, file: !646, line: 100, type: !3649)
!3655 = !DILocalVariable(name: "ret", scope: !3646, file: !646, line: 130, type: !94)
!3656 = !DILocation(line: 0, scope: !3646)
!3657 = !DILocation(line: 105, column: 9, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3646, file: !646, line: 105, column: 7)
!3659 = !DILocation(line: 105, column: 7, scope: !3646)
!3660 = !DILocation(line: 117, column: 10, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3646, file: !646, line: 117, column: 7)
!3662 = !DILocation(line: 117, column: 7, scope: !3646)
!3663 = !DILocation(line: 130, column: 16, scope: !3646)
!3664 = !DILocation(line: 135, column: 11, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3646, file: !646, line: 135, column: 7)
!3666 = !DILocation(line: 135, column: 25, scope: !3665)
!3667 = !DILocation(line: 135, column: 30, scope: !3665)
!3668 = !DILocation(line: 135, column: 7, scope: !3646)
!3669 = !DILocalVariable(name: "ps", arg: 1, scope: !3670, file: !1418, line: 1135, type: !3649)
!3670 = distinct !DISubprogram(name: "mbszero", scope: !1418, file: !1418, line: 1135, type: !3671, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3673)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{null, !3649}
!3673 = !{!3669}
!3674 = !DILocation(line: 0, scope: !3670, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 137, column: 5, scope: !3665)
!3676 = !DILocalVariable(name: "__dest", arg: 1, scope: !3677, file: !1427, line: 57, type: !91)
!3677 = distinct !DISubprogram(name: "memset", scope: !1427, file: !1427, line: 57, type: !1428, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3678)
!3678 = !{!3676, !3679, !3680}
!3679 = !DILocalVariable(name: "__ch", arg: 2, scope: !3677, file: !1427, line: 57, type: !92)
!3680 = !DILocalVariable(name: "__len", arg: 3, scope: !3677, file: !1427, line: 57, type: !94)
!3681 = !DILocation(line: 0, scope: !3677, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 1137, column: 3, scope: !3670, inlinedAt: !3675)
!3683 = !DILocation(line: 59, column: 10, scope: !3677, inlinedAt: !3682)
!3684 = !DILocation(line: 137, column: 5, scope: !3665)
!3685 = !DILocation(line: 138, column: 11, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3646, file: !646, line: 138, column: 7)
!3687 = !DILocation(line: 138, column: 7, scope: !3646)
!3688 = !DILocation(line: 139, column: 5, scope: !3686)
!3689 = !DILocation(line: 143, column: 26, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3646, file: !646, line: 143, column: 7)
!3691 = !DILocation(line: 143, column: 41, scope: !3690)
!3692 = !DILocation(line: 143, column: 7, scope: !3646)
!3693 = !DILocation(line: 145, column: 15, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !646, line: 145, column: 11)
!3695 = distinct !DILexicalBlock(scope: !3690, file: !646, line: 144, column: 5)
!3696 = !DILocation(line: 145, column: 11, scope: !3695)
!3697 = !DILocation(line: 146, column: 32, scope: !3694)
!3698 = !DILocation(line: 146, column: 16, scope: !3694)
!3699 = !DILocation(line: 146, column: 14, scope: !3694)
!3700 = !DILocation(line: 146, column: 9, scope: !3694)
!3701 = !DILocation(line: 286, column: 1, scope: !3646)
!3702 = !DISubprogram(name: "mbsinit", scope: !3703, file: !3703, line: 293, type: !3704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !792)
!3703 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!92, !3706}
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!3708 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !719, file: !719, line: 27, type: !2917, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3709)
!3709 = !{!3710, !3711, !3712, !3713}
!3710 = !DILocalVariable(name: "ptr", arg: 1, scope: !3708, file: !719, line: 27, type: !91)
!3711 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3708, file: !719, line: 27, type: !94)
!3712 = !DILocalVariable(name: "size", arg: 3, scope: !3708, file: !719, line: 27, type: !94)
!3713 = !DILocalVariable(name: "nbytes", scope: !3708, file: !719, line: 29, type: !94)
!3714 = !DILocation(line: 0, scope: !3708)
!3715 = !DILocation(line: 30, column: 7, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3708, file: !719, line: 30, column: 7)
!3717 = !DILocalVariable(name: "ptr", arg: 1, scope: !3718, file: !3009, line: 2057, type: !91)
!3718 = distinct !DISubprogram(name: "rpl_realloc", scope: !3009, file: !3009, line: 2057, type: !3001, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3719)
!3719 = !{!3717, !3720}
!3720 = !DILocalVariable(name: "size", arg: 2, scope: !3718, file: !3009, line: 2057, type: !94)
!3721 = !DILocation(line: 0, scope: !3718, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 37, column: 10, scope: !3708)
!3723 = !DILocation(line: 2059, column: 24, scope: !3718, inlinedAt: !3722)
!3724 = !DILocation(line: 2059, column: 10, scope: !3718, inlinedAt: !3722)
!3725 = !DILocation(line: 37, column: 3, scope: !3708)
!3726 = !DILocation(line: 32, column: 7, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3716, file: !719, line: 31, column: 5)
!3728 = !DILocation(line: 32, column: 13, scope: !3727)
!3729 = !DILocation(line: 33, column: 7, scope: !3727)
!3730 = !DILocation(line: 38, column: 1, scope: !3708)
!3731 = distinct !DISubprogram(name: "hard_locale", scope: !664, file: !664, line: 28, type: !3732, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3734)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!218, !92}
!3734 = !{!3735, !3736}
!3735 = !DILocalVariable(name: "category", arg: 1, scope: !3731, file: !664, line: 28, type: !92)
!3736 = !DILocalVariable(name: "locale", scope: !3731, file: !664, line: 30, type: !3737)
!3737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3738)
!3738 = !{!3739}
!3739 = !DISubrange(count: 257)
!3740 = !DILocation(line: 0, scope: !3731)
!3741 = !DILocation(line: 30, column: 3, scope: !3731)
!3742 = !DILocation(line: 30, column: 8, scope: !3731)
!3743 = !DILocation(line: 32, column: 7, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3731, file: !664, line: 32, column: 7)
!3745 = !DILocation(line: 32, column: 7, scope: !3731)
!3746 = !DILocalVariable(name: "__s1", arg: 1, scope: !3747, file: !821, line: 1359, type: !70)
!3747 = distinct !DISubprogram(name: "streq", scope: !821, file: !821, line: 1359, type: !822, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3748)
!3748 = !{!3746, !3749}
!3749 = !DILocalVariable(name: "__s2", arg: 2, scope: !3747, file: !821, line: 1359, type: !70)
!3750 = !DILocation(line: 0, scope: !3747, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 35, column: 9, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3731, file: !664, line: 35, column: 7)
!3753 = !DILocation(line: 1361, column: 11, scope: !3747, inlinedAt: !3751)
!3754 = !DILocation(line: 35, column: 29, scope: !3752)
!3755 = !DILocation(line: 0, scope: !3747, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 35, column: 32, scope: !3752)
!3757 = !DILocation(line: 1361, column: 11, scope: !3747, inlinedAt: !3756)
!3758 = !DILocation(line: 1361, column: 10, scope: !3747, inlinedAt: !3756)
!3759 = !DILocation(line: 35, column: 7, scope: !3731)
!3760 = !DILocation(line: 46, column: 3, scope: !3731)
!3761 = !DILocation(line: 47, column: 1, scope: !3731)
!3762 = distinct !DISubprogram(name: "setlocale_null_r", scope: !726, file: !726, line: 154, type: !3763, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3765)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!92, !92, !239, !94}
!3765 = !{!3766, !3767, !3768}
!3766 = !DILocalVariable(name: "category", arg: 1, scope: !3762, file: !726, line: 154, type: !92)
!3767 = !DILocalVariable(name: "buf", arg: 2, scope: !3762, file: !726, line: 154, type: !239)
!3768 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3762, file: !726, line: 154, type: !94)
!3769 = !DILocation(line: 0, scope: !3762)
!3770 = !DILocation(line: 159, column: 10, scope: !3762)
!3771 = !DILocation(line: 159, column: 3, scope: !3762)
!3772 = distinct !DISubprogram(name: "setlocale_null", scope: !726, file: !726, line: 186, type: !3773, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3775)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!70, !92}
!3775 = !{!3776}
!3776 = !DILocalVariable(name: "category", arg: 1, scope: !3772, file: !726, line: 186, type: !92)
!3777 = !DILocation(line: 0, scope: !3772)
!3778 = !DILocation(line: 189, column: 10, scope: !3772)
!3779 = !DILocation(line: 189, column: 3, scope: !3772)
!3780 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !728, file: !728, line: 35, type: !3773, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3781)
!3781 = !{!3782, !3783}
!3782 = !DILocalVariable(name: "category", arg: 1, scope: !3780, file: !728, line: 35, type: !92)
!3783 = !DILocalVariable(name: "result", scope: !3780, file: !728, line: 37, type: !70)
!3784 = !DILocation(line: 0, scope: !3780)
!3785 = !DILocation(line: 37, column: 24, scope: !3780)
!3786 = !DILocation(line: 62, column: 3, scope: !3780)
!3787 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !728, file: !728, line: 66, type: !3763, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3788)
!3788 = !{!3789, !3790, !3791, !3792, !3793}
!3789 = !DILocalVariable(name: "category", arg: 1, scope: !3787, file: !728, line: 66, type: !92)
!3790 = !DILocalVariable(name: "buf", arg: 2, scope: !3787, file: !728, line: 66, type: !239)
!3791 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3787, file: !728, line: 66, type: !94)
!3792 = !DILocalVariable(name: "result", scope: !3787, file: !728, line: 111, type: !70)
!3793 = !DILocalVariable(name: "length", scope: !3794, file: !728, line: 125, type: !94)
!3794 = distinct !DILexicalBlock(scope: !3795, file: !728, line: 124, column: 5)
!3795 = distinct !DILexicalBlock(scope: !3787, file: !728, line: 113, column: 7)
!3796 = !DILocation(line: 0, scope: !3787)
!3797 = !DILocation(line: 0, scope: !3780, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 111, column: 24, scope: !3787)
!3799 = !DILocation(line: 37, column: 24, scope: !3780, inlinedAt: !3798)
!3800 = !DILocation(line: 113, column: 14, scope: !3795)
!3801 = !DILocation(line: 113, column: 7, scope: !3787)
!3802 = !DILocation(line: 116, column: 19, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !728, line: 116, column: 11)
!3804 = distinct !DILexicalBlock(scope: !3795, file: !728, line: 114, column: 5)
!3805 = !DILocation(line: 116, column: 11, scope: !3804)
!3806 = !DILocation(line: 120, column: 16, scope: !3803)
!3807 = !DILocation(line: 120, column: 9, scope: !3803)
!3808 = !DILocation(line: 125, column: 23, scope: !3794)
!3809 = !DILocation(line: 0, scope: !3794)
!3810 = !DILocation(line: 126, column: 18, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3794, file: !728, line: 126, column: 11)
!3812 = !DILocation(line: 126, column: 11, scope: !3794)
!3813 = !DILocation(line: 128, column: 39, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3811, file: !728, line: 127, column: 9)
!3815 = !DILocalVariable(name: "__dest", arg: 1, scope: !3816, file: !1427, line: 26, type: !3278)
!3816 = distinct !DISubprogram(name: "memcpy", scope: !1427, file: !1427, line: 26, type: !3276, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3817)
!3817 = !{!3815, !3818, !3819}
!3818 = !DILocalVariable(name: "__src", arg: 2, scope: !3816, file: !1427, line: 26, type: !956)
!3819 = !DILocalVariable(name: "__len", arg: 3, scope: !3816, file: !1427, line: 26, type: !94)
!3820 = !DILocation(line: 0, scope: !3816, inlinedAt: !3821)
!3821 = distinct !DILocation(line: 128, column: 11, scope: !3814)
!3822 = !DILocation(line: 29, column: 10, scope: !3816, inlinedAt: !3821)
!3823 = !DILocation(line: 129, column: 11, scope: !3814)
!3824 = !DILocation(line: 133, column: 23, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !728, line: 133, column: 15)
!3826 = distinct !DILexicalBlock(scope: !3811, file: !728, line: 132, column: 9)
!3827 = !DILocation(line: 133, column: 15, scope: !3826)
!3828 = !DILocation(line: 138, column: 44, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3825, file: !728, line: 134, column: 13)
!3830 = !DILocation(line: 0, scope: !3816, inlinedAt: !3831)
!3831 = distinct !DILocation(line: 138, column: 15, scope: !3829)
!3832 = !DILocation(line: 29, column: 10, scope: !3816, inlinedAt: !3831)
!3833 = !DILocation(line: 139, column: 15, scope: !3829)
!3834 = !DILocation(line: 139, column: 32, scope: !3829)
!3835 = !DILocation(line: 140, column: 13, scope: !3829)
!3836 = !DILocation(line: 0, scope: !3795)
!3837 = !DILocation(line: 145, column: 1, scope: !3787)
