; ModuleID = 'src/tsort.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.tokenbuffer = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.item = type { ptr, ptr, ptr, i8, i8, i64, ptr, ptr }
%struct.successor = type { ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [100 x i8] c"Usage: %s [OPTION] [FILE]\0AWrite totally ordered list consistent with the partial ordering in FILE.\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"tsort\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !32
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !42
@main.long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.9, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.10, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !47
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !426
@.str.24 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !418
@.str.1.25 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !420
@.str.2.26 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !422
@.str.3.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !424
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !428
@stderr = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !434
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !466
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !436
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !456
@.str.1.34 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !458
@.str.2.36 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !460
@.str.3.35 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !462
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !464
@.str.4.29 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !468
@.str.5.30 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !470
@.str.6.31 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !475
@.str.62 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1, !dbg !480
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !483
@.str.71 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !489
@.str.1.72 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !491
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !493
@.str.75 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !524
@.str.1.76 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !527
@.str.2.77 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !529
@.str.3.78 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !534
@.str.4.79 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !536
@.str.5.80 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !538
@.str.6.81 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !540
@.str.7.82 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !542
@.str.8.83 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !544
@.str.9.84 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !546
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.75, ptr @.str.1.76, ptr @.str.2.77, ptr @.str.3.78, ptr @.str.4.79, ptr @.str.5.80, ptr @.str.6.81, ptr @.str.7.82, ptr @.str.8.83, ptr @.str.9.84, ptr null], align 16, !dbg !548
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !559
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !573
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !611
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !618
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !575
@slotvec0 = internal global %struct.tokenbuffer { i64 256, ptr @slot0 }, align 8, !dbg !620
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !563
@.str.10.87 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !580
@.str.11.85 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !582
@.str.12.88 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !584
@.str.13.86 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !586
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !588
@.str.99 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !626
@.str.1.100 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !629
@.str.2.101 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !631
@.str.3.102 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !633
@.str.4.103 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !635
@.str.5.104 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !637
@.str.6.105 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !642
@.str.7.106 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !647
@.str.8.107 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !649
@.str.9.108 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !654
@.str.10.109 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !659
@.str.11.110 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !664
@.str.12.111 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !669
@.str.13.112 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !671
@.str.14.113 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !676
@.str.15.114 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !681
@.str.16.115 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !686
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.120 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !691
@.str.18.121 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !693
@.str.19.122 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !695
@.str.20.123 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !697
@.str.21.124 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !699
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !701
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !703
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !708
@exit_failure = dso_local global i32 1, align 4, !dbg !716
@.str.147 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !722
@.str.1.145 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !725
@.str.2.146 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !727
@.str.152 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !729
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !732
@.str.1.157 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !747

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !834 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !838, metadata !DIExpression()), !dbg !839
  %2 = icmp eq i32 %0, 0, !dbg !840
  br i1 %2, label %8, label %3, !dbg !842

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !843, !tbaa !845
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !843
  %6 = load ptr, ptr @program_name, align 8, !dbg !843, !tbaa !845
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !843
  br label %34, !dbg !843

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !849
  %10 = load ptr, ptr @program_name, align 8, !dbg !849, !tbaa !845
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !849
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !851
  %13 = load ptr, ptr @stdout, align 8, !dbg !851, !tbaa !845
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !851
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !855
  %16 = load ptr, ptr @stdout, align 8, !dbg !855, !tbaa !845
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !855
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !856
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !856
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !857
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !857
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !858, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !870, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata ptr poison, metadata !870, metadata !DIExpression()), !dbg !875
  tail call void @emit_bug_reporting_address() #39, !dbg !877
  %20 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !878
  call void @llvm.dbg.value(metadata ptr %20, metadata !873, metadata !DIExpression()), !dbg !875
  %21 = icmp eq ptr %20, null, !dbg !879
  br i1 %21, label %29, label %22, !dbg !881

22:                                               ; preds = %8
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(4) @.str.47, i64 noundef 3) #40, !dbg !882
  %24 = icmp eq i32 %23, 0, !dbg !882
  br i1 %24, label %29, label %25, !dbg !883

25:                                               ; preds = %22
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #39, !dbg !884
  %27 = load ptr, ptr @stdout, align 8, !dbg !884, !tbaa !845
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !884
  br label %29, !dbg !886

29:                                               ; preds = %8, %22, %25
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !870, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !875
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #39, !dbg !887
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3) #39, !dbg !887
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #39, !dbg !888
  %33 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.51) #39, !dbg !888
  br label %34

34:                                               ; preds = %29, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !889
  unreachable, !dbg !889
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !890 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !894 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !900 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !903 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !144 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !148, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr %0, metadata !149, metadata !DIExpression()), !dbg !907
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !908, !tbaa !909
  %3 = icmp eq i32 %2, -1, !dbg !911
  br i1 %3, label %4, label %16, !dbg !912

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.17) #39, !dbg !913
  call void @llvm.dbg.value(metadata ptr %5, metadata !150, metadata !DIExpression()), !dbg !914
  %6 = icmp eq ptr %5, null, !dbg !915
  br i1 %6, label %14, label %7, !dbg !916

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !917, !tbaa !918
  %9 = icmp eq i8 %8, 0, !dbg !917
  br i1 %9, label %14, label %10, !dbg !919

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !920, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !926, metadata !DIExpression()), !dbg !927
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.18) #40, !dbg !929
  %12 = icmp eq i32 %11, 0, !dbg !930
  %13 = zext i1 %12 to i32, !dbg !919
  br label %14, !dbg !919

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !931, !tbaa !909
  br label %16, !dbg !932

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !933
  %18 = icmp eq i32 %17, 0, !dbg !933
  br i1 %18, label %22, label %19, !dbg !935

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !936, !tbaa !845
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !936
  br label %128, !dbg !938

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !153, metadata !DIExpression()), !dbg !907
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.19) #40, !dbg !939
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !940
  call void @llvm.dbg.value(metadata ptr %24, metadata !155, metadata !DIExpression()), !dbg !907
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !941
  call void @llvm.dbg.value(metadata ptr %25, metadata !156, metadata !DIExpression()), !dbg !907
  %26 = icmp eq ptr %25, null, !dbg !942
  br i1 %26, label %58, label %27, !dbg !943

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !944
  br i1 %28, label %58, label %29, !dbg !945

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !157, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i64 0, metadata !161, metadata !DIExpression()), !dbg !946
  %30 = icmp ult ptr %24, %25, !dbg !947
  br i1 %30, label %31, label %52, !dbg !948

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !907
  %33 = load ptr, ptr %32, align 8, !tbaa !845
  br label %34, !dbg !948

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !157, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i64 %36, metadata !161, metadata !DIExpression()), !dbg !946
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !949
  call void @llvm.dbg.value(metadata ptr %37, metadata !157, metadata !DIExpression()), !dbg !946
  %38 = load i8, ptr %35, align 1, !dbg !949, !tbaa !918
  %39 = sext i8 %38 to i64, !dbg !949
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !949
  %41 = load i16, ptr %40, align 2, !dbg !949, !tbaa !950
  %42 = freeze i16 %41, !dbg !952
  %43 = lshr i16 %42, 13, !dbg !952
  %44 = and i16 %43, 1, !dbg !952
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !953
  call void @llvm.dbg.value(metadata i64 %46, metadata !161, metadata !DIExpression()), !dbg !946
  %47 = icmp ult ptr %37, %25, !dbg !947
  %48 = icmp ult i64 %46, 2, !dbg !954
  %49 = select i1 %47, i1 %48, i1 false, !dbg !954
  br i1 %49, label %34, label %50, !dbg !948, !llvm.loop !955

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !957
  br i1 %51, label %52, label %54, !dbg !959

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !959

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !959
  call void @llvm.dbg.value(metadata i8 %57, metadata !153, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr %56, metadata !156, metadata !DIExpression()), !dbg !907
  br label %58, !dbg !960

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !907
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !907
  call void @llvm.dbg.value(metadata i8 %60, metadata !153, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr %59, metadata !156, metadata !DIExpression()), !dbg !907
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.20) #40, !dbg !961
  call void @llvm.dbg.value(metadata i64 %61, metadata !162, metadata !DIExpression()), !dbg !907
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !962
  call void @llvm.dbg.value(metadata ptr %62, metadata !163, metadata !DIExpression()), !dbg !907
  br label %63, !dbg !963

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !907
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !907
  call void @llvm.dbg.value(metadata i8 %65, metadata !153, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr %64, metadata !163, metadata !DIExpression()), !dbg !907
  %66 = load i8, ptr %64, align 1, !dbg !964, !tbaa !918
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !965

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !966
  %69 = load i8, ptr %68, align 1, !dbg !969, !tbaa !918
  %70 = icmp eq i8 %69, 45, !dbg !970
  %71 = select i1 %70, i8 0, i8 %65, !dbg !971
  br label %72, !dbg !971

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !907
  call void @llvm.dbg.value(metadata i8 %73, metadata !153, metadata !DIExpression()), !dbg !907
  %74 = tail call ptr @__ctype_b_loc() #42, !dbg !972
  %75 = load ptr, ptr %74, align 8, !dbg !972, !tbaa !845
  %76 = sext i8 %66 to i64, !dbg !972
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !972
  %78 = load i16, ptr %77, align 2, !dbg !972, !tbaa !950
  %79 = and i16 %78, 8192, !dbg !972
  %80 = icmp eq i16 %79, 0, !dbg !972
  br i1 %80, label %96, label %81, !dbg !974

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !975
  br i1 %82, label %98, label %83, !dbg !978

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !979
  %85 = load i8, ptr %84, align 1, !dbg !979, !tbaa !918
  %86 = sext i8 %85 to i64, !dbg !979
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !979
  %88 = load i16, ptr %87, align 2, !dbg !979, !tbaa !950
  %89 = and i16 %88, 8192, !dbg !979
  %90 = icmp eq i16 %89, 0, !dbg !979
  br i1 %90, label %91, label %98, !dbg !980

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !981
  %93 = icmp ne i8 %92, 0, !dbg !981
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !983
  br i1 %95, label %96, label %98, !dbg !983

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !984
  call void @llvm.dbg.value(metadata ptr %97, metadata !163, metadata !DIExpression()), !dbg !907
  br label %63, !dbg !963, !llvm.loop !985

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !987
  %100 = load ptr, ptr @stdout, align 8, !dbg !987, !tbaa !845
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !987
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !920, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !220, metadata !DIExpression()), !dbg !907
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.34, i64 noundef 6) #40, !dbg !1008
  %103 = icmp eq i32 %102, 0, !dbg !1008
  br i1 %103, label %107, label %104, !dbg !1010

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.35, i64 noundef 9) #40, !dbg !1011
  %106 = icmp eq i32 %105, 0, !dbg !1011
  br i1 %106, label %107, label %110, !dbg !1012

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1013
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #39, !dbg !1013
  br label %113, !dbg !1015

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1016
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #39, !dbg !1016
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1018, !tbaa !845
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %114), !dbg !1018
  %116 = load ptr, ptr @stdout, align 8, !dbg !1019, !tbaa !845
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %116), !dbg !1019
  %118 = ptrtoint ptr %64 to i64, !dbg !1020
  %119 = sub i64 %118, %99, !dbg !1020
  %120 = load ptr, ptr @stdout, align 8, !dbg !1020, !tbaa !845
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1020
  %122 = load ptr, ptr @stdout, align 8, !dbg !1021, !tbaa !845
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %122), !dbg !1021
  %124 = load ptr, ptr @stdout, align 8, !dbg !1022, !tbaa !845
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %124), !dbg !1022
  %126 = load ptr, ptr @stdout, align 8, !dbg !1023, !tbaa !845
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1023
  br label %128, !dbg !1024

128:                                              ; preds = %113, %19
  ret void, !dbg !1024
}

; Function Attrs: nounwind
declare !dbg !1025 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1029 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1033 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1035 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1038 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1041 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1044 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1047 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1053 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1054 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !49 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !392, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata ptr %1, metadata !393, metadata !DIExpression()), !dbg !1060
  %3 = load ptr, ptr %1, align 8, !dbg !1061, !tbaa !845
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !1062
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #39, !dbg !1063
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #39, !dbg !1064
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #39, !dbg !1065
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1066
  br label %8, !dbg !1067

8:                                                ; preds = %8, %2
  %9 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @main.long_options, ptr noundef null) #39, !dbg !1068
  call void @llvm.dbg.value(metadata i32 %9, metadata !394, metadata !DIExpression()), !dbg !1069
  switch i32 %9, label %15 [
    i32 -1, label %16
    i32 119, label %8
    i32 -130, label %10
    i32 -131, label %11
  ], !dbg !1070

10:                                               ; preds = %8
  tail call void @usage(i32 noundef 0) #43, !dbg !1071
  unreachable, !dbg !1071

11:                                               ; preds = %8
  %12 = load ptr, ptr @stdout, align 8, !dbg !1073, !tbaa !845
  %13 = load ptr, ptr @Version, align 8, !dbg !1073, !tbaa !845
  %14 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #39, !dbg !1073
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %13, ptr noundef %14, ptr noundef null) #39, !dbg !1073
  tail call void @exit(i32 noundef 0) #41, !dbg !1073
  unreachable, !dbg !1073

15:                                               ; preds = %8
  tail call void @usage(i32 noundef 1) #43, !dbg !1074
  unreachable, !dbg !1074

16:                                               ; preds = %8
  %17 = load i32, ptr @optind, align 4, !dbg !1075, !tbaa !909
  %18 = sub nsw i32 %0, %17, !dbg !1077
  %19 = icmp sgt i32 %18, 1, !dbg !1078
  br i1 %19, label %20, label %28, !dbg !1079

20:                                               ; preds = %16
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #39, !dbg !1080
  %22 = load i32, ptr @optind, align 4, !dbg !1080, !tbaa !909
  %23 = add nsw i32 %22, 1, !dbg !1080
  %24 = sext i32 %23 to i64, !dbg !1080
  %25 = getelementptr inbounds ptr, ptr %1, i64 %24, !dbg !1080
  %26 = load ptr, ptr %25, align 8, !dbg !1080, !tbaa !845
  %27 = tail call ptr @quote(ptr noundef %26) #39, !dbg !1080
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %21, ptr noundef %27) #39, !dbg !1080
  tail call void @usage(i32 noundef 1) #43, !dbg !1082
  unreachable, !dbg !1082

28:                                               ; preds = %16
  %29 = icmp eq i32 %17, %0, !dbg !1083
  br i1 %29, label %34, label %30, !dbg !1084

30:                                               ; preds = %28
  %31 = sext i32 %17 to i64, !dbg !1085
  %32 = getelementptr inbounds ptr, ptr %1, i64 %31, !dbg !1085
  %33 = load ptr, ptr %32, align 8, !dbg !1085, !tbaa !845
  br label %34, !dbg !1084

34:                                               ; preds = %28, %30
  %35 = phi ptr [ %33, %30 ], [ @.str.15, %28 ], !dbg !1084
  tail call fastcc void @tsort(ptr noundef %35) #43, !dbg !1086
  unreachable, !dbg !1086
}

; Function Attrs: nounwind
declare !dbg !1087 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1090 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1091 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1094 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @tsort(ptr noundef %0) unnamed_addr #0 !dbg !1100 {
  %2 = alloca %struct.tokenbuffer, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1102, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8 1, metadata !1103, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata ptr null, metadata !1104, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata ptr null, metadata !1105, metadata !DIExpression()), !dbg !1120
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #39, !dbg !1121
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1106, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata ptr %0, metadata !920, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !926, metadata !DIExpression()), !dbg !1123
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.15) #40, !dbg !1125
  %4 = icmp eq i32 %3, 0, !dbg !1126
  call void @llvm.dbg.value(metadata i1 %4, metadata !1113, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1120
  call void @llvm.dbg.value(metadata ptr null, metadata !1127, metadata !DIExpression()), !dbg !1133
  %5 = tail call noalias nonnull dereferenceable(56) ptr @xzalloc(i64 noundef 56) #44, !dbg !1135
  call void @llvm.dbg.value(metadata ptr %5, metadata !1132, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata ptr %5, metadata !1114, metadata !DIExpression()), !dbg !1120
  br i1 %4, label %14, label %6, !dbg !1136

6:                                                ; preds = %1
  %7 = load ptr, ptr @stdin, align 8, !dbg !1138, !tbaa !845
  %8 = tail call ptr @freopen_safer(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef %7) #39, !dbg !1139
  %9 = icmp eq ptr %8, null, !dbg !1139
  br i1 %9, label %10, label %14, !dbg !1140

10:                                               ; preds = %6
  %11 = tail call ptr @__errno_location() #42, !dbg !1141
  %12 = load i32, ptr %11, align 4, !dbg !1141, !tbaa !909
  %13 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #39, !dbg !1141
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %12, ptr noundef nonnull @.str.53, ptr noundef %13) #39, !dbg !1141
  unreachable, !dbg !1141

14:                                               ; preds = %6, %1
  %15 = load ptr, ptr @stdin, align 8, !dbg !1142, !tbaa !845
  tail call void @fadvise(ptr noundef %15, i32 noundef 2) #39, !dbg !1143
  call void @init_tokenbuffer(ptr noundef nonnull %2) #39, !dbg !1144
  %16 = getelementptr inbounds %struct.tokenbuffer, ptr %2, i64 0, i32 1
  %17 = getelementptr inbounds %struct.item, ptr %5, i64 0, i32 2
  br label %18, !dbg !1145

18:                                               ; preds = %188, %14
  %19 = phi ptr [ null, %14 ], [ %189, %188 ], !dbg !1146
  call void @llvm.dbg.value(metadata ptr %19, metadata !1104, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata ptr %19, metadata !1105, metadata !DIExpression()), !dbg !1120
  %20 = load ptr, ptr @stdin, align 8, !dbg !1147, !tbaa !845
  %21 = call i64 @readtoken(ptr noundef %20, ptr noundef nonnull @.str.19, i64 noundef 3, ptr noundef nonnull %2) #39, !dbg !1148
  call void @llvm.dbg.value(metadata i64 %21, metadata !1115, metadata !DIExpression()), !dbg !1149
  switch i64 %21, label %33 [
    i64 -1, label %22
    i64 0, label %32
  ], !dbg !1150

22:                                               ; preds = %18
  %23 = load ptr, ptr @stdin, align 8, !dbg !1151, !tbaa !845
  call void @llvm.dbg.value(metadata ptr %23, metadata !1155, metadata !DIExpression()), !dbg !1161
  %24 = load i32, ptr %23, align 8, !dbg !1163, !tbaa !1164
  %25 = and i32 %24, 32, !dbg !1151
  %26 = icmp eq i32 %25, 0, !dbg !1151
  br i1 %26, label %190, label %27, !dbg !1167

27:                                               ; preds = %22
  %28 = tail call ptr @__errno_location() #42, !dbg !1168
  %29 = load i32, ptr %28, align 4, !dbg !1168, !tbaa !909
  %30 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #39, !dbg !1168
  %31 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #39, !dbg !1168
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %29, ptr noundef %30, ptr noundef %31) #39, !dbg !1168
  unreachable, !dbg !1168

32:                                               ; preds = %18
  call void @__assert_fail(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 458, ptr noundef nonnull @__PRETTY_FUNCTION__.tsort) #41, !dbg !1169
  unreachable, !dbg !1169

33:                                               ; preds = %18
  %34 = load ptr, ptr %16, align 8, !dbg !1172, !tbaa !1173
  call void @llvm.dbg.value(metadata ptr %5, metadata !1175, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata ptr %34, metadata !1180, metadata !DIExpression()), !dbg !1192
  %35 = load ptr, ptr %17, align 8, !dbg !1194, !tbaa !1196
  %36 = icmp eq ptr %35, null, !dbg !1199
  br i1 %36, label %41, label %37, !dbg !1200

37:                                               ; preds = %33
  call void @llvm.dbg.value(metadata ptr %5, metadata !1185, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata ptr %35, metadata !1184, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata ptr %35, metadata !1181, metadata !DIExpression()), !dbg !1192
  %38 = load ptr, ptr %35, align 8, !dbg !1201, !tbaa !1202
  %39 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %38) #40, !dbg !1203
  call void @llvm.dbg.value(metadata i32 %39, metadata !1186, metadata !DIExpression()), !dbg !1192
  %40 = icmp eq i32 %39, 0, !dbg !1204
  br i1 %40, label %172, label %47, !dbg !1206

41:                                               ; preds = %33
  call void @llvm.dbg.value(metadata ptr %34, metadata !1127, metadata !DIExpression()), !dbg !1207
  %42 = call noalias nonnull dereferenceable(56) ptr @xzalloc(i64 noundef 56) #44, !dbg !1209
  call void @llvm.dbg.value(metadata ptr %42, metadata !1132, metadata !DIExpression()), !dbg !1207
  %43 = icmp eq ptr %34, null, !dbg !1210
  br i1 %43, label %46, label %44, !dbg !1212

44:                                               ; preds = %41
  %45 = call noalias nonnull ptr @xstrdup(ptr noundef nonnull %34) #39, !dbg !1213
  store ptr %45, ptr %42, align 8, !dbg !1214, !tbaa !1202
  br label %46, !dbg !1215

46:                                               ; preds = %44, %41
  store ptr %42, ptr %17, align 8, !dbg !1216, !tbaa !1196
  br label %172, !dbg !1217

47:                                               ; preds = %37, %163
  %48 = phi i32 [ %170, %163 ], [ %39, %37 ]
  %49 = phi ptr [ %168, %163 ], [ %5, %37 ]
  %50 = phi ptr [ %167, %163 ], [ %35, %37 ]
  %51 = phi ptr [ %56, %163 ], [ %35, %37 ]
  call void @llvm.dbg.value(metadata ptr %49, metadata !1185, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata ptr %50, metadata !1184, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata ptr %51, metadata !1181, metadata !DIExpression()), !dbg !1192
  %52 = icmp slt i32 %48, 0, !dbg !1218
  %53 = getelementptr inbounds %struct.item, ptr %51, i64 0, i32 1, !dbg !1220
  %54 = getelementptr inbounds %struct.item, ptr %51, i64 0, i32 2, !dbg !1220
  %55 = select i1 %52, ptr %53, ptr %54, !dbg !1220
  %56 = load ptr, ptr %55, align 8, !dbg !1221, !tbaa !845
  call void @llvm.dbg.value(metadata ptr %56, metadata !1182, metadata !DIExpression()), !dbg !1192
  %57 = icmp eq ptr %56, null, !dbg !1222
  br i1 %57, label %58, label %163, !dbg !1223

58:                                               ; preds = %47
  call void @llvm.dbg.value(metadata ptr %34, metadata !1127, metadata !DIExpression()), !dbg !1224
  %59 = call noalias nonnull dereferenceable(56) ptr @xzalloc(i64 noundef 56) #44, !dbg !1226
  call void @llvm.dbg.value(metadata ptr %59, metadata !1132, metadata !DIExpression()), !dbg !1224
  %60 = icmp eq ptr %34, null, !dbg !1227
  br i1 %60, label %63, label %61, !dbg !1228

61:                                               ; preds = %58
  %62 = call noalias nonnull ptr @xstrdup(ptr noundef nonnull %34) #39, !dbg !1229
  store ptr %62, ptr %59, align 8, !dbg !1230, !tbaa !1202
  br label %63, !dbg !1231

63:                                               ; preds = %61, %58
  call void @llvm.dbg.value(metadata ptr %59, metadata !1182, metadata !DIExpression()), !dbg !1192
  store ptr %59, ptr %55, align 8, !dbg !1232, !tbaa !845
  %64 = load ptr, ptr %50, align 8, !dbg !1234, !tbaa !1202
  %65 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %64) #40, !dbg !1235
  call void @llvm.dbg.value(metadata i32 %65, metadata !1186, metadata !DIExpression()), !dbg !1192
  %66 = icmp slt i32 %65, 0, !dbg !1236
  br i1 %66, label %67, label %69, !dbg !1238

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 1, !dbg !1239
  call void @llvm.dbg.value(metadata ptr poison, metadata !1181, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata ptr poison, metadata !1183, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i32 -1, metadata !1186, metadata !DIExpression()), !dbg !1192
  br label %74, !dbg !1241

69:                                               ; preds = %63
  %70 = icmp eq i32 %65, 0, !dbg !1242
  br i1 %70, label %71, label %72, !dbg !1246

71:                                               ; preds = %69
  call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.56, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__.search_item) #41, !dbg !1242
  unreachable, !dbg !1242

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 2, !dbg !1247
  call void @llvm.dbg.value(metadata ptr poison, metadata !1181, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata ptr poison, metadata !1183, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i32 1, metadata !1186, metadata !DIExpression()), !dbg !1192
  br label %74

74:                                               ; preds = %72, %67
  %75 = phi ptr [ %68, %67 ], [ %73, %72 ]
  %76 = phi i32 [ -1, %67 ], [ 1, %72 ], !dbg !1248
  %77 = load ptr, ptr %75, align 8, !dbg !1248, !tbaa !845
  call void @llvm.dbg.value(metadata i32 %76, metadata !1186, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata ptr %77, metadata !1183, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata ptr %77, metadata !1181, metadata !DIExpression()), !dbg !1192
  %78 = icmp eq ptr %77, %59, !dbg !1249
  br i1 %78, label %97, label %79, !dbg !1250

79:                                               ; preds = %74, %93
  %80 = phi ptr [ %95, %93 ], [ %77, %74 ]
  call void @llvm.dbg.value(metadata ptr %80, metadata !1181, metadata !DIExpression()), !dbg !1192
  %81 = load ptr, ptr %80, align 8, !dbg !1251, !tbaa !1202
  %82 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %81) #40, !dbg !1252
  call void @llvm.dbg.value(metadata i32 %82, metadata !1187, metadata !DIExpression()), !dbg !1253
  %83 = icmp slt i32 %82, 0, !dbg !1254
  br i1 %83, label %84, label %87, !dbg !1256

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.item, ptr %80, i64 0, i32 3, !dbg !1257
  store i8 -1, ptr %85, align 8, !dbg !1259, !tbaa !1260
  %86 = getelementptr inbounds %struct.item, ptr %80, i64 0, i32 1, !dbg !1261
  call void @llvm.dbg.value(metadata ptr poison, metadata !1181, metadata !DIExpression()), !dbg !1192
  br label %93, !dbg !1262

87:                                               ; preds = %79
  %88 = icmp eq i32 %82, 0, !dbg !1263
  br i1 %88, label %89, label %90, !dbg !1267

89:                                               ; preds = %87
  call void @__assert_fail(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.56, i32 noundef 181, ptr noundef nonnull @__PRETTY_FUNCTION__.search_item) #41, !dbg !1263
  unreachable, !dbg !1263

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.item, ptr %80, i64 0, i32 3, !dbg !1268
  store i8 1, ptr %91, align 8, !dbg !1269, !tbaa !1260
  %92 = getelementptr inbounds %struct.item, ptr %80, i64 0, i32 2, !dbg !1270
  call void @llvm.dbg.value(metadata ptr poison, metadata !1181, metadata !DIExpression()), !dbg !1192
  br label %93

93:                                               ; preds = %90, %84
  %94 = phi ptr [ %86, %84 ], [ %92, %90 ]
  %95 = load ptr, ptr %94, align 8, !dbg !1271, !tbaa !845
  call void @llvm.dbg.value(metadata ptr %95, metadata !1181, metadata !DIExpression()), !dbg !1192
  %96 = icmp eq ptr %95, %59, !dbg !1249
  br i1 %96, label %97, label %79, !dbg !1250, !llvm.loop !1272

97:                                               ; preds = %93, %74
  %98 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 3, !dbg !1274
  %99 = load i8, ptr %98, align 8, !dbg !1274, !tbaa !1260
  %100 = icmp eq i8 %99, 0, !dbg !1276
  br i1 %100, label %105, label %101, !dbg !1277

101:                                              ; preds = %97
  %102 = sext i8 %99 to i32, !dbg !1278
  %103 = sub nsw i32 0, %76, !dbg !1279
  %104 = icmp eq i32 %102, %103, !dbg !1280
  br i1 %104, label %105, label %108, !dbg !1281

105:                                              ; preds = %101, %97
  %106 = trunc i32 %76 to i8, !dbg !1282
  %107 = add i8 %99, %106, !dbg !1282
  store i8 %107, ptr %98, align 8, !dbg !1282, !tbaa !1260
  br label %172, !dbg !1284

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 3, !dbg !1285
  %110 = load i8, ptr %109, align 8, !dbg !1285, !tbaa !1260
  %111 = sext i8 %110 to i32, !dbg !1287
  %112 = icmp eq i32 %76, %111, !dbg !1288
  br i1 %112, label %113, label %124, !dbg !1289

113:                                              ; preds = %108
  call void @llvm.dbg.value(metadata ptr %77, metadata !1181, metadata !DIExpression()), !dbg !1192
  br i1 %66, label %114, label %118, !dbg !1290

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 2, !dbg !1292
  %116 = load ptr, ptr %115, align 8, !dbg !1292, !tbaa !1196
  %117 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 1, !dbg !1295
  store ptr %116, ptr %117, align 8, !dbg !1296, !tbaa !1297
  br label %122, !dbg !1298

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 1, !dbg !1299
  %120 = load ptr, ptr %119, align 8, !dbg !1299, !tbaa !1297
  %121 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 2, !dbg !1301
  store ptr %120, ptr %121, align 8, !dbg !1302, !tbaa !1196
  br label %122

122:                                              ; preds = %118, %114
  %123 = phi ptr [ %119, %118 ], [ %115, %114 ]
  store ptr %50, ptr %123, align 8, !dbg !1303, !tbaa !845
  store i8 0, ptr %109, align 8, !dbg !1304, !tbaa !1260
  br label %154, !dbg !1305

124:                                              ; preds = %108
  br i1 %66, label %125, label %133, !dbg !1306

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 2, !dbg !1308
  %127 = load ptr, ptr %126, align 8, !dbg !1308, !tbaa !1196
  call void @llvm.dbg.value(metadata ptr %127, metadata !1181, metadata !DIExpression()), !dbg !1192
  %128 = getelementptr inbounds %struct.item, ptr %127, i64 0, i32 1, !dbg !1311
  %129 = load ptr, ptr %128, align 8, !dbg !1311, !tbaa !1297
  store ptr %129, ptr %126, align 8, !dbg !1312, !tbaa !1196
  store ptr %77, ptr %128, align 8, !dbg !1313, !tbaa !1297
  %130 = getelementptr inbounds %struct.item, ptr %127, i64 0, i32 2, !dbg !1314
  %131 = load ptr, ptr %130, align 8, !dbg !1314, !tbaa !1196
  %132 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 1, !dbg !1315
  store ptr %131, ptr %132, align 8, !dbg !1316, !tbaa !1297
  br label %141, !dbg !1317

133:                                              ; preds = %124
  %134 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 1, !dbg !1318
  %135 = load ptr, ptr %134, align 8, !dbg !1318, !tbaa !1297
  call void @llvm.dbg.value(metadata ptr %135, metadata !1181, metadata !DIExpression()), !dbg !1192
  %136 = getelementptr inbounds %struct.item, ptr %135, i64 0, i32 2, !dbg !1320
  %137 = load ptr, ptr %136, align 8, !dbg !1320, !tbaa !1196
  store ptr %137, ptr %134, align 8, !dbg !1321, !tbaa !1297
  store ptr %77, ptr %136, align 8, !dbg !1322, !tbaa !1196
  %138 = getelementptr inbounds %struct.item, ptr %135, i64 0, i32 1, !dbg !1323
  %139 = load ptr, ptr %138, align 8, !dbg !1323, !tbaa !1297
  %140 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 2, !dbg !1324
  store ptr %139, ptr %140, align 8, !dbg !1325, !tbaa !1196
  br label %141

141:                                              ; preds = %133, %125
  %142 = phi ptr [ %138, %133 ], [ %130, %125 ]
  %143 = phi ptr [ %135, %133 ], [ %127, %125 ], !dbg !1326
  store ptr %50, ptr %142, align 8, !dbg !1326, !tbaa !845
  call void @llvm.dbg.value(metadata ptr %143, metadata !1181, metadata !DIExpression()), !dbg !1192
  store i8 0, ptr %98, align 8, !dbg !1327, !tbaa !1260
  store i8 0, ptr %109, align 8, !dbg !1328, !tbaa !1260
  %144 = getelementptr inbounds %struct.item, ptr %143, i64 0, i32 3, !dbg !1329
  %145 = load i8, ptr %144, align 8, !dbg !1329, !tbaa !1260
  %146 = sext i8 %145 to i32, !dbg !1331
  %147 = icmp eq i32 %76, %146, !dbg !1332
  br i1 %147, label %150, label %148, !dbg !1333

148:                                              ; preds = %141
  %149 = icmp eq i32 %146, %103, !dbg !1334
  br i1 %149, label %150, label %154, !dbg !1336

150:                                              ; preds = %148, %141
  %151 = phi i32 [ %103, %141 ], [ %76, %148 ]
  %152 = phi ptr [ %98, %141 ], [ %109, %148 ]
  %153 = trunc i32 %151 to i8, !dbg !1337
  store i8 %153, ptr %152, align 8, !dbg !1337, !tbaa !1260
  br label %154, !dbg !1338

154:                                              ; preds = %150, %148, %122
  %155 = phi ptr [ %98, %122 ], [ %144, %150 ], [ %144, %148 ]
  %156 = phi ptr [ %77, %122 ], [ %143, %150 ], [ %143, %148 ], !dbg !1339
  store i8 0, ptr %155, align 8, !dbg !1339, !tbaa !1260
  call void @llvm.dbg.value(metadata ptr %156, metadata !1181, metadata !DIExpression()), !dbg !1192
  %157 = getelementptr inbounds %struct.item, ptr %49, i64 0, i32 2, !dbg !1340
  %158 = load ptr, ptr %157, align 8, !dbg !1340, !tbaa !1196
  %159 = icmp eq ptr %50, %158, !dbg !1342
  br i1 %159, label %160, label %161, !dbg !1343

160:                                              ; preds = %154
  store ptr %156, ptr %157, align 8, !dbg !1344, !tbaa !1196
  br label %172, !dbg !1345

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.item, ptr %49, i64 0, i32 1, !dbg !1346
  store ptr %156, ptr %162, align 8, !dbg !1347, !tbaa !1297
  br label %172

163:                                              ; preds = %47
  %164 = getelementptr inbounds %struct.item, ptr %56, i64 0, i32 3, !dbg !1348
  %165 = load i8, ptr %164, align 8, !dbg !1348, !tbaa !1260
  %166 = icmp eq i8 %165, 0, !dbg !1350
  %167 = select i1 %166, ptr %50, ptr %56, !dbg !1351
  %168 = select i1 %166, ptr %49, ptr %51, !dbg !1351
  call void @llvm.dbg.value(metadata ptr %168, metadata !1185, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata ptr %167, metadata !1184, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata ptr %56, metadata !1181, metadata !DIExpression()), !dbg !1192
  %169 = load ptr, ptr %56, align 8, !dbg !1201, !tbaa !1202
  %170 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %169) #40, !dbg !1203
  call void @llvm.dbg.value(metadata i32 %170, metadata !1186, metadata !DIExpression()), !dbg !1192
  %171 = icmp eq i32 %170, 0, !dbg !1204
  br i1 %171, label %172, label %47, !dbg !1206, !llvm.loop !1352

172:                                              ; preds = %163, %37, %46, %105, %160, %161
  %173 = phi ptr [ %42, %46 ], [ %59, %105 ], [ %59, %161 ], [ %59, %160 ], [ %35, %37 ], [ %56, %163 ], !dbg !1192
  call void @llvm.dbg.value(metadata ptr %173, metadata !1105, metadata !DIExpression()), !dbg !1120
  %174 = icmp eq ptr %19, null, !dbg !1355
  br i1 %174, label %188, label %175, !dbg !1357

175:                                              ; preds = %172
  call void @llvm.dbg.value(metadata ptr %19, metadata !1358, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata ptr %173, metadata !1363, metadata !DIExpression()), !dbg !1365
  %176 = load ptr, ptr %19, align 8, !dbg !1368, !tbaa !1202
  %177 = load ptr, ptr %173, align 8, !dbg !1370, !tbaa !1202
  call void @llvm.dbg.value(metadata ptr %176, metadata !920, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata ptr %177, metadata !926, metadata !DIExpression()), !dbg !1371
  %178 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(1) %177) #40, !dbg !1373
  %179 = icmp eq i32 %178, 0, !dbg !1374
  br i1 %179, label %188, label %180, !dbg !1375

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.item, ptr %173, i64 0, i32 5, !dbg !1376
  %182 = load i64, ptr %181, align 8, !dbg !1378, !tbaa !1379
  %183 = add i64 %182, 1, !dbg !1378
  store i64 %183, ptr %181, align 8, !dbg !1378, !tbaa !1379
  %184 = call noalias nonnull dereferenceable(16) ptr @xmalloc(i64 noundef 16) #44, !dbg !1380
  call void @llvm.dbg.value(metadata ptr %184, metadata !1364, metadata !DIExpression()), !dbg !1365
  store ptr %173, ptr %184, align 8, !dbg !1381, !tbaa !1382
  %185 = getelementptr inbounds %struct.item, ptr %19, i64 0, i32 7, !dbg !1384
  %186 = load ptr, ptr %185, align 8, !dbg !1384, !tbaa !1385
  %187 = getelementptr inbounds %struct.successor, ptr %184, i64 0, i32 1, !dbg !1386
  store ptr %186, ptr %187, align 8, !dbg !1387, !tbaa !1388
  store ptr %184, ptr %185, align 8, !dbg !1389, !tbaa !1385
  br label %188, !dbg !1390

188:                                              ; preds = %180, %175, %172
  %189 = phi ptr [ %173, %172 ], [ null, %175 ], [ null, %180 ]
  br label %18, !dbg !1120

190:                                              ; preds = %22
  call void @llvm.dbg.value(metadata ptr poison, metadata !1104, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata ptr %19, metadata !1105, metadata !DIExpression()), !dbg !1120
  %191 = icmp eq ptr %19, null, !dbg !1391
  br i1 %191, label %195, label %192, !dbg !1393

192:                                              ; preds = %190
  %193 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #39, !dbg !1394
  %194 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #39, !dbg !1394
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %193, ptr noundef %194) #39, !dbg !1394
  unreachable, !dbg !1394

195:                                              ; preds = %190
  call void @llvm.dbg.value(metadata ptr %5, metadata !1395, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata ptr @count_items, metadata !1403, metadata !DIExpression()), !dbg !1404
  %196 = load ptr, ptr %17, align 8, !dbg !1406, !tbaa !1196
  %197 = icmp eq ptr %196, null, !dbg !1408
  br i1 %197, label %200, label %198, !dbg !1409

198:                                              ; preds = %195
  %199 = call fastcc zeroext i1 @recurse_tree(ptr noundef nonnull %196, ptr noundef nonnull @count_items), !dbg !1410
  br label %200, !dbg !1410

200:                                              ; preds = %195, %198
  call void @llvm.dbg.value(metadata i8 1, metadata !1103, metadata !DIExpression()), !dbg !1120
  %201 = load i64, ptr @n_strings, align 8, !dbg !1411, !tbaa !1412
  %202 = icmp eq i64 %201, 0, !dbg !1413
  br i1 %202, label %259, label %203, !dbg !1414

203:                                              ; preds = %200, %256
  %204 = phi i8 [ 0, %256 ], [ 1, %200 ]
  call void @llvm.dbg.value(metadata i8 %204, metadata !1103, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata ptr %5, metadata !1395, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata ptr @scan_zeros, metadata !1403, metadata !DIExpression()), !dbg !1415
  br i1 %197, label %207, label %205, !dbg !1417

205:                                              ; preds = %203
  %206 = call fastcc zeroext i1 @recurse_tree(ptr noundef nonnull %196, ptr noundef nonnull @scan_zeros), !dbg !1418
  br label %207, !dbg !1418

207:                                              ; preds = %203, %205
  %208 = load ptr, ptr @head, align 8, !dbg !1419, !tbaa !845
  %209 = icmp eq ptr %208, null, !dbg !1420
  br i1 %209, label %210, label %212, !dbg !1420

210:                                              ; preds = %207
  %211 = load i64, ptr @n_strings, align 8, !dbg !1421, !tbaa !1412
  br label %244, !dbg !1420

212:                                              ; preds = %207, %240
  %213 = phi ptr [ %242, %240 ], [ %208, %207 ]
  %214 = getelementptr inbounds %struct.item, ptr %213, i64 0, i32 7, !dbg !1423
  %215 = load ptr, ptr %214, align 8, !dbg !1423, !tbaa !1385
  call void @llvm.dbg.value(metadata ptr %215, metadata !1117, metadata !DIExpression()), !dbg !1424
  %216 = load ptr, ptr %213, align 8, !dbg !1425, !tbaa !1202
  %217 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %216), !dbg !1426
  %218 = load ptr, ptr @head, align 8, !dbg !1427, !tbaa !845
  %219 = getelementptr inbounds %struct.item, ptr %218, i64 0, i32 4, !dbg !1428
  store i8 1, ptr %219, align 1, !dbg !1429, !tbaa !1430
  %220 = load i64, ptr @n_strings, align 8, !dbg !1431, !tbaa !1412
  %221 = add i64 %220, -1, !dbg !1431
  store i64 %221, ptr @n_strings, align 8, !dbg !1431, !tbaa !1412
  %222 = icmp eq ptr %215, null, !dbg !1432
  br i1 %222, label %240, label %223, !dbg !1432

223:                                              ; preds = %212
  %224 = load ptr, ptr @zeros, align 8, !tbaa !845
  br label %225, !dbg !1432

225:                                              ; preds = %223, %235
  %226 = phi ptr [ %238, %235 ], [ %215, %223 ]
  %227 = phi ptr [ %236, %235 ], [ %224, %223 ]
  call void @llvm.dbg.value(metadata ptr %226, metadata !1117, metadata !DIExpression()), !dbg !1424
  %228 = load ptr, ptr %226, align 8, !dbg !1433, !tbaa !1382
  %229 = getelementptr inbounds %struct.item, ptr %228, i64 0, i32 5, !dbg !1435
  %230 = load i64, ptr %229, align 8, !dbg !1436, !tbaa !1379
  %231 = add i64 %230, -1, !dbg !1436
  store i64 %231, ptr %229, align 8, !dbg !1436, !tbaa !1379
  %232 = icmp eq i64 %231, 0, !dbg !1437
  br i1 %232, label %233, label %235, !dbg !1439

233:                                              ; preds = %225
  %234 = getelementptr inbounds %struct.item, ptr %227, i64 0, i32 6, !dbg !1440
  store ptr %228, ptr %234, align 8, !dbg !1442, !tbaa !1443
  store ptr %228, ptr @zeros, align 8, !dbg !1444, !tbaa !845
  br label %235, !dbg !1445

235:                                              ; preds = %233, %225
  %236 = phi ptr [ %228, %233 ], [ %227, %225 ]
  %237 = getelementptr inbounds %struct.successor, ptr %226, i64 0, i32 1, !dbg !1446
  %238 = load ptr, ptr %237, align 8, !dbg !1446, !tbaa !1388
  call void @llvm.dbg.value(metadata ptr %238, metadata !1117, metadata !DIExpression()), !dbg !1424
  %239 = icmp eq ptr %238, null, !dbg !1432
  br i1 %239, label %240, label %225, !dbg !1432, !llvm.loop !1447

240:                                              ; preds = %235, %212
  %241 = getelementptr inbounds %struct.item, ptr %218, i64 0, i32 6, !dbg !1449
  %242 = load ptr, ptr %241, align 8, !dbg !1449, !tbaa !1443
  store ptr %242, ptr @head, align 8, !dbg !1450, !tbaa !845
  %243 = icmp eq ptr %242, null, !dbg !1420
  br i1 %243, label %244, label %212, !dbg !1420, !llvm.loop !1451

244:                                              ; preds = %240, %210
  %245 = phi i64 [ %211, %210 ], [ %221, %240 ], !dbg !1421
  %246 = icmp eq i64 %245, 0, !dbg !1453
  br i1 %246, label %259, label %247, !dbg !1454

247:                                              ; preds = %244
  %248 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #39, !dbg !1455
  %249 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #39, !dbg !1455
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %248, ptr noundef %249) #39, !dbg !1455
  call void @llvm.dbg.value(metadata i8 0, metadata !1103, metadata !DIExpression()), !dbg !1120
  br label %250, !dbg !1457

250:                                              ; preds = %253, %247
  call void @llvm.dbg.value(metadata ptr %5, metadata !1395, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata ptr @detect_loop, metadata !1403, metadata !DIExpression()), !dbg !1458
  br i1 %197, label %253, label %251, !dbg !1460

251:                                              ; preds = %250
  %252 = call fastcc zeroext i1 @recurse_tree(ptr noundef nonnull %196, ptr noundef nonnull @detect_loop), !dbg !1461
  br label %253, !dbg !1461

253:                                              ; preds = %250, %251
  %254 = load ptr, ptr @loop, align 8, !dbg !1462, !tbaa !845
  %255 = icmp eq ptr %254, null, !dbg !1463
  br i1 %255, label %256, label %250, !dbg !1463, !llvm.loop !1464

256:                                              ; preds = %253
  %257 = load i64, ptr @n_strings, align 8, !dbg !1411, !tbaa !1412
  call void @llvm.dbg.value(metadata i8 0, metadata !1103, metadata !DIExpression()), !dbg !1120
  %258 = icmp eq i64 %257, 0, !dbg !1413
  br i1 %258, label %259, label %203, !dbg !1414, !llvm.loop !1466

259:                                              ; preds = %244, %256, %200
  %260 = phi i8 [ 1, %200 ], [ %204, %244 ], [ 0, %256 ], !dbg !1120
  %261 = load ptr, ptr @stdin, align 8, !dbg !1468, !tbaa !845
  %262 = call i32 @rpl_fclose(ptr noundef %261) #39, !dbg !1470
  %263 = icmp eq i32 %262, 0, !dbg !1471
  br i1 %263, label %273, label %264, !dbg !1472

264:                                              ; preds = %259
  %265 = tail call ptr @__errno_location() #42, !dbg !1473
  %266 = load i32, ptr %265, align 4, !dbg !1473, !tbaa !909
  br i1 %4, label %267, label %269, !dbg !1473

267:                                              ; preds = %264
  %268 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #39, !dbg !1473
  br label %271, !dbg !1473

269:                                              ; preds = %264
  %270 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #39, !dbg !1473
  br label %271, !dbg !1473

271:                                              ; preds = %269, %267
  %272 = phi ptr [ %268, %267 ], [ %270, %269 ], !dbg !1473
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %266, ptr noundef nonnull @.str.53, ptr noundef %272) #39, !dbg !1473
  unreachable, !dbg !1473

273:                                              ; preds = %259
  %274 = and i8 %260, 1, !dbg !1474
  %275 = icmp eq i8 %274, 0, !dbg !1474
  %276 = zext i1 %275 to i32, !dbg !1474
  call void @exit(i32 noundef %276) #41, !dbg !1475
  unreachable, !dbg !1475
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1476 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare !dbg !1480 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i1 @count_items(ptr nocapture readnone %0) #11 !dbg !1484 {
  call void @llvm.dbg.value(metadata ptr poison, metadata !1486, metadata !DIExpression()), !dbg !1487
  %2 = load i64, ptr @n_strings, align 8, !dbg !1488, !tbaa !1412
  %3 = add i64 %2, 1, !dbg !1488
  store i64 %3, ptr @n_strings, align 8, !dbg !1488, !tbaa !1412
  ret i1 false, !dbg !1489
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @recurse_tree(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !dbg !1490 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1494, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata ptr %1, metadata !1495, metadata !DIExpression()), !dbg !1496
  %3 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 1, !dbg !1497
  %4 = load ptr, ptr %3, align 8, !dbg !1497, !tbaa !1297
  %5 = icmp eq ptr %4, null, !dbg !1499
  br i1 %5, label %6, label %12, !dbg !1500

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 2, !dbg !1501
  %8 = load ptr, ptr %7, align 8, !dbg !1501, !tbaa !1196
  %9 = icmp eq ptr %8, null, !dbg !1502
  br i1 %9, label %10, label %14, !dbg !1503

10:                                               ; preds = %6
  %11 = tail call zeroext i1 %1(ptr noundef nonnull %0) #39, !dbg !1504, !callees !1505
  br label %23, !dbg !1506

12:                                               ; preds = %2
  %13 = tail call fastcc zeroext i1 @recurse_tree(ptr noundef nonnull %4, ptr noundef %1), !dbg !1507
  br i1 %13, label %23, label %14, !dbg !1511

14:                                               ; preds = %6, %12
  %15 = tail call zeroext i1 %1(ptr noundef nonnull %0) #39, !dbg !1512, !callees !1505
  br i1 %15, label %23, label %16, !dbg !1514

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 2, !dbg !1515
  %18 = load ptr, ptr %17, align 8, !dbg !1515, !tbaa !1196
  %19 = icmp eq ptr %18, null, !dbg !1517
  br i1 %19, label %22, label %20, !dbg !1518

20:                                               ; preds = %16
  %21 = tail call fastcc zeroext i1 @recurse_tree(ptr noundef nonnull %18, ptr noundef %1), !dbg !1519
  br i1 %21, label %23, label %22, !dbg !1521

22:                                               ; preds = %16, %20
  br label %23, !dbg !1522

23:                                               ; preds = %20, %14, %12, %22, %10
  %24 = phi i1 [ %11, %10 ], [ false, %22 ], [ true, %12 ], [ true, %14 ], [ true, %20 ], !dbg !1496
  ret i1 %24, !dbg !1523
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal zeroext i1 @scan_zeros(ptr noundef %0) #13 !dbg !1524 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1526, metadata !DIExpression()), !dbg !1527
  %2 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 5, !dbg !1528
  %3 = load i64, ptr %2, align 8, !dbg !1528, !tbaa !1379
  %4 = icmp eq i64 %3, 0, !dbg !1530
  br i1 %4, label %5, label %15, !dbg !1531

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 4, !dbg !1532
  %7 = load i8, ptr %6, align 1, !dbg !1532, !tbaa !1430, !range !1533, !noundef !853
  %8 = icmp eq i8 %7, 0, !dbg !1532
  br i1 %8, label %9, label %15, !dbg !1534

9:                                                ; preds = %5
  %10 = load ptr, ptr @head, align 8, !dbg !1535, !tbaa !845
  %11 = icmp eq ptr %10, null, !dbg !1538
  %12 = load ptr, ptr @zeros, align 8, !dbg !1539
  %13 = getelementptr inbounds %struct.item, ptr %12, i64 0, i32 6, !dbg !1539
  %14 = select i1 %11, ptr @head, ptr %13, !dbg !1539
  store ptr %0, ptr %14, align 8, !dbg !1540, !tbaa !845
  store ptr %0, ptr @zeros, align 8, !dbg !1541, !tbaa !845
  br label %15, !dbg !1542

15:                                               ; preds = %9, %5, %1
  ret i1 false, !dbg !1543
}

; Function Attrs: nofree nounwind
declare !dbg !1544 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal zeroext i1 @detect_loop(ptr noundef %0) #12 !dbg !1547 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1549, metadata !DIExpression()), !dbg !1568
  %2 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 5, !dbg !1569
  %3 = load i64, ptr %2, align 8, !dbg !1569, !tbaa !1379
  %4 = icmp eq i64 %3, 0, !dbg !1570
  br i1 %4, label %58, label %5, !dbg !1571

5:                                                ; preds = %1
  %6 = load ptr, ptr @loop, align 8, !dbg !1572, !tbaa !845
  %7 = icmp eq ptr %6, null, !dbg !1573
  br i1 %7, label %55, label %8, !dbg !1574

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 7, !dbg !1575
  call void @llvm.dbg.value(metadata ptr %9, metadata !1550, metadata !DIExpression()), !dbg !1576
  %10 = load ptr, ptr %9, align 8, !dbg !1577, !tbaa !845
  %11 = icmp eq ptr %10, null, !dbg !1578
  br i1 %11, label %58, label %12, !dbg !1578

12:                                               ; preds = %8
  call void @llvm.dbg.value(metadata ptr %9, metadata !1550, metadata !DIExpression()), !dbg !1576
  %13 = load ptr, ptr %10, align 8, !dbg !1579, !tbaa !1382
  %14 = icmp eq ptr %13, %6, !dbg !1580
  call void @llvm.dbg.value(metadata ptr %10, metadata !1550, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1576
  br i1 %14, label %25, label %15, !dbg !1581

15:                                               ; preds = %12, %20
  %16 = phi ptr [ %18, %20 ], [ %10, %12 ]
  call void @llvm.dbg.value(metadata ptr %16, metadata !1550, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1576
  %17 = getelementptr inbounds %struct.successor, ptr %16, i64 0, i32 1, !dbg !1582
  call void @llvm.dbg.value(metadata ptr %17, metadata !1550, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata ptr %16, metadata !1550, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1576
  %18 = load ptr, ptr %17, align 8, !dbg !1577, !tbaa !845
  %19 = icmp eq ptr %18, null, !dbg !1578
  br i1 %19, label %58, label %20, !dbg !1578, !llvm.loop !1583

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !1550, metadata !DIExpression()), !dbg !1576
  %21 = load ptr, ptr %18, align 8, !dbg !1579, !tbaa !1382
  %22 = icmp eq ptr %21, %6, !dbg !1580
  call void @llvm.dbg.value(metadata ptr %18, metadata !1550, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1576
  br i1 %22, label %23, label %15, !dbg !1581, !llvm.loop !1583

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.successor, ptr %16, i64 0, i32 1, !dbg !1582
  br label %25, !dbg !1585

25:                                               ; preds = %23, %12
  %26 = phi ptr [ %9, %12 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 6, !dbg !1585
  %28 = load ptr, ptr %27, align 8, !dbg !1585, !tbaa !1443
  %29 = icmp eq ptr %28, null, !dbg !1586
  br i1 %29, label %54, label %30, !dbg !1587

30:                                               ; preds = %25, %37
  %31 = phi ptr [ %33, %37 ], [ %6, %25 ]
  %32 = getelementptr inbounds %struct.item, ptr %31, i64 0, i32 6, !dbg !1588
  %33 = load ptr, ptr %32, align 8, !dbg !1588, !tbaa !1443
  call void @llvm.dbg.value(metadata ptr %33, metadata !1556, metadata !DIExpression()), !dbg !1589
  %34 = load ptr, ptr %31, align 8, !dbg !1590, !tbaa !1202
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.53, ptr noundef %34) #39, !dbg !1590
  %35 = load ptr, ptr @loop, align 8, !dbg !1591, !tbaa !845
  %36 = icmp eq ptr %35, %0, !dbg !1592
  br i1 %36, label %40, label %37, !dbg !1593

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.item, ptr %35, i64 0, i32 6, !dbg !1594
  store ptr null, ptr %38, align 8, !dbg !1595, !tbaa !1443
  store ptr %33, ptr @loop, align 8, !dbg !1596, !tbaa !845
  %39 = icmp eq ptr %33, null, !dbg !1597
  br i1 %39, label %58, label %30, !dbg !1597

40:                                               ; preds = %30
  %41 = load ptr, ptr %26, align 8, !dbg !1598, !tbaa !845
  call void @llvm.dbg.value(metadata ptr %41, metadata !1563, metadata !DIExpression()), !dbg !1599
  %42 = load ptr, ptr %41, align 8, !dbg !1600, !tbaa !1382
  %43 = getelementptr inbounds %struct.item, ptr %42, i64 0, i32 5, !dbg !1601
  %44 = load i64, ptr %43, align 8, !dbg !1602, !tbaa !1379
  %45 = add i64 %44, -1, !dbg !1602
  store i64 %45, ptr %43, align 8, !dbg !1602, !tbaa !1379
  %46 = getelementptr inbounds %struct.successor, ptr %41, i64 0, i32 1, !dbg !1603
  %47 = load ptr, ptr %46, align 8, !dbg !1603, !tbaa !1388
  store ptr %47, ptr %26, align 8, !dbg !1604, !tbaa !845
  %48 = icmp eq ptr %0, null, !dbg !1605
  br i1 %48, label %58, label %49, !dbg !1605

49:                                               ; preds = %40, %49
  %50 = phi ptr [ %52, %49 ], [ %0, %40 ]
  %51 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 6, !dbg !1606
  %52 = load ptr, ptr %51, align 8, !dbg !1606, !tbaa !1443
  call void @llvm.dbg.value(metadata ptr %52, metadata !1566, metadata !DIExpression()), !dbg !1607
  store ptr null, ptr %51, align 8, !dbg !1608, !tbaa !1443
  %53 = icmp eq ptr %52, null, !dbg !1605
  br i1 %53, label %55, label %49, !dbg !1605, !llvm.loop !1609

54:                                               ; preds = %25
  store ptr %6, ptr %27, align 8, !dbg !1611, !tbaa !1443
  br label %55, !dbg !1613

55:                                               ; preds = %49, %5, %54
  %56 = phi ptr [ %0, %54 ], [ %0, %5 ], [ null, %49 ]
  %57 = phi i1 [ false, %54 ], [ false, %5 ], [ true, %49 ]
  store ptr %56, ptr @loop, align 8, !dbg !1614, !tbaa !845
  br label %58, !dbg !1615

58:                                               ; preds = %15, %37, %55, %8, %40, %1
  %59 = phi i1 [ false, %1 ], [ true, %40 ], [ false, %8 ], [ %57, %55 ], [ true, %37 ], [ false, %15 ], !dbg !1568
  ret i1 %59, !dbg !1615
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #14 !dbg !1616 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1618, metadata !DIExpression()), !dbg !1619
  store ptr %0, ptr @file_name, align 8, !dbg !1620, !tbaa !845
  ret void, !dbg !1621
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #14 !dbg !1622 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1626, metadata !DIExpression()), !dbg !1627
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1628, !tbaa !1629
  ret void, !dbg !1630
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1631 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1636, !tbaa !845
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1637
  %3 = icmp eq i32 %2, 0, !dbg !1638
  br i1 %3, label %22, label %4, !dbg !1639

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1640, !tbaa !1629, !range !1533, !noundef !853
  %6 = icmp eq i8 %5, 0, !dbg !1640
  br i1 %6, label %11, label %7, !dbg !1641

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1642
  %9 = load i32, ptr %8, align 4, !dbg !1642, !tbaa !909
  %10 = icmp eq i32 %9, 32, !dbg !1643
  br i1 %10, label %22, label %11, !dbg !1644

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1.25, i32 noundef 5) #39, !dbg !1645
  call void @llvm.dbg.value(metadata ptr %12, metadata !1633, metadata !DIExpression()), !dbg !1646
  %13 = load ptr, ptr @file_name, align 8, !dbg !1647, !tbaa !845
  %14 = icmp eq ptr %13, null, !dbg !1647
  %15 = tail call ptr @__errno_location() #42, !dbg !1649
  %16 = load i32, ptr %15, align 4, !dbg !1649, !tbaa !909
  br i1 %14, label %19, label %17, !dbg !1650

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1651
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.26, ptr noundef %18, ptr noundef %12) #39, !dbg !1651
  br label %20, !dbg !1651

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.27, ptr noundef %12) #39, !dbg !1652
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1653, !tbaa !909
  tail call void @_exit(i32 noundef %21) #41, !dbg !1654
  unreachable, !dbg !1654

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1655, !tbaa !845
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1657
  %25 = icmp eq i32 %24, 0, !dbg !1658
  br i1 %25, label %28, label %26, !dbg !1659

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1660, !tbaa !909
  tail call void @_exit(i32 noundef %27) #41, !dbg !1661
  unreachable, !dbg !1661

28:                                               ; preds = %22
  ret void, !dbg !1662
}

; Function Attrs: noreturn
declare !dbg !1663 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #16 !dbg !1665 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1669, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i32 %1, metadata !1670, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata ptr %2, metadata !1671, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata ptr %3, metadata !1672, metadata !DIExpression()), !dbg !1673
  tail call fastcc void @flush_stdout(), !dbg !1674
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1675, !tbaa !845
  %6 = icmp eq ptr %5, null, !dbg !1675
  br i1 %6, label %8, label %7, !dbg !1677

7:                                                ; preds = %4
  tail call void %5() #39, !dbg !1678
  br label %12, !dbg !1678

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1679, !tbaa !845
  %10 = tail call ptr @getprogname() #40, !dbg !1679
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef %10) #39, !dbg !1679
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1681
  ret void, !dbg !1682
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1683 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1685, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32 1, metadata !1687, metadata !DIExpression()), !dbg !1692
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1695
  %2 = icmp slt i32 %1, 0, !dbg !1696
  br i1 %2, label %6, label %3, !dbg !1697

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1698, !tbaa !845
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1698
  br label %6, !dbg !1698

6:                                                ; preds = %3, %0
  ret void, !dbg !1699
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #12 !dbg !1700 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1702, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i32 %1, metadata !1703, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata ptr %2, metadata !1704, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata ptr %3, metadata !1705, metadata !DIExpression()), !dbg !1706
  %6 = load ptr, ptr @stderr, align 8, !dbg !1707, !tbaa !845
  call void @llvm.dbg.value(metadata ptr %6, metadata !1708, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %2, metadata !1748, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %3, metadata !1749, metadata !DIExpression()), !dbg !1750
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !1752
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1753, !tbaa !909
  %9 = add i32 %8, 1, !dbg !1753
  store i32 %9, ptr @error_message_count, align 4, !dbg !1753, !tbaa !909
  %10 = icmp eq i32 %1, 0, !dbg !1754
  br i1 %10, label %20, label %11, !dbg !1756

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1757, metadata !DIExpression()), !dbg !1765
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1767
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1761, metadata !DIExpression()), !dbg !1768
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1769
  call void @llvm.dbg.value(metadata ptr %12, metadata !1760, metadata !DIExpression()), !dbg !1765
  %13 = icmp eq ptr %12, null, !dbg !1770
  br i1 %13, label %14, label %16, !dbg !1772

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.29, ptr noundef nonnull @.str.5.30, i32 noundef 5) #39, !dbg !1773
  call void @llvm.dbg.value(metadata ptr %15, metadata !1760, metadata !DIExpression()), !dbg !1765
  br label %16, !dbg !1774

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1765
  call void @llvm.dbg.value(metadata ptr %17, metadata !1760, metadata !DIExpression()), !dbg !1765
  %18 = load ptr, ptr @stderr, align 8, !dbg !1775, !tbaa !845
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.31, ptr noundef %17) #39, !dbg !1775
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1776
  br label %20, !dbg !1777

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1778, !tbaa !845
  call void @llvm.dbg.value(metadata i32 10, metadata !1779, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata ptr %21, metadata !1784, metadata !DIExpression()), !dbg !1785
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1787
  %23 = load ptr, ptr %22, align 8, !dbg !1787, !tbaa !1788
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1787
  %25 = load ptr, ptr %24, align 8, !dbg !1787, !tbaa !1789
  %26 = icmp ult ptr %23, %25, !dbg !1787
  br i1 %26, label %29, label %27, !dbg !1787, !prof !1790

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #39, !dbg !1787
  br label %31, !dbg !1787

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1787
  store ptr %30, ptr %22, align 8, !dbg !1787, !tbaa !1788
  store i8 10, ptr %23, align 1, !dbg !1787, !tbaa !918
  br label %31, !dbg !1787

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1791, !tbaa !845
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #39, !dbg !1791
  %34 = icmp eq i32 %0, 0, !dbg !1792
  br i1 %34, label %36, label %35, !dbg !1794

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #41, !dbg !1795
  unreachable, !dbg !1795

36:                                               ; preds = %31
  ret void, !dbg !1796
}

declare !dbg !1797 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1800 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

declare !dbg !1803 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1806 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1809 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #12 !dbg !1813 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1817, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i32 %1, metadata !1818, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata ptr %2, metadata !1819, metadata !DIExpression()), !dbg !1826
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39, !dbg !1827
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1820, metadata !DIExpression()), !dbg !1828
  call void @llvm.va_start(ptr nonnull %4), !dbg !1829
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #45, !dbg !1830
  call void @llvm.va_end(ptr nonnull %4), !dbg !1831
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39, !dbg !1832
  ret void, !dbg !1832
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #16 !dbg !438 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !450, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i32 %1, metadata !451, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata ptr %2, metadata !452, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i32 %3, metadata !453, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata ptr %4, metadata !454, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata ptr %5, metadata !455, metadata !DIExpression()), !dbg !1833
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1834, !tbaa !909
  %8 = icmp eq i32 %7, 0, !dbg !1834
  br i1 %8, label %23, label %9, !dbg !1836

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1837, !tbaa !909
  %11 = icmp eq i32 %10, %3, !dbg !1840
  br i1 %11, label %12, label %22, !dbg !1841

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1842, !tbaa !845
  %14 = icmp eq ptr %13, %2, !dbg !1843
  br i1 %14, label %36, label %15, !dbg !1844

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1845
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1846
  br i1 %18, label %19, label %22, !dbg !1846

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1847
  %21 = icmp eq i32 %20, 0, !dbg !1848
  br i1 %21, label %36, label %22, !dbg !1849

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1850, !tbaa !845
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1851, !tbaa !909
  br label %23, !dbg !1852

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1853
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1854, !tbaa !845
  %25 = icmp eq ptr %24, null, !dbg !1854
  br i1 %25, label %27, label %26, !dbg !1856

26:                                               ; preds = %23
  tail call void %24() #39, !dbg !1857
  br label %31, !dbg !1857

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1858, !tbaa !845
  %29 = tail call ptr @getprogname() #40, !dbg !1858
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.34, ptr noundef %29) #39, !dbg !1858
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1860, !tbaa !845
  %33 = icmp eq ptr %2, null, !dbg !1860
  %34 = select i1 %33, ptr @.str.3.35, ptr @.str.2.36, !dbg !1860
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #39, !dbg !1860
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1861
  br label %36, !dbg !1862

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1862
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #12 !dbg !1863 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1867, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i32 %1, metadata !1868, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata ptr %2, metadata !1869, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i32 %3, metadata !1870, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata ptr %4, metadata !1871, metadata !DIExpression()), !dbg !1873
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39, !dbg !1874
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1872, metadata !DIExpression()), !dbg !1875
  call void @llvm.va_start(ptr nonnull %6), !dbg !1876
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #45, !dbg !1877
  call void @llvm.va_end(ptr nonnull %6), !dbg !1878
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39, !dbg !1879
  ret void, !dbg !1879
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 !dbg !1880 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1886, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %1, metadata !1887, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %2, metadata !1888, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i32 %3, metadata !1889, metadata !DIExpression()), !dbg !1890
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #39, !dbg !1891
  ret void, !dbg !1892
}

; Function Attrs: nounwind
declare !dbg !1893 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !1896 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1934, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i32 %1, metadata !1935, metadata !DIExpression()), !dbg !1936
  %3 = icmp eq ptr %0, null, !dbg !1937
  br i1 %3, label %7, label %4, !dbg !1939

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !1940
  call void @llvm.dbg.value(metadata i32 %5, metadata !1886, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 0, metadata !1887, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 0, metadata !1888, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %1, metadata !1889, metadata !DIExpression()), !dbg !1941
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #39, !dbg !1943
  br label %7, !dbg !1944

7:                                                ; preds = %4, %2
  ret void, !dbg !1945
}

; Function Attrs: nofree nounwind
declare !dbg !1946 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #12 !dbg !1949 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1987, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 0, metadata !1988, metadata !DIExpression()), !dbg !1991
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !1992
  call void @llvm.dbg.value(metadata i32 %2, metadata !1989, metadata !DIExpression()), !dbg !1991
  %3 = icmp slt i32 %2, 0, !dbg !1993
  br i1 %3, label %4, label %6, !dbg !1995

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1996
  br label %24, !dbg !1997

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !1998
  %8 = icmp eq i32 %7, 0, !dbg !1998
  br i1 %8, label %13, label %9, !dbg !2000

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2001
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !2002
  %12 = icmp eq i64 %11, -1, !dbg !2003
  br i1 %12, label %16, label %13, !dbg !2004

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !2005
  %15 = icmp eq i32 %14, 0, !dbg !2005
  br i1 %15, label %16, label %18, !dbg !2006

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !1988, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 0, metadata !1990, metadata !DIExpression()), !dbg !1991
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2007
  call void @llvm.dbg.value(metadata i32 %17, metadata !1990, metadata !DIExpression()), !dbg !1991
  br label %24, !dbg !2008

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !2009
  %20 = load i32, ptr %19, align 4, !dbg !2009, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %20, metadata !1988, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 0, metadata !1990, metadata !DIExpression()), !dbg !1991
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2007
  call void @llvm.dbg.value(metadata i32 %21, metadata !1990, metadata !DIExpression()), !dbg !1991
  %22 = icmp eq i32 %20, 0, !dbg !2010
  br i1 %22, label %24, label %23, !dbg !2008

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2012, !tbaa !909
  call void @llvm.dbg.value(metadata i32 -1, metadata !1990, metadata !DIExpression()), !dbg !1991
  br label %24, !dbg !2014

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !1991
  ret i32 %25, !dbg !2015
}

; Function Attrs: nofree nounwind
declare !dbg !2016 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2017 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2019 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #12 !dbg !2022 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2060, metadata !DIExpression()), !dbg !2061
  %2 = icmp eq ptr %0, null, !dbg !2062
  br i1 %2, label %6, label %3, !dbg !2064

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !2065
  %5 = icmp eq i32 %4, 0, !dbg !2065
  br i1 %5, label %6, label %8, !dbg !2066

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2067
  br label %16, !dbg !2068

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2069, metadata !DIExpression()), !dbg !2074
  %9 = load i32, ptr %0, align 8, !dbg !2076, !tbaa !1164
  %10 = and i32 %9, 256, !dbg !2078
  %11 = icmp eq i32 %10, 0, !dbg !2078
  br i1 %11, label %14, label %12, !dbg !2079

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !2080
  br label %14, !dbg !2080

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2081
  br label %16, !dbg !2082

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2061
  ret i32 %17, !dbg !2083
}

; Function Attrs: nofree nounwind
declare !dbg !2084 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @freopen_safer(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) local_unnamed_addr #12 !dbg !2085 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2123, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata ptr %1, metadata !2124, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata ptr %2, metadata !2125, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 0, metadata !2126, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 0, metadata !2127, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 0, metadata !2128, metadata !DIExpression()), !dbg !2130
  %4 = tail call i32 @fileno(ptr noundef nonnull %2) #39, !dbg !2131
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %53
  ], !dbg !2132

5:                                                ; preds = %3
  %6 = tail call i32 @dup2(i32 noundef 2, i32 noundef 2) #39, !dbg !2133
  %7 = icmp ne i32 %6, 2, !dbg !2136
  %8 = zext i1 %7 to i8, !dbg !2137
  br label %9, !dbg !2137

9:                                                ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ], !dbg !2130
  call void @llvm.dbg.value(metadata i8 %10, metadata !2128, metadata !DIExpression()), !dbg !2130
  %11 = tail call i32 @dup2(i32 noundef 1, i32 noundef 1) #39, !dbg !2138
  %12 = icmp ne i32 %11, 1, !dbg !2140
  %13 = zext i1 %12 to i8, !dbg !2141
  br label %14, !dbg !2141

14:                                               ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ], !dbg !2130
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ], !dbg !2130
  call void @llvm.dbg.value(metadata i8 %16, metadata !2128, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 %15, metadata !2127, metadata !DIExpression()), !dbg !2130
  %17 = tail call i32 @dup2(i32 noundef 0, i32 noundef 0) #39, !dbg !2142
  %18 = icmp ne i32 %17, 0, !dbg !2144
  call void @llvm.dbg.value(metadata i8 poison, metadata !2126, metadata !DIExpression()), !dbg !2130
  br i1 %18, label %19, label %27, !dbg !2145

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 0, metadata !2147, metadata !DIExpression()), !dbg !2153
  %20 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.62, i32 noundef 0) #39, !dbg !2155
  call void @llvm.dbg.value(metadata i32 %20, metadata !2152, metadata !DIExpression()), !dbg !2153
  %21 = icmp slt i32 %20, 1, !dbg !2156
  br i1 %21, label %25, label %22, !dbg !2156

22:                                               ; preds = %19
  %23 = tail call i32 @close(i32 noundef %20) #39, !dbg !2157
  %24 = tail call ptr @__errno_location() #42, !dbg !2162
  store i32 9, ptr %24, align 4, !dbg !2163, !tbaa !909
  br label %58, !dbg !2164

25:                                               ; preds = %19
  %26 = icmp eq i32 %20, 0, !dbg !2165
  br i1 %26, label %27, label %58, !dbg !2164

27:                                               ; preds = %25, %14
  %28 = icmp eq i8 %15, 0, !dbg !2166
  br i1 %28, label %38, label %29, !dbg !2168

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 1, metadata !2147, metadata !DIExpression()), !dbg !2169
  %30 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.62, i32 noundef 0) #39, !dbg !2171
  call void @llvm.dbg.value(metadata i32 %30, metadata !2152, metadata !DIExpression()), !dbg !2169
  %31 = icmp eq i32 %30, 1, !dbg !2172
  %32 = icmp slt i32 %30, 0
  %33 = or i1 %32, %31, !dbg !2173
  br i1 %33, label %37, label %34, !dbg !2173

34:                                               ; preds = %29
  %35 = tail call i32 @close(i32 noundef %30) #39, !dbg !2174
  %36 = tail call ptr @__errno_location() #42, !dbg !2175
  store i32 9, ptr %36, align 4, !dbg !2176, !tbaa !909
  br label %37, !dbg !2177

37:                                               ; preds = %29, %34
  br i1 %31, label %38, label %58, !dbg !2178

38:                                               ; preds = %37, %27
  %39 = phi i8 [ 1, %37 ], [ 0, %27 ]
  %40 = icmp eq i8 %16, 0, !dbg !2179
  br i1 %40, label %53, label %41, !dbg !2181

41:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 2, metadata !2147, metadata !DIExpression()), !dbg !2182
  %42 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.62, i32 noundef 0) #39, !dbg !2184
  call void @llvm.dbg.value(metadata i32 %42, metadata !2152, metadata !DIExpression()), !dbg !2182
  %43 = icmp eq i32 %42, 2, !dbg !2185
  %44 = icmp slt i32 %42, 0
  %45 = or i1 %44, %43, !dbg !2186
  br i1 %45, label %49, label %46, !dbg !2186

46:                                               ; preds = %41
  %47 = tail call i32 @close(i32 noundef %42) #39, !dbg !2187
  %48 = tail call ptr @__errno_location() #42, !dbg !2188
  store i32 9, ptr %48, align 4, !dbg !2189, !tbaa !909
  br label %49, !dbg !2190

49:                                               ; preds = %41, %46
  br i1 %43, label %53, label %50, !dbg !2191

50:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr null, metadata !2125, metadata !DIExpression()), !dbg !2130
  %51 = tail call ptr @__errno_location() #42, !dbg !2192
  %52 = load i32, ptr %51, align 4, !dbg !2192, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %52, metadata !2129, metadata !DIExpression()), !dbg !2130
  br label %66, !dbg !2193

53:                                               ; preds = %3, %49, %38
  %54 = phi i8 [ 1, %49 ], [ 0, %38 ], [ 0, %3 ]
  %55 = phi i8 [ %39, %49 ], [ %39, %38 ], [ 0, %3 ]
  %56 = phi i1 [ %18, %49 ], [ %18, %38 ], [ false, %3 ]
  %57 = tail call ptr @freopen(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #39, !dbg !2194
  call void @llvm.dbg.value(metadata ptr %57, metadata !2125, metadata !DIExpression()), !dbg !2130
  br label %58

58:                                               ; preds = %22, %37, %25, %53
  %59 = phi i8 [ %54, %53 ], [ %16, %25 ], [ %16, %37 ], [ %16, %22 ]
  %60 = phi i8 [ %55, %53 ], [ %15, %25 ], [ 1, %37 ], [ %15, %22 ]
  %61 = phi i1 [ %56, %53 ], [ true, %25 ], [ %18, %37 ], [ true, %22 ]
  %62 = phi ptr [ %57, %53 ], [ null, %25 ], [ null, %37 ], [ null, %22 ], !dbg !2195
  call void @llvm.dbg.value(metadata ptr %62, metadata !2125, metadata !DIExpression()), !dbg !2130
  %63 = tail call ptr @__errno_location() #42, !dbg !2192
  %64 = load i32, ptr %63, align 4, !dbg !2192, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %64, metadata !2129, metadata !DIExpression()), !dbg !2130
  %65 = icmp eq i8 %59, 0, !dbg !2196
  br i1 %65, label %73, label %66, !dbg !2193

66:                                               ; preds = %50, %58
  %67 = phi i32 [ %52, %50 ], [ %64, %58 ]
  %68 = phi ptr [ %51, %50 ], [ %63, %58 ]
  %69 = phi ptr [ null, %50 ], [ %62, %58 ]
  %70 = phi i1 [ %18, %50 ], [ %61, %58 ]
  %71 = phi i8 [ %39, %50 ], [ %60, %58 ]
  %72 = tail call i32 @close(i32 noundef 2) #39, !dbg !2198
  br label %73, !dbg !2198

73:                                               ; preds = %66, %58
  %74 = phi i32 [ %67, %66 ], [ %64, %58 ]
  %75 = phi ptr [ %68, %66 ], [ %63, %58 ]
  %76 = phi ptr [ %69, %66 ], [ %62, %58 ]
  %77 = phi i1 [ %70, %66 ], [ %61, %58 ]
  %78 = phi i8 [ %71, %66 ], [ %60, %58 ]
  %79 = icmp eq i8 %78, 0, !dbg !2199
  br i1 %79, label %82, label %80, !dbg !2201

80:                                               ; preds = %73
  %81 = tail call i32 @close(i32 noundef 1) #39, !dbg !2202
  br label %82, !dbg !2202

82:                                               ; preds = %80, %73
  br i1 %77, label %83, label %85, !dbg !2203

83:                                               ; preds = %82
  %84 = tail call i32 @close(i32 noundef 0) #39, !dbg !2204
  br label %85, !dbg !2204

85:                                               ; preds = %83, %82
  %86 = icmp eq ptr %76, null, !dbg !2206
  br i1 %86, label %87, label %88, !dbg !2208

87:                                               ; preds = %85
  store i32 %74, ptr %75, align 4, !dbg !2209, !tbaa !909
  br label %88, !dbg !2210

88:                                               ; preds = %87, %85
  ret ptr %76, !dbg !2211
}

; Function Attrs: nounwind
declare !dbg !2212 i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !2215 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #18

declare !dbg !2218 i32 @close(i32 noundef) local_unnamed_addr #3

declare !dbg !2219 ptr @freopen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !2223 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2261, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %1, metadata !2262, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %2, metadata !2263, metadata !DIExpression()), !dbg !2267
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2268
  %5 = load ptr, ptr %4, align 8, !dbg !2268, !tbaa !2269
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2270
  %7 = load ptr, ptr %6, align 8, !dbg !2270, !tbaa !2271
  %8 = icmp eq ptr %5, %7, !dbg !2272
  br i1 %8, label %9, label %27, !dbg !2273

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2274
  %11 = load ptr, ptr %10, align 8, !dbg !2274, !tbaa !1788
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2275
  %13 = load ptr, ptr %12, align 8, !dbg !2275, !tbaa !2276
  %14 = icmp eq ptr %11, %13, !dbg !2277
  br i1 %14, label %15, label %27, !dbg !2278

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2279
  %17 = load ptr, ptr %16, align 8, !dbg !2279, !tbaa !2280
  %18 = icmp eq ptr %17, null, !dbg !2281
  br i1 %18, label %19, label %27, !dbg !2282

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2283
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %21, metadata !2264, metadata !DIExpression()), !dbg !2285
  %22 = icmp eq i64 %21, -1, !dbg !2286
  br i1 %22, label %29, label %23, !dbg !2288

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2289, !tbaa !1164
  %25 = and i32 %24, -17, !dbg !2289
  store i32 %25, ptr %0, align 8, !dbg !2289, !tbaa !1164
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2290
  store i64 %21, ptr %26, align 8, !dbg !2291, !tbaa !2292
  br label %29, !dbg !2293

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2294
  br label %29, !dbg !2295

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2267
  ret i32 %30, !dbg !2296
}

; Function Attrs: nofree nounwind
declare !dbg !2297 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !2300 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2303, !tbaa !845
  ret ptr %1, !dbg !2304
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !2305 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2307, metadata !DIExpression()), !dbg !2310
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !2311
  call void @llvm.dbg.value(metadata ptr %2, metadata !2308, metadata !DIExpression()), !dbg !2310
  %3 = icmp eq ptr %2, null, !dbg !2312
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2312
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2312
  call void @llvm.dbg.value(metadata ptr %5, metadata !2309, metadata !DIExpression()), !dbg !2310
  %6 = ptrtoint ptr %5 to i64, !dbg !2313
  %7 = ptrtoint ptr %0 to i64, !dbg !2313
  %8 = sub i64 %6, %7, !dbg !2313
  %9 = icmp sgt i64 %8, 6, !dbg !2315
  br i1 %9, label %10, label %19, !dbg !2316

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2317
  call void @llvm.dbg.value(metadata ptr %11, metadata !2318, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata ptr @.str.71, metadata !2323, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 7, metadata !2324, metadata !DIExpression()), !dbg !2325
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.71, i64 7), !dbg !2327
  %13 = icmp eq i32 %12, 0, !dbg !2328
  br i1 %13, label %14, label %19, !dbg !2329

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2307, metadata !DIExpression()), !dbg !2310
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.72, i64 noundef 3) #40, !dbg !2330
  %16 = icmp eq i32 %15, 0, !dbg !2333
  %17 = select i1 %16, i64 3, i64 0, !dbg !2334
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2334
  br label %19, !dbg !2334

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2310
  call void @llvm.dbg.value(metadata ptr %21, metadata !2309, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata ptr %20, metadata !2307, metadata !DIExpression()), !dbg !2310
  store ptr %20, ptr @program_name, align 8, !dbg !2335, !tbaa !845
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2336, !tbaa !845
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2337, !tbaa !845
  ret void, !dbg !2338
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2339 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #12 !dbg !495 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !502, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata ptr %1, metadata !503, metadata !DIExpression()), !dbg !2340
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !2341
  call void @llvm.dbg.value(metadata ptr %5, metadata !504, metadata !DIExpression()), !dbg !2340
  %6 = icmp eq ptr %5, %0, !dbg !2342
  br i1 %6, label %7, label %14, !dbg !2344

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !2345
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !2346
  call void @llvm.dbg.declare(metadata ptr %4, metadata !510, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %4, metadata !2348, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata ptr %4, metadata !2357, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 0, metadata !2363, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 8, metadata !2364, metadata !DIExpression()), !dbg !2365
  store i64 0, ptr %4, align 8, !dbg !2367
  call void @llvm.dbg.value(metadata ptr %3, metadata !505, metadata !DIExpression(DW_OP_deref)), !dbg !2340
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !2368
  %9 = icmp eq i64 %8, 2, !dbg !2370
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !505, metadata !DIExpression()), !dbg !2340
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2371
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2340
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !2372
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !2372
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2340
  ret ptr %15, !dbg !2372
}

; Function Attrs: nounwind
declare !dbg !2373 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #12 !dbg !2379 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2384, metadata !DIExpression()), !dbg !2387
  %2 = tail call ptr @__errno_location() #42, !dbg !2388
  %3 = load i32, ptr %2, align 4, !dbg !2388, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %3, metadata !2385, metadata !DIExpression()), !dbg !2387
  %4 = icmp eq ptr %0, null, !dbg !2389
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2389
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #46, !dbg !2390
  call void @llvm.dbg.value(metadata ptr %6, metadata !2386, metadata !DIExpression()), !dbg !2387
  store i32 %3, ptr %2, align 4, !dbg !2391, !tbaa !909
  ret ptr %6, !dbg !2392
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !2393 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2399, metadata !DIExpression()), !dbg !2400
  %2 = icmp eq ptr %0, null, !dbg !2401
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2401
  %4 = load i32, ptr %3, align 8, !dbg !2402, !tbaa !2403
  ret i32 %4, !dbg !2405
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2406 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2410, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 %1, metadata !2411, metadata !DIExpression()), !dbg !2412
  %3 = icmp eq ptr %0, null, !dbg !2413
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2413
  store i32 %1, ptr %4, align 8, !dbg !2414, !tbaa !2403
  ret void, !dbg !2415
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #13 !dbg !2416 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2420, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8 %1, metadata !2421, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i32 %2, metadata !2422, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8 %1, metadata !2423, metadata !DIExpression()), !dbg !2428
  %4 = icmp eq ptr %0, null, !dbg !2429
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2429
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2430
  %7 = lshr i8 %1, 5, !dbg !2431
  %8 = zext i8 %7 to i64, !dbg !2431
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2432
  call void @llvm.dbg.value(metadata ptr %9, metadata !2424, metadata !DIExpression()), !dbg !2428
  %10 = and i8 %1, 31, !dbg !2433
  %11 = zext i8 %10 to i32, !dbg !2433
  call void @llvm.dbg.value(metadata i32 %11, metadata !2426, metadata !DIExpression()), !dbg !2428
  %12 = load i32, ptr %9, align 4, !dbg !2434, !tbaa !909
  %13 = lshr i32 %12, %11, !dbg !2435
  %14 = and i32 %13, 1, !dbg !2436
  call void @llvm.dbg.value(metadata i32 %14, metadata !2427, metadata !DIExpression()), !dbg !2428
  %15 = xor i32 %13, %2, !dbg !2437
  %16 = and i32 %15, 1, !dbg !2437
  %17 = shl nuw i32 %16, %11, !dbg !2438
  %18 = xor i32 %17, %12, !dbg !2439
  store i32 %18, ptr %9, align 4, !dbg !2439, !tbaa !909
  ret i32 %14, !dbg !2440
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #13 !dbg !2441 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2445, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %1, metadata !2446, metadata !DIExpression()), !dbg !2448
  %3 = icmp eq ptr %0, null, !dbg !2449
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2451
  call void @llvm.dbg.value(metadata ptr %4, metadata !2445, metadata !DIExpression()), !dbg !2448
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2452
  %6 = load i32, ptr %5, align 4, !dbg !2452, !tbaa !2453
  call void @llvm.dbg.value(metadata i32 %6, metadata !2447, metadata !DIExpression()), !dbg !2448
  store i32 %1, ptr %5, align 4, !dbg !2454, !tbaa !2453
  ret i32 %6, !dbg !2455
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 !dbg !2456 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2460, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata ptr %1, metadata !2461, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata ptr %2, metadata !2462, metadata !DIExpression()), !dbg !2463
  %4 = icmp eq ptr %0, null, !dbg !2464
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2466
  call void @llvm.dbg.value(metadata ptr %5, metadata !2460, metadata !DIExpression()), !dbg !2463
  store i32 10, ptr %5, align 8, !dbg !2467, !tbaa !2403
  %6 = icmp ne ptr %1, null, !dbg !2468
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2470
  br i1 %8, label %10, label %9, !dbg !2470

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2471
  unreachable, !dbg !2471

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2472
  store ptr %1, ptr %11, align 8, !dbg !2473, !tbaa !2474
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2475
  store ptr %2, ptr %12, align 8, !dbg !2476, !tbaa !2477
  ret void, !dbg !2478
}

; Function Attrs: noreturn nounwind
declare !dbg !2479 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #12 !dbg !2480 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2484, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 %1, metadata !2485, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata ptr %2, metadata !2486, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 %3, metadata !2487, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata ptr %4, metadata !2488, metadata !DIExpression()), !dbg !2492
  %6 = icmp eq ptr %4, null, !dbg !2493
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2493
  call void @llvm.dbg.value(metadata ptr %7, metadata !2489, metadata !DIExpression()), !dbg !2492
  %8 = tail call ptr @__errno_location() #42, !dbg !2494
  %9 = load i32, ptr %8, align 4, !dbg !2494, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %9, metadata !2490, metadata !DIExpression()), !dbg !2492
  %10 = load i32, ptr %7, align 8, !dbg !2495, !tbaa !2403
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2496
  %12 = load i32, ptr %11, align 4, !dbg !2496, !tbaa !2453
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2497
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2498
  %15 = load ptr, ptr %14, align 8, !dbg !2498, !tbaa !2474
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2499
  %17 = load ptr, ptr %16, align 8, !dbg !2499, !tbaa !2477
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2500
  call void @llvm.dbg.value(metadata i64 %18, metadata !2491, metadata !DIExpression()), !dbg !2492
  store i32 %9, ptr %8, align 4, !dbg !2501, !tbaa !909
  ret i64 %18, !dbg !2502
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #12 !dbg !2503 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %1, metadata !2510, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %2, metadata !2511, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %3, metadata !2512, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %4, metadata !2513, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %5, metadata !2514, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %6, metadata !2515, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %7, metadata !2516, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %8, metadata !2517, metadata !DIExpression()), !dbg !2571
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2572
  %17 = icmp eq i64 %16, 1, !dbg !2573
  call void @llvm.dbg.value(metadata i1 %17, metadata !2518, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2571
  call void @llvm.dbg.value(metadata i64 0, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 0, metadata !2520, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr null, metadata !2521, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 0, metadata !2522, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 0, metadata !2523, metadata !DIExpression()), !dbg !2571
  %18 = trunc i32 %5 to i8, !dbg !2574
  %19 = lshr i8 %18, 1, !dbg !2574
  %20 = and i8 %19, 1, !dbg !2574
  call void @llvm.dbg.value(metadata i8 %20, metadata !2524, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 0, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 1, metadata !2526, metadata !DIExpression()), !dbg !2571
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2575

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2576
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2577
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2578
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2579
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2571
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2580
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2581
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2510, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %39, metadata !2526, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %38, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %37, metadata !2524, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %36, metadata !2523, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %35, metadata !2522, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %34, metadata !2521, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %33, metadata !2520, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 0, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %32, metadata !2512, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %31, metadata !2517, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %30, metadata !2516, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %29, metadata !2513, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.label(metadata !2564), !dbg !2582
  call void @llvm.dbg.value(metadata i8 0, metadata !2527, metadata !DIExpression()), !dbg !2571
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
  ], !dbg !2583

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2524, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 5, metadata !2513, metadata !DIExpression()), !dbg !2571
  br label %115, !dbg !2584

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2524, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 5, metadata !2513, metadata !DIExpression()), !dbg !2571
  %43 = and i8 %37, 1, !dbg !2585
  %44 = icmp eq i8 %43, 0, !dbg !2585
  br i1 %44, label %45, label %115, !dbg !2584

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2587
  br i1 %46, label %115, label %47, !dbg !2590

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2587, !tbaa !918
  br label %115, !dbg !2587

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.85, metadata !594, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i32 %29, metadata !595, metadata !DIExpression()), !dbg !2591
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.86, ptr noundef nonnull @.str.11.85, i32 noundef 5) #39, !dbg !2595
  call void @llvm.dbg.value(metadata ptr %49, metadata !596, metadata !DIExpression()), !dbg !2591
  %50 = icmp eq ptr %49, @.str.11.85, !dbg !2596
  br i1 %50, label %51, label %60, !dbg !2598

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2599
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2600
  call void @llvm.dbg.declare(metadata ptr %13, metadata !598, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata ptr %13, metadata !2602, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata ptr %13, metadata !2610, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 0, metadata !2613, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 8, metadata !2614, metadata !DIExpression()), !dbg !2615
  store i64 0, ptr %13, align 8, !dbg !2617
  call void @llvm.dbg.value(metadata ptr %12, metadata !597, metadata !DIExpression(DW_OP_deref)), !dbg !2591
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2618
  %53 = icmp eq i64 %52, 3, !dbg !2620
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !597, metadata !DIExpression()), !dbg !2591
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2621
  %57 = icmp eq i32 %29, 9, !dbg !2621
  %58 = select i1 %57, ptr @.str.10.87, ptr @.str.12.88, !dbg !2621
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2621
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2622
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2622
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2591
  call void @llvm.dbg.value(metadata ptr %61, metadata !2516, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr @.str.12.88, metadata !594, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i32 %29, metadata !595, metadata !DIExpression()), !dbg !2623
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.86, ptr noundef nonnull @.str.12.88, i32 noundef 5) #39, !dbg !2625
  call void @llvm.dbg.value(metadata ptr %62, metadata !596, metadata !DIExpression()), !dbg !2623
  %63 = icmp eq ptr %62, @.str.12.88, !dbg !2626
  br i1 %63, label %64, label %73, !dbg !2627

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2628
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2629
  call void @llvm.dbg.declare(metadata ptr %11, metadata !598, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %11, metadata !2602, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %11, metadata !2610, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 0, metadata !2613, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 8, metadata !2614, metadata !DIExpression()), !dbg !2633
  store i64 0, ptr %11, align 8, !dbg !2635
  call void @llvm.dbg.value(metadata ptr %10, metadata !597, metadata !DIExpression(DW_OP_deref)), !dbg !2623
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2636
  %66 = icmp eq i64 %65, 3, !dbg !2637
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !597, metadata !DIExpression()), !dbg !2623
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2638
  %70 = icmp eq i32 %29, 9, !dbg !2638
  %71 = select i1 %70, ptr @.str.10.87, ptr @.str.12.88, !dbg !2638
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2638
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2639
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2639
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2517, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %74, metadata !2516, metadata !DIExpression()), !dbg !2571
  %76 = and i8 %37, 1, !dbg !2640
  %77 = icmp eq i8 %76, 0, !dbg !2640
  br i1 %77, label %78, label %93, !dbg !2641

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2528, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 0, metadata !2519, metadata !DIExpression()), !dbg !2571
  %79 = load i8, ptr %74, align 1, !dbg !2643, !tbaa !918
  %80 = icmp eq i8 %79, 0, !dbg !2645
  br i1 %80, label %93, label %81, !dbg !2645

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2528, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %84, metadata !2519, metadata !DIExpression()), !dbg !2571
  %85 = icmp ult i64 %84, %40, !dbg !2646
  br i1 %85, label %86, label %88, !dbg !2649

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2646
  store i8 %82, ptr %87, align 1, !dbg !2646, !tbaa !918
  br label %88, !dbg !2646

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2649
  call void @llvm.dbg.value(metadata i64 %89, metadata !2519, metadata !DIExpression()), !dbg !2571
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2650
  call void @llvm.dbg.value(metadata ptr %90, metadata !2528, metadata !DIExpression()), !dbg !2642
  %91 = load i8, ptr %90, align 1, !dbg !2643, !tbaa !918
  %92 = icmp eq i8 %91, 0, !dbg !2645
  br i1 %92, label %93, label %81, !dbg !2645, !llvm.loop !2651

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2653
  call void @llvm.dbg.value(metadata i64 %94, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 1, metadata !2523, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %75, metadata !2521, metadata !DIExpression()), !dbg !2571
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #40, !dbg !2654
  call void @llvm.dbg.value(metadata i64 %95, metadata !2522, metadata !DIExpression()), !dbg !2571
  br label %115, !dbg !2655

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2523, metadata !DIExpression()), !dbg !2571
  br label %97, !dbg !2656

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2571
  call void @llvm.dbg.value(metadata i8 %98, metadata !2523, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 1, metadata !2524, metadata !DIExpression()), !dbg !2571
  br label %99, !dbg !2657

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2579
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2571
  call void @llvm.dbg.value(metadata i8 %101, metadata !2524, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %100, metadata !2523, metadata !DIExpression()), !dbg !2571
  %102 = and i8 %101, 1, !dbg !2658
  %103 = icmp eq i8 %102, 0, !dbg !2658
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2660
  br label %105, !dbg !2660

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2571
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2574
  call void @llvm.dbg.value(metadata i8 %107, metadata !2524, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %106, metadata !2523, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 2, metadata !2513, metadata !DIExpression()), !dbg !2571
  %108 = and i8 %107, 1, !dbg !2661
  %109 = icmp eq i8 %108, 0, !dbg !2661
  br i1 %109, label %110, label %115, !dbg !2663

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2664
  br i1 %111, label %115, label %112, !dbg !2667

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2664, !tbaa !918
  br label %115, !dbg !2664

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2524, metadata !DIExpression()), !dbg !2571
  br label %115, !dbg !2668

114:                                              ; preds = %28
  call void @abort() #41, !dbg !2669
  unreachable, !dbg !2669

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2653
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.87, %45 ], [ @.str.10.87, %47 ], [ @.str.10.87, %42 ], [ %34, %28 ], [ @.str.12.88, %110 ], [ @.str.12.88, %112 ], [ @.str.12.88, %105 ], [ @.str.10.87, %41 ], !dbg !2571
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2571
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2571
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2571
  call void @llvm.dbg.value(metadata i8 %123, metadata !2524, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %122, metadata !2523, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %121, metadata !2522, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %120, metadata !2521, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %119, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %118, metadata !2517, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %117, metadata !2516, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %116, metadata !2513, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 0, metadata !2533, metadata !DIExpression()), !dbg !2670
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
  br label %138, !dbg !2671

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2653
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2576
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2580
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2581
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2672
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2673
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2510, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %145, metadata !2533, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 %144, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %143, metadata !2526, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %142, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %141, metadata !2520, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %140, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %139, metadata !2512, metadata !DIExpression()), !dbg !2571
  %147 = icmp eq i64 %139, -1, !dbg !2674
  br i1 %147, label %148, label %152, !dbg !2675

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2676
  %150 = load i8, ptr %149, align 1, !dbg !2676, !tbaa !918
  %151 = icmp eq i8 %150, 0, !dbg !2677
  br i1 %151, label %627, label %154, !dbg !2678

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2679
  br i1 %153, label %627, label %154, !dbg !2678

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2535, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 0, metadata !2538, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 0, metadata !2539, metadata !DIExpression()), !dbg !2680
  br i1 %129, label %155, label %170, !dbg !2681

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2683
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2684
  br i1 %157, label %158, label %160, !dbg !2684

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2685
  call void @llvm.dbg.value(metadata i64 %159, metadata !2512, metadata !DIExpression()), !dbg !2571
  br label %160, !dbg !2686

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2686
  call void @llvm.dbg.value(metadata i64 %161, metadata !2512, metadata !DIExpression()), !dbg !2571
  %162 = icmp ugt i64 %156, %161, !dbg !2687
  br i1 %162, label %170, label %163, !dbg !2688

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2689
  call void @llvm.dbg.value(metadata ptr %164, metadata !2690, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %120, metadata !2693, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %121, metadata !2694, metadata !DIExpression()), !dbg !2695
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2697
  %166 = icmp ne i32 %165, 0, !dbg !2698
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2699
  %168 = xor i1 %166, true, !dbg !2699
  %169 = zext i1 %168 to i8, !dbg !2699
  br i1 %167, label %170, label %688, !dbg !2699

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2680
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2680
  call void @llvm.dbg.value(metadata i8 %173, metadata !2535, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i64 %171, metadata !2512, metadata !DIExpression()), !dbg !2571
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2700
  %175 = load i8, ptr %174, align 1, !dbg !2700, !tbaa !918
  call void @llvm.dbg.value(metadata i8 %175, metadata !2540, metadata !DIExpression()), !dbg !2680
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
  ], !dbg !2701

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2702

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2703

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2538, metadata !DIExpression()), !dbg !2680
  %179 = and i8 %144, 1, !dbg !2707
  %180 = icmp eq i8 %179, 0, !dbg !2707
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2707
  br i1 %181, label %182, label %198, !dbg !2707

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2709
  br i1 %183, label %184, label %186, !dbg !2713

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2709
  store i8 39, ptr %185, align 1, !dbg !2709, !tbaa !918
  br label %186, !dbg !2709

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %187, metadata !2519, metadata !DIExpression()), !dbg !2571
  %188 = icmp ult i64 %187, %146, !dbg !2714
  br i1 %188, label %189, label %191, !dbg !2717

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2714
  store i8 36, ptr %190, align 1, !dbg !2714, !tbaa !918
  br label %191, !dbg !2714

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2717
  call void @llvm.dbg.value(metadata i64 %192, metadata !2519, metadata !DIExpression()), !dbg !2571
  %193 = icmp ult i64 %192, %146, !dbg !2718
  br i1 %193, label %194, label %196, !dbg !2721

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2718
  store i8 39, ptr %195, align 1, !dbg !2718, !tbaa !918
  br label %196, !dbg !2718

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2721
  call void @llvm.dbg.value(metadata i64 %197, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 1, metadata !2527, metadata !DIExpression()), !dbg !2571
  br label %198, !dbg !2722

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2571
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2571
  call void @llvm.dbg.value(metadata i8 %200, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %199, metadata !2519, metadata !DIExpression()), !dbg !2571
  %201 = icmp ult i64 %199, %146, !dbg !2723
  br i1 %201, label %202, label %204, !dbg !2726

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2723
  store i8 92, ptr %203, align 1, !dbg !2723, !tbaa !918
  br label %204, !dbg !2723

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %205, metadata !2519, metadata !DIExpression()), !dbg !2571
  br i1 %126, label %206, label %491, !dbg !2727

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2729
  %208 = icmp ult i64 %207, %171, !dbg !2730
  br i1 %208, label %209, label %480, !dbg !2731

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2732
  %211 = load i8, ptr %210, align 1, !dbg !2732, !tbaa !918
  %212 = add i8 %211, -48, !dbg !2733
  %213 = icmp ult i8 %212, 10, !dbg !2733
  br i1 %213, label %214, label %480, !dbg !2733

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2734
  br i1 %215, label %216, label %218, !dbg !2738

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2734
  store i8 48, ptr %217, align 1, !dbg !2734, !tbaa !918
  br label %218, !dbg !2734

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2738
  call void @llvm.dbg.value(metadata i64 %219, metadata !2519, metadata !DIExpression()), !dbg !2571
  %220 = icmp ult i64 %219, %146, !dbg !2739
  br i1 %220, label %221, label %223, !dbg !2742

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2739
  store i8 48, ptr %222, align 1, !dbg !2739, !tbaa !918
  br label %223, !dbg !2739

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2742
  call void @llvm.dbg.value(metadata i64 %224, metadata !2519, metadata !DIExpression()), !dbg !2571
  br label %480, !dbg !2743

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2744

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2745

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2746

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2748

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2750
  %231 = icmp ult i64 %230, %171, !dbg !2751
  br i1 %231, label %232, label %480, !dbg !2752

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2753
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2754
  %235 = load i8, ptr %234, align 1, !dbg !2754, !tbaa !918
  %236 = icmp eq i8 %235, 63, !dbg !2755
  br i1 %236, label %237, label %480, !dbg !2756

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2757
  %239 = load i8, ptr %238, align 1, !dbg !2757, !tbaa !918
  %240 = sext i8 %239 to i32, !dbg !2757
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
  ], !dbg !2758

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2759

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2540, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i64 %230, metadata !2533, metadata !DIExpression()), !dbg !2670
  %243 = icmp ult i64 %140, %146, !dbg !2761
  br i1 %243, label %244, label %246, !dbg !2764

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2761
  store i8 63, ptr %245, align 1, !dbg !2761, !tbaa !918
  br label %246, !dbg !2761

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2764
  call void @llvm.dbg.value(metadata i64 %247, metadata !2519, metadata !DIExpression()), !dbg !2571
  %248 = icmp ult i64 %247, %146, !dbg !2765
  br i1 %248, label %249, label %251, !dbg !2768

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2765
  store i8 34, ptr %250, align 1, !dbg !2765, !tbaa !918
  br label %251, !dbg !2765

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2768
  call void @llvm.dbg.value(metadata i64 %252, metadata !2519, metadata !DIExpression()), !dbg !2571
  %253 = icmp ult i64 %252, %146, !dbg !2769
  br i1 %253, label %254, label %256, !dbg !2772

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2769
  store i8 34, ptr %255, align 1, !dbg !2769, !tbaa !918
  br label %256, !dbg !2769

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2772
  call void @llvm.dbg.value(metadata i64 %257, metadata !2519, metadata !DIExpression()), !dbg !2571
  %258 = icmp ult i64 %257, %146, !dbg !2773
  br i1 %258, label %259, label %261, !dbg !2776

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2773
  store i8 63, ptr %260, align 1, !dbg !2773, !tbaa !918
  br label %261, !dbg !2773

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2776
  call void @llvm.dbg.value(metadata i64 %262, metadata !2519, metadata !DIExpression()), !dbg !2571
  br label %480, !dbg !2777

263:                                              ; preds = %170
  br label %274, !dbg !2778

264:                                              ; preds = %170
  br label %274, !dbg !2779

265:                                              ; preds = %170
  br label %272, !dbg !2780

266:                                              ; preds = %170
  br label %272, !dbg !2781

267:                                              ; preds = %170
  br label %274, !dbg !2782

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2783

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2784

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2787

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2789

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2790
  call void @llvm.dbg.label(metadata !2565), !dbg !2791
  br i1 %134, label %274, label %670, !dbg !2792

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2790
  call void @llvm.dbg.label(metadata !2567), !dbg !2794
  br i1 %125, label %535, label %491, !dbg !2795

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2796

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2797, !tbaa !918
  %279 = icmp eq i8 %278, 0, !dbg !2799
  br i1 %279, label %280, label %480, !dbg !2800

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2801
  br i1 %281, label %282, label %480, !dbg !2803

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2539, metadata !DIExpression()), !dbg !2680
  br label %283, !dbg !2804

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2680
  call void @llvm.dbg.value(metadata i8 %284, metadata !2539, metadata !DIExpression()), !dbg !2680
  br i1 %134, label %480, label %670, !dbg !2805

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 1, metadata !2539, metadata !DIExpression()), !dbg !2680
  br i1 %133, label %286, label %480, !dbg !2807

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2808

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2811
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2813
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2813
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2813
  call void @llvm.dbg.value(metadata i64 %292, metadata !2510, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %291, metadata !2520, metadata !DIExpression()), !dbg !2571
  %293 = icmp ult i64 %140, %292, !dbg !2814
  br i1 %293, label %294, label %296, !dbg !2817

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2814
  store i8 39, ptr %295, align 1, !dbg !2814, !tbaa !918
  br label %296, !dbg !2814

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2817
  call void @llvm.dbg.value(metadata i64 %297, metadata !2519, metadata !DIExpression()), !dbg !2571
  %298 = icmp ult i64 %297, %292, !dbg !2818
  br i1 %298, label %299, label %301, !dbg !2821

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2818
  store i8 92, ptr %300, align 1, !dbg !2818, !tbaa !918
  br label %301, !dbg !2818

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2821
  call void @llvm.dbg.value(metadata i64 %302, metadata !2519, metadata !DIExpression()), !dbg !2571
  %303 = icmp ult i64 %302, %292, !dbg !2822
  br i1 %303, label %304, label %306, !dbg !2825

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2822
  store i8 39, ptr %305, align 1, !dbg !2822, !tbaa !918
  br label %306, !dbg !2822

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2825
  call void @llvm.dbg.value(metadata i64 %307, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 0, metadata !2527, metadata !DIExpression()), !dbg !2571
  br label %480, !dbg !2826

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2827

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2541, metadata !DIExpression()), !dbg !2828
  %310 = tail call ptr @__ctype_b_loc() #42, !dbg !2829
  %311 = load ptr, ptr %310, align 8, !dbg !2829, !tbaa !845
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2829
  %314 = load i16, ptr %313, align 2, !dbg !2829, !tbaa !950
  %315 = lshr i16 %314, 14, !dbg !2831
  %316 = trunc i16 %315 to i8, !dbg !2831
  %317 = and i8 %316, 1, !dbg !2831
  call void @llvm.dbg.value(metadata i8 %317, metadata !2544, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i64 %171, metadata !2512, metadata !DIExpression()), !dbg !2571
  %318 = icmp eq i8 %317, 0, !dbg !2832
  call void @llvm.dbg.value(metadata i1 %318, metadata !2539, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2680
  br label %368, !dbg !2833

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2834
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2545, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata ptr %14, metadata !2602, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata ptr %14, metadata !2610, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i32 0, metadata !2613, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 8, metadata !2614, metadata !DIExpression()), !dbg !2838
  store i64 0, ptr %14, align 8, !dbg !2840
  call void @llvm.dbg.value(metadata i64 0, metadata !2541, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8 1, metadata !2544, metadata !DIExpression()), !dbg !2828
  %320 = icmp eq i64 %171, -1, !dbg !2841
  br i1 %320, label %321, label %323, !dbg !2843

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2844
  call void @llvm.dbg.value(metadata i64 %322, metadata !2512, metadata !DIExpression()), !dbg !2571
  br label %323, !dbg !2845

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2680
  call void @llvm.dbg.value(metadata i64 %324, metadata !2512, metadata !DIExpression()), !dbg !2571
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2846
  %325 = sub i64 %324, %145, !dbg !2847
  call void @llvm.dbg.value(metadata ptr %15, metadata !2548, metadata !DIExpression(DW_OP_deref)), !dbg !2848
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #39, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %326, metadata !2552, metadata !DIExpression()), !dbg !2848
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2850

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2541, metadata !DIExpression()), !dbg !2828
  %328 = icmp ugt i64 %324, %145, !dbg !2851
  br i1 %328, label %331, label %329, !dbg !2853

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2544, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i64 0, metadata !2541, metadata !DIExpression()), !dbg !2828
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2854
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2855
  call void @llvm.dbg.value(metadata i64 %324, metadata !2512, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i1 true, metadata !2539, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2680
  br label %368, !dbg !2833

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2544, metadata !DIExpression()), !dbg !2828
  br label %360, !dbg !2856

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2541, metadata !DIExpression()), !dbg !2828
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2858
  %335 = load i8, ptr %334, align 1, !dbg !2858, !tbaa !918
  %336 = icmp eq i8 %335, 0, !dbg !2853
  br i1 %336, label %363, label %337, !dbg !2859

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2860
  call void @llvm.dbg.value(metadata i64 %338, metadata !2541, metadata !DIExpression()), !dbg !2828
  %339 = add i64 %338, %145, !dbg !2861
  %340 = icmp eq i64 %338, %325, !dbg !2851
  br i1 %340, label %363, label %331, !dbg !2853, !llvm.loop !2862

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2863
  %344 = and i1 %343, %133, !dbg !2863
  call void @llvm.dbg.value(metadata i64 1, metadata !2553, metadata !DIExpression()), !dbg !2864
  br i1 %344, label %345, label %354, !dbg !2863

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2553, metadata !DIExpression()), !dbg !2864
  %347 = add i64 %346, %145, !dbg !2865
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2867
  %349 = load i8, ptr %348, align 1, !dbg !2867, !tbaa !918
  %350 = sext i8 %349 to i32, !dbg !2867
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2868

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2869
  call void @llvm.dbg.value(metadata i64 %352, metadata !2553, metadata !DIExpression()), !dbg !2864
  %353 = icmp eq i64 %352, %326, !dbg !2870
  br i1 %353, label %354, label %345, !dbg !2871, !llvm.loop !2872

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2874, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %355, metadata !2548, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i32 %355, metadata !2876, metadata !DIExpression()), !dbg !2884
  %356 = call i32 @iswprint(i32 noundef %355) #39, !dbg !2886
  %357 = icmp ne i32 %356, 0, !dbg !2887
  %358 = zext i1 %357 to i8, !dbg !2888
  call void @llvm.dbg.value(metadata i8 %358, metadata !2544, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i64 %326, metadata !2541, metadata !DIExpression()), !dbg !2828
  br label %363, !dbg !2889

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2544, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i64 0, metadata !2541, metadata !DIExpression()), !dbg !2828
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2854
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2855
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2544, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i64 0, metadata !2541, metadata !DIExpression()), !dbg !2828
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2854
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2855
  call void @llvm.dbg.value(metadata i64 %324, metadata !2512, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i1 %361, metadata !2539, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2680
  br label %368, !dbg !2833

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2544, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i64 %364, metadata !2541, metadata !DIExpression()), !dbg !2828
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2854
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2855
  call void @llvm.dbg.value(metadata i64 %324, metadata !2512, metadata !DIExpression()), !dbg !2571
  %366 = icmp eq i8 %365, 0, !dbg !2832
  call void @llvm.dbg.value(metadata i1 %366, metadata !2539, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2680
  %367 = icmp ugt i64 %364, 1, !dbg !2890
  br i1 %367, label %374, label %368, !dbg !2833

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2891
  br i1 %373, label %374, label %480, !dbg !2891

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2892
  call void @llvm.dbg.value(metadata i64 %379, metadata !2561, metadata !DIExpression()), !dbg !2893
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2894

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2571
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2672
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2670
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2680
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2895
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2680
  call void @llvm.dbg.value(metadata i8 %387, metadata !2540, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 %386, metadata !2538, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 %385, metadata !2535, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i64 %384, metadata !2533, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 %383, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %382, metadata !2519, metadata !DIExpression()), !dbg !2571
  br i1 %380, label %388, label %434, !dbg !2896

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2901

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2538, metadata !DIExpression()), !dbg !2680
  %390 = and i8 %383, 1, !dbg !2904
  %391 = icmp eq i8 %390, 0, !dbg !2904
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2904
  br i1 %392, label %393, label %409, !dbg !2904

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2906
  br i1 %394, label %395, label %397, !dbg !2910

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2906
  store i8 39, ptr %396, align 1, !dbg !2906, !tbaa !918
  br label %397, !dbg !2906

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2910
  call void @llvm.dbg.value(metadata i64 %398, metadata !2519, metadata !DIExpression()), !dbg !2571
  %399 = icmp ult i64 %398, %146, !dbg !2911
  br i1 %399, label %400, label %402, !dbg !2914

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2911
  store i8 36, ptr %401, align 1, !dbg !2911, !tbaa !918
  br label %402, !dbg !2911

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2914
  call void @llvm.dbg.value(metadata i64 %403, metadata !2519, metadata !DIExpression()), !dbg !2571
  %404 = icmp ult i64 %403, %146, !dbg !2915
  br i1 %404, label %405, label %407, !dbg !2918

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2915
  store i8 39, ptr %406, align 1, !dbg !2915, !tbaa !918
  br label %407, !dbg !2915

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2918
  call void @llvm.dbg.value(metadata i64 %408, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 1, metadata !2527, metadata !DIExpression()), !dbg !2571
  br label %409, !dbg !2919

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2571
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2571
  call void @llvm.dbg.value(metadata i8 %411, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %410, metadata !2519, metadata !DIExpression()), !dbg !2571
  %412 = icmp ult i64 %410, %146, !dbg !2920
  br i1 %412, label %413, label %415, !dbg !2923

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2920
  store i8 92, ptr %414, align 1, !dbg !2920, !tbaa !918
  br label %415, !dbg !2920

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2923
  call void @llvm.dbg.value(metadata i64 %416, metadata !2519, metadata !DIExpression()), !dbg !2571
  %417 = icmp ult i64 %416, %146, !dbg !2924
  br i1 %417, label %418, label %422, !dbg !2927

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2924
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2924
  store i8 %420, ptr %421, align 1, !dbg !2924, !tbaa !918
  br label %422, !dbg !2924

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2927
  call void @llvm.dbg.value(metadata i64 %423, metadata !2519, metadata !DIExpression()), !dbg !2571
  %424 = icmp ult i64 %423, %146, !dbg !2928
  br i1 %424, label %425, label %430, !dbg !2931

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2928
  %428 = or i8 %427, 48, !dbg !2928
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2928
  store i8 %428, ptr %429, align 1, !dbg !2928, !tbaa !918
  br label %430, !dbg !2928

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2931
  call void @llvm.dbg.value(metadata i64 %431, metadata !2519, metadata !DIExpression()), !dbg !2571
  %432 = and i8 %387, 7, !dbg !2932
  %433 = or i8 %432, 48, !dbg !2933
  call void @llvm.dbg.value(metadata i8 %433, metadata !2540, metadata !DIExpression()), !dbg !2680
  br label %443, !dbg !2934

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2935
  %436 = icmp eq i8 %435, 0, !dbg !2935
  br i1 %436, label %443, label %437, !dbg !2937

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2938
  br i1 %438, label %439, label %441, !dbg !2942

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2938
  store i8 92, ptr %440, align 1, !dbg !2938, !tbaa !918
  br label %441, !dbg !2938

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2942
  call void @llvm.dbg.value(metadata i64 %442, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 0, metadata !2535, metadata !DIExpression()), !dbg !2680
  br label %443, !dbg !2943

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2571
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2672
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2680
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2680
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2680
  call void @llvm.dbg.value(metadata i8 %448, metadata !2540, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 %447, metadata !2538, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 %446, metadata !2535, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 %445, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %444, metadata !2519, metadata !DIExpression()), !dbg !2571
  %449 = add i64 %384, 1, !dbg !2944
  %450 = icmp ugt i64 %379, %449, !dbg !2946
  br i1 %450, label %451, label %478, !dbg !2947

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2948
  %453 = icmp ne i8 %452, 0, !dbg !2948
  %454 = and i8 %447, 1, !dbg !2948
  %455 = icmp eq i8 %454, 0, !dbg !2948
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2948
  br i1 %456, label %457, label %468, !dbg !2948

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2951
  br i1 %458, label %459, label %461, !dbg !2955

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2951
  store i8 39, ptr %460, align 1, !dbg !2951, !tbaa !918
  br label %461, !dbg !2951

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2955
  call void @llvm.dbg.value(metadata i64 %462, metadata !2519, metadata !DIExpression()), !dbg !2571
  %463 = icmp ult i64 %462, %146, !dbg !2956
  br i1 %463, label %464, label %466, !dbg !2959

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2956
  store i8 39, ptr %465, align 1, !dbg !2956, !tbaa !918
  br label %466, !dbg !2956

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2959
  call void @llvm.dbg.value(metadata i64 %467, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 0, metadata !2527, metadata !DIExpression()), !dbg !2571
  br label %468, !dbg !2960

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2961
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2571
  call void @llvm.dbg.value(metadata i8 %470, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %469, metadata !2519, metadata !DIExpression()), !dbg !2571
  %471 = icmp ult i64 %469, %146, !dbg !2962
  br i1 %471, label %472, label %474, !dbg !2965

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2962
  store i8 %448, ptr %473, align 1, !dbg !2962, !tbaa !918
  br label %474, !dbg !2962

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2965
  call void @llvm.dbg.value(metadata i64 %475, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %449, metadata !2533, metadata !DIExpression()), !dbg !2670
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2966
  %477 = load i8, ptr %476, align 1, !dbg !2966, !tbaa !918
  call void @llvm.dbg.value(metadata i8 %477, metadata !2540, metadata !DIExpression()), !dbg !2680
  br label %381, !dbg !2967, !llvm.loop !2968

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2680
  call void @llvm.dbg.value(metadata i8 %448, metadata !2540, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 %479, metadata !2539, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 %447, metadata !2538, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 %446, metadata !2535, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i64 %384, metadata !2533, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 %445, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %444, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %378, metadata !2512, metadata !DIExpression()), !dbg !2571
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2971
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2571
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2576
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2571
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2571
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2670
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2680
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2680
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2680
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2510, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %489, metadata !2540, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 %488, metadata !2539, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 %487, metadata !2538, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 %173, metadata !2535, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i64 %486, metadata !2533, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 %485, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %484, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %483, metadata !2520, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %482, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %481, metadata !2512, metadata !DIExpression()), !dbg !2571
  br i1 %127, label %502, label %491, !dbg !2972

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
  br i1 %137, label %503, label %524, !dbg !2974

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2975

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
  %514 = lshr i8 %505, 5, !dbg !2976
  %515 = zext i8 %514 to i64, !dbg !2976
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2977
  %517 = load i32, ptr %516, align 4, !dbg !2977, !tbaa !909
  %518 = and i8 %505, 31, !dbg !2978
  %519 = zext i8 %518 to i32, !dbg !2978
  %520 = shl nuw i32 1, %519, !dbg !2979
  %521 = and i32 %517, %520, !dbg !2979
  %522 = icmp eq i32 %521, 0, !dbg !2979
  %523 = and i1 %172, %522, !dbg !2980
  br i1 %523, label %573, label %535, !dbg !2980

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
  br i1 %172, label %573, label %535, !dbg !2981

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2971
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2571
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2576
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2580
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2672
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2982
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2680
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2680
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2510, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %543, metadata !2540, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 %542, metadata !2539, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i64 %541, metadata !2533, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 %540, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %539, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %538, metadata !2520, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %537, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %536, metadata !2512, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.label(metadata !2568), !dbg !2983
  br i1 %132, label %545, label %674, !dbg !2984

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2538, metadata !DIExpression()), !dbg !2680
  %546 = and i8 %540, 1, !dbg !2986
  %547 = icmp eq i8 %546, 0, !dbg !2986
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2986
  br i1 %548, label %549, label %565, !dbg !2986

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2988
  br i1 %550, label %551, label %553, !dbg !2992

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2988
  store i8 39, ptr %552, align 1, !dbg !2988, !tbaa !918
  br label %553, !dbg !2988

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2992
  call void @llvm.dbg.value(metadata i64 %554, metadata !2519, metadata !DIExpression()), !dbg !2571
  %555 = icmp ult i64 %554, %544, !dbg !2993
  br i1 %555, label %556, label %558, !dbg !2996

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2993
  store i8 36, ptr %557, align 1, !dbg !2993, !tbaa !918
  br label %558, !dbg !2993

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2996
  call void @llvm.dbg.value(metadata i64 %559, metadata !2519, metadata !DIExpression()), !dbg !2571
  %560 = icmp ult i64 %559, %544, !dbg !2997
  br i1 %560, label %561, label %563, !dbg !3000

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2997
  store i8 39, ptr %562, align 1, !dbg !2997, !tbaa !918
  br label %563, !dbg !2997

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %564, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 1, metadata !2527, metadata !DIExpression()), !dbg !2571
  br label %565, !dbg !3001

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2680
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2571
  call void @llvm.dbg.value(metadata i8 %567, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %566, metadata !2519, metadata !DIExpression()), !dbg !2571
  %568 = icmp ult i64 %566, %544, !dbg !3002
  br i1 %568, label %569, label %571, !dbg !3005

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3002
  store i8 92, ptr %570, align 1, !dbg !3002, !tbaa !918
  br label %571, !dbg !3002

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %544, metadata !2510, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %543, metadata !2540, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 %542, metadata !2539, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 1, metadata !2538, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i64 %541, metadata !2533, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 %567, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %539, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %538, metadata !2520, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %572, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %536, metadata !2512, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.label(metadata !2569), !dbg !3006
  br label %600, !dbg !3007

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2971
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2571
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2576
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2580
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2672
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2982
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2680
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2680
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3010
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2510, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %582, metadata !2540, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 %581, metadata !2539, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 %580, metadata !2538, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i64 %579, metadata !2533, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 %578, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %577, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %576, metadata !2520, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %575, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %574, metadata !2512, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.label(metadata !2569), !dbg !3006
  %584 = and i8 %578, 1, !dbg !3007
  %585 = icmp ne i8 %584, 0, !dbg !3007
  %586 = and i8 %580, 1, !dbg !3007
  %587 = icmp eq i8 %586, 0, !dbg !3007
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3007
  br i1 %588, label %589, label %600, !dbg !3007

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3011
  br i1 %590, label %591, label %593, !dbg !3015

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3011
  store i8 39, ptr %592, align 1, !dbg !3011, !tbaa !918
  br label %593, !dbg !3011

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3015
  call void @llvm.dbg.value(metadata i64 %594, metadata !2519, metadata !DIExpression()), !dbg !2571
  %595 = icmp ult i64 %594, %583, !dbg !3016
  br i1 %595, label %596, label %598, !dbg !3019

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3016
  store i8 39, ptr %597, align 1, !dbg !3016, !tbaa !918
  br label %598, !dbg !3016

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3019
  call void @llvm.dbg.value(metadata i64 %599, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 0, metadata !2527, metadata !DIExpression()), !dbg !2571
  br label %600, !dbg !3020

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2680
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2571
  call void @llvm.dbg.value(metadata i8 %609, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %608, metadata !2519, metadata !DIExpression()), !dbg !2571
  %610 = icmp ult i64 %608, %601, !dbg !3021
  br i1 %610, label %611, label %613, !dbg !3024

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3021
  store i8 %602, ptr %612, align 1, !dbg !3021, !tbaa !918
  br label %613, !dbg !3021

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3024
  call void @llvm.dbg.value(metadata i64 %614, metadata !2519, metadata !DIExpression()), !dbg !2571
  %615 = icmp eq i8 %603, 0, !dbg !3025
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3027
  call void @llvm.dbg.value(metadata i8 %616, metadata !2526, metadata !DIExpression()), !dbg !2571
  br label %617, !dbg !3028

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2971
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2571
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2576
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2580
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2581
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2672
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2982
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2510, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %624, metadata !2533, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 %623, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %622, metadata !2526, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %621, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %620, metadata !2520, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %619, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %618, metadata !2512, metadata !DIExpression()), !dbg !2571
  %626 = add i64 %624, 1, !dbg !3029
  call void @llvm.dbg.value(metadata i64 %626, metadata !2533, metadata !DIExpression()), !dbg !2670
  br label %138, !dbg !3030, !llvm.loop !3031

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2510, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %143, metadata !2526, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %142, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %141, metadata !2520, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %140, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %139, metadata !2512, metadata !DIExpression()), !dbg !2571
  %628 = icmp eq i64 %140, 0, !dbg !3033
  %629 = and i1 %133, %628, !dbg !3035
  %630 = xor i1 %629, true, !dbg !3035
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3035
  br i1 %631, label %632, label %670, !dbg !3035

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3036
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3036
  br i1 %636, label %637, label %646, !dbg !3036

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3038
  %639 = icmp eq i8 %638, 0, !dbg !3038
  br i1 %639, label %642, label %640, !dbg !3041

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3042
  br label %694, !dbg !3043

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3044
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3046
  br i1 %645, label %28, label %646, !dbg !3046

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3047
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3049
  br i1 %649, label %650, label %665, !dbg !3049

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2521, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %140, metadata !2519, metadata !DIExpression()), !dbg !2571
  %651 = load i8, ptr %120, align 1, !dbg !3050, !tbaa !918
  %652 = icmp eq i8 %651, 0, !dbg !3053
  br i1 %652, label %665, label %653, !dbg !3053

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2521, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %656, metadata !2519, metadata !DIExpression()), !dbg !2571
  %657 = icmp ult i64 %656, %146, !dbg !3054
  br i1 %657, label %658, label %660, !dbg !3057

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3054
  store i8 %654, ptr %659, align 1, !dbg !3054, !tbaa !918
  br label %660, !dbg !3054

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3057
  call void @llvm.dbg.value(metadata i64 %661, metadata !2519, metadata !DIExpression()), !dbg !2571
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3058
  call void @llvm.dbg.value(metadata ptr %662, metadata !2521, metadata !DIExpression()), !dbg !2571
  %663 = load i8, ptr %662, align 1, !dbg !3050, !tbaa !918
  %664 = icmp eq i8 %663, 0, !dbg !3053
  br i1 %664, label %665, label %653, !dbg !3053, !llvm.loop !3059

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2653
  call void @llvm.dbg.value(metadata i64 %666, metadata !2519, metadata !DIExpression()), !dbg !2571
  %667 = icmp ult i64 %666, %146, !dbg !3061
  br i1 %667, label %668, label %694, !dbg !3063

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3064
  store i8 0, ptr %669, align 1, !dbg !3065, !tbaa !918
  br label %694, !dbg !3064

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2570), !dbg !3066
  %672 = icmp eq i8 %124, 0, !dbg !3067
  %673 = select i1 %672, i32 2, i32 4, !dbg !3067
  br label %684, !dbg !3067

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3067
  %678 = select i1 %677, i32 2, i32 4, !dbg !3067
  br label %679, !dbg !3069

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2570), !dbg !3066
  %683 = icmp eq i32 %116, 2, !dbg !3069
  br i1 %683, label %684, label %688, !dbg !3067

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3067

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2513, metadata !DIExpression()), !dbg !2571
  %692 = and i32 %5, -3, !dbg !3070
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3071
  br label %694, !dbg !3072

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3073
}

; Function Attrs: nounwind
declare !dbg !3074 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3077 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3080 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #12 !dbg !3082 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3086, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i64 %1, metadata !3087, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata ptr %2, metadata !3088, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata ptr %0, metadata !3090, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %1, metadata !3095, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr null, metadata !3096, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %2, metadata !3097, metadata !DIExpression()), !dbg !3103
  %4 = icmp eq ptr %2, null, !dbg !3105
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3105
  call void @llvm.dbg.value(metadata ptr %5, metadata !3098, metadata !DIExpression()), !dbg !3103
  %6 = tail call ptr @__errno_location() #42, !dbg !3106
  %7 = load i32, ptr %6, align 4, !dbg !3106, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %7, metadata !3099, metadata !DIExpression()), !dbg !3103
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3107
  %9 = load i32, ptr %8, align 4, !dbg !3107, !tbaa !2453
  %10 = or i32 %9, 1, !dbg !3108
  call void @llvm.dbg.value(metadata i32 %10, metadata !3100, metadata !DIExpression()), !dbg !3103
  %11 = load i32, ptr %5, align 8, !dbg !3109, !tbaa !2403
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3110
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3111
  %14 = load ptr, ptr %13, align 8, !dbg !3111, !tbaa !2474
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3112
  %16 = load ptr, ptr %15, align 8, !dbg !3112, !tbaa !2477
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3113
  %18 = add i64 %17, 1, !dbg !3114
  call void @llvm.dbg.value(metadata i64 %18, metadata !3101, metadata !DIExpression()), !dbg !3103
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !3115
  call void @llvm.dbg.value(metadata ptr %19, metadata !3102, metadata !DIExpression()), !dbg !3103
  %20 = load i32, ptr %5, align 8, !dbg !3116, !tbaa !2403
  %21 = load ptr, ptr %13, align 8, !dbg !3117, !tbaa !2474
  %22 = load ptr, ptr %15, align 8, !dbg !3118, !tbaa !2477
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3119
  store i32 %7, ptr %6, align 4, !dbg !3120, !tbaa !909
  ret ptr %19, !dbg !3121
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #12 !dbg !3091 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3090, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %1, metadata !3095, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %2, metadata !3096, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %3, metadata !3097, metadata !DIExpression()), !dbg !3122
  %5 = icmp eq ptr %3, null, !dbg !3123
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3123
  call void @llvm.dbg.value(metadata ptr %6, metadata !3098, metadata !DIExpression()), !dbg !3122
  %7 = tail call ptr @__errno_location() #42, !dbg !3124
  %8 = load i32, ptr %7, align 4, !dbg !3124, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %8, metadata !3099, metadata !DIExpression()), !dbg !3122
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3125
  %10 = load i32, ptr %9, align 4, !dbg !3125, !tbaa !2453
  %11 = icmp eq ptr %2, null, !dbg !3126
  %12 = zext i1 %11 to i32, !dbg !3126
  %13 = or i32 %10, %12, !dbg !3127
  call void @llvm.dbg.value(metadata i32 %13, metadata !3100, metadata !DIExpression()), !dbg !3122
  %14 = load i32, ptr %6, align 8, !dbg !3128, !tbaa !2403
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3129
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3130
  %17 = load ptr, ptr %16, align 8, !dbg !3130, !tbaa !2474
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3131
  %19 = load ptr, ptr %18, align 8, !dbg !3131, !tbaa !2477
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3132
  %21 = add i64 %20, 1, !dbg !3133
  call void @llvm.dbg.value(metadata i64 %21, metadata !3101, metadata !DIExpression()), !dbg !3122
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !3134
  call void @llvm.dbg.value(metadata ptr %22, metadata !3102, metadata !DIExpression()), !dbg !3122
  %23 = load i32, ptr %6, align 8, !dbg !3135, !tbaa !2403
  %24 = load ptr, ptr %16, align 8, !dbg !3136, !tbaa !2474
  %25 = load ptr, ptr %18, align 8, !dbg !3137, !tbaa !2477
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3138
  store i32 %8, ptr %7, align 4, !dbg !3139, !tbaa !909
  br i1 %11, label %28, label %27, !dbg !3140

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3141, !tbaa !1412
  br label %28, !dbg !3143

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3144
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !3145 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3150, !tbaa !845
  call void @llvm.dbg.value(metadata ptr %1, metadata !3147, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i32 1, metadata !3148, metadata !DIExpression()), !dbg !3152
  %2 = load i32, ptr @nslots, align 4, !tbaa !909
  call void @llvm.dbg.value(metadata i32 1, metadata !3148, metadata !DIExpression()), !dbg !3152
  %3 = icmp sgt i32 %2, 1, !dbg !3153
  br i1 %3, label %4, label %6, !dbg !3155

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3153
  br label %10, !dbg !3155

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.tokenbuffer, ptr %1, i64 0, i32 1, !dbg !3156
  %8 = load ptr, ptr %7, align 8, !dbg !3156, !tbaa !3158
  %9 = icmp eq ptr %8, @slot0, !dbg !3160
  br i1 %9, label %17, label %16, !dbg !3161

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3148, metadata !DIExpression()), !dbg !3152
  %12 = getelementptr inbounds %struct.tokenbuffer, ptr %1, i64 %11, i32 1, !dbg !3162
  %13 = load ptr, ptr %12, align 8, !dbg !3162, !tbaa !3158
  tail call void @free(ptr noundef %13) #39, !dbg !3163
  %14 = add nuw nsw i64 %11, 1, !dbg !3164
  call void @llvm.dbg.value(metadata i64 %14, metadata !3148, metadata !DIExpression()), !dbg !3152
  %15 = icmp eq i64 %14, %5, !dbg !3153
  br i1 %15, label %6, label %10, !dbg !3155, !llvm.loop !3165

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !3167
  store i64 256, ptr @slotvec0, align 8, !dbg !3169, !tbaa !3170
  store ptr @slot0, ptr getelementptr inbounds (%struct.tokenbuffer, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3171, !tbaa !3158
  br label %17, !dbg !3172

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3173
  br i1 %18, label %20, label %19, !dbg !3175

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !3176
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3178, !tbaa !845
  br label %20, !dbg !3179

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3180, !tbaa !909
  ret void, !dbg !3181
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3182 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #12 !dbg !3185 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3187, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata ptr %1, metadata !3188, metadata !DIExpression()), !dbg !3189
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3190
  ret ptr %3, !dbg !3191
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #12 !dbg !3192 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3196, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata ptr %1, metadata !3197, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %2, metadata !3198, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata ptr %3, metadata !3199, metadata !DIExpression()), !dbg !3212
  %6 = tail call ptr @__errno_location() #42, !dbg !3213
  %7 = load i32, ptr %6, align 4, !dbg !3213, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %7, metadata !3200, metadata !DIExpression()), !dbg !3212
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3214, !tbaa !845
  call void @llvm.dbg.value(metadata ptr %8, metadata !3201, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3202, metadata !DIExpression()), !dbg !3212
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3215
  br i1 %9, label %10, label %11, !dbg !3215

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !3217
  unreachable, !dbg !3217

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3218, !tbaa !909
  %13 = icmp sgt i32 %12, %0, !dbg !3219
  br i1 %13, label %32, label %14, !dbg !3220

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3221
  call void @llvm.dbg.value(metadata i1 %15, metadata !3203, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3222
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !3223
  %16 = sext i32 %12 to i64, !dbg !3224
  call void @llvm.dbg.value(metadata i64 %16, metadata !3206, metadata !DIExpression()), !dbg !3222
  store i64 %16, ptr %5, align 8, !dbg !3225, !tbaa !1412
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3226
  %18 = add nuw nsw i32 %0, 1, !dbg !3227
  %19 = sub i32 %18, %12, !dbg !3228
  %20 = sext i32 %19 to i64, !dbg !3229
  call void @llvm.dbg.value(metadata ptr %5, metadata !3206, metadata !DIExpression(DW_OP_deref)), !dbg !3222
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !3230
  call void @llvm.dbg.value(metadata ptr %21, metadata !3201, metadata !DIExpression()), !dbg !3212
  store ptr %21, ptr @slotvec, align 8, !dbg !3231, !tbaa !845
  br i1 %15, label %22, label %23, !dbg !3232

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3233, !tbaa.struct !3235
  br label %23, !dbg !3236

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3237, !tbaa !909
  %25 = sext i32 %24 to i64, !dbg !3238
  %26 = getelementptr inbounds %struct.tokenbuffer, ptr %21, i64 %25, !dbg !3238
  %27 = load i64, ptr %5, align 8, !dbg !3239, !tbaa !1412
  call void @llvm.dbg.value(metadata i64 %27, metadata !3206, metadata !DIExpression()), !dbg !3222
  %28 = sub nsw i64 %27, %25, !dbg !3240
  %29 = shl i64 %28, 4, !dbg !3241
  call void @llvm.dbg.value(metadata ptr %26, metadata !2610, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 0, metadata !2613, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %29, metadata !2614, metadata !DIExpression()), !dbg !3242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !3244
  %30 = load i64, ptr %5, align 8, !dbg !3245, !tbaa !1412
  call void @llvm.dbg.value(metadata i64 %30, metadata !3206, metadata !DIExpression()), !dbg !3222
  %31 = trunc i64 %30 to i32, !dbg !3245
  store i32 %31, ptr @nslots, align 4, !dbg !3246, !tbaa !909
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3247
  br label %32, !dbg !3248

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3212
  call void @llvm.dbg.value(metadata ptr %33, metadata !3201, metadata !DIExpression()), !dbg !3212
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.tokenbuffer, ptr %33, i64 %34, !dbg !3249
  %36 = load i64, ptr %35, align 8, !dbg !3250, !tbaa !3170
  call void @llvm.dbg.value(metadata i64 %36, metadata !3207, metadata !DIExpression()), !dbg !3251
  %37 = getelementptr inbounds %struct.tokenbuffer, ptr %33, i64 %34, i32 1, !dbg !3252
  %38 = load ptr, ptr %37, align 8, !dbg !3252, !tbaa !3158
  call void @llvm.dbg.value(metadata ptr %38, metadata !3209, metadata !DIExpression()), !dbg !3251
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3253
  %40 = load i32, ptr %39, align 4, !dbg !3253, !tbaa !2453
  %41 = or i32 %40, 1, !dbg !3254
  call void @llvm.dbg.value(metadata i32 %41, metadata !3210, metadata !DIExpression()), !dbg !3251
  %42 = load i32, ptr %3, align 8, !dbg !3255, !tbaa !2403
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3256
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3257
  %45 = load ptr, ptr %44, align 8, !dbg !3257, !tbaa !2474
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3258
  %47 = load ptr, ptr %46, align 8, !dbg !3258, !tbaa !2477
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3259
  call void @llvm.dbg.value(metadata i64 %48, metadata !3211, metadata !DIExpression()), !dbg !3251
  %49 = icmp ugt i64 %36, %48, !dbg !3260
  br i1 %49, label %60, label %50, !dbg !3262

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3263
  call void @llvm.dbg.value(metadata i64 %51, metadata !3207, metadata !DIExpression()), !dbg !3251
  store i64 %51, ptr %35, align 8, !dbg !3265, !tbaa !3170
  %52 = icmp eq ptr %38, @slot0, !dbg !3266
  br i1 %52, label %54, label %53, !dbg !3268

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3269
  br label %54, !dbg !3269

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !3270
  call void @llvm.dbg.value(metadata ptr %55, metadata !3209, metadata !DIExpression()), !dbg !3251
  store ptr %55, ptr %37, align 8, !dbg !3271, !tbaa !3158
  %56 = load i32, ptr %3, align 8, !dbg !3272, !tbaa !2403
  %57 = load ptr, ptr %44, align 8, !dbg !3273, !tbaa !2474
  %58 = load ptr, ptr %46, align 8, !dbg !3274, !tbaa !2477
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3275
  br label %60, !dbg !3276

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3251
  call void @llvm.dbg.value(metadata ptr %61, metadata !3209, metadata !DIExpression()), !dbg !3251
  store i32 %7, ptr %6, align 4, !dbg !3277, !tbaa !909
  ret ptr %61, !dbg !3278
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #25

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3279 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3283, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata ptr %1, metadata !3284, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %2, metadata !3285, metadata !DIExpression()), !dbg !3286
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3287
  ret ptr %4, !dbg !3288
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #12 !dbg !3289 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3291, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 0, metadata !3187, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata ptr %0, metadata !3188, metadata !DIExpression()), !dbg !3293
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3295
  ret ptr %2, !dbg !3296
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3297 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3301, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i64 %1, metadata !3302, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i32 0, metadata !3283, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata ptr %0, metadata !3284, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %1, metadata !3285, metadata !DIExpression()), !dbg !3304
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3306
  ret ptr %3, !dbg !3307
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #12 !dbg !3308 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3312, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i32 %1, metadata !3313, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata ptr %2, metadata !3314, metadata !DIExpression()), !dbg !3316
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3317
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3315, metadata !DIExpression()), !dbg !3318
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3319), !dbg !3322
  call void @llvm.dbg.value(metadata i32 %1, metadata !3323, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3328, metadata !DIExpression()), !dbg !3331
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3331, !alias.scope !3319
  %5 = icmp eq i32 %1, 10, !dbg !3332
  br i1 %5, label %6, label %7, !dbg !3334

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3335, !noalias !3319
  unreachable, !dbg !3335

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3336, !tbaa !2403, !alias.scope !3319
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3337
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3338
  ret ptr %8, !dbg !3339
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3340 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3344, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i32 %1, metadata !3345, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata ptr %2, metadata !3346, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64 %3, metadata !3347, metadata !DIExpression()), !dbg !3349
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3350
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3348, metadata !DIExpression()), !dbg !3351
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3352), !dbg !3355
  call void @llvm.dbg.value(metadata i32 %1, metadata !3323, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3328, metadata !DIExpression()), !dbg !3358
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3358, !alias.scope !3352
  %6 = icmp eq i32 %1, 10, !dbg !3359
  br i1 %6, label %7, label %8, !dbg !3360

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3361, !noalias !3352
  unreachable, !dbg !3361

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3362, !tbaa !2403, !alias.scope !3352
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3363
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3364
  ret ptr %9, !dbg !3365
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #12 !dbg !3366 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3370, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata ptr %1, metadata !3371, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i32 0, metadata !3312, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i32 %0, metadata !3313, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata ptr %1, metadata !3314, metadata !DIExpression()), !dbg !3373
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3375
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3315, metadata !DIExpression()), !dbg !3376
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3377), !dbg !3380
  call void @llvm.dbg.value(metadata i32 %0, metadata !3323, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3328, metadata !DIExpression()), !dbg !3383
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3383, !alias.scope !3377
  %4 = icmp eq i32 %0, 10, !dbg !3384
  br i1 %4, label %5, label %6, !dbg !3385

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3386, !noalias !3377
  unreachable, !dbg !3386

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3387, !tbaa !2403, !alias.scope !3377
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3388
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3389
  ret ptr %7, !dbg !3390
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3391 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3395, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %1, metadata !3396, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %2, metadata !3397, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i32 0, metadata !3344, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i32 %0, metadata !3345, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata ptr %1, metadata !3346, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64 %2, metadata !3347, metadata !DIExpression()), !dbg !3399
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3401
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3348, metadata !DIExpression()), !dbg !3402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3403), !dbg !3406
  call void @llvm.dbg.value(metadata i32 %0, metadata !3323, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3328, metadata !DIExpression()), !dbg !3409
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3409, !alias.scope !3403
  %5 = icmp eq i32 %0, 10, !dbg !3410
  br i1 %5, label %6, label %7, !dbg !3411

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3412, !noalias !3403
  unreachable, !dbg !3412

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3413, !tbaa !2403, !alias.scope !3403
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3414
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3415
  ret ptr %8, !dbg !3416
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #12 !dbg !3417 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3421, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 %1, metadata !3422, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i8 %2, metadata !3423, metadata !DIExpression()), !dbg !3425
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3426
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3424, metadata !DIExpression()), !dbg !3427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3428, !tbaa.struct !3429
  call void @llvm.dbg.value(metadata ptr %4, metadata !2420, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i8 %2, metadata !2421, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i32 1, metadata !2422, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i8 %2, metadata !2423, metadata !DIExpression()), !dbg !3430
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3432
  %6 = lshr i8 %2, 5, !dbg !3433
  %7 = zext i8 %6 to i64, !dbg !3433
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3434
  call void @llvm.dbg.value(metadata ptr %8, metadata !2424, metadata !DIExpression()), !dbg !3430
  %9 = and i8 %2, 31, !dbg !3435
  %10 = zext i8 %9 to i32, !dbg !3435
  call void @llvm.dbg.value(metadata i32 %10, metadata !2426, metadata !DIExpression()), !dbg !3430
  %11 = load i32, ptr %8, align 4, !dbg !3436, !tbaa !909
  %12 = lshr i32 %11, %10, !dbg !3437
  call void @llvm.dbg.value(metadata i32 %12, metadata !2427, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3430
  %13 = and i32 %12, 1, !dbg !3438
  %14 = xor i32 %13, 1, !dbg !3438
  %15 = shl nuw i32 %14, %10, !dbg !3439
  %16 = xor i32 %15, %11, !dbg !3440
  store i32 %16, ptr %8, align 4, !dbg !3440, !tbaa !909
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3441
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3442
  ret ptr %17, !dbg !3443
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #12 !dbg !3444 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3448, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i8 %1, metadata !3449, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata ptr %0, metadata !3421, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i64 -1, metadata !3422, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i8 %1, metadata !3423, metadata !DIExpression()), !dbg !3451
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3453
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3424, metadata !DIExpression()), !dbg !3454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3455, !tbaa.struct !3429
  call void @llvm.dbg.value(metadata ptr %3, metadata !2420, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8 %1, metadata !2421, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 1, metadata !2422, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8 %1, metadata !2423, metadata !DIExpression()), !dbg !3456
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3458
  %5 = lshr i8 %1, 5, !dbg !3459
  %6 = zext i8 %5 to i64, !dbg !3459
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3460
  call void @llvm.dbg.value(metadata ptr %7, metadata !2424, metadata !DIExpression()), !dbg !3456
  %8 = and i8 %1, 31, !dbg !3461
  %9 = zext i8 %8 to i32, !dbg !3461
  call void @llvm.dbg.value(metadata i32 %9, metadata !2426, metadata !DIExpression()), !dbg !3456
  %10 = load i32, ptr %7, align 4, !dbg !3462, !tbaa !909
  %11 = lshr i32 %10, %9, !dbg !3463
  call void @llvm.dbg.value(metadata i32 %11, metadata !2427, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3456
  %12 = and i32 %11, 1, !dbg !3464
  %13 = xor i32 %12, 1, !dbg !3464
  %14 = shl nuw i32 %13, %9, !dbg !3465
  %15 = xor i32 %14, %10, !dbg !3466
  store i32 %15, ptr %7, align 4, !dbg !3466, !tbaa !909
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3467
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3468
  ret ptr %16, !dbg !3469
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #12 !dbg !3470 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3472, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata ptr %0, metadata !3448, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i8 58, metadata !3449, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata ptr %0, metadata !3421, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i64 -1, metadata !3422, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8 58, metadata !3423, metadata !DIExpression()), !dbg !3476
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3478
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3424, metadata !DIExpression()), !dbg !3479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3480, !tbaa.struct !3429
  call void @llvm.dbg.value(metadata ptr %2, metadata !2420, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i8 58, metadata !2421, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 1, metadata !2422, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i8 58, metadata !2423, metadata !DIExpression()), !dbg !3481
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3483
  call void @llvm.dbg.value(metadata ptr %3, metadata !2424, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 26, metadata !2426, metadata !DIExpression()), !dbg !3481
  %4 = load i32, ptr %3, align 4, !dbg !3484, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %4, metadata !2427, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3481
  %5 = or i32 %4, 67108864, !dbg !3485
  store i32 %5, ptr %3, align 4, !dbg !3485, !tbaa !909
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3486
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3487
  ret ptr %6, !dbg !3488
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3489 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3491, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64 %1, metadata !3492, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata ptr %0, metadata !3421, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i64 %1, metadata !3422, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i8 58, metadata !3423, metadata !DIExpression()), !dbg !3494
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3496
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3424, metadata !DIExpression()), !dbg !3497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3498, !tbaa.struct !3429
  call void @llvm.dbg.value(metadata ptr %3, metadata !2420, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i8 58, metadata !2421, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i32 1, metadata !2422, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i8 58, metadata !2423, metadata !DIExpression()), !dbg !3499
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3501
  call void @llvm.dbg.value(metadata ptr %4, metadata !2424, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i32 26, metadata !2426, metadata !DIExpression()), !dbg !3499
  %5 = load i32, ptr %4, align 4, !dbg !3502, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %5, metadata !2427, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3499
  %6 = or i32 %5, 67108864, !dbg !3503
  store i32 %6, ptr %4, align 4, !dbg !3503, !tbaa !909
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3504
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3505
  ret ptr %7, !dbg !3506
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #12 !dbg !3507 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3328, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3513
  call void @llvm.dbg.value(metadata i32 %0, metadata !3509, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i32 %1, metadata !3510, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata ptr %2, metadata !3511, metadata !DIExpression()), !dbg !3515
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3516
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3512, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i32 %1, metadata !3323, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i32 0, metadata !3328, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3518
  %5 = icmp eq i32 %1, 10, !dbg !3519
  br i1 %5, label %6, label %7, !dbg !3520

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3521, !noalias !3522
  unreachable, !dbg !3521

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3328, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3518
  store i32 %1, ptr %4, align 8, !dbg !3525, !tbaa.struct !3429
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3525
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3525
  call void @llvm.dbg.value(metadata ptr %4, metadata !2420, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i8 58, metadata !2421, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i32 1, metadata !2422, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i8 58, metadata !2423, metadata !DIExpression()), !dbg !3526
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3528
  call void @llvm.dbg.value(metadata ptr %9, metadata !2424, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i32 26, metadata !2426, metadata !DIExpression()), !dbg !3526
  %10 = load i32, ptr %9, align 4, !dbg !3529, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %10, metadata !2427, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3526
  %11 = or i32 %10, 67108864, !dbg !3530
  store i32 %11, ptr %9, align 4, !dbg !3530, !tbaa !909
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3531
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3532
  ret ptr %12, !dbg !3533
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 !dbg !3534 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3538, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata ptr %1, metadata !3539, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata ptr %2, metadata !3540, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata ptr %3, metadata !3541, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i32 %0, metadata !3543, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata ptr %1, metadata !3548, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata ptr %2, metadata !3549, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata ptr %3, metadata !3550, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 -1, metadata !3551, metadata !DIExpression()), !dbg !3553
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3555
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3552, metadata !DIExpression()), !dbg !3556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3557, !tbaa.struct !3429
  call void @llvm.dbg.value(metadata ptr %5, metadata !2460, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata ptr %1, metadata !2461, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata ptr %2, metadata !2462, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata ptr %5, metadata !2460, metadata !DIExpression()), !dbg !3558
  store i32 10, ptr %5, align 8, !dbg !3560, !tbaa !2403
  %6 = icmp ne ptr %1, null, !dbg !3561
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3562
  br i1 %8, label %10, label %9, !dbg !3562

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3563
  unreachable, !dbg !3563

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3564
  store ptr %1, ptr %11, align 8, !dbg !3565, !tbaa !2474
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3566
  store ptr %2, ptr %12, align 8, !dbg !3567, !tbaa !2477
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3568
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3569
  ret ptr %13, !dbg !3570
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3544 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3543, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr %1, metadata !3548, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr %2, metadata !3549, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr %3, metadata !3550, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i64 %4, metadata !3551, metadata !DIExpression()), !dbg !3571
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3572
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3552, metadata !DIExpression()), !dbg !3573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3574, !tbaa.struct !3429
  call void @llvm.dbg.value(metadata ptr %6, metadata !2460, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata ptr %1, metadata !2461, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata ptr %2, metadata !2462, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata ptr %6, metadata !2460, metadata !DIExpression()), !dbg !3575
  store i32 10, ptr %6, align 8, !dbg !3577, !tbaa !2403
  %7 = icmp ne ptr %1, null, !dbg !3578
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3579
  br i1 %9, label %11, label %10, !dbg !3579

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3580
  unreachable, !dbg !3580

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3581
  store ptr %1, ptr %12, align 8, !dbg !3582, !tbaa !2474
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3583
  store ptr %2, ptr %13, align 8, !dbg !3584, !tbaa !2477
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3585
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3586
  ret ptr %14, !dbg !3587
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 !dbg !3588 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3592, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata ptr %1, metadata !3593, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata ptr %2, metadata !3594, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i32 0, metadata !3538, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %0, metadata !3539, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %1, metadata !3540, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %2, metadata !3541, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i32 0, metadata !3543, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata ptr %0, metadata !3548, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata ptr %1, metadata !3549, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata ptr %2, metadata !3550, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i64 -1, metadata !3551, metadata !DIExpression()), !dbg !3598
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3600
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3552, metadata !DIExpression()), !dbg !3601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3602, !tbaa.struct !3429
  call void @llvm.dbg.value(metadata ptr %4, metadata !2460, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata ptr %0, metadata !2461, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata ptr %1, metadata !2462, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata ptr %4, metadata !2460, metadata !DIExpression()), !dbg !3603
  store i32 10, ptr %4, align 8, !dbg !3605, !tbaa !2403
  %5 = icmp ne ptr %0, null, !dbg !3606
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3607
  br i1 %7, label %9, label %8, !dbg !3607

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3608
  unreachable, !dbg !3608

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3609
  store ptr %0, ptr %10, align 8, !dbg !3610, !tbaa !2474
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3611
  store ptr %1, ptr %11, align 8, !dbg !3612, !tbaa !2477
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3613
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3614
  ret ptr %12, !dbg !3615
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3616 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3620, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata ptr %1, metadata !3621, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata ptr %2, metadata !3622, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i64 %3, metadata !3623, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i32 0, metadata !3543, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata ptr %0, metadata !3548, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata ptr %1, metadata !3549, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata ptr %2, metadata !3550, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i64 %3, metadata !3551, metadata !DIExpression()), !dbg !3625
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3627
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3552, metadata !DIExpression()), !dbg !3628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3629, !tbaa.struct !3429
  call void @llvm.dbg.value(metadata ptr %5, metadata !2460, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr %0, metadata !2461, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr %1, metadata !2462, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr %5, metadata !2460, metadata !DIExpression()), !dbg !3630
  store i32 10, ptr %5, align 8, !dbg !3632, !tbaa !2403
  %6 = icmp ne ptr %0, null, !dbg !3633
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3634
  br i1 %8, label %10, label %9, !dbg !3634

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3635
  unreachable, !dbg !3635

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3636
  store ptr %0, ptr %11, align 8, !dbg !3637, !tbaa !2474
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3638
  store ptr %1, ptr %12, align 8, !dbg !3639, !tbaa !2477
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3640
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3641
  ret ptr %13, !dbg !3642
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3643 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3647, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata ptr %1, metadata !3648, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i64 %2, metadata !3649, metadata !DIExpression()), !dbg !3650
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3651
  ret ptr %4, !dbg !3652
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3653 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3657, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i64 %1, metadata !3658, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i32 0, metadata !3647, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata ptr %0, metadata !3648, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i64 %1, metadata !3649, metadata !DIExpression()), !dbg !3660
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3662
  ret ptr %3, !dbg !3663
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #12 !dbg !3664 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3668, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata ptr %1, metadata !3669, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 %0, metadata !3647, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata ptr %1, metadata !3648, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 -1, metadata !3649, metadata !DIExpression()), !dbg !3671
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3673
  ret ptr %3, !dbg !3674
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #12 !dbg !3675 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3679, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i32 0, metadata !3668, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata ptr %0, metadata !3669, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i32 0, metadata !3647, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata ptr %0, metadata !3648, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 -1, metadata !3649, metadata !DIExpression()), !dbg !3683
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3685
  ret ptr %2, !dbg !3686
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_tokenbuffer(ptr nocapture noundef writeonly %0) local_unnamed_addr #28 !dbg !3687 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3697, metadata !DIExpression()), !dbg !3698
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !dbg !3699
  ret void, !dbg !3700
}

; Function Attrs: nounwind uwtable
define dso_local i64 @readtoken(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #12 !dbg !3701 {
  %5 = alloca [4 x i64], align 16
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3739, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata ptr %1, metadata !3740, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 %2, metadata !3741, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata ptr %3, metadata !3742, metadata !DIExpression()), !dbg !3755
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !3756
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3743, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata ptr %5, metadata !3758, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i32 0, metadata !3761, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i64 32, metadata !3762, metadata !DIExpression()), !dbg !3763
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 noundef 0, i64 noundef 32, i1 noundef false) #39, !dbg !3765
  call void @llvm.dbg.value(metadata i64 0, metadata !3746, metadata !DIExpression()), !dbg !3766
  %7 = icmp eq i64 %2, 0, !dbg !3767
  br i1 %7, label %26, label %8, !dbg !3768

8:                                                ; preds = %4
  %9 = and i64 %2, 1, !dbg !3768
  %10 = icmp eq i64 %2, 1, !dbg !3768
  br i1 %10, label %13, label %11, !dbg !3768

11:                                               ; preds = %8
  %12 = and i64 %2, -2, !dbg !3768
  br label %41, !dbg !3768

13:                                               ; preds = %41, %8
  %14 = phi i64 [ 0, %8 ], [ %63, %41 ]
  %15 = icmp eq i64 %9, 0, !dbg !3768
  br i1 %15, label %26, label %16, !dbg !3768

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %14, metadata !3746, metadata !DIExpression()), !dbg !3766
  %17 = getelementptr inbounds i8, ptr %1, i64 %14, !dbg !3769
  %18 = load i8, ptr %17, align 1, !dbg !3769, !tbaa !918
  call void @llvm.dbg.value(metadata i8 %18, metadata !3748, metadata !DIExpression()), !dbg !3770
  %19 = zext i8 %18 to i64, !dbg !3771
  call void @llvm.dbg.value(metadata i64 %19, metadata !3772, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata ptr %5, metadata !3778, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i64 1, metadata !3779, metadata !DIExpression()), !dbg !3780
  %20 = and i64 %19, 63, !dbg !3782
  %21 = shl nuw i64 1, %20, !dbg !3783
  %22 = lshr i64 %19, 6, !dbg !3784
  %23 = getelementptr inbounds i64, ptr %5, i64 %22, !dbg !3785
  %24 = load i64, ptr %23, align 8, !dbg !3786, !tbaa !1412
  %25 = or i64 %21, %24, !dbg !3786
  store i64 %25, ptr %23, align 8, !dbg !3786, !tbaa !1412
  call void @llvm.dbg.value(metadata i64 %14, metadata !3746, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3766
  br label %26, !dbg !3787

26:                                               ; preds = %16, %13, %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3792, metadata !DIExpression()), !dbg !3795
  %27 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3787
  %28 = load ptr, ptr %27, align 8, !dbg !3787, !tbaa !2271
  %29 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3787
  %30 = load ptr, ptr %29, align 8, !dbg !3787, !tbaa !2269
  %31 = icmp ult ptr %28, %30, !dbg !3787
  br i1 %31, label %32, label %36, !dbg !3787, !prof !1790

32:                                               ; preds = %26
  %33 = getelementptr inbounds i8, ptr %28, i64 1, !dbg !3787
  store ptr %33, ptr %27, align 8, !dbg !3787, !tbaa !2271
  %34 = load i8, ptr %28, align 1, !dbg !3787, !tbaa !918
  %35 = zext i8 %34 to i32, !dbg !3787
  call void @llvm.dbg.value(metadata i32 %35, metadata !3751, metadata !DIExpression()), !dbg !3755
  br label %39, !dbg !3796

36:                                               ; preds = %26
  %37 = tail call i32 @__uflow(ptr noundef nonnull %0) #39, !dbg !3787
  call void @llvm.dbg.value(metadata i32 %37, metadata !3751, metadata !DIExpression()), !dbg !3755
  %38 = icmp sgt i32 %37, -1, !dbg !3798
  br i1 %38, label %39, label %89, !dbg !3796

39:                                               ; preds = %32, %36
  %40 = phi i32 [ %37, %36 ], [ %35, %32 ]
  br label %66, !dbg !3799

41:                                               ; preds = %41, %11
  %42 = phi i64 [ 0, %11 ], [ %63, %41 ]
  %43 = phi i64 [ 0, %11 ], [ %64, %41 ]
  call void @llvm.dbg.value(metadata i64 %42, metadata !3746, metadata !DIExpression()), !dbg !3766
  %44 = getelementptr inbounds i8, ptr %1, i64 %42, !dbg !3769
  %45 = load i8, ptr %44, align 1, !dbg !3769, !tbaa !918
  call void @llvm.dbg.value(metadata i8 %45, metadata !3748, metadata !DIExpression()), !dbg !3770
  %46 = zext i8 %45 to i64, !dbg !3771
  call void @llvm.dbg.value(metadata i64 %46, metadata !3772, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata ptr %5, metadata !3778, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i64 1, metadata !3779, metadata !DIExpression()), !dbg !3780
  %47 = and i64 %46, 63, !dbg !3782
  %48 = shl nuw i64 1, %47, !dbg !3783
  %49 = lshr i64 %46, 6, !dbg !3784
  %50 = getelementptr inbounds i64, ptr %5, i64 %49, !dbg !3785
  %51 = load i64, ptr %50, align 8, !dbg !3786, !tbaa !1412
  %52 = or i64 %48, %51, !dbg !3786
  store i64 %52, ptr %50, align 8, !dbg !3786, !tbaa !1412
  %53 = or i64 %42, 1, !dbg !3800
  call void @llvm.dbg.value(metadata i64 %53, metadata !3746, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i64 %53, metadata !3746, metadata !DIExpression()), !dbg !3766
  %54 = getelementptr inbounds i8, ptr %1, i64 %53, !dbg !3769
  %55 = load i8, ptr %54, align 1, !dbg !3769, !tbaa !918
  call void @llvm.dbg.value(metadata i8 %55, metadata !3748, metadata !DIExpression()), !dbg !3770
  %56 = zext i8 %55 to i64, !dbg !3771
  call void @llvm.dbg.value(metadata i64 %56, metadata !3772, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata ptr %5, metadata !3778, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i64 1, metadata !3779, metadata !DIExpression()), !dbg !3780
  %57 = and i64 %56, 63, !dbg !3782
  %58 = shl nuw i64 1, %57, !dbg !3783
  %59 = lshr i64 %56, 6, !dbg !3784
  %60 = getelementptr inbounds i64, ptr %5, i64 %59, !dbg !3785
  %61 = load i64, ptr %60, align 8, !dbg !3786, !tbaa !1412
  %62 = or i64 %58, %61, !dbg !3786
  store i64 %62, ptr %60, align 8, !dbg !3786, !tbaa !1412
  %63 = add nuw nsw i64 %42, 2, !dbg !3800
  call void @llvm.dbg.value(metadata i64 %63, metadata !3746, metadata !DIExpression()), !dbg !3766
  %64 = add i64 %43, 2, !dbg !3768
  %65 = icmp eq i64 %64, %12, !dbg !3768
  br i1 %65, label %13, label %41, !dbg !3768, !llvm.loop !3801

66:                                               ; preds = %39, %86
  %67 = phi i32 [ %87, %86 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32 %67, metadata !3751, metadata !DIExpression()), !dbg !3755
  %68 = zext i32 %67 to i64
  call void @llvm.dbg.value(metadata i64 %68, metadata !3803, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata ptr %5, metadata !3810, metadata !DIExpression()), !dbg !3811
  %69 = lshr i64 %68, 6, !dbg !3813
  %70 = getelementptr inbounds i64, ptr %5, i64 %69, !dbg !3814
  %71 = load i64, ptr %70, align 8, !dbg !3814, !tbaa !1412
  %72 = and i64 %68, 63, !dbg !3815
  %73 = shl nuw i64 1, %72, !dbg !3814
  %74 = and i64 %71, %73, !dbg !3814
  %75 = icmp eq i64 %74, 0, !dbg !3814
  br i1 %75, label %90, label %76, !dbg !3799

76:                                               ; preds = %66
  call void @llvm.dbg.value(metadata ptr %0, metadata !3792, metadata !DIExpression()), !dbg !3816
  %77 = load ptr, ptr %27, align 8, !dbg !3818, !tbaa !2271
  %78 = load ptr, ptr %29, align 8, !dbg !3818, !tbaa !2269
  %79 = icmp ult ptr %77, %78, !dbg !3818
  br i1 %79, label %82, label %80, !dbg !3818, !prof !1790

80:                                               ; preds = %76
  %81 = tail call i32 @__uflow(ptr noundef nonnull %0) #39, !dbg !3818
  br label %86, !dbg !3818

82:                                               ; preds = %76
  %83 = getelementptr inbounds i8, ptr %77, i64 1, !dbg !3818
  store ptr %83, ptr %27, align 8, !dbg !3818, !tbaa !2271
  %84 = load i8, ptr %77, align 1, !dbg !3818, !tbaa !918
  %85 = zext i8 %84 to i32, !dbg !3818
  br label %86, !dbg !3818

86:                                               ; preds = %80, %82
  %87 = phi i32 [ %81, %80 ], [ %85, %82 ], !dbg !3818
  call void @llvm.dbg.value(metadata i32 %87, metadata !3751, metadata !DIExpression()), !dbg !3755
  %88 = icmp sgt i32 %87, -1, !dbg !3798
  br i1 %88, label %66, label %89, !dbg !3796, !llvm.loop !3819

89:                                               ; preds = %86, %36
  call void @llvm.dbg.value(metadata ptr poison, metadata !3752, metadata !DIExpression()), !dbg !3755
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #39, !dbg !3821
  call void @llvm.dbg.value(metadata i64 poison, metadata !3753, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i64 0, metadata !3754, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i32 poison, metadata !3751, metadata !DIExpression()), !dbg !3755
  br label %133, !dbg !3822

90:                                               ; preds = %66
  %91 = getelementptr inbounds %struct.tokenbuffer, ptr %3, i64 0, i32 1, !dbg !3827
  %92 = load ptr, ptr %91, align 8, !dbg !3827, !tbaa !1173
  call void @llvm.dbg.value(metadata ptr %92, metadata !3752, metadata !DIExpression()), !dbg !3755
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #39, !dbg !3821
  %93 = load i64, ptr %3, align 8, !dbg !3828, !tbaa !3829
  call void @llvm.dbg.value(metadata i64 %93, metadata !3753, metadata !DIExpression()), !dbg !3755
  store i64 %93, ptr %6, align 8, !dbg !3830, !tbaa !1412
  call void @llvm.dbg.value(metadata i64 0, metadata !3754, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i32 %67, metadata !3751, metadata !DIExpression()), !dbg !3755
  br label %94, !dbg !3831

94:                                               ; preds = %127, %90
  %95 = phi i1 [ %129, %127 ], [ false, %90 ]
  %96 = phi i64 [ %116, %127 ], [ 0, %90 ]
  %97 = phi ptr [ %104, %127 ], [ %92, %90 ]
  %98 = phi i32 [ %128, %127 ], [ %67, %90 ]
  call void @llvm.dbg.value(metadata i64 %96, metadata !3754, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata ptr %97, metadata !3752, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i32 %98, metadata !3751, metadata !DIExpression()), !dbg !3755
  %99 = load i64, ptr %6, align 8, !dbg !3832, !tbaa !1412
  call void @llvm.dbg.value(metadata i64 %99, metadata !3753, metadata !DIExpression()), !dbg !3755
  %100 = icmp eq i64 %96, %99, !dbg !3834
  br i1 %100, label %101, label %103, !dbg !3835

101:                                              ; preds = %94
  call void @llvm.dbg.value(metadata ptr %6, metadata !3753, metadata !DIExpression(DW_OP_deref)), !dbg !3755
  %102 = call nonnull ptr @xpalloc(ptr noundef %97, ptr noundef nonnull %6, i64 noundef 1, i64 noundef -1, i64 noundef 1) #39, !dbg !3836
  call void @llvm.dbg.value(metadata ptr %102, metadata !3752, metadata !DIExpression()), !dbg !3755
  br label %103, !dbg !3837

103:                                              ; preds = %101, %94
  %104 = phi ptr [ %102, %101 ], [ %97, %94 ], !dbg !3755
  call void @llvm.dbg.value(metadata ptr %104, metadata !3752, metadata !DIExpression()), !dbg !3755
  br i1 %95, label %130, label %105, !dbg !3838

105:                                              ; preds = %103
  %106 = zext i32 %98 to i64
  call void @llvm.dbg.value(metadata i64 %106, metadata !3803, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata ptr %5, metadata !3810, metadata !DIExpression()), !dbg !3839
  %107 = lshr i64 %106, 6, !dbg !3842
  %108 = getelementptr inbounds i64, ptr %5, i64 %107, !dbg !3843
  %109 = load i64, ptr %108, align 8, !dbg !3843, !tbaa !1412
  %110 = and i64 %106, 63, !dbg !3844
  %111 = shl nuw i64 1, %110, !dbg !3843
  %112 = and i64 %109, %111, !dbg !3843
  %113 = icmp eq i64 %112, 0, !dbg !3843
  br i1 %113, label %114, label %130, !dbg !3845

114:                                              ; preds = %105
  %115 = trunc i32 %98 to i8, !dbg !3846
  %116 = add nuw nsw i64 %96, 1, !dbg !3847
  call void @llvm.dbg.value(metadata i64 %116, metadata !3754, metadata !DIExpression()), !dbg !3755
  %117 = getelementptr inbounds i8, ptr %104, i64 %96, !dbg !3848
  store i8 %115, ptr %117, align 1, !dbg !3849, !tbaa !918
  call void @llvm.dbg.value(metadata ptr %0, metadata !3792, metadata !DIExpression()), !dbg !3850
  %118 = load ptr, ptr %27, align 8, !dbg !3852, !tbaa !2271
  %119 = load ptr, ptr %29, align 8, !dbg !3852, !tbaa !2269
  %120 = icmp ult ptr %118, %119, !dbg !3852
  br i1 %120, label %123, label %121, !dbg !3852, !prof !1790

121:                                              ; preds = %114
  %122 = call i32 @__uflow(ptr noundef nonnull %0) #39, !dbg !3852
  br label %127, !dbg !3852

123:                                              ; preds = %114
  %124 = getelementptr inbounds i8, ptr %118, i64 1, !dbg !3852
  store ptr %124, ptr %27, align 8, !dbg !3852, !tbaa !2271
  %125 = load i8, ptr %118, align 1, !dbg !3852, !tbaa !918
  %126 = zext i8 %125 to i32, !dbg !3852
  br label %127, !dbg !3852

127:                                              ; preds = %121, %123
  %128 = phi i32 [ %122, %121 ], [ %126, %123 ], !dbg !3852
  call void @llvm.dbg.value(metadata i64 %116, metadata !3754, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata ptr %104, metadata !3752, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i32 %128, metadata !3751, metadata !DIExpression()), !dbg !3755
  %129 = icmp slt i32 %128, 0, !dbg !3853
  br label %94

130:                                              ; preds = %105, %103
  %131 = getelementptr inbounds i8, ptr %104, i64 %96, !dbg !3854
  store i8 0, ptr %131, align 1, !dbg !3854, !tbaa !918
  store ptr %104, ptr %91, align 8, !dbg !3855, !tbaa !1173
  %132 = load i64, ptr %6, align 8, !dbg !3856, !tbaa !1412
  call void @llvm.dbg.value(metadata i64 %132, metadata !3753, metadata !DIExpression()), !dbg !3755
  store i64 %132, ptr %3, align 8, !dbg !3857, !tbaa !3829
  br label %133, !dbg !3858

133:                                              ; preds = %89, %130
  %134 = phi i64 [ %96, %130 ], [ -1, %89 ], !dbg !3755
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #39, !dbg !3859
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !3859
  ret i64 %134, !dbg !3859
}

declare !dbg !3860 i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @readtokens(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, ptr nocapture noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #12 !dbg !3861 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.tokenbuffer, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3867, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64 %1, metadata !3868, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata ptr %2, metadata !3869, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64 %3, metadata !3870, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata ptr %4, metadata !3871, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata ptr %5, metadata !3872, metadata !DIExpression()), !dbg !3884
  %9 = icmp eq i64 %1, 0, !dbg !3885
  %10 = add i64 %1, 1, !dbg !3887
  %11 = select i1 %9, i64 64, i64 %10, !dbg !3887
  call void @llvm.dbg.value(metadata i64 %11, metadata !3868, metadata !DIExpression()), !dbg !3884
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #39, !dbg !3888
  call void @llvm.dbg.value(metadata i64 %11, metadata !3873, metadata !DIExpression()), !dbg !3884
  store i64 %11, ptr %7, align 8, !dbg !3889, !tbaa !1412
  %12 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %11, i64 noundef 8) #47, !dbg !3890
  call void @llvm.dbg.value(metadata ptr %12, metadata !3874, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64 %11, metadata !3873, metadata !DIExpression()), !dbg !3884
  %13 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %11, i64 noundef 8) #47, !dbg !3891
  call void @llvm.dbg.value(metadata ptr %13, metadata !3875, metadata !DIExpression()), !dbg !3884
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #39, !dbg !3892
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3876, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata ptr %8, metadata !3877, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata ptr %8, metadata !3697, metadata !DIExpression()), !dbg !3894
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !dbg !3896
  call void @llvm.dbg.value(metadata i64 0, metadata !3878, metadata !DIExpression()), !dbg !3884
  %14 = getelementptr inbounds %struct.tokenbuffer, ptr %8, i64 0, i32 1
  br label %15, !dbg !3897

15:                                               ; preds = %31, %6
  %16 = phi ptr [ %13, %6 ], [ %27, %31 ], !dbg !3884
  %17 = phi i64 [ 0, %6 ], [ %36, %31 ], !dbg !3898
  %18 = phi ptr [ %12, %6 ], [ %28, %31 ], !dbg !3884
  call void @llvm.dbg.value(metadata ptr %18, metadata !3874, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64 %17, metadata !3878, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata ptr %16, metadata !3875, metadata !DIExpression()), !dbg !3884
  %19 = call i64 @readtoken(ptr noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %8), !dbg !3899
  call void @llvm.dbg.value(metadata i64 %19, metadata !3879, metadata !DIExpression()), !dbg !3900
  %20 = load i64, ptr %7, align 8, !dbg !3901, !tbaa !1412
  call void @llvm.dbg.value(metadata i64 %20, metadata !3873, metadata !DIExpression()), !dbg !3884
  %21 = icmp slt i64 %17, %20, !dbg !3903
  br i1 %21, label %26, label %22, !dbg !3904

22:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %7, metadata !3873, metadata !DIExpression(DW_OP_deref)), !dbg !3884
  %23 = call nonnull ptr @xpalloc(ptr noundef %18, ptr noundef nonnull %7, i64 noundef 1, i64 noundef -1, i64 noundef 8) #39, !dbg !3905
  call void @llvm.dbg.value(metadata ptr %23, metadata !3874, metadata !DIExpression()), !dbg !3884
  %24 = load i64, ptr %7, align 8, !dbg !3907, !tbaa !1412
  call void @llvm.dbg.value(metadata i64 %24, metadata !3873, metadata !DIExpression()), !dbg !3884
  %25 = call ptr @xreallocarray(ptr noundef nonnull %16, i64 noundef %24, i64 noundef 8) #48, !dbg !3908
  call void @llvm.dbg.value(metadata ptr %25, metadata !3875, metadata !DIExpression()), !dbg !3884
  br label %26, !dbg !3909

26:                                               ; preds = %22, %15
  %27 = phi ptr [ %25, %22 ], [ %16, %15 ], !dbg !3884
  %28 = phi ptr [ %23, %22 ], [ %18, %15 ], !dbg !3884
  call void @llvm.dbg.value(metadata ptr %28, metadata !3874, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata ptr %27, metadata !3875, metadata !DIExpression()), !dbg !3884
  %29 = icmp eq i64 %19, -1, !dbg !3910
  %30 = getelementptr inbounds i64, ptr %27, i64 %17, !dbg !3900
  br i1 %29, label %37, label %31, !dbg !3912

31:                                               ; preds = %26
  %32 = add nuw i64 %19, 1, !dbg !3913
  %33 = call noalias nonnull ptr @xnmalloc(i64 noundef %32, i64 noundef 1) #47, !dbg !3914
  call void @llvm.dbg.value(metadata ptr %33, metadata !3883, metadata !DIExpression()), !dbg !3900
  store i64 %19, ptr %30, align 8, !dbg !3915, !tbaa !1412
  %34 = load ptr, ptr %14, align 8, !dbg !3916, !tbaa !1173
  call void @llvm.dbg.value(metadata ptr %33, metadata !3917, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata ptr %34, metadata !3923, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i64 %32, metadata !3924, metadata !DIExpression()), !dbg !3925
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %33, ptr noundef nonnull align 1 %34, i64 noundef %32, i1 noundef false) #39, !dbg !3927
  %35 = getelementptr inbounds ptr, ptr %28, i64 %17, !dbg !3928
  store ptr %33, ptr %35, align 8, !dbg !3929, !tbaa !845
  %36 = add nuw nsw i64 %17, 1, !dbg !3930
  call void @llvm.dbg.value(metadata i64 %36, metadata !3878, metadata !DIExpression()), !dbg !3884
  br label %15

37:                                               ; preds = %26
  %38 = getelementptr inbounds ptr, ptr %28, i64 %17, !dbg !3931
  store ptr null, ptr %38, align 8, !dbg !3933, !tbaa !845
  store i64 0, ptr %30, align 8, !dbg !3934, !tbaa !1412
  call void @llvm.dbg.value(metadata i64 %17, metadata !3878, metadata !DIExpression()), !dbg !3884
  %39 = load ptr, ptr %14, align 8, !dbg !3935, !tbaa !1173
  call void @free(ptr noundef %39) #39, !dbg !3936
  store ptr %28, ptr %4, align 8, !dbg !3937, !tbaa !845
  %40 = icmp eq ptr %5, null, !dbg !3938
  br i1 %40, label %42, label %41, !dbg !3940

41:                                               ; preds = %37
  store ptr %27, ptr %5, align 8, !dbg !3941, !tbaa !845
  br label %43, !dbg !3942

42:                                               ; preds = %37
  call void @free(ptr noundef nonnull %27) #39, !dbg !3943
  br label %43

43:                                               ; preds = %42, %41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #39, !dbg !3944
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #39, !dbg !3944
  ret i64 %17, !dbg !3945
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3946 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3985, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata ptr %1, metadata !3986, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata ptr %2, metadata !3987, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata ptr %3, metadata !3988, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata ptr %4, metadata !3989, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i64 %5, metadata !3990, metadata !DIExpression()), !dbg !3991
  %7 = icmp eq ptr %1, null, !dbg !3992
  br i1 %7, label %10, label %8, !dbg !3994

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.99, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !3995
  br label %12, !dbg !3995

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.100, ptr noundef %2, ptr noundef %3) #39, !dbg !3996
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.3.102, i32 noundef 5) #39, !dbg !3997
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !3997
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.103, ptr noundef %0), !dbg !3998
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.5.104, i32 noundef 5) #39, !dbg !3999
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.105) #39, !dbg !3999
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.103, ptr noundef %0), !dbg !4000
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
  ], !dbg !4001

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.7.106, i32 noundef 5) #39, !dbg !4002
  %21 = load ptr, ptr %4, align 8, !dbg !4002, !tbaa !845
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !4002
  br label %147, !dbg !4004

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.8.107, i32 noundef 5) #39, !dbg !4005
  %25 = load ptr, ptr %4, align 8, !dbg !4005, !tbaa !845
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4005
  %27 = load ptr, ptr %26, align 8, !dbg !4005, !tbaa !845
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !4005
  br label %147, !dbg !4006

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.9.108, i32 noundef 5) #39, !dbg !4007
  %31 = load ptr, ptr %4, align 8, !dbg !4007, !tbaa !845
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4007
  %33 = load ptr, ptr %32, align 8, !dbg !4007, !tbaa !845
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4007
  %35 = load ptr, ptr %34, align 8, !dbg !4007, !tbaa !845
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !4007
  br label %147, !dbg !4008

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.10.109, i32 noundef 5) #39, !dbg !4009
  %39 = load ptr, ptr %4, align 8, !dbg !4009, !tbaa !845
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4009
  %41 = load ptr, ptr %40, align 8, !dbg !4009, !tbaa !845
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4009
  %43 = load ptr, ptr %42, align 8, !dbg !4009, !tbaa !845
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4009
  %45 = load ptr, ptr %44, align 8, !dbg !4009, !tbaa !845
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !4009
  br label %147, !dbg !4010

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.11.110, i32 noundef 5) #39, !dbg !4011
  %49 = load ptr, ptr %4, align 8, !dbg !4011, !tbaa !845
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4011
  %51 = load ptr, ptr %50, align 8, !dbg !4011, !tbaa !845
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4011
  %53 = load ptr, ptr %52, align 8, !dbg !4011, !tbaa !845
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4011
  %55 = load ptr, ptr %54, align 8, !dbg !4011, !tbaa !845
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4011
  %57 = load ptr, ptr %56, align 8, !dbg !4011, !tbaa !845
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !4011
  br label %147, !dbg !4012

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.12.111, i32 noundef 5) #39, !dbg !4013
  %61 = load ptr, ptr %4, align 8, !dbg !4013, !tbaa !845
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4013
  %63 = load ptr, ptr %62, align 8, !dbg !4013, !tbaa !845
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4013
  %65 = load ptr, ptr %64, align 8, !dbg !4013, !tbaa !845
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4013
  %67 = load ptr, ptr %66, align 8, !dbg !4013, !tbaa !845
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4013
  %69 = load ptr, ptr %68, align 8, !dbg !4013, !tbaa !845
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4013
  %71 = load ptr, ptr %70, align 8, !dbg !4013, !tbaa !845
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !4013
  br label %147, !dbg !4014

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.13.112, i32 noundef 5) #39, !dbg !4015
  %75 = load ptr, ptr %4, align 8, !dbg !4015, !tbaa !845
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4015
  %77 = load ptr, ptr %76, align 8, !dbg !4015, !tbaa !845
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4015
  %79 = load ptr, ptr %78, align 8, !dbg !4015, !tbaa !845
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4015
  %81 = load ptr, ptr %80, align 8, !dbg !4015, !tbaa !845
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4015
  %83 = load ptr, ptr %82, align 8, !dbg !4015, !tbaa !845
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4015
  %85 = load ptr, ptr %84, align 8, !dbg !4015, !tbaa !845
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4015
  %87 = load ptr, ptr %86, align 8, !dbg !4015, !tbaa !845
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !4015
  br label %147, !dbg !4016

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.14.113, i32 noundef 5) #39, !dbg !4017
  %91 = load ptr, ptr %4, align 8, !dbg !4017, !tbaa !845
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4017
  %93 = load ptr, ptr %92, align 8, !dbg !4017, !tbaa !845
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4017
  %95 = load ptr, ptr %94, align 8, !dbg !4017, !tbaa !845
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4017
  %97 = load ptr, ptr %96, align 8, !dbg !4017, !tbaa !845
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4017
  %99 = load ptr, ptr %98, align 8, !dbg !4017, !tbaa !845
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4017
  %101 = load ptr, ptr %100, align 8, !dbg !4017, !tbaa !845
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4017
  %103 = load ptr, ptr %102, align 8, !dbg !4017, !tbaa !845
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4017
  %105 = load ptr, ptr %104, align 8, !dbg !4017, !tbaa !845
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !4017
  br label %147, !dbg !4018

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.15.114, i32 noundef 5) #39, !dbg !4019
  %109 = load ptr, ptr %4, align 8, !dbg !4019, !tbaa !845
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4019
  %111 = load ptr, ptr %110, align 8, !dbg !4019, !tbaa !845
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4019
  %113 = load ptr, ptr %112, align 8, !dbg !4019, !tbaa !845
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4019
  %115 = load ptr, ptr %114, align 8, !dbg !4019, !tbaa !845
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4019
  %117 = load ptr, ptr %116, align 8, !dbg !4019, !tbaa !845
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4019
  %119 = load ptr, ptr %118, align 8, !dbg !4019, !tbaa !845
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4019
  %121 = load ptr, ptr %120, align 8, !dbg !4019, !tbaa !845
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4019
  %123 = load ptr, ptr %122, align 8, !dbg !4019, !tbaa !845
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4019
  %125 = load ptr, ptr %124, align 8, !dbg !4019, !tbaa !845
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !4019
  br label %147, !dbg !4020

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.16.115, i32 noundef 5) #39, !dbg !4021
  %129 = load ptr, ptr %4, align 8, !dbg !4021, !tbaa !845
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4021
  %131 = load ptr, ptr %130, align 8, !dbg !4021, !tbaa !845
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4021
  %133 = load ptr, ptr %132, align 8, !dbg !4021, !tbaa !845
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4021
  %135 = load ptr, ptr %134, align 8, !dbg !4021, !tbaa !845
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4021
  %137 = load ptr, ptr %136, align 8, !dbg !4021, !tbaa !845
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4021
  %139 = load ptr, ptr %138, align 8, !dbg !4021, !tbaa !845
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4021
  %141 = load ptr, ptr %140, align 8, !dbg !4021, !tbaa !845
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4021
  %143 = load ptr, ptr %142, align 8, !dbg !4021, !tbaa !845
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4021
  %145 = load ptr, ptr %144, align 8, !dbg !4021, !tbaa !845
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !4021
  br label %147, !dbg !4022

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4023
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #12 !dbg !4024 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4028, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr %1, metadata !4029, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr %2, metadata !4030, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr %3, metadata !4031, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr %4, metadata !4032, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i64 0, metadata !4033, metadata !DIExpression()), !dbg !4034
  br label %6, !dbg !4035

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4037
  call void @llvm.dbg.value(metadata i64 %7, metadata !4033, metadata !DIExpression()), !dbg !4034
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4038
  %9 = load ptr, ptr %8, align 8, !dbg !4038, !tbaa !845
  %10 = icmp eq ptr %9, null, !dbg !4040
  %11 = add i64 %7, 1, !dbg !4041
  call void @llvm.dbg.value(metadata i64 %11, metadata !4033, metadata !DIExpression()), !dbg !4034
  br i1 %10, label %12, label %6, !dbg !4040, !llvm.loop !4042

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4044
  ret void, !dbg !4045
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #12 !dbg !4046 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4058, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata ptr %1, metadata !4059, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata ptr %2, metadata !4060, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata ptr %3, metadata !4061, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata ptr %4, metadata !4062, metadata !DIExpression()), !dbg !4066
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !4067
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4064, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i64 0, metadata !4063, metadata !DIExpression()), !dbg !4066
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4063, metadata !DIExpression()), !dbg !4066
  %10 = icmp ult i32 %9, 41, !dbg !4069
  br i1 %10, label %11, label %16, !dbg !4069

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4069
  %13 = zext i32 %9 to i64, !dbg !4069
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4069
  %15 = add nuw nsw i32 %9, 8, !dbg !4069
  store i32 %15, ptr %4, align 8, !dbg !4069
  br label %19, !dbg !4069

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4069
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4069
  store ptr %18, ptr %7, align 8, !dbg !4069
  br label %19, !dbg !4069

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4069
  %22 = load ptr, ptr %21, align 8, !dbg !4069
  store ptr %22, ptr %6, align 16, !dbg !4072, !tbaa !845
  %23 = icmp eq ptr %22, null, !dbg !4073
  br i1 %23, label %128, label %24, !dbg !4074

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !4063, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 1, metadata !4063, metadata !DIExpression()), !dbg !4066
  %25 = icmp ult i32 %20, 41, !dbg !4069
  br i1 %25, label %29, label %26, !dbg !4069

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4069
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4069
  store ptr %28, ptr %7, align 8, !dbg !4069
  br label %34, !dbg !4069

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4069
  %31 = zext i32 %20 to i64, !dbg !4069
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4069
  %33 = add nuw nsw i32 %20, 8, !dbg !4069
  store i32 %33, ptr %4, align 8, !dbg !4069
  br label %34, !dbg !4069

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4069
  %37 = load ptr, ptr %36, align 8, !dbg !4069
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4075
  store ptr %37, ptr %38, align 8, !dbg !4072, !tbaa !845
  %39 = icmp eq ptr %37, null, !dbg !4073
  br i1 %39, label %128, label %40, !dbg !4074

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !4063, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 2, metadata !4063, metadata !DIExpression()), !dbg !4066
  %41 = icmp ult i32 %35, 41, !dbg !4069
  br i1 %41, label %45, label %42, !dbg !4069

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4069
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4069
  store ptr %44, ptr %7, align 8, !dbg !4069
  br label %50, !dbg !4069

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4069
  %47 = zext i32 %35 to i64, !dbg !4069
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4069
  %49 = add nuw nsw i32 %35, 8, !dbg !4069
  store i32 %49, ptr %4, align 8, !dbg !4069
  br label %50, !dbg !4069

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4069
  %53 = load ptr, ptr %52, align 8, !dbg !4069
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4075
  store ptr %53, ptr %54, align 16, !dbg !4072, !tbaa !845
  %55 = icmp eq ptr %53, null, !dbg !4073
  br i1 %55, label %128, label %56, !dbg !4074

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !4063, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 3, metadata !4063, metadata !DIExpression()), !dbg !4066
  %57 = icmp ult i32 %51, 41, !dbg !4069
  br i1 %57, label %61, label %58, !dbg !4069

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4069
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4069
  store ptr %60, ptr %7, align 8, !dbg !4069
  br label %66, !dbg !4069

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4069
  %63 = zext i32 %51 to i64, !dbg !4069
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4069
  %65 = add nuw nsw i32 %51, 8, !dbg !4069
  store i32 %65, ptr %4, align 8, !dbg !4069
  br label %66, !dbg !4069

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4069
  %69 = load ptr, ptr %68, align 8, !dbg !4069
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4075
  store ptr %69, ptr %70, align 8, !dbg !4072, !tbaa !845
  %71 = icmp eq ptr %69, null, !dbg !4073
  br i1 %71, label %128, label %72, !dbg !4074

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !4063, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 4, metadata !4063, metadata !DIExpression()), !dbg !4066
  %73 = icmp ult i32 %67, 41, !dbg !4069
  br i1 %73, label %77, label %74, !dbg !4069

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4069
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4069
  store ptr %76, ptr %7, align 8, !dbg !4069
  br label %82, !dbg !4069

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4069
  %79 = zext i32 %67 to i64, !dbg !4069
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4069
  %81 = add nuw nsw i32 %67, 8, !dbg !4069
  store i32 %81, ptr %4, align 8, !dbg !4069
  br label %82, !dbg !4069

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4069
  %85 = load ptr, ptr %84, align 8, !dbg !4069
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4075
  store ptr %85, ptr %86, align 16, !dbg !4072, !tbaa !845
  %87 = icmp eq ptr %85, null, !dbg !4073
  br i1 %87, label %128, label %88, !dbg !4074

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !4063, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 5, metadata !4063, metadata !DIExpression()), !dbg !4066
  %89 = icmp ult i32 %83, 41, !dbg !4069
  br i1 %89, label %93, label %90, !dbg !4069

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4069
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4069
  store ptr %92, ptr %7, align 8, !dbg !4069
  br label %98, !dbg !4069

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4069
  %95 = zext i32 %83 to i64, !dbg !4069
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4069
  %97 = add nuw nsw i32 %83, 8, !dbg !4069
  store i32 %97, ptr %4, align 8, !dbg !4069
  br label %98, !dbg !4069

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4069
  %100 = load ptr, ptr %99, align 8, !dbg !4069
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4075
  store ptr %100, ptr %101, align 8, !dbg !4072, !tbaa !845
  %102 = icmp eq ptr %100, null, !dbg !4073
  br i1 %102, label %128, label %103, !dbg !4074

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !4063, metadata !DIExpression()), !dbg !4066
  %104 = load ptr, ptr %7, align 8, !dbg !4069
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4069
  store ptr %105, ptr %7, align 8, !dbg !4069
  %106 = load ptr, ptr %104, align 8, !dbg !4069
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4075
  store ptr %106, ptr %107, align 16, !dbg !4072, !tbaa !845
  %108 = icmp eq ptr %106, null, !dbg !4073
  br i1 %108, label %128, label %109, !dbg !4074

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !4063, metadata !DIExpression()), !dbg !4066
  %110 = load ptr, ptr %7, align 8, !dbg !4069
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4069
  store ptr %111, ptr %7, align 8, !dbg !4069
  %112 = load ptr, ptr %110, align 8, !dbg !4069
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4075
  store ptr %112, ptr %113, align 8, !dbg !4072, !tbaa !845
  %114 = icmp eq ptr %112, null, !dbg !4073
  br i1 %114, label %128, label %115, !dbg !4074

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !4063, metadata !DIExpression()), !dbg !4066
  %116 = load ptr, ptr %7, align 8, !dbg !4069
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4069
  store ptr %117, ptr %7, align 8, !dbg !4069
  %118 = load ptr, ptr %116, align 8, !dbg !4069
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4075
  store ptr %118, ptr %119, align 16, !dbg !4072, !tbaa !845
  %120 = icmp eq ptr %118, null, !dbg !4073
  br i1 %120, label %128, label %121, !dbg !4074

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !4063, metadata !DIExpression()), !dbg !4066
  %122 = load ptr, ptr %7, align 8, !dbg !4069
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4069
  store ptr %123, ptr %7, align 8, !dbg !4069
  %124 = load ptr, ptr %122, align 8, !dbg !4069
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4075
  store ptr %124, ptr %125, align 8, !dbg !4072, !tbaa !845
  %126 = icmp eq ptr %124, null, !dbg !4073
  %127 = select i1 %126, i64 9, i64 10, !dbg !4074
  br label %128, !dbg !4074

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4076
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4077
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !4078
  ret void, !dbg !4078
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #12 !dbg !4079 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4083, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata ptr %1, metadata !4084, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata ptr %2, metadata !4085, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata ptr %3, metadata !4086, metadata !DIExpression()), !dbg !4092
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39, !dbg !4093
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4087, metadata !DIExpression()), !dbg !4094
  call void @llvm.va_start(ptr nonnull %5), !dbg !4095
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4096
  call void @llvm.va_end(ptr nonnull %5), !dbg !4097
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39, !dbg !4098
  ret void, !dbg !4098
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !4099 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4100, !tbaa !845
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.103, ptr noundef %1), !dbg !4100
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.17.120, i32 noundef 5) #39, !dbg !4101
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.121) #39, !dbg !4101
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.19.122, i32 noundef 5) #39, !dbg !4102
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.123, ptr noundef nonnull @.str.21.124) #39, !dbg !4102
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !4103
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #39, !dbg !4103
  ret void, !dbg !4104
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4105 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4110, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i64 %1, metadata !4111, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i64 %2, metadata !4112, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata ptr %0, metadata !4114, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i64 %1, metadata !4117, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i64 %2, metadata !4118, metadata !DIExpression()), !dbg !4119
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4121
  call void @llvm.dbg.value(metadata ptr %4, metadata !4122, metadata !DIExpression()), !dbg !4127
  %5 = icmp eq ptr %4, null, !dbg !4129
  br i1 %5, label %6, label %7, !dbg !4131

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4132
  unreachable, !dbg !4132

7:                                                ; preds = %3
  ret ptr %4, !dbg !4133
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4115 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4114, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata i64 %1, metadata !4117, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata i64 %2, metadata !4118, metadata !DIExpression()), !dbg !4134
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4135
  call void @llvm.dbg.value(metadata ptr %4, metadata !4122, metadata !DIExpression()), !dbg !4136
  %5 = icmp eq ptr %4, null, !dbg !4138
  br i1 %5, label %6, label %7, !dbg !4139

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4140
  unreachable, !dbg !4140

7:                                                ; preds = %3
  ret ptr %4, !dbg !4141
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4142 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4146, metadata !DIExpression()), !dbg !4147
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4148
  call void @llvm.dbg.value(metadata ptr %2, metadata !4122, metadata !DIExpression()), !dbg !4149
  %3 = icmp eq ptr %2, null, !dbg !4151
  br i1 %3, label %4, label %5, !dbg !4152

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4153
  unreachable, !dbg !4153

5:                                                ; preds = %1
  ret ptr %2, !dbg !4154
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4155 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4156 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4160, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata i64 %0, metadata !4162, metadata !DIExpression()), !dbg !4166
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4168
  call void @llvm.dbg.value(metadata ptr %2, metadata !4122, metadata !DIExpression()), !dbg !4169
  %3 = icmp eq ptr %2, null, !dbg !4171
  br i1 %3, label %4, label %5, !dbg !4172

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4173
  unreachable, !dbg !4173

5:                                                ; preds = %1
  ret ptr %2, !dbg !4174
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4175 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4179, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i64 %0, metadata !4146, metadata !DIExpression()), !dbg !4181
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4183
  call void @llvm.dbg.value(metadata ptr %2, metadata !4122, metadata !DIExpression()), !dbg !4184
  %3 = icmp eq ptr %2, null, !dbg !4186
  br i1 %3, label %4, label %5, !dbg !4187

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4188
  unreachable, !dbg !4188

5:                                                ; preds = %1
  ret ptr %2, !dbg !4189
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4190 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4194, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i64 %1, metadata !4195, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata ptr %0, metadata !4197, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata i64 %1, metadata !4201, metadata !DIExpression()), !dbg !4202
  %3 = icmp eq i64 %1, 0, !dbg !4204
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4204
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4205
  call void @llvm.dbg.value(metadata ptr %5, metadata !4122, metadata !DIExpression()), !dbg !4206
  %6 = icmp eq ptr %5, null, !dbg !4208
  br i1 %6, label %7, label %8, !dbg !4209

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4210
  unreachable, !dbg !4210

8:                                                ; preds = %2
  ret ptr %5, !dbg !4211
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4212 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4213 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4217, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i64 %1, metadata !4218, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata ptr %0, metadata !4220, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i64 %1, metadata !4223, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata ptr %0, metadata !4197, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i64 %1, metadata !4201, metadata !DIExpression()), !dbg !4226
  %3 = icmp eq i64 %1, 0, !dbg !4228
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4228
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4229
  call void @llvm.dbg.value(metadata ptr %5, metadata !4122, metadata !DIExpression()), !dbg !4230
  %6 = icmp eq ptr %5, null, !dbg !4232
  br i1 %6, label %7, label %8, !dbg !4233

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4234
  unreachable, !dbg !4234

8:                                                ; preds = %2
  ret ptr %5, !dbg !4235
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4236 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4240, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i64 %1, metadata !4241, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i64 %2, metadata !4242, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata ptr %0, metadata !4244, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata i64 %1, metadata !4247, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata i64 %2, metadata !4248, metadata !DIExpression()), !dbg !4249
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4251
  call void @llvm.dbg.value(metadata ptr %4, metadata !4122, metadata !DIExpression()), !dbg !4252
  %5 = icmp eq ptr %4, null, !dbg !4254
  br i1 %5, label %6, label %7, !dbg !4255

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4256
  unreachable, !dbg !4256

7:                                                ; preds = %3
  ret ptr %4, !dbg !4257
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4258 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4262, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata i64 %1, metadata !4263, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata ptr null, metadata !4114, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i64 %0, metadata !4117, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i64 %1, metadata !4118, metadata !DIExpression()), !dbg !4265
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4267
  call void @llvm.dbg.value(metadata ptr %3, metadata !4122, metadata !DIExpression()), !dbg !4268
  %4 = icmp eq ptr %3, null, !dbg !4270
  br i1 %4, label %5, label %6, !dbg !4271

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4272
  unreachable, !dbg !4272

6:                                                ; preds = %2
  ret ptr %3, !dbg !4273
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4274 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4278, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i64 %1, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr null, metadata !4240, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %0, metadata !4241, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %1, metadata !4242, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata ptr null, metadata !4244, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata i64 %0, metadata !4247, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata i64 %1, metadata !4248, metadata !DIExpression()), !dbg !4283
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4285
  call void @llvm.dbg.value(metadata ptr %3, metadata !4122, metadata !DIExpression()), !dbg !4286
  %4 = icmp eq ptr %3, null, !dbg !4288
  br i1 %4, label %5, label %6, !dbg !4289

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4290
  unreachable, !dbg !4290

6:                                                ; preds = %2
  ret ptr %3, !dbg !4291
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #12 !dbg !4292 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4296, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata ptr %1, metadata !4297, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata ptr %0, metadata !787, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata ptr %1, metadata !788, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i64 1, metadata !789, metadata !DIExpression()), !dbg !4299
  %3 = load i64, ptr %1, align 8, !dbg !4301, !tbaa !1412
  call void @llvm.dbg.value(metadata i64 %3, metadata !790, metadata !DIExpression()), !dbg !4299
  %4 = icmp eq ptr %0, null, !dbg !4302
  br i1 %4, label %5, label %8, !dbg !4304

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4305
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4308
  br label %15, !dbg !4308

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4309
  %10 = add nuw i64 %9, 1, !dbg !4309
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4309
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4309
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4309
  call void @llvm.dbg.value(metadata i64 %13, metadata !790, metadata !DIExpression()), !dbg !4299
  br i1 %12, label %14, label %15, !dbg !4312

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4313
  unreachable, !dbg !4313

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4299
  call void @llvm.dbg.value(metadata i64 %16, metadata !790, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata ptr %0, metadata !4114, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64 %16, metadata !4117, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64 1, metadata !4118, metadata !DIExpression()), !dbg !4314
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4316
  call void @llvm.dbg.value(metadata ptr %17, metadata !4122, metadata !DIExpression()), !dbg !4317
  %18 = icmp eq ptr %17, null, !dbg !4319
  br i1 %18, label %19, label %20, !dbg !4320

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4321
  unreachable, !dbg !4321

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !787, metadata !DIExpression()), !dbg !4299
  store i64 %16, ptr %1, align 8, !dbg !4322, !tbaa !1412
  ret ptr %17, !dbg !4323
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !782 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !787, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata ptr %1, metadata !788, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i64 %2, metadata !789, metadata !DIExpression()), !dbg !4324
  %4 = load i64, ptr %1, align 8, !dbg !4325, !tbaa !1412
  call void @llvm.dbg.value(metadata i64 %4, metadata !790, metadata !DIExpression()), !dbg !4324
  %5 = icmp eq ptr %0, null, !dbg !4326
  br i1 %5, label %6, label %13, !dbg !4327

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4328
  br i1 %7, label %8, label %20, !dbg !4329

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4330
  call void @llvm.dbg.value(metadata i64 %9, metadata !790, metadata !DIExpression()), !dbg !4324
  %10 = icmp ugt i64 %2, 128, !dbg !4332
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4333
  call void @llvm.dbg.value(metadata i64 %12, metadata !790, metadata !DIExpression()), !dbg !4324
  br label %20, !dbg !4334

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4335
  %15 = add nuw i64 %14, 1, !dbg !4335
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4335
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4335
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4335
  call void @llvm.dbg.value(metadata i64 %18, metadata !790, metadata !DIExpression()), !dbg !4324
  br i1 %17, label %19, label %20, !dbg !4336

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4337
  unreachable, !dbg !4337

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4324
  call void @llvm.dbg.value(metadata i64 %21, metadata !790, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata ptr %0, metadata !4114, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64 %21, metadata !4117, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64 %2, metadata !4118, metadata !DIExpression()), !dbg !4338
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4340
  call void @llvm.dbg.value(metadata ptr %22, metadata !4122, metadata !DIExpression()), !dbg !4341
  %23 = icmp eq ptr %22, null, !dbg !4343
  br i1 %23, label %24, label %25, !dbg !4344

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4345
  unreachable, !dbg !4345

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !787, metadata !DIExpression()), !dbg !4324
  store i64 %21, ptr %1, align 8, !dbg !4346, !tbaa !1412
  ret ptr %22, !dbg !4347
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !794 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !802, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata ptr %1, metadata !803, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %2, metadata !804, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %3, metadata !805, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %4, metadata !806, metadata !DIExpression()), !dbg !4348
  %6 = load i64, ptr %1, align 8, !dbg !4349, !tbaa !1412
  call void @llvm.dbg.value(metadata i64 %6, metadata !807, metadata !DIExpression()), !dbg !4348
  %7 = ashr i64 %6, 1, !dbg !4350
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4350
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4350
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4350
  call void @llvm.dbg.value(metadata i64 %10, metadata !808, metadata !DIExpression()), !dbg !4348
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4352
  call void @llvm.dbg.value(metadata i64 %11, metadata !808, metadata !DIExpression()), !dbg !4348
  %12 = icmp sgt i64 %3, -1, !dbg !4353
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4355
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4355
  call void @llvm.dbg.value(metadata i64 %15, metadata !808, metadata !DIExpression()), !dbg !4348
  %16 = icmp slt i64 %4, 0, !dbg !4356
  br i1 %16, label %17, label %30, !dbg !4356

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4356
  br i1 %18, label %19, label %24, !dbg !4356

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4356
  %21 = udiv i64 9223372036854775807, %20, !dbg !4356
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4356
  br i1 %23, label %46, label %43, !dbg !4356

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4356
  br i1 %25, label %43, label %26, !dbg !4356

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4356
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4356
  %29 = icmp ult i64 %28, %15, !dbg !4356
  br i1 %29, label %46, label %43, !dbg !4356

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4356
  br i1 %31, label %43, label %32, !dbg !4356

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4356
  br i1 %33, label %34, label %40, !dbg !4356

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4356
  br i1 %35, label %43, label %36, !dbg !4356

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4356
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4356
  %39 = icmp ult i64 %38, %4, !dbg !4356
  br i1 %39, label %46, label %43, !dbg !4356

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4356
  br i1 %42, label %46, label %43, !dbg !4356

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !809, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4348
  %44 = mul i64 %15, %4, !dbg !4356
  call void @llvm.dbg.value(metadata i64 %44, metadata !809, metadata !DIExpression()), !dbg !4348
  %45 = icmp slt i64 %44, 128, !dbg !4356
  br i1 %45, label %46, label %51, !dbg !4356

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !810, metadata !DIExpression()), !dbg !4348
  %48 = sdiv i64 %47, %4, !dbg !4357
  call void @llvm.dbg.value(metadata i64 %48, metadata !808, metadata !DIExpression()), !dbg !4348
  %49 = srem i64 %47, %4, !dbg !4360
  %50 = sub nsw i64 %47, %49, !dbg !4361
  call void @llvm.dbg.value(metadata i64 %50, metadata !809, metadata !DIExpression()), !dbg !4348
  br label %51, !dbg !4362

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4348
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4348
  call void @llvm.dbg.value(metadata i64 %53, metadata !809, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %52, metadata !808, metadata !DIExpression()), !dbg !4348
  %54 = icmp eq ptr %0, null, !dbg !4363
  br i1 %54, label %55, label %56, !dbg !4365

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4366, !tbaa !1412
  br label %56, !dbg !4367

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4368
  %58 = icmp slt i64 %57, %2, !dbg !4370
  br i1 %58, label %59, label %96, !dbg !4371

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4372
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4372
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4372
  call void @llvm.dbg.value(metadata i64 %62, metadata !808, metadata !DIExpression()), !dbg !4348
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4373
  br i1 %65, label %95, label %66, !dbg !4373

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4374

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4374
  br i1 %68, label %69, label %74, !dbg !4374

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4374
  %71 = udiv i64 9223372036854775807, %70, !dbg !4374
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4374
  br i1 %73, label %95, label %93, !dbg !4374

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4374
  br i1 %75, label %93, label %76, !dbg !4374

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4374
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4374
  %79 = icmp ult i64 %78, %62, !dbg !4374
  br i1 %79, label %95, label %93, !dbg !4374

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4374
  br i1 %81, label %93, label %82, !dbg !4374

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4374
  br i1 %83, label %84, label %90, !dbg !4374

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4374
  br i1 %85, label %93, label %86, !dbg !4374

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4374
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4374
  %89 = icmp ult i64 %88, %4, !dbg !4374
  br i1 %89, label %95, label %93, !dbg !4374

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4374
  br i1 %92, label %95, label %93, !dbg !4374

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !809, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4348
  %94 = mul i64 %62, %4, !dbg !4374
  call void @llvm.dbg.value(metadata i64 %94, metadata !809, metadata !DIExpression()), !dbg !4348
  br label %96, !dbg !4375

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #41, !dbg !4376
  unreachable, !dbg !4376

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4348
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4348
  call void @llvm.dbg.value(metadata i64 %98, metadata !809, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %97, metadata !808, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata ptr %0, metadata !4194, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i64 %98, metadata !4195, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata ptr %0, metadata !4197, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata i64 %98, metadata !4201, metadata !DIExpression()), !dbg !4379
  %99 = icmp eq i64 %98, 0, !dbg !4381
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4381
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #46, !dbg !4382
  call void @llvm.dbg.value(metadata ptr %101, metadata !4122, metadata !DIExpression()), !dbg !4383
  %102 = icmp eq ptr %101, null, !dbg !4385
  br i1 %102, label %103, label %104, !dbg !4386

103:                                              ; preds = %96
  tail call void @xalloc_die() #41, !dbg !4387
  unreachable, !dbg !4387

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !802, metadata !DIExpression()), !dbg !4348
  store i64 %97, ptr %1, align 8, !dbg !4388, !tbaa !1412
  ret ptr %101, !dbg !4389
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4390 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4392, metadata !DIExpression()), !dbg !4393
  call void @llvm.dbg.value(metadata i64 %0, metadata !4394, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i64 1, metadata !4397, metadata !DIExpression()), !dbg !4398
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4400
  call void @llvm.dbg.value(metadata ptr %2, metadata !4122, metadata !DIExpression()), !dbg !4401
  %3 = icmp eq ptr %2, null, !dbg !4403
  br i1 %3, label %4, label %5, !dbg !4404

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4405
  unreachable, !dbg !4405

5:                                                ; preds = %1
  ret ptr %2, !dbg !4406
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4407 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4395 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4394, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.value(metadata i64 %1, metadata !4397, metadata !DIExpression()), !dbg !4408
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4409
  call void @llvm.dbg.value(metadata ptr %3, metadata !4122, metadata !DIExpression()), !dbg !4410
  %4 = icmp eq ptr %3, null, !dbg !4412
  br i1 %4, label %5, label %6, !dbg !4413

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4414
  unreachable, !dbg !4414

6:                                                ; preds = %2
  ret ptr %3, !dbg !4415
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4416 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4418, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata i64 %0, metadata !4420, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i64 1, metadata !4423, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata i64 %0, metadata !4426, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64 1, metadata !4429, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64 %0, metadata !4426, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64 1, metadata !4429, metadata !DIExpression()), !dbg !4430
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4432
  call void @llvm.dbg.value(metadata ptr %2, metadata !4122, metadata !DIExpression()), !dbg !4433
  %3 = icmp eq ptr %2, null, !dbg !4435
  br i1 %3, label %4, label %5, !dbg !4436

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4437
  unreachable, !dbg !4437

5:                                                ; preds = %1
  ret ptr %2, !dbg !4438
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4421 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4420, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i64 %1, metadata !4423, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i64 %0, metadata !4426, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64 %1, metadata !4429, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64 %0, metadata !4426, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64 %1, metadata !4429, metadata !DIExpression()), !dbg !4440
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4442
  call void @llvm.dbg.value(metadata ptr %3, metadata !4122, metadata !DIExpression()), !dbg !4443
  %4 = icmp eq ptr %3, null, !dbg !4445
  br i1 %4, label %5, label %6, !dbg !4446

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4447
  unreachable, !dbg !4447

6:                                                ; preds = %2
  ret ptr %3, !dbg !4448
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4449 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4453, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata i64 %1, metadata !4454, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata i64 %1, metadata !4146, metadata !DIExpression()), !dbg !4456
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4458
  call void @llvm.dbg.value(metadata ptr %3, metadata !4122, metadata !DIExpression()), !dbg !4459
  %4 = icmp eq ptr %3, null, !dbg !4461
  br i1 %4, label %5, label %6, !dbg !4462

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4463
  unreachable, !dbg !4463

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4464, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata ptr %0, metadata !4467, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i64 %1, metadata !4468, metadata !DIExpression()), !dbg !4469
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4471
  ret ptr %3, !dbg !4472
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4473 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4477, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i64 %1, metadata !4478, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i64 %1, metadata !4160, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.value(metadata i64 %1, metadata !4162, metadata !DIExpression()), !dbg !4482
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4484
  call void @llvm.dbg.value(metadata ptr %3, metadata !4122, metadata !DIExpression()), !dbg !4485
  %4 = icmp eq ptr %3, null, !dbg !4487
  br i1 %4, label %5, label %6, !dbg !4488

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4489
  unreachable, !dbg !4489

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4464, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata ptr %0, metadata !4467, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i64 %1, metadata !4468, metadata !DIExpression()), !dbg !4490
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4492
  ret ptr %3, !dbg !4493
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !4494 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4498, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %1, metadata !4499, metadata !DIExpression()), !dbg !4501
  %3 = add nsw i64 %1, 1, !dbg !4502
  call void @llvm.dbg.value(metadata i64 %3, metadata !4160, metadata !DIExpression()), !dbg !4503
  call void @llvm.dbg.value(metadata i64 %3, metadata !4162, metadata !DIExpression()), !dbg !4505
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4507
  call void @llvm.dbg.value(metadata ptr %4, metadata !4122, metadata !DIExpression()), !dbg !4508
  %5 = icmp eq ptr %4, null, !dbg !4510
  br i1 %5, label %6, label %7, !dbg !4511

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4512
  unreachable, !dbg !4512

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4500, metadata !DIExpression()), !dbg !4501
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4513
  store i8 0, ptr %8, align 1, !dbg !4514, !tbaa !918
  call void @llvm.dbg.value(metadata ptr %4, metadata !4464, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.value(metadata ptr %0, metadata !4467, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.value(metadata i64 %1, metadata !4468, metadata !DIExpression()), !dbg !4515
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4517
  ret ptr %4, !dbg !4518
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !4519 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4521, metadata !DIExpression()), !dbg !4522
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4523
  %3 = add i64 %2, 1, !dbg !4524
  call void @llvm.dbg.value(metadata ptr %0, metadata !4453, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i64 %3, metadata !4454, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i64 %3, metadata !4146, metadata !DIExpression()), !dbg !4527
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4529
  call void @llvm.dbg.value(metadata ptr %4, metadata !4122, metadata !DIExpression()), !dbg !4530
  %5 = icmp eq ptr %4, null, !dbg !4532
  br i1 %5, label %6, label %7, !dbg !4533

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4534
  unreachable, !dbg !4534

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4464, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata ptr %0, metadata !4467, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i64 %3, metadata !4468, metadata !DIExpression()), !dbg !4535
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4537
  ret ptr %4, !dbg !4538
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4539 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4544, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %1, metadata !4541, metadata !DIExpression()), !dbg !4545
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.145, ptr noundef nonnull @.str.2.146, i32 noundef 5) #39, !dbg !4544
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.147, ptr noundef %2) #39, !dbg !4544
  %3 = icmp eq i32 %1, 0, !dbg !4544
  tail call void @llvm.assume(i1 %3), !dbg !4544
  tail call void @abort() #41, !dbg !4546
  unreachable, !dbg !4546
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #12 !dbg !4547 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4585, metadata !DIExpression()), !dbg !4590
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !4591
  call void @llvm.dbg.value(metadata i1 poison, metadata !4586, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4590
  call void @llvm.dbg.value(metadata ptr %0, metadata !4592, metadata !DIExpression()), !dbg !4595
  %3 = load i32, ptr %0, align 8, !dbg !4597, !tbaa !1164
  %4 = and i32 %3, 32, !dbg !4598
  %5 = icmp eq i32 %4, 0, !dbg !4598
  call void @llvm.dbg.value(metadata i1 %5, metadata !4588, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4590
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !4599
  %7 = icmp eq i32 %6, 0, !dbg !4600
  call void @llvm.dbg.value(metadata i1 %7, metadata !4589, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4590
  br i1 %5, label %8, label %18, !dbg !4601

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4603
  call void @llvm.dbg.value(metadata i1 %9, metadata !4586, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4590
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4604
  %11 = xor i1 %7, true, !dbg !4604
  %12 = sext i1 %11 to i32, !dbg !4604
  br i1 %10, label %21, label %13, !dbg !4604

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !4605
  %15 = load i32, ptr %14, align 4, !dbg !4605, !tbaa !909
  %16 = icmp ne i32 %15, 9, !dbg !4606
  %17 = sext i1 %16 to i32, !dbg !4607
  br label %21, !dbg !4607

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4608

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !4610
  store i32 0, ptr %20, align 4, !dbg !4612, !tbaa !909
  br label %21, !dbg !4610

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4590
  ret i32 %22, !dbg !4613
}

; Function Attrs: nounwind
declare !dbg !4614 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #12 !dbg !4617 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4622, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata ptr %1, metadata !4623, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata i64 %2, metadata !4624, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata ptr %3, metadata !4625, metadata !DIExpression()), !dbg !4627
  %5 = icmp eq ptr %1, null, !dbg !4628
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4630
  %7 = select i1 %5, ptr @.str.152, ptr %1, !dbg !4630
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4630
  call void @llvm.dbg.value(metadata i64 %8, metadata !4624, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata ptr %7, metadata !4623, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata ptr %6, metadata !4622, metadata !DIExpression()), !dbg !4627
  %9 = icmp eq ptr %3, null, !dbg !4631
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4633
  call void @llvm.dbg.value(metadata ptr %10, metadata !4625, metadata !DIExpression()), !dbg !4627
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !4634
  call void @llvm.dbg.value(metadata i64 %11, metadata !4626, metadata !DIExpression()), !dbg !4627
  %12 = icmp ult i64 %11, -3, !dbg !4635
  br i1 %12, label %13, label %17, !dbg !4637

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !4638
  %15 = icmp eq i32 %14, 0, !dbg !4638
  br i1 %15, label %16, label %29, !dbg !4639

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4640, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata ptr %10, metadata !4647, metadata !DIExpression()), !dbg !4652
  call void @llvm.dbg.value(metadata i32 0, metadata !4650, metadata !DIExpression()), !dbg !4652
  call void @llvm.dbg.value(metadata i64 8, metadata !4651, metadata !DIExpression()), !dbg !4652
  store i64 0, ptr %10, align 1, !dbg !4654
  br label %29, !dbg !4655

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4656
  br i1 %18, label %19, label %20, !dbg !4658

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4659
  unreachable, !dbg !4659

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4660

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #39, !dbg !4662
  br i1 %23, label %29, label %24, !dbg !4663

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4664
  br i1 %25, label %29, label %26, !dbg !4667

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4668, !tbaa !918
  %28 = zext i8 %27 to i32, !dbg !4669
  store i32 %28, ptr %6, align 4, !dbg !4670, !tbaa !909
  br label %29, !dbg !4671

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4627
  ret i64 %30, !dbg !4672
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4673 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4679 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4681, metadata !DIExpression()), !dbg !4685
  call void @llvm.dbg.value(metadata i64 %1, metadata !4682, metadata !DIExpression()), !dbg !4685
  call void @llvm.dbg.value(metadata i64 %2, metadata !4683, metadata !DIExpression()), !dbg !4685
  %4 = icmp eq i64 %2, 0, !dbg !4686
  br i1 %4, label %8, label %5, !dbg !4686

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4686
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4686
  br i1 %7, label %13, label %8, !dbg !4686

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4684, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4685
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4684, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4685
  %9 = mul i64 %2, %1, !dbg !4686
  call void @llvm.dbg.value(metadata i64 %9, metadata !4684, metadata !DIExpression()), !dbg !4685
  call void @llvm.dbg.value(metadata ptr %0, metadata !4688, metadata !DIExpression()), !dbg !4692
  call void @llvm.dbg.value(metadata i64 %9, metadata !4691, metadata !DIExpression()), !dbg !4692
  %10 = icmp eq i64 %9, 0, !dbg !4694
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4694
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #46, !dbg !4695
  br label %15, !dbg !4696

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4684, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4685
  %14 = tail call ptr @__errno_location() #42, !dbg !4697
  store i32 12, ptr %14, align 4, !dbg !4699, !tbaa !909
  br label %15, !dbg !4700

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4685
  ret ptr %16, !dbg !4701
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4702 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4704, metadata !DIExpression()), !dbg !4709
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4710
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4705, metadata !DIExpression()), !dbg !4711
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4712
  %4 = icmp eq i32 %3, 0, !dbg !4712
  br i1 %4, label %5, label %12, !dbg !4714

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4715, metadata !DIExpression()), !dbg !4719
  %6 = load i16, ptr %2, align 16, !dbg !4722
  %7 = icmp eq i16 %6, 67, !dbg !4722
  br i1 %7, label %11, label %8, !dbg !4723

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4715, metadata !DIExpression()), !dbg !4724
  call void @llvm.dbg.value(metadata ptr @.str.1.157, metadata !4718, metadata !DIExpression()), !dbg !4724
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.157, i64 6), !dbg !4726
  %10 = icmp eq i32 %9, 0, !dbg !4727
  br i1 %10, label %11, label %12, !dbg !4728

11:                                               ; preds = %8, %5
  br label %12, !dbg !4729

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4709
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4730
  ret i1 %13, !dbg !4730
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4731 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4735, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata ptr %1, metadata !4736, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i64 %2, metadata !4737, metadata !DIExpression()), !dbg !4738
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !4739
  ret i32 %4, !dbg !4740
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4741 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4745, metadata !DIExpression()), !dbg !4746
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !4747
  ret ptr %2, !dbg !4748
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4749 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4751, metadata !DIExpression()), !dbg !4753
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4754
  call void @llvm.dbg.value(metadata ptr %2, metadata !4752, metadata !DIExpression()), !dbg !4753
  ret ptr %2, !dbg !4755
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4756 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4758, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata ptr %1, metadata !4759, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata i64 %2, metadata !4760, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata i32 %0, metadata !4751, metadata !DIExpression()), !dbg !4766
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4768
  call void @llvm.dbg.value(metadata ptr %4, metadata !4752, metadata !DIExpression()), !dbg !4766
  call void @llvm.dbg.value(metadata ptr %4, metadata !4761, metadata !DIExpression()), !dbg !4765
  %5 = icmp eq ptr %4, null, !dbg !4769
  br i1 %5, label %6, label %9, !dbg !4770

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4771
  br i1 %7, label %19, label %8, !dbg !4774

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4775, !tbaa !918
  br label %19, !dbg !4776

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !4777
  call void @llvm.dbg.value(metadata i64 %10, metadata !4762, metadata !DIExpression()), !dbg !4778
  %11 = icmp ult i64 %10, %2, !dbg !4779
  br i1 %11, label %12, label %14, !dbg !4781

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4782
  call void @llvm.dbg.value(metadata ptr %1, metadata !4784, metadata !DIExpression()), !dbg !4789
  call void @llvm.dbg.value(metadata ptr %4, metadata !4787, metadata !DIExpression()), !dbg !4789
  call void @llvm.dbg.value(metadata i64 %13, metadata !4788, metadata !DIExpression()), !dbg !4789
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !4791
  br label %19, !dbg !4792

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4793
  br i1 %15, label %19, label %16, !dbg !4796

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4797
  call void @llvm.dbg.value(metadata ptr %1, metadata !4784, metadata !DIExpression()), !dbg !4799
  call void @llvm.dbg.value(metadata ptr %4, metadata !4787, metadata !DIExpression()), !dbg !4799
  call void @llvm.dbg.value(metadata i64 %17, metadata !4788, metadata !DIExpression()), !dbg !4799
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !4801
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4802
  store i8 0, ptr %18, align 1, !dbg !4803, !tbaa !918
  br label %19, !dbg !4804

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4805
  ret i32 %20, !dbg !4806
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
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #26 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0,1) }
attributes #48 = { nounwind allocsize(1,2) }

!llvm.dbg.cu = !{!55, !411, !415, !430, !718, !750, !753, !755, !758, !760, !762, !485, !499, !550, !764, !772, !710, !778, !812, !814, !734, !816, !819, !823, !825}
!llvm.ident = !{!827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827, !827}
!llvm.module.flags = !{!828, !829, !830, !831, !832, !833}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/tsort.c", directory: "/src", checksumkind: CSK_MD5, checksum: "dfc4944a651c3ad1de6dfe7266a5508c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!55 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !101, globals: !110, splitDebugInlining: false, nameTableKind: None)
!56 = !{!57, !62, !78, !92}
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !58, line: 337, baseType: !52, size: 32, elements: !59)
!58 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!59 = !{!60, !61}
!60 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!61 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!101 = !{!54, !102, !52, !103, !104, !107, !109}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!103 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 46, baseType: !106)
!105 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!169 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !172)
!171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!194 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!399 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!411 = distinct !DICompileUnit(language: DW_LANG_C11, file: !408, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !412, splitDebugInlining: false, nameTableKind: None)
!412 = !{!406, !409}
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(name: "file_name", scope: !415, file: !416, line: 45, type: !107, isLocal: true, isDefinition: true)
!415 = distinct !DICompileUnit(language: DW_LANG_C11, file: !416, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !417, splitDebugInlining: false, nameTableKind: None)
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
!429 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !430, file: !431, line: 66, type: !477, isLocal: false, isDefinition: true)
!430 = distinct !DICompileUnit(language: DW_LANG_C11, file: !431, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !432, globals: !433, splitDebugInlining: false, nameTableKind: None)
!431 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!432 = !{!102, !109}
!433 = !{!434, !436, !456, !458, !460, !462, !428, !464, !466, !468, !470, !475}
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !431, line: 272, type: !113, isLocal: true, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(name: "old_file_name", scope: !438, file: !431, line: 304, type: !107, isLocal: true, isDefinition: true)
!438 = distinct !DISubprogram(name: "verror_at_line", scope: !431, file: !431, line: 298, type: !439, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !449)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !52, !52, !107, !64, !107, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !443)
!443 = !{!444, !446, !447, !448}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !442, file: !445, baseType: !64, size: 32)
!445 = !DIFile(filename: "lib/error.c", directory: "/src")
!446 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !442, file: !445, baseType: !64, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !442, file: !445, baseType: !102, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !442, file: !445, baseType: !102, size: 64, offset: 128)
!449 = !{!450, !451, !452, !453, !454, !455}
!450 = !DILocalVariable(name: "status", arg: 1, scope: !438, file: !431, line: 298, type: !52)
!451 = !DILocalVariable(name: "errnum", arg: 2, scope: !438, file: !431, line: 298, type: !52)
!452 = !DILocalVariable(name: "file_name", arg: 3, scope: !438, file: !431, line: 298, type: !107)
!453 = !DILocalVariable(name: "line_number", arg: 4, scope: !438, file: !431, line: 298, type: !64)
!454 = !DILocalVariable(name: "message", arg: 5, scope: !438, file: !431, line: 298, type: !107)
!455 = !DILocalVariable(name: "args", arg: 6, scope: !438, file: !431, line: 298, type: !441)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(name: "old_line_number", scope: !438, file: !431, line: 305, type: !64, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !431, line: 338, type: !231, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !431, line: 346, type: !118, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !431, line: 346, type: !14, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "error_message_count", scope: !430, file: !431, line: 69, type: !64, isLocal: false, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !430, file: !431, line: 295, type: !52, isLocal: false, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !431, line: 208, type: !255, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !431, line: 208, type: !472, isLocal: true, isDefinition: true)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 21)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !431, line: 214, type: !113, isLocal: true, isDefinition: true)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{null}
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !482, line: 40, type: !39, isLocal: true, isDefinition: true)
!482 = !DIFile(filename: "lib/freopen-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "380f3eea209580e07073525fbfd0dac5")
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "program_name", scope: !485, file: !486, line: 31, type: !107, isLocal: false, isDefinition: true)
!485 = distinct !DICompileUnit(language: DW_LANG_C11, file: !486, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !487, globals: !488, splitDebugInlining: false, nameTableKind: None)
!486 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!487 = !{!54}
!488 = !{!483, !489, !491}
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !486, line: 46, type: !118, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !486, line: 49, type: !231, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "utf07FF", scope: !495, file: !496, line: 46, type: !523, isLocal: true, isDefinition: true)
!495 = distinct !DISubprogram(name: "proper_name_lite", scope: !496, file: !496, line: 38, type: !497, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !499, retainedNodes: !501)
!496 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!497 = !DISubroutineType(types: !498)
!498 = !{!107, !107, !107}
!499 = distinct !DICompileUnit(language: DW_LANG_C11, file: !496, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !500, splitDebugInlining: false, nameTableKind: None)
!500 = !{!493}
!501 = !{!502, !503, !504, !505, !510}
!502 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !495, file: !496, line: 38, type: !107)
!503 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !495, file: !496, line: 38, type: !107)
!504 = !DILocalVariable(name: "translation", scope: !495, file: !496, line: 40, type: !107)
!505 = !DILocalVariable(name: "w", scope: !495, file: !496, line: 47, type: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !507, line: 37, baseType: !508)
!507 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !194, line: 57, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !194, line: 42, baseType: !64)
!510 = !DILocalVariable(name: "mbs", scope: !495, file: !496, line: 48, type: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !512, line: 6, baseType: !513)
!512 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !514, line: 21, baseType: !515)
!514 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !514, line: 13, size: 64, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !515, file: !514, line: 15, baseType: !52, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !515, file: !514, line: 20, baseType: !519, size: 32, offset: 32)
!519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !515, file: !514, line: 16, size: 32, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !519, file: !514, line: 18, baseType: !64, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !519, file: !514, line: 19, baseType: !231, size: 32)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 16, elements: !15)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !526, line: 78, type: !118, isLocal: true, isDefinition: true)
!526 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !526, line: 79, type: !19, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !526, line: 80, type: !531, isLocal: true, isDefinition: true)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 13)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !526, line: 81, type: !531, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !526, line: 82, type: !216, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !526, line: 83, type: !14, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !526, line: 84, type: !118, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !526, line: 85, type: !255, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !526, line: 86, type: !255, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !526, line: 87, type: !118, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !550, file: !526, line: 76, type: !622, isLocal: false, isDefinition: true)
!550 = distinct !DICompileUnit(language: DW_LANG_C11, file: !526, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !551, retainedTypes: !557, globals: !558, splitDebugInlining: false, nameTableKind: None)
!551 = !{!78, !552, !62}
!552 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !79, line: 254, baseType: !64, size: 32, elements: !553)
!553 = !{!554, !555, !556}
!554 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!555 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!556 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!557 = !{!52, !103, !104}
!558 = !{!524, !527, !529, !534, !536, !538, !540, !542, !544, !546, !548, !559, !563, !573, !575, !580, !582, !584, !586, !588, !611, !618, !620}
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !550, file: !526, line: 92, type: !561, isLocal: false, isDefinition: true)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 320, elements: !40)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !550, file: !526, line: 1040, type: !565, isLocal: false, isDefinition: true)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !526, line: 56, size: 448, elements: !566)
!566 = !{!567, !568, !569, !571, !572}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !565, file: !526, line: 59, baseType: !78, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !565, file: !526, line: 62, baseType: !52, size: 32, offset: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !565, file: !526, line: 66, baseType: !570, size: 256, offset: 64)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 256, elements: !119)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !565, file: !526, line: 69, baseType: !107, size: 64, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !565, file: !526, line: 72, baseType: !107, size: 64, offset: 384)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !550, file: !526, line: 107, type: !565, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(name: "slot0", scope: !550, file: !526, line: 831, type: !577, isLocal: true, isDefinition: true)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !578)
!578 = !{!579}
!579 = !DISubrange(count: 256)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !526, line: 321, type: !14, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !526, line: 357, type: !14, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !526, line: 358, type: !14, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !526, line: 199, type: !255, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(name: "quote", scope: !590, file: !526, line: 228, type: !609, isLocal: true, isDefinition: true)
!590 = distinct !DISubprogram(name: "gettext_quote", scope: !526, file: !526, line: 197, type: !591, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !593)
!591 = !DISubroutineType(types: !592)
!592 = !{!107, !107, !78}
!593 = !{!594, !595, !596, !597, !598}
!594 = !DILocalVariable(name: "msgid", arg: 1, scope: !590, file: !526, line: 197, type: !107)
!595 = !DILocalVariable(name: "s", arg: 2, scope: !590, file: !526, line: 197, type: !78)
!596 = !DILocalVariable(name: "translation", scope: !590, file: !526, line: 199, type: !107)
!597 = !DILocalVariable(name: "w", scope: !590, file: !526, line: 229, type: !506)
!598 = !DILocalVariable(name: "mbs", scope: !590, file: !526, line: 230, type: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !512, line: 6, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !514, line: 21, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !514, line: 13, size: 64, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !601, file: !514, line: 15, baseType: !52, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !601, file: !514, line: 20, baseType: !605, size: 32, offset: 32)
!605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !601, file: !514, line: 16, size: 32, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !605, file: !514, line: 18, baseType: !64, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !605, file: !514, line: 19, baseType: !231, size: 32)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !610)
!610 = !{!16, !233}
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(name: "slotvec", scope: !550, file: !526, line: 834, type: !613, isLocal: true, isDefinition: true)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !526, line: 823, size: 128, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !614, file: !526, line: 825, baseType: !104, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !614, file: !526, line: 826, baseType: !54, size: 64, offset: 64)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(name: "nslots", scope: !550, file: !526, line: 832, type: !52, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(name: "slotvec0", scope: !550, file: !526, line: 833, type: !614, isLocal: true, isDefinition: true)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 704, elements: !624)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!624 = !{!625}
!625 = !DISubrange(count: 11)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !628, line: 67, type: !328, isLocal: true, isDefinition: true)
!628 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !628, line: 69, type: !255, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !628, line: 83, type: !255, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !628, line: 83, type: !231, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !628, line: 85, type: !14, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !628, line: 88, type: !639, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 171)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !628, line: 88, type: !644, isLocal: true, isDefinition: true)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 34)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !628, line: 105, type: !299, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !628, line: 109, type: !651, isLocal: true, isDefinition: true)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 23)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !628, line: 113, type: !656, isLocal: true, isDefinition: true)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 28)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !628, line: 120, type: !661, isLocal: true, isDefinition: true)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !662)
!662 = !{!663}
!663 = !DISubrange(count: 32)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !628, line: 127, type: !666, isLocal: true, isDefinition: true)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !667)
!667 = !{!668}
!668 = !DISubrange(count: 36)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !628, line: 134, type: !276, isLocal: true, isDefinition: true)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !628, line: 142, type: !673, isLocal: true, isDefinition: true)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 44)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !628, line: 150, type: !678, isLocal: true, isDefinition: true)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !679)
!679 = !{!680}
!680 = !DISubrange(count: 48)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !628, line: 159, type: !683, isLocal: true, isDefinition: true)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 52)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !628, line: 170, type: !688, isLocal: true, isDefinition: true)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 60)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !628, line: 248, type: !216, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !628, line: 248, type: !304, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !628, line: 254, type: !216, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !628, line: 254, type: !125, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !628, line: 254, type: !276, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !628, line: 259, type: !3, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !628, line: 259, type: !705, isLocal: true, isDefinition: true)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !706)
!706 = !{!707}
!707 = !DISubrange(count: 29)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !710, file: !711, line: 26, type: !713, isLocal: false, isDefinition: true)
!710 = distinct !DICompileUnit(language: DW_LANG_C11, file: !711, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !712, splitDebugInlining: false, nameTableKind: None)
!711 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!712 = !{!708}
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 376, elements: !714)
!714 = !{!715}
!715 = !DISubrange(count: 47)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(name: "exit_failure", scope: !718, file: !719, line: 24, type: !721, isLocal: false, isDefinition: true)
!718 = distinct !DICompileUnit(language: DW_LANG_C11, file: !719, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !720, splitDebugInlining: false, nameTableKind: None)
!719 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!720 = !{!716}
!721 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !52)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !724, line: 34, type: !244, isLocal: true, isDefinition: true)
!724 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !724, line: 34, type: !255, isLocal: true, isDefinition: true)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !724, line: 34, type: !132, isLocal: true, isDefinition: true)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !731, line: 108, type: !34, isLocal: true, isDefinition: true)
!731 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(name: "internal_state", scope: !734, file: !731, line: 97, type: !737, isLocal: true, isDefinition: true)
!734 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !735, globals: !736, splitDebugInlining: false, nameTableKind: None)
!735 = !{!102, !104, !109}
!736 = !{!729, !732}
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !512, line: 6, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !514, line: 21, baseType: !739)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !514, line: 13, size: 64, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !739, file: !514, line: 15, baseType: !52, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !739, file: !514, line: 20, baseType: !743, size: 32, offset: 32)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !739, file: !514, line: 16, size: 32, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !743, file: !514, line: 18, baseType: !64, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !743, file: !514, line: 19, baseType: !231, size: 32)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !749, line: 35, type: !19, isLocal: true, isDefinition: true)
!749 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!750 = distinct !DICompileUnit(language: DW_LANG_C11, file: !751, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !752, splitDebugInlining: false, nameTableKind: None)
!751 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!752 = !{!92}
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!754 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!755 = distinct !DICompileUnit(language: DW_LANG_C11, file: !756, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !757, splitDebugInlining: false, nameTableKind: None)
!756 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!757 = !{!102}
!758 = distinct !DICompileUnit(language: DW_LANG_C11, file: !482, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !759, splitDebugInlining: false, nameTableKind: None)
!759 = !{!480}
!760 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !757, splitDebugInlining: false, nameTableKind: None)
!761 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!762 = distinct !DICompileUnit(language: DW_LANG_C11, file: !763, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!763 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!764 = distinct !DICompileUnit(language: DW_LANG_C11, file: !765, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !766, retainedTypes: !770, splitDebugInlining: false, nameTableKind: None)
!765 = !DIFile(filename: "lib/readtokens.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bd27ae043f20cb5dd96b528a940c0bf9")
!766 = !{!767}
!767 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !765, line: 50, baseType: !64, size: 32, elements: !768)
!768 = !{!769}
!769 = !DIEnumerator(name: "bits_per_word", value: 64)
!770 = !{!104, !102, !771}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!772 = distinct !DICompileUnit(language: DW_LANG_C11, file: !628, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !773, retainedTypes: !757, globals: !777, splitDebugInlining: false, nameTableKind: None)
!773 = !{!774}
!774 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !628, line: 40, baseType: !64, size: 32, elements: !775)
!775 = !{!776}
!776 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!777 = !{!626, !629, !631, !633, !635, !637, !642, !647, !649, !654, !659, !664, !669, !671, !676, !681, !686, !691, !693, !695, !697, !699, !701, !703}
!778 = distinct !DICompileUnit(language: DW_LANG_C11, file: !779, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !780, retainedTypes: !811, splitDebugInlining: false, nameTableKind: None)
!779 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!780 = !{!781, !793}
!781 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !782, file: !779, line: 188, baseType: !64, size: 32, elements: !791)
!782 = distinct !DISubprogram(name: "x2nrealloc", scope: !779, file: !779, line: 176, type: !783, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !786)
!783 = !DISubroutineType(types: !784)
!784 = !{!102, !102, !785, !104}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!786 = !{!787, !788, !789, !790}
!787 = !DILocalVariable(name: "p", arg: 1, scope: !782, file: !779, line: 176, type: !102)
!788 = !DILocalVariable(name: "pn", arg: 2, scope: !782, file: !779, line: 176, type: !785)
!789 = !DILocalVariable(name: "s", arg: 3, scope: !782, file: !779, line: 176, type: !104)
!790 = !DILocalVariable(name: "n", scope: !782, file: !779, line: 178, type: !104)
!791 = !{!792}
!792 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!793 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !794, file: !779, line: 228, baseType: !64, size: 32, elements: !791)
!794 = distinct !DISubprogram(name: "xpalloc", scope: !779, file: !779, line: 223, type: !795, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !801)
!795 = !DISubroutineType(types: !796)
!796 = !{!102, !102, !797, !798, !800, !798}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !799, line: 130, baseType: !800)
!799 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !105, line: 35, baseType: !195)
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809, !810}
!802 = !DILocalVariable(name: "pa", arg: 1, scope: !794, file: !779, line: 223, type: !102)
!803 = !DILocalVariable(name: "pn", arg: 2, scope: !794, file: !779, line: 223, type: !797)
!804 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !794, file: !779, line: 223, type: !798)
!805 = !DILocalVariable(name: "n_max", arg: 4, scope: !794, file: !779, line: 223, type: !800)
!806 = !DILocalVariable(name: "s", arg: 5, scope: !794, file: !779, line: 223, type: !798)
!807 = !DILocalVariable(name: "n0", scope: !794, file: !779, line: 230, type: !798)
!808 = !DILocalVariable(name: "n", scope: !794, file: !779, line: 237, type: !798)
!809 = !DILocalVariable(name: "nbytes", scope: !794, file: !779, line: 248, type: !798)
!810 = !DILocalVariable(name: "adjusted_nbytes", scope: !794, file: !779, line: 252, type: !798)
!811 = !{!54, !102, !154, !195, !106}
!812 = distinct !DICompileUnit(language: DW_LANG_C11, file: !724, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !813, splitDebugInlining: false, nameTableKind: None)
!813 = !{!722, !725, !727}
!814 = distinct !DICompileUnit(language: DW_LANG_C11, file: !815, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!815 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!816 = distinct !DICompileUnit(language: DW_LANG_C11, file: !817, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !818, splitDebugInlining: false, nameTableKind: None)
!817 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!818 = !{!154, !106, !102}
!819 = distinct !DICompileUnit(language: DW_LANG_C11, file: !749, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !820, splitDebugInlining: false, nameTableKind: None)
!820 = !{!821, !747}
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(scope: null, file: !749, line: 35, type: !14, isLocal: true, isDefinition: true)
!823 = distinct !DICompileUnit(language: DW_LANG_C11, file: !824, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!824 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!825 = distinct !DICompileUnit(language: DW_LANG_C11, file: !826, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !757, splitDebugInlining: false, nameTableKind: None)
!826 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!827 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!828 = !{i32 7, !"Dwarf Version", i32 5}
!829 = !{i32 2, !"Debug Info Version", i32 3}
!830 = !{i32 1, !"wchar_size", i32 4}
!831 = !{i32 8, !"PIC Level", i32 2}
!832 = !{i32 7, !"PIE Level", i32 2}
!833 = !{i32 7, !"uwtable", i32 2}
!834 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 75, type: !835, scopeLine: 76, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !837)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !52}
!837 = !{!838}
!838 = !DILocalVariable(name: "status", arg: 1, scope: !834, file: !2, line: 75, type: !52)
!839 = !DILocation(line: 0, scope: !834)
!840 = !DILocation(line: 77, column: 14, scope: !841)
!841 = distinct !DILexicalBlock(scope: !834, file: !2, line: 77, column: 7)
!842 = !DILocation(line: 77, column: 7, scope: !834)
!843 = !DILocation(line: 78, column: 5, scope: !844)
!844 = distinct !DILexicalBlock(scope: !841, file: !2, line: 78, column: 5)
!845 = !{!846, !846, i64 0}
!846 = !{!"any pointer", !847, i64 0}
!847 = !{!"omnipotent char", !848, i64 0}
!848 = !{!"Simple C/C++ TBAA"}
!849 = !DILocation(line: 81, column: 7, scope: !850)
!850 = distinct !DILexicalBlock(scope: !841, file: !2, line: 80, column: 5)
!851 = !DILocation(line: 729, column: 3, scope: !852, inlinedAt: !854)
!852 = distinct !DISubprogram(name: "emit_stdin_note", scope: !58, file: !58, line: 727, type: !478, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !853)
!853 = !{}
!854 = distinct !DILocation(line: 86, column: 7, scope: !850)
!855 = !DILocation(line: 88, column: 7, scope: !850)
!856 = !DILocation(line: 91, column: 7, scope: !850)
!857 = !DILocation(line: 92, column: 7, scope: !850)
!858 = !DILocalVariable(name: "program", arg: 1, scope: !859, file: !58, line: 836, type: !107)
!859 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !58, file: !58, line: 836, type: !860, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !862)
!860 = !DISubroutineType(types: !861)
!861 = !{null, !107}
!862 = !{!858, !863, !870, !871, !873, !874}
!863 = !DILocalVariable(name: "infomap", scope: !859, file: !58, line: 838, type: !864)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !865, size: 896, elements: !256)
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !859, file: !58, line: 838, size: 128, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !866, file: !58, line: 838, baseType: !107, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !866, file: !58, line: 838, baseType: !107, size: 64, offset: 64)
!870 = !DILocalVariable(name: "node", scope: !859, file: !58, line: 848, type: !107)
!871 = !DILocalVariable(name: "map_prog", scope: !859, file: !58, line: 849, type: !872)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!873 = !DILocalVariable(name: "lc_messages", scope: !859, file: !58, line: 861, type: !107)
!874 = !DILocalVariable(name: "url_program", scope: !859, file: !58, line: 874, type: !107)
!875 = !DILocation(line: 0, scope: !859, inlinedAt: !876)
!876 = distinct !DILocation(line: 93, column: 7, scope: !850)
!877 = !DILocation(line: 857, column: 3, scope: !859, inlinedAt: !876)
!878 = !DILocation(line: 861, column: 29, scope: !859, inlinedAt: !876)
!879 = !DILocation(line: 862, column: 7, scope: !880, inlinedAt: !876)
!880 = distinct !DILexicalBlock(scope: !859, file: !58, line: 862, column: 7)
!881 = !DILocation(line: 862, column: 19, scope: !880, inlinedAt: !876)
!882 = !DILocation(line: 862, column: 22, scope: !880, inlinedAt: !876)
!883 = !DILocation(line: 862, column: 7, scope: !859, inlinedAt: !876)
!884 = !DILocation(line: 868, column: 7, scope: !885, inlinedAt: !876)
!885 = distinct !DILexicalBlock(scope: !880, file: !58, line: 863, column: 5)
!886 = !DILocation(line: 870, column: 5, scope: !885, inlinedAt: !876)
!887 = !DILocation(line: 875, column: 3, scope: !859, inlinedAt: !876)
!888 = !DILocation(line: 877, column: 3, scope: !859, inlinedAt: !876)
!889 = !DILocation(line: 96, column: 3, scope: !834)
!890 = !DISubprogram(name: "dcgettext", scope: !891, file: !891, line: 51, type: !892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!891 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!892 = !DISubroutineType(types: !893)
!893 = !{!54, !107, !107, !52}
!894 = !DISubprogram(name: "__fprintf_chk", scope: !895, file: !895, line: 93, type: !896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!895 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!896 = !DISubroutineType(types: !897)
!897 = !{!52, !898, !52, !899, null}
!898 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !167)
!899 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!900 = !DISubprogram(name: "__printf_chk", scope: !895, file: !895, line: 95, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!901 = !DISubroutineType(types: !902)
!902 = !{!52, !52, !899, null}
!903 = !DISubprogram(name: "fputs_unlocked", scope: !904, file: !904, line: 691, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!904 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!905 = !DISubroutineType(types: !906)
!906 = !{!52, !899, !898}
!907 = !DILocation(line: 0, scope: !144)
!908 = !DILocation(line: 581, column: 7, scope: !152)
!909 = !{!910, !910, i64 0}
!910 = !{!"int", !847, i64 0}
!911 = !DILocation(line: 581, column: 19, scope: !152)
!912 = !DILocation(line: 581, column: 7, scope: !144)
!913 = !DILocation(line: 585, column: 26, scope: !151)
!914 = !DILocation(line: 0, scope: !151)
!915 = !DILocation(line: 586, column: 23, scope: !151)
!916 = !DILocation(line: 586, column: 28, scope: !151)
!917 = !DILocation(line: 586, column: 32, scope: !151)
!918 = !{!847, !847, i64 0}
!919 = !DILocation(line: 586, column: 38, scope: !151)
!920 = !DILocalVariable(name: "__s1", arg: 1, scope: !921, file: !922, line: 1359, type: !107)
!921 = distinct !DISubprogram(name: "streq", scope: !922, file: !922, line: 1359, type: !923, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !925)
!922 = !DIFile(filename: "./lib/string.h", directory: "/src")
!923 = !DISubroutineType(types: !924)
!924 = !{!154, !107, !107}
!925 = !{!920, !926}
!926 = !DILocalVariable(name: "__s2", arg: 2, scope: !921, file: !922, line: 1359, type: !107)
!927 = !DILocation(line: 0, scope: !921, inlinedAt: !928)
!928 = distinct !DILocation(line: 586, column: 41, scope: !151)
!929 = !DILocation(line: 1361, column: 11, scope: !921, inlinedAt: !928)
!930 = !DILocation(line: 1361, column: 10, scope: !921, inlinedAt: !928)
!931 = !DILocation(line: 586, column: 19, scope: !151)
!932 = !DILocation(line: 587, column: 5, scope: !151)
!933 = !DILocation(line: 588, column: 7, scope: !934)
!934 = distinct !DILexicalBlock(scope: !144, file: !58, line: 588, column: 7)
!935 = !DILocation(line: 588, column: 7, scope: !144)
!936 = !DILocation(line: 590, column: 7, scope: !937)
!937 = distinct !DILexicalBlock(scope: !934, file: !58, line: 589, column: 5)
!938 = !DILocation(line: 591, column: 7, scope: !937)
!939 = !DILocation(line: 595, column: 37, scope: !144)
!940 = !DILocation(line: 595, column: 35, scope: !144)
!941 = !DILocation(line: 596, column: 29, scope: !144)
!942 = !DILocation(line: 597, column: 8, scope: !160)
!943 = !DILocation(line: 597, column: 7, scope: !144)
!944 = !DILocation(line: 604, column: 24, scope: !159)
!945 = !DILocation(line: 604, column: 12, scope: !160)
!946 = !DILocation(line: 0, scope: !158)
!947 = !DILocation(line: 610, column: 16, scope: !158)
!948 = !DILocation(line: 610, column: 7, scope: !158)
!949 = !DILocation(line: 611, column: 21, scope: !158)
!950 = !{!951, !951, i64 0}
!951 = !{!"short", !847, i64 0}
!952 = !DILocation(line: 611, column: 19, scope: !158)
!953 = !DILocation(line: 611, column: 16, scope: !158)
!954 = !DILocation(line: 610, column: 30, scope: !158)
!955 = distinct !{!955, !948, !949, !956}
!956 = !{!"llvm.loop.mustprogress"}
!957 = !DILocation(line: 612, column: 18, scope: !958)
!958 = distinct !DILexicalBlock(scope: !158, file: !58, line: 612, column: 11)
!959 = !DILocation(line: 612, column: 11, scope: !158)
!960 = !DILocation(line: 618, column: 5, scope: !158)
!961 = !DILocation(line: 620, column: 23, scope: !144)
!962 = !DILocation(line: 625, column: 39, scope: !144)
!963 = !DILocation(line: 626, column: 3, scope: !144)
!964 = !DILocation(line: 626, column: 10, scope: !144)
!965 = !DILocation(line: 626, column: 21, scope: !144)
!966 = !DILocation(line: 628, column: 44, scope: !967)
!967 = distinct !DILexicalBlock(scope: !968, file: !58, line: 628, column: 11)
!968 = distinct !DILexicalBlock(scope: !144, file: !58, line: 627, column: 5)
!969 = !DILocation(line: 628, column: 32, scope: !967)
!970 = !DILocation(line: 628, column: 49, scope: !967)
!971 = !DILocation(line: 628, column: 11, scope: !968)
!972 = !DILocation(line: 630, column: 11, scope: !973)
!973 = distinct !DILexicalBlock(scope: !968, file: !58, line: 630, column: 11)
!974 = !DILocation(line: 630, column: 11, scope: !968)
!975 = !DILocation(line: 632, column: 26, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !58, line: 632, column: 15)
!977 = distinct !DILexicalBlock(scope: !973, file: !58, line: 631, column: 9)
!978 = !DILocation(line: 632, column: 34, scope: !976)
!979 = !DILocation(line: 632, column: 37, scope: !976)
!980 = !DILocation(line: 632, column: 15, scope: !977)
!981 = !DILocation(line: 636, column: 16, scope: !982)
!982 = distinct !DILexicalBlock(scope: !977, file: !58, line: 636, column: 15)
!983 = !DILocation(line: 636, column: 29, scope: !982)
!984 = !DILocation(line: 640, column: 16, scope: !968)
!985 = distinct !{!985, !963, !986, !956}
!986 = !DILocation(line: 641, column: 5, scope: !144)
!987 = !DILocation(line: 644, column: 3, scope: !144)
!988 = !DILocation(line: 0, scope: !921, inlinedAt: !989)
!989 = distinct !DILocation(line: 648, column: 31, scope: !144)
!990 = !DILocation(line: 0, scope: !921, inlinedAt: !991)
!991 = distinct !DILocation(line: 649, column: 31, scope: !144)
!992 = !DILocation(line: 0, scope: !921, inlinedAt: !993)
!993 = distinct !DILocation(line: 650, column: 31, scope: !144)
!994 = !DILocation(line: 0, scope: !921, inlinedAt: !995)
!995 = distinct !DILocation(line: 651, column: 31, scope: !144)
!996 = !DILocation(line: 0, scope: !921, inlinedAt: !997)
!997 = distinct !DILocation(line: 652, column: 31, scope: !144)
!998 = !DILocation(line: 0, scope: !921, inlinedAt: !999)
!999 = distinct !DILocation(line: 653, column: 31, scope: !144)
!1000 = !DILocation(line: 0, scope: !921, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 654, column: 31, scope: !144)
!1002 = !DILocation(line: 0, scope: !921, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 655, column: 31, scope: !144)
!1004 = !DILocation(line: 0, scope: !921, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 656, column: 31, scope: !144)
!1006 = !DILocation(line: 0, scope: !921, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 657, column: 31, scope: !144)
!1008 = !DILocation(line: 663, column: 7, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !144, file: !58, line: 663, column: 7)
!1010 = !DILocation(line: 664, column: 7, scope: !1009)
!1011 = !DILocation(line: 664, column: 10, scope: !1009)
!1012 = !DILocation(line: 663, column: 7, scope: !144)
!1013 = !DILocation(line: 669, column: 7, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1009, file: !58, line: 665, column: 5)
!1015 = !DILocation(line: 671, column: 5, scope: !1014)
!1016 = !DILocation(line: 676, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1009, file: !58, line: 673, column: 5)
!1018 = !DILocation(line: 679, column: 3, scope: !144)
!1019 = !DILocation(line: 683, column: 3, scope: !144)
!1020 = !DILocation(line: 686, column: 3, scope: !144)
!1021 = !DILocation(line: 688, column: 3, scope: !144)
!1022 = !DILocation(line: 691, column: 3, scope: !144)
!1023 = !DILocation(line: 695, column: 3, scope: !144)
!1024 = !DILocation(line: 696, column: 1, scope: !144)
!1025 = !DISubprogram(name: "setlocale", scope: !1026, file: !1026, line: 122, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1026 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!54, !52, !107}
!1029 = !DISubprogram(name: "strncmp", scope: !1030, file: !1030, line: 159, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1030 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!52, !107, !107, !104}
!1033 = !DISubprogram(name: "exit", scope: !1034, file: !1034, line: 624, type: !835, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1034 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1035 = !DISubprogram(name: "getenv", scope: !1034, file: !1034, line: 641, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!54, !107}
!1038 = !DISubprogram(name: "strcmp", scope: !1030, file: !1030, line: 156, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!52, !107, !107}
!1041 = !DISubprogram(name: "strspn", scope: !1030, file: !1030, line: 297, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!106, !107, !107}
!1044 = !DISubprogram(name: "strchr", scope: !1030, file: !1030, line: 246, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!54, !107, !52}
!1047 = !DISubprogram(name: "__ctype_b_loc", scope: !63, file: !63, line: 79, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!1050}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1053 = !DISubprogram(name: "strcspn", scope: !1030, file: !1030, line: 293, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1054 = !DISubprogram(name: "fwrite_unlocked", scope: !904, file: !904, line: 704, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!104, !1057, !104, !104, !898}
!1057 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1058)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1060 = !DILocation(line: 0, scope: !49)
!1061 = !DILocation(line: 534, column: 21, scope: !49)
!1062 = !DILocation(line: 534, column: 3, scope: !49)
!1063 = !DILocation(line: 535, column: 3, scope: !49)
!1064 = !DILocation(line: 536, column: 3, scope: !49)
!1065 = !DILocation(line: 537, column: 3, scope: !49)
!1066 = !DILocation(line: 539, column: 3, scope: !49)
!1067 = !DILocation(line: 541, column: 3, scope: !49)
!1068 = !DILocation(line: 549, column: 15, scope: !395)
!1069 = !DILocation(line: 0, scope: !395)
!1070 = !DILocation(line: 551, column: 11, scope: !395)
!1071 = !DILocation(line: 559, column: 9, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !395, file: !2, line: 555, column: 9)
!1073 = !DILocation(line: 561, column: 9, scope: !1072)
!1074 = !DILocation(line: 564, column: 11, scope: !1072)
!1075 = !DILocation(line: 568, column: 18, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !49, file: !2, line: 568, column: 7)
!1077 = !DILocation(line: 568, column: 16, scope: !1076)
!1078 = !DILocation(line: 568, column: 9, scope: !1076)
!1079 = !DILocation(line: 568, column: 7, scope: !49)
!1080 = !DILocation(line: 570, column: 7, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 569, column: 5)
!1082 = !DILocation(line: 571, column: 7, scope: !1081)
!1083 = !DILocation(line: 574, column: 17, scope: !49)
!1084 = !DILocation(line: 574, column: 10, scope: !49)
!1085 = !DILocation(line: 574, column: 33, scope: !49)
!1086 = !DILocation(line: 574, column: 3, scope: !49)
!1087 = !DISubprogram(name: "bindtextdomain", scope: !891, file: !891, line: 86, type: !1088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!54, !107, !107}
!1090 = !DISubprogram(name: "textdomain", scope: !891, file: !891, line: 82, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1091 = !DISubprogram(name: "atexit", scope: !1034, file: !1034, line: 602, type: !1092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!52, !477}
!1094 = !DISubprogram(name: "getopt_long", scope: !399, file: !399, line: 66, type: !1095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!52, !52, !1097, !107, !1099, !404}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!1100 = distinct !DISubprogram(name: "tsort", scope: !2, file: !2, line: 429, type: !860, scopeLine: 430, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1101)
!1101 = !{!1102, !1103, !1104, !1105, !1106, !1113, !1114, !1115, !1117}
!1102 = !DILocalVariable(name: "file", arg: 1, scope: !1100, file: !2, line: 429, type: !107)
!1103 = !DILocalVariable(name: "ok", scope: !1100, file: !2, line: 431, type: !154)
!1104 = !DILocalVariable(name: "j", scope: !1100, file: !2, line: 432, type: !371)
!1105 = !DILocalVariable(name: "k", scope: !1100, file: !2, line: 433, type: !371)
!1106 = !DILocalVariable(name: "tokenbuffer", scope: !1100, file: !2, line: 434, type: !1107)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !1108, line: 38, baseType: !1109)
!1108 = !DIFile(filename: "./lib/readtokens.h", directory: "/src", checksumkind: CSK_MD5, checksum: "75cc48641d199743577b153a0d1c82de")
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !1108, line: 33, size: 128, elements: !1110)
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1109, file: !1108, line: 35, baseType: !104, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1109, file: !1108, line: 36, baseType: !54, size: 64, offset: 64)
!1113 = !DILocalVariable(name: "is_stdin", scope: !1100, file: !2, line: 435, type: !154)
!1114 = !DILocalVariable(name: "root", scope: !1100, file: !2, line: 438, type: !371)
!1115 = !DILocalVariable(name: "len", scope: !1116, file: !2, line: 450, type: !104)
!1116 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 448, column: 5)
!1117 = !DILocalVariable(name: "p", scope: !1118, file: !2, line: 485, type: !382)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 484, column: 9)
!1119 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 479, column: 5)
!1120 = !DILocation(line: 0, scope: !1100)
!1121 = !DILocation(line: 434, column: 3, scope: !1100)
!1122 = !DILocation(line: 434, column: 16, scope: !1100)
!1123 = !DILocation(line: 0, scope: !921, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 435, column: 19, scope: !1100)
!1125 = !DILocation(line: 1361, column: 11, scope: !921, inlinedAt: !1124)
!1126 = !DILocation(line: 1361, column: 10, scope: !921, inlinedAt: !1124)
!1127 = !DILocalVariable(name: "str", arg: 1, scope: !1128, file: !2, line: 101, type: !107)
!1128 = distinct !DISubprogram(name: "new_item", scope: !2, file: !2, line: 101, type: !1129, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1131)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!371, !107}
!1131 = !{!1127, !1132}
!1132 = !DILocalVariable(name: "k", scope: !1128, file: !2, line: 104, type: !371)
!1133 = !DILocation(line: 0, scope: !1128, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 438, column: 23, scope: !1100)
!1135 = !DILocation(line: 104, column: 20, scope: !1128, inlinedAt: !1134)
!1136 = !DILocation(line: 440, column: 17, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 440, column: 7)
!1138 = !DILocation(line: 440, column: 42, scope: !1137)
!1139 = !DILocation(line: 440, column: 22, scope: !1137)
!1140 = !DILocation(line: 440, column: 7, scope: !1100)
!1141 = !DILocation(line: 441, column: 5, scope: !1137)
!1142 = !DILocation(line: 443, column: 12, scope: !1100)
!1143 = !DILocation(line: 443, column: 3, scope: !1100)
!1144 = !DILocation(line: 445, column: 3, scope: !1100)
!1145 = !DILocation(line: 447, column: 3, scope: !1100)
!1146 = !DILocation(line: 433, column: 16, scope: !1100)
!1147 = !DILocation(line: 450, column: 31, scope: !1116)
!1148 = !DILocation(line: 450, column: 20, scope: !1116)
!1149 = !DILocation(line: 0, scope: !1116)
!1150 = !DILocation(line: 451, column: 11, scope: !1116)
!1151 = !DILocation(line: 453, column: 15, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 453, column: 15)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 452, column: 9)
!1154 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 451, column: 11)
!1155 = !DILocalVariable(name: "__stream", arg: 1, scope: !1156, file: !1157, line: 135, type: !167)
!1156 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1157, file: !1157, line: 135, type: !1158, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1160)
!1157 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!52, !167}
!1160 = !{!1155}
!1161 = !DILocation(line: 0, scope: !1156, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 453, column: 15, scope: !1152)
!1163 = !DILocation(line: 137, column: 10, scope: !1156, inlinedAt: !1162)
!1164 = !{!1165, !910, i64 0}
!1165 = !{!"_IO_FILE", !910, i64 0, !846, i64 8, !846, i64 16, !846, i64 24, !846, i64 32, !846, i64 40, !846, i64 48, !846, i64 56, !846, i64 64, !846, i64 72, !846, i64 80, !846, i64 88, !846, i64 96, !846, i64 104, !910, i64 112, !910, i64 116, !1166, i64 120, !951, i64 128, !847, i64 130, !847, i64 131, !846, i64 136, !1166, i64 144, !846, i64 152, !846, i64 160, !846, i64 168, !846, i64 176, !1166, i64 184, !910, i64 192, !847, i64 196}
!1166 = !{!"long", !847, i64 0}
!1167 = !DILocation(line: 453, column: 15, scope: !1153)
!1168 = !DILocation(line: 454, column: 13, scope: !1152)
!1169 = !DILocation(line: 458, column: 7, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 458, column: 7)
!1171 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 458, column: 7)
!1172 = !DILocation(line: 460, column: 42, scope: !1116)
!1173 = !{!1174, !846, i64 8}
!1174 = !{!"tokenbuffer", !1166, i64 0, !846, i64 8}
!1175 = !DILocalVariable(name: "root", arg: 1, scope: !1176, file: !2, line: 119, type: !371)
!1176 = distinct !DISubprogram(name: "search_item", scope: !2, file: !2, line: 119, type: !1177, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1179)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!371, !371, !107}
!1179 = !{!1175, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187}
!1180 = !DILocalVariable(name: "str", arg: 2, scope: !1176, file: !2, line: 119, type: !107)
!1181 = !DILocalVariable(name: "p", scope: !1176, file: !2, line: 121, type: !371)
!1182 = !DILocalVariable(name: "q", scope: !1176, file: !2, line: 121, type: !371)
!1183 = !DILocalVariable(name: "r", scope: !1176, file: !2, line: 121, type: !371)
!1184 = !DILocalVariable(name: "s", scope: !1176, file: !2, line: 121, type: !371)
!1185 = !DILocalVariable(name: "t", scope: !1176, file: !2, line: 121, type: !371)
!1186 = !DILocalVariable(name: "a", scope: !1176, file: !2, line: 122, type: !52)
!1187 = !DILocalVariable(name: "cmp", scope: !1188, file: !2, line: 173, type: !52)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 172, column: 13)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 147, column: 9)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 146, column: 11)
!1191 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 134, column: 5)
!1192 = !DILocation(line: 0, scope: !1176, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 460, column: 11, scope: !1116)
!1194 = !DILocation(line: 126, column: 13, scope: !1195, inlinedAt: !1193)
!1195 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 126, column: 7)
!1196 = !{!1197, !846, i64 16}
!1197 = !{!"item", !846, i64 0, !846, i64 8, !846, i64 16, !847, i64 24, !1198, i64 25, !1166, i64 32, !846, i64 40, !846, i64 48}
!1198 = !{!"_Bool", !847, i64 0}
!1199 = !DILocation(line: 126, column: 19, scope: !1195, inlinedAt: !1193)
!1200 = !DILocation(line: 126, column: 7, scope: !1176, inlinedAt: !1193)
!1201 = !DILocation(line: 136, column: 27, scope: !1191, inlinedAt: !1193)
!1202 = !{!1197, !846, i64 0}
!1203 = !DILocation(line: 136, column: 11, scope: !1191, inlinedAt: !1193)
!1204 = !DILocation(line: 137, column: 13, scope: !1205, inlinedAt: !1193)
!1205 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 137, column: 11)
!1206 = !DILocation(line: 137, column: 11, scope: !1191, inlinedAt: !1193)
!1207 = !DILocation(line: 0, scope: !1128, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 127, column: 27, scope: !1195, inlinedAt: !1193)
!1209 = !DILocation(line: 104, column: 20, scope: !1128, inlinedAt: !1208)
!1210 = !DILocation(line: 105, column: 7, scope: !1211, inlinedAt: !1208)
!1211 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 105, column: 7)
!1212 = !DILocation(line: 105, column: 7, scope: !1128, inlinedAt: !1208)
!1213 = !DILocation(line: 106, column: 14, scope: !1211, inlinedAt: !1208)
!1214 = !DILocation(line: 106, column: 12, scope: !1211, inlinedAt: !1208)
!1215 = !DILocation(line: 106, column: 5, scope: !1211, inlinedAt: !1208)
!1216 = !DILocation(line: 127, column: 25, scope: !1195, inlinedAt: !1193)
!1217 = !DILocation(line: 127, column: 5, scope: !1195, inlinedAt: !1193)
!1218 = !DILocation(line: 141, column: 13, scope: !1219, inlinedAt: !1193)
!1219 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 141, column: 11)
!1220 = !DILocation(line: 141, column: 11, scope: !1191, inlinedAt: !1193)
!1221 = !DILocation(line: 0, scope: !1219, inlinedAt: !1193)
!1222 = !DILocation(line: 146, column: 13, scope: !1190, inlinedAt: !1193)
!1223 = !DILocation(line: 146, column: 11, scope: !1191, inlinedAt: !1193)
!1224 = !DILocation(line: 0, scope: !1128, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 149, column: 15, scope: !1189, inlinedAt: !1193)
!1226 = !DILocation(line: 104, column: 20, scope: !1128, inlinedAt: !1225)
!1227 = !DILocation(line: 105, column: 7, scope: !1211, inlinedAt: !1225)
!1228 = !DILocation(line: 105, column: 7, scope: !1128, inlinedAt: !1225)
!1229 = !DILocation(line: 106, column: 14, scope: !1211, inlinedAt: !1225)
!1230 = !DILocation(line: 106, column: 12, scope: !1211, inlinedAt: !1225)
!1231 = !DILocation(line: 106, column: 5, scope: !1211, inlinedAt: !1225)
!1232 = !DILocation(line: 0, scope: !1233, inlinedAt: !1193)
!1233 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 152, column: 15)
!1234 = !DILocation(line: 158, column: 31, scope: !1189, inlinedAt: !1193)
!1235 = !DILocation(line: 158, column: 15, scope: !1189, inlinedAt: !1193)
!1236 = !DILocation(line: 159, column: 17, scope: !1237, inlinedAt: !1193)
!1237 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 159, column: 15)
!1238 = !DILocation(line: 159, column: 15, scope: !1189, inlinedAt: !1193)
!1239 = !DILocation(line: 161, column: 26, scope: !1240, inlinedAt: !1193)
!1240 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 160, column: 13)
!1241 = !DILocation(line: 163, column: 13, scope: !1240, inlinedAt: !1193)
!1242 = !DILocation(line: 166, column: 15, scope: !1243, inlinedAt: !1193)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 166, column: 15)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 166, column: 15)
!1245 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 165, column: 13)
!1246 = !DILocation(line: 166, column: 15, scope: !1244, inlinedAt: !1193)
!1247 = !DILocation(line: 167, column: 26, scope: !1245, inlinedAt: !1193)
!1248 = !DILocation(line: 0, scope: !1237, inlinedAt: !1193)
!1249 = !DILocation(line: 171, column: 20, scope: !1189, inlinedAt: !1193)
!1250 = !DILocation(line: 171, column: 11, scope: !1189, inlinedAt: !1193)
!1251 = !DILocation(line: 173, column: 41, scope: !1188, inlinedAt: !1193)
!1252 = !DILocation(line: 173, column: 25, scope: !1188, inlinedAt: !1193)
!1253 = !DILocation(line: 0, scope: !1188, inlinedAt: !1193)
!1254 = !DILocation(line: 174, column: 23, scope: !1255, inlinedAt: !1193)
!1255 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 174, column: 19)
!1256 = !DILocation(line: 174, column: 19, scope: !1188, inlinedAt: !1193)
!1257 = !DILocation(line: 176, column: 22, scope: !1258, inlinedAt: !1193)
!1258 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 175, column: 17)
!1259 = !DILocation(line: 176, column: 30, scope: !1258, inlinedAt: !1193)
!1260 = !{!1197, !847, i64 24}
!1261 = !DILocation(line: 177, column: 26, scope: !1258, inlinedAt: !1193)
!1262 = !DILocation(line: 178, column: 17, scope: !1258, inlinedAt: !1193)
!1263 = !DILocation(line: 181, column: 19, scope: !1264, inlinedAt: !1193)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 181, column: 19)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 181, column: 19)
!1266 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 180, column: 17)
!1267 = !DILocation(line: 181, column: 19, scope: !1265, inlinedAt: !1193)
!1268 = !DILocation(line: 182, column: 22, scope: !1266, inlinedAt: !1193)
!1269 = !DILocation(line: 182, column: 30, scope: !1266, inlinedAt: !1193)
!1270 = !DILocation(line: 183, column: 26, scope: !1266, inlinedAt: !1193)
!1271 = !DILocation(line: 0, scope: !1255, inlinedAt: !1193)
!1272 = distinct !{!1272, !1250, !1273, !956}
!1273 = !DILocation(line: 185, column: 13, scope: !1189, inlinedAt: !1193)
!1274 = !DILocation(line: 188, column: 18, scope: !1275, inlinedAt: !1193)
!1275 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 188, column: 15)
!1276 = !DILocation(line: 188, column: 26, scope: !1275, inlinedAt: !1193)
!1277 = !DILocation(line: 188, column: 31, scope: !1275, inlinedAt: !1193)
!1278 = !DILocation(line: 188, column: 15, scope: !1275, inlinedAt: !1193)
!1279 = !DILocation(line: 188, column: 48, scope: !1275, inlinedAt: !1193)
!1280 = !DILocation(line: 188, column: 45, scope: !1275, inlinedAt: !1193)
!1281 = !DILocation(line: 188, column: 15, scope: !1189, inlinedAt: !1193)
!1282 = !DILocation(line: 190, column: 26, scope: !1283, inlinedAt: !1193)
!1283 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 189, column: 13)
!1284 = !DILocation(line: 191, column: 15, scope: !1283, inlinedAt: !1193)
!1285 = !DILocation(line: 194, column: 18, scope: !1286, inlinedAt: !1193)
!1286 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 194, column: 15)
!1287 = !DILocation(line: 194, column: 15, scope: !1286, inlinedAt: !1193)
!1288 = !DILocation(line: 194, column: 26, scope: !1286, inlinedAt: !1193)
!1289 = !DILocation(line: 194, column: 15, scope: !1189, inlinedAt: !1193)
!1290 = !DILocation(line: 198, column: 19, scope: !1291, inlinedAt: !1193)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !2, line: 195, column: 13)
!1292 = !DILocation(line: 200, column: 32, scope: !1293, inlinedAt: !1193)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 199, column: 17)
!1294 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 198, column: 19)
!1295 = !DILocation(line: 200, column: 22, scope: !1293, inlinedAt: !1193)
!1296 = !DILocation(line: 200, column: 27, scope: !1293, inlinedAt: !1193)
!1297 = !{!1197, !846, i64 8}
!1298 = !DILocation(line: 202, column: 17, scope: !1293, inlinedAt: !1193)
!1299 = !DILocation(line: 205, column: 33, scope: !1300, inlinedAt: !1193)
!1300 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 204, column: 17)
!1301 = !DILocation(line: 205, column: 22, scope: !1300, inlinedAt: !1193)
!1302 = !DILocation(line: 205, column: 28, scope: !1300, inlinedAt: !1193)
!1303 = !DILocation(line: 0, scope: !1294, inlinedAt: !1193)
!1304 = !DILocation(line: 208, column: 39, scope: !1291, inlinedAt: !1193)
!1305 = !DILocation(line: 209, column: 13, scope: !1291, inlinedAt: !1193)
!1306 = !DILocation(line: 213, column: 19, scope: !1307, inlinedAt: !1193)
!1307 = distinct !DILexicalBlock(scope: !1286, file: !2, line: 211, column: 13)
!1308 = !DILocation(line: 215, column: 26, scope: !1309, inlinedAt: !1193)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 214, column: 17)
!1310 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 213, column: 19)
!1311 = !DILocation(line: 216, column: 33, scope: !1309, inlinedAt: !1193)
!1312 = !DILocation(line: 216, column: 28, scope: !1309, inlinedAt: !1193)
!1313 = !DILocation(line: 217, column: 27, scope: !1309, inlinedAt: !1193)
!1314 = !DILocation(line: 218, column: 32, scope: !1309, inlinedAt: !1193)
!1315 = !DILocation(line: 218, column: 22, scope: !1309, inlinedAt: !1193)
!1316 = !DILocation(line: 218, column: 27, scope: !1309, inlinedAt: !1193)
!1317 = !DILocation(line: 220, column: 17, scope: !1309, inlinedAt: !1193)
!1318 = !DILocation(line: 223, column: 26, scope: !1319, inlinedAt: !1193)
!1319 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 222, column: 17)
!1320 = !DILocation(line: 224, column: 32, scope: !1319, inlinedAt: !1193)
!1321 = !DILocation(line: 224, column: 27, scope: !1319, inlinedAt: !1193)
!1322 = !DILocation(line: 225, column: 28, scope: !1319, inlinedAt: !1193)
!1323 = !DILocation(line: 226, column: 33, scope: !1319, inlinedAt: !1193)
!1324 = !DILocation(line: 226, column: 22, scope: !1319, inlinedAt: !1193)
!1325 = !DILocation(line: 226, column: 28, scope: !1319, inlinedAt: !1193)
!1326 = !DILocation(line: 0, scope: !1310, inlinedAt: !1193)
!1327 = !DILocation(line: 230, column: 26, scope: !1307, inlinedAt: !1193)
!1328 = !DILocation(line: 231, column: 26, scope: !1307, inlinedAt: !1193)
!1329 = !DILocation(line: 232, column: 22, scope: !1330, inlinedAt: !1193)
!1330 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 232, column: 19)
!1331 = !DILocation(line: 232, column: 19, scope: !1330, inlinedAt: !1193)
!1332 = !DILocation(line: 232, column: 30, scope: !1330, inlinedAt: !1193)
!1333 = !DILocation(line: 232, column: 19, scope: !1307, inlinedAt: !1193)
!1334 = !DILocation(line: 234, column: 35, scope: !1335, inlinedAt: !1193)
!1335 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 234, column: 24)
!1336 = !DILocation(line: 234, column: 24, scope: !1330, inlinedAt: !1193)
!1337 = !DILocation(line: 0, scope: !1330, inlinedAt: !1193)
!1338 = !DILocation(line: 236, column: 26, scope: !1307, inlinedAt: !1193)
!1339 = !DILocation(line: 0, scope: !1286, inlinedAt: !1193)
!1340 = !DILocation(line: 240, column: 23, scope: !1341, inlinedAt: !1193)
!1341 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 240, column: 15)
!1342 = !DILocation(line: 240, column: 17, scope: !1341, inlinedAt: !1193)
!1343 = !DILocation(line: 240, column: 15, scope: !1189, inlinedAt: !1193)
!1344 = !DILocation(line: 241, column: 22, scope: !1341, inlinedAt: !1193)
!1345 = !DILocation(line: 241, column: 13, scope: !1341, inlinedAt: !1193)
!1346 = !DILocation(line: 243, column: 16, scope: !1341, inlinedAt: !1193)
!1347 = !DILocation(line: 243, column: 21, scope: !1341, inlinedAt: !1193)
!1348 = !DILocation(line: 249, column: 14, scope: !1349, inlinedAt: !1193)
!1349 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 249, column: 11)
!1350 = !DILocation(line: 249, column: 11, scope: !1349, inlinedAt: !1193)
!1351 = !DILocation(line: 249, column: 11, scope: !1191, inlinedAt: !1193)
!1352 = distinct !{!1352, !1353, !1354}
!1353 = !DILocation(line: 133, column: 3, scope: !1176, inlinedAt: !1193)
!1354 = !DILocation(line: 256, column: 5, scope: !1176, inlinedAt: !1193)
!1355 = !DILocation(line: 461, column: 11, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 461, column: 11)
!1357 = !DILocation(line: 461, column: 11, scope: !1116)
!1358 = !DILocalVariable(name: "j", arg: 1, scope: !1359, file: !2, line: 264, type: !371)
!1359 = distinct !DISubprogram(name: "record_relation", scope: !2, file: !2, line: 264, type: !1360, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1362)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !371, !371}
!1362 = !{!1358, !1363, !1364}
!1363 = !DILocalVariable(name: "k", arg: 2, scope: !1359, file: !2, line: 264, type: !371)
!1364 = !DILocalVariable(name: "p", scope: !1359, file: !2, line: 266, type: !382)
!1365 = !DILocation(line: 0, scope: !1359, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 464, column: 11, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 462, column: 9)
!1368 = !DILocation(line: 268, column: 18, scope: !1369, inlinedAt: !1366)
!1369 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 268, column: 7)
!1370 = !DILocation(line: 268, column: 26, scope: !1369, inlinedAt: !1366)
!1371 = !DILocation(line: 0, scope: !921, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 268, column: 8, scope: !1369, inlinedAt: !1366)
!1373 = !DILocation(line: 1361, column: 11, scope: !921, inlinedAt: !1372)
!1374 = !DILocation(line: 1361, column: 10, scope: !921, inlinedAt: !1372)
!1375 = !DILocation(line: 268, column: 7, scope: !1359, inlinedAt: !1366)
!1376 = !DILocation(line: 270, column: 10, scope: !1377, inlinedAt: !1366)
!1377 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 269, column: 5)
!1378 = !DILocation(line: 270, column: 15, scope: !1377, inlinedAt: !1366)
!1379 = !{!1197, !1166, i64 32}
!1380 = !DILocation(line: 271, column: 11, scope: !1377, inlinedAt: !1366)
!1381 = !DILocation(line: 272, column: 14, scope: !1377, inlinedAt: !1366)
!1382 = !{!1383, !846, i64 0}
!1383 = !{!"successor", !846, i64 0, !846, i64 8}
!1384 = !DILocation(line: 273, column: 20, scope: !1377, inlinedAt: !1366)
!1385 = !{!1197, !846, i64 48}
!1386 = !DILocation(line: 273, column: 10, scope: !1377, inlinedAt: !1366)
!1387 = !DILocation(line: 273, column: 15, scope: !1377, inlinedAt: !1366)
!1388 = !{!1383, !846, i64 8}
!1389 = !DILocation(line: 274, column: 14, scope: !1377, inlinedAt: !1366)
!1390 = !DILocation(line: 275, column: 5, scope: !1377, inlinedAt: !1366)
!1391 = !DILocation(line: 471, column: 9, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 471, column: 7)
!1393 = !DILocation(line: 471, column: 7, scope: !1100)
!1394 = !DILocation(line: 472, column: 5, scope: !1392)
!1395 = !DILocalVariable(name: "root", arg: 1, scope: !1396, file: !2, line: 420, type: !371)
!1396 = distinct !DISubprogram(name: "walk_tree", scope: !2, file: !2, line: 420, type: !1397, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1402)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !371, !1399}
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!154, !371}
!1402 = !{!1395, !1403}
!1403 = !DILocalVariable(name: "action", arg: 2, scope: !1396, file: !2, line: 420, type: !1399)
!1404 = !DILocation(line: 0, scope: !1396, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 476, column: 3, scope: !1100)
!1406 = !DILocation(line: 422, column: 13, scope: !1407, inlinedAt: !1405)
!1407 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 422, column: 7)
!1408 = !DILocation(line: 422, column: 7, scope: !1407, inlinedAt: !1405)
!1409 = !DILocation(line: 422, column: 7, scope: !1396, inlinedAt: !1405)
!1410 = !DILocation(line: 423, column: 5, scope: !1407, inlinedAt: !1405)
!1411 = !DILocation(line: 478, column: 10, scope: !1100)
!1412 = !{!1166, !1166, i64 0}
!1413 = !DILocation(line: 478, column: 20, scope: !1100)
!1414 = !DILocation(line: 478, column: 3, scope: !1100)
!1415 = !DILocation(line: 0, scope: !1396, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 481, column: 7, scope: !1119)
!1417 = !DILocation(line: 422, column: 7, scope: !1396, inlinedAt: !1416)
!1418 = !DILocation(line: 423, column: 5, scope: !1407, inlinedAt: !1416)
!1419 = !DILocation(line: 483, column: 14, scope: !1119)
!1420 = !DILocation(line: 483, column: 7, scope: !1119)
!1421 = !DILocation(line: 510, column: 11, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 510, column: 11)
!1423 = !DILocation(line: 485, column: 39, scope: !1118)
!1424 = !DILocation(line: 0, scope: !1118)
!1425 = !DILocation(line: 488, column: 23, scope: !1118)
!1426 = !DILocation(line: 488, column: 11, scope: !1118)
!1427 = !DILocation(line: 489, column: 11, scope: !1118)
!1428 = !DILocation(line: 489, column: 17, scope: !1118)
!1429 = !DILocation(line: 489, column: 25, scope: !1118)
!1430 = !{!1197, !1198, i64 25}
!1431 = !DILocation(line: 490, column: 20, scope: !1118)
!1432 = !DILocation(line: 493, column: 11, scope: !1118)
!1433 = !DILocation(line: 495, column: 18, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 494, column: 13)
!1435 = !DILocation(line: 495, column: 23, scope: !1434)
!1436 = !DILocation(line: 495, column: 28, scope: !1434)
!1437 = !DILocation(line: 496, column: 33, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !2, line: 496, column: 19)
!1439 = !DILocation(line: 496, column: 19, scope: !1434)
!1440 = !DILocation(line: 498, column: 26, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 497, column: 17)
!1442 = !DILocation(line: 498, column: 32, scope: !1441)
!1443 = !{!1197, !846, i64 40}
!1444 = !DILocation(line: 499, column: 25, scope: !1441)
!1445 = !DILocation(line: 500, column: 17, scope: !1441)
!1446 = !DILocation(line: 502, column: 22, scope: !1434)
!1447 = distinct !{!1447, !1432, !1448, !956}
!1448 = !DILocation(line: 503, column: 13, scope: !1118)
!1449 = !DILocation(line: 506, column: 24, scope: !1118)
!1450 = !DILocation(line: 506, column: 16, scope: !1118)
!1451 = distinct !{!1451, !1420, !1452, !956}
!1452 = !DILocation(line: 507, column: 9, scope: !1119)
!1453 = !DILocation(line: 510, column: 21, scope: !1422)
!1454 = !DILocation(line: 510, column: 11, scope: !1119)
!1455 = !DILocation(line: 513, column: 11, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1422, file: !2, line: 511, column: 9)
!1457 = !DILocation(line: 517, column: 11, scope: !1456)
!1458 = !DILocation(line: 0, scope: !1396, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 518, column: 13, scope: !1456)
!1460 = !DILocation(line: 422, column: 7, scope: !1396, inlinedAt: !1459)
!1461 = !DILocation(line: 423, column: 5, scope: !1407, inlinedAt: !1459)
!1462 = !DILocation(line: 519, column: 18, scope: !1456)
!1463 = !DILocation(line: 518, column: 13, scope: !1456)
!1464 = distinct !{!1464, !1457, !1465, !956}
!1465 = !DILocation(line: 519, column: 22, scope: !1456)
!1466 = distinct !{!1466, !1414, !1467, !956}
!1467 = !DILocation(line: 521, column: 5, scope: !1100)
!1468 = !DILocation(line: 523, column: 15, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 523, column: 7)
!1470 = !DILocation(line: 523, column: 7, scope: !1469)
!1471 = !DILocation(line: 523, column: 22, scope: !1469)
!1472 = !DILocation(line: 523, column: 7, scope: !1100)
!1473 = !DILocation(line: 524, column: 5, scope: !1469)
!1474 = !DILocation(line: 527, column: 9, scope: !1100)
!1475 = !DILocation(line: 527, column: 3, scope: !1100)
!1476 = !DISubprogram(name: "__errno_location", scope: !1477, file: !1477, line: 37, type: !1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1477 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!404}
!1480 = !DISubprogram(name: "__assert_fail", scope: !1481, file: !1481, line: 69, type: !1482, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1481 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1482 = !DISubroutineType(types: !1483)
!1483 = !{null, !107, !107, !64, !107}
!1484 = distinct !DISubprogram(name: "count_items", scope: !2, file: !2, line: 279, type: !1400, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1485)
!1485 = !{!1486}
!1486 = !DILocalVariable(name: "unused", arg: 1, scope: !1484, file: !2, line: 279, type: !371)
!1487 = !DILocation(line: 0, scope: !1484)
!1488 = !DILocation(line: 281, column: 12, scope: !1484)
!1489 = !DILocation(line: 282, column: 3, scope: !1484)
!1490 = distinct !DISubprogram(name: "recurse_tree", scope: !2, file: !2, line: 397, type: !1491, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!154, !371, !1399}
!1493 = !{!1494, !1495}
!1494 = !DILocalVariable(name: "root", arg: 1, scope: !1490, file: !2, line: 397, type: !371)
!1495 = !DILocalVariable(name: "action", arg: 2, scope: !1490, file: !2, line: 397, type: !1399)
!1496 = !DILocation(line: 0, scope: !1490)
!1497 = !DILocation(line: 399, column: 13, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 399, column: 7)
!1499 = !DILocation(line: 399, column: 18, scope: !1498)
!1500 = !DILocation(line: 399, column: 26, scope: !1498)
!1501 = !DILocation(line: 399, column: 35, scope: !1498)
!1502 = !DILocation(line: 399, column: 41, scope: !1498)
!1503 = !DILocation(line: 399, column: 7, scope: !1490)
!1504 = !DILocation(line: 400, column: 12, scope: !1498)
!1505 = !{ptr @count_items, ptr @detect_loop, ptr @scan_zeros}
!1506 = !DILocation(line: 400, column: 5, scope: !1498)
!1507 = !DILocation(line: 404, column: 13, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !2, line: 404, column: 13)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 403, column: 11)
!1510 = distinct !DILexicalBlock(scope: !1498, file: !2, line: 402, column: 5)
!1511 = !DILocation(line: 404, column: 13, scope: !1509)
!1512 = !DILocation(line: 406, column: 11, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 406, column: 11)
!1514 = !DILocation(line: 406, column: 11, scope: !1510)
!1515 = !DILocation(line: 408, column: 17, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 408, column: 11)
!1517 = !DILocation(line: 408, column: 23, scope: !1516)
!1518 = !DILocation(line: 408, column: 11, scope: !1510)
!1519 = !DILocation(line: 409, column: 13, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 409, column: 13)
!1521 = !DILocation(line: 409, column: 13, scope: !1516)
!1522 = !DILocation(line: 413, column: 3, scope: !1490)
!1523 = !DILocation(line: 414, column: 1, scope: !1490)
!1524 = distinct !DISubprogram(name: "scan_zeros", scope: !2, file: !2, line: 286, type: !1400, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1525)
!1525 = !{!1526}
!1526 = !DILocalVariable(name: "k", arg: 1, scope: !1524, file: !2, line: 286, type: !371)
!1527 = !DILocation(line: 0, scope: !1524)
!1528 = !DILocation(line: 289, column: 10, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 289, column: 7)
!1530 = !DILocation(line: 289, column: 16, scope: !1529)
!1531 = !DILocation(line: 289, column: 21, scope: !1529)
!1532 = !DILocation(line: 289, column: 28, scope: !1529)
!1533 = !{i8 0, i8 2}
!1534 = !DILocation(line: 289, column: 7, scope: !1524)
!1535 = !DILocation(line: 291, column: 11, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !2, line: 291, column: 11)
!1537 = distinct !DILexicalBlock(scope: !1529, file: !2, line: 290, column: 5)
!1538 = !DILocation(line: 291, column: 16, scope: !1536)
!1539 = !DILocation(line: 291, column: 11, scope: !1537)
!1540 = !DILocation(line: 0, scope: !1536)
!1541 = !DILocation(line: 296, column: 13, scope: !1537)
!1542 = !DILocation(line: 297, column: 5, scope: !1537)
!1543 = !DILocation(line: 299, column: 3, scope: !1524)
!1544 = !DISubprogram(name: "puts", scope: !904, file: !904, line: 661, type: !1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!52, !107}
!1547 = distinct !DISubprogram(name: "detect_loop", scope: !2, file: !2, line: 321, type: !1400, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1548)
!1548 = !{!1549, !1550, !1556, !1563, !1566}
!1549 = !DILocalVariable(name: "k", arg: 1, scope: !1547, file: !2, line: 321, type: !371)
!1550 = !DILocalVariable(name: "p", scope: !1551, file: !2, line: 333, type: !1555)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 332, column: 9)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 328, column: 11)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 324, column: 5)
!1554 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 323, column: 7)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!1556 = !DILocalVariable(name: "tmp", scope: !1557, file: !2, line: 344, type: !371)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 343, column: 25)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 340, column: 21)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 339, column: 23)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !2, line: 338, column: 17)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 337, column: 19)
!1562 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 336, column: 13)
!1563 = !DILocalVariable(name: "s", scope: !1564, file: !2, line: 352, type: !382)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !2, line: 350, column: 29)
!1565 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 349, column: 31)
!1566 = !DILocalVariable(name: "tmp", scope: !1567, file: !2, line: 367, type: !371)
!1567 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 366, column: 25)
!1568 = !DILocation(line: 0, scope: !1547)
!1569 = !DILocation(line: 323, column: 10, scope: !1554)
!1570 = !DILocation(line: 323, column: 16, scope: !1554)
!1571 = !DILocation(line: 323, column: 7, scope: !1547)
!1572 = !DILocation(line: 328, column: 11, scope: !1552)
!1573 = !DILocation(line: 328, column: 16, scope: !1552)
!1574 = !DILocation(line: 328, column: 11, scope: !1553)
!1575 = !DILocation(line: 333, column: 38, scope: !1551)
!1576 = !DILocation(line: 0, scope: !1551)
!1577 = !DILocation(line: 335, column: 18, scope: !1551)
!1578 = !DILocation(line: 335, column: 11, scope: !1551)
!1579 = !DILocation(line: 337, column: 25, scope: !1561)
!1580 = !DILocation(line: 337, column: 29, scope: !1561)
!1581 = !DILocation(line: 337, column: 19, scope: !1562)
!1582 = !DILocation(line: 385, column: 26, scope: !1562)
!1583 = distinct !{!1583, !1578, !1584, !956}
!1584 = !DILocation(line: 386, column: 13, scope: !1551)
!1585 = !DILocation(line: 339, column: 26, scope: !1559)
!1586 = !DILocation(line: 339, column: 23, scope: !1559)
!1587 = !DILocation(line: 339, column: 23, scope: !1560)
!1588 = !DILocation(line: 344, column: 52, scope: !1557)
!1589 = !DILocation(line: 0, scope: !1557)
!1590 = !DILocation(line: 346, column: 27, scope: !1557)
!1591 = !DILocation(line: 349, column: 31, scope: !1565)
!1592 = !DILocation(line: 349, column: 36, scope: !1565)
!1593 = !DILocation(line: 349, column: 31, scope: !1557)
!1594 = !DILocation(line: 361, column: 33, scope: !1557)
!1595 = !DILocation(line: 361, column: 39, scope: !1557)
!1596 = !DILocation(line: 362, column: 32, scope: !1557)
!1597 = !DILocation(line: 342, column: 23, scope: !1558)
!1598 = !DILocation(line: 352, column: 53, scope: !1564)
!1599 = !DILocation(line: 0, scope: !1564)
!1600 = !DILocation(line: 353, column: 34, scope: !1564)
!1601 = !DILocation(line: 353, column: 39, scope: !1564)
!1602 = !DILocation(line: 353, column: 44, scope: !1564)
!1603 = !DILocation(line: 354, column: 39, scope: !1564)
!1604 = !DILocation(line: 354, column: 34, scope: !1564)
!1605 = !DILocation(line: 365, column: 23, scope: !1558)
!1606 = !DILocation(line: 367, column: 52, scope: !1567)
!1607 = !DILocation(line: 0, scope: !1567)
!1608 = !DILocation(line: 369, column: 39, scope: !1567)
!1609 = distinct !{!1609, !1605, !1610, !956}
!1610 = !DILocation(line: 371, column: 25, scope: !1558)
!1611 = !DILocation(line: 379, column: 32, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 378, column: 21)
!1613 = !DILocation(line: 381, column: 23, scope: !1612)
!1614 = !DILocation(line: 0, scope: !1552)
!1615 = !DILocation(line: 391, column: 1, scope: !1547)
!1616 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !416, file: !416, line: 50, type: !860, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1617)
!1617 = !{!1618}
!1618 = !DILocalVariable(name: "file", arg: 1, scope: !1616, file: !416, line: 50, type: !107)
!1619 = !DILocation(line: 0, scope: !1616)
!1620 = !DILocation(line: 52, column: 13, scope: !1616)
!1621 = !DILocation(line: 53, column: 1, scope: !1616)
!1622 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !416, file: !416, line: 87, type: !1623, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1625)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !154}
!1625 = !{!1626}
!1626 = !DILocalVariable(name: "ignore", arg: 1, scope: !1622, file: !416, line: 87, type: !154)
!1627 = !DILocation(line: 0, scope: !1622)
!1628 = !DILocation(line: 89, column: 16, scope: !1622)
!1629 = !{!1198, !1198, i64 0}
!1630 = !DILocation(line: 90, column: 1, scope: !1622)
!1631 = distinct !DISubprogram(name: "close_stdout", scope: !416, file: !416, line: 116, type: !478, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1632)
!1632 = !{!1633}
!1633 = !DILocalVariable(name: "write_error", scope: !1634, file: !416, line: 121, type: !107)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !416, line: 120, column: 5)
!1635 = distinct !DILexicalBlock(scope: !1631, file: !416, line: 118, column: 7)
!1636 = !DILocation(line: 118, column: 21, scope: !1635)
!1637 = !DILocation(line: 118, column: 7, scope: !1635)
!1638 = !DILocation(line: 118, column: 29, scope: !1635)
!1639 = !DILocation(line: 119, column: 7, scope: !1635)
!1640 = !DILocation(line: 119, column: 12, scope: !1635)
!1641 = !DILocation(line: 119, column: 25, scope: !1635)
!1642 = !DILocation(line: 119, column: 28, scope: !1635)
!1643 = !DILocation(line: 119, column: 34, scope: !1635)
!1644 = !DILocation(line: 118, column: 7, scope: !1631)
!1645 = !DILocation(line: 121, column: 33, scope: !1634)
!1646 = !DILocation(line: 0, scope: !1634)
!1647 = !DILocation(line: 122, column: 11, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1634, file: !416, line: 122, column: 11)
!1649 = !DILocation(line: 0, scope: !1648)
!1650 = !DILocation(line: 122, column: 11, scope: !1634)
!1651 = !DILocation(line: 123, column: 9, scope: !1648)
!1652 = !DILocation(line: 126, column: 9, scope: !1648)
!1653 = !DILocation(line: 128, column: 14, scope: !1634)
!1654 = !DILocation(line: 128, column: 7, scope: !1634)
!1655 = !DILocation(line: 133, column: 42, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1631, file: !416, line: 133, column: 7)
!1657 = !DILocation(line: 133, column: 28, scope: !1656)
!1658 = !DILocation(line: 133, column: 50, scope: !1656)
!1659 = !DILocation(line: 133, column: 7, scope: !1631)
!1660 = !DILocation(line: 134, column: 12, scope: !1656)
!1661 = !DILocation(line: 134, column: 5, scope: !1656)
!1662 = !DILocation(line: 135, column: 1, scope: !1631)
!1663 = !DISubprogram(name: "_exit", scope: !1664, file: !1664, line: 624, type: !835, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1664 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1665 = distinct !DISubprogram(name: "verror", scope: !431, file: !431, line: 251, type: !1666, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1668)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{null, !52, !52, !107, !441}
!1668 = !{!1669, !1670, !1671, !1672}
!1669 = !DILocalVariable(name: "status", arg: 1, scope: !1665, file: !431, line: 251, type: !52)
!1670 = !DILocalVariable(name: "errnum", arg: 2, scope: !1665, file: !431, line: 251, type: !52)
!1671 = !DILocalVariable(name: "message", arg: 3, scope: !1665, file: !431, line: 251, type: !107)
!1672 = !DILocalVariable(name: "args", arg: 4, scope: !1665, file: !431, line: 251, type: !441)
!1673 = !DILocation(line: 0, scope: !1665)
!1674 = !DILocation(line: 261, column: 3, scope: !1665)
!1675 = !DILocation(line: 265, column: 7, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1665, file: !431, line: 265, column: 7)
!1677 = !DILocation(line: 265, column: 7, scope: !1665)
!1678 = !DILocation(line: 266, column: 5, scope: !1676)
!1679 = !DILocation(line: 272, column: 7, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1676, file: !431, line: 268, column: 5)
!1681 = !DILocation(line: 276, column: 3, scope: !1665)
!1682 = !DILocation(line: 282, column: 1, scope: !1665)
!1683 = distinct !DISubprogram(name: "flush_stdout", scope: !431, file: !431, line: 163, type: !478, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1684)
!1684 = !{!1685}
!1685 = !DILocalVariable(name: "stdout_fd", scope: !1683, file: !431, line: 166, type: !52)
!1686 = !DILocation(line: 0, scope: !1683)
!1687 = !DILocalVariable(name: "fd", arg: 1, scope: !1688, file: !431, line: 145, type: !52)
!1688 = distinct !DISubprogram(name: "is_open", scope: !431, file: !431, line: 145, type: !1689, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1691)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!52, !52}
!1691 = !{!1687}
!1692 = !DILocation(line: 0, scope: !1688, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 182, column: 25, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1683, file: !431, line: 182, column: 7)
!1695 = !DILocation(line: 157, column: 15, scope: !1688, inlinedAt: !1693)
!1696 = !DILocation(line: 157, column: 12, scope: !1688, inlinedAt: !1693)
!1697 = !DILocation(line: 182, column: 7, scope: !1683)
!1698 = !DILocation(line: 184, column: 5, scope: !1694)
!1699 = !DILocation(line: 185, column: 1, scope: !1683)
!1700 = distinct !DISubprogram(name: "error_tail", scope: !431, file: !431, line: 219, type: !1666, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1701)
!1701 = !{!1702, !1703, !1704, !1705}
!1702 = !DILocalVariable(name: "status", arg: 1, scope: !1700, file: !431, line: 219, type: !52)
!1703 = !DILocalVariable(name: "errnum", arg: 2, scope: !1700, file: !431, line: 219, type: !52)
!1704 = !DILocalVariable(name: "message", arg: 3, scope: !1700, file: !431, line: 219, type: !107)
!1705 = !DILocalVariable(name: "args", arg: 4, scope: !1700, file: !431, line: 219, type: !441)
!1706 = !DILocation(line: 0, scope: !1700)
!1707 = !DILocation(line: 229, column: 13, scope: !1700)
!1708 = !DILocalVariable(name: "__stream", arg: 1, scope: !1709, file: !895, line: 132, type: !1712)
!1709 = distinct !DISubprogram(name: "vfprintf", scope: !895, file: !895, line: 132, type: !1710, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1747)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!52, !1712, !899, !441}
!1712 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1713)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !1715)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !1716)
!1716 = !{!1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1715, file: !171, line: 51, baseType: !52, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1715, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1715, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1715, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1715, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1715, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1715, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1715, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1715, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1715, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1715, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1715, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1715, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1715, file: !171, line: 70, baseType: !1731, size: 64, offset: 832)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1715, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1715, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1715, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1715, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1715, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1715, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1715, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1715, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1715, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1715, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1715, file: !171, line: 93, baseType: !1731, size: 64, offset: 1344)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1715, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1715, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1715, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1715, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!1747 = !{!1708, !1748, !1749}
!1748 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1709, file: !895, line: 133, type: !899)
!1749 = !DILocalVariable(name: "__ap", arg: 3, scope: !1709, file: !895, line: 133, type: !441)
!1750 = !DILocation(line: 0, scope: !1709, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 229, column: 3, scope: !1700)
!1752 = !DILocation(line: 135, column: 10, scope: !1709, inlinedAt: !1751)
!1753 = !DILocation(line: 232, column: 3, scope: !1700)
!1754 = !DILocation(line: 233, column: 7, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1700, file: !431, line: 233, column: 7)
!1756 = !DILocation(line: 233, column: 7, scope: !1700)
!1757 = !DILocalVariable(name: "errnum", arg: 1, scope: !1758, file: !431, line: 188, type: !52)
!1758 = distinct !DISubprogram(name: "print_errno_message", scope: !431, file: !431, line: 188, type: !835, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1759)
!1759 = !{!1757, !1760, !1761}
!1760 = !DILocalVariable(name: "s", scope: !1758, file: !431, line: 190, type: !107)
!1761 = !DILocalVariable(name: "errbuf", scope: !1758, file: !431, line: 193, type: !1762)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1763)
!1763 = !{!1764}
!1764 = !DISubrange(count: 1024)
!1765 = !DILocation(line: 0, scope: !1758, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 234, column: 5, scope: !1755)
!1767 = !DILocation(line: 193, column: 3, scope: !1758, inlinedAt: !1766)
!1768 = !DILocation(line: 193, column: 8, scope: !1758, inlinedAt: !1766)
!1769 = !DILocation(line: 195, column: 7, scope: !1758, inlinedAt: !1766)
!1770 = !DILocation(line: 207, column: 9, scope: !1771, inlinedAt: !1766)
!1771 = distinct !DILexicalBlock(scope: !1758, file: !431, line: 207, column: 7)
!1772 = !DILocation(line: 207, column: 7, scope: !1758, inlinedAt: !1766)
!1773 = !DILocation(line: 208, column: 9, scope: !1771, inlinedAt: !1766)
!1774 = !DILocation(line: 208, column: 5, scope: !1771, inlinedAt: !1766)
!1775 = !DILocation(line: 214, column: 3, scope: !1758, inlinedAt: !1766)
!1776 = !DILocation(line: 216, column: 1, scope: !1758, inlinedAt: !1766)
!1777 = !DILocation(line: 234, column: 5, scope: !1755)
!1778 = !DILocation(line: 238, column: 3, scope: !1700)
!1779 = !DILocalVariable(name: "__c", arg: 1, scope: !1780, file: !1157, line: 101, type: !52)
!1780 = distinct !DISubprogram(name: "putc_unlocked", scope: !1157, file: !1157, line: 101, type: !1781, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1783)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!52, !52, !1713}
!1783 = !{!1779, !1784}
!1784 = !DILocalVariable(name: "__stream", arg: 2, scope: !1780, file: !1157, line: 101, type: !1713)
!1785 = !DILocation(line: 0, scope: !1780, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 238, column: 3, scope: !1700)
!1787 = !DILocation(line: 103, column: 10, scope: !1780, inlinedAt: !1786)
!1788 = !{!1165, !846, i64 40}
!1789 = !{!1165, !846, i64 48}
!1790 = !{!"branch_weights", i32 2000, i32 1}
!1791 = !DILocation(line: 240, column: 3, scope: !1700)
!1792 = !DILocation(line: 241, column: 7, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1700, file: !431, line: 241, column: 7)
!1794 = !DILocation(line: 241, column: 7, scope: !1700)
!1795 = !DILocation(line: 242, column: 5, scope: !1793)
!1796 = !DILocation(line: 243, column: 1, scope: !1700)
!1797 = !DISubprogram(name: "__vfprintf_chk", scope: !895, file: !895, line: 96, type: !1798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!52, !1712, !52, !899, !441}
!1800 = !DISubprogram(name: "strerror_r", scope: !1030, file: !1030, line: 444, type: !1801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!54, !52, !54, !104}
!1803 = !DISubprogram(name: "__overflow", scope: !904, file: !904, line: 886, type: !1804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!52, !1713, !52}
!1806 = !DISubprogram(name: "fflush_unlocked", scope: !904, file: !904, line: 239, type: !1807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!52, !1713}
!1809 = !DISubprogram(name: "fcntl", scope: !1810, file: !1810, line: 149, type: !1811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1810 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!52, !52, !52, null}
!1813 = distinct !DISubprogram(name: "error", scope: !431, file: !431, line: 285, type: !1814, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1816)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{null, !52, !52, !107, null}
!1816 = !{!1817, !1818, !1819, !1820}
!1817 = !DILocalVariable(name: "status", arg: 1, scope: !1813, file: !431, line: 285, type: !52)
!1818 = !DILocalVariable(name: "errnum", arg: 2, scope: !1813, file: !431, line: 285, type: !52)
!1819 = !DILocalVariable(name: "message", arg: 3, scope: !1813, file: !431, line: 285, type: !107)
!1820 = !DILocalVariable(name: "ap", scope: !1813, file: !431, line: 287, type: !1821)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !904, line: 52, baseType: !1822)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1823, line: 14, baseType: !1824)
!1823 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !445, baseType: !1825)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 192, elements: !35)
!1826 = !DILocation(line: 0, scope: !1813)
!1827 = !DILocation(line: 287, column: 3, scope: !1813)
!1828 = !DILocation(line: 287, column: 11, scope: !1813)
!1829 = !DILocation(line: 288, column: 3, scope: !1813)
!1830 = !DILocation(line: 289, column: 3, scope: !1813)
!1831 = !DILocation(line: 290, column: 3, scope: !1813)
!1832 = !DILocation(line: 291, column: 1, scope: !1813)
!1833 = !DILocation(line: 0, scope: !438)
!1834 = !DILocation(line: 302, column: 7, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !438, file: !431, line: 302, column: 7)
!1836 = !DILocation(line: 302, column: 7, scope: !438)
!1837 = !DILocation(line: 307, column: 11, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !431, line: 307, column: 11)
!1839 = distinct !DILexicalBlock(scope: !1835, file: !431, line: 303, column: 5)
!1840 = !DILocation(line: 307, column: 27, scope: !1838)
!1841 = !DILocation(line: 308, column: 11, scope: !1838)
!1842 = !DILocation(line: 308, column: 28, scope: !1838)
!1843 = !DILocation(line: 308, column: 25, scope: !1838)
!1844 = !DILocation(line: 309, column: 15, scope: !1838)
!1845 = !DILocation(line: 309, column: 33, scope: !1838)
!1846 = !DILocation(line: 310, column: 19, scope: !1838)
!1847 = !DILocation(line: 311, column: 22, scope: !1838)
!1848 = !DILocation(line: 311, column: 56, scope: !1838)
!1849 = !DILocation(line: 307, column: 11, scope: !1839)
!1850 = !DILocation(line: 316, column: 21, scope: !1839)
!1851 = !DILocation(line: 317, column: 23, scope: !1839)
!1852 = !DILocation(line: 318, column: 5, scope: !1839)
!1853 = !DILocation(line: 327, column: 3, scope: !438)
!1854 = !DILocation(line: 331, column: 7, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !438, file: !431, line: 331, column: 7)
!1856 = !DILocation(line: 331, column: 7, scope: !438)
!1857 = !DILocation(line: 332, column: 5, scope: !1855)
!1858 = !DILocation(line: 338, column: 7, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1855, file: !431, line: 334, column: 5)
!1860 = !DILocation(line: 346, column: 3, scope: !438)
!1861 = !DILocation(line: 350, column: 3, scope: !438)
!1862 = !DILocation(line: 356, column: 1, scope: !438)
!1863 = distinct !DISubprogram(name: "error_at_line", scope: !431, file: !431, line: 359, type: !1864, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1866)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{null, !52, !52, !107, !64, !107, null}
!1866 = !{!1867, !1868, !1869, !1870, !1871, !1872}
!1867 = !DILocalVariable(name: "status", arg: 1, scope: !1863, file: !431, line: 359, type: !52)
!1868 = !DILocalVariable(name: "errnum", arg: 2, scope: !1863, file: !431, line: 359, type: !52)
!1869 = !DILocalVariable(name: "file_name", arg: 3, scope: !1863, file: !431, line: 359, type: !107)
!1870 = !DILocalVariable(name: "line_number", arg: 4, scope: !1863, file: !431, line: 360, type: !64)
!1871 = !DILocalVariable(name: "message", arg: 5, scope: !1863, file: !431, line: 360, type: !107)
!1872 = !DILocalVariable(name: "ap", scope: !1863, file: !431, line: 362, type: !1821)
!1873 = !DILocation(line: 0, scope: !1863)
!1874 = !DILocation(line: 362, column: 3, scope: !1863)
!1875 = !DILocation(line: 362, column: 11, scope: !1863)
!1876 = !DILocation(line: 363, column: 3, scope: !1863)
!1877 = !DILocation(line: 364, column: 3, scope: !1863)
!1878 = !DILocation(line: 366, column: 3, scope: !1863)
!1879 = !DILocation(line: 367, column: 1, scope: !1863)
!1880 = distinct !DISubprogram(name: "fdadvise", scope: !751, file: !751, line: 25, type: !1881, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !1885)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !52, !1883, !1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !904, line: 63, baseType: !193)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !93, line: 51, baseType: !92)
!1885 = !{!1886, !1887, !1888, !1889}
!1886 = !DILocalVariable(name: "fd", arg: 1, scope: !1880, file: !751, line: 25, type: !52)
!1887 = !DILocalVariable(name: "offset", arg: 2, scope: !1880, file: !751, line: 25, type: !1883)
!1888 = !DILocalVariable(name: "len", arg: 3, scope: !1880, file: !751, line: 25, type: !1883)
!1889 = !DILocalVariable(name: "advice", arg: 4, scope: !1880, file: !751, line: 25, type: !1884)
!1890 = !DILocation(line: 0, scope: !1880)
!1891 = !DILocation(line: 28, column: 3, scope: !1880)
!1892 = !DILocation(line: 30, column: 1, scope: !1880)
!1893 = !DISubprogram(name: "posix_fadvise", scope: !1810, file: !1810, line: 273, type: !1894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!52, !52, !1883, !1883, !52}
!1896 = distinct !DISubprogram(name: "fadvise", scope: !751, file: !751, line: 33, type: !1897, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !1933)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{null, !1899, !1884}
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !1901)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !1902)
!1902 = !{!1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1901, file: !171, line: 51, baseType: !52, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1901, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1901, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1901, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1901, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1901, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1901, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1901, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1901, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1901, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1901, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1901, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1901, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1901, file: !171, line: 70, baseType: !1917, size: 64, offset: 832)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1901, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1901, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1901, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1901, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1901, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1901, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1901, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1901, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1901, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1901, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1901, file: !171, line: 93, baseType: !1917, size: 64, offset: 1344)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1901, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1901, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1901, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1901, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!1933 = !{!1934, !1935}
!1934 = !DILocalVariable(name: "fp", arg: 1, scope: !1896, file: !751, line: 33, type: !1899)
!1935 = !DILocalVariable(name: "advice", arg: 2, scope: !1896, file: !751, line: 33, type: !1884)
!1936 = !DILocation(line: 0, scope: !1896)
!1937 = !DILocation(line: 35, column: 7, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1896, file: !751, line: 35, column: 7)
!1939 = !DILocation(line: 35, column: 7, scope: !1896)
!1940 = !DILocation(line: 36, column: 15, scope: !1938)
!1941 = !DILocation(line: 0, scope: !1880, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 36, column: 5, scope: !1938)
!1943 = !DILocation(line: 28, column: 3, scope: !1880, inlinedAt: !1942)
!1944 = !DILocation(line: 36, column: 5, scope: !1938)
!1945 = !DILocation(line: 37, column: 1, scope: !1896)
!1946 = !DISubprogram(name: "fileno", scope: !904, file: !904, line: 809, type: !1947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!52, !1899}
!1949 = distinct !DISubprogram(name: "rpl_fclose", scope: !754, file: !754, line: 58, type: !1950, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !1986)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!52, !1952}
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !1954)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !1955)
!1955 = !{!1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1954, file: !171, line: 51, baseType: !52, size: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1954, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1954, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1954, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1954, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1954, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1954, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1954, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1954, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1954, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1954, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1954, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1954, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1954, file: !171, line: 70, baseType: !1970, size: 64, offset: 832)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1954, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1954, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1954, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1954, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1954, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1954, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1954, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1954, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1954, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1954, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1954, file: !171, line: 93, baseType: !1970, size: 64, offset: 1344)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1954, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1954, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1954, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1954, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!1986 = !{!1987, !1988, !1989, !1990}
!1987 = !DILocalVariable(name: "fp", arg: 1, scope: !1949, file: !754, line: 58, type: !1952)
!1988 = !DILocalVariable(name: "saved_errno", scope: !1949, file: !754, line: 60, type: !52)
!1989 = !DILocalVariable(name: "fd", scope: !1949, file: !754, line: 63, type: !52)
!1990 = !DILocalVariable(name: "result", scope: !1949, file: !754, line: 74, type: !52)
!1991 = !DILocation(line: 0, scope: !1949)
!1992 = !DILocation(line: 63, column: 12, scope: !1949)
!1993 = !DILocation(line: 64, column: 10, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1949, file: !754, line: 64, column: 7)
!1995 = !DILocation(line: 64, column: 7, scope: !1949)
!1996 = !DILocation(line: 65, column: 12, scope: !1994)
!1997 = !DILocation(line: 65, column: 5, scope: !1994)
!1998 = !DILocation(line: 70, column: 9, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1949, file: !754, line: 70, column: 7)
!2000 = !DILocation(line: 70, column: 23, scope: !1999)
!2001 = !DILocation(line: 70, column: 33, scope: !1999)
!2002 = !DILocation(line: 70, column: 26, scope: !1999)
!2003 = !DILocation(line: 70, column: 59, scope: !1999)
!2004 = !DILocation(line: 71, column: 7, scope: !1999)
!2005 = !DILocation(line: 71, column: 10, scope: !1999)
!2006 = !DILocation(line: 70, column: 7, scope: !1949)
!2007 = !DILocation(line: 100, column: 12, scope: !1949)
!2008 = !DILocation(line: 105, column: 7, scope: !1949)
!2009 = !DILocation(line: 72, column: 19, scope: !1999)
!2010 = !DILocation(line: 105, column: 19, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1949, file: !754, line: 105, column: 7)
!2012 = !DILocation(line: 107, column: 13, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2011, file: !754, line: 106, column: 5)
!2014 = !DILocation(line: 109, column: 5, scope: !2013)
!2015 = !DILocation(line: 112, column: 1, scope: !1949)
!2016 = !DISubprogram(name: "fclose", scope: !904, file: !904, line: 178, type: !1950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2017 = !DISubprogram(name: "__freading", scope: !2018, file: !2018, line: 51, type: !1950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2018 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2019 = !DISubprogram(name: "lseek", scope: !1664, file: !1664, line: 339, type: !2020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!193, !52, !193, !52}
!2022 = distinct !DISubprogram(name: "rpl_fflush", scope: !756, file: !756, line: 130, type: !2023, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !2059)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!52, !2025}
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2027)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2028)
!2028 = !{!2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2027, file: !171, line: 51, baseType: !52, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2027, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2027, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2027, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2027, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2027, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2027, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2027, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2027, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2027, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2027, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2027, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2027, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2027, file: !171, line: 70, baseType: !2043, size: 64, offset: 832)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2027, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2027, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2027, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2027, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2027, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2027, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2027, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2027, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2027, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2027, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2027, file: !171, line: 93, baseType: !2043, size: 64, offset: 1344)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2027, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2027, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2027, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2027, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2059 = !{!2060}
!2060 = !DILocalVariable(name: "stream", arg: 1, scope: !2022, file: !756, line: 130, type: !2025)
!2061 = !DILocation(line: 0, scope: !2022)
!2062 = !DILocation(line: 151, column: 14, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2022, file: !756, line: 151, column: 7)
!2064 = !DILocation(line: 151, column: 22, scope: !2063)
!2065 = !DILocation(line: 151, column: 27, scope: !2063)
!2066 = !DILocation(line: 151, column: 7, scope: !2022)
!2067 = !DILocation(line: 152, column: 12, scope: !2063)
!2068 = !DILocation(line: 152, column: 5, scope: !2063)
!2069 = !DILocalVariable(name: "fp", arg: 1, scope: !2070, file: !756, line: 42, type: !2025)
!2070 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !756, file: !756, line: 42, type: !2071, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !2073)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{null, !2025}
!2073 = !{!2069}
!2074 = !DILocation(line: 0, scope: !2070, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 157, column: 3, scope: !2022)
!2076 = !DILocation(line: 44, column: 12, scope: !2077, inlinedAt: !2075)
!2077 = distinct !DILexicalBlock(scope: !2070, file: !756, line: 44, column: 7)
!2078 = !DILocation(line: 44, column: 19, scope: !2077, inlinedAt: !2075)
!2079 = !DILocation(line: 44, column: 7, scope: !2070, inlinedAt: !2075)
!2080 = !DILocation(line: 46, column: 5, scope: !2077, inlinedAt: !2075)
!2081 = !DILocation(line: 159, column: 10, scope: !2022)
!2082 = !DILocation(line: 159, column: 3, scope: !2022)
!2083 = !DILocation(line: 236, column: 1, scope: !2022)
!2084 = !DISubprogram(name: "fflush", scope: !904, file: !904, line: 230, type: !2023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2085 = distinct !DISubprogram(name: "freopen_safer", scope: !482, file: !482, line: 60, type: !2086, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !2122)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!2088, !107, !107, !2088}
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2090)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2091)
!2091 = !{!2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2090, file: !171, line: 51, baseType: !52, size: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2090, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2090, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2090, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2090, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2090, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2090, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2090, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2090, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2090, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2090, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2090, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2090, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2090, file: !171, line: 70, baseType: !2106, size: 64, offset: 832)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2090, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2090, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2090, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2090, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2090, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2090, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2090, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2090, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2090, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2090, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2090, file: !171, line: 93, baseType: !2106, size: 64, offset: 1344)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2090, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2090, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2090, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2090, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2122 = !{!2123, !2124, !2125, !2126, !2127, !2128, !2129}
!2123 = !DILocalVariable(name: "name", arg: 1, scope: !2085, file: !482, line: 60, type: !107)
!2124 = !DILocalVariable(name: "mode", arg: 2, scope: !2085, file: !482, line: 60, type: !107)
!2125 = !DILocalVariable(name: "f", arg: 3, scope: !2085, file: !482, line: 60, type: !2088)
!2126 = !DILocalVariable(name: "protect_in", scope: !2085, file: !482, line: 68, type: !154)
!2127 = !DILocalVariable(name: "protect_out", scope: !2085, file: !482, line: 69, type: !154)
!2128 = !DILocalVariable(name: "protect_err", scope: !2085, file: !482, line: 70, type: !154)
!2129 = !DILocalVariable(name: "saved_errno", scope: !2085, file: !482, line: 98, type: !52)
!2130 = !DILocation(line: 0, scope: !2085)
!2131 = !DILocation(line: 72, column: 11, scope: !2085)
!2132 = !DILocation(line: 72, column: 3, scope: !2085)
!2133 = !DILocation(line: 75, column: 11, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !482, line: 75, column: 11)
!2135 = distinct !DILexicalBlock(scope: !2085, file: !482, line: 73, column: 5)
!2136 = !DILocation(line: 75, column: 47, scope: !2134)
!2137 = !DILocation(line: 75, column: 11, scope: !2135)
!2138 = !DILocation(line: 79, column: 11, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2135, file: !482, line: 79, column: 11)
!2140 = !DILocation(line: 79, column: 47, scope: !2139)
!2141 = !DILocation(line: 79, column: 11, scope: !2135)
!2142 = !DILocation(line: 83, column: 11, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2135, file: !482, line: 83, column: 11)
!2144 = !DILocation(line: 83, column: 45, scope: !2143)
!2145 = !DILocation(line: 90, column: 18, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2085, file: !482, line: 90, column: 7)
!2147 = !DILocalVariable(name: "fd", arg: 1, scope: !2148, file: !482, line: 38, type: !52)
!2148 = distinct !DISubprogram(name: "protect_fd", scope: !482, file: !482, line: 38, type: !2149, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !2151)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!154, !52}
!2151 = !{!2147, !2152}
!2152 = !DILocalVariable(name: "value", scope: !2148, file: !482, line: 40, type: !52)
!2153 = !DILocation(line: 0, scope: !2148, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 90, column: 22, scope: !2146)
!2155 = !DILocation(line: 40, column: 15, scope: !2148, inlinedAt: !2154)
!2156 = !DILocation(line: 41, column: 7, scope: !2148, inlinedAt: !2154)
!2157 = !DILocation(line: 45, column: 11, scope: !2158, inlinedAt: !2154)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !482, line: 44, column: 9)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !482, line: 43, column: 11)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !482, line: 42, column: 5)
!2161 = distinct !DILexicalBlock(scope: !2148, file: !482, line: 41, column: 7)
!2162 = !DILocation(line: 46, column: 11, scope: !2158, inlinedAt: !2154)
!2163 = !DILocation(line: 46, column: 17, scope: !2158, inlinedAt: !2154)
!2164 = !DILocation(line: 90, column: 7, scope: !2085)
!2165 = !DILocation(line: 41, column: 13, scope: !2161, inlinedAt: !2154)
!2166 = !DILocation(line: 92, column: 12, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2146, file: !482, line: 92, column: 12)
!2168 = !DILocation(line: 92, column: 24, scope: !2167)
!2169 = !DILocation(line: 0, scope: !2148, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 92, column: 28, scope: !2167)
!2171 = !DILocation(line: 40, column: 15, scope: !2148, inlinedAt: !2170)
!2172 = !DILocation(line: 41, column: 13, scope: !2161, inlinedAt: !2170)
!2173 = !DILocation(line: 41, column: 7, scope: !2148, inlinedAt: !2170)
!2174 = !DILocation(line: 45, column: 11, scope: !2158, inlinedAt: !2170)
!2175 = !DILocation(line: 46, column: 11, scope: !2158, inlinedAt: !2170)
!2176 = !DILocation(line: 46, column: 17, scope: !2158, inlinedAt: !2170)
!2177 = !DILocation(line: 47, column: 9, scope: !2158, inlinedAt: !2170)
!2178 = !DILocation(line: 92, column: 12, scope: !2146)
!2179 = !DILocation(line: 94, column: 12, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2167, file: !482, line: 94, column: 12)
!2181 = !DILocation(line: 94, column: 24, scope: !2180)
!2182 = !DILocation(line: 0, scope: !2148, inlinedAt: !2183)
!2183 = distinct !DILocation(line: 94, column: 28, scope: !2180)
!2184 = !DILocation(line: 40, column: 15, scope: !2148, inlinedAt: !2183)
!2185 = !DILocation(line: 41, column: 13, scope: !2161, inlinedAt: !2183)
!2186 = !DILocation(line: 41, column: 7, scope: !2148, inlinedAt: !2183)
!2187 = !DILocation(line: 45, column: 11, scope: !2158, inlinedAt: !2183)
!2188 = !DILocation(line: 46, column: 11, scope: !2158, inlinedAt: !2183)
!2189 = !DILocation(line: 46, column: 17, scope: !2158, inlinedAt: !2183)
!2190 = !DILocation(line: 47, column: 9, scope: !2158, inlinedAt: !2183)
!2191 = !DILocation(line: 94, column: 12, scope: !2167)
!2192 = !DILocation(line: 98, column: 21, scope: !2085)
!2193 = !DILocation(line: 99, column: 7, scope: !2085)
!2194 = !DILocation(line: 97, column: 9, scope: !2180)
!2195 = !DILocation(line: 0, scope: !2146)
!2196 = !DILocation(line: 99, column: 7, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2085, file: !482, line: 99, column: 7)
!2198 = !DILocation(line: 100, column: 5, scope: !2197)
!2199 = !DILocation(line: 101, column: 7, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2085, file: !482, line: 101, column: 7)
!2201 = !DILocation(line: 101, column: 7, scope: !2085)
!2202 = !DILocation(line: 102, column: 5, scope: !2200)
!2203 = !DILocation(line: 103, column: 7, scope: !2085)
!2204 = !DILocation(line: 104, column: 5, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2085, file: !482, line: 103, column: 7)
!2206 = !DILocation(line: 105, column: 8, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2085, file: !482, line: 105, column: 7)
!2208 = !DILocation(line: 105, column: 7, scope: !2085)
!2209 = !DILocation(line: 106, column: 11, scope: !2207)
!2210 = !DILocation(line: 106, column: 5, scope: !2207)
!2211 = !DILocation(line: 107, column: 3, scope: !2085)
!2212 = !DISubprogram(name: "dup2", scope: !1664, file: !1664, line: 555, type: !2213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!52, !52, !52}
!2215 = !DISubprogram(name: "open", scope: !1810, file: !1810, line: 181, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!52, !107, !52, null}
!2218 = !DISubprogram(name: "close", scope: !1664, file: !1664, line: 358, type: !1689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2219 = !DISubprogram(name: "freopen", scope: !904, file: !904, line: 265, type: !2220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!2088, !899, !899, !2222}
!2222 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2088)
!2223 = distinct !DISubprogram(name: "rpl_fseeko", scope: !761, file: !761, line: 28, type: !2224, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !2260)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!52, !2226, !1883, !52}
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2228)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2229)
!2229 = !{!2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2228, file: !171, line: 51, baseType: !52, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2228, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2228, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2228, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2228, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2228, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2228, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2228, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2228, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2228, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2228, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2228, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2228, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2228, file: !171, line: 70, baseType: !2244, size: 64, offset: 832)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2228, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2228, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2228, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2228, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2228, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2228, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2228, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2228, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2228, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2228, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2228, file: !171, line: 93, baseType: !2244, size: 64, offset: 1344)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2228, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2228, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2228, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2228, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2260 = !{!2261, !2262, !2263, !2264}
!2261 = !DILocalVariable(name: "fp", arg: 1, scope: !2223, file: !761, line: 28, type: !2226)
!2262 = !DILocalVariable(name: "offset", arg: 2, scope: !2223, file: !761, line: 28, type: !1883)
!2263 = !DILocalVariable(name: "whence", arg: 3, scope: !2223, file: !761, line: 28, type: !52)
!2264 = !DILocalVariable(name: "pos", scope: !2265, file: !761, line: 123, type: !1883)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !761, line: 119, column: 5)
!2266 = distinct !DILexicalBlock(scope: !2223, file: !761, line: 55, column: 7)
!2267 = !DILocation(line: 0, scope: !2223)
!2268 = !DILocation(line: 55, column: 12, scope: !2266)
!2269 = !{!1165, !846, i64 16}
!2270 = !DILocation(line: 55, column: 33, scope: !2266)
!2271 = !{!1165, !846, i64 8}
!2272 = !DILocation(line: 55, column: 25, scope: !2266)
!2273 = !DILocation(line: 56, column: 7, scope: !2266)
!2274 = !DILocation(line: 56, column: 15, scope: !2266)
!2275 = !DILocation(line: 56, column: 37, scope: !2266)
!2276 = !{!1165, !846, i64 32}
!2277 = !DILocation(line: 56, column: 29, scope: !2266)
!2278 = !DILocation(line: 57, column: 7, scope: !2266)
!2279 = !DILocation(line: 57, column: 15, scope: !2266)
!2280 = !{!1165, !846, i64 72}
!2281 = !DILocation(line: 57, column: 29, scope: !2266)
!2282 = !DILocation(line: 55, column: 7, scope: !2223)
!2283 = !DILocation(line: 123, column: 26, scope: !2265)
!2284 = !DILocation(line: 123, column: 19, scope: !2265)
!2285 = !DILocation(line: 0, scope: !2265)
!2286 = !DILocation(line: 124, column: 15, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2265, file: !761, line: 124, column: 11)
!2288 = !DILocation(line: 124, column: 11, scope: !2265)
!2289 = !DILocation(line: 135, column: 19, scope: !2265)
!2290 = !DILocation(line: 136, column: 12, scope: !2265)
!2291 = !DILocation(line: 136, column: 20, scope: !2265)
!2292 = !{!1165, !1166, i64 144}
!2293 = !DILocation(line: 167, column: 7, scope: !2265)
!2294 = !DILocation(line: 169, column: 10, scope: !2223)
!2295 = !DILocation(line: 169, column: 3, scope: !2223)
!2296 = !DILocation(line: 170, column: 1, scope: !2223)
!2297 = !DISubprogram(name: "fseeko", scope: !904, file: !904, line: 736, type: !2298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!52, !2226, !193, !52}
!2300 = distinct !DISubprogram(name: "getprogname", scope: !763, file: !763, line: 54, type: !2301, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !853)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!107}
!2303 = !DILocation(line: 58, column: 10, scope: !2300)
!2304 = !DILocation(line: 58, column: 3, scope: !2300)
!2305 = distinct !DISubprogram(name: "set_program_name", scope: !486, file: !486, line: 37, type: !860, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !2306)
!2306 = !{!2307, !2308, !2309}
!2307 = !DILocalVariable(name: "argv0", arg: 1, scope: !2305, file: !486, line: 37, type: !107)
!2308 = !DILocalVariable(name: "slash", scope: !2305, file: !486, line: 44, type: !107)
!2309 = !DILocalVariable(name: "base", scope: !2305, file: !486, line: 45, type: !107)
!2310 = !DILocation(line: 0, scope: !2305)
!2311 = !DILocation(line: 44, column: 23, scope: !2305)
!2312 = !DILocation(line: 45, column: 22, scope: !2305)
!2313 = !DILocation(line: 46, column: 17, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2305, file: !486, line: 46, column: 7)
!2315 = !DILocation(line: 46, column: 9, scope: !2314)
!2316 = !DILocation(line: 46, column: 25, scope: !2314)
!2317 = !DILocation(line: 46, column: 40, scope: !2314)
!2318 = !DILocalVariable(name: "__s1", arg: 1, scope: !2319, file: !922, line: 974, type: !1058)
!2319 = distinct !DISubprogram(name: "memeq", scope: !922, file: !922, line: 974, type: !2320, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !2322)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!154, !1058, !1058, !104}
!2322 = !{!2318, !2323, !2324}
!2323 = !DILocalVariable(name: "__s2", arg: 2, scope: !2319, file: !922, line: 974, type: !1058)
!2324 = !DILocalVariable(name: "__n", arg: 3, scope: !2319, file: !922, line: 974, type: !104)
!2325 = !DILocation(line: 0, scope: !2319, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 46, column: 28, scope: !2314)
!2327 = !DILocation(line: 976, column: 11, scope: !2319, inlinedAt: !2326)
!2328 = !DILocation(line: 976, column: 10, scope: !2319, inlinedAt: !2326)
!2329 = !DILocation(line: 46, column: 7, scope: !2305)
!2330 = !DILocation(line: 49, column: 11, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !486, line: 49, column: 11)
!2332 = distinct !DILexicalBlock(scope: !2314, file: !486, line: 47, column: 5)
!2333 = !DILocation(line: 49, column: 36, scope: !2331)
!2334 = !DILocation(line: 49, column: 11, scope: !2332)
!2335 = !DILocation(line: 65, column: 16, scope: !2305)
!2336 = !DILocation(line: 71, column: 27, scope: !2305)
!2337 = !DILocation(line: 74, column: 33, scope: !2305)
!2338 = !DILocation(line: 76, column: 1, scope: !2305)
!2339 = !DISubprogram(name: "strrchr", scope: !1030, file: !1030, line: 273, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2340 = !DILocation(line: 0, scope: !495)
!2341 = !DILocation(line: 40, column: 29, scope: !495)
!2342 = !DILocation(line: 41, column: 19, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !495, file: !496, line: 41, column: 7)
!2344 = !DILocation(line: 41, column: 7, scope: !495)
!2345 = !DILocation(line: 47, column: 3, scope: !495)
!2346 = !DILocation(line: 48, column: 3, scope: !495)
!2347 = !DILocation(line: 48, column: 13, scope: !495)
!2348 = !DILocalVariable(name: "ps", arg: 1, scope: !2349, file: !2350, line: 1135, type: !2353)
!2349 = distinct !DISubprogram(name: "mbszero", scope: !2350, file: !2350, line: 1135, type: !2351, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !499, retainedNodes: !2354)
!2350 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2351 = !DISubroutineType(types: !2352)
!2352 = !{null, !2353}
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!2354 = !{!2348}
!2355 = !DILocation(line: 0, scope: !2349, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 48, column: 18, scope: !495)
!2357 = !DILocalVariable(name: "__dest", arg: 1, scope: !2358, file: !2359, line: 57, type: !102)
!2358 = distinct !DISubprogram(name: "memset", scope: !2359, file: !2359, line: 57, type: !2360, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !499, retainedNodes: !2362)
!2359 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!102, !102, !52, !104}
!2362 = !{!2357, !2363, !2364}
!2363 = !DILocalVariable(name: "__ch", arg: 2, scope: !2358, file: !2359, line: 57, type: !52)
!2364 = !DILocalVariable(name: "__len", arg: 3, scope: !2358, file: !2359, line: 57, type: !104)
!2365 = !DILocation(line: 0, scope: !2358, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 1137, column: 3, scope: !2349, inlinedAt: !2356)
!2367 = !DILocation(line: 59, column: 10, scope: !2358, inlinedAt: !2366)
!2368 = !DILocation(line: 49, column: 7, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !495, file: !496, line: 49, column: 7)
!2370 = !DILocation(line: 49, column: 39, scope: !2369)
!2371 = !DILocation(line: 49, column: 44, scope: !2369)
!2372 = !DILocation(line: 54, column: 1, scope: !495)
!2373 = !DISubprogram(name: "mbrtoc32", scope: !507, file: !507, line: 57, type: !2374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!104, !2376, !899, !104, !2378}
!2376 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2377)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2353)
!2379 = distinct !DISubprogram(name: "clone_quoting_options", scope: !526, file: !526, line: 113, type: !2380, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2383)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!2382, !2382}
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!2383 = !{!2384, !2385, !2386}
!2384 = !DILocalVariable(name: "o", arg: 1, scope: !2379, file: !526, line: 113, type: !2382)
!2385 = !DILocalVariable(name: "saved_errno", scope: !2379, file: !526, line: 115, type: !52)
!2386 = !DILocalVariable(name: "p", scope: !2379, file: !526, line: 116, type: !2382)
!2387 = !DILocation(line: 0, scope: !2379)
!2388 = !DILocation(line: 115, column: 21, scope: !2379)
!2389 = !DILocation(line: 116, column: 40, scope: !2379)
!2390 = !DILocation(line: 116, column: 31, scope: !2379)
!2391 = !DILocation(line: 118, column: 9, scope: !2379)
!2392 = !DILocation(line: 119, column: 3, scope: !2379)
!2393 = distinct !DISubprogram(name: "get_quoting_style", scope: !526, file: !526, line: 124, type: !2394, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2398)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!78, !2396}
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!2398 = !{!2399}
!2399 = !DILocalVariable(name: "o", arg: 1, scope: !2393, file: !526, line: 124, type: !2396)
!2400 = !DILocation(line: 0, scope: !2393)
!2401 = !DILocation(line: 126, column: 11, scope: !2393)
!2402 = !DILocation(line: 126, column: 46, scope: !2393)
!2403 = !{!2404, !847, i64 0}
!2404 = !{!"quoting_options", !847, i64 0, !910, i64 4, !847, i64 8, !846, i64 40, !846, i64 48}
!2405 = !DILocation(line: 126, column: 3, scope: !2393)
!2406 = distinct !DISubprogram(name: "set_quoting_style", scope: !526, file: !526, line: 132, type: !2407, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2409)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{null, !2382, !78}
!2409 = !{!2410, !2411}
!2410 = !DILocalVariable(name: "o", arg: 1, scope: !2406, file: !526, line: 132, type: !2382)
!2411 = !DILocalVariable(name: "s", arg: 2, scope: !2406, file: !526, line: 132, type: !78)
!2412 = !DILocation(line: 0, scope: !2406)
!2413 = !DILocation(line: 134, column: 4, scope: !2406)
!2414 = !DILocation(line: 134, column: 45, scope: !2406)
!2415 = !DILocation(line: 135, column: 1, scope: !2406)
!2416 = distinct !DISubprogram(name: "set_char_quoting", scope: !526, file: !526, line: 143, type: !2417, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!52, !2382, !4, !52}
!2419 = !{!2420, !2421, !2422, !2423, !2424, !2426, !2427}
!2420 = !DILocalVariable(name: "o", arg: 1, scope: !2416, file: !526, line: 143, type: !2382)
!2421 = !DILocalVariable(name: "c", arg: 2, scope: !2416, file: !526, line: 143, type: !4)
!2422 = !DILocalVariable(name: "i", arg: 3, scope: !2416, file: !526, line: 143, type: !52)
!2423 = !DILocalVariable(name: "uc", scope: !2416, file: !526, line: 145, type: !109)
!2424 = !DILocalVariable(name: "p", scope: !2416, file: !526, line: 146, type: !2425)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!2426 = !DILocalVariable(name: "shift", scope: !2416, file: !526, line: 148, type: !52)
!2427 = !DILocalVariable(name: "r", scope: !2416, file: !526, line: 149, type: !64)
!2428 = !DILocation(line: 0, scope: !2416)
!2429 = !DILocation(line: 147, column: 6, scope: !2416)
!2430 = !DILocation(line: 147, column: 41, scope: !2416)
!2431 = !DILocation(line: 147, column: 62, scope: !2416)
!2432 = !DILocation(line: 147, column: 57, scope: !2416)
!2433 = !DILocation(line: 148, column: 15, scope: !2416)
!2434 = !DILocation(line: 149, column: 21, scope: !2416)
!2435 = !DILocation(line: 149, column: 24, scope: !2416)
!2436 = !DILocation(line: 149, column: 34, scope: !2416)
!2437 = !DILocation(line: 150, column: 19, scope: !2416)
!2438 = !DILocation(line: 150, column: 24, scope: !2416)
!2439 = !DILocation(line: 150, column: 6, scope: !2416)
!2440 = !DILocation(line: 151, column: 3, scope: !2416)
!2441 = distinct !DISubprogram(name: "set_quoting_flags", scope: !526, file: !526, line: 159, type: !2442, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2444)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!52, !2382, !52}
!2444 = !{!2445, !2446, !2447}
!2445 = !DILocalVariable(name: "o", arg: 1, scope: !2441, file: !526, line: 159, type: !2382)
!2446 = !DILocalVariable(name: "i", arg: 2, scope: !2441, file: !526, line: 159, type: !52)
!2447 = !DILocalVariable(name: "r", scope: !2441, file: !526, line: 163, type: !52)
!2448 = !DILocation(line: 0, scope: !2441)
!2449 = !DILocation(line: 161, column: 8, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2441, file: !526, line: 161, column: 7)
!2451 = !DILocation(line: 161, column: 7, scope: !2441)
!2452 = !DILocation(line: 163, column: 14, scope: !2441)
!2453 = !{!2404, !910, i64 4}
!2454 = !DILocation(line: 164, column: 12, scope: !2441)
!2455 = !DILocation(line: 165, column: 3, scope: !2441)
!2456 = distinct !DISubprogram(name: "set_custom_quoting", scope: !526, file: !526, line: 169, type: !2457, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2459)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{null, !2382, !107, !107}
!2459 = !{!2460, !2461, !2462}
!2460 = !DILocalVariable(name: "o", arg: 1, scope: !2456, file: !526, line: 169, type: !2382)
!2461 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2456, file: !526, line: 170, type: !107)
!2462 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2456, file: !526, line: 170, type: !107)
!2463 = !DILocation(line: 0, scope: !2456)
!2464 = !DILocation(line: 172, column: 8, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2456, file: !526, line: 172, column: 7)
!2466 = !DILocation(line: 172, column: 7, scope: !2456)
!2467 = !DILocation(line: 174, column: 12, scope: !2456)
!2468 = !DILocation(line: 175, column: 8, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2456, file: !526, line: 175, column: 7)
!2470 = !DILocation(line: 175, column: 19, scope: !2469)
!2471 = !DILocation(line: 176, column: 5, scope: !2469)
!2472 = !DILocation(line: 177, column: 6, scope: !2456)
!2473 = !DILocation(line: 177, column: 17, scope: !2456)
!2474 = !{!2404, !846, i64 40}
!2475 = !DILocation(line: 178, column: 6, scope: !2456)
!2476 = !DILocation(line: 178, column: 18, scope: !2456)
!2477 = !{!2404, !846, i64 48}
!2478 = !DILocation(line: 179, column: 1, scope: !2456)
!2479 = !DISubprogram(name: "abort", scope: !1034, file: !1034, line: 598, type: !478, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2480 = distinct !DISubprogram(name: "quotearg_buffer", scope: !526, file: !526, line: 774, type: !2481, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!104, !54, !104, !107, !104, !2396}
!2483 = !{!2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491}
!2484 = !DILocalVariable(name: "buffer", arg: 1, scope: !2480, file: !526, line: 774, type: !54)
!2485 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2480, file: !526, line: 774, type: !104)
!2486 = !DILocalVariable(name: "arg", arg: 3, scope: !2480, file: !526, line: 775, type: !107)
!2487 = !DILocalVariable(name: "argsize", arg: 4, scope: !2480, file: !526, line: 775, type: !104)
!2488 = !DILocalVariable(name: "o", arg: 5, scope: !2480, file: !526, line: 776, type: !2396)
!2489 = !DILocalVariable(name: "p", scope: !2480, file: !526, line: 778, type: !2396)
!2490 = !DILocalVariable(name: "saved_errno", scope: !2480, file: !526, line: 779, type: !52)
!2491 = !DILocalVariable(name: "r", scope: !2480, file: !526, line: 780, type: !104)
!2492 = !DILocation(line: 0, scope: !2480)
!2493 = !DILocation(line: 778, column: 37, scope: !2480)
!2494 = !DILocation(line: 779, column: 21, scope: !2480)
!2495 = !DILocation(line: 781, column: 43, scope: !2480)
!2496 = !DILocation(line: 781, column: 53, scope: !2480)
!2497 = !DILocation(line: 781, column: 63, scope: !2480)
!2498 = !DILocation(line: 782, column: 43, scope: !2480)
!2499 = !DILocation(line: 782, column: 58, scope: !2480)
!2500 = !DILocation(line: 780, column: 14, scope: !2480)
!2501 = !DILocation(line: 783, column: 9, scope: !2480)
!2502 = !DILocation(line: 784, column: 3, scope: !2480)
!2503 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !526, file: !526, line: 251, type: !2504, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2508)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!104, !54, !104, !107, !104, !78, !52, !2506, !107, !107}
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!2508 = !{!2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2533, !2535, !2538, !2539, !2540, !2541, !2544, !2545, !2548, !2552, !2553, !2561, !2564, !2565, !2567, !2568, !2569, !2570}
!2509 = !DILocalVariable(name: "buffer", arg: 1, scope: !2503, file: !526, line: 251, type: !54)
!2510 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2503, file: !526, line: 251, type: !104)
!2511 = !DILocalVariable(name: "arg", arg: 3, scope: !2503, file: !526, line: 252, type: !107)
!2512 = !DILocalVariable(name: "argsize", arg: 4, scope: !2503, file: !526, line: 252, type: !104)
!2513 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2503, file: !526, line: 253, type: !78)
!2514 = !DILocalVariable(name: "flags", arg: 6, scope: !2503, file: !526, line: 253, type: !52)
!2515 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2503, file: !526, line: 254, type: !2506)
!2516 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2503, file: !526, line: 255, type: !107)
!2517 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2503, file: !526, line: 256, type: !107)
!2518 = !DILocalVariable(name: "unibyte_locale", scope: !2503, file: !526, line: 258, type: !154)
!2519 = !DILocalVariable(name: "len", scope: !2503, file: !526, line: 260, type: !104)
!2520 = !DILocalVariable(name: "orig_buffersize", scope: !2503, file: !526, line: 261, type: !104)
!2521 = !DILocalVariable(name: "quote_string", scope: !2503, file: !526, line: 262, type: !107)
!2522 = !DILocalVariable(name: "quote_string_len", scope: !2503, file: !526, line: 263, type: !104)
!2523 = !DILocalVariable(name: "backslash_escapes", scope: !2503, file: !526, line: 264, type: !154)
!2524 = !DILocalVariable(name: "elide_outer_quotes", scope: !2503, file: !526, line: 265, type: !154)
!2525 = !DILocalVariable(name: "encountered_single_quote", scope: !2503, file: !526, line: 266, type: !154)
!2526 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2503, file: !526, line: 267, type: !154)
!2527 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2503, file: !526, line: 309, type: !154)
!2528 = !DILocalVariable(name: "lq", scope: !2529, file: !526, line: 361, type: !107)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !526, line: 361, column: 11)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !526, line: 360, column: 13)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !526, line: 333, column: 7)
!2532 = distinct !DILexicalBlock(scope: !2503, file: !526, line: 312, column: 5)
!2533 = !DILocalVariable(name: "i", scope: !2534, file: !526, line: 395, type: !104)
!2534 = distinct !DILexicalBlock(scope: !2503, file: !526, line: 395, column: 3)
!2535 = !DILocalVariable(name: "is_right_quote", scope: !2536, file: !526, line: 397, type: !154)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !526, line: 396, column: 5)
!2537 = distinct !DILexicalBlock(scope: !2534, file: !526, line: 395, column: 3)
!2538 = !DILocalVariable(name: "escaping", scope: !2536, file: !526, line: 398, type: !154)
!2539 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2536, file: !526, line: 399, type: !154)
!2540 = !DILocalVariable(name: "c", scope: !2536, file: !526, line: 417, type: !109)
!2541 = !DILocalVariable(name: "m", scope: !2542, file: !526, line: 598, type: !104)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !526, line: 596, column: 11)
!2543 = distinct !DILexicalBlock(scope: !2536, file: !526, line: 419, column: 9)
!2544 = !DILocalVariable(name: "printable", scope: !2542, file: !526, line: 600, type: !154)
!2545 = !DILocalVariable(name: "mbs", scope: !2546, file: !526, line: 609, type: !599)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !526, line: 608, column: 15)
!2547 = distinct !DILexicalBlock(scope: !2542, file: !526, line: 602, column: 17)
!2548 = !DILocalVariable(name: "w", scope: !2549, file: !526, line: 618, type: !506)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !526, line: 617, column: 19)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !526, line: 616, column: 17)
!2551 = distinct !DILexicalBlock(scope: !2546, file: !526, line: 616, column: 17)
!2552 = !DILocalVariable(name: "bytes", scope: !2549, file: !526, line: 619, type: !104)
!2553 = !DILocalVariable(name: "j", scope: !2554, file: !526, line: 648, type: !104)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !526, line: 648, column: 29)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !526, line: 647, column: 27)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !526, line: 645, column: 29)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !526, line: 636, column: 23)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !526, line: 628, column: 30)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !526, line: 623, column: 30)
!2560 = distinct !DILexicalBlock(scope: !2549, file: !526, line: 621, column: 25)
!2561 = !DILocalVariable(name: "ilim", scope: !2562, file: !526, line: 674, type: !104)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !526, line: 671, column: 15)
!2563 = distinct !DILexicalBlock(scope: !2542, file: !526, line: 670, column: 17)
!2564 = !DILabel(scope: !2503, name: "process_input", file: !526, line: 308)
!2565 = !DILabel(scope: !2566, name: "c_and_shell_escape", file: !526, line: 502)
!2566 = distinct !DILexicalBlock(scope: !2543, file: !526, line: 478, column: 9)
!2567 = !DILabel(scope: !2566, name: "c_escape", file: !526, line: 507)
!2568 = !DILabel(scope: !2536, name: "store_escape", file: !526, line: 709)
!2569 = !DILabel(scope: !2536, name: "store_c", file: !526, line: 712)
!2570 = !DILabel(scope: !2503, name: "force_outer_quoting_style", file: !526, line: 753)
!2571 = !DILocation(line: 0, scope: !2503)
!2572 = !DILocation(line: 258, column: 25, scope: !2503)
!2573 = !DILocation(line: 258, column: 36, scope: !2503)
!2574 = !DILocation(line: 265, column: 8, scope: !2503)
!2575 = !DILocation(line: 267, column: 3, scope: !2503)
!2576 = !DILocation(line: 261, column: 10, scope: !2503)
!2577 = !DILocation(line: 262, column: 15, scope: !2503)
!2578 = !DILocation(line: 263, column: 10, scope: !2503)
!2579 = !DILocation(line: 264, column: 8, scope: !2503)
!2580 = !DILocation(line: 266, column: 8, scope: !2503)
!2581 = !DILocation(line: 267, column: 8, scope: !2503)
!2582 = !DILocation(line: 308, column: 2, scope: !2503)
!2583 = !DILocation(line: 311, column: 3, scope: !2503)
!2584 = !DILocation(line: 318, column: 11, scope: !2532)
!2585 = !DILocation(line: 318, column: 12, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2532, file: !526, line: 318, column: 11)
!2587 = !DILocation(line: 319, column: 9, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !526, line: 319, column: 9)
!2589 = distinct !DILexicalBlock(scope: !2586, file: !526, line: 319, column: 9)
!2590 = !DILocation(line: 319, column: 9, scope: !2589)
!2591 = !DILocation(line: 0, scope: !590, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 357, column: 26, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !526, line: 335, column: 11)
!2594 = distinct !DILexicalBlock(scope: !2531, file: !526, line: 334, column: 13)
!2595 = !DILocation(line: 199, column: 29, scope: !590, inlinedAt: !2592)
!2596 = !DILocation(line: 201, column: 19, scope: !2597, inlinedAt: !2592)
!2597 = distinct !DILexicalBlock(scope: !590, file: !526, line: 201, column: 7)
!2598 = !DILocation(line: 201, column: 7, scope: !590, inlinedAt: !2592)
!2599 = !DILocation(line: 229, column: 3, scope: !590, inlinedAt: !2592)
!2600 = !DILocation(line: 230, column: 3, scope: !590, inlinedAt: !2592)
!2601 = !DILocation(line: 230, column: 13, scope: !590, inlinedAt: !2592)
!2602 = !DILocalVariable(name: "ps", arg: 1, scope: !2603, file: !2350, line: 1135, type: !2606)
!2603 = distinct !DISubprogram(name: "mbszero", scope: !2350, file: !2350, line: 1135, type: !2604, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2607)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{null, !2606}
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!2607 = !{!2602}
!2608 = !DILocation(line: 0, scope: !2603, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 230, column: 18, scope: !590, inlinedAt: !2592)
!2610 = !DILocalVariable(name: "__dest", arg: 1, scope: !2611, file: !2359, line: 57, type: !102)
!2611 = distinct !DISubprogram(name: "memset", scope: !2359, file: !2359, line: 57, type: !2360, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2612)
!2612 = !{!2610, !2613, !2614}
!2613 = !DILocalVariable(name: "__ch", arg: 2, scope: !2611, file: !2359, line: 57, type: !52)
!2614 = !DILocalVariable(name: "__len", arg: 3, scope: !2611, file: !2359, line: 57, type: !104)
!2615 = !DILocation(line: 0, scope: !2611, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 1137, column: 3, scope: !2603, inlinedAt: !2609)
!2617 = !DILocation(line: 59, column: 10, scope: !2611, inlinedAt: !2616)
!2618 = !DILocation(line: 231, column: 7, scope: !2619, inlinedAt: !2592)
!2619 = distinct !DILexicalBlock(scope: !590, file: !526, line: 231, column: 7)
!2620 = !DILocation(line: 231, column: 40, scope: !2619, inlinedAt: !2592)
!2621 = !DILocation(line: 231, column: 45, scope: !2619, inlinedAt: !2592)
!2622 = !DILocation(line: 235, column: 1, scope: !590, inlinedAt: !2592)
!2623 = !DILocation(line: 0, scope: !590, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 358, column: 27, scope: !2593)
!2625 = !DILocation(line: 199, column: 29, scope: !590, inlinedAt: !2624)
!2626 = !DILocation(line: 201, column: 19, scope: !2597, inlinedAt: !2624)
!2627 = !DILocation(line: 201, column: 7, scope: !590, inlinedAt: !2624)
!2628 = !DILocation(line: 229, column: 3, scope: !590, inlinedAt: !2624)
!2629 = !DILocation(line: 230, column: 3, scope: !590, inlinedAt: !2624)
!2630 = !DILocation(line: 230, column: 13, scope: !590, inlinedAt: !2624)
!2631 = !DILocation(line: 0, scope: !2603, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 230, column: 18, scope: !590, inlinedAt: !2624)
!2633 = !DILocation(line: 0, scope: !2611, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 1137, column: 3, scope: !2603, inlinedAt: !2632)
!2635 = !DILocation(line: 59, column: 10, scope: !2611, inlinedAt: !2634)
!2636 = !DILocation(line: 231, column: 7, scope: !2619, inlinedAt: !2624)
!2637 = !DILocation(line: 231, column: 40, scope: !2619, inlinedAt: !2624)
!2638 = !DILocation(line: 231, column: 45, scope: !2619, inlinedAt: !2624)
!2639 = !DILocation(line: 235, column: 1, scope: !590, inlinedAt: !2624)
!2640 = !DILocation(line: 360, column: 14, scope: !2530)
!2641 = !DILocation(line: 360, column: 13, scope: !2531)
!2642 = !DILocation(line: 0, scope: !2529)
!2643 = !DILocation(line: 361, column: 45, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2529, file: !526, line: 361, column: 11)
!2645 = !DILocation(line: 361, column: 11, scope: !2529)
!2646 = !DILocation(line: 362, column: 13, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !526, line: 362, column: 13)
!2648 = distinct !DILexicalBlock(scope: !2644, file: !526, line: 362, column: 13)
!2649 = !DILocation(line: 362, column: 13, scope: !2648)
!2650 = !DILocation(line: 361, column: 52, scope: !2644)
!2651 = distinct !{!2651, !2645, !2652, !956}
!2652 = !DILocation(line: 362, column: 13, scope: !2529)
!2653 = !DILocation(line: 260, column: 10, scope: !2503)
!2654 = !DILocation(line: 365, column: 28, scope: !2531)
!2655 = !DILocation(line: 367, column: 7, scope: !2532)
!2656 = !DILocation(line: 370, column: 7, scope: !2532)
!2657 = !DILocation(line: 373, column: 7, scope: !2532)
!2658 = !DILocation(line: 376, column: 12, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2532, file: !526, line: 376, column: 11)
!2660 = !DILocation(line: 376, column: 11, scope: !2532)
!2661 = !DILocation(line: 381, column: 12, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2532, file: !526, line: 381, column: 11)
!2663 = !DILocation(line: 381, column: 11, scope: !2532)
!2664 = !DILocation(line: 382, column: 9, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !526, line: 382, column: 9)
!2666 = distinct !DILexicalBlock(scope: !2662, file: !526, line: 382, column: 9)
!2667 = !DILocation(line: 382, column: 9, scope: !2666)
!2668 = !DILocation(line: 389, column: 7, scope: !2532)
!2669 = !DILocation(line: 392, column: 7, scope: !2532)
!2670 = !DILocation(line: 0, scope: !2534)
!2671 = !DILocation(line: 395, column: 8, scope: !2534)
!2672 = !DILocation(line: 309, column: 8, scope: !2503)
!2673 = !DILocation(line: 395, scope: !2534)
!2674 = !DILocation(line: 395, column: 34, scope: !2537)
!2675 = !DILocation(line: 395, column: 26, scope: !2537)
!2676 = !DILocation(line: 395, column: 48, scope: !2537)
!2677 = !DILocation(line: 395, column: 55, scope: !2537)
!2678 = !DILocation(line: 395, column: 3, scope: !2534)
!2679 = !DILocation(line: 395, column: 67, scope: !2537)
!2680 = !DILocation(line: 0, scope: !2536)
!2681 = !DILocation(line: 402, column: 11, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2536, file: !526, line: 401, column: 11)
!2683 = !DILocation(line: 404, column: 17, scope: !2682)
!2684 = !DILocation(line: 405, column: 39, scope: !2682)
!2685 = !DILocation(line: 409, column: 32, scope: !2682)
!2686 = !DILocation(line: 405, column: 19, scope: !2682)
!2687 = !DILocation(line: 405, column: 15, scope: !2682)
!2688 = !DILocation(line: 410, column: 11, scope: !2682)
!2689 = !DILocation(line: 410, column: 25, scope: !2682)
!2690 = !DILocalVariable(name: "__s1", arg: 1, scope: !2691, file: !922, line: 974, type: !1058)
!2691 = distinct !DISubprogram(name: "memeq", scope: !922, file: !922, line: 974, type: !2320, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2692)
!2692 = !{!2690, !2693, !2694}
!2693 = !DILocalVariable(name: "__s2", arg: 2, scope: !2691, file: !922, line: 974, type: !1058)
!2694 = !DILocalVariable(name: "__n", arg: 3, scope: !2691, file: !922, line: 974, type: !104)
!2695 = !DILocation(line: 0, scope: !2691, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 410, column: 14, scope: !2682)
!2697 = !DILocation(line: 976, column: 11, scope: !2691, inlinedAt: !2696)
!2698 = !DILocation(line: 976, column: 10, scope: !2691, inlinedAt: !2696)
!2699 = !DILocation(line: 401, column: 11, scope: !2536)
!2700 = !DILocation(line: 417, column: 25, scope: !2536)
!2701 = !DILocation(line: 418, column: 7, scope: !2536)
!2702 = !DILocation(line: 421, column: 15, scope: !2543)
!2703 = !DILocation(line: 423, column: 15, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !526, line: 423, column: 15)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !526, line: 422, column: 13)
!2706 = distinct !DILexicalBlock(scope: !2543, file: !526, line: 421, column: 15)
!2707 = !DILocation(line: 423, column: 15, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2704, file: !526, line: 423, column: 15)
!2709 = !DILocation(line: 423, column: 15, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !526, line: 423, column: 15)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !526, line: 423, column: 15)
!2712 = distinct !DILexicalBlock(scope: !2708, file: !526, line: 423, column: 15)
!2713 = !DILocation(line: 423, column: 15, scope: !2711)
!2714 = !DILocation(line: 423, column: 15, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !526, line: 423, column: 15)
!2716 = distinct !DILexicalBlock(scope: !2712, file: !526, line: 423, column: 15)
!2717 = !DILocation(line: 423, column: 15, scope: !2716)
!2718 = !DILocation(line: 423, column: 15, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !526, line: 423, column: 15)
!2720 = distinct !DILexicalBlock(scope: !2712, file: !526, line: 423, column: 15)
!2721 = !DILocation(line: 423, column: 15, scope: !2720)
!2722 = !DILocation(line: 423, column: 15, scope: !2712)
!2723 = !DILocation(line: 423, column: 15, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !526, line: 423, column: 15)
!2725 = distinct !DILexicalBlock(scope: !2704, file: !526, line: 423, column: 15)
!2726 = !DILocation(line: 423, column: 15, scope: !2725)
!2727 = !DILocation(line: 431, column: 19, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2705, file: !526, line: 430, column: 19)
!2729 = !DILocation(line: 431, column: 24, scope: !2728)
!2730 = !DILocation(line: 431, column: 28, scope: !2728)
!2731 = !DILocation(line: 431, column: 38, scope: !2728)
!2732 = !DILocation(line: 431, column: 48, scope: !2728)
!2733 = !DILocation(line: 431, column: 59, scope: !2728)
!2734 = !DILocation(line: 433, column: 19, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !526, line: 433, column: 19)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !526, line: 433, column: 19)
!2737 = distinct !DILexicalBlock(scope: !2728, file: !526, line: 432, column: 17)
!2738 = !DILocation(line: 433, column: 19, scope: !2736)
!2739 = !DILocation(line: 434, column: 19, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !526, line: 434, column: 19)
!2741 = distinct !DILexicalBlock(scope: !2737, file: !526, line: 434, column: 19)
!2742 = !DILocation(line: 434, column: 19, scope: !2741)
!2743 = !DILocation(line: 435, column: 17, scope: !2737)
!2744 = !DILocation(line: 442, column: 20, scope: !2706)
!2745 = !DILocation(line: 447, column: 11, scope: !2543)
!2746 = !DILocation(line: 450, column: 19, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2543, file: !526, line: 448, column: 13)
!2748 = !DILocation(line: 456, column: 19, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2747, file: !526, line: 455, column: 19)
!2750 = !DILocation(line: 456, column: 24, scope: !2749)
!2751 = !DILocation(line: 456, column: 28, scope: !2749)
!2752 = !DILocation(line: 456, column: 38, scope: !2749)
!2753 = !DILocation(line: 456, column: 47, scope: !2749)
!2754 = !DILocation(line: 456, column: 41, scope: !2749)
!2755 = !DILocation(line: 456, column: 52, scope: !2749)
!2756 = !DILocation(line: 455, column: 19, scope: !2747)
!2757 = !DILocation(line: 457, column: 25, scope: !2749)
!2758 = !DILocation(line: 457, column: 17, scope: !2749)
!2759 = !DILocation(line: 464, column: 25, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2749, file: !526, line: 458, column: 19)
!2761 = !DILocation(line: 468, column: 21, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !526, line: 468, column: 21)
!2763 = distinct !DILexicalBlock(scope: !2760, file: !526, line: 468, column: 21)
!2764 = !DILocation(line: 468, column: 21, scope: !2763)
!2765 = !DILocation(line: 469, column: 21, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !526, line: 469, column: 21)
!2767 = distinct !DILexicalBlock(scope: !2760, file: !526, line: 469, column: 21)
!2768 = !DILocation(line: 469, column: 21, scope: !2767)
!2769 = !DILocation(line: 470, column: 21, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !526, line: 470, column: 21)
!2771 = distinct !DILexicalBlock(scope: !2760, file: !526, line: 470, column: 21)
!2772 = !DILocation(line: 470, column: 21, scope: !2771)
!2773 = !DILocation(line: 471, column: 21, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !526, line: 471, column: 21)
!2775 = distinct !DILexicalBlock(scope: !2760, file: !526, line: 471, column: 21)
!2776 = !DILocation(line: 471, column: 21, scope: !2775)
!2777 = !DILocation(line: 472, column: 21, scope: !2760)
!2778 = !DILocation(line: 482, column: 33, scope: !2566)
!2779 = !DILocation(line: 483, column: 33, scope: !2566)
!2780 = !DILocation(line: 485, column: 33, scope: !2566)
!2781 = !DILocation(line: 486, column: 33, scope: !2566)
!2782 = !DILocation(line: 487, column: 33, scope: !2566)
!2783 = !DILocation(line: 490, column: 17, scope: !2566)
!2784 = !DILocation(line: 492, column: 21, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !526, line: 491, column: 15)
!2786 = distinct !DILexicalBlock(scope: !2566, file: !526, line: 490, column: 17)
!2787 = !DILocation(line: 499, column: 35, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2566, file: !526, line: 499, column: 17)
!2789 = !DILocation(line: 499, column: 57, scope: !2788)
!2790 = !DILocation(line: 0, scope: !2566)
!2791 = !DILocation(line: 502, column: 11, scope: !2566)
!2792 = !DILocation(line: 504, column: 17, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2566, file: !526, line: 503, column: 17)
!2794 = !DILocation(line: 507, column: 11, scope: !2566)
!2795 = !DILocation(line: 508, column: 17, scope: !2566)
!2796 = !DILocation(line: 517, column: 15, scope: !2543)
!2797 = !DILocation(line: 517, column: 40, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2543, file: !526, line: 517, column: 15)
!2799 = !DILocation(line: 517, column: 47, scope: !2798)
!2800 = !DILocation(line: 517, column: 18, scope: !2798)
!2801 = !DILocation(line: 521, column: 17, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2543, file: !526, line: 521, column: 15)
!2803 = !DILocation(line: 521, column: 15, scope: !2543)
!2804 = !DILocation(line: 525, column: 11, scope: !2543)
!2805 = !DILocation(line: 537, column: 15, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2543, file: !526, line: 536, column: 15)
!2807 = !DILocation(line: 544, column: 15, scope: !2543)
!2808 = !DILocation(line: 546, column: 19, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !526, line: 545, column: 13)
!2810 = distinct !DILexicalBlock(scope: !2543, file: !526, line: 544, column: 15)
!2811 = !DILocation(line: 549, column: 19, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2809, file: !526, line: 549, column: 19)
!2813 = !DILocation(line: 549, column: 30, scope: !2812)
!2814 = !DILocation(line: 558, column: 15, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !526, line: 558, column: 15)
!2816 = distinct !DILexicalBlock(scope: !2809, file: !526, line: 558, column: 15)
!2817 = !DILocation(line: 558, column: 15, scope: !2816)
!2818 = !DILocation(line: 559, column: 15, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !526, line: 559, column: 15)
!2820 = distinct !DILexicalBlock(scope: !2809, file: !526, line: 559, column: 15)
!2821 = !DILocation(line: 559, column: 15, scope: !2820)
!2822 = !DILocation(line: 560, column: 15, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !526, line: 560, column: 15)
!2824 = distinct !DILexicalBlock(scope: !2809, file: !526, line: 560, column: 15)
!2825 = !DILocation(line: 560, column: 15, scope: !2824)
!2826 = !DILocation(line: 562, column: 13, scope: !2809)
!2827 = !DILocation(line: 602, column: 17, scope: !2542)
!2828 = !DILocation(line: 0, scope: !2542)
!2829 = !DILocation(line: 605, column: 29, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2547, file: !526, line: 603, column: 15)
!2831 = !DILocation(line: 605, column: 27, scope: !2830)
!2832 = !DILocation(line: 668, column: 40, scope: !2542)
!2833 = !DILocation(line: 670, column: 23, scope: !2563)
!2834 = !DILocation(line: 609, column: 17, scope: !2546)
!2835 = !DILocation(line: 609, column: 27, scope: !2546)
!2836 = !DILocation(line: 0, scope: !2603, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 609, column: 32, scope: !2546)
!2838 = !DILocation(line: 0, scope: !2611, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 1137, column: 3, scope: !2603, inlinedAt: !2837)
!2840 = !DILocation(line: 59, column: 10, scope: !2611, inlinedAt: !2839)
!2841 = !DILocation(line: 613, column: 29, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2546, file: !526, line: 613, column: 21)
!2843 = !DILocation(line: 613, column: 21, scope: !2546)
!2844 = !DILocation(line: 614, column: 29, scope: !2842)
!2845 = !DILocation(line: 614, column: 19, scope: !2842)
!2846 = !DILocation(line: 618, column: 21, scope: !2549)
!2847 = !DILocation(line: 620, column: 54, scope: !2549)
!2848 = !DILocation(line: 0, scope: !2549)
!2849 = !DILocation(line: 619, column: 36, scope: !2549)
!2850 = !DILocation(line: 621, column: 25, scope: !2549)
!2851 = !DILocation(line: 631, column: 38, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2558, file: !526, line: 629, column: 23)
!2853 = !DILocation(line: 631, column: 48, scope: !2852)
!2854 = !DILocation(line: 665, column: 19, scope: !2550)
!2855 = !DILocation(line: 666, column: 15, scope: !2547)
!2856 = !DILocation(line: 626, column: 25, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2559, file: !526, line: 624, column: 23)
!2858 = !DILocation(line: 631, column: 51, scope: !2852)
!2859 = !DILocation(line: 631, column: 25, scope: !2852)
!2860 = !DILocation(line: 632, column: 28, scope: !2852)
!2861 = !DILocation(line: 631, column: 34, scope: !2852)
!2862 = distinct !{!2862, !2859, !2860, !956}
!2863 = !DILocation(line: 646, column: 29, scope: !2556)
!2864 = !DILocation(line: 0, scope: !2554)
!2865 = !DILocation(line: 649, column: 49, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2554, file: !526, line: 648, column: 29)
!2867 = !DILocation(line: 649, column: 39, scope: !2866)
!2868 = !DILocation(line: 649, column: 31, scope: !2866)
!2869 = !DILocation(line: 648, column: 60, scope: !2866)
!2870 = !DILocation(line: 648, column: 50, scope: !2866)
!2871 = !DILocation(line: 648, column: 29, scope: !2554)
!2872 = distinct !{!2872, !2871, !2873, !956}
!2873 = !DILocation(line: 654, column: 33, scope: !2554)
!2874 = !DILocation(line: 657, column: 43, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2557, file: !526, line: 657, column: 29)
!2876 = !DILocalVariable(name: "wc", arg: 1, scope: !2877, file: !2878, line: 865, type: !2881)
!2877 = distinct !DISubprogram(name: "c32isprint", scope: !2878, file: !2878, line: 865, type: !2879, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2883)
!2878 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!52, !2881}
!2881 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2882, line: 20, baseType: !64)
!2882 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2883 = !{!2876}
!2884 = !DILocation(line: 0, scope: !2877, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 657, column: 31, scope: !2875)
!2886 = !DILocation(line: 871, column: 10, scope: !2877, inlinedAt: !2885)
!2887 = !DILocation(line: 657, column: 31, scope: !2875)
!2888 = !DILocation(line: 657, column: 29, scope: !2557)
!2889 = !DILocation(line: 664, column: 23, scope: !2549)
!2890 = !DILocation(line: 670, column: 19, scope: !2563)
!2891 = !DILocation(line: 670, column: 45, scope: !2563)
!2892 = !DILocation(line: 674, column: 33, scope: !2562)
!2893 = !DILocation(line: 0, scope: !2562)
!2894 = !DILocation(line: 676, column: 17, scope: !2562)
!2895 = !DILocation(line: 398, column: 12, scope: !2536)
!2896 = !DILocation(line: 678, column: 43, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !526, line: 678, column: 25)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !526, line: 677, column: 19)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !526, line: 676, column: 17)
!2900 = distinct !DILexicalBlock(scope: !2562, file: !526, line: 676, column: 17)
!2901 = !DILocation(line: 680, column: 25, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !526, line: 680, column: 25)
!2903 = distinct !DILexicalBlock(scope: !2897, file: !526, line: 679, column: 23)
!2904 = !DILocation(line: 680, column: 25, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2902, file: !526, line: 680, column: 25)
!2906 = !DILocation(line: 680, column: 25, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !526, line: 680, column: 25)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !526, line: 680, column: 25)
!2909 = distinct !DILexicalBlock(scope: !2905, file: !526, line: 680, column: 25)
!2910 = !DILocation(line: 680, column: 25, scope: !2908)
!2911 = !DILocation(line: 680, column: 25, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !526, line: 680, column: 25)
!2913 = distinct !DILexicalBlock(scope: !2909, file: !526, line: 680, column: 25)
!2914 = !DILocation(line: 680, column: 25, scope: !2913)
!2915 = !DILocation(line: 680, column: 25, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !526, line: 680, column: 25)
!2917 = distinct !DILexicalBlock(scope: !2909, file: !526, line: 680, column: 25)
!2918 = !DILocation(line: 680, column: 25, scope: !2917)
!2919 = !DILocation(line: 680, column: 25, scope: !2909)
!2920 = !DILocation(line: 680, column: 25, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !526, line: 680, column: 25)
!2922 = distinct !DILexicalBlock(scope: !2902, file: !526, line: 680, column: 25)
!2923 = !DILocation(line: 680, column: 25, scope: !2922)
!2924 = !DILocation(line: 681, column: 25, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !526, line: 681, column: 25)
!2926 = distinct !DILexicalBlock(scope: !2903, file: !526, line: 681, column: 25)
!2927 = !DILocation(line: 681, column: 25, scope: !2926)
!2928 = !DILocation(line: 682, column: 25, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !526, line: 682, column: 25)
!2930 = distinct !DILexicalBlock(scope: !2903, file: !526, line: 682, column: 25)
!2931 = !DILocation(line: 682, column: 25, scope: !2930)
!2932 = !DILocation(line: 683, column: 38, scope: !2903)
!2933 = !DILocation(line: 683, column: 33, scope: !2903)
!2934 = !DILocation(line: 684, column: 23, scope: !2903)
!2935 = !DILocation(line: 685, column: 30, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2897, file: !526, line: 685, column: 30)
!2937 = !DILocation(line: 685, column: 30, scope: !2897)
!2938 = !DILocation(line: 687, column: 25, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !526, line: 687, column: 25)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !526, line: 687, column: 25)
!2941 = distinct !DILexicalBlock(scope: !2936, file: !526, line: 686, column: 23)
!2942 = !DILocation(line: 687, column: 25, scope: !2940)
!2943 = !DILocation(line: 689, column: 23, scope: !2941)
!2944 = !DILocation(line: 690, column: 35, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2898, file: !526, line: 690, column: 25)
!2946 = !DILocation(line: 690, column: 30, scope: !2945)
!2947 = !DILocation(line: 690, column: 25, scope: !2898)
!2948 = !DILocation(line: 692, column: 21, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !526, line: 692, column: 21)
!2950 = distinct !DILexicalBlock(scope: !2898, file: !526, line: 692, column: 21)
!2951 = !DILocation(line: 692, column: 21, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !526, line: 692, column: 21)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !526, line: 692, column: 21)
!2954 = distinct !DILexicalBlock(scope: !2949, file: !526, line: 692, column: 21)
!2955 = !DILocation(line: 692, column: 21, scope: !2953)
!2956 = !DILocation(line: 692, column: 21, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !526, line: 692, column: 21)
!2958 = distinct !DILexicalBlock(scope: !2954, file: !526, line: 692, column: 21)
!2959 = !DILocation(line: 692, column: 21, scope: !2958)
!2960 = !DILocation(line: 692, column: 21, scope: !2954)
!2961 = !DILocation(line: 0, scope: !2898)
!2962 = !DILocation(line: 693, column: 21, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !526, line: 693, column: 21)
!2964 = distinct !DILexicalBlock(scope: !2898, file: !526, line: 693, column: 21)
!2965 = !DILocation(line: 693, column: 21, scope: !2964)
!2966 = !DILocation(line: 694, column: 25, scope: !2898)
!2967 = !DILocation(line: 676, column: 17, scope: !2899)
!2968 = distinct !{!2968, !2969, !2970}
!2969 = !DILocation(line: 676, column: 17, scope: !2900)
!2970 = !DILocation(line: 695, column: 19, scope: !2900)
!2971 = !DILocation(line: 409, column: 30, scope: !2682)
!2972 = !DILocation(line: 702, column: 34, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2536, file: !526, line: 702, column: 11)
!2974 = !DILocation(line: 704, column: 14, scope: !2973)
!2975 = !DILocation(line: 705, column: 14, scope: !2973)
!2976 = !DILocation(line: 705, column: 35, scope: !2973)
!2977 = !DILocation(line: 705, column: 17, scope: !2973)
!2978 = !DILocation(line: 705, column: 47, scope: !2973)
!2979 = !DILocation(line: 705, column: 65, scope: !2973)
!2980 = !DILocation(line: 706, column: 11, scope: !2973)
!2981 = !DILocation(line: 702, column: 11, scope: !2536)
!2982 = !DILocation(line: 395, column: 15, scope: !2534)
!2983 = !DILocation(line: 709, column: 5, scope: !2536)
!2984 = !DILocation(line: 710, column: 7, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2536, file: !526, line: 710, column: 7)
!2986 = !DILocation(line: 710, column: 7, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2985, file: !526, line: 710, column: 7)
!2988 = !DILocation(line: 710, column: 7, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !526, line: 710, column: 7)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !526, line: 710, column: 7)
!2991 = distinct !DILexicalBlock(scope: !2987, file: !526, line: 710, column: 7)
!2992 = !DILocation(line: 710, column: 7, scope: !2990)
!2993 = !DILocation(line: 710, column: 7, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !526, line: 710, column: 7)
!2995 = distinct !DILexicalBlock(scope: !2991, file: !526, line: 710, column: 7)
!2996 = !DILocation(line: 710, column: 7, scope: !2995)
!2997 = !DILocation(line: 710, column: 7, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !526, line: 710, column: 7)
!2999 = distinct !DILexicalBlock(scope: !2991, file: !526, line: 710, column: 7)
!3000 = !DILocation(line: 710, column: 7, scope: !2999)
!3001 = !DILocation(line: 710, column: 7, scope: !2991)
!3002 = !DILocation(line: 710, column: 7, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !3004, file: !526, line: 710, column: 7)
!3004 = distinct !DILexicalBlock(scope: !2985, file: !526, line: 710, column: 7)
!3005 = !DILocation(line: 710, column: 7, scope: !3004)
!3006 = !DILocation(line: 712, column: 5, scope: !2536)
!3007 = !DILocation(line: 713, column: 7, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !526, line: 713, column: 7)
!3009 = distinct !DILexicalBlock(scope: !2536, file: !526, line: 713, column: 7)
!3010 = !DILocation(line: 417, column: 21, scope: !2536)
!3011 = !DILocation(line: 713, column: 7, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !526, line: 713, column: 7)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !526, line: 713, column: 7)
!3014 = distinct !DILexicalBlock(scope: !3008, file: !526, line: 713, column: 7)
!3015 = !DILocation(line: 713, column: 7, scope: !3013)
!3016 = !DILocation(line: 713, column: 7, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !526, line: 713, column: 7)
!3018 = distinct !DILexicalBlock(scope: !3014, file: !526, line: 713, column: 7)
!3019 = !DILocation(line: 713, column: 7, scope: !3018)
!3020 = !DILocation(line: 713, column: 7, scope: !3014)
!3021 = !DILocation(line: 714, column: 7, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !526, line: 714, column: 7)
!3023 = distinct !DILexicalBlock(scope: !2536, file: !526, line: 714, column: 7)
!3024 = !DILocation(line: 714, column: 7, scope: !3023)
!3025 = !DILocation(line: 716, column: 13, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2536, file: !526, line: 716, column: 11)
!3027 = !DILocation(line: 716, column: 11, scope: !2536)
!3028 = !DILocation(line: 718, column: 5, scope: !2537)
!3029 = !DILocation(line: 395, column: 82, scope: !2537)
!3030 = !DILocation(line: 395, column: 3, scope: !2537)
!3031 = distinct !{!3031, !2678, !3032, !956}
!3032 = !DILocation(line: 718, column: 5, scope: !2534)
!3033 = !DILocation(line: 720, column: 11, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !2503, file: !526, line: 720, column: 7)
!3035 = !DILocation(line: 720, column: 16, scope: !3034)
!3036 = !DILocation(line: 728, column: 51, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !2503, file: !526, line: 728, column: 7)
!3038 = !DILocation(line: 731, column: 11, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !526, line: 731, column: 11)
!3040 = distinct !DILexicalBlock(scope: !3037, file: !526, line: 730, column: 5)
!3041 = !DILocation(line: 731, column: 11, scope: !3040)
!3042 = !DILocation(line: 732, column: 16, scope: !3039)
!3043 = !DILocation(line: 732, column: 9, scope: !3039)
!3044 = !DILocation(line: 736, column: 18, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3039, file: !526, line: 736, column: 16)
!3046 = !DILocation(line: 736, column: 29, scope: !3045)
!3047 = !DILocation(line: 745, column: 7, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2503, file: !526, line: 745, column: 7)
!3049 = !DILocation(line: 745, column: 20, scope: !3048)
!3050 = !DILocation(line: 746, column: 12, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !526, line: 746, column: 5)
!3052 = distinct !DILexicalBlock(scope: !3048, file: !526, line: 746, column: 5)
!3053 = !DILocation(line: 746, column: 5, scope: !3052)
!3054 = !DILocation(line: 747, column: 7, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !526, line: 747, column: 7)
!3056 = distinct !DILexicalBlock(scope: !3051, file: !526, line: 747, column: 7)
!3057 = !DILocation(line: 747, column: 7, scope: !3056)
!3058 = !DILocation(line: 746, column: 39, scope: !3051)
!3059 = distinct !{!3059, !3053, !3060, !956}
!3060 = !DILocation(line: 747, column: 7, scope: !3052)
!3061 = !DILocation(line: 749, column: 11, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !2503, file: !526, line: 749, column: 7)
!3063 = !DILocation(line: 749, column: 7, scope: !2503)
!3064 = !DILocation(line: 750, column: 5, scope: !3062)
!3065 = !DILocation(line: 750, column: 17, scope: !3062)
!3066 = !DILocation(line: 753, column: 2, scope: !2503)
!3067 = !DILocation(line: 756, column: 51, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !2503, file: !526, line: 756, column: 7)
!3069 = !DILocation(line: 756, column: 21, scope: !3068)
!3070 = !DILocation(line: 760, column: 42, scope: !2503)
!3071 = !DILocation(line: 758, column: 10, scope: !2503)
!3072 = !DILocation(line: 758, column: 3, scope: !2503)
!3073 = !DILocation(line: 762, column: 1, scope: !2503)
!3074 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1034, file: !1034, line: 98, type: !3075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!104}
!3077 = !DISubprogram(name: "strlen", scope: !1030, file: !1030, line: 407, type: !3078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!106, !107}
!3080 = !DISubprogram(name: "iswprint", scope: !3081, file: !3081, line: 120, type: !2879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3081 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3082 = distinct !DISubprogram(name: "quotearg_alloc", scope: !526, file: !526, line: 788, type: !3083, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3085)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!54, !107, !104, !2396}
!3085 = !{!3086, !3087, !3088}
!3086 = !DILocalVariable(name: "arg", arg: 1, scope: !3082, file: !526, line: 788, type: !107)
!3087 = !DILocalVariable(name: "argsize", arg: 2, scope: !3082, file: !526, line: 788, type: !104)
!3088 = !DILocalVariable(name: "o", arg: 3, scope: !3082, file: !526, line: 789, type: !2396)
!3089 = !DILocation(line: 0, scope: !3082)
!3090 = !DILocalVariable(name: "arg", arg: 1, scope: !3091, file: !526, line: 801, type: !107)
!3091 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !526, file: !526, line: 801, type: !3092, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!54, !107, !104, !785, !2396}
!3094 = !{!3090, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102}
!3095 = !DILocalVariable(name: "argsize", arg: 2, scope: !3091, file: !526, line: 801, type: !104)
!3096 = !DILocalVariable(name: "size", arg: 3, scope: !3091, file: !526, line: 801, type: !785)
!3097 = !DILocalVariable(name: "o", arg: 4, scope: !3091, file: !526, line: 802, type: !2396)
!3098 = !DILocalVariable(name: "p", scope: !3091, file: !526, line: 804, type: !2396)
!3099 = !DILocalVariable(name: "saved_errno", scope: !3091, file: !526, line: 805, type: !52)
!3100 = !DILocalVariable(name: "flags", scope: !3091, file: !526, line: 807, type: !52)
!3101 = !DILocalVariable(name: "bufsize", scope: !3091, file: !526, line: 808, type: !104)
!3102 = !DILocalVariable(name: "buf", scope: !3091, file: !526, line: 812, type: !54)
!3103 = !DILocation(line: 0, scope: !3091, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 791, column: 10, scope: !3082)
!3105 = !DILocation(line: 804, column: 37, scope: !3091, inlinedAt: !3104)
!3106 = !DILocation(line: 805, column: 21, scope: !3091, inlinedAt: !3104)
!3107 = !DILocation(line: 807, column: 18, scope: !3091, inlinedAt: !3104)
!3108 = !DILocation(line: 807, column: 24, scope: !3091, inlinedAt: !3104)
!3109 = !DILocation(line: 808, column: 72, scope: !3091, inlinedAt: !3104)
!3110 = !DILocation(line: 809, column: 56, scope: !3091, inlinedAt: !3104)
!3111 = !DILocation(line: 810, column: 49, scope: !3091, inlinedAt: !3104)
!3112 = !DILocation(line: 811, column: 49, scope: !3091, inlinedAt: !3104)
!3113 = !DILocation(line: 808, column: 20, scope: !3091, inlinedAt: !3104)
!3114 = !DILocation(line: 811, column: 62, scope: !3091, inlinedAt: !3104)
!3115 = !DILocation(line: 812, column: 15, scope: !3091, inlinedAt: !3104)
!3116 = !DILocation(line: 813, column: 60, scope: !3091, inlinedAt: !3104)
!3117 = !DILocation(line: 815, column: 32, scope: !3091, inlinedAt: !3104)
!3118 = !DILocation(line: 815, column: 47, scope: !3091, inlinedAt: !3104)
!3119 = !DILocation(line: 813, column: 3, scope: !3091, inlinedAt: !3104)
!3120 = !DILocation(line: 816, column: 9, scope: !3091, inlinedAt: !3104)
!3121 = !DILocation(line: 791, column: 3, scope: !3082)
!3122 = !DILocation(line: 0, scope: !3091)
!3123 = !DILocation(line: 804, column: 37, scope: !3091)
!3124 = !DILocation(line: 805, column: 21, scope: !3091)
!3125 = !DILocation(line: 807, column: 18, scope: !3091)
!3126 = !DILocation(line: 807, column: 27, scope: !3091)
!3127 = !DILocation(line: 807, column: 24, scope: !3091)
!3128 = !DILocation(line: 808, column: 72, scope: !3091)
!3129 = !DILocation(line: 809, column: 56, scope: !3091)
!3130 = !DILocation(line: 810, column: 49, scope: !3091)
!3131 = !DILocation(line: 811, column: 49, scope: !3091)
!3132 = !DILocation(line: 808, column: 20, scope: !3091)
!3133 = !DILocation(line: 811, column: 62, scope: !3091)
!3134 = !DILocation(line: 812, column: 15, scope: !3091)
!3135 = !DILocation(line: 813, column: 60, scope: !3091)
!3136 = !DILocation(line: 815, column: 32, scope: !3091)
!3137 = !DILocation(line: 815, column: 47, scope: !3091)
!3138 = !DILocation(line: 813, column: 3, scope: !3091)
!3139 = !DILocation(line: 816, column: 9, scope: !3091)
!3140 = !DILocation(line: 817, column: 7, scope: !3091)
!3141 = !DILocation(line: 818, column: 11, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3091, file: !526, line: 817, column: 7)
!3143 = !DILocation(line: 818, column: 5, scope: !3142)
!3144 = !DILocation(line: 819, column: 3, scope: !3091)
!3145 = distinct !DISubprogram(name: "quotearg_free", scope: !526, file: !526, line: 837, type: !478, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3146)
!3146 = !{!3147, !3148}
!3147 = !DILocalVariable(name: "sv", scope: !3145, file: !526, line: 839, type: !613)
!3148 = !DILocalVariable(name: "i", scope: !3149, file: !526, line: 840, type: !52)
!3149 = distinct !DILexicalBlock(scope: !3145, file: !526, line: 840, column: 3)
!3150 = !DILocation(line: 839, column: 24, scope: !3145)
!3151 = !DILocation(line: 0, scope: !3145)
!3152 = !DILocation(line: 0, scope: !3149)
!3153 = !DILocation(line: 840, column: 21, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3149, file: !526, line: 840, column: 3)
!3155 = !DILocation(line: 840, column: 3, scope: !3149)
!3156 = !DILocation(line: 842, column: 13, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3145, file: !526, line: 842, column: 7)
!3158 = !{!3159, !846, i64 8}
!3159 = !{!"slotvec", !1166, i64 0, !846, i64 8}
!3160 = !DILocation(line: 842, column: 17, scope: !3157)
!3161 = !DILocation(line: 842, column: 7, scope: !3145)
!3162 = !DILocation(line: 841, column: 17, scope: !3154)
!3163 = !DILocation(line: 841, column: 5, scope: !3154)
!3164 = !DILocation(line: 840, column: 32, scope: !3154)
!3165 = distinct !{!3165, !3155, !3166, !956}
!3166 = !DILocation(line: 841, column: 20, scope: !3149)
!3167 = !DILocation(line: 844, column: 7, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3157, file: !526, line: 843, column: 5)
!3169 = !DILocation(line: 845, column: 21, scope: !3168)
!3170 = !{!3159, !1166, i64 0}
!3171 = !DILocation(line: 846, column: 20, scope: !3168)
!3172 = !DILocation(line: 847, column: 5, scope: !3168)
!3173 = !DILocation(line: 848, column: 10, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3145, file: !526, line: 848, column: 7)
!3175 = !DILocation(line: 848, column: 7, scope: !3145)
!3176 = !DILocation(line: 850, column: 7, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3174, file: !526, line: 849, column: 5)
!3178 = !DILocation(line: 851, column: 15, scope: !3177)
!3179 = !DILocation(line: 852, column: 5, scope: !3177)
!3180 = !DILocation(line: 853, column: 10, scope: !3145)
!3181 = !DILocation(line: 854, column: 1, scope: !3145)
!3182 = !DISubprogram(name: "free", scope: !2350, file: !2350, line: 786, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{null, !102}
!3185 = distinct !DISubprogram(name: "quotearg_n", scope: !526, file: !526, line: 919, type: !1027, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3186)
!3186 = !{!3187, !3188}
!3187 = !DILocalVariable(name: "n", arg: 1, scope: !3185, file: !526, line: 919, type: !52)
!3188 = !DILocalVariable(name: "arg", arg: 2, scope: !3185, file: !526, line: 919, type: !107)
!3189 = !DILocation(line: 0, scope: !3185)
!3190 = !DILocation(line: 921, column: 10, scope: !3185)
!3191 = !DILocation(line: 921, column: 3, scope: !3185)
!3192 = distinct !DISubprogram(name: "quotearg_n_options", scope: !526, file: !526, line: 866, type: !3193, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3195)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!54, !52, !107, !104, !2396}
!3195 = !{!3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3206, !3207, !3209, !3210, !3211}
!3196 = !DILocalVariable(name: "n", arg: 1, scope: !3192, file: !526, line: 866, type: !52)
!3197 = !DILocalVariable(name: "arg", arg: 2, scope: !3192, file: !526, line: 866, type: !107)
!3198 = !DILocalVariable(name: "argsize", arg: 3, scope: !3192, file: !526, line: 866, type: !104)
!3199 = !DILocalVariable(name: "options", arg: 4, scope: !3192, file: !526, line: 867, type: !2396)
!3200 = !DILocalVariable(name: "saved_errno", scope: !3192, file: !526, line: 869, type: !52)
!3201 = !DILocalVariable(name: "sv", scope: !3192, file: !526, line: 871, type: !613)
!3202 = !DILocalVariable(name: "nslots_max", scope: !3192, file: !526, line: 873, type: !52)
!3203 = !DILocalVariable(name: "preallocated", scope: !3204, file: !526, line: 879, type: !154)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !526, line: 878, column: 5)
!3205 = distinct !DILexicalBlock(scope: !3192, file: !526, line: 877, column: 7)
!3206 = !DILocalVariable(name: "new_nslots", scope: !3204, file: !526, line: 880, type: !798)
!3207 = !DILocalVariable(name: "size", scope: !3208, file: !526, line: 891, type: !104)
!3208 = distinct !DILexicalBlock(scope: !3192, file: !526, line: 890, column: 3)
!3209 = !DILocalVariable(name: "val", scope: !3208, file: !526, line: 892, type: !54)
!3210 = !DILocalVariable(name: "flags", scope: !3208, file: !526, line: 894, type: !52)
!3211 = !DILocalVariable(name: "qsize", scope: !3208, file: !526, line: 895, type: !104)
!3212 = !DILocation(line: 0, scope: !3192)
!3213 = !DILocation(line: 869, column: 21, scope: !3192)
!3214 = !DILocation(line: 871, column: 24, scope: !3192)
!3215 = !DILocation(line: 874, column: 17, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3192, file: !526, line: 874, column: 7)
!3217 = !DILocation(line: 875, column: 5, scope: !3216)
!3218 = !DILocation(line: 877, column: 7, scope: !3205)
!3219 = !DILocation(line: 877, column: 14, scope: !3205)
!3220 = !DILocation(line: 877, column: 7, scope: !3192)
!3221 = !DILocation(line: 879, column: 31, scope: !3204)
!3222 = !DILocation(line: 0, scope: !3204)
!3223 = !DILocation(line: 880, column: 7, scope: !3204)
!3224 = !DILocation(line: 880, column: 26, scope: !3204)
!3225 = !DILocation(line: 880, column: 13, scope: !3204)
!3226 = !DILocation(line: 882, column: 31, scope: !3204)
!3227 = !DILocation(line: 883, column: 33, scope: !3204)
!3228 = !DILocation(line: 883, column: 42, scope: !3204)
!3229 = !DILocation(line: 883, column: 31, scope: !3204)
!3230 = !DILocation(line: 882, column: 22, scope: !3204)
!3231 = !DILocation(line: 882, column: 15, scope: !3204)
!3232 = !DILocation(line: 884, column: 11, scope: !3204)
!3233 = !DILocation(line: 885, column: 15, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3204, file: !526, line: 884, column: 11)
!3235 = !{i64 0, i64 8, !1412, i64 8, i64 8, !845}
!3236 = !DILocation(line: 885, column: 9, scope: !3234)
!3237 = !DILocation(line: 886, column: 20, scope: !3204)
!3238 = !DILocation(line: 886, column: 18, scope: !3204)
!3239 = !DILocation(line: 886, column: 32, scope: !3204)
!3240 = !DILocation(line: 886, column: 43, scope: !3204)
!3241 = !DILocation(line: 886, column: 53, scope: !3204)
!3242 = !DILocation(line: 0, scope: !2611, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 886, column: 7, scope: !3204)
!3244 = !DILocation(line: 59, column: 10, scope: !2611, inlinedAt: !3243)
!3245 = !DILocation(line: 887, column: 16, scope: !3204)
!3246 = !DILocation(line: 887, column: 14, scope: !3204)
!3247 = !DILocation(line: 888, column: 5, scope: !3205)
!3248 = !DILocation(line: 888, column: 5, scope: !3204)
!3249 = !DILocation(line: 891, column: 19, scope: !3208)
!3250 = !DILocation(line: 891, column: 25, scope: !3208)
!3251 = !DILocation(line: 0, scope: !3208)
!3252 = !DILocation(line: 892, column: 23, scope: !3208)
!3253 = !DILocation(line: 894, column: 26, scope: !3208)
!3254 = !DILocation(line: 894, column: 32, scope: !3208)
!3255 = !DILocation(line: 896, column: 55, scope: !3208)
!3256 = !DILocation(line: 897, column: 55, scope: !3208)
!3257 = !DILocation(line: 898, column: 55, scope: !3208)
!3258 = !DILocation(line: 899, column: 55, scope: !3208)
!3259 = !DILocation(line: 895, column: 20, scope: !3208)
!3260 = !DILocation(line: 901, column: 14, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3208, file: !526, line: 901, column: 9)
!3262 = !DILocation(line: 901, column: 9, scope: !3208)
!3263 = !DILocation(line: 903, column: 35, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3261, file: !526, line: 902, column: 7)
!3265 = !DILocation(line: 903, column: 20, scope: !3264)
!3266 = !DILocation(line: 904, column: 17, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3264, file: !526, line: 904, column: 13)
!3268 = !DILocation(line: 904, column: 13, scope: !3264)
!3269 = !DILocation(line: 905, column: 11, scope: !3267)
!3270 = !DILocation(line: 906, column: 27, scope: !3264)
!3271 = !DILocation(line: 906, column: 19, scope: !3264)
!3272 = !DILocation(line: 907, column: 69, scope: !3264)
!3273 = !DILocation(line: 909, column: 44, scope: !3264)
!3274 = !DILocation(line: 910, column: 44, scope: !3264)
!3275 = !DILocation(line: 907, column: 9, scope: !3264)
!3276 = !DILocation(line: 911, column: 7, scope: !3264)
!3277 = !DILocation(line: 913, column: 11, scope: !3208)
!3278 = !DILocation(line: 914, column: 5, scope: !3208)
!3279 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !526, file: !526, line: 925, type: !3280, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3282)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!54, !52, !107, !104}
!3282 = !{!3283, !3284, !3285}
!3283 = !DILocalVariable(name: "n", arg: 1, scope: !3279, file: !526, line: 925, type: !52)
!3284 = !DILocalVariable(name: "arg", arg: 2, scope: !3279, file: !526, line: 925, type: !107)
!3285 = !DILocalVariable(name: "argsize", arg: 3, scope: !3279, file: !526, line: 925, type: !104)
!3286 = !DILocation(line: 0, scope: !3279)
!3287 = !DILocation(line: 927, column: 10, scope: !3279)
!3288 = !DILocation(line: 927, column: 3, scope: !3279)
!3289 = distinct !DISubprogram(name: "quotearg", scope: !526, file: !526, line: 931, type: !1036, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3290)
!3290 = !{!3291}
!3291 = !DILocalVariable(name: "arg", arg: 1, scope: !3289, file: !526, line: 931, type: !107)
!3292 = !DILocation(line: 0, scope: !3289)
!3293 = !DILocation(line: 0, scope: !3185, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 933, column: 10, scope: !3289)
!3295 = !DILocation(line: 921, column: 10, scope: !3185, inlinedAt: !3294)
!3296 = !DILocation(line: 933, column: 3, scope: !3289)
!3297 = distinct !DISubprogram(name: "quotearg_mem", scope: !526, file: !526, line: 937, type: !3298, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3300)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!54, !107, !104}
!3300 = !{!3301, !3302}
!3301 = !DILocalVariable(name: "arg", arg: 1, scope: !3297, file: !526, line: 937, type: !107)
!3302 = !DILocalVariable(name: "argsize", arg: 2, scope: !3297, file: !526, line: 937, type: !104)
!3303 = !DILocation(line: 0, scope: !3297)
!3304 = !DILocation(line: 0, scope: !3279, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 939, column: 10, scope: !3297)
!3306 = !DILocation(line: 927, column: 10, scope: !3279, inlinedAt: !3305)
!3307 = !DILocation(line: 939, column: 3, scope: !3297)
!3308 = distinct !DISubprogram(name: "quotearg_n_style", scope: !526, file: !526, line: 943, type: !3309, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3311)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!54, !52, !78, !107}
!3311 = !{!3312, !3313, !3314, !3315}
!3312 = !DILocalVariable(name: "n", arg: 1, scope: !3308, file: !526, line: 943, type: !52)
!3313 = !DILocalVariable(name: "s", arg: 2, scope: !3308, file: !526, line: 943, type: !78)
!3314 = !DILocalVariable(name: "arg", arg: 3, scope: !3308, file: !526, line: 943, type: !107)
!3315 = !DILocalVariable(name: "o", scope: !3308, file: !526, line: 945, type: !2397)
!3316 = !DILocation(line: 0, scope: !3308)
!3317 = !DILocation(line: 945, column: 3, scope: !3308)
!3318 = !DILocation(line: 945, column: 32, scope: !3308)
!3319 = !{!3320}
!3320 = distinct !{!3320, !3321, !"quoting_options_from_style: argument 0"}
!3321 = distinct !{!3321, !"quoting_options_from_style"}
!3322 = !DILocation(line: 945, column: 36, scope: !3308)
!3323 = !DILocalVariable(name: "style", arg: 1, scope: !3324, file: !526, line: 183, type: !78)
!3324 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !526, file: !526, line: 183, type: !3325, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3327)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!565, !78}
!3327 = !{!3323, !3328}
!3328 = !DILocalVariable(name: "o", scope: !3324, file: !526, line: 185, type: !565)
!3329 = !DILocation(line: 0, scope: !3324, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 945, column: 36, scope: !3308)
!3331 = !DILocation(line: 185, column: 26, scope: !3324, inlinedAt: !3330)
!3332 = !DILocation(line: 186, column: 13, scope: !3333, inlinedAt: !3330)
!3333 = distinct !DILexicalBlock(scope: !3324, file: !526, line: 186, column: 7)
!3334 = !DILocation(line: 186, column: 7, scope: !3324, inlinedAt: !3330)
!3335 = !DILocation(line: 187, column: 5, scope: !3333, inlinedAt: !3330)
!3336 = !DILocation(line: 188, column: 11, scope: !3324, inlinedAt: !3330)
!3337 = !DILocation(line: 946, column: 10, scope: !3308)
!3338 = !DILocation(line: 947, column: 1, scope: !3308)
!3339 = !DILocation(line: 946, column: 3, scope: !3308)
!3340 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !526, file: !526, line: 950, type: !3341, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3343)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!54, !52, !78, !107, !104}
!3343 = !{!3344, !3345, !3346, !3347, !3348}
!3344 = !DILocalVariable(name: "n", arg: 1, scope: !3340, file: !526, line: 950, type: !52)
!3345 = !DILocalVariable(name: "s", arg: 2, scope: !3340, file: !526, line: 950, type: !78)
!3346 = !DILocalVariable(name: "arg", arg: 3, scope: !3340, file: !526, line: 951, type: !107)
!3347 = !DILocalVariable(name: "argsize", arg: 4, scope: !3340, file: !526, line: 951, type: !104)
!3348 = !DILocalVariable(name: "o", scope: !3340, file: !526, line: 953, type: !2397)
!3349 = !DILocation(line: 0, scope: !3340)
!3350 = !DILocation(line: 953, column: 3, scope: !3340)
!3351 = !DILocation(line: 953, column: 32, scope: !3340)
!3352 = !{!3353}
!3353 = distinct !{!3353, !3354, !"quoting_options_from_style: argument 0"}
!3354 = distinct !{!3354, !"quoting_options_from_style"}
!3355 = !DILocation(line: 953, column: 36, scope: !3340)
!3356 = !DILocation(line: 0, scope: !3324, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 953, column: 36, scope: !3340)
!3358 = !DILocation(line: 185, column: 26, scope: !3324, inlinedAt: !3357)
!3359 = !DILocation(line: 186, column: 13, scope: !3333, inlinedAt: !3357)
!3360 = !DILocation(line: 186, column: 7, scope: !3324, inlinedAt: !3357)
!3361 = !DILocation(line: 187, column: 5, scope: !3333, inlinedAt: !3357)
!3362 = !DILocation(line: 188, column: 11, scope: !3324, inlinedAt: !3357)
!3363 = !DILocation(line: 954, column: 10, scope: !3340)
!3364 = !DILocation(line: 955, column: 1, scope: !3340)
!3365 = !DILocation(line: 954, column: 3, scope: !3340)
!3366 = distinct !DISubprogram(name: "quotearg_style", scope: !526, file: !526, line: 958, type: !3367, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3369)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!54, !78, !107}
!3369 = !{!3370, !3371}
!3370 = !DILocalVariable(name: "s", arg: 1, scope: !3366, file: !526, line: 958, type: !78)
!3371 = !DILocalVariable(name: "arg", arg: 2, scope: !3366, file: !526, line: 958, type: !107)
!3372 = !DILocation(line: 0, scope: !3366)
!3373 = !DILocation(line: 0, scope: !3308, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 960, column: 10, scope: !3366)
!3375 = !DILocation(line: 945, column: 3, scope: !3308, inlinedAt: !3374)
!3376 = !DILocation(line: 945, column: 32, scope: !3308, inlinedAt: !3374)
!3377 = !{!3378}
!3378 = distinct !{!3378, !3379, !"quoting_options_from_style: argument 0"}
!3379 = distinct !{!3379, !"quoting_options_from_style"}
!3380 = !DILocation(line: 945, column: 36, scope: !3308, inlinedAt: !3374)
!3381 = !DILocation(line: 0, scope: !3324, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 945, column: 36, scope: !3308, inlinedAt: !3374)
!3383 = !DILocation(line: 185, column: 26, scope: !3324, inlinedAt: !3382)
!3384 = !DILocation(line: 186, column: 13, scope: !3333, inlinedAt: !3382)
!3385 = !DILocation(line: 186, column: 7, scope: !3324, inlinedAt: !3382)
!3386 = !DILocation(line: 187, column: 5, scope: !3333, inlinedAt: !3382)
!3387 = !DILocation(line: 188, column: 11, scope: !3324, inlinedAt: !3382)
!3388 = !DILocation(line: 946, column: 10, scope: !3308, inlinedAt: !3374)
!3389 = !DILocation(line: 947, column: 1, scope: !3308, inlinedAt: !3374)
!3390 = !DILocation(line: 960, column: 3, scope: !3366)
!3391 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !526, file: !526, line: 964, type: !3392, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!54, !78, !107, !104}
!3394 = !{!3395, !3396, !3397}
!3395 = !DILocalVariable(name: "s", arg: 1, scope: !3391, file: !526, line: 964, type: !78)
!3396 = !DILocalVariable(name: "arg", arg: 2, scope: !3391, file: !526, line: 964, type: !107)
!3397 = !DILocalVariable(name: "argsize", arg: 3, scope: !3391, file: !526, line: 964, type: !104)
!3398 = !DILocation(line: 0, scope: !3391)
!3399 = !DILocation(line: 0, scope: !3340, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 966, column: 10, scope: !3391)
!3401 = !DILocation(line: 953, column: 3, scope: !3340, inlinedAt: !3400)
!3402 = !DILocation(line: 953, column: 32, scope: !3340, inlinedAt: !3400)
!3403 = !{!3404}
!3404 = distinct !{!3404, !3405, !"quoting_options_from_style: argument 0"}
!3405 = distinct !{!3405, !"quoting_options_from_style"}
!3406 = !DILocation(line: 953, column: 36, scope: !3340, inlinedAt: !3400)
!3407 = !DILocation(line: 0, scope: !3324, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 953, column: 36, scope: !3340, inlinedAt: !3400)
!3409 = !DILocation(line: 185, column: 26, scope: !3324, inlinedAt: !3408)
!3410 = !DILocation(line: 186, column: 13, scope: !3333, inlinedAt: !3408)
!3411 = !DILocation(line: 186, column: 7, scope: !3324, inlinedAt: !3408)
!3412 = !DILocation(line: 187, column: 5, scope: !3333, inlinedAt: !3408)
!3413 = !DILocation(line: 188, column: 11, scope: !3324, inlinedAt: !3408)
!3414 = !DILocation(line: 954, column: 10, scope: !3340, inlinedAt: !3400)
!3415 = !DILocation(line: 955, column: 1, scope: !3340, inlinedAt: !3400)
!3416 = !DILocation(line: 966, column: 3, scope: !3391)
!3417 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !526, file: !526, line: 970, type: !3418, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3420)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!54, !107, !104, !4}
!3420 = !{!3421, !3422, !3423, !3424}
!3421 = !DILocalVariable(name: "arg", arg: 1, scope: !3417, file: !526, line: 970, type: !107)
!3422 = !DILocalVariable(name: "argsize", arg: 2, scope: !3417, file: !526, line: 970, type: !104)
!3423 = !DILocalVariable(name: "ch", arg: 3, scope: !3417, file: !526, line: 970, type: !4)
!3424 = !DILocalVariable(name: "options", scope: !3417, file: !526, line: 972, type: !565)
!3425 = !DILocation(line: 0, scope: !3417)
!3426 = !DILocation(line: 972, column: 3, scope: !3417)
!3427 = !DILocation(line: 972, column: 26, scope: !3417)
!3428 = !DILocation(line: 973, column: 13, scope: !3417)
!3429 = !{i64 0, i64 4, !918, i64 4, i64 4, !909, i64 8, i64 32, !918, i64 40, i64 8, !845, i64 48, i64 8, !845}
!3430 = !DILocation(line: 0, scope: !2416, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 974, column: 3, scope: !3417)
!3432 = !DILocation(line: 147, column: 41, scope: !2416, inlinedAt: !3431)
!3433 = !DILocation(line: 147, column: 62, scope: !2416, inlinedAt: !3431)
!3434 = !DILocation(line: 147, column: 57, scope: !2416, inlinedAt: !3431)
!3435 = !DILocation(line: 148, column: 15, scope: !2416, inlinedAt: !3431)
!3436 = !DILocation(line: 149, column: 21, scope: !2416, inlinedAt: !3431)
!3437 = !DILocation(line: 149, column: 24, scope: !2416, inlinedAt: !3431)
!3438 = !DILocation(line: 150, column: 19, scope: !2416, inlinedAt: !3431)
!3439 = !DILocation(line: 150, column: 24, scope: !2416, inlinedAt: !3431)
!3440 = !DILocation(line: 150, column: 6, scope: !2416, inlinedAt: !3431)
!3441 = !DILocation(line: 975, column: 10, scope: !3417)
!3442 = !DILocation(line: 976, column: 1, scope: !3417)
!3443 = !DILocation(line: 975, column: 3, scope: !3417)
!3444 = distinct !DISubprogram(name: "quotearg_char", scope: !526, file: !526, line: 979, type: !3445, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3447)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!54, !107, !4}
!3447 = !{!3448, !3449}
!3448 = !DILocalVariable(name: "arg", arg: 1, scope: !3444, file: !526, line: 979, type: !107)
!3449 = !DILocalVariable(name: "ch", arg: 2, scope: !3444, file: !526, line: 979, type: !4)
!3450 = !DILocation(line: 0, scope: !3444)
!3451 = !DILocation(line: 0, scope: !3417, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 981, column: 10, scope: !3444)
!3453 = !DILocation(line: 972, column: 3, scope: !3417, inlinedAt: !3452)
!3454 = !DILocation(line: 972, column: 26, scope: !3417, inlinedAt: !3452)
!3455 = !DILocation(line: 973, column: 13, scope: !3417, inlinedAt: !3452)
!3456 = !DILocation(line: 0, scope: !2416, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 974, column: 3, scope: !3417, inlinedAt: !3452)
!3458 = !DILocation(line: 147, column: 41, scope: !2416, inlinedAt: !3457)
!3459 = !DILocation(line: 147, column: 62, scope: !2416, inlinedAt: !3457)
!3460 = !DILocation(line: 147, column: 57, scope: !2416, inlinedAt: !3457)
!3461 = !DILocation(line: 148, column: 15, scope: !2416, inlinedAt: !3457)
!3462 = !DILocation(line: 149, column: 21, scope: !2416, inlinedAt: !3457)
!3463 = !DILocation(line: 149, column: 24, scope: !2416, inlinedAt: !3457)
!3464 = !DILocation(line: 150, column: 19, scope: !2416, inlinedAt: !3457)
!3465 = !DILocation(line: 150, column: 24, scope: !2416, inlinedAt: !3457)
!3466 = !DILocation(line: 150, column: 6, scope: !2416, inlinedAt: !3457)
!3467 = !DILocation(line: 975, column: 10, scope: !3417, inlinedAt: !3452)
!3468 = !DILocation(line: 976, column: 1, scope: !3417, inlinedAt: !3452)
!3469 = !DILocation(line: 981, column: 3, scope: !3444)
!3470 = distinct !DISubprogram(name: "quotearg_colon", scope: !526, file: !526, line: 985, type: !1036, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3471)
!3471 = !{!3472}
!3472 = !DILocalVariable(name: "arg", arg: 1, scope: !3470, file: !526, line: 985, type: !107)
!3473 = !DILocation(line: 0, scope: !3470)
!3474 = !DILocation(line: 0, scope: !3444, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 987, column: 10, scope: !3470)
!3476 = !DILocation(line: 0, scope: !3417, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 981, column: 10, scope: !3444, inlinedAt: !3475)
!3478 = !DILocation(line: 972, column: 3, scope: !3417, inlinedAt: !3477)
!3479 = !DILocation(line: 972, column: 26, scope: !3417, inlinedAt: !3477)
!3480 = !DILocation(line: 973, column: 13, scope: !3417, inlinedAt: !3477)
!3481 = !DILocation(line: 0, scope: !2416, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 974, column: 3, scope: !3417, inlinedAt: !3477)
!3483 = !DILocation(line: 147, column: 57, scope: !2416, inlinedAt: !3482)
!3484 = !DILocation(line: 149, column: 21, scope: !2416, inlinedAt: !3482)
!3485 = !DILocation(line: 150, column: 6, scope: !2416, inlinedAt: !3482)
!3486 = !DILocation(line: 975, column: 10, scope: !3417, inlinedAt: !3477)
!3487 = !DILocation(line: 976, column: 1, scope: !3417, inlinedAt: !3477)
!3488 = !DILocation(line: 987, column: 3, scope: !3470)
!3489 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !526, file: !526, line: 991, type: !3298, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3490)
!3490 = !{!3491, !3492}
!3491 = !DILocalVariable(name: "arg", arg: 1, scope: !3489, file: !526, line: 991, type: !107)
!3492 = !DILocalVariable(name: "argsize", arg: 2, scope: !3489, file: !526, line: 991, type: !104)
!3493 = !DILocation(line: 0, scope: !3489)
!3494 = !DILocation(line: 0, scope: !3417, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 993, column: 10, scope: !3489)
!3496 = !DILocation(line: 972, column: 3, scope: !3417, inlinedAt: !3495)
!3497 = !DILocation(line: 972, column: 26, scope: !3417, inlinedAt: !3495)
!3498 = !DILocation(line: 973, column: 13, scope: !3417, inlinedAt: !3495)
!3499 = !DILocation(line: 0, scope: !2416, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 974, column: 3, scope: !3417, inlinedAt: !3495)
!3501 = !DILocation(line: 147, column: 57, scope: !2416, inlinedAt: !3500)
!3502 = !DILocation(line: 149, column: 21, scope: !2416, inlinedAt: !3500)
!3503 = !DILocation(line: 150, column: 6, scope: !2416, inlinedAt: !3500)
!3504 = !DILocation(line: 975, column: 10, scope: !3417, inlinedAt: !3495)
!3505 = !DILocation(line: 976, column: 1, scope: !3417, inlinedAt: !3495)
!3506 = !DILocation(line: 993, column: 3, scope: !3489)
!3507 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !526, file: !526, line: 997, type: !3309, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3508)
!3508 = !{!3509, !3510, !3511, !3512}
!3509 = !DILocalVariable(name: "n", arg: 1, scope: !3507, file: !526, line: 997, type: !52)
!3510 = !DILocalVariable(name: "s", arg: 2, scope: !3507, file: !526, line: 997, type: !78)
!3511 = !DILocalVariable(name: "arg", arg: 3, scope: !3507, file: !526, line: 997, type: !107)
!3512 = !DILocalVariable(name: "options", scope: !3507, file: !526, line: 999, type: !565)
!3513 = !DILocation(line: 185, column: 26, scope: !3324, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 1000, column: 13, scope: !3507)
!3515 = !DILocation(line: 0, scope: !3507)
!3516 = !DILocation(line: 999, column: 3, scope: !3507)
!3517 = !DILocation(line: 999, column: 26, scope: !3507)
!3518 = !DILocation(line: 0, scope: !3324, inlinedAt: !3514)
!3519 = !DILocation(line: 186, column: 13, scope: !3333, inlinedAt: !3514)
!3520 = !DILocation(line: 186, column: 7, scope: !3324, inlinedAt: !3514)
!3521 = !DILocation(line: 187, column: 5, scope: !3333, inlinedAt: !3514)
!3522 = !{!3523}
!3523 = distinct !{!3523, !3524, !"quoting_options_from_style: argument 0"}
!3524 = distinct !{!3524, !"quoting_options_from_style"}
!3525 = !DILocation(line: 1000, column: 13, scope: !3507)
!3526 = !DILocation(line: 0, scope: !2416, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 1001, column: 3, scope: !3507)
!3528 = !DILocation(line: 147, column: 57, scope: !2416, inlinedAt: !3527)
!3529 = !DILocation(line: 149, column: 21, scope: !2416, inlinedAt: !3527)
!3530 = !DILocation(line: 150, column: 6, scope: !2416, inlinedAt: !3527)
!3531 = !DILocation(line: 1002, column: 10, scope: !3507)
!3532 = !DILocation(line: 1003, column: 1, scope: !3507)
!3533 = !DILocation(line: 1002, column: 3, scope: !3507)
!3534 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !526, file: !526, line: 1006, type: !3535, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3537)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!54, !52, !107, !107, !107}
!3537 = !{!3538, !3539, !3540, !3541}
!3538 = !DILocalVariable(name: "n", arg: 1, scope: !3534, file: !526, line: 1006, type: !52)
!3539 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3534, file: !526, line: 1006, type: !107)
!3540 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3534, file: !526, line: 1007, type: !107)
!3541 = !DILocalVariable(name: "arg", arg: 4, scope: !3534, file: !526, line: 1007, type: !107)
!3542 = !DILocation(line: 0, scope: !3534)
!3543 = !DILocalVariable(name: "n", arg: 1, scope: !3544, file: !526, line: 1014, type: !52)
!3544 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !526, file: !526, line: 1014, type: !3545, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3547)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!54, !52, !107, !107, !107, !104}
!3547 = !{!3543, !3548, !3549, !3550, !3551, !3552}
!3548 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3544, file: !526, line: 1014, type: !107)
!3549 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3544, file: !526, line: 1015, type: !107)
!3550 = !DILocalVariable(name: "arg", arg: 4, scope: !3544, file: !526, line: 1016, type: !107)
!3551 = !DILocalVariable(name: "argsize", arg: 5, scope: !3544, file: !526, line: 1016, type: !104)
!3552 = !DILocalVariable(name: "o", scope: !3544, file: !526, line: 1018, type: !565)
!3553 = !DILocation(line: 0, scope: !3544, inlinedAt: !3554)
!3554 = distinct !DILocation(line: 1009, column: 10, scope: !3534)
!3555 = !DILocation(line: 1018, column: 3, scope: !3544, inlinedAt: !3554)
!3556 = !DILocation(line: 1018, column: 26, scope: !3544, inlinedAt: !3554)
!3557 = !DILocation(line: 1018, column: 30, scope: !3544, inlinedAt: !3554)
!3558 = !DILocation(line: 0, scope: !2456, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 1019, column: 3, scope: !3544, inlinedAt: !3554)
!3560 = !DILocation(line: 174, column: 12, scope: !2456, inlinedAt: !3559)
!3561 = !DILocation(line: 175, column: 8, scope: !2469, inlinedAt: !3559)
!3562 = !DILocation(line: 175, column: 19, scope: !2469, inlinedAt: !3559)
!3563 = !DILocation(line: 176, column: 5, scope: !2469, inlinedAt: !3559)
!3564 = !DILocation(line: 177, column: 6, scope: !2456, inlinedAt: !3559)
!3565 = !DILocation(line: 177, column: 17, scope: !2456, inlinedAt: !3559)
!3566 = !DILocation(line: 178, column: 6, scope: !2456, inlinedAt: !3559)
!3567 = !DILocation(line: 178, column: 18, scope: !2456, inlinedAt: !3559)
!3568 = !DILocation(line: 1020, column: 10, scope: !3544, inlinedAt: !3554)
!3569 = !DILocation(line: 1021, column: 1, scope: !3544, inlinedAt: !3554)
!3570 = !DILocation(line: 1009, column: 3, scope: !3534)
!3571 = !DILocation(line: 0, scope: !3544)
!3572 = !DILocation(line: 1018, column: 3, scope: !3544)
!3573 = !DILocation(line: 1018, column: 26, scope: !3544)
!3574 = !DILocation(line: 1018, column: 30, scope: !3544)
!3575 = !DILocation(line: 0, scope: !2456, inlinedAt: !3576)
!3576 = distinct !DILocation(line: 1019, column: 3, scope: !3544)
!3577 = !DILocation(line: 174, column: 12, scope: !2456, inlinedAt: !3576)
!3578 = !DILocation(line: 175, column: 8, scope: !2469, inlinedAt: !3576)
!3579 = !DILocation(line: 175, column: 19, scope: !2469, inlinedAt: !3576)
!3580 = !DILocation(line: 176, column: 5, scope: !2469, inlinedAt: !3576)
!3581 = !DILocation(line: 177, column: 6, scope: !2456, inlinedAt: !3576)
!3582 = !DILocation(line: 177, column: 17, scope: !2456, inlinedAt: !3576)
!3583 = !DILocation(line: 178, column: 6, scope: !2456, inlinedAt: !3576)
!3584 = !DILocation(line: 178, column: 18, scope: !2456, inlinedAt: !3576)
!3585 = !DILocation(line: 1020, column: 10, scope: !3544)
!3586 = !DILocation(line: 1021, column: 1, scope: !3544)
!3587 = !DILocation(line: 1020, column: 3, scope: !3544)
!3588 = distinct !DISubprogram(name: "quotearg_custom", scope: !526, file: !526, line: 1024, type: !3589, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3591)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!54, !107, !107, !107}
!3591 = !{!3592, !3593, !3594}
!3592 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3588, file: !526, line: 1024, type: !107)
!3593 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3588, file: !526, line: 1024, type: !107)
!3594 = !DILocalVariable(name: "arg", arg: 3, scope: !3588, file: !526, line: 1025, type: !107)
!3595 = !DILocation(line: 0, scope: !3588)
!3596 = !DILocation(line: 0, scope: !3534, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 1027, column: 10, scope: !3588)
!3598 = !DILocation(line: 0, scope: !3544, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 1009, column: 10, scope: !3534, inlinedAt: !3597)
!3600 = !DILocation(line: 1018, column: 3, scope: !3544, inlinedAt: !3599)
!3601 = !DILocation(line: 1018, column: 26, scope: !3544, inlinedAt: !3599)
!3602 = !DILocation(line: 1018, column: 30, scope: !3544, inlinedAt: !3599)
!3603 = !DILocation(line: 0, scope: !2456, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 1019, column: 3, scope: !3544, inlinedAt: !3599)
!3605 = !DILocation(line: 174, column: 12, scope: !2456, inlinedAt: !3604)
!3606 = !DILocation(line: 175, column: 8, scope: !2469, inlinedAt: !3604)
!3607 = !DILocation(line: 175, column: 19, scope: !2469, inlinedAt: !3604)
!3608 = !DILocation(line: 176, column: 5, scope: !2469, inlinedAt: !3604)
!3609 = !DILocation(line: 177, column: 6, scope: !2456, inlinedAt: !3604)
!3610 = !DILocation(line: 177, column: 17, scope: !2456, inlinedAt: !3604)
!3611 = !DILocation(line: 178, column: 6, scope: !2456, inlinedAt: !3604)
!3612 = !DILocation(line: 178, column: 18, scope: !2456, inlinedAt: !3604)
!3613 = !DILocation(line: 1020, column: 10, scope: !3544, inlinedAt: !3599)
!3614 = !DILocation(line: 1021, column: 1, scope: !3544, inlinedAt: !3599)
!3615 = !DILocation(line: 1027, column: 3, scope: !3588)
!3616 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !526, file: !526, line: 1031, type: !3617, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3619)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!54, !107, !107, !107, !104}
!3619 = !{!3620, !3621, !3622, !3623}
!3620 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3616, file: !526, line: 1031, type: !107)
!3621 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3616, file: !526, line: 1031, type: !107)
!3622 = !DILocalVariable(name: "arg", arg: 3, scope: !3616, file: !526, line: 1032, type: !107)
!3623 = !DILocalVariable(name: "argsize", arg: 4, scope: !3616, file: !526, line: 1032, type: !104)
!3624 = !DILocation(line: 0, scope: !3616)
!3625 = !DILocation(line: 0, scope: !3544, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 1034, column: 10, scope: !3616)
!3627 = !DILocation(line: 1018, column: 3, scope: !3544, inlinedAt: !3626)
!3628 = !DILocation(line: 1018, column: 26, scope: !3544, inlinedAt: !3626)
!3629 = !DILocation(line: 1018, column: 30, scope: !3544, inlinedAt: !3626)
!3630 = !DILocation(line: 0, scope: !2456, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 1019, column: 3, scope: !3544, inlinedAt: !3626)
!3632 = !DILocation(line: 174, column: 12, scope: !2456, inlinedAt: !3631)
!3633 = !DILocation(line: 175, column: 8, scope: !2469, inlinedAt: !3631)
!3634 = !DILocation(line: 175, column: 19, scope: !2469, inlinedAt: !3631)
!3635 = !DILocation(line: 176, column: 5, scope: !2469, inlinedAt: !3631)
!3636 = !DILocation(line: 177, column: 6, scope: !2456, inlinedAt: !3631)
!3637 = !DILocation(line: 177, column: 17, scope: !2456, inlinedAt: !3631)
!3638 = !DILocation(line: 178, column: 6, scope: !2456, inlinedAt: !3631)
!3639 = !DILocation(line: 178, column: 18, scope: !2456, inlinedAt: !3631)
!3640 = !DILocation(line: 1020, column: 10, scope: !3544, inlinedAt: !3626)
!3641 = !DILocation(line: 1021, column: 1, scope: !3544, inlinedAt: !3626)
!3642 = !DILocation(line: 1034, column: 3, scope: !3616)
!3643 = distinct !DISubprogram(name: "quote_n_mem", scope: !526, file: !526, line: 1049, type: !3644, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3646)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!107, !52, !107, !104}
!3646 = !{!3647, !3648, !3649}
!3647 = !DILocalVariable(name: "n", arg: 1, scope: !3643, file: !526, line: 1049, type: !52)
!3648 = !DILocalVariable(name: "arg", arg: 2, scope: !3643, file: !526, line: 1049, type: !107)
!3649 = !DILocalVariable(name: "argsize", arg: 3, scope: !3643, file: !526, line: 1049, type: !104)
!3650 = !DILocation(line: 0, scope: !3643)
!3651 = !DILocation(line: 1051, column: 10, scope: !3643)
!3652 = !DILocation(line: 1051, column: 3, scope: !3643)
!3653 = distinct !DISubprogram(name: "quote_mem", scope: !526, file: !526, line: 1055, type: !3654, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3656)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!107, !107, !104}
!3656 = !{!3657, !3658}
!3657 = !DILocalVariable(name: "arg", arg: 1, scope: !3653, file: !526, line: 1055, type: !107)
!3658 = !DILocalVariable(name: "argsize", arg: 2, scope: !3653, file: !526, line: 1055, type: !104)
!3659 = !DILocation(line: 0, scope: !3653)
!3660 = !DILocation(line: 0, scope: !3643, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 1057, column: 10, scope: !3653)
!3662 = !DILocation(line: 1051, column: 10, scope: !3643, inlinedAt: !3661)
!3663 = !DILocation(line: 1057, column: 3, scope: !3653)
!3664 = distinct !DISubprogram(name: "quote_n", scope: !526, file: !526, line: 1061, type: !3665, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3667)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!107, !52, !107}
!3667 = !{!3668, !3669}
!3668 = !DILocalVariable(name: "n", arg: 1, scope: !3664, file: !526, line: 1061, type: !52)
!3669 = !DILocalVariable(name: "arg", arg: 2, scope: !3664, file: !526, line: 1061, type: !107)
!3670 = !DILocation(line: 0, scope: !3664)
!3671 = !DILocation(line: 0, scope: !3643, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 1063, column: 10, scope: !3664)
!3673 = !DILocation(line: 1051, column: 10, scope: !3643, inlinedAt: !3672)
!3674 = !DILocation(line: 1063, column: 3, scope: !3664)
!3675 = distinct !DISubprogram(name: "quote", scope: !526, file: !526, line: 1067, type: !3676, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3678)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!107, !107}
!3678 = !{!3679}
!3679 = !DILocalVariable(name: "arg", arg: 1, scope: !3675, file: !526, line: 1067, type: !107)
!3680 = !DILocation(line: 0, scope: !3675)
!3681 = !DILocation(line: 0, scope: !3664, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 1069, column: 10, scope: !3675)
!3683 = !DILocation(line: 0, scope: !3643, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 1063, column: 10, scope: !3664, inlinedAt: !3682)
!3685 = !DILocation(line: 1051, column: 10, scope: !3643, inlinedAt: !3684)
!3686 = !DILocation(line: 1069, column: 3, scope: !3675)
!3687 = distinct !DISubprogram(name: "init_tokenbuffer", scope: !765, file: !765, line: 43, type: !3688, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3696)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{null, !3690}
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !1108, line: 38, baseType: !3692)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !1108, line: 33, size: 128, elements: !3693)
!3693 = !{!3694, !3695}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3692, file: !1108, line: 35, baseType: !104, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3692, file: !1108, line: 36, baseType: !54, size: 64, offset: 64)
!3696 = !{!3697}
!3697 = !DILocalVariable(name: "tokenbuffer", arg: 1, scope: !3687, file: !765, line: 43, type: !3690)
!3698 = !DILocation(line: 0, scope: !3687)
!3699 = !DILocation(line: 46, column: 23, scope: !3687)
!3700 = !DILocation(line: 47, column: 1, scope: !3687)
!3701 = distinct !DISubprogram(name: "readtoken", scope: !765, file: !765, line: 79, type: !3702, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3738)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!104, !3704, !107, !104, !3690}
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !3706)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !3707)
!3707 = !{!3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3706, file: !171, line: 51, baseType: !52, size: 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3706, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3706, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3706, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3706, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3706, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3706, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3706, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3706, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3706, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3706, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3706, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3706, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3706, file: !171, line: 70, baseType: !3722, size: 64, offset: 832)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3706, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3706, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3706, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3706, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3706, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3706, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3706, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3706, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3706, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3706, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3706, file: !171, line: 93, baseType: !3722, size: 64, offset: 1344)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3706, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3706, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3706, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3706, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!3738 = !{!3739, !3740, !3741, !3742, !3743, !3746, !3748, !3751, !3752, !3753, !3754}
!3739 = !DILocalVariable(name: "stream", arg: 1, scope: !3701, file: !765, line: 79, type: !3704)
!3740 = !DILocalVariable(name: "delim", arg: 2, scope: !3701, file: !765, line: 80, type: !107)
!3741 = !DILocalVariable(name: "n_delim", arg: 3, scope: !3701, file: !765, line: 81, type: !104)
!3742 = !DILocalVariable(name: "tokenbuffer", arg: 4, scope: !3701, file: !765, line: 82, type: !3690)
!3743 = !DILocalVariable(name: "isdelim", scope: !3701, file: !765, line: 84, type: !3744)
!3744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3745, size: 256, elements: !232)
!3745 = !DIDerivedType(tag: DW_TAG_typedef, name: "word", file: !765, line: 49, baseType: !104)
!3746 = !DILocalVariable(name: "i", scope: !3747, file: !765, line: 86, type: !798)
!3747 = distinct !DILexicalBlock(scope: !3701, file: !765, line: 86, column: 3)
!3748 = !DILocalVariable(name: "ch", scope: !3749, file: !765, line: 88, type: !109)
!3749 = distinct !DILexicalBlock(scope: !3750, file: !765, line: 87, column: 5)
!3750 = distinct !DILexicalBlock(scope: !3747, file: !765, line: 86, column: 3)
!3751 = !DILocalVariable(name: "c", scope: !3701, file: !765, line: 92, type: !52)
!3752 = !DILocalVariable(name: "p", scope: !3701, file: !765, line: 100, type: !54)
!3753 = !DILocalVariable(name: "n", scope: !3701, file: !765, line: 101, type: !798)
!3754 = !DILocalVariable(name: "i", scope: !3701, file: !765, line: 102, type: !798)
!3755 = !DILocation(line: 0, scope: !3701)
!3756 = !DILocation(line: 84, column: 3, scope: !3701)
!3757 = !DILocation(line: 84, column: 8, scope: !3701)
!3758 = !DILocalVariable(name: "__dest", arg: 1, scope: !3759, file: !2359, line: 57, type: !102)
!3759 = distinct !DISubprogram(name: "memset", scope: !2359, file: !2359, line: 57, type: !2360, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3760)
!3760 = !{!3758, !3761, !3762}
!3761 = !DILocalVariable(name: "__ch", arg: 2, scope: !3759, file: !2359, line: 57, type: !52)
!3762 = !DILocalVariable(name: "__len", arg: 3, scope: !3759, file: !2359, line: 57, type: !104)
!3763 = !DILocation(line: 0, scope: !3759, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 85, column: 3, scope: !3701)
!3765 = !DILocation(line: 59, column: 10, scope: !3759, inlinedAt: !3764)
!3766 = !DILocation(line: 0, scope: !3747)
!3767 = !DILocation(line: 86, column: 23, scope: !3750)
!3768 = !DILocation(line: 86, column: 3, scope: !3747)
!3769 = !DILocation(line: 88, column: 26, scope: !3749)
!3770 = !DILocation(line: 0, scope: !3749)
!3771 = !DILocation(line: 89, column: 20, scope: !3749)
!3772 = !DILocalVariable(name: "n", arg: 1, scope: !3773, file: !765, line: 59, type: !104)
!3773 = distinct !DISubprogram(name: "set_nth_bit", scope: !765, file: !765, line: 59, type: !3774, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3777)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{null, !104, !3776}
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3777 = !{!3772, !3778, !3779}
!3778 = !DILocalVariable(name: "bitset", arg: 2, scope: !3773, file: !765, line: 59, type: !3776)
!3779 = !DILocalVariable(name: "one", scope: !3773, file: !765, line: 61, type: !104)
!3780 = !DILocation(line: 0, scope: !3773, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 89, column: 7, scope: !3749)
!3782 = !DILocation(line: 62, column: 41, scope: !3773, inlinedAt: !3781)
!3783 = !DILocation(line: 62, column: 36, scope: !3773, inlinedAt: !3781)
!3784 = !DILocation(line: 62, column: 12, scope: !3773, inlinedAt: !3781)
!3785 = !DILocation(line: 62, column: 3, scope: !3773, inlinedAt: !3781)
!3786 = !DILocation(line: 62, column: 29, scope: !3773, inlinedAt: !3781)
!3787 = !DILocation(line: 68, column: 10, scope: !3788, inlinedAt: !3793)
!3788 = distinct !DISubprogram(name: "getc_unlocked", scope: !1157, file: !1157, line: 66, type: !3789, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3791)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!52, !3704}
!3791 = !{!3792}
!3792 = !DILocalVariable(name: "__fp", arg: 1, scope: !3788, file: !1157, line: 66, type: !3704)
!3793 = distinct !DILocation(line: 95, column: 12, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3701, file: !765, line: 95, column: 3)
!3795 = !DILocation(line: 0, scope: !3788, inlinedAt: !3793)
!3796 = !DILocation(line: 95, column: 34, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3794, file: !765, line: 95, column: 3)
!3798 = !DILocation(line: 95, column: 29, scope: !3797)
!3799 = !DILocation(line: 95, column: 3, scope: !3794)
!3800 = !DILocation(line: 86, column: 35, scope: !3750)
!3801 = distinct !{!3801, !3768, !3802, !956}
!3802 = !DILocation(line: 90, column: 5, scope: !3747)
!3803 = !DILocalVariable(name: "n", arg: 1, scope: !3804, file: !765, line: 53, type: !104)
!3804 = distinct !DISubprogram(name: "get_nth_bit", scope: !765, file: !765, line: 53, type: !3805, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3809)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!154, !104, !3807}
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3745)
!3809 = !{!3803, !3810}
!3810 = !DILocalVariable(name: "bitset", arg: 2, scope: !3804, file: !765, line: 53, type: !3807)
!3811 = !DILocation(line: 0, scope: !3804, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 95, column: 37, scope: !3797)
!3813 = !DILocation(line: 55, column: 19, scope: !3804, inlinedAt: !3812)
!3814 = !DILocation(line: 55, column: 10, scope: !3804, inlinedAt: !3812)
!3815 = !DILocation(line: 55, column: 41, scope: !3804, inlinedAt: !3812)
!3816 = !DILocation(line: 0, scope: !3788, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 95, column: 67, scope: !3797)
!3818 = !DILocation(line: 68, column: 10, scope: !3788, inlinedAt: !3817)
!3819 = distinct !{!3819, !3799, !3820, !956}
!3820 = !DILocation(line: 98, column: 5, scope: !3794)
!3821 = !DILocation(line: 101, column: 3, scope: !3701)
!3822 = !DILocation(line: 105, column: 17, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3824, file: !765, line: 105, column: 11)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !765, line: 104, column: 5)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !765, line: 103, column: 3)
!3826 = distinct !DILexicalBlock(scope: !3701, file: !765, line: 103, column: 3)
!3827 = !DILocation(line: 100, column: 26, scope: !3701)
!3828 = !DILocation(line: 101, column: 26, scope: !3701)
!3829 = !{!1174, !1166, i64 0}
!3830 = !DILocation(line: 101, column: 9, scope: !3701)
!3831 = !DILocation(line: 103, column: 3, scope: !3826)
!3832 = !DILocation(line: 108, column: 16, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3824, file: !765, line: 108, column: 11)
!3834 = !DILocation(line: 108, column: 13, scope: !3833)
!3835 = !DILocation(line: 108, column: 11, scope: !3824)
!3836 = !DILocation(line: 109, column: 13, scope: !3833)
!3837 = !DILocation(line: 109, column: 9, scope: !3833)
!3838 = !DILocation(line: 111, column: 11, scope: !3824)
!3839 = !DILocation(line: 0, scope: !3804, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 116, column: 11, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3824, file: !765, line: 116, column: 11)
!3842 = !DILocation(line: 55, column: 19, scope: !3804, inlinedAt: !3840)
!3843 = !DILocation(line: 55, column: 10, scope: !3804, inlinedAt: !3840)
!3844 = !DILocation(line: 55, column: 41, scope: !3804, inlinedAt: !3840)
!3845 = !DILocation(line: 116, column: 11, scope: !3824)
!3846 = !DILocation(line: 121, column: 16, scope: !3824)
!3847 = !DILocation(line: 121, column: 10, scope: !3824)
!3848 = !DILocation(line: 121, column: 7, scope: !3824)
!3849 = !DILocation(line: 121, column: 14, scope: !3824)
!3850 = !DILocation(line: 0, scope: !3788, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 122, column: 11, scope: !3824)
!3852 = !DILocation(line: 68, column: 10, scope: !3788, inlinedAt: !3851)
!3853 = !DILocation(line: 105, column: 13, scope: !3823)
!3854 = !DILocation(line: 0, scope: !3824)
!3855 = !DILocation(line: 125, column: 23, scope: !3701)
!3856 = !DILocation(line: 126, column: 23, scope: !3701)
!3857 = !DILocation(line: 126, column: 21, scope: !3701)
!3858 = !DILocation(line: 127, column: 3, scope: !3701)
!3859 = !DILocation(line: 128, column: 1, scope: !3701)
!3860 = !DISubprogram(name: "__uflow", scope: !904, file: !904, line: 885, type: !3789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3861 = distinct !DISubprogram(name: "readtokens", scope: !765, file: !765, line: 138, type: !3862, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3866)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!104, !3704, !104, !107, !104, !3864, !3865}
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!3866 = !{!3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3883}
!3867 = !DILocalVariable(name: "stream", arg: 1, scope: !3861, file: !765, line: 138, type: !3704)
!3868 = !DILocalVariable(name: "projected_n_tokens", arg: 2, scope: !3861, file: !765, line: 139, type: !104)
!3869 = !DILocalVariable(name: "delim", arg: 3, scope: !3861, file: !765, line: 140, type: !107)
!3870 = !DILocalVariable(name: "n_delim", arg: 4, scope: !3861, file: !765, line: 141, type: !104)
!3871 = !DILocalVariable(name: "tokens_out", arg: 5, scope: !3861, file: !765, line: 142, type: !3864)
!3872 = !DILocalVariable(name: "token_lengths", arg: 6, scope: !3861, file: !765, line: 143, type: !3865)
!3873 = !DILocalVariable(name: "sz", scope: !3861, file: !765, line: 151, type: !798)
!3874 = !DILocalVariable(name: "tokens", scope: !3861, file: !765, line: 152, type: !53)
!3875 = !DILocalVariable(name: "lengths", scope: !3861, file: !765, line: 153, type: !785)
!3876 = !DILocalVariable(name: "tb", scope: !3861, file: !765, line: 155, type: !3691)
!3877 = !DILocalVariable(name: "token", scope: !3861, file: !765, line: 156, type: !3690)
!3878 = !DILocalVariable(name: "n_tokens", scope: !3861, file: !765, line: 158, type: !798)
!3879 = !DILocalVariable(name: "token_length", scope: !3880, file: !765, line: 161, type: !104)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !765, line: 160, column: 5)
!3881 = distinct !DILexicalBlock(scope: !3882, file: !765, line: 159, column: 3)
!3882 = distinct !DILexicalBlock(scope: !3861, file: !765, line: 159, column: 3)
!3883 = !DILocalVariable(name: "tmp", scope: !3880, file: !765, line: 175, type: !54)
!3884 = !DILocation(line: 0, scope: !3861)
!3885 = !DILocation(line: 146, column: 26, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3861, file: !765, line: 146, column: 7)
!3887 = !DILocation(line: 146, column: 7, scope: !3861)
!3888 = !DILocation(line: 151, column: 3, scope: !3861)
!3889 = !DILocation(line: 151, column: 9, scope: !3861)
!3890 = !DILocation(line: 152, column: 19, scope: !3861)
!3891 = !DILocation(line: 153, column: 21, scope: !3861)
!3892 = !DILocation(line: 155, column: 3, scope: !3861)
!3893 = !DILocation(line: 155, column: 16, scope: !3861)
!3894 = !DILocation(line: 0, scope: !3687, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 157, column: 3, scope: !3861)
!3896 = !DILocation(line: 46, column: 23, scope: !3687, inlinedAt: !3895)
!3897 = !DILocation(line: 159, column: 3, scope: !3861)
!3898 = !DILocation(line: 158, column: 9, scope: !3861)
!3899 = !DILocation(line: 161, column: 29, scope: !3880)
!3900 = !DILocation(line: 0, scope: !3880)
!3901 = !DILocation(line: 162, column: 23, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3880, file: !765, line: 162, column: 11)
!3903 = !DILocation(line: 162, column: 20, scope: !3902)
!3904 = !DILocation(line: 162, column: 11, scope: !3880)
!3905 = !DILocation(line: 164, column: 20, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3902, file: !765, line: 163, column: 9)
!3907 = !DILocation(line: 165, column: 45, scope: !3906)
!3908 = !DILocation(line: 165, column: 21, scope: !3906)
!3909 = !DILocation(line: 166, column: 9, scope: !3906)
!3910 = !DILocation(line: 168, column: 24, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3880, file: !765, line: 168, column: 11)
!3912 = !DILocation(line: 168, column: 11, scope: !3880)
!3913 = !DILocation(line: 175, column: 42, scope: !3880)
!3914 = !DILocation(line: 175, column: 19, scope: !3880)
!3915 = !DILocation(line: 176, column: 25, scope: !3880)
!3916 = !DILocation(line: 177, column: 46, scope: !3880)
!3917 = !DILocalVariable(name: "__dest", arg: 1, scope: !3918, file: !2359, line: 26, type: !3921)
!3918 = distinct !DISubprogram(name: "memcpy", scope: !2359, file: !2359, line: 26, type: !3919, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3922)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!102, !3921, !1057, !104}
!3921 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!3922 = !{!3917, !3923, !3924}
!3923 = !DILocalVariable(name: "__src", arg: 2, scope: !3918, file: !2359, line: 26, type: !1057)
!3924 = !DILocalVariable(name: "__len", arg: 3, scope: !3918, file: !2359, line: 26, type: !104)
!3925 = !DILocation(line: 0, scope: !3918, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 177, column: 26, scope: !3880)
!3927 = !DILocation(line: 29, column: 10, scope: !3918, inlinedAt: !3926)
!3928 = !DILocation(line: 177, column: 7, scope: !3880)
!3929 = !DILocation(line: 177, column: 24, scope: !3880)
!3930 = !DILocation(line: 178, column: 15, scope: !3880)
!3931 = !DILocation(line: 171, column: 11, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3911, file: !765, line: 169, column: 9)
!3933 = !DILocation(line: 171, column: 28, scope: !3932)
!3934 = !DILocation(line: 172, column: 29, scope: !3932)
!3935 = !DILocation(line: 181, column: 16, scope: !3861)
!3936 = !DILocation(line: 181, column: 3, scope: !3861)
!3937 = !DILocation(line: 182, column: 15, scope: !3861)
!3938 = !DILocation(line: 183, column: 21, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3861, file: !765, line: 183, column: 7)
!3940 = !DILocation(line: 183, column: 7, scope: !3861)
!3941 = !DILocation(line: 184, column: 20, scope: !3939)
!3942 = !DILocation(line: 184, column: 5, scope: !3939)
!3943 = !DILocation(line: 186, column: 5, scope: !3939)
!3944 = !DILocation(line: 188, column: 1, scope: !3861)
!3945 = !DILocation(line: 187, column: 3, scope: !3861)
!3946 = distinct !DISubprogram(name: "version_etc_arn", scope: !628, file: !628, line: 61, type: !3947, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !3984)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{null, !3949, !107, !107, !107, !3983, !104}
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !3951)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !3952)
!3952 = !{!3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3951, file: !171, line: 51, baseType: !52, size: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3951, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3951, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3951, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3951, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3951, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3951, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3951, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3951, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3951, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3951, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3951, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3951, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3951, file: !171, line: 70, baseType: !3967, size: 64, offset: 832)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3951, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3951, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3951, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3951, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3951, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3951, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3951, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3951, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3951, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3951, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3951, file: !171, line: 93, baseType: !3967, size: 64, offset: 1344)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3951, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3951, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3951, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3951, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!3984 = !{!3985, !3986, !3987, !3988, !3989, !3990}
!3985 = !DILocalVariable(name: "stream", arg: 1, scope: !3946, file: !628, line: 61, type: !3949)
!3986 = !DILocalVariable(name: "command_name", arg: 2, scope: !3946, file: !628, line: 62, type: !107)
!3987 = !DILocalVariable(name: "package", arg: 3, scope: !3946, file: !628, line: 62, type: !107)
!3988 = !DILocalVariable(name: "version", arg: 4, scope: !3946, file: !628, line: 63, type: !107)
!3989 = !DILocalVariable(name: "authors", arg: 5, scope: !3946, file: !628, line: 64, type: !3983)
!3990 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3946, file: !628, line: 64, type: !104)
!3991 = !DILocation(line: 0, scope: !3946)
!3992 = !DILocation(line: 66, column: 7, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3946, file: !628, line: 66, column: 7)
!3994 = !DILocation(line: 66, column: 7, scope: !3946)
!3995 = !DILocation(line: 67, column: 5, scope: !3993)
!3996 = !DILocation(line: 69, column: 5, scope: !3993)
!3997 = !DILocation(line: 83, column: 3, scope: !3946)
!3998 = !DILocation(line: 85, column: 3, scope: !3946)
!3999 = !DILocation(line: 88, column: 3, scope: !3946)
!4000 = !DILocation(line: 95, column: 3, scope: !3946)
!4001 = !DILocation(line: 97, column: 3, scope: !3946)
!4002 = !DILocation(line: 105, column: 7, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3946, file: !628, line: 98, column: 5)
!4004 = !DILocation(line: 106, column: 7, scope: !4003)
!4005 = !DILocation(line: 109, column: 7, scope: !4003)
!4006 = !DILocation(line: 110, column: 7, scope: !4003)
!4007 = !DILocation(line: 113, column: 7, scope: !4003)
!4008 = !DILocation(line: 115, column: 7, scope: !4003)
!4009 = !DILocation(line: 120, column: 7, scope: !4003)
!4010 = !DILocation(line: 122, column: 7, scope: !4003)
!4011 = !DILocation(line: 127, column: 7, scope: !4003)
!4012 = !DILocation(line: 129, column: 7, scope: !4003)
!4013 = !DILocation(line: 134, column: 7, scope: !4003)
!4014 = !DILocation(line: 137, column: 7, scope: !4003)
!4015 = !DILocation(line: 142, column: 7, scope: !4003)
!4016 = !DILocation(line: 145, column: 7, scope: !4003)
!4017 = !DILocation(line: 150, column: 7, scope: !4003)
!4018 = !DILocation(line: 154, column: 7, scope: !4003)
!4019 = !DILocation(line: 159, column: 7, scope: !4003)
!4020 = !DILocation(line: 163, column: 7, scope: !4003)
!4021 = !DILocation(line: 170, column: 7, scope: !4003)
!4022 = !DILocation(line: 174, column: 7, scope: !4003)
!4023 = !DILocation(line: 176, column: 1, scope: !3946)
!4024 = distinct !DISubprogram(name: "version_etc_ar", scope: !628, file: !628, line: 183, type: !4025, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !4027)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{null, !3949, !107, !107, !107, !3983}
!4027 = !{!4028, !4029, !4030, !4031, !4032, !4033}
!4028 = !DILocalVariable(name: "stream", arg: 1, scope: !4024, file: !628, line: 183, type: !3949)
!4029 = !DILocalVariable(name: "command_name", arg: 2, scope: !4024, file: !628, line: 184, type: !107)
!4030 = !DILocalVariable(name: "package", arg: 3, scope: !4024, file: !628, line: 184, type: !107)
!4031 = !DILocalVariable(name: "version", arg: 4, scope: !4024, file: !628, line: 185, type: !107)
!4032 = !DILocalVariable(name: "authors", arg: 5, scope: !4024, file: !628, line: 185, type: !3983)
!4033 = !DILocalVariable(name: "n_authors", scope: !4024, file: !628, line: 187, type: !104)
!4034 = !DILocation(line: 0, scope: !4024)
!4035 = !DILocation(line: 189, column: 8, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4024, file: !628, line: 189, column: 3)
!4037 = !DILocation(line: 189, scope: !4036)
!4038 = !DILocation(line: 189, column: 23, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4036, file: !628, line: 189, column: 3)
!4040 = !DILocation(line: 189, column: 3, scope: !4036)
!4041 = !DILocation(line: 189, column: 52, scope: !4039)
!4042 = distinct !{!4042, !4040, !4043, !956}
!4043 = !DILocation(line: 190, column: 5, scope: !4036)
!4044 = !DILocation(line: 191, column: 3, scope: !4024)
!4045 = !DILocation(line: 192, column: 1, scope: !4024)
!4046 = distinct !DISubprogram(name: "version_etc_va", scope: !628, file: !628, line: 199, type: !4047, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !4057)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{null, !3949, !107, !107, !107, !4049}
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4051)
!4051 = !{!4052, !4054, !4055, !4056}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4050, file: !4053, line: 192, baseType: !64, size: 32)
!4053 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4050, file: !4053, line: 192, baseType: !64, size: 32, offset: 32)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4050, file: !4053, line: 192, baseType: !102, size: 64, offset: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4050, file: !4053, line: 192, baseType: !102, size: 64, offset: 128)
!4057 = !{!4058, !4059, !4060, !4061, !4062, !4063, !4064}
!4058 = !DILocalVariable(name: "stream", arg: 1, scope: !4046, file: !628, line: 199, type: !3949)
!4059 = !DILocalVariable(name: "command_name", arg: 2, scope: !4046, file: !628, line: 200, type: !107)
!4060 = !DILocalVariable(name: "package", arg: 3, scope: !4046, file: !628, line: 200, type: !107)
!4061 = !DILocalVariable(name: "version", arg: 4, scope: !4046, file: !628, line: 201, type: !107)
!4062 = !DILocalVariable(name: "authors", arg: 5, scope: !4046, file: !628, line: 201, type: !4049)
!4063 = !DILocalVariable(name: "n_authors", scope: !4046, file: !628, line: 203, type: !104)
!4064 = !DILocalVariable(name: "authtab", scope: !4046, file: !628, line: 204, type: !4065)
!4065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 640, elements: !40)
!4066 = !DILocation(line: 0, scope: !4046)
!4067 = !DILocation(line: 204, column: 3, scope: !4046)
!4068 = !DILocation(line: 204, column: 15, scope: !4046)
!4069 = !DILocation(line: 208, column: 35, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4071, file: !628, line: 206, column: 3)
!4071 = distinct !DILexicalBlock(scope: !4046, file: !628, line: 206, column: 3)
!4072 = !DILocation(line: 208, column: 33, scope: !4070)
!4073 = !DILocation(line: 208, column: 67, scope: !4070)
!4074 = !DILocation(line: 206, column: 3, scope: !4071)
!4075 = !DILocation(line: 208, column: 14, scope: !4070)
!4076 = !DILocation(line: 0, scope: !4071)
!4077 = !DILocation(line: 211, column: 3, scope: !4046)
!4078 = !DILocation(line: 213, column: 1, scope: !4046)
!4079 = distinct !DISubprogram(name: "version_etc", scope: !628, file: !628, line: 230, type: !4080, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !4082)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{null, !3949, !107, !107, !107, null}
!4082 = !{!4083, !4084, !4085, !4086, !4087}
!4083 = !DILocalVariable(name: "stream", arg: 1, scope: !4079, file: !628, line: 230, type: !3949)
!4084 = !DILocalVariable(name: "command_name", arg: 2, scope: !4079, file: !628, line: 231, type: !107)
!4085 = !DILocalVariable(name: "package", arg: 3, scope: !4079, file: !628, line: 231, type: !107)
!4086 = !DILocalVariable(name: "version", arg: 4, scope: !4079, file: !628, line: 232, type: !107)
!4087 = !DILocalVariable(name: "authors", scope: !4079, file: !628, line: 234, type: !4088)
!4088 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !904, line: 52, baseType: !4089)
!4089 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1823, line: 14, baseType: !4090)
!4090 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4053, baseType: !4091)
!4091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4050, size: 192, elements: !35)
!4092 = !DILocation(line: 0, scope: !4079)
!4093 = !DILocation(line: 234, column: 3, scope: !4079)
!4094 = !DILocation(line: 234, column: 11, scope: !4079)
!4095 = !DILocation(line: 235, column: 3, scope: !4079)
!4096 = !DILocation(line: 236, column: 3, scope: !4079)
!4097 = !DILocation(line: 237, column: 3, scope: !4079)
!4098 = !DILocation(line: 238, column: 1, scope: !4079)
!4099 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !628, file: !628, line: 241, type: !478, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !853)
!4100 = !DILocation(line: 243, column: 3, scope: !4099)
!4101 = !DILocation(line: 248, column: 3, scope: !4099)
!4102 = !DILocation(line: 254, column: 3, scope: !4099)
!4103 = !DILocation(line: 259, column: 3, scope: !4099)
!4104 = !DILocation(line: 261, column: 1, scope: !4099)
!4105 = distinct !DISubprogram(name: "xnrealloc", scope: !4106, file: !4106, line: 147, type: !4107, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4109)
!4106 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!102, !102, !104, !104}
!4109 = !{!4110, !4111, !4112}
!4110 = !DILocalVariable(name: "p", arg: 1, scope: !4105, file: !4106, line: 147, type: !102)
!4111 = !DILocalVariable(name: "n", arg: 2, scope: !4105, file: !4106, line: 147, type: !104)
!4112 = !DILocalVariable(name: "s", arg: 3, scope: !4105, file: !4106, line: 147, type: !104)
!4113 = !DILocation(line: 0, scope: !4105)
!4114 = !DILocalVariable(name: "p", arg: 1, scope: !4115, file: !779, line: 83, type: !102)
!4115 = distinct !DISubprogram(name: "xreallocarray", scope: !779, file: !779, line: 83, type: !4107, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4116)
!4116 = !{!4114, !4117, !4118}
!4117 = !DILocalVariable(name: "n", arg: 2, scope: !4115, file: !779, line: 83, type: !104)
!4118 = !DILocalVariable(name: "s", arg: 3, scope: !4115, file: !779, line: 83, type: !104)
!4119 = !DILocation(line: 0, scope: !4115, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 149, column: 10, scope: !4105)
!4121 = !DILocation(line: 85, column: 25, scope: !4115, inlinedAt: !4120)
!4122 = !DILocalVariable(name: "p", arg: 1, scope: !4123, file: !779, line: 37, type: !102)
!4123 = distinct !DISubprogram(name: "check_nonnull", scope: !779, file: !779, line: 37, type: !4124, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4126)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!102, !102}
!4126 = !{!4122}
!4127 = !DILocation(line: 0, scope: !4123, inlinedAt: !4128)
!4128 = distinct !DILocation(line: 85, column: 10, scope: !4115, inlinedAt: !4120)
!4129 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4128)
!4130 = distinct !DILexicalBlock(scope: !4123, file: !779, line: 39, column: 7)
!4131 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4128)
!4132 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4128)
!4133 = !DILocation(line: 149, column: 3, scope: !4105)
!4134 = !DILocation(line: 0, scope: !4115)
!4135 = !DILocation(line: 85, column: 25, scope: !4115)
!4136 = !DILocation(line: 0, scope: !4123, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 85, column: 10, scope: !4115)
!4138 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4137)
!4139 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4137)
!4140 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4137)
!4141 = !DILocation(line: 85, column: 3, scope: !4115)
!4142 = distinct !DISubprogram(name: "xmalloc", scope: !779, file: !779, line: 47, type: !4143, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4145)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!102, !104}
!4145 = !{!4146}
!4146 = !DILocalVariable(name: "s", arg: 1, scope: !4142, file: !779, line: 47, type: !104)
!4147 = !DILocation(line: 0, scope: !4142)
!4148 = !DILocation(line: 49, column: 25, scope: !4142)
!4149 = !DILocation(line: 0, scope: !4123, inlinedAt: !4150)
!4150 = distinct !DILocation(line: 49, column: 10, scope: !4142)
!4151 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4150)
!4152 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4150)
!4153 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4150)
!4154 = !DILocation(line: 49, column: 3, scope: !4142)
!4155 = !DISubprogram(name: "malloc", scope: !1034, file: !1034, line: 540, type: !4143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!4156 = distinct !DISubprogram(name: "ximalloc", scope: !779, file: !779, line: 53, type: !4157, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4159)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!102, !798}
!4159 = !{!4160}
!4160 = !DILocalVariable(name: "s", arg: 1, scope: !4156, file: !779, line: 53, type: !798)
!4161 = !DILocation(line: 0, scope: !4156)
!4162 = !DILocalVariable(name: "s", arg: 1, scope: !4163, file: !4164, line: 55, type: !798)
!4163 = distinct !DISubprogram(name: "imalloc", scope: !4164, file: !4164, line: 55, type: !4157, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4165)
!4164 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4165 = !{!4162}
!4166 = !DILocation(line: 0, scope: !4163, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 55, column: 25, scope: !4156)
!4168 = !DILocation(line: 57, column: 26, scope: !4163, inlinedAt: !4167)
!4169 = !DILocation(line: 0, scope: !4123, inlinedAt: !4170)
!4170 = distinct !DILocation(line: 55, column: 10, scope: !4156)
!4171 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4170)
!4172 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4170)
!4173 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4170)
!4174 = !DILocation(line: 55, column: 3, scope: !4156)
!4175 = distinct !DISubprogram(name: "xcharalloc", scope: !779, file: !779, line: 59, type: !4176, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4178)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!54, !104}
!4178 = !{!4179}
!4179 = !DILocalVariable(name: "n", arg: 1, scope: !4175, file: !779, line: 59, type: !104)
!4180 = !DILocation(line: 0, scope: !4175)
!4181 = !DILocation(line: 0, scope: !4142, inlinedAt: !4182)
!4182 = distinct !DILocation(line: 61, column: 10, scope: !4175)
!4183 = !DILocation(line: 49, column: 25, scope: !4142, inlinedAt: !4182)
!4184 = !DILocation(line: 0, scope: !4123, inlinedAt: !4185)
!4185 = distinct !DILocation(line: 49, column: 10, scope: !4142, inlinedAt: !4182)
!4186 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4185)
!4187 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4185)
!4188 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4185)
!4189 = !DILocation(line: 61, column: 3, scope: !4175)
!4190 = distinct !DISubprogram(name: "xrealloc", scope: !779, file: !779, line: 68, type: !4191, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4193)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!102, !102, !104}
!4193 = !{!4194, !4195}
!4194 = !DILocalVariable(name: "p", arg: 1, scope: !4190, file: !779, line: 68, type: !102)
!4195 = !DILocalVariable(name: "s", arg: 2, scope: !4190, file: !779, line: 68, type: !104)
!4196 = !DILocation(line: 0, scope: !4190)
!4197 = !DILocalVariable(name: "ptr", arg: 1, scope: !4198, file: !4199, line: 2057, type: !102)
!4198 = distinct !DISubprogram(name: "rpl_realloc", scope: !4199, file: !4199, line: 2057, type: !4191, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4200)
!4199 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4200 = !{!4197, !4201}
!4201 = !DILocalVariable(name: "size", arg: 2, scope: !4198, file: !4199, line: 2057, type: !104)
!4202 = !DILocation(line: 0, scope: !4198, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 70, column: 25, scope: !4190)
!4204 = !DILocation(line: 2059, column: 24, scope: !4198, inlinedAt: !4203)
!4205 = !DILocation(line: 2059, column: 10, scope: !4198, inlinedAt: !4203)
!4206 = !DILocation(line: 0, scope: !4123, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 70, column: 10, scope: !4190)
!4208 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4207)
!4209 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4207)
!4210 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4207)
!4211 = !DILocation(line: 70, column: 3, scope: !4190)
!4212 = !DISubprogram(name: "realloc", scope: !1034, file: !1034, line: 551, type: !4191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!4213 = distinct !DISubprogram(name: "xirealloc", scope: !779, file: !779, line: 74, type: !4214, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4216)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!102, !102, !798}
!4216 = !{!4217, !4218}
!4217 = !DILocalVariable(name: "p", arg: 1, scope: !4213, file: !779, line: 74, type: !102)
!4218 = !DILocalVariable(name: "s", arg: 2, scope: !4213, file: !779, line: 74, type: !798)
!4219 = !DILocation(line: 0, scope: !4213)
!4220 = !DILocalVariable(name: "p", arg: 1, scope: !4221, file: !4164, line: 66, type: !102)
!4221 = distinct !DISubprogram(name: "irealloc", scope: !4164, file: !4164, line: 66, type: !4214, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4222)
!4222 = !{!4220, !4223}
!4223 = !DILocalVariable(name: "s", arg: 2, scope: !4221, file: !4164, line: 66, type: !798)
!4224 = !DILocation(line: 0, scope: !4221, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 76, column: 25, scope: !4213)
!4226 = !DILocation(line: 0, scope: !4198, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 68, column: 26, scope: !4221, inlinedAt: !4225)
!4228 = !DILocation(line: 2059, column: 24, scope: !4198, inlinedAt: !4227)
!4229 = !DILocation(line: 2059, column: 10, scope: !4198, inlinedAt: !4227)
!4230 = !DILocation(line: 0, scope: !4123, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 76, column: 10, scope: !4213)
!4232 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4231)
!4233 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4231)
!4234 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4231)
!4235 = !DILocation(line: 76, column: 3, scope: !4213)
!4236 = distinct !DISubprogram(name: "xireallocarray", scope: !779, file: !779, line: 89, type: !4237, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4239)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!102, !102, !798, !798}
!4239 = !{!4240, !4241, !4242}
!4240 = !DILocalVariable(name: "p", arg: 1, scope: !4236, file: !779, line: 89, type: !102)
!4241 = !DILocalVariable(name: "n", arg: 2, scope: !4236, file: !779, line: 89, type: !798)
!4242 = !DILocalVariable(name: "s", arg: 3, scope: !4236, file: !779, line: 89, type: !798)
!4243 = !DILocation(line: 0, scope: !4236)
!4244 = !DILocalVariable(name: "p", arg: 1, scope: !4245, file: !4164, line: 98, type: !102)
!4245 = distinct !DISubprogram(name: "ireallocarray", scope: !4164, file: !4164, line: 98, type: !4237, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4246)
!4246 = !{!4244, !4247, !4248}
!4247 = !DILocalVariable(name: "n", arg: 2, scope: !4245, file: !4164, line: 98, type: !798)
!4248 = !DILocalVariable(name: "s", arg: 3, scope: !4245, file: !4164, line: 98, type: !798)
!4249 = !DILocation(line: 0, scope: !4245, inlinedAt: !4250)
!4250 = distinct !DILocation(line: 91, column: 25, scope: !4236)
!4251 = !DILocation(line: 101, column: 13, scope: !4245, inlinedAt: !4250)
!4252 = !DILocation(line: 0, scope: !4123, inlinedAt: !4253)
!4253 = distinct !DILocation(line: 91, column: 10, scope: !4236)
!4254 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4253)
!4255 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4253)
!4256 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4253)
!4257 = !DILocation(line: 91, column: 3, scope: !4236)
!4258 = distinct !DISubprogram(name: "xnmalloc", scope: !779, file: !779, line: 98, type: !4259, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4261)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!102, !104, !104}
!4261 = !{!4262, !4263}
!4262 = !DILocalVariable(name: "n", arg: 1, scope: !4258, file: !779, line: 98, type: !104)
!4263 = !DILocalVariable(name: "s", arg: 2, scope: !4258, file: !779, line: 98, type: !104)
!4264 = !DILocation(line: 0, scope: !4258)
!4265 = !DILocation(line: 0, scope: !4115, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 100, column: 10, scope: !4258)
!4267 = !DILocation(line: 85, column: 25, scope: !4115, inlinedAt: !4266)
!4268 = !DILocation(line: 0, scope: !4123, inlinedAt: !4269)
!4269 = distinct !DILocation(line: 85, column: 10, scope: !4115, inlinedAt: !4266)
!4270 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4269)
!4271 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4269)
!4272 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4269)
!4273 = !DILocation(line: 100, column: 3, scope: !4258)
!4274 = distinct !DISubprogram(name: "xinmalloc", scope: !779, file: !779, line: 104, type: !4275, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4277)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!102, !798, !798}
!4277 = !{!4278, !4279}
!4278 = !DILocalVariable(name: "n", arg: 1, scope: !4274, file: !779, line: 104, type: !798)
!4279 = !DILocalVariable(name: "s", arg: 2, scope: !4274, file: !779, line: 104, type: !798)
!4280 = !DILocation(line: 0, scope: !4274)
!4281 = !DILocation(line: 0, scope: !4236, inlinedAt: !4282)
!4282 = distinct !DILocation(line: 106, column: 10, scope: !4274)
!4283 = !DILocation(line: 0, scope: !4245, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 91, column: 25, scope: !4236, inlinedAt: !4282)
!4285 = !DILocation(line: 101, column: 13, scope: !4245, inlinedAt: !4284)
!4286 = !DILocation(line: 0, scope: !4123, inlinedAt: !4287)
!4287 = distinct !DILocation(line: 91, column: 10, scope: !4236, inlinedAt: !4282)
!4288 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4287)
!4289 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4287)
!4290 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4287)
!4291 = !DILocation(line: 106, column: 3, scope: !4274)
!4292 = distinct !DISubprogram(name: "x2realloc", scope: !779, file: !779, line: 116, type: !4293, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4295)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!102, !102, !785}
!4295 = !{!4296, !4297}
!4296 = !DILocalVariable(name: "p", arg: 1, scope: !4292, file: !779, line: 116, type: !102)
!4297 = !DILocalVariable(name: "ps", arg: 2, scope: !4292, file: !779, line: 116, type: !785)
!4298 = !DILocation(line: 0, scope: !4292)
!4299 = !DILocation(line: 0, scope: !782, inlinedAt: !4300)
!4300 = distinct !DILocation(line: 118, column: 10, scope: !4292)
!4301 = !DILocation(line: 178, column: 14, scope: !782, inlinedAt: !4300)
!4302 = !DILocation(line: 180, column: 9, scope: !4303, inlinedAt: !4300)
!4303 = distinct !DILexicalBlock(scope: !782, file: !779, line: 180, column: 7)
!4304 = !DILocation(line: 180, column: 7, scope: !782, inlinedAt: !4300)
!4305 = !DILocation(line: 182, column: 13, scope: !4306, inlinedAt: !4300)
!4306 = distinct !DILexicalBlock(scope: !4307, file: !779, line: 182, column: 11)
!4307 = distinct !DILexicalBlock(scope: !4303, file: !779, line: 181, column: 5)
!4308 = !DILocation(line: 182, column: 11, scope: !4307, inlinedAt: !4300)
!4309 = !DILocation(line: 197, column: 11, scope: !4310, inlinedAt: !4300)
!4310 = distinct !DILexicalBlock(scope: !4311, file: !779, line: 197, column: 11)
!4311 = distinct !DILexicalBlock(scope: !4303, file: !779, line: 195, column: 5)
!4312 = !DILocation(line: 197, column: 11, scope: !4311, inlinedAt: !4300)
!4313 = !DILocation(line: 198, column: 9, scope: !4310, inlinedAt: !4300)
!4314 = !DILocation(line: 0, scope: !4115, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 201, column: 7, scope: !782, inlinedAt: !4300)
!4316 = !DILocation(line: 85, column: 25, scope: !4115, inlinedAt: !4315)
!4317 = !DILocation(line: 0, scope: !4123, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 85, column: 10, scope: !4115, inlinedAt: !4315)
!4319 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4318)
!4320 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4318)
!4321 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4318)
!4322 = !DILocation(line: 202, column: 7, scope: !782, inlinedAt: !4300)
!4323 = !DILocation(line: 118, column: 3, scope: !4292)
!4324 = !DILocation(line: 0, scope: !782)
!4325 = !DILocation(line: 178, column: 14, scope: !782)
!4326 = !DILocation(line: 180, column: 9, scope: !4303)
!4327 = !DILocation(line: 180, column: 7, scope: !782)
!4328 = !DILocation(line: 182, column: 13, scope: !4306)
!4329 = !DILocation(line: 182, column: 11, scope: !4307)
!4330 = !DILocation(line: 190, column: 30, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4306, file: !779, line: 183, column: 9)
!4332 = !DILocation(line: 191, column: 16, scope: !4331)
!4333 = !DILocation(line: 191, column: 13, scope: !4331)
!4334 = !DILocation(line: 192, column: 9, scope: !4331)
!4335 = !DILocation(line: 197, column: 11, scope: !4310)
!4336 = !DILocation(line: 197, column: 11, scope: !4311)
!4337 = !DILocation(line: 198, column: 9, scope: !4310)
!4338 = !DILocation(line: 0, scope: !4115, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 201, column: 7, scope: !782)
!4340 = !DILocation(line: 85, column: 25, scope: !4115, inlinedAt: !4339)
!4341 = !DILocation(line: 0, scope: !4123, inlinedAt: !4342)
!4342 = distinct !DILocation(line: 85, column: 10, scope: !4115, inlinedAt: !4339)
!4343 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4342)
!4344 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4342)
!4345 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4342)
!4346 = !DILocation(line: 202, column: 7, scope: !782)
!4347 = !DILocation(line: 203, column: 3, scope: !782)
!4348 = !DILocation(line: 0, scope: !794)
!4349 = !DILocation(line: 230, column: 14, scope: !794)
!4350 = !DILocation(line: 238, column: 7, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !794, file: !779, line: 238, column: 7)
!4352 = !DILocation(line: 238, column: 7, scope: !794)
!4353 = !DILocation(line: 240, column: 9, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !794, file: !779, line: 240, column: 7)
!4355 = !DILocation(line: 240, column: 18, scope: !4354)
!4356 = !DILocation(line: 253, column: 8, scope: !794)
!4357 = !DILocation(line: 258, column: 27, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4359, file: !779, line: 257, column: 5)
!4359 = distinct !DILexicalBlock(scope: !794, file: !779, line: 256, column: 7)
!4360 = !DILocation(line: 259, column: 50, scope: !4358)
!4361 = !DILocation(line: 259, column: 32, scope: !4358)
!4362 = !DILocation(line: 260, column: 5, scope: !4358)
!4363 = !DILocation(line: 262, column: 9, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !794, file: !779, line: 262, column: 7)
!4365 = !DILocation(line: 262, column: 7, scope: !794)
!4366 = !DILocation(line: 263, column: 9, scope: !4364)
!4367 = !DILocation(line: 263, column: 5, scope: !4364)
!4368 = !DILocation(line: 264, column: 9, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !794, file: !779, line: 264, column: 7)
!4370 = !DILocation(line: 264, column: 14, scope: !4369)
!4371 = !DILocation(line: 265, column: 7, scope: !4369)
!4372 = !DILocation(line: 265, column: 11, scope: !4369)
!4373 = !DILocation(line: 266, column: 11, scope: !4369)
!4374 = !DILocation(line: 267, column: 14, scope: !4369)
!4375 = !DILocation(line: 264, column: 7, scope: !794)
!4376 = !DILocation(line: 268, column: 5, scope: !4369)
!4377 = !DILocation(line: 0, scope: !4190, inlinedAt: !4378)
!4378 = distinct !DILocation(line: 269, column: 8, scope: !794)
!4379 = !DILocation(line: 0, scope: !4198, inlinedAt: !4380)
!4380 = distinct !DILocation(line: 70, column: 25, scope: !4190, inlinedAt: !4378)
!4381 = !DILocation(line: 2059, column: 24, scope: !4198, inlinedAt: !4380)
!4382 = !DILocation(line: 2059, column: 10, scope: !4198, inlinedAt: !4380)
!4383 = !DILocation(line: 0, scope: !4123, inlinedAt: !4384)
!4384 = distinct !DILocation(line: 70, column: 10, scope: !4190, inlinedAt: !4378)
!4385 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4384)
!4386 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4384)
!4387 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4384)
!4388 = !DILocation(line: 270, column: 7, scope: !794)
!4389 = !DILocation(line: 271, column: 3, scope: !794)
!4390 = distinct !DISubprogram(name: "xzalloc", scope: !779, file: !779, line: 279, type: !4143, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4391)
!4391 = !{!4392}
!4392 = !DILocalVariable(name: "s", arg: 1, scope: !4390, file: !779, line: 279, type: !104)
!4393 = !DILocation(line: 0, scope: !4390)
!4394 = !DILocalVariable(name: "n", arg: 1, scope: !4395, file: !779, line: 294, type: !104)
!4395 = distinct !DISubprogram(name: "xcalloc", scope: !779, file: !779, line: 294, type: !4259, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4396)
!4396 = !{!4394, !4397}
!4397 = !DILocalVariable(name: "s", arg: 2, scope: !4395, file: !779, line: 294, type: !104)
!4398 = !DILocation(line: 0, scope: !4395, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 281, column: 10, scope: !4390)
!4400 = !DILocation(line: 296, column: 25, scope: !4395, inlinedAt: !4399)
!4401 = !DILocation(line: 0, scope: !4123, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 296, column: 10, scope: !4395, inlinedAt: !4399)
!4403 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4402)
!4404 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4402)
!4405 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4402)
!4406 = !DILocation(line: 281, column: 3, scope: !4390)
!4407 = !DISubprogram(name: "calloc", scope: !1034, file: !1034, line: 543, type: !4259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!4408 = !DILocation(line: 0, scope: !4395)
!4409 = !DILocation(line: 296, column: 25, scope: !4395)
!4410 = !DILocation(line: 0, scope: !4123, inlinedAt: !4411)
!4411 = distinct !DILocation(line: 296, column: 10, scope: !4395)
!4412 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4411)
!4413 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4411)
!4414 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4411)
!4415 = !DILocation(line: 296, column: 3, scope: !4395)
!4416 = distinct !DISubprogram(name: "xizalloc", scope: !779, file: !779, line: 285, type: !4157, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4417)
!4417 = !{!4418}
!4418 = !DILocalVariable(name: "s", arg: 1, scope: !4416, file: !779, line: 285, type: !798)
!4419 = !DILocation(line: 0, scope: !4416)
!4420 = !DILocalVariable(name: "n", arg: 1, scope: !4421, file: !779, line: 300, type: !798)
!4421 = distinct !DISubprogram(name: "xicalloc", scope: !779, file: !779, line: 300, type: !4275, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4422)
!4422 = !{!4420, !4423}
!4423 = !DILocalVariable(name: "s", arg: 2, scope: !4421, file: !779, line: 300, type: !798)
!4424 = !DILocation(line: 0, scope: !4421, inlinedAt: !4425)
!4425 = distinct !DILocation(line: 287, column: 10, scope: !4416)
!4426 = !DILocalVariable(name: "n", arg: 1, scope: !4427, file: !4164, line: 77, type: !798)
!4427 = distinct !DISubprogram(name: "icalloc", scope: !4164, file: !4164, line: 77, type: !4275, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4428)
!4428 = !{!4426, !4429}
!4429 = !DILocalVariable(name: "s", arg: 2, scope: !4427, file: !4164, line: 77, type: !798)
!4430 = !DILocation(line: 0, scope: !4427, inlinedAt: !4431)
!4431 = distinct !DILocation(line: 302, column: 25, scope: !4421, inlinedAt: !4425)
!4432 = !DILocation(line: 91, column: 10, scope: !4427, inlinedAt: !4431)
!4433 = !DILocation(line: 0, scope: !4123, inlinedAt: !4434)
!4434 = distinct !DILocation(line: 302, column: 10, scope: !4421, inlinedAt: !4425)
!4435 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4434)
!4436 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4434)
!4437 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4434)
!4438 = !DILocation(line: 287, column: 3, scope: !4416)
!4439 = !DILocation(line: 0, scope: !4421)
!4440 = !DILocation(line: 0, scope: !4427, inlinedAt: !4441)
!4441 = distinct !DILocation(line: 302, column: 25, scope: !4421)
!4442 = !DILocation(line: 91, column: 10, scope: !4427, inlinedAt: !4441)
!4443 = !DILocation(line: 0, scope: !4123, inlinedAt: !4444)
!4444 = distinct !DILocation(line: 302, column: 10, scope: !4421)
!4445 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4444)
!4446 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4444)
!4447 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4444)
!4448 = !DILocation(line: 302, column: 3, scope: !4421)
!4449 = distinct !DISubprogram(name: "xmemdup", scope: !779, file: !779, line: 310, type: !4450, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4452)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!102, !1058, !104}
!4452 = !{!4453, !4454}
!4453 = !DILocalVariable(name: "p", arg: 1, scope: !4449, file: !779, line: 310, type: !1058)
!4454 = !DILocalVariable(name: "s", arg: 2, scope: !4449, file: !779, line: 310, type: !104)
!4455 = !DILocation(line: 0, scope: !4449)
!4456 = !DILocation(line: 0, scope: !4142, inlinedAt: !4457)
!4457 = distinct !DILocation(line: 312, column: 18, scope: !4449)
!4458 = !DILocation(line: 49, column: 25, scope: !4142, inlinedAt: !4457)
!4459 = !DILocation(line: 0, scope: !4123, inlinedAt: !4460)
!4460 = distinct !DILocation(line: 49, column: 10, scope: !4142, inlinedAt: !4457)
!4461 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4460)
!4462 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4460)
!4463 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4460)
!4464 = !DILocalVariable(name: "__dest", arg: 1, scope: !4465, file: !2359, line: 26, type: !3921)
!4465 = distinct !DISubprogram(name: "memcpy", scope: !2359, file: !2359, line: 26, type: !3919, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4466)
!4466 = !{!4464, !4467, !4468}
!4467 = !DILocalVariable(name: "__src", arg: 2, scope: !4465, file: !2359, line: 26, type: !1057)
!4468 = !DILocalVariable(name: "__len", arg: 3, scope: !4465, file: !2359, line: 26, type: !104)
!4469 = !DILocation(line: 0, scope: !4465, inlinedAt: !4470)
!4470 = distinct !DILocation(line: 312, column: 10, scope: !4449)
!4471 = !DILocation(line: 29, column: 10, scope: !4465, inlinedAt: !4470)
!4472 = !DILocation(line: 312, column: 3, scope: !4449)
!4473 = distinct !DISubprogram(name: "ximemdup", scope: !779, file: !779, line: 316, type: !4474, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4476)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!102, !1058, !798}
!4476 = !{!4477, !4478}
!4477 = !DILocalVariable(name: "p", arg: 1, scope: !4473, file: !779, line: 316, type: !1058)
!4478 = !DILocalVariable(name: "s", arg: 2, scope: !4473, file: !779, line: 316, type: !798)
!4479 = !DILocation(line: 0, scope: !4473)
!4480 = !DILocation(line: 0, scope: !4156, inlinedAt: !4481)
!4481 = distinct !DILocation(line: 318, column: 18, scope: !4473)
!4482 = !DILocation(line: 0, scope: !4163, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 55, column: 25, scope: !4156, inlinedAt: !4481)
!4484 = !DILocation(line: 57, column: 26, scope: !4163, inlinedAt: !4483)
!4485 = !DILocation(line: 0, scope: !4123, inlinedAt: !4486)
!4486 = distinct !DILocation(line: 55, column: 10, scope: !4156, inlinedAt: !4481)
!4487 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4486)
!4488 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4486)
!4489 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4486)
!4490 = !DILocation(line: 0, scope: !4465, inlinedAt: !4491)
!4491 = distinct !DILocation(line: 318, column: 10, scope: !4473)
!4492 = !DILocation(line: 29, column: 10, scope: !4465, inlinedAt: !4491)
!4493 = !DILocation(line: 318, column: 3, scope: !4473)
!4494 = distinct !DISubprogram(name: "ximemdup0", scope: !779, file: !779, line: 325, type: !4495, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4497)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{!54, !1058, !798}
!4497 = !{!4498, !4499, !4500}
!4498 = !DILocalVariable(name: "p", arg: 1, scope: !4494, file: !779, line: 325, type: !1058)
!4499 = !DILocalVariable(name: "s", arg: 2, scope: !4494, file: !779, line: 325, type: !798)
!4500 = !DILocalVariable(name: "result", scope: !4494, file: !779, line: 327, type: !54)
!4501 = !DILocation(line: 0, scope: !4494)
!4502 = !DILocation(line: 327, column: 30, scope: !4494)
!4503 = !DILocation(line: 0, scope: !4156, inlinedAt: !4504)
!4504 = distinct !DILocation(line: 327, column: 18, scope: !4494)
!4505 = !DILocation(line: 0, scope: !4163, inlinedAt: !4506)
!4506 = distinct !DILocation(line: 55, column: 25, scope: !4156, inlinedAt: !4504)
!4507 = !DILocation(line: 57, column: 26, scope: !4163, inlinedAt: !4506)
!4508 = !DILocation(line: 0, scope: !4123, inlinedAt: !4509)
!4509 = distinct !DILocation(line: 55, column: 10, scope: !4156, inlinedAt: !4504)
!4510 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4509)
!4511 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4509)
!4512 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4509)
!4513 = !DILocation(line: 328, column: 3, scope: !4494)
!4514 = !DILocation(line: 328, column: 13, scope: !4494)
!4515 = !DILocation(line: 0, scope: !4465, inlinedAt: !4516)
!4516 = distinct !DILocation(line: 329, column: 10, scope: !4494)
!4517 = !DILocation(line: 29, column: 10, scope: !4465, inlinedAt: !4516)
!4518 = !DILocation(line: 329, column: 3, scope: !4494)
!4519 = distinct !DISubprogram(name: "xstrdup", scope: !779, file: !779, line: 335, type: !1036, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4520)
!4520 = !{!4521}
!4521 = !DILocalVariable(name: "string", arg: 1, scope: !4519, file: !779, line: 335, type: !107)
!4522 = !DILocation(line: 0, scope: !4519)
!4523 = !DILocation(line: 337, column: 27, scope: !4519)
!4524 = !DILocation(line: 337, column: 43, scope: !4519)
!4525 = !DILocation(line: 0, scope: !4449, inlinedAt: !4526)
!4526 = distinct !DILocation(line: 337, column: 10, scope: !4519)
!4527 = !DILocation(line: 0, scope: !4142, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 312, column: 18, scope: !4449, inlinedAt: !4526)
!4529 = !DILocation(line: 49, column: 25, scope: !4142, inlinedAt: !4528)
!4530 = !DILocation(line: 0, scope: !4123, inlinedAt: !4531)
!4531 = distinct !DILocation(line: 49, column: 10, scope: !4142, inlinedAt: !4528)
!4532 = !DILocation(line: 39, column: 8, scope: !4130, inlinedAt: !4531)
!4533 = !DILocation(line: 39, column: 7, scope: !4123, inlinedAt: !4531)
!4534 = !DILocation(line: 40, column: 5, scope: !4130, inlinedAt: !4531)
!4535 = !DILocation(line: 0, scope: !4465, inlinedAt: !4536)
!4536 = distinct !DILocation(line: 312, column: 10, scope: !4449, inlinedAt: !4526)
!4537 = !DILocation(line: 29, column: 10, scope: !4465, inlinedAt: !4536)
!4538 = !DILocation(line: 337, column: 3, scope: !4519)
!4539 = distinct !DISubprogram(name: "xalloc_die", scope: !724, file: !724, line: 32, type: !478, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !4540)
!4540 = !{!4541}
!4541 = !DILocalVariable(name: "__errstatus", scope: !4542, file: !724, line: 34, type: !4543)
!4542 = distinct !DILexicalBlock(scope: !4539, file: !724, line: 34, column: 3)
!4543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!4544 = !DILocation(line: 34, column: 3, scope: !4542)
!4545 = !DILocation(line: 0, scope: !4542)
!4546 = !DILocation(line: 40, column: 3, scope: !4539)
!4547 = distinct !DISubprogram(name: "close_stream", scope: !815, file: !815, line: 55, type: !4548, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !4584)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!52, !4550}
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !4552)
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !4553)
!4553 = !{!4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4552, file: !171, line: 51, baseType: !52, size: 32)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4552, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4552, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4552, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4552, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4552, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4552, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4552, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4552, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4552, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4552, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4552, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4552, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4552, file: !171, line: 70, baseType: !4568, size: 64, offset: 832)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4552, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4552, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4552, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4552, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4552, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4552, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4552, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4552, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4552, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4552, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4552, file: !171, line: 93, baseType: !4568, size: 64, offset: 1344)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4552, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4552, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4552, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4552, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!4584 = !{!4585, !4586, !4588, !4589}
!4585 = !DILocalVariable(name: "stream", arg: 1, scope: !4547, file: !815, line: 55, type: !4550)
!4586 = !DILocalVariable(name: "some_pending", scope: !4547, file: !815, line: 57, type: !4587)
!4587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!4588 = !DILocalVariable(name: "prev_fail", scope: !4547, file: !815, line: 58, type: !4587)
!4589 = !DILocalVariable(name: "fclose_fail", scope: !4547, file: !815, line: 59, type: !4587)
!4590 = !DILocation(line: 0, scope: !4547)
!4591 = !DILocation(line: 57, column: 30, scope: !4547)
!4592 = !DILocalVariable(name: "__stream", arg: 1, scope: !4593, file: !1157, line: 135, type: !4550)
!4593 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1157, file: !1157, line: 135, type: !4548, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !4594)
!4594 = !{!4592}
!4595 = !DILocation(line: 0, scope: !4593, inlinedAt: !4596)
!4596 = distinct !DILocation(line: 58, column: 27, scope: !4547)
!4597 = !DILocation(line: 137, column: 10, scope: !4593, inlinedAt: !4596)
!4598 = !DILocation(line: 58, column: 43, scope: !4547)
!4599 = !DILocation(line: 59, column: 29, scope: !4547)
!4600 = !DILocation(line: 59, column: 45, scope: !4547)
!4601 = !DILocation(line: 69, column: 17, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4547, file: !815, line: 69, column: 7)
!4603 = !DILocation(line: 57, column: 50, scope: !4547)
!4604 = !DILocation(line: 69, column: 33, scope: !4602)
!4605 = !DILocation(line: 69, column: 53, scope: !4602)
!4606 = !DILocation(line: 69, column: 59, scope: !4602)
!4607 = !DILocation(line: 69, column: 7, scope: !4547)
!4608 = !DILocation(line: 71, column: 11, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4602, file: !815, line: 70, column: 5)
!4610 = !DILocation(line: 72, column: 9, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4609, file: !815, line: 71, column: 11)
!4612 = !DILocation(line: 72, column: 15, scope: !4611)
!4613 = !DILocation(line: 77, column: 1, scope: !4547)
!4614 = !DISubprogram(name: "__fpending", scope: !2018, file: !2018, line: 75, type: !4615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!104, !4550}
!4617 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !731, file: !731, line: 100, type: !4618, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4621)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!104, !2377, !107, !104, !4620}
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!4621 = !{!4622, !4623, !4624, !4625, !4626}
!4622 = !DILocalVariable(name: "pwc", arg: 1, scope: !4617, file: !731, line: 100, type: !2377)
!4623 = !DILocalVariable(name: "s", arg: 2, scope: !4617, file: !731, line: 100, type: !107)
!4624 = !DILocalVariable(name: "n", arg: 3, scope: !4617, file: !731, line: 100, type: !104)
!4625 = !DILocalVariable(name: "ps", arg: 4, scope: !4617, file: !731, line: 100, type: !4620)
!4626 = !DILocalVariable(name: "ret", scope: !4617, file: !731, line: 130, type: !104)
!4627 = !DILocation(line: 0, scope: !4617)
!4628 = !DILocation(line: 105, column: 9, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4617, file: !731, line: 105, column: 7)
!4630 = !DILocation(line: 105, column: 7, scope: !4617)
!4631 = !DILocation(line: 117, column: 10, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4617, file: !731, line: 117, column: 7)
!4633 = !DILocation(line: 117, column: 7, scope: !4617)
!4634 = !DILocation(line: 130, column: 16, scope: !4617)
!4635 = !DILocation(line: 135, column: 11, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4617, file: !731, line: 135, column: 7)
!4637 = !DILocation(line: 135, column: 25, scope: !4636)
!4638 = !DILocation(line: 135, column: 30, scope: !4636)
!4639 = !DILocation(line: 135, column: 7, scope: !4617)
!4640 = !DILocalVariable(name: "ps", arg: 1, scope: !4641, file: !2350, line: 1135, type: !4620)
!4641 = distinct !DISubprogram(name: "mbszero", scope: !2350, file: !2350, line: 1135, type: !4642, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4644)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{null, !4620}
!4644 = !{!4640}
!4645 = !DILocation(line: 0, scope: !4641, inlinedAt: !4646)
!4646 = distinct !DILocation(line: 137, column: 5, scope: !4636)
!4647 = !DILocalVariable(name: "__dest", arg: 1, scope: !4648, file: !2359, line: 57, type: !102)
!4648 = distinct !DISubprogram(name: "memset", scope: !2359, file: !2359, line: 57, type: !2360, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !4649)
!4649 = !{!4647, !4650, !4651}
!4650 = !DILocalVariable(name: "__ch", arg: 2, scope: !4648, file: !2359, line: 57, type: !52)
!4651 = !DILocalVariable(name: "__len", arg: 3, scope: !4648, file: !2359, line: 57, type: !104)
!4652 = !DILocation(line: 0, scope: !4648, inlinedAt: !4653)
!4653 = distinct !DILocation(line: 1137, column: 3, scope: !4641, inlinedAt: !4646)
!4654 = !DILocation(line: 59, column: 10, scope: !4648, inlinedAt: !4653)
!4655 = !DILocation(line: 137, column: 5, scope: !4636)
!4656 = !DILocation(line: 138, column: 11, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4617, file: !731, line: 138, column: 7)
!4658 = !DILocation(line: 138, column: 7, scope: !4617)
!4659 = !DILocation(line: 139, column: 5, scope: !4657)
!4660 = !DILocation(line: 143, column: 26, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4617, file: !731, line: 143, column: 7)
!4662 = !DILocation(line: 143, column: 41, scope: !4661)
!4663 = !DILocation(line: 143, column: 7, scope: !4617)
!4664 = !DILocation(line: 145, column: 15, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4666, file: !731, line: 145, column: 11)
!4666 = distinct !DILexicalBlock(scope: !4661, file: !731, line: 144, column: 5)
!4667 = !DILocation(line: 145, column: 11, scope: !4666)
!4668 = !DILocation(line: 146, column: 32, scope: !4665)
!4669 = !DILocation(line: 146, column: 16, scope: !4665)
!4670 = !DILocation(line: 146, column: 14, scope: !4665)
!4671 = !DILocation(line: 146, column: 9, scope: !4665)
!4672 = !DILocation(line: 286, column: 1, scope: !4617)
!4673 = !DISubprogram(name: "mbsinit", scope: !4674, file: !4674, line: 293, type: !4675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!4674 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!52, !4677}
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !737)
!4679 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !817, file: !817, line: 27, type: !4107, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !4680)
!4680 = !{!4681, !4682, !4683, !4684}
!4681 = !DILocalVariable(name: "ptr", arg: 1, scope: !4679, file: !817, line: 27, type: !102)
!4682 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4679, file: !817, line: 27, type: !104)
!4683 = !DILocalVariable(name: "size", arg: 3, scope: !4679, file: !817, line: 27, type: !104)
!4684 = !DILocalVariable(name: "nbytes", scope: !4679, file: !817, line: 29, type: !104)
!4685 = !DILocation(line: 0, scope: !4679)
!4686 = !DILocation(line: 30, column: 7, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4679, file: !817, line: 30, column: 7)
!4688 = !DILocalVariable(name: "ptr", arg: 1, scope: !4689, file: !4199, line: 2057, type: !102)
!4689 = distinct !DISubprogram(name: "rpl_realloc", scope: !4199, file: !4199, line: 2057, type: !4191, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !4690)
!4690 = !{!4688, !4691}
!4691 = !DILocalVariable(name: "size", arg: 2, scope: !4689, file: !4199, line: 2057, type: !104)
!4692 = !DILocation(line: 0, scope: !4689, inlinedAt: !4693)
!4693 = distinct !DILocation(line: 37, column: 10, scope: !4679)
!4694 = !DILocation(line: 2059, column: 24, scope: !4689, inlinedAt: !4693)
!4695 = !DILocation(line: 2059, column: 10, scope: !4689, inlinedAt: !4693)
!4696 = !DILocation(line: 37, column: 3, scope: !4679)
!4697 = !DILocation(line: 32, column: 7, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4687, file: !817, line: 31, column: 5)
!4699 = !DILocation(line: 32, column: 13, scope: !4698)
!4700 = !DILocation(line: 33, column: 7, scope: !4698)
!4701 = !DILocation(line: 38, column: 1, scope: !4679)
!4702 = distinct !DISubprogram(name: "hard_locale", scope: !749, file: !749, line: 28, type: !2149, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !4703)
!4703 = !{!4704, !4705}
!4704 = !DILocalVariable(name: "category", arg: 1, scope: !4702, file: !749, line: 28, type: !52)
!4705 = !DILocalVariable(name: "locale", scope: !4702, file: !749, line: 30, type: !4706)
!4706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4707)
!4707 = !{!4708}
!4708 = !DISubrange(count: 257)
!4709 = !DILocation(line: 0, scope: !4702)
!4710 = !DILocation(line: 30, column: 3, scope: !4702)
!4711 = !DILocation(line: 30, column: 8, scope: !4702)
!4712 = !DILocation(line: 32, column: 7, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4702, file: !749, line: 32, column: 7)
!4714 = !DILocation(line: 32, column: 7, scope: !4702)
!4715 = !DILocalVariable(name: "__s1", arg: 1, scope: !4716, file: !922, line: 1359, type: !107)
!4716 = distinct !DISubprogram(name: "streq", scope: !922, file: !922, line: 1359, type: !923, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !4717)
!4717 = !{!4715, !4718}
!4718 = !DILocalVariable(name: "__s2", arg: 2, scope: !4716, file: !922, line: 1359, type: !107)
!4719 = !DILocation(line: 0, scope: !4716, inlinedAt: !4720)
!4720 = distinct !DILocation(line: 35, column: 9, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4702, file: !749, line: 35, column: 7)
!4722 = !DILocation(line: 1361, column: 11, scope: !4716, inlinedAt: !4720)
!4723 = !DILocation(line: 35, column: 29, scope: !4721)
!4724 = !DILocation(line: 0, scope: !4716, inlinedAt: !4725)
!4725 = distinct !DILocation(line: 35, column: 32, scope: !4721)
!4726 = !DILocation(line: 1361, column: 11, scope: !4716, inlinedAt: !4725)
!4727 = !DILocation(line: 1361, column: 10, scope: !4716, inlinedAt: !4725)
!4728 = !DILocation(line: 35, column: 7, scope: !4702)
!4729 = !DILocation(line: 46, column: 3, scope: !4702)
!4730 = !DILocation(line: 47, column: 1, scope: !4702)
!4731 = distinct !DISubprogram(name: "setlocale_null_r", scope: !824, file: !824, line: 154, type: !4732, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !4734)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{!52, !52, !54, !104}
!4734 = !{!4735, !4736, !4737}
!4735 = !DILocalVariable(name: "category", arg: 1, scope: !4731, file: !824, line: 154, type: !52)
!4736 = !DILocalVariable(name: "buf", arg: 2, scope: !4731, file: !824, line: 154, type: !54)
!4737 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4731, file: !824, line: 154, type: !104)
!4738 = !DILocation(line: 0, scope: !4731)
!4739 = !DILocation(line: 159, column: 10, scope: !4731)
!4740 = !DILocation(line: 159, column: 3, scope: !4731)
!4741 = distinct !DISubprogram(name: "setlocale_null", scope: !824, file: !824, line: 186, type: !4742, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !4744)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!107, !52}
!4744 = !{!4745}
!4745 = !DILocalVariable(name: "category", arg: 1, scope: !4741, file: !824, line: 186, type: !52)
!4746 = !DILocation(line: 0, scope: !4741)
!4747 = !DILocation(line: 189, column: 10, scope: !4741)
!4748 = !DILocation(line: 189, column: 3, scope: !4741)
!4749 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !826, file: !826, line: 35, type: !4742, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4750)
!4750 = !{!4751, !4752}
!4751 = !DILocalVariable(name: "category", arg: 1, scope: !4749, file: !826, line: 35, type: !52)
!4752 = !DILocalVariable(name: "result", scope: !4749, file: !826, line: 37, type: !107)
!4753 = !DILocation(line: 0, scope: !4749)
!4754 = !DILocation(line: 37, column: 24, scope: !4749)
!4755 = !DILocation(line: 62, column: 3, scope: !4749)
!4756 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !826, file: !826, line: 66, type: !4732, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4757)
!4757 = !{!4758, !4759, !4760, !4761, !4762}
!4758 = !DILocalVariable(name: "category", arg: 1, scope: !4756, file: !826, line: 66, type: !52)
!4759 = !DILocalVariable(name: "buf", arg: 2, scope: !4756, file: !826, line: 66, type: !54)
!4760 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4756, file: !826, line: 66, type: !104)
!4761 = !DILocalVariable(name: "result", scope: !4756, file: !826, line: 111, type: !107)
!4762 = !DILocalVariable(name: "length", scope: !4763, file: !826, line: 125, type: !104)
!4763 = distinct !DILexicalBlock(scope: !4764, file: !826, line: 124, column: 5)
!4764 = distinct !DILexicalBlock(scope: !4756, file: !826, line: 113, column: 7)
!4765 = !DILocation(line: 0, scope: !4756)
!4766 = !DILocation(line: 0, scope: !4749, inlinedAt: !4767)
!4767 = distinct !DILocation(line: 111, column: 24, scope: !4756)
!4768 = !DILocation(line: 37, column: 24, scope: !4749, inlinedAt: !4767)
!4769 = !DILocation(line: 113, column: 14, scope: !4764)
!4770 = !DILocation(line: 113, column: 7, scope: !4756)
!4771 = !DILocation(line: 116, column: 19, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4773, file: !826, line: 116, column: 11)
!4773 = distinct !DILexicalBlock(scope: !4764, file: !826, line: 114, column: 5)
!4774 = !DILocation(line: 116, column: 11, scope: !4773)
!4775 = !DILocation(line: 120, column: 16, scope: !4772)
!4776 = !DILocation(line: 120, column: 9, scope: !4772)
!4777 = !DILocation(line: 125, column: 23, scope: !4763)
!4778 = !DILocation(line: 0, scope: !4763)
!4779 = !DILocation(line: 126, column: 18, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4763, file: !826, line: 126, column: 11)
!4781 = !DILocation(line: 126, column: 11, scope: !4763)
!4782 = !DILocation(line: 128, column: 39, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4780, file: !826, line: 127, column: 9)
!4784 = !DILocalVariable(name: "__dest", arg: 1, scope: !4785, file: !2359, line: 26, type: !3921)
!4785 = distinct !DISubprogram(name: "memcpy", scope: !2359, file: !2359, line: 26, type: !3919, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4786)
!4786 = !{!4784, !4787, !4788}
!4787 = !DILocalVariable(name: "__src", arg: 2, scope: !4785, file: !2359, line: 26, type: !1057)
!4788 = !DILocalVariable(name: "__len", arg: 3, scope: !4785, file: !2359, line: 26, type: !104)
!4789 = !DILocation(line: 0, scope: !4785, inlinedAt: !4790)
!4790 = distinct !DILocation(line: 128, column: 11, scope: !4783)
!4791 = !DILocation(line: 29, column: 10, scope: !4785, inlinedAt: !4790)
!4792 = !DILocation(line: 129, column: 11, scope: !4783)
!4793 = !DILocation(line: 133, column: 23, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4795, file: !826, line: 133, column: 15)
!4795 = distinct !DILexicalBlock(scope: !4780, file: !826, line: 132, column: 9)
!4796 = !DILocation(line: 133, column: 15, scope: !4795)
!4797 = !DILocation(line: 138, column: 44, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4794, file: !826, line: 134, column: 13)
!4799 = !DILocation(line: 0, scope: !4785, inlinedAt: !4800)
!4800 = distinct !DILocation(line: 138, column: 15, scope: !4798)
!4801 = !DILocation(line: 29, column: 10, scope: !4785, inlinedAt: !4800)
!4802 = !DILocation(line: 139, column: 15, scope: !4798)
!4803 = !DILocation(line: 139, column: 32, scope: !4798)
!4804 = !DILocation(line: 140, column: 13, scope: !4798)
!4805 = !DILocation(line: 0, scope: !4764)
!4806 = !DILocation(line: 145, column: 1, scope: !4756)
