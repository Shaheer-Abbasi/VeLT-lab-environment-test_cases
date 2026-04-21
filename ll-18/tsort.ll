; ModuleID = 'src/tsort.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.tokenbuffer = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.item = type { ptr, ptr, ptr, i8, i8, i64, ptr, ptr }
%struct.successor = type { ptr, ptr }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [100 x i8] c"Usage: %s [OPTION] [FILE]\0AWrite totally ordered list consistent with the partial ordering in FILE.\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"tsort\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !32
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !42
@main.long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.9, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.10, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !47
@.str.9 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !111
@.str.10 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !116
@.str.11 = private unnamed_addr constant [2 x i8] c"w\00", align 1, !dbg !121
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !123
@.str.13 = private unnamed_addr constant [14 x i8] c"Mark Kettenis\00", align 1, !dbg !128
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !130
@.str.15 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !135
@.str.16 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !137
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !142
@.str.17 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !225
@.str.18 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !227
@.str.19 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !229
@.str.20 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !234
@.str.34 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !268
@.str.35 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !270
@.str.36 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !272
@.str.37 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !274
@.str.38 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !279
@.str.39 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !284
@.str.40 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !289
@.str.41 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !291
@.str.42 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !293
@.str.43 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !295
@.str.47 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !309
@.str.48 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !311
@.str.49 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !316
@.str.50 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !321
@.str.51 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !326
@.str.52 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !331
@stdin = external local_unnamed_addr global ptr, align 8
@.str.53 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !333
@.str.54 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1, !dbg !335
@.str.55 = private unnamed_addr constant [9 x i8] c"len != 0\00", align 1, !dbg !337
@.str.56 = private unnamed_addr constant [12 x i8] c"src/tsort.c\00", align 1, !dbg !342
@__PRETTY_FUNCTION__.tsort = private unnamed_addr constant [25 x i8] c"void tsort(const char *)\00", align 1, !dbg !344
@.str.57 = private unnamed_addr constant [43 x i8] c"%s: input contains an odd number of tokens\00", align 1, !dbg !349
@n_strings = internal unnamed_addr global i64 0, align 8, !dbg !367
@head = internal unnamed_addr global ptr null, align 8, !dbg !369
@zeros = internal unnamed_addr global ptr null, align 8, !dbg !387
@.str.58 = private unnamed_addr constant [27 x i8] c"%s: input contains a loop:\00", align 1, !dbg !354
@loop = internal unnamed_addr global ptr null, align 8, !dbg !389
@.str.59 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1, !dbg !356
@.str.60 = private unnamed_addr constant [6 x i8] c"0 < a\00", align 1, !dbg !358
@__PRETTY_FUNCTION__.search_item = private unnamed_addr constant [54 x i8] c"struct item *search_item(struct item *, const char *)\00", align 1, !dbg !360
@.str.61 = private unnamed_addr constant [8 x i8] c"0 < cmp\00", align 1, !dbg !365
@.str.21 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !406
@Version = dso_local local_unnamed_addr global ptr @.str.21, align 8, !dbg !409
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !413
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !426
@.str.24 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !418
@.str.1.25 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !420
@.str.2.26 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !422
@.str.3.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !424
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !428
@stderr = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !434
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !470
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !436
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !460
@.str.1.34 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !462
@.str.2.36 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !464
@.str.3.35 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !466
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !468
@.str.4.29 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !472
@.str.5.30 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !474
@.str.6.31 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !479
@.str.62 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1, !dbg !484
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !487
@.str.71 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !493
@.str.1.72 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !495
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !497
@.str.75 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !528
@.str.1.76 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !531
@.str.2.77 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !533
@.str.3.78 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !538
@.str.4.79 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !540
@.str.5.80 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !542
@.str.6.81 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !544
@.str.7.82 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !546
@.str.8.83 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !548
@.str.9.84 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !550
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.75, ptr @.str.1.76, ptr @.str.2.77, ptr @.str.3.78, ptr @.str.4.79, ptr @.str.5.80, ptr @.str.6.81, ptr @.str.7.82, ptr @.str.8.83, ptr @.str.9.84, ptr null], align 8, !dbg !552
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !565
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !579
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !617
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !624
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !581
@slotvec0 = internal global %struct.tokenbuffer { i64 256, ptr @slot0 }, align 8, !dbg !626
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !569
@.str.10.87 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !586
@.str.11.85 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !588
@.str.12.88 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !590
@.str.13.86 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !592
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !594
@.str.99 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !632
@.str.1.100 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !635
@.str.2.101 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !637
@.str.3.102 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !639
@.str.4.103 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !641
@.str.5.104 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !643
@.str.6.105 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !648
@.str.7.106 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !653
@.str.8.107 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !655
@.str.9.108 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !660
@.str.10.109 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !665
@.str.11.110 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !670
@.str.12.111 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !675
@.str.13.112 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !677
@.str.14.113 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !682
@.str.15.114 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !687
@.str.16.115 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !692
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.120 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !697
@.str.18.121 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !699
@.str.19.122 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !701
@.str.20.123 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !703
@.str.21.124 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !705
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !707
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !709
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !714
@exit_failure = dso_local global i32 1, align 4, !dbg !722
@.str.147 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !728
@.str.1.145 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !731
@.str.2.146 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !733
@.str.152 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !735
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !738
@.str.157 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !753
@.str.1.158 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !756

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !844 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !848, metadata !DIExpression()), !dbg !849
  %2 = icmp eq i32 %0, 0, !dbg !850
  br i1 %2, label %8, label %3, !dbg !852

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !853, !tbaa !855
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !853
  %6 = load ptr, ptr @program_name, align 8, !dbg !853, !tbaa !855
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !853
  br label %34, !dbg !853

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !859
  %10 = load ptr, ptr @program_name, align 8, !dbg !859, !tbaa !855
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !859
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #40, !dbg !861
  %13 = load ptr, ptr @stdout, align 8, !dbg !861, !tbaa !855
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !861
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !864
  %16 = load ptr, ptr @stdout, align 8, !dbg !864, !tbaa !855
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !864
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !865
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !865
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !866
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !866
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !867, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata !886, metadata !880, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata ptr poison, metadata !879, metadata !DIExpression()), !dbg !884
  tail call void @emit_bug_reporting_address() #40, !dbg !887
  %20 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !888
  call void @llvm.dbg.value(metadata ptr %20, metadata !882, metadata !DIExpression()), !dbg !884
  %21 = icmp eq ptr %20, null, !dbg !889
  br i1 %21, label %29, label %22, !dbg !891

22:                                               ; preds = %8
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(4) @.str.47, i64 noundef 3) #41, !dbg !892
  %24 = icmp eq i32 %23, 0, !dbg !892
  br i1 %24, label %29, label %25, !dbg !893

25:                                               ; preds = %22
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #40, !dbg !894
  %27 = load ptr, ptr @stdout, align 8, !dbg !894, !tbaa !855
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !894
  br label %29, !dbg !896

29:                                               ; preds = %8, %22, %25
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !879, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !883, metadata !DIExpression()), !dbg !884
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #40, !dbg !897
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3) #40, !dbg !897
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #40, !dbg !898
  %33 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.51) #40, !dbg !898
  br label %34

34:                                               ; preds = %29, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !899
  unreachable, !dbg !899
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !900 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !904 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !910 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !913 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !144 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !148, metadata !DIExpression()), !dbg !916
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !149, metadata !DIExpression()), !dbg !916
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !917, !tbaa !918
  %3 = icmp eq i32 %2, -1, !dbg !920
  br i1 %3, label %4, label %16, !dbg !921

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.17) #40, !dbg !922
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !150, metadata !DIExpression()), !dbg !923
  %6 = icmp eq ptr %5, null, !dbg !924
  br i1 %6, label %14, label %7, !dbg !925

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !926, !tbaa !927
  %9 = icmp eq i8 %8, 0, !dbg !926
  br i1 %9, label %14, label %10, !dbg !928

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !929, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !935, metadata !DIExpression()), !dbg !936
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.18) #41, !dbg !938
  %12 = icmp eq i32 %11, 0, !dbg !939
  %13 = zext i1 %12 to i32, !dbg !928
  br label %14, !dbg !928

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !940, !tbaa !918
  br label %16, !dbg !941

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !942
  %18 = icmp eq i32 %17, 0, !dbg !942
  br i1 %18, label %22, label %19, !dbg !944

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !945, !tbaa !855
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !945
  br label %121, !dbg !947

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !153, metadata !DIExpression()), !dbg !916
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.19) #41, !dbg !948
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !949
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !155, metadata !DIExpression()), !dbg !916
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !950
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !156, metadata !DIExpression()), !dbg !916
  %26 = icmp eq ptr %25, null, !dbg !951
  br i1 %26, label %53, label %27, !dbg !952

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !953
  br i1 %28, label %53, label %29, !dbg !954

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !157, metadata !DIExpression()), !dbg !955
  tail call void @llvm.dbg.value(metadata i64 0, metadata !161, metadata !DIExpression()), !dbg !955
  %30 = icmp ult ptr %24, %25, !dbg !956
  br i1 %30, label %31, label %53, !dbg !957

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !916
  %33 = load ptr, ptr %32, align 8, !tbaa !855
  br label %34, !dbg !957

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !157, metadata !DIExpression()), !dbg !955
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !161, metadata !DIExpression()), !dbg !955
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !958
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !157, metadata !DIExpression()), !dbg !955
  %38 = load i8, ptr %35, align 1, !dbg !958, !tbaa !927
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !958
  %41 = load i16, ptr %40, align 2, !dbg !958, !tbaa !959
  %42 = freeze i16 %41, !dbg !961
  %43 = lshr i16 %42, 13, !dbg !961
  %44 = and i16 %43, 1, !dbg !961
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !962
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !161, metadata !DIExpression()), !dbg !955
  %47 = icmp ult ptr %37, %25, !dbg !956
  %48 = icmp ult i64 %46, 2, !dbg !963
  %49 = select i1 %47, i1 %48, i1 false, !dbg !963
  br i1 %49, label %34, label %50, !dbg !957, !llvm.loop !964

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !962
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !966
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !968
  br label %53, !dbg !968

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !916
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !153, metadata !DIExpression()), !dbg !916
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !156, metadata !DIExpression()), !dbg !916
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.20) #41, !dbg !969
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !162, metadata !DIExpression()), !dbg !916
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !970
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !163, metadata !DIExpression()), !dbg !916
  br label %58, !dbg !971

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !916
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !153, metadata !DIExpression()), !dbg !916
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !163, metadata !DIExpression()), !dbg !916
  %61 = load i8, ptr %59, align 1, !dbg !972, !tbaa !927
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !973

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !974
  %64 = load i8, ptr %63, align 1, !dbg !977, !tbaa !927
  %65 = icmp ne i8 %64, 45, !dbg !978
  %66 = select i1 %65, i1 %60, i1 false, !dbg !979
  br label %67, !dbg !979

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !153, metadata !DIExpression()), !dbg !916
  %69 = tail call ptr @__ctype_b_loc() #43, !dbg !980
  %70 = load ptr, ptr %69, align 8, !dbg !980, !tbaa !855
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !980
  %73 = load i16, ptr %72, align 2, !dbg !980, !tbaa !959
  %74 = and i16 %73, 8192, !dbg !980
  %75 = icmp eq i16 %74, 0, !dbg !980
  br i1 %75, label %89, label %76, !dbg !982

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !983
  br i1 %77, label %91, label %78, !dbg !986

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !987
  %80 = load i8, ptr %79, align 1, !dbg !987, !tbaa !927
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !987
  %83 = load i16, ptr %82, align 2, !dbg !987, !tbaa !959
  %84 = and i16 %83, 8192, !dbg !987
  %85 = icmp eq i16 %84, 0, !dbg !987
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !988
  br i1 %88, label %89, label %91, !dbg !988

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !989
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !163, metadata !DIExpression()), !dbg !916
  br label %58, !dbg !971, !llvm.loop !990

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !916
  %92 = ptrtoint ptr %24 to i64, !dbg !992
  %93 = load ptr, ptr @stdout, align 8, !dbg !992, !tbaa !855
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !992
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !929, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata !886, metadata !935, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !929, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata !886, metadata !935, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !929, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata !886, metadata !935, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !929, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata !886, metadata !935, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !929, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata !886, metadata !935, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !929, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata !886, metadata !935, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !929, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata !886, metadata !935, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !929, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata !886, metadata !935, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !929, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata !886, metadata !935, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !929, metadata !DIExpression()), !dbg !1011
  call void @llvm.dbg.value(metadata !886, metadata !935, metadata !DIExpression()), !dbg !1011
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !220, metadata !DIExpression()), !dbg !916
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.34, i64 noundef 6) #41, !dbg !1013
  %96 = icmp eq i32 %95, 0, !dbg !1013
  br i1 %96, label %100, label %97, !dbg !1015

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.35, i64 noundef 9) #41, !dbg !1016
  %99 = icmp eq i32 %98, 0, !dbg !1016
  br i1 %99, label %100, label %103, !dbg !1017

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1018
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #40, !dbg !1018
  br label %106, !dbg !1020

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1021
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #40, !dbg !1021
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1023, !tbaa !855
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %107), !dbg !1023
  %109 = load ptr, ptr @stdout, align 8, !dbg !1024, !tbaa !855
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %109), !dbg !1024
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1025
  %112 = sub i64 %111, %92, !dbg !1025
  %113 = load ptr, ptr @stdout, align 8, !dbg !1025, !tbaa !855
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1025
  %115 = load ptr, ptr @stdout, align 8, !dbg !1026, !tbaa !855
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %115), !dbg !1026
  %117 = load ptr, ptr @stdout, align 8, !dbg !1027, !tbaa !855
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %117), !dbg !1027
  %119 = load ptr, ptr @stdout, align 8, !dbg !1028, !tbaa !855
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1028
  br label %121, !dbg !1029

121:                                              ; preds = %106, %19
  ret void, !dbg !1029
}

; Function Attrs: nounwind
declare !dbg !1030 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1034 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1038 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1040 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1043 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1046 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1049 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1052 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1058 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1059 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !49 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !392, metadata !DIExpression()), !dbg !1065
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !393, metadata !DIExpression()), !dbg !1065
  %3 = load ptr, ptr %1, align 8, !dbg !1066, !tbaa !855
  tail call void @set_program_name(ptr noundef %3) #40, !dbg !1067
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #40, !dbg !1068
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #40, !dbg !1069
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #40, !dbg !1070
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1071
  br label %8, !dbg !1072

8:                                                ; preds = %8, %2
  %9 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @main.long_options, ptr noundef null) #40, !dbg !1073
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !394, metadata !DIExpression()), !dbg !1074
  switch i32 %9, label %15 [
    i32 -1, label %16
    i32 119, label %8
    i32 -2, label %10
    i32 -3, label %11
  ], !dbg !1075

10:                                               ; preds = %8
  tail call void @usage(i32 noundef 0) #44, !dbg !1076
  unreachable, !dbg !1076

11:                                               ; preds = %8
  %12 = load ptr, ptr @stdout, align 8, !dbg !1078, !tbaa !855
  %13 = load ptr, ptr @Version, align 8, !dbg !1078, !tbaa !855
  %14 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #40, !dbg !1078
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %13, ptr noundef %14, ptr noundef null) #40, !dbg !1078
  tail call void @exit(i32 noundef 0) #42, !dbg !1078
  unreachable, !dbg !1078

15:                                               ; preds = %8
  tail call void @usage(i32 noundef 1) #44, !dbg !1079
  unreachable, !dbg !1079

16:                                               ; preds = %8
  %17 = load i32, ptr @optind, align 4, !dbg !1080, !tbaa !918
  %18 = sub nsw i32 %0, %17, !dbg !1082
  %19 = icmp sgt i32 %18, 1, !dbg !1083
  br i1 %19, label %20, label %28, !dbg !1084

20:                                               ; preds = %16
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #40, !dbg !1085
  %22 = load i32, ptr @optind, align 4, !dbg !1085, !tbaa !918
  %23 = sext i32 %22 to i64, !dbg !1085
  %24 = getelementptr ptr, ptr %1, i64 %23, !dbg !1085
  %25 = getelementptr ptr, ptr %24, i64 1, !dbg !1085
  %26 = load ptr, ptr %25, align 8, !dbg !1085, !tbaa !855
  %27 = tail call ptr @quote(ptr noundef %26) #40, !dbg !1085
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %21, ptr noundef %27) #40, !dbg !1085
  tail call void @usage(i32 noundef 1) #44, !dbg !1087
  unreachable, !dbg !1087

28:                                               ; preds = %16
  %29 = icmp eq i32 %17, %0, !dbg !1088
  br i1 %29, label %34, label %30, !dbg !1089

30:                                               ; preds = %28
  %31 = sext i32 %17 to i64, !dbg !1090
  %32 = getelementptr inbounds ptr, ptr %1, i64 %31, !dbg !1090
  %33 = load ptr, ptr %32, align 8, !dbg !1090, !tbaa !855
  br label %34, !dbg !1089

34:                                               ; preds = %28, %30
  %35 = phi ptr [ %33, %30 ], [ @.str.15, %28 ], !dbg !1089
  tail call fastcc void @tsort(ptr noundef %35) #44, !dbg !1091
  unreachable, !dbg !1091
}

; Function Attrs: nounwind
declare !dbg !1092 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1095 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1096 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1099 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @tsort(ptr noundef %0) unnamed_addr #0 !dbg !1105 {
  %2 = alloca %struct.tokenbuffer, align 8, !DIAssignID !1125
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1111, metadata !DIExpression(), metadata !1125, metadata ptr %2, metadata !DIExpression()), !dbg !1126
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1107, metadata !DIExpression()), !dbg !1126
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1108, metadata !DIExpression()), !dbg !1126
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1109, metadata !DIExpression()), !dbg !1126
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1110, metadata !DIExpression()), !dbg !1126
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #40, !dbg !1127
  call void @llvm.dbg.value(metadata ptr %0, metadata !929, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !935, metadata !DIExpression()), !dbg !1128
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.15) #41, !dbg !1130
  %4 = icmp eq i32 %3, 0, !dbg !1131
  tail call void @llvm.dbg.value(metadata i1 %4, metadata !1118, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1126
  call void @llvm.dbg.value(metadata ptr null, metadata !1132, metadata !DIExpression()), !dbg !1138
  %5 = tail call noalias nonnull dereferenceable(56) ptr @xzalloc(i64 noundef 56) #45, !dbg !1140
  call void @llvm.dbg.value(metadata ptr %5, metadata !1137, metadata !DIExpression()), !dbg !1138
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1119, metadata !DIExpression()), !dbg !1126
  br i1 %4, label %14, label %6, !dbg !1141

6:                                                ; preds = %1
  %7 = load ptr, ptr @stdin, align 8, !dbg !1143, !tbaa !855
  %8 = tail call ptr @freopen_safer(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef %7) #40, !dbg !1144
  %9 = icmp eq ptr %8, null, !dbg !1144
  br i1 %9, label %10, label %14, !dbg !1145

10:                                               ; preds = %6
  %11 = tail call ptr @__errno_location() #43, !dbg !1146
  %12 = load i32, ptr %11, align 4, !dbg !1146, !tbaa !918
  %13 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #40, !dbg !1146
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %12, ptr noundef nonnull @.str.53, ptr noundef %13) #40, !dbg !1146
  unreachable, !dbg !1146

14:                                               ; preds = %6, %1
  %15 = load ptr, ptr @stdin, align 8, !dbg !1147, !tbaa !855
  tail call void @fadvise(ptr noundef %15, i32 noundef 2) #40, !dbg !1148
  call void @init_tokenbuffer(ptr noundef nonnull %2) #40, !dbg !1149
  %16 = getelementptr inbounds %struct.tokenbuffer, ptr %2, i64 0, i32 1
  %17 = getelementptr inbounds %struct.item, ptr %5, i64 0, i32 2
  br label %18, !dbg !1150

18:                                               ; preds = %188, %14
  %19 = phi ptr [ null, %14 ], [ %189, %188 ], !dbg !1151
  tail call void @llvm.dbg.value(metadata ptr %19, metadata !1109, metadata !DIExpression()), !dbg !1126
  tail call void @llvm.dbg.value(metadata ptr %19, metadata !1110, metadata !DIExpression()), !dbg !1126
  %20 = load ptr, ptr @stdin, align 8, !dbg !1152, !tbaa !855
  %21 = call i64 @readtoken(ptr noundef %20, ptr noundef nonnull @.str.19, i64 noundef 3, ptr noundef nonnull %2) #40, !dbg !1153
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1120, metadata !DIExpression()), !dbg !1154
  switch i64 %21, label %33 [
    i64 -1, label %22
    i64 0, label %32
  ], !dbg !1155

22:                                               ; preds = %18
  %.lcssa15 = phi ptr [ %19, %18 ], !dbg !1151
  %23 = load ptr, ptr @stdin, align 8, !dbg !1156, !tbaa !855
  tail call void @llvm.dbg.value(metadata ptr %23, metadata !1160, metadata !DIExpression()), !dbg !1166
  %24 = load i32, ptr %23, align 8, !dbg !1168, !tbaa !1169
  %25 = and i32 %24, 32, !dbg !1156
  %26 = icmp eq i32 %25, 0, !dbg !1156
  br i1 %26, label %190, label %27, !dbg !1172

27:                                               ; preds = %22
  %28 = tail call ptr @__errno_location() #43, !dbg !1173
  %29 = load i32, ptr %28, align 4, !dbg !1173, !tbaa !918
  %30 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #40, !dbg !1173
  %31 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #40, !dbg !1173
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %29, ptr noundef %30, ptr noundef %31) #40, !dbg !1173
  unreachable, !dbg !1173

32:                                               ; preds = %18
  call void @__assert_fail(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 458, ptr noundef nonnull @__PRETTY_FUNCTION__.tsort) #42, !dbg !1174
  unreachable, !dbg !1174

33:                                               ; preds = %18
  %34 = load ptr, ptr %16, align 8, !dbg !1177, !tbaa !1178
  call void @llvm.dbg.value(metadata ptr %5, metadata !1180, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr %34, metadata !1185, metadata !DIExpression()), !dbg !1197
  %35 = load ptr, ptr %17, align 8, !dbg !1199, !tbaa !1201
  %36 = icmp eq ptr %35, null, !dbg !1204
  br i1 %36, label %41, label %37, !dbg !1205

37:                                               ; preds = %33
  call void @llvm.dbg.value(metadata ptr %5, metadata !1190, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr %35, metadata !1189, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr %35, metadata !1186, metadata !DIExpression()), !dbg !1197
  %38 = load ptr, ptr %35, align 8, !dbg !1206, !tbaa !1207
  %39 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %38) #41, !dbg !1208
  call void @llvm.dbg.value(metadata i32 %39, metadata !1191, metadata !DIExpression()), !dbg !1197
  %40 = icmp eq i32 %39, 0, !dbg !1209
  br i1 %40, label %172, label %.preheader5, !dbg !1211

.preheader5:                                      ; preds = %37
  br label %47, !dbg !1212

41:                                               ; preds = %33
  call void @llvm.dbg.value(metadata ptr %34, metadata !1132, metadata !DIExpression()), !dbg !1213
  %42 = call noalias nonnull dereferenceable(56) ptr @xzalloc(i64 noundef 56) #45, !dbg !1215
  call void @llvm.dbg.value(metadata ptr %42, metadata !1137, metadata !DIExpression()), !dbg !1213
  %43 = icmp eq ptr %34, null, !dbg !1216
  br i1 %43, label %46, label %44, !dbg !1218

44:                                               ; preds = %41
  %45 = call noalias nonnull ptr @xstrdup(ptr noundef nonnull %34) #40, !dbg !1219
  store ptr %45, ptr %42, align 8, !dbg !1220, !tbaa !1207
  br label %46, !dbg !1221

46:                                               ; preds = %44, %41
  store ptr %42, ptr %17, align 8, !dbg !1222, !tbaa !1201
  br label %172, !dbg !1223

47:                                               ; preds = %.preheader5, %163
  %48 = phi i32 [ %170, %163 ], [ %39, %.preheader5 ]
  %49 = phi ptr [ %168, %163 ], [ %5, %.preheader5 ]
  %50 = phi ptr [ %167, %163 ], [ %35, %.preheader5 ]
  %51 = phi ptr [ %56, %163 ], [ %35, %.preheader5 ]
  call void @llvm.dbg.value(metadata ptr %49, metadata !1190, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr %50, metadata !1189, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr %51, metadata !1186, metadata !DIExpression()), !dbg !1197
  %52 = icmp slt i32 %48, 0, !dbg !1224
  %53 = getelementptr inbounds %struct.item, ptr %51, i64 0, i32 1, !dbg !1226
  %54 = getelementptr inbounds %struct.item, ptr %51, i64 0, i32 2, !dbg !1226
  %55 = select i1 %52, ptr %53, ptr %54, !dbg !1226
  %56 = load ptr, ptr %55, align 8, !dbg !1227, !tbaa !855
  call void @llvm.dbg.value(metadata ptr %56, metadata !1187, metadata !DIExpression()), !dbg !1197
  %57 = icmp eq ptr %56, null, !dbg !1228
  br i1 %57, label %58, label %163, !dbg !1229

58:                                               ; preds = %47
  %.lcssa13 = phi ptr [ %49, %47 ]
  %.lcssa11 = phi ptr [ %50, %47 ]
  %.lcssa9 = phi ptr [ %55, %47 ], !dbg !1226
  call void @llvm.dbg.value(metadata ptr %34, metadata !1132, metadata !DIExpression()), !dbg !1230
  %59 = call noalias nonnull dereferenceable(56) ptr @xzalloc(i64 noundef 56) #45, !dbg !1232
  call void @llvm.dbg.value(metadata ptr %59, metadata !1137, metadata !DIExpression()), !dbg !1230
  %60 = icmp eq ptr %34, null, !dbg !1233
  br i1 %60, label %63, label %61, !dbg !1234

61:                                               ; preds = %58
  %62 = call noalias nonnull ptr @xstrdup(ptr noundef nonnull %34) #40, !dbg !1235
  store ptr %62, ptr %59, align 8, !dbg !1236, !tbaa !1207
  br label %63, !dbg !1237

63:                                               ; preds = %61, %58
  call void @llvm.dbg.value(metadata ptr %59, metadata !1187, metadata !DIExpression()), !dbg !1197
  store ptr %59, ptr %.lcssa9, align 8, !dbg !1238, !tbaa !855
  %64 = load ptr, ptr %.lcssa11, align 8, !dbg !1240, !tbaa !1207
  %65 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %64) #41, !dbg !1241
  call void @llvm.dbg.value(metadata i32 %65, metadata !1191, metadata !DIExpression()), !dbg !1197
  %66 = icmp slt i32 %65, 0, !dbg !1242
  br i1 %66, label %67, label %69, !dbg !1244

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.item, ptr %.lcssa11, i64 0, i32 1, !dbg !1245
  call void @llvm.dbg.value(metadata ptr poison, metadata !1186, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr poison, metadata !1188, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 -1, metadata !1191, metadata !DIExpression()), !dbg !1197
  br label %74, !dbg !1247

69:                                               ; preds = %63
  %70 = icmp eq i32 %65, 0, !dbg !1248
  br i1 %70, label %71, label %72, !dbg !1252

71:                                               ; preds = %69
  call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.56, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__.search_item) #42, !dbg !1248
  unreachable, !dbg !1248

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.item, ptr %.lcssa11, i64 0, i32 2, !dbg !1253
  call void @llvm.dbg.value(metadata ptr poison, metadata !1186, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr poison, metadata !1188, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 1, metadata !1191, metadata !DIExpression()), !dbg !1197
  br label %74

74:                                               ; preds = %72, %67
  %75 = phi ptr [ %68, %67 ], [ %73, %72 ]
  %76 = phi i32 [ -1, %67 ], [ 1, %72 ], !dbg !1254
  %77 = load ptr, ptr %75, align 8, !dbg !1254, !tbaa !855
  call void @llvm.dbg.value(metadata i32 %76, metadata !1191, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr %77, metadata !1188, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr %77, metadata !1186, metadata !DIExpression()), !dbg !1197
  %78 = icmp eq ptr %77, %59, !dbg !1255
  br i1 %78, label %97, label %.preheader3, !dbg !1256

.preheader3:                                      ; preds = %74
  br label %79, !dbg !1256

79:                                               ; preds = %.preheader3, %93
  %80 = phi ptr [ %95, %93 ], [ %77, %.preheader3 ]
  call void @llvm.dbg.value(metadata ptr %80, metadata !1186, metadata !DIExpression()), !dbg !1197
  %81 = load ptr, ptr %80, align 8, !dbg !1257, !tbaa !1207
  %82 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %81) #41, !dbg !1258
  call void @llvm.dbg.value(metadata i32 %82, metadata !1192, metadata !DIExpression()), !dbg !1259
  %83 = icmp slt i32 %82, 0, !dbg !1260
  br i1 %83, label %84, label %87, !dbg !1262

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.item, ptr %80, i64 0, i32 3, !dbg !1263
  store i8 -1, ptr %85, align 8, !dbg !1265, !tbaa !1266
  %86 = getelementptr inbounds %struct.item, ptr %80, i64 0, i32 1, !dbg !1267
  call void @llvm.dbg.value(metadata ptr poison, metadata !1186, metadata !DIExpression()), !dbg !1197
  br label %93, !dbg !1268

87:                                               ; preds = %79
  %88 = icmp eq i32 %82, 0, !dbg !1269
  br i1 %88, label %89, label %90, !dbg !1273

89:                                               ; preds = %87
  call void @__assert_fail(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.56, i32 noundef 181, ptr noundef nonnull @__PRETTY_FUNCTION__.search_item) #42, !dbg !1269
  unreachable, !dbg !1269

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.item, ptr %80, i64 0, i32 3, !dbg !1274
  store i8 1, ptr %91, align 8, !dbg !1275, !tbaa !1266
  %92 = getelementptr inbounds %struct.item, ptr %80, i64 0, i32 2, !dbg !1276
  call void @llvm.dbg.value(metadata ptr poison, metadata !1186, metadata !DIExpression()), !dbg !1197
  br label %93

93:                                               ; preds = %90, %84
  %94 = phi ptr [ %86, %84 ], [ %92, %90 ]
  %95 = load ptr, ptr %94, align 8, !dbg !1277, !tbaa !855
  call void @llvm.dbg.value(metadata ptr %95, metadata !1186, metadata !DIExpression()), !dbg !1197
  %96 = icmp eq ptr %95, %59, !dbg !1255
  br i1 %96, label %.loopexit4, label %79, !dbg !1256, !llvm.loop !1278

.loopexit4:                                       ; preds = %93
  br label %97, !dbg !1280

97:                                               ; preds = %.loopexit4, %74
  %98 = getelementptr inbounds %struct.item, ptr %.lcssa11, i64 0, i32 3, !dbg !1280
  %99 = load i8, ptr %98, align 8, !dbg !1280, !tbaa !1266
  %100 = icmp eq i8 %99, 0, !dbg !1282
  br i1 %100, label %105, label %101, !dbg !1283

101:                                              ; preds = %97
  %102 = sext i8 %99 to i32, !dbg !1284
  %103 = sub nsw i32 0, %76, !dbg !1285
  %104 = icmp eq i32 %102, %103, !dbg !1286
  br i1 %104, label %105, label %108, !dbg !1287

105:                                              ; preds = %101, %97
  %106 = trunc i32 %76 to i8, !dbg !1288
  %107 = add i8 %99, %106, !dbg !1288
  store i8 %107, ptr %98, align 8, !dbg !1288, !tbaa !1266
  br label %172, !dbg !1290

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 3, !dbg !1291
  %110 = load i8, ptr %109, align 8, !dbg !1291, !tbaa !1266
  %111 = sext i8 %110 to i32, !dbg !1293
  %112 = icmp eq i32 %76, %111, !dbg !1294
  br i1 %112, label %113, label %124, !dbg !1295

113:                                              ; preds = %108
  call void @llvm.dbg.value(metadata ptr %77, metadata !1186, metadata !DIExpression()), !dbg !1197
  br i1 %66, label %114, label %118, !dbg !1296

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 2, !dbg !1298
  %116 = load ptr, ptr %115, align 8, !dbg !1298, !tbaa !1201
  %117 = getelementptr inbounds %struct.item, ptr %.lcssa11, i64 0, i32 1, !dbg !1301
  store ptr %116, ptr %117, align 8, !dbg !1302, !tbaa !1303
  br label %122, !dbg !1304

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 1, !dbg !1305
  %120 = load ptr, ptr %119, align 8, !dbg !1305, !tbaa !1303
  %121 = getelementptr inbounds %struct.item, ptr %.lcssa11, i64 0, i32 2, !dbg !1307
  store ptr %120, ptr %121, align 8, !dbg !1308, !tbaa !1201
  br label %122

122:                                              ; preds = %118, %114
  %123 = phi ptr [ %119, %118 ], [ %115, %114 ]
  store ptr %.lcssa11, ptr %123, align 8, !dbg !1309, !tbaa !855
  store i8 0, ptr %109, align 8, !dbg !1310, !tbaa !1266
  br label %154, !dbg !1311

124:                                              ; preds = %108
  br i1 %66, label %125, label %133, !dbg !1312

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 2, !dbg !1314
  %127 = load ptr, ptr %126, align 8, !dbg !1314, !tbaa !1201
  call void @llvm.dbg.value(metadata ptr %127, metadata !1186, metadata !DIExpression()), !dbg !1197
  %128 = getelementptr inbounds %struct.item, ptr %127, i64 0, i32 1, !dbg !1317
  %129 = load ptr, ptr %128, align 8, !dbg !1317, !tbaa !1303
  store ptr %129, ptr %126, align 8, !dbg !1318, !tbaa !1201
  store ptr %77, ptr %128, align 8, !dbg !1319, !tbaa !1303
  %130 = getelementptr inbounds %struct.item, ptr %127, i64 0, i32 2, !dbg !1320
  %131 = load ptr, ptr %130, align 8, !dbg !1320, !tbaa !1201
  %132 = getelementptr inbounds %struct.item, ptr %.lcssa11, i64 0, i32 1, !dbg !1321
  store ptr %131, ptr %132, align 8, !dbg !1322, !tbaa !1303
  br label %141, !dbg !1323

133:                                              ; preds = %124
  %134 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 1, !dbg !1324
  %135 = load ptr, ptr %134, align 8, !dbg !1324, !tbaa !1303
  call void @llvm.dbg.value(metadata ptr %135, metadata !1186, metadata !DIExpression()), !dbg !1197
  %136 = getelementptr inbounds %struct.item, ptr %135, i64 0, i32 2, !dbg !1326
  %137 = load ptr, ptr %136, align 8, !dbg !1326, !tbaa !1201
  store ptr %137, ptr %134, align 8, !dbg !1327, !tbaa !1303
  store ptr %77, ptr %136, align 8, !dbg !1328, !tbaa !1201
  %138 = getelementptr inbounds %struct.item, ptr %135, i64 0, i32 1, !dbg !1329
  %139 = load ptr, ptr %138, align 8, !dbg !1329, !tbaa !1303
  %140 = getelementptr inbounds %struct.item, ptr %.lcssa11, i64 0, i32 2, !dbg !1330
  store ptr %139, ptr %140, align 8, !dbg !1331, !tbaa !1201
  br label %141

141:                                              ; preds = %133, %125
  %142 = phi ptr [ %138, %133 ], [ %130, %125 ]
  %143 = phi ptr [ %135, %133 ], [ %127, %125 ], !dbg !1332
  store ptr %.lcssa11, ptr %142, align 8, !dbg !1332, !tbaa !855
  call void @llvm.dbg.value(metadata ptr %143, metadata !1186, metadata !DIExpression()), !dbg !1197
  store i8 0, ptr %98, align 8, !dbg !1333, !tbaa !1266
  store i8 0, ptr %109, align 8, !dbg !1334, !tbaa !1266
  %144 = getelementptr inbounds %struct.item, ptr %143, i64 0, i32 3, !dbg !1335
  %145 = load i8, ptr %144, align 8, !dbg !1335, !tbaa !1266
  %146 = sext i8 %145 to i32, !dbg !1337
  %147 = icmp eq i32 %76, %146, !dbg !1338
  br i1 %147, label %150, label %148, !dbg !1339

148:                                              ; preds = %141
  %149 = icmp eq i32 %146, %103, !dbg !1340
  br i1 %149, label %150, label %154, !dbg !1342

150:                                              ; preds = %148, %141
  %151 = phi i32 [ %103, %141 ], [ %76, %148 ]
  %152 = phi ptr [ %98, %141 ], [ %109, %148 ]
  %153 = trunc i32 %151 to i8, !dbg !1343
  store i8 %153, ptr %152, align 8, !dbg !1343, !tbaa !1266
  br label %154, !dbg !1344

154:                                              ; preds = %150, %148, %122
  %155 = phi ptr [ %98, %122 ], [ %144, %150 ], [ %144, %148 ]
  %156 = phi ptr [ %77, %122 ], [ %143, %150 ], [ %143, %148 ], !dbg !1345
  store i8 0, ptr %155, align 8, !dbg !1345, !tbaa !1266
  call void @llvm.dbg.value(metadata ptr %156, metadata !1186, metadata !DIExpression()), !dbg !1197
  %157 = getelementptr inbounds %struct.item, ptr %.lcssa13, i64 0, i32 2, !dbg !1346
  %158 = load ptr, ptr %157, align 8, !dbg !1346, !tbaa !1201
  %159 = icmp eq ptr %.lcssa11, %158, !dbg !1348
  br i1 %159, label %160, label %161, !dbg !1349

160:                                              ; preds = %154
  store ptr %156, ptr %157, align 8, !dbg !1350, !tbaa !1201
  br label %172, !dbg !1351

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.item, ptr %.lcssa13, i64 0, i32 1, !dbg !1352
  store ptr %156, ptr %162, align 8, !dbg !1353, !tbaa !1303
  br label %172

163:                                              ; preds = %47
  %164 = getelementptr inbounds %struct.item, ptr %56, i64 0, i32 3, !dbg !1354
  %165 = load i8, ptr %164, align 8, !dbg !1354, !tbaa !1266
  %166 = icmp eq i8 %165, 0, !dbg !1356
  %167 = select i1 %166, ptr %50, ptr %56, !dbg !1357
  %168 = select i1 %166, ptr %49, ptr %51, !dbg !1357
  call void @llvm.dbg.value(metadata ptr %168, metadata !1190, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr %167, metadata !1189, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr %56, metadata !1186, metadata !DIExpression()), !dbg !1197
  %169 = load ptr, ptr %56, align 8, !dbg !1206, !tbaa !1207
  %170 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %169) #41, !dbg !1208
  call void @llvm.dbg.value(metadata i32 %170, metadata !1191, metadata !DIExpression()), !dbg !1197
  %171 = icmp eq i32 %170, 0, !dbg !1209
  br i1 %171, label %.loopexit6, label %47, !dbg !1211, !llvm.loop !1358

.loopexit6:                                       ; preds = %163
  %.lcssa8 = phi ptr [ %56, %163 ], !dbg !1227
  br label %172, !dbg !1360

172:                                              ; preds = %.loopexit6, %37, %46, %105, %160, %161
  %173 = phi ptr [ %42, %46 ], [ %59, %105 ], [ %59, %161 ], [ %59, %160 ], [ %35, %37 ], [ %.lcssa8, %.loopexit6 ], !dbg !1197
  tail call void @llvm.dbg.value(metadata ptr %173, metadata !1110, metadata !DIExpression()), !dbg !1126
  %174 = icmp eq ptr %19, null, !dbg !1360
  br i1 %174, label %188, label %175, !dbg !1362

175:                                              ; preds = %172
  call void @llvm.dbg.value(metadata ptr %19, metadata !1363, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata ptr %173, metadata !1368, metadata !DIExpression()), !dbg !1370
  %176 = load ptr, ptr %19, align 8, !dbg !1373, !tbaa !1207
  %177 = load ptr, ptr %173, align 8, !dbg !1375, !tbaa !1207
  call void @llvm.dbg.value(metadata ptr %176, metadata !929, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata ptr %177, metadata !935, metadata !DIExpression()), !dbg !1376
  %178 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(1) %177) #41, !dbg !1378
  %179 = icmp eq i32 %178, 0, !dbg !1379
  br i1 %179, label %188, label %180, !dbg !1380

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.item, ptr %173, i64 0, i32 5, !dbg !1381
  %182 = load i64, ptr %181, align 8, !dbg !1383, !tbaa !1384
  %183 = add i64 %182, 1, !dbg !1383
  store i64 %183, ptr %181, align 8, !dbg !1383, !tbaa !1384
  %184 = call noalias nonnull dereferenceable(16) ptr @xmalloc(i64 noundef 16) #45, !dbg !1385
  call void @llvm.dbg.value(metadata ptr %184, metadata !1369, metadata !DIExpression()), !dbg !1370
  store ptr %173, ptr %184, align 8, !dbg !1386, !tbaa !1387
  %185 = getelementptr inbounds %struct.item, ptr %19, i64 0, i32 7, !dbg !1389
  %186 = load ptr, ptr %185, align 8, !dbg !1389, !tbaa !1390
  %187 = getelementptr inbounds %struct.successor, ptr %184, i64 0, i32 1, !dbg !1391
  store ptr %186, ptr %187, align 8, !dbg !1392, !tbaa !1393
  store ptr %184, ptr %185, align 8, !dbg !1394, !tbaa !1390
  br label %188, !dbg !1395

188:                                              ; preds = %180, %175, %172
  %189 = phi ptr [ %173, %172 ], [ null, %175 ], [ null, %180 ]
  br label %18, !dbg !1126

190:                                              ; preds = %22
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !1109, metadata !DIExpression()), !dbg !1126
  tail call void @llvm.dbg.value(metadata ptr %.lcssa15, metadata !1110, metadata !DIExpression()), !dbg !1126
  %191 = icmp eq ptr %.lcssa15, null, !dbg !1396
  br i1 %191, label %195, label %192, !dbg !1398

192:                                              ; preds = %190
  %193 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #40, !dbg !1399
  %194 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #40, !dbg !1399
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %193, ptr noundef %194) #40, !dbg !1399
  unreachable, !dbg !1399

195:                                              ; preds = %190
  call void @llvm.dbg.value(metadata ptr %5, metadata !1400, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata ptr @count_items, metadata !1408, metadata !DIExpression()), !dbg !1409
  %196 = load ptr, ptr %17, align 8, !dbg !1411, !tbaa !1201
  %197 = icmp eq ptr %196, null, !dbg !1413
  br i1 %197, label %200, label %198, !dbg !1414

198:                                              ; preds = %195
  %199 = call fastcc i1 @recurse_tree(ptr noundef nonnull %196, ptr noundef nonnull @count_items), !dbg !1415
  br label %200, !dbg !1415

200:                                              ; preds = %195, %198
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1108, metadata !DIExpression()), !dbg !1126
  %201 = load i64, ptr @n_strings, align 8, !dbg !1416, !tbaa !1417
  %202 = icmp eq i64 %201, 0, !dbg !1418
  br i1 %202, label %263, label %.preheader2, !dbg !1419

.preheader2:                                      ; preds = %200
  br label %203, !dbg !1419

203:                                              ; preds = %.preheader2, %256
  %204 = phi i32 [ 0, %256 ], [ 1, %.preheader2 ]
  call void @llvm.dbg.value(metadata ptr %5, metadata !1400, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata ptr @scan_zeros, metadata !1408, metadata !DIExpression()), !dbg !1420
  br i1 %197, label %207, label %205, !dbg !1422

205:                                              ; preds = %203
  %206 = call fastcc i1 @recurse_tree(ptr noundef nonnull %196, ptr noundef nonnull @scan_zeros), !dbg !1423
  br label %207, !dbg !1423

207:                                              ; preds = %203, %205
  %208 = load ptr, ptr @head, align 8, !dbg !1424, !tbaa !855
  %209 = icmp eq ptr %208, null, !dbg !1425
  br i1 %209, label %210, label %.preheader, !dbg !1425

.preheader:                                       ; preds = %207
  br label %212, !dbg !1425

210:                                              ; preds = %207
  %211 = load i64, ptr @n_strings, align 8, !dbg !1426, !tbaa !1417
  br label %244, !dbg !1425

212:                                              ; preds = %.preheader, %240
  %213 = phi ptr [ %242, %240 ], [ %208, %.preheader ]
  %214 = getelementptr inbounds %struct.item, ptr %213, i64 0, i32 7, !dbg !1428
  %215 = load ptr, ptr %214, align 8, !dbg !1428, !tbaa !1390
  tail call void @llvm.dbg.value(metadata ptr %215, metadata !1122, metadata !DIExpression()), !dbg !1429
  %216 = load ptr, ptr %213, align 8, !dbg !1430, !tbaa !1207
  %217 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %216), !dbg !1431
  %218 = load ptr, ptr @head, align 8, !dbg !1432, !tbaa !855
  %219 = getelementptr inbounds %struct.item, ptr %218, i64 0, i32 4, !dbg !1433
  store i8 1, ptr %219, align 1, !dbg !1434, !tbaa !1435
  %220 = load i64, ptr @n_strings, align 8, !dbg !1436, !tbaa !1417
  %221 = add i64 %220, -1, !dbg !1436
  store i64 %221, ptr @n_strings, align 8, !dbg !1436, !tbaa !1417
  %222 = icmp eq ptr %215, null, !dbg !1437
  br i1 %222, label %240, label %223, !dbg !1437

223:                                              ; preds = %212
  %224 = load ptr, ptr @zeros, align 8, !tbaa !855
  br label %225, !dbg !1437

225:                                              ; preds = %223, %235
  %226 = phi ptr [ %238, %235 ], [ %215, %223 ]
  %227 = phi ptr [ %236, %235 ], [ %224, %223 ]
  tail call void @llvm.dbg.value(metadata ptr %226, metadata !1122, metadata !DIExpression()), !dbg !1429
  %228 = load ptr, ptr %226, align 8, !dbg !1438, !tbaa !1387
  %229 = getelementptr inbounds %struct.item, ptr %228, i64 0, i32 5, !dbg !1440
  %230 = load i64, ptr %229, align 8, !dbg !1441, !tbaa !1384
  %231 = add i64 %230, -1, !dbg !1441
  store i64 %231, ptr %229, align 8, !dbg !1441, !tbaa !1384
  %232 = icmp eq i64 %231, 0, !dbg !1442
  br i1 %232, label %233, label %235, !dbg !1444

233:                                              ; preds = %225
  %234 = getelementptr inbounds %struct.item, ptr %227, i64 0, i32 6, !dbg !1445
  store ptr %228, ptr %234, align 8, !dbg !1447, !tbaa !1448
  store ptr %228, ptr @zeros, align 8, !dbg !1449, !tbaa !855
  br label %235, !dbg !1450

235:                                              ; preds = %233, %225
  %236 = phi ptr [ %228, %233 ], [ %227, %225 ]
  %237 = getelementptr inbounds %struct.successor, ptr %226, i64 0, i32 1, !dbg !1451
  %238 = load ptr, ptr %237, align 8, !dbg !1451, !tbaa !1393
  tail call void @llvm.dbg.value(metadata ptr %238, metadata !1122, metadata !DIExpression()), !dbg !1429
  %239 = icmp eq ptr %238, null, !dbg !1437
  br i1 %239, label %.loopexit, label %225, !dbg !1437, !llvm.loop !1452

.loopexit:                                        ; preds = %235
  br label %240, !dbg !1454

240:                                              ; preds = %.loopexit, %212
  %241 = getelementptr inbounds %struct.item, ptr %218, i64 0, i32 6, !dbg !1454
  %242 = load ptr, ptr %241, align 8, !dbg !1454, !tbaa !1448
  store ptr %242, ptr @head, align 8, !dbg !1455, !tbaa !855
  %243 = icmp eq ptr %242, null, !dbg !1425
  br i1 %243, label %.loopexit1, label %212, !dbg !1425, !llvm.loop !1456

.loopexit1:                                       ; preds = %240
  %.lcssa = phi i64 [ %221, %240 ], !dbg !1436
  br label %244, !dbg !1458

244:                                              ; preds = %.loopexit1, %210
  %245 = phi i64 [ %211, %210 ], [ %.lcssa, %.loopexit1 ], !dbg !1426
  %246 = icmp eq i64 %245, 0, !dbg !1458
  br i1 %246, label %259, label %247, !dbg !1459

247:                                              ; preds = %244
  %248 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #40, !dbg !1460
  %249 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #40, !dbg !1460
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %248, ptr noundef %249) #40, !dbg !1460
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1108, metadata !DIExpression()), !dbg !1126
  br label %250, !dbg !1462

250:                                              ; preds = %253, %247
  call void @llvm.dbg.value(metadata ptr %5, metadata !1400, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata ptr @detect_loop, metadata !1408, metadata !DIExpression()), !dbg !1463
  br i1 %197, label %253, label %251, !dbg !1465

251:                                              ; preds = %250
  %252 = call fastcc i1 @recurse_tree(ptr noundef nonnull %196, ptr noundef nonnull @detect_loop), !dbg !1466
  br label %253, !dbg !1466

253:                                              ; preds = %250, %251
  %254 = load ptr, ptr @loop, align 8, !dbg !1467, !tbaa !855
  %255 = icmp eq ptr %254, null, !dbg !1468
  br i1 %255, label %256, label %250, !dbg !1468, !llvm.loop !1469

256:                                              ; preds = %253
  %257 = load i64, ptr @n_strings, align 8, !dbg !1416, !tbaa !1417
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1108, metadata !DIExpression()), !dbg !1126
  %258 = icmp eq i64 %257, 0, !dbg !1418
  br i1 %258, label %259, label %203, !dbg !1419, !llvm.loop !1471

259:                                              ; preds = %244, %256
  %260 = phi i32 [ 0, %256 ], [ %204, %244 ]
  %261 = and i32 %260, 1, !dbg !1473
  %262 = xor i32 %261, 1, !dbg !1473
  br label %263, !dbg !1474

263:                                              ; preds = %259, %200
  %264 = phi i32 [ 0, %200 ], [ %262, %259 ]
  %265 = load ptr, ptr @stdin, align 8, !dbg !1474, !tbaa !855
  %266 = call i32 @rpl_fclose(ptr noundef %265) #40, !dbg !1476
  %267 = icmp eq i32 %266, 0, !dbg !1477
  br i1 %267, label %277, label %268, !dbg !1478

268:                                              ; preds = %263
  %269 = tail call ptr @__errno_location() #43, !dbg !1479
  %270 = load i32, ptr %269, align 4, !dbg !1479, !tbaa !918
  br i1 %4, label %271, label %273, !dbg !1479

271:                                              ; preds = %268
  %272 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #40, !dbg !1479
  br label %275, !dbg !1479

273:                                              ; preds = %268
  %274 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #40, !dbg !1479
  br label %275, !dbg !1479

275:                                              ; preds = %273, %271
  %276 = phi ptr [ %272, %271 ], [ %274, %273 ], !dbg !1479
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %270, ptr noundef nonnull @.str.53, ptr noundef %276) #40, !dbg !1479
  unreachable, !dbg !1479

277:                                              ; preds = %263
  call void @exit(i32 noundef %264) #42, !dbg !1480
  unreachable, !dbg !1480
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1481 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare !dbg !1485 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal noundef i1 @count_items(ptr nocapture readnone %0) #11 !dbg !1489 {
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !1491, metadata !DIExpression()), !dbg !1492
  %2 = load i64, ptr @n_strings, align 8, !dbg !1493, !tbaa !1417
  %3 = add i64 %2, 1, !dbg !1493
  store i64 %3, ptr @n_strings, align 8, !dbg !1493, !tbaa !1417
  ret i1 false, !dbg !1494
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @recurse_tree(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !dbg !1495 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1499, metadata !DIExpression()), !dbg !1501
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1500, metadata !DIExpression()), !dbg !1501
  %3 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 1, !dbg !1502
  %4 = load ptr, ptr %3, align 8, !dbg !1502, !tbaa !1303
  %5 = icmp eq ptr %4, null, !dbg !1504
  br i1 %5, label %6, label %12, !dbg !1505

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 2, !dbg !1506
  %8 = load ptr, ptr %7, align 8, !dbg !1506, !tbaa !1201
  %9 = icmp eq ptr %8, null, !dbg !1507
  br i1 %9, label %10, label %14, !dbg !1508

10:                                               ; preds = %6
  %11 = tail call i1 %1(ptr noundef nonnull %0) #40, !dbg !1509, !callees !1510
  br label %23, !dbg !1511

12:                                               ; preds = %2
  %13 = tail call fastcc i1 @recurse_tree(ptr noundef nonnull %4, ptr noundef %1), !dbg !1512
  br i1 %13, label %23, label %14, !dbg !1516

14:                                               ; preds = %6, %12
  %15 = tail call i1 %1(ptr noundef nonnull %0) #40, !dbg !1517, !callees !1510
  br i1 %15, label %23, label %16, !dbg !1519

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 2, !dbg !1520
  %18 = load ptr, ptr %17, align 8, !dbg !1520, !tbaa !1201
  %19 = icmp eq ptr %18, null, !dbg !1522
  br i1 %19, label %22, label %20, !dbg !1523

20:                                               ; preds = %16
  %21 = tail call fastcc i1 @recurse_tree(ptr noundef nonnull %18, ptr noundef %1), !dbg !1524
  br i1 %21, label %23, label %22, !dbg !1526

22:                                               ; preds = %16, %20
  br label %23, !dbg !1527

23:                                               ; preds = %20, %14, %12, %22, %10
  %24 = phi i1 [ %11, %10 ], [ false, %22 ], [ true, %12 ], [ true, %14 ], [ true, %20 ], !dbg !1501
  ret i1 %24, !dbg !1528
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i1 @scan_zeros(ptr noundef %0) #13 !dbg !1529 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1531, metadata !DIExpression()), !dbg !1532
  %2 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 5, !dbg !1533
  %3 = load i64, ptr %2, align 8, !dbg !1533, !tbaa !1384
  %4 = icmp eq i64 %3, 0, !dbg !1535
  br i1 %4, label %5, label %15, !dbg !1536

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 4, !dbg !1537
  %7 = load i8, ptr %6, align 1, !dbg !1537, !tbaa !1435, !range !1538, !noundef !886
  %8 = icmp eq i8 %7, 0, !dbg !1537
  br i1 %8, label %9, label %15, !dbg !1539

9:                                                ; preds = %5
  %10 = load ptr, ptr @head, align 8, !dbg !1540, !tbaa !855
  %11 = icmp eq ptr %10, null, !dbg !1543
  %12 = load ptr, ptr @zeros, align 8, !dbg !1544
  %13 = getelementptr inbounds %struct.item, ptr %12, i64 0, i32 6, !dbg !1544
  %14 = select i1 %11, ptr @head, ptr %13, !dbg !1544
  store ptr %0, ptr %14, align 8, !dbg !1545, !tbaa !855
  store ptr %0, ptr @zeros, align 8, !dbg !1546, !tbaa !855
  br label %15, !dbg !1547

15:                                               ; preds = %9, %5, %1
  ret i1 false, !dbg !1548
}

; Function Attrs: nofree nounwind
declare !dbg !1549 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i1 @detect_loop(ptr noundef %0) #12 !dbg !1552 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1554, metadata !DIExpression()), !dbg !1573
  %2 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 5, !dbg !1574
  %3 = load i64, ptr %2, align 8, !dbg !1574, !tbaa !1384
  %4 = icmp eq i64 %3, 0, !dbg !1575
  br i1 %4, label %58, label %5, !dbg !1576

5:                                                ; preds = %1
  %6 = load ptr, ptr @loop, align 8, !dbg !1577, !tbaa !855
  %7 = icmp eq ptr %6, null, !dbg !1578
  br i1 %7, label %55, label %8, !dbg !1579

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 7, !dbg !1580
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1555, metadata !DIExpression()), !dbg !1581
  %10 = load ptr, ptr %9, align 8, !dbg !1582, !tbaa !855
  %11 = icmp eq ptr %10, null, !dbg !1583
  br i1 %11, label %58, label %12, !dbg !1583

12:                                               ; preds = %8
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1555, metadata !DIExpression()), !dbg !1581
  %13 = load ptr, ptr %10, align 8, !dbg !1584, !tbaa !1387
  %14 = icmp eq ptr %13, %6, !dbg !1585
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !1555, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1581
  br i1 %14, label %25, label %.preheader3, !dbg !1586

.preheader3:                                      ; preds = %12
  br label %15, !dbg !1583

15:                                               ; preds = %.preheader3, %20
  %16 = phi ptr [ %18, %20 ], [ %10, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !1555, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1581
  %17 = getelementptr inbounds %struct.successor, ptr %16, i64 0, i32 1, !dbg !1587
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !1555, metadata !DIExpression()), !dbg !1581
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !1555, metadata !DIExpression()), !dbg !1581
  %18 = load ptr, ptr %17, align 8, !dbg !1582, !tbaa !855
  %19 = icmp eq ptr %18, null, !dbg !1583
  br i1 %19, label %.loopexit4, label %20, !dbg !1583, !llvm.loop !1588

20:                                               ; preds = %15
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !1555, metadata !DIExpression()), !dbg !1581
  %21 = load ptr, ptr %18, align 8, !dbg !1584, !tbaa !1387
  %22 = icmp eq ptr %21, %6, !dbg !1585
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !1555, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1581
  br i1 %22, label %23, label %15, !dbg !1586, !llvm.loop !1588

23:                                               ; preds = %20
  %.lcssa5 = phi ptr [ %16, %20 ]
  %24 = getelementptr inbounds %struct.successor, ptr %.lcssa5, i64 0, i32 1
  br label %25, !dbg !1590

25:                                               ; preds = %23, %12
  %26 = phi ptr [ %9, %12 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 6, !dbg !1590
  %28 = load ptr, ptr %27, align 8, !dbg !1590, !tbaa !1448
  %29 = icmp eq ptr %28, null, !dbg !1591
  br i1 %29, label %54, label %.preheader1, !dbg !1592

.preheader1:                                      ; preds = %25
  br label %30, !dbg !1593

30:                                               ; preds = %.preheader1, %37
  %31 = phi ptr [ %33, %37 ], [ %6, %.preheader1 ]
  %32 = getelementptr inbounds %struct.item, ptr %31, i64 0, i32 6, !dbg !1594
  %33 = load ptr, ptr %32, align 8, !dbg !1594, !tbaa !1448
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1561, metadata !DIExpression()), !dbg !1595
  %34 = load ptr, ptr %31, align 8, !dbg !1596, !tbaa !1207
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.53, ptr noundef %34) #40, !dbg !1596
  %35 = load ptr, ptr @loop, align 8, !dbg !1597, !tbaa !855
  %36 = icmp eq ptr %35, %0, !dbg !1598
  br i1 %36, label %40, label %37, !dbg !1593

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.item, ptr %35, i64 0, i32 6, !dbg !1599
  store ptr null, ptr %38, align 8, !dbg !1600, !tbaa !1448
  store ptr %33, ptr @loop, align 8, !dbg !1601, !tbaa !855
  %39 = icmp eq ptr %33, null, !dbg !1602
  br i1 %39, label %.loopexit2, label %30, !dbg !1602

40:                                               ; preds = %30
  %41 = load ptr, ptr %26, align 8, !dbg !1603, !tbaa !855
  tail call void @llvm.dbg.value(metadata ptr %41, metadata !1568, metadata !DIExpression()), !dbg !1604
  %42 = load ptr, ptr %41, align 8, !dbg !1605, !tbaa !1387
  %43 = getelementptr inbounds %struct.item, ptr %42, i64 0, i32 5, !dbg !1606
  %44 = load i64, ptr %43, align 8, !dbg !1607, !tbaa !1384
  %45 = add i64 %44, -1, !dbg !1607
  store i64 %45, ptr %43, align 8, !dbg !1607, !tbaa !1384
  %46 = getelementptr inbounds %struct.successor, ptr %41, i64 0, i32 1, !dbg !1608
  %47 = load ptr, ptr %46, align 8, !dbg !1608, !tbaa !1393
  store ptr %47, ptr %26, align 8, !dbg !1609, !tbaa !855
  %48 = icmp eq ptr %0, null, !dbg !1610
  br i1 %48, label %58, label %.preheader, !dbg !1610

.preheader:                                       ; preds = %40
  br label %49, !dbg !1610

49:                                               ; preds = %.preheader, %49
  %50 = phi ptr [ %52, %49 ], [ %0, %.preheader ]
  %51 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 6, !dbg !1611
  %52 = load ptr, ptr %51, align 8, !dbg !1611, !tbaa !1448
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !1571, metadata !DIExpression()), !dbg !1612
  store ptr null, ptr %51, align 8, !dbg !1613, !tbaa !1448
  %53 = icmp eq ptr %52, null, !dbg !1610
  br i1 %53, label %.loopexit, label %49, !dbg !1610, !llvm.loop !1614

54:                                               ; preds = %25
  store ptr %6, ptr %27, align 8, !dbg !1616, !tbaa !1448
  br label %55, !dbg !1618

.loopexit:                                        ; preds = %49
  br label %55, !dbg !1619

55:                                               ; preds = %.loopexit, %5, %54
  %56 = phi ptr [ %0, %54 ], [ %0, %5 ], [ null, %.loopexit ]
  %57 = phi i1 [ false, %54 ], [ false, %5 ], [ true, %.loopexit ]
  store ptr %56, ptr @loop, align 8, !dbg !1619, !tbaa !855
  br label %58, !dbg !1620

.loopexit2:                                       ; preds = %37
  br label %58, !dbg !1620

.loopexit4:                                       ; preds = %15
  br label %58, !dbg !1620

58:                                               ; preds = %.loopexit4, %.loopexit2, %55, %8, %40, %1
  %59 = phi i1 [ false, %1 ], [ true, %40 ], [ false, %8 ], [ %57, %55 ], [ true, %.loopexit2 ], [ false, %.loopexit4 ], !dbg !1573
  ret i1 %59, !dbg !1620
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #14 !dbg !1621 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1623, metadata !DIExpression()), !dbg !1624
  store ptr %0, ptr @file_name, align 8, !dbg !1625, !tbaa !855
  ret void, !dbg !1626
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !1627 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1631, metadata !DIExpression()), !dbg !1632
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1633, !tbaa !1634
  ret void, !dbg !1635
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1636 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1641, !tbaa !855
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1642
  %3 = icmp eq i32 %2, 0, !dbg !1643
  br i1 %3, label %22, label %4, !dbg !1644

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1645, !tbaa !1634, !range !1538, !noundef !886
  %6 = icmp eq i8 %5, 0, !dbg !1645
  br i1 %6, label %11, label %7, !dbg !1646

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1647
  %9 = load i32, ptr %8, align 4, !dbg !1647, !tbaa !918
  %10 = icmp eq i32 %9, 32, !dbg !1648
  br i1 %10, label %22, label %11, !dbg !1649

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1.25, i32 noundef 5) #40, !dbg !1650
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1638, metadata !DIExpression()), !dbg !1651
  %13 = load ptr, ptr @file_name, align 8, !dbg !1652, !tbaa !855
  %14 = icmp eq ptr %13, null, !dbg !1652
  %15 = tail call ptr @__errno_location() #43, !dbg !1654
  %16 = load i32, ptr %15, align 4, !dbg !1654, !tbaa !918
  br i1 %14, label %19, label %17, !dbg !1655

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1656
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.26, ptr noundef %18, ptr noundef %12) #40, !dbg !1656
  br label %20, !dbg !1656

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.27, ptr noundef %12) #40, !dbg !1657
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1658, !tbaa !918
  tail call void @_exit(i32 noundef %21) #42, !dbg !1659
  unreachable, !dbg !1659

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1660, !tbaa !855
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1662
  %25 = icmp eq i32 %24, 0, !dbg !1663
  br i1 %25, label %28, label %26, !dbg !1664

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1665, !tbaa !918
  tail call void @_exit(i32 noundef %27) #42, !dbg !1666
  unreachable, !dbg !1666

28:                                               ; preds = %22
  ret void, !dbg !1667
}

; Function Attrs: noreturn
declare !dbg !1668 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !1670 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1674, metadata !DIExpression()), !dbg !1678
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1675, metadata !DIExpression()), !dbg !1678
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1676, metadata !DIExpression()), !dbg !1678
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1677, metadata !DIExpression(DW_OP_deref)), !dbg !1678
  tail call fastcc void @flush_stdout(), !dbg !1679
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1680, !tbaa !855
  %7 = icmp eq ptr %6, null, !dbg !1680
  br i1 %7, label %9, label %8, !dbg !1682

8:                                                ; preds = %4
  tail call void %6() #40, !dbg !1683
  br label %13, !dbg !1683

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1684, !tbaa !855
  %11 = tail call ptr @getprogname() #41, !dbg !1684
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef %11) #40, !dbg !1684
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !1686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1686, !tbaa.struct !1687
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1686
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !1686
  ret void, !dbg !1688
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1689 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i32 1, metadata !1693, metadata !DIExpression()), !dbg !1698
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !1701
  %2 = icmp slt i32 %1, 0, !dbg !1702
  br i1 %2, label %6, label %3, !dbg !1703

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1704, !tbaa !855
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !1704
  br label %6, !dbg !1704

6:                                                ; preds = %3, %0
  ret void, !dbg !1705
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #12 !dbg !1706 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1712
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1708, metadata !DIExpression()), !dbg !1713
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1709, metadata !DIExpression()), !dbg !1713
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1710, metadata !DIExpression()), !dbg !1713
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1711, metadata !DIExpression(DW_OP_deref)), !dbg !1713
  %7 = load ptr, ptr @stderr, align 8, !dbg !1714, !tbaa !855
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !1715, !noalias !1759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1763
  call void @llvm.dbg.value(metadata ptr %7, metadata !1755, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata ptr %2, metadata !1756, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata ptr poison, metadata !1757, metadata !DIExpression(DW_OP_deref)), !dbg !1764
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #40, !dbg !1715
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !1715, !noalias !1759
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1765, !tbaa !918
  %10 = add i32 %9, 1, !dbg !1765
  store i32 %10, ptr @error_message_count, align 4, !dbg !1765, !tbaa !918
  %11 = icmp eq i32 %1, 0, !dbg !1766
  br i1 %11, label %21, label %12, !dbg !1768

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1769, metadata !DIExpression(), metadata !1712, metadata ptr %5, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i32 %1, metadata !1772, metadata !DIExpression()), !dbg !1777
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !1779
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !1780
  call void @llvm.dbg.value(metadata ptr %13, metadata !1773, metadata !DIExpression()), !dbg !1777
  %14 = icmp eq ptr %13, null, !dbg !1781
  br i1 %14, label %15, label %17, !dbg !1783

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.29, ptr noundef nonnull @.str.5.30, i32 noundef 5) #40, !dbg !1784
  call void @llvm.dbg.value(metadata ptr %16, metadata !1773, metadata !DIExpression()), !dbg !1777
  br label %17, !dbg !1785

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1777
  call void @llvm.dbg.value(metadata ptr %18, metadata !1773, metadata !DIExpression()), !dbg !1777
  %19 = load ptr, ptr @stderr, align 8, !dbg !1786, !tbaa !855
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.31, ptr noundef %18) #40, !dbg !1786
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !1787
  br label %21, !dbg !1788

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1789, !tbaa !855
  call void @llvm.dbg.value(metadata i32 10, metadata !1790, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr %22, metadata !1795, metadata !DIExpression()), !dbg !1796
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1798
  %24 = load ptr, ptr %23, align 8, !dbg !1798, !tbaa !1799
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1798
  %26 = load ptr, ptr %25, align 8, !dbg !1798, !tbaa !1800
  %27 = icmp ult ptr %24, %26, !dbg !1798
  br i1 %27, label %30, label %28, !dbg !1798, !prof !1801

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #40, !dbg !1798
  br label %32, !dbg !1798

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1798
  store ptr %31, ptr %23, align 8, !dbg !1798, !tbaa !1799
  store i8 10, ptr %24, align 1, !dbg !1798, !tbaa !927
  br label %32, !dbg !1798

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1802, !tbaa !855
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #40, !dbg !1802
  %35 = icmp eq i32 %0, 0, !dbg !1803
  br i1 %35, label %37, label %36, !dbg !1805

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #42, !dbg !1806
  unreachable, !dbg !1806

37:                                               ; preds = %32
  ret void, !dbg !1807
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

declare !dbg !1808 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1811 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1814 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1817 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1820 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #12 !dbg !1824 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1832
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1831, metadata !DIExpression(), metadata !1832, metadata ptr %4, metadata !DIExpression()), !dbg !1833
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1828, metadata !DIExpression()), !dbg !1833
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1829, metadata !DIExpression()), !dbg !1833
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1830, metadata !DIExpression()), !dbg !1833
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #40, !dbg !1834
  call void @llvm.va_start(ptr nonnull %4), !dbg !1835
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !1836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1836, !tbaa.struct !1687
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #46, !dbg !1836
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !1836
  call void @llvm.va_end(ptr nonnull %4), !dbg !1837
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #40, !dbg !1838
  ret void, !dbg !1838
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !438 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !454, metadata !DIExpression()), !dbg !1839
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !455, metadata !DIExpression()), !dbg !1839
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !456, metadata !DIExpression()), !dbg !1839
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !457, metadata !DIExpression()), !dbg !1839
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !458, metadata !DIExpression()), !dbg !1839
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !459, metadata !DIExpression(DW_OP_deref)), !dbg !1839
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1840, !tbaa !918
  %9 = icmp eq i32 %8, 0, !dbg !1840
  br i1 %9, label %24, label %10, !dbg !1842

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1843, !tbaa !918
  %12 = icmp eq i32 %11, %3, !dbg !1846
  br i1 %12, label %13, label %23, !dbg !1847

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1848, !tbaa !855
  %15 = icmp eq ptr %14, %2, !dbg !1849
  br i1 %15, label %37, label %16, !dbg !1850

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1851
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1852
  br i1 %19, label %20, label %23, !dbg !1852

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !1853
  %22 = icmp eq i32 %21, 0, !dbg !1854
  br i1 %22, label %37, label %23, !dbg !1855

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1856, !tbaa !855
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1857, !tbaa !918
  br label %24, !dbg !1858

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1859
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1860, !tbaa !855
  %26 = icmp eq ptr %25, null, !dbg !1860
  br i1 %26, label %28, label %27, !dbg !1862

27:                                               ; preds = %24
  tail call void %25() #40, !dbg !1863
  br label %32, !dbg !1863

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1864, !tbaa !855
  %30 = tail call ptr @getprogname() #41, !dbg !1864
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.34, ptr noundef %30) #40, !dbg !1864
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1866, !tbaa !855
  %34 = icmp eq ptr %2, null, !dbg !1866
  %35 = select i1 %34, ptr @.str.3.35, ptr @.str.2.36, !dbg !1866
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #40, !dbg !1866
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !1867
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1867, !tbaa.struct !1687
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1867
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !1867
  br label %37, !dbg !1868

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1868
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #12 !dbg !1869 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1879
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1878, metadata !DIExpression(), metadata !1879, metadata ptr %6, metadata !DIExpression()), !dbg !1880
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1873, metadata !DIExpression()), !dbg !1880
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1874, metadata !DIExpression()), !dbg !1880
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1875, metadata !DIExpression()), !dbg !1880
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1876, metadata !DIExpression()), !dbg !1880
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1877, metadata !DIExpression()), !dbg !1880
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !1881
  call void @llvm.va_start(ptr nonnull %6), !dbg !1882
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !1883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1883, !tbaa.struct !1687
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #46, !dbg !1883
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !1883
  call void @llvm.va_end(ptr nonnull %6), !dbg !1884
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !1885
  ret void, !dbg !1885
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 !dbg !1886 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1892, metadata !DIExpression()), !dbg !1896
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1893, metadata !DIExpression()), !dbg !1896
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1894, metadata !DIExpression()), !dbg !1896
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1895, metadata !DIExpression()), !dbg !1896
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #40, !dbg !1897
  ret void, !dbg !1898
}

; Function Attrs: nounwind
declare !dbg !1899 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !1902 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1940, metadata !DIExpression()), !dbg !1942
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1941, metadata !DIExpression()), !dbg !1942
  %3 = icmp eq ptr %0, null, !dbg !1943
  br i1 %3, label %7, label %4, !dbg !1945

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !1946
  call void @llvm.dbg.value(metadata i32 %5, metadata !1892, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 0, metadata !1893, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 0, metadata !1894, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i32 %1, metadata !1895, metadata !DIExpression()), !dbg !1947
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #40, !dbg !1949
  br label %7, !dbg !1950

7:                                                ; preds = %4, %2
  ret void, !dbg !1951
}

; Function Attrs: nofree nounwind
declare !dbg !1952 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #12 !dbg !1955 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1993, metadata !DIExpression()), !dbg !1997
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1994, metadata !DIExpression()), !dbg !1997
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !1998
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1995, metadata !DIExpression()), !dbg !1997
  %3 = icmp slt i32 %2, 0, !dbg !1999
  br i1 %3, label %4, label %6, !dbg !2001

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2002
  br label %24, !dbg !2003

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !2004
  %8 = icmp eq i32 %7, 0, !dbg !2004
  br i1 %8, label %13, label %9, !dbg !2006

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !2007
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !2008
  %12 = icmp eq i64 %11, -1, !dbg !2009
  br i1 %12, label %16, label %13, !dbg !2010

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !2011
  %15 = icmp eq i32 %14, 0, !dbg !2011
  br i1 %15, label %16, label %18, !dbg !2012

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1994, metadata !DIExpression()), !dbg !1997
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1996, metadata !DIExpression()), !dbg !1997
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2013
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1996, metadata !DIExpression()), !dbg !1997
  br label %24, !dbg !2014

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !2015
  %20 = load i32, ptr %19, align 4, !dbg !2015, !tbaa !918
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1994, metadata !DIExpression()), !dbg !1997
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1996, metadata !DIExpression()), !dbg !1997
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2013
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !1996, metadata !DIExpression()), !dbg !1997
  %22 = icmp eq i32 %20, 0, !dbg !2016
  br i1 %22, label %24, label %23, !dbg !2014

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2018, !tbaa !918
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1996, metadata !DIExpression()), !dbg !1997
  br label %24, !dbg !2020

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !1997
  ret i32 %25, !dbg !2021
}

; Function Attrs: nofree nounwind
declare !dbg !2022 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2023 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2025 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #12 !dbg !2028 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2066, metadata !DIExpression()), !dbg !2067
  %2 = icmp eq ptr %0, null, !dbg !2068
  br i1 %2, label %6, label %3, !dbg !2070

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !2071
  %5 = icmp eq i32 %4, 0, !dbg !2071
  br i1 %5, label %6, label %8, !dbg !2072

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2073
  br label %16, !dbg !2074

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2075, metadata !DIExpression()), !dbg !2080
  %9 = load i32, ptr %0, align 8, !dbg !2082, !tbaa !1169
  %10 = and i32 %9, 256, !dbg !2084
  %11 = icmp eq i32 %10, 0, !dbg !2084
  br i1 %11, label %14, label %12, !dbg !2085

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !2086
  br label %14, !dbg !2086

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2087
  br label %16, !dbg !2088

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2067
  ret i32 %17, !dbg !2089
}

; Function Attrs: nofree nounwind
declare !dbg !2090 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @freopen_safer(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) local_unnamed_addr #12 !dbg !2091 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2129, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2130, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2131, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2132, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2133, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2134, metadata !DIExpression()), !dbg !2136
  %4 = tail call i32 @fileno(ptr noundef nonnull %2) #40, !dbg !2137
  switch i32 %4, label %5 [
    i32 2, label %8
    i32 1, label %12
    i32 0, label %49
  ], !dbg !2138

5:                                                ; preds = %3
  %6 = tail call i32 @dup2(i32 noundef 2, i32 noundef 2) #40, !dbg !2139
  %7 = icmp ne i32 %6, 2, !dbg !2142
  br label %8, !dbg !2143

8:                                                ; preds = %5, %3
  %9 = phi i1 [ false, %3 ], [ %7, %5 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2134, metadata !DIExpression()), !dbg !2136
  %10 = tail call i32 @dup2(i32 noundef 1, i32 noundef 1) #40, !dbg !2144
  %11 = icmp ne i32 %10, 1, !dbg !2146
  br label %12, !dbg !2147

12:                                               ; preds = %3, %8
  %13 = phi i1 [ false, %3 ], [ %11, %8 ]
  %14 = phi i1 [ false, %3 ], [ %9, %8 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2134, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2133, metadata !DIExpression()), !dbg !2136
  %15 = tail call i32 @dup2(i32 noundef 0, i32 noundef 0) #40, !dbg !2148
  %16 = icmp ne i32 %15, 0, !dbg !2150
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2136
  br i1 %16, label %17, label %25, !dbg !2151

17:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 0, metadata !2153, metadata !DIExpression()), !dbg !2159
  %18 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.62, i32 noundef 0) #40, !dbg !2161
  call void @llvm.dbg.value(metadata i32 %18, metadata !2158, metadata !DIExpression()), !dbg !2159
  %19 = icmp slt i32 %18, 1, !dbg !2162
  br i1 %19, label %23, label %20, !dbg !2162

20:                                               ; preds = %17
  %21 = tail call i32 @close(i32 noundef %18) #40, !dbg !2163
  %22 = tail call ptr @__errno_location() #43, !dbg !2168
  store i32 9, ptr %22, align 4, !dbg !2169, !tbaa !918
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2131, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata i32 9, metadata !2135, metadata !DIExpression()), !dbg !2136
  br i1 %14, label %60, label %67, !dbg !2170

23:                                               ; preds = %17
  %24 = icmp eq i32 %18, 0, !dbg !2171
  br i1 %24, label %25, label %56, !dbg !2172

25:                                               ; preds = %23, %12
  br i1 %13, label %26, label %35, !dbg !2173

26:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 1, metadata !2153, metadata !DIExpression()), !dbg !2175
  %27 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.62, i32 noundef 0) #40, !dbg !2177
  call void @llvm.dbg.value(metadata i32 %27, metadata !2158, metadata !DIExpression()), !dbg !2175
  %28 = icmp eq i32 %27, 1, !dbg !2178
  %29 = icmp slt i32 %27, 0
  %30 = or i1 %29, %28, !dbg !2179
  br i1 %30, label %34, label %31, !dbg !2179

31:                                               ; preds = %26
  %32 = tail call i32 @close(i32 noundef %27) #40, !dbg !2180
  %33 = tail call ptr @__errno_location() #43, !dbg !2181
  store i32 9, ptr %33, align 4, !dbg !2182, !tbaa !918
  br label %34, !dbg !2183

34:                                               ; preds = %26, %31
  br i1 %28, label %35, label %56, !dbg !2184

35:                                               ; preds = %34, %25
  br i1 %14, label %36, label %49, !dbg !2185

36:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 2, metadata !2153, metadata !DIExpression()), !dbg !2187
  %37 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.62, i32 noundef 0) #40, !dbg !2189
  call void @llvm.dbg.value(metadata i32 %37, metadata !2158, metadata !DIExpression()), !dbg !2187
  %38 = icmp eq i32 %37, 2, !dbg !2190
  %39 = icmp slt i32 %37, 0
  %40 = or i1 %39, %38, !dbg !2191
  br i1 %40, label %44, label %41, !dbg !2191

41:                                               ; preds = %36
  %42 = tail call i32 @close(i32 noundef %37) #40, !dbg !2192
  %43 = tail call ptr @__errno_location() #43, !dbg !2193
  store i32 9, ptr %43, align 4, !dbg !2194, !tbaa !918
  br label %44, !dbg !2195

44:                                               ; preds = %36, %41
  br i1 %38, label %49, label %45, !dbg !2196

45:                                               ; preds = %44
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2131, metadata !DIExpression()), !dbg !2136
  %46 = tail call ptr @__errno_location() #43, !dbg !2197
  %47 = load i32, ptr %46, align 4, !dbg !2197, !tbaa !918
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !2135, metadata !DIExpression()), !dbg !2136
  %48 = tail call i32 @close(i32 noundef 2) #40, !dbg !2198
  br i1 %13, label %73, label %79, !dbg !2200

49:                                               ; preds = %3, %44, %35
  %50 = phi i1 [ true, %44 ], [ false, %35 ], [ false, %3 ]
  %51 = phi i1 [ %13, %44 ], [ %13, %35 ], [ false, %3 ]
  %52 = phi i1 [ %16, %44 ], [ %16, %35 ], [ false, %3 ]
  %53 = tail call ptr @freopen(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #40, !dbg !2201
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !2131, metadata !DIExpression()), !dbg !2136
  %54 = tail call ptr @__errno_location() #43, !dbg !2197
  %55 = load i32, ptr %54, align 4, !dbg !2197, !tbaa !918
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !2135, metadata !DIExpression()), !dbg !2136
  br i1 %50, label %60, label %67, !dbg !2170

56:                                               ; preds = %34, %23
  %57 = phi i1 [ %13, %23 ], [ true, %34 ]
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2131, metadata !DIExpression()), !dbg !2136
  %58 = tail call ptr @__errno_location() #43, !dbg !2197
  %59 = load i32, ptr %58, align 4, !dbg !2197, !tbaa !918
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !2135, metadata !DIExpression()), !dbg !2136
  br i1 %14, label %60, label %67, !dbg !2170

60:                                               ; preds = %20, %49, %56
  %61 = phi i32 [ %59, %56 ], [ %55, %49 ], [ 9, %20 ]
  %62 = phi ptr [ %58, %56 ], [ %54, %49 ], [ %22, %20 ]
  %63 = phi ptr [ null, %56 ], [ %53, %49 ], [ null, %20 ]
  %64 = phi i1 [ %16, %56 ], [ %52, %49 ], [ true, %20 ]
  %65 = phi i1 [ %57, %56 ], [ %51, %49 ], [ %13, %20 ]
  %66 = tail call i32 @close(i32 noundef 2) #40, !dbg !2198
  br i1 %65, label %73, label %79, !dbg !2200

67:                                               ; preds = %20, %49, %56
  %68 = phi i32 [ %59, %56 ], [ %55, %49 ], [ 9, %20 ]
  %69 = phi ptr [ %58, %56 ], [ %54, %49 ], [ %22, %20 ]
  %70 = phi ptr [ null, %56 ], [ %53, %49 ], [ null, %20 ]
  %71 = phi i1 [ %16, %56 ], [ %52, %49 ], [ true, %20 ]
  %72 = phi i1 [ %57, %56 ], [ %51, %49 ], [ %13, %20 ]
  br i1 %72, label %73, label %79, !dbg !2200

73:                                               ; preds = %45, %60, %67
  %74 = phi i1 [ %64, %60 ], [ %71, %67 ], [ %16, %45 ]
  %75 = phi ptr [ %63, %60 ], [ %70, %67 ], [ null, %45 ]
  %76 = phi ptr [ %62, %60 ], [ %69, %67 ], [ %46, %45 ]
  %77 = phi i32 [ %61, %60 ], [ %68, %67 ], [ %47, %45 ]
  %78 = tail call i32 @close(i32 noundef 1) #40, !dbg !2202
  br i1 %74, label %84, label %89, !dbg !2204

79:                                               ; preds = %45, %60, %67
  %80 = phi i1 [ %64, %60 ], [ %71, %67 ], [ %16, %45 ]
  %81 = phi ptr [ %63, %60 ], [ %70, %67 ], [ null, %45 ]
  %82 = phi ptr [ %62, %60 ], [ %69, %67 ], [ %46, %45 ]
  %83 = phi i32 [ %61, %60 ], [ %68, %67 ], [ %47, %45 ]
  br i1 %80, label %84, label %89, !dbg !2204

84:                                               ; preds = %73, %79
  %85 = phi i32 [ %77, %73 ], [ %83, %79 ]
  %86 = phi ptr [ %76, %73 ], [ %82, %79 ]
  %87 = phi ptr [ %75, %73 ], [ %81, %79 ]
  %88 = tail call i32 @close(i32 noundef 0) #40, !dbg !2205
  br label %89, !dbg !2205

89:                                               ; preds = %73, %84, %79
  %90 = phi i32 [ %77, %73 ], [ %85, %84 ], [ %83, %79 ]
  %91 = phi ptr [ %76, %73 ], [ %86, %84 ], [ %82, %79 ]
  %92 = phi ptr [ %75, %73 ], [ %87, %84 ], [ %81, %79 ]
  %93 = icmp eq ptr %92, null, !dbg !2207
  br i1 %93, label %94, label %95, !dbg !2209

94:                                               ; preds = %89
  store i32 %90, ptr %91, align 4, !dbg !2210, !tbaa !918
  br label %95, !dbg !2211

95:                                               ; preds = %94, %89
  ret ptr %92, !dbg !2212
}

; Function Attrs: nounwind
declare !dbg !2213 i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !2216 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #19

declare !dbg !2219 i32 @close(i32 noundef) local_unnamed_addr #3

declare !dbg !2220 ptr @freopen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !2224 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2262, metadata !DIExpression()), !dbg !2268
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2263, metadata !DIExpression()), !dbg !2268
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2264, metadata !DIExpression()), !dbg !2268
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2269
  %5 = load ptr, ptr %4, align 8, !dbg !2269, !tbaa !2270
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2271
  %7 = load ptr, ptr %6, align 8, !dbg !2271, !tbaa !2272
  %8 = icmp eq ptr %5, %7, !dbg !2273
  br i1 %8, label %9, label %27, !dbg !2274

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2275
  %11 = load ptr, ptr %10, align 8, !dbg !2275, !tbaa !1799
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2276
  %13 = load ptr, ptr %12, align 8, !dbg !2276, !tbaa !2277
  %14 = icmp eq ptr %11, %13, !dbg !2278
  br i1 %14, label %15, label %27, !dbg !2279

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2280
  %17 = load ptr, ptr %16, align 8, !dbg !2280, !tbaa !2281
  %18 = icmp eq ptr %17, null, !dbg !2282
  br i1 %18, label %19, label %27, !dbg !2283

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !2284
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !2285
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2265, metadata !DIExpression()), !dbg !2286
  %22 = icmp eq i64 %21, -1, !dbg !2287
  br i1 %22, label %29, label %23, !dbg !2289

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2290, !tbaa !1169
  %25 = and i32 %24, -17, !dbg !2290
  store i32 %25, ptr %0, align 8, !dbg !2290, !tbaa !1169
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2291
  store i64 %21, ptr %26, align 8, !dbg !2292, !tbaa !2293
  br label %29, !dbg !2294

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2295
  br label %29, !dbg !2296

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2268
  ret i32 %30, !dbg !2297
}

; Function Attrs: nofree nounwind
declare !dbg !2298 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !2301 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2304, !tbaa !855
  ret ptr %1, !dbg !2305
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !2306 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2308, metadata !DIExpression()), !dbg !2311
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2312
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2309, metadata !DIExpression()), !dbg !2311
  %3 = icmp eq ptr %2, null, !dbg !2313
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2313
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2313
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2310, metadata !DIExpression()), !dbg !2311
  %6 = ptrtoint ptr %5 to i64, !dbg !2314
  %7 = ptrtoint ptr %0 to i64, !dbg !2314
  %8 = sub i64 %6, %7, !dbg !2314
  %9 = icmp sgt i64 %8, 6, !dbg !2316
  br i1 %9, label %10, label %19, !dbg !2317

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2318
  call void @llvm.dbg.value(metadata ptr %11, metadata !2319, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata ptr @.str.71, metadata !2324, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 7, metadata !2325, metadata !DIExpression()), !dbg !2326
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.71, i64 7), !dbg !2328
  %13 = icmp eq i32 %12, 0, !dbg !2329
  br i1 %13, label %14, label %19, !dbg !2330

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2308, metadata !DIExpression()), !dbg !2311
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.72, i64 noundef 3) #41, !dbg !2331
  %16 = icmp eq i32 %15, 0, !dbg !2334
  %17 = select i1 %16, i64 3, i64 0, !dbg !2335
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2335
  br label %19, !dbg !2335

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2311
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2310, metadata !DIExpression()), !dbg !2311
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2308, metadata !DIExpression()), !dbg !2311
  store ptr %20, ptr @program_name, align 8, !dbg !2336, !tbaa !855
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2337, !tbaa !855
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2338, !tbaa !855
  ret void, !dbg !2339
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2340 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #12 !dbg !499 {
  %3 = alloca i32, align 4, !DIAssignID !2341
  call void @llvm.dbg.assign(metadata i1 undef, metadata !509, metadata !DIExpression(), metadata !2341, metadata ptr %3, metadata !DIExpression()), !dbg !2342
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2343
  call void @llvm.dbg.assign(metadata i1 undef, metadata !514, metadata !DIExpression(), metadata !2343, metadata ptr %4, metadata !DIExpression()), !dbg !2342
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !506, metadata !DIExpression()), !dbg !2342
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !507, metadata !DIExpression()), !dbg !2342
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2344
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !508, metadata !DIExpression()), !dbg !2342
  %6 = icmp eq ptr %5, %0, !dbg !2345
  br i1 %6, label %7, label %14, !dbg !2347

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2348
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2349
  call void @llvm.dbg.value(metadata ptr %4, metadata !2350, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata ptr %4, metadata !2359, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i32 0, metadata !2365, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i64 8, metadata !2366, metadata !DIExpression()), !dbg !2367
  store i64 0, ptr %4, align 8, !dbg !2369
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2370
  %9 = icmp eq i64 %8, 2, !dbg !2372
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2373
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2342
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2374
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2374
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2342
  ret ptr %15, !dbg !2374
}

; Function Attrs: nounwind
declare !dbg !2375 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #12 !dbg !2381 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2386, metadata !DIExpression()), !dbg !2389
  %2 = tail call ptr @__errno_location() #43, !dbg !2390
  %3 = load i32, ptr %2, align 4, !dbg !2390, !tbaa !918
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2387, metadata !DIExpression()), !dbg !2389
  %4 = icmp eq ptr %0, null, !dbg !2391
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2391
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #47, !dbg !2392
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2388, metadata !DIExpression()), !dbg !2389
  store i32 %3, ptr %2, align 4, !dbg !2393, !tbaa !918
  ret ptr %6, !dbg !2394
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !2395 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2401, metadata !DIExpression()), !dbg !2402
  %2 = icmp eq ptr %0, null, !dbg !2403
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2403
  %4 = load i32, ptr %3, align 8, !dbg !2404, !tbaa !2405
  ret i32 %4, !dbg !2407
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2408 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2412, metadata !DIExpression()), !dbg !2414
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2413, metadata !DIExpression()), !dbg !2414
  %3 = icmp eq ptr %0, null, !dbg !2415
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2415
  store i32 %1, ptr %4, align 8, !dbg !2416, !tbaa !2405
  ret void, !dbg !2417
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #13 !dbg !2418 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2422, metadata !DIExpression()), !dbg !2430
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2423, metadata !DIExpression()), !dbg !2430
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2424, metadata !DIExpression()), !dbg !2430
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2425, metadata !DIExpression()), !dbg !2430
  %4 = icmp eq ptr %0, null, !dbg !2431
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2431
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2432
  %7 = lshr i8 %1, 5, !dbg !2433
  %8 = zext nneg i8 %7 to i64, !dbg !2433
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2434
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2426, metadata !DIExpression()), !dbg !2430
  %10 = and i8 %1, 31, !dbg !2435
  %11 = zext nneg i8 %10 to i32, !dbg !2435
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2428, metadata !DIExpression()), !dbg !2430
  %12 = load i32, ptr %9, align 4, !dbg !2436, !tbaa !918
  %13 = lshr i32 %12, %11, !dbg !2437
  %14 = and i32 %13, 1, !dbg !2438
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2429, metadata !DIExpression()), !dbg !2430
  %15 = xor i32 %13, %2, !dbg !2439
  %16 = and i32 %15, 1, !dbg !2439
  %17 = shl nuw i32 %16, %11, !dbg !2440
  %18 = xor i32 %17, %12, !dbg !2441
  store i32 %18, ptr %9, align 4, !dbg !2441, !tbaa !918
  ret i32 %14, !dbg !2442
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #13 !dbg !2443 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2447, metadata !DIExpression()), !dbg !2450
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2448, metadata !DIExpression()), !dbg !2450
  %3 = icmp eq ptr %0, null, !dbg !2451
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2453
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2447, metadata !DIExpression()), !dbg !2450
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2454
  %6 = load i32, ptr %5, align 4, !dbg !2454, !tbaa !2455
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2449, metadata !DIExpression()), !dbg !2450
  store i32 %1, ptr %5, align 4, !dbg !2456, !tbaa !2455
  ret i32 %6, !dbg !2457
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 !dbg !2458 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2462, metadata !DIExpression()), !dbg !2465
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2463, metadata !DIExpression()), !dbg !2465
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2464, metadata !DIExpression()), !dbg !2465
  %4 = icmp eq ptr %0, null, !dbg !2466
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2468
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2462, metadata !DIExpression()), !dbg !2465
  store i32 10, ptr %5, align 8, !dbg !2469, !tbaa !2405
  %6 = icmp ne ptr %1, null, !dbg !2470
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2472
  br i1 %8, label %10, label %9, !dbg !2472

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2473
  unreachable, !dbg !2473

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2474
  store ptr %1, ptr %11, align 8, !dbg !2475, !tbaa !2476
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2477
  store ptr %2, ptr %12, align 8, !dbg !2478, !tbaa !2479
  ret void, !dbg !2480
}

; Function Attrs: noreturn nounwind
declare !dbg !2481 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #12 !dbg !2482 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2486, metadata !DIExpression()), !dbg !2494
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2487, metadata !DIExpression()), !dbg !2494
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2488, metadata !DIExpression()), !dbg !2494
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2489, metadata !DIExpression()), !dbg !2494
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2490, metadata !DIExpression()), !dbg !2494
  %6 = icmp eq ptr %4, null, !dbg !2495
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2495
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2491, metadata !DIExpression()), !dbg !2494
  %8 = tail call ptr @__errno_location() #43, !dbg !2496
  %9 = load i32, ptr %8, align 4, !dbg !2496, !tbaa !918
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2492, metadata !DIExpression()), !dbg !2494
  %10 = load i32, ptr %7, align 8, !dbg !2497, !tbaa !2405
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2498
  %12 = load i32, ptr %11, align 4, !dbg !2498, !tbaa !2455
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2499
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2500
  %15 = load ptr, ptr %14, align 8, !dbg !2500, !tbaa !2476
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2501
  %17 = load ptr, ptr %16, align 8, !dbg !2501, !tbaa !2479
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2502
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2493, metadata !DIExpression()), !dbg !2494
  store i32 %9, ptr %8, align 4, !dbg !2503, !tbaa !918
  ret i64 %18, !dbg !2504
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #12 !dbg !2505 {
  %10 = alloca i32, align 4, !DIAssignID !2573
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2574
  %12 = alloca i32, align 4, !DIAssignID !2575
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2576
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2577
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2551, metadata !DIExpression(), metadata !2577, metadata ptr %14, metadata !DIExpression()), !dbg !2578
  %15 = alloca i32, align 4, !DIAssignID !2579
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2554, metadata !DIExpression(), metadata !2579, metadata ptr %15, metadata !DIExpression()), !dbg !2580
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2511, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2512, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2513, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2514, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2515, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2516, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2517, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2518, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2519, metadata !DIExpression()), !dbg !2581
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2582
  %17 = icmp eq i64 %16, 1, !dbg !2583
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2520, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2521, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2522, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2523, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2524, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2525, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2526, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2527, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2528, metadata !DIExpression()), !dbg !2581
  %18 = and i32 %5, 2, !dbg !2584
  %19 = icmp ne i32 %18, 0, !dbg !2584
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2584

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2585
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2586
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2587
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2512, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2528, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2526, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2525, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2524, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2523, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2522, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2521, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2514, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2519, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !2518, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2515, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.label(metadata !2529), !dbg !2588
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2530, metadata !DIExpression()), !dbg !2581
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
  ], !dbg !2589

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2526, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2515, metadata !DIExpression()), !dbg !2581
  br label %101, !dbg !2590

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2526, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2515, metadata !DIExpression()), !dbg !2581
  br i1 %36, label %101, label %42, !dbg !2590

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2591
  br i1 %43, label %101, label %44, !dbg !2595

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2591, !tbaa !927
  br label %101, !dbg !2591

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !603, metadata !DIExpression(), metadata !2575, metadata ptr %12, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.assign(metadata i1 undef, metadata !604, metadata !DIExpression(), metadata !2576, metadata ptr %13, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata ptr @.str.11.85, metadata !600, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i32 %28, metadata !601, metadata !DIExpression()), !dbg !2596
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.86, ptr noundef nonnull @.str.11.85, i32 noundef 5) #40, !dbg !2600
  call void @llvm.dbg.value(metadata ptr %46, metadata !602, metadata !DIExpression()), !dbg !2596
  %47 = icmp eq ptr %46, @.str.11.85, !dbg !2601
  br i1 %47, label %48, label %57, !dbg !2603

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2604
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2605
  call void @llvm.dbg.value(metadata ptr %13, metadata !2606, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %13, metadata !2614, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i32 0, metadata !2617, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i64 8, metadata !2618, metadata !DIExpression()), !dbg !2619
  store i64 0, ptr %13, align 8, !dbg !2621
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2622
  %50 = icmp eq i64 %49, 3, !dbg !2624
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2625
  %54 = icmp eq i32 %28, 9, !dbg !2625
  %55 = select i1 %54, ptr @.str.10.87, ptr @.str.12.88, !dbg !2625
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2625
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2626
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2626
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2596
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !2518, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.assign(metadata i1 undef, metadata !603, metadata !DIExpression(), metadata !2573, metadata ptr %10, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.assign(metadata i1 undef, metadata !604, metadata !DIExpression(), metadata !2574, metadata ptr %11, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata ptr @.str.12.88, metadata !600, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32 %28, metadata !601, metadata !DIExpression()), !dbg !2627
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.86, ptr noundef nonnull @.str.12.88, i32 noundef 5) #40, !dbg !2629
  call void @llvm.dbg.value(metadata ptr %59, metadata !602, metadata !DIExpression()), !dbg !2627
  %60 = icmp eq ptr %59, @.str.12.88, !dbg !2630
  br i1 %60, label %61, label %70, !dbg !2631

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2632
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2633
  call void @llvm.dbg.value(metadata ptr %11, metadata !2606, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata ptr %11, metadata !2614, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i32 0, metadata !2617, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i64 8, metadata !2618, metadata !DIExpression()), !dbg !2636
  store i64 0, ptr %11, align 8, !dbg !2638
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2639
  %63 = icmp eq i64 %62, 3, !dbg !2640
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2641
  %67 = icmp eq i32 %28, 9, !dbg !2641
  %68 = select i1 %67, ptr @.str.10.87, ptr @.str.12.88, !dbg !2641
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2641
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2642
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2642
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2519, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2518, metadata !DIExpression()), !dbg !2581
  br i1 %36, label %88, label %73, !dbg !2643

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2531, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2521, metadata !DIExpression()), !dbg !2581
  %74 = load i8, ptr %71, align 1, !dbg !2645, !tbaa !927
  %75 = icmp eq i8 %74, 0, !dbg !2647
  br i1 %75, label %88, label %.preheader11, !dbg !2647

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2647

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2531, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2521, metadata !DIExpression()), !dbg !2581
  %80 = icmp ult i64 %79, %39, !dbg !2648
  br i1 %80, label %81, label %83, !dbg !2651

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2648
  store i8 %77, ptr %82, align 1, !dbg !2648, !tbaa !927
  br label %83, !dbg !2648

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2651
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2521, metadata !DIExpression()), !dbg !2581
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2652
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2531, metadata !DIExpression()), !dbg !2644
  %86 = load i8, ptr %85, align 1, !dbg !2645, !tbaa !927
  %87 = icmp eq i8 %86, 0, !dbg !2647
  br i1 %87, label %.loopexit12, label %76, !dbg !2647, !llvm.loop !2653

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2651
  br label %88, !dbg !2655

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2656
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2521, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2525, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2523, metadata !DIExpression()), !dbg !2581
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #41, !dbg !2655
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2524, metadata !DIExpression()), !dbg !2581
  br label %101, !dbg !2657

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2525, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2526, metadata !DIExpression()), !dbg !2581
  br label %101, !dbg !2658

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2526, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2525, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2515, metadata !DIExpression()), !dbg !2581
  br label %101, !dbg !2659

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2526, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2525, metadata !DIExpression()), !dbg !2581
  br i1 %36, label %101, label %95, !dbg !2660

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2526, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2525, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2515, metadata !DIExpression()), !dbg !2581
  br i1 %36, label %101, label %95, !dbg !2659

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2661
  br i1 %97, label %101, label %98, !dbg !2665

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2661, !tbaa !927
  br label %101, !dbg !2661

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2526, metadata !DIExpression()), !dbg !2581
  br label %101, !dbg !2666

100:                                              ; preds = %27
  call void @abort() #42, !dbg !2667
  unreachable, !dbg !2667

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2656
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.87, %42 ], [ @.str.10.87, %44 ], [ @.str.10.87, %41 ], [ %33, %27 ], [ @.str.12.88, %95 ], [ @.str.12.88, %98 ], [ @.str.12.88, %94 ], [ @.str.10.87, %40 ], [ @.str.12.88, %91 ], [ @.str.12.88, %92 ], [ @.str.12.88, %93 ], !dbg !2581
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2581
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2526, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2525, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2524, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2523, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !2521, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !2519, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !2518, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2515, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2536, metadata !DIExpression()), !dbg !2668
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
  br label %121, !dbg !2669

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2656
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2585
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2670
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !2512, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2536, metadata !DIExpression()), !dbg !2668
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2530, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2528, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !2522, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !2521, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2514, metadata !DIExpression()), !dbg !2581
  %130 = icmp eq i64 %122, -1, !dbg !2671
  br i1 %130, label %131, label %135, !dbg !2672

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2673
  %133 = load i8, ptr %132, align 1, !dbg !2673, !tbaa !927
  %134 = icmp eq i8 %133, 0, !dbg !2674
  br i1 %134, label %573, label %137, !dbg !2675

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2676
  br i1 %136, label %573, label %137, !dbg !2675

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2538, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2541, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2542, metadata !DIExpression()), !dbg !2677
  br i1 %113, label %138, label %151, !dbg !2678

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2680
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2681
  br i1 %140, label %141, label %143, !dbg !2681

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2682
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2514, metadata !DIExpression()), !dbg !2581
  br label %143, !dbg !2683

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2683
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !2514, metadata !DIExpression()), !dbg !2581
  %145 = icmp ugt i64 %139, %144, !dbg !2684
  br i1 %145, label %151, label %146, !dbg !2685

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2686
  call void @llvm.dbg.value(metadata ptr %147, metadata !2687, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata ptr %106, metadata !2690, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i64 %107, metadata !2691, metadata !DIExpression()), !dbg !2692
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2694
  %149 = icmp eq i32 %148, 0, !dbg !2695
  %150 = and i1 %149, %109, !dbg !2696
  br i1 %150, label %.loopexit7, label %151, !dbg !2696

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2538, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2514, metadata !DIExpression()), !dbg !2581
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2697
  %155 = load i8, ptr %154, align 1, !dbg !2697, !tbaa !927
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2543, metadata !DIExpression()), !dbg !2677
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
  ], !dbg !2698

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2699

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2700

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2541, metadata !DIExpression()), !dbg !2677
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2704
  br i1 %159, label %176, label %160, !dbg !2704

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2706
  br i1 %161, label %162, label %164, !dbg !2710

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2706
  store i8 39, ptr %163, align 1, !dbg !2706, !tbaa !927
  br label %164, !dbg !2706

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2710
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !2521, metadata !DIExpression()), !dbg !2581
  %166 = icmp ult i64 %165, %129, !dbg !2711
  br i1 %166, label %167, label %169, !dbg !2714

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2711
  store i8 36, ptr %168, align 1, !dbg !2711, !tbaa !927
  br label %169, !dbg !2711

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2714
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2521, metadata !DIExpression()), !dbg !2581
  %171 = icmp ult i64 %170, %129, !dbg !2715
  br i1 %171, label %172, label %174, !dbg !2718

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2715
  store i8 39, ptr %173, align 1, !dbg !2715, !tbaa !927
  br label %174, !dbg !2715

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2718
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2521, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2530, metadata !DIExpression()), !dbg !2581
  br label %176, !dbg !2719

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2581
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2530, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !2521, metadata !DIExpression()), !dbg !2581
  %179 = icmp ult i64 %177, %129, !dbg !2720
  br i1 %179, label %180, label %182, !dbg !2723

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2720
  store i8 92, ptr %181, align 1, !dbg !2720, !tbaa !927
  br label %182, !dbg !2720

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2723
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2521, metadata !DIExpression()), !dbg !2581
  br i1 %110, label %184, label %476, !dbg !2724

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2726
  %186 = icmp ult i64 %185, %152, !dbg !2727
  br i1 %186, label %187, label %433, !dbg !2728

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2729
  %189 = load i8, ptr %188, align 1, !dbg !2729, !tbaa !927
  %190 = add i8 %189, -48, !dbg !2730
  %191 = icmp ult i8 %190, 10, !dbg !2730
  br i1 %191, label %192, label %433, !dbg !2730

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2731
  br i1 %193, label %194, label %196, !dbg !2735

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2731
  store i8 48, ptr %195, align 1, !dbg !2731, !tbaa !927
  br label %196, !dbg !2731

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2735
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2521, metadata !DIExpression()), !dbg !2581
  %198 = icmp ult i64 %197, %129, !dbg !2736
  br i1 %198, label %199, label %201, !dbg !2739

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2736
  store i8 48, ptr %200, align 1, !dbg !2736, !tbaa !927
  br label %201, !dbg !2736

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2739
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !2521, metadata !DIExpression()), !dbg !2581
  br label %433, !dbg !2740

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2741

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2742

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2743

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2745

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2747
  %209 = icmp ult i64 %208, %152, !dbg !2748
  br i1 %209, label %210, label %433, !dbg !2749

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2750
  %212 = load i8, ptr %211, align 1, !dbg !2750, !tbaa !927
  %213 = icmp eq i8 %212, 63, !dbg !2751
  br i1 %213, label %214, label %433, !dbg !2752

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2753
  %216 = load i8, ptr %215, align 1, !dbg !2753, !tbaa !927
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
  ], !dbg !2754

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2755

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2543, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2536, metadata !DIExpression()), !dbg !2668
  %219 = icmp ult i64 %123, %129, !dbg !2757
  br i1 %219, label %220, label %222, !dbg !2760

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2757
  store i8 63, ptr %221, align 1, !dbg !2757, !tbaa !927
  br label %222, !dbg !2757

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2760
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !2521, metadata !DIExpression()), !dbg !2581
  %224 = icmp ult i64 %223, %129, !dbg !2761
  br i1 %224, label %225, label %227, !dbg !2764

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2761
  store i8 34, ptr %226, align 1, !dbg !2761, !tbaa !927
  br label %227, !dbg !2761

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2764
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !2521, metadata !DIExpression()), !dbg !2581
  %229 = icmp ult i64 %228, %129, !dbg !2765
  br i1 %229, label %230, label %232, !dbg !2768

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2765
  store i8 34, ptr %231, align 1, !dbg !2765, !tbaa !927
  br label %232, !dbg !2765

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2768
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !2521, metadata !DIExpression()), !dbg !2581
  %234 = icmp ult i64 %233, %129, !dbg !2769
  br i1 %234, label %235, label %237, !dbg !2772

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2769
  store i8 63, ptr %236, align 1, !dbg !2769, !tbaa !927
  br label %237, !dbg !2769

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !2521, metadata !DIExpression()), !dbg !2581
  br label %433, !dbg !2773

239:                                              ; preds = %151
  br label %249, !dbg !2774

240:                                              ; preds = %151
  br label %249, !dbg !2775

241:                                              ; preds = %151
  br label %247, !dbg !2776

242:                                              ; preds = %151
  br label %247, !dbg !2777

243:                                              ; preds = %151
  br label %249, !dbg !2778

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2779

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2780

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2783

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2785
  call void @llvm.dbg.label(metadata !2544), !dbg !2786
  br i1 %118, label %.loopexit8, label %249, !dbg !2787

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2785
  call void @llvm.dbg.label(metadata !2547), !dbg !2789
  br i1 %108, label %487, label %444, !dbg !2790

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2791

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2792, !tbaa !927
  %254 = icmp eq i8 %253, 0, !dbg !2794
  br i1 %254, label %255, label %433, !dbg !2795

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2796
  br i1 %256, label %257, label %433, !dbg !2798

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2542, metadata !DIExpression()), !dbg !2677
  br label %258, !dbg !2799

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2542, metadata !DIExpression()), !dbg !2677
  br i1 %115, label %260, label %433, !dbg !2800

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2802

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2527, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2542, metadata !DIExpression()), !dbg !2677
  br i1 %115, label %262, label %433, !dbg !2803

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2804

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2807
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2809
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2809
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2809
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !2512, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !2522, metadata !DIExpression()), !dbg !2581
  %269 = icmp ult i64 %123, %268, !dbg !2810
  br i1 %269, label %270, label %272, !dbg !2813

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2810
  store i8 39, ptr %271, align 1, !dbg !2810, !tbaa !927
  br label %272, !dbg !2810

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2813
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !2521, metadata !DIExpression()), !dbg !2581
  %274 = icmp ult i64 %273, %268, !dbg !2814
  br i1 %274, label %275, label %277, !dbg !2817

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2814
  store i8 92, ptr %276, align 1, !dbg !2814, !tbaa !927
  br label %277, !dbg !2814

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2817
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !2521, metadata !DIExpression()), !dbg !2581
  %279 = icmp ult i64 %278, %268, !dbg !2818
  br i1 %279, label %280, label %282, !dbg !2821

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2818
  store i8 39, ptr %281, align 1, !dbg !2818, !tbaa !927
  br label %282, !dbg !2818

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2821
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !2521, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2530, metadata !DIExpression()), !dbg !2581
  br label %433, !dbg !2822

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2823

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2548, metadata !DIExpression()), !dbg !2824
  %286 = tail call ptr @__ctype_b_loc() #43, !dbg !2825
  %287 = load ptr, ptr %286, align 8, !dbg !2825, !tbaa !855
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2825
  %290 = load i16, ptr %289, align 2, !dbg !2825, !tbaa !959
  %291 = and i16 %290, 16384, !dbg !2825
  %292 = icmp ne i16 %291, 0, !dbg !2827
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2550, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2824
  br label %334, !dbg !2828

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !2829
  call void @llvm.dbg.value(metadata ptr %14, metadata !2606, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata ptr %14, metadata !2614, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i32 0, metadata !2617, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i64 8, metadata !2618, metadata !DIExpression()), !dbg !2832
  store i64 0, ptr %14, align 8, !dbg !2834
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2548, metadata !DIExpression()), !dbg !2824
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2550, metadata !DIExpression()), !dbg !2824
  %294 = icmp eq i64 %152, -1, !dbg !2835
  br i1 %294, label %295, label %297, !dbg !2837

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2838
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !2514, metadata !DIExpression()), !dbg !2581
  br label %297, !dbg !2839

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2677
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !2514, metadata !DIExpression()), !dbg !2581
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !2840
  %299 = sub i64 %298, %128, !dbg !2841
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #40, !dbg !2842
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2558, metadata !DIExpression()), !dbg !2580
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2843

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2548, metadata !DIExpression()), !dbg !2824
  %302 = icmp ult i64 %128, %298, !dbg !2844
  br i1 %302, label %.preheader5, label %329, !dbg !2846

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2847

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2550, metadata !DIExpression()), !dbg !2824
  br label %329, !dbg !2848

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2548, metadata !DIExpression()), !dbg !2824
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2850
  %308 = load i8, ptr %307, align 1, !dbg !2850, !tbaa !927
  %309 = icmp eq i8 %308, 0, !dbg !2846
  br i1 %309, label %.loopexit6, label %310, !dbg !2847

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2851
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2548, metadata !DIExpression()), !dbg !2824
  %312 = add i64 %311, %128, !dbg !2852
  %313 = icmp eq i64 %311, %299, !dbg !2844
  br i1 %313, label %.loopexit6, label %304, !dbg !2846, !llvm.loop !2853

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2559, metadata !DIExpression()), !dbg !2854
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2855
  %317 = and i1 %316, %109, !dbg !2855
  br i1 %317, label %.preheader3, label %325, !dbg !2855

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2856

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2559, metadata !DIExpression()), !dbg !2854
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2857
  %321 = load i8, ptr %320, align 1, !dbg !2857, !tbaa !927
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2859

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2860
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2559, metadata !DIExpression()), !dbg !2854
  %324 = icmp eq i64 %323, %300, !dbg !2861
  br i1 %324, label %.loopexit4, label %318, !dbg !2856, !llvm.loop !2862

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2864

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2864, !tbaa !918
  call void @llvm.dbg.value(metadata i32 %326, metadata !2866, metadata !DIExpression()), !dbg !2874
  %327 = call i32 @iswprint(i32 noundef %326) #40, !dbg !2876
  %328 = icmp ne i32 %327, 0, !dbg !2877
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2550, metadata !DIExpression()), !dbg !2824
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2548, metadata !DIExpression()), !dbg !2824
  br label %329, !dbg !2878

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2879

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2550, metadata !DIExpression()), !dbg !2824
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2548, metadata !DIExpression()), !dbg !2824
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2879
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2880
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2550, metadata !DIExpression()), !dbg !2824
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2548, metadata !DIExpression()), !dbg !2824
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2879
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2880
  call void @llvm.dbg.label(metadata !2572), !dbg !2881
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2882
  br label %624, !dbg !2882

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2677
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2884
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2550, metadata !DIExpression()), !dbg !2824
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2548, metadata !DIExpression()), !dbg !2824
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !2514, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2542, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2677
  %338 = icmp ult i64 %336, 2, !dbg !2885
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2886
  br i1 %340, label %433, label %341, !dbg !2886

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2887
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2567, metadata !DIExpression()), !dbg !2888
  br label %343, !dbg !2889

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2581
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2668
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2543, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2541, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2538, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2536, metadata !DIExpression()), !dbg !2668
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2530, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !2521, metadata !DIExpression()), !dbg !2581
  br i1 %339, label %394, label %350, !dbg !2890

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2895

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2541, metadata !DIExpression()), !dbg !2677
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2898
  br i1 %352, label %369, label %353, !dbg !2898

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2900
  br i1 %354, label %355, label %357, !dbg !2904

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2900
  store i8 39, ptr %356, align 1, !dbg !2900, !tbaa !927
  br label %357, !dbg !2900

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2904
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !2521, metadata !DIExpression()), !dbg !2581
  %359 = icmp ult i64 %358, %129, !dbg !2905
  br i1 %359, label %360, label %362, !dbg !2908

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2905
  store i8 36, ptr %361, align 1, !dbg !2905, !tbaa !927
  br label %362, !dbg !2905

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2908
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2521, metadata !DIExpression()), !dbg !2581
  %364 = icmp ult i64 %363, %129, !dbg !2909
  br i1 %364, label %365, label %367, !dbg !2912

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2909
  store i8 39, ptr %366, align 1, !dbg !2909, !tbaa !927
  br label %367, !dbg !2909

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !2521, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2530, metadata !DIExpression()), !dbg !2581
  br label %369, !dbg !2913

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2581
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2530, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !2521, metadata !DIExpression()), !dbg !2581
  %372 = icmp ult i64 %370, %129, !dbg !2914
  br i1 %372, label %373, label %375, !dbg !2917

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2914
  store i8 92, ptr %374, align 1, !dbg !2914, !tbaa !927
  br label %375, !dbg !2914

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !2521, metadata !DIExpression()), !dbg !2581
  %377 = icmp ult i64 %376, %129, !dbg !2918
  br i1 %377, label %378, label %382, !dbg !2921

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2918
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2918
  store i8 %380, ptr %381, align 1, !dbg !2918, !tbaa !927
  br label %382, !dbg !2918

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2921
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !2521, metadata !DIExpression()), !dbg !2581
  %384 = icmp ult i64 %383, %129, !dbg !2922
  br i1 %384, label %385, label %390, !dbg !2925

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2922
  %388 = or disjoint i8 %387, 48, !dbg !2922
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2922
  store i8 %388, ptr %389, align 1, !dbg !2922, !tbaa !927
  br label %390, !dbg !2922

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2925
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2521, metadata !DIExpression()), !dbg !2581
  %392 = and i8 %349, 7, !dbg !2926
  %393 = or disjoint i8 %392, 48, !dbg !2927
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2543, metadata !DIExpression()), !dbg !2677
  br label %401, !dbg !2928

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2929

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2930
  br i1 %396, label %397, label %399, !dbg !2935

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2930
  store i8 92, ptr %398, align 1, !dbg !2930, !tbaa !927
  br label %399, !dbg !2930

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !2521, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2538, metadata !DIExpression()), !dbg !2677
  br label %401, !dbg !2936

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2581
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2543, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2541, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2538, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2530, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !2521, metadata !DIExpression()), !dbg !2581
  %407 = add i64 %346, 1, !dbg !2937
  %408 = icmp ugt i64 %342, %407, !dbg !2939
  br i1 %408, label %409, label %.loopexit2, !dbg !2940

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2941
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2941
  br i1 %411, label %423, label %412, !dbg !2941

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2944
  br i1 %413, label %414, label %416, !dbg !2948

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2944
  store i8 39, ptr %415, align 1, !dbg !2944, !tbaa !927
  br label %416, !dbg !2944

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2948
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !2521, metadata !DIExpression()), !dbg !2581
  %418 = icmp ult i64 %417, %129, !dbg !2949
  br i1 %418, label %419, label %421, !dbg !2952

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2949
  store i8 39, ptr %420, align 1, !dbg !2949, !tbaa !927
  br label %421, !dbg !2949

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2952
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !2521, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2530, metadata !DIExpression()), !dbg !2581
  br label %423, !dbg !2953

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2954
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2530, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !2521, metadata !DIExpression()), !dbg !2581
  %426 = icmp ult i64 %424, %129, !dbg !2955
  br i1 %426, label %427, label %429, !dbg !2958

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2955
  store i8 %406, ptr %428, align 1, !dbg !2955, !tbaa !927
  br label %429, !dbg !2955

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2958
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !2521, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2536, metadata !DIExpression()), !dbg !2668
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2959
  %432 = load i8, ptr %431, align 1, !dbg !2959, !tbaa !927
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2543, metadata !DIExpression()), !dbg !2677
  br label %343, !dbg !2960, !llvm.loop !2961

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2964
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2581
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2585
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2668
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2677
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !2512, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2543, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2542, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2541, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2538, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2536, metadata !DIExpression()), !dbg !2668
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2530, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !2522, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !2521, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !2514, metadata !DIExpression()), !dbg !2581
  br i1 %111, label %455, label %444, !dbg !2965

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
  br i1 %120, label %456, label %476, !dbg !2967

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2968

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
  %467 = lshr i8 %458, 5, !dbg !2969
  %468 = zext nneg i8 %467 to i64, !dbg !2969
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2970
  %470 = load i32, ptr %469, align 4, !dbg !2970, !tbaa !918
  %471 = and i8 %458, 31, !dbg !2971
  %472 = zext nneg i8 %471 to i32, !dbg !2971
  %473 = shl nuw i32 1, %472, !dbg !2972
  %474 = and i32 %470, %473, !dbg !2972
  %475 = icmp eq i32 %474, 0, !dbg !2972
  br i1 %475, label %476, label %487, !dbg !2973

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
  br i1 %153, label %487, label %523, !dbg !2974

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2964
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2581
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2585
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2975
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2677
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2512, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2543, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2542, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2536, metadata !DIExpression()), !dbg !2668
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2530, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2522, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !2521, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2514, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.label(metadata !2570), !dbg !2976
  br i1 %109, label %.loopexit8, label %497, !dbg !2977

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2541, metadata !DIExpression()), !dbg !2677
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2979
  br i1 %498, label %515, label %499, !dbg !2979

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2981
  br i1 %500, label %501, label %503, !dbg !2985

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2981
  store i8 39, ptr %502, align 1, !dbg !2981, !tbaa !927
  br label %503, !dbg !2981

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2985
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !2521, metadata !DIExpression()), !dbg !2581
  %505 = icmp ult i64 %504, %496, !dbg !2986
  br i1 %505, label %506, label %508, !dbg !2989

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2986
  store i8 36, ptr %507, align 1, !dbg !2986, !tbaa !927
  br label %508, !dbg !2986

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2989
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !2521, metadata !DIExpression()), !dbg !2581
  %510 = icmp ult i64 %509, %496, !dbg !2990
  br i1 %510, label %511, label %513, !dbg !2993

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2990
  store i8 39, ptr %512, align 1, !dbg !2990, !tbaa !927
  br label %513, !dbg !2990

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2993
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !2521, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2530, metadata !DIExpression()), !dbg !2581
  br label %515, !dbg !2994

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2677
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2530, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !2521, metadata !DIExpression()), !dbg !2581
  %518 = icmp ult i64 %516, %496, !dbg !2995
  br i1 %518, label %519, label %521, !dbg !2998

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2995
  store i8 92, ptr %520, align 1, !dbg !2995, !tbaa !927
  br label %521, !dbg !2995

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2998
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2512, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2543, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2542, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2541, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2536, metadata !DIExpression()), !dbg !2668
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2530, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2522, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2521, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2514, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.label(metadata !2571), !dbg !2999
  br label %547, !dbg !3000

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2581
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2677
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2668
  br label %523, !dbg !3000

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2964
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2581
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2585
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2975
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !3003
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !2512, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2543, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2542, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2541, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2536, metadata !DIExpression()), !dbg !2668
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2530, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2522, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !2521, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !2514, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.label(metadata !2571), !dbg !2999
  %534 = xor i1 %528, true, !dbg !3000
  %535 = select i1 %534, i1 true, i1 %530, !dbg !3000
  br i1 %535, label %547, label %536, !dbg !3000

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !3004
  br i1 %537, label %538, label %540, !dbg !3008

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !3004
  store i8 39, ptr %539, align 1, !dbg !3004, !tbaa !927
  br label %540, !dbg !3004

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !2521, metadata !DIExpression()), !dbg !2581
  %542 = icmp ult i64 %541, %533, !dbg !3009
  br i1 %542, label %543, label %545, !dbg !3012

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !3009
  store i8 39, ptr %544, align 1, !dbg !3009, !tbaa !927
  br label %545, !dbg !3009

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !2521, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2530, metadata !DIExpression()), !dbg !2581
  br label %547, !dbg !3013

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2677
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2530, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !2521, metadata !DIExpression()), !dbg !2581
  %557 = icmp ult i64 %555, %548, !dbg !3014
  br i1 %557, label %558, label %560, !dbg !3017

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !3014
  store i8 %549, ptr %559, align 1, !dbg !3014, !tbaa !927
  br label %560, !dbg !3014

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2521, metadata !DIExpression()), !dbg !2581
  %562 = select i1 %550, i1 %126, i1 false, !dbg !3018
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2528, metadata !DIExpression()), !dbg !2581
  br label %563, !dbg !3019

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2964
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2581
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2585
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2975
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !2512, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2536, metadata !DIExpression()), !dbg !2668
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2530, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2528, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !2522, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !2521, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2514, metadata !DIExpression()), !dbg !2581
  %572 = add i64 %570, 1, !dbg !3020
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2536, metadata !DIExpression()), !dbg !2668
  br label %121, !dbg !3021, !llvm.loop !3022

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2656
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2585
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !2512, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2528, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !2522, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !2521, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !2514, metadata !DIExpression()), !dbg !2581
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !3024
  %575 = xor i1 %109, true, !dbg !3026
  %576 = or i1 %574, %575, !dbg !3026
  %577 = or i1 %576, %110, !dbg !3026
  br i1 %577, label %578, label %.loopexit13, !dbg !3026

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !3027
  %580 = xor i1 %.lcssa38, true, !dbg !3027
  %581 = select i1 %579, i1 true, i1 %580, !dbg !3027
  br i1 %581, label %589, label %582, !dbg !3027

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !3029

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2585
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !3031
  br label %638, !dbg !3033

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !3034
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !3036
  br i1 %588, label %27, label %589, !dbg !3036

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2581
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2656
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !3037
  %592 = or i1 %591, %590, !dbg !3039
  br i1 %592, label %608, label %593, !dbg !3039

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !2523, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !2521, metadata !DIExpression()), !dbg !2581
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !3040, !tbaa !927
  %595 = icmp eq i8 %594, 0, !dbg !3043
  br i1 %595, label %608, label %.preheader, !dbg !3043

.preheader:                                       ; preds = %593
  br label %596, !dbg !3043

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !2523, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2521, metadata !DIExpression()), !dbg !2581
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !3044
  br i1 %600, label %601, label %603, !dbg !3047

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !3044
  store i8 %597, ptr %602, align 1, !dbg !3044, !tbaa !927
  br label %603, !dbg !3044

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !3047
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2521, metadata !DIExpression()), !dbg !2581
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !3048
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !2523, metadata !DIExpression()), !dbg !2581
  %606 = load i8, ptr %605, align 1, !dbg !3040, !tbaa !927
  %607 = icmp eq i8 %606, 0, !dbg !3043
  br i1 %607, label %.loopexit, label %596, !dbg !3043, !llvm.loop !3049

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !3047
  br label %608, !dbg !3051

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2656
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2521, metadata !DIExpression()), !dbg !2581
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !3051
  br i1 %610, label %611, label %638, !dbg !3053

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !3054
  store i8 0, ptr %612, align 1, !dbg !3055, !tbaa !927
  br label %638, !dbg !3054

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2572), !dbg !2881
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !3056
  br i1 %614, label %624, label %630, !dbg !2882

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2677
  br label %615, !dbg !3056

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !3056

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !3056

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2572), !dbg !2881
  %622 = icmp eq i32 %616, 2, !dbg !3056
  %623 = select i1 %619, i32 4, i32 2, !dbg !2882
  br i1 %622, label %624, label %630, !dbg !2882

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2882

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2683
  br label %630, !dbg !3057

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !2515, metadata !DIExpression()), !dbg !2581
  %636 = and i32 %5, -3, !dbg !3057
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !3058
  br label %638, !dbg !3059

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !3060
}

; Function Attrs: nounwind
declare !dbg !3061 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3064 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3067 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #12 !dbg !3069 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3073, metadata !DIExpression()), !dbg !3076
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3074, metadata !DIExpression()), !dbg !3076
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3075, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata ptr %0, metadata !3077, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %1, metadata !3082, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr null, metadata !3083, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr %2, metadata !3084, metadata !DIExpression()), !dbg !3090
  %4 = icmp eq ptr %2, null, !dbg !3092
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3092
  call void @llvm.dbg.value(metadata ptr %5, metadata !3085, metadata !DIExpression()), !dbg !3090
  %6 = tail call ptr @__errno_location() #43, !dbg !3093
  %7 = load i32, ptr %6, align 4, !dbg !3093, !tbaa !918
  call void @llvm.dbg.value(metadata i32 %7, metadata !3086, metadata !DIExpression()), !dbg !3090
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3094
  %9 = load i32, ptr %8, align 4, !dbg !3094, !tbaa !2455
  %10 = or i32 %9, 1, !dbg !3095
  call void @llvm.dbg.value(metadata i32 %10, metadata !3087, metadata !DIExpression()), !dbg !3090
  %11 = load i32, ptr %5, align 8, !dbg !3096, !tbaa !2405
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3097
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3098
  %14 = load ptr, ptr %13, align 8, !dbg !3098, !tbaa !2476
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3099
  %16 = load ptr, ptr %15, align 8, !dbg !3099, !tbaa !2479
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3100
  %18 = add i64 %17, 1, !dbg !3101
  call void @llvm.dbg.value(metadata i64 %18, metadata !3088, metadata !DIExpression()), !dbg !3090
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !3102
  call void @llvm.dbg.value(metadata ptr %19, metadata !3089, metadata !DIExpression()), !dbg !3090
  %20 = load i32, ptr %5, align 8, !dbg !3103, !tbaa !2405
  %21 = load ptr, ptr %13, align 8, !dbg !3104, !tbaa !2476
  %22 = load ptr, ptr %15, align 8, !dbg !3105, !tbaa !2479
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3106
  store i32 %7, ptr %6, align 4, !dbg !3107, !tbaa !918
  ret ptr %19, !dbg !3108
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #12 !dbg !3078 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3077, metadata !DIExpression()), !dbg !3109
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3082, metadata !DIExpression()), !dbg !3109
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3083, metadata !DIExpression()), !dbg !3109
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3084, metadata !DIExpression()), !dbg !3109
  %5 = icmp eq ptr %3, null, !dbg !3110
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3110
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3085, metadata !DIExpression()), !dbg !3109
  %7 = tail call ptr @__errno_location() #43, !dbg !3111
  %8 = load i32, ptr %7, align 4, !dbg !3111, !tbaa !918
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3086, metadata !DIExpression()), !dbg !3109
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3112
  %10 = load i32, ptr %9, align 4, !dbg !3112, !tbaa !2455
  %11 = icmp eq ptr %2, null, !dbg !3113
  %12 = zext i1 %11 to i32, !dbg !3113
  %13 = or i32 %10, %12, !dbg !3114
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3087, metadata !DIExpression()), !dbg !3109
  %14 = load i32, ptr %6, align 8, !dbg !3115, !tbaa !2405
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3116
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3117
  %17 = load ptr, ptr %16, align 8, !dbg !3117, !tbaa !2476
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3118
  %19 = load ptr, ptr %18, align 8, !dbg !3118, !tbaa !2479
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3119
  %21 = add i64 %20, 1, !dbg !3120
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3088, metadata !DIExpression()), !dbg !3109
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !3121
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3089, metadata !DIExpression()), !dbg !3109
  %23 = load i32, ptr %6, align 8, !dbg !3122, !tbaa !2405
  %24 = load ptr, ptr %16, align 8, !dbg !3123, !tbaa !2476
  %25 = load ptr, ptr %18, align 8, !dbg !3124, !tbaa !2479
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3125
  store i32 %8, ptr %7, align 4, !dbg !3126, !tbaa !918
  br i1 %11, label %28, label %27, !dbg !3127

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3128, !tbaa !1417
  br label %28, !dbg !3130

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3131
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !3132 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3137, !tbaa !855
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3134, metadata !DIExpression()), !dbg !3138
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3135, metadata !DIExpression()), !dbg !3139
  %2 = load i32, ptr @nslots, align 4, !tbaa !918
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3135, metadata !DIExpression()), !dbg !3139
  %3 = icmp sgt i32 %2, 1, !dbg !3140
  br i1 %3, label %4, label %6, !dbg !3142

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3140
  br label %10, !dbg !3142

.loopexit:                                        ; preds = %10
  br label %6, !dbg !3143

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.tokenbuffer, ptr %1, i64 0, i32 1, !dbg !3143
  %8 = load ptr, ptr %7, align 8, !dbg !3143, !tbaa !3145
  %9 = icmp eq ptr %8, @slot0, !dbg !3147
  br i1 %9, label %17, label %16, !dbg !3148

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3135, metadata !DIExpression()), !dbg !3139
  %12 = getelementptr inbounds %struct.tokenbuffer, ptr %1, i64 %11, i32 1, !dbg !3149
  %13 = load ptr, ptr %12, align 8, !dbg !3149, !tbaa !3145
  tail call void @free(ptr noundef %13) #40, !dbg !3150
  %14 = add nuw nsw i64 %11, 1, !dbg !3151
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3135, metadata !DIExpression()), !dbg !3139
  %15 = icmp eq i64 %14, %5, !dbg !3140
  br i1 %15, label %.loopexit, label %10, !dbg !3142, !llvm.loop !3152

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !3154
  store i64 256, ptr @slotvec0, align 8, !dbg !3156, !tbaa !3157
  store ptr @slot0, ptr getelementptr inbounds (%struct.tokenbuffer, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3158, !tbaa !3145
  br label %17, !dbg !3159

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3160
  br i1 %18, label %20, label %19, !dbg !3162

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3163
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3165, !tbaa !855
  br label %20, !dbg !3166

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3167, !tbaa !918
  ret void, !dbg !3168
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3169 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #25

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #12 !dbg !3172 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3174, metadata !DIExpression()), !dbg !3176
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3175, metadata !DIExpression()), !dbg !3176
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3177
  ret ptr %3, !dbg !3178
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #12 !dbg !3179 {
  %5 = alloca i64, align 8, !DIAssignID !3199
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3193, metadata !DIExpression(), metadata !3199, metadata ptr %5, metadata !DIExpression()), !dbg !3200
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3183, metadata !DIExpression()), !dbg !3201
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3184, metadata !DIExpression()), !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3185, metadata !DIExpression()), !dbg !3201
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3186, metadata !DIExpression()), !dbg !3201
  %6 = tail call ptr @__errno_location() #43, !dbg !3202
  %7 = load i32, ptr %6, align 4, !dbg !3202, !tbaa !918
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3187, metadata !DIExpression()), !dbg !3201
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3203, !tbaa !855
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3188, metadata !DIExpression()), !dbg !3201
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3189, metadata !DIExpression()), !dbg !3201
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3204
  br i1 %9, label %10, label %11, !dbg !3204

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3206
  unreachable, !dbg !3206

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3207, !tbaa !918
  %13 = icmp sgt i32 %12, %0, !dbg !3208
  br i1 %13, label %32, label %14, !dbg !3209

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3210
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3190, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3200
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3211
  %16 = sext i32 %12 to i64, !dbg !3212
  store i64 %16, ptr %5, align 8, !dbg !3213, !tbaa !1417, !DIAssignID !3214
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3193, metadata !DIExpression(), metadata !3214, metadata ptr %5, metadata !DIExpression()), !dbg !3200
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3215
  %18 = add nuw nsw i32 %0, 1, !dbg !3216
  %19 = sub i32 %18, %12, !dbg !3217
  %20 = sext i32 %19 to i64, !dbg !3218
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3219
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3188, metadata !DIExpression()), !dbg !3201
  store ptr %21, ptr @slotvec, align 8, !dbg !3220, !tbaa !855
  br i1 %15, label %22, label %23, !dbg !3221

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3222, !tbaa.struct !3224
  br label %23, !dbg !3225

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3226, !tbaa !918
  %25 = sext i32 %24 to i64, !dbg !3227
  %26 = getelementptr inbounds %struct.tokenbuffer, ptr %21, i64 %25, !dbg !3227
  %27 = load i64, ptr %5, align 8, !dbg !3228, !tbaa !1417
  %28 = sub nsw i64 %27, %25, !dbg !3229
  %29 = shl i64 %28, 4, !dbg !3230
  call void @llvm.dbg.value(metadata ptr %26, metadata !2614, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i32 0, metadata !2617, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %29, metadata !2618, metadata !DIExpression()), !dbg !3231
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3233
  %30 = load i64, ptr %5, align 8, !dbg !3234, !tbaa !1417
  %31 = trunc i64 %30 to i32, !dbg !3234
  store i32 %31, ptr @nslots, align 4, !dbg !3235, !tbaa !918
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3236
  br label %32, !dbg !3237

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3201
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3188, metadata !DIExpression()), !dbg !3201
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.tokenbuffer, ptr %33, i64 %34, !dbg !3238
  %36 = load i64, ptr %35, align 8, !dbg !3239, !tbaa !3157
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3194, metadata !DIExpression()), !dbg !3240
  %37 = getelementptr inbounds %struct.tokenbuffer, ptr %33, i64 %34, i32 1, !dbg !3241
  %38 = load ptr, ptr %37, align 8, !dbg !3241, !tbaa !3145
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3196, metadata !DIExpression()), !dbg !3240
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3242
  %40 = load i32, ptr %39, align 4, !dbg !3242, !tbaa !2455
  %41 = or i32 %40, 1, !dbg !3243
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3197, metadata !DIExpression()), !dbg !3240
  %42 = load i32, ptr %3, align 8, !dbg !3244, !tbaa !2405
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3245
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3246
  %45 = load ptr, ptr %44, align 8, !dbg !3246, !tbaa !2476
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3247
  %47 = load ptr, ptr %46, align 8, !dbg !3247, !tbaa !2479
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3248
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3198, metadata !DIExpression()), !dbg !3240
  %49 = icmp ugt i64 %36, %48, !dbg !3249
  br i1 %49, label %60, label %50, !dbg !3251

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3252
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3194, metadata !DIExpression()), !dbg !3240
  store i64 %51, ptr %35, align 8, !dbg !3254, !tbaa !3157
  %52 = icmp eq ptr %38, @slot0, !dbg !3255
  br i1 %52, label %54, label %53, !dbg !3257

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3258
  br label %54, !dbg !3258

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !3259
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3196, metadata !DIExpression()), !dbg !3240
  store ptr %55, ptr %37, align 8, !dbg !3260, !tbaa !3145
  %56 = load i32, ptr %3, align 8, !dbg !3261, !tbaa !2405
  %57 = load ptr, ptr %44, align 8, !dbg !3262, !tbaa !2476
  %58 = load ptr, ptr %46, align 8, !dbg !3263, !tbaa !2479
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3264
  br label %60, !dbg !3265

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3240
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3196, metadata !DIExpression()), !dbg !3240
  store i32 %7, ptr %6, align 4, !dbg !3266, !tbaa !918
  ret ptr %61, !dbg !3267
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3268 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3272, metadata !DIExpression()), !dbg !3275
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3273, metadata !DIExpression()), !dbg !3275
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3274, metadata !DIExpression()), !dbg !3275
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3276
  ret ptr %4, !dbg !3277
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #12 !dbg !3278 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3280, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata ptr %0, metadata !3175, metadata !DIExpression()), !dbg !3282
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3284
  ret ptr %2, !dbg !3285
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3286 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3290, metadata !DIExpression()), !dbg !3292
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3291, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 0, metadata !3272, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata ptr %0, metadata !3273, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %1, metadata !3274, metadata !DIExpression()), !dbg !3293
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3295
  ret ptr %3, !dbg !3296
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #12 !dbg !3297 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3305
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3304, metadata !DIExpression(), metadata !3305, metadata ptr %4, metadata !DIExpression()), !dbg !3306
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3301, metadata !DIExpression()), !dbg !3306
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3302, metadata !DIExpression()), !dbg !3306
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3303, metadata !DIExpression()), !dbg !3306
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3307
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3308), !dbg !3311
  call void @llvm.dbg.value(metadata i32 %1, metadata !3312, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3317, metadata !DIExpression()), !dbg !3320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3320, !alias.scope !3308, !DIAssignID !3321
  call void @llvm.dbg.assign(metadata i8 0, metadata !3304, metadata !DIExpression(), metadata !3321, metadata ptr %4, metadata !DIExpression()), !dbg !3306
  %5 = icmp eq i32 %1, 10, !dbg !3322
  br i1 %5, label %6, label %7, !dbg !3324

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3325, !noalias !3308
  unreachable, !dbg !3325

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3326, !tbaa !2405, !alias.scope !3308, !DIAssignID !3327
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3304, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3327, metadata ptr %4, metadata !DIExpression()), !dbg !3306
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3328
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3329
  ret ptr %8, !dbg !3330
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3331 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3340
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3339, metadata !DIExpression(), metadata !3340, metadata ptr %5, metadata !DIExpression()), !dbg !3341
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3335, metadata !DIExpression()), !dbg !3341
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3336, metadata !DIExpression()), !dbg !3341
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3337, metadata !DIExpression()), !dbg !3341
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3338, metadata !DIExpression()), !dbg !3341
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3342
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3343), !dbg !3346
  call void @llvm.dbg.value(metadata i32 %1, metadata !3312, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3317, metadata !DIExpression()), !dbg !3349
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3349, !alias.scope !3343, !DIAssignID !3350
  call void @llvm.dbg.assign(metadata i8 0, metadata !3339, metadata !DIExpression(), metadata !3350, metadata ptr %5, metadata !DIExpression()), !dbg !3341
  %6 = icmp eq i32 %1, 10, !dbg !3351
  br i1 %6, label %7, label %8, !dbg !3352

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3353, !noalias !3343
  unreachable, !dbg !3353

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3354, !tbaa !2405, !alias.scope !3343, !DIAssignID !3355
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3355, metadata ptr %5, metadata !DIExpression()), !dbg !3341
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3356
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3357
  ret ptr %9, !dbg !3358
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #12 !dbg !3359 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3365
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3363, metadata !DIExpression()), !dbg !3366
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3364, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3304, metadata !DIExpression(), metadata !3365, metadata ptr %3, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i32 0, metadata !3301, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i32 %0, metadata !3302, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata ptr %1, metadata !3303, metadata !DIExpression()), !dbg !3367
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3369
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3370), !dbg !3373
  call void @llvm.dbg.value(metadata i32 %0, metadata !3312, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3317, metadata !DIExpression()), !dbg !3376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3376, !alias.scope !3370, !DIAssignID !3377
  call void @llvm.dbg.assign(metadata i8 0, metadata !3304, metadata !DIExpression(), metadata !3377, metadata ptr %3, metadata !DIExpression()), !dbg !3367
  %4 = icmp eq i32 %0, 10, !dbg !3378
  br i1 %4, label %5, label %6, !dbg !3379

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3380, !noalias !3370
  unreachable, !dbg !3380

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3381, !tbaa !2405, !alias.scope !3370, !DIAssignID !3382
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3304, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3382, metadata ptr %3, metadata !DIExpression()), !dbg !3367
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3383
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3384
  ret ptr %7, !dbg !3385
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3386 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3393
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3390, metadata !DIExpression()), !dbg !3394
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3391, metadata !DIExpression()), !dbg !3394
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3392, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3339, metadata !DIExpression(), metadata !3393, metadata ptr %4, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i32 0, metadata !3335, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i32 %0, metadata !3336, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata ptr %1, metadata !3337, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i64 %2, metadata !3338, metadata !DIExpression()), !dbg !3395
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3397
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3398), !dbg !3401
  call void @llvm.dbg.value(metadata i32 %0, metadata !3312, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3317, metadata !DIExpression()), !dbg !3404
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3404, !alias.scope !3398, !DIAssignID !3405
  call void @llvm.dbg.assign(metadata i8 0, metadata !3339, metadata !DIExpression(), metadata !3405, metadata ptr %4, metadata !DIExpression()), !dbg !3395
  %5 = icmp eq i32 %0, 10, !dbg !3406
  br i1 %5, label %6, label %7, !dbg !3407

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3408, !noalias !3398
  unreachable, !dbg !3408

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3409, !tbaa !2405, !alias.scope !3398, !DIAssignID !3410
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3410, metadata ptr %4, metadata !DIExpression()), !dbg !3395
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3411
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3412
  ret ptr %8, !dbg !3413
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3414 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3422
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3421, metadata !DIExpression(), metadata !3422, metadata ptr %4, metadata !DIExpression()), !dbg !3423
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3418, metadata !DIExpression()), !dbg !3423
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3419, metadata !DIExpression()), !dbg !3423
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3420, metadata !DIExpression()), !dbg !3423
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3425, !tbaa.struct !3426, !DIAssignID !3427
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3421, metadata !DIExpression(), metadata !3427, metadata ptr %4, metadata !DIExpression()), !dbg !3423
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2422, metadata !DIExpression()), !dbg !3428
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2423, metadata !DIExpression()), !dbg !3428
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2424, metadata !DIExpression()), !dbg !3428
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2425, metadata !DIExpression()), !dbg !3428
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3430
  %6 = lshr i8 %2, 5, !dbg !3431
  %7 = zext nneg i8 %6 to i64, !dbg !3431
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3432
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2426, metadata !DIExpression()), !dbg !3428
  %9 = and i8 %2, 31, !dbg !3433
  %10 = zext nneg i8 %9 to i32, !dbg !3433
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2428, metadata !DIExpression()), !dbg !3428
  %11 = load i32, ptr %8, align 4, !dbg !3434, !tbaa !918
  %12 = lshr i32 %11, %10, !dbg !3435
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2429, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3428
  %13 = and i32 %12, 1, !dbg !3436
  %14 = xor i32 %13, 1, !dbg !3436
  %15 = shl nuw i32 %14, %10, !dbg !3437
  %16 = xor i32 %15, %11, !dbg !3438
  store i32 %16, ptr %8, align 4, !dbg !3438, !tbaa !918
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3439
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3440
  ret ptr %17, !dbg !3441
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3442 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3448
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3446, metadata !DIExpression()), !dbg !3449
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3447, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3421, metadata !DIExpression(), metadata !3448, metadata ptr %3, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata ptr %0, metadata !3418, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i64 -1, metadata !3419, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i8 %1, metadata !3420, metadata !DIExpression()), !dbg !3450
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3453, !tbaa.struct !3426, !DIAssignID !3454
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3421, metadata !DIExpression(), metadata !3454, metadata ptr %3, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata ptr %3, metadata !2422, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i8 %1, metadata !2423, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i32 1, metadata !2424, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i8 %1, metadata !2425, metadata !DIExpression()), !dbg !3455
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3457
  %5 = lshr i8 %1, 5, !dbg !3458
  %6 = zext nneg i8 %5 to i64, !dbg !3458
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3459
  call void @llvm.dbg.value(metadata ptr %7, metadata !2426, metadata !DIExpression()), !dbg !3455
  %8 = and i8 %1, 31, !dbg !3460
  %9 = zext nneg i8 %8 to i32, !dbg !3460
  call void @llvm.dbg.value(metadata i32 %9, metadata !2428, metadata !DIExpression()), !dbg !3455
  %10 = load i32, ptr %7, align 4, !dbg !3461, !tbaa !918
  %11 = lshr i32 %10, %9, !dbg !3462
  call void @llvm.dbg.value(metadata i32 %11, metadata !2429, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3455
  %12 = and i32 %11, 1, !dbg !3463
  %13 = xor i32 %12, 1, !dbg !3463
  %14 = shl nuw i32 %13, %9, !dbg !3464
  %15 = xor i32 %14, %10, !dbg !3465
  store i32 %15, ptr %7, align 4, !dbg !3465, !tbaa !918
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3466
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3467
  ret ptr %16, !dbg !3468
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #12 !dbg !3469 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3472
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3471, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata ptr %0, metadata !3446, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i8 58, metadata !3447, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3421, metadata !DIExpression(), metadata !3472, metadata ptr %2, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata ptr %0, metadata !3418, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i64 -1, metadata !3419, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8 58, metadata !3420, metadata !DIExpression()), !dbg !3476
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3479, !tbaa.struct !3426, !DIAssignID !3480
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3421, metadata !DIExpression(), metadata !3480, metadata ptr %2, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata ptr %2, metadata !2422, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i8 58, metadata !2423, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 1, metadata !2424, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i8 58, metadata !2425, metadata !DIExpression()), !dbg !3481
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3483
  call void @llvm.dbg.value(metadata ptr %3, metadata !2426, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 26, metadata !2428, metadata !DIExpression()), !dbg !3481
  %4 = load i32, ptr %3, align 4, !dbg !3484, !tbaa !918
  call void @llvm.dbg.value(metadata i32 %4, metadata !2429, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3481
  %5 = or i32 %4, 67108864, !dbg !3485
  store i32 %5, ptr %3, align 4, !dbg !3485, !tbaa !918
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3486
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3487
  ret ptr %6, !dbg !3488
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3489 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3493
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3491, metadata !DIExpression()), !dbg !3494
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3492, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3421, metadata !DIExpression(), metadata !3493, metadata ptr %3, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata ptr %0, metadata !3418, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64 %1, metadata !3419, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i8 58, metadata !3420, metadata !DIExpression()), !dbg !3495
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3498, !tbaa.struct !3426, !DIAssignID !3499
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3421, metadata !DIExpression(), metadata !3499, metadata ptr %3, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata ptr %3, metadata !2422, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i8 58, metadata !2423, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 1, metadata !2424, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i8 58, metadata !2425, metadata !DIExpression()), !dbg !3500
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3502
  call void @llvm.dbg.value(metadata ptr %4, metadata !2426, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 26, metadata !2428, metadata !DIExpression()), !dbg !3500
  %5 = load i32, ptr %4, align 4, !dbg !3503, !tbaa !918
  call void @llvm.dbg.value(metadata i32 %5, metadata !2429, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3500
  %6 = or i32 %5, 67108864, !dbg !3504
  store i32 %6, ptr %4, align 4, !dbg !3504, !tbaa !918
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3505
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3506
  ret ptr %7, !dbg !3507
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #12 !dbg !3508 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3514
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3513, metadata !DIExpression(), metadata !3514, metadata ptr %4, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3317, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3516
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3510, metadata !DIExpression()), !dbg !3515
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3511, metadata !DIExpression()), !dbg !3515
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3512, metadata !DIExpression()), !dbg !3515
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3518
  call void @llvm.dbg.value(metadata i32 %1, metadata !3312, metadata !DIExpression()), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3317, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3519
  %5 = icmp eq i32 %1, 10, !dbg !3520
  br i1 %5, label %6, label %7, !dbg !3521

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3522, !noalias !3523
  unreachable, !dbg !3522

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3317, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3519
  store i32 %1, ptr %4, align 8, !dbg !3526, !tbaa.struct !3426, !DIAssignID !3527
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3526
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3526
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3513, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3527, metadata ptr %4, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3513, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3528, metadata ptr %8, metadata !DIExpression()), !dbg !3515
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2422, metadata !DIExpression()), !dbg !3529
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2423, metadata !DIExpression()), !dbg !3529
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2424, metadata !DIExpression()), !dbg !3529
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2425, metadata !DIExpression()), !dbg !3529
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3531
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2426, metadata !DIExpression()), !dbg !3529
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2428, metadata !DIExpression()), !dbg !3529
  %10 = load i32, ptr %9, align 4, !dbg !3532, !tbaa !918
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2429, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3529
  %11 = or i32 %10, 67108864, !dbg !3533
  store i32 %11, ptr %9, align 4, !dbg !3533, !tbaa !918, !DIAssignID !3534
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3513, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3534, metadata ptr %9, metadata !DIExpression()), !dbg !3515
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3535
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3536
  ret ptr %12, !dbg !3537
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 !dbg !3538 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3546
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3542, metadata !DIExpression()), !dbg !3547
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3543, metadata !DIExpression()), !dbg !3547
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3544, metadata !DIExpression()), !dbg !3547
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3545, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3548, metadata !DIExpression(), metadata !3546, metadata ptr %5, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i32 %0, metadata !3553, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata ptr %1, metadata !3554, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata ptr %2, metadata !3555, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata ptr %3, metadata !3556, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i64 -1, metadata !3557, metadata !DIExpression()), !dbg !3558
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3561, !tbaa.struct !3426, !DIAssignID !3562
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3548, metadata !DIExpression(), metadata !3562, metadata ptr %5, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3548, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3563, metadata ptr undef, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata ptr %5, metadata !2462, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata ptr %1, metadata !2463, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata ptr %2, metadata !2464, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata ptr %5, metadata !2462, metadata !DIExpression()), !dbg !3564
  store i32 10, ptr %5, align 8, !dbg !3566, !tbaa !2405, !DIAssignID !3567
  call void @llvm.dbg.assign(metadata i32 10, metadata !3548, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3567, metadata ptr %5, metadata !DIExpression()), !dbg !3558
  %6 = icmp ne ptr %1, null, !dbg !3568
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3569
  br i1 %8, label %10, label %9, !dbg !3569

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3570
  unreachable, !dbg !3570

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3571
  store ptr %1, ptr %11, align 8, !dbg !3572, !tbaa !2476, !DIAssignID !3573
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3548, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3573, metadata ptr %11, metadata !DIExpression()), !dbg !3558
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3574
  store ptr %2, ptr %12, align 8, !dbg !3575, !tbaa !2479, !DIAssignID !3576
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3548, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3576, metadata ptr %12, metadata !DIExpression()), !dbg !3558
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3577
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3578
  ret ptr %13, !dbg !3579
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3549 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3580
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3548, metadata !DIExpression(), metadata !3580, metadata ptr %6, metadata !DIExpression()), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3553, metadata !DIExpression()), !dbg !3581
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3554, metadata !DIExpression()), !dbg !3581
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3555, metadata !DIExpression()), !dbg !3581
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3556, metadata !DIExpression()), !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3557, metadata !DIExpression()), !dbg !3581
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3583, !tbaa.struct !3426, !DIAssignID !3584
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3548, metadata !DIExpression(), metadata !3584, metadata ptr %6, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3548, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3585, metadata ptr undef, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata ptr %6, metadata !2462, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata ptr %1, metadata !2463, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata ptr %2, metadata !2464, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata ptr %6, metadata !2462, metadata !DIExpression()), !dbg !3586
  store i32 10, ptr %6, align 8, !dbg !3588, !tbaa !2405, !DIAssignID !3589
  call void @llvm.dbg.assign(metadata i32 10, metadata !3548, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3589, metadata ptr %6, metadata !DIExpression()), !dbg !3581
  %7 = icmp ne ptr %1, null, !dbg !3590
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3591
  br i1 %9, label %11, label %10, !dbg !3591

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3592
  unreachable, !dbg !3592

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3593
  store ptr %1, ptr %12, align 8, !dbg !3594, !tbaa !2476, !DIAssignID !3595
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3548, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3595, metadata ptr %12, metadata !DIExpression()), !dbg !3581
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3596
  store ptr %2, ptr %13, align 8, !dbg !3597, !tbaa !2479, !DIAssignID !3598
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3548, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3598, metadata ptr %13, metadata !DIExpression()), !dbg !3581
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3599
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3600
  ret ptr %14, !dbg !3601
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 !dbg !3602 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3609
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3606, metadata !DIExpression()), !dbg !3610
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3607, metadata !DIExpression()), !dbg !3610
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3608, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i32 0, metadata !3542, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata ptr %0, metadata !3543, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata ptr %1, metadata !3544, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata ptr %2, metadata !3545, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3548, metadata !DIExpression(), metadata !3609, metadata ptr %4, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 0, metadata !3553, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata ptr %0, metadata !3554, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata ptr %1, metadata !3555, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata ptr %2, metadata !3556, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i64 -1, metadata !3557, metadata !DIExpression()), !dbg !3613
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3616, !tbaa.struct !3426, !DIAssignID !3617
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3548, metadata !DIExpression(), metadata !3617, metadata ptr %4, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3548, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3618, metadata ptr undef, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata ptr %4, metadata !2462, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata ptr %0, metadata !2463, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata ptr %1, metadata !2464, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata ptr %4, metadata !2462, metadata !DIExpression()), !dbg !3619
  store i32 10, ptr %4, align 8, !dbg !3621, !tbaa !2405, !DIAssignID !3622
  call void @llvm.dbg.assign(metadata i32 10, metadata !3548, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3622, metadata ptr %4, metadata !DIExpression()), !dbg !3613
  %5 = icmp ne ptr %0, null, !dbg !3623
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3624
  br i1 %7, label %9, label %8, !dbg !3624

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3625
  unreachable, !dbg !3625

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3626
  store ptr %0, ptr %10, align 8, !dbg !3627, !tbaa !2476, !DIAssignID !3628
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3548, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3628, metadata ptr %10, metadata !DIExpression()), !dbg !3613
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3629
  store ptr %1, ptr %11, align 8, !dbg !3630, !tbaa !2479, !DIAssignID !3631
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3548, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3631, metadata ptr %11, metadata !DIExpression()), !dbg !3613
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3632
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3633
  ret ptr %12, !dbg !3634
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3635 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3643
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3639, metadata !DIExpression()), !dbg !3644
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3640, metadata !DIExpression()), !dbg !3644
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3641, metadata !DIExpression()), !dbg !3644
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3642, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3548, metadata !DIExpression(), metadata !3643, metadata ptr %5, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i32 0, metadata !3553, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata ptr %0, metadata !3554, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata ptr %1, metadata !3555, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata ptr %2, metadata !3556, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i64 %3, metadata !3557, metadata !DIExpression()), !dbg !3645
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3648, !tbaa.struct !3426, !DIAssignID !3649
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3548, metadata !DIExpression(), metadata !3649, metadata ptr %5, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3548, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3650, metadata ptr undef, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata ptr %5, metadata !2462, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr %0, metadata !2463, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr %1, metadata !2464, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr %5, metadata !2462, metadata !DIExpression()), !dbg !3651
  store i32 10, ptr %5, align 8, !dbg !3653, !tbaa !2405, !DIAssignID !3654
  call void @llvm.dbg.assign(metadata i32 10, metadata !3548, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3654, metadata ptr %5, metadata !DIExpression()), !dbg !3645
  %6 = icmp ne ptr %0, null, !dbg !3655
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3656
  br i1 %8, label %10, label %9, !dbg !3656

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3657
  unreachable, !dbg !3657

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3658
  store ptr %0, ptr %11, align 8, !dbg !3659, !tbaa !2476, !DIAssignID !3660
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3548, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3660, metadata ptr %11, metadata !DIExpression()), !dbg !3645
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3661
  store ptr %1, ptr %12, align 8, !dbg !3662, !tbaa !2479, !DIAssignID !3663
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3548, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3663, metadata ptr %12, metadata !DIExpression()), !dbg !3645
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3664
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3665
  ret ptr %13, !dbg !3666
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3667 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3671, metadata !DIExpression()), !dbg !3674
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3672, metadata !DIExpression()), !dbg !3674
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3673, metadata !DIExpression()), !dbg !3674
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3675
  ret ptr %4, !dbg !3676
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3677 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3681, metadata !DIExpression()), !dbg !3683
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3682, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i32 0, metadata !3671, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata ptr %0, metadata !3672, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i64 %1, metadata !3673, metadata !DIExpression()), !dbg !3684
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3686
  ret ptr %3, !dbg !3687
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #12 !dbg !3688 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3692, metadata !DIExpression()), !dbg !3694
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3693, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i32 %0, metadata !3671, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata ptr %1, metadata !3672, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i64 -1, metadata !3673, metadata !DIExpression()), !dbg !3695
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3697
  ret ptr %3, !dbg !3698
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #12 !dbg !3699 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3703, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 0, metadata !3692, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata ptr %0, metadata !3693, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i32 0, metadata !3671, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata ptr %0, metadata !3672, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 -1, metadata !3673, metadata !DIExpression()), !dbg !3707
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3709
  ret ptr %2, !dbg !3710
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_tokenbuffer(ptr nocapture noundef writeonly %0) local_unnamed_addr #28 !dbg !3711 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3722, metadata !DIExpression()), !dbg !3723
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !dbg !3724
  ret void, !dbg !3725
}

; Function Attrs: nounwind uwtable
define dso_local i64 @readtoken(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #12 !dbg !3726 {
  %5 = alloca [4 x i64], align 8, !DIAssignID !3780
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3768, metadata !DIExpression(), metadata !3780, metadata ptr %5, metadata !DIExpression()), !dbg !3781
  %6 = alloca i64, align 8, !DIAssignID !3782
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3778, metadata !DIExpression(), metadata !3782, metadata ptr %6, metadata !DIExpression()), !dbg !3781
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3764, metadata !DIExpression()), !dbg !3781
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3765, metadata !DIExpression()), !dbg !3781
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3766, metadata !DIExpression()), !dbg !3781
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3767, metadata !DIExpression()), !dbg !3781
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !3783
  call void @llvm.dbg.value(metadata ptr %5, metadata !3784, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i32 0, metadata !3787, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i64 32, metadata !3788, metadata !DIExpression()), !dbg !3789
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef 0, i64 noundef 32, i1 noundef false) #40, !dbg !3791
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3771, metadata !DIExpression()), !dbg !3792
  %7 = icmp eq i64 %2, 0, !dbg !3793
  br i1 %7, label %8, label %.preheader, !dbg !3794

.preheader:                                       ; preds = %4
  br label %23, !dbg !3794

.loopexit1:                                       ; preds = %23
  br label %8, !dbg !3795

8:                                                ; preds = %.loopexit1, %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3800, metadata !DIExpression()), !dbg !3803
  %9 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3795
  %10 = load ptr, ptr %9, align 8, !dbg !3795, !tbaa !2272
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3795
  %12 = load ptr, ptr %11, align 8, !dbg !3795, !tbaa !2270
  %13 = icmp ult ptr %10, %12, !dbg !3795
  br i1 %13, label %14, label %18, !dbg !3795, !prof !1801

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !3795
  store ptr %15, ptr %9, align 8, !dbg !3795, !tbaa !2272
  %16 = load i8, ptr %10, align 1, !dbg !3795, !tbaa !927
  %17 = zext i8 %16 to i32, !dbg !3795
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3776, metadata !DIExpression()), !dbg !3781
  br label %21, !dbg !3804

18:                                               ; preds = %8
  %19 = tail call i32 @__uflow(ptr noundef nonnull %0) #40, !dbg !3795
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !3776, metadata !DIExpression()), !dbg !3781
  %20 = icmp sgt i32 %19, -1, !dbg !3806
  br i1 %20, label %21, label %59, !dbg !3804

21:                                               ; preds = %14, %18
  %22 = phi i32 [ %19, %18 ], [ %17, %14 ]
  br label %36, !dbg !3807

23:                                               ; preds = %.preheader, %23
  %24 = phi i64 [ %34, %23 ], [ 0, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !3771, metadata !DIExpression()), !dbg !3792
  %25 = getelementptr inbounds i8, ptr %1, i64 %24, !dbg !3808
  %26 = load i8, ptr %25, align 1, !dbg !3808, !tbaa !927
  tail call void @llvm.dbg.value(metadata i8 %26, metadata !3773, metadata !DIExpression()), !dbg !3809
  %27 = zext i8 %26 to i64, !dbg !3810
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !3811, metadata !DIExpression()), !dbg !3819
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3817, metadata !DIExpression()), !dbg !3819
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3818, metadata !DIExpression()), !dbg !3819
  %28 = and i64 %27, 63, !dbg !3821
  %29 = shl nuw i64 1, %28, !dbg !3822
  %30 = lshr i64 %27, 6, !dbg !3823
  %31 = getelementptr inbounds i64, ptr %5, i64 %30, !dbg !3824
  %32 = load i64, ptr %31, align 8, !dbg !3825, !tbaa !1417
  %33 = or i64 %29, %32, !dbg !3825
  store i64 %33, ptr %31, align 8, !dbg !3825, !tbaa !1417
  %34 = add nuw nsw i64 %24, 1, !dbg !3826
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !3771, metadata !DIExpression()), !dbg !3792
  %35 = icmp eq i64 %34, %2, !dbg !3793
  br i1 %35, label %.loopexit1, label %23, !dbg !3794, !llvm.loop !3827

36:                                               ; preds = %21, %56
  %37 = phi i32 [ %57, %56 ], [ %22, %21 ]
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !3776, metadata !DIExpression()), !dbg !3781
  %38 = zext nneg i32 %37 to i64
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !3829, metadata !DIExpression()), !dbg !3837
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3836, metadata !DIExpression()), !dbg !3837
  %39 = lshr i64 %38, 6, !dbg !3839
  %40 = getelementptr inbounds i64, ptr %5, i64 %39, !dbg !3840
  %41 = load i64, ptr %40, align 8, !dbg !3840, !tbaa !1417
  %42 = and i64 %38, 63, !dbg !3841
  %43 = shl nuw i64 1, %42, !dbg !3840
  %44 = and i64 %41, %43, !dbg !3840
  %45 = icmp eq i64 %44, 0, !dbg !3840
  br i1 %45, label %60, label %46, !dbg !3807

46:                                               ; preds = %36
  call void @llvm.dbg.value(metadata ptr %0, metadata !3800, metadata !DIExpression()), !dbg !3842
  %47 = load ptr, ptr %9, align 8, !dbg !3844, !tbaa !2272
  %48 = load ptr, ptr %11, align 8, !dbg !3844, !tbaa !2270
  %49 = icmp ult ptr %47, %48, !dbg !3844
  br i1 %49, label %52, label %50, !dbg !3844, !prof !1801

50:                                               ; preds = %46
  %51 = tail call i32 @__uflow(ptr noundef nonnull %0) #40, !dbg !3844
  br label %56, !dbg !3844

52:                                               ; preds = %46
  %53 = getelementptr inbounds i8, ptr %47, i64 1, !dbg !3844
  store ptr %53, ptr %9, align 8, !dbg !3844, !tbaa !2272
  %54 = load i8, ptr %47, align 1, !dbg !3844, !tbaa !927
  %55 = zext i8 %54 to i32, !dbg !3844
  br label %56, !dbg !3844

56:                                               ; preds = %50, %52
  %57 = phi i32 [ %51, %50 ], [ %55, %52 ], !dbg !3844
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !3776, metadata !DIExpression()), !dbg !3781
  %58 = icmp sgt i32 %57, -1, !dbg !3806
  br i1 %58, label %36, label %.loopexit, !dbg !3804, !llvm.loop !3845

.loopexit:                                        ; preds = %56
  br label %59, !dbg !3847

59:                                               ; preds = %.loopexit, %18
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !3777, metadata !DIExpression()), !dbg !3781
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #40, !dbg !3847
  call void @llvm.dbg.assign(metadata i64 poison, metadata !3778, metadata !DIExpression(), metadata !3848, metadata ptr %6, metadata !DIExpression()), !dbg !3781
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3779, metadata !DIExpression()), !dbg !3781
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !3776, metadata !DIExpression()), !dbg !3781
  br label %103, !dbg !3849

60:                                               ; preds = %36
  %.lcssa3 = phi i32 [ %37, %36 ]
  %61 = getelementptr inbounds %struct.tokenbuffer, ptr %3, i64 0, i32 1, !dbg !3854
  %62 = load ptr, ptr %61, align 8, !dbg !3854, !tbaa !1178
  tail call void @llvm.dbg.value(metadata ptr %62, metadata !3777, metadata !DIExpression()), !dbg !3781
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #40, !dbg !3847
  %63 = load i64, ptr %3, align 8, !dbg !3855, !tbaa !3856
  store i64 %63, ptr %6, align 8, !dbg !3857, !tbaa !1417, !DIAssignID !3848
  call void @llvm.dbg.assign(metadata i64 %63, metadata !3778, metadata !DIExpression(), metadata !3848, metadata ptr %6, metadata !DIExpression()), !dbg !3781
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3779, metadata !DIExpression()), !dbg !3781
  tail call void @llvm.dbg.value(metadata i32 %.lcssa3, metadata !3776, metadata !DIExpression()), !dbg !3781
  br label %64, !dbg !3858

64:                                               ; preds = %97, %60
  %65 = phi i1 [ %99, %97 ], [ false, %60 ]
  %66 = phi i64 [ %86, %97 ], [ 0, %60 ]
  %67 = phi ptr [ %74, %97 ], [ %62, %60 ]
  %68 = phi i32 [ %98, %97 ], [ %.lcssa3, %60 ]
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !3779, metadata !DIExpression()), !dbg !3781
  tail call void @llvm.dbg.value(metadata ptr %67, metadata !3777, metadata !DIExpression()), !dbg !3781
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !3776, metadata !DIExpression()), !dbg !3781
  %69 = load i64, ptr %6, align 8, !dbg !3859, !tbaa !1417
  %70 = icmp eq i64 %66, %69, !dbg !3861
  br i1 %70, label %71, label %73, !dbg !3862

71:                                               ; preds = %64
  %72 = call nonnull ptr @xpalloc(ptr noundef %67, ptr noundef nonnull %6, i64 noundef 1, i64 noundef -1, i64 noundef 1) #40, !dbg !3863
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !3777, metadata !DIExpression()), !dbg !3781
  br label %73, !dbg !3864

73:                                               ; preds = %71, %64
  %74 = phi ptr [ %72, %71 ], [ %67, %64 ], !dbg !3781
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !3777, metadata !DIExpression()), !dbg !3781
  br i1 %65, label %100, label %75, !dbg !3865

75:                                               ; preds = %73
  %76 = zext nneg i32 %68 to i64
  tail call void @llvm.dbg.value(metadata i64 %76, metadata !3829, metadata !DIExpression()), !dbg !3866
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3836, metadata !DIExpression()), !dbg !3866
  %77 = lshr i64 %76, 6, !dbg !3869
  %78 = getelementptr inbounds i64, ptr %5, i64 %77, !dbg !3870
  %79 = load i64, ptr %78, align 8, !dbg !3870, !tbaa !1417
  %80 = and i64 %76, 63, !dbg !3871
  %81 = shl nuw i64 1, %80, !dbg !3870
  %82 = and i64 %79, %81, !dbg !3870
  %83 = icmp eq i64 %82, 0, !dbg !3870
  br i1 %83, label %84, label %100, !dbg !3872

84:                                               ; preds = %75
  %85 = trunc i32 %68 to i8, !dbg !3873
  %86 = add nuw nsw i64 %66, 1, !dbg !3874
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !3779, metadata !DIExpression()), !dbg !3781
  %87 = getelementptr inbounds i8, ptr %74, i64 %66, !dbg !3875
  store i8 %85, ptr %87, align 1, !dbg !3876, !tbaa !927
  call void @llvm.dbg.value(metadata ptr %0, metadata !3800, metadata !DIExpression()), !dbg !3877
  %88 = load ptr, ptr %9, align 8, !dbg !3879, !tbaa !2272
  %89 = load ptr, ptr %11, align 8, !dbg !3879, !tbaa !2270
  %90 = icmp ult ptr %88, %89, !dbg !3879
  br i1 %90, label %93, label %91, !dbg !3879, !prof !1801

91:                                               ; preds = %84
  %92 = call i32 @__uflow(ptr noundef nonnull %0) #40, !dbg !3879
  br label %97, !dbg !3879

93:                                               ; preds = %84
  %94 = getelementptr inbounds i8, ptr %88, i64 1, !dbg !3879
  store ptr %94, ptr %9, align 8, !dbg !3879, !tbaa !2272
  %95 = load i8, ptr %88, align 1, !dbg !3879, !tbaa !927
  %96 = zext i8 %95 to i32, !dbg !3879
  br label %97, !dbg !3879

97:                                               ; preds = %91, %93
  %98 = phi i32 [ %92, %91 ], [ %96, %93 ], !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !3779, metadata !DIExpression()), !dbg !3781
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !3777, metadata !DIExpression()), !dbg !3781
  tail call void @llvm.dbg.value(metadata i32 %98, metadata !3776, metadata !DIExpression()), !dbg !3781
  %99 = icmp slt i32 %98, 0, !dbg !3880
  br label %64

100:                                              ; preds = %75, %73
  %.lcssa2 = phi ptr [ %74, %75 ], [ %74, %73 ], !dbg !3781
  %.lcssa = phi i64 [ %66, %75 ], [ %66, %73 ]
  %101 = getelementptr inbounds i8, ptr %.lcssa2, i64 %.lcssa, !dbg !3881
  store i8 0, ptr %101, align 1, !dbg !3881, !tbaa !927
  store ptr %.lcssa2, ptr %61, align 8, !dbg !3882, !tbaa !1178
  %102 = load i64, ptr %6, align 8, !dbg !3883, !tbaa !1417
  store i64 %102, ptr %3, align 8, !dbg !3884, !tbaa !3856
  br label %103, !dbg !3885

103:                                              ; preds = %59, %100
  %104 = phi i64 [ %.lcssa, %100 ], [ -1, %59 ], !dbg !3781
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #40, !dbg !3886
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !3886
  ret i64 %104, !dbg !3886
}

declare !dbg !3887 i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @readtokens(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, ptr nocapture noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #12 !dbg !3888 {
  %7 = alloca i64, align 8, !DIAssignID !3911
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3900, metadata !DIExpression(), metadata !3911, metadata ptr %7, metadata !DIExpression()), !dbg !3912
  %8 = alloca %struct.tokenbuffer, align 8, !DIAssignID !3913
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3903, metadata !DIExpression(), metadata !3913, metadata ptr %8, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3894, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3895, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3896, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3897, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3898, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3899, metadata !DIExpression()), !dbg !3912
  %9 = icmp eq i64 %1, 0, !dbg !3914
  %10 = add i64 %1, 1, !dbg !3916
  %11 = select i1 %9, i64 64, i64 %10, !dbg !3916
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3895, metadata !DIExpression()), !dbg !3912
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #40, !dbg !3917
  store i64 %11, ptr %7, align 8, !dbg !3918, !tbaa !1417, !DIAssignID !3919
  call void @llvm.dbg.assign(metadata i64 %11, metadata !3900, metadata !DIExpression(), metadata !3919, metadata ptr %7, metadata !DIExpression()), !dbg !3912
  %12 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %11, i64 noundef 8) #48, !dbg !3920
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !3901, metadata !DIExpression()), !dbg !3912
  %13 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %11, i64 noundef 8) #48, !dbg !3921
  tail call void @llvm.dbg.value(metadata ptr %13, metadata !3902, metadata !DIExpression()), !dbg !3912
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #40, !dbg !3922
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3904, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata ptr %8, metadata !3722, metadata !DIExpression()), !dbg !3923
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !dbg !3925, !DIAssignID !3926
  call void @llvm.dbg.assign(metadata i8 0, metadata !3903, metadata !DIExpression(), metadata !3926, metadata ptr %8, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3905, metadata !DIExpression()), !dbg !3912
  %14 = getelementptr inbounds %struct.tokenbuffer, ptr %8, i64 0, i32 1
  br label %15, !dbg !3927

15:                                               ; preds = %31, %6
  %16 = phi ptr [ %13, %6 ], [ %27, %31 ], !dbg !3912
  %17 = phi i64 [ 0, %6 ], [ %36, %31 ], !dbg !3928
  %18 = phi ptr [ %12, %6 ], [ %28, %31 ], !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !3901, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !3905, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !3902, metadata !DIExpression()), !dbg !3912
  %19 = call i64 @readtoken(ptr noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %8), !dbg !3929
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !3906, metadata !DIExpression()), !dbg !3930
  %20 = load i64, ptr %7, align 8, !dbg !3931, !tbaa !1417
  %21 = icmp slt i64 %17, %20, !dbg !3933
  br i1 %21, label %26, label %22, !dbg !3934

22:                                               ; preds = %15
  %23 = call nonnull ptr @xpalloc(ptr noundef %18, ptr noundef nonnull %7, i64 noundef 1, i64 noundef -1, i64 noundef 8) #40, !dbg !3935
  tail call void @llvm.dbg.value(metadata ptr %23, metadata !3901, metadata !DIExpression()), !dbg !3912
  %24 = load i64, ptr %7, align 8, !dbg !3937, !tbaa !1417
  %25 = call ptr @xreallocarray(ptr noundef nonnull %16, i64 noundef %24, i64 noundef 8) #49, !dbg !3938
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !3902, metadata !DIExpression()), !dbg !3912
  br label %26, !dbg !3939

26:                                               ; preds = %22, %15
  %27 = phi ptr [ %25, %22 ], [ %16, %15 ], !dbg !3912
  %28 = phi ptr [ %23, %22 ], [ %18, %15 ], !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !3901, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !3902, metadata !DIExpression()), !dbg !3912
  %29 = icmp eq i64 %19, -1, !dbg !3940
  %30 = getelementptr inbounds i64, ptr %27, i64 %17, !dbg !3930
  br i1 %29, label %37, label %31, !dbg !3942

31:                                               ; preds = %26
  %32 = add nuw i64 %19, 1, !dbg !3943
  %33 = call noalias nonnull ptr @xnmalloc(i64 noundef %32, i64 noundef 1) #48, !dbg !3944
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3910, metadata !DIExpression()), !dbg !3930
  store i64 %19, ptr %30, align 8, !dbg !3945, !tbaa !1417
  %34 = load ptr, ptr %14, align 8, !dbg !3946, !tbaa !1178
  call void @llvm.dbg.value(metadata ptr %33, metadata !3947, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata ptr %34, metadata !3953, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i64 %32, metadata !3954, metadata !DIExpression()), !dbg !3955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %33, ptr noundef nonnull align 1 dereferenceable(1) %34, i64 noundef %32, i1 noundef false) #40, !dbg !3957
  %35 = getelementptr inbounds ptr, ptr %28, i64 %17, !dbg !3958
  store ptr %33, ptr %35, align 8, !dbg !3959, !tbaa !855
  %36 = add nuw nsw i64 %17, 1, !dbg !3960
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3905, metadata !DIExpression()), !dbg !3912
  br label %15

37:                                               ; preds = %26
  %.lcssa3 = phi ptr [ %27, %26 ], !dbg !3912
  %.lcssa2 = phi ptr [ %28, %26 ], !dbg !3912
  %.lcssa1 = phi ptr [ %30, %26 ], !dbg !3930
  %.lcssa = phi i64 [ %17, %26 ], !dbg !3928
  %38 = getelementptr inbounds ptr, ptr %.lcssa2, i64 %.lcssa, !dbg !3961
  store ptr null, ptr %38, align 8, !dbg !3963, !tbaa !855
  store i64 0, ptr %.lcssa1, align 8, !dbg !3964, !tbaa !1417
  tail call void @llvm.dbg.value(metadata i64 %.lcssa, metadata !3905, metadata !DIExpression()), !dbg !3912
  %39 = load ptr, ptr %14, align 8, !dbg !3965, !tbaa !1178
  call void @free(ptr noundef %39) #40, !dbg !3966
  store ptr %.lcssa2, ptr %4, align 8, !dbg !3967, !tbaa !855
  %40 = icmp eq ptr %5, null, !dbg !3968
  br i1 %40, label %42, label %41, !dbg !3970

41:                                               ; preds = %37
  store ptr %.lcssa3, ptr %5, align 8, !dbg !3971, !tbaa !855
  br label %43, !dbg !3972

42:                                               ; preds = %37
  call void @free(ptr noundef nonnull %.lcssa3) #40, !dbg !3973
  br label %43

43:                                               ; preds = %42, %41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #40, !dbg !3974
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #40, !dbg !3974
  ret i64 %.lcssa, !dbg !3975
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3976 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4015, metadata !DIExpression()), !dbg !4021
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4016, metadata !DIExpression()), !dbg !4021
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4017, metadata !DIExpression()), !dbg !4021
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4018, metadata !DIExpression()), !dbg !4021
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4019, metadata !DIExpression()), !dbg !4021
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4020, metadata !DIExpression()), !dbg !4021
  %7 = icmp eq ptr %1, null, !dbg !4022
  br i1 %7, label %10, label %8, !dbg !4024

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.99, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !4025
  br label %12, !dbg !4025

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.100, ptr noundef %2, ptr noundef %3) #40, !dbg !4026
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.3.102, i32 noundef 5) #40, !dbg !4027
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !4027
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.103, ptr noundef %0), !dbg !4028
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.5.104, i32 noundef 5) #40, !dbg !4029
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.105) #40, !dbg !4029
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.103, ptr noundef %0), !dbg !4030
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
  ], !dbg !4031

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.7.106, i32 noundef 5) #40, !dbg !4032
  %21 = load ptr, ptr %4, align 8, !dbg !4032, !tbaa !855
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !4032
  br label %147, !dbg !4034

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.8.107, i32 noundef 5) #40, !dbg !4035
  %25 = load ptr, ptr %4, align 8, !dbg !4035, !tbaa !855
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4035
  %27 = load ptr, ptr %26, align 8, !dbg !4035, !tbaa !855
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !4035
  br label %147, !dbg !4036

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.9.108, i32 noundef 5) #40, !dbg !4037
  %31 = load ptr, ptr %4, align 8, !dbg !4037, !tbaa !855
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4037
  %33 = load ptr, ptr %32, align 8, !dbg !4037, !tbaa !855
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4037
  %35 = load ptr, ptr %34, align 8, !dbg !4037, !tbaa !855
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !4037
  br label %147, !dbg !4038

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.10.109, i32 noundef 5) #40, !dbg !4039
  %39 = load ptr, ptr %4, align 8, !dbg !4039, !tbaa !855
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4039
  %41 = load ptr, ptr %40, align 8, !dbg !4039, !tbaa !855
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4039
  %43 = load ptr, ptr %42, align 8, !dbg !4039, !tbaa !855
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4039
  %45 = load ptr, ptr %44, align 8, !dbg !4039, !tbaa !855
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !4039
  br label %147, !dbg !4040

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.11.110, i32 noundef 5) #40, !dbg !4041
  %49 = load ptr, ptr %4, align 8, !dbg !4041, !tbaa !855
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4041
  %51 = load ptr, ptr %50, align 8, !dbg !4041, !tbaa !855
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4041
  %53 = load ptr, ptr %52, align 8, !dbg !4041, !tbaa !855
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4041
  %55 = load ptr, ptr %54, align 8, !dbg !4041, !tbaa !855
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4041
  %57 = load ptr, ptr %56, align 8, !dbg !4041, !tbaa !855
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !4041
  br label %147, !dbg !4042

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.12.111, i32 noundef 5) #40, !dbg !4043
  %61 = load ptr, ptr %4, align 8, !dbg !4043, !tbaa !855
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4043
  %63 = load ptr, ptr %62, align 8, !dbg !4043, !tbaa !855
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4043
  %65 = load ptr, ptr %64, align 8, !dbg !4043, !tbaa !855
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4043
  %67 = load ptr, ptr %66, align 8, !dbg !4043, !tbaa !855
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4043
  %69 = load ptr, ptr %68, align 8, !dbg !4043, !tbaa !855
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4043
  %71 = load ptr, ptr %70, align 8, !dbg !4043, !tbaa !855
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !4043
  br label %147, !dbg !4044

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.13.112, i32 noundef 5) #40, !dbg !4045
  %75 = load ptr, ptr %4, align 8, !dbg !4045, !tbaa !855
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4045
  %77 = load ptr, ptr %76, align 8, !dbg !4045, !tbaa !855
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4045
  %79 = load ptr, ptr %78, align 8, !dbg !4045, !tbaa !855
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4045
  %81 = load ptr, ptr %80, align 8, !dbg !4045, !tbaa !855
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4045
  %83 = load ptr, ptr %82, align 8, !dbg !4045, !tbaa !855
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4045
  %85 = load ptr, ptr %84, align 8, !dbg !4045, !tbaa !855
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4045
  %87 = load ptr, ptr %86, align 8, !dbg !4045, !tbaa !855
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !4045
  br label %147, !dbg !4046

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.14.113, i32 noundef 5) #40, !dbg !4047
  %91 = load ptr, ptr %4, align 8, !dbg !4047, !tbaa !855
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4047
  %93 = load ptr, ptr %92, align 8, !dbg !4047, !tbaa !855
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4047
  %95 = load ptr, ptr %94, align 8, !dbg !4047, !tbaa !855
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4047
  %97 = load ptr, ptr %96, align 8, !dbg !4047, !tbaa !855
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4047
  %99 = load ptr, ptr %98, align 8, !dbg !4047, !tbaa !855
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4047
  %101 = load ptr, ptr %100, align 8, !dbg !4047, !tbaa !855
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4047
  %103 = load ptr, ptr %102, align 8, !dbg !4047, !tbaa !855
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4047
  %105 = load ptr, ptr %104, align 8, !dbg !4047, !tbaa !855
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !4047
  br label %147, !dbg !4048

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.15.114, i32 noundef 5) #40, !dbg !4049
  %109 = load ptr, ptr %4, align 8, !dbg !4049, !tbaa !855
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4049
  %111 = load ptr, ptr %110, align 8, !dbg !4049, !tbaa !855
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4049
  %113 = load ptr, ptr %112, align 8, !dbg !4049, !tbaa !855
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4049
  %115 = load ptr, ptr %114, align 8, !dbg !4049, !tbaa !855
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4049
  %117 = load ptr, ptr %116, align 8, !dbg !4049, !tbaa !855
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4049
  %119 = load ptr, ptr %118, align 8, !dbg !4049, !tbaa !855
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4049
  %121 = load ptr, ptr %120, align 8, !dbg !4049, !tbaa !855
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4049
  %123 = load ptr, ptr %122, align 8, !dbg !4049, !tbaa !855
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4049
  %125 = load ptr, ptr %124, align 8, !dbg !4049, !tbaa !855
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !4049
  br label %147, !dbg !4050

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.16.115, i32 noundef 5) #40, !dbg !4051
  %129 = load ptr, ptr %4, align 8, !dbg !4051, !tbaa !855
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4051
  %131 = load ptr, ptr %130, align 8, !dbg !4051, !tbaa !855
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4051
  %133 = load ptr, ptr %132, align 8, !dbg !4051, !tbaa !855
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4051
  %135 = load ptr, ptr %134, align 8, !dbg !4051, !tbaa !855
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4051
  %137 = load ptr, ptr %136, align 8, !dbg !4051, !tbaa !855
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4051
  %139 = load ptr, ptr %138, align 8, !dbg !4051, !tbaa !855
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4051
  %141 = load ptr, ptr %140, align 8, !dbg !4051, !tbaa !855
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4051
  %143 = load ptr, ptr %142, align 8, !dbg !4051, !tbaa !855
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4051
  %145 = load ptr, ptr %144, align 8, !dbg !4051, !tbaa !855
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !4051
  br label %147, !dbg !4052

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4053
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #12 !dbg !4054 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4058, metadata !DIExpression()), !dbg !4064
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4059, metadata !DIExpression()), !dbg !4064
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4060, metadata !DIExpression()), !dbg !4064
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4061, metadata !DIExpression()), !dbg !4064
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4062, metadata !DIExpression()), !dbg !4064
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4063, metadata !DIExpression()), !dbg !4064
  br label %6, !dbg !4065

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4067
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4063, metadata !DIExpression()), !dbg !4064
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4068
  %9 = load ptr, ptr %8, align 8, !dbg !4068, !tbaa !855
  %10 = icmp eq ptr %9, null, !dbg !4070
  %11 = add i64 %7, 1, !dbg !4071
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4063, metadata !DIExpression()), !dbg !4064
  br i1 %10, label %12, label %6, !dbg !4070, !llvm.loop !4072

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !4067
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !4074
  ret void, !dbg !4075
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #12 !dbg !4076 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !4098
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4096, metadata !DIExpression(), metadata !4098, metadata ptr %6, metadata !DIExpression()), !dbg !4099
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4090, metadata !DIExpression()), !dbg !4099
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4091, metadata !DIExpression()), !dbg !4099
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4092, metadata !DIExpression()), !dbg !4099
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4093, metadata !DIExpression()), !dbg !4099
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4094, metadata !DIExpression(DW_OP_deref)), !dbg !4099
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !4100
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4095, metadata !DIExpression()), !dbg !4099
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4095, metadata !DIExpression()), !dbg !4099
  %10 = icmp sgt i32 %9, -1, !dbg !4101
  br i1 %10, label %18, label %11, !dbg !4101

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4101
  store i32 %12, ptr %7, align 8, !dbg !4101
  %13 = icmp ult i32 %9, -7, !dbg !4101
  br i1 %13, label %14, label %18, !dbg !4101

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4101
  %16 = sext i32 %9 to i64, !dbg !4101
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4101
  br label %22, !dbg !4101

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4101
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4101
  store ptr %21, ptr %4, align 8, !dbg !4101
  br label %22, !dbg !4101

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4101
  %25 = load ptr, ptr %24, align 8, !dbg !4101
  store ptr %25, ptr %6, align 8, !dbg !4104, !tbaa !855
  %26 = icmp eq ptr %25, null, !dbg !4105
  br i1 %26, label %197, label %27, !dbg !4106

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4095, metadata !DIExpression()), !dbg !4099
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4095, metadata !DIExpression()), !dbg !4099
  %28 = icmp sgt i32 %23, -1, !dbg !4101
  br i1 %28, label %36, label %29, !dbg !4101

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4101
  store i32 %30, ptr %7, align 8, !dbg !4101
  %31 = icmp ult i32 %23, -7, !dbg !4101
  br i1 %31, label %32, label %36, !dbg !4101

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4101
  %34 = sext i32 %23 to i64, !dbg !4101
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4101
  br label %40, !dbg !4101

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4101
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4101
  store ptr %39, ptr %4, align 8, !dbg !4101
  br label %40, !dbg !4101

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4101
  %43 = load ptr, ptr %42, align 8, !dbg !4101
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4107
  store ptr %43, ptr %44, align 8, !dbg !4104, !tbaa !855
  %45 = icmp eq ptr %43, null, !dbg !4105
  br i1 %45, label %197, label %46, !dbg !4106

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4095, metadata !DIExpression()), !dbg !4099
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4095, metadata !DIExpression()), !dbg !4099
  %47 = icmp sgt i32 %41, -1, !dbg !4101
  br i1 %47, label %55, label %48, !dbg !4101

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4101
  store i32 %49, ptr %7, align 8, !dbg !4101
  %50 = icmp ult i32 %41, -7, !dbg !4101
  br i1 %50, label %51, label %55, !dbg !4101

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4101
  %53 = sext i32 %41 to i64, !dbg !4101
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4101
  br label %59, !dbg !4101

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4101
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4101
  store ptr %58, ptr %4, align 8, !dbg !4101
  br label %59, !dbg !4101

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4101
  %62 = load ptr, ptr %61, align 8, !dbg !4101
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4107
  store ptr %62, ptr %63, align 8, !dbg !4104, !tbaa !855
  %64 = icmp eq ptr %62, null, !dbg !4105
  br i1 %64, label %197, label %65, !dbg !4106

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4095, metadata !DIExpression()), !dbg !4099
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4095, metadata !DIExpression()), !dbg !4099
  %66 = icmp sgt i32 %60, -1, !dbg !4101
  br i1 %66, label %74, label %67, !dbg !4101

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4101
  store i32 %68, ptr %7, align 8, !dbg !4101
  %69 = icmp ult i32 %60, -7, !dbg !4101
  br i1 %69, label %70, label %74, !dbg !4101

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4101
  %72 = sext i32 %60 to i64, !dbg !4101
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4101
  br label %78, !dbg !4101

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4101
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4101
  store ptr %77, ptr %4, align 8, !dbg !4101
  br label %78, !dbg !4101

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4101
  %81 = load ptr, ptr %80, align 8, !dbg !4101
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4107
  store ptr %81, ptr %82, align 8, !dbg !4104, !tbaa !855
  %83 = icmp eq ptr %81, null, !dbg !4105
  br i1 %83, label %197, label %84, !dbg !4106

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4095, metadata !DIExpression()), !dbg !4099
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4095, metadata !DIExpression()), !dbg !4099
  %85 = icmp sgt i32 %79, -1, !dbg !4101
  br i1 %85, label %93, label %86, !dbg !4101

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4101
  store i32 %87, ptr %7, align 8, !dbg !4101
  %88 = icmp ult i32 %79, -7, !dbg !4101
  br i1 %88, label %89, label %93, !dbg !4101

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4101
  %91 = sext i32 %79 to i64, !dbg !4101
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4101
  br label %97, !dbg !4101

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4101
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4101
  store ptr %96, ptr %4, align 8, !dbg !4101
  br label %97, !dbg !4101

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4101
  %100 = load ptr, ptr %99, align 8, !dbg !4101
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4107
  store ptr %100, ptr %101, align 8, !dbg !4104, !tbaa !855
  %102 = icmp eq ptr %100, null, !dbg !4105
  br i1 %102, label %197, label %103, !dbg !4106

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4095, metadata !DIExpression()), !dbg !4099
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4095, metadata !DIExpression()), !dbg !4099
  %104 = icmp sgt i32 %98, -1, !dbg !4101
  br i1 %104, label %112, label %105, !dbg !4101

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4101
  store i32 %106, ptr %7, align 8, !dbg !4101
  %107 = icmp ult i32 %98, -7, !dbg !4101
  br i1 %107, label %108, label %112, !dbg !4101

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4101
  %110 = sext i32 %98 to i64, !dbg !4101
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4101
  br label %116, !dbg !4101

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4101
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4101
  store ptr %115, ptr %4, align 8, !dbg !4101
  br label %116, !dbg !4101

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4101
  %119 = load ptr, ptr %118, align 8, !dbg !4101
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4107
  store ptr %119, ptr %120, align 8, !dbg !4104, !tbaa !855
  %121 = icmp eq ptr %119, null, !dbg !4105
  br i1 %121, label %197, label %122, !dbg !4106

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4095, metadata !DIExpression()), !dbg !4099
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4095, metadata !DIExpression()), !dbg !4099
  %123 = icmp sgt i32 %117, -1, !dbg !4101
  br i1 %123, label %131, label %124, !dbg !4101

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4101
  store i32 %125, ptr %7, align 8, !dbg !4101
  %126 = icmp ult i32 %117, -7, !dbg !4101
  br i1 %126, label %127, label %131, !dbg !4101

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4101
  %129 = sext i32 %117 to i64, !dbg !4101
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4101
  br label %135, !dbg !4101

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4101
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4101
  store ptr %134, ptr %4, align 8, !dbg !4101
  br label %135, !dbg !4101

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4101
  %138 = load ptr, ptr %137, align 8, !dbg !4101
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4107
  store ptr %138, ptr %139, align 8, !dbg !4104, !tbaa !855
  %140 = icmp eq ptr %138, null, !dbg !4105
  br i1 %140, label %197, label %141, !dbg !4106

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4095, metadata !DIExpression()), !dbg !4099
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4095, metadata !DIExpression()), !dbg !4099
  %142 = icmp sgt i32 %136, -1, !dbg !4101
  br i1 %142, label %150, label %143, !dbg !4101

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4101
  store i32 %144, ptr %7, align 8, !dbg !4101
  %145 = icmp ult i32 %136, -7, !dbg !4101
  br i1 %145, label %146, label %150, !dbg !4101

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4101
  %148 = sext i32 %136 to i64, !dbg !4101
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4101
  br label %154, !dbg !4101

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4101
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4101
  store ptr %153, ptr %4, align 8, !dbg !4101
  br label %154, !dbg !4101

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4101
  %157 = load ptr, ptr %156, align 8, !dbg !4101
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4107
  store ptr %157, ptr %158, align 8, !dbg !4104, !tbaa !855
  %159 = icmp eq ptr %157, null, !dbg !4105
  br i1 %159, label %197, label %160, !dbg !4106

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4095, metadata !DIExpression()), !dbg !4099
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4095, metadata !DIExpression()), !dbg !4099
  %161 = icmp sgt i32 %155, -1, !dbg !4101
  br i1 %161, label %169, label %162, !dbg !4101

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4101
  store i32 %163, ptr %7, align 8, !dbg !4101
  %164 = icmp ult i32 %155, -7, !dbg !4101
  br i1 %164, label %165, label %169, !dbg !4101

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4101
  %167 = sext i32 %155 to i64, !dbg !4101
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4101
  br label %173, !dbg !4101

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4101
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4101
  store ptr %172, ptr %4, align 8, !dbg !4101
  br label %173, !dbg !4101

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4101
  %176 = load ptr, ptr %175, align 8, !dbg !4101
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4107
  store ptr %176, ptr %177, align 8, !dbg !4104, !tbaa !855
  %178 = icmp eq ptr %176, null, !dbg !4105
  br i1 %178, label %197, label %179, !dbg !4106

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4095, metadata !DIExpression()), !dbg !4099
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4095, metadata !DIExpression()), !dbg !4099
  %180 = icmp sgt i32 %174, -1, !dbg !4101
  br i1 %180, label %188, label %181, !dbg !4101

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4101
  store i32 %182, ptr %7, align 8, !dbg !4101
  %183 = icmp ult i32 %174, -7, !dbg !4101
  br i1 %183, label %184, label %188, !dbg !4101

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4101
  %186 = sext i32 %174 to i64, !dbg !4101
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4101
  br label %191, !dbg !4101

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4101
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4101
  store ptr %190, ptr %4, align 8, !dbg !4101
  br label %191, !dbg !4101

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4101
  %193 = load ptr, ptr %192, align 8, !dbg !4101
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4107
  store ptr %193, ptr %194, align 8, !dbg !4104, !tbaa !855
  %195 = icmp eq ptr %193, null, !dbg !4105
  %196 = select i1 %195, i64 9, i64 10, !dbg !4106
  br label %197, !dbg !4106

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4108
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4109
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !4110
  ret void, !dbg !4110
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #12 !dbg !4111 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !4120
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4119, metadata !DIExpression(), metadata !4120, metadata ptr %5, metadata !DIExpression()), !dbg !4121
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4115, metadata !DIExpression()), !dbg !4121
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4116, metadata !DIExpression()), !dbg !4121
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4117, metadata !DIExpression()), !dbg !4121
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4118, metadata !DIExpression()), !dbg !4121
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !4122
  call void @llvm.va_start(ptr nonnull %5), !dbg !4123
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !4124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4124, !tbaa.struct !1687
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4124
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !4124
  call void @llvm.va_end(ptr nonnull %5), !dbg !4125
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !4126
  ret void, !dbg !4126
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !4127 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4128, !tbaa !855
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.103, ptr noundef %1), !dbg !4128
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.17.120, i32 noundef 5) #40, !dbg !4129
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.121) #40, !dbg !4129
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.19.122, i32 noundef 5) #40, !dbg !4130
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.123, ptr noundef nonnull @.str.21.124) #40, !dbg !4130
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !4131
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #40, !dbg !4131
  ret void, !dbg !4132
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4133 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4138, metadata !DIExpression()), !dbg !4141
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4139, metadata !DIExpression()), !dbg !4141
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4140, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata ptr %0, metadata !4142, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i64 %1, metadata !4145, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i64 %2, metadata !4146, metadata !DIExpression()), !dbg !4147
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4149
  call void @llvm.dbg.value(metadata ptr %4, metadata !4150, metadata !DIExpression()), !dbg !4155
  %5 = icmp eq ptr %4, null, !dbg !4157
  br i1 %5, label %6, label %7, !dbg !4159

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4160
  unreachable, !dbg !4160

7:                                                ; preds = %3
  ret ptr %4, !dbg !4161
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4143 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4142, metadata !DIExpression()), !dbg !4162
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4145, metadata !DIExpression()), !dbg !4162
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4146, metadata !DIExpression()), !dbg !4162
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4163
  call void @llvm.dbg.value(metadata ptr %4, metadata !4150, metadata !DIExpression()), !dbg !4164
  %5 = icmp eq ptr %4, null, !dbg !4166
  br i1 %5, label %6, label %7, !dbg !4167

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4168
  unreachable, !dbg !4168

7:                                                ; preds = %3
  ret ptr %4, !dbg !4169
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4170 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4174, metadata !DIExpression()), !dbg !4175
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4176
  call void @llvm.dbg.value(metadata ptr %2, metadata !4150, metadata !DIExpression()), !dbg !4177
  %3 = icmp eq ptr %2, null, !dbg !4179
  br i1 %3, label %4, label %5, !dbg !4180

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4181
  unreachable, !dbg !4181

5:                                                ; preds = %1
  ret ptr %2, !dbg !4182
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4183 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4184 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4188, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i64 %0, metadata !4190, metadata !DIExpression()), !dbg !4194
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4196
  call void @llvm.dbg.value(metadata ptr %2, metadata !4150, metadata !DIExpression()), !dbg !4197
  %3 = icmp eq ptr %2, null, !dbg !4199
  br i1 %3, label %4, label %5, !dbg !4200

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4201
  unreachable, !dbg !4201

5:                                                ; preds = %1
  ret ptr %2, !dbg !4202
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4203 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4207, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata i64 %0, metadata !4174, metadata !DIExpression()), !dbg !4209
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4211
  call void @llvm.dbg.value(metadata ptr %2, metadata !4150, metadata !DIExpression()), !dbg !4212
  %3 = icmp eq ptr %2, null, !dbg !4214
  br i1 %3, label %4, label %5, !dbg !4215

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4216
  unreachable, !dbg !4216

5:                                                ; preds = %1
  ret ptr %2, !dbg !4217
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4218 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4222, metadata !DIExpression()), !dbg !4224
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4223, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata ptr %0, metadata !4225, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i64 %1, metadata !4229, metadata !DIExpression()), !dbg !4230
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4232
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4233
  call void @llvm.dbg.value(metadata ptr %4, metadata !4150, metadata !DIExpression()), !dbg !4234
  %5 = icmp eq ptr %4, null, !dbg !4236
  br i1 %5, label %6, label %7, !dbg !4237

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4238
  unreachable, !dbg !4238

7:                                                ; preds = %2
  ret ptr %4, !dbg !4239
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4240 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4241 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4245, metadata !DIExpression()), !dbg !4247
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4246, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata ptr %0, metadata !4248, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i64 %1, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata ptr %0, metadata !4225, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %1, metadata !4229, metadata !DIExpression()), !dbg !4254
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4256
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4257
  call void @llvm.dbg.value(metadata ptr %4, metadata !4150, metadata !DIExpression()), !dbg !4258
  %5 = icmp eq ptr %4, null, !dbg !4260
  br i1 %5, label %6, label %7, !dbg !4261

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4262
  unreachable, !dbg !4262

7:                                                ; preds = %2
  ret ptr %4, !dbg !4263
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4264 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4268, metadata !DIExpression()), !dbg !4271
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4269, metadata !DIExpression()), !dbg !4271
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4270, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata ptr %0, metadata !4272, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i64 %1, metadata !4275, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i64 %2, metadata !4276, metadata !DIExpression()), !dbg !4277
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4279
  call void @llvm.dbg.value(metadata ptr %4, metadata !4150, metadata !DIExpression()), !dbg !4280
  %5 = icmp eq ptr %4, null, !dbg !4282
  br i1 %5, label %6, label %7, !dbg !4283

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4284
  unreachable, !dbg !4284

7:                                                ; preds = %3
  ret ptr %4, !dbg !4285
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4286 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4290, metadata !DIExpression()), !dbg !4292
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4291, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata ptr null, metadata !4142, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i64 %0, metadata !4145, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i64 %1, metadata !4146, metadata !DIExpression()), !dbg !4293
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4295
  call void @llvm.dbg.value(metadata ptr %3, metadata !4150, metadata !DIExpression()), !dbg !4296
  %4 = icmp eq ptr %3, null, !dbg !4298
  br i1 %4, label %5, label %6, !dbg !4299

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4300
  unreachable, !dbg !4300

6:                                                ; preds = %2
  ret ptr %3, !dbg !4301
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4302 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4306, metadata !DIExpression()), !dbg !4308
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4307, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata ptr null, metadata !4268, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata i64 %0, metadata !4269, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata i64 %1, metadata !4270, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata ptr null, metadata !4272, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %0, metadata !4275, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %1, metadata !4276, metadata !DIExpression()), !dbg !4311
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4313
  call void @llvm.dbg.value(metadata ptr %3, metadata !4150, metadata !DIExpression()), !dbg !4314
  %4 = icmp eq ptr %3, null, !dbg !4316
  br i1 %4, label %5, label %6, !dbg !4317

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4318
  unreachable, !dbg !4318

6:                                                ; preds = %2
  ret ptr %3, !dbg !4319
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #12 !dbg !4320 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4324, metadata !DIExpression()), !dbg !4326
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4325, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata ptr %0, metadata !797, metadata !DIExpression()), !dbg !4327
  call void @llvm.dbg.value(metadata ptr %1, metadata !798, metadata !DIExpression()), !dbg !4327
  call void @llvm.dbg.value(metadata i64 1, metadata !799, metadata !DIExpression()), !dbg !4327
  %3 = load i64, ptr %1, align 8, !dbg !4329, !tbaa !1417
  call void @llvm.dbg.value(metadata i64 %3, metadata !800, metadata !DIExpression()), !dbg !4327
  %4 = icmp eq ptr %0, null, !dbg !4330
  br i1 %4, label %5, label %8, !dbg !4332

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4333
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4336
  br label %15, !dbg !4336

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4337
  %10 = add nuw i64 %9, 1, !dbg !4337
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4337
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4337
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4337
  call void @llvm.dbg.value(metadata i64 %13, metadata !800, metadata !DIExpression()), !dbg !4327
  br i1 %12, label %14, label %15, !dbg !4340

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4341
  unreachable, !dbg !4341

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4327
  call void @llvm.dbg.value(metadata i64 %16, metadata !800, metadata !DIExpression()), !dbg !4327
  call void @llvm.dbg.value(metadata ptr %0, metadata !4142, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i64 %16, metadata !4145, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i64 1, metadata !4146, metadata !DIExpression()), !dbg !4342
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4344
  call void @llvm.dbg.value(metadata ptr %17, metadata !4150, metadata !DIExpression()), !dbg !4345
  %18 = icmp eq ptr %17, null, !dbg !4347
  br i1 %18, label %19, label %20, !dbg !4348

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4349
  unreachable, !dbg !4349

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !797, metadata !DIExpression()), !dbg !4327
  store i64 %16, ptr %1, align 8, !dbg !4350, !tbaa !1417
  ret ptr %17, !dbg !4351
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !792 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !797, metadata !DIExpression()), !dbg !4352
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !798, metadata !DIExpression()), !dbg !4352
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !799, metadata !DIExpression()), !dbg !4352
  %4 = load i64, ptr %1, align 8, !dbg !4353, !tbaa !1417
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !800, metadata !DIExpression()), !dbg !4352
  %5 = icmp eq ptr %0, null, !dbg !4354
  br i1 %5, label %6, label %13, !dbg !4355

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4356
  br i1 %7, label %8, label %20, !dbg !4357

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4358
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !800, metadata !DIExpression()), !dbg !4352
  %10 = icmp ugt i64 %2, 128, !dbg !4360
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4361
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !800, metadata !DIExpression()), !dbg !4352
  br label %20, !dbg !4362

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4363
  %15 = add nuw i64 %14, 1, !dbg !4363
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4363
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4363
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4363
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !800, metadata !DIExpression()), !dbg !4352
  br i1 %17, label %19, label %20, !dbg !4364

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4365
  unreachable, !dbg !4365

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4352
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !800, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata ptr %0, metadata !4142, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i64 %21, metadata !4145, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i64 %2, metadata !4146, metadata !DIExpression()), !dbg !4366
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4368
  call void @llvm.dbg.value(metadata ptr %22, metadata !4150, metadata !DIExpression()), !dbg !4369
  %23 = icmp eq ptr %22, null, !dbg !4371
  br i1 %23, label %24, label %25, !dbg !4372

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4373
  unreachable, !dbg !4373

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !797, metadata !DIExpression()), !dbg !4352
  store i64 %21, ptr %1, align 8, !dbg !4374, !tbaa !1417
  ret ptr %22, !dbg !4375
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !804 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !813, metadata !DIExpression()), !dbg !4376
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !814, metadata !DIExpression()), !dbg !4376
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !815, metadata !DIExpression()), !dbg !4376
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !816, metadata !DIExpression()), !dbg !4376
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !817, metadata !DIExpression()), !dbg !4376
  %6 = load i64, ptr %1, align 8, !dbg !4377, !tbaa !1417
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !818, metadata !DIExpression()), !dbg !4376
  %7 = ashr i64 %6, 1, !dbg !4378
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4378
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4378
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4378
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !819, metadata !DIExpression()), !dbg !4376
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4380
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !819, metadata !DIExpression()), !dbg !4376
  %12 = icmp sgt i64 %3, -1, !dbg !4381
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4383
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4383
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !819, metadata !DIExpression()), !dbg !4376
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4384
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4384
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4384
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !820, metadata !DIExpression()), !dbg !4376
  %18 = icmp slt i64 %17, 128, !dbg !4384
  %19 = select i1 %18, i64 128, i64 0, !dbg !4384
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4384
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !821, metadata !DIExpression()), !dbg !4376
  %21 = icmp eq i64 %20, 0, !dbg !4385
  br i1 %21, label %28, label %22, !dbg !4387

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !4388
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !819, metadata !DIExpression()), !dbg !4376
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !4390
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !820, metadata !DIExpression()), !dbg !4376
  br label %28, !dbg !4391

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !4376
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !4376
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !820, metadata !DIExpression()), !dbg !4376
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !819, metadata !DIExpression()), !dbg !4376
  %31 = icmp eq ptr %0, null, !dbg !4392
  br i1 %31, label %32, label %33, !dbg !4394

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !4395, !tbaa !1417
  br label %33, !dbg !4396

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !4397
  %35 = icmp slt i64 %34, %2, !dbg !4399
  br i1 %35, label %36, label %48, !dbg !4400

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4401
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !4401
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !4401
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !819, metadata !DIExpression()), !dbg !4376
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !4402
  br i1 %42, label %47, label %43, !dbg !4402

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !4403
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !4403
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !4403
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !820, metadata !DIExpression()), !dbg !4376
  br i1 %45, label %47, label %48, !dbg !4404

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #42, !dbg !4405
  unreachable, !dbg !4405

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !4376
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !4376
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !820, metadata !DIExpression()), !dbg !4376
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !819, metadata !DIExpression()), !dbg !4376
  call void @llvm.dbg.value(metadata ptr %0, metadata !4222, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i64 %50, metadata !4223, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata ptr %0, metadata !4225, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64 %50, metadata !4229, metadata !DIExpression()), !dbg !4408
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !4410
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #47, !dbg !4411
  call void @llvm.dbg.value(metadata ptr %52, metadata !4150, metadata !DIExpression()), !dbg !4412
  %53 = icmp eq ptr %52, null, !dbg !4414
  br i1 %53, label %54, label %55, !dbg !4415

54:                                               ; preds = %48
  tail call void @xalloc_die() #42, !dbg !4416
  unreachable, !dbg !4416

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !813, metadata !DIExpression()), !dbg !4376
  store i64 %49, ptr %1, align 8, !dbg !4417, !tbaa !1417
  ret ptr %52, !dbg !4418
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4419 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4421, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64 %0, metadata !4423, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64 1, metadata !4426, metadata !DIExpression()), !dbg !4427
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4429
  call void @llvm.dbg.value(metadata ptr %2, metadata !4150, metadata !DIExpression()), !dbg !4430
  %3 = icmp eq ptr %2, null, !dbg !4432
  br i1 %3, label %4, label %5, !dbg !4433

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4434
  unreachable, !dbg !4434

5:                                                ; preds = %1
  ret ptr %2, !dbg !4435
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4436 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4424 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4423, metadata !DIExpression()), !dbg !4437
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4426, metadata !DIExpression()), !dbg !4437
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4438
  call void @llvm.dbg.value(metadata ptr %3, metadata !4150, metadata !DIExpression()), !dbg !4439
  %4 = icmp eq ptr %3, null, !dbg !4441
  br i1 %4, label %5, label %6, !dbg !4442

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4443
  unreachable, !dbg !4443

6:                                                ; preds = %2
  ret ptr %3, !dbg !4444
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4445 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4447, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata i64 %0, metadata !4449, metadata !DIExpression()), !dbg !4453
  call void @llvm.dbg.value(metadata i64 1, metadata !4452, metadata !DIExpression()), !dbg !4453
  call void @llvm.dbg.value(metadata i64 %0, metadata !4455, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i64 1, metadata !4458, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i64 %0, metadata !4455, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i64 1, metadata !4458, metadata !DIExpression()), !dbg !4459
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4461
  call void @llvm.dbg.value(metadata ptr %2, metadata !4150, metadata !DIExpression()), !dbg !4462
  %3 = icmp eq ptr %2, null, !dbg !4464
  br i1 %3, label %4, label %5, !dbg !4465

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4466
  unreachable, !dbg !4466

5:                                                ; preds = %1
  ret ptr %2, !dbg !4467
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4450 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4449, metadata !DIExpression()), !dbg !4468
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4452, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i64 %0, metadata !4455, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i64 %1, metadata !4458, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i64 %0, metadata !4455, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i64 %1, metadata !4458, metadata !DIExpression()), !dbg !4469
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4471
  call void @llvm.dbg.value(metadata ptr %3, metadata !4150, metadata !DIExpression()), !dbg !4472
  %4 = icmp eq ptr %3, null, !dbg !4474
  br i1 %4, label %5, label %6, !dbg !4475

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4476
  unreachable, !dbg !4476

6:                                                ; preds = %2
  ret ptr %3, !dbg !4477
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4478 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4482, metadata !DIExpression()), !dbg !4484
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4483, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i64 %1, metadata !4174, metadata !DIExpression()), !dbg !4485
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4487
  call void @llvm.dbg.value(metadata ptr %3, metadata !4150, metadata !DIExpression()), !dbg !4488
  %4 = icmp eq ptr %3, null, !dbg !4490
  br i1 %4, label %5, label %6, !dbg !4491

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4492
  unreachable, !dbg !4492

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4493, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata ptr %0, metadata !4496, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i64 %1, metadata !4497, metadata !DIExpression()), !dbg !4498
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4500
  ret ptr %3, !dbg !4501
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4502 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4506, metadata !DIExpression()), !dbg !4508
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4507, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i64 %1, metadata !4188, metadata !DIExpression()), !dbg !4509
  call void @llvm.dbg.value(metadata i64 %1, metadata !4190, metadata !DIExpression()), !dbg !4511
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4513
  call void @llvm.dbg.value(metadata ptr %3, metadata !4150, metadata !DIExpression()), !dbg !4514
  %4 = icmp eq ptr %3, null, !dbg !4516
  br i1 %4, label %5, label %6, !dbg !4517

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4518
  unreachable, !dbg !4518

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4493, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata ptr %0, metadata !4496, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata i64 %1, metadata !4497, metadata !DIExpression()), !dbg !4519
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4521
  ret ptr %3, !dbg !4522
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !4523 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4527, metadata !DIExpression()), !dbg !4530
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4528, metadata !DIExpression()), !dbg !4530
  %3 = add nsw i64 %1, 1, !dbg !4531
  call void @llvm.dbg.value(metadata i64 %3, metadata !4188, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i64 %3, metadata !4190, metadata !DIExpression()), !dbg !4534
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4536
  call void @llvm.dbg.value(metadata ptr %4, metadata !4150, metadata !DIExpression()), !dbg !4537
  %5 = icmp eq ptr %4, null, !dbg !4539
  br i1 %5, label %6, label %7, !dbg !4540

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4541
  unreachable, !dbg !4541

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4529, metadata !DIExpression()), !dbg !4530
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4542
  store i8 0, ptr %8, align 1, !dbg !4543, !tbaa !927
  call void @llvm.dbg.value(metadata ptr %4, metadata !4493, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.value(metadata ptr %0, metadata !4496, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.value(metadata i64 %1, metadata !4497, metadata !DIExpression()), !dbg !4544
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4546
  ret ptr %4, !dbg !4547
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !4548 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4550, metadata !DIExpression()), !dbg !4551
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4552
  %3 = add i64 %2, 1, !dbg !4553
  call void @llvm.dbg.value(metadata ptr %0, metadata !4482, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i64 %3, metadata !4483, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i64 %3, metadata !4174, metadata !DIExpression()), !dbg !4556
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4558
  call void @llvm.dbg.value(metadata ptr %4, metadata !4150, metadata !DIExpression()), !dbg !4559
  %5 = icmp eq ptr %4, null, !dbg !4561
  br i1 %5, label %6, label %7, !dbg !4562

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4563
  unreachable, !dbg !4563

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4493, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata ptr %0, metadata !4496, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i64 %3, metadata !4497, metadata !DIExpression()), !dbg !4564
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4566
  ret ptr %4, !dbg !4567
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4568 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4573, !tbaa !918
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4570, metadata !DIExpression()), !dbg !4574
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.145, ptr noundef nonnull @.str.2.146, i32 noundef 5) #40, !dbg !4573
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.147, ptr noundef %2) #40, !dbg !4573
  %3 = icmp eq i32 %1, 0, !dbg !4573
  tail call void @llvm.assume(i1 %3), !dbg !4573
  tail call void @abort() #42, !dbg !4575
  unreachable, !dbg !4575
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #37

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #12 !dbg !4576 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4614, metadata !DIExpression()), !dbg !4619
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !4620
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4615, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4619
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4621, metadata !DIExpression()), !dbg !4624
  %3 = load i32, ptr %0, align 8, !dbg !4626, !tbaa !1169
  %4 = and i32 %3, 32, !dbg !4627
  %5 = icmp eq i32 %4, 0, !dbg !4627
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4617, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4619
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !4628
  %7 = icmp eq i32 %6, 0, !dbg !4629
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4618, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4619
  br i1 %5, label %8, label %18, !dbg !4630

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4632
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4615, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4619
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4633
  %11 = xor i1 %7, true, !dbg !4633
  %12 = sext i1 %11 to i32, !dbg !4633
  br i1 %10, label %21, label %13, !dbg !4633

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !4634
  %15 = load i32, ptr %14, align 4, !dbg !4634, !tbaa !918
  %16 = icmp ne i32 %15, 9, !dbg !4635
  %17 = sext i1 %16 to i32, !dbg !4636
  br label %21, !dbg !4636

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4637

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !4639
  store i32 0, ptr %20, align 4, !dbg !4641, !tbaa !918
  br label %21, !dbg !4639

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4619
  ret i32 %22, !dbg !4642
}

; Function Attrs: nounwind
declare !dbg !4643 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #12 !dbg !4646 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4651, metadata !DIExpression()), !dbg !4656
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4652, metadata !DIExpression()), !dbg !4656
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4653, metadata !DIExpression()), !dbg !4656
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4654, metadata !DIExpression()), !dbg !4656
  %5 = icmp eq ptr %1, null, !dbg !4657
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4659
  %7 = select i1 %5, ptr @.str.152, ptr %1, !dbg !4659
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4659
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4653, metadata !DIExpression()), !dbg !4656
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4652, metadata !DIExpression()), !dbg !4656
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4651, metadata !DIExpression()), !dbg !4656
  %9 = icmp eq ptr %3, null, !dbg !4660
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4662
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4654, metadata !DIExpression()), !dbg !4656
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !4663
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4655, metadata !DIExpression()), !dbg !4656
  %12 = icmp ult i64 %11, -3, !dbg !4664
  br i1 %12, label %13, label %17, !dbg !4666

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !4667
  %15 = icmp eq i32 %14, 0, !dbg !4667
  br i1 %15, label %16, label %29, !dbg !4668

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4669, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata ptr %10, metadata !4676, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.value(metadata i32 0, metadata !4679, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.value(metadata i64 8, metadata !4680, metadata !DIExpression()), !dbg !4681
  store i64 0, ptr %10, align 1, !dbg !4683
  br label %29, !dbg !4684

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4685
  br i1 %18, label %19, label %20, !dbg !4687

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !4688
  unreachable, !dbg !4688

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4689

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #40, !dbg !4691
  br i1 %23, label %29, label %24, !dbg !4692

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4693
  br i1 %25, label %29, label %26, !dbg !4696

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4697, !tbaa !927
  %28 = zext i8 %27 to i32, !dbg !4698
  store i32 %28, ptr %6, align 4, !dbg !4699, !tbaa !918
  br label %29, !dbg !4700

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4656
  ret i64 %30, !dbg !4701
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4702 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !4708 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4710, metadata !DIExpression()), !dbg !4714
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4711, metadata !DIExpression()), !dbg !4714
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4712, metadata !DIExpression()), !dbg !4714
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4715
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4715
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4713, metadata !DIExpression()), !dbg !4714
  br i1 %5, label %6, label %8, !dbg !4717

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !4718
  store i32 12, ptr %7, align 4, !dbg !4720, !tbaa !918
  br label %12, !dbg !4721

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4715
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4713, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata ptr %0, metadata !4722, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata i64 %9, metadata !4725, metadata !DIExpression()), !dbg !4726
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4728
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #47, !dbg !4729
  br label %12, !dbg !4730

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4714
  ret ptr %13, !dbg !4731
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4732 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4739
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4735, metadata !DIExpression(), metadata !4739, metadata ptr %2, metadata !DIExpression()), !dbg !4740
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4734, metadata !DIExpression()), !dbg !4740
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !4741
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !4742
  %4 = icmp eq i32 %3, 0, !dbg !4742
  br i1 %4, label %5, label %12, !dbg !4744

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4745, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata ptr @.str.157, metadata !4748, metadata !DIExpression()), !dbg !4749
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.157, i64 2), !dbg !4752
  %7 = icmp eq i32 %6, 0, !dbg !4753
  br i1 %7, label %11, label %8, !dbg !4754

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4745, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata ptr @.str.1.158, metadata !4748, metadata !DIExpression()), !dbg !4755
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.158, i64 6), !dbg !4757
  %10 = icmp eq i32 %9, 0, !dbg !4758
  br i1 %10, label %11, label %12, !dbg !4759

11:                                               ; preds = %8, %5
  br label %12, !dbg !4760

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4740
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !4761
  ret i1 %13, !dbg !4761
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4762 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4766, metadata !DIExpression()), !dbg !4769
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4767, metadata !DIExpression()), !dbg !4769
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4768, metadata !DIExpression()), !dbg !4769
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !4770
  ret i32 %4, !dbg !4771
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4772 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4776, metadata !DIExpression()), !dbg !4777
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !4778
  ret ptr %2, !dbg !4779
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4780 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4782, metadata !DIExpression()), !dbg !4784
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4785
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4783, metadata !DIExpression()), !dbg !4784
  ret ptr %2, !dbg !4786
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4787 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4789, metadata !DIExpression()), !dbg !4796
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4790, metadata !DIExpression()), !dbg !4796
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4791, metadata !DIExpression()), !dbg !4796
  call void @llvm.dbg.value(metadata i32 %0, metadata !4782, metadata !DIExpression()), !dbg !4797
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4799
  call void @llvm.dbg.value(metadata ptr %4, metadata !4783, metadata !DIExpression()), !dbg !4797
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4792, metadata !DIExpression()), !dbg !4796
  %5 = icmp eq ptr %4, null, !dbg !4800
  br i1 %5, label %6, label %9, !dbg !4801

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4802
  br i1 %7, label %19, label %8, !dbg !4805

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4806, !tbaa !927
  br label %19, !dbg !4807

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !4808
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4793, metadata !DIExpression()), !dbg !4809
  %11 = icmp ult i64 %10, %2, !dbg !4810
  br i1 %11, label %12, label %14, !dbg !4812

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4813
  call void @llvm.dbg.value(metadata ptr %1, metadata !4815, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata ptr %4, metadata !4818, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i64 %13, metadata !4819, metadata !DIExpression()), !dbg !4820
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !4822
  br label %19, !dbg !4823

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4824
  br i1 %15, label %19, label %16, !dbg !4827

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4828
  call void @llvm.dbg.value(metadata ptr %1, metadata !4815, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata ptr %4, metadata !4818, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i64 %17, metadata !4819, metadata !DIExpression()), !dbg !4830
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !4832
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4833
  store i8 0, ptr %18, align 1, !dbg !4834, !tbaa !927
  br label %19, !dbg !4835

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4836
  ret i32 %20, !dbg !4837
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
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #26 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
attributes #49 = { nounwind allocsize(1,2) }

!llvm.dbg.cu = !{!55, !411, !415, !430, !724, !758, !763, !765, !768, !770, !772, !489, !503, !554, !774, !782, !716, !788, !823, !825, !740, !827, !829, !831, !833}
!llvm.ident = !{!835, !835, !835, !835, !835, !835, !835, !835, !835, !835, !835, !835, !835, !835, !835, !835, !835, !835, !835, !835, !835, !835, !835, !835, !835}
!llvm.module.flags = !{!836, !837, !838, !839, !840, !841, !842, !843}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/tsort.c", directory: "/src", checksumkind: CSK_MD5, checksum: "dfc4944a651c3ad1de6dfe7266a5508c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 800, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 100)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 2)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 6)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 50)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 62)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 535, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 1)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 536, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 10)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 536, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 24)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "long_options", scope: !49, file: !2, line: 543, type: !396, isLocal: true, isDefinition: true)
!49 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 531, type: !50, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !391)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !52, !53}
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!55 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/tsort.o -MD -MP -MF src/.deps/tsort.Tpo -c src/tsort.c -o src/.tsort.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !101, globals: !110, splitDebugInlining: false, nameTableKind: None)
!56 = !{!57, !62, !78, !92}
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !58, line: 337, baseType: !52, size: 32, elements: !59)
!58 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!59 = !{!60, !61}
!60 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!61 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !63, line: 46, baseType: !64, size: 32, elements: !65)
!63 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!64 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77}
!66 = !DIEnumerator(name: "_ISupper", value: 256)
!67 = !DIEnumerator(name: "_ISlower", value: 512)
!68 = !DIEnumerator(name: "_ISalpha", value: 1024)
!69 = !DIEnumerator(name: "_ISdigit", value: 2048)
!70 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!71 = !DIEnumerator(name: "_ISspace", value: 8192)
!72 = !DIEnumerator(name: "_ISprint", value: 16384)
!73 = !DIEnumerator(name: "_ISgraph", value: 32768)
!74 = !DIEnumerator(name: "_ISblank", value: 1)
!75 = !DIEnumerator(name: "_IScntrl", value: 2)
!76 = !DIEnumerator(name: "_ISpunct", value: 4)
!77 = !DIEnumerator(name: "_ISalnum", value: 8)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !79, line: 42, baseType: !64, size: 32, elements: !80)
!79 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!81 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!82 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!83 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!84 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!85 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!86 = !DIEnumerator(name: "c_quoting_style", value: 5)
!87 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!88 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!89 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!90 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!91 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !93, line: 44, baseType: !64, size: 32, elements: !94)
!93 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!94 = !{!95, !96, !97, !98, !99, !100}
!95 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!96 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!97 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!98 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!99 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!100 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!101 = !{!102, !54, !52, !103, !104, !107, !109}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!103 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 18, baseType: !106)
!105 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!106 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!109 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!110 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !111, !116, !47, !121, !123, !128, !130, !135, !137, !142, !225, !227, !229, !234, !236, !238, !240, !242, !247, !249, !251, !253, !258, !260, !262, !264, !266, !268, !270, !272, !274, !279, !284, !289, !291, !293, !295, !297, !302, !307, !309, !311, !316, !321, !326, !331, !333, !335, !337, !342, !344, !349, !354, !356, !358, !360, !365, !367, !369, !387, !389}
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 545, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 5)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 546, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 8)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 549, type: !14, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 561, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 14)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 561, type: !125, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !2, line: 570, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 17)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 574, type: !14, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !58, line: 729, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 56)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !144, file: !58, line: 575, type: !52, isLocal: true, isDefinition: true)
!144 = distinct !DISubprogram(name: "oputs_", scope: !58, file: !58, line: 573, type: !145, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !147)
!145 = !DISubroutineType(cc: DW_CC_nocall, types: !146)
!146 = !{null, !107, !107}
!147 = !{!148, !149, !150, !153, !155, !156, !157, !161, !162, !163, !164, !166, !219, !220, !221, !223, !224}
!148 = !DILocalVariable(name: "program", arg: 1, scope: !144, file: !58, line: 573, type: !107)
!149 = !DILocalVariable(name: "option", arg: 2, scope: !144, file: !58, line: 573, type: !107)
!150 = !DILocalVariable(name: "term", scope: !151, file: !58, line: 585, type: !107)
!151 = distinct !DILexicalBlock(scope: !152, file: !58, line: 582, column: 5)
!152 = distinct !DILexicalBlock(scope: !144, file: !58, line: 581, column: 7)
!153 = !DILocalVariable(name: "double_space", scope: !144, file: !58, line: 594, type: !154)
!154 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!155 = !DILocalVariable(name: "first_word", scope: !144, file: !58, line: 595, type: !107)
!156 = !DILocalVariable(name: "option_text", scope: !144, file: !58, line: 596, type: !107)
!157 = !DILocalVariable(name: "s", scope: !158, file: !58, line: 608, type: !107)
!158 = distinct !DILexicalBlock(scope: !159, file: !58, line: 605, column: 5)
!159 = distinct !DILexicalBlock(scope: !160, file: !58, line: 604, column: 12)
!160 = distinct !DILexicalBlock(scope: !144, file: !58, line: 597, column: 7)
!161 = !DILocalVariable(name: "spaces", scope: !158, file: !58, line: 609, type: !104)
!162 = !DILocalVariable(name: "anchor_len", scope: !144, file: !58, line: 620, type: !104)
!163 = !DILocalVariable(name: "desc_text", scope: !144, file: !58, line: 625, type: !107)
!164 = !DILocalVariable(name: "__ptr", scope: !165, file: !58, line: 644, type: !107)
!165 = distinct !DILexicalBlock(scope: !144, file: !58, line: 644, column: 3)
!166 = !DILocalVariable(name: "__stream", scope: !165, file: !58, line: 644, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !170)
!169 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !172)
!171 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !188, !190, !191, !192, !196, !197, !199, !200, !203, !205, !208, !211, !212, !213, !214, !215}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !170, file: !171, line: 51, baseType: !52, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !170, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !170, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !170, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !170, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !170, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !170, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !170, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !170, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !170, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !170, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !170, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !170, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !171, line: 36, flags: DIFlagFwdDecl)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !170, file: !171, line: 70, baseType: !189, size: 64, offset: 832)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !170, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !170, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !170, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !194, line: 152, baseType: !195)
!194 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!195 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !170, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !170, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!198 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !170, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !170, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !171, line: 43, baseType: null)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !170, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !194, line: 153, baseType: !195)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !170, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !171, line: 37, flags: DIFlagFwdDecl)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !170, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !171, line: 38, flags: DIFlagFwdDecl)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !170, file: !171, line: 93, baseType: !189, size: 64, offset: 1344)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !170, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !170, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !170, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !170, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 20)
!219 = !DILocalVariable(name: "__cnt", scope: !165, file: !58, line: 644, type: !104)
!220 = !DILocalVariable(name: "url_program", scope: !144, file: !58, line: 648, type: !107)
!221 = !DILocalVariable(name: "__ptr", scope: !222, file: !58, line: 686, type: !107)
!222 = distinct !DILexicalBlock(scope: !144, file: !58, line: 686, column: 3)
!223 = !DILocalVariable(name: "__stream", scope: !222, file: !58, line: 686, type: !167)
!224 = !DILocalVariable(name: "__cnt", scope: !222, file: !58, line: 686, type: !104)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !58, line: 585, type: !113, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !58, line: 586, type: !113, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !58, line: 595, type: !231, isLocal: true, isDefinition: true)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 4)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !58, line: 620, type: !19, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !58, line: 648, type: !14, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !58, line: 648, type: !113, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !58, line: 649, type: !231, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !58, line: 649, type: !244, isLocal: true, isDefinition: true)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 3)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !58, line: 650, type: !113, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !58, line: 651, type: !19, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !58, line: 651, type: !19, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !58, line: 652, type: !255, isLocal: true, isDefinition: true)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 7)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !58, line: 653, type: !118, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !58, line: 654, type: !39, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !58, line: 655, type: !39, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !58, line: 656, type: !39, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !58, line: 657, type: !39, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !58, line: 663, type: !255, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !58, line: 664, type: !39, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !58, line: 669, type: !132, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !58, line: 669, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 40)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !58, line: 676, type: !281, isLocal: true, isDefinition: true)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 15)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !58, line: 676, type: !286, isLocal: true, isDefinition: true)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 61)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !58, line: 679, type: !244, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !58, line: 683, type: !113, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !58, line: 688, type: !113, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !58, line: 691, type: !118, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !58, line: 839, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 16)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !58, line: 840, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 22)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !58, line: 841, type: !281, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !58, line: 862, type: !231, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !58, line: 868, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 71)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !58, line: 875, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 27)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !58, line: 877, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 51)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !58, line: 877, type: !328, isLocal: true, isDefinition: true)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 12)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !2, line: 440, type: !14, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !2, line: 441, type: !244, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !2, line: 454, type: !281, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !2, line: 458, type: !339, isLocal: true, isDefinition: true)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 9)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !2, line: 458, type: !328, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !2, line: 458, type: !346, isLocal: true, isDefinition: true)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 200, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 25)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !2, line: 472, type: !351, isLocal: true, isDefinition: true)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 43)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !2, line: 513, type: !318, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !2, line: 524, type: !281, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !2, line: 166, type: !19, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !2, line: 166, type: !362, isLocal: true, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 432, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 54)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !118, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "n_strings", scope: !55, file: !2, line: 72, type: !104, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "head", scope: !55, file: !2, line: 63, type: !371, isLocal: true, isDefinition: true)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "item", file: !2, line: 51, size: 448, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !372, file: !2, line: 53, baseType: !107, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !372, file: !2, line: 54, baseType: !371, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !372, file: !2, line: 54, baseType: !371, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "balance", scope: !372, file: !2, line: 55, baseType: !198, size: 8, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !372, file: !2, line: 56, baseType: !154, size: 8, offset: 200)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !372, file: !2, line: 57, baseType: !104, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "qlink", scope: !372, file: !2, line: 58, baseType: !371, size: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !372, file: !2, line: 59, baseType: !382, size: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "successor", file: !2, line: 44, size: 128, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "suc", scope: !383, file: !2, line: 46, baseType: !371, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !383, file: !2, line: 47, baseType: !382, size: 64, offset: 64)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "zeros", scope: !55, file: !2, line: 66, type: !371, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "loop", scope: !55, file: !2, line: 69, type: !371, isLocal: true, isDefinition: true)
!391 = !{!392, !393, !394}
!392 = !DILocalVariable(name: "argc", arg: 1, scope: !49, file: !2, line: 531, type: !52)
!393 = !DILocalVariable(name: "argv", arg: 2, scope: !49, file: !2, line: 531, type: !53)
!394 = !DILocalVariable(name: "c", scope: !395, file: !2, line: 549, type: !52)
!395 = distinct !DILexicalBlock(scope: !49, file: !2, line: 542, column: 5)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 768, elements: !245)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !399, line: 50, size: 256, elements: !400)
!399 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!400 = !{!401, !402, !403, !405}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !398, file: !399, line: 52, baseType: !107, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !398, file: !399, line: 55, baseType: !52, size: 32, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !398, file: !399, line: 56, baseType: !404, size: 64, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !398, file: !399, line: 57, baseType: !52, size: 32, offset: 192)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !408, line: 3, type: !281, isLocal: true, isDefinition: true)
!408 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(name: "Version", scope: !411, file: !408, line: 3, type: !107, isLocal: false, isDefinition: true)
!411 = distinct !DICompileUnit(language: DW_LANG_C11, file: !408, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !412, splitDebugInlining: false, nameTableKind: None)
!412 = !{!406, !409}
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(name: "file_name", scope: !415, file: !416, line: 45, type: !107, isLocal: true, isDefinition: true)
!415 = distinct !DICompileUnit(language: DW_LANG_C11, file: !416, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !417, splitDebugInlining: false, nameTableKind: None)
!416 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!417 = !{!418, !420, !422, !424, !413, !426}
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !416, line: 121, type: !255, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !416, line: 121, type: !328, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !416, line: 123, type: !255, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !416, line: 126, type: !244, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !415, file: !416, line: 55, type: !154, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !430, file: !431, line: 66, type: !481, isLocal: false, isDefinition: true)
!430 = distinct !DICompileUnit(language: DW_LANG_C11, file: !431, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !432, globals: !433, splitDebugInlining: false, nameTableKind: None)
!431 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!432 = !{!102, !109}
!433 = !{!434, !436, !460, !462, !464, !466, !428, !468, !470, !472, !474, !479}
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !431, line: 272, type: !113, isLocal: true, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(name: "old_file_name", scope: !438, file: !431, line: 304, type: !107, isLocal: true, isDefinition: true)
!438 = distinct !DISubprogram(name: "verror_at_line", scope: !431, file: !431, line: 298, type: !439, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !453)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !52, !52, !107, !64, !107, !441}
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !442, line: 52, baseType: !443)
!442 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !444, line: 12, baseType: !445)
!444 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !431, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !447)
!447 = !{!448, !449, !450, !451, !452}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !446, file: !431, baseType: !102, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !446, file: !431, baseType: !102, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !446, file: !431, baseType: !102, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !446, file: !431, baseType: !52, size: 32, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !446, file: !431, baseType: !52, size: 32, offset: 224)
!453 = !{!454, !455, !456, !457, !458, !459}
!454 = !DILocalVariable(name: "status", arg: 1, scope: !438, file: !431, line: 298, type: !52)
!455 = !DILocalVariable(name: "errnum", arg: 2, scope: !438, file: !431, line: 298, type: !52)
!456 = !DILocalVariable(name: "file_name", arg: 3, scope: !438, file: !431, line: 298, type: !107)
!457 = !DILocalVariable(name: "line_number", arg: 4, scope: !438, file: !431, line: 298, type: !64)
!458 = !DILocalVariable(name: "message", arg: 5, scope: !438, file: !431, line: 298, type: !107)
!459 = !DILocalVariable(name: "args", arg: 6, scope: !438, file: !431, line: 298, type: !441)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(name: "old_line_number", scope: !438, file: !431, line: 305, type: !64, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !431, line: 338, type: !231, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !431, line: 346, type: !118, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !431, line: 346, type: !14, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "error_message_count", scope: !430, file: !431, line: 69, type: !64, isLocal: false, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !430, file: !431, line: 295, type: !52, isLocal: false, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !431, line: 208, type: !255, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !431, line: 208, type: !476, isLocal: true, isDefinition: true)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 21)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !431, line: 214, type: !113, isLocal: true, isDefinition: true)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{null}
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !486, line: 40, type: !39, isLocal: true, isDefinition: true)
!486 = !DIFile(filename: "lib/freopen-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "380f3eea209580e07073525fbfd0dac5")
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(name: "program_name", scope: !489, file: !490, line: 31, type: !107, isLocal: false, isDefinition: true)
!489 = distinct !DICompileUnit(language: DW_LANG_C11, file: !490, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !491, globals: !492, splitDebugInlining: false, nameTableKind: None)
!490 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!491 = !{!102, !54}
!492 = !{!487, !493, !495}
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !490, line: 46, type: !118, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !490, line: 49, type: !231, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(name: "utf07FF", scope: !499, file: !500, line: 46, type: !527, isLocal: true, isDefinition: true)
!499 = distinct !DISubprogram(name: "proper_name_lite", scope: !500, file: !500, line: 38, type: !501, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !505)
!500 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!501 = !DISubroutineType(types: !502)
!502 = !{!107, !107, !107}
!503 = distinct !DICompileUnit(language: DW_LANG_C11, file: !500, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !504, splitDebugInlining: false, nameTableKind: None)
!504 = !{!497}
!505 = !{!506, !507, !508, !509, !514}
!506 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !499, file: !500, line: 38, type: !107)
!507 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !499, file: !500, line: 38, type: !107)
!508 = !DILocalVariable(name: "translation", scope: !499, file: !500, line: 40, type: !107)
!509 = !DILocalVariable(name: "w", scope: !499, file: !500, line: 47, type: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !511, line: 37, baseType: !512)
!511 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !194, line: 57, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !194, line: 42, baseType: !64)
!514 = !DILocalVariable(name: "mbs", scope: !499, file: !500, line: 48, type: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !516, line: 6, baseType: !517)
!516 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !518, line: 21, baseType: !519)
!518 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !518, line: 13, size: 64, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !519, file: !518, line: 15, baseType: !52, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !519, file: !518, line: 20, baseType: !523, size: 32, offset: 32)
!523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !518, line: 16, size: 32, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !523, file: !518, line: 18, baseType: !64, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !523, file: !518, line: 19, baseType: !231, size: 32)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 16, elements: !15)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !530, line: 78, type: !118, isLocal: true, isDefinition: true)
!530 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !530, line: 79, type: !19, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !530, line: 80, type: !535, isLocal: true, isDefinition: true)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 13)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !530, line: 81, type: !535, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !530, line: 82, type: !216, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !530, line: 83, type: !14, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !530, line: 84, type: !118, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !530, line: 85, type: !255, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !530, line: 86, type: !255, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !530, line: 87, type: !118, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !554, file: !530, line: 76, type: !628, isLocal: false, isDefinition: true)
!554 = distinct !DICompileUnit(language: DW_LANG_C11, file: !530, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !555, retainedTypes: !563, globals: !564, splitDebugInlining: false, nameTableKind: None)
!555 = !{!556, !558, !62}
!556 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !557, line: 42, baseType: !64, size: 32, elements: !80)
!557 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!558 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !557, line: 254, baseType: !64, size: 32, elements: !559)
!559 = !{!560, !561, !562}
!560 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!561 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!562 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!563 = !{!102, !52, !103, !104}
!564 = !{!528, !531, !533, !538, !540, !542, !544, !546, !548, !550, !552, !565, !569, !579, !581, !586, !588, !590, !592, !594, !617, !624, !626}
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !554, file: !530, line: 92, type: !567, isLocal: false, isDefinition: true)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !568, size: 320, elements: !40)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !554, file: !530, line: 1040, type: !571, isLocal: false, isDefinition: true)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !530, line: 56, size: 448, elements: !572)
!572 = !{!573, !574, !575, !577, !578}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !571, file: !530, line: 59, baseType: !556, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !571, file: !530, line: 62, baseType: !52, size: 32, offset: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !571, file: !530, line: 66, baseType: !576, size: 256, offset: 64)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 256, elements: !119)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !571, file: !530, line: 69, baseType: !107, size: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !571, file: !530, line: 72, baseType: !107, size: 64, offset: 384)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !554, file: !530, line: 107, type: !571, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(name: "slot0", scope: !554, file: !530, line: 831, type: !583, isLocal: true, isDefinition: true)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 256)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !530, line: 321, type: !14, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !530, line: 357, type: !14, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !530, line: 358, type: !14, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !530, line: 199, type: !255, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "quote", scope: !596, file: !530, line: 228, type: !615, isLocal: true, isDefinition: true)
!596 = distinct !DISubprogram(name: "gettext_quote", scope: !530, file: !530, line: 197, type: !597, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !599)
!597 = !DISubroutineType(types: !598)
!598 = !{!107, !107, !556}
!599 = !{!600, !601, !602, !603, !604}
!600 = !DILocalVariable(name: "msgid", arg: 1, scope: !596, file: !530, line: 197, type: !107)
!601 = !DILocalVariable(name: "s", arg: 2, scope: !596, file: !530, line: 197, type: !556)
!602 = !DILocalVariable(name: "translation", scope: !596, file: !530, line: 199, type: !107)
!603 = !DILocalVariable(name: "w", scope: !596, file: !530, line: 229, type: !510)
!604 = !DILocalVariable(name: "mbs", scope: !596, file: !530, line: 230, type: !605)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !516, line: 6, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !518, line: 21, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !518, line: 13, size: 64, elements: !608)
!608 = !{!609, !610}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !607, file: !518, line: 15, baseType: !52, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !607, file: !518, line: 20, baseType: !611, size: 32, offset: 32)
!611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !607, file: !518, line: 16, size: 32, elements: !612)
!612 = !{!613, !614}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !611, file: !518, line: 18, baseType: !64, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !611, file: !518, line: 19, baseType: !231, size: 32)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !616)
!616 = !{!16, !233}
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(name: "slotvec", scope: !554, file: !530, line: 834, type: !619, isLocal: true, isDefinition: true)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !530, line: 823, size: 128, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !620, file: !530, line: 825, baseType: !104, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !620, file: !530, line: 826, baseType: !54, size: 64, offset: 64)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(name: "nslots", scope: !554, file: !530, line: 832, type: !52, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(name: "slotvec0", scope: !554, file: !530, line: 833, type: !620, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 704, elements: !630)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!630 = !{!631}
!631 = !DISubrange(count: 11)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !634, line: 67, type: !328, isLocal: true, isDefinition: true)
!634 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !634, line: 69, type: !255, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !634, line: 83, type: !255, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !634, line: 83, type: !231, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !634, line: 85, type: !14, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !634, line: 88, type: !645, isLocal: true, isDefinition: true)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !646)
!646 = !{!647}
!647 = !DISubrange(count: 171)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !634, line: 88, type: !650, isLocal: true, isDefinition: true)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 34)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !634, line: 105, type: !299, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !634, line: 109, type: !657, isLocal: true, isDefinition: true)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 23)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !634, line: 113, type: !662, isLocal: true, isDefinition: true)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 28)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !634, line: 120, type: !667, isLocal: true, isDefinition: true)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 32)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !634, line: 127, type: !672, isLocal: true, isDefinition: true)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 36)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !634, line: 134, type: !276, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !634, line: 142, type: !679, isLocal: true, isDefinition: true)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !680)
!680 = !{!681}
!681 = !DISubrange(count: 44)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !634, line: 150, type: !684, isLocal: true, isDefinition: true)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 48)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !634, line: 159, type: !689, isLocal: true, isDefinition: true)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 52)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !634, line: 170, type: !694, isLocal: true, isDefinition: true)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 60)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !634, line: 248, type: !216, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !634, line: 248, type: !304, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !634, line: 254, type: !216, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !634, line: 254, type: !125, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !634, line: 254, type: !276, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !634, line: 259, type: !3, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !634, line: 259, type: !711, isLocal: true, isDefinition: true)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !712)
!712 = !{!713}
!713 = !DISubrange(count: 29)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !716, file: !717, line: 26, type: !719, isLocal: false, isDefinition: true)
!716 = distinct !DICompileUnit(language: DW_LANG_C11, file: !717, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !718, splitDebugInlining: false, nameTableKind: None)
!717 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!718 = !{!714}
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 376, elements: !720)
!720 = !{!721}
!721 = !DISubrange(count: 47)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(name: "exit_failure", scope: !724, file: !725, line: 24, type: !727, isLocal: false, isDefinition: true)
!724 = distinct !DICompileUnit(language: DW_LANG_C11, file: !725, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !726, splitDebugInlining: false, nameTableKind: None)
!725 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!726 = !{!722}
!727 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !52)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !730, line: 34, type: !244, isLocal: true, isDefinition: true)
!730 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !730, line: 34, type: !255, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !730, line: 34, type: !132, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !737, line: 108, type: !34, isLocal: true, isDefinition: true)
!737 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(name: "internal_state", scope: !740, file: !737, line: 97, type: !743, isLocal: true, isDefinition: true)
!740 = distinct !DICompileUnit(language: DW_LANG_C11, file: !737, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !741, globals: !742, splitDebugInlining: false, nameTableKind: None)
!741 = !{!102, !104, !109}
!742 = !{!735, !738}
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !516, line: 6, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !518, line: 21, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !518, line: 13, size: 64, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !745, file: !518, line: 15, baseType: !52, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !745, file: !518, line: 20, baseType: !749, size: 32, offset: 32)
!749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !745, file: !518, line: 16, size: 32, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !749, file: !518, line: 18, baseType: !64, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !749, file: !518, line: 19, baseType: !231, size: 32)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !755, line: 35, type: !14, isLocal: true, isDefinition: true)
!755 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !755, line: 35, type: !19, isLocal: true, isDefinition: true)
!758 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !760, splitDebugInlining: false, nameTableKind: None)
!759 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!760 = !{!761}
!761 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !762, line: 44, baseType: !64, size: 32, elements: !94)
!762 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!764 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !767, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!767 = !{!102}
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !486, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-freopen-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-freopen-safer.Tpo -c lib/freopen-safer.c -o lib/.libcoreutils_a-freopen-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !769, splitDebugInlining: false, nameTableKind: None)
!769 = !{!484}
!770 = distinct !DICompileUnit(language: DW_LANG_C11, file: !771, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !767, splitDebugInlining: false, nameTableKind: None)
!771 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!772 = distinct !DICompileUnit(language: DW_LANG_C11, file: !773, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!773 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-readtokens.o -MD -MP -MF lib/.deps/libcoreutils_a-readtokens.Tpo -c lib/readtokens.c -o lib/.libcoreutils_a-readtokens.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !776, retainedTypes: !780, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/readtokens.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bd27ae043f20cb5dd96b528a940c0bf9")
!776 = !{!777}
!777 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !775, line: 50, baseType: !64, size: 32, elements: !778)
!778 = !{!779}
!779 = !DIEnumerator(name: "bits_per_word", value: 64)
!780 = !{!104, !102, !781}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!782 = distinct !DICompileUnit(language: DW_LANG_C11, file: !634, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !783, retainedTypes: !767, globals: !787, splitDebugInlining: false, nameTableKind: None)
!783 = !{!784}
!784 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !634, line: 40, baseType: !64, size: 32, elements: !785)
!785 = !{!786}
!786 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!787 = !{!632, !635, !637, !639, !641, !643, !648, !653, !655, !660, !665, !670, !675, !677, !682, !687, !692, !697, !699, !701, !703, !705, !707, !709}
!788 = distinct !DICompileUnit(language: DW_LANG_C11, file: !789, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !790, retainedTypes: !822, splitDebugInlining: false, nameTableKind: None)
!789 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!790 = !{!791, !803}
!791 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !792, file: !789, line: 188, baseType: !64, size: 32, elements: !801)
!792 = distinct !DISubprogram(name: "x2nrealloc", scope: !789, file: !789, line: 176, type: !793, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !796)
!793 = !DISubroutineType(types: !794)
!794 = !{!102, !102, !795, !104}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!796 = !{!797, !798, !799, !800}
!797 = !DILocalVariable(name: "p", arg: 1, scope: !792, file: !789, line: 176, type: !102)
!798 = !DILocalVariable(name: "pn", arg: 2, scope: !792, file: !789, line: 176, type: !795)
!799 = !DILocalVariable(name: "s", arg: 3, scope: !792, file: !789, line: 176, type: !104)
!800 = !DILocalVariable(name: "n", scope: !792, file: !789, line: 178, type: !104)
!801 = !{!802}
!802 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!803 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !804, file: !789, line: 228, baseType: !64, size: 32, elements: !801)
!804 = distinct !DISubprogram(name: "xpalloc", scope: !789, file: !789, line: 223, type: !805, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !812)
!805 = !DISubroutineType(types: !806)
!806 = !{!102, !102, !807, !808, !810, !808}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !809, line: 130, baseType: !810)
!809 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !811, line: 18, baseType: !195)
!811 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!812 = !{!813, !814, !815, !816, !817, !818, !819, !820, !821}
!813 = !DILocalVariable(name: "pa", arg: 1, scope: !804, file: !789, line: 223, type: !102)
!814 = !DILocalVariable(name: "pn", arg: 2, scope: !804, file: !789, line: 223, type: !807)
!815 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !804, file: !789, line: 223, type: !808)
!816 = !DILocalVariable(name: "n_max", arg: 4, scope: !804, file: !789, line: 223, type: !810)
!817 = !DILocalVariable(name: "s", arg: 5, scope: !804, file: !789, line: 223, type: !808)
!818 = !DILocalVariable(name: "n0", scope: !804, file: !789, line: 230, type: !808)
!819 = !DILocalVariable(name: "n", scope: !804, file: !789, line: 237, type: !808)
!820 = !DILocalVariable(name: "nbytes", scope: !804, file: !789, line: 248, type: !808)
!821 = !DILocalVariable(name: "adjusted_nbytes", scope: !804, file: !789, line: 252, type: !808)
!822 = !{!54, !102}
!823 = distinct !DICompileUnit(language: DW_LANG_C11, file: !730, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !824, splitDebugInlining: false, nameTableKind: None)
!824 = !{!728, !731, !733}
!825 = distinct !DICompileUnit(language: DW_LANG_C11, file: !826, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!826 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!827 = distinct !DICompileUnit(language: DW_LANG_C11, file: !828, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !767, splitDebugInlining: false, nameTableKind: None)
!828 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!829 = distinct !DICompileUnit(language: DW_LANG_C11, file: !755, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !830, splitDebugInlining: false, nameTableKind: None)
!830 = !{!753, !756}
!831 = distinct !DICompileUnit(language: DW_LANG_C11, file: !832, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!832 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!833 = distinct !DICompileUnit(language: DW_LANG_C11, file: !834, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !767, splitDebugInlining: false, nameTableKind: None)
!834 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!835 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!836 = !{i32 7, !"Dwarf Version", i32 5}
!837 = !{i32 2, !"Debug Info Version", i32 3}
!838 = !{i32 1, !"wchar_size", i32 4}
!839 = !{i32 8, !"PIC Level", i32 2}
!840 = !{i32 7, !"PIE Level", i32 2}
!841 = !{i32 7, !"uwtable", i32 2}
!842 = !{i32 7, !"frame-pointer", i32 1}
!843 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!844 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 75, type: !845, scopeLine: 76, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !847)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !52}
!847 = !{!848}
!848 = !DILocalVariable(name: "status", arg: 1, scope: !844, file: !2, line: 75, type: !52)
!849 = !DILocation(line: 0, scope: !844)
!850 = !DILocation(line: 77, column: 14, scope: !851)
!851 = distinct !DILexicalBlock(scope: !844, file: !2, line: 77, column: 7)
!852 = !DILocation(line: 77, column: 7, scope: !844)
!853 = !DILocation(line: 78, column: 5, scope: !854)
!854 = distinct !DILexicalBlock(scope: !851, file: !2, line: 78, column: 5)
!855 = !{!856, !856, i64 0}
!856 = !{!"any pointer", !857, i64 0}
!857 = !{!"omnipotent char", !858, i64 0}
!858 = !{!"Simple C/C++ TBAA"}
!859 = !DILocation(line: 81, column: 7, scope: !860)
!860 = distinct !DILexicalBlock(scope: !851, file: !2, line: 80, column: 5)
!861 = !DILocation(line: 729, column: 3, scope: !862, inlinedAt: !863)
!862 = distinct !DISubprogram(name: "emit_stdin_note", scope: !58, file: !58, line: 727, type: !482, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55)
!863 = distinct !DILocation(line: 86, column: 7, scope: !860)
!864 = !DILocation(line: 88, column: 7, scope: !860)
!865 = !DILocation(line: 91, column: 7, scope: !860)
!866 = !DILocation(line: 92, column: 7, scope: !860)
!867 = !DILocalVariable(name: "program", arg: 1, scope: !868, file: !58, line: 836, type: !107)
!868 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !58, file: !58, line: 836, type: !869, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !871)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !107}
!871 = !{!867, !872, !879, !880, !882, !883}
!872 = !DILocalVariable(name: "infomap", scope: !868, file: !58, line: 838, type: !873)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !874, size: 896, elements: !256)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !875)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !868, file: !58, line: 838, size: 128, elements: !876)
!876 = !{!877, !878}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !875, file: !58, line: 838, baseType: !107, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !875, file: !58, line: 838, baseType: !107, size: 64, offset: 64)
!879 = !DILocalVariable(name: "node", scope: !868, file: !58, line: 848, type: !107)
!880 = !DILocalVariable(name: "map_prog", scope: !868, file: !58, line: 849, type: !881)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!882 = !DILocalVariable(name: "lc_messages", scope: !868, file: !58, line: 861, type: !107)
!883 = !DILocalVariable(name: "url_program", scope: !868, file: !58, line: 874, type: !107)
!884 = !DILocation(line: 0, scope: !868, inlinedAt: !885)
!885 = distinct !DILocation(line: 93, column: 7, scope: !860)
!886 = !{}
!887 = !DILocation(line: 857, column: 3, scope: !868, inlinedAt: !885)
!888 = !DILocation(line: 861, column: 29, scope: !868, inlinedAt: !885)
!889 = !DILocation(line: 862, column: 7, scope: !890, inlinedAt: !885)
!890 = distinct !DILexicalBlock(scope: !868, file: !58, line: 862, column: 7)
!891 = !DILocation(line: 862, column: 19, scope: !890, inlinedAt: !885)
!892 = !DILocation(line: 862, column: 22, scope: !890, inlinedAt: !885)
!893 = !DILocation(line: 862, column: 7, scope: !868, inlinedAt: !885)
!894 = !DILocation(line: 868, column: 7, scope: !895, inlinedAt: !885)
!895 = distinct !DILexicalBlock(scope: !890, file: !58, line: 863, column: 5)
!896 = !DILocation(line: 870, column: 5, scope: !895, inlinedAt: !885)
!897 = !DILocation(line: 875, column: 3, scope: !868, inlinedAt: !885)
!898 = !DILocation(line: 877, column: 3, scope: !868, inlinedAt: !885)
!899 = !DILocation(line: 96, column: 3, scope: !844)
!900 = !DISubprogram(name: "dcgettext", scope: !901, file: !901, line: 51, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!901 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!902 = !DISubroutineType(types: !903)
!903 = !{!54, !107, !107, !52}
!904 = !DISubprogram(name: "__fprintf_chk", scope: !905, file: !905, line: 93, type: !906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!905 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!906 = !DISubroutineType(types: !907)
!907 = !{!52, !908, !52, !909, null}
!908 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !167)
!909 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!910 = !DISubprogram(name: "__printf_chk", scope: !905, file: !905, line: 95, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!911 = !DISubroutineType(types: !912)
!912 = !{!52, !52, !909, null}
!913 = !DISubprogram(name: "fputs_unlocked", scope: !442, file: !442, line: 691, type: !914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!914 = !DISubroutineType(types: !915)
!915 = !{!52, !909, !908}
!916 = !DILocation(line: 0, scope: !144)
!917 = !DILocation(line: 581, column: 7, scope: !152)
!918 = !{!919, !919, i64 0}
!919 = !{!"int", !857, i64 0}
!920 = !DILocation(line: 581, column: 19, scope: !152)
!921 = !DILocation(line: 581, column: 7, scope: !144)
!922 = !DILocation(line: 585, column: 26, scope: !151)
!923 = !DILocation(line: 0, scope: !151)
!924 = !DILocation(line: 586, column: 23, scope: !151)
!925 = !DILocation(line: 586, column: 28, scope: !151)
!926 = !DILocation(line: 586, column: 32, scope: !151)
!927 = !{!857, !857, i64 0}
!928 = !DILocation(line: 586, column: 38, scope: !151)
!929 = !DILocalVariable(name: "__s1", arg: 1, scope: !930, file: !931, line: 1359, type: !107)
!930 = distinct !DISubprogram(name: "streq", scope: !931, file: !931, line: 1359, type: !932, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !934)
!931 = !DIFile(filename: "./lib/string.h", directory: "/src")
!932 = !DISubroutineType(types: !933)
!933 = !{!154, !107, !107}
!934 = !{!929, !935}
!935 = !DILocalVariable(name: "__s2", arg: 2, scope: !930, file: !931, line: 1359, type: !107)
!936 = !DILocation(line: 0, scope: !930, inlinedAt: !937)
!937 = distinct !DILocation(line: 586, column: 41, scope: !151)
!938 = !DILocation(line: 1361, column: 11, scope: !930, inlinedAt: !937)
!939 = !DILocation(line: 1361, column: 10, scope: !930, inlinedAt: !937)
!940 = !DILocation(line: 586, column: 19, scope: !151)
!941 = !DILocation(line: 587, column: 5, scope: !151)
!942 = !DILocation(line: 588, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !144, file: !58, line: 588, column: 7)
!944 = !DILocation(line: 588, column: 7, scope: !144)
!945 = !DILocation(line: 590, column: 7, scope: !946)
!946 = distinct !DILexicalBlock(scope: !943, file: !58, line: 589, column: 5)
!947 = !DILocation(line: 591, column: 7, scope: !946)
!948 = !DILocation(line: 595, column: 37, scope: !144)
!949 = !DILocation(line: 595, column: 35, scope: !144)
!950 = !DILocation(line: 596, column: 29, scope: !144)
!951 = !DILocation(line: 597, column: 8, scope: !160)
!952 = !DILocation(line: 597, column: 7, scope: !144)
!953 = !DILocation(line: 604, column: 24, scope: !159)
!954 = !DILocation(line: 604, column: 12, scope: !160)
!955 = !DILocation(line: 0, scope: !158)
!956 = !DILocation(line: 610, column: 16, scope: !158)
!957 = !DILocation(line: 610, column: 7, scope: !158)
!958 = !DILocation(line: 611, column: 21, scope: !158)
!959 = !{!960, !960, i64 0}
!960 = !{!"short", !857, i64 0}
!961 = !DILocation(line: 611, column: 19, scope: !158)
!962 = !DILocation(line: 611, column: 16, scope: !158)
!963 = !DILocation(line: 610, column: 30, scope: !158)
!964 = distinct !{!964, !957, !958, !965}
!965 = !{!"llvm.loop.mustprogress"}
!966 = !DILocation(line: 612, column: 18, scope: !967)
!967 = distinct !DILexicalBlock(scope: !158, file: !58, line: 612, column: 11)
!968 = !DILocation(line: 612, column: 11, scope: !158)
!969 = !DILocation(line: 620, column: 23, scope: !144)
!970 = !DILocation(line: 625, column: 39, scope: !144)
!971 = !DILocation(line: 626, column: 3, scope: !144)
!972 = !DILocation(line: 626, column: 10, scope: !144)
!973 = !DILocation(line: 626, column: 21, scope: !144)
!974 = !DILocation(line: 628, column: 44, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !58, line: 628, column: 11)
!976 = distinct !DILexicalBlock(scope: !144, file: !58, line: 627, column: 5)
!977 = !DILocation(line: 628, column: 32, scope: !975)
!978 = !DILocation(line: 628, column: 49, scope: !975)
!979 = !DILocation(line: 628, column: 11, scope: !976)
!980 = !DILocation(line: 630, column: 11, scope: !981)
!981 = distinct !DILexicalBlock(scope: !976, file: !58, line: 630, column: 11)
!982 = !DILocation(line: 630, column: 11, scope: !976)
!983 = !DILocation(line: 632, column: 26, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !58, line: 632, column: 15)
!985 = distinct !DILexicalBlock(scope: !981, file: !58, line: 631, column: 9)
!986 = !DILocation(line: 632, column: 34, scope: !984)
!987 = !DILocation(line: 632, column: 37, scope: !984)
!988 = !DILocation(line: 632, column: 15, scope: !985)
!989 = !DILocation(line: 640, column: 16, scope: !976)
!990 = distinct !{!990, !971, !991, !965}
!991 = !DILocation(line: 641, column: 5, scope: !144)
!992 = !DILocation(line: 644, column: 3, scope: !144)
!993 = !DILocation(line: 0, scope: !930, inlinedAt: !994)
!994 = distinct !DILocation(line: 648, column: 31, scope: !144)
!995 = !DILocation(line: 0, scope: !930, inlinedAt: !996)
!996 = distinct !DILocation(line: 649, column: 31, scope: !144)
!997 = !DILocation(line: 0, scope: !930, inlinedAt: !998)
!998 = distinct !DILocation(line: 650, column: 31, scope: !144)
!999 = !DILocation(line: 0, scope: !930, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 651, column: 31, scope: !144)
!1001 = !DILocation(line: 0, scope: !930, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 652, column: 31, scope: !144)
!1003 = !DILocation(line: 0, scope: !930, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 653, column: 31, scope: !144)
!1005 = !DILocation(line: 0, scope: !930, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 654, column: 31, scope: !144)
!1007 = !DILocation(line: 0, scope: !930, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 655, column: 31, scope: !144)
!1009 = !DILocation(line: 0, scope: !930, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 656, column: 31, scope: !144)
!1011 = !DILocation(line: 0, scope: !930, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 657, column: 31, scope: !144)
!1013 = !DILocation(line: 663, column: 7, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !144, file: !58, line: 663, column: 7)
!1015 = !DILocation(line: 664, column: 7, scope: !1014)
!1016 = !DILocation(line: 664, column: 10, scope: !1014)
!1017 = !DILocation(line: 663, column: 7, scope: !144)
!1018 = !DILocation(line: 669, column: 7, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1014, file: !58, line: 665, column: 5)
!1020 = !DILocation(line: 671, column: 5, scope: !1019)
!1021 = !DILocation(line: 676, column: 7, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1014, file: !58, line: 673, column: 5)
!1023 = !DILocation(line: 679, column: 3, scope: !144)
!1024 = !DILocation(line: 683, column: 3, scope: !144)
!1025 = !DILocation(line: 686, column: 3, scope: !144)
!1026 = !DILocation(line: 688, column: 3, scope: !144)
!1027 = !DILocation(line: 691, column: 3, scope: !144)
!1028 = !DILocation(line: 695, column: 3, scope: !144)
!1029 = !DILocation(line: 696, column: 1, scope: !144)
!1030 = !DISubprogram(name: "setlocale", scope: !1031, file: !1031, line: 122, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1031 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!54, !52, !107}
!1034 = !DISubprogram(name: "strncmp", scope: !1035, file: !1035, line: 159, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1035 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!52, !107, !107, !104}
!1038 = !DISubprogram(name: "exit", scope: !1039, file: !1039, line: 624, type: !845, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1039 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1040 = !DISubprogram(name: "getenv", scope: !1039, file: !1039, line: 641, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!54, !107}
!1043 = !DISubprogram(name: "strcmp", scope: !1035, file: !1035, line: 156, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!52, !107, !107}
!1046 = !DISubprogram(name: "strspn", scope: !1035, file: !1035, line: 297, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!106, !107, !107}
!1049 = !DISubprogram(name: "strchr", scope: !1035, file: !1035, line: 246, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!54, !107, !52}
!1052 = !DISubprogram(name: "__ctype_b_loc", scope: !63, file: !63, line: 79, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!1055}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1058 = !DISubprogram(name: "strcspn", scope: !1035, file: !1035, line: 293, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1059 = !DISubprogram(name: "fwrite_unlocked", scope: !442, file: !442, line: 704, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!104, !1062, !104, !104, !908}
!1062 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1063)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1065 = !DILocation(line: 0, scope: !49)
!1066 = !DILocation(line: 534, column: 21, scope: !49)
!1067 = !DILocation(line: 534, column: 3, scope: !49)
!1068 = !DILocation(line: 535, column: 3, scope: !49)
!1069 = !DILocation(line: 536, column: 3, scope: !49)
!1070 = !DILocation(line: 537, column: 3, scope: !49)
!1071 = !DILocation(line: 539, column: 3, scope: !49)
!1072 = !DILocation(line: 541, column: 3, scope: !49)
!1073 = !DILocation(line: 549, column: 15, scope: !395)
!1074 = !DILocation(line: 0, scope: !395)
!1075 = !DILocation(line: 551, column: 11, scope: !395)
!1076 = !DILocation(line: 559, column: 9, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !395, file: !2, line: 555, column: 9)
!1078 = !DILocation(line: 561, column: 9, scope: !1077)
!1079 = !DILocation(line: 564, column: 11, scope: !1077)
!1080 = !DILocation(line: 568, column: 18, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !49, file: !2, line: 568, column: 7)
!1082 = !DILocation(line: 568, column: 16, scope: !1081)
!1083 = !DILocation(line: 568, column: 9, scope: !1081)
!1084 = !DILocation(line: 568, column: 7, scope: !49)
!1085 = !DILocation(line: 570, column: 7, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 569, column: 5)
!1087 = !DILocation(line: 571, column: 7, scope: !1086)
!1088 = !DILocation(line: 574, column: 17, scope: !49)
!1089 = !DILocation(line: 574, column: 10, scope: !49)
!1090 = !DILocation(line: 574, column: 33, scope: !49)
!1091 = !DILocation(line: 574, column: 3, scope: !49)
!1092 = !DISubprogram(name: "bindtextdomain", scope: !901, file: !901, line: 86, type: !1093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!54, !107, !107}
!1095 = !DISubprogram(name: "textdomain", scope: !901, file: !901, line: 82, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1096 = !DISubprogram(name: "atexit", scope: !1039, file: !1039, line: 602, type: !1097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!52, !481}
!1099 = !DISubprogram(name: "getopt_long", scope: !399, file: !399, line: 66, type: !1100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!52, !52, !1102, !107, !1104, !404}
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!1105 = distinct !DISubprogram(name: "tsort", scope: !2, file: !2, line: 429, type: !869, scopeLine: 430, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1118, !1119, !1120, !1122}
!1107 = !DILocalVariable(name: "file", arg: 1, scope: !1105, file: !2, line: 429, type: !107)
!1108 = !DILocalVariable(name: "ok", scope: !1105, file: !2, line: 431, type: !154)
!1109 = !DILocalVariable(name: "j", scope: !1105, file: !2, line: 432, type: !371)
!1110 = !DILocalVariable(name: "k", scope: !1105, file: !2, line: 433, type: !371)
!1111 = !DILocalVariable(name: "tokenbuffer", scope: !1105, file: !2, line: 434, type: !1112)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !1113, line: 38, baseType: !1114)
!1113 = !DIFile(filename: "./lib/readtokens.h", directory: "/src", checksumkind: CSK_MD5, checksum: "75cc48641d199743577b153a0d1c82de")
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !1113, line: 33, size: 128, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1114, file: !1113, line: 35, baseType: !104, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1114, file: !1113, line: 36, baseType: !54, size: 64, offset: 64)
!1118 = !DILocalVariable(name: "is_stdin", scope: !1105, file: !2, line: 435, type: !154)
!1119 = !DILocalVariable(name: "root", scope: !1105, file: !2, line: 438, type: !371)
!1120 = !DILocalVariable(name: "len", scope: !1121, file: !2, line: 450, type: !104)
!1121 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 448, column: 5)
!1122 = !DILocalVariable(name: "p", scope: !1123, file: !2, line: 485, type: !382)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 484, column: 9)
!1124 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 479, column: 5)
!1125 = distinct !DIAssignID()
!1126 = !DILocation(line: 0, scope: !1105)
!1127 = !DILocation(line: 434, column: 3, scope: !1105)
!1128 = !DILocation(line: 0, scope: !930, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 435, column: 19, scope: !1105)
!1130 = !DILocation(line: 1361, column: 11, scope: !930, inlinedAt: !1129)
!1131 = !DILocation(line: 1361, column: 10, scope: !930, inlinedAt: !1129)
!1132 = !DILocalVariable(name: "str", arg: 1, scope: !1133, file: !2, line: 101, type: !107)
!1133 = distinct !DISubprogram(name: "new_item", scope: !2, file: !2, line: 101, type: !1134, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1136)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!371, !107}
!1136 = !{!1132, !1137}
!1137 = !DILocalVariable(name: "k", scope: !1133, file: !2, line: 104, type: !371)
!1138 = !DILocation(line: 0, scope: !1133, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 438, column: 23, scope: !1105)
!1140 = !DILocation(line: 104, column: 20, scope: !1133, inlinedAt: !1139)
!1141 = !DILocation(line: 440, column: 17, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 440, column: 7)
!1143 = !DILocation(line: 440, column: 42, scope: !1142)
!1144 = !DILocation(line: 440, column: 22, scope: !1142)
!1145 = !DILocation(line: 440, column: 7, scope: !1105)
!1146 = !DILocation(line: 441, column: 5, scope: !1142)
!1147 = !DILocation(line: 443, column: 12, scope: !1105)
!1148 = !DILocation(line: 443, column: 3, scope: !1105)
!1149 = !DILocation(line: 445, column: 3, scope: !1105)
!1150 = !DILocation(line: 447, column: 3, scope: !1105)
!1151 = !DILocation(line: 433, column: 16, scope: !1105)
!1152 = !DILocation(line: 450, column: 31, scope: !1121)
!1153 = !DILocation(line: 450, column: 20, scope: !1121)
!1154 = !DILocation(line: 0, scope: !1121)
!1155 = !DILocation(line: 451, column: 11, scope: !1121)
!1156 = !DILocation(line: 453, column: 15, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 453, column: 15)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !2, line: 452, column: 9)
!1159 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 451, column: 11)
!1160 = !DILocalVariable(name: "__stream", arg: 1, scope: !1161, file: !1162, line: 135, type: !167)
!1161 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1162, file: !1162, line: 135, type: !1163, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1165)
!1162 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!52, !167}
!1165 = !{!1160}
!1166 = !DILocation(line: 0, scope: !1161, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 453, column: 15, scope: !1157)
!1168 = !DILocation(line: 137, column: 10, scope: !1161, inlinedAt: !1167)
!1169 = !{!1170, !919, i64 0}
!1170 = !{!"_IO_FILE", !919, i64 0, !856, i64 8, !856, i64 16, !856, i64 24, !856, i64 32, !856, i64 40, !856, i64 48, !856, i64 56, !856, i64 64, !856, i64 72, !856, i64 80, !856, i64 88, !856, i64 96, !856, i64 104, !919, i64 112, !919, i64 116, !1171, i64 120, !960, i64 128, !857, i64 130, !857, i64 131, !856, i64 136, !1171, i64 144, !856, i64 152, !856, i64 160, !856, i64 168, !856, i64 176, !1171, i64 184, !919, i64 192, !857, i64 196}
!1171 = !{!"long", !857, i64 0}
!1172 = !DILocation(line: 453, column: 15, scope: !1158)
!1173 = !DILocation(line: 454, column: 13, scope: !1157)
!1174 = !DILocation(line: 458, column: 7, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 458, column: 7)
!1176 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 458, column: 7)
!1177 = !DILocation(line: 460, column: 42, scope: !1121)
!1178 = !{!1179, !856, i64 8}
!1179 = !{!"tokenbuffer", !1171, i64 0, !856, i64 8}
!1180 = !DILocalVariable(name: "root", arg: 1, scope: !1181, file: !2, line: 119, type: !371)
!1181 = distinct !DISubprogram(name: "search_item", scope: !2, file: !2, line: 119, type: !1182, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1184)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!371, !371, !107}
!1184 = !{!1180, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192}
!1185 = !DILocalVariable(name: "str", arg: 2, scope: !1181, file: !2, line: 119, type: !107)
!1186 = !DILocalVariable(name: "p", scope: !1181, file: !2, line: 121, type: !371)
!1187 = !DILocalVariable(name: "q", scope: !1181, file: !2, line: 121, type: !371)
!1188 = !DILocalVariable(name: "r", scope: !1181, file: !2, line: 121, type: !371)
!1189 = !DILocalVariable(name: "s", scope: !1181, file: !2, line: 121, type: !371)
!1190 = !DILocalVariable(name: "t", scope: !1181, file: !2, line: 121, type: !371)
!1191 = !DILocalVariable(name: "a", scope: !1181, file: !2, line: 122, type: !52)
!1192 = !DILocalVariable(name: "cmp", scope: !1193, file: !2, line: 173, type: !52)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 172, column: 13)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 147, column: 9)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 146, column: 11)
!1196 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 134, column: 5)
!1197 = !DILocation(line: 0, scope: !1181, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 460, column: 11, scope: !1121)
!1199 = !DILocation(line: 126, column: 13, scope: !1200, inlinedAt: !1198)
!1200 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 126, column: 7)
!1201 = !{!1202, !856, i64 16}
!1202 = !{!"item", !856, i64 0, !856, i64 8, !856, i64 16, !857, i64 24, !1203, i64 25, !1171, i64 32, !856, i64 40, !856, i64 48}
!1203 = !{!"_Bool", !857, i64 0}
!1204 = !DILocation(line: 126, column: 19, scope: !1200, inlinedAt: !1198)
!1205 = !DILocation(line: 126, column: 7, scope: !1181, inlinedAt: !1198)
!1206 = !DILocation(line: 136, column: 27, scope: !1196, inlinedAt: !1198)
!1207 = !{!1202, !856, i64 0}
!1208 = !DILocation(line: 136, column: 11, scope: !1196, inlinedAt: !1198)
!1209 = !DILocation(line: 137, column: 13, scope: !1210, inlinedAt: !1198)
!1210 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 137, column: 11)
!1211 = !DILocation(line: 137, column: 11, scope: !1196, inlinedAt: !1198)
!1212 = !DILocation(line: 133, column: 3, scope: !1181, inlinedAt: !1198)
!1213 = !DILocation(line: 0, scope: !1133, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 127, column: 27, scope: !1200, inlinedAt: !1198)
!1215 = !DILocation(line: 104, column: 20, scope: !1133, inlinedAt: !1214)
!1216 = !DILocation(line: 105, column: 7, scope: !1217, inlinedAt: !1214)
!1217 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 105, column: 7)
!1218 = !DILocation(line: 105, column: 7, scope: !1133, inlinedAt: !1214)
!1219 = !DILocation(line: 106, column: 14, scope: !1217, inlinedAt: !1214)
!1220 = !DILocation(line: 106, column: 12, scope: !1217, inlinedAt: !1214)
!1221 = !DILocation(line: 106, column: 5, scope: !1217, inlinedAt: !1214)
!1222 = !DILocation(line: 127, column: 25, scope: !1200, inlinedAt: !1198)
!1223 = !DILocation(line: 127, column: 5, scope: !1200, inlinedAt: !1198)
!1224 = !DILocation(line: 141, column: 13, scope: !1225, inlinedAt: !1198)
!1225 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 141, column: 11)
!1226 = !DILocation(line: 141, column: 11, scope: !1196, inlinedAt: !1198)
!1227 = !DILocation(line: 0, scope: !1225, inlinedAt: !1198)
!1228 = !DILocation(line: 146, column: 13, scope: !1195, inlinedAt: !1198)
!1229 = !DILocation(line: 146, column: 11, scope: !1196, inlinedAt: !1198)
!1230 = !DILocation(line: 0, scope: !1133, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 149, column: 15, scope: !1194, inlinedAt: !1198)
!1232 = !DILocation(line: 104, column: 20, scope: !1133, inlinedAt: !1231)
!1233 = !DILocation(line: 105, column: 7, scope: !1217, inlinedAt: !1231)
!1234 = !DILocation(line: 105, column: 7, scope: !1133, inlinedAt: !1231)
!1235 = !DILocation(line: 106, column: 14, scope: !1217, inlinedAt: !1231)
!1236 = !DILocation(line: 106, column: 12, scope: !1217, inlinedAt: !1231)
!1237 = !DILocation(line: 106, column: 5, scope: !1217, inlinedAt: !1231)
!1238 = !DILocation(line: 0, scope: !1239, inlinedAt: !1198)
!1239 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 152, column: 15)
!1240 = !DILocation(line: 158, column: 31, scope: !1194, inlinedAt: !1198)
!1241 = !DILocation(line: 158, column: 15, scope: !1194, inlinedAt: !1198)
!1242 = !DILocation(line: 159, column: 17, scope: !1243, inlinedAt: !1198)
!1243 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 159, column: 15)
!1244 = !DILocation(line: 159, column: 15, scope: !1194, inlinedAt: !1198)
!1245 = !DILocation(line: 161, column: 26, scope: !1246, inlinedAt: !1198)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !2, line: 160, column: 13)
!1247 = !DILocation(line: 163, column: 13, scope: !1246, inlinedAt: !1198)
!1248 = !DILocation(line: 166, column: 15, scope: !1249, inlinedAt: !1198)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 166, column: 15)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !2, line: 166, column: 15)
!1251 = distinct !DILexicalBlock(scope: !1243, file: !2, line: 165, column: 13)
!1252 = !DILocation(line: 166, column: 15, scope: !1250, inlinedAt: !1198)
!1253 = !DILocation(line: 167, column: 26, scope: !1251, inlinedAt: !1198)
!1254 = !DILocation(line: 0, scope: !1243, inlinedAt: !1198)
!1255 = !DILocation(line: 171, column: 20, scope: !1194, inlinedAt: !1198)
!1256 = !DILocation(line: 171, column: 11, scope: !1194, inlinedAt: !1198)
!1257 = !DILocation(line: 173, column: 41, scope: !1193, inlinedAt: !1198)
!1258 = !DILocation(line: 173, column: 25, scope: !1193, inlinedAt: !1198)
!1259 = !DILocation(line: 0, scope: !1193, inlinedAt: !1198)
!1260 = !DILocation(line: 174, column: 23, scope: !1261, inlinedAt: !1198)
!1261 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 174, column: 19)
!1262 = !DILocation(line: 174, column: 19, scope: !1193, inlinedAt: !1198)
!1263 = !DILocation(line: 176, column: 22, scope: !1264, inlinedAt: !1198)
!1264 = distinct !DILexicalBlock(scope: !1261, file: !2, line: 175, column: 17)
!1265 = !DILocation(line: 176, column: 30, scope: !1264, inlinedAt: !1198)
!1266 = !{!1202, !857, i64 24}
!1267 = !DILocation(line: 177, column: 26, scope: !1264, inlinedAt: !1198)
!1268 = !DILocation(line: 178, column: 17, scope: !1264, inlinedAt: !1198)
!1269 = !DILocation(line: 181, column: 19, scope: !1270, inlinedAt: !1198)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 181, column: 19)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 181, column: 19)
!1272 = distinct !DILexicalBlock(scope: !1261, file: !2, line: 180, column: 17)
!1273 = !DILocation(line: 181, column: 19, scope: !1271, inlinedAt: !1198)
!1274 = !DILocation(line: 182, column: 22, scope: !1272, inlinedAt: !1198)
!1275 = !DILocation(line: 182, column: 30, scope: !1272, inlinedAt: !1198)
!1276 = !DILocation(line: 183, column: 26, scope: !1272, inlinedAt: !1198)
!1277 = !DILocation(line: 0, scope: !1261, inlinedAt: !1198)
!1278 = distinct !{!1278, !1256, !1279, !965}
!1279 = !DILocation(line: 185, column: 13, scope: !1194, inlinedAt: !1198)
!1280 = !DILocation(line: 188, column: 18, scope: !1281, inlinedAt: !1198)
!1281 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 188, column: 15)
!1282 = !DILocation(line: 188, column: 26, scope: !1281, inlinedAt: !1198)
!1283 = !DILocation(line: 188, column: 31, scope: !1281, inlinedAt: !1198)
!1284 = !DILocation(line: 188, column: 15, scope: !1281, inlinedAt: !1198)
!1285 = !DILocation(line: 188, column: 48, scope: !1281, inlinedAt: !1198)
!1286 = !DILocation(line: 188, column: 45, scope: !1281, inlinedAt: !1198)
!1287 = !DILocation(line: 188, column: 15, scope: !1194, inlinedAt: !1198)
!1288 = !DILocation(line: 190, column: 26, scope: !1289, inlinedAt: !1198)
!1289 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 189, column: 13)
!1290 = !DILocation(line: 191, column: 15, scope: !1289, inlinedAt: !1198)
!1291 = !DILocation(line: 194, column: 18, scope: !1292, inlinedAt: !1198)
!1292 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 194, column: 15)
!1293 = !DILocation(line: 194, column: 15, scope: !1292, inlinedAt: !1198)
!1294 = !DILocation(line: 194, column: 26, scope: !1292, inlinedAt: !1198)
!1295 = !DILocation(line: 194, column: 15, scope: !1194, inlinedAt: !1198)
!1296 = !DILocation(line: 198, column: 19, scope: !1297, inlinedAt: !1198)
!1297 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 195, column: 13)
!1298 = !DILocation(line: 200, column: 32, scope: !1299, inlinedAt: !1198)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 199, column: 17)
!1300 = distinct !DILexicalBlock(scope: !1297, file: !2, line: 198, column: 19)
!1301 = !DILocation(line: 200, column: 22, scope: !1299, inlinedAt: !1198)
!1302 = !DILocation(line: 200, column: 27, scope: !1299, inlinedAt: !1198)
!1303 = !{!1202, !856, i64 8}
!1304 = !DILocation(line: 202, column: 17, scope: !1299, inlinedAt: !1198)
!1305 = !DILocation(line: 205, column: 33, scope: !1306, inlinedAt: !1198)
!1306 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 204, column: 17)
!1307 = !DILocation(line: 205, column: 22, scope: !1306, inlinedAt: !1198)
!1308 = !DILocation(line: 205, column: 28, scope: !1306, inlinedAt: !1198)
!1309 = !DILocation(line: 0, scope: !1300, inlinedAt: !1198)
!1310 = !DILocation(line: 208, column: 39, scope: !1297, inlinedAt: !1198)
!1311 = !DILocation(line: 209, column: 13, scope: !1297, inlinedAt: !1198)
!1312 = !DILocation(line: 213, column: 19, scope: !1313, inlinedAt: !1198)
!1313 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 211, column: 13)
!1314 = !DILocation(line: 215, column: 26, scope: !1315, inlinedAt: !1198)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 214, column: 17)
!1316 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 213, column: 19)
!1317 = !DILocation(line: 216, column: 33, scope: !1315, inlinedAt: !1198)
!1318 = !DILocation(line: 216, column: 28, scope: !1315, inlinedAt: !1198)
!1319 = !DILocation(line: 217, column: 27, scope: !1315, inlinedAt: !1198)
!1320 = !DILocation(line: 218, column: 32, scope: !1315, inlinedAt: !1198)
!1321 = !DILocation(line: 218, column: 22, scope: !1315, inlinedAt: !1198)
!1322 = !DILocation(line: 218, column: 27, scope: !1315, inlinedAt: !1198)
!1323 = !DILocation(line: 220, column: 17, scope: !1315, inlinedAt: !1198)
!1324 = !DILocation(line: 223, column: 26, scope: !1325, inlinedAt: !1198)
!1325 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 222, column: 17)
!1326 = !DILocation(line: 224, column: 32, scope: !1325, inlinedAt: !1198)
!1327 = !DILocation(line: 224, column: 27, scope: !1325, inlinedAt: !1198)
!1328 = !DILocation(line: 225, column: 28, scope: !1325, inlinedAt: !1198)
!1329 = !DILocation(line: 226, column: 33, scope: !1325, inlinedAt: !1198)
!1330 = !DILocation(line: 226, column: 22, scope: !1325, inlinedAt: !1198)
!1331 = !DILocation(line: 226, column: 28, scope: !1325, inlinedAt: !1198)
!1332 = !DILocation(line: 0, scope: !1316, inlinedAt: !1198)
!1333 = !DILocation(line: 230, column: 26, scope: !1313, inlinedAt: !1198)
!1334 = !DILocation(line: 231, column: 26, scope: !1313, inlinedAt: !1198)
!1335 = !DILocation(line: 232, column: 22, scope: !1336, inlinedAt: !1198)
!1336 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 232, column: 19)
!1337 = !DILocation(line: 232, column: 19, scope: !1336, inlinedAt: !1198)
!1338 = !DILocation(line: 232, column: 30, scope: !1336, inlinedAt: !1198)
!1339 = !DILocation(line: 232, column: 19, scope: !1313, inlinedAt: !1198)
!1340 = !DILocation(line: 234, column: 35, scope: !1341, inlinedAt: !1198)
!1341 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 234, column: 24)
!1342 = !DILocation(line: 234, column: 24, scope: !1336, inlinedAt: !1198)
!1343 = !DILocation(line: 0, scope: !1336, inlinedAt: !1198)
!1344 = !DILocation(line: 236, column: 26, scope: !1313, inlinedAt: !1198)
!1345 = !DILocation(line: 0, scope: !1292, inlinedAt: !1198)
!1346 = !DILocation(line: 240, column: 23, scope: !1347, inlinedAt: !1198)
!1347 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 240, column: 15)
!1348 = !DILocation(line: 240, column: 17, scope: !1347, inlinedAt: !1198)
!1349 = !DILocation(line: 240, column: 15, scope: !1194, inlinedAt: !1198)
!1350 = !DILocation(line: 241, column: 22, scope: !1347, inlinedAt: !1198)
!1351 = !DILocation(line: 241, column: 13, scope: !1347, inlinedAt: !1198)
!1352 = !DILocation(line: 243, column: 16, scope: !1347, inlinedAt: !1198)
!1353 = !DILocation(line: 243, column: 21, scope: !1347, inlinedAt: !1198)
!1354 = !DILocation(line: 249, column: 14, scope: !1355, inlinedAt: !1198)
!1355 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 249, column: 11)
!1356 = !DILocation(line: 249, column: 11, scope: !1355, inlinedAt: !1198)
!1357 = !DILocation(line: 249, column: 11, scope: !1196, inlinedAt: !1198)
!1358 = distinct !{!1358, !1212, !1359}
!1359 = !DILocation(line: 256, column: 5, scope: !1181, inlinedAt: !1198)
!1360 = !DILocation(line: 461, column: 11, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 461, column: 11)
!1362 = !DILocation(line: 461, column: 11, scope: !1121)
!1363 = !DILocalVariable(name: "j", arg: 1, scope: !1364, file: !2, line: 264, type: !371)
!1364 = distinct !DISubprogram(name: "record_relation", scope: !2, file: !2, line: 264, type: !1365, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1367)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{null, !371, !371}
!1367 = !{!1363, !1368, !1369}
!1368 = !DILocalVariable(name: "k", arg: 2, scope: !1364, file: !2, line: 264, type: !371)
!1369 = !DILocalVariable(name: "p", scope: !1364, file: !2, line: 266, type: !382)
!1370 = !DILocation(line: 0, scope: !1364, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 464, column: 11, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 462, column: 9)
!1373 = !DILocation(line: 268, column: 18, scope: !1374, inlinedAt: !1371)
!1374 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 268, column: 7)
!1375 = !DILocation(line: 268, column: 26, scope: !1374, inlinedAt: !1371)
!1376 = !DILocation(line: 0, scope: !930, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 268, column: 8, scope: !1374, inlinedAt: !1371)
!1378 = !DILocation(line: 1361, column: 11, scope: !930, inlinedAt: !1377)
!1379 = !DILocation(line: 1361, column: 10, scope: !930, inlinedAt: !1377)
!1380 = !DILocation(line: 268, column: 7, scope: !1364, inlinedAt: !1371)
!1381 = !DILocation(line: 270, column: 10, scope: !1382, inlinedAt: !1371)
!1382 = distinct !DILexicalBlock(scope: !1374, file: !2, line: 269, column: 5)
!1383 = !DILocation(line: 270, column: 15, scope: !1382, inlinedAt: !1371)
!1384 = !{!1202, !1171, i64 32}
!1385 = !DILocation(line: 271, column: 11, scope: !1382, inlinedAt: !1371)
!1386 = !DILocation(line: 272, column: 14, scope: !1382, inlinedAt: !1371)
!1387 = !{!1388, !856, i64 0}
!1388 = !{!"successor", !856, i64 0, !856, i64 8}
!1389 = !DILocation(line: 273, column: 20, scope: !1382, inlinedAt: !1371)
!1390 = !{!1202, !856, i64 48}
!1391 = !DILocation(line: 273, column: 10, scope: !1382, inlinedAt: !1371)
!1392 = !DILocation(line: 273, column: 15, scope: !1382, inlinedAt: !1371)
!1393 = !{!1388, !856, i64 8}
!1394 = !DILocation(line: 274, column: 14, scope: !1382, inlinedAt: !1371)
!1395 = !DILocation(line: 275, column: 5, scope: !1382, inlinedAt: !1371)
!1396 = !DILocation(line: 471, column: 9, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 471, column: 7)
!1398 = !DILocation(line: 471, column: 7, scope: !1105)
!1399 = !DILocation(line: 472, column: 5, scope: !1397)
!1400 = !DILocalVariable(name: "root", arg: 1, scope: !1401, file: !2, line: 420, type: !371)
!1401 = distinct !DISubprogram(name: "walk_tree", scope: !2, file: !2, line: 420, type: !1402, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1407)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{null, !371, !1404}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!154, !371}
!1407 = !{!1400, !1408}
!1408 = !DILocalVariable(name: "action", arg: 2, scope: !1401, file: !2, line: 420, type: !1404)
!1409 = !DILocation(line: 0, scope: !1401, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 476, column: 3, scope: !1105)
!1411 = !DILocation(line: 422, column: 13, scope: !1412, inlinedAt: !1410)
!1412 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 422, column: 7)
!1413 = !DILocation(line: 422, column: 7, scope: !1412, inlinedAt: !1410)
!1414 = !DILocation(line: 422, column: 7, scope: !1401, inlinedAt: !1410)
!1415 = !DILocation(line: 423, column: 5, scope: !1412, inlinedAt: !1410)
!1416 = !DILocation(line: 478, column: 10, scope: !1105)
!1417 = !{!1171, !1171, i64 0}
!1418 = !DILocation(line: 478, column: 20, scope: !1105)
!1419 = !DILocation(line: 478, column: 3, scope: !1105)
!1420 = !DILocation(line: 0, scope: !1401, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 481, column: 7, scope: !1124)
!1422 = !DILocation(line: 422, column: 7, scope: !1401, inlinedAt: !1421)
!1423 = !DILocation(line: 423, column: 5, scope: !1412, inlinedAt: !1421)
!1424 = !DILocation(line: 483, column: 14, scope: !1124)
!1425 = !DILocation(line: 483, column: 7, scope: !1124)
!1426 = !DILocation(line: 510, column: 11, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 510, column: 11)
!1428 = !DILocation(line: 485, column: 39, scope: !1123)
!1429 = !DILocation(line: 0, scope: !1123)
!1430 = !DILocation(line: 488, column: 23, scope: !1123)
!1431 = !DILocation(line: 488, column: 11, scope: !1123)
!1432 = !DILocation(line: 489, column: 11, scope: !1123)
!1433 = !DILocation(line: 489, column: 17, scope: !1123)
!1434 = !DILocation(line: 489, column: 25, scope: !1123)
!1435 = !{!1202, !1203, i64 25}
!1436 = !DILocation(line: 490, column: 20, scope: !1123)
!1437 = !DILocation(line: 493, column: 11, scope: !1123)
!1438 = !DILocation(line: 495, column: 18, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 494, column: 13)
!1440 = !DILocation(line: 495, column: 23, scope: !1439)
!1441 = !DILocation(line: 495, column: 28, scope: !1439)
!1442 = !DILocation(line: 496, column: 33, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1439, file: !2, line: 496, column: 19)
!1444 = !DILocation(line: 496, column: 19, scope: !1439)
!1445 = !DILocation(line: 498, column: 26, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 497, column: 17)
!1447 = !DILocation(line: 498, column: 32, scope: !1446)
!1448 = !{!1202, !856, i64 40}
!1449 = !DILocation(line: 499, column: 25, scope: !1446)
!1450 = !DILocation(line: 500, column: 17, scope: !1446)
!1451 = !DILocation(line: 502, column: 22, scope: !1439)
!1452 = distinct !{!1452, !1437, !1453, !965}
!1453 = !DILocation(line: 503, column: 13, scope: !1123)
!1454 = !DILocation(line: 506, column: 24, scope: !1123)
!1455 = !DILocation(line: 506, column: 16, scope: !1123)
!1456 = distinct !{!1456, !1425, !1457, !965}
!1457 = !DILocation(line: 507, column: 9, scope: !1124)
!1458 = !DILocation(line: 510, column: 21, scope: !1427)
!1459 = !DILocation(line: 510, column: 11, scope: !1124)
!1460 = !DILocation(line: 513, column: 11, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1427, file: !2, line: 511, column: 9)
!1462 = !DILocation(line: 517, column: 11, scope: !1461)
!1463 = !DILocation(line: 0, scope: !1401, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 518, column: 13, scope: !1461)
!1465 = !DILocation(line: 422, column: 7, scope: !1401, inlinedAt: !1464)
!1466 = !DILocation(line: 423, column: 5, scope: !1412, inlinedAt: !1464)
!1467 = !DILocation(line: 519, column: 18, scope: !1461)
!1468 = !DILocation(line: 518, column: 13, scope: !1461)
!1469 = distinct !{!1469, !1462, !1470, !965}
!1470 = !DILocation(line: 519, column: 22, scope: !1461)
!1471 = distinct !{!1471, !1419, !1472, !965}
!1472 = !DILocation(line: 521, column: 5, scope: !1105)
!1473 = !DILocation(line: 527, column: 9, scope: !1105)
!1474 = !DILocation(line: 523, column: 15, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 523, column: 7)
!1476 = !DILocation(line: 523, column: 7, scope: !1475)
!1477 = !DILocation(line: 523, column: 22, scope: !1475)
!1478 = !DILocation(line: 523, column: 7, scope: !1105)
!1479 = !DILocation(line: 524, column: 5, scope: !1475)
!1480 = !DILocation(line: 527, column: 3, scope: !1105)
!1481 = !DISubprogram(name: "__errno_location", scope: !1482, file: !1482, line: 37, type: !1483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1482 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!404}
!1485 = !DISubprogram(name: "__assert_fail", scope: !1486, file: !1486, line: 69, type: !1487, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1486 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1487 = !DISubroutineType(types: !1488)
!1488 = !{null, !107, !107, !64, !107}
!1489 = distinct !DISubprogram(name: "count_items", scope: !2, file: !2, line: 279, type: !1405, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1490)
!1490 = !{!1491}
!1491 = !DILocalVariable(name: "unused", arg: 1, scope: !1489, file: !2, line: 279, type: !371)
!1492 = !DILocation(line: 0, scope: !1489)
!1493 = !DILocation(line: 281, column: 12, scope: !1489)
!1494 = !DILocation(line: 282, column: 3, scope: !1489)
!1495 = distinct !DISubprogram(name: "recurse_tree", scope: !2, file: !2, line: 397, type: !1496, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1498)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!154, !371, !1404}
!1498 = !{!1499, !1500}
!1499 = !DILocalVariable(name: "root", arg: 1, scope: !1495, file: !2, line: 397, type: !371)
!1500 = !DILocalVariable(name: "action", arg: 2, scope: !1495, file: !2, line: 397, type: !1404)
!1501 = !DILocation(line: 0, scope: !1495)
!1502 = !DILocation(line: 399, column: 13, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1495, file: !2, line: 399, column: 7)
!1504 = !DILocation(line: 399, column: 18, scope: !1503)
!1505 = !DILocation(line: 399, column: 26, scope: !1503)
!1506 = !DILocation(line: 399, column: 35, scope: !1503)
!1507 = !DILocation(line: 399, column: 41, scope: !1503)
!1508 = !DILocation(line: 399, column: 7, scope: !1495)
!1509 = !DILocation(line: 400, column: 12, scope: !1503)
!1510 = !{ptr @count_items, ptr @detect_loop, ptr @scan_zeros}
!1511 = !DILocation(line: 400, column: 5, scope: !1503)
!1512 = !DILocation(line: 404, column: 13, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 404, column: 13)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 403, column: 11)
!1515 = distinct !DILexicalBlock(scope: !1503, file: !2, line: 402, column: 5)
!1516 = !DILocation(line: 404, column: 13, scope: !1514)
!1517 = !DILocation(line: 406, column: 11, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 406, column: 11)
!1519 = !DILocation(line: 406, column: 11, scope: !1515)
!1520 = !DILocation(line: 408, column: 17, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 408, column: 11)
!1522 = !DILocation(line: 408, column: 23, scope: !1521)
!1523 = !DILocation(line: 408, column: 11, scope: !1515)
!1524 = !DILocation(line: 409, column: 13, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1521, file: !2, line: 409, column: 13)
!1526 = !DILocation(line: 409, column: 13, scope: !1521)
!1527 = !DILocation(line: 413, column: 3, scope: !1495)
!1528 = !DILocation(line: 414, column: 1, scope: !1495)
!1529 = distinct !DISubprogram(name: "scan_zeros", scope: !2, file: !2, line: 286, type: !1405, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1530)
!1530 = !{!1531}
!1531 = !DILocalVariable(name: "k", arg: 1, scope: !1529, file: !2, line: 286, type: !371)
!1532 = !DILocation(line: 0, scope: !1529)
!1533 = !DILocation(line: 289, column: 10, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1529, file: !2, line: 289, column: 7)
!1535 = !DILocation(line: 289, column: 16, scope: !1534)
!1536 = !DILocation(line: 289, column: 21, scope: !1534)
!1537 = !DILocation(line: 289, column: 28, scope: !1534)
!1538 = !{i8 0, i8 2}
!1539 = !DILocation(line: 289, column: 7, scope: !1529)
!1540 = !DILocation(line: 291, column: 11, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !2, line: 291, column: 11)
!1542 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 290, column: 5)
!1543 = !DILocation(line: 291, column: 16, scope: !1541)
!1544 = !DILocation(line: 291, column: 11, scope: !1542)
!1545 = !DILocation(line: 0, scope: !1541)
!1546 = !DILocation(line: 296, column: 13, scope: !1542)
!1547 = !DILocation(line: 297, column: 5, scope: !1542)
!1548 = !DILocation(line: 299, column: 3, scope: !1529)
!1549 = !DISubprogram(name: "puts", scope: !442, file: !442, line: 661, type: !1550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!52, !107}
!1552 = distinct !DISubprogram(name: "detect_loop", scope: !2, file: !2, line: 321, type: !1405, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1553)
!1553 = !{!1554, !1555, !1561, !1568, !1571}
!1554 = !DILocalVariable(name: "k", arg: 1, scope: !1552, file: !2, line: 321, type: !371)
!1555 = !DILocalVariable(name: "p", scope: !1556, file: !2, line: 333, type: !1560)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 332, column: 9)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 328, column: 11)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 324, column: 5)
!1559 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 323, column: 7)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!1561 = !DILocalVariable(name: "tmp", scope: !1562, file: !2, line: 344, type: !371)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !2, line: 343, column: 25)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !2, line: 340, column: 21)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !2, line: 339, column: 23)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !2, line: 338, column: 17)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !2, line: 337, column: 19)
!1567 = distinct !DILexicalBlock(scope: !1556, file: !2, line: 336, column: 13)
!1568 = !DILocalVariable(name: "s", scope: !1569, file: !2, line: 352, type: !382)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !2, line: 350, column: 29)
!1570 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 349, column: 31)
!1571 = !DILocalVariable(name: "tmp", scope: !1572, file: !2, line: 367, type: !371)
!1572 = distinct !DILexicalBlock(scope: !1563, file: !2, line: 366, column: 25)
!1573 = !DILocation(line: 0, scope: !1552)
!1574 = !DILocation(line: 323, column: 10, scope: !1559)
!1575 = !DILocation(line: 323, column: 16, scope: !1559)
!1576 = !DILocation(line: 323, column: 7, scope: !1552)
!1577 = !DILocation(line: 328, column: 11, scope: !1557)
!1578 = !DILocation(line: 328, column: 16, scope: !1557)
!1579 = !DILocation(line: 328, column: 11, scope: !1558)
!1580 = !DILocation(line: 333, column: 38, scope: !1556)
!1581 = !DILocation(line: 0, scope: !1556)
!1582 = !DILocation(line: 335, column: 18, scope: !1556)
!1583 = !DILocation(line: 335, column: 11, scope: !1556)
!1584 = !DILocation(line: 337, column: 25, scope: !1566)
!1585 = !DILocation(line: 337, column: 29, scope: !1566)
!1586 = !DILocation(line: 337, column: 19, scope: !1567)
!1587 = !DILocation(line: 385, column: 26, scope: !1567)
!1588 = distinct !{!1588, !1583, !1589, !965}
!1589 = !DILocation(line: 386, column: 13, scope: !1556)
!1590 = !DILocation(line: 339, column: 26, scope: !1564)
!1591 = !DILocation(line: 339, column: 23, scope: !1564)
!1592 = !DILocation(line: 339, column: 23, scope: !1565)
!1593 = !DILocation(line: 349, column: 31, scope: !1562)
!1594 = !DILocation(line: 344, column: 52, scope: !1562)
!1595 = !DILocation(line: 0, scope: !1562)
!1596 = !DILocation(line: 346, column: 27, scope: !1562)
!1597 = !DILocation(line: 349, column: 31, scope: !1570)
!1598 = !DILocation(line: 349, column: 36, scope: !1570)
!1599 = !DILocation(line: 361, column: 33, scope: !1562)
!1600 = !DILocation(line: 361, column: 39, scope: !1562)
!1601 = !DILocation(line: 362, column: 32, scope: !1562)
!1602 = !DILocation(line: 342, column: 23, scope: !1563)
!1603 = !DILocation(line: 352, column: 53, scope: !1569)
!1604 = !DILocation(line: 0, scope: !1569)
!1605 = !DILocation(line: 353, column: 34, scope: !1569)
!1606 = !DILocation(line: 353, column: 39, scope: !1569)
!1607 = !DILocation(line: 353, column: 44, scope: !1569)
!1608 = !DILocation(line: 354, column: 39, scope: !1569)
!1609 = !DILocation(line: 354, column: 34, scope: !1569)
!1610 = !DILocation(line: 365, column: 23, scope: !1563)
!1611 = !DILocation(line: 367, column: 52, scope: !1572)
!1612 = !DILocation(line: 0, scope: !1572)
!1613 = !DILocation(line: 369, column: 39, scope: !1572)
!1614 = distinct !{!1614, !1610, !1615, !965}
!1615 = !DILocation(line: 371, column: 25, scope: !1563)
!1616 = !DILocation(line: 379, column: 32, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1564, file: !2, line: 378, column: 21)
!1618 = !DILocation(line: 381, column: 23, scope: !1617)
!1619 = !DILocation(line: 0, scope: !1557)
!1620 = !DILocation(line: 391, column: 1, scope: !1552)
!1621 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !416, file: !416, line: 50, type: !869, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1622)
!1622 = !{!1623}
!1623 = !DILocalVariable(name: "file", arg: 1, scope: !1621, file: !416, line: 50, type: !107)
!1624 = !DILocation(line: 0, scope: !1621)
!1625 = !DILocation(line: 52, column: 13, scope: !1621)
!1626 = !DILocation(line: 53, column: 1, scope: !1621)
!1627 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !416, file: !416, line: 87, type: !1628, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1630)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null, !154}
!1630 = !{!1631}
!1631 = !DILocalVariable(name: "ignore", arg: 1, scope: !1627, file: !416, line: 87, type: !154)
!1632 = !DILocation(line: 0, scope: !1627)
!1633 = !DILocation(line: 89, column: 16, scope: !1627)
!1634 = !{!1203, !1203, i64 0}
!1635 = !DILocation(line: 90, column: 1, scope: !1627)
!1636 = distinct !DISubprogram(name: "close_stdout", scope: !416, file: !416, line: 116, type: !482, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1637)
!1637 = !{!1638}
!1638 = !DILocalVariable(name: "write_error", scope: !1639, file: !416, line: 121, type: !107)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !416, line: 120, column: 5)
!1640 = distinct !DILexicalBlock(scope: !1636, file: !416, line: 118, column: 7)
!1641 = !DILocation(line: 118, column: 21, scope: !1640)
!1642 = !DILocation(line: 118, column: 7, scope: !1640)
!1643 = !DILocation(line: 118, column: 29, scope: !1640)
!1644 = !DILocation(line: 119, column: 7, scope: !1640)
!1645 = !DILocation(line: 119, column: 12, scope: !1640)
!1646 = !DILocation(line: 119, column: 25, scope: !1640)
!1647 = !DILocation(line: 119, column: 28, scope: !1640)
!1648 = !DILocation(line: 119, column: 34, scope: !1640)
!1649 = !DILocation(line: 118, column: 7, scope: !1636)
!1650 = !DILocation(line: 121, column: 33, scope: !1639)
!1651 = !DILocation(line: 0, scope: !1639)
!1652 = !DILocation(line: 122, column: 11, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1639, file: !416, line: 122, column: 11)
!1654 = !DILocation(line: 0, scope: !1653)
!1655 = !DILocation(line: 122, column: 11, scope: !1639)
!1656 = !DILocation(line: 123, column: 9, scope: !1653)
!1657 = !DILocation(line: 126, column: 9, scope: !1653)
!1658 = !DILocation(line: 128, column: 14, scope: !1639)
!1659 = !DILocation(line: 128, column: 7, scope: !1639)
!1660 = !DILocation(line: 133, column: 42, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1636, file: !416, line: 133, column: 7)
!1662 = !DILocation(line: 133, column: 28, scope: !1661)
!1663 = !DILocation(line: 133, column: 50, scope: !1661)
!1664 = !DILocation(line: 133, column: 7, scope: !1636)
!1665 = !DILocation(line: 134, column: 12, scope: !1661)
!1666 = !DILocation(line: 134, column: 5, scope: !1661)
!1667 = !DILocation(line: 135, column: 1, scope: !1636)
!1668 = !DISubprogram(name: "_exit", scope: !1669, file: !1669, line: 624, type: !845, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1669 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1670 = distinct !DISubprogram(name: "verror", scope: !431, file: !431, line: 251, type: !1671, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1673)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{null, !52, !52, !107, !441}
!1673 = !{!1674, !1675, !1676, !1677}
!1674 = !DILocalVariable(name: "status", arg: 1, scope: !1670, file: !431, line: 251, type: !52)
!1675 = !DILocalVariable(name: "errnum", arg: 2, scope: !1670, file: !431, line: 251, type: !52)
!1676 = !DILocalVariable(name: "message", arg: 3, scope: !1670, file: !431, line: 251, type: !107)
!1677 = !DILocalVariable(name: "args", arg: 4, scope: !1670, file: !431, line: 251, type: !441)
!1678 = !DILocation(line: 0, scope: !1670)
!1679 = !DILocation(line: 261, column: 3, scope: !1670)
!1680 = !DILocation(line: 265, column: 7, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1670, file: !431, line: 265, column: 7)
!1682 = !DILocation(line: 265, column: 7, scope: !1670)
!1683 = !DILocation(line: 266, column: 5, scope: !1681)
!1684 = !DILocation(line: 272, column: 7, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1681, file: !431, line: 268, column: 5)
!1686 = !DILocation(line: 276, column: 3, scope: !1670)
!1687 = !{i64 0, i64 8, !855, i64 8, i64 8, !855, i64 16, i64 8, !855, i64 24, i64 4, !918, i64 28, i64 4, !918}
!1688 = !DILocation(line: 282, column: 1, scope: !1670)
!1689 = distinct !DISubprogram(name: "flush_stdout", scope: !431, file: !431, line: 163, type: !482, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1690)
!1690 = !{!1691}
!1691 = !DILocalVariable(name: "stdout_fd", scope: !1689, file: !431, line: 166, type: !52)
!1692 = !DILocation(line: 0, scope: !1689)
!1693 = !DILocalVariable(name: "fd", arg: 1, scope: !1694, file: !431, line: 145, type: !52)
!1694 = distinct !DISubprogram(name: "is_open", scope: !431, file: !431, line: 145, type: !1695, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1697)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!52, !52}
!1697 = !{!1693}
!1698 = !DILocation(line: 0, scope: !1694, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 182, column: 25, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1689, file: !431, line: 182, column: 7)
!1701 = !DILocation(line: 157, column: 15, scope: !1694, inlinedAt: !1699)
!1702 = !DILocation(line: 157, column: 12, scope: !1694, inlinedAt: !1699)
!1703 = !DILocation(line: 182, column: 7, scope: !1689)
!1704 = !DILocation(line: 184, column: 5, scope: !1700)
!1705 = !DILocation(line: 185, column: 1, scope: !1689)
!1706 = distinct !DISubprogram(name: "error_tail", scope: !431, file: !431, line: 219, type: !1671, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1707)
!1707 = !{!1708, !1709, !1710, !1711}
!1708 = !DILocalVariable(name: "status", arg: 1, scope: !1706, file: !431, line: 219, type: !52)
!1709 = !DILocalVariable(name: "errnum", arg: 2, scope: !1706, file: !431, line: 219, type: !52)
!1710 = !DILocalVariable(name: "message", arg: 3, scope: !1706, file: !431, line: 219, type: !107)
!1711 = !DILocalVariable(name: "args", arg: 4, scope: !1706, file: !431, line: 219, type: !441)
!1712 = distinct !DIAssignID()
!1713 = !DILocation(line: 0, scope: !1706)
!1714 = !DILocation(line: 229, column: 13, scope: !1706)
!1715 = !DILocation(line: 135, column: 10, scope: !1716, inlinedAt: !1758)
!1716 = distinct !DISubprogram(name: "vfprintf", scope: !905, file: !905, line: 132, type: !1717, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1754)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!52, !1719, !909, !443}
!1719 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1720)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !1722)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !1723)
!1723 = !{!1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1722, file: !171, line: 51, baseType: !52, size: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1722, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1722, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1722, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1722, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1722, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1722, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1722, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1722, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1722, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1722, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1722, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1722, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1722, file: !171, line: 70, baseType: !1738, size: 64, offset: 832)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1722, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1722, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1722, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1722, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1722, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1722, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1722, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1722, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1722, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1722, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1722, file: !171, line: 93, baseType: !1738, size: 64, offset: 1344)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1722, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1722, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1722, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1722, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!1754 = !{!1755, !1756, !1757}
!1755 = !DILocalVariable(name: "__stream", arg: 1, scope: !1716, file: !905, line: 132, type: !1719)
!1756 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1716, file: !905, line: 133, type: !909)
!1757 = !DILocalVariable(name: "__ap", arg: 3, scope: !1716, file: !905, line: 133, type: !443)
!1758 = distinct !DILocation(line: 229, column: 3, scope: !1706)
!1759 = !{!1760, !1762}
!1760 = distinct !{!1760, !1761, !"vfprintf.inline: argument 0"}
!1761 = distinct !{!1761, !"vfprintf.inline"}
!1762 = distinct !{!1762, !1761, !"vfprintf.inline: argument 1"}
!1763 = !DILocation(line: 229, column: 3, scope: !1706)
!1764 = !DILocation(line: 0, scope: !1716, inlinedAt: !1758)
!1765 = !DILocation(line: 232, column: 3, scope: !1706)
!1766 = !DILocation(line: 233, column: 7, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1706, file: !431, line: 233, column: 7)
!1768 = !DILocation(line: 233, column: 7, scope: !1706)
!1769 = !DILocalVariable(name: "errbuf", scope: !1770, file: !431, line: 193, type: !1774)
!1770 = distinct !DISubprogram(name: "print_errno_message", scope: !431, file: !431, line: 188, type: !845, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1771)
!1771 = !{!1772, !1773, !1769}
!1772 = !DILocalVariable(name: "errnum", arg: 1, scope: !1770, file: !431, line: 188, type: !52)
!1773 = !DILocalVariable(name: "s", scope: !1770, file: !431, line: 190, type: !107)
!1774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1775)
!1775 = !{!1776}
!1776 = !DISubrange(count: 1024)
!1777 = !DILocation(line: 0, scope: !1770, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 234, column: 5, scope: !1767)
!1779 = !DILocation(line: 193, column: 3, scope: !1770, inlinedAt: !1778)
!1780 = !DILocation(line: 195, column: 7, scope: !1770, inlinedAt: !1778)
!1781 = !DILocation(line: 207, column: 9, scope: !1782, inlinedAt: !1778)
!1782 = distinct !DILexicalBlock(scope: !1770, file: !431, line: 207, column: 7)
!1783 = !DILocation(line: 207, column: 7, scope: !1770, inlinedAt: !1778)
!1784 = !DILocation(line: 208, column: 9, scope: !1782, inlinedAt: !1778)
!1785 = !DILocation(line: 208, column: 5, scope: !1782, inlinedAt: !1778)
!1786 = !DILocation(line: 214, column: 3, scope: !1770, inlinedAt: !1778)
!1787 = !DILocation(line: 216, column: 1, scope: !1770, inlinedAt: !1778)
!1788 = !DILocation(line: 234, column: 5, scope: !1767)
!1789 = !DILocation(line: 238, column: 3, scope: !1706)
!1790 = !DILocalVariable(name: "__c", arg: 1, scope: !1791, file: !1162, line: 101, type: !52)
!1791 = distinct !DISubprogram(name: "putc_unlocked", scope: !1162, file: !1162, line: 101, type: !1792, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1794)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!52, !52, !1720}
!1794 = !{!1790, !1795}
!1795 = !DILocalVariable(name: "__stream", arg: 2, scope: !1791, file: !1162, line: 101, type: !1720)
!1796 = !DILocation(line: 0, scope: !1791, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 238, column: 3, scope: !1706)
!1798 = !DILocation(line: 103, column: 10, scope: !1791, inlinedAt: !1797)
!1799 = !{!1170, !856, i64 40}
!1800 = !{!1170, !856, i64 48}
!1801 = !{!"branch_weights", i32 2000, i32 1}
!1802 = !DILocation(line: 240, column: 3, scope: !1706)
!1803 = !DILocation(line: 241, column: 7, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1706, file: !431, line: 241, column: 7)
!1805 = !DILocation(line: 241, column: 7, scope: !1706)
!1806 = !DILocation(line: 242, column: 5, scope: !1804)
!1807 = !DILocation(line: 243, column: 1, scope: !1706)
!1808 = !DISubprogram(name: "__vfprintf_chk", scope: !905, file: !905, line: 96, type: !1809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!52, !1719, !52, !909, !443}
!1811 = !DISubprogram(name: "strerror_r", scope: !1035, file: !1035, line: 444, type: !1812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!54, !52, !54, !104}
!1814 = !DISubprogram(name: "__overflow", scope: !442, file: !442, line: 886, type: !1815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!52, !1720, !52}
!1817 = !DISubprogram(name: "fflush_unlocked", scope: !442, file: !442, line: 239, type: !1818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!52, !1720}
!1820 = !DISubprogram(name: "fcntl", scope: !1821, file: !1821, line: 149, type: !1822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1821 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!52, !52, !52, null}
!1824 = distinct !DISubprogram(name: "error", scope: !431, file: !431, line: 285, type: !1825, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1827)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !52, !52, !107, null}
!1827 = !{!1828, !1829, !1830, !1831}
!1828 = !DILocalVariable(name: "status", arg: 1, scope: !1824, file: !431, line: 285, type: !52)
!1829 = !DILocalVariable(name: "errnum", arg: 2, scope: !1824, file: !431, line: 285, type: !52)
!1830 = !DILocalVariable(name: "message", arg: 3, scope: !1824, file: !431, line: 285, type: !107)
!1831 = !DILocalVariable(name: "ap", scope: !1824, file: !431, line: 287, type: !441)
!1832 = distinct !DIAssignID()
!1833 = !DILocation(line: 0, scope: !1824)
!1834 = !DILocation(line: 287, column: 3, scope: !1824)
!1835 = !DILocation(line: 288, column: 3, scope: !1824)
!1836 = !DILocation(line: 289, column: 3, scope: !1824)
!1837 = !DILocation(line: 290, column: 3, scope: !1824)
!1838 = !DILocation(line: 291, column: 1, scope: !1824)
!1839 = !DILocation(line: 0, scope: !438)
!1840 = !DILocation(line: 302, column: 7, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !438, file: !431, line: 302, column: 7)
!1842 = !DILocation(line: 302, column: 7, scope: !438)
!1843 = !DILocation(line: 307, column: 11, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !431, line: 307, column: 11)
!1845 = distinct !DILexicalBlock(scope: !1841, file: !431, line: 303, column: 5)
!1846 = !DILocation(line: 307, column: 27, scope: !1844)
!1847 = !DILocation(line: 308, column: 11, scope: !1844)
!1848 = !DILocation(line: 308, column: 28, scope: !1844)
!1849 = !DILocation(line: 308, column: 25, scope: !1844)
!1850 = !DILocation(line: 309, column: 15, scope: !1844)
!1851 = !DILocation(line: 309, column: 33, scope: !1844)
!1852 = !DILocation(line: 310, column: 19, scope: !1844)
!1853 = !DILocation(line: 311, column: 22, scope: !1844)
!1854 = !DILocation(line: 311, column: 56, scope: !1844)
!1855 = !DILocation(line: 307, column: 11, scope: !1845)
!1856 = !DILocation(line: 316, column: 21, scope: !1845)
!1857 = !DILocation(line: 317, column: 23, scope: !1845)
!1858 = !DILocation(line: 318, column: 5, scope: !1845)
!1859 = !DILocation(line: 327, column: 3, scope: !438)
!1860 = !DILocation(line: 331, column: 7, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !438, file: !431, line: 331, column: 7)
!1862 = !DILocation(line: 331, column: 7, scope: !438)
!1863 = !DILocation(line: 332, column: 5, scope: !1861)
!1864 = !DILocation(line: 338, column: 7, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1861, file: !431, line: 334, column: 5)
!1866 = !DILocation(line: 346, column: 3, scope: !438)
!1867 = !DILocation(line: 350, column: 3, scope: !438)
!1868 = !DILocation(line: 356, column: 1, scope: !438)
!1869 = distinct !DISubprogram(name: "error_at_line", scope: !431, file: !431, line: 359, type: !1870, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1872)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{null, !52, !52, !107, !64, !107, null}
!1872 = !{!1873, !1874, !1875, !1876, !1877, !1878}
!1873 = !DILocalVariable(name: "status", arg: 1, scope: !1869, file: !431, line: 359, type: !52)
!1874 = !DILocalVariable(name: "errnum", arg: 2, scope: !1869, file: !431, line: 359, type: !52)
!1875 = !DILocalVariable(name: "file_name", arg: 3, scope: !1869, file: !431, line: 359, type: !107)
!1876 = !DILocalVariable(name: "line_number", arg: 4, scope: !1869, file: !431, line: 360, type: !64)
!1877 = !DILocalVariable(name: "message", arg: 5, scope: !1869, file: !431, line: 360, type: !107)
!1878 = !DILocalVariable(name: "ap", scope: !1869, file: !431, line: 362, type: !441)
!1879 = distinct !DIAssignID()
!1880 = !DILocation(line: 0, scope: !1869)
!1881 = !DILocation(line: 362, column: 3, scope: !1869)
!1882 = !DILocation(line: 363, column: 3, scope: !1869)
!1883 = !DILocation(line: 364, column: 3, scope: !1869)
!1884 = !DILocation(line: 366, column: 3, scope: !1869)
!1885 = !DILocation(line: 367, column: 1, scope: !1869)
!1886 = distinct !DISubprogram(name: "fdadvise", scope: !759, file: !759, line: 25, type: !1887, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !1891)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{null, !52, !1889, !1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !442, line: 63, baseType: !193)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !762, line: 51, baseType: !761)
!1891 = !{!1892, !1893, !1894, !1895}
!1892 = !DILocalVariable(name: "fd", arg: 1, scope: !1886, file: !759, line: 25, type: !52)
!1893 = !DILocalVariable(name: "offset", arg: 2, scope: !1886, file: !759, line: 25, type: !1889)
!1894 = !DILocalVariable(name: "len", arg: 3, scope: !1886, file: !759, line: 25, type: !1889)
!1895 = !DILocalVariable(name: "advice", arg: 4, scope: !1886, file: !759, line: 25, type: !1890)
!1896 = !DILocation(line: 0, scope: !1886)
!1897 = !DILocation(line: 28, column: 3, scope: !1886)
!1898 = !DILocation(line: 30, column: 1, scope: !1886)
!1899 = !DISubprogram(name: "posix_fadvise", scope: !1821, file: !1821, line: 273, type: !1900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!52, !52, !1889, !1889, !52}
!1902 = distinct !DISubprogram(name: "fadvise", scope: !759, file: !759, line: 33, type: !1903, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !1939)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{null, !1905, !1890}
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !1907)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !1908)
!1908 = !{!1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1907, file: !171, line: 51, baseType: !52, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1907, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1907, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1907, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1907, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1907, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1907, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1907, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1907, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1907, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1907, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1907, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1907, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1907, file: !171, line: 70, baseType: !1923, size: 64, offset: 832)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1907, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1907, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1907, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1907, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1907, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1907, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1907, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1907, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1907, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1907, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1907, file: !171, line: 93, baseType: !1923, size: 64, offset: 1344)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1907, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1907, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1907, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1907, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!1939 = !{!1940, !1941}
!1940 = !DILocalVariable(name: "fp", arg: 1, scope: !1902, file: !759, line: 33, type: !1905)
!1941 = !DILocalVariable(name: "advice", arg: 2, scope: !1902, file: !759, line: 33, type: !1890)
!1942 = !DILocation(line: 0, scope: !1902)
!1943 = !DILocation(line: 35, column: 7, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1902, file: !759, line: 35, column: 7)
!1945 = !DILocation(line: 35, column: 7, scope: !1902)
!1946 = !DILocation(line: 36, column: 15, scope: !1944)
!1947 = !DILocation(line: 0, scope: !1886, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 36, column: 5, scope: !1944)
!1949 = !DILocation(line: 28, column: 3, scope: !1886, inlinedAt: !1948)
!1950 = !DILocation(line: 36, column: 5, scope: !1944)
!1951 = !DILocation(line: 37, column: 1, scope: !1902)
!1952 = !DISubprogram(name: "fileno", scope: !442, file: !442, line: 809, type: !1953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!52, !1905}
!1955 = distinct !DISubprogram(name: "rpl_fclose", scope: !764, file: !764, line: 58, type: !1956, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !1992)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!52, !1958}
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !1960)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !1961)
!1961 = !{!1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1960, file: !171, line: 51, baseType: !52, size: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1960, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1960, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1960, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1960, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1960, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1960, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1960, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1960, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1960, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1960, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1960, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1960, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1960, file: !171, line: 70, baseType: !1976, size: 64, offset: 832)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1960, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1960, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1960, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1960, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1960, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1960, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1960, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1960, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1960, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1960, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1960, file: !171, line: 93, baseType: !1976, size: 64, offset: 1344)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1960, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1960, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1960, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1960, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!1992 = !{!1993, !1994, !1995, !1996}
!1993 = !DILocalVariable(name: "fp", arg: 1, scope: !1955, file: !764, line: 58, type: !1958)
!1994 = !DILocalVariable(name: "saved_errno", scope: !1955, file: !764, line: 60, type: !52)
!1995 = !DILocalVariable(name: "fd", scope: !1955, file: !764, line: 63, type: !52)
!1996 = !DILocalVariable(name: "result", scope: !1955, file: !764, line: 74, type: !52)
!1997 = !DILocation(line: 0, scope: !1955)
!1998 = !DILocation(line: 63, column: 12, scope: !1955)
!1999 = !DILocation(line: 64, column: 10, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1955, file: !764, line: 64, column: 7)
!2001 = !DILocation(line: 64, column: 7, scope: !1955)
!2002 = !DILocation(line: 65, column: 12, scope: !2000)
!2003 = !DILocation(line: 65, column: 5, scope: !2000)
!2004 = !DILocation(line: 70, column: 9, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1955, file: !764, line: 70, column: 7)
!2006 = !DILocation(line: 70, column: 23, scope: !2005)
!2007 = !DILocation(line: 70, column: 33, scope: !2005)
!2008 = !DILocation(line: 70, column: 26, scope: !2005)
!2009 = !DILocation(line: 70, column: 59, scope: !2005)
!2010 = !DILocation(line: 71, column: 7, scope: !2005)
!2011 = !DILocation(line: 71, column: 10, scope: !2005)
!2012 = !DILocation(line: 70, column: 7, scope: !1955)
!2013 = !DILocation(line: 100, column: 12, scope: !1955)
!2014 = !DILocation(line: 105, column: 7, scope: !1955)
!2015 = !DILocation(line: 72, column: 19, scope: !2005)
!2016 = !DILocation(line: 105, column: 19, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1955, file: !764, line: 105, column: 7)
!2018 = !DILocation(line: 107, column: 13, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2017, file: !764, line: 106, column: 5)
!2020 = !DILocation(line: 109, column: 5, scope: !2019)
!2021 = !DILocation(line: 112, column: 1, scope: !1955)
!2022 = !DISubprogram(name: "fclose", scope: !442, file: !442, line: 178, type: !1956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2023 = !DISubprogram(name: "__freading", scope: !2024, file: !2024, line: 51, type: !1956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2024 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2025 = !DISubprogram(name: "lseek", scope: !1669, file: !1669, line: 339, type: !2026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!193, !52, !193, !52}
!2028 = distinct !DISubprogram(name: "rpl_fflush", scope: !766, file: !766, line: 130, type: !2029, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !2065)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!52, !2031}
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2033)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2034)
!2034 = !{!2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2033, file: !171, line: 51, baseType: !52, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2033, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2033, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2033, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2033, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2033, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2033, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2033, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2033, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2033, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2033, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2033, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2033, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2033, file: !171, line: 70, baseType: !2049, size: 64, offset: 832)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2033, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2033, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2033, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2033, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2033, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2033, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2033, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2033, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2033, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2033, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2033, file: !171, line: 93, baseType: !2049, size: 64, offset: 1344)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2033, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2033, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2033, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2033, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2065 = !{!2066}
!2066 = !DILocalVariable(name: "stream", arg: 1, scope: !2028, file: !766, line: 130, type: !2031)
!2067 = !DILocation(line: 0, scope: !2028)
!2068 = !DILocation(line: 151, column: 14, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2028, file: !766, line: 151, column: 7)
!2070 = !DILocation(line: 151, column: 22, scope: !2069)
!2071 = !DILocation(line: 151, column: 27, scope: !2069)
!2072 = !DILocation(line: 151, column: 7, scope: !2028)
!2073 = !DILocation(line: 152, column: 12, scope: !2069)
!2074 = !DILocation(line: 152, column: 5, scope: !2069)
!2075 = !DILocalVariable(name: "fp", arg: 1, scope: !2076, file: !766, line: 42, type: !2031)
!2076 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !766, file: !766, line: 42, type: !2077, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !2079)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{null, !2031}
!2079 = !{!2075}
!2080 = !DILocation(line: 0, scope: !2076, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 157, column: 3, scope: !2028)
!2082 = !DILocation(line: 44, column: 12, scope: !2083, inlinedAt: !2081)
!2083 = distinct !DILexicalBlock(scope: !2076, file: !766, line: 44, column: 7)
!2084 = !DILocation(line: 44, column: 19, scope: !2083, inlinedAt: !2081)
!2085 = !DILocation(line: 44, column: 7, scope: !2076, inlinedAt: !2081)
!2086 = !DILocation(line: 46, column: 5, scope: !2083, inlinedAt: !2081)
!2087 = !DILocation(line: 159, column: 10, scope: !2028)
!2088 = !DILocation(line: 159, column: 3, scope: !2028)
!2089 = !DILocation(line: 236, column: 1, scope: !2028)
!2090 = !DISubprogram(name: "fflush", scope: !442, file: !442, line: 230, type: !2029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2091 = distinct !DISubprogram(name: "freopen_safer", scope: !486, file: !486, line: 60, type: !2092, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !2128)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!2094, !107, !107, !2094}
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2096)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2097)
!2097 = !{!2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2096, file: !171, line: 51, baseType: !52, size: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2096, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2096, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2096, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2096, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2096, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2096, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2096, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2096, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2096, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2096, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2096, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2096, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2096, file: !171, line: 70, baseType: !2112, size: 64, offset: 832)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2096, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2096, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2096, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2096, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2096, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2096, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2096, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2096, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2096, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2096, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2096, file: !171, line: 93, baseType: !2112, size: 64, offset: 1344)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2096, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2096, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2096, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2096, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2128 = !{!2129, !2130, !2131, !2132, !2133, !2134, !2135}
!2129 = !DILocalVariable(name: "name", arg: 1, scope: !2091, file: !486, line: 60, type: !107)
!2130 = !DILocalVariable(name: "mode", arg: 2, scope: !2091, file: !486, line: 60, type: !107)
!2131 = !DILocalVariable(name: "f", arg: 3, scope: !2091, file: !486, line: 60, type: !2094)
!2132 = !DILocalVariable(name: "protect_in", scope: !2091, file: !486, line: 68, type: !154)
!2133 = !DILocalVariable(name: "protect_out", scope: !2091, file: !486, line: 69, type: !154)
!2134 = !DILocalVariable(name: "protect_err", scope: !2091, file: !486, line: 70, type: !154)
!2135 = !DILocalVariable(name: "saved_errno", scope: !2091, file: !486, line: 98, type: !52)
!2136 = !DILocation(line: 0, scope: !2091)
!2137 = !DILocation(line: 72, column: 11, scope: !2091)
!2138 = !DILocation(line: 72, column: 3, scope: !2091)
!2139 = !DILocation(line: 75, column: 11, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !486, line: 75, column: 11)
!2141 = distinct !DILexicalBlock(scope: !2091, file: !486, line: 73, column: 5)
!2142 = !DILocation(line: 75, column: 47, scope: !2140)
!2143 = !DILocation(line: 75, column: 11, scope: !2141)
!2144 = !DILocation(line: 79, column: 11, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2141, file: !486, line: 79, column: 11)
!2146 = !DILocation(line: 79, column: 47, scope: !2145)
!2147 = !DILocation(line: 79, column: 11, scope: !2141)
!2148 = !DILocation(line: 83, column: 11, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2141, file: !486, line: 83, column: 11)
!2150 = !DILocation(line: 83, column: 45, scope: !2149)
!2151 = !DILocation(line: 90, column: 18, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2091, file: !486, line: 90, column: 7)
!2153 = !DILocalVariable(name: "fd", arg: 1, scope: !2154, file: !486, line: 38, type: !52)
!2154 = distinct !DISubprogram(name: "protect_fd", scope: !486, file: !486, line: 38, type: !2155, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !2157)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!154, !52}
!2157 = !{!2153, !2158}
!2158 = !DILocalVariable(name: "value", scope: !2154, file: !486, line: 40, type: !52)
!2159 = !DILocation(line: 0, scope: !2154, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 90, column: 22, scope: !2152)
!2161 = !DILocation(line: 40, column: 15, scope: !2154, inlinedAt: !2160)
!2162 = !DILocation(line: 41, column: 7, scope: !2154, inlinedAt: !2160)
!2163 = !DILocation(line: 45, column: 11, scope: !2164, inlinedAt: !2160)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !486, line: 44, column: 9)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !486, line: 43, column: 11)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !486, line: 42, column: 5)
!2167 = distinct !DILexicalBlock(scope: !2154, file: !486, line: 41, column: 7)
!2168 = !DILocation(line: 46, column: 11, scope: !2164, inlinedAt: !2160)
!2169 = !DILocation(line: 46, column: 17, scope: !2164, inlinedAt: !2160)
!2170 = !DILocation(line: 99, column: 7, scope: !2091)
!2171 = !DILocation(line: 41, column: 13, scope: !2167, inlinedAt: !2160)
!2172 = !DILocation(line: 90, column: 7, scope: !2091)
!2173 = !DILocation(line: 92, column: 24, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2152, file: !486, line: 92, column: 12)
!2175 = !DILocation(line: 0, scope: !2154, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 92, column: 28, scope: !2174)
!2177 = !DILocation(line: 40, column: 15, scope: !2154, inlinedAt: !2176)
!2178 = !DILocation(line: 41, column: 13, scope: !2167, inlinedAt: !2176)
!2179 = !DILocation(line: 41, column: 7, scope: !2154, inlinedAt: !2176)
!2180 = !DILocation(line: 45, column: 11, scope: !2164, inlinedAt: !2176)
!2181 = !DILocation(line: 46, column: 11, scope: !2164, inlinedAt: !2176)
!2182 = !DILocation(line: 46, column: 17, scope: !2164, inlinedAt: !2176)
!2183 = !DILocation(line: 47, column: 9, scope: !2164, inlinedAt: !2176)
!2184 = !DILocation(line: 92, column: 12, scope: !2152)
!2185 = !DILocation(line: 94, column: 24, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2174, file: !486, line: 94, column: 12)
!2187 = !DILocation(line: 0, scope: !2154, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 94, column: 28, scope: !2186)
!2189 = !DILocation(line: 40, column: 15, scope: !2154, inlinedAt: !2188)
!2190 = !DILocation(line: 41, column: 13, scope: !2167, inlinedAt: !2188)
!2191 = !DILocation(line: 41, column: 7, scope: !2154, inlinedAt: !2188)
!2192 = !DILocation(line: 45, column: 11, scope: !2164, inlinedAt: !2188)
!2193 = !DILocation(line: 46, column: 11, scope: !2164, inlinedAt: !2188)
!2194 = !DILocation(line: 46, column: 17, scope: !2164, inlinedAt: !2188)
!2195 = !DILocation(line: 47, column: 9, scope: !2164, inlinedAt: !2188)
!2196 = !DILocation(line: 94, column: 12, scope: !2174)
!2197 = !DILocation(line: 98, column: 21, scope: !2091)
!2198 = !DILocation(line: 100, column: 5, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2091, file: !486, line: 99, column: 7)
!2200 = !DILocation(line: 101, column: 7, scope: !2091)
!2201 = !DILocation(line: 97, column: 9, scope: !2186)
!2202 = !DILocation(line: 102, column: 5, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2091, file: !486, line: 101, column: 7)
!2204 = !DILocation(line: 103, column: 7, scope: !2091)
!2205 = !DILocation(line: 104, column: 5, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2091, file: !486, line: 103, column: 7)
!2207 = !DILocation(line: 105, column: 8, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2091, file: !486, line: 105, column: 7)
!2209 = !DILocation(line: 105, column: 7, scope: !2091)
!2210 = !DILocation(line: 106, column: 11, scope: !2208)
!2211 = !DILocation(line: 106, column: 5, scope: !2208)
!2212 = !DILocation(line: 107, column: 3, scope: !2091)
!2213 = !DISubprogram(name: "dup2", scope: !1669, file: !1669, line: 555, type: !2214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!52, !52, !52}
!2216 = !DISubprogram(name: "open", scope: !1821, file: !1821, line: 181, type: !2217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!52, !107, !52, null}
!2219 = !DISubprogram(name: "close", scope: !1669, file: !1669, line: 358, type: !1695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2220 = !DISubprogram(name: "freopen", scope: !442, file: !442, line: 265, type: !2221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!2094, !909, !909, !2223}
!2223 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2094)
!2224 = distinct !DISubprogram(name: "rpl_fseeko", scope: !771, file: !771, line: 28, type: !2225, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !2261)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!52, !2227, !1889, !52}
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2229)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2230)
!2230 = !{!2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2229, file: !171, line: 51, baseType: !52, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2229, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2229, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2229, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2229, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2229, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2229, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2229, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2229, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2229, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2229, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2229, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2229, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2229, file: !171, line: 70, baseType: !2245, size: 64, offset: 832)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2229, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2229, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2229, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2229, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2229, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2229, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2229, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2229, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2229, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2229, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2229, file: !171, line: 93, baseType: !2245, size: 64, offset: 1344)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2229, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2229, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2229, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2229, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2261 = !{!2262, !2263, !2264, !2265}
!2262 = !DILocalVariable(name: "fp", arg: 1, scope: !2224, file: !771, line: 28, type: !2227)
!2263 = !DILocalVariable(name: "offset", arg: 2, scope: !2224, file: !771, line: 28, type: !1889)
!2264 = !DILocalVariable(name: "whence", arg: 3, scope: !2224, file: !771, line: 28, type: !52)
!2265 = !DILocalVariable(name: "pos", scope: !2266, file: !771, line: 123, type: !1889)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !771, line: 119, column: 5)
!2267 = distinct !DILexicalBlock(scope: !2224, file: !771, line: 55, column: 7)
!2268 = !DILocation(line: 0, scope: !2224)
!2269 = !DILocation(line: 55, column: 12, scope: !2267)
!2270 = !{!1170, !856, i64 16}
!2271 = !DILocation(line: 55, column: 33, scope: !2267)
!2272 = !{!1170, !856, i64 8}
!2273 = !DILocation(line: 55, column: 25, scope: !2267)
!2274 = !DILocation(line: 56, column: 7, scope: !2267)
!2275 = !DILocation(line: 56, column: 15, scope: !2267)
!2276 = !DILocation(line: 56, column: 37, scope: !2267)
!2277 = !{!1170, !856, i64 32}
!2278 = !DILocation(line: 56, column: 29, scope: !2267)
!2279 = !DILocation(line: 57, column: 7, scope: !2267)
!2280 = !DILocation(line: 57, column: 15, scope: !2267)
!2281 = !{!1170, !856, i64 72}
!2282 = !DILocation(line: 57, column: 29, scope: !2267)
!2283 = !DILocation(line: 55, column: 7, scope: !2224)
!2284 = !DILocation(line: 123, column: 26, scope: !2266)
!2285 = !DILocation(line: 123, column: 19, scope: !2266)
!2286 = !DILocation(line: 0, scope: !2266)
!2287 = !DILocation(line: 124, column: 15, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2266, file: !771, line: 124, column: 11)
!2289 = !DILocation(line: 124, column: 11, scope: !2266)
!2290 = !DILocation(line: 135, column: 19, scope: !2266)
!2291 = !DILocation(line: 136, column: 12, scope: !2266)
!2292 = !DILocation(line: 136, column: 20, scope: !2266)
!2293 = !{!1170, !1171, i64 144}
!2294 = !DILocation(line: 167, column: 7, scope: !2266)
!2295 = !DILocation(line: 169, column: 10, scope: !2224)
!2296 = !DILocation(line: 169, column: 3, scope: !2224)
!2297 = !DILocation(line: 170, column: 1, scope: !2224)
!2298 = !DISubprogram(name: "fseeko", scope: !442, file: !442, line: 736, type: !2299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!52, !2227, !193, !52}
!2301 = distinct !DISubprogram(name: "getprogname", scope: !773, file: !773, line: 54, type: !2302, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!107}
!2304 = !DILocation(line: 58, column: 10, scope: !2301)
!2305 = !DILocation(line: 58, column: 3, scope: !2301)
!2306 = distinct !DISubprogram(name: "set_program_name", scope: !490, file: !490, line: 37, type: !869, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2307)
!2307 = !{!2308, !2309, !2310}
!2308 = !DILocalVariable(name: "argv0", arg: 1, scope: !2306, file: !490, line: 37, type: !107)
!2309 = !DILocalVariable(name: "slash", scope: !2306, file: !490, line: 44, type: !107)
!2310 = !DILocalVariable(name: "base", scope: !2306, file: !490, line: 45, type: !107)
!2311 = !DILocation(line: 0, scope: !2306)
!2312 = !DILocation(line: 44, column: 23, scope: !2306)
!2313 = !DILocation(line: 45, column: 22, scope: !2306)
!2314 = !DILocation(line: 46, column: 17, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2306, file: !490, line: 46, column: 7)
!2316 = !DILocation(line: 46, column: 9, scope: !2315)
!2317 = !DILocation(line: 46, column: 25, scope: !2315)
!2318 = !DILocation(line: 46, column: 40, scope: !2315)
!2319 = !DILocalVariable(name: "__s1", arg: 1, scope: !2320, file: !931, line: 974, type: !1063)
!2320 = distinct !DISubprogram(name: "memeq", scope: !931, file: !931, line: 974, type: !2321, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!154, !1063, !1063, !104}
!2323 = !{!2319, !2324, !2325}
!2324 = !DILocalVariable(name: "__s2", arg: 2, scope: !2320, file: !931, line: 974, type: !1063)
!2325 = !DILocalVariable(name: "__n", arg: 3, scope: !2320, file: !931, line: 974, type: !104)
!2326 = !DILocation(line: 0, scope: !2320, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 46, column: 28, scope: !2315)
!2328 = !DILocation(line: 976, column: 11, scope: !2320, inlinedAt: !2327)
!2329 = !DILocation(line: 976, column: 10, scope: !2320, inlinedAt: !2327)
!2330 = !DILocation(line: 46, column: 7, scope: !2306)
!2331 = !DILocation(line: 49, column: 11, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !490, line: 49, column: 11)
!2333 = distinct !DILexicalBlock(scope: !2315, file: !490, line: 47, column: 5)
!2334 = !DILocation(line: 49, column: 36, scope: !2332)
!2335 = !DILocation(line: 49, column: 11, scope: !2333)
!2336 = !DILocation(line: 65, column: 16, scope: !2306)
!2337 = !DILocation(line: 71, column: 27, scope: !2306)
!2338 = !DILocation(line: 74, column: 33, scope: !2306)
!2339 = !DILocation(line: 76, column: 1, scope: !2306)
!2340 = !DISubprogram(name: "strrchr", scope: !1035, file: !1035, line: 273, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2341 = distinct !DIAssignID()
!2342 = !DILocation(line: 0, scope: !499)
!2343 = distinct !DIAssignID()
!2344 = !DILocation(line: 40, column: 29, scope: !499)
!2345 = !DILocation(line: 41, column: 19, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !499, file: !500, line: 41, column: 7)
!2347 = !DILocation(line: 41, column: 7, scope: !499)
!2348 = !DILocation(line: 47, column: 3, scope: !499)
!2349 = !DILocation(line: 48, column: 3, scope: !499)
!2350 = !DILocalVariable(name: "ps", arg: 1, scope: !2351, file: !2352, line: 1135, type: !2355)
!2351 = distinct !DISubprogram(name: "mbszero", scope: !2352, file: !2352, line: 1135, type: !2353, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !2356)
!2352 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2353 = !DISubroutineType(types: !2354)
!2354 = !{null, !2355}
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!2356 = !{!2350}
!2357 = !DILocation(line: 0, scope: !2351, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 48, column: 18, scope: !499)
!2359 = !DILocalVariable(name: "__dest", arg: 1, scope: !2360, file: !2361, line: 57, type: !102)
!2360 = distinct !DISubprogram(name: "memset", scope: !2361, file: !2361, line: 57, type: !2362, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !2364)
!2361 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!102, !102, !52, !104}
!2364 = !{!2359, !2365, !2366}
!2365 = !DILocalVariable(name: "__ch", arg: 2, scope: !2360, file: !2361, line: 57, type: !52)
!2366 = !DILocalVariable(name: "__len", arg: 3, scope: !2360, file: !2361, line: 57, type: !104)
!2367 = !DILocation(line: 0, scope: !2360, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 1137, column: 3, scope: !2351, inlinedAt: !2358)
!2369 = !DILocation(line: 59, column: 10, scope: !2360, inlinedAt: !2368)
!2370 = !DILocation(line: 49, column: 7, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !499, file: !500, line: 49, column: 7)
!2372 = !DILocation(line: 49, column: 39, scope: !2371)
!2373 = !DILocation(line: 49, column: 44, scope: !2371)
!2374 = !DILocation(line: 54, column: 1, scope: !499)
!2375 = !DISubprogram(name: "mbrtoc32", scope: !511, file: !511, line: 57, type: !2376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!104, !2378, !909, !104, !2380}
!2378 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2379)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2355)
!2381 = distinct !DISubprogram(name: "clone_quoting_options", scope: !530, file: !530, line: 113, type: !2382, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !2385)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!2384, !2384}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!2385 = !{!2386, !2387, !2388}
!2386 = !DILocalVariable(name: "o", arg: 1, scope: !2381, file: !530, line: 113, type: !2384)
!2387 = !DILocalVariable(name: "saved_errno", scope: !2381, file: !530, line: 115, type: !52)
!2388 = !DILocalVariable(name: "p", scope: !2381, file: !530, line: 116, type: !2384)
!2389 = !DILocation(line: 0, scope: !2381)
!2390 = !DILocation(line: 115, column: 21, scope: !2381)
!2391 = !DILocation(line: 116, column: 40, scope: !2381)
!2392 = !DILocation(line: 116, column: 31, scope: !2381)
!2393 = !DILocation(line: 118, column: 9, scope: !2381)
!2394 = !DILocation(line: 119, column: 3, scope: !2381)
!2395 = distinct !DISubprogram(name: "get_quoting_style", scope: !530, file: !530, line: 124, type: !2396, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !2400)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!556, !2398}
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!2400 = !{!2401}
!2401 = !DILocalVariable(name: "o", arg: 1, scope: !2395, file: !530, line: 124, type: !2398)
!2402 = !DILocation(line: 0, scope: !2395)
!2403 = !DILocation(line: 126, column: 11, scope: !2395)
!2404 = !DILocation(line: 126, column: 46, scope: !2395)
!2405 = !{!2406, !919, i64 0}
!2406 = !{!"quoting_options", !919, i64 0, !919, i64 4, !857, i64 8, !856, i64 40, !856, i64 48}
!2407 = !DILocation(line: 126, column: 3, scope: !2395)
!2408 = distinct !DISubprogram(name: "set_quoting_style", scope: !530, file: !530, line: 132, type: !2409, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{null, !2384, !556}
!2411 = !{!2412, !2413}
!2412 = !DILocalVariable(name: "o", arg: 1, scope: !2408, file: !530, line: 132, type: !2384)
!2413 = !DILocalVariable(name: "s", arg: 2, scope: !2408, file: !530, line: 132, type: !556)
!2414 = !DILocation(line: 0, scope: !2408)
!2415 = !DILocation(line: 134, column: 4, scope: !2408)
!2416 = !DILocation(line: 134, column: 45, scope: !2408)
!2417 = !DILocation(line: 135, column: 1, scope: !2408)
!2418 = distinct !DISubprogram(name: "set_char_quoting", scope: !530, file: !530, line: 143, type: !2419, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !2421)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!52, !2384, !4, !52}
!2421 = !{!2422, !2423, !2424, !2425, !2426, !2428, !2429}
!2422 = !DILocalVariable(name: "o", arg: 1, scope: !2418, file: !530, line: 143, type: !2384)
!2423 = !DILocalVariable(name: "c", arg: 2, scope: !2418, file: !530, line: 143, type: !4)
!2424 = !DILocalVariable(name: "i", arg: 3, scope: !2418, file: !530, line: 143, type: !52)
!2425 = !DILocalVariable(name: "uc", scope: !2418, file: !530, line: 145, type: !109)
!2426 = !DILocalVariable(name: "p", scope: !2418, file: !530, line: 146, type: !2427)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!2428 = !DILocalVariable(name: "shift", scope: !2418, file: !530, line: 148, type: !52)
!2429 = !DILocalVariable(name: "r", scope: !2418, file: !530, line: 149, type: !64)
!2430 = !DILocation(line: 0, scope: !2418)
!2431 = !DILocation(line: 147, column: 6, scope: !2418)
!2432 = !DILocation(line: 147, column: 41, scope: !2418)
!2433 = !DILocation(line: 147, column: 62, scope: !2418)
!2434 = !DILocation(line: 147, column: 57, scope: !2418)
!2435 = !DILocation(line: 148, column: 15, scope: !2418)
!2436 = !DILocation(line: 149, column: 21, scope: !2418)
!2437 = !DILocation(line: 149, column: 24, scope: !2418)
!2438 = !DILocation(line: 149, column: 34, scope: !2418)
!2439 = !DILocation(line: 150, column: 19, scope: !2418)
!2440 = !DILocation(line: 150, column: 24, scope: !2418)
!2441 = !DILocation(line: 150, column: 6, scope: !2418)
!2442 = !DILocation(line: 151, column: 3, scope: !2418)
!2443 = distinct !DISubprogram(name: "set_quoting_flags", scope: !530, file: !530, line: 159, type: !2444, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !2446)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!52, !2384, !52}
!2446 = !{!2447, !2448, !2449}
!2447 = !DILocalVariable(name: "o", arg: 1, scope: !2443, file: !530, line: 159, type: !2384)
!2448 = !DILocalVariable(name: "i", arg: 2, scope: !2443, file: !530, line: 159, type: !52)
!2449 = !DILocalVariable(name: "r", scope: !2443, file: !530, line: 163, type: !52)
!2450 = !DILocation(line: 0, scope: !2443)
!2451 = !DILocation(line: 161, column: 8, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2443, file: !530, line: 161, column: 7)
!2453 = !DILocation(line: 161, column: 7, scope: !2443)
!2454 = !DILocation(line: 163, column: 14, scope: !2443)
!2455 = !{!2406, !919, i64 4}
!2456 = !DILocation(line: 164, column: 12, scope: !2443)
!2457 = !DILocation(line: 165, column: 3, scope: !2443)
!2458 = distinct !DISubprogram(name: "set_custom_quoting", scope: !530, file: !530, line: 169, type: !2459, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !2461)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{null, !2384, !107, !107}
!2461 = !{!2462, !2463, !2464}
!2462 = !DILocalVariable(name: "o", arg: 1, scope: !2458, file: !530, line: 169, type: !2384)
!2463 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2458, file: !530, line: 170, type: !107)
!2464 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2458, file: !530, line: 170, type: !107)
!2465 = !DILocation(line: 0, scope: !2458)
!2466 = !DILocation(line: 172, column: 8, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2458, file: !530, line: 172, column: 7)
!2468 = !DILocation(line: 172, column: 7, scope: !2458)
!2469 = !DILocation(line: 174, column: 12, scope: !2458)
!2470 = !DILocation(line: 175, column: 8, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2458, file: !530, line: 175, column: 7)
!2472 = !DILocation(line: 175, column: 19, scope: !2471)
!2473 = !DILocation(line: 176, column: 5, scope: !2471)
!2474 = !DILocation(line: 177, column: 6, scope: !2458)
!2475 = !DILocation(line: 177, column: 17, scope: !2458)
!2476 = !{!2406, !856, i64 40}
!2477 = !DILocation(line: 178, column: 6, scope: !2458)
!2478 = !DILocation(line: 178, column: 18, scope: !2458)
!2479 = !{!2406, !856, i64 48}
!2480 = !DILocation(line: 179, column: 1, scope: !2458)
!2481 = !DISubprogram(name: "abort", scope: !1039, file: !1039, line: 598, type: !482, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2482 = distinct !DISubprogram(name: "quotearg_buffer", scope: !530, file: !530, line: 774, type: !2483, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !2485)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!104, !54, !104, !107, !104, !2398}
!2485 = !{!2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493}
!2486 = !DILocalVariable(name: "buffer", arg: 1, scope: !2482, file: !530, line: 774, type: !54)
!2487 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2482, file: !530, line: 774, type: !104)
!2488 = !DILocalVariable(name: "arg", arg: 3, scope: !2482, file: !530, line: 775, type: !107)
!2489 = !DILocalVariable(name: "argsize", arg: 4, scope: !2482, file: !530, line: 775, type: !104)
!2490 = !DILocalVariable(name: "o", arg: 5, scope: !2482, file: !530, line: 776, type: !2398)
!2491 = !DILocalVariable(name: "p", scope: !2482, file: !530, line: 778, type: !2398)
!2492 = !DILocalVariable(name: "saved_errno", scope: !2482, file: !530, line: 779, type: !52)
!2493 = !DILocalVariable(name: "r", scope: !2482, file: !530, line: 780, type: !104)
!2494 = !DILocation(line: 0, scope: !2482)
!2495 = !DILocation(line: 778, column: 37, scope: !2482)
!2496 = !DILocation(line: 779, column: 21, scope: !2482)
!2497 = !DILocation(line: 781, column: 43, scope: !2482)
!2498 = !DILocation(line: 781, column: 53, scope: !2482)
!2499 = !DILocation(line: 781, column: 63, scope: !2482)
!2500 = !DILocation(line: 782, column: 43, scope: !2482)
!2501 = !DILocation(line: 782, column: 58, scope: !2482)
!2502 = !DILocation(line: 780, column: 14, scope: !2482)
!2503 = !DILocation(line: 783, column: 9, scope: !2482)
!2504 = !DILocation(line: 784, column: 3, scope: !2482)
!2505 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !530, file: !530, line: 251, type: !2506, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !2510)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!104, !54, !104, !107, !104, !556, !52, !2508, !107, !107}
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!2510 = !{!2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2536, !2538, !2541, !2542, !2543, !2544, !2547, !2548, !2550, !2551, !2554, !2558, !2559, !2567, !2570, !2571, !2572}
!2511 = !DILocalVariable(name: "buffer", arg: 1, scope: !2505, file: !530, line: 251, type: !54)
!2512 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2505, file: !530, line: 251, type: !104)
!2513 = !DILocalVariable(name: "arg", arg: 3, scope: !2505, file: !530, line: 252, type: !107)
!2514 = !DILocalVariable(name: "argsize", arg: 4, scope: !2505, file: !530, line: 252, type: !104)
!2515 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2505, file: !530, line: 253, type: !556)
!2516 = !DILocalVariable(name: "flags", arg: 6, scope: !2505, file: !530, line: 253, type: !52)
!2517 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2505, file: !530, line: 254, type: !2508)
!2518 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2505, file: !530, line: 255, type: !107)
!2519 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2505, file: !530, line: 256, type: !107)
!2520 = !DILocalVariable(name: "unibyte_locale", scope: !2505, file: !530, line: 258, type: !154)
!2521 = !DILocalVariable(name: "len", scope: !2505, file: !530, line: 260, type: !104)
!2522 = !DILocalVariable(name: "orig_buffersize", scope: !2505, file: !530, line: 261, type: !104)
!2523 = !DILocalVariable(name: "quote_string", scope: !2505, file: !530, line: 262, type: !107)
!2524 = !DILocalVariable(name: "quote_string_len", scope: !2505, file: !530, line: 263, type: !104)
!2525 = !DILocalVariable(name: "backslash_escapes", scope: !2505, file: !530, line: 264, type: !154)
!2526 = !DILocalVariable(name: "elide_outer_quotes", scope: !2505, file: !530, line: 265, type: !154)
!2527 = !DILocalVariable(name: "encountered_single_quote", scope: !2505, file: !530, line: 266, type: !154)
!2528 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2505, file: !530, line: 267, type: !154)
!2529 = !DILabel(scope: !2505, name: "process_input", file: !530, line: 308)
!2530 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2505, file: !530, line: 309, type: !154)
!2531 = !DILocalVariable(name: "lq", scope: !2532, file: !530, line: 361, type: !107)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !530, line: 361, column: 11)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !530, line: 360, column: 13)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !530, line: 333, column: 7)
!2535 = distinct !DILexicalBlock(scope: !2505, file: !530, line: 312, column: 5)
!2536 = !DILocalVariable(name: "i", scope: !2537, file: !530, line: 395, type: !104)
!2537 = distinct !DILexicalBlock(scope: !2505, file: !530, line: 395, column: 3)
!2538 = !DILocalVariable(name: "is_right_quote", scope: !2539, file: !530, line: 397, type: !154)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !530, line: 396, column: 5)
!2540 = distinct !DILexicalBlock(scope: !2537, file: !530, line: 395, column: 3)
!2541 = !DILocalVariable(name: "escaping", scope: !2539, file: !530, line: 398, type: !154)
!2542 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2539, file: !530, line: 399, type: !154)
!2543 = !DILocalVariable(name: "c", scope: !2539, file: !530, line: 417, type: !109)
!2544 = !DILabel(scope: !2545, name: "c_and_shell_escape", file: !530, line: 502)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !530, line: 478, column: 9)
!2546 = distinct !DILexicalBlock(scope: !2539, file: !530, line: 419, column: 9)
!2547 = !DILabel(scope: !2545, name: "c_escape", file: !530, line: 507)
!2548 = !DILocalVariable(name: "m", scope: !2549, file: !530, line: 598, type: !104)
!2549 = distinct !DILexicalBlock(scope: !2546, file: !530, line: 596, column: 11)
!2550 = !DILocalVariable(name: "printable", scope: !2549, file: !530, line: 600, type: !154)
!2551 = !DILocalVariable(name: "mbs", scope: !2552, file: !530, line: 609, type: !605)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !530, line: 608, column: 15)
!2553 = distinct !DILexicalBlock(scope: !2549, file: !530, line: 602, column: 17)
!2554 = !DILocalVariable(name: "w", scope: !2555, file: !530, line: 618, type: !510)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !530, line: 617, column: 19)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !530, line: 616, column: 17)
!2557 = distinct !DILexicalBlock(scope: !2552, file: !530, line: 616, column: 17)
!2558 = !DILocalVariable(name: "bytes", scope: !2555, file: !530, line: 619, type: !104)
!2559 = !DILocalVariable(name: "j", scope: !2560, file: !530, line: 648, type: !104)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !530, line: 648, column: 29)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !530, line: 647, column: 27)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !530, line: 645, column: 29)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !530, line: 636, column: 23)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !530, line: 628, column: 30)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !530, line: 623, column: 30)
!2566 = distinct !DILexicalBlock(scope: !2555, file: !530, line: 621, column: 25)
!2567 = !DILocalVariable(name: "ilim", scope: !2568, file: !530, line: 674, type: !104)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !530, line: 671, column: 15)
!2569 = distinct !DILexicalBlock(scope: !2549, file: !530, line: 670, column: 17)
!2570 = !DILabel(scope: !2539, name: "store_escape", file: !530, line: 709)
!2571 = !DILabel(scope: !2539, name: "store_c", file: !530, line: 712)
!2572 = !DILabel(scope: !2505, name: "force_outer_quoting_style", file: !530, line: 753)
!2573 = distinct !DIAssignID()
!2574 = distinct !DIAssignID()
!2575 = distinct !DIAssignID()
!2576 = distinct !DIAssignID()
!2577 = distinct !DIAssignID()
!2578 = !DILocation(line: 0, scope: !2552)
!2579 = distinct !DIAssignID()
!2580 = !DILocation(line: 0, scope: !2555)
!2581 = !DILocation(line: 0, scope: !2505)
!2582 = !DILocation(line: 258, column: 25, scope: !2505)
!2583 = !DILocation(line: 258, column: 36, scope: !2505)
!2584 = !DILocation(line: 267, column: 3, scope: !2505)
!2585 = !DILocation(line: 261, column: 10, scope: !2505)
!2586 = !DILocation(line: 262, column: 15, scope: !2505)
!2587 = !DILocation(line: 263, column: 10, scope: !2505)
!2588 = !DILocation(line: 308, column: 2, scope: !2505)
!2589 = !DILocation(line: 311, column: 3, scope: !2505)
!2590 = !DILocation(line: 318, column: 11, scope: !2535)
!2591 = !DILocation(line: 319, column: 9, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !530, line: 319, column: 9)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !530, line: 319, column: 9)
!2594 = distinct !DILexicalBlock(scope: !2535, file: !530, line: 318, column: 11)
!2595 = !DILocation(line: 319, column: 9, scope: !2593)
!2596 = !DILocation(line: 0, scope: !596, inlinedAt: !2597)
!2597 = distinct !DILocation(line: 357, column: 26, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !530, line: 335, column: 11)
!2599 = distinct !DILexicalBlock(scope: !2534, file: !530, line: 334, column: 13)
!2600 = !DILocation(line: 199, column: 29, scope: !596, inlinedAt: !2597)
!2601 = !DILocation(line: 201, column: 19, scope: !2602, inlinedAt: !2597)
!2602 = distinct !DILexicalBlock(scope: !596, file: !530, line: 201, column: 7)
!2603 = !DILocation(line: 201, column: 7, scope: !596, inlinedAt: !2597)
!2604 = !DILocation(line: 229, column: 3, scope: !596, inlinedAt: !2597)
!2605 = !DILocation(line: 230, column: 3, scope: !596, inlinedAt: !2597)
!2606 = !DILocalVariable(name: "ps", arg: 1, scope: !2607, file: !2352, line: 1135, type: !2610)
!2607 = distinct !DISubprogram(name: "mbszero", scope: !2352, file: !2352, line: 1135, type: !2608, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !2611)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{null, !2610}
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!2611 = !{!2606}
!2612 = !DILocation(line: 0, scope: !2607, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 230, column: 18, scope: !596, inlinedAt: !2597)
!2614 = !DILocalVariable(name: "__dest", arg: 1, scope: !2615, file: !2361, line: 57, type: !102)
!2615 = distinct !DISubprogram(name: "memset", scope: !2361, file: !2361, line: 57, type: !2362, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !2616)
!2616 = !{!2614, !2617, !2618}
!2617 = !DILocalVariable(name: "__ch", arg: 2, scope: !2615, file: !2361, line: 57, type: !52)
!2618 = !DILocalVariable(name: "__len", arg: 3, scope: !2615, file: !2361, line: 57, type: !104)
!2619 = !DILocation(line: 0, scope: !2615, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 1137, column: 3, scope: !2607, inlinedAt: !2613)
!2621 = !DILocation(line: 59, column: 10, scope: !2615, inlinedAt: !2620)
!2622 = !DILocation(line: 231, column: 7, scope: !2623, inlinedAt: !2597)
!2623 = distinct !DILexicalBlock(scope: !596, file: !530, line: 231, column: 7)
!2624 = !DILocation(line: 231, column: 40, scope: !2623, inlinedAt: !2597)
!2625 = !DILocation(line: 231, column: 45, scope: !2623, inlinedAt: !2597)
!2626 = !DILocation(line: 235, column: 1, scope: !596, inlinedAt: !2597)
!2627 = !DILocation(line: 0, scope: !596, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 358, column: 27, scope: !2598)
!2629 = !DILocation(line: 199, column: 29, scope: !596, inlinedAt: !2628)
!2630 = !DILocation(line: 201, column: 19, scope: !2602, inlinedAt: !2628)
!2631 = !DILocation(line: 201, column: 7, scope: !596, inlinedAt: !2628)
!2632 = !DILocation(line: 229, column: 3, scope: !596, inlinedAt: !2628)
!2633 = !DILocation(line: 230, column: 3, scope: !596, inlinedAt: !2628)
!2634 = !DILocation(line: 0, scope: !2607, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 230, column: 18, scope: !596, inlinedAt: !2628)
!2636 = !DILocation(line: 0, scope: !2615, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 1137, column: 3, scope: !2607, inlinedAt: !2635)
!2638 = !DILocation(line: 59, column: 10, scope: !2615, inlinedAt: !2637)
!2639 = !DILocation(line: 231, column: 7, scope: !2623, inlinedAt: !2628)
!2640 = !DILocation(line: 231, column: 40, scope: !2623, inlinedAt: !2628)
!2641 = !DILocation(line: 231, column: 45, scope: !2623, inlinedAt: !2628)
!2642 = !DILocation(line: 235, column: 1, scope: !596, inlinedAt: !2628)
!2643 = !DILocation(line: 360, column: 13, scope: !2534)
!2644 = !DILocation(line: 0, scope: !2532)
!2645 = !DILocation(line: 361, column: 45, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2532, file: !530, line: 361, column: 11)
!2647 = !DILocation(line: 361, column: 11, scope: !2532)
!2648 = !DILocation(line: 362, column: 13, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !530, line: 362, column: 13)
!2650 = distinct !DILexicalBlock(scope: !2646, file: !530, line: 362, column: 13)
!2651 = !DILocation(line: 362, column: 13, scope: !2650)
!2652 = !DILocation(line: 361, column: 52, scope: !2646)
!2653 = distinct !{!2653, !2647, !2654, !965}
!2654 = !DILocation(line: 362, column: 13, scope: !2532)
!2655 = !DILocation(line: 365, column: 28, scope: !2534)
!2656 = !DILocation(line: 260, column: 10, scope: !2505)
!2657 = !DILocation(line: 367, column: 7, scope: !2535)
!2658 = !DILocation(line: 373, column: 7, scope: !2535)
!2659 = !DILocation(line: 381, column: 11, scope: !2535)
!2660 = !DILocation(line: 376, column: 11, scope: !2535)
!2661 = !DILocation(line: 382, column: 9, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !530, line: 382, column: 9)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !530, line: 382, column: 9)
!2664 = distinct !DILexicalBlock(scope: !2535, file: !530, line: 381, column: 11)
!2665 = !DILocation(line: 382, column: 9, scope: !2663)
!2666 = !DILocation(line: 389, column: 7, scope: !2535)
!2667 = !DILocation(line: 392, column: 7, scope: !2535)
!2668 = !DILocation(line: 0, scope: !2537)
!2669 = !DILocation(line: 395, column: 8, scope: !2537)
!2670 = !DILocation(line: 395, scope: !2537)
!2671 = !DILocation(line: 395, column: 34, scope: !2540)
!2672 = !DILocation(line: 395, column: 26, scope: !2540)
!2673 = !DILocation(line: 395, column: 48, scope: !2540)
!2674 = !DILocation(line: 395, column: 55, scope: !2540)
!2675 = !DILocation(line: 395, column: 3, scope: !2537)
!2676 = !DILocation(line: 395, column: 67, scope: !2540)
!2677 = !DILocation(line: 0, scope: !2539)
!2678 = !DILocation(line: 402, column: 11, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2539, file: !530, line: 401, column: 11)
!2680 = !DILocation(line: 404, column: 17, scope: !2679)
!2681 = !DILocation(line: 405, column: 39, scope: !2679)
!2682 = !DILocation(line: 409, column: 32, scope: !2679)
!2683 = !DILocation(line: 405, column: 19, scope: !2679)
!2684 = !DILocation(line: 405, column: 15, scope: !2679)
!2685 = !DILocation(line: 410, column: 11, scope: !2679)
!2686 = !DILocation(line: 410, column: 25, scope: !2679)
!2687 = !DILocalVariable(name: "__s1", arg: 1, scope: !2688, file: !931, line: 974, type: !1063)
!2688 = distinct !DISubprogram(name: "memeq", scope: !931, file: !931, line: 974, type: !2321, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !2689)
!2689 = !{!2687, !2690, !2691}
!2690 = !DILocalVariable(name: "__s2", arg: 2, scope: !2688, file: !931, line: 974, type: !1063)
!2691 = !DILocalVariable(name: "__n", arg: 3, scope: !2688, file: !931, line: 974, type: !104)
!2692 = !DILocation(line: 0, scope: !2688, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 410, column: 14, scope: !2679)
!2694 = !DILocation(line: 976, column: 11, scope: !2688, inlinedAt: !2693)
!2695 = !DILocation(line: 976, column: 10, scope: !2688, inlinedAt: !2693)
!2696 = !DILocation(line: 401, column: 11, scope: !2539)
!2697 = !DILocation(line: 417, column: 25, scope: !2539)
!2698 = !DILocation(line: 418, column: 7, scope: !2539)
!2699 = !DILocation(line: 421, column: 15, scope: !2546)
!2700 = !DILocation(line: 423, column: 15, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !530, line: 423, column: 15)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !530, line: 422, column: 13)
!2703 = distinct !DILexicalBlock(scope: !2546, file: !530, line: 421, column: 15)
!2704 = !DILocation(line: 423, column: 15, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2701, file: !530, line: 423, column: 15)
!2706 = !DILocation(line: 423, column: 15, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !530, line: 423, column: 15)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !530, line: 423, column: 15)
!2709 = distinct !DILexicalBlock(scope: !2705, file: !530, line: 423, column: 15)
!2710 = !DILocation(line: 423, column: 15, scope: !2708)
!2711 = !DILocation(line: 423, column: 15, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !530, line: 423, column: 15)
!2713 = distinct !DILexicalBlock(scope: !2709, file: !530, line: 423, column: 15)
!2714 = !DILocation(line: 423, column: 15, scope: !2713)
!2715 = !DILocation(line: 423, column: 15, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !530, line: 423, column: 15)
!2717 = distinct !DILexicalBlock(scope: !2709, file: !530, line: 423, column: 15)
!2718 = !DILocation(line: 423, column: 15, scope: !2717)
!2719 = !DILocation(line: 423, column: 15, scope: !2709)
!2720 = !DILocation(line: 423, column: 15, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !530, line: 423, column: 15)
!2722 = distinct !DILexicalBlock(scope: !2701, file: !530, line: 423, column: 15)
!2723 = !DILocation(line: 423, column: 15, scope: !2722)
!2724 = !DILocation(line: 431, column: 19, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2702, file: !530, line: 430, column: 19)
!2726 = !DILocation(line: 431, column: 24, scope: !2725)
!2727 = !DILocation(line: 431, column: 28, scope: !2725)
!2728 = !DILocation(line: 431, column: 38, scope: !2725)
!2729 = !DILocation(line: 431, column: 48, scope: !2725)
!2730 = !DILocation(line: 431, column: 59, scope: !2725)
!2731 = !DILocation(line: 433, column: 19, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !530, line: 433, column: 19)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !530, line: 433, column: 19)
!2734 = distinct !DILexicalBlock(scope: !2725, file: !530, line: 432, column: 17)
!2735 = !DILocation(line: 433, column: 19, scope: !2733)
!2736 = !DILocation(line: 434, column: 19, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !530, line: 434, column: 19)
!2738 = distinct !DILexicalBlock(scope: !2734, file: !530, line: 434, column: 19)
!2739 = !DILocation(line: 434, column: 19, scope: !2738)
!2740 = !DILocation(line: 435, column: 17, scope: !2734)
!2741 = !DILocation(line: 442, column: 20, scope: !2703)
!2742 = !DILocation(line: 447, column: 11, scope: !2546)
!2743 = !DILocation(line: 450, column: 19, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2546, file: !530, line: 448, column: 13)
!2745 = !DILocation(line: 456, column: 19, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2744, file: !530, line: 455, column: 19)
!2747 = !DILocation(line: 456, column: 24, scope: !2746)
!2748 = !DILocation(line: 456, column: 28, scope: !2746)
!2749 = !DILocation(line: 456, column: 38, scope: !2746)
!2750 = !DILocation(line: 456, column: 41, scope: !2746)
!2751 = !DILocation(line: 456, column: 52, scope: !2746)
!2752 = !DILocation(line: 455, column: 19, scope: !2744)
!2753 = !DILocation(line: 457, column: 25, scope: !2746)
!2754 = !DILocation(line: 457, column: 17, scope: !2746)
!2755 = !DILocation(line: 464, column: 25, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2746, file: !530, line: 458, column: 19)
!2757 = !DILocation(line: 468, column: 21, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !530, line: 468, column: 21)
!2759 = distinct !DILexicalBlock(scope: !2756, file: !530, line: 468, column: 21)
!2760 = !DILocation(line: 468, column: 21, scope: !2759)
!2761 = !DILocation(line: 469, column: 21, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !530, line: 469, column: 21)
!2763 = distinct !DILexicalBlock(scope: !2756, file: !530, line: 469, column: 21)
!2764 = !DILocation(line: 469, column: 21, scope: !2763)
!2765 = !DILocation(line: 470, column: 21, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !530, line: 470, column: 21)
!2767 = distinct !DILexicalBlock(scope: !2756, file: !530, line: 470, column: 21)
!2768 = !DILocation(line: 470, column: 21, scope: !2767)
!2769 = !DILocation(line: 471, column: 21, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !530, line: 471, column: 21)
!2771 = distinct !DILexicalBlock(scope: !2756, file: !530, line: 471, column: 21)
!2772 = !DILocation(line: 471, column: 21, scope: !2771)
!2773 = !DILocation(line: 472, column: 21, scope: !2756)
!2774 = !DILocation(line: 482, column: 33, scope: !2545)
!2775 = !DILocation(line: 483, column: 33, scope: !2545)
!2776 = !DILocation(line: 485, column: 33, scope: !2545)
!2777 = !DILocation(line: 486, column: 33, scope: !2545)
!2778 = !DILocation(line: 487, column: 33, scope: !2545)
!2779 = !DILocation(line: 490, column: 17, scope: !2545)
!2780 = !DILocation(line: 492, column: 21, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !530, line: 491, column: 15)
!2782 = distinct !DILexicalBlock(scope: !2545, file: !530, line: 490, column: 17)
!2783 = !DILocation(line: 499, column: 35, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2545, file: !530, line: 499, column: 17)
!2785 = !DILocation(line: 0, scope: !2545)
!2786 = !DILocation(line: 502, column: 11, scope: !2545)
!2787 = !DILocation(line: 504, column: 17, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2545, file: !530, line: 503, column: 17)
!2789 = !DILocation(line: 507, column: 11, scope: !2545)
!2790 = !DILocation(line: 508, column: 17, scope: !2545)
!2791 = !DILocation(line: 517, column: 15, scope: !2546)
!2792 = !DILocation(line: 517, column: 40, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2546, file: !530, line: 517, column: 15)
!2794 = !DILocation(line: 517, column: 47, scope: !2793)
!2795 = !DILocation(line: 517, column: 18, scope: !2793)
!2796 = !DILocation(line: 521, column: 17, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2546, file: !530, line: 521, column: 15)
!2798 = !DILocation(line: 521, column: 15, scope: !2546)
!2799 = !DILocation(line: 525, column: 11, scope: !2546)
!2800 = !DILocation(line: 537, column: 15, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2546, file: !530, line: 536, column: 15)
!2802 = !DILocation(line: 536, column: 15, scope: !2546)
!2803 = !DILocation(line: 544, column: 15, scope: !2546)
!2804 = !DILocation(line: 546, column: 19, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !530, line: 545, column: 13)
!2806 = distinct !DILexicalBlock(scope: !2546, file: !530, line: 544, column: 15)
!2807 = !DILocation(line: 549, column: 19, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2805, file: !530, line: 549, column: 19)
!2809 = !DILocation(line: 549, column: 30, scope: !2808)
!2810 = !DILocation(line: 558, column: 15, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !530, line: 558, column: 15)
!2812 = distinct !DILexicalBlock(scope: !2805, file: !530, line: 558, column: 15)
!2813 = !DILocation(line: 558, column: 15, scope: !2812)
!2814 = !DILocation(line: 559, column: 15, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !530, line: 559, column: 15)
!2816 = distinct !DILexicalBlock(scope: !2805, file: !530, line: 559, column: 15)
!2817 = !DILocation(line: 559, column: 15, scope: !2816)
!2818 = !DILocation(line: 560, column: 15, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !530, line: 560, column: 15)
!2820 = distinct !DILexicalBlock(scope: !2805, file: !530, line: 560, column: 15)
!2821 = !DILocation(line: 560, column: 15, scope: !2820)
!2822 = !DILocation(line: 562, column: 13, scope: !2805)
!2823 = !DILocation(line: 602, column: 17, scope: !2549)
!2824 = !DILocation(line: 0, scope: !2549)
!2825 = !DILocation(line: 605, column: 29, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2553, file: !530, line: 603, column: 15)
!2827 = !DILocation(line: 605, column: 41, scope: !2826)
!2828 = !DILocation(line: 606, column: 15, scope: !2826)
!2829 = !DILocation(line: 609, column: 17, scope: !2552)
!2830 = !DILocation(line: 0, scope: !2607, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 609, column: 32, scope: !2552)
!2832 = !DILocation(line: 0, scope: !2615, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 1137, column: 3, scope: !2607, inlinedAt: !2831)
!2834 = !DILocation(line: 59, column: 10, scope: !2615, inlinedAt: !2833)
!2835 = !DILocation(line: 613, column: 29, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2552, file: !530, line: 613, column: 21)
!2837 = !DILocation(line: 613, column: 21, scope: !2552)
!2838 = !DILocation(line: 614, column: 29, scope: !2836)
!2839 = !DILocation(line: 614, column: 19, scope: !2836)
!2840 = !DILocation(line: 618, column: 21, scope: !2555)
!2841 = !DILocation(line: 620, column: 54, scope: !2555)
!2842 = !DILocation(line: 619, column: 36, scope: !2555)
!2843 = !DILocation(line: 621, column: 25, scope: !2555)
!2844 = !DILocation(line: 631, column: 38, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2564, file: !530, line: 629, column: 23)
!2846 = !DILocation(line: 631, column: 48, scope: !2845)
!2847 = !DILocation(line: 631, column: 25, scope: !2845)
!2848 = !DILocation(line: 626, column: 25, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2565, file: !530, line: 624, column: 23)
!2850 = !DILocation(line: 631, column: 51, scope: !2845)
!2851 = !DILocation(line: 632, column: 28, scope: !2845)
!2852 = !DILocation(line: 631, column: 34, scope: !2845)
!2853 = distinct !{!2853, !2847, !2851, !965}
!2854 = !DILocation(line: 0, scope: !2560)
!2855 = !DILocation(line: 646, column: 29, scope: !2562)
!2856 = !DILocation(line: 648, column: 29, scope: !2560)
!2857 = !DILocation(line: 649, column: 39, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2560, file: !530, line: 648, column: 29)
!2859 = !DILocation(line: 649, column: 31, scope: !2858)
!2860 = !DILocation(line: 648, column: 60, scope: !2858)
!2861 = !DILocation(line: 648, column: 50, scope: !2858)
!2862 = distinct !{!2862, !2856, !2863, !965}
!2863 = !DILocation(line: 654, column: 33, scope: !2560)
!2864 = !DILocation(line: 657, column: 43, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2563, file: !530, line: 657, column: 29)
!2866 = !DILocalVariable(name: "wc", arg: 1, scope: !2867, file: !2868, line: 865, type: !2871)
!2867 = distinct !DISubprogram(name: "c32isprint", scope: !2868, file: !2868, line: 865, type: !2869, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !2873)
!2868 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!52, !2871}
!2871 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2872, line: 20, baseType: !64)
!2872 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2873 = !{!2866}
!2874 = !DILocation(line: 0, scope: !2867, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 657, column: 31, scope: !2865)
!2876 = !DILocation(line: 871, column: 10, scope: !2867, inlinedAt: !2875)
!2877 = !DILocation(line: 657, column: 31, scope: !2865)
!2878 = !DILocation(line: 664, column: 23, scope: !2555)
!2879 = !DILocation(line: 665, column: 19, scope: !2556)
!2880 = !DILocation(line: 666, column: 15, scope: !2553)
!2881 = !DILocation(line: 753, column: 2, scope: !2505)
!2882 = !DILocation(line: 756, column: 51, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2505, file: !530, line: 756, column: 7)
!2884 = !DILocation(line: 0, scope: !2553)
!2885 = !DILocation(line: 670, column: 19, scope: !2569)
!2886 = !DILocation(line: 670, column: 23, scope: !2569)
!2887 = !DILocation(line: 674, column: 33, scope: !2568)
!2888 = !DILocation(line: 0, scope: !2568)
!2889 = !DILocation(line: 676, column: 17, scope: !2568)
!2890 = !DILocation(line: 678, column: 43, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !530, line: 678, column: 25)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !530, line: 677, column: 19)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !530, line: 676, column: 17)
!2894 = distinct !DILexicalBlock(scope: !2568, file: !530, line: 676, column: 17)
!2895 = !DILocation(line: 680, column: 25, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !530, line: 680, column: 25)
!2897 = distinct !DILexicalBlock(scope: !2891, file: !530, line: 679, column: 23)
!2898 = !DILocation(line: 680, column: 25, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2896, file: !530, line: 680, column: 25)
!2900 = !DILocation(line: 680, column: 25, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !530, line: 680, column: 25)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !530, line: 680, column: 25)
!2903 = distinct !DILexicalBlock(scope: !2899, file: !530, line: 680, column: 25)
!2904 = !DILocation(line: 680, column: 25, scope: !2902)
!2905 = !DILocation(line: 680, column: 25, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !530, line: 680, column: 25)
!2907 = distinct !DILexicalBlock(scope: !2903, file: !530, line: 680, column: 25)
!2908 = !DILocation(line: 680, column: 25, scope: !2907)
!2909 = !DILocation(line: 680, column: 25, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !530, line: 680, column: 25)
!2911 = distinct !DILexicalBlock(scope: !2903, file: !530, line: 680, column: 25)
!2912 = !DILocation(line: 680, column: 25, scope: !2911)
!2913 = !DILocation(line: 680, column: 25, scope: !2903)
!2914 = !DILocation(line: 680, column: 25, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !530, line: 680, column: 25)
!2916 = distinct !DILexicalBlock(scope: !2896, file: !530, line: 680, column: 25)
!2917 = !DILocation(line: 680, column: 25, scope: !2916)
!2918 = !DILocation(line: 681, column: 25, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !530, line: 681, column: 25)
!2920 = distinct !DILexicalBlock(scope: !2897, file: !530, line: 681, column: 25)
!2921 = !DILocation(line: 681, column: 25, scope: !2920)
!2922 = !DILocation(line: 682, column: 25, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !530, line: 682, column: 25)
!2924 = distinct !DILexicalBlock(scope: !2897, file: !530, line: 682, column: 25)
!2925 = !DILocation(line: 682, column: 25, scope: !2924)
!2926 = !DILocation(line: 683, column: 38, scope: !2897)
!2927 = !DILocation(line: 683, column: 33, scope: !2897)
!2928 = !DILocation(line: 684, column: 23, scope: !2897)
!2929 = !DILocation(line: 685, column: 30, scope: !2891)
!2930 = !DILocation(line: 687, column: 25, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !530, line: 687, column: 25)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !530, line: 687, column: 25)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !530, line: 686, column: 23)
!2934 = distinct !DILexicalBlock(scope: !2891, file: !530, line: 685, column: 30)
!2935 = !DILocation(line: 687, column: 25, scope: !2932)
!2936 = !DILocation(line: 689, column: 23, scope: !2933)
!2937 = !DILocation(line: 690, column: 35, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2892, file: !530, line: 690, column: 25)
!2939 = !DILocation(line: 690, column: 30, scope: !2938)
!2940 = !DILocation(line: 690, column: 25, scope: !2892)
!2941 = !DILocation(line: 692, column: 21, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !530, line: 692, column: 21)
!2943 = distinct !DILexicalBlock(scope: !2892, file: !530, line: 692, column: 21)
!2944 = !DILocation(line: 692, column: 21, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !530, line: 692, column: 21)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !530, line: 692, column: 21)
!2947 = distinct !DILexicalBlock(scope: !2942, file: !530, line: 692, column: 21)
!2948 = !DILocation(line: 692, column: 21, scope: !2946)
!2949 = !DILocation(line: 692, column: 21, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !530, line: 692, column: 21)
!2951 = distinct !DILexicalBlock(scope: !2947, file: !530, line: 692, column: 21)
!2952 = !DILocation(line: 692, column: 21, scope: !2951)
!2953 = !DILocation(line: 692, column: 21, scope: !2947)
!2954 = !DILocation(line: 0, scope: !2892)
!2955 = !DILocation(line: 693, column: 21, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !530, line: 693, column: 21)
!2957 = distinct !DILexicalBlock(scope: !2892, file: !530, line: 693, column: 21)
!2958 = !DILocation(line: 693, column: 21, scope: !2957)
!2959 = !DILocation(line: 694, column: 25, scope: !2892)
!2960 = !DILocation(line: 676, column: 17, scope: !2893)
!2961 = distinct !{!2961, !2962, !2963}
!2962 = !DILocation(line: 676, column: 17, scope: !2894)
!2963 = !DILocation(line: 695, column: 19, scope: !2894)
!2964 = !DILocation(line: 409, column: 30, scope: !2679)
!2965 = !DILocation(line: 702, column: 34, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2539, file: !530, line: 702, column: 11)
!2967 = !DILocation(line: 704, column: 14, scope: !2966)
!2968 = !DILocation(line: 705, column: 14, scope: !2966)
!2969 = !DILocation(line: 705, column: 35, scope: !2966)
!2970 = !DILocation(line: 705, column: 17, scope: !2966)
!2971 = !DILocation(line: 705, column: 47, scope: !2966)
!2972 = !DILocation(line: 705, column: 65, scope: !2966)
!2973 = !DILocation(line: 706, column: 11, scope: !2966)
!2974 = !DILocation(line: 702, column: 11, scope: !2539)
!2975 = !DILocation(line: 395, column: 15, scope: !2537)
!2976 = !DILocation(line: 709, column: 5, scope: !2539)
!2977 = !DILocation(line: 710, column: 7, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2539, file: !530, line: 710, column: 7)
!2979 = !DILocation(line: 710, column: 7, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2978, file: !530, line: 710, column: 7)
!2981 = !DILocation(line: 710, column: 7, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !530, line: 710, column: 7)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !530, line: 710, column: 7)
!2984 = distinct !DILexicalBlock(scope: !2980, file: !530, line: 710, column: 7)
!2985 = !DILocation(line: 710, column: 7, scope: !2983)
!2986 = !DILocation(line: 710, column: 7, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !530, line: 710, column: 7)
!2988 = distinct !DILexicalBlock(scope: !2984, file: !530, line: 710, column: 7)
!2989 = !DILocation(line: 710, column: 7, scope: !2988)
!2990 = !DILocation(line: 710, column: 7, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !530, line: 710, column: 7)
!2992 = distinct !DILexicalBlock(scope: !2984, file: !530, line: 710, column: 7)
!2993 = !DILocation(line: 710, column: 7, scope: !2992)
!2994 = !DILocation(line: 710, column: 7, scope: !2984)
!2995 = !DILocation(line: 710, column: 7, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !530, line: 710, column: 7)
!2997 = distinct !DILexicalBlock(scope: !2978, file: !530, line: 710, column: 7)
!2998 = !DILocation(line: 710, column: 7, scope: !2997)
!2999 = !DILocation(line: 712, column: 5, scope: !2539)
!3000 = !DILocation(line: 713, column: 7, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !530, line: 713, column: 7)
!3002 = distinct !DILexicalBlock(scope: !2539, file: !530, line: 713, column: 7)
!3003 = !DILocation(line: 417, column: 21, scope: !2539)
!3004 = !DILocation(line: 713, column: 7, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !530, line: 713, column: 7)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !530, line: 713, column: 7)
!3007 = distinct !DILexicalBlock(scope: !3001, file: !530, line: 713, column: 7)
!3008 = !DILocation(line: 713, column: 7, scope: !3006)
!3009 = !DILocation(line: 713, column: 7, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !530, line: 713, column: 7)
!3011 = distinct !DILexicalBlock(scope: !3007, file: !530, line: 713, column: 7)
!3012 = !DILocation(line: 713, column: 7, scope: !3011)
!3013 = !DILocation(line: 713, column: 7, scope: !3007)
!3014 = !DILocation(line: 714, column: 7, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !530, line: 714, column: 7)
!3016 = distinct !DILexicalBlock(scope: !2539, file: !530, line: 714, column: 7)
!3017 = !DILocation(line: 714, column: 7, scope: !3016)
!3018 = !DILocation(line: 716, column: 11, scope: !2539)
!3019 = !DILocation(line: 718, column: 5, scope: !2540)
!3020 = !DILocation(line: 395, column: 82, scope: !2540)
!3021 = !DILocation(line: 395, column: 3, scope: !2540)
!3022 = distinct !{!3022, !2675, !3023, !965}
!3023 = !DILocation(line: 718, column: 5, scope: !2537)
!3024 = !DILocation(line: 720, column: 11, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2505, file: !530, line: 720, column: 7)
!3026 = !DILocation(line: 720, column: 16, scope: !3025)
!3027 = !DILocation(line: 728, column: 51, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2505, file: !530, line: 728, column: 7)
!3029 = !DILocation(line: 731, column: 11, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3028, file: !530, line: 730, column: 5)
!3031 = !DILocation(line: 732, column: 16, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3030, file: !530, line: 731, column: 11)
!3033 = !DILocation(line: 732, column: 9, scope: !3032)
!3034 = !DILocation(line: 736, column: 18, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3032, file: !530, line: 736, column: 16)
!3036 = !DILocation(line: 736, column: 29, scope: !3035)
!3037 = !DILocation(line: 745, column: 7, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !2505, file: !530, line: 745, column: 7)
!3039 = !DILocation(line: 745, column: 20, scope: !3038)
!3040 = !DILocation(line: 746, column: 12, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !530, line: 746, column: 5)
!3042 = distinct !DILexicalBlock(scope: !3038, file: !530, line: 746, column: 5)
!3043 = !DILocation(line: 746, column: 5, scope: !3042)
!3044 = !DILocation(line: 747, column: 7, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !530, line: 747, column: 7)
!3046 = distinct !DILexicalBlock(scope: !3041, file: !530, line: 747, column: 7)
!3047 = !DILocation(line: 747, column: 7, scope: !3046)
!3048 = !DILocation(line: 746, column: 39, scope: !3041)
!3049 = distinct !{!3049, !3043, !3050, !965}
!3050 = !DILocation(line: 747, column: 7, scope: !3042)
!3051 = !DILocation(line: 749, column: 11, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !2505, file: !530, line: 749, column: 7)
!3053 = !DILocation(line: 749, column: 7, scope: !2505)
!3054 = !DILocation(line: 750, column: 5, scope: !3052)
!3055 = !DILocation(line: 750, column: 17, scope: !3052)
!3056 = !DILocation(line: 756, column: 21, scope: !2883)
!3057 = !DILocation(line: 760, column: 42, scope: !2505)
!3058 = !DILocation(line: 758, column: 10, scope: !2505)
!3059 = !DILocation(line: 758, column: 3, scope: !2505)
!3060 = !DILocation(line: 762, column: 1, scope: !2505)
!3061 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1039, file: !1039, line: 98, type: !3062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!104}
!3064 = !DISubprogram(name: "strlen", scope: !1035, file: !1035, line: 407, type: !3065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!106, !107}
!3067 = !DISubprogram(name: "iswprint", scope: !3068, file: !3068, line: 120, type: !2869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3068 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3069 = distinct !DISubprogram(name: "quotearg_alloc", scope: !530, file: !530, line: 788, type: !3070, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3072)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!54, !107, !104, !2398}
!3072 = !{!3073, !3074, !3075}
!3073 = !DILocalVariable(name: "arg", arg: 1, scope: !3069, file: !530, line: 788, type: !107)
!3074 = !DILocalVariable(name: "argsize", arg: 2, scope: !3069, file: !530, line: 788, type: !104)
!3075 = !DILocalVariable(name: "o", arg: 3, scope: !3069, file: !530, line: 789, type: !2398)
!3076 = !DILocation(line: 0, scope: !3069)
!3077 = !DILocalVariable(name: "arg", arg: 1, scope: !3078, file: !530, line: 801, type: !107)
!3078 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !530, file: !530, line: 801, type: !3079, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3081)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!54, !107, !104, !795, !2398}
!3081 = !{!3077, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089}
!3082 = !DILocalVariable(name: "argsize", arg: 2, scope: !3078, file: !530, line: 801, type: !104)
!3083 = !DILocalVariable(name: "size", arg: 3, scope: !3078, file: !530, line: 801, type: !795)
!3084 = !DILocalVariable(name: "o", arg: 4, scope: !3078, file: !530, line: 802, type: !2398)
!3085 = !DILocalVariable(name: "p", scope: !3078, file: !530, line: 804, type: !2398)
!3086 = !DILocalVariable(name: "saved_errno", scope: !3078, file: !530, line: 805, type: !52)
!3087 = !DILocalVariable(name: "flags", scope: !3078, file: !530, line: 807, type: !52)
!3088 = !DILocalVariable(name: "bufsize", scope: !3078, file: !530, line: 808, type: !104)
!3089 = !DILocalVariable(name: "buf", scope: !3078, file: !530, line: 812, type: !54)
!3090 = !DILocation(line: 0, scope: !3078, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 791, column: 10, scope: !3069)
!3092 = !DILocation(line: 804, column: 37, scope: !3078, inlinedAt: !3091)
!3093 = !DILocation(line: 805, column: 21, scope: !3078, inlinedAt: !3091)
!3094 = !DILocation(line: 807, column: 18, scope: !3078, inlinedAt: !3091)
!3095 = !DILocation(line: 807, column: 24, scope: !3078, inlinedAt: !3091)
!3096 = !DILocation(line: 808, column: 72, scope: !3078, inlinedAt: !3091)
!3097 = !DILocation(line: 809, column: 56, scope: !3078, inlinedAt: !3091)
!3098 = !DILocation(line: 810, column: 49, scope: !3078, inlinedAt: !3091)
!3099 = !DILocation(line: 811, column: 49, scope: !3078, inlinedAt: !3091)
!3100 = !DILocation(line: 808, column: 20, scope: !3078, inlinedAt: !3091)
!3101 = !DILocation(line: 811, column: 62, scope: !3078, inlinedAt: !3091)
!3102 = !DILocation(line: 812, column: 15, scope: !3078, inlinedAt: !3091)
!3103 = !DILocation(line: 813, column: 60, scope: !3078, inlinedAt: !3091)
!3104 = !DILocation(line: 815, column: 32, scope: !3078, inlinedAt: !3091)
!3105 = !DILocation(line: 815, column: 47, scope: !3078, inlinedAt: !3091)
!3106 = !DILocation(line: 813, column: 3, scope: !3078, inlinedAt: !3091)
!3107 = !DILocation(line: 816, column: 9, scope: !3078, inlinedAt: !3091)
!3108 = !DILocation(line: 791, column: 3, scope: !3069)
!3109 = !DILocation(line: 0, scope: !3078)
!3110 = !DILocation(line: 804, column: 37, scope: !3078)
!3111 = !DILocation(line: 805, column: 21, scope: !3078)
!3112 = !DILocation(line: 807, column: 18, scope: !3078)
!3113 = !DILocation(line: 807, column: 27, scope: !3078)
!3114 = !DILocation(line: 807, column: 24, scope: !3078)
!3115 = !DILocation(line: 808, column: 72, scope: !3078)
!3116 = !DILocation(line: 809, column: 56, scope: !3078)
!3117 = !DILocation(line: 810, column: 49, scope: !3078)
!3118 = !DILocation(line: 811, column: 49, scope: !3078)
!3119 = !DILocation(line: 808, column: 20, scope: !3078)
!3120 = !DILocation(line: 811, column: 62, scope: !3078)
!3121 = !DILocation(line: 812, column: 15, scope: !3078)
!3122 = !DILocation(line: 813, column: 60, scope: !3078)
!3123 = !DILocation(line: 815, column: 32, scope: !3078)
!3124 = !DILocation(line: 815, column: 47, scope: !3078)
!3125 = !DILocation(line: 813, column: 3, scope: !3078)
!3126 = !DILocation(line: 816, column: 9, scope: !3078)
!3127 = !DILocation(line: 817, column: 7, scope: !3078)
!3128 = !DILocation(line: 818, column: 11, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3078, file: !530, line: 817, column: 7)
!3130 = !DILocation(line: 818, column: 5, scope: !3129)
!3131 = !DILocation(line: 819, column: 3, scope: !3078)
!3132 = distinct !DISubprogram(name: "quotearg_free", scope: !530, file: !530, line: 837, type: !482, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3133)
!3133 = !{!3134, !3135}
!3134 = !DILocalVariable(name: "sv", scope: !3132, file: !530, line: 839, type: !619)
!3135 = !DILocalVariable(name: "i", scope: !3136, file: !530, line: 840, type: !52)
!3136 = distinct !DILexicalBlock(scope: !3132, file: !530, line: 840, column: 3)
!3137 = !DILocation(line: 839, column: 24, scope: !3132)
!3138 = !DILocation(line: 0, scope: !3132)
!3139 = !DILocation(line: 0, scope: !3136)
!3140 = !DILocation(line: 840, column: 21, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3136, file: !530, line: 840, column: 3)
!3142 = !DILocation(line: 840, column: 3, scope: !3136)
!3143 = !DILocation(line: 842, column: 13, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3132, file: !530, line: 842, column: 7)
!3145 = !{!3146, !856, i64 8}
!3146 = !{!"slotvec", !1171, i64 0, !856, i64 8}
!3147 = !DILocation(line: 842, column: 17, scope: !3144)
!3148 = !DILocation(line: 842, column: 7, scope: !3132)
!3149 = !DILocation(line: 841, column: 17, scope: !3141)
!3150 = !DILocation(line: 841, column: 5, scope: !3141)
!3151 = !DILocation(line: 840, column: 32, scope: !3141)
!3152 = distinct !{!3152, !3142, !3153, !965}
!3153 = !DILocation(line: 841, column: 20, scope: !3136)
!3154 = !DILocation(line: 844, column: 7, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3144, file: !530, line: 843, column: 5)
!3156 = !DILocation(line: 845, column: 21, scope: !3155)
!3157 = !{!3146, !1171, i64 0}
!3158 = !DILocation(line: 846, column: 20, scope: !3155)
!3159 = !DILocation(line: 847, column: 5, scope: !3155)
!3160 = !DILocation(line: 848, column: 10, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3132, file: !530, line: 848, column: 7)
!3162 = !DILocation(line: 848, column: 7, scope: !3132)
!3163 = !DILocation(line: 850, column: 7, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3161, file: !530, line: 849, column: 5)
!3165 = !DILocation(line: 851, column: 15, scope: !3164)
!3166 = !DILocation(line: 852, column: 5, scope: !3164)
!3167 = !DILocation(line: 853, column: 10, scope: !3132)
!3168 = !DILocation(line: 854, column: 1, scope: !3132)
!3169 = !DISubprogram(name: "free", scope: !2352, file: !2352, line: 786, type: !3170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{null, !102}
!3172 = distinct !DISubprogram(name: "quotearg_n", scope: !530, file: !530, line: 919, type: !1032, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3173)
!3173 = !{!3174, !3175}
!3174 = !DILocalVariable(name: "n", arg: 1, scope: !3172, file: !530, line: 919, type: !52)
!3175 = !DILocalVariable(name: "arg", arg: 2, scope: !3172, file: !530, line: 919, type: !107)
!3176 = !DILocation(line: 0, scope: !3172)
!3177 = !DILocation(line: 921, column: 10, scope: !3172)
!3178 = !DILocation(line: 921, column: 3, scope: !3172)
!3179 = distinct !DISubprogram(name: "quotearg_n_options", scope: !530, file: !530, line: 866, type: !3180, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3182)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!54, !52, !107, !104, !2398}
!3182 = !{!3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3193, !3194, !3196, !3197, !3198}
!3183 = !DILocalVariable(name: "n", arg: 1, scope: !3179, file: !530, line: 866, type: !52)
!3184 = !DILocalVariable(name: "arg", arg: 2, scope: !3179, file: !530, line: 866, type: !107)
!3185 = !DILocalVariable(name: "argsize", arg: 3, scope: !3179, file: !530, line: 866, type: !104)
!3186 = !DILocalVariable(name: "options", arg: 4, scope: !3179, file: !530, line: 867, type: !2398)
!3187 = !DILocalVariable(name: "saved_errno", scope: !3179, file: !530, line: 869, type: !52)
!3188 = !DILocalVariable(name: "sv", scope: !3179, file: !530, line: 871, type: !619)
!3189 = !DILocalVariable(name: "nslots_max", scope: !3179, file: !530, line: 873, type: !52)
!3190 = !DILocalVariable(name: "preallocated", scope: !3191, file: !530, line: 879, type: !154)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !530, line: 878, column: 5)
!3192 = distinct !DILexicalBlock(scope: !3179, file: !530, line: 877, column: 7)
!3193 = !DILocalVariable(name: "new_nslots", scope: !3191, file: !530, line: 880, type: !808)
!3194 = !DILocalVariable(name: "size", scope: !3195, file: !530, line: 891, type: !104)
!3195 = distinct !DILexicalBlock(scope: !3179, file: !530, line: 890, column: 3)
!3196 = !DILocalVariable(name: "val", scope: !3195, file: !530, line: 892, type: !54)
!3197 = !DILocalVariable(name: "flags", scope: !3195, file: !530, line: 894, type: !52)
!3198 = !DILocalVariable(name: "qsize", scope: !3195, file: !530, line: 895, type: !104)
!3199 = distinct !DIAssignID()
!3200 = !DILocation(line: 0, scope: !3191)
!3201 = !DILocation(line: 0, scope: !3179)
!3202 = !DILocation(line: 869, column: 21, scope: !3179)
!3203 = !DILocation(line: 871, column: 24, scope: !3179)
!3204 = !DILocation(line: 874, column: 17, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3179, file: !530, line: 874, column: 7)
!3206 = !DILocation(line: 875, column: 5, scope: !3205)
!3207 = !DILocation(line: 877, column: 7, scope: !3192)
!3208 = !DILocation(line: 877, column: 14, scope: !3192)
!3209 = !DILocation(line: 877, column: 7, scope: !3179)
!3210 = !DILocation(line: 879, column: 31, scope: !3191)
!3211 = !DILocation(line: 880, column: 7, scope: !3191)
!3212 = !DILocation(line: 880, column: 26, scope: !3191)
!3213 = !DILocation(line: 880, column: 13, scope: !3191)
!3214 = distinct !DIAssignID()
!3215 = !DILocation(line: 882, column: 31, scope: !3191)
!3216 = !DILocation(line: 883, column: 33, scope: !3191)
!3217 = !DILocation(line: 883, column: 42, scope: !3191)
!3218 = !DILocation(line: 883, column: 31, scope: !3191)
!3219 = !DILocation(line: 882, column: 22, scope: !3191)
!3220 = !DILocation(line: 882, column: 15, scope: !3191)
!3221 = !DILocation(line: 884, column: 11, scope: !3191)
!3222 = !DILocation(line: 885, column: 15, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3191, file: !530, line: 884, column: 11)
!3224 = !{i64 0, i64 8, !1417, i64 8, i64 8, !855}
!3225 = !DILocation(line: 885, column: 9, scope: !3223)
!3226 = !DILocation(line: 886, column: 20, scope: !3191)
!3227 = !DILocation(line: 886, column: 18, scope: !3191)
!3228 = !DILocation(line: 886, column: 32, scope: !3191)
!3229 = !DILocation(line: 886, column: 43, scope: !3191)
!3230 = !DILocation(line: 886, column: 53, scope: !3191)
!3231 = !DILocation(line: 0, scope: !2615, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 886, column: 7, scope: !3191)
!3233 = !DILocation(line: 59, column: 10, scope: !2615, inlinedAt: !3232)
!3234 = !DILocation(line: 887, column: 16, scope: !3191)
!3235 = !DILocation(line: 887, column: 14, scope: !3191)
!3236 = !DILocation(line: 888, column: 5, scope: !3192)
!3237 = !DILocation(line: 888, column: 5, scope: !3191)
!3238 = !DILocation(line: 891, column: 19, scope: !3195)
!3239 = !DILocation(line: 891, column: 25, scope: !3195)
!3240 = !DILocation(line: 0, scope: !3195)
!3241 = !DILocation(line: 892, column: 23, scope: !3195)
!3242 = !DILocation(line: 894, column: 26, scope: !3195)
!3243 = !DILocation(line: 894, column: 32, scope: !3195)
!3244 = !DILocation(line: 896, column: 55, scope: !3195)
!3245 = !DILocation(line: 897, column: 55, scope: !3195)
!3246 = !DILocation(line: 898, column: 55, scope: !3195)
!3247 = !DILocation(line: 899, column: 55, scope: !3195)
!3248 = !DILocation(line: 895, column: 20, scope: !3195)
!3249 = !DILocation(line: 901, column: 14, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3195, file: !530, line: 901, column: 9)
!3251 = !DILocation(line: 901, column: 9, scope: !3195)
!3252 = !DILocation(line: 903, column: 35, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3250, file: !530, line: 902, column: 7)
!3254 = !DILocation(line: 903, column: 20, scope: !3253)
!3255 = !DILocation(line: 904, column: 17, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3253, file: !530, line: 904, column: 13)
!3257 = !DILocation(line: 904, column: 13, scope: !3253)
!3258 = !DILocation(line: 905, column: 11, scope: !3256)
!3259 = !DILocation(line: 906, column: 27, scope: !3253)
!3260 = !DILocation(line: 906, column: 19, scope: !3253)
!3261 = !DILocation(line: 907, column: 69, scope: !3253)
!3262 = !DILocation(line: 909, column: 44, scope: !3253)
!3263 = !DILocation(line: 910, column: 44, scope: !3253)
!3264 = !DILocation(line: 907, column: 9, scope: !3253)
!3265 = !DILocation(line: 911, column: 7, scope: !3253)
!3266 = !DILocation(line: 913, column: 11, scope: !3195)
!3267 = !DILocation(line: 914, column: 5, scope: !3195)
!3268 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !530, file: !530, line: 925, type: !3269, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3271)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!54, !52, !107, !104}
!3271 = !{!3272, !3273, !3274}
!3272 = !DILocalVariable(name: "n", arg: 1, scope: !3268, file: !530, line: 925, type: !52)
!3273 = !DILocalVariable(name: "arg", arg: 2, scope: !3268, file: !530, line: 925, type: !107)
!3274 = !DILocalVariable(name: "argsize", arg: 3, scope: !3268, file: !530, line: 925, type: !104)
!3275 = !DILocation(line: 0, scope: !3268)
!3276 = !DILocation(line: 927, column: 10, scope: !3268)
!3277 = !DILocation(line: 927, column: 3, scope: !3268)
!3278 = distinct !DISubprogram(name: "quotearg", scope: !530, file: !530, line: 931, type: !1041, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3279)
!3279 = !{!3280}
!3280 = !DILocalVariable(name: "arg", arg: 1, scope: !3278, file: !530, line: 931, type: !107)
!3281 = !DILocation(line: 0, scope: !3278)
!3282 = !DILocation(line: 0, scope: !3172, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 933, column: 10, scope: !3278)
!3284 = !DILocation(line: 921, column: 10, scope: !3172, inlinedAt: !3283)
!3285 = !DILocation(line: 933, column: 3, scope: !3278)
!3286 = distinct !DISubprogram(name: "quotearg_mem", scope: !530, file: !530, line: 937, type: !3287, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3289)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!54, !107, !104}
!3289 = !{!3290, !3291}
!3290 = !DILocalVariable(name: "arg", arg: 1, scope: !3286, file: !530, line: 937, type: !107)
!3291 = !DILocalVariable(name: "argsize", arg: 2, scope: !3286, file: !530, line: 937, type: !104)
!3292 = !DILocation(line: 0, scope: !3286)
!3293 = !DILocation(line: 0, scope: !3268, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 939, column: 10, scope: !3286)
!3295 = !DILocation(line: 927, column: 10, scope: !3268, inlinedAt: !3294)
!3296 = !DILocation(line: 939, column: 3, scope: !3286)
!3297 = distinct !DISubprogram(name: "quotearg_n_style", scope: !530, file: !530, line: 943, type: !3298, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3300)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!54, !52, !556, !107}
!3300 = !{!3301, !3302, !3303, !3304}
!3301 = !DILocalVariable(name: "n", arg: 1, scope: !3297, file: !530, line: 943, type: !52)
!3302 = !DILocalVariable(name: "s", arg: 2, scope: !3297, file: !530, line: 943, type: !556)
!3303 = !DILocalVariable(name: "arg", arg: 3, scope: !3297, file: !530, line: 943, type: !107)
!3304 = !DILocalVariable(name: "o", scope: !3297, file: !530, line: 945, type: !2399)
!3305 = distinct !DIAssignID()
!3306 = !DILocation(line: 0, scope: !3297)
!3307 = !DILocation(line: 945, column: 3, scope: !3297)
!3308 = !{!3309}
!3309 = distinct !{!3309, !3310, !"quoting_options_from_style: argument 0"}
!3310 = distinct !{!3310, !"quoting_options_from_style"}
!3311 = !DILocation(line: 945, column: 36, scope: !3297)
!3312 = !DILocalVariable(name: "style", arg: 1, scope: !3313, file: !530, line: 183, type: !556)
!3313 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !530, file: !530, line: 183, type: !3314, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3316)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!571, !556}
!3316 = !{!3312, !3317}
!3317 = !DILocalVariable(name: "o", scope: !3313, file: !530, line: 185, type: !571)
!3318 = !DILocation(line: 0, scope: !3313, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 945, column: 36, scope: !3297)
!3320 = !DILocation(line: 185, column: 26, scope: !3313, inlinedAt: !3319)
!3321 = distinct !DIAssignID()
!3322 = !DILocation(line: 186, column: 13, scope: !3323, inlinedAt: !3319)
!3323 = distinct !DILexicalBlock(scope: !3313, file: !530, line: 186, column: 7)
!3324 = !DILocation(line: 186, column: 7, scope: !3313, inlinedAt: !3319)
!3325 = !DILocation(line: 187, column: 5, scope: !3323, inlinedAt: !3319)
!3326 = !DILocation(line: 188, column: 11, scope: !3313, inlinedAt: !3319)
!3327 = distinct !DIAssignID()
!3328 = !DILocation(line: 946, column: 10, scope: !3297)
!3329 = !DILocation(line: 947, column: 1, scope: !3297)
!3330 = !DILocation(line: 946, column: 3, scope: !3297)
!3331 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !530, file: !530, line: 950, type: !3332, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!54, !52, !556, !107, !104}
!3334 = !{!3335, !3336, !3337, !3338, !3339}
!3335 = !DILocalVariable(name: "n", arg: 1, scope: !3331, file: !530, line: 950, type: !52)
!3336 = !DILocalVariable(name: "s", arg: 2, scope: !3331, file: !530, line: 950, type: !556)
!3337 = !DILocalVariable(name: "arg", arg: 3, scope: !3331, file: !530, line: 951, type: !107)
!3338 = !DILocalVariable(name: "argsize", arg: 4, scope: !3331, file: !530, line: 951, type: !104)
!3339 = !DILocalVariable(name: "o", scope: !3331, file: !530, line: 953, type: !2399)
!3340 = distinct !DIAssignID()
!3341 = !DILocation(line: 0, scope: !3331)
!3342 = !DILocation(line: 953, column: 3, scope: !3331)
!3343 = !{!3344}
!3344 = distinct !{!3344, !3345, !"quoting_options_from_style: argument 0"}
!3345 = distinct !{!3345, !"quoting_options_from_style"}
!3346 = !DILocation(line: 953, column: 36, scope: !3331)
!3347 = !DILocation(line: 0, scope: !3313, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 953, column: 36, scope: !3331)
!3349 = !DILocation(line: 185, column: 26, scope: !3313, inlinedAt: !3348)
!3350 = distinct !DIAssignID()
!3351 = !DILocation(line: 186, column: 13, scope: !3323, inlinedAt: !3348)
!3352 = !DILocation(line: 186, column: 7, scope: !3313, inlinedAt: !3348)
!3353 = !DILocation(line: 187, column: 5, scope: !3323, inlinedAt: !3348)
!3354 = !DILocation(line: 188, column: 11, scope: !3313, inlinedAt: !3348)
!3355 = distinct !DIAssignID()
!3356 = !DILocation(line: 954, column: 10, scope: !3331)
!3357 = !DILocation(line: 955, column: 1, scope: !3331)
!3358 = !DILocation(line: 954, column: 3, scope: !3331)
!3359 = distinct !DISubprogram(name: "quotearg_style", scope: !530, file: !530, line: 958, type: !3360, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3362)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!54, !556, !107}
!3362 = !{!3363, !3364}
!3363 = !DILocalVariable(name: "s", arg: 1, scope: !3359, file: !530, line: 958, type: !556)
!3364 = !DILocalVariable(name: "arg", arg: 2, scope: !3359, file: !530, line: 958, type: !107)
!3365 = distinct !DIAssignID()
!3366 = !DILocation(line: 0, scope: !3359)
!3367 = !DILocation(line: 0, scope: !3297, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 960, column: 10, scope: !3359)
!3369 = !DILocation(line: 945, column: 3, scope: !3297, inlinedAt: !3368)
!3370 = !{!3371}
!3371 = distinct !{!3371, !3372, !"quoting_options_from_style: argument 0"}
!3372 = distinct !{!3372, !"quoting_options_from_style"}
!3373 = !DILocation(line: 945, column: 36, scope: !3297, inlinedAt: !3368)
!3374 = !DILocation(line: 0, scope: !3313, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 945, column: 36, scope: !3297, inlinedAt: !3368)
!3376 = !DILocation(line: 185, column: 26, scope: !3313, inlinedAt: !3375)
!3377 = distinct !DIAssignID()
!3378 = !DILocation(line: 186, column: 13, scope: !3323, inlinedAt: !3375)
!3379 = !DILocation(line: 186, column: 7, scope: !3313, inlinedAt: !3375)
!3380 = !DILocation(line: 187, column: 5, scope: !3323, inlinedAt: !3375)
!3381 = !DILocation(line: 188, column: 11, scope: !3313, inlinedAt: !3375)
!3382 = distinct !DIAssignID()
!3383 = !DILocation(line: 946, column: 10, scope: !3297, inlinedAt: !3368)
!3384 = !DILocation(line: 947, column: 1, scope: !3297, inlinedAt: !3368)
!3385 = !DILocation(line: 960, column: 3, scope: !3359)
!3386 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !530, file: !530, line: 964, type: !3387, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3389)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!54, !556, !107, !104}
!3389 = !{!3390, !3391, !3392}
!3390 = !DILocalVariable(name: "s", arg: 1, scope: !3386, file: !530, line: 964, type: !556)
!3391 = !DILocalVariable(name: "arg", arg: 2, scope: !3386, file: !530, line: 964, type: !107)
!3392 = !DILocalVariable(name: "argsize", arg: 3, scope: !3386, file: !530, line: 964, type: !104)
!3393 = distinct !DIAssignID()
!3394 = !DILocation(line: 0, scope: !3386)
!3395 = !DILocation(line: 0, scope: !3331, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 966, column: 10, scope: !3386)
!3397 = !DILocation(line: 953, column: 3, scope: !3331, inlinedAt: !3396)
!3398 = !{!3399}
!3399 = distinct !{!3399, !3400, !"quoting_options_from_style: argument 0"}
!3400 = distinct !{!3400, !"quoting_options_from_style"}
!3401 = !DILocation(line: 953, column: 36, scope: !3331, inlinedAt: !3396)
!3402 = !DILocation(line: 0, scope: !3313, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 953, column: 36, scope: !3331, inlinedAt: !3396)
!3404 = !DILocation(line: 185, column: 26, scope: !3313, inlinedAt: !3403)
!3405 = distinct !DIAssignID()
!3406 = !DILocation(line: 186, column: 13, scope: !3323, inlinedAt: !3403)
!3407 = !DILocation(line: 186, column: 7, scope: !3313, inlinedAt: !3403)
!3408 = !DILocation(line: 187, column: 5, scope: !3323, inlinedAt: !3403)
!3409 = !DILocation(line: 188, column: 11, scope: !3313, inlinedAt: !3403)
!3410 = distinct !DIAssignID()
!3411 = !DILocation(line: 954, column: 10, scope: !3331, inlinedAt: !3396)
!3412 = !DILocation(line: 955, column: 1, scope: !3331, inlinedAt: !3396)
!3413 = !DILocation(line: 966, column: 3, scope: !3386)
!3414 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !530, file: !530, line: 970, type: !3415, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3417)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!54, !107, !104, !4}
!3417 = !{!3418, !3419, !3420, !3421}
!3418 = !DILocalVariable(name: "arg", arg: 1, scope: !3414, file: !530, line: 970, type: !107)
!3419 = !DILocalVariable(name: "argsize", arg: 2, scope: !3414, file: !530, line: 970, type: !104)
!3420 = !DILocalVariable(name: "ch", arg: 3, scope: !3414, file: !530, line: 970, type: !4)
!3421 = !DILocalVariable(name: "options", scope: !3414, file: !530, line: 972, type: !571)
!3422 = distinct !DIAssignID()
!3423 = !DILocation(line: 0, scope: !3414)
!3424 = !DILocation(line: 972, column: 3, scope: !3414)
!3425 = !DILocation(line: 973, column: 13, scope: !3414)
!3426 = !{i64 0, i64 4, !918, i64 4, i64 4, !918, i64 8, i64 32, !927, i64 40, i64 8, !855, i64 48, i64 8, !855}
!3427 = distinct !DIAssignID()
!3428 = !DILocation(line: 0, scope: !2418, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 974, column: 3, scope: !3414)
!3430 = !DILocation(line: 147, column: 41, scope: !2418, inlinedAt: !3429)
!3431 = !DILocation(line: 147, column: 62, scope: !2418, inlinedAt: !3429)
!3432 = !DILocation(line: 147, column: 57, scope: !2418, inlinedAt: !3429)
!3433 = !DILocation(line: 148, column: 15, scope: !2418, inlinedAt: !3429)
!3434 = !DILocation(line: 149, column: 21, scope: !2418, inlinedAt: !3429)
!3435 = !DILocation(line: 149, column: 24, scope: !2418, inlinedAt: !3429)
!3436 = !DILocation(line: 150, column: 19, scope: !2418, inlinedAt: !3429)
!3437 = !DILocation(line: 150, column: 24, scope: !2418, inlinedAt: !3429)
!3438 = !DILocation(line: 150, column: 6, scope: !2418, inlinedAt: !3429)
!3439 = !DILocation(line: 975, column: 10, scope: !3414)
!3440 = !DILocation(line: 976, column: 1, scope: !3414)
!3441 = !DILocation(line: 975, column: 3, scope: !3414)
!3442 = distinct !DISubprogram(name: "quotearg_char", scope: !530, file: !530, line: 979, type: !3443, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3445)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!54, !107, !4}
!3445 = !{!3446, !3447}
!3446 = !DILocalVariable(name: "arg", arg: 1, scope: !3442, file: !530, line: 979, type: !107)
!3447 = !DILocalVariable(name: "ch", arg: 2, scope: !3442, file: !530, line: 979, type: !4)
!3448 = distinct !DIAssignID()
!3449 = !DILocation(line: 0, scope: !3442)
!3450 = !DILocation(line: 0, scope: !3414, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 981, column: 10, scope: !3442)
!3452 = !DILocation(line: 972, column: 3, scope: !3414, inlinedAt: !3451)
!3453 = !DILocation(line: 973, column: 13, scope: !3414, inlinedAt: !3451)
!3454 = distinct !DIAssignID()
!3455 = !DILocation(line: 0, scope: !2418, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 974, column: 3, scope: !3414, inlinedAt: !3451)
!3457 = !DILocation(line: 147, column: 41, scope: !2418, inlinedAt: !3456)
!3458 = !DILocation(line: 147, column: 62, scope: !2418, inlinedAt: !3456)
!3459 = !DILocation(line: 147, column: 57, scope: !2418, inlinedAt: !3456)
!3460 = !DILocation(line: 148, column: 15, scope: !2418, inlinedAt: !3456)
!3461 = !DILocation(line: 149, column: 21, scope: !2418, inlinedAt: !3456)
!3462 = !DILocation(line: 149, column: 24, scope: !2418, inlinedAt: !3456)
!3463 = !DILocation(line: 150, column: 19, scope: !2418, inlinedAt: !3456)
!3464 = !DILocation(line: 150, column: 24, scope: !2418, inlinedAt: !3456)
!3465 = !DILocation(line: 150, column: 6, scope: !2418, inlinedAt: !3456)
!3466 = !DILocation(line: 975, column: 10, scope: !3414, inlinedAt: !3451)
!3467 = !DILocation(line: 976, column: 1, scope: !3414, inlinedAt: !3451)
!3468 = !DILocation(line: 981, column: 3, scope: !3442)
!3469 = distinct !DISubprogram(name: "quotearg_colon", scope: !530, file: !530, line: 985, type: !1041, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3470)
!3470 = !{!3471}
!3471 = !DILocalVariable(name: "arg", arg: 1, scope: !3469, file: !530, line: 985, type: !107)
!3472 = distinct !DIAssignID()
!3473 = !DILocation(line: 0, scope: !3469)
!3474 = !DILocation(line: 0, scope: !3442, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 987, column: 10, scope: !3469)
!3476 = !DILocation(line: 0, scope: !3414, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 981, column: 10, scope: !3442, inlinedAt: !3475)
!3478 = !DILocation(line: 972, column: 3, scope: !3414, inlinedAt: !3477)
!3479 = !DILocation(line: 973, column: 13, scope: !3414, inlinedAt: !3477)
!3480 = distinct !DIAssignID()
!3481 = !DILocation(line: 0, scope: !2418, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 974, column: 3, scope: !3414, inlinedAt: !3477)
!3483 = !DILocation(line: 147, column: 57, scope: !2418, inlinedAt: !3482)
!3484 = !DILocation(line: 149, column: 21, scope: !2418, inlinedAt: !3482)
!3485 = !DILocation(line: 150, column: 6, scope: !2418, inlinedAt: !3482)
!3486 = !DILocation(line: 975, column: 10, scope: !3414, inlinedAt: !3477)
!3487 = !DILocation(line: 976, column: 1, scope: !3414, inlinedAt: !3477)
!3488 = !DILocation(line: 987, column: 3, scope: !3469)
!3489 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !530, file: !530, line: 991, type: !3287, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3490)
!3490 = !{!3491, !3492}
!3491 = !DILocalVariable(name: "arg", arg: 1, scope: !3489, file: !530, line: 991, type: !107)
!3492 = !DILocalVariable(name: "argsize", arg: 2, scope: !3489, file: !530, line: 991, type: !104)
!3493 = distinct !DIAssignID()
!3494 = !DILocation(line: 0, scope: !3489)
!3495 = !DILocation(line: 0, scope: !3414, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 993, column: 10, scope: !3489)
!3497 = !DILocation(line: 972, column: 3, scope: !3414, inlinedAt: !3496)
!3498 = !DILocation(line: 973, column: 13, scope: !3414, inlinedAt: !3496)
!3499 = distinct !DIAssignID()
!3500 = !DILocation(line: 0, scope: !2418, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 974, column: 3, scope: !3414, inlinedAt: !3496)
!3502 = !DILocation(line: 147, column: 57, scope: !2418, inlinedAt: !3501)
!3503 = !DILocation(line: 149, column: 21, scope: !2418, inlinedAt: !3501)
!3504 = !DILocation(line: 150, column: 6, scope: !2418, inlinedAt: !3501)
!3505 = !DILocation(line: 975, column: 10, scope: !3414, inlinedAt: !3496)
!3506 = !DILocation(line: 976, column: 1, scope: !3414, inlinedAt: !3496)
!3507 = !DILocation(line: 993, column: 3, scope: !3489)
!3508 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !530, file: !530, line: 997, type: !3298, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3509)
!3509 = !{!3510, !3511, !3512, !3513}
!3510 = !DILocalVariable(name: "n", arg: 1, scope: !3508, file: !530, line: 997, type: !52)
!3511 = !DILocalVariable(name: "s", arg: 2, scope: !3508, file: !530, line: 997, type: !556)
!3512 = !DILocalVariable(name: "arg", arg: 3, scope: !3508, file: !530, line: 997, type: !107)
!3513 = !DILocalVariable(name: "options", scope: !3508, file: !530, line: 999, type: !571)
!3514 = distinct !DIAssignID()
!3515 = !DILocation(line: 0, scope: !3508)
!3516 = !DILocation(line: 185, column: 26, scope: !3313, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 1000, column: 13, scope: !3508)
!3518 = !DILocation(line: 999, column: 3, scope: !3508)
!3519 = !DILocation(line: 0, scope: !3313, inlinedAt: !3517)
!3520 = !DILocation(line: 186, column: 13, scope: !3323, inlinedAt: !3517)
!3521 = !DILocation(line: 186, column: 7, scope: !3313, inlinedAt: !3517)
!3522 = !DILocation(line: 187, column: 5, scope: !3323, inlinedAt: !3517)
!3523 = !{!3524}
!3524 = distinct !{!3524, !3525, !"quoting_options_from_style: argument 0"}
!3525 = distinct !{!3525, !"quoting_options_from_style"}
!3526 = !DILocation(line: 1000, column: 13, scope: !3508)
!3527 = distinct !DIAssignID()
!3528 = distinct !DIAssignID()
!3529 = !DILocation(line: 0, scope: !2418, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 1001, column: 3, scope: !3508)
!3531 = !DILocation(line: 147, column: 57, scope: !2418, inlinedAt: !3530)
!3532 = !DILocation(line: 149, column: 21, scope: !2418, inlinedAt: !3530)
!3533 = !DILocation(line: 150, column: 6, scope: !2418, inlinedAt: !3530)
!3534 = distinct !DIAssignID()
!3535 = !DILocation(line: 1002, column: 10, scope: !3508)
!3536 = !DILocation(line: 1003, column: 1, scope: !3508)
!3537 = !DILocation(line: 1002, column: 3, scope: !3508)
!3538 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !530, file: !530, line: 1006, type: !3539, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3541)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!54, !52, !107, !107, !107}
!3541 = !{!3542, !3543, !3544, !3545}
!3542 = !DILocalVariable(name: "n", arg: 1, scope: !3538, file: !530, line: 1006, type: !52)
!3543 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3538, file: !530, line: 1006, type: !107)
!3544 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3538, file: !530, line: 1007, type: !107)
!3545 = !DILocalVariable(name: "arg", arg: 4, scope: !3538, file: !530, line: 1007, type: !107)
!3546 = distinct !DIAssignID()
!3547 = !DILocation(line: 0, scope: !3538)
!3548 = !DILocalVariable(name: "o", scope: !3549, file: !530, line: 1018, type: !571)
!3549 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !530, file: !530, line: 1014, type: !3550, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3552)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!54, !52, !107, !107, !107, !104}
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3548}
!3553 = !DILocalVariable(name: "n", arg: 1, scope: !3549, file: !530, line: 1014, type: !52)
!3554 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3549, file: !530, line: 1014, type: !107)
!3555 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3549, file: !530, line: 1015, type: !107)
!3556 = !DILocalVariable(name: "arg", arg: 4, scope: !3549, file: !530, line: 1016, type: !107)
!3557 = !DILocalVariable(name: "argsize", arg: 5, scope: !3549, file: !530, line: 1016, type: !104)
!3558 = !DILocation(line: 0, scope: !3549, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 1009, column: 10, scope: !3538)
!3560 = !DILocation(line: 1018, column: 3, scope: !3549, inlinedAt: !3559)
!3561 = !DILocation(line: 1018, column: 30, scope: !3549, inlinedAt: !3559)
!3562 = distinct !DIAssignID()
!3563 = distinct !DIAssignID()
!3564 = !DILocation(line: 0, scope: !2458, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 1019, column: 3, scope: !3549, inlinedAt: !3559)
!3566 = !DILocation(line: 174, column: 12, scope: !2458, inlinedAt: !3565)
!3567 = distinct !DIAssignID()
!3568 = !DILocation(line: 175, column: 8, scope: !2471, inlinedAt: !3565)
!3569 = !DILocation(line: 175, column: 19, scope: !2471, inlinedAt: !3565)
!3570 = !DILocation(line: 176, column: 5, scope: !2471, inlinedAt: !3565)
!3571 = !DILocation(line: 177, column: 6, scope: !2458, inlinedAt: !3565)
!3572 = !DILocation(line: 177, column: 17, scope: !2458, inlinedAt: !3565)
!3573 = distinct !DIAssignID()
!3574 = !DILocation(line: 178, column: 6, scope: !2458, inlinedAt: !3565)
!3575 = !DILocation(line: 178, column: 18, scope: !2458, inlinedAt: !3565)
!3576 = distinct !DIAssignID()
!3577 = !DILocation(line: 1020, column: 10, scope: !3549, inlinedAt: !3559)
!3578 = !DILocation(line: 1021, column: 1, scope: !3549, inlinedAt: !3559)
!3579 = !DILocation(line: 1009, column: 3, scope: !3538)
!3580 = distinct !DIAssignID()
!3581 = !DILocation(line: 0, scope: !3549)
!3582 = !DILocation(line: 1018, column: 3, scope: !3549)
!3583 = !DILocation(line: 1018, column: 30, scope: !3549)
!3584 = distinct !DIAssignID()
!3585 = distinct !DIAssignID()
!3586 = !DILocation(line: 0, scope: !2458, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 1019, column: 3, scope: !3549)
!3588 = !DILocation(line: 174, column: 12, scope: !2458, inlinedAt: !3587)
!3589 = distinct !DIAssignID()
!3590 = !DILocation(line: 175, column: 8, scope: !2471, inlinedAt: !3587)
!3591 = !DILocation(line: 175, column: 19, scope: !2471, inlinedAt: !3587)
!3592 = !DILocation(line: 176, column: 5, scope: !2471, inlinedAt: !3587)
!3593 = !DILocation(line: 177, column: 6, scope: !2458, inlinedAt: !3587)
!3594 = !DILocation(line: 177, column: 17, scope: !2458, inlinedAt: !3587)
!3595 = distinct !DIAssignID()
!3596 = !DILocation(line: 178, column: 6, scope: !2458, inlinedAt: !3587)
!3597 = !DILocation(line: 178, column: 18, scope: !2458, inlinedAt: !3587)
!3598 = distinct !DIAssignID()
!3599 = !DILocation(line: 1020, column: 10, scope: !3549)
!3600 = !DILocation(line: 1021, column: 1, scope: !3549)
!3601 = !DILocation(line: 1020, column: 3, scope: !3549)
!3602 = distinct !DISubprogram(name: "quotearg_custom", scope: !530, file: !530, line: 1024, type: !3603, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3605)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!54, !107, !107, !107}
!3605 = !{!3606, !3607, !3608}
!3606 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3602, file: !530, line: 1024, type: !107)
!3607 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3602, file: !530, line: 1024, type: !107)
!3608 = !DILocalVariable(name: "arg", arg: 3, scope: !3602, file: !530, line: 1025, type: !107)
!3609 = distinct !DIAssignID()
!3610 = !DILocation(line: 0, scope: !3602)
!3611 = !DILocation(line: 0, scope: !3538, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 1027, column: 10, scope: !3602)
!3613 = !DILocation(line: 0, scope: !3549, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 1009, column: 10, scope: !3538, inlinedAt: !3612)
!3615 = !DILocation(line: 1018, column: 3, scope: !3549, inlinedAt: !3614)
!3616 = !DILocation(line: 1018, column: 30, scope: !3549, inlinedAt: !3614)
!3617 = distinct !DIAssignID()
!3618 = distinct !DIAssignID()
!3619 = !DILocation(line: 0, scope: !2458, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 1019, column: 3, scope: !3549, inlinedAt: !3614)
!3621 = !DILocation(line: 174, column: 12, scope: !2458, inlinedAt: !3620)
!3622 = distinct !DIAssignID()
!3623 = !DILocation(line: 175, column: 8, scope: !2471, inlinedAt: !3620)
!3624 = !DILocation(line: 175, column: 19, scope: !2471, inlinedAt: !3620)
!3625 = !DILocation(line: 176, column: 5, scope: !2471, inlinedAt: !3620)
!3626 = !DILocation(line: 177, column: 6, scope: !2458, inlinedAt: !3620)
!3627 = !DILocation(line: 177, column: 17, scope: !2458, inlinedAt: !3620)
!3628 = distinct !DIAssignID()
!3629 = !DILocation(line: 178, column: 6, scope: !2458, inlinedAt: !3620)
!3630 = !DILocation(line: 178, column: 18, scope: !2458, inlinedAt: !3620)
!3631 = distinct !DIAssignID()
!3632 = !DILocation(line: 1020, column: 10, scope: !3549, inlinedAt: !3614)
!3633 = !DILocation(line: 1021, column: 1, scope: !3549, inlinedAt: !3614)
!3634 = !DILocation(line: 1027, column: 3, scope: !3602)
!3635 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !530, file: !530, line: 1031, type: !3636, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3638)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!54, !107, !107, !107, !104}
!3638 = !{!3639, !3640, !3641, !3642}
!3639 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3635, file: !530, line: 1031, type: !107)
!3640 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3635, file: !530, line: 1031, type: !107)
!3641 = !DILocalVariable(name: "arg", arg: 3, scope: !3635, file: !530, line: 1032, type: !107)
!3642 = !DILocalVariable(name: "argsize", arg: 4, scope: !3635, file: !530, line: 1032, type: !104)
!3643 = distinct !DIAssignID()
!3644 = !DILocation(line: 0, scope: !3635)
!3645 = !DILocation(line: 0, scope: !3549, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 1034, column: 10, scope: !3635)
!3647 = !DILocation(line: 1018, column: 3, scope: !3549, inlinedAt: !3646)
!3648 = !DILocation(line: 1018, column: 30, scope: !3549, inlinedAt: !3646)
!3649 = distinct !DIAssignID()
!3650 = distinct !DIAssignID()
!3651 = !DILocation(line: 0, scope: !2458, inlinedAt: !3652)
!3652 = distinct !DILocation(line: 1019, column: 3, scope: !3549, inlinedAt: !3646)
!3653 = !DILocation(line: 174, column: 12, scope: !2458, inlinedAt: !3652)
!3654 = distinct !DIAssignID()
!3655 = !DILocation(line: 175, column: 8, scope: !2471, inlinedAt: !3652)
!3656 = !DILocation(line: 175, column: 19, scope: !2471, inlinedAt: !3652)
!3657 = !DILocation(line: 176, column: 5, scope: !2471, inlinedAt: !3652)
!3658 = !DILocation(line: 177, column: 6, scope: !2458, inlinedAt: !3652)
!3659 = !DILocation(line: 177, column: 17, scope: !2458, inlinedAt: !3652)
!3660 = distinct !DIAssignID()
!3661 = !DILocation(line: 178, column: 6, scope: !2458, inlinedAt: !3652)
!3662 = !DILocation(line: 178, column: 18, scope: !2458, inlinedAt: !3652)
!3663 = distinct !DIAssignID()
!3664 = !DILocation(line: 1020, column: 10, scope: !3549, inlinedAt: !3646)
!3665 = !DILocation(line: 1021, column: 1, scope: !3549, inlinedAt: !3646)
!3666 = !DILocation(line: 1034, column: 3, scope: !3635)
!3667 = distinct !DISubprogram(name: "quote_n_mem", scope: !530, file: !530, line: 1049, type: !3668, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3670)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!107, !52, !107, !104}
!3670 = !{!3671, !3672, !3673}
!3671 = !DILocalVariable(name: "n", arg: 1, scope: !3667, file: !530, line: 1049, type: !52)
!3672 = !DILocalVariable(name: "arg", arg: 2, scope: !3667, file: !530, line: 1049, type: !107)
!3673 = !DILocalVariable(name: "argsize", arg: 3, scope: !3667, file: !530, line: 1049, type: !104)
!3674 = !DILocation(line: 0, scope: !3667)
!3675 = !DILocation(line: 1051, column: 10, scope: !3667)
!3676 = !DILocation(line: 1051, column: 3, scope: !3667)
!3677 = distinct !DISubprogram(name: "quote_mem", scope: !530, file: !530, line: 1055, type: !3678, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3680)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!107, !107, !104}
!3680 = !{!3681, !3682}
!3681 = !DILocalVariable(name: "arg", arg: 1, scope: !3677, file: !530, line: 1055, type: !107)
!3682 = !DILocalVariable(name: "argsize", arg: 2, scope: !3677, file: !530, line: 1055, type: !104)
!3683 = !DILocation(line: 0, scope: !3677)
!3684 = !DILocation(line: 0, scope: !3667, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 1057, column: 10, scope: !3677)
!3686 = !DILocation(line: 1051, column: 10, scope: !3667, inlinedAt: !3685)
!3687 = !DILocation(line: 1057, column: 3, scope: !3677)
!3688 = distinct !DISubprogram(name: "quote_n", scope: !530, file: !530, line: 1061, type: !3689, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3691)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!107, !52, !107}
!3691 = !{!3692, !3693}
!3692 = !DILocalVariable(name: "n", arg: 1, scope: !3688, file: !530, line: 1061, type: !52)
!3693 = !DILocalVariable(name: "arg", arg: 2, scope: !3688, file: !530, line: 1061, type: !107)
!3694 = !DILocation(line: 0, scope: !3688)
!3695 = !DILocation(line: 0, scope: !3667, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 1063, column: 10, scope: !3688)
!3697 = !DILocation(line: 1051, column: 10, scope: !3667, inlinedAt: !3696)
!3698 = !DILocation(line: 1063, column: 3, scope: !3688)
!3699 = distinct !DISubprogram(name: "quote", scope: !530, file: !530, line: 1067, type: !3700, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !3702)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!107, !107}
!3702 = !{!3703}
!3703 = !DILocalVariable(name: "arg", arg: 1, scope: !3699, file: !530, line: 1067, type: !107)
!3704 = !DILocation(line: 0, scope: !3699)
!3705 = !DILocation(line: 0, scope: !3688, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 1069, column: 10, scope: !3699)
!3707 = !DILocation(line: 0, scope: !3667, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 1063, column: 10, scope: !3688, inlinedAt: !3706)
!3709 = !DILocation(line: 1051, column: 10, scope: !3667, inlinedAt: !3708)
!3710 = !DILocation(line: 1069, column: 3, scope: !3699)
!3711 = distinct !DISubprogram(name: "init_tokenbuffer", scope: !775, file: !775, line: 43, type: !3712, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3721)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{null, !3714}
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !3716, line: 38, baseType: !3717)
!3716 = !DIFile(filename: "lib/readtokens.h", directory: "/src", checksumkind: CSK_MD5, checksum: "75cc48641d199743577b153a0d1c82de")
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !3716, line: 33, size: 128, elements: !3718)
!3718 = !{!3719, !3720}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3717, file: !3716, line: 35, baseType: !104, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3717, file: !3716, line: 36, baseType: !54, size: 64, offset: 64)
!3721 = !{!3722}
!3722 = !DILocalVariable(name: "tokenbuffer", arg: 1, scope: !3711, file: !775, line: 43, type: !3714)
!3723 = !DILocation(line: 0, scope: !3711)
!3724 = !DILocation(line: 46, column: 23, scope: !3711)
!3725 = !DILocation(line: 47, column: 1, scope: !3711)
!3726 = distinct !DISubprogram(name: "readtoken", scope: !775, file: !775, line: 79, type: !3727, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3763)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!104, !3729, !107, !104, !3714}
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !3731)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !3732)
!3732 = !{!3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3731, file: !171, line: 51, baseType: !52, size: 32)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3731, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3731, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3731, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3731, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3731, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3731, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3731, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3731, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3731, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3731, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3731, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3731, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3731, file: !171, line: 70, baseType: !3747, size: 64, offset: 832)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3731, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3731, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3731, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3731, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3731, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3731, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3731, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3731, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3731, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3731, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3731, file: !171, line: 93, baseType: !3747, size: 64, offset: 1344)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3731, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3731, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3731, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3731, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!3763 = !{!3764, !3765, !3766, !3767, !3768, !3771, !3773, !3776, !3777, !3778, !3779}
!3764 = !DILocalVariable(name: "stream", arg: 1, scope: !3726, file: !775, line: 79, type: !3729)
!3765 = !DILocalVariable(name: "delim", arg: 2, scope: !3726, file: !775, line: 80, type: !107)
!3766 = !DILocalVariable(name: "n_delim", arg: 3, scope: !3726, file: !775, line: 81, type: !104)
!3767 = !DILocalVariable(name: "tokenbuffer", arg: 4, scope: !3726, file: !775, line: 82, type: !3714)
!3768 = !DILocalVariable(name: "isdelim", scope: !3726, file: !775, line: 84, type: !3769)
!3769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3770, size: 256, elements: !232)
!3770 = !DIDerivedType(tag: DW_TAG_typedef, name: "word", file: !775, line: 49, baseType: !104)
!3771 = !DILocalVariable(name: "i", scope: !3772, file: !775, line: 86, type: !808)
!3772 = distinct !DILexicalBlock(scope: !3726, file: !775, line: 86, column: 3)
!3773 = !DILocalVariable(name: "ch", scope: !3774, file: !775, line: 88, type: !109)
!3774 = distinct !DILexicalBlock(scope: !3775, file: !775, line: 87, column: 5)
!3775 = distinct !DILexicalBlock(scope: !3772, file: !775, line: 86, column: 3)
!3776 = !DILocalVariable(name: "c", scope: !3726, file: !775, line: 92, type: !52)
!3777 = !DILocalVariable(name: "p", scope: !3726, file: !775, line: 100, type: !54)
!3778 = !DILocalVariable(name: "n", scope: !3726, file: !775, line: 101, type: !808)
!3779 = !DILocalVariable(name: "i", scope: !3726, file: !775, line: 102, type: !808)
!3780 = distinct !DIAssignID()
!3781 = !DILocation(line: 0, scope: !3726)
!3782 = distinct !DIAssignID()
!3783 = !DILocation(line: 84, column: 3, scope: !3726)
!3784 = !DILocalVariable(name: "__dest", arg: 1, scope: !3785, file: !2361, line: 57, type: !102)
!3785 = distinct !DISubprogram(name: "memset", scope: !2361, file: !2361, line: 57, type: !2362, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3786)
!3786 = !{!3784, !3787, !3788}
!3787 = !DILocalVariable(name: "__ch", arg: 2, scope: !3785, file: !2361, line: 57, type: !52)
!3788 = !DILocalVariable(name: "__len", arg: 3, scope: !3785, file: !2361, line: 57, type: !104)
!3789 = !DILocation(line: 0, scope: !3785, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 85, column: 3, scope: !3726)
!3791 = !DILocation(line: 59, column: 10, scope: !3785, inlinedAt: !3790)
!3792 = !DILocation(line: 0, scope: !3772)
!3793 = !DILocation(line: 86, column: 23, scope: !3775)
!3794 = !DILocation(line: 86, column: 3, scope: !3772)
!3795 = !DILocation(line: 68, column: 10, scope: !3796, inlinedAt: !3801)
!3796 = distinct !DISubprogram(name: "getc_unlocked", scope: !1162, file: !1162, line: 66, type: !3797, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3799)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!52, !3729}
!3799 = !{!3800}
!3800 = !DILocalVariable(name: "__fp", arg: 1, scope: !3796, file: !1162, line: 66, type: !3729)
!3801 = distinct !DILocation(line: 95, column: 12, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3726, file: !775, line: 95, column: 3)
!3803 = !DILocation(line: 0, scope: !3796, inlinedAt: !3801)
!3804 = !DILocation(line: 95, column: 34, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3802, file: !775, line: 95, column: 3)
!3806 = !DILocation(line: 95, column: 29, scope: !3805)
!3807 = !DILocation(line: 95, column: 3, scope: !3802)
!3808 = !DILocation(line: 88, column: 26, scope: !3774)
!3809 = !DILocation(line: 0, scope: !3774)
!3810 = !DILocation(line: 89, column: 20, scope: !3774)
!3811 = !DILocalVariable(name: "n", arg: 1, scope: !3812, file: !775, line: 59, type: !104)
!3812 = distinct !DISubprogram(name: "set_nth_bit", scope: !775, file: !775, line: 59, type: !3813, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3816)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{null, !104, !3815}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3816 = !{!3811, !3817, !3818}
!3817 = !DILocalVariable(name: "bitset", arg: 2, scope: !3812, file: !775, line: 59, type: !3815)
!3818 = !DILocalVariable(name: "one", scope: !3812, file: !775, line: 61, type: !104)
!3819 = !DILocation(line: 0, scope: !3812, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 89, column: 7, scope: !3774)
!3821 = !DILocation(line: 62, column: 41, scope: !3812, inlinedAt: !3820)
!3822 = !DILocation(line: 62, column: 36, scope: !3812, inlinedAt: !3820)
!3823 = !DILocation(line: 62, column: 12, scope: !3812, inlinedAt: !3820)
!3824 = !DILocation(line: 62, column: 3, scope: !3812, inlinedAt: !3820)
!3825 = !DILocation(line: 62, column: 29, scope: !3812, inlinedAt: !3820)
!3826 = !DILocation(line: 86, column: 35, scope: !3775)
!3827 = distinct !{!3827, !3794, !3828, !965}
!3828 = !DILocation(line: 90, column: 5, scope: !3772)
!3829 = !DILocalVariable(name: "n", arg: 1, scope: !3830, file: !775, line: 53, type: !104)
!3830 = distinct !DISubprogram(name: "get_nth_bit", scope: !775, file: !775, line: 53, type: !3831, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3835)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!154, !104, !3833}
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3770)
!3835 = !{!3829, !3836}
!3836 = !DILocalVariable(name: "bitset", arg: 2, scope: !3830, file: !775, line: 53, type: !3833)
!3837 = !DILocation(line: 0, scope: !3830, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 95, column: 37, scope: !3805)
!3839 = !DILocation(line: 55, column: 19, scope: !3830, inlinedAt: !3838)
!3840 = !DILocation(line: 55, column: 10, scope: !3830, inlinedAt: !3838)
!3841 = !DILocation(line: 55, column: 41, scope: !3830, inlinedAt: !3838)
!3842 = !DILocation(line: 0, scope: !3796, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 95, column: 67, scope: !3805)
!3844 = !DILocation(line: 68, column: 10, scope: !3796, inlinedAt: !3843)
!3845 = distinct !{!3845, !3807, !3846, !965}
!3846 = !DILocation(line: 98, column: 5, scope: !3802)
!3847 = !DILocation(line: 101, column: 3, scope: !3726)
!3848 = distinct !DIAssignID()
!3849 = !DILocation(line: 105, column: 17, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3851, file: !775, line: 105, column: 11)
!3851 = distinct !DILexicalBlock(scope: !3852, file: !775, line: 104, column: 5)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !775, line: 103, column: 3)
!3853 = distinct !DILexicalBlock(scope: !3726, file: !775, line: 103, column: 3)
!3854 = !DILocation(line: 100, column: 26, scope: !3726)
!3855 = !DILocation(line: 101, column: 26, scope: !3726)
!3856 = !{!1179, !1171, i64 0}
!3857 = !DILocation(line: 101, column: 9, scope: !3726)
!3858 = !DILocation(line: 103, column: 3, scope: !3853)
!3859 = !DILocation(line: 108, column: 16, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3851, file: !775, line: 108, column: 11)
!3861 = !DILocation(line: 108, column: 13, scope: !3860)
!3862 = !DILocation(line: 108, column: 11, scope: !3851)
!3863 = !DILocation(line: 109, column: 13, scope: !3860)
!3864 = !DILocation(line: 109, column: 9, scope: !3860)
!3865 = !DILocation(line: 111, column: 11, scope: !3851)
!3866 = !DILocation(line: 0, scope: !3830, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 116, column: 11, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3851, file: !775, line: 116, column: 11)
!3869 = !DILocation(line: 55, column: 19, scope: !3830, inlinedAt: !3867)
!3870 = !DILocation(line: 55, column: 10, scope: !3830, inlinedAt: !3867)
!3871 = !DILocation(line: 55, column: 41, scope: !3830, inlinedAt: !3867)
!3872 = !DILocation(line: 116, column: 11, scope: !3851)
!3873 = !DILocation(line: 121, column: 16, scope: !3851)
!3874 = !DILocation(line: 121, column: 10, scope: !3851)
!3875 = !DILocation(line: 121, column: 7, scope: !3851)
!3876 = !DILocation(line: 121, column: 14, scope: !3851)
!3877 = !DILocation(line: 0, scope: !3796, inlinedAt: !3878)
!3878 = distinct !DILocation(line: 122, column: 11, scope: !3851)
!3879 = !DILocation(line: 68, column: 10, scope: !3796, inlinedAt: !3878)
!3880 = !DILocation(line: 105, column: 13, scope: !3850)
!3881 = !DILocation(line: 0, scope: !3851)
!3882 = !DILocation(line: 125, column: 23, scope: !3726)
!3883 = !DILocation(line: 126, column: 23, scope: !3726)
!3884 = !DILocation(line: 126, column: 21, scope: !3726)
!3885 = !DILocation(line: 127, column: 3, scope: !3726)
!3886 = !DILocation(line: 128, column: 1, scope: !3726)
!3887 = !DISubprogram(name: "__uflow", scope: !442, file: !442, line: 885, type: !3797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3888 = distinct !DISubprogram(name: "readtokens", scope: !775, file: !775, line: 138, type: !3889, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3893)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!104, !3729, !104, !107, !104, !3891, !3892}
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!3893 = !{!3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3910}
!3894 = !DILocalVariable(name: "stream", arg: 1, scope: !3888, file: !775, line: 138, type: !3729)
!3895 = !DILocalVariable(name: "projected_n_tokens", arg: 2, scope: !3888, file: !775, line: 139, type: !104)
!3896 = !DILocalVariable(name: "delim", arg: 3, scope: !3888, file: !775, line: 140, type: !107)
!3897 = !DILocalVariable(name: "n_delim", arg: 4, scope: !3888, file: !775, line: 141, type: !104)
!3898 = !DILocalVariable(name: "tokens_out", arg: 5, scope: !3888, file: !775, line: 142, type: !3891)
!3899 = !DILocalVariable(name: "token_lengths", arg: 6, scope: !3888, file: !775, line: 143, type: !3892)
!3900 = !DILocalVariable(name: "sz", scope: !3888, file: !775, line: 151, type: !808)
!3901 = !DILocalVariable(name: "tokens", scope: !3888, file: !775, line: 152, type: !53)
!3902 = !DILocalVariable(name: "lengths", scope: !3888, file: !775, line: 153, type: !795)
!3903 = !DILocalVariable(name: "tb", scope: !3888, file: !775, line: 155, type: !3715)
!3904 = !DILocalVariable(name: "token", scope: !3888, file: !775, line: 156, type: !3714)
!3905 = !DILocalVariable(name: "n_tokens", scope: !3888, file: !775, line: 158, type: !808)
!3906 = !DILocalVariable(name: "token_length", scope: !3907, file: !775, line: 161, type: !104)
!3907 = distinct !DILexicalBlock(scope: !3908, file: !775, line: 160, column: 5)
!3908 = distinct !DILexicalBlock(scope: !3909, file: !775, line: 159, column: 3)
!3909 = distinct !DILexicalBlock(scope: !3888, file: !775, line: 159, column: 3)
!3910 = !DILocalVariable(name: "tmp", scope: !3907, file: !775, line: 175, type: !54)
!3911 = distinct !DIAssignID()
!3912 = !DILocation(line: 0, scope: !3888)
!3913 = distinct !DIAssignID()
!3914 = !DILocation(line: 146, column: 26, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3888, file: !775, line: 146, column: 7)
!3916 = !DILocation(line: 146, column: 7, scope: !3888)
!3917 = !DILocation(line: 151, column: 3, scope: !3888)
!3918 = !DILocation(line: 151, column: 9, scope: !3888)
!3919 = distinct !DIAssignID()
!3920 = !DILocation(line: 152, column: 19, scope: !3888)
!3921 = !DILocation(line: 153, column: 21, scope: !3888)
!3922 = !DILocation(line: 155, column: 3, scope: !3888)
!3923 = !DILocation(line: 0, scope: !3711, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 157, column: 3, scope: !3888)
!3925 = !DILocation(line: 46, column: 23, scope: !3711, inlinedAt: !3924)
!3926 = distinct !DIAssignID()
!3927 = !DILocation(line: 159, column: 3, scope: !3888)
!3928 = !DILocation(line: 158, column: 9, scope: !3888)
!3929 = !DILocation(line: 161, column: 29, scope: !3907)
!3930 = !DILocation(line: 0, scope: !3907)
!3931 = !DILocation(line: 162, column: 23, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3907, file: !775, line: 162, column: 11)
!3933 = !DILocation(line: 162, column: 20, scope: !3932)
!3934 = !DILocation(line: 162, column: 11, scope: !3907)
!3935 = !DILocation(line: 164, column: 20, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3932, file: !775, line: 163, column: 9)
!3937 = !DILocation(line: 165, column: 45, scope: !3936)
!3938 = !DILocation(line: 165, column: 21, scope: !3936)
!3939 = !DILocation(line: 166, column: 9, scope: !3936)
!3940 = !DILocation(line: 168, column: 24, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3907, file: !775, line: 168, column: 11)
!3942 = !DILocation(line: 168, column: 11, scope: !3907)
!3943 = !DILocation(line: 175, column: 42, scope: !3907)
!3944 = !DILocation(line: 175, column: 19, scope: !3907)
!3945 = !DILocation(line: 176, column: 25, scope: !3907)
!3946 = !DILocation(line: 177, column: 46, scope: !3907)
!3947 = !DILocalVariable(name: "__dest", arg: 1, scope: !3948, file: !2361, line: 26, type: !3951)
!3948 = distinct !DISubprogram(name: "memcpy", scope: !2361, file: !2361, line: 26, type: !3949, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3952)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!102, !3951, !1062, !104}
!3951 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!3952 = !{!3947, !3953, !3954}
!3953 = !DILocalVariable(name: "__src", arg: 2, scope: !3948, file: !2361, line: 26, type: !1062)
!3954 = !DILocalVariable(name: "__len", arg: 3, scope: !3948, file: !2361, line: 26, type: !104)
!3955 = !DILocation(line: 0, scope: !3948, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 177, column: 26, scope: !3907)
!3957 = !DILocation(line: 29, column: 10, scope: !3948, inlinedAt: !3956)
!3958 = !DILocation(line: 177, column: 7, scope: !3907)
!3959 = !DILocation(line: 177, column: 24, scope: !3907)
!3960 = !DILocation(line: 178, column: 15, scope: !3907)
!3961 = !DILocation(line: 171, column: 11, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3941, file: !775, line: 169, column: 9)
!3963 = !DILocation(line: 171, column: 28, scope: !3962)
!3964 = !DILocation(line: 172, column: 29, scope: !3962)
!3965 = !DILocation(line: 181, column: 16, scope: !3888)
!3966 = !DILocation(line: 181, column: 3, scope: !3888)
!3967 = !DILocation(line: 182, column: 15, scope: !3888)
!3968 = !DILocation(line: 183, column: 21, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3888, file: !775, line: 183, column: 7)
!3970 = !DILocation(line: 183, column: 7, scope: !3888)
!3971 = !DILocation(line: 184, column: 20, scope: !3969)
!3972 = !DILocation(line: 184, column: 5, scope: !3969)
!3973 = !DILocation(line: 186, column: 5, scope: !3969)
!3974 = !DILocation(line: 188, column: 1, scope: !3888)
!3975 = !DILocation(line: 187, column: 3, scope: !3888)
!3976 = distinct !DISubprogram(name: "version_etc_arn", scope: !634, file: !634, line: 61, type: !3977, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4014)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{null, !3979, !107, !107, !107, !4013, !104}
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !3981)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !3982)
!3982 = !{!3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3981, file: !171, line: 51, baseType: !52, size: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3981, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3981, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3981, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3981, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3981, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3981, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3981, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3981, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3981, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3981, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3981, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3981, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3981, file: !171, line: 70, baseType: !3997, size: 64, offset: 832)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3981, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3981, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3981, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3981, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3981, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3981, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3981, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3981, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3981, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3981, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3981, file: !171, line: 93, baseType: !3997, size: 64, offset: 1344)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3981, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3981, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3981, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3981, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!4014 = !{!4015, !4016, !4017, !4018, !4019, !4020}
!4015 = !DILocalVariable(name: "stream", arg: 1, scope: !3976, file: !634, line: 61, type: !3979)
!4016 = !DILocalVariable(name: "command_name", arg: 2, scope: !3976, file: !634, line: 62, type: !107)
!4017 = !DILocalVariable(name: "package", arg: 3, scope: !3976, file: !634, line: 62, type: !107)
!4018 = !DILocalVariable(name: "version", arg: 4, scope: !3976, file: !634, line: 63, type: !107)
!4019 = !DILocalVariable(name: "authors", arg: 5, scope: !3976, file: !634, line: 64, type: !4013)
!4020 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3976, file: !634, line: 64, type: !104)
!4021 = !DILocation(line: 0, scope: !3976)
!4022 = !DILocation(line: 66, column: 7, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !3976, file: !634, line: 66, column: 7)
!4024 = !DILocation(line: 66, column: 7, scope: !3976)
!4025 = !DILocation(line: 67, column: 5, scope: !4023)
!4026 = !DILocation(line: 69, column: 5, scope: !4023)
!4027 = !DILocation(line: 83, column: 3, scope: !3976)
!4028 = !DILocation(line: 85, column: 3, scope: !3976)
!4029 = !DILocation(line: 88, column: 3, scope: !3976)
!4030 = !DILocation(line: 95, column: 3, scope: !3976)
!4031 = !DILocation(line: 97, column: 3, scope: !3976)
!4032 = !DILocation(line: 105, column: 7, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !3976, file: !634, line: 98, column: 5)
!4034 = !DILocation(line: 106, column: 7, scope: !4033)
!4035 = !DILocation(line: 109, column: 7, scope: !4033)
!4036 = !DILocation(line: 110, column: 7, scope: !4033)
!4037 = !DILocation(line: 113, column: 7, scope: !4033)
!4038 = !DILocation(line: 115, column: 7, scope: !4033)
!4039 = !DILocation(line: 120, column: 7, scope: !4033)
!4040 = !DILocation(line: 122, column: 7, scope: !4033)
!4041 = !DILocation(line: 127, column: 7, scope: !4033)
!4042 = !DILocation(line: 129, column: 7, scope: !4033)
!4043 = !DILocation(line: 134, column: 7, scope: !4033)
!4044 = !DILocation(line: 137, column: 7, scope: !4033)
!4045 = !DILocation(line: 142, column: 7, scope: !4033)
!4046 = !DILocation(line: 145, column: 7, scope: !4033)
!4047 = !DILocation(line: 150, column: 7, scope: !4033)
!4048 = !DILocation(line: 154, column: 7, scope: !4033)
!4049 = !DILocation(line: 159, column: 7, scope: !4033)
!4050 = !DILocation(line: 163, column: 7, scope: !4033)
!4051 = !DILocation(line: 170, column: 7, scope: !4033)
!4052 = !DILocation(line: 174, column: 7, scope: !4033)
!4053 = !DILocation(line: 176, column: 1, scope: !3976)
!4054 = distinct !DISubprogram(name: "version_etc_ar", scope: !634, file: !634, line: 183, type: !4055, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4057)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{null, !3979, !107, !107, !107, !4013}
!4057 = !{!4058, !4059, !4060, !4061, !4062, !4063}
!4058 = !DILocalVariable(name: "stream", arg: 1, scope: !4054, file: !634, line: 183, type: !3979)
!4059 = !DILocalVariable(name: "command_name", arg: 2, scope: !4054, file: !634, line: 184, type: !107)
!4060 = !DILocalVariable(name: "package", arg: 3, scope: !4054, file: !634, line: 184, type: !107)
!4061 = !DILocalVariable(name: "version", arg: 4, scope: !4054, file: !634, line: 185, type: !107)
!4062 = !DILocalVariable(name: "authors", arg: 5, scope: !4054, file: !634, line: 185, type: !4013)
!4063 = !DILocalVariable(name: "n_authors", scope: !4054, file: !634, line: 187, type: !104)
!4064 = !DILocation(line: 0, scope: !4054)
!4065 = !DILocation(line: 189, column: 8, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4054, file: !634, line: 189, column: 3)
!4067 = !DILocation(line: 189, scope: !4066)
!4068 = !DILocation(line: 189, column: 23, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4066, file: !634, line: 189, column: 3)
!4070 = !DILocation(line: 189, column: 3, scope: !4066)
!4071 = !DILocation(line: 189, column: 52, scope: !4069)
!4072 = distinct !{!4072, !4070, !4073, !965}
!4073 = !DILocation(line: 190, column: 5, scope: !4066)
!4074 = !DILocation(line: 191, column: 3, scope: !4054)
!4075 = !DILocation(line: 192, column: 1, scope: !4054)
!4076 = distinct !DISubprogram(name: "version_etc_va", scope: !634, file: !634, line: 199, type: !4077, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4089)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{null, !3979, !107, !107, !107, !4079}
!4079 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !442, line: 52, baseType: !4080)
!4080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !444, line: 12, baseType: !4081)
!4081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !634, baseType: !4082)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4083)
!4083 = !{!4084, !4085, !4086, !4087, !4088}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4082, file: !634, line: 192, baseType: !102, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4082, file: !634, line: 192, baseType: !102, size: 64, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4082, file: !634, line: 192, baseType: !102, size: 64, offset: 128)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4082, file: !634, line: 192, baseType: !52, size: 32, offset: 192)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4082, file: !634, line: 192, baseType: !52, size: 32, offset: 224)
!4089 = !{!4090, !4091, !4092, !4093, !4094, !4095, !4096}
!4090 = !DILocalVariable(name: "stream", arg: 1, scope: !4076, file: !634, line: 199, type: !3979)
!4091 = !DILocalVariable(name: "command_name", arg: 2, scope: !4076, file: !634, line: 200, type: !107)
!4092 = !DILocalVariable(name: "package", arg: 3, scope: !4076, file: !634, line: 200, type: !107)
!4093 = !DILocalVariable(name: "version", arg: 4, scope: !4076, file: !634, line: 201, type: !107)
!4094 = !DILocalVariable(name: "authors", arg: 5, scope: !4076, file: !634, line: 201, type: !4079)
!4095 = !DILocalVariable(name: "n_authors", scope: !4076, file: !634, line: 203, type: !104)
!4096 = !DILocalVariable(name: "authtab", scope: !4076, file: !634, line: 204, type: !4097)
!4097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 640, elements: !40)
!4098 = distinct !DIAssignID()
!4099 = !DILocation(line: 0, scope: !4076)
!4100 = !DILocation(line: 204, column: 3, scope: !4076)
!4101 = !DILocation(line: 208, column: 35, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4103, file: !634, line: 206, column: 3)
!4103 = distinct !DILexicalBlock(scope: !4076, file: !634, line: 206, column: 3)
!4104 = !DILocation(line: 208, column: 33, scope: !4102)
!4105 = !DILocation(line: 208, column: 67, scope: !4102)
!4106 = !DILocation(line: 206, column: 3, scope: !4103)
!4107 = !DILocation(line: 208, column: 14, scope: !4102)
!4108 = !DILocation(line: 0, scope: !4103)
!4109 = !DILocation(line: 211, column: 3, scope: !4076)
!4110 = !DILocation(line: 213, column: 1, scope: !4076)
!4111 = distinct !DISubprogram(name: "version_etc", scope: !634, file: !634, line: 230, type: !4112, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4114)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{null, !3979, !107, !107, !107, null}
!4114 = !{!4115, !4116, !4117, !4118, !4119}
!4115 = !DILocalVariable(name: "stream", arg: 1, scope: !4111, file: !634, line: 230, type: !3979)
!4116 = !DILocalVariable(name: "command_name", arg: 2, scope: !4111, file: !634, line: 231, type: !107)
!4117 = !DILocalVariable(name: "package", arg: 3, scope: !4111, file: !634, line: 231, type: !107)
!4118 = !DILocalVariable(name: "version", arg: 4, scope: !4111, file: !634, line: 232, type: !107)
!4119 = !DILocalVariable(name: "authors", scope: !4111, file: !634, line: 234, type: !4079)
!4120 = distinct !DIAssignID()
!4121 = !DILocation(line: 0, scope: !4111)
!4122 = !DILocation(line: 234, column: 3, scope: !4111)
!4123 = !DILocation(line: 235, column: 3, scope: !4111)
!4124 = !DILocation(line: 236, column: 3, scope: !4111)
!4125 = !DILocation(line: 237, column: 3, scope: !4111)
!4126 = !DILocation(line: 238, column: 1, scope: !4111)
!4127 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !634, file: !634, line: 241, type: !482, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782)
!4128 = !DILocation(line: 243, column: 3, scope: !4127)
!4129 = !DILocation(line: 248, column: 3, scope: !4127)
!4130 = !DILocation(line: 254, column: 3, scope: !4127)
!4131 = !DILocation(line: 259, column: 3, scope: !4127)
!4132 = !DILocation(line: 261, column: 1, scope: !4127)
!4133 = distinct !DISubprogram(name: "xnrealloc", scope: !4134, file: !4134, line: 147, type: !4135, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4137)
!4134 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!102, !102, !104, !104}
!4137 = !{!4138, !4139, !4140}
!4138 = !DILocalVariable(name: "p", arg: 1, scope: !4133, file: !4134, line: 147, type: !102)
!4139 = !DILocalVariable(name: "n", arg: 2, scope: !4133, file: !4134, line: 147, type: !104)
!4140 = !DILocalVariable(name: "s", arg: 3, scope: !4133, file: !4134, line: 147, type: !104)
!4141 = !DILocation(line: 0, scope: !4133)
!4142 = !DILocalVariable(name: "p", arg: 1, scope: !4143, file: !789, line: 83, type: !102)
!4143 = distinct !DISubprogram(name: "xreallocarray", scope: !789, file: !789, line: 83, type: !4135, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4144)
!4144 = !{!4142, !4145, !4146}
!4145 = !DILocalVariable(name: "n", arg: 2, scope: !4143, file: !789, line: 83, type: !104)
!4146 = !DILocalVariable(name: "s", arg: 3, scope: !4143, file: !789, line: 83, type: !104)
!4147 = !DILocation(line: 0, scope: !4143, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 149, column: 10, scope: !4133)
!4149 = !DILocation(line: 85, column: 25, scope: !4143, inlinedAt: !4148)
!4150 = !DILocalVariable(name: "p", arg: 1, scope: !4151, file: !789, line: 37, type: !102)
!4151 = distinct !DISubprogram(name: "check_nonnull", scope: !789, file: !789, line: 37, type: !4152, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4154)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!102, !102}
!4154 = !{!4150}
!4155 = !DILocation(line: 0, scope: !4151, inlinedAt: !4156)
!4156 = distinct !DILocation(line: 85, column: 10, scope: !4143, inlinedAt: !4148)
!4157 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4156)
!4158 = distinct !DILexicalBlock(scope: !4151, file: !789, line: 39, column: 7)
!4159 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4156)
!4160 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4156)
!4161 = !DILocation(line: 149, column: 3, scope: !4133)
!4162 = !DILocation(line: 0, scope: !4143)
!4163 = !DILocation(line: 85, column: 25, scope: !4143)
!4164 = !DILocation(line: 0, scope: !4151, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 85, column: 10, scope: !4143)
!4166 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4165)
!4167 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4165)
!4168 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4165)
!4169 = !DILocation(line: 85, column: 3, scope: !4143)
!4170 = distinct !DISubprogram(name: "xmalloc", scope: !789, file: !789, line: 47, type: !4171, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4173)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!102, !104}
!4173 = !{!4174}
!4174 = !DILocalVariable(name: "s", arg: 1, scope: !4170, file: !789, line: 47, type: !104)
!4175 = !DILocation(line: 0, scope: !4170)
!4176 = !DILocation(line: 49, column: 25, scope: !4170)
!4177 = !DILocation(line: 0, scope: !4151, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 49, column: 10, scope: !4170)
!4179 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4178)
!4180 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4178)
!4181 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4178)
!4182 = !DILocation(line: 49, column: 3, scope: !4170)
!4183 = !DISubprogram(name: "malloc", scope: !1039, file: !1039, line: 540, type: !4171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4184 = distinct !DISubprogram(name: "ximalloc", scope: !789, file: !789, line: 53, type: !4185, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4187)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!102, !808}
!4187 = !{!4188}
!4188 = !DILocalVariable(name: "s", arg: 1, scope: !4184, file: !789, line: 53, type: !808)
!4189 = !DILocation(line: 0, scope: !4184)
!4190 = !DILocalVariable(name: "s", arg: 1, scope: !4191, file: !4192, line: 55, type: !808)
!4191 = distinct !DISubprogram(name: "imalloc", scope: !4192, file: !4192, line: 55, type: !4185, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4193)
!4192 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4193 = !{!4190}
!4194 = !DILocation(line: 0, scope: !4191, inlinedAt: !4195)
!4195 = distinct !DILocation(line: 55, column: 25, scope: !4184)
!4196 = !DILocation(line: 57, column: 26, scope: !4191, inlinedAt: !4195)
!4197 = !DILocation(line: 0, scope: !4151, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 55, column: 10, scope: !4184)
!4199 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4198)
!4200 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4198)
!4201 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4198)
!4202 = !DILocation(line: 55, column: 3, scope: !4184)
!4203 = distinct !DISubprogram(name: "xcharalloc", scope: !789, file: !789, line: 59, type: !4204, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4206)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!54, !104}
!4206 = !{!4207}
!4207 = !DILocalVariable(name: "n", arg: 1, scope: !4203, file: !789, line: 59, type: !104)
!4208 = !DILocation(line: 0, scope: !4203)
!4209 = !DILocation(line: 0, scope: !4170, inlinedAt: !4210)
!4210 = distinct !DILocation(line: 61, column: 10, scope: !4203)
!4211 = !DILocation(line: 49, column: 25, scope: !4170, inlinedAt: !4210)
!4212 = !DILocation(line: 0, scope: !4151, inlinedAt: !4213)
!4213 = distinct !DILocation(line: 49, column: 10, scope: !4170, inlinedAt: !4210)
!4214 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4213)
!4215 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4213)
!4216 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4213)
!4217 = !DILocation(line: 61, column: 3, scope: !4203)
!4218 = distinct !DISubprogram(name: "xrealloc", scope: !789, file: !789, line: 68, type: !4219, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4221)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!102, !102, !104}
!4221 = !{!4222, !4223}
!4222 = !DILocalVariable(name: "p", arg: 1, scope: !4218, file: !789, line: 68, type: !102)
!4223 = !DILocalVariable(name: "s", arg: 2, scope: !4218, file: !789, line: 68, type: !104)
!4224 = !DILocation(line: 0, scope: !4218)
!4225 = !DILocalVariable(name: "ptr", arg: 1, scope: !4226, file: !4227, line: 2057, type: !102)
!4226 = distinct !DISubprogram(name: "rpl_realloc", scope: !4227, file: !4227, line: 2057, type: !4219, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4228)
!4227 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4228 = !{!4225, !4229}
!4229 = !DILocalVariable(name: "size", arg: 2, scope: !4226, file: !4227, line: 2057, type: !104)
!4230 = !DILocation(line: 0, scope: !4226, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 70, column: 25, scope: !4218)
!4232 = !DILocation(line: 2059, column: 24, scope: !4226, inlinedAt: !4231)
!4233 = !DILocation(line: 2059, column: 10, scope: !4226, inlinedAt: !4231)
!4234 = !DILocation(line: 0, scope: !4151, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 70, column: 10, scope: !4218)
!4236 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4235)
!4237 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4235)
!4238 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4235)
!4239 = !DILocation(line: 70, column: 3, scope: !4218)
!4240 = !DISubprogram(name: "realloc", scope: !1039, file: !1039, line: 551, type: !4219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4241 = distinct !DISubprogram(name: "xirealloc", scope: !789, file: !789, line: 74, type: !4242, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4244)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!102, !102, !808}
!4244 = !{!4245, !4246}
!4245 = !DILocalVariable(name: "p", arg: 1, scope: !4241, file: !789, line: 74, type: !102)
!4246 = !DILocalVariable(name: "s", arg: 2, scope: !4241, file: !789, line: 74, type: !808)
!4247 = !DILocation(line: 0, scope: !4241)
!4248 = !DILocalVariable(name: "p", arg: 1, scope: !4249, file: !4192, line: 66, type: !102)
!4249 = distinct !DISubprogram(name: "irealloc", scope: !4192, file: !4192, line: 66, type: !4242, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4250)
!4250 = !{!4248, !4251}
!4251 = !DILocalVariable(name: "s", arg: 2, scope: !4249, file: !4192, line: 66, type: !808)
!4252 = !DILocation(line: 0, scope: !4249, inlinedAt: !4253)
!4253 = distinct !DILocation(line: 76, column: 25, scope: !4241)
!4254 = !DILocation(line: 0, scope: !4226, inlinedAt: !4255)
!4255 = distinct !DILocation(line: 68, column: 26, scope: !4249, inlinedAt: !4253)
!4256 = !DILocation(line: 2059, column: 24, scope: !4226, inlinedAt: !4255)
!4257 = !DILocation(line: 2059, column: 10, scope: !4226, inlinedAt: !4255)
!4258 = !DILocation(line: 0, scope: !4151, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 76, column: 10, scope: !4241)
!4260 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4259)
!4261 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4259)
!4262 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4259)
!4263 = !DILocation(line: 76, column: 3, scope: !4241)
!4264 = distinct !DISubprogram(name: "xireallocarray", scope: !789, file: !789, line: 89, type: !4265, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4267)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!102, !102, !808, !808}
!4267 = !{!4268, !4269, !4270}
!4268 = !DILocalVariable(name: "p", arg: 1, scope: !4264, file: !789, line: 89, type: !102)
!4269 = !DILocalVariable(name: "n", arg: 2, scope: !4264, file: !789, line: 89, type: !808)
!4270 = !DILocalVariable(name: "s", arg: 3, scope: !4264, file: !789, line: 89, type: !808)
!4271 = !DILocation(line: 0, scope: !4264)
!4272 = !DILocalVariable(name: "p", arg: 1, scope: !4273, file: !4192, line: 98, type: !102)
!4273 = distinct !DISubprogram(name: "ireallocarray", scope: !4192, file: !4192, line: 98, type: !4265, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4274)
!4274 = !{!4272, !4275, !4276}
!4275 = !DILocalVariable(name: "n", arg: 2, scope: !4273, file: !4192, line: 98, type: !808)
!4276 = !DILocalVariable(name: "s", arg: 3, scope: !4273, file: !4192, line: 98, type: !808)
!4277 = !DILocation(line: 0, scope: !4273, inlinedAt: !4278)
!4278 = distinct !DILocation(line: 91, column: 25, scope: !4264)
!4279 = !DILocation(line: 101, column: 13, scope: !4273, inlinedAt: !4278)
!4280 = !DILocation(line: 0, scope: !4151, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 91, column: 10, scope: !4264)
!4282 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4281)
!4283 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4281)
!4284 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4281)
!4285 = !DILocation(line: 91, column: 3, scope: !4264)
!4286 = distinct !DISubprogram(name: "xnmalloc", scope: !789, file: !789, line: 98, type: !4287, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4289)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!102, !104, !104}
!4289 = !{!4290, !4291}
!4290 = !DILocalVariable(name: "n", arg: 1, scope: !4286, file: !789, line: 98, type: !104)
!4291 = !DILocalVariable(name: "s", arg: 2, scope: !4286, file: !789, line: 98, type: !104)
!4292 = !DILocation(line: 0, scope: !4286)
!4293 = !DILocation(line: 0, scope: !4143, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 100, column: 10, scope: !4286)
!4295 = !DILocation(line: 85, column: 25, scope: !4143, inlinedAt: !4294)
!4296 = !DILocation(line: 0, scope: !4151, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 85, column: 10, scope: !4143, inlinedAt: !4294)
!4298 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4297)
!4299 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4297)
!4300 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4297)
!4301 = !DILocation(line: 100, column: 3, scope: !4286)
!4302 = distinct !DISubprogram(name: "xinmalloc", scope: !789, file: !789, line: 104, type: !4303, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4305)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!102, !808, !808}
!4305 = !{!4306, !4307}
!4306 = !DILocalVariable(name: "n", arg: 1, scope: !4302, file: !789, line: 104, type: !808)
!4307 = !DILocalVariable(name: "s", arg: 2, scope: !4302, file: !789, line: 104, type: !808)
!4308 = !DILocation(line: 0, scope: !4302)
!4309 = !DILocation(line: 0, scope: !4264, inlinedAt: !4310)
!4310 = distinct !DILocation(line: 106, column: 10, scope: !4302)
!4311 = !DILocation(line: 0, scope: !4273, inlinedAt: !4312)
!4312 = distinct !DILocation(line: 91, column: 25, scope: !4264, inlinedAt: !4310)
!4313 = !DILocation(line: 101, column: 13, scope: !4273, inlinedAt: !4312)
!4314 = !DILocation(line: 0, scope: !4151, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 91, column: 10, scope: !4264, inlinedAt: !4310)
!4316 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4315)
!4317 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4315)
!4318 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4315)
!4319 = !DILocation(line: 106, column: 3, scope: !4302)
!4320 = distinct !DISubprogram(name: "x2realloc", scope: !789, file: !789, line: 116, type: !4321, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4323)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!102, !102, !795}
!4323 = !{!4324, !4325}
!4324 = !DILocalVariable(name: "p", arg: 1, scope: !4320, file: !789, line: 116, type: !102)
!4325 = !DILocalVariable(name: "ps", arg: 2, scope: !4320, file: !789, line: 116, type: !795)
!4326 = !DILocation(line: 0, scope: !4320)
!4327 = !DILocation(line: 0, scope: !792, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 118, column: 10, scope: !4320)
!4329 = !DILocation(line: 178, column: 14, scope: !792, inlinedAt: !4328)
!4330 = !DILocation(line: 180, column: 9, scope: !4331, inlinedAt: !4328)
!4331 = distinct !DILexicalBlock(scope: !792, file: !789, line: 180, column: 7)
!4332 = !DILocation(line: 180, column: 7, scope: !792, inlinedAt: !4328)
!4333 = !DILocation(line: 182, column: 13, scope: !4334, inlinedAt: !4328)
!4334 = distinct !DILexicalBlock(scope: !4335, file: !789, line: 182, column: 11)
!4335 = distinct !DILexicalBlock(scope: !4331, file: !789, line: 181, column: 5)
!4336 = !DILocation(line: 182, column: 11, scope: !4335, inlinedAt: !4328)
!4337 = !DILocation(line: 197, column: 11, scope: !4338, inlinedAt: !4328)
!4338 = distinct !DILexicalBlock(scope: !4339, file: !789, line: 197, column: 11)
!4339 = distinct !DILexicalBlock(scope: !4331, file: !789, line: 195, column: 5)
!4340 = !DILocation(line: 197, column: 11, scope: !4339, inlinedAt: !4328)
!4341 = !DILocation(line: 198, column: 9, scope: !4338, inlinedAt: !4328)
!4342 = !DILocation(line: 0, scope: !4143, inlinedAt: !4343)
!4343 = distinct !DILocation(line: 201, column: 7, scope: !792, inlinedAt: !4328)
!4344 = !DILocation(line: 85, column: 25, scope: !4143, inlinedAt: !4343)
!4345 = !DILocation(line: 0, scope: !4151, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 85, column: 10, scope: !4143, inlinedAt: !4343)
!4347 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4346)
!4348 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4346)
!4349 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4346)
!4350 = !DILocation(line: 202, column: 7, scope: !792, inlinedAt: !4328)
!4351 = !DILocation(line: 118, column: 3, scope: !4320)
!4352 = !DILocation(line: 0, scope: !792)
!4353 = !DILocation(line: 178, column: 14, scope: !792)
!4354 = !DILocation(line: 180, column: 9, scope: !4331)
!4355 = !DILocation(line: 180, column: 7, scope: !792)
!4356 = !DILocation(line: 182, column: 13, scope: !4334)
!4357 = !DILocation(line: 182, column: 11, scope: !4335)
!4358 = !DILocation(line: 190, column: 30, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4334, file: !789, line: 183, column: 9)
!4360 = !DILocation(line: 191, column: 16, scope: !4359)
!4361 = !DILocation(line: 191, column: 13, scope: !4359)
!4362 = !DILocation(line: 192, column: 9, scope: !4359)
!4363 = !DILocation(line: 197, column: 11, scope: !4338)
!4364 = !DILocation(line: 197, column: 11, scope: !4339)
!4365 = !DILocation(line: 198, column: 9, scope: !4338)
!4366 = !DILocation(line: 0, scope: !4143, inlinedAt: !4367)
!4367 = distinct !DILocation(line: 201, column: 7, scope: !792)
!4368 = !DILocation(line: 85, column: 25, scope: !4143, inlinedAt: !4367)
!4369 = !DILocation(line: 0, scope: !4151, inlinedAt: !4370)
!4370 = distinct !DILocation(line: 85, column: 10, scope: !4143, inlinedAt: !4367)
!4371 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4370)
!4372 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4370)
!4373 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4370)
!4374 = !DILocation(line: 202, column: 7, scope: !792)
!4375 = !DILocation(line: 203, column: 3, scope: !792)
!4376 = !DILocation(line: 0, scope: !804)
!4377 = !DILocation(line: 230, column: 14, scope: !804)
!4378 = !DILocation(line: 238, column: 7, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !804, file: !789, line: 238, column: 7)
!4380 = !DILocation(line: 238, column: 7, scope: !804)
!4381 = !DILocation(line: 240, column: 9, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !804, file: !789, line: 240, column: 7)
!4383 = !DILocation(line: 240, column: 18, scope: !4382)
!4384 = !DILocation(line: 253, column: 8, scope: !804)
!4385 = !DILocation(line: 256, column: 7, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !804, file: !789, line: 256, column: 7)
!4387 = !DILocation(line: 256, column: 7, scope: !804)
!4388 = !DILocation(line: 258, column: 27, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4386, file: !789, line: 257, column: 5)
!4390 = !DILocation(line: 259, column: 32, scope: !4389)
!4391 = !DILocation(line: 260, column: 5, scope: !4389)
!4392 = !DILocation(line: 262, column: 9, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !804, file: !789, line: 262, column: 7)
!4394 = !DILocation(line: 262, column: 7, scope: !804)
!4395 = !DILocation(line: 263, column: 9, scope: !4393)
!4396 = !DILocation(line: 263, column: 5, scope: !4393)
!4397 = !DILocation(line: 264, column: 9, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !804, file: !789, line: 264, column: 7)
!4399 = !DILocation(line: 264, column: 14, scope: !4398)
!4400 = !DILocation(line: 265, column: 7, scope: !4398)
!4401 = !DILocation(line: 265, column: 11, scope: !4398)
!4402 = !DILocation(line: 266, column: 11, scope: !4398)
!4403 = !DILocation(line: 267, column: 14, scope: !4398)
!4404 = !DILocation(line: 264, column: 7, scope: !804)
!4405 = !DILocation(line: 268, column: 5, scope: !4398)
!4406 = !DILocation(line: 0, scope: !4218, inlinedAt: !4407)
!4407 = distinct !DILocation(line: 269, column: 8, scope: !804)
!4408 = !DILocation(line: 0, scope: !4226, inlinedAt: !4409)
!4409 = distinct !DILocation(line: 70, column: 25, scope: !4218, inlinedAt: !4407)
!4410 = !DILocation(line: 2059, column: 24, scope: !4226, inlinedAt: !4409)
!4411 = !DILocation(line: 2059, column: 10, scope: !4226, inlinedAt: !4409)
!4412 = !DILocation(line: 0, scope: !4151, inlinedAt: !4413)
!4413 = distinct !DILocation(line: 70, column: 10, scope: !4218, inlinedAt: !4407)
!4414 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4413)
!4415 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4413)
!4416 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4413)
!4417 = !DILocation(line: 270, column: 7, scope: !804)
!4418 = !DILocation(line: 271, column: 3, scope: !804)
!4419 = distinct !DISubprogram(name: "xzalloc", scope: !789, file: !789, line: 279, type: !4171, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4420)
!4420 = !{!4421}
!4421 = !DILocalVariable(name: "s", arg: 1, scope: !4419, file: !789, line: 279, type: !104)
!4422 = !DILocation(line: 0, scope: !4419)
!4423 = !DILocalVariable(name: "n", arg: 1, scope: !4424, file: !789, line: 294, type: !104)
!4424 = distinct !DISubprogram(name: "xcalloc", scope: !789, file: !789, line: 294, type: !4287, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4425)
!4425 = !{!4423, !4426}
!4426 = !DILocalVariable(name: "s", arg: 2, scope: !4424, file: !789, line: 294, type: !104)
!4427 = !DILocation(line: 0, scope: !4424, inlinedAt: !4428)
!4428 = distinct !DILocation(line: 281, column: 10, scope: !4419)
!4429 = !DILocation(line: 296, column: 25, scope: !4424, inlinedAt: !4428)
!4430 = !DILocation(line: 0, scope: !4151, inlinedAt: !4431)
!4431 = distinct !DILocation(line: 296, column: 10, scope: !4424, inlinedAt: !4428)
!4432 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4431)
!4433 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4431)
!4434 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4431)
!4435 = !DILocation(line: 281, column: 3, scope: !4419)
!4436 = !DISubprogram(name: "calloc", scope: !1039, file: !1039, line: 543, type: !4287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4437 = !DILocation(line: 0, scope: !4424)
!4438 = !DILocation(line: 296, column: 25, scope: !4424)
!4439 = !DILocation(line: 0, scope: !4151, inlinedAt: !4440)
!4440 = distinct !DILocation(line: 296, column: 10, scope: !4424)
!4441 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4440)
!4442 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4440)
!4443 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4440)
!4444 = !DILocation(line: 296, column: 3, scope: !4424)
!4445 = distinct !DISubprogram(name: "xizalloc", scope: !789, file: !789, line: 285, type: !4185, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4446)
!4446 = !{!4447}
!4447 = !DILocalVariable(name: "s", arg: 1, scope: !4445, file: !789, line: 285, type: !808)
!4448 = !DILocation(line: 0, scope: !4445)
!4449 = !DILocalVariable(name: "n", arg: 1, scope: !4450, file: !789, line: 300, type: !808)
!4450 = distinct !DISubprogram(name: "xicalloc", scope: !789, file: !789, line: 300, type: !4303, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4451)
!4451 = !{!4449, !4452}
!4452 = !DILocalVariable(name: "s", arg: 2, scope: !4450, file: !789, line: 300, type: !808)
!4453 = !DILocation(line: 0, scope: !4450, inlinedAt: !4454)
!4454 = distinct !DILocation(line: 287, column: 10, scope: !4445)
!4455 = !DILocalVariable(name: "n", arg: 1, scope: !4456, file: !4192, line: 77, type: !808)
!4456 = distinct !DISubprogram(name: "icalloc", scope: !4192, file: !4192, line: 77, type: !4303, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4457)
!4457 = !{!4455, !4458}
!4458 = !DILocalVariable(name: "s", arg: 2, scope: !4456, file: !4192, line: 77, type: !808)
!4459 = !DILocation(line: 0, scope: !4456, inlinedAt: !4460)
!4460 = distinct !DILocation(line: 302, column: 25, scope: !4450, inlinedAt: !4454)
!4461 = !DILocation(line: 91, column: 10, scope: !4456, inlinedAt: !4460)
!4462 = !DILocation(line: 0, scope: !4151, inlinedAt: !4463)
!4463 = distinct !DILocation(line: 302, column: 10, scope: !4450, inlinedAt: !4454)
!4464 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4463)
!4465 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4463)
!4466 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4463)
!4467 = !DILocation(line: 287, column: 3, scope: !4445)
!4468 = !DILocation(line: 0, scope: !4450)
!4469 = !DILocation(line: 0, scope: !4456, inlinedAt: !4470)
!4470 = distinct !DILocation(line: 302, column: 25, scope: !4450)
!4471 = !DILocation(line: 91, column: 10, scope: !4456, inlinedAt: !4470)
!4472 = !DILocation(line: 0, scope: !4151, inlinedAt: !4473)
!4473 = distinct !DILocation(line: 302, column: 10, scope: !4450)
!4474 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4473)
!4475 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4473)
!4476 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4473)
!4477 = !DILocation(line: 302, column: 3, scope: !4450)
!4478 = distinct !DISubprogram(name: "xmemdup", scope: !789, file: !789, line: 310, type: !4479, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4481)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!102, !1063, !104}
!4481 = !{!4482, !4483}
!4482 = !DILocalVariable(name: "p", arg: 1, scope: !4478, file: !789, line: 310, type: !1063)
!4483 = !DILocalVariable(name: "s", arg: 2, scope: !4478, file: !789, line: 310, type: !104)
!4484 = !DILocation(line: 0, scope: !4478)
!4485 = !DILocation(line: 0, scope: !4170, inlinedAt: !4486)
!4486 = distinct !DILocation(line: 312, column: 18, scope: !4478)
!4487 = !DILocation(line: 49, column: 25, scope: !4170, inlinedAt: !4486)
!4488 = !DILocation(line: 0, scope: !4151, inlinedAt: !4489)
!4489 = distinct !DILocation(line: 49, column: 10, scope: !4170, inlinedAt: !4486)
!4490 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4489)
!4491 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4489)
!4492 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4489)
!4493 = !DILocalVariable(name: "__dest", arg: 1, scope: !4494, file: !2361, line: 26, type: !3951)
!4494 = distinct !DISubprogram(name: "memcpy", scope: !2361, file: !2361, line: 26, type: !3949, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4495)
!4495 = !{!4493, !4496, !4497}
!4496 = !DILocalVariable(name: "__src", arg: 2, scope: !4494, file: !2361, line: 26, type: !1062)
!4497 = !DILocalVariable(name: "__len", arg: 3, scope: !4494, file: !2361, line: 26, type: !104)
!4498 = !DILocation(line: 0, scope: !4494, inlinedAt: !4499)
!4499 = distinct !DILocation(line: 312, column: 10, scope: !4478)
!4500 = !DILocation(line: 29, column: 10, scope: !4494, inlinedAt: !4499)
!4501 = !DILocation(line: 312, column: 3, scope: !4478)
!4502 = distinct !DISubprogram(name: "ximemdup", scope: !789, file: !789, line: 316, type: !4503, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4505)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!102, !1063, !808}
!4505 = !{!4506, !4507}
!4506 = !DILocalVariable(name: "p", arg: 1, scope: !4502, file: !789, line: 316, type: !1063)
!4507 = !DILocalVariable(name: "s", arg: 2, scope: !4502, file: !789, line: 316, type: !808)
!4508 = !DILocation(line: 0, scope: !4502)
!4509 = !DILocation(line: 0, scope: !4184, inlinedAt: !4510)
!4510 = distinct !DILocation(line: 318, column: 18, scope: !4502)
!4511 = !DILocation(line: 0, scope: !4191, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 55, column: 25, scope: !4184, inlinedAt: !4510)
!4513 = !DILocation(line: 57, column: 26, scope: !4191, inlinedAt: !4512)
!4514 = !DILocation(line: 0, scope: !4151, inlinedAt: !4515)
!4515 = distinct !DILocation(line: 55, column: 10, scope: !4184, inlinedAt: !4510)
!4516 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4515)
!4517 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4515)
!4518 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4515)
!4519 = !DILocation(line: 0, scope: !4494, inlinedAt: !4520)
!4520 = distinct !DILocation(line: 318, column: 10, scope: !4502)
!4521 = !DILocation(line: 29, column: 10, scope: !4494, inlinedAt: !4520)
!4522 = !DILocation(line: 318, column: 3, scope: !4502)
!4523 = distinct !DISubprogram(name: "ximemdup0", scope: !789, file: !789, line: 325, type: !4524, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4526)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{!54, !1063, !808}
!4526 = !{!4527, !4528, !4529}
!4527 = !DILocalVariable(name: "p", arg: 1, scope: !4523, file: !789, line: 325, type: !1063)
!4528 = !DILocalVariable(name: "s", arg: 2, scope: !4523, file: !789, line: 325, type: !808)
!4529 = !DILocalVariable(name: "result", scope: !4523, file: !789, line: 327, type: !54)
!4530 = !DILocation(line: 0, scope: !4523)
!4531 = !DILocation(line: 327, column: 30, scope: !4523)
!4532 = !DILocation(line: 0, scope: !4184, inlinedAt: !4533)
!4533 = distinct !DILocation(line: 327, column: 18, scope: !4523)
!4534 = !DILocation(line: 0, scope: !4191, inlinedAt: !4535)
!4535 = distinct !DILocation(line: 55, column: 25, scope: !4184, inlinedAt: !4533)
!4536 = !DILocation(line: 57, column: 26, scope: !4191, inlinedAt: !4535)
!4537 = !DILocation(line: 0, scope: !4151, inlinedAt: !4538)
!4538 = distinct !DILocation(line: 55, column: 10, scope: !4184, inlinedAt: !4533)
!4539 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4538)
!4540 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4538)
!4541 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4538)
!4542 = !DILocation(line: 328, column: 3, scope: !4523)
!4543 = !DILocation(line: 328, column: 13, scope: !4523)
!4544 = !DILocation(line: 0, scope: !4494, inlinedAt: !4545)
!4545 = distinct !DILocation(line: 329, column: 10, scope: !4523)
!4546 = !DILocation(line: 29, column: 10, scope: !4494, inlinedAt: !4545)
!4547 = !DILocation(line: 329, column: 3, scope: !4523)
!4548 = distinct !DISubprogram(name: "xstrdup", scope: !789, file: !789, line: 335, type: !1041, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4549)
!4549 = !{!4550}
!4550 = !DILocalVariable(name: "string", arg: 1, scope: !4548, file: !789, line: 335, type: !107)
!4551 = !DILocation(line: 0, scope: !4548)
!4552 = !DILocation(line: 337, column: 27, scope: !4548)
!4553 = !DILocation(line: 337, column: 43, scope: !4548)
!4554 = !DILocation(line: 0, scope: !4478, inlinedAt: !4555)
!4555 = distinct !DILocation(line: 337, column: 10, scope: !4548)
!4556 = !DILocation(line: 0, scope: !4170, inlinedAt: !4557)
!4557 = distinct !DILocation(line: 312, column: 18, scope: !4478, inlinedAt: !4555)
!4558 = !DILocation(line: 49, column: 25, scope: !4170, inlinedAt: !4557)
!4559 = !DILocation(line: 0, scope: !4151, inlinedAt: !4560)
!4560 = distinct !DILocation(line: 49, column: 10, scope: !4170, inlinedAt: !4557)
!4561 = !DILocation(line: 39, column: 8, scope: !4158, inlinedAt: !4560)
!4562 = !DILocation(line: 39, column: 7, scope: !4151, inlinedAt: !4560)
!4563 = !DILocation(line: 40, column: 5, scope: !4158, inlinedAt: !4560)
!4564 = !DILocation(line: 0, scope: !4494, inlinedAt: !4565)
!4565 = distinct !DILocation(line: 312, column: 10, scope: !4478, inlinedAt: !4555)
!4566 = !DILocation(line: 29, column: 10, scope: !4494, inlinedAt: !4565)
!4567 = !DILocation(line: 337, column: 3, scope: !4548)
!4568 = distinct !DISubprogram(name: "xalloc_die", scope: !730, file: !730, line: 32, type: !482, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !4569)
!4569 = !{!4570}
!4570 = !DILocalVariable(name: "__errstatus", scope: !4571, file: !730, line: 34, type: !4572)
!4571 = distinct !DILexicalBlock(scope: !4568, file: !730, line: 34, column: 3)
!4572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!4573 = !DILocation(line: 34, column: 3, scope: !4571)
!4574 = !DILocation(line: 0, scope: !4571)
!4575 = !DILocation(line: 40, column: 3, scope: !4568)
!4576 = distinct !DISubprogram(name: "close_stream", scope: !826, file: !826, line: 55, type: !4577, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4613)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!52, !4579}
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !4581)
!4581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !4582)
!4582 = !{!4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4581, file: !171, line: 51, baseType: !52, size: 32)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4581, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4581, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4581, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4581, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4581, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4581, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4581, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4581, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4581, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4581, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4581, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4581, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4581, file: !171, line: 70, baseType: !4597, size: 64, offset: 832)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4581, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4581, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4581, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4581, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4581, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4581, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4581, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4581, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4581, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4581, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4581, file: !171, line: 93, baseType: !4597, size: 64, offset: 1344)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4581, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4581, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4581, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4581, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!4613 = !{!4614, !4615, !4617, !4618}
!4614 = !DILocalVariable(name: "stream", arg: 1, scope: !4576, file: !826, line: 55, type: !4579)
!4615 = !DILocalVariable(name: "some_pending", scope: !4576, file: !826, line: 57, type: !4616)
!4616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!4617 = !DILocalVariable(name: "prev_fail", scope: !4576, file: !826, line: 58, type: !4616)
!4618 = !DILocalVariable(name: "fclose_fail", scope: !4576, file: !826, line: 59, type: !4616)
!4619 = !DILocation(line: 0, scope: !4576)
!4620 = !DILocation(line: 57, column: 30, scope: !4576)
!4621 = !DILocalVariable(name: "__stream", arg: 1, scope: !4622, file: !1162, line: 135, type: !4579)
!4622 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1162, file: !1162, line: 135, type: !4577, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4623)
!4623 = !{!4621}
!4624 = !DILocation(line: 0, scope: !4622, inlinedAt: !4625)
!4625 = distinct !DILocation(line: 58, column: 27, scope: !4576)
!4626 = !DILocation(line: 137, column: 10, scope: !4622, inlinedAt: !4625)
!4627 = !DILocation(line: 58, column: 43, scope: !4576)
!4628 = !DILocation(line: 59, column: 29, scope: !4576)
!4629 = !DILocation(line: 59, column: 45, scope: !4576)
!4630 = !DILocation(line: 69, column: 17, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4576, file: !826, line: 69, column: 7)
!4632 = !DILocation(line: 57, column: 50, scope: !4576)
!4633 = !DILocation(line: 69, column: 33, scope: !4631)
!4634 = !DILocation(line: 69, column: 53, scope: !4631)
!4635 = !DILocation(line: 69, column: 59, scope: !4631)
!4636 = !DILocation(line: 69, column: 7, scope: !4576)
!4637 = !DILocation(line: 71, column: 11, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4631, file: !826, line: 70, column: 5)
!4639 = !DILocation(line: 72, column: 9, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4638, file: !826, line: 71, column: 11)
!4641 = !DILocation(line: 72, column: 15, scope: !4640)
!4642 = !DILocation(line: 77, column: 1, scope: !4576)
!4643 = !DISubprogram(name: "__fpending", scope: !2024, file: !2024, line: 75, type: !4644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!104, !4579}
!4646 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !737, file: !737, line: 100, type: !4647, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !4650)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!104, !2379, !107, !104, !4649}
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!4650 = !{!4651, !4652, !4653, !4654, !4655}
!4651 = !DILocalVariable(name: "pwc", arg: 1, scope: !4646, file: !737, line: 100, type: !2379)
!4652 = !DILocalVariable(name: "s", arg: 2, scope: !4646, file: !737, line: 100, type: !107)
!4653 = !DILocalVariable(name: "n", arg: 3, scope: !4646, file: !737, line: 100, type: !104)
!4654 = !DILocalVariable(name: "ps", arg: 4, scope: !4646, file: !737, line: 100, type: !4649)
!4655 = !DILocalVariable(name: "ret", scope: !4646, file: !737, line: 130, type: !104)
!4656 = !DILocation(line: 0, scope: !4646)
!4657 = !DILocation(line: 105, column: 9, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4646, file: !737, line: 105, column: 7)
!4659 = !DILocation(line: 105, column: 7, scope: !4646)
!4660 = !DILocation(line: 117, column: 10, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4646, file: !737, line: 117, column: 7)
!4662 = !DILocation(line: 117, column: 7, scope: !4646)
!4663 = !DILocation(line: 130, column: 16, scope: !4646)
!4664 = !DILocation(line: 135, column: 11, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4646, file: !737, line: 135, column: 7)
!4666 = !DILocation(line: 135, column: 25, scope: !4665)
!4667 = !DILocation(line: 135, column: 30, scope: !4665)
!4668 = !DILocation(line: 135, column: 7, scope: !4646)
!4669 = !DILocalVariable(name: "ps", arg: 1, scope: !4670, file: !2352, line: 1135, type: !4649)
!4670 = distinct !DISubprogram(name: "mbszero", scope: !2352, file: !2352, line: 1135, type: !4671, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !4673)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{null, !4649}
!4673 = !{!4669}
!4674 = !DILocation(line: 0, scope: !4670, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 137, column: 5, scope: !4665)
!4676 = !DILocalVariable(name: "__dest", arg: 1, scope: !4677, file: !2361, line: 57, type: !102)
!4677 = distinct !DISubprogram(name: "memset", scope: !2361, file: !2361, line: 57, type: !2362, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !4678)
!4678 = !{!4676, !4679, !4680}
!4679 = !DILocalVariable(name: "__ch", arg: 2, scope: !4677, file: !2361, line: 57, type: !52)
!4680 = !DILocalVariable(name: "__len", arg: 3, scope: !4677, file: !2361, line: 57, type: !104)
!4681 = !DILocation(line: 0, scope: !4677, inlinedAt: !4682)
!4682 = distinct !DILocation(line: 1137, column: 3, scope: !4670, inlinedAt: !4675)
!4683 = !DILocation(line: 59, column: 10, scope: !4677, inlinedAt: !4682)
!4684 = !DILocation(line: 137, column: 5, scope: !4665)
!4685 = !DILocation(line: 138, column: 11, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4646, file: !737, line: 138, column: 7)
!4687 = !DILocation(line: 138, column: 7, scope: !4646)
!4688 = !DILocation(line: 139, column: 5, scope: !4686)
!4689 = !DILocation(line: 143, column: 26, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4646, file: !737, line: 143, column: 7)
!4691 = !DILocation(line: 143, column: 41, scope: !4690)
!4692 = !DILocation(line: 143, column: 7, scope: !4646)
!4693 = !DILocation(line: 145, column: 15, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4695, file: !737, line: 145, column: 11)
!4695 = distinct !DILexicalBlock(scope: !4690, file: !737, line: 144, column: 5)
!4696 = !DILocation(line: 145, column: 11, scope: !4695)
!4697 = !DILocation(line: 146, column: 32, scope: !4694)
!4698 = !DILocation(line: 146, column: 16, scope: !4694)
!4699 = !DILocation(line: 146, column: 14, scope: !4694)
!4700 = !DILocation(line: 146, column: 9, scope: !4694)
!4701 = !DILocation(line: 286, column: 1, scope: !4646)
!4702 = !DISubprogram(name: "mbsinit", scope: !4703, file: !4703, line: 293, type: !4704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4703 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!52, !4706}
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !743)
!4708 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !828, file: !828, line: 27, type: !4135, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4709)
!4709 = !{!4710, !4711, !4712, !4713}
!4710 = !DILocalVariable(name: "ptr", arg: 1, scope: !4708, file: !828, line: 27, type: !102)
!4711 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4708, file: !828, line: 27, type: !104)
!4712 = !DILocalVariable(name: "size", arg: 3, scope: !4708, file: !828, line: 27, type: !104)
!4713 = !DILocalVariable(name: "nbytes", scope: !4708, file: !828, line: 29, type: !104)
!4714 = !DILocation(line: 0, scope: !4708)
!4715 = !DILocation(line: 30, column: 7, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4708, file: !828, line: 30, column: 7)
!4717 = !DILocation(line: 30, column: 7, scope: !4708)
!4718 = !DILocation(line: 32, column: 7, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4716, file: !828, line: 31, column: 5)
!4720 = !DILocation(line: 32, column: 13, scope: !4719)
!4721 = !DILocation(line: 33, column: 7, scope: !4719)
!4722 = !DILocalVariable(name: "ptr", arg: 1, scope: !4723, file: !4227, line: 2057, type: !102)
!4723 = distinct !DISubprogram(name: "rpl_realloc", scope: !4227, file: !4227, line: 2057, type: !4219, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4724)
!4724 = !{!4722, !4725}
!4725 = !DILocalVariable(name: "size", arg: 2, scope: !4723, file: !4227, line: 2057, type: !104)
!4726 = !DILocation(line: 0, scope: !4723, inlinedAt: !4727)
!4727 = distinct !DILocation(line: 37, column: 10, scope: !4708)
!4728 = !DILocation(line: 2059, column: 24, scope: !4723, inlinedAt: !4727)
!4729 = !DILocation(line: 2059, column: 10, scope: !4723, inlinedAt: !4727)
!4730 = !DILocation(line: 37, column: 3, scope: !4708)
!4731 = !DILocation(line: 38, column: 1, scope: !4708)
!4732 = distinct !DISubprogram(name: "hard_locale", scope: !755, file: !755, line: 28, type: !2155, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4733)
!4733 = !{!4734, !4735}
!4734 = !DILocalVariable(name: "category", arg: 1, scope: !4732, file: !755, line: 28, type: !52)
!4735 = !DILocalVariable(name: "locale", scope: !4732, file: !755, line: 30, type: !4736)
!4736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4737)
!4737 = !{!4738}
!4738 = !DISubrange(count: 257)
!4739 = distinct !DIAssignID()
!4740 = !DILocation(line: 0, scope: !4732)
!4741 = !DILocation(line: 30, column: 3, scope: !4732)
!4742 = !DILocation(line: 32, column: 7, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4732, file: !755, line: 32, column: 7)
!4744 = !DILocation(line: 32, column: 7, scope: !4732)
!4745 = !DILocalVariable(name: "__s1", arg: 1, scope: !4746, file: !931, line: 1359, type: !107)
!4746 = distinct !DISubprogram(name: "streq", scope: !931, file: !931, line: 1359, type: !932, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4747)
!4747 = !{!4745, !4748}
!4748 = !DILocalVariable(name: "__s2", arg: 2, scope: !4746, file: !931, line: 1359, type: !107)
!4749 = !DILocation(line: 0, scope: !4746, inlinedAt: !4750)
!4750 = distinct !DILocation(line: 35, column: 9, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4732, file: !755, line: 35, column: 7)
!4752 = !DILocation(line: 1361, column: 11, scope: !4746, inlinedAt: !4750)
!4753 = !DILocation(line: 1361, column: 10, scope: !4746, inlinedAt: !4750)
!4754 = !DILocation(line: 35, column: 29, scope: !4751)
!4755 = !DILocation(line: 0, scope: !4746, inlinedAt: !4756)
!4756 = distinct !DILocation(line: 35, column: 32, scope: !4751)
!4757 = !DILocation(line: 1361, column: 11, scope: !4746, inlinedAt: !4756)
!4758 = !DILocation(line: 1361, column: 10, scope: !4746, inlinedAt: !4756)
!4759 = !DILocation(line: 35, column: 7, scope: !4732)
!4760 = !DILocation(line: 46, column: 3, scope: !4732)
!4761 = !DILocation(line: 47, column: 1, scope: !4732)
!4762 = distinct !DISubprogram(name: "setlocale_null_r", scope: !832, file: !832, line: 154, type: !4763, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !4765)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{!52, !52, !54, !104}
!4765 = !{!4766, !4767, !4768}
!4766 = !DILocalVariable(name: "category", arg: 1, scope: !4762, file: !832, line: 154, type: !52)
!4767 = !DILocalVariable(name: "buf", arg: 2, scope: !4762, file: !832, line: 154, type: !54)
!4768 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4762, file: !832, line: 154, type: !104)
!4769 = !DILocation(line: 0, scope: !4762)
!4770 = !DILocation(line: 159, column: 10, scope: !4762)
!4771 = !DILocation(line: 159, column: 3, scope: !4762)
!4772 = distinct !DISubprogram(name: "setlocale_null", scope: !832, file: !832, line: 186, type: !4773, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !4775)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!107, !52}
!4775 = !{!4776}
!4776 = !DILocalVariable(name: "category", arg: 1, scope: !4772, file: !832, line: 186, type: !52)
!4777 = !DILocation(line: 0, scope: !4772)
!4778 = !DILocation(line: 189, column: 10, scope: !4772)
!4779 = !DILocation(line: 189, column: 3, scope: !4772)
!4780 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !834, file: !834, line: 35, type: !4773, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4781)
!4781 = !{!4782, !4783}
!4782 = !DILocalVariable(name: "category", arg: 1, scope: !4780, file: !834, line: 35, type: !52)
!4783 = !DILocalVariable(name: "result", scope: !4780, file: !834, line: 37, type: !107)
!4784 = !DILocation(line: 0, scope: !4780)
!4785 = !DILocation(line: 37, column: 24, scope: !4780)
!4786 = !DILocation(line: 62, column: 3, scope: !4780)
!4787 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !834, file: !834, line: 66, type: !4763, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4788)
!4788 = !{!4789, !4790, !4791, !4792, !4793}
!4789 = !DILocalVariable(name: "category", arg: 1, scope: !4787, file: !834, line: 66, type: !52)
!4790 = !DILocalVariable(name: "buf", arg: 2, scope: !4787, file: !834, line: 66, type: !54)
!4791 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4787, file: !834, line: 66, type: !104)
!4792 = !DILocalVariable(name: "result", scope: !4787, file: !834, line: 111, type: !107)
!4793 = !DILocalVariable(name: "length", scope: !4794, file: !834, line: 125, type: !104)
!4794 = distinct !DILexicalBlock(scope: !4795, file: !834, line: 124, column: 5)
!4795 = distinct !DILexicalBlock(scope: !4787, file: !834, line: 113, column: 7)
!4796 = !DILocation(line: 0, scope: !4787)
!4797 = !DILocation(line: 0, scope: !4780, inlinedAt: !4798)
!4798 = distinct !DILocation(line: 111, column: 24, scope: !4787)
!4799 = !DILocation(line: 37, column: 24, scope: !4780, inlinedAt: !4798)
!4800 = !DILocation(line: 113, column: 14, scope: !4795)
!4801 = !DILocation(line: 113, column: 7, scope: !4787)
!4802 = !DILocation(line: 116, column: 19, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4804, file: !834, line: 116, column: 11)
!4804 = distinct !DILexicalBlock(scope: !4795, file: !834, line: 114, column: 5)
!4805 = !DILocation(line: 116, column: 11, scope: !4804)
!4806 = !DILocation(line: 120, column: 16, scope: !4803)
!4807 = !DILocation(line: 120, column: 9, scope: !4803)
!4808 = !DILocation(line: 125, column: 23, scope: !4794)
!4809 = !DILocation(line: 0, scope: !4794)
!4810 = !DILocation(line: 126, column: 18, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4794, file: !834, line: 126, column: 11)
!4812 = !DILocation(line: 126, column: 11, scope: !4794)
!4813 = !DILocation(line: 128, column: 39, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4811, file: !834, line: 127, column: 9)
!4815 = !DILocalVariable(name: "__dest", arg: 1, scope: !4816, file: !2361, line: 26, type: !3951)
!4816 = distinct !DISubprogram(name: "memcpy", scope: !2361, file: !2361, line: 26, type: !3949, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4817)
!4817 = !{!4815, !4818, !4819}
!4818 = !DILocalVariable(name: "__src", arg: 2, scope: !4816, file: !2361, line: 26, type: !1062)
!4819 = !DILocalVariable(name: "__len", arg: 3, scope: !4816, file: !2361, line: 26, type: !104)
!4820 = !DILocation(line: 0, scope: !4816, inlinedAt: !4821)
!4821 = distinct !DILocation(line: 128, column: 11, scope: !4814)
!4822 = !DILocation(line: 29, column: 10, scope: !4816, inlinedAt: !4821)
!4823 = !DILocation(line: 129, column: 11, scope: !4814)
!4824 = !DILocation(line: 133, column: 23, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4826, file: !834, line: 133, column: 15)
!4826 = distinct !DILexicalBlock(scope: !4811, file: !834, line: 132, column: 9)
!4827 = !DILocation(line: 133, column: 15, scope: !4826)
!4828 = !DILocation(line: 138, column: 44, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4825, file: !834, line: 134, column: 13)
!4830 = !DILocation(line: 0, scope: !4816, inlinedAt: !4831)
!4831 = distinct !DILocation(line: 138, column: 15, scope: !4829)
!4832 = !DILocation(line: 29, column: 10, scope: !4816, inlinedAt: !4831)
!4833 = !DILocation(line: 139, column: 15, scope: !4829)
!4834 = !DILocation(line: 139, column: 32, scope: !4829)
!4835 = !DILocation(line: 140, column: 13, scope: !4829)
!4836 = !DILocation(line: 0, scope: !4795)
!4837 = !DILocation(line: 145, column: 1, scope: !4787)
