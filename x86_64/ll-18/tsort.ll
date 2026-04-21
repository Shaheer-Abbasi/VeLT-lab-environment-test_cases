; ModuleID = 'src/tsort.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !465
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !436
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !455
@.str.1.34 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !457
@.str.2.36 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !459
@.str.3.35 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !461
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !463
@.str.4.29 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !467
@.str.5.30 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !469
@.str.6.31 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !474
@.str.62 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1, !dbg !479
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !482
@.str.71 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !488
@.str.1.72 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !490
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !492
@.str.75 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !523
@.str.1.76 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !526
@.str.2.77 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !528
@.str.3.78 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !533
@.str.4.79 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !535
@.str.5.80 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !537
@.str.6.81 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !539
@.str.7.82 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !541
@.str.8.83 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !543
@.str.9.84 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !545
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.75, ptr @.str.1.76, ptr @.str.2.77, ptr @.str.3.78, ptr @.str.4.79, ptr @.str.5.80, ptr @.str.6.81, ptr @.str.7.82, ptr @.str.8.83, ptr @.str.9.84, ptr null], align 16, !dbg !547
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !560
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !574
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !612
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !619
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !576
@slotvec0 = internal global %struct.tokenbuffer { i64 256, ptr @slot0 }, align 8, !dbg !621
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !564
@.str.10.87 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !581
@.str.11.85 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !583
@.str.12.88 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !585
@.str.13.86 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !587
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !589
@.str.99 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !627
@.str.1.100 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !630
@.str.2.101 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !632
@.str.3.102 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !634
@.str.4.103 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !636
@.str.5.104 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !638
@.str.6.105 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !643
@.str.7.106 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !648
@.str.8.107 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !650
@.str.9.108 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !655
@.str.10.109 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !660
@.str.11.110 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !665
@.str.12.111 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !670
@.str.13.112 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !672
@.str.14.113 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !677
@.str.15.114 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !682
@.str.16.115 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !687
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.120 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !692
@.str.18.121 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !694
@.str.19.122 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !696
@.str.20.123 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !698
@.str.21.124 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !700
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !702
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !704
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !709
@exit_failure = dso_local global i32 1, align 4, !dbg !717
@.str.147 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !723
@.str.1.145 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !726
@.str.2.146 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !728
@.str.152 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !730
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !733
@.str.1.157 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !748

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !838 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !842, metadata !DIExpression()), !dbg !843
  %2 = icmp eq i32 %0, 0, !dbg !844
  br i1 %2, label %8, label %3, !dbg !846

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !847, !tbaa !849
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !847
  %6 = load ptr, ptr @program_name, align 8, !dbg !847, !tbaa !849
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !847
  br label %34, !dbg !847

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !853
  %10 = load ptr, ptr @program_name, align 8, !dbg !853, !tbaa !849
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !853
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #40, !dbg !855
  %13 = load ptr, ptr @stdout, align 8, !dbg !855, !tbaa !849
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !855
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !858
  %16 = load ptr, ptr @stdout, align 8, !dbg !858, !tbaa !849
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !858
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !859
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !859
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !860
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !860
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !861, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.value(metadata !880, metadata !874, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.value(metadata ptr poison, metadata !873, metadata !DIExpression()), !dbg !878
  tail call void @emit_bug_reporting_address() #40, !dbg !881
  %20 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !882
  call void @llvm.dbg.value(metadata ptr %20, metadata !876, metadata !DIExpression()), !dbg !878
  %21 = icmp eq ptr %20, null, !dbg !883
  br i1 %21, label %29, label %22, !dbg !885

22:                                               ; preds = %8
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(4) @.str.47, i64 noundef 3) #41, !dbg !886
  %24 = icmp eq i32 %23, 0, !dbg !886
  br i1 %24, label %29, label %25, !dbg !887

25:                                               ; preds = %22
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #40, !dbg !888
  %27 = load ptr, ptr @stdout, align 8, !dbg !888, !tbaa !849
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !888
  br label %29, !dbg !890

29:                                               ; preds = %8, %22, %25
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !873, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !877, metadata !DIExpression()), !dbg !878
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #40, !dbg !891
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3) #40, !dbg !891
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #40, !dbg !892
  %33 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.51) #40, !dbg !892
  br label %34

34:                                               ; preds = %29, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !893
  unreachable, !dbg !893
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !894 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !898 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !904 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !907 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !144 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !148, metadata !DIExpression()), !dbg !911
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !149, metadata !DIExpression()), !dbg !911
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !912, !tbaa !913
  %3 = icmp eq i32 %2, -1, !dbg !915
  br i1 %3, label %4, label %16, !dbg !916

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.17) #40, !dbg !917
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !150, metadata !DIExpression()), !dbg !918
  %6 = icmp eq ptr %5, null, !dbg !919
  br i1 %6, label %14, label %7, !dbg !920

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !921, !tbaa !922
  %9 = icmp eq i8 %8, 0, !dbg !921
  br i1 %9, label %14, label %10, !dbg !923

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !924, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !930, metadata !DIExpression()), !dbg !931
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.18) #41, !dbg !933
  %12 = icmp eq i32 %11, 0, !dbg !934
  %13 = zext i1 %12 to i32, !dbg !923
  br label %14, !dbg !923

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !935, !tbaa !913
  br label %16, !dbg !936

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !937
  %18 = icmp eq i32 %17, 0, !dbg !937
  br i1 %18, label %22, label %19, !dbg !939

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !940, !tbaa !849
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !940
  br label %124, !dbg !942

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !153, metadata !DIExpression()), !dbg !911
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.19) #41, !dbg !943
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !944
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !155, metadata !DIExpression()), !dbg !911
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !945
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !156, metadata !DIExpression()), !dbg !911
  %26 = icmp eq ptr %25, null, !dbg !946
  br i1 %26, label %54, label %27, !dbg !947

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !948
  br i1 %28, label %54, label %29, !dbg !949

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !157, metadata !DIExpression()), !dbg !950
  tail call void @llvm.dbg.value(metadata i64 0, metadata !161, metadata !DIExpression()), !dbg !950
  %30 = icmp ult ptr %24, %25, !dbg !951
  br i1 %30, label %31, label %54, !dbg !952

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !911
  %33 = load ptr, ptr %32, align 8, !tbaa !849
  br label %34, !dbg !952

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !157, metadata !DIExpression()), !dbg !950
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !161, metadata !DIExpression()), !dbg !950
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !953
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !157, metadata !DIExpression()), !dbg !950
  %38 = load i8, ptr %35, align 1, !dbg !953, !tbaa !922
  %39 = sext i8 %38 to i64, !dbg !953
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !953
  %41 = load i16, ptr %40, align 2, !dbg !953, !tbaa !954
  %42 = freeze i16 %41, !dbg !956
  %43 = lshr i16 %42, 13, !dbg !956
  %44 = and i16 %43, 1, !dbg !956
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !957
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !161, metadata !DIExpression()), !dbg !950
  %47 = icmp ult ptr %37, %25, !dbg !951
  %48 = icmp ult i64 %46, 2, !dbg !958
  %49 = select i1 %47, i1 %48, i1 false, !dbg !958
  br i1 %49, label %34, label %50, !dbg !952, !llvm.loop !959

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !961
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !963
  %53 = zext i1 %51 to i8, !dbg !963
  br label %54, !dbg !963

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !911
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !911
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !153, metadata !DIExpression()), !dbg !911
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !156, metadata !DIExpression()), !dbg !911
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.20) #41, !dbg !964
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !162, metadata !DIExpression()), !dbg !911
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !965
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !163, metadata !DIExpression()), !dbg !911
  br label %59, !dbg !966

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !911
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !911
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !153, metadata !DIExpression()), !dbg !911
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !163, metadata !DIExpression()), !dbg !911
  %62 = load i8, ptr %60, align 1, !dbg !967, !tbaa !922
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !968

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !969
  %65 = load i8, ptr %64, align 1, !dbg !972, !tbaa !922
  %66 = icmp eq i8 %65, 45, !dbg !973
  %67 = select i1 %66, i8 0, i8 %61, !dbg !974
  br label %68, !dbg !974

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !911
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !153, metadata !DIExpression()), !dbg !911
  %70 = tail call ptr @__ctype_b_loc() #43, !dbg !975
  %71 = load ptr, ptr %70, align 8, !dbg !975, !tbaa !849
  %72 = sext i8 %62 to i64, !dbg !975
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !975
  %74 = load i16, ptr %73, align 2, !dbg !975, !tbaa !954
  %75 = and i16 %74, 8192, !dbg !975
  %76 = icmp eq i16 %75, 0, !dbg !975
  br i1 %76, label %92, label %77, !dbg !977

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !978
  br i1 %78, label %94, label %79, !dbg !981

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !982
  %81 = load i8, ptr %80, align 1, !dbg !982, !tbaa !922
  %82 = sext i8 %81 to i64, !dbg !982
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !982
  %84 = load i16, ptr %83, align 2, !dbg !982, !tbaa !954
  %85 = and i16 %84, 8192, !dbg !982
  %86 = icmp eq i16 %85, 0, !dbg !982
  br i1 %86, label %87, label %94, !dbg !983

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !984
  %89 = icmp ne i8 %88, 0, !dbg !984
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !986
  br i1 %91, label %92, label %94, !dbg !986

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !987
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !163, metadata !DIExpression()), !dbg !911
  br label %59, !dbg !966, !llvm.loop !988

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !990
  %96 = load ptr, ptr @stdout, align 8, !dbg !990, !tbaa !849
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !990
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !924, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata !880, metadata !930, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !924, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata !880, metadata !930, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !924, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata !880, metadata !930, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !924, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata !880, metadata !930, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !924, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata !880, metadata !930, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !924, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata !880, metadata !930, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !924, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata !880, metadata !930, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !924, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata !880, metadata !930, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !924, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata !880, metadata !930, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !924, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata !880, metadata !930, metadata !DIExpression()), !dbg !1009
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !220, metadata !DIExpression()), !dbg !911
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.34, i64 noundef 6) #41, !dbg !1011
  %99 = icmp eq i32 %98, 0, !dbg !1011
  br i1 %99, label %103, label %100, !dbg !1013

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.35, i64 noundef 9) #41, !dbg !1014
  %102 = icmp eq i32 %101, 0, !dbg !1014
  br i1 %102, label %103, label %106, !dbg !1015

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1016
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #40, !dbg !1016
  br label %109, !dbg !1018

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1019
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #40, !dbg !1019
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1021, !tbaa !849
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %110), !dbg !1021
  %112 = load ptr, ptr @stdout, align 8, !dbg !1022, !tbaa !849
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %112), !dbg !1022
  %114 = ptrtoint ptr %60 to i64, !dbg !1023
  %115 = sub i64 %114, %95, !dbg !1023
  %116 = load ptr, ptr @stdout, align 8, !dbg !1023, !tbaa !849
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1023
  %118 = load ptr, ptr @stdout, align 8, !dbg !1024, !tbaa !849
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %118), !dbg !1024
  %120 = load ptr, ptr @stdout, align 8, !dbg !1025, !tbaa !849
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %120), !dbg !1025
  %122 = load ptr, ptr @stdout, align 8, !dbg !1026, !tbaa !849
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1026
  br label %124, !dbg !1027

124:                                              ; preds = %109, %19
  ret void, !dbg !1027
}

; Function Attrs: nounwind
declare !dbg !1028 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1032 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1036 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1038 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1041 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1044 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1047 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1050 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1056 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1057 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !49 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !392, metadata !DIExpression()), !dbg !1063
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !393, metadata !DIExpression()), !dbg !1063
  %3 = load ptr, ptr %1, align 8, !dbg !1064, !tbaa !849
  tail call void @set_program_name(ptr noundef %3) #40, !dbg !1065
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #40, !dbg !1066
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #40, !dbg !1067
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #40, !dbg !1068
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1069
  br label %8, !dbg !1070

8:                                                ; preds = %8, %2
  %9 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @main.long_options, ptr noundef null) #40, !dbg !1071
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !394, metadata !DIExpression()), !dbg !1072
  switch i32 %9, label %15 [
    i32 -1, label %16
    i32 119, label %8
    i32 -130, label %10
    i32 -131, label %11
  ], !dbg !1073

10:                                               ; preds = %8
  tail call void @usage(i32 noundef 0) #44, !dbg !1074
  unreachable, !dbg !1074

11:                                               ; preds = %8
  %12 = load ptr, ptr @stdout, align 8, !dbg !1076, !tbaa !849
  %13 = load ptr, ptr @Version, align 8, !dbg !1076, !tbaa !849
  %14 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #40, !dbg !1076
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %13, ptr noundef %14, ptr noundef null) #40, !dbg !1076
  tail call void @exit(i32 noundef 0) #42, !dbg !1076
  unreachable, !dbg !1076

15:                                               ; preds = %8
  tail call void @usage(i32 noundef 1) #44, !dbg !1077
  unreachable, !dbg !1077

16:                                               ; preds = %8
  %17 = load i32, ptr @optind, align 4, !dbg !1078, !tbaa !913
  %18 = sub nsw i32 %0, %17, !dbg !1080
  %19 = icmp sgt i32 %18, 1, !dbg !1081
  br i1 %19, label %20, label %28, !dbg !1082

20:                                               ; preds = %16
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #40, !dbg !1083
  %22 = load i32, ptr @optind, align 4, !dbg !1083, !tbaa !913
  %23 = sext i32 %22 to i64, !dbg !1083
  %24 = getelementptr ptr, ptr %1, i64 %23, !dbg !1083
  %25 = getelementptr ptr, ptr %24, i64 1, !dbg !1083
  %26 = load ptr, ptr %25, align 8, !dbg !1083, !tbaa !849
  %27 = tail call ptr @quote(ptr noundef %26) #40, !dbg !1083
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %21, ptr noundef %27) #40, !dbg !1083
  tail call void @usage(i32 noundef 1) #44, !dbg !1085
  unreachable, !dbg !1085

28:                                               ; preds = %16
  %29 = icmp eq i32 %17, %0, !dbg !1086
  br i1 %29, label %34, label %30, !dbg !1087

30:                                               ; preds = %28
  %31 = sext i32 %17 to i64, !dbg !1088
  %32 = getelementptr inbounds ptr, ptr %1, i64 %31, !dbg !1088
  %33 = load ptr, ptr %32, align 8, !dbg !1088, !tbaa !849
  br label %34, !dbg !1087

34:                                               ; preds = %28, %30
  %35 = phi ptr [ %33, %30 ], [ @.str.15, %28 ], !dbg !1087
  tail call fastcc void @tsort(ptr noundef %35) #44, !dbg !1089
  unreachable, !dbg !1089
}

; Function Attrs: nounwind
declare !dbg !1090 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1093 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1094 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1097 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @tsort(ptr noundef %0) unnamed_addr #0 !dbg !1103 {
  %2 = alloca %struct.tokenbuffer, align 8, !DIAssignID !1123
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1109, metadata !DIExpression(), metadata !1123, metadata ptr %2, metadata !DIExpression()), !dbg !1124
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1105, metadata !DIExpression()), !dbg !1124
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1106, metadata !DIExpression()), !dbg !1124
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1107, metadata !DIExpression()), !dbg !1124
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1108, metadata !DIExpression()), !dbg !1124
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #40, !dbg !1125
  call void @llvm.dbg.value(metadata ptr %0, metadata !924, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !930, metadata !DIExpression()), !dbg !1126
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.15) #41, !dbg !1128
  %4 = icmp eq i32 %3, 0, !dbg !1129
  tail call void @llvm.dbg.value(metadata i1 %4, metadata !1116, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1124
  call void @llvm.dbg.value(metadata ptr null, metadata !1130, metadata !DIExpression()), !dbg !1136
  %5 = tail call noalias nonnull dereferenceable(56) ptr @xzalloc(i64 noundef 56) #45, !dbg !1138
  call void @llvm.dbg.value(metadata ptr %5, metadata !1135, metadata !DIExpression()), !dbg !1136
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1117, metadata !DIExpression()), !dbg !1124
  br i1 %4, label %14, label %6, !dbg !1139

6:                                                ; preds = %1
  %7 = load ptr, ptr @stdin, align 8, !dbg !1141, !tbaa !849
  %8 = tail call ptr @freopen_safer(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef %7) #40, !dbg !1142
  %9 = icmp eq ptr %8, null, !dbg !1142
  br i1 %9, label %10, label %14, !dbg !1143

10:                                               ; preds = %6
  %11 = tail call ptr @__errno_location() #43, !dbg !1144
  %12 = load i32, ptr %11, align 4, !dbg !1144, !tbaa !913
  %13 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #40, !dbg !1144
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %12, ptr noundef nonnull @.str.53, ptr noundef %13) #40, !dbg !1144
  unreachable, !dbg !1144

14:                                               ; preds = %6, %1
  %15 = load ptr, ptr @stdin, align 8, !dbg !1145, !tbaa !849
  tail call void @fadvise(ptr noundef %15, i32 noundef 2) #40, !dbg !1146
  call void @init_tokenbuffer(ptr noundef nonnull %2) #40, !dbg !1147
  %16 = getelementptr inbounds %struct.tokenbuffer, ptr %2, i64 0, i32 1
  %17 = getelementptr inbounds %struct.item, ptr %5, i64 0, i32 2
  br label %18, !dbg !1148

18:                                               ; preds = %188, %14
  %19 = phi ptr [ null, %14 ], [ %189, %188 ], !dbg !1149
  tail call void @llvm.dbg.value(metadata ptr %19, metadata !1107, metadata !DIExpression()), !dbg !1124
  tail call void @llvm.dbg.value(metadata ptr %19, metadata !1108, metadata !DIExpression()), !dbg !1124
  %20 = load ptr, ptr @stdin, align 8, !dbg !1150, !tbaa !849
  %21 = call i64 @readtoken(ptr noundef %20, ptr noundef nonnull @.str.19, i64 noundef 3, ptr noundef nonnull %2) #40, !dbg !1151
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1118, metadata !DIExpression()), !dbg !1152
  switch i64 %21, label %33 [
    i64 -1, label %22
    i64 0, label %32
  ], !dbg !1153

22:                                               ; preds = %18
  %23 = load ptr, ptr @stdin, align 8, !dbg !1154, !tbaa !849
  tail call void @llvm.dbg.value(metadata ptr %23, metadata !1158, metadata !DIExpression()), !dbg !1164
  %24 = load i32, ptr %23, align 8, !dbg !1166, !tbaa !1167
  %25 = and i32 %24, 32, !dbg !1154
  %26 = icmp eq i32 %25, 0, !dbg !1154
  br i1 %26, label %190, label %27, !dbg !1170

27:                                               ; preds = %22
  %28 = tail call ptr @__errno_location() #43, !dbg !1171
  %29 = load i32, ptr %28, align 4, !dbg !1171, !tbaa !913
  %30 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #40, !dbg !1171
  %31 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #40, !dbg !1171
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %29, ptr noundef %30, ptr noundef %31) #40, !dbg !1171
  unreachable, !dbg !1171

32:                                               ; preds = %18
  call void @__assert_fail(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 458, ptr noundef nonnull @__PRETTY_FUNCTION__.tsort) #42, !dbg !1172
  unreachable, !dbg !1172

33:                                               ; preds = %18
  %34 = load ptr, ptr %16, align 8, !dbg !1175, !tbaa !1176
  call void @llvm.dbg.value(metadata ptr %5, metadata !1178, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr %34, metadata !1183, metadata !DIExpression()), !dbg !1195
  %35 = load ptr, ptr %17, align 8, !dbg !1197, !tbaa !1199
  %36 = icmp eq ptr %35, null, !dbg !1202
  br i1 %36, label %41, label %37, !dbg !1203

37:                                               ; preds = %33
  call void @llvm.dbg.value(metadata ptr %5, metadata !1188, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr %35, metadata !1187, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr %35, metadata !1184, metadata !DIExpression()), !dbg !1195
  %38 = load ptr, ptr %35, align 8, !dbg !1204, !tbaa !1205
  %39 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %38) #41, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %39, metadata !1189, metadata !DIExpression()), !dbg !1195
  %40 = icmp eq i32 %39, 0, !dbg !1207
  br i1 %40, label %172, label %47, !dbg !1209

41:                                               ; preds = %33
  call void @llvm.dbg.value(metadata ptr %34, metadata !1130, metadata !DIExpression()), !dbg !1210
  %42 = call noalias nonnull dereferenceable(56) ptr @xzalloc(i64 noundef 56) #45, !dbg !1212
  call void @llvm.dbg.value(metadata ptr %42, metadata !1135, metadata !DIExpression()), !dbg !1210
  %43 = icmp eq ptr %34, null, !dbg !1213
  br i1 %43, label %46, label %44, !dbg !1215

44:                                               ; preds = %41
  %45 = call noalias nonnull ptr @xstrdup(ptr noundef nonnull %34) #40, !dbg !1216
  store ptr %45, ptr %42, align 8, !dbg !1217, !tbaa !1205
  br label %46, !dbg !1218

46:                                               ; preds = %44, %41
  store ptr %42, ptr %17, align 8, !dbg !1219, !tbaa !1199
  br label %172, !dbg !1220

47:                                               ; preds = %37, %163
  %48 = phi i32 [ %170, %163 ], [ %39, %37 ]
  %49 = phi ptr [ %168, %163 ], [ %5, %37 ]
  %50 = phi ptr [ %167, %163 ], [ %35, %37 ]
  %51 = phi ptr [ %56, %163 ], [ %35, %37 ]
  call void @llvm.dbg.value(metadata ptr %49, metadata !1188, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr %50, metadata !1187, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr %51, metadata !1184, metadata !DIExpression()), !dbg !1195
  %52 = icmp slt i32 %48, 0, !dbg !1221
  %53 = getelementptr inbounds %struct.item, ptr %51, i64 0, i32 1, !dbg !1223
  %54 = getelementptr inbounds %struct.item, ptr %51, i64 0, i32 2, !dbg !1223
  %55 = select i1 %52, ptr %53, ptr %54, !dbg !1223
  %56 = load ptr, ptr %55, align 8, !dbg !1224, !tbaa !849
  call void @llvm.dbg.value(metadata ptr %56, metadata !1185, metadata !DIExpression()), !dbg !1195
  %57 = icmp eq ptr %56, null, !dbg !1225
  br i1 %57, label %58, label %163, !dbg !1226

58:                                               ; preds = %47
  call void @llvm.dbg.value(metadata ptr %34, metadata !1130, metadata !DIExpression()), !dbg !1227
  %59 = call noalias nonnull dereferenceable(56) ptr @xzalloc(i64 noundef 56) #45, !dbg !1229
  call void @llvm.dbg.value(metadata ptr %59, metadata !1135, metadata !DIExpression()), !dbg !1227
  %60 = icmp eq ptr %34, null, !dbg !1230
  br i1 %60, label %63, label %61, !dbg !1231

61:                                               ; preds = %58
  %62 = call noalias nonnull ptr @xstrdup(ptr noundef nonnull %34) #40, !dbg !1232
  store ptr %62, ptr %59, align 8, !dbg !1233, !tbaa !1205
  br label %63, !dbg !1234

63:                                               ; preds = %61, %58
  call void @llvm.dbg.value(metadata ptr %59, metadata !1185, metadata !DIExpression()), !dbg !1195
  store ptr %59, ptr %55, align 8, !dbg !1235, !tbaa !849
  %64 = load ptr, ptr %50, align 8, !dbg !1237, !tbaa !1205
  %65 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %64) #41, !dbg !1238
  call void @llvm.dbg.value(metadata i32 %65, metadata !1189, metadata !DIExpression()), !dbg !1195
  %66 = icmp slt i32 %65, 0, !dbg !1239
  br i1 %66, label %67, label %69, !dbg !1241

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 1, !dbg !1242
  call void @llvm.dbg.value(metadata ptr poison, metadata !1184, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr poison, metadata !1186, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i32 -1, metadata !1189, metadata !DIExpression()), !dbg !1195
  br label %74, !dbg !1244

69:                                               ; preds = %63
  %70 = icmp eq i32 %65, 0, !dbg !1245
  br i1 %70, label %71, label %72, !dbg !1249

71:                                               ; preds = %69
  call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.56, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__.search_item) #42, !dbg !1245
  unreachable, !dbg !1245

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 2, !dbg !1250
  call void @llvm.dbg.value(metadata ptr poison, metadata !1184, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr poison, metadata !1186, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i32 1, metadata !1189, metadata !DIExpression()), !dbg !1195
  br label %74

74:                                               ; preds = %72, %67
  %75 = phi ptr [ %68, %67 ], [ %73, %72 ]
  %76 = phi i32 [ -1, %67 ], [ 1, %72 ], !dbg !1251
  %77 = load ptr, ptr %75, align 8, !dbg !1251, !tbaa !849
  call void @llvm.dbg.value(metadata i32 %76, metadata !1189, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr %77, metadata !1186, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr %77, metadata !1184, metadata !DIExpression()), !dbg !1195
  %78 = icmp eq ptr %77, %59, !dbg !1252
  br i1 %78, label %97, label %79, !dbg !1253

79:                                               ; preds = %74, %93
  %80 = phi ptr [ %95, %93 ], [ %77, %74 ]
  call void @llvm.dbg.value(metadata ptr %80, metadata !1184, metadata !DIExpression()), !dbg !1195
  %81 = load ptr, ptr %80, align 8, !dbg !1254, !tbaa !1205
  %82 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %81) #41, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %82, metadata !1190, metadata !DIExpression()), !dbg !1256
  %83 = icmp slt i32 %82, 0, !dbg !1257
  br i1 %83, label %84, label %87, !dbg !1259

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.item, ptr %80, i64 0, i32 3, !dbg !1260
  store i8 -1, ptr %85, align 8, !dbg !1262, !tbaa !1263
  %86 = getelementptr inbounds %struct.item, ptr %80, i64 0, i32 1, !dbg !1264
  call void @llvm.dbg.value(metadata ptr poison, metadata !1184, metadata !DIExpression()), !dbg !1195
  br label %93, !dbg !1265

87:                                               ; preds = %79
  %88 = icmp eq i32 %82, 0, !dbg !1266
  br i1 %88, label %89, label %90, !dbg !1270

89:                                               ; preds = %87
  call void @__assert_fail(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.56, i32 noundef 181, ptr noundef nonnull @__PRETTY_FUNCTION__.search_item) #42, !dbg !1266
  unreachable, !dbg !1266

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.item, ptr %80, i64 0, i32 3, !dbg !1271
  store i8 1, ptr %91, align 8, !dbg !1272, !tbaa !1263
  %92 = getelementptr inbounds %struct.item, ptr %80, i64 0, i32 2, !dbg !1273
  call void @llvm.dbg.value(metadata ptr poison, metadata !1184, metadata !DIExpression()), !dbg !1195
  br label %93

93:                                               ; preds = %90, %84
  %94 = phi ptr [ %86, %84 ], [ %92, %90 ]
  %95 = load ptr, ptr %94, align 8, !dbg !1274, !tbaa !849
  call void @llvm.dbg.value(metadata ptr %95, metadata !1184, metadata !DIExpression()), !dbg !1195
  %96 = icmp eq ptr %95, %59, !dbg !1252
  br i1 %96, label %97, label %79, !dbg !1253, !llvm.loop !1275

97:                                               ; preds = %93, %74
  %98 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 3, !dbg !1277
  %99 = load i8, ptr %98, align 8, !dbg !1277, !tbaa !1263
  %100 = icmp eq i8 %99, 0, !dbg !1279
  br i1 %100, label %105, label %101, !dbg !1280

101:                                              ; preds = %97
  %102 = sext i8 %99 to i32, !dbg !1281
  %103 = sub nsw i32 0, %76, !dbg !1282
  %104 = icmp eq i32 %102, %103, !dbg !1283
  br i1 %104, label %105, label %108, !dbg !1284

105:                                              ; preds = %101, %97
  %106 = trunc i32 %76 to i8, !dbg !1285
  %107 = add i8 %99, %106, !dbg !1285
  store i8 %107, ptr %98, align 8, !dbg !1285, !tbaa !1263
  br label %172, !dbg !1287

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 3, !dbg !1288
  %110 = load i8, ptr %109, align 8, !dbg !1288, !tbaa !1263
  %111 = sext i8 %110 to i32, !dbg !1290
  %112 = icmp eq i32 %76, %111, !dbg !1291
  br i1 %112, label %113, label %124, !dbg !1292

113:                                              ; preds = %108
  call void @llvm.dbg.value(metadata ptr %77, metadata !1184, metadata !DIExpression()), !dbg !1195
  br i1 %66, label %114, label %118, !dbg !1293

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 2, !dbg !1295
  %116 = load ptr, ptr %115, align 8, !dbg !1295, !tbaa !1199
  %117 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 1, !dbg !1298
  store ptr %116, ptr %117, align 8, !dbg !1299, !tbaa !1300
  br label %122, !dbg !1301

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 1, !dbg !1302
  %120 = load ptr, ptr %119, align 8, !dbg !1302, !tbaa !1300
  %121 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 2, !dbg !1304
  store ptr %120, ptr %121, align 8, !dbg !1305, !tbaa !1199
  br label %122

122:                                              ; preds = %118, %114
  %123 = phi ptr [ %119, %118 ], [ %115, %114 ]
  store ptr %50, ptr %123, align 8, !dbg !1306, !tbaa !849
  store i8 0, ptr %109, align 8, !dbg !1307, !tbaa !1263
  br label %154, !dbg !1308

124:                                              ; preds = %108
  br i1 %66, label %125, label %133, !dbg !1309

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 2, !dbg !1311
  %127 = load ptr, ptr %126, align 8, !dbg !1311, !tbaa !1199
  call void @llvm.dbg.value(metadata ptr %127, metadata !1184, metadata !DIExpression()), !dbg !1195
  %128 = getelementptr inbounds %struct.item, ptr %127, i64 0, i32 1, !dbg !1314
  %129 = load ptr, ptr %128, align 8, !dbg !1314, !tbaa !1300
  store ptr %129, ptr %126, align 8, !dbg !1315, !tbaa !1199
  store ptr %77, ptr %128, align 8, !dbg !1316, !tbaa !1300
  %130 = getelementptr inbounds %struct.item, ptr %127, i64 0, i32 2, !dbg !1317
  %131 = load ptr, ptr %130, align 8, !dbg !1317, !tbaa !1199
  %132 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 1, !dbg !1318
  store ptr %131, ptr %132, align 8, !dbg !1319, !tbaa !1300
  br label %141, !dbg !1320

133:                                              ; preds = %124
  %134 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 1, !dbg !1321
  %135 = load ptr, ptr %134, align 8, !dbg !1321, !tbaa !1300
  call void @llvm.dbg.value(metadata ptr %135, metadata !1184, metadata !DIExpression()), !dbg !1195
  %136 = getelementptr inbounds %struct.item, ptr %135, i64 0, i32 2, !dbg !1323
  %137 = load ptr, ptr %136, align 8, !dbg !1323, !tbaa !1199
  store ptr %137, ptr %134, align 8, !dbg !1324, !tbaa !1300
  store ptr %77, ptr %136, align 8, !dbg !1325, !tbaa !1199
  %138 = getelementptr inbounds %struct.item, ptr %135, i64 0, i32 1, !dbg !1326
  %139 = load ptr, ptr %138, align 8, !dbg !1326, !tbaa !1300
  %140 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 2, !dbg !1327
  store ptr %139, ptr %140, align 8, !dbg !1328, !tbaa !1199
  br label %141

141:                                              ; preds = %133, %125
  %142 = phi ptr [ %138, %133 ], [ %130, %125 ]
  %143 = phi ptr [ %135, %133 ], [ %127, %125 ], !dbg !1329
  store ptr %50, ptr %142, align 8, !dbg !1329, !tbaa !849
  call void @llvm.dbg.value(metadata ptr %143, metadata !1184, metadata !DIExpression()), !dbg !1195
  store i8 0, ptr %98, align 8, !dbg !1330, !tbaa !1263
  store i8 0, ptr %109, align 8, !dbg !1331, !tbaa !1263
  %144 = getelementptr inbounds %struct.item, ptr %143, i64 0, i32 3, !dbg !1332
  %145 = load i8, ptr %144, align 8, !dbg !1332, !tbaa !1263
  %146 = sext i8 %145 to i32, !dbg !1334
  %147 = icmp eq i32 %76, %146, !dbg !1335
  br i1 %147, label %150, label %148, !dbg !1336

148:                                              ; preds = %141
  %149 = icmp eq i32 %146, %103, !dbg !1337
  br i1 %149, label %150, label %154, !dbg !1339

150:                                              ; preds = %148, %141
  %151 = phi i32 [ %103, %141 ], [ %76, %148 ]
  %152 = phi ptr [ %98, %141 ], [ %109, %148 ]
  %153 = trunc i32 %151 to i8, !dbg !1340
  store i8 %153, ptr %152, align 8, !dbg !1340, !tbaa !1263
  br label %154, !dbg !1341

154:                                              ; preds = %150, %148, %122
  %155 = phi ptr [ %98, %122 ], [ %144, %150 ], [ %144, %148 ]
  %156 = phi ptr [ %77, %122 ], [ %143, %150 ], [ %143, %148 ], !dbg !1342
  store i8 0, ptr %155, align 8, !dbg !1342, !tbaa !1263
  call void @llvm.dbg.value(metadata ptr %156, metadata !1184, metadata !DIExpression()), !dbg !1195
  %157 = getelementptr inbounds %struct.item, ptr %49, i64 0, i32 2, !dbg !1343
  %158 = load ptr, ptr %157, align 8, !dbg !1343, !tbaa !1199
  %159 = icmp eq ptr %50, %158, !dbg !1345
  br i1 %159, label %160, label %161, !dbg !1346

160:                                              ; preds = %154
  store ptr %156, ptr %157, align 8, !dbg !1347, !tbaa !1199
  br label %172, !dbg !1348

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.item, ptr %49, i64 0, i32 1, !dbg !1349
  store ptr %156, ptr %162, align 8, !dbg !1350, !tbaa !1300
  br label %172

163:                                              ; preds = %47
  %164 = getelementptr inbounds %struct.item, ptr %56, i64 0, i32 3, !dbg !1351
  %165 = load i8, ptr %164, align 8, !dbg !1351, !tbaa !1263
  %166 = icmp eq i8 %165, 0, !dbg !1353
  %167 = select i1 %166, ptr %50, ptr %56, !dbg !1354
  %168 = select i1 %166, ptr %49, ptr %51, !dbg !1354
  call void @llvm.dbg.value(metadata ptr %168, metadata !1188, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr %167, metadata !1187, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr %56, metadata !1184, metadata !DIExpression()), !dbg !1195
  %169 = load ptr, ptr %56, align 8, !dbg !1204, !tbaa !1205
  %170 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %169) #41, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %170, metadata !1189, metadata !DIExpression()), !dbg !1195
  %171 = icmp eq i32 %170, 0, !dbg !1207
  br i1 %171, label %172, label %47, !dbg !1209, !llvm.loop !1355

172:                                              ; preds = %163, %37, %46, %105, %160, %161
  %173 = phi ptr [ %42, %46 ], [ %59, %105 ], [ %59, %161 ], [ %59, %160 ], [ %35, %37 ], [ %56, %163 ], !dbg !1195
  tail call void @llvm.dbg.value(metadata ptr %173, metadata !1108, metadata !DIExpression()), !dbg !1124
  %174 = icmp eq ptr %19, null, !dbg !1358
  br i1 %174, label %188, label %175, !dbg !1360

175:                                              ; preds = %172
  call void @llvm.dbg.value(metadata ptr %19, metadata !1361, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata ptr %173, metadata !1366, metadata !DIExpression()), !dbg !1368
  %176 = load ptr, ptr %19, align 8, !dbg !1371, !tbaa !1205
  %177 = load ptr, ptr %173, align 8, !dbg !1373, !tbaa !1205
  call void @llvm.dbg.value(metadata ptr %176, metadata !924, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata ptr %177, metadata !930, metadata !DIExpression()), !dbg !1374
  %178 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(1) %177) #41, !dbg !1376
  %179 = icmp eq i32 %178, 0, !dbg !1377
  br i1 %179, label %188, label %180, !dbg !1378

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.item, ptr %173, i64 0, i32 5, !dbg !1379
  %182 = load i64, ptr %181, align 8, !dbg !1381, !tbaa !1382
  %183 = add i64 %182, 1, !dbg !1381
  store i64 %183, ptr %181, align 8, !dbg !1381, !tbaa !1382
  %184 = call noalias nonnull dereferenceable(16) ptr @xmalloc(i64 noundef 16) #45, !dbg !1383
  call void @llvm.dbg.value(metadata ptr %184, metadata !1367, metadata !DIExpression()), !dbg !1368
  store ptr %173, ptr %184, align 8, !dbg !1384, !tbaa !1385
  %185 = getelementptr inbounds %struct.item, ptr %19, i64 0, i32 7, !dbg !1387
  %186 = load ptr, ptr %185, align 8, !dbg !1387, !tbaa !1388
  %187 = getelementptr inbounds %struct.successor, ptr %184, i64 0, i32 1, !dbg !1389
  store ptr %186, ptr %187, align 8, !dbg !1390, !tbaa !1391
  store ptr %184, ptr %185, align 8, !dbg !1392, !tbaa !1388
  br label %188, !dbg !1393

188:                                              ; preds = %180, %175, %172
  %189 = phi ptr [ %173, %172 ], [ null, %175 ], [ null, %180 ]
  br label %18, !dbg !1124

190:                                              ; preds = %22
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !1107, metadata !DIExpression()), !dbg !1124
  tail call void @llvm.dbg.value(metadata ptr %19, metadata !1108, metadata !DIExpression()), !dbg !1124
  %191 = icmp eq ptr %19, null, !dbg !1394
  br i1 %191, label %195, label %192, !dbg !1396

192:                                              ; preds = %190
  %193 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #40, !dbg !1397
  %194 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #40, !dbg !1397
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %193, ptr noundef %194) #40, !dbg !1397
  unreachable, !dbg !1397

195:                                              ; preds = %190
  call void @llvm.dbg.value(metadata ptr %5, metadata !1398, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata ptr @count_items, metadata !1406, metadata !DIExpression()), !dbg !1407
  %196 = load ptr, ptr %17, align 8, !dbg !1409, !tbaa !1199
  %197 = icmp eq ptr %196, null, !dbg !1411
  br i1 %197, label %200, label %198, !dbg !1412

198:                                              ; preds = %195
  %199 = call fastcc zeroext i1 @recurse_tree(ptr noundef nonnull %196, ptr noundef nonnull @count_items), !dbg !1413
  br label %200, !dbg !1413

200:                                              ; preds = %195, %198
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1106, metadata !DIExpression()), !dbg !1124
  %201 = load i64, ptr @n_strings, align 8, !dbg !1414, !tbaa !1415
  %202 = icmp eq i64 %201, 0, !dbg !1416
  br i1 %202, label %263, label %203, !dbg !1417

203:                                              ; preds = %200, %256
  %204 = phi i32 [ 0, %256 ], [ 1, %200 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1106, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata ptr %5, metadata !1398, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata ptr @scan_zeros, metadata !1406, metadata !DIExpression()), !dbg !1418
  br i1 %197, label %207, label %205, !dbg !1420

205:                                              ; preds = %203
  %206 = call fastcc zeroext i1 @recurse_tree(ptr noundef nonnull %196, ptr noundef nonnull @scan_zeros), !dbg !1421
  br label %207, !dbg !1421

207:                                              ; preds = %203, %205
  %208 = load ptr, ptr @head, align 8, !dbg !1422, !tbaa !849
  %209 = icmp eq ptr %208, null, !dbg !1423
  br i1 %209, label %210, label %212, !dbg !1423

210:                                              ; preds = %207
  %211 = load i64, ptr @n_strings, align 8, !dbg !1424, !tbaa !1415
  br label %244, !dbg !1423

212:                                              ; preds = %207, %240
  %213 = phi ptr [ %242, %240 ], [ %208, %207 ]
  %214 = getelementptr inbounds %struct.item, ptr %213, i64 0, i32 7, !dbg !1426
  %215 = load ptr, ptr %214, align 8, !dbg !1426, !tbaa !1388
  tail call void @llvm.dbg.value(metadata ptr %215, metadata !1120, metadata !DIExpression()), !dbg !1427
  %216 = load ptr, ptr %213, align 8, !dbg !1428, !tbaa !1205
  %217 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %216), !dbg !1429
  %218 = load ptr, ptr @head, align 8, !dbg !1430, !tbaa !849
  %219 = getelementptr inbounds %struct.item, ptr %218, i64 0, i32 4, !dbg !1431
  store i8 1, ptr %219, align 1, !dbg !1432, !tbaa !1433
  %220 = load i64, ptr @n_strings, align 8, !dbg !1434, !tbaa !1415
  %221 = add i64 %220, -1, !dbg !1434
  store i64 %221, ptr @n_strings, align 8, !dbg !1434, !tbaa !1415
  %222 = icmp eq ptr %215, null, !dbg !1435
  br i1 %222, label %240, label %223, !dbg !1435

223:                                              ; preds = %212
  %224 = load ptr, ptr @zeros, align 8, !tbaa !849
  br label %225, !dbg !1435

225:                                              ; preds = %223, %235
  %226 = phi ptr [ %238, %235 ], [ %215, %223 ]
  %227 = phi ptr [ %236, %235 ], [ %224, %223 ]
  tail call void @llvm.dbg.value(metadata ptr %226, metadata !1120, metadata !DIExpression()), !dbg !1427
  %228 = load ptr, ptr %226, align 8, !dbg !1436, !tbaa !1385
  %229 = getelementptr inbounds %struct.item, ptr %228, i64 0, i32 5, !dbg !1438
  %230 = load i64, ptr %229, align 8, !dbg !1439, !tbaa !1382
  %231 = add i64 %230, -1, !dbg !1439
  store i64 %231, ptr %229, align 8, !dbg !1439, !tbaa !1382
  %232 = icmp eq i64 %231, 0, !dbg !1440
  br i1 %232, label %233, label %235, !dbg !1442

233:                                              ; preds = %225
  %234 = getelementptr inbounds %struct.item, ptr %227, i64 0, i32 6, !dbg !1443
  store ptr %228, ptr %234, align 8, !dbg !1445, !tbaa !1446
  store ptr %228, ptr @zeros, align 8, !dbg !1447, !tbaa !849
  br label %235, !dbg !1448

235:                                              ; preds = %233, %225
  %236 = phi ptr [ %228, %233 ], [ %227, %225 ]
  %237 = getelementptr inbounds %struct.successor, ptr %226, i64 0, i32 1, !dbg !1449
  %238 = load ptr, ptr %237, align 8, !dbg !1449, !tbaa !1391
  tail call void @llvm.dbg.value(metadata ptr %238, metadata !1120, metadata !DIExpression()), !dbg !1427
  %239 = icmp eq ptr %238, null, !dbg !1435
  br i1 %239, label %240, label %225, !dbg !1435, !llvm.loop !1450

240:                                              ; preds = %235, %212
  %241 = getelementptr inbounds %struct.item, ptr %218, i64 0, i32 6, !dbg !1452
  %242 = load ptr, ptr %241, align 8, !dbg !1452, !tbaa !1446
  store ptr %242, ptr @head, align 8, !dbg !1453, !tbaa !849
  %243 = icmp eq ptr %242, null, !dbg !1423
  br i1 %243, label %244, label %212, !dbg !1423, !llvm.loop !1454

244:                                              ; preds = %240, %210
  %245 = phi i64 [ %211, %210 ], [ %221, %240 ], !dbg !1424
  %246 = icmp eq i64 %245, 0, !dbg !1456
  br i1 %246, label %259, label %247, !dbg !1457

247:                                              ; preds = %244
  %248 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #40, !dbg !1458
  %249 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #40, !dbg !1458
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %248, ptr noundef %249) #40, !dbg !1458
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1106, metadata !DIExpression()), !dbg !1124
  br label %250, !dbg !1460

250:                                              ; preds = %253, %247
  call void @llvm.dbg.value(metadata ptr %5, metadata !1398, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata ptr @detect_loop, metadata !1406, metadata !DIExpression()), !dbg !1461
  br i1 %197, label %253, label %251, !dbg !1463

251:                                              ; preds = %250
  %252 = call fastcc zeroext i1 @recurse_tree(ptr noundef nonnull %196, ptr noundef nonnull @detect_loop), !dbg !1464
  br label %253, !dbg !1464

253:                                              ; preds = %250, %251
  %254 = load ptr, ptr @loop, align 8, !dbg !1465, !tbaa !849
  %255 = icmp eq ptr %254, null, !dbg !1466
  br i1 %255, label %256, label %250, !dbg !1466, !llvm.loop !1467

256:                                              ; preds = %253
  %257 = load i64, ptr @n_strings, align 8, !dbg !1414, !tbaa !1415
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1106, metadata !DIExpression()), !dbg !1124
  %258 = icmp eq i64 %257, 0, !dbg !1416
  br i1 %258, label %259, label %203, !dbg !1417, !llvm.loop !1469

259:                                              ; preds = %244, %256
  %260 = phi i32 [ 0, %256 ], [ %204, %244 ]
  %261 = and i32 %260, 1, !dbg !1471
  %262 = xor i32 %261, 1, !dbg !1471
  br label %263, !dbg !1472

263:                                              ; preds = %259, %200
  %264 = phi i32 [ 0, %200 ], [ %262, %259 ], !dbg !1124
  %265 = load ptr, ptr @stdin, align 8, !dbg !1472, !tbaa !849
  %266 = call i32 @rpl_fclose(ptr noundef %265) #40, !dbg !1474
  %267 = icmp eq i32 %266, 0, !dbg !1475
  br i1 %267, label %277, label %268, !dbg !1476

268:                                              ; preds = %263
  %269 = tail call ptr @__errno_location() #43, !dbg !1477
  %270 = load i32, ptr %269, align 4, !dbg !1477, !tbaa !913
  br i1 %4, label %271, label %273, !dbg !1477

271:                                              ; preds = %268
  %272 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #40, !dbg !1477
  br label %275, !dbg !1477

273:                                              ; preds = %268
  %274 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #40, !dbg !1477
  br label %275, !dbg !1477

275:                                              ; preds = %273, %271
  %276 = phi ptr [ %272, %271 ], [ %274, %273 ], !dbg !1477
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %270, ptr noundef nonnull @.str.53, ptr noundef %276) #40, !dbg !1477
  unreachable, !dbg !1477

277:                                              ; preds = %263
  call void @exit(i32 noundef %264) #42, !dbg !1478
  unreachable, !dbg !1478
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1479 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare !dbg !1483 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal noundef zeroext i1 @count_items(ptr nocapture readnone %0) #11 !dbg !1487 {
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !1489, metadata !DIExpression()), !dbg !1490
  %2 = load i64, ptr @n_strings, align 8, !dbg !1491, !tbaa !1415
  %3 = add i64 %2, 1, !dbg !1491
  store i64 %3, ptr @n_strings, align 8, !dbg !1491, !tbaa !1415
  ret i1 false, !dbg !1492
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @recurse_tree(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !dbg !1493 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1497, metadata !DIExpression()), !dbg !1499
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1498, metadata !DIExpression()), !dbg !1499
  %3 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 1, !dbg !1500
  %4 = load ptr, ptr %3, align 8, !dbg !1500, !tbaa !1300
  %5 = icmp eq ptr %4, null, !dbg !1502
  br i1 %5, label %6, label %12, !dbg !1503

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 2, !dbg !1504
  %8 = load ptr, ptr %7, align 8, !dbg !1504, !tbaa !1199
  %9 = icmp eq ptr %8, null, !dbg !1505
  br i1 %9, label %10, label %14, !dbg !1506

10:                                               ; preds = %6
  %11 = tail call zeroext i1 %1(ptr noundef nonnull %0) #40, !dbg !1507, !callees !1508
  br label %23, !dbg !1509

12:                                               ; preds = %2
  %13 = tail call fastcc zeroext i1 @recurse_tree(ptr noundef nonnull %4, ptr noundef %1), !dbg !1510
  br i1 %13, label %23, label %14, !dbg !1514

14:                                               ; preds = %6, %12
  %15 = tail call zeroext i1 %1(ptr noundef nonnull %0) #40, !dbg !1515, !callees !1508
  br i1 %15, label %23, label %16, !dbg !1517

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 2, !dbg !1518
  %18 = load ptr, ptr %17, align 8, !dbg !1518, !tbaa !1199
  %19 = icmp eq ptr %18, null, !dbg !1520
  br i1 %19, label %22, label %20, !dbg !1521

20:                                               ; preds = %16
  %21 = tail call fastcc zeroext i1 @recurse_tree(ptr noundef nonnull %18, ptr noundef %1), !dbg !1522
  br i1 %21, label %23, label %22, !dbg !1524

22:                                               ; preds = %16, %20
  br label %23, !dbg !1525

23:                                               ; preds = %20, %14, %12, %22, %10
  %24 = phi i1 [ %11, %10 ], [ false, %22 ], [ true, %12 ], [ true, %14 ], [ true, %20 ], !dbg !1499
  ret i1 %24, !dbg !1526
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef zeroext i1 @scan_zeros(ptr noundef %0) #13 !dbg !1527 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1529, metadata !DIExpression()), !dbg !1530
  %2 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 5, !dbg !1531
  %3 = load i64, ptr %2, align 8, !dbg !1531, !tbaa !1382
  %4 = icmp eq i64 %3, 0, !dbg !1533
  br i1 %4, label %5, label %15, !dbg !1534

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 4, !dbg !1535
  %7 = load i8, ptr %6, align 1, !dbg !1535, !tbaa !1433, !range !1536, !noundef !880
  %8 = icmp eq i8 %7, 0, !dbg !1535
  br i1 %8, label %9, label %15, !dbg !1537

9:                                                ; preds = %5
  %10 = load ptr, ptr @head, align 8, !dbg !1538, !tbaa !849
  %11 = icmp eq ptr %10, null, !dbg !1541
  %12 = load ptr, ptr @zeros, align 8, !dbg !1542
  %13 = getelementptr inbounds %struct.item, ptr %12, i64 0, i32 6, !dbg !1542
  %14 = select i1 %11, ptr @head, ptr %13, !dbg !1542
  store ptr %0, ptr %14, align 8, !dbg !1543, !tbaa !849
  store ptr %0, ptr @zeros, align 8, !dbg !1544, !tbaa !849
  br label %15, !dbg !1545

15:                                               ; preds = %9, %5, %1
  ret i1 false, !dbg !1546
}

; Function Attrs: nofree nounwind
declare !dbg !1547 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @detect_loop(ptr noundef %0) #12 !dbg !1550 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1552, metadata !DIExpression()), !dbg !1571
  %2 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 5, !dbg !1572
  %3 = load i64, ptr %2, align 8, !dbg !1572, !tbaa !1382
  %4 = icmp eq i64 %3, 0, !dbg !1573
  br i1 %4, label %58, label %5, !dbg !1574

5:                                                ; preds = %1
  %6 = load ptr, ptr @loop, align 8, !dbg !1575, !tbaa !849
  %7 = icmp eq ptr %6, null, !dbg !1576
  br i1 %7, label %55, label %8, !dbg !1577

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 7, !dbg !1578
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1553, metadata !DIExpression()), !dbg !1579
  %10 = load ptr, ptr %9, align 8, !dbg !1580, !tbaa !849
  %11 = icmp eq ptr %10, null, !dbg !1581
  br i1 %11, label %58, label %12, !dbg !1581

12:                                               ; preds = %8
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1553, metadata !DIExpression()), !dbg !1579
  %13 = load ptr, ptr %10, align 8, !dbg !1582, !tbaa !1385
  %14 = icmp eq ptr %13, %6, !dbg !1583
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !1553, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1579
  br i1 %14, label %25, label %15, !dbg !1584

15:                                               ; preds = %12, %20
  %16 = phi ptr [ %18, %20 ], [ %10, %12 ]
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !1553, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1579
  %17 = getelementptr inbounds %struct.successor, ptr %16, i64 0, i32 1, !dbg !1585
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !1553, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !1553, metadata !DIExpression()), !dbg !1579
  %18 = load ptr, ptr %17, align 8, !dbg !1580, !tbaa !849
  %19 = icmp eq ptr %18, null, !dbg !1581
  br i1 %19, label %58, label %20, !dbg !1581, !llvm.loop !1586

20:                                               ; preds = %15
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !1553, metadata !DIExpression()), !dbg !1579
  %21 = load ptr, ptr %18, align 8, !dbg !1582, !tbaa !1385
  %22 = icmp eq ptr %21, %6, !dbg !1583
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !1553, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1579
  br i1 %22, label %23, label %15, !dbg !1584, !llvm.loop !1586

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.successor, ptr %16, i64 0, i32 1
  br label %25, !dbg !1588

25:                                               ; preds = %23, %12
  %26 = phi ptr [ %9, %12 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 6, !dbg !1588
  %28 = load ptr, ptr %27, align 8, !dbg !1588, !tbaa !1446
  %29 = icmp eq ptr %28, null, !dbg !1589
  br i1 %29, label %54, label %30, !dbg !1590

30:                                               ; preds = %25, %37
  %31 = phi ptr [ %33, %37 ], [ %6, %25 ]
  %32 = getelementptr inbounds %struct.item, ptr %31, i64 0, i32 6, !dbg !1591
  %33 = load ptr, ptr %32, align 8, !dbg !1591, !tbaa !1446
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1559, metadata !DIExpression()), !dbg !1592
  %34 = load ptr, ptr %31, align 8, !dbg !1593, !tbaa !1205
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.53, ptr noundef %34) #40, !dbg !1593
  %35 = load ptr, ptr @loop, align 8, !dbg !1594, !tbaa !849
  %36 = icmp eq ptr %35, %0, !dbg !1595
  br i1 %36, label %40, label %37, !dbg !1596

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.item, ptr %35, i64 0, i32 6, !dbg !1597
  store ptr null, ptr %38, align 8, !dbg !1598, !tbaa !1446
  store ptr %33, ptr @loop, align 8, !dbg !1599, !tbaa !849
  %39 = icmp eq ptr %33, null, !dbg !1600
  br i1 %39, label %58, label %30, !dbg !1600

40:                                               ; preds = %30
  %41 = load ptr, ptr %26, align 8, !dbg !1601, !tbaa !849
  tail call void @llvm.dbg.value(metadata ptr %41, metadata !1566, metadata !DIExpression()), !dbg !1602
  %42 = load ptr, ptr %41, align 8, !dbg !1603, !tbaa !1385
  %43 = getelementptr inbounds %struct.item, ptr %42, i64 0, i32 5, !dbg !1604
  %44 = load i64, ptr %43, align 8, !dbg !1605, !tbaa !1382
  %45 = add i64 %44, -1, !dbg !1605
  store i64 %45, ptr %43, align 8, !dbg !1605, !tbaa !1382
  %46 = getelementptr inbounds %struct.successor, ptr %41, i64 0, i32 1, !dbg !1606
  %47 = load ptr, ptr %46, align 8, !dbg !1606, !tbaa !1391
  store ptr %47, ptr %26, align 8, !dbg !1607, !tbaa !849
  %48 = icmp eq ptr %0, null, !dbg !1608
  br i1 %48, label %58, label %49, !dbg !1608

49:                                               ; preds = %40, %49
  %50 = phi ptr [ %52, %49 ], [ %0, %40 ]
  %51 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 6, !dbg !1609
  %52 = load ptr, ptr %51, align 8, !dbg !1609, !tbaa !1446
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !1569, metadata !DIExpression()), !dbg !1610
  store ptr null, ptr %51, align 8, !dbg !1611, !tbaa !1446
  %53 = icmp eq ptr %52, null, !dbg !1608
  br i1 %53, label %55, label %49, !dbg !1608, !llvm.loop !1612

54:                                               ; preds = %25
  store ptr %6, ptr %27, align 8, !dbg !1614, !tbaa !1446
  br label %55, !dbg !1616

55:                                               ; preds = %49, %5, %54
  %56 = phi ptr [ %0, %54 ], [ %0, %5 ], [ null, %49 ]
  %57 = phi i1 [ false, %54 ], [ false, %5 ], [ true, %49 ]
  store ptr %56, ptr @loop, align 8, !dbg !1617, !tbaa !849
  br label %58, !dbg !1618

58:                                               ; preds = %15, %37, %55, %8, %40, %1
  %59 = phi i1 [ false, %1 ], [ true, %40 ], [ false, %8 ], [ %57, %55 ], [ true, %37 ], [ false, %15 ], !dbg !1571
  ret i1 %59, !dbg !1618
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #14 !dbg !1619 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1621, metadata !DIExpression()), !dbg !1622
  store ptr %0, ptr @file_name, align 8, !dbg !1623, !tbaa !849
  ret void, !dbg !1624
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #14 !dbg !1625 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1629, metadata !DIExpression()), !dbg !1630
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1631, !tbaa !1632
  ret void, !dbg !1633
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1634 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1639, !tbaa !849
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1640
  %3 = icmp eq i32 %2, 0, !dbg !1641
  br i1 %3, label %22, label %4, !dbg !1642

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1643, !tbaa !1632, !range !1536, !noundef !880
  %6 = icmp eq i8 %5, 0, !dbg !1643
  br i1 %6, label %11, label %7, !dbg !1644

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1645
  %9 = load i32, ptr %8, align 4, !dbg !1645, !tbaa !913
  %10 = icmp eq i32 %9, 32, !dbg !1646
  br i1 %10, label %22, label %11, !dbg !1647

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1.25, i32 noundef 5) #40, !dbg !1648
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1636, metadata !DIExpression()), !dbg !1649
  %13 = load ptr, ptr @file_name, align 8, !dbg !1650, !tbaa !849
  %14 = icmp eq ptr %13, null, !dbg !1650
  %15 = tail call ptr @__errno_location() #43, !dbg !1652
  %16 = load i32, ptr %15, align 4, !dbg !1652, !tbaa !913
  br i1 %14, label %19, label %17, !dbg !1653

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1654
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.26, ptr noundef %18, ptr noundef %12) #40, !dbg !1654
  br label %20, !dbg !1654

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.27, ptr noundef %12) #40, !dbg !1655
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1656, !tbaa !913
  tail call void @_exit(i32 noundef %21) #42, !dbg !1657
  unreachable, !dbg !1657

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1658, !tbaa !849
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1660
  %25 = icmp eq i32 %24, 0, !dbg !1661
  br i1 %25, label %28, label %26, !dbg !1662

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1663, !tbaa !913
  tail call void @_exit(i32 noundef %27) #42, !dbg !1664
  unreachable, !dbg !1664

28:                                               ; preds = %22
  ret void, !dbg !1665
}

; Function Attrs: noreturn
declare !dbg !1666 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #16 !dbg !1668 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1672, metadata !DIExpression()), !dbg !1676
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1673, metadata !DIExpression()), !dbg !1676
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1674, metadata !DIExpression()), !dbg !1676
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1675, metadata !DIExpression()), !dbg !1676
  tail call fastcc void @flush_stdout(), !dbg !1677
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1678, !tbaa !849
  %6 = icmp eq ptr %5, null, !dbg !1678
  br i1 %6, label %8, label %7, !dbg !1680

7:                                                ; preds = %4
  tail call void %5() #40, !dbg !1681
  br label %12, !dbg !1681

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1682, !tbaa !849
  %10 = tail call ptr @getprogname() #41, !dbg !1682
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef %10) #40, !dbg !1682
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1684
  ret void, !dbg !1685
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1686 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1688, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i32 1, metadata !1690, metadata !DIExpression()), !dbg !1695
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !1698
  %2 = icmp slt i32 %1, 0, !dbg !1699
  br i1 %2, label %6, label %3, !dbg !1700

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1701, !tbaa !849
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !1701
  br label %6, !dbg !1701

6:                                                ; preds = %3, %0
  ret void, !dbg !1702
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #12 !dbg !1703 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1709
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1705, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1706, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1707, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1708, metadata !DIExpression()), !dbg !1710
  %6 = load ptr, ptr @stderr, align 8, !dbg !1711, !tbaa !849
  call void @llvm.dbg.value(metadata ptr %6, metadata !1712, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata ptr %2, metadata !1752, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata ptr %3, metadata !1753, metadata !DIExpression()), !dbg !1754
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #40, !dbg !1756
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1757, !tbaa !913
  %9 = add i32 %8, 1, !dbg !1757
  store i32 %9, ptr @error_message_count, align 4, !dbg !1757, !tbaa !913
  %10 = icmp eq i32 %1, 0, !dbg !1758
  br i1 %10, label %20, label %11, !dbg !1760

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1761, metadata !DIExpression(), metadata !1709, metadata ptr %5, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 %1, metadata !1764, metadata !DIExpression()), !dbg !1769
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !1771
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !1772
  call void @llvm.dbg.value(metadata ptr %12, metadata !1765, metadata !DIExpression()), !dbg !1769
  %13 = icmp eq ptr %12, null, !dbg !1773
  br i1 %13, label %14, label %16, !dbg !1775

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.29, ptr noundef nonnull @.str.5.30, i32 noundef 5) #40, !dbg !1776
  call void @llvm.dbg.value(metadata ptr %15, metadata !1765, metadata !DIExpression()), !dbg !1769
  br label %16, !dbg !1777

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1769
  call void @llvm.dbg.value(metadata ptr %17, metadata !1765, metadata !DIExpression()), !dbg !1769
  %18 = load ptr, ptr @stderr, align 8, !dbg !1778, !tbaa !849
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.31, ptr noundef %17) #40, !dbg !1778
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !1779
  br label %20, !dbg !1780

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1781, !tbaa !849
  call void @llvm.dbg.value(metadata i32 10, metadata !1782, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata ptr %21, metadata !1787, metadata !DIExpression()), !dbg !1788
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1790
  %23 = load ptr, ptr %22, align 8, !dbg !1790, !tbaa !1791
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1790
  %25 = load ptr, ptr %24, align 8, !dbg !1790, !tbaa !1792
  %26 = icmp ult ptr %23, %25, !dbg !1790
  br i1 %26, label %29, label %27, !dbg !1790, !prof !1793

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #40, !dbg !1790
  br label %31, !dbg !1790

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1790
  store ptr %30, ptr %22, align 8, !dbg !1790, !tbaa !1791
  store i8 10, ptr %23, align 1, !dbg !1790, !tbaa !922
  br label %31, !dbg !1790

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1794, !tbaa !849
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #40, !dbg !1794
  %34 = icmp eq i32 %0, 0, !dbg !1795
  br i1 %34, label %36, label %35, !dbg !1797

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #42, !dbg !1798
  unreachable, !dbg !1798

36:                                               ; preds = %31
  ret void, !dbg !1799
}

declare !dbg !1800 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1803 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

declare !dbg !1806 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1809 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1812 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #12 !dbg !1816 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1829
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1823, metadata !DIExpression(), metadata !1829, metadata ptr %4, metadata !DIExpression()), !dbg !1830
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1820, metadata !DIExpression()), !dbg !1830
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1821, metadata !DIExpression()), !dbg !1830
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1822, metadata !DIExpression()), !dbg !1830
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #40, !dbg !1831
  call void @llvm.va_start(ptr nonnull %4), !dbg !1832
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #46, !dbg !1833
  call void @llvm.va_end(ptr nonnull %4), !dbg !1834
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #40, !dbg !1835
  ret void, !dbg !1835
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #16 !dbg !438 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !449, metadata !DIExpression()), !dbg !1836
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !450, metadata !DIExpression()), !dbg !1836
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !451, metadata !DIExpression()), !dbg !1836
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !452, metadata !DIExpression()), !dbg !1836
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !453, metadata !DIExpression()), !dbg !1836
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !454, metadata !DIExpression()), !dbg !1836
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1837, !tbaa !913
  %8 = icmp eq i32 %7, 0, !dbg !1837
  br i1 %8, label %23, label %9, !dbg !1839

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1840, !tbaa !913
  %11 = icmp eq i32 %10, %3, !dbg !1843
  br i1 %11, label %12, label %22, !dbg !1844

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1845, !tbaa !849
  %14 = icmp eq ptr %13, %2, !dbg !1846
  br i1 %14, label %36, label %15, !dbg !1847

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1848
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1849
  br i1 %18, label %19, label %22, !dbg !1849

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !1850
  %21 = icmp eq i32 %20, 0, !dbg !1851
  br i1 %21, label %36, label %22, !dbg !1852

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1853, !tbaa !849
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1854, !tbaa !913
  br label %23, !dbg !1855

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1856
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1857, !tbaa !849
  %25 = icmp eq ptr %24, null, !dbg !1857
  br i1 %25, label %27, label %26, !dbg !1859

26:                                               ; preds = %23
  tail call void %24() #40, !dbg !1860
  br label %31, !dbg !1860

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1861, !tbaa !849
  %29 = tail call ptr @getprogname() #41, !dbg !1861
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.34, ptr noundef %29) #40, !dbg !1861
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1863, !tbaa !849
  %33 = icmp eq ptr %2, null, !dbg !1863
  %34 = select i1 %33, ptr @.str.3.35, ptr @.str.2.36, !dbg !1863
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #40, !dbg !1863
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1864
  br label %36, !dbg !1865

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1865
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #12 !dbg !1866 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1876
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1875, metadata !DIExpression(), metadata !1876, metadata ptr %6, metadata !DIExpression()), !dbg !1877
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1870, metadata !DIExpression()), !dbg !1877
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1871, metadata !DIExpression()), !dbg !1877
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1872, metadata !DIExpression()), !dbg !1877
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1873, metadata !DIExpression()), !dbg !1877
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1874, metadata !DIExpression()), !dbg !1877
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #40, !dbg !1878
  call void @llvm.va_start(ptr nonnull %6), !dbg !1879
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #46, !dbg !1880
  call void @llvm.va_end(ptr nonnull %6), !dbg !1881
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #40, !dbg !1882
  ret void, !dbg !1882
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 !dbg !1883 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1889, metadata !DIExpression()), !dbg !1893
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1890, metadata !DIExpression()), !dbg !1893
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1891, metadata !DIExpression()), !dbg !1893
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1892, metadata !DIExpression()), !dbg !1893
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #40, !dbg !1894
  ret void, !dbg !1895
}

; Function Attrs: nounwind
declare !dbg !1896 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !1899 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1937, metadata !DIExpression()), !dbg !1939
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1938, metadata !DIExpression()), !dbg !1939
  %3 = icmp eq ptr %0, null, !dbg !1940
  br i1 %3, label %7, label %4, !dbg !1942

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !1943
  call void @llvm.dbg.value(metadata i32 %5, metadata !1889, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 0, metadata !1890, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 0, metadata !1891, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 %1, metadata !1892, metadata !DIExpression()), !dbg !1944
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #40, !dbg !1946
  br label %7, !dbg !1947

7:                                                ; preds = %4, %2
  ret void, !dbg !1948
}

; Function Attrs: nofree nounwind
declare !dbg !1949 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #12 !dbg !1952 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1990, metadata !DIExpression()), !dbg !1994
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1991, metadata !DIExpression()), !dbg !1994
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !1995
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1992, metadata !DIExpression()), !dbg !1994
  %3 = icmp slt i32 %2, 0, !dbg !1996
  br i1 %3, label %4, label %6, !dbg !1998

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1999
  br label %24, !dbg !2000

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !2001
  %8 = icmp eq i32 %7, 0, !dbg !2001
  br i1 %8, label %13, label %9, !dbg !2003

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !2004
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !2005
  %12 = icmp eq i64 %11, -1, !dbg !2006
  br i1 %12, label %16, label %13, !dbg !2007

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !2008
  %15 = icmp eq i32 %14, 0, !dbg !2008
  br i1 %15, label %16, label %18, !dbg !2009

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1991, metadata !DIExpression()), !dbg !1994
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1993, metadata !DIExpression()), !dbg !1994
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2010
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1993, metadata !DIExpression()), !dbg !1994
  br label %24, !dbg !2011

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !2012
  %20 = load i32, ptr %19, align 4, !dbg !2012, !tbaa !913
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1991, metadata !DIExpression()), !dbg !1994
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1993, metadata !DIExpression()), !dbg !1994
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2010
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !1993, metadata !DIExpression()), !dbg !1994
  %22 = icmp eq i32 %20, 0, !dbg !2013
  br i1 %22, label %24, label %23, !dbg !2011

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2015, !tbaa !913
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1993, metadata !DIExpression()), !dbg !1994
  br label %24, !dbg !2017

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !1994
  ret i32 %25, !dbg !2018
}

; Function Attrs: nofree nounwind
declare !dbg !2019 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2020 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2022 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #12 !dbg !2025 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2063, metadata !DIExpression()), !dbg !2064
  %2 = icmp eq ptr %0, null, !dbg !2065
  br i1 %2, label %6, label %3, !dbg !2067

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !2068
  %5 = icmp eq i32 %4, 0, !dbg !2068
  br i1 %5, label %6, label %8, !dbg !2069

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2070
  br label %16, !dbg !2071

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2072, metadata !DIExpression()), !dbg !2077
  %9 = load i32, ptr %0, align 8, !dbg !2079, !tbaa !1167
  %10 = and i32 %9, 256, !dbg !2081
  %11 = icmp eq i32 %10, 0, !dbg !2081
  br i1 %11, label %14, label %12, !dbg !2082

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !2083
  br label %14, !dbg !2083

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2084
  br label %16, !dbg !2085

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2064
  ret i32 %17, !dbg !2086
}

; Function Attrs: nofree nounwind
declare !dbg !2087 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @freopen_safer(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) local_unnamed_addr #12 !dbg !2088 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2126, metadata !DIExpression()), !dbg !2133
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2127, metadata !DIExpression()), !dbg !2133
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2128, metadata !DIExpression()), !dbg !2133
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2129, metadata !DIExpression()), !dbg !2133
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2130, metadata !DIExpression()), !dbg !2133
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2131, metadata !DIExpression()), !dbg !2133
  %4 = tail call i32 @fileno(ptr noundef nonnull %2) #40, !dbg !2134
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %53
  ], !dbg !2135

5:                                                ; preds = %3
  %6 = tail call i32 @dup2(i32 noundef 2, i32 noundef 2) #40, !dbg !2136
  %7 = icmp ne i32 %6, 2, !dbg !2139
  %8 = zext i1 %7 to i8, !dbg !2140
  br label %9, !dbg !2140

9:                                                ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ], !dbg !2133
  tail call void @llvm.dbg.value(metadata i8 %10, metadata !2131, metadata !DIExpression()), !dbg !2133
  %11 = tail call i32 @dup2(i32 noundef 1, i32 noundef 1) #40, !dbg !2141
  %12 = icmp ne i32 %11, 1, !dbg !2143
  %13 = zext i1 %12 to i8, !dbg !2144
  br label %14, !dbg !2144

14:                                               ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ], !dbg !2133
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ], !dbg !2133
  tail call void @llvm.dbg.value(metadata i8 %16, metadata !2131, metadata !DIExpression()), !dbg !2133
  tail call void @llvm.dbg.value(metadata i8 %15, metadata !2130, metadata !DIExpression()), !dbg !2133
  %17 = tail call i32 @dup2(i32 noundef 0, i32 noundef 0) #40, !dbg !2145
  %18 = icmp ne i32 %17, 0, !dbg !2147
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2129, metadata !DIExpression()), !dbg !2133
  br i1 %18, label %19, label %27, !dbg !2148

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 0, metadata !2150, metadata !DIExpression()), !dbg !2156
  %20 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.62, i32 noundef 0) #40, !dbg !2158
  call void @llvm.dbg.value(metadata i32 %20, metadata !2155, metadata !DIExpression()), !dbg !2156
  %21 = icmp slt i32 %20, 1, !dbg !2159
  br i1 %21, label %25, label %22, !dbg !2159

22:                                               ; preds = %19
  %23 = tail call i32 @close(i32 noundef %20) #40, !dbg !2160
  %24 = tail call ptr @__errno_location() #43, !dbg !2165
  store i32 9, ptr %24, align 4, !dbg !2166, !tbaa !913
  br label %58, !dbg !2167

25:                                               ; preds = %19
  %26 = icmp eq i32 %20, 0, !dbg !2168
  br i1 %26, label %27, label %58, !dbg !2167

27:                                               ; preds = %25, %14
  %28 = icmp eq i8 %15, 0, !dbg !2169
  br i1 %28, label %38, label %29, !dbg !2171

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 1, metadata !2150, metadata !DIExpression()), !dbg !2172
  %30 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.62, i32 noundef 0) #40, !dbg !2174
  call void @llvm.dbg.value(metadata i32 %30, metadata !2155, metadata !DIExpression()), !dbg !2172
  %31 = icmp eq i32 %30, 1, !dbg !2175
  %32 = icmp slt i32 %30, 0
  %33 = or i1 %32, %31, !dbg !2176
  br i1 %33, label %37, label %34, !dbg !2176

34:                                               ; preds = %29
  %35 = tail call i32 @close(i32 noundef %30) #40, !dbg !2177
  %36 = tail call ptr @__errno_location() #43, !dbg !2178
  store i32 9, ptr %36, align 4, !dbg !2179, !tbaa !913
  br label %37, !dbg !2180

37:                                               ; preds = %29, %34
  br i1 %31, label %38, label %58, !dbg !2181

38:                                               ; preds = %37, %27
  %39 = phi i8 [ 1, %37 ], [ 0, %27 ]
  %40 = icmp eq i8 %16, 0, !dbg !2182
  br i1 %40, label %53, label %41, !dbg !2184

41:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 2, metadata !2150, metadata !DIExpression()), !dbg !2185
  %42 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.62, i32 noundef 0) #40, !dbg !2187
  call void @llvm.dbg.value(metadata i32 %42, metadata !2155, metadata !DIExpression()), !dbg !2185
  %43 = icmp eq i32 %42, 2, !dbg !2188
  %44 = icmp slt i32 %42, 0
  %45 = or i1 %44, %43, !dbg !2189
  br i1 %45, label %49, label %46, !dbg !2189

46:                                               ; preds = %41
  %47 = tail call i32 @close(i32 noundef %42) #40, !dbg !2190
  %48 = tail call ptr @__errno_location() #43, !dbg !2191
  store i32 9, ptr %48, align 4, !dbg !2192, !tbaa !913
  br label %49, !dbg !2193

49:                                               ; preds = %41, %46
  br i1 %43, label %53, label %50, !dbg !2194

50:                                               ; preds = %49
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2128, metadata !DIExpression()), !dbg !2133
  %51 = tail call ptr @__errno_location() #43, !dbg !2195
  %52 = load i32, ptr %51, align 4, !dbg !2195, !tbaa !913
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !2132, metadata !DIExpression()), !dbg !2133
  br label %66, !dbg !2196

53:                                               ; preds = %3, %49, %38
  %54 = phi i8 [ 1, %49 ], [ 0, %38 ], [ 0, %3 ]
  %55 = phi i8 [ %39, %49 ], [ %39, %38 ], [ 0, %3 ]
  %56 = phi i1 [ %18, %49 ], [ %18, %38 ], [ false, %3 ]
  %57 = tail call ptr @freopen(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #40, !dbg !2197
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !2128, metadata !DIExpression()), !dbg !2133
  br label %58

58:                                               ; preds = %22, %37, %25, %53
  %59 = phi i8 [ %54, %53 ], [ %16, %25 ], [ %16, %37 ], [ %16, %22 ]
  %60 = phi i8 [ %55, %53 ], [ %15, %25 ], [ 1, %37 ], [ %15, %22 ]
  %61 = phi i1 [ %56, %53 ], [ true, %25 ], [ %18, %37 ], [ true, %22 ]
  %62 = phi ptr [ %57, %53 ], [ null, %25 ], [ null, %37 ], [ null, %22 ], !dbg !2198
  tail call void @llvm.dbg.value(metadata ptr %62, metadata !2128, metadata !DIExpression()), !dbg !2133
  %63 = tail call ptr @__errno_location() #43, !dbg !2195
  %64 = load i32, ptr %63, align 4, !dbg !2195, !tbaa !913
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !2132, metadata !DIExpression()), !dbg !2133
  %65 = icmp eq i8 %59, 0, !dbg !2199
  br i1 %65, label %73, label %66, !dbg !2196

66:                                               ; preds = %50, %58
  %67 = phi i32 [ %52, %50 ], [ %64, %58 ]
  %68 = phi ptr [ %51, %50 ], [ %63, %58 ]
  %69 = phi ptr [ null, %50 ], [ %62, %58 ]
  %70 = phi i1 [ %18, %50 ], [ %61, %58 ]
  %71 = phi i8 [ %39, %50 ], [ %60, %58 ]
  %72 = tail call i32 @close(i32 noundef 2) #40, !dbg !2201
  br label %73, !dbg !2201

73:                                               ; preds = %66, %58
  %74 = phi i32 [ %67, %66 ], [ %64, %58 ]
  %75 = phi ptr [ %68, %66 ], [ %63, %58 ]
  %76 = phi ptr [ %69, %66 ], [ %62, %58 ]
  %77 = phi i1 [ %70, %66 ], [ %61, %58 ]
  %78 = phi i8 [ %71, %66 ], [ %60, %58 ]
  %79 = icmp eq i8 %78, 0, !dbg !2202
  br i1 %79, label %82, label %80, !dbg !2204

80:                                               ; preds = %73
  %81 = tail call i32 @close(i32 noundef 1) #40, !dbg !2205
  br label %82, !dbg !2205

82:                                               ; preds = %80, %73
  br i1 %77, label %83, label %85, !dbg !2206

83:                                               ; preds = %82
  %84 = tail call i32 @close(i32 noundef 0) #40, !dbg !2207
  br label %85, !dbg !2207

85:                                               ; preds = %83, %82
  %86 = icmp eq ptr %76, null, !dbg !2209
  br i1 %86, label %87, label %88, !dbg !2211

87:                                               ; preds = %85
  store i32 %74, ptr %75, align 4, !dbg !2212, !tbaa !913
  br label %88, !dbg !2213

88:                                               ; preds = %87, %85
  ret ptr %76, !dbg !2214
}

; Function Attrs: nounwind
declare !dbg !2215 i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !2218 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #18

declare !dbg !2221 i32 @close(i32 noundef) local_unnamed_addr #3

declare !dbg !2222 ptr @freopen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !2226 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2264, metadata !DIExpression()), !dbg !2270
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2265, metadata !DIExpression()), !dbg !2270
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2266, metadata !DIExpression()), !dbg !2270
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2271
  %5 = load ptr, ptr %4, align 8, !dbg !2271, !tbaa !2272
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2273
  %7 = load ptr, ptr %6, align 8, !dbg !2273, !tbaa !2274
  %8 = icmp eq ptr %5, %7, !dbg !2275
  br i1 %8, label %9, label %27, !dbg !2276

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2277
  %11 = load ptr, ptr %10, align 8, !dbg !2277, !tbaa !1791
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2278
  %13 = load ptr, ptr %12, align 8, !dbg !2278, !tbaa !2279
  %14 = icmp eq ptr %11, %13, !dbg !2280
  br i1 %14, label %15, label %27, !dbg !2281

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2282
  %17 = load ptr, ptr %16, align 8, !dbg !2282, !tbaa !2283
  %18 = icmp eq ptr %17, null, !dbg !2284
  br i1 %18, label %19, label %27, !dbg !2285

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !2286
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !2287
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2267, metadata !DIExpression()), !dbg !2288
  %22 = icmp eq i64 %21, -1, !dbg !2289
  br i1 %22, label %29, label %23, !dbg !2291

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2292, !tbaa !1167
  %25 = and i32 %24, -17, !dbg !2292
  store i32 %25, ptr %0, align 8, !dbg !2292, !tbaa !1167
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2293
  store i64 %21, ptr %26, align 8, !dbg !2294, !tbaa !2295
  br label %29, !dbg !2296

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2297
  br label %29, !dbg !2298

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2270
  ret i32 %30, !dbg !2299
}

; Function Attrs: nofree nounwind
declare !dbg !2300 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !2303 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2306, !tbaa !849
  ret ptr %1, !dbg !2307
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !2308 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2310, metadata !DIExpression()), !dbg !2313
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2314
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2311, metadata !DIExpression()), !dbg !2313
  %3 = icmp eq ptr %2, null, !dbg !2315
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2315
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2315
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2312, metadata !DIExpression()), !dbg !2313
  %6 = ptrtoint ptr %5 to i64, !dbg !2316
  %7 = ptrtoint ptr %0 to i64, !dbg !2316
  %8 = sub i64 %6, %7, !dbg !2316
  %9 = icmp sgt i64 %8, 6, !dbg !2318
  br i1 %9, label %10, label %19, !dbg !2319

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2320
  call void @llvm.dbg.value(metadata ptr %11, metadata !2321, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata ptr @.str.71, metadata !2326, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i64 7, metadata !2327, metadata !DIExpression()), !dbg !2328
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.71, i64 7), !dbg !2330
  %13 = icmp eq i32 %12, 0, !dbg !2331
  br i1 %13, label %14, label %19, !dbg !2332

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2310, metadata !DIExpression()), !dbg !2313
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.72, i64 noundef 3) #41, !dbg !2333
  %16 = icmp eq i32 %15, 0, !dbg !2336
  %17 = select i1 %16, i64 3, i64 0, !dbg !2337
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2337
  br label %19, !dbg !2337

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2313
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2312, metadata !DIExpression()), !dbg !2313
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2310, metadata !DIExpression()), !dbg !2313
  store ptr %20, ptr @program_name, align 8, !dbg !2338, !tbaa !849
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2339, !tbaa !849
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2340, !tbaa !849
  ret void, !dbg !2341
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2342 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #12 !dbg !494 {
  %3 = alloca i32, align 4, !DIAssignID !2343
  call void @llvm.dbg.assign(metadata i1 undef, metadata !504, metadata !DIExpression(), metadata !2343, metadata ptr %3, metadata !DIExpression()), !dbg !2344
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2345
  call void @llvm.dbg.assign(metadata i1 undef, metadata !509, metadata !DIExpression(), metadata !2345, metadata ptr %4, metadata !DIExpression()), !dbg !2344
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !501, metadata !DIExpression()), !dbg !2344
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !502, metadata !DIExpression()), !dbg !2344
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2346
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !503, metadata !DIExpression()), !dbg !2344
  %6 = icmp eq ptr %5, %0, !dbg !2347
  br i1 %6, label %7, label %14, !dbg !2349

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2350
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2351
  call void @llvm.dbg.value(metadata ptr %4, metadata !2352, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata ptr %4, metadata !2361, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i32 0, metadata !2367, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i64 8, metadata !2368, metadata !DIExpression()), !dbg !2369
  store i64 0, ptr %4, align 8, !dbg !2371
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2372
  %9 = icmp eq i64 %8, 2, !dbg !2374
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2375
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2344
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2376
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2376
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2344
  ret ptr %15, !dbg !2376
}

; Function Attrs: nounwind
declare !dbg !2377 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #12 !dbg !2383 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2388, metadata !DIExpression()), !dbg !2391
  %2 = tail call ptr @__errno_location() #43, !dbg !2392
  %3 = load i32, ptr %2, align 4, !dbg !2392, !tbaa !913
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2389, metadata !DIExpression()), !dbg !2391
  %4 = icmp eq ptr %0, null, !dbg !2393
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2393
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #47, !dbg !2394
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2390, metadata !DIExpression()), !dbg !2391
  store i32 %3, ptr %2, align 4, !dbg !2395, !tbaa !913
  ret ptr %6, !dbg !2396
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !2397 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2403, metadata !DIExpression()), !dbg !2404
  %2 = icmp eq ptr %0, null, !dbg !2405
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2405
  %4 = load i32, ptr %3, align 8, !dbg !2406, !tbaa !2407
  ret i32 %4, !dbg !2409
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2410 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2414, metadata !DIExpression()), !dbg !2416
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2415, metadata !DIExpression()), !dbg !2416
  %3 = icmp eq ptr %0, null, !dbg !2417
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2417
  store i32 %1, ptr %4, align 8, !dbg !2418, !tbaa !2407
  ret void, !dbg !2419
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #13 !dbg !2420 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2424, metadata !DIExpression()), !dbg !2432
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2425, metadata !DIExpression()), !dbg !2432
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2426, metadata !DIExpression()), !dbg !2432
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2427, metadata !DIExpression()), !dbg !2432
  %4 = icmp eq ptr %0, null, !dbg !2433
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2433
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2434
  %7 = lshr i8 %1, 5, !dbg !2435
  %8 = zext nneg i8 %7 to i64, !dbg !2435
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2436
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2428, metadata !DIExpression()), !dbg !2432
  %10 = and i8 %1, 31, !dbg !2437
  %11 = zext nneg i8 %10 to i32, !dbg !2437
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2430, metadata !DIExpression()), !dbg !2432
  %12 = load i32, ptr %9, align 4, !dbg !2438, !tbaa !913
  %13 = lshr i32 %12, %11, !dbg !2439
  %14 = and i32 %13, 1, !dbg !2440
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2431, metadata !DIExpression()), !dbg !2432
  %15 = xor i32 %13, %2, !dbg !2441
  %16 = and i32 %15, 1, !dbg !2441
  %17 = shl nuw i32 %16, %11, !dbg !2442
  %18 = xor i32 %17, %12, !dbg !2443
  store i32 %18, ptr %9, align 4, !dbg !2443, !tbaa !913
  ret i32 %14, !dbg !2444
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #13 !dbg !2445 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2449, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2450, metadata !DIExpression()), !dbg !2452
  %3 = icmp eq ptr %0, null, !dbg !2453
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2455
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2449, metadata !DIExpression()), !dbg !2452
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2456
  %6 = load i32, ptr %5, align 4, !dbg !2456, !tbaa !2457
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2451, metadata !DIExpression()), !dbg !2452
  store i32 %1, ptr %5, align 4, !dbg !2458, !tbaa !2457
  ret i32 %6, !dbg !2459
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 !dbg !2460 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2464, metadata !DIExpression()), !dbg !2467
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2465, metadata !DIExpression()), !dbg !2467
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2466, metadata !DIExpression()), !dbg !2467
  %4 = icmp eq ptr %0, null, !dbg !2468
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2470
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2464, metadata !DIExpression()), !dbg !2467
  store i32 10, ptr %5, align 8, !dbg !2471, !tbaa !2407
  %6 = icmp ne ptr %1, null, !dbg !2472
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2474
  br i1 %8, label %10, label %9, !dbg !2474

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2475
  unreachable, !dbg !2475

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2476
  store ptr %1, ptr %11, align 8, !dbg !2477, !tbaa !2478
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2479
  store ptr %2, ptr %12, align 8, !dbg !2480, !tbaa !2481
  ret void, !dbg !2482
}

; Function Attrs: noreturn nounwind
declare !dbg !2483 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #12 !dbg !2484 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2488, metadata !DIExpression()), !dbg !2496
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2489, metadata !DIExpression()), !dbg !2496
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2490, metadata !DIExpression()), !dbg !2496
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2491, metadata !DIExpression()), !dbg !2496
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2492, metadata !DIExpression()), !dbg !2496
  %6 = icmp eq ptr %4, null, !dbg !2497
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2497
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2493, metadata !DIExpression()), !dbg !2496
  %8 = tail call ptr @__errno_location() #43, !dbg !2498
  %9 = load i32, ptr %8, align 4, !dbg !2498, !tbaa !913
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2494, metadata !DIExpression()), !dbg !2496
  %10 = load i32, ptr %7, align 8, !dbg !2499, !tbaa !2407
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2500
  %12 = load i32, ptr %11, align 4, !dbg !2500, !tbaa !2457
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2501
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2502
  %15 = load ptr, ptr %14, align 8, !dbg !2502, !tbaa !2478
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2503
  %17 = load ptr, ptr %16, align 8, !dbg !2503, !tbaa !2481
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2504
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2495, metadata !DIExpression()), !dbg !2496
  store i32 %9, ptr %8, align 4, !dbg !2505, !tbaa !913
  ret i64 %18, !dbg !2506
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #12 !dbg !2507 {
  %10 = alloca i32, align 4, !DIAssignID !2575
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2576
  %12 = alloca i32, align 4, !DIAssignID !2577
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2578
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2579
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2553, metadata !DIExpression(), metadata !2579, metadata ptr %14, metadata !DIExpression()), !dbg !2580
  %15 = alloca i32, align 4, !DIAssignID !2581
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2556, metadata !DIExpression(), metadata !2581, metadata ptr %15, metadata !DIExpression()), !dbg !2582
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2513, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2514, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2515, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2516, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2517, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2518, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2519, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2520, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2521, metadata !DIExpression()), !dbg !2583
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2584
  %17 = icmp eq i64 %16, 1, !dbg !2585
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2522, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2524, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2525, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2526, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2527, metadata !DIExpression()), !dbg !2583
  %18 = trunc i32 %5 to i8, !dbg !2586
  %19 = lshr i8 %18, 1, !dbg !2586
  %20 = and i8 %19, 1, !dbg !2586
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2528, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2529, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2530, metadata !DIExpression()), !dbg !2583
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2587

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2588
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2589
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2590
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2591
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2583
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2592
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2593
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2514, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2530, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2529, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2528, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2527, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2526, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2525, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2524, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2516, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2521, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2520, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2517, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.label(metadata !2531), !dbg !2594
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2532, metadata !DIExpression()), !dbg !2583
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
  ], !dbg !2595

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2528, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2517, metadata !DIExpression()), !dbg !2583
  br label %114, !dbg !2596

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2528, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2517, metadata !DIExpression()), !dbg !2583
  %43 = and i8 %37, 1, !dbg !2597
  %44 = icmp eq i8 %43, 0, !dbg !2597
  br i1 %44, label %45, label %114, !dbg !2596

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2599
  br i1 %46, label %114, label %47, !dbg !2602

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2599, !tbaa !922
  br label %114, !dbg !2599

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !598, metadata !DIExpression(), metadata !2577, metadata ptr %12, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.assign(metadata i1 undef, metadata !599, metadata !DIExpression(), metadata !2578, metadata ptr %13, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata ptr @.str.11.85, metadata !595, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 %29, metadata !596, metadata !DIExpression()), !dbg !2603
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.86, ptr noundef nonnull @.str.11.85, i32 noundef 5) #40, !dbg !2607
  call void @llvm.dbg.value(metadata ptr %49, metadata !597, metadata !DIExpression()), !dbg !2603
  %50 = icmp eq ptr %49, @.str.11.85, !dbg !2608
  br i1 %50, label %51, label %60, !dbg !2610

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2611
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2612
  call void @llvm.dbg.value(metadata ptr %13, metadata !2613, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata ptr %13, metadata !2621, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i32 0, metadata !2624, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i64 8, metadata !2625, metadata !DIExpression()), !dbg !2626
  store i64 0, ptr %13, align 8, !dbg !2628
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2629
  %53 = icmp eq i64 %52, 3, !dbg !2631
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2632
  %57 = icmp eq i32 %29, 9, !dbg !2632
  %58 = select i1 %57, ptr @.str.10.87, ptr @.str.12.88, !dbg !2632
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2632
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2633
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2633
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2603
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2520, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.assign(metadata i1 undef, metadata !598, metadata !DIExpression(), metadata !2575, metadata ptr %10, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.assign(metadata i1 undef, metadata !599, metadata !DIExpression(), metadata !2576, metadata ptr %11, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata ptr @.str.12.88, metadata !595, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i32 %29, metadata !596, metadata !DIExpression()), !dbg !2634
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.86, ptr noundef nonnull @.str.12.88, i32 noundef 5) #40, !dbg !2636
  call void @llvm.dbg.value(metadata ptr %62, metadata !597, metadata !DIExpression()), !dbg !2634
  %63 = icmp eq ptr %62, @.str.12.88, !dbg !2637
  br i1 %63, label %64, label %73, !dbg !2638

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2639
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2640
  call void @llvm.dbg.value(metadata ptr %11, metadata !2613, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata ptr %11, metadata !2621, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i32 0, metadata !2624, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i64 8, metadata !2625, metadata !DIExpression()), !dbg !2643
  store i64 0, ptr %11, align 8, !dbg !2645
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2646
  %66 = icmp eq i64 %65, 3, !dbg !2647
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2648
  %70 = icmp eq i32 %29, 9, !dbg !2648
  %71 = select i1 %70, ptr @.str.10.87, ptr @.str.12.88, !dbg !2648
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2648
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2649
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2649
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2521, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2520, metadata !DIExpression()), !dbg !2583
  %76 = and i8 %37, 1, !dbg !2650
  %77 = icmp eq i8 %76, 0, !dbg !2650
  br i1 %77, label %78, label %93, !dbg !2651

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2533, metadata !DIExpression()), !dbg !2652
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2523, metadata !DIExpression()), !dbg !2583
  %79 = load i8, ptr %74, align 1, !dbg !2653, !tbaa !922
  %80 = icmp eq i8 %79, 0, !dbg !2655
  br i1 %80, label %93, label %81, !dbg !2655

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2533, metadata !DIExpression()), !dbg !2652
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2523, metadata !DIExpression()), !dbg !2583
  %85 = icmp ult i64 %84, %40, !dbg !2656
  br i1 %85, label %86, label %88, !dbg !2659

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2656
  store i8 %82, ptr %87, align 1, !dbg !2656, !tbaa !922
  br label %88, !dbg !2656

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2659
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2523, metadata !DIExpression()), !dbg !2583
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2660
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2533, metadata !DIExpression()), !dbg !2652
  %91 = load i8, ptr %90, align 1, !dbg !2653, !tbaa !922
  %92 = icmp eq i8 %91, 0, !dbg !2655
  br i1 %92, label %93, label %81, !dbg !2655, !llvm.loop !2661

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2663
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2527, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2525, metadata !DIExpression()), !dbg !2583
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #41, !dbg !2664
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2526, metadata !DIExpression()), !dbg !2583
  br label %114, !dbg !2665

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2527, metadata !DIExpression()), !dbg !2583
  br label %98, !dbg !2666

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2527, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2528, metadata !DIExpression()), !dbg !2583
  br label %98, !dbg !2667

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2591
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2528, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2527, metadata !DIExpression()), !dbg !2583
  %101 = and i8 %100, 1, !dbg !2668
  %102 = icmp eq i8 %101, 0, !dbg !2668
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2670
  br label %104, !dbg !2670

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2583
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2586
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2528, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2527, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2517, metadata !DIExpression()), !dbg !2583
  %107 = and i8 %106, 1, !dbg !2671
  %108 = icmp eq i8 %107, 0, !dbg !2671
  br i1 %108, label %109, label %114, !dbg !2673

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2674
  br i1 %110, label %114, label %111, !dbg !2677

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2674, !tbaa !922
  br label %114, !dbg !2674

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2528, metadata !DIExpression()), !dbg !2583
  br label %114, !dbg !2678

113:                                              ; preds = %28
  call void @abort() #42, !dbg !2679
  unreachable, !dbg !2679

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2663
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.87, %45 ], [ @.str.10.87, %47 ], [ @.str.10.87, %42 ], [ %34, %28 ], [ @.str.12.88, %109 ], [ @.str.12.88, %111 ], [ @.str.12.88, %104 ], [ @.str.10.87, %41 ], !dbg !2583
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2583
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2583
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2528, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2527, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2526, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2525, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2521, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2520, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2517, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2538, metadata !DIExpression()), !dbg !2680
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
  br label %138, !dbg !2681

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2663
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2588
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2592
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2593
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2682
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2683
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2514, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2538, metadata !DIExpression()), !dbg !2680
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2532, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2530, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2529, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2524, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2516, metadata !DIExpression()), !dbg !2583
  %147 = icmp eq i64 %139, -1, !dbg !2684
  br i1 %147, label %148, label %152, !dbg !2685

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2686
  %150 = load i8, ptr %149, align 1, !dbg !2686, !tbaa !922
  %151 = icmp eq i8 %150, 0, !dbg !2687
  br i1 %151, label %612, label %154, !dbg !2688

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2689
  br i1 %153, label %612, label %154, !dbg !2688

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2540, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2543, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2544, metadata !DIExpression()), !dbg !2690
  br i1 %128, label %155, label %170, !dbg !2691

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2693
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2694
  br i1 %157, label %158, label %160, !dbg !2694

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2695
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2516, metadata !DIExpression()), !dbg !2583
  br label %160, !dbg !2696

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2696
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2516, metadata !DIExpression()), !dbg !2583
  %162 = icmp ugt i64 %156, %161, !dbg !2697
  br i1 %162, label %170, label %163, !dbg !2698

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2699
  call void @llvm.dbg.value(metadata ptr %164, metadata !2700, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata ptr %119, metadata !2703, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %120, metadata !2704, metadata !DIExpression()), !dbg !2705
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2707
  %166 = icmp ne i32 %165, 0, !dbg !2708
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2709
  %168 = xor i1 %166, true, !dbg !2709
  %169 = zext i1 %168 to i8, !dbg !2709
  br i1 %167, label %170, label %666, !dbg !2709

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2690
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2540, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2516, metadata !DIExpression()), !dbg !2583
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2710
  %175 = load i8, ptr %174, align 1, !dbg !2710, !tbaa !922
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2545, metadata !DIExpression()), !dbg !2690
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
  ], !dbg !2711

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2712

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2713

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2543, metadata !DIExpression()), !dbg !2690
  %179 = and i8 %144, 1, !dbg !2717
  %180 = icmp eq i8 %179, 0, !dbg !2717
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2717
  br i1 %181, label %182, label %198, !dbg !2717

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2719
  br i1 %183, label %184, label %186, !dbg !2723

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2719
  store i8 39, ptr %185, align 1, !dbg !2719, !tbaa !922
  br label %186, !dbg !2719

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2723
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2523, metadata !DIExpression()), !dbg !2583
  %188 = icmp ult i64 %187, %146, !dbg !2724
  br i1 %188, label %189, label %191, !dbg !2727

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2724
  store i8 36, ptr %190, align 1, !dbg !2724, !tbaa !922
  br label %191, !dbg !2724

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2727
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2523, metadata !DIExpression()), !dbg !2583
  %193 = icmp ult i64 %192, %146, !dbg !2728
  br i1 %193, label %194, label %196, !dbg !2731

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2728
  store i8 39, ptr %195, align 1, !dbg !2728, !tbaa !922
  br label %196, !dbg !2728

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2731
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2532, metadata !DIExpression()), !dbg !2583
  br label %198, !dbg !2732

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2583
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2532, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2523, metadata !DIExpression()), !dbg !2583
  %201 = icmp ult i64 %199, %146, !dbg !2733
  br i1 %201, label %202, label %204, !dbg !2736

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2733
  store i8 92, ptr %203, align 1, !dbg !2733, !tbaa !922
  br label %204, !dbg !2733

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2736
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2523, metadata !DIExpression()), !dbg !2583
  br i1 %125, label %206, label %476, !dbg !2737

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2739
  %208 = icmp ult i64 %207, %171, !dbg !2740
  br i1 %208, label %209, label %465, !dbg !2741

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2742
  %211 = load i8, ptr %210, align 1, !dbg !2742, !tbaa !922
  %212 = add i8 %211, -48, !dbg !2743
  %213 = icmp ult i8 %212, 10, !dbg !2743
  br i1 %213, label %214, label %465, !dbg !2743

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2744
  br i1 %215, label %216, label %218, !dbg !2748

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2744
  store i8 48, ptr %217, align 1, !dbg !2744, !tbaa !922
  br label %218, !dbg !2744

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2748
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2523, metadata !DIExpression()), !dbg !2583
  %220 = icmp ult i64 %219, %146, !dbg !2749
  br i1 %220, label %221, label %223, !dbg !2752

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2749
  store i8 48, ptr %222, align 1, !dbg !2749, !tbaa !922
  br label %223, !dbg !2749

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2752
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2523, metadata !DIExpression()), !dbg !2583
  br label %465, !dbg !2753

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2754

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2755

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2756

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2758

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2760
  %231 = icmp ult i64 %230, %171, !dbg !2761
  br i1 %231, label %232, label %465, !dbg !2762

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2763
  %234 = load i8, ptr %233, align 1, !dbg !2763, !tbaa !922
  %235 = icmp eq i8 %234, 63, !dbg !2764
  br i1 %235, label %236, label %465, !dbg !2765

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2766
  %238 = load i8, ptr %237, align 1, !dbg !2766, !tbaa !922
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
  ], !dbg !2767

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2768

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2545, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2538, metadata !DIExpression()), !dbg !2680
  %241 = icmp ult i64 %140, %146, !dbg !2770
  br i1 %241, label %242, label %244, !dbg !2773

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2770
  store i8 63, ptr %243, align 1, !dbg !2770, !tbaa !922
  br label %244, !dbg !2770

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2773
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2523, metadata !DIExpression()), !dbg !2583
  %246 = icmp ult i64 %245, %146, !dbg !2774
  br i1 %246, label %247, label %249, !dbg !2777

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2774
  store i8 34, ptr %248, align 1, !dbg !2774, !tbaa !922
  br label %249, !dbg !2774

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2777
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2523, metadata !DIExpression()), !dbg !2583
  %251 = icmp ult i64 %250, %146, !dbg !2778
  br i1 %251, label %252, label %254, !dbg !2781

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2778
  store i8 34, ptr %253, align 1, !dbg !2778, !tbaa !922
  br label %254, !dbg !2778

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2781
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2523, metadata !DIExpression()), !dbg !2583
  %256 = icmp ult i64 %255, %146, !dbg !2782
  br i1 %256, label %257, label %259, !dbg !2785

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2782
  store i8 63, ptr %258, align 1, !dbg !2782, !tbaa !922
  br label %259, !dbg !2782

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2523, metadata !DIExpression()), !dbg !2583
  br label %465, !dbg !2786

261:                                              ; preds = %170
  br label %272, !dbg !2787

262:                                              ; preds = %170
  br label %272, !dbg !2788

263:                                              ; preds = %170
  br label %270, !dbg !2789

264:                                              ; preds = %170
  br label %270, !dbg !2790

265:                                              ; preds = %170
  br label %272, !dbg !2791

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2792

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2793

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2796

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2798

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2799
  call void @llvm.dbg.label(metadata !2546), !dbg !2800
  br i1 %133, label %272, label %655, !dbg !2801

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2799
  call void @llvm.dbg.label(metadata !2549), !dbg !2803
  br i1 %124, label %520, label %476, !dbg !2804

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2805

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2806, !tbaa !922
  %277 = icmp eq i8 %276, 0, !dbg !2808
  br i1 %277, label %278, label %465, !dbg !2809

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2810
  br i1 %279, label %280, label %465, !dbg !2812

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2544, metadata !DIExpression()), !dbg !2690
  br label %281, !dbg !2813

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2544, metadata !DIExpression()), !dbg !2690
  br i1 %133, label %465, label %655, !dbg !2814

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2529, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2544, metadata !DIExpression()), !dbg !2690
  br i1 %132, label %284, label %465, !dbg !2816

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2817

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2820
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2822
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2822
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2822
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2514, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2524, metadata !DIExpression()), !dbg !2583
  %291 = icmp ult i64 %140, %290, !dbg !2823
  br i1 %291, label %292, label %294, !dbg !2826

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2823
  store i8 39, ptr %293, align 1, !dbg !2823, !tbaa !922
  br label %294, !dbg !2823

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2826
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2523, metadata !DIExpression()), !dbg !2583
  %296 = icmp ult i64 %295, %290, !dbg !2827
  br i1 %296, label %297, label %299, !dbg !2830

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2827
  store i8 92, ptr %298, align 1, !dbg !2827, !tbaa !922
  br label %299, !dbg !2827

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2830
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2523, metadata !DIExpression()), !dbg !2583
  %301 = icmp ult i64 %300, %290, !dbg !2831
  br i1 %301, label %302, label %304, !dbg !2834

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2831
  store i8 39, ptr %303, align 1, !dbg !2831, !tbaa !922
  br label %304, !dbg !2831

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2834
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2532, metadata !DIExpression()), !dbg !2583
  br label %465, !dbg !2835

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2836

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2550, metadata !DIExpression()), !dbg !2837
  %308 = tail call ptr @__ctype_b_loc() #43, !dbg !2838
  %309 = load ptr, ptr %308, align 8, !dbg !2838, !tbaa !849
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2838
  %312 = load i16, ptr %311, align 2, !dbg !2838, !tbaa !954
  %313 = and i16 %312, 16384, !dbg !2840
  %314 = icmp ne i16 %313, 0, !dbg !2840
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2552, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2837
  br label %355, !dbg !2841

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !2842
  call void @llvm.dbg.value(metadata ptr %14, metadata !2613, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata ptr %14, metadata !2621, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 0, metadata !2624, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 8, metadata !2625, metadata !DIExpression()), !dbg !2845
  store i64 0, ptr %14, align 8, !dbg !2847
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2550, metadata !DIExpression()), !dbg !2837
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2552, metadata !DIExpression()), !dbg !2837
  %316 = icmp eq i64 %171, -1, !dbg !2848
  br i1 %316, label %317, label %319, !dbg !2850

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2851
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2516, metadata !DIExpression()), !dbg !2583
  br label %319, !dbg !2852

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2690
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2516, metadata !DIExpression()), !dbg !2583
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !2853
  %321 = sub i64 %320, %145, !dbg !2854
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #40, !dbg !2855
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2560, metadata !DIExpression()), !dbg !2582
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2856

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2550, metadata !DIExpression()), !dbg !2837
  %324 = icmp ult i64 %145, %320, !dbg !2857
  br i1 %324, label %326, label %351, !dbg !2859

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2552, metadata !DIExpression()), !dbg !2837
  br label %351, !dbg !2860

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2550, metadata !DIExpression()), !dbg !2837
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2862
  %330 = load i8, ptr %329, align 1, !dbg !2862, !tbaa !922
  %331 = icmp eq i8 %330, 0, !dbg !2859
  br i1 %331, label %351, label %332, !dbg !2863

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2864
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2550, metadata !DIExpression()), !dbg !2837
  %334 = add i64 %333, %145, !dbg !2865
  %335 = icmp eq i64 %333, %321, !dbg !2857
  br i1 %335, label %351, label %326, !dbg !2859, !llvm.loop !2866

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2561, metadata !DIExpression()), !dbg !2867
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2868
  %339 = and i1 %338, %132, !dbg !2868
  br i1 %339, label %340, label %347, !dbg !2868

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2561, metadata !DIExpression()), !dbg !2867
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2869
  %343 = load i8, ptr %342, align 1, !dbg !2869, !tbaa !922
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2871

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2872
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2561, metadata !DIExpression()), !dbg !2867
  %346 = icmp eq i64 %345, %322, !dbg !2873
  br i1 %346, label %347, label %340, !dbg !2874, !llvm.loop !2875

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2877, !tbaa !913
  call void @llvm.dbg.value(metadata i32 %348, metadata !2879, metadata !DIExpression()), !dbg !2887
  %349 = call i32 @iswprint(i32 noundef %348) #40, !dbg !2889
  %350 = icmp ne i32 %349, 0, !dbg !2890
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2552, metadata !DIExpression()), !dbg !2837
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2550, metadata !DIExpression()), !dbg !2837
  br label %351, !dbg !2891

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2552, metadata !DIExpression()), !dbg !2837
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2550, metadata !DIExpression()), !dbg !2837
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2892
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2893
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2552, metadata !DIExpression()), !dbg !2837
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2550, metadata !DIExpression()), !dbg !2837
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2892
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2893
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2690
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2894
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2894
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2552, metadata !DIExpression()), !dbg !2837
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2550, metadata !DIExpression()), !dbg !2837
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2516, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2544, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2690
  %359 = icmp ult i64 %357, 2, !dbg !2895
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2896
  br i1 %361, label %461, label %362, !dbg !2896

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2897
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2569, metadata !DIExpression()), !dbg !2898
  br label %364, !dbg !2899

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2583
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2682
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2680
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2690
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2900
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2545, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2543, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2540, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2538, metadata !DIExpression()), !dbg !2680
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2532, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2523, metadata !DIExpression()), !dbg !2583
  br i1 %360, label %417, label %371, !dbg !2901

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2906

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2543, metadata !DIExpression()), !dbg !2690
  %373 = and i8 %366, 1, !dbg !2909
  %374 = icmp eq i8 %373, 0, !dbg !2909
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2909
  br i1 %375, label %376, label %392, !dbg !2909

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2911
  br i1 %377, label %378, label %380, !dbg !2915

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2911
  store i8 39, ptr %379, align 1, !dbg !2911, !tbaa !922
  br label %380, !dbg !2911

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2915
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2523, metadata !DIExpression()), !dbg !2583
  %382 = icmp ult i64 %381, %146, !dbg !2916
  br i1 %382, label %383, label %385, !dbg !2919

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2916
  store i8 36, ptr %384, align 1, !dbg !2916, !tbaa !922
  br label %385, !dbg !2916

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2919
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2523, metadata !DIExpression()), !dbg !2583
  %387 = icmp ult i64 %386, %146, !dbg !2920
  br i1 %387, label %388, label %390, !dbg !2923

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2920
  store i8 39, ptr %389, align 1, !dbg !2920, !tbaa !922
  br label %390, !dbg !2920

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2923
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2532, metadata !DIExpression()), !dbg !2583
  br label %392, !dbg !2924

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2583
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2532, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2523, metadata !DIExpression()), !dbg !2583
  %395 = icmp ult i64 %393, %146, !dbg !2925
  br i1 %395, label %396, label %398, !dbg !2928

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2925
  store i8 92, ptr %397, align 1, !dbg !2925, !tbaa !922
  br label %398, !dbg !2925

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2928
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2523, metadata !DIExpression()), !dbg !2583
  %400 = icmp ult i64 %399, %146, !dbg !2929
  br i1 %400, label %401, label %405, !dbg !2932

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2929
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2929
  store i8 %403, ptr %404, align 1, !dbg !2929, !tbaa !922
  br label %405, !dbg !2929

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2523, metadata !DIExpression()), !dbg !2583
  %407 = icmp ult i64 %406, %146, !dbg !2933
  br i1 %407, label %408, label %413, !dbg !2936

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2933
  %411 = or disjoint i8 %410, 48, !dbg !2933
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2933
  store i8 %411, ptr %412, align 1, !dbg !2933, !tbaa !922
  br label %413, !dbg !2933

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2936
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2523, metadata !DIExpression()), !dbg !2583
  %415 = and i8 %370, 7, !dbg !2937
  %416 = or disjoint i8 %415, 48, !dbg !2938
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2545, metadata !DIExpression()), !dbg !2690
  br label %426, !dbg !2939

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2940
  %419 = icmp eq i8 %418, 0, !dbg !2940
  br i1 %419, label %426, label %420, !dbg !2942

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2943
  br i1 %421, label %422, label %424, !dbg !2947

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2943
  store i8 92, ptr %423, align 1, !dbg !2943, !tbaa !922
  br label %424, !dbg !2943

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2947
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2540, metadata !DIExpression()), !dbg !2690
  br label %426, !dbg !2948

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2583
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2682
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2690
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2690
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2545, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2543, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2540, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2532, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2523, metadata !DIExpression()), !dbg !2583
  %432 = add i64 %367, 1, !dbg !2949
  %433 = icmp ugt i64 %363, %432, !dbg !2951
  br i1 %433, label %434, label %463, !dbg !2952

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2953
  %436 = icmp ne i8 %435, 0, !dbg !2953
  %437 = and i8 %430, 1, !dbg !2953
  %438 = icmp eq i8 %437, 0, !dbg !2953
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2953
  br i1 %439, label %440, label %451, !dbg !2953

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2956
  br i1 %441, label %442, label %444, !dbg !2960

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2956
  store i8 39, ptr %443, align 1, !dbg !2956, !tbaa !922
  br label %444, !dbg !2956

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2960
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2523, metadata !DIExpression()), !dbg !2583
  %446 = icmp ult i64 %445, %146, !dbg !2961
  br i1 %446, label %447, label %449, !dbg !2964

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2961
  store i8 39, ptr %448, align 1, !dbg !2961, !tbaa !922
  br label %449, !dbg !2961

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2964
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2532, metadata !DIExpression()), !dbg !2583
  br label %451, !dbg !2965

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2966
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2532, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2523, metadata !DIExpression()), !dbg !2583
  %454 = icmp ult i64 %452, %146, !dbg !2967
  br i1 %454, label %455, label %457, !dbg !2970

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2967
  store i8 %431, ptr %456, align 1, !dbg !2967, !tbaa !922
  br label %457, !dbg !2967

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2970
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2538, metadata !DIExpression()), !dbg !2680
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2971
  %460 = load i8, ptr %459, align 1, !dbg !2971, !tbaa !922
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2545, metadata !DIExpression()), !dbg !2690
  br label %364, !dbg !2972, !llvm.loop !2973

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2545, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2544, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2543, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2540, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2538, metadata !DIExpression()), !dbg !2680
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2532, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2516, metadata !DIExpression()), !dbg !2583
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2545, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2544, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2543, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2540, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2538, metadata !DIExpression()), !dbg !2680
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2532, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2516, metadata !DIExpression()), !dbg !2583
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2976
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2583
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2588
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2583
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2583
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2680
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2690
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2690
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2690
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2514, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2545, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2544, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2543, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2540, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2538, metadata !DIExpression()), !dbg !2680
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2532, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2529, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2524, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2516, metadata !DIExpression()), !dbg !2583
  br i1 %126, label %487, label %476, !dbg !2977

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
  br i1 %137, label %488, label %509, !dbg !2979

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2980

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
  %499 = lshr i8 %490, 5, !dbg !2981
  %500 = zext nneg i8 %499 to i64, !dbg !2981
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2982
  %502 = load i32, ptr %501, align 4, !dbg !2982, !tbaa !913
  %503 = and i8 %490, 31, !dbg !2983
  %504 = zext nneg i8 %503 to i32, !dbg !2983
  %505 = shl nuw i32 1, %504, !dbg !2984
  %506 = and i32 %502, %505, !dbg !2984
  %507 = icmp eq i32 %506, 0, !dbg !2984
  %508 = and i1 %172, %507, !dbg !2985
  br i1 %508, label %558, label %520, !dbg !2985

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
  br i1 %172, label %558, label %520, !dbg !2986

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2976
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2583
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2588
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2592
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2682
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2987
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2690
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2690
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2514, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2545, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2544, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2538, metadata !DIExpression()), !dbg !2680
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2532, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2529, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2524, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2516, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.label(metadata !2572), !dbg !2988
  br i1 %131, label %530, label %659, !dbg !2989

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2543, metadata !DIExpression()), !dbg !2690
  %531 = and i8 %525, 1, !dbg !2991
  %532 = icmp eq i8 %531, 0, !dbg !2991
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2991
  br i1 %533, label %534, label %550, !dbg !2991

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2993
  br i1 %535, label %536, label %538, !dbg !2997

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2993
  store i8 39, ptr %537, align 1, !dbg !2993, !tbaa !922
  br label %538, !dbg !2993

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2997
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2523, metadata !DIExpression()), !dbg !2583
  %540 = icmp ult i64 %539, %529, !dbg !2998
  br i1 %540, label %541, label %543, !dbg !3001

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2998
  store i8 36, ptr %542, align 1, !dbg !2998, !tbaa !922
  br label %543, !dbg !2998

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2523, metadata !DIExpression()), !dbg !2583
  %545 = icmp ult i64 %544, %529, !dbg !3002
  br i1 %545, label %546, label %548, !dbg !3005

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !3002
  store i8 39, ptr %547, align 1, !dbg !3002, !tbaa !922
  br label %548, !dbg !3002

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2532, metadata !DIExpression()), !dbg !2583
  br label %550, !dbg !3006

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2690
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2532, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2523, metadata !DIExpression()), !dbg !2583
  %553 = icmp ult i64 %551, %529, !dbg !3007
  br i1 %553, label %554, label %556, !dbg !3010

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !3007
  store i8 92, ptr %555, align 1, !dbg !3007, !tbaa !922
  br label %556, !dbg !3007

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !3010
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2514, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2545, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2544, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2543, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2538, metadata !DIExpression()), !dbg !2680
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2532, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2529, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2524, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2516, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.label(metadata !2573), !dbg !3011
  br label %585, !dbg !3012

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2976
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2583
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2588
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2592
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2682
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2987
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2690
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2690
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !3015
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2514, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2545, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2544, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2543, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2538, metadata !DIExpression()), !dbg !2680
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2532, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2529, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2524, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2516, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.label(metadata !2573), !dbg !3011
  %569 = and i8 %563, 1, !dbg !3012
  %570 = icmp ne i8 %569, 0, !dbg !3012
  %571 = and i8 %565, 1, !dbg !3012
  %572 = icmp eq i8 %571, 0, !dbg !3012
  %573 = select i1 %570, i1 %572, i1 false, !dbg !3012
  br i1 %573, label %574, label %585, !dbg !3012

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !3016
  br i1 %575, label %576, label %578, !dbg !3020

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !3016
  store i8 39, ptr %577, align 1, !dbg !3016, !tbaa !922
  br label %578, !dbg !3016

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !3020
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2523, metadata !DIExpression()), !dbg !2583
  %580 = icmp ult i64 %579, %568, !dbg !3021
  br i1 %580, label %581, label %583, !dbg !3024

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !3021
  store i8 39, ptr %582, align 1, !dbg !3021, !tbaa !922
  br label %583, !dbg !3021

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !3024
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2532, metadata !DIExpression()), !dbg !2583
  br label %585, !dbg !3025

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2690
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2532, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2523, metadata !DIExpression()), !dbg !2583
  %595 = icmp ult i64 %593, %586, !dbg !3026
  br i1 %595, label %596, label %598, !dbg !3029

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !3026
  store i8 %587, ptr %597, align 1, !dbg !3026, !tbaa !922
  br label %598, !dbg !3026

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !3029
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2523, metadata !DIExpression()), !dbg !2583
  %600 = icmp eq i8 %588, 0, !dbg !3030
  %601 = select i1 %600, i8 0, i8 %143, !dbg !3032
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2530, metadata !DIExpression()), !dbg !2583
  br label %602, !dbg !3033

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2976
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2583
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2588
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2592
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2593
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2682
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2987
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2514, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2538, metadata !DIExpression()), !dbg !2680
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2532, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2530, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2529, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2524, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2516, metadata !DIExpression()), !dbg !2583
  %611 = add i64 %609, 1, !dbg !3034
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2538, metadata !DIExpression()), !dbg !2680
  br label %138, !dbg !3035, !llvm.loop !3036

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2514, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2530, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2529, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2524, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2523, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2516, metadata !DIExpression()), !dbg !2583
  %613 = icmp eq i64 %140, 0, !dbg !3038
  %614 = and i1 %132, %613, !dbg !3040
  %615 = xor i1 %614, true, !dbg !3040
  %616 = select i1 %615, i1 true, i1 %131, !dbg !3040
  br i1 %616, label %617, label %655, !dbg !3040

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !3041
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !3041
  br i1 %621, label %622, label %631, !dbg !3041

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !3043
  %624 = icmp eq i8 %623, 0, !dbg !3043
  br i1 %624, label %627, label %625, !dbg !3046

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !3047
  br label %672, !dbg !3048

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !3049
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !3051
  br i1 %630, label %28, label %631, !dbg !3051

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !3052
  %634 = select i1 %633, i1 %632, i1 false, !dbg !3054
  br i1 %634, label %635, label %650, !dbg !3054

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2525, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2523, metadata !DIExpression()), !dbg !2583
  %636 = load i8, ptr %119, align 1, !dbg !3055, !tbaa !922
  %637 = icmp eq i8 %636, 0, !dbg !3058
  br i1 %637, label %650, label %638, !dbg !3058

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2525, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2523, metadata !DIExpression()), !dbg !2583
  %642 = icmp ult i64 %641, %146, !dbg !3059
  br i1 %642, label %643, label %645, !dbg !3062

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !3059
  store i8 %639, ptr %644, align 1, !dbg !3059, !tbaa !922
  br label %645, !dbg !3059

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2523, metadata !DIExpression()), !dbg !2583
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !3063
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2525, metadata !DIExpression()), !dbg !2583
  %648 = load i8, ptr %647, align 1, !dbg !3055, !tbaa !922
  %649 = icmp eq i8 %648, 0, !dbg !3058
  br i1 %649, label %650, label %638, !dbg !3058, !llvm.loop !3064

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2663
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2523, metadata !DIExpression()), !dbg !2583
  %652 = icmp ult i64 %651, %146, !dbg !3066
  br i1 %652, label %653, label %672, !dbg !3068

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !3069
  store i8 0, ptr %654, align 1, !dbg !3070, !tbaa !922
  br label %672, !dbg !3069

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2574), !dbg !3071
  %657 = icmp eq i8 %123, 0, !dbg !3072
  %658 = select i1 %657, i32 2, i32 4, !dbg !3072
  br label %666, !dbg !3072

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2574), !dbg !3071
  %662 = icmp eq i32 %115, 2, !dbg !3074
  %663 = icmp eq i8 %123, 0, !dbg !3072
  %664 = select i1 %663, i32 2, i32 4, !dbg !3072
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !3072
  br label %666, !dbg !3072

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2517, metadata !DIExpression()), !dbg !2583
  %670 = and i32 %5, -3, !dbg !3075
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !3076
  br label %672, !dbg !3077

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !3078
}

; Function Attrs: nounwind
declare !dbg !3079 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3082 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3085 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #12 !dbg !3087 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3091, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3092, metadata !DIExpression()), !dbg !3094
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata ptr %0, metadata !3095, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %1, metadata !3100, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr null, metadata !3101, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr %2, metadata !3102, metadata !DIExpression()), !dbg !3108
  %4 = icmp eq ptr %2, null, !dbg !3110
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3110
  call void @llvm.dbg.value(metadata ptr %5, metadata !3103, metadata !DIExpression()), !dbg !3108
  %6 = tail call ptr @__errno_location() #43, !dbg !3111
  %7 = load i32, ptr %6, align 4, !dbg !3111, !tbaa !913
  call void @llvm.dbg.value(metadata i32 %7, metadata !3104, metadata !DIExpression()), !dbg !3108
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3112
  %9 = load i32, ptr %8, align 4, !dbg !3112, !tbaa !2457
  %10 = or i32 %9, 1, !dbg !3113
  call void @llvm.dbg.value(metadata i32 %10, metadata !3105, metadata !DIExpression()), !dbg !3108
  %11 = load i32, ptr %5, align 8, !dbg !3114, !tbaa !2407
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3115
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3116
  %14 = load ptr, ptr %13, align 8, !dbg !3116, !tbaa !2478
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3117
  %16 = load ptr, ptr %15, align 8, !dbg !3117, !tbaa !2481
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3118
  %18 = add i64 %17, 1, !dbg !3119
  call void @llvm.dbg.value(metadata i64 %18, metadata !3106, metadata !DIExpression()), !dbg !3108
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !3120
  call void @llvm.dbg.value(metadata ptr %19, metadata !3107, metadata !DIExpression()), !dbg !3108
  %20 = load i32, ptr %5, align 8, !dbg !3121, !tbaa !2407
  %21 = load ptr, ptr %13, align 8, !dbg !3122, !tbaa !2478
  %22 = load ptr, ptr %15, align 8, !dbg !3123, !tbaa !2481
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3124
  store i32 %7, ptr %6, align 4, !dbg !3125, !tbaa !913
  ret ptr %19, !dbg !3126
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #12 !dbg !3096 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3095, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3100, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3101, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3102, metadata !DIExpression()), !dbg !3127
  %5 = icmp eq ptr %3, null, !dbg !3128
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3128
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3103, metadata !DIExpression()), !dbg !3127
  %7 = tail call ptr @__errno_location() #43, !dbg !3129
  %8 = load i32, ptr %7, align 4, !dbg !3129, !tbaa !913
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3104, metadata !DIExpression()), !dbg !3127
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3130
  %10 = load i32, ptr %9, align 4, !dbg !3130, !tbaa !2457
  %11 = icmp eq ptr %2, null, !dbg !3131
  %12 = zext i1 %11 to i32, !dbg !3131
  %13 = or i32 %10, %12, !dbg !3132
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3105, metadata !DIExpression()), !dbg !3127
  %14 = load i32, ptr %6, align 8, !dbg !3133, !tbaa !2407
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3134
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3135
  %17 = load ptr, ptr %16, align 8, !dbg !3135, !tbaa !2478
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3136
  %19 = load ptr, ptr %18, align 8, !dbg !3136, !tbaa !2481
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3137
  %21 = add i64 %20, 1, !dbg !3138
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3106, metadata !DIExpression()), !dbg !3127
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !3139
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3107, metadata !DIExpression()), !dbg !3127
  %23 = load i32, ptr %6, align 8, !dbg !3140, !tbaa !2407
  %24 = load ptr, ptr %16, align 8, !dbg !3141, !tbaa !2478
  %25 = load ptr, ptr %18, align 8, !dbg !3142, !tbaa !2481
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3143
  store i32 %8, ptr %7, align 4, !dbg !3144, !tbaa !913
  br i1 %11, label %28, label %27, !dbg !3145

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3146, !tbaa !1415
  br label %28, !dbg !3148

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3149
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !3150 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3155, !tbaa !849
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3152, metadata !DIExpression()), !dbg !3156
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3153, metadata !DIExpression()), !dbg !3157
  %2 = load i32, ptr @nslots, align 4, !tbaa !913
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3153, metadata !DIExpression()), !dbg !3157
  %3 = icmp sgt i32 %2, 1, !dbg !3158
  br i1 %3, label %4, label %6, !dbg !3160

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3158
  br label %10, !dbg !3160

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.tokenbuffer, ptr %1, i64 0, i32 1, !dbg !3161
  %8 = load ptr, ptr %7, align 8, !dbg !3161, !tbaa !3163
  %9 = icmp eq ptr %8, @slot0, !dbg !3165
  br i1 %9, label %17, label %16, !dbg !3166

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3153, metadata !DIExpression()), !dbg !3157
  %12 = getelementptr inbounds %struct.tokenbuffer, ptr %1, i64 %11, i32 1, !dbg !3167
  %13 = load ptr, ptr %12, align 8, !dbg !3167, !tbaa !3163
  tail call void @free(ptr noundef %13) #40, !dbg !3168
  %14 = add nuw nsw i64 %11, 1, !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3153, metadata !DIExpression()), !dbg !3157
  %15 = icmp eq i64 %14, %5, !dbg !3158
  br i1 %15, label %6, label %10, !dbg !3160, !llvm.loop !3170

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !3172
  store i64 256, ptr @slotvec0, align 8, !dbg !3174, !tbaa !3175
  store ptr @slot0, ptr getelementptr inbounds (%struct.tokenbuffer, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3176, !tbaa !3163
  br label %17, !dbg !3177

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3178
  br i1 %18, label %20, label %19, !dbg !3180

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3181
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3183, !tbaa !849
  br label %20, !dbg !3184

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3185, !tbaa !913
  ret void, !dbg !3186
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3187 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #12 !dbg !3190 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3192, metadata !DIExpression()), !dbg !3194
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3193, metadata !DIExpression()), !dbg !3194
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3195
  ret ptr %3, !dbg !3196
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #12 !dbg !3197 {
  %5 = alloca i64, align 8, !DIAssignID !3217
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3211, metadata !DIExpression(), metadata !3217, metadata ptr %5, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3201, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3202, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3203, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3204, metadata !DIExpression()), !dbg !3219
  %6 = tail call ptr @__errno_location() #43, !dbg !3220
  %7 = load i32, ptr %6, align 4, !dbg !3220, !tbaa !913
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3205, metadata !DIExpression()), !dbg !3219
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3221, !tbaa !849
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3206, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3207, metadata !DIExpression()), !dbg !3219
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3222
  br i1 %9, label %10, label %11, !dbg !3222

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3224
  unreachable, !dbg !3224

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3225, !tbaa !913
  %13 = icmp sgt i32 %12, %0, !dbg !3226
  br i1 %13, label %32, label %14, !dbg !3227

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3228
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3208, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3218
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3229
  %16 = sext i32 %12 to i64, !dbg !3230
  store i64 %16, ptr %5, align 8, !dbg !3231, !tbaa !1415, !DIAssignID !3232
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3211, metadata !DIExpression(), metadata !3232, metadata ptr %5, metadata !DIExpression()), !dbg !3218
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3233
  %18 = add nuw nsw i32 %0, 1, !dbg !3234
  %19 = sub i32 %18, %12, !dbg !3235
  %20 = sext i32 %19 to i64, !dbg !3236
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3237
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3206, metadata !DIExpression()), !dbg !3219
  store ptr %21, ptr @slotvec, align 8, !dbg !3238, !tbaa !849
  br i1 %15, label %22, label %23, !dbg !3239

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3240, !tbaa.struct !3242
  br label %23, !dbg !3243

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3244, !tbaa !913
  %25 = sext i32 %24 to i64, !dbg !3245
  %26 = getelementptr inbounds %struct.tokenbuffer, ptr %21, i64 %25, !dbg !3245
  %27 = load i64, ptr %5, align 8, !dbg !3246, !tbaa !1415
  %28 = sub nsw i64 %27, %25, !dbg !3247
  %29 = shl i64 %28, 4, !dbg !3248
  call void @llvm.dbg.value(metadata ptr %26, metadata !2621, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i32 0, metadata !2624, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %29, metadata !2625, metadata !DIExpression()), !dbg !3249
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3251
  %30 = load i64, ptr %5, align 8, !dbg !3252, !tbaa !1415
  %31 = trunc i64 %30 to i32, !dbg !3252
  store i32 %31, ptr @nslots, align 4, !dbg !3253, !tbaa !913
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3254
  br label %32, !dbg !3255

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3219
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3206, metadata !DIExpression()), !dbg !3219
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.tokenbuffer, ptr %33, i64 %34, !dbg !3256
  %36 = load i64, ptr %35, align 8, !dbg !3257, !tbaa !3175
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3212, metadata !DIExpression()), !dbg !3258
  %37 = getelementptr inbounds %struct.tokenbuffer, ptr %33, i64 %34, i32 1, !dbg !3259
  %38 = load ptr, ptr %37, align 8, !dbg !3259, !tbaa !3163
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3214, metadata !DIExpression()), !dbg !3258
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3260
  %40 = load i32, ptr %39, align 4, !dbg !3260, !tbaa !2457
  %41 = or i32 %40, 1, !dbg !3261
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3215, metadata !DIExpression()), !dbg !3258
  %42 = load i32, ptr %3, align 8, !dbg !3262, !tbaa !2407
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3263
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3264
  %45 = load ptr, ptr %44, align 8, !dbg !3264, !tbaa !2478
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3265
  %47 = load ptr, ptr %46, align 8, !dbg !3265, !tbaa !2481
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3266
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3216, metadata !DIExpression()), !dbg !3258
  %49 = icmp ugt i64 %36, %48, !dbg !3267
  br i1 %49, label %60, label %50, !dbg !3269

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3212, metadata !DIExpression()), !dbg !3258
  store i64 %51, ptr %35, align 8, !dbg !3272, !tbaa !3175
  %52 = icmp eq ptr %38, @slot0, !dbg !3273
  br i1 %52, label %54, label %53, !dbg !3275

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3276
  br label %54, !dbg !3276

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !3277
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3214, metadata !DIExpression()), !dbg !3258
  store ptr %55, ptr %37, align 8, !dbg !3278, !tbaa !3163
  %56 = load i32, ptr %3, align 8, !dbg !3279, !tbaa !2407
  %57 = load ptr, ptr %44, align 8, !dbg !3280, !tbaa !2478
  %58 = load ptr, ptr %46, align 8, !dbg !3281, !tbaa !2481
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3282
  br label %60, !dbg !3283

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3258
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3214, metadata !DIExpression()), !dbg !3258
  store i32 %7, ptr %6, align 4, !dbg !3284, !tbaa !913
  ret ptr %61, !dbg !3285
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #25

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3286 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3290, metadata !DIExpression()), !dbg !3293
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3291, metadata !DIExpression()), !dbg !3293
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3292, metadata !DIExpression()), !dbg !3293
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3294
  ret ptr %4, !dbg !3295
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #12 !dbg !3296 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3298, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32 0, metadata !3192, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata ptr %0, metadata !3193, metadata !DIExpression()), !dbg !3300
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3302
  ret ptr %2, !dbg !3303
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3304 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3308, metadata !DIExpression()), !dbg !3310
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3309, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32 0, metadata !3290, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata ptr %0, metadata !3291, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i64 %1, metadata !3292, metadata !DIExpression()), !dbg !3311
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3313
  ret ptr %3, !dbg !3314
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #12 !dbg !3315 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3323
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3322, metadata !DIExpression(), metadata !3323, metadata ptr %4, metadata !DIExpression()), !dbg !3324
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3319, metadata !DIExpression()), !dbg !3324
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3320, metadata !DIExpression()), !dbg !3324
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3321, metadata !DIExpression()), !dbg !3324
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3325
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3326), !dbg !3329
  call void @llvm.dbg.value(metadata i32 %1, metadata !3330, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3335, metadata !DIExpression()), !dbg !3338
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3338, !alias.scope !3326, !DIAssignID !3339
  call void @llvm.dbg.assign(metadata i8 0, metadata !3322, metadata !DIExpression(), metadata !3339, metadata ptr %4, metadata !DIExpression()), !dbg !3324
  %5 = icmp eq i32 %1, 10, !dbg !3340
  br i1 %5, label %6, label %7, !dbg !3342

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3343, !noalias !3326
  unreachable, !dbg !3343

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3344, !tbaa !2407, !alias.scope !3326, !DIAssignID !3345
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3322, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3345, metadata ptr %4, metadata !DIExpression()), !dbg !3324
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3346
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3347
  ret ptr %8, !dbg !3348
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3349 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3358
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3357, metadata !DIExpression(), metadata !3358, metadata ptr %5, metadata !DIExpression()), !dbg !3359
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3353, metadata !DIExpression()), !dbg !3359
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3354, metadata !DIExpression()), !dbg !3359
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3355, metadata !DIExpression()), !dbg !3359
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3356, metadata !DIExpression()), !dbg !3359
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3360
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3361), !dbg !3364
  call void @llvm.dbg.value(metadata i32 %1, metadata !3330, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3335, metadata !DIExpression()), !dbg !3367
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3367, !alias.scope !3361, !DIAssignID !3368
  call void @llvm.dbg.assign(metadata i8 0, metadata !3357, metadata !DIExpression(), metadata !3368, metadata ptr %5, metadata !DIExpression()), !dbg !3359
  %6 = icmp eq i32 %1, 10, !dbg !3369
  br i1 %6, label %7, label %8, !dbg !3370

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3371, !noalias !3361
  unreachable, !dbg !3371

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3372, !tbaa !2407, !alias.scope !3361, !DIAssignID !3373
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3357, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3373, metadata ptr %5, metadata !DIExpression()), !dbg !3359
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3374
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3375
  ret ptr %9, !dbg !3376
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #12 !dbg !3377 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3383
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3381, metadata !DIExpression()), !dbg !3384
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3382, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3322, metadata !DIExpression(), metadata !3383, metadata ptr %3, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i32 0, metadata !3319, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i32 %0, metadata !3320, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata ptr %1, metadata !3321, metadata !DIExpression()), !dbg !3385
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3387
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3388), !dbg !3391
  call void @llvm.dbg.value(metadata i32 %0, metadata !3330, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3335, metadata !DIExpression()), !dbg !3394
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3394, !alias.scope !3388, !DIAssignID !3395
  call void @llvm.dbg.assign(metadata i8 0, metadata !3322, metadata !DIExpression(), metadata !3395, metadata ptr %3, metadata !DIExpression()), !dbg !3385
  %4 = icmp eq i32 %0, 10, !dbg !3396
  br i1 %4, label %5, label %6, !dbg !3397

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3398, !noalias !3388
  unreachable, !dbg !3398

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3399, !tbaa !2407, !alias.scope !3388, !DIAssignID !3400
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3322, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3400, metadata ptr %3, metadata !DIExpression()), !dbg !3385
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3401
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3402
  ret ptr %7, !dbg !3403
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3404 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3411
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3408, metadata !DIExpression()), !dbg !3412
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3409, metadata !DIExpression()), !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3410, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3357, metadata !DIExpression(), metadata !3411, metadata ptr %4, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i32 0, metadata !3353, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i32 %0, metadata !3354, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata ptr %1, metadata !3355, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i64 %2, metadata !3356, metadata !DIExpression()), !dbg !3413
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3415
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3416), !dbg !3419
  call void @llvm.dbg.value(metadata i32 %0, metadata !3330, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3335, metadata !DIExpression()), !dbg !3422
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3422, !alias.scope !3416, !DIAssignID !3423
  call void @llvm.dbg.assign(metadata i8 0, metadata !3357, metadata !DIExpression(), metadata !3423, metadata ptr %4, metadata !DIExpression()), !dbg !3413
  %5 = icmp eq i32 %0, 10, !dbg !3424
  br i1 %5, label %6, label %7, !dbg !3425

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3426, !noalias !3416
  unreachable, !dbg !3426

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3427, !tbaa !2407, !alias.scope !3416, !DIAssignID !3428
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3357, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3428, metadata ptr %4, metadata !DIExpression()), !dbg !3413
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3429
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3430
  ret ptr %8, !dbg !3431
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #12 !dbg !3432 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3440
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3439, metadata !DIExpression(), metadata !3440, metadata ptr %4, metadata !DIExpression()), !dbg !3441
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3436, metadata !DIExpression()), !dbg !3441
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3437, metadata !DIExpression()), !dbg !3441
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3438, metadata !DIExpression()), !dbg !3441
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3443, !tbaa.struct !3444, !DIAssignID !3445
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3439, metadata !DIExpression(), metadata !3445, metadata ptr %4, metadata !DIExpression()), !dbg !3441
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2424, metadata !DIExpression()), !dbg !3446
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2425, metadata !DIExpression()), !dbg !3446
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2426, metadata !DIExpression()), !dbg !3446
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2427, metadata !DIExpression()), !dbg !3446
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3448
  %6 = lshr i8 %2, 5, !dbg !3449
  %7 = zext nneg i8 %6 to i64, !dbg !3449
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3450
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2428, metadata !DIExpression()), !dbg !3446
  %9 = and i8 %2, 31, !dbg !3451
  %10 = zext nneg i8 %9 to i32, !dbg !3451
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2430, metadata !DIExpression()), !dbg !3446
  %11 = load i32, ptr %8, align 4, !dbg !3452, !tbaa !913
  %12 = lshr i32 %11, %10, !dbg !3453
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2431, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3446
  %13 = and i32 %12, 1, !dbg !3454
  %14 = xor i32 %13, 1, !dbg !3454
  %15 = shl nuw i32 %14, %10, !dbg !3455
  %16 = xor i32 %15, %11, !dbg !3456
  store i32 %16, ptr %8, align 4, !dbg !3456, !tbaa !913
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3457
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3458
  ret ptr %17, !dbg !3459
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #12 !dbg !3460 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3466
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3464, metadata !DIExpression()), !dbg !3467
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3465, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3439, metadata !DIExpression(), metadata !3466, metadata ptr %3, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata ptr %0, metadata !3436, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i64 -1, metadata !3437, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i8 %1, metadata !3438, metadata !DIExpression()), !dbg !3468
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3471, !tbaa.struct !3444, !DIAssignID !3472
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3439, metadata !DIExpression(), metadata !3472, metadata ptr %3, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata ptr %3, metadata !2424, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i8 %1, metadata !2425, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i32 1, metadata !2426, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i8 %1, metadata !2427, metadata !DIExpression()), !dbg !3473
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3475
  %5 = lshr i8 %1, 5, !dbg !3476
  %6 = zext nneg i8 %5 to i64, !dbg !3476
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3477
  call void @llvm.dbg.value(metadata ptr %7, metadata !2428, metadata !DIExpression()), !dbg !3473
  %8 = and i8 %1, 31, !dbg !3478
  %9 = zext nneg i8 %8 to i32, !dbg !3478
  call void @llvm.dbg.value(metadata i32 %9, metadata !2430, metadata !DIExpression()), !dbg !3473
  %10 = load i32, ptr %7, align 4, !dbg !3479, !tbaa !913
  %11 = lshr i32 %10, %9, !dbg !3480
  call void @llvm.dbg.value(metadata i32 %11, metadata !2431, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3473
  %12 = and i32 %11, 1, !dbg !3481
  %13 = xor i32 %12, 1, !dbg !3481
  %14 = shl nuw i32 %13, %9, !dbg !3482
  %15 = xor i32 %14, %10, !dbg !3483
  store i32 %15, ptr %7, align 4, !dbg !3483, !tbaa !913
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3484
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3485
  ret ptr %16, !dbg !3486
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #12 !dbg !3487 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3490
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3489, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata ptr %0, metadata !3464, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 58, metadata !3465, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3439, metadata !DIExpression(), metadata !3490, metadata ptr %2, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata ptr %0, metadata !3436, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i64 -1, metadata !3437, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i8 58, metadata !3438, metadata !DIExpression()), !dbg !3494
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3497, !tbaa.struct !3444, !DIAssignID !3498
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3439, metadata !DIExpression(), metadata !3498, metadata ptr %2, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata ptr %2, metadata !2424, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i8 58, metadata !2425, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i32 1, metadata !2426, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i8 58, metadata !2427, metadata !DIExpression()), !dbg !3499
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3501
  call void @llvm.dbg.value(metadata ptr %3, metadata !2428, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i32 26, metadata !2430, metadata !DIExpression()), !dbg !3499
  %4 = load i32, ptr %3, align 4, !dbg !3502, !tbaa !913
  call void @llvm.dbg.value(metadata i32 %4, metadata !2431, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3499
  %5 = or i32 %4, 67108864, !dbg !3503
  store i32 %5, ptr %3, align 4, !dbg !3503, !tbaa !913
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3504
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3505
  ret ptr %6, !dbg !3506
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3507 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3511
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3509, metadata !DIExpression()), !dbg !3512
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3510, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3439, metadata !DIExpression(), metadata !3511, metadata ptr %3, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata ptr %0, metadata !3436, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i64 %1, metadata !3437, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i8 58, metadata !3438, metadata !DIExpression()), !dbg !3513
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3516, !tbaa.struct !3444, !DIAssignID !3517
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3439, metadata !DIExpression(), metadata !3517, metadata ptr %3, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata ptr %3, metadata !2424, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i8 58, metadata !2425, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i32 1, metadata !2426, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i8 58, metadata !2427, metadata !DIExpression()), !dbg !3518
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3520
  call void @llvm.dbg.value(metadata ptr %4, metadata !2428, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i32 26, metadata !2430, metadata !DIExpression()), !dbg !3518
  %5 = load i32, ptr %4, align 4, !dbg !3521, !tbaa !913
  call void @llvm.dbg.value(metadata i32 %5, metadata !2431, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3518
  %6 = or i32 %5, 67108864, !dbg !3522
  store i32 %6, ptr %4, align 4, !dbg !3522, !tbaa !913
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3523
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3524
  ret ptr %7, !dbg !3525
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #12 !dbg !3526 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3532
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3531, metadata !DIExpression(), metadata !3532, metadata ptr %4, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3335, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3534
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3528, metadata !DIExpression()), !dbg !3533
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3529, metadata !DIExpression()), !dbg !3533
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3530, metadata !DIExpression()), !dbg !3533
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3536
  call void @llvm.dbg.value(metadata i32 %1, metadata !3330, metadata !DIExpression()), !dbg !3537
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3335, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3537
  %5 = icmp eq i32 %1, 10, !dbg !3538
  br i1 %5, label %6, label %7, !dbg !3539

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3540, !noalias !3541
  unreachable, !dbg !3540

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3335, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3537
  store i32 %1, ptr %4, align 8, !dbg !3544, !tbaa.struct !3444, !DIAssignID !3545
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3544
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3531, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3545, metadata ptr %4, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3531, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3546, metadata ptr %8, metadata !DIExpression()), !dbg !3533
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2424, metadata !DIExpression()), !dbg !3547
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2425, metadata !DIExpression()), !dbg !3547
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2426, metadata !DIExpression()), !dbg !3547
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2427, metadata !DIExpression()), !dbg !3547
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3549
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2428, metadata !DIExpression()), !dbg !3547
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2430, metadata !DIExpression()), !dbg !3547
  %10 = load i32, ptr %9, align 4, !dbg !3550, !tbaa !913
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2431, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3547
  %11 = or i32 %10, 67108864, !dbg !3551
  store i32 %11, ptr %9, align 4, !dbg !3551, !tbaa !913, !DIAssignID !3552
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3531, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3552, metadata ptr %9, metadata !DIExpression()), !dbg !3533
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3553
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3554
  ret ptr %12, !dbg !3555
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 !dbg !3556 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3564
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3560, metadata !DIExpression()), !dbg !3565
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3561, metadata !DIExpression()), !dbg !3565
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3562, metadata !DIExpression()), !dbg !3565
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3563, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3566, metadata !DIExpression(), metadata !3564, metadata ptr %5, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i32 %0, metadata !3571, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata ptr %1, metadata !3572, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata ptr %2, metadata !3573, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata ptr %3, metadata !3574, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i64 -1, metadata !3575, metadata !DIExpression()), !dbg !3576
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3579, !tbaa.struct !3444, !DIAssignID !3580
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3566, metadata !DIExpression(), metadata !3580, metadata ptr %5, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3566, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3581, metadata ptr undef, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata ptr %5, metadata !2464, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr %1, metadata !2465, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr %2, metadata !2466, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr %5, metadata !2464, metadata !DIExpression()), !dbg !3582
  store i32 10, ptr %5, align 8, !dbg !3584, !tbaa !2407, !DIAssignID !3585
  call void @llvm.dbg.assign(metadata i32 10, metadata !3566, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3585, metadata ptr %5, metadata !DIExpression()), !dbg !3576
  %6 = icmp ne ptr %1, null, !dbg !3586
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3587
  br i1 %8, label %10, label %9, !dbg !3587

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3588
  unreachable, !dbg !3588

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3589
  store ptr %1, ptr %11, align 8, !dbg !3590, !tbaa !2478, !DIAssignID !3591
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3566, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3591, metadata ptr %11, metadata !DIExpression()), !dbg !3576
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3592
  store ptr %2, ptr %12, align 8, !dbg !3593, !tbaa !2481, !DIAssignID !3594
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3566, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3594, metadata ptr %12, metadata !DIExpression()), !dbg !3576
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3595
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3596
  ret ptr %13, !dbg !3597
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3567 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3598
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3566, metadata !DIExpression(), metadata !3598, metadata ptr %6, metadata !DIExpression()), !dbg !3599
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3571, metadata !DIExpression()), !dbg !3599
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3572, metadata !DIExpression()), !dbg !3599
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3573, metadata !DIExpression()), !dbg !3599
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3574, metadata !DIExpression()), !dbg !3599
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3575, metadata !DIExpression()), !dbg !3599
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3601, !tbaa.struct !3444, !DIAssignID !3602
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3566, metadata !DIExpression(), metadata !3602, metadata ptr %6, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3566, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3603, metadata ptr undef, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata ptr %6, metadata !2464, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %1, metadata !2465, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %2, metadata !2466, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %6, metadata !2464, metadata !DIExpression()), !dbg !3604
  store i32 10, ptr %6, align 8, !dbg !3606, !tbaa !2407, !DIAssignID !3607
  call void @llvm.dbg.assign(metadata i32 10, metadata !3566, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3607, metadata ptr %6, metadata !DIExpression()), !dbg !3599
  %7 = icmp ne ptr %1, null, !dbg !3608
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3609
  br i1 %9, label %11, label %10, !dbg !3609

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3610
  unreachable, !dbg !3610

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3611
  store ptr %1, ptr %12, align 8, !dbg !3612, !tbaa !2478, !DIAssignID !3613
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3566, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3613, metadata ptr %12, metadata !DIExpression()), !dbg !3599
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3614
  store ptr %2, ptr %13, align 8, !dbg !3615, !tbaa !2481, !DIAssignID !3616
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3566, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3616, metadata ptr %13, metadata !DIExpression()), !dbg !3599
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3617
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3618
  ret ptr %14, !dbg !3619
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 !dbg !3620 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3627
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3624, metadata !DIExpression()), !dbg !3628
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3625, metadata !DIExpression()), !dbg !3628
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3626, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 0, metadata !3560, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata ptr %0, metadata !3561, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata ptr %1, metadata !3562, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata ptr %2, metadata !3563, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3566, metadata !DIExpression(), metadata !3627, metadata ptr %4, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i32 0, metadata !3571, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata ptr %0, metadata !3572, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata ptr %1, metadata !3573, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata ptr %2, metadata !3574, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 -1, metadata !3575, metadata !DIExpression()), !dbg !3631
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3634, !tbaa.struct !3444, !DIAssignID !3635
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3566, metadata !DIExpression(), metadata !3635, metadata ptr %4, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3566, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3636, metadata ptr undef, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata ptr %4, metadata !2464, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata ptr %0, metadata !2465, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata ptr %1, metadata !2466, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata ptr %4, metadata !2464, metadata !DIExpression()), !dbg !3637
  store i32 10, ptr %4, align 8, !dbg !3639, !tbaa !2407, !DIAssignID !3640
  call void @llvm.dbg.assign(metadata i32 10, metadata !3566, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3640, metadata ptr %4, metadata !DIExpression()), !dbg !3631
  %5 = icmp ne ptr %0, null, !dbg !3641
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3642
  br i1 %7, label %9, label %8, !dbg !3642

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3643
  unreachable, !dbg !3643

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3644
  store ptr %0, ptr %10, align 8, !dbg !3645, !tbaa !2478, !DIAssignID !3646
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3566, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3646, metadata ptr %10, metadata !DIExpression()), !dbg !3631
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3647
  store ptr %1, ptr %11, align 8, !dbg !3648, !tbaa !2481, !DIAssignID !3649
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3566, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3649, metadata ptr %11, metadata !DIExpression()), !dbg !3631
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3650
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3651
  ret ptr %12, !dbg !3652
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3653 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3661
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3657, metadata !DIExpression()), !dbg !3662
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3658, metadata !DIExpression()), !dbg !3662
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3659, metadata !DIExpression()), !dbg !3662
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3660, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3566, metadata !DIExpression(), metadata !3661, metadata ptr %5, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i32 0, metadata !3571, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr %0, metadata !3572, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr %1, metadata !3573, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr %2, metadata !3574, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i64 %3, metadata !3575, metadata !DIExpression()), !dbg !3663
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3666, !tbaa.struct !3444, !DIAssignID !3667
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3566, metadata !DIExpression(), metadata !3667, metadata ptr %5, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3566, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3668, metadata ptr undef, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr %5, metadata !2464, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %0, metadata !2465, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %1, metadata !2466, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %5, metadata !2464, metadata !DIExpression()), !dbg !3669
  store i32 10, ptr %5, align 8, !dbg !3671, !tbaa !2407, !DIAssignID !3672
  call void @llvm.dbg.assign(metadata i32 10, metadata !3566, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3672, metadata ptr %5, metadata !DIExpression()), !dbg !3663
  %6 = icmp ne ptr %0, null, !dbg !3673
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3674
  br i1 %8, label %10, label %9, !dbg !3674

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3675
  unreachable, !dbg !3675

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3676
  store ptr %0, ptr %11, align 8, !dbg !3677, !tbaa !2478, !DIAssignID !3678
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3566, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3678, metadata ptr %11, metadata !DIExpression()), !dbg !3663
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3679
  store ptr %1, ptr %12, align 8, !dbg !3680, !tbaa !2481, !DIAssignID !3681
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3566, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3681, metadata ptr %12, metadata !DIExpression()), !dbg !3663
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3682
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3683
  ret ptr %13, !dbg !3684
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3685 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3689, metadata !DIExpression()), !dbg !3692
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3690, metadata !DIExpression()), !dbg !3692
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3691, metadata !DIExpression()), !dbg !3692
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3693
  ret ptr %4, !dbg !3694
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3695 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3699, metadata !DIExpression()), !dbg !3701
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3700, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i32 0, metadata !3689, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata ptr %0, metadata !3690, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i64 %1, metadata !3691, metadata !DIExpression()), !dbg !3702
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3704
  ret ptr %3, !dbg !3705
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #12 !dbg !3706 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3710, metadata !DIExpression()), !dbg !3712
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3711, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i32 %0, metadata !3689, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata ptr %1, metadata !3690, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i64 -1, metadata !3691, metadata !DIExpression()), !dbg !3713
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3715
  ret ptr %3, !dbg !3716
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #12 !dbg !3717 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3721, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i32 0, metadata !3710, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata ptr %0, metadata !3711, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i32 0, metadata !3689, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata ptr %0, metadata !3690, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i64 -1, metadata !3691, metadata !DIExpression()), !dbg !3725
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3727
  ret ptr %2, !dbg !3728
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_tokenbuffer(ptr nocapture noundef writeonly %0) local_unnamed_addr #28 !dbg !3729 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3740, metadata !DIExpression()), !dbg !3741
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !dbg !3742
  ret void, !dbg !3743
}

; Function Attrs: nounwind uwtable
define dso_local i64 @readtoken(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #12 !dbg !3744 {
  %5 = alloca [4 x i64], align 16, !DIAssignID !3798
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3786, metadata !DIExpression(), metadata !3798, metadata ptr %5, metadata !DIExpression()), !dbg !3799
  %6 = alloca i64, align 8, !DIAssignID !3800
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3796, metadata !DIExpression(), metadata !3800, metadata ptr %6, metadata !DIExpression()), !dbg !3799
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3782, metadata !DIExpression()), !dbg !3799
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3783, metadata !DIExpression()), !dbg !3799
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3784, metadata !DIExpression()), !dbg !3799
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3785, metadata !DIExpression()), !dbg !3799
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !3801
  call void @llvm.dbg.value(metadata ptr %5, metadata !3802, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i32 0, metadata !3805, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i64 32, metadata !3806, metadata !DIExpression()), !dbg !3807
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 noundef 0, i64 noundef 32, i1 noundef false) #40, !dbg !3809
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3789, metadata !DIExpression()), !dbg !3810
  %7 = icmp eq i64 %2, 0, !dbg !3811
  br i1 %7, label %26, label %8, !dbg !3812

8:                                                ; preds = %4
  %9 = and i64 %2, 1, !dbg !3812
  %10 = icmp eq i64 %2, 1, !dbg !3812
  br i1 %10, label %13, label %11, !dbg !3812

11:                                               ; preds = %8
  %12 = and i64 %2, -2, !dbg !3812
  br label %41, !dbg !3812

13:                                               ; preds = %41, %8
  %14 = phi i64 [ 0, %8 ], [ %63, %41 ]
  %15 = icmp eq i64 %9, 0, !dbg !3812
  br i1 %15, label %26, label %16, !dbg !3812

16:                                               ; preds = %13
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3789, metadata !DIExpression()), !dbg !3810
  %17 = getelementptr inbounds i8, ptr %1, i64 %14, !dbg !3813
  %18 = load i8, ptr %17, align 1, !dbg !3813, !tbaa !922
  tail call void @llvm.dbg.value(metadata i8 %18, metadata !3791, metadata !DIExpression()), !dbg !3814
  %19 = zext i8 %18 to i64, !dbg !3815
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !3816, metadata !DIExpression()), !dbg !3824
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3822, metadata !DIExpression()), !dbg !3824
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3823, metadata !DIExpression()), !dbg !3824
  %20 = and i64 %19, 63, !dbg !3826
  %21 = shl nuw i64 1, %20, !dbg !3827
  %22 = lshr i64 %19, 6, !dbg !3828
  %23 = getelementptr inbounds i64, ptr %5, i64 %22, !dbg !3829
  %24 = load i64, ptr %23, align 8, !dbg !3830, !tbaa !1415
  %25 = or i64 %21, %24, !dbg !3830
  store i64 %25, ptr %23, align 8, !dbg !3830, !tbaa !1415
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3789, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3810
  br label %26, !dbg !3831

26:                                               ; preds = %16, %13, %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3836, metadata !DIExpression()), !dbg !3839
  %27 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3831
  %28 = load ptr, ptr %27, align 8, !dbg !3831, !tbaa !2274
  %29 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3831
  %30 = load ptr, ptr %29, align 8, !dbg !3831, !tbaa !2272
  %31 = icmp ult ptr %28, %30, !dbg !3831
  br i1 %31, label %32, label %36, !dbg !3831, !prof !1793

32:                                               ; preds = %26
  %33 = getelementptr inbounds i8, ptr %28, i64 1, !dbg !3831
  store ptr %33, ptr %27, align 8, !dbg !3831, !tbaa !2274
  %34 = load i8, ptr %28, align 1, !dbg !3831, !tbaa !922
  %35 = zext i8 %34 to i32, !dbg !3831
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !3794, metadata !DIExpression()), !dbg !3799
  br label %39, !dbg !3840

36:                                               ; preds = %26
  %37 = tail call i32 @__uflow(ptr noundef nonnull %0) #40, !dbg !3831
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !3794, metadata !DIExpression()), !dbg !3799
  %38 = icmp sgt i32 %37, -1, !dbg !3842
  br i1 %38, label %39, label %89, !dbg !3840

39:                                               ; preds = %32, %36
  %40 = phi i32 [ %37, %36 ], [ %35, %32 ]
  br label %66, !dbg !3843

41:                                               ; preds = %41, %11
  %42 = phi i64 [ 0, %11 ], [ %63, %41 ]
  %43 = phi i64 [ 0, %11 ], [ %64, %41 ]
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !3789, metadata !DIExpression()), !dbg !3810
  %44 = getelementptr inbounds i8, ptr %1, i64 %42, !dbg !3813
  %45 = load i8, ptr %44, align 1, !dbg !3813, !tbaa !922
  tail call void @llvm.dbg.value(metadata i8 %45, metadata !3791, metadata !DIExpression()), !dbg !3814
  %46 = zext i8 %45 to i64, !dbg !3815
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !3816, metadata !DIExpression()), !dbg !3824
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3822, metadata !DIExpression()), !dbg !3824
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3823, metadata !DIExpression()), !dbg !3824
  %47 = and i64 %46, 63, !dbg !3826
  %48 = shl nuw i64 1, %47, !dbg !3827
  %49 = lshr i64 %46, 6, !dbg !3828
  %50 = getelementptr inbounds i64, ptr %5, i64 %49, !dbg !3829
  %51 = load i64, ptr %50, align 8, !dbg !3830, !tbaa !1415
  %52 = or i64 %48, %51, !dbg !3830
  store i64 %52, ptr %50, align 8, !dbg !3830, !tbaa !1415
  %53 = or disjoint i64 %42, 1, !dbg !3844
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !3789, metadata !DIExpression()), !dbg !3810
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !3789, metadata !DIExpression()), !dbg !3810
  %54 = getelementptr inbounds i8, ptr %1, i64 %53, !dbg !3813
  %55 = load i8, ptr %54, align 1, !dbg !3813, !tbaa !922
  tail call void @llvm.dbg.value(metadata i8 %55, metadata !3791, metadata !DIExpression()), !dbg !3814
  %56 = zext i8 %55 to i64, !dbg !3815
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !3816, metadata !DIExpression()), !dbg !3824
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3822, metadata !DIExpression()), !dbg !3824
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3823, metadata !DIExpression()), !dbg !3824
  %57 = and i64 %56, 63, !dbg !3826
  %58 = shl nuw i64 1, %57, !dbg !3827
  %59 = lshr i64 %56, 6, !dbg !3828
  %60 = getelementptr inbounds i64, ptr %5, i64 %59, !dbg !3829
  %61 = load i64, ptr %60, align 8, !dbg !3830, !tbaa !1415
  %62 = or i64 %58, %61, !dbg !3830
  store i64 %62, ptr %60, align 8, !dbg !3830, !tbaa !1415
  %63 = add nuw nsw i64 %42, 2, !dbg !3844
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !3789, metadata !DIExpression()), !dbg !3810
  %64 = add i64 %43, 2, !dbg !3812
  %65 = icmp eq i64 %64, %12, !dbg !3812
  br i1 %65, label %13, label %41, !dbg !3812, !llvm.loop !3845

66:                                               ; preds = %39, %86
  %67 = phi i32 [ %87, %86 ], [ %40, %39 ]
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !3794, metadata !DIExpression()), !dbg !3799
  %68 = zext nneg i32 %67 to i64
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !3847, metadata !DIExpression()), !dbg !3855
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3854, metadata !DIExpression()), !dbg !3855
  %69 = lshr i64 %68, 6, !dbg !3857
  %70 = getelementptr inbounds i64, ptr %5, i64 %69, !dbg !3858
  %71 = load i64, ptr %70, align 8, !dbg !3858, !tbaa !1415
  %72 = and i64 %68, 63, !dbg !3859
  %73 = shl nuw i64 1, %72, !dbg !3858
  %74 = and i64 %71, %73, !dbg !3858
  %75 = icmp eq i64 %74, 0, !dbg !3858
  br i1 %75, label %90, label %76, !dbg !3843

76:                                               ; preds = %66
  call void @llvm.dbg.value(metadata ptr %0, metadata !3836, metadata !DIExpression()), !dbg !3860
  %77 = load ptr, ptr %27, align 8, !dbg !3862, !tbaa !2274
  %78 = load ptr, ptr %29, align 8, !dbg !3862, !tbaa !2272
  %79 = icmp ult ptr %77, %78, !dbg !3862
  br i1 %79, label %82, label %80, !dbg !3862, !prof !1793

80:                                               ; preds = %76
  %81 = tail call i32 @__uflow(ptr noundef nonnull %0) #40, !dbg !3862
  br label %86, !dbg !3862

82:                                               ; preds = %76
  %83 = getelementptr inbounds i8, ptr %77, i64 1, !dbg !3862
  store ptr %83, ptr %27, align 8, !dbg !3862, !tbaa !2274
  %84 = load i8, ptr %77, align 1, !dbg !3862, !tbaa !922
  %85 = zext i8 %84 to i32, !dbg !3862
  br label %86, !dbg !3862

86:                                               ; preds = %80, %82
  %87 = phi i32 [ %81, %80 ], [ %85, %82 ], !dbg !3862
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !3794, metadata !DIExpression()), !dbg !3799
  %88 = icmp sgt i32 %87, -1, !dbg !3842
  br i1 %88, label %66, label %89, !dbg !3840, !llvm.loop !3863

89:                                               ; preds = %86, %36
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !3795, metadata !DIExpression()), !dbg !3799
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #40, !dbg !3865
  call void @llvm.dbg.assign(metadata i64 poison, metadata !3796, metadata !DIExpression(), metadata !3866, metadata ptr %6, metadata !DIExpression()), !dbg !3799
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3797, metadata !DIExpression()), !dbg !3799
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !3794, metadata !DIExpression()), !dbg !3799
  br label %133, !dbg !3867

90:                                               ; preds = %66
  %91 = getelementptr inbounds %struct.tokenbuffer, ptr %3, i64 0, i32 1, !dbg !3872
  %92 = load ptr, ptr %91, align 8, !dbg !3872, !tbaa !1176
  tail call void @llvm.dbg.value(metadata ptr %92, metadata !3795, metadata !DIExpression()), !dbg !3799
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #40, !dbg !3865
  %93 = load i64, ptr %3, align 8, !dbg !3873, !tbaa !3874
  store i64 %93, ptr %6, align 8, !dbg !3875, !tbaa !1415, !DIAssignID !3866
  call void @llvm.dbg.assign(metadata i64 %93, metadata !3796, metadata !DIExpression(), metadata !3866, metadata ptr %6, metadata !DIExpression()), !dbg !3799
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3797, metadata !DIExpression()), !dbg !3799
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !3794, metadata !DIExpression()), !dbg !3799
  br label %94, !dbg !3876

94:                                               ; preds = %127, %90
  %95 = phi i1 [ %129, %127 ], [ false, %90 ]
  %96 = phi i64 [ %116, %127 ], [ 0, %90 ]
  %97 = phi ptr [ %104, %127 ], [ %92, %90 ]
  %98 = phi i32 [ %128, %127 ], [ %67, %90 ]
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !3797, metadata !DIExpression()), !dbg !3799
  tail call void @llvm.dbg.value(metadata ptr %97, metadata !3795, metadata !DIExpression()), !dbg !3799
  tail call void @llvm.dbg.value(metadata i32 %98, metadata !3794, metadata !DIExpression()), !dbg !3799
  %99 = load i64, ptr %6, align 8, !dbg !3877, !tbaa !1415
  %100 = icmp eq i64 %96, %99, !dbg !3879
  br i1 %100, label %101, label %103, !dbg !3880

101:                                              ; preds = %94
  %102 = call nonnull ptr @xpalloc(ptr noundef %97, ptr noundef nonnull %6, i64 noundef 1, i64 noundef -1, i64 noundef 1) #40, !dbg !3881
  tail call void @llvm.dbg.value(metadata ptr %102, metadata !3795, metadata !DIExpression()), !dbg !3799
  br label %103, !dbg !3882

103:                                              ; preds = %101, %94
  %104 = phi ptr [ %102, %101 ], [ %97, %94 ], !dbg !3799
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !3795, metadata !DIExpression()), !dbg !3799
  br i1 %95, label %130, label %105, !dbg !3883

105:                                              ; preds = %103
  %106 = zext nneg i32 %98 to i64
  tail call void @llvm.dbg.value(metadata i64 %106, metadata !3847, metadata !DIExpression()), !dbg !3884
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3854, metadata !DIExpression()), !dbg !3884
  %107 = lshr i64 %106, 6, !dbg !3887
  %108 = getelementptr inbounds i64, ptr %5, i64 %107, !dbg !3888
  %109 = load i64, ptr %108, align 8, !dbg !3888, !tbaa !1415
  %110 = and i64 %106, 63, !dbg !3889
  %111 = shl nuw i64 1, %110, !dbg !3888
  %112 = and i64 %109, %111, !dbg !3888
  %113 = icmp eq i64 %112, 0, !dbg !3888
  br i1 %113, label %114, label %130, !dbg !3890

114:                                              ; preds = %105
  %115 = trunc i32 %98 to i8, !dbg !3891
  %116 = add nuw nsw i64 %96, 1, !dbg !3892
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !3797, metadata !DIExpression()), !dbg !3799
  %117 = getelementptr inbounds i8, ptr %104, i64 %96, !dbg !3893
  store i8 %115, ptr %117, align 1, !dbg !3894, !tbaa !922
  call void @llvm.dbg.value(metadata ptr %0, metadata !3836, metadata !DIExpression()), !dbg !3895
  %118 = load ptr, ptr %27, align 8, !dbg !3897, !tbaa !2274
  %119 = load ptr, ptr %29, align 8, !dbg !3897, !tbaa !2272
  %120 = icmp ult ptr %118, %119, !dbg !3897
  br i1 %120, label %123, label %121, !dbg !3897, !prof !1793

121:                                              ; preds = %114
  %122 = call i32 @__uflow(ptr noundef nonnull %0) #40, !dbg !3897
  br label %127, !dbg !3897

123:                                              ; preds = %114
  %124 = getelementptr inbounds i8, ptr %118, i64 1, !dbg !3897
  store ptr %124, ptr %27, align 8, !dbg !3897, !tbaa !2274
  %125 = load i8, ptr %118, align 1, !dbg !3897, !tbaa !922
  %126 = zext i8 %125 to i32, !dbg !3897
  br label %127, !dbg !3897

127:                                              ; preds = %121, %123
  %128 = phi i32 [ %122, %121 ], [ %126, %123 ], !dbg !3897
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !3797, metadata !DIExpression()), !dbg !3799
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !3795, metadata !DIExpression()), !dbg !3799
  tail call void @llvm.dbg.value(metadata i32 %128, metadata !3794, metadata !DIExpression()), !dbg !3799
  %129 = icmp slt i32 %128, 0, !dbg !3898
  br label %94

130:                                              ; preds = %105, %103
  %131 = getelementptr inbounds i8, ptr %104, i64 %96, !dbg !3899
  store i8 0, ptr %131, align 1, !dbg !3899, !tbaa !922
  store ptr %104, ptr %91, align 8, !dbg !3900, !tbaa !1176
  %132 = load i64, ptr %6, align 8, !dbg !3901, !tbaa !1415
  store i64 %132, ptr %3, align 8, !dbg !3902, !tbaa !3874
  br label %133, !dbg !3903

133:                                              ; preds = %89, %130
  %134 = phi i64 [ %96, %130 ], [ -1, %89 ], !dbg !3799
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #40, !dbg !3904
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !3904
  ret i64 %134, !dbg !3904
}

declare !dbg !3905 i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @readtokens(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, ptr nocapture noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #12 !dbg !3906 {
  %7 = alloca i64, align 8, !DIAssignID !3929
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3918, metadata !DIExpression(), metadata !3929, metadata ptr %7, metadata !DIExpression()), !dbg !3930
  %8 = alloca %struct.tokenbuffer, align 8, !DIAssignID !3931
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3921, metadata !DIExpression(), metadata !3931, metadata ptr %8, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3912, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3913, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3914, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3915, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3916, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3917, metadata !DIExpression()), !dbg !3930
  %9 = icmp eq i64 %1, 0, !dbg !3932
  %10 = add i64 %1, 1, !dbg !3934
  %11 = select i1 %9, i64 64, i64 %10, !dbg !3934
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3913, metadata !DIExpression()), !dbg !3930
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #40, !dbg !3935
  store i64 %11, ptr %7, align 8, !dbg !3936, !tbaa !1415, !DIAssignID !3937
  call void @llvm.dbg.assign(metadata i64 %11, metadata !3918, metadata !DIExpression(), metadata !3937, metadata ptr %7, metadata !DIExpression()), !dbg !3930
  %12 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %11, i64 noundef 8) #48, !dbg !3938
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !3919, metadata !DIExpression()), !dbg !3930
  %13 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %11, i64 noundef 8) #48, !dbg !3939
  tail call void @llvm.dbg.value(metadata ptr %13, metadata !3920, metadata !DIExpression()), !dbg !3930
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #40, !dbg !3940
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3922, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata ptr %8, metadata !3740, metadata !DIExpression()), !dbg !3941
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !dbg !3943, !DIAssignID !3944
  call void @llvm.dbg.assign(metadata i8 0, metadata !3921, metadata !DIExpression(), metadata !3944, metadata ptr %8, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3923, metadata !DIExpression()), !dbg !3930
  %14 = getelementptr inbounds %struct.tokenbuffer, ptr %8, i64 0, i32 1
  br label %15, !dbg !3945

15:                                               ; preds = %31, %6
  %16 = phi ptr [ %13, %6 ], [ %27, %31 ], !dbg !3930
  %17 = phi i64 [ 0, %6 ], [ %36, %31 ], !dbg !3946
  %18 = phi ptr [ %12, %6 ], [ %28, %31 ], !dbg !3930
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !3919, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !3923, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !3920, metadata !DIExpression()), !dbg !3930
  %19 = call i64 @readtoken(ptr noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %8), !dbg !3947
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !3924, metadata !DIExpression()), !dbg !3948
  %20 = load i64, ptr %7, align 8, !dbg !3949, !tbaa !1415
  %21 = icmp slt i64 %17, %20, !dbg !3951
  br i1 %21, label %26, label %22, !dbg !3952

22:                                               ; preds = %15
  %23 = call nonnull ptr @xpalloc(ptr noundef %18, ptr noundef nonnull %7, i64 noundef 1, i64 noundef -1, i64 noundef 8) #40, !dbg !3953
  tail call void @llvm.dbg.value(metadata ptr %23, metadata !3919, metadata !DIExpression()), !dbg !3930
  %24 = load i64, ptr %7, align 8, !dbg !3955, !tbaa !1415
  %25 = call ptr @xreallocarray(ptr noundef nonnull %16, i64 noundef %24, i64 noundef 8) #49, !dbg !3956
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !3920, metadata !DIExpression()), !dbg !3930
  br label %26, !dbg !3957

26:                                               ; preds = %22, %15
  %27 = phi ptr [ %25, %22 ], [ %16, %15 ], !dbg !3930
  %28 = phi ptr [ %23, %22 ], [ %18, %15 ], !dbg !3930
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !3919, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !3920, metadata !DIExpression()), !dbg !3930
  %29 = icmp eq i64 %19, -1, !dbg !3958
  %30 = getelementptr inbounds i64, ptr %27, i64 %17, !dbg !3948
  br i1 %29, label %37, label %31, !dbg !3960

31:                                               ; preds = %26
  %32 = add nuw i64 %19, 1, !dbg !3961
  %33 = call noalias nonnull ptr @xnmalloc(i64 noundef %32, i64 noundef 1) #48, !dbg !3962
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3928, metadata !DIExpression()), !dbg !3948
  store i64 %19, ptr %30, align 8, !dbg !3963, !tbaa !1415
  %34 = load ptr, ptr %14, align 8, !dbg !3964, !tbaa !1176
  call void @llvm.dbg.value(metadata ptr %33, metadata !3965, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata ptr %34, metadata !3971, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i64 %32, metadata !3972, metadata !DIExpression()), !dbg !3973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %33, ptr noundef nonnull align 1 dereferenceable(1) %34, i64 noundef %32, i1 noundef false) #40, !dbg !3975
  %35 = getelementptr inbounds ptr, ptr %28, i64 %17, !dbg !3976
  store ptr %33, ptr %35, align 8, !dbg !3977, !tbaa !849
  %36 = add nuw nsw i64 %17, 1, !dbg !3978
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3923, metadata !DIExpression()), !dbg !3930
  br label %15

37:                                               ; preds = %26
  %38 = getelementptr inbounds ptr, ptr %28, i64 %17, !dbg !3979
  store ptr null, ptr %38, align 8, !dbg !3981, !tbaa !849
  store i64 0, ptr %30, align 8, !dbg !3982, !tbaa !1415
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !3923, metadata !DIExpression()), !dbg !3930
  %39 = load ptr, ptr %14, align 8, !dbg !3983, !tbaa !1176
  call void @free(ptr noundef %39) #40, !dbg !3984
  store ptr %28, ptr %4, align 8, !dbg !3985, !tbaa !849
  %40 = icmp eq ptr %5, null, !dbg !3986
  br i1 %40, label %42, label %41, !dbg !3988

41:                                               ; preds = %37
  store ptr %27, ptr %5, align 8, !dbg !3989, !tbaa !849
  br label %43, !dbg !3990

42:                                               ; preds = %37
  call void @free(ptr noundef nonnull %27) #40, !dbg !3991
  br label %43

43:                                               ; preds = %42, %41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #40, !dbg !3992
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #40, !dbg !3992
  ret i64 %17, !dbg !3993
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3994 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4033, metadata !DIExpression()), !dbg !4039
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4034, metadata !DIExpression()), !dbg !4039
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4035, metadata !DIExpression()), !dbg !4039
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4036, metadata !DIExpression()), !dbg !4039
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4037, metadata !DIExpression()), !dbg !4039
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4038, metadata !DIExpression()), !dbg !4039
  %7 = icmp eq ptr %1, null, !dbg !4040
  br i1 %7, label %10, label %8, !dbg !4042

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.99, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !4043
  br label %12, !dbg !4043

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.100, ptr noundef %2, ptr noundef %3) #40, !dbg !4044
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.3.102, i32 noundef 5) #40, !dbg !4045
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !4045
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.103, ptr noundef %0), !dbg !4046
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.5.104, i32 noundef 5) #40, !dbg !4047
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.105) #40, !dbg !4047
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.103, ptr noundef %0), !dbg !4048
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
  ], !dbg !4049

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.7.106, i32 noundef 5) #40, !dbg !4050
  %21 = load ptr, ptr %4, align 8, !dbg !4050, !tbaa !849
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !4050
  br label %147, !dbg !4052

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.8.107, i32 noundef 5) #40, !dbg !4053
  %25 = load ptr, ptr %4, align 8, !dbg !4053, !tbaa !849
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4053
  %27 = load ptr, ptr %26, align 8, !dbg !4053, !tbaa !849
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !4053
  br label %147, !dbg !4054

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.9.108, i32 noundef 5) #40, !dbg !4055
  %31 = load ptr, ptr %4, align 8, !dbg !4055, !tbaa !849
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4055
  %33 = load ptr, ptr %32, align 8, !dbg !4055, !tbaa !849
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4055
  %35 = load ptr, ptr %34, align 8, !dbg !4055, !tbaa !849
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !4055
  br label %147, !dbg !4056

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.10.109, i32 noundef 5) #40, !dbg !4057
  %39 = load ptr, ptr %4, align 8, !dbg !4057, !tbaa !849
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4057
  %41 = load ptr, ptr %40, align 8, !dbg !4057, !tbaa !849
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4057
  %43 = load ptr, ptr %42, align 8, !dbg !4057, !tbaa !849
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4057
  %45 = load ptr, ptr %44, align 8, !dbg !4057, !tbaa !849
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !4057
  br label %147, !dbg !4058

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.11.110, i32 noundef 5) #40, !dbg !4059
  %49 = load ptr, ptr %4, align 8, !dbg !4059, !tbaa !849
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4059
  %51 = load ptr, ptr %50, align 8, !dbg !4059, !tbaa !849
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4059
  %53 = load ptr, ptr %52, align 8, !dbg !4059, !tbaa !849
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4059
  %55 = load ptr, ptr %54, align 8, !dbg !4059, !tbaa !849
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4059
  %57 = load ptr, ptr %56, align 8, !dbg !4059, !tbaa !849
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !4059
  br label %147, !dbg !4060

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.12.111, i32 noundef 5) #40, !dbg !4061
  %61 = load ptr, ptr %4, align 8, !dbg !4061, !tbaa !849
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4061
  %63 = load ptr, ptr %62, align 8, !dbg !4061, !tbaa !849
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4061
  %65 = load ptr, ptr %64, align 8, !dbg !4061, !tbaa !849
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4061
  %67 = load ptr, ptr %66, align 8, !dbg !4061, !tbaa !849
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4061
  %69 = load ptr, ptr %68, align 8, !dbg !4061, !tbaa !849
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4061
  %71 = load ptr, ptr %70, align 8, !dbg !4061, !tbaa !849
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !4061
  br label %147, !dbg !4062

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.13.112, i32 noundef 5) #40, !dbg !4063
  %75 = load ptr, ptr %4, align 8, !dbg !4063, !tbaa !849
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4063
  %77 = load ptr, ptr %76, align 8, !dbg !4063, !tbaa !849
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4063
  %79 = load ptr, ptr %78, align 8, !dbg !4063, !tbaa !849
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4063
  %81 = load ptr, ptr %80, align 8, !dbg !4063, !tbaa !849
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4063
  %83 = load ptr, ptr %82, align 8, !dbg !4063, !tbaa !849
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4063
  %85 = load ptr, ptr %84, align 8, !dbg !4063, !tbaa !849
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4063
  %87 = load ptr, ptr %86, align 8, !dbg !4063, !tbaa !849
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !4063
  br label %147, !dbg !4064

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.14.113, i32 noundef 5) #40, !dbg !4065
  %91 = load ptr, ptr %4, align 8, !dbg !4065, !tbaa !849
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4065
  %93 = load ptr, ptr %92, align 8, !dbg !4065, !tbaa !849
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4065
  %95 = load ptr, ptr %94, align 8, !dbg !4065, !tbaa !849
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4065
  %97 = load ptr, ptr %96, align 8, !dbg !4065, !tbaa !849
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4065
  %99 = load ptr, ptr %98, align 8, !dbg !4065, !tbaa !849
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4065
  %101 = load ptr, ptr %100, align 8, !dbg !4065, !tbaa !849
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4065
  %103 = load ptr, ptr %102, align 8, !dbg !4065, !tbaa !849
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4065
  %105 = load ptr, ptr %104, align 8, !dbg !4065, !tbaa !849
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !4065
  br label %147, !dbg !4066

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.15.114, i32 noundef 5) #40, !dbg !4067
  %109 = load ptr, ptr %4, align 8, !dbg !4067, !tbaa !849
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4067
  %111 = load ptr, ptr %110, align 8, !dbg !4067, !tbaa !849
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4067
  %113 = load ptr, ptr %112, align 8, !dbg !4067, !tbaa !849
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4067
  %115 = load ptr, ptr %114, align 8, !dbg !4067, !tbaa !849
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4067
  %117 = load ptr, ptr %116, align 8, !dbg !4067, !tbaa !849
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4067
  %119 = load ptr, ptr %118, align 8, !dbg !4067, !tbaa !849
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4067
  %121 = load ptr, ptr %120, align 8, !dbg !4067, !tbaa !849
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4067
  %123 = load ptr, ptr %122, align 8, !dbg !4067, !tbaa !849
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4067
  %125 = load ptr, ptr %124, align 8, !dbg !4067, !tbaa !849
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !4067
  br label %147, !dbg !4068

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.16.115, i32 noundef 5) #40, !dbg !4069
  %129 = load ptr, ptr %4, align 8, !dbg !4069, !tbaa !849
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4069
  %131 = load ptr, ptr %130, align 8, !dbg !4069, !tbaa !849
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4069
  %133 = load ptr, ptr %132, align 8, !dbg !4069, !tbaa !849
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4069
  %135 = load ptr, ptr %134, align 8, !dbg !4069, !tbaa !849
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4069
  %137 = load ptr, ptr %136, align 8, !dbg !4069, !tbaa !849
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4069
  %139 = load ptr, ptr %138, align 8, !dbg !4069, !tbaa !849
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4069
  %141 = load ptr, ptr %140, align 8, !dbg !4069, !tbaa !849
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4069
  %143 = load ptr, ptr %142, align 8, !dbg !4069, !tbaa !849
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4069
  %145 = load ptr, ptr %144, align 8, !dbg !4069, !tbaa !849
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !4069
  br label %147, !dbg !4070

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4071
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #12 !dbg !4072 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4076, metadata !DIExpression()), !dbg !4082
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4077, metadata !DIExpression()), !dbg !4082
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4078, metadata !DIExpression()), !dbg !4082
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4079, metadata !DIExpression()), !dbg !4082
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4080, metadata !DIExpression()), !dbg !4082
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4081, metadata !DIExpression()), !dbg !4082
  br label %6, !dbg !4083

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4085
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4081, metadata !DIExpression()), !dbg !4082
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4086
  %9 = load ptr, ptr %8, align 8, !dbg !4086, !tbaa !849
  %10 = icmp eq ptr %9, null, !dbg !4088
  %11 = add i64 %7, 1, !dbg !4089
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4081, metadata !DIExpression()), !dbg !4082
  br i1 %10, label %12, label %6, !dbg !4088, !llvm.loop !4090

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4092
  ret void, !dbg !4093
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #12 !dbg !4094 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !4113
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4111, metadata !DIExpression(), metadata !4113, metadata ptr %6, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4105, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4106, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4107, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4108, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4109, metadata !DIExpression()), !dbg !4114
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !4115
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4110, metadata !DIExpression()), !dbg !4114
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4110, metadata !DIExpression()), !dbg !4114
  %10 = icmp ult i32 %9, 41, !dbg !4116
  br i1 %10, label %11, label %16, !dbg !4116

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4116
  %13 = zext nneg i32 %9 to i64, !dbg !4116
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4116
  %15 = add nuw nsw i32 %9, 8, !dbg !4116
  store i32 %15, ptr %4, align 8, !dbg !4116
  br label %19, !dbg !4116

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4116
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4116
  store ptr %18, ptr %7, align 8, !dbg !4116
  br label %19, !dbg !4116

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4116
  %22 = load ptr, ptr %21, align 8, !dbg !4116
  store ptr %22, ptr %6, align 16, !dbg !4119, !tbaa !849
  %23 = icmp eq ptr %22, null, !dbg !4120
  br i1 %23, label %128, label %24, !dbg !4121

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4110, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4110, metadata !DIExpression()), !dbg !4114
  %25 = icmp ult i32 %20, 41, !dbg !4116
  br i1 %25, label %29, label %26, !dbg !4116

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4116
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4116
  store ptr %28, ptr %7, align 8, !dbg !4116
  br label %34, !dbg !4116

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4116
  %31 = zext nneg i32 %20 to i64, !dbg !4116
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4116
  %33 = add nuw nsw i32 %20, 8, !dbg !4116
  store i32 %33, ptr %4, align 8, !dbg !4116
  br label %34, !dbg !4116

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4116
  %37 = load ptr, ptr %36, align 8, !dbg !4116
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4122
  store ptr %37, ptr %38, align 8, !dbg !4119, !tbaa !849
  %39 = icmp eq ptr %37, null, !dbg !4120
  br i1 %39, label %128, label %40, !dbg !4121

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4110, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4110, metadata !DIExpression()), !dbg !4114
  %41 = icmp ult i32 %35, 41, !dbg !4116
  br i1 %41, label %45, label %42, !dbg !4116

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4116
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4116
  store ptr %44, ptr %7, align 8, !dbg !4116
  br label %50, !dbg !4116

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4116
  %47 = zext nneg i32 %35 to i64, !dbg !4116
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4116
  %49 = add nuw nsw i32 %35, 8, !dbg !4116
  store i32 %49, ptr %4, align 8, !dbg !4116
  br label %50, !dbg !4116

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4116
  %53 = load ptr, ptr %52, align 8, !dbg !4116
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4122
  store ptr %53, ptr %54, align 16, !dbg !4119, !tbaa !849
  %55 = icmp eq ptr %53, null, !dbg !4120
  br i1 %55, label %128, label %56, !dbg !4121

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4110, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4110, metadata !DIExpression()), !dbg !4114
  %57 = icmp ult i32 %51, 41, !dbg !4116
  br i1 %57, label %61, label %58, !dbg !4116

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4116
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4116
  store ptr %60, ptr %7, align 8, !dbg !4116
  br label %66, !dbg !4116

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4116
  %63 = zext nneg i32 %51 to i64, !dbg !4116
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4116
  %65 = add nuw nsw i32 %51, 8, !dbg !4116
  store i32 %65, ptr %4, align 8, !dbg !4116
  br label %66, !dbg !4116

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4116
  %69 = load ptr, ptr %68, align 8, !dbg !4116
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4122
  store ptr %69, ptr %70, align 8, !dbg !4119, !tbaa !849
  %71 = icmp eq ptr %69, null, !dbg !4120
  br i1 %71, label %128, label %72, !dbg !4121

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4110, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4110, metadata !DIExpression()), !dbg !4114
  %73 = icmp ult i32 %67, 41, !dbg !4116
  br i1 %73, label %77, label %74, !dbg !4116

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4116
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4116
  store ptr %76, ptr %7, align 8, !dbg !4116
  br label %82, !dbg !4116

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4116
  %79 = zext nneg i32 %67 to i64, !dbg !4116
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4116
  %81 = add nuw nsw i32 %67, 8, !dbg !4116
  store i32 %81, ptr %4, align 8, !dbg !4116
  br label %82, !dbg !4116

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4116
  %85 = load ptr, ptr %84, align 8, !dbg !4116
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4122
  store ptr %85, ptr %86, align 16, !dbg !4119, !tbaa !849
  %87 = icmp eq ptr %85, null, !dbg !4120
  br i1 %87, label %128, label %88, !dbg !4121

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4110, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4110, metadata !DIExpression()), !dbg !4114
  %89 = icmp ult i32 %83, 41, !dbg !4116
  br i1 %89, label %93, label %90, !dbg !4116

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4116
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4116
  store ptr %92, ptr %7, align 8, !dbg !4116
  br label %98, !dbg !4116

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4116
  %95 = zext nneg i32 %83 to i64, !dbg !4116
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4116
  %97 = add nuw nsw i32 %83, 8, !dbg !4116
  store i32 %97, ptr %4, align 8, !dbg !4116
  br label %98, !dbg !4116

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4116
  %100 = load ptr, ptr %99, align 8, !dbg !4116
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4122
  store ptr %100, ptr %101, align 8, !dbg !4119, !tbaa !849
  %102 = icmp eq ptr %100, null, !dbg !4120
  br i1 %102, label %128, label %103, !dbg !4121

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4110, metadata !DIExpression()), !dbg !4114
  %104 = load ptr, ptr %7, align 8, !dbg !4116
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4116
  store ptr %105, ptr %7, align 8, !dbg !4116
  %106 = load ptr, ptr %104, align 8, !dbg !4116
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4122
  store ptr %106, ptr %107, align 16, !dbg !4119, !tbaa !849
  %108 = icmp eq ptr %106, null, !dbg !4120
  br i1 %108, label %128, label %109, !dbg !4121

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4110, metadata !DIExpression()), !dbg !4114
  %110 = load ptr, ptr %7, align 8, !dbg !4116
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4116
  store ptr %111, ptr %7, align 8, !dbg !4116
  %112 = load ptr, ptr %110, align 8, !dbg !4116
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4122
  store ptr %112, ptr %113, align 8, !dbg !4119, !tbaa !849
  %114 = icmp eq ptr %112, null, !dbg !4120
  br i1 %114, label %128, label %115, !dbg !4121

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4110, metadata !DIExpression()), !dbg !4114
  %116 = load ptr, ptr %7, align 8, !dbg !4116
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4116
  store ptr %117, ptr %7, align 8, !dbg !4116
  %118 = load ptr, ptr %116, align 8, !dbg !4116
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4122
  store ptr %118, ptr %119, align 16, !dbg !4119, !tbaa !849
  %120 = icmp eq ptr %118, null, !dbg !4120
  br i1 %120, label %128, label %121, !dbg !4121

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4110, metadata !DIExpression()), !dbg !4114
  %122 = load ptr, ptr %7, align 8, !dbg !4116
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4116
  store ptr %123, ptr %7, align 8, !dbg !4116
  %124 = load ptr, ptr %122, align 8, !dbg !4116
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4122
  store ptr %124, ptr %125, align 8, !dbg !4119, !tbaa !849
  %126 = icmp eq ptr %124, null, !dbg !4120
  %127 = select i1 %126, i64 9, i64 10, !dbg !4121
  br label %128, !dbg !4121

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4123
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4124
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !4125
  ret void, !dbg !4125
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #12 !dbg !4126 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4139
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4134, metadata !DIExpression(), metadata !4139, metadata ptr %5, metadata !DIExpression()), !dbg !4140
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4130, metadata !DIExpression()), !dbg !4140
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4131, metadata !DIExpression()), !dbg !4140
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4132, metadata !DIExpression()), !dbg !4140
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4133, metadata !DIExpression()), !dbg !4140
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #40, !dbg !4141
  call void @llvm.va_start(ptr nonnull %5), !dbg !4142
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4143
  call void @llvm.va_end(ptr nonnull %5), !dbg !4144
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #40, !dbg !4145
  ret void, !dbg !4145
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !4146 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4147, !tbaa !849
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.103, ptr noundef %1), !dbg !4147
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.17.120, i32 noundef 5) #40, !dbg !4148
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.121) #40, !dbg !4148
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.19.122, i32 noundef 5) #40, !dbg !4149
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.123, ptr noundef nonnull @.str.21.124) #40, !dbg !4149
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !4150
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #40, !dbg !4150
  ret void, !dbg !4151
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4152 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4157, metadata !DIExpression()), !dbg !4160
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4158, metadata !DIExpression()), !dbg !4160
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4159, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.value(metadata ptr %0, metadata !4161, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i64 %1, metadata !4164, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i64 %2, metadata !4165, metadata !DIExpression()), !dbg !4166
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4168
  call void @llvm.dbg.value(metadata ptr %4, metadata !4169, metadata !DIExpression()), !dbg !4174
  %5 = icmp eq ptr %4, null, !dbg !4176
  br i1 %5, label %6, label %7, !dbg !4178

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4179
  unreachable, !dbg !4179

7:                                                ; preds = %3
  ret ptr %4, !dbg !4180
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4162 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4161, metadata !DIExpression()), !dbg !4181
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4164, metadata !DIExpression()), !dbg !4181
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4165, metadata !DIExpression()), !dbg !4181
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4182
  call void @llvm.dbg.value(metadata ptr %4, metadata !4169, metadata !DIExpression()), !dbg !4183
  %5 = icmp eq ptr %4, null, !dbg !4185
  br i1 %5, label %6, label %7, !dbg !4186

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4187
  unreachable, !dbg !4187

7:                                                ; preds = %3
  ret ptr %4, !dbg !4188
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4189 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4193, metadata !DIExpression()), !dbg !4194
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4195
  call void @llvm.dbg.value(metadata ptr %2, metadata !4169, metadata !DIExpression()), !dbg !4196
  %3 = icmp eq ptr %2, null, !dbg !4198
  br i1 %3, label %4, label %5, !dbg !4199

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4200
  unreachable, !dbg !4200

5:                                                ; preds = %1
  ret ptr %2, !dbg !4201
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4202 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4203 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4207, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata i64 %0, metadata !4209, metadata !DIExpression()), !dbg !4213
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4215
  call void @llvm.dbg.value(metadata ptr %2, metadata !4169, metadata !DIExpression()), !dbg !4216
  %3 = icmp eq ptr %2, null, !dbg !4218
  br i1 %3, label %4, label %5, !dbg !4219

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4220
  unreachable, !dbg !4220

5:                                                ; preds = %1
  ret ptr %2, !dbg !4221
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4222 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4226, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i64 %0, metadata !4193, metadata !DIExpression()), !dbg !4228
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4230
  call void @llvm.dbg.value(metadata ptr %2, metadata !4169, metadata !DIExpression()), !dbg !4231
  %3 = icmp eq ptr %2, null, !dbg !4233
  br i1 %3, label %4, label %5, !dbg !4234

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4235
  unreachable, !dbg !4235

5:                                                ; preds = %1
  ret ptr %2, !dbg !4236
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4237 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4241, metadata !DIExpression()), !dbg !4243
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4242, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata ptr %0, metadata !4244, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata i64 %1, metadata !4248, metadata !DIExpression()), !dbg !4249
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4251
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4252
  call void @llvm.dbg.value(metadata ptr %4, metadata !4169, metadata !DIExpression()), !dbg !4253
  %5 = icmp eq ptr %4, null, !dbg !4255
  br i1 %5, label %6, label %7, !dbg !4256

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4257
  unreachable, !dbg !4257

7:                                                ; preds = %2
  ret ptr %4, !dbg !4258
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4259 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4260 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4264, metadata !DIExpression()), !dbg !4266
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4265, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata ptr %0, metadata !4267, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i64 %1, metadata !4270, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata ptr %0, metadata !4244, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 %1, metadata !4248, metadata !DIExpression()), !dbg !4273
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4275
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4276
  call void @llvm.dbg.value(metadata ptr %4, metadata !4169, metadata !DIExpression()), !dbg !4277
  %5 = icmp eq ptr %4, null, !dbg !4279
  br i1 %5, label %6, label %7, !dbg !4280

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4281
  unreachable, !dbg !4281

7:                                                ; preds = %2
  ret ptr %4, !dbg !4282
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4283 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4287, metadata !DIExpression()), !dbg !4290
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4288, metadata !DIExpression()), !dbg !4290
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4289, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata ptr %0, metadata !4291, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata i64 %1, metadata !4294, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata i64 %2, metadata !4295, metadata !DIExpression()), !dbg !4296
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4298
  call void @llvm.dbg.value(metadata ptr %4, metadata !4169, metadata !DIExpression()), !dbg !4299
  %5 = icmp eq ptr %4, null, !dbg !4301
  br i1 %5, label %6, label %7, !dbg !4302

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4303
  unreachable, !dbg !4303

7:                                                ; preds = %3
  ret ptr %4, !dbg !4304
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4305 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4309, metadata !DIExpression()), !dbg !4311
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4310, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata ptr null, metadata !4161, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i64 %0, metadata !4164, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i64 %1, metadata !4165, metadata !DIExpression()), !dbg !4312
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4314
  call void @llvm.dbg.value(metadata ptr %3, metadata !4169, metadata !DIExpression()), !dbg !4315
  %4 = icmp eq ptr %3, null, !dbg !4317
  br i1 %4, label %5, label %6, !dbg !4318

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4319
  unreachable, !dbg !4319

6:                                                ; preds = %2
  ret ptr %3, !dbg !4320
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4321 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4325, metadata !DIExpression()), !dbg !4327
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4326, metadata !DIExpression()), !dbg !4327
  call void @llvm.dbg.value(metadata ptr null, metadata !4287, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64 %0, metadata !4288, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64 %1, metadata !4289, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata ptr null, metadata !4291, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i64 %0, metadata !4294, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i64 %1, metadata !4295, metadata !DIExpression()), !dbg !4330
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4332
  call void @llvm.dbg.value(metadata ptr %3, metadata !4169, metadata !DIExpression()), !dbg !4333
  %4 = icmp eq ptr %3, null, !dbg !4335
  br i1 %4, label %5, label %6, !dbg !4336

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4337
  unreachable, !dbg !4337

6:                                                ; preds = %2
  ret ptr %3, !dbg !4338
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #12 !dbg !4339 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4343, metadata !DIExpression()), !dbg !4345
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4344, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata ptr %0, metadata !790, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata ptr %1, metadata !791, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i64 1, metadata !792, metadata !DIExpression()), !dbg !4346
  %3 = load i64, ptr %1, align 8, !dbg !4348, !tbaa !1415
  call void @llvm.dbg.value(metadata i64 %3, metadata !793, metadata !DIExpression()), !dbg !4346
  %4 = icmp eq ptr %0, null, !dbg !4349
  br i1 %4, label %5, label %8, !dbg !4351

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4352
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4355
  br label %15, !dbg !4355

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4356
  %10 = add nuw i64 %9, 1, !dbg !4356
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4356
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4356
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4356
  call void @llvm.dbg.value(metadata i64 %13, metadata !793, metadata !DIExpression()), !dbg !4346
  br i1 %12, label %14, label %15, !dbg !4359

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4360
  unreachable, !dbg !4360

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4346
  call void @llvm.dbg.value(metadata i64 %16, metadata !793, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata ptr %0, metadata !4161, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata i64 %16, metadata !4164, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata i64 1, metadata !4165, metadata !DIExpression()), !dbg !4361
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4363
  call void @llvm.dbg.value(metadata ptr %17, metadata !4169, metadata !DIExpression()), !dbg !4364
  %18 = icmp eq ptr %17, null, !dbg !4366
  br i1 %18, label %19, label %20, !dbg !4367

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4368
  unreachable, !dbg !4368

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !790, metadata !DIExpression()), !dbg !4346
  store i64 %16, ptr %1, align 8, !dbg !4369, !tbaa !1415
  ret ptr %17, !dbg !4370
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !785 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !790, metadata !DIExpression()), !dbg !4371
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !791, metadata !DIExpression()), !dbg !4371
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !792, metadata !DIExpression()), !dbg !4371
  %4 = load i64, ptr %1, align 8, !dbg !4372, !tbaa !1415
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !793, metadata !DIExpression()), !dbg !4371
  %5 = icmp eq ptr %0, null, !dbg !4373
  br i1 %5, label %6, label %13, !dbg !4374

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4375
  br i1 %7, label %8, label %20, !dbg !4376

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4377
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !793, metadata !DIExpression()), !dbg !4371
  %10 = icmp ugt i64 %2, 128, !dbg !4379
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4380
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !793, metadata !DIExpression()), !dbg !4371
  br label %20, !dbg !4381

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4382
  %15 = add nuw i64 %14, 1, !dbg !4382
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4382
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4382
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4382
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !793, metadata !DIExpression()), !dbg !4371
  br i1 %17, label %19, label %20, !dbg !4383

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4384
  unreachable, !dbg !4384

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4371
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !793, metadata !DIExpression()), !dbg !4371
  call void @llvm.dbg.value(metadata ptr %0, metadata !4161, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata i64 %21, metadata !4164, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata i64 %2, metadata !4165, metadata !DIExpression()), !dbg !4385
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4387
  call void @llvm.dbg.value(metadata ptr %22, metadata !4169, metadata !DIExpression()), !dbg !4388
  %23 = icmp eq ptr %22, null, !dbg !4390
  br i1 %23, label %24, label %25, !dbg !4391

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4392
  unreachable, !dbg !4392

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !790, metadata !DIExpression()), !dbg !4371
  store i64 %21, ptr %1, align 8, !dbg !4393, !tbaa !1415
  ret ptr %22, !dbg !4394
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !797 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !806, metadata !DIExpression()), !dbg !4395
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !807, metadata !DIExpression()), !dbg !4395
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !808, metadata !DIExpression()), !dbg !4395
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !809, metadata !DIExpression()), !dbg !4395
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !810, metadata !DIExpression()), !dbg !4395
  %6 = load i64, ptr %1, align 8, !dbg !4396, !tbaa !1415
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !811, metadata !DIExpression()), !dbg !4395
  %7 = ashr i64 %6, 1, !dbg !4397
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4397
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4397
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4397
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !812, metadata !DIExpression()), !dbg !4395
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4399
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !812, metadata !DIExpression()), !dbg !4395
  %12 = icmp sgt i64 %3, -1, !dbg !4400
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4402
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4402
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !812, metadata !DIExpression()), !dbg !4395
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4403
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4403
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4403
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !813, metadata !DIExpression()), !dbg !4395
  %18 = icmp slt i64 %17, 128, !dbg !4403
  %19 = select i1 %18, i64 128, i64 0, !dbg !4403
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4403
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !814, metadata !DIExpression()), !dbg !4395
  %21 = icmp eq i64 %20, 0, !dbg !4404
  br i1 %21, label %26, label %22, !dbg !4406

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4407
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !812, metadata !DIExpression()), !dbg !4395
  %24 = srem i64 %20, %4, !dbg !4409
  %25 = sub nsw i64 %20, %24, !dbg !4410
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !813, metadata !DIExpression()), !dbg !4395
  br label %26, !dbg !4411

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4395
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4395
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !813, metadata !DIExpression()), !dbg !4395
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !812, metadata !DIExpression()), !dbg !4395
  %29 = icmp eq ptr %0, null, !dbg !4412
  br i1 %29, label %30, label %31, !dbg !4414

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4415, !tbaa !1415
  br label %31, !dbg !4416

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4417
  %33 = icmp slt i64 %32, %2, !dbg !4419
  br i1 %33, label %34, label %46, !dbg !4420

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4421
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4421
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4421
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !812, metadata !DIExpression()), !dbg !4395
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4422
  br i1 %40, label %45, label %41, !dbg !4422

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4423
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4423
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4423
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !813, metadata !DIExpression()), !dbg !4395
  br i1 %43, label %45, label %46, !dbg !4424

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #42, !dbg !4425
  unreachable, !dbg !4425

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4395
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4395
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !813, metadata !DIExpression()), !dbg !4395
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !812, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata ptr %0, metadata !4241, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i64 %48, metadata !4242, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata ptr %0, metadata !4244, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i64 %48, metadata !4248, metadata !DIExpression()), !dbg !4428
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4430
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #47, !dbg !4431
  call void @llvm.dbg.value(metadata ptr %50, metadata !4169, metadata !DIExpression()), !dbg !4432
  %51 = icmp eq ptr %50, null, !dbg !4434
  br i1 %51, label %52, label %53, !dbg !4435

52:                                               ; preds = %46
  tail call void @xalloc_die() #42, !dbg !4436
  unreachable, !dbg !4436

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !806, metadata !DIExpression()), !dbg !4395
  store i64 %47, ptr %1, align 8, !dbg !4437, !tbaa !1415
  ret ptr %50, !dbg !4438
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4439 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4441, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64 %0, metadata !4443, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.value(metadata i64 1, metadata !4446, metadata !DIExpression()), !dbg !4447
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4449
  call void @llvm.dbg.value(metadata ptr %2, metadata !4169, metadata !DIExpression()), !dbg !4450
  %3 = icmp eq ptr %2, null, !dbg !4452
  br i1 %3, label %4, label %5, !dbg !4453

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4454
  unreachable, !dbg !4454

5:                                                ; preds = %1
  ret ptr %2, !dbg !4455
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4456 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4444 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4443, metadata !DIExpression()), !dbg !4457
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4446, metadata !DIExpression()), !dbg !4457
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4458
  call void @llvm.dbg.value(metadata ptr %3, metadata !4169, metadata !DIExpression()), !dbg !4459
  %4 = icmp eq ptr %3, null, !dbg !4461
  br i1 %4, label %5, label %6, !dbg !4462

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4463
  unreachable, !dbg !4463

6:                                                ; preds = %2
  ret ptr %3, !dbg !4464
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4465 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4467, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i64 %0, metadata !4469, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i64 1, metadata !4472, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i64 %0, metadata !4475, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i64 1, metadata !4478, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i64 %0, metadata !4475, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i64 1, metadata !4478, metadata !DIExpression()), !dbg !4479
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4481
  call void @llvm.dbg.value(metadata ptr %2, metadata !4169, metadata !DIExpression()), !dbg !4482
  %3 = icmp eq ptr %2, null, !dbg !4484
  br i1 %3, label %4, label %5, !dbg !4485

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4486
  unreachable, !dbg !4486

5:                                                ; preds = %1
  ret ptr %2, !dbg !4487
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4470 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4469, metadata !DIExpression()), !dbg !4488
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4472, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i64 %0, metadata !4475, metadata !DIExpression()), !dbg !4489
  call void @llvm.dbg.value(metadata i64 %1, metadata !4478, metadata !DIExpression()), !dbg !4489
  call void @llvm.dbg.value(metadata i64 %0, metadata !4475, metadata !DIExpression()), !dbg !4489
  call void @llvm.dbg.value(metadata i64 %1, metadata !4478, metadata !DIExpression()), !dbg !4489
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4491
  call void @llvm.dbg.value(metadata ptr %3, metadata !4169, metadata !DIExpression()), !dbg !4492
  %4 = icmp eq ptr %3, null, !dbg !4494
  br i1 %4, label %5, label %6, !dbg !4495

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4496
  unreachable, !dbg !4496

6:                                                ; preds = %2
  ret ptr %3, !dbg !4497
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4498 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4502, metadata !DIExpression()), !dbg !4504
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4503, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i64 %1, metadata !4193, metadata !DIExpression()), !dbg !4505
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4507
  call void @llvm.dbg.value(metadata ptr %3, metadata !4169, metadata !DIExpression()), !dbg !4508
  %4 = icmp eq ptr %3, null, !dbg !4510
  br i1 %4, label %5, label %6, !dbg !4511

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4512
  unreachable, !dbg !4512

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4513, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata ptr %0, metadata !4516, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata i64 %1, metadata !4517, metadata !DIExpression()), !dbg !4518
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4520
  ret ptr %3, !dbg !4521
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4522 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4526, metadata !DIExpression()), !dbg !4528
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4527, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata i64 %1, metadata !4207, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata i64 %1, metadata !4209, metadata !DIExpression()), !dbg !4531
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4533
  call void @llvm.dbg.value(metadata ptr %3, metadata !4169, metadata !DIExpression()), !dbg !4534
  %4 = icmp eq ptr %3, null, !dbg !4536
  br i1 %4, label %5, label %6, !dbg !4537

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4538
  unreachable, !dbg !4538

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4513, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata ptr %0, metadata !4516, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i64 %1, metadata !4517, metadata !DIExpression()), !dbg !4539
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4541
  ret ptr %3, !dbg !4542
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !4543 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4547, metadata !DIExpression()), !dbg !4550
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4548, metadata !DIExpression()), !dbg !4550
  %3 = add nsw i64 %1, 1, !dbg !4551
  call void @llvm.dbg.value(metadata i64 %3, metadata !4207, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata i64 %3, metadata !4209, metadata !DIExpression()), !dbg !4554
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4556
  call void @llvm.dbg.value(metadata ptr %4, metadata !4169, metadata !DIExpression()), !dbg !4557
  %5 = icmp eq ptr %4, null, !dbg !4559
  br i1 %5, label %6, label %7, !dbg !4560

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4561
  unreachable, !dbg !4561

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4549, metadata !DIExpression()), !dbg !4550
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4562
  store i8 0, ptr %8, align 1, !dbg !4563, !tbaa !922
  call void @llvm.dbg.value(metadata ptr %4, metadata !4513, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata ptr %0, metadata !4516, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i64 %1, metadata !4517, metadata !DIExpression()), !dbg !4564
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4566
  ret ptr %4, !dbg !4567
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !4568 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4570, metadata !DIExpression()), !dbg !4571
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4572
  %3 = add i64 %2, 1, !dbg !4573
  call void @llvm.dbg.value(metadata ptr %0, metadata !4502, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i64 %3, metadata !4503, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i64 %3, metadata !4193, metadata !DIExpression()), !dbg !4576
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4578
  call void @llvm.dbg.value(metadata ptr %4, metadata !4169, metadata !DIExpression()), !dbg !4579
  %5 = icmp eq ptr %4, null, !dbg !4581
  br i1 %5, label %6, label %7, !dbg !4582

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4583
  unreachable, !dbg !4583

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4513, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata ptr %0, metadata !4516, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i64 %3, metadata !4517, metadata !DIExpression()), !dbg !4584
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4586
  ret ptr %4, !dbg !4587
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4588 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4593, !tbaa !913
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4590, metadata !DIExpression()), !dbg !4594
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.145, ptr noundef nonnull @.str.2.146, i32 noundef 5) #40, !dbg !4593
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.147, ptr noundef %2) #40, !dbg !4593
  %3 = icmp eq i32 %1, 0, !dbg !4593
  tail call void @llvm.assume(i1 %3), !dbg !4593
  tail call void @abort() #42, !dbg !4595
  unreachable, !dbg !4595
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #37

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #12 !dbg !4596 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4634, metadata !DIExpression()), !dbg !4639
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !4640
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4635, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4639
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4641, metadata !DIExpression()), !dbg !4644
  %3 = load i32, ptr %0, align 8, !dbg !4646, !tbaa !1167
  %4 = and i32 %3, 32, !dbg !4647
  %5 = icmp eq i32 %4, 0, !dbg !4647
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4637, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4639
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !4648
  %7 = icmp eq i32 %6, 0, !dbg !4649
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4638, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4639
  br i1 %5, label %8, label %18, !dbg !4650

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4652
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4635, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4639
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4653
  %11 = xor i1 %7, true, !dbg !4653
  %12 = sext i1 %11 to i32, !dbg !4653
  br i1 %10, label %21, label %13, !dbg !4653

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !4654
  %15 = load i32, ptr %14, align 4, !dbg !4654, !tbaa !913
  %16 = icmp ne i32 %15, 9, !dbg !4655
  %17 = sext i1 %16 to i32, !dbg !4656
  br label %21, !dbg !4656

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4657

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !4659
  store i32 0, ptr %20, align 4, !dbg !4661, !tbaa !913
  br label %21, !dbg !4659

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4639
  ret i32 %22, !dbg !4662
}

; Function Attrs: nounwind
declare !dbg !4663 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #12 !dbg !4666 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4671, metadata !DIExpression()), !dbg !4676
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4672, metadata !DIExpression()), !dbg !4676
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4673, metadata !DIExpression()), !dbg !4676
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4674, metadata !DIExpression()), !dbg !4676
  %5 = icmp eq ptr %1, null, !dbg !4677
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4679
  %7 = select i1 %5, ptr @.str.152, ptr %1, !dbg !4679
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4679
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4673, metadata !DIExpression()), !dbg !4676
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4672, metadata !DIExpression()), !dbg !4676
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4671, metadata !DIExpression()), !dbg !4676
  %9 = icmp eq ptr %3, null, !dbg !4680
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4682
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4674, metadata !DIExpression()), !dbg !4676
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !4683
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4675, metadata !DIExpression()), !dbg !4676
  %12 = icmp ult i64 %11, -3, !dbg !4684
  br i1 %12, label %13, label %17, !dbg !4686

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !4687
  %15 = icmp eq i32 %14, 0, !dbg !4687
  br i1 %15, label %16, label %29, !dbg !4688

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4689, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata ptr %10, metadata !4696, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i32 0, metadata !4699, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i64 8, metadata !4700, metadata !DIExpression()), !dbg !4701
  store i64 0, ptr %10, align 1, !dbg !4703
  br label %29, !dbg !4704

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4705
  br i1 %18, label %19, label %20, !dbg !4707

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !4708
  unreachable, !dbg !4708

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4709

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #40, !dbg !4711
  br i1 %23, label %29, label %24, !dbg !4712

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4713
  br i1 %25, label %29, label %26, !dbg !4716

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4717, !tbaa !922
  %28 = zext i8 %27 to i32, !dbg !4718
  store i32 %28, ptr %6, align 4, !dbg !4719, !tbaa !913
  br label %29, !dbg !4720

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4676
  ret i64 %30, !dbg !4721
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4722 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !4728 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4730, metadata !DIExpression()), !dbg !4734
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4731, metadata !DIExpression()), !dbg !4734
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4732, metadata !DIExpression()), !dbg !4734
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4735
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4735
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4733, metadata !DIExpression()), !dbg !4734
  br i1 %5, label %6, label %8, !dbg !4737

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !4738
  store i32 12, ptr %7, align 4, !dbg !4740, !tbaa !913
  br label %12, !dbg !4741

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4735
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4733, metadata !DIExpression()), !dbg !4734
  call void @llvm.dbg.value(metadata ptr %0, metadata !4742, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i64 %9, metadata !4745, metadata !DIExpression()), !dbg !4746
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4748
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #47, !dbg !4749
  br label %12, !dbg !4750

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4734
  ret ptr %13, !dbg !4751
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4752 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4759
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4755, metadata !DIExpression(), metadata !4759, metadata ptr %2, metadata !DIExpression()), !dbg !4760
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4754, metadata !DIExpression()), !dbg !4760
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !4761
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !4762
  %4 = icmp eq i32 %3, 0, !dbg !4762
  br i1 %4, label %5, label %12, !dbg !4764

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4765, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata !880, metadata !4768, metadata !DIExpression()), !dbg !4769
  %6 = load i16, ptr %2, align 16, !dbg !4772
  %7 = icmp eq i16 %6, 67, !dbg !4772
  br i1 %7, label %11, label %8, !dbg !4773

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4765, metadata !DIExpression()), !dbg !4774
  call void @llvm.dbg.value(metadata ptr @.str.1.157, metadata !4768, metadata !DIExpression()), !dbg !4774
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.157, i64 6), !dbg !4776
  %10 = icmp eq i32 %9, 0, !dbg !4777
  br i1 %10, label %11, label %12, !dbg !4778

11:                                               ; preds = %8, %5
  br label %12, !dbg !4779

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4760
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !4780
  ret i1 %13, !dbg !4780
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4781 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4785, metadata !DIExpression()), !dbg !4788
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4786, metadata !DIExpression()), !dbg !4788
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4787, metadata !DIExpression()), !dbg !4788
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !4789
  ret i32 %4, !dbg !4790
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4791 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4795, metadata !DIExpression()), !dbg !4796
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !4797
  ret ptr %2, !dbg !4798
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4799 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4801, metadata !DIExpression()), !dbg !4803
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4804
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4802, metadata !DIExpression()), !dbg !4803
  ret ptr %2, !dbg !4805
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4806 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4808, metadata !DIExpression()), !dbg !4815
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4809, metadata !DIExpression()), !dbg !4815
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4810, metadata !DIExpression()), !dbg !4815
  call void @llvm.dbg.value(metadata i32 %0, metadata !4801, metadata !DIExpression()), !dbg !4816
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4818
  call void @llvm.dbg.value(metadata ptr %4, metadata !4802, metadata !DIExpression()), !dbg !4816
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4811, metadata !DIExpression()), !dbg !4815
  %5 = icmp eq ptr %4, null, !dbg !4819
  br i1 %5, label %6, label %9, !dbg !4820

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4821
  br i1 %7, label %19, label %8, !dbg !4824

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4825, !tbaa !922
  br label %19, !dbg !4826

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !4827
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4812, metadata !DIExpression()), !dbg !4828
  %11 = icmp ult i64 %10, %2, !dbg !4829
  br i1 %11, label %12, label %14, !dbg !4831

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4832
  call void @llvm.dbg.value(metadata ptr %1, metadata !4834, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata ptr %4, metadata !4837, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata i64 %13, metadata !4838, metadata !DIExpression()), !dbg !4839
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !4841
  br label %19, !dbg !4842

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4843
  br i1 %15, label %19, label %16, !dbg !4846

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4847
  call void @llvm.dbg.value(metadata ptr %1, metadata !4834, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata ptr %4, metadata !4837, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata i64 %17, metadata !4838, metadata !DIExpression()), !dbg !4849
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !4851
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4852
  store i8 0, ptr %18, align 1, !dbg !4853, !tbaa !922
  br label %19, !dbg !4854

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4855
  ret i32 %20, !dbg !4856
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
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #26 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.dbg.cu = !{!55, !411, !415, !430, !719, !751, !756, !758, !761, !763, !765, !484, !498, !549, !767, !775, !711, !781, !816, !818, !735, !820, !822, !826, !828}
!llvm.ident = !{!830, !830, !830, !830, !830, !830, !830, !830, !830, !830, !830, !830, !830, !830, !830, !830, !830, !830, !830, !830, !830, !830, !830, !830, !830}
!llvm.module.flags = !{!831, !832, !833, !834, !835, !836, !837}

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
!55 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/tsort.o -MD -MP -MF src/.deps/tsort.Tpo -c src/tsort.c -o src/.tsort.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !101, globals: !110, splitDebugInlining: false, nameTableKind: None)
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
!429 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !430, file: !431, line: 66, type: !476, isLocal: false, isDefinition: true)
!430 = distinct !DICompileUnit(language: DW_LANG_C11, file: !431, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !432, globals: !433, splitDebugInlining: false, nameTableKind: None)
!431 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!432 = !{!102, !109}
!433 = !{!434, !436, !455, !457, !459, !461, !428, !463, !465, !467, !469, !474}
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !431, line: 272, type: !113, isLocal: true, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(name: "old_file_name", scope: !438, file: !431, line: 304, type: !107, isLocal: true, isDefinition: true)
!438 = distinct !DISubprogram(name: "verror_at_line", scope: !431, file: !431, line: 298, type: !439, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !448)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !52, !52, !107, !64, !107, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !443)
!443 = !{!444, !445, !446, !447}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !442, file: !431, baseType: !64, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !442, file: !431, baseType: !64, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !442, file: !431, baseType: !102, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !442, file: !431, baseType: !102, size: 64, offset: 128)
!448 = !{!449, !450, !451, !452, !453, !454}
!449 = !DILocalVariable(name: "status", arg: 1, scope: !438, file: !431, line: 298, type: !52)
!450 = !DILocalVariable(name: "errnum", arg: 2, scope: !438, file: !431, line: 298, type: !52)
!451 = !DILocalVariable(name: "file_name", arg: 3, scope: !438, file: !431, line: 298, type: !107)
!452 = !DILocalVariable(name: "line_number", arg: 4, scope: !438, file: !431, line: 298, type: !64)
!453 = !DILocalVariable(name: "message", arg: 5, scope: !438, file: !431, line: 298, type: !107)
!454 = !DILocalVariable(name: "args", arg: 6, scope: !438, file: !431, line: 298, type: !441)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(name: "old_line_number", scope: !438, file: !431, line: 305, type: !64, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !431, line: 338, type: !231, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !431, line: 346, type: !118, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !431, line: 346, type: !14, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "error_message_count", scope: !430, file: !431, line: 69, type: !64, isLocal: false, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !430, file: !431, line: 295, type: !52, isLocal: false, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !431, line: 208, type: !255, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !431, line: 208, type: !471, isLocal: true, isDefinition: true)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 21)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !431, line: 214, type: !113, isLocal: true, isDefinition: true)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{null}
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !481, line: 40, type: !39, isLocal: true, isDefinition: true)
!481 = !DIFile(filename: "lib/freopen-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "380f3eea209580e07073525fbfd0dac5")
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(name: "program_name", scope: !484, file: !485, line: 31, type: !107, isLocal: false, isDefinition: true)
!484 = distinct !DICompileUnit(language: DW_LANG_C11, file: !485, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !486, globals: !487, splitDebugInlining: false, nameTableKind: None)
!485 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!486 = !{!102, !54}
!487 = !{!482, !488, !490}
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !485, line: 46, type: !118, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !485, line: 49, type: !231, isLocal: true, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(name: "utf07FF", scope: !494, file: !495, line: 46, type: !522, isLocal: true, isDefinition: true)
!494 = distinct !DISubprogram(name: "proper_name_lite", scope: !495, file: !495, line: 38, type: !496, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !500)
!495 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!496 = !DISubroutineType(types: !497)
!497 = !{!107, !107, !107}
!498 = distinct !DICompileUnit(language: DW_LANG_C11, file: !495, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !499, splitDebugInlining: false, nameTableKind: None)
!499 = !{!492}
!500 = !{!501, !502, !503, !504, !509}
!501 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !494, file: !495, line: 38, type: !107)
!502 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !494, file: !495, line: 38, type: !107)
!503 = !DILocalVariable(name: "translation", scope: !494, file: !495, line: 40, type: !107)
!504 = !DILocalVariable(name: "w", scope: !494, file: !495, line: 47, type: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !506, line: 37, baseType: !507)
!506 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !194, line: 57, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !194, line: 42, baseType: !64)
!509 = !DILocalVariable(name: "mbs", scope: !494, file: !495, line: 48, type: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !511, line: 6, baseType: !512)
!511 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !513, line: 21, baseType: !514)
!513 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !513, line: 13, size: 64, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !514, file: !513, line: 15, baseType: !52, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !514, file: !513, line: 20, baseType: !518, size: 32, offset: 32)
!518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !514, file: !513, line: 16, size: 32, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !518, file: !513, line: 18, baseType: !64, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !518, file: !513, line: 19, baseType: !231, size: 32)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 16, elements: !15)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !525, line: 78, type: !118, isLocal: true, isDefinition: true)
!525 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !525, line: 79, type: !19, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !525, line: 80, type: !530, isLocal: true, isDefinition: true)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 13)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !525, line: 81, type: !530, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !525, line: 82, type: !216, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !525, line: 83, type: !14, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !525, line: 84, type: !118, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !525, line: 85, type: !255, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !525, line: 86, type: !255, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !525, line: 87, type: !118, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !549, file: !525, line: 76, type: !623, isLocal: false, isDefinition: true)
!549 = distinct !DICompileUnit(language: DW_LANG_C11, file: !525, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !550, retainedTypes: !558, globals: !559, splitDebugInlining: false, nameTableKind: None)
!550 = !{!551, !553, !62}
!551 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !552, line: 42, baseType: !64, size: 32, elements: !80)
!552 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!553 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !552, line: 254, baseType: !64, size: 32, elements: !554)
!554 = !{!555, !556, !557}
!555 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!556 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!557 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!558 = !{!102, !52, !103, !104}
!559 = !{!523, !526, !528, !533, !535, !537, !539, !541, !543, !545, !547, !560, !564, !574, !576, !581, !583, !585, !587, !589, !612, !619, !621}
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !549, file: !525, line: 92, type: !562, isLocal: false, isDefinition: true)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 320, elements: !40)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !549, file: !525, line: 1040, type: !566, isLocal: false, isDefinition: true)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !525, line: 56, size: 448, elements: !567)
!567 = !{!568, !569, !570, !572, !573}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !566, file: !525, line: 59, baseType: !551, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !566, file: !525, line: 62, baseType: !52, size: 32, offset: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !566, file: !525, line: 66, baseType: !571, size: 256, offset: 64)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 256, elements: !119)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !566, file: !525, line: 69, baseType: !107, size: 64, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !566, file: !525, line: 72, baseType: !107, size: 64, offset: 384)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !549, file: !525, line: 107, type: !566, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(name: "slot0", scope: !549, file: !525, line: 831, type: !578, isLocal: true, isDefinition: true)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !579)
!579 = !{!580}
!580 = !DISubrange(count: 256)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !525, line: 321, type: !14, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !525, line: 357, type: !14, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !525, line: 358, type: !14, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !525, line: 199, type: !255, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(name: "quote", scope: !591, file: !525, line: 228, type: !610, isLocal: true, isDefinition: true)
!591 = distinct !DISubprogram(name: "gettext_quote", scope: !525, file: !525, line: 197, type: !592, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !594)
!592 = !DISubroutineType(types: !593)
!593 = !{!107, !107, !551}
!594 = !{!595, !596, !597, !598, !599}
!595 = !DILocalVariable(name: "msgid", arg: 1, scope: !591, file: !525, line: 197, type: !107)
!596 = !DILocalVariable(name: "s", arg: 2, scope: !591, file: !525, line: 197, type: !551)
!597 = !DILocalVariable(name: "translation", scope: !591, file: !525, line: 199, type: !107)
!598 = !DILocalVariable(name: "w", scope: !591, file: !525, line: 229, type: !505)
!599 = !DILocalVariable(name: "mbs", scope: !591, file: !525, line: 230, type: !600)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !511, line: 6, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !513, line: 21, baseType: !602)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !513, line: 13, size: 64, elements: !603)
!603 = !{!604, !605}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !602, file: !513, line: 15, baseType: !52, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !602, file: !513, line: 20, baseType: !606, size: 32, offset: 32)
!606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !602, file: !513, line: 16, size: 32, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !606, file: !513, line: 18, baseType: !64, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !606, file: !513, line: 19, baseType: !231, size: 32)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !611)
!611 = !{!16, !233}
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(name: "slotvec", scope: !549, file: !525, line: 834, type: !614, isLocal: true, isDefinition: true)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !525, line: 823, size: 128, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !615, file: !525, line: 825, baseType: !104, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !615, file: !525, line: 826, baseType: !54, size: 64, offset: 64)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(name: "nslots", scope: !549, file: !525, line: 832, type: !52, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(name: "slotvec0", scope: !549, file: !525, line: 833, type: !615, isLocal: true, isDefinition: true)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !624, size: 704, elements: !625)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!625 = !{!626}
!626 = !DISubrange(count: 11)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !629, line: 67, type: !328, isLocal: true, isDefinition: true)
!629 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !629, line: 69, type: !255, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !629, line: 83, type: !255, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !629, line: 83, type: !231, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !629, line: 85, type: !14, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !629, line: 88, type: !640, isLocal: true, isDefinition: true)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 171)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !629, line: 88, type: !645, isLocal: true, isDefinition: true)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !646)
!646 = !{!647}
!647 = !DISubrange(count: 34)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !629, line: 105, type: !299, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !629, line: 109, type: !652, isLocal: true, isDefinition: true)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 23)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !629, line: 113, type: !657, isLocal: true, isDefinition: true)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 28)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !629, line: 120, type: !662, isLocal: true, isDefinition: true)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 32)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !629, line: 127, type: !667, isLocal: true, isDefinition: true)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 36)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !629, line: 134, type: !276, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !629, line: 142, type: !674, isLocal: true, isDefinition: true)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !675)
!675 = !{!676}
!676 = !DISubrange(count: 44)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !629, line: 150, type: !679, isLocal: true, isDefinition: true)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !680)
!680 = !{!681}
!681 = !DISubrange(count: 48)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !629, line: 159, type: !684, isLocal: true, isDefinition: true)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 52)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !629, line: 170, type: !689, isLocal: true, isDefinition: true)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 60)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !629, line: 248, type: !216, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !629, line: 248, type: !304, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !629, line: 254, type: !216, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !629, line: 254, type: !125, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !629, line: 254, type: !276, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !629, line: 259, type: !3, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !629, line: 259, type: !706, isLocal: true, isDefinition: true)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !707)
!707 = !{!708}
!708 = !DISubrange(count: 29)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !711, file: !712, line: 26, type: !714, isLocal: false, isDefinition: true)
!711 = distinct !DICompileUnit(language: DW_LANG_C11, file: !712, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !713, splitDebugInlining: false, nameTableKind: None)
!712 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!713 = !{!709}
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 376, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 47)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(name: "exit_failure", scope: !719, file: !720, line: 24, type: !722, isLocal: false, isDefinition: true)
!719 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !721, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!721 = !{!717}
!722 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !52)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !725, line: 34, type: !244, isLocal: true, isDefinition: true)
!725 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !725, line: 34, type: !255, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !725, line: 34, type: !132, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !732, line: 108, type: !34, isLocal: true, isDefinition: true)
!732 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(name: "internal_state", scope: !735, file: !732, line: 97, type: !738, isLocal: true, isDefinition: true)
!735 = distinct !DICompileUnit(language: DW_LANG_C11, file: !732, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !736, globals: !737, splitDebugInlining: false, nameTableKind: None)
!736 = !{!102, !104, !109}
!737 = !{!730, !733}
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !511, line: 6, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !513, line: 21, baseType: !740)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !513, line: 13, size: 64, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !740, file: !513, line: 15, baseType: !52, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !740, file: !513, line: 20, baseType: !744, size: 32, offset: 32)
!744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !740, file: !513, line: 16, size: 32, elements: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !744, file: !513, line: 18, baseType: !64, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !744, file: !513, line: 19, baseType: !231, size: 32)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !750, line: 35, type: !19, isLocal: true, isDefinition: true)
!750 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!751 = distinct !DICompileUnit(language: DW_LANG_C11, file: !752, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !753, splitDebugInlining: false, nameTableKind: None)
!752 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!753 = !{!754}
!754 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !755, line: 44, baseType: !64, size: 32, elements: !94)
!755 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!756 = distinct !DICompileUnit(language: DW_LANG_C11, file: !757, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!757 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!758 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !760, splitDebugInlining: false, nameTableKind: None)
!759 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!760 = !{!102}
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !481, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-freopen-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-freopen-safer.Tpo -c lib/freopen-safer.c -o lib/.libcoreutils_a-freopen-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !762, splitDebugInlining: false, nameTableKind: None)
!762 = !{!479}
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !760, splitDebugInlining: false, nameTableKind: None)
!764 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-readtokens.o -MD -MP -MF lib/.deps/libcoreutils_a-readtokens.Tpo -c lib/readtokens.c -o lib/.libcoreutils_a-readtokens.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !769, retainedTypes: !773, splitDebugInlining: false, nameTableKind: None)
!768 = !DIFile(filename: "lib/readtokens.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bd27ae043f20cb5dd96b528a940c0bf9")
!769 = !{!770}
!770 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !768, line: 50, baseType: !64, size: 32, elements: !771)
!771 = !{!772}
!772 = !DIEnumerator(name: "bits_per_word", value: 64)
!773 = !{!104, !102, !774}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!775 = distinct !DICompileUnit(language: DW_LANG_C11, file: !629, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !776, retainedTypes: !760, globals: !780, splitDebugInlining: false, nameTableKind: None)
!776 = !{!777}
!777 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !629, line: 40, baseType: !64, size: 32, elements: !778)
!778 = !{!779}
!779 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!780 = !{!627, !630, !632, !634, !636, !638, !643, !648, !650, !655, !660, !665, !670, !672, !677, !682, !687, !692, !694, !696, !698, !700, !702, !704}
!781 = distinct !DICompileUnit(language: DW_LANG_C11, file: !782, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !783, retainedTypes: !815, splitDebugInlining: false, nameTableKind: None)
!782 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!783 = !{!784, !796}
!784 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !785, file: !782, line: 188, baseType: !64, size: 32, elements: !794)
!785 = distinct !DISubprogram(name: "x2nrealloc", scope: !782, file: !782, line: 176, type: !786, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !789)
!786 = !DISubroutineType(types: !787)
!787 = !{!102, !102, !788, !104}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!789 = !{!790, !791, !792, !793}
!790 = !DILocalVariable(name: "p", arg: 1, scope: !785, file: !782, line: 176, type: !102)
!791 = !DILocalVariable(name: "pn", arg: 2, scope: !785, file: !782, line: 176, type: !788)
!792 = !DILocalVariable(name: "s", arg: 3, scope: !785, file: !782, line: 176, type: !104)
!793 = !DILocalVariable(name: "n", scope: !785, file: !782, line: 178, type: !104)
!794 = !{!795}
!795 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!796 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !797, file: !782, line: 228, baseType: !64, size: 32, elements: !794)
!797 = distinct !DISubprogram(name: "xpalloc", scope: !782, file: !782, line: 223, type: !798, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !805)
!798 = !DISubroutineType(types: !799)
!799 = !{!102, !102, !800, !801, !803, !801}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !802, line: 130, baseType: !803)
!802 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !804, line: 18, baseType: !195)
!804 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!805 = !{!806, !807, !808, !809, !810, !811, !812, !813, !814}
!806 = !DILocalVariable(name: "pa", arg: 1, scope: !797, file: !782, line: 223, type: !102)
!807 = !DILocalVariable(name: "pn", arg: 2, scope: !797, file: !782, line: 223, type: !800)
!808 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !797, file: !782, line: 223, type: !801)
!809 = !DILocalVariable(name: "n_max", arg: 4, scope: !797, file: !782, line: 223, type: !803)
!810 = !DILocalVariable(name: "s", arg: 5, scope: !797, file: !782, line: 223, type: !801)
!811 = !DILocalVariable(name: "n0", scope: !797, file: !782, line: 230, type: !801)
!812 = !DILocalVariable(name: "n", scope: !797, file: !782, line: 237, type: !801)
!813 = !DILocalVariable(name: "nbytes", scope: !797, file: !782, line: 248, type: !801)
!814 = !DILocalVariable(name: "adjusted_nbytes", scope: !797, file: !782, line: 252, type: !801)
!815 = !{!54, !102}
!816 = distinct !DICompileUnit(language: DW_LANG_C11, file: !725, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !817, splitDebugInlining: false, nameTableKind: None)
!817 = !{!723, !726, !728}
!818 = distinct !DICompileUnit(language: DW_LANG_C11, file: !819, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!819 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!820 = distinct !DICompileUnit(language: DW_LANG_C11, file: !821, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !760, splitDebugInlining: false, nameTableKind: None)
!821 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!822 = distinct !DICompileUnit(language: DW_LANG_C11, file: !750, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !823, splitDebugInlining: false, nameTableKind: None)
!823 = !{!824, !748}
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(scope: null, file: !750, line: 35, type: !14, isLocal: true, isDefinition: true)
!826 = distinct !DICompileUnit(language: DW_LANG_C11, file: !827, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!827 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!828 = distinct !DICompileUnit(language: DW_LANG_C11, file: !829, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !760, splitDebugInlining: false, nameTableKind: None)
!829 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!830 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!831 = !{i32 7, !"Dwarf Version", i32 5}
!832 = !{i32 2, !"Debug Info Version", i32 3}
!833 = !{i32 1, !"wchar_size", i32 4}
!834 = !{i32 8, !"PIC Level", i32 2}
!835 = !{i32 7, !"PIE Level", i32 2}
!836 = !{i32 7, !"uwtable", i32 2}
!837 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!838 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 75, type: !839, scopeLine: 76, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !841)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !52}
!841 = !{!842}
!842 = !DILocalVariable(name: "status", arg: 1, scope: !838, file: !2, line: 75, type: !52)
!843 = !DILocation(line: 0, scope: !838)
!844 = !DILocation(line: 77, column: 14, scope: !845)
!845 = distinct !DILexicalBlock(scope: !838, file: !2, line: 77, column: 7)
!846 = !DILocation(line: 77, column: 7, scope: !838)
!847 = !DILocation(line: 78, column: 5, scope: !848)
!848 = distinct !DILexicalBlock(scope: !845, file: !2, line: 78, column: 5)
!849 = !{!850, !850, i64 0}
!850 = !{!"any pointer", !851, i64 0}
!851 = !{!"omnipotent char", !852, i64 0}
!852 = !{!"Simple C/C++ TBAA"}
!853 = !DILocation(line: 81, column: 7, scope: !854)
!854 = distinct !DILexicalBlock(scope: !845, file: !2, line: 80, column: 5)
!855 = !DILocation(line: 729, column: 3, scope: !856, inlinedAt: !857)
!856 = distinct !DISubprogram(name: "emit_stdin_note", scope: !58, file: !58, line: 727, type: !477, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55)
!857 = distinct !DILocation(line: 86, column: 7, scope: !854)
!858 = !DILocation(line: 88, column: 7, scope: !854)
!859 = !DILocation(line: 91, column: 7, scope: !854)
!860 = !DILocation(line: 92, column: 7, scope: !854)
!861 = !DILocalVariable(name: "program", arg: 1, scope: !862, file: !58, line: 836, type: !107)
!862 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !58, file: !58, line: 836, type: !863, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !865)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !107}
!865 = !{!861, !866, !873, !874, !876, !877}
!866 = !DILocalVariable(name: "infomap", scope: !862, file: !58, line: 838, type: !867)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !868, size: 896, elements: !256)
!868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !862, file: !58, line: 838, size: 128, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !869, file: !58, line: 838, baseType: !107, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !869, file: !58, line: 838, baseType: !107, size: 64, offset: 64)
!873 = !DILocalVariable(name: "node", scope: !862, file: !58, line: 848, type: !107)
!874 = !DILocalVariable(name: "map_prog", scope: !862, file: !58, line: 849, type: !875)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!876 = !DILocalVariable(name: "lc_messages", scope: !862, file: !58, line: 861, type: !107)
!877 = !DILocalVariable(name: "url_program", scope: !862, file: !58, line: 874, type: !107)
!878 = !DILocation(line: 0, scope: !862, inlinedAt: !879)
!879 = distinct !DILocation(line: 93, column: 7, scope: !854)
!880 = !{}
!881 = !DILocation(line: 857, column: 3, scope: !862, inlinedAt: !879)
!882 = !DILocation(line: 861, column: 29, scope: !862, inlinedAt: !879)
!883 = !DILocation(line: 862, column: 7, scope: !884, inlinedAt: !879)
!884 = distinct !DILexicalBlock(scope: !862, file: !58, line: 862, column: 7)
!885 = !DILocation(line: 862, column: 19, scope: !884, inlinedAt: !879)
!886 = !DILocation(line: 862, column: 22, scope: !884, inlinedAt: !879)
!887 = !DILocation(line: 862, column: 7, scope: !862, inlinedAt: !879)
!888 = !DILocation(line: 868, column: 7, scope: !889, inlinedAt: !879)
!889 = distinct !DILexicalBlock(scope: !884, file: !58, line: 863, column: 5)
!890 = !DILocation(line: 870, column: 5, scope: !889, inlinedAt: !879)
!891 = !DILocation(line: 875, column: 3, scope: !862, inlinedAt: !879)
!892 = !DILocation(line: 877, column: 3, scope: !862, inlinedAt: !879)
!893 = !DILocation(line: 96, column: 3, scope: !838)
!894 = !DISubprogram(name: "dcgettext", scope: !895, file: !895, line: 51, type: !896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!895 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!896 = !DISubroutineType(types: !897)
!897 = !{!54, !107, !107, !52}
!898 = !DISubprogram(name: "__fprintf_chk", scope: !899, file: !899, line: 93, type: !900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!899 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!900 = !DISubroutineType(types: !901)
!901 = !{!52, !902, !52, !903, null}
!902 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !167)
!903 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!904 = !DISubprogram(name: "__printf_chk", scope: !899, file: !899, line: 95, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!905 = !DISubroutineType(types: !906)
!906 = !{!52, !52, !903, null}
!907 = !DISubprogram(name: "fputs_unlocked", scope: !908, file: !908, line: 691, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!908 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!909 = !DISubroutineType(types: !910)
!910 = !{!52, !903, !902}
!911 = !DILocation(line: 0, scope: !144)
!912 = !DILocation(line: 581, column: 7, scope: !152)
!913 = !{!914, !914, i64 0}
!914 = !{!"int", !851, i64 0}
!915 = !DILocation(line: 581, column: 19, scope: !152)
!916 = !DILocation(line: 581, column: 7, scope: !144)
!917 = !DILocation(line: 585, column: 26, scope: !151)
!918 = !DILocation(line: 0, scope: !151)
!919 = !DILocation(line: 586, column: 23, scope: !151)
!920 = !DILocation(line: 586, column: 28, scope: !151)
!921 = !DILocation(line: 586, column: 32, scope: !151)
!922 = !{!851, !851, i64 0}
!923 = !DILocation(line: 586, column: 38, scope: !151)
!924 = !DILocalVariable(name: "__s1", arg: 1, scope: !925, file: !926, line: 1359, type: !107)
!925 = distinct !DISubprogram(name: "streq", scope: !926, file: !926, line: 1359, type: !927, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !929)
!926 = !DIFile(filename: "./lib/string.h", directory: "/src")
!927 = !DISubroutineType(types: !928)
!928 = !{!154, !107, !107}
!929 = !{!924, !930}
!930 = !DILocalVariable(name: "__s2", arg: 2, scope: !925, file: !926, line: 1359, type: !107)
!931 = !DILocation(line: 0, scope: !925, inlinedAt: !932)
!932 = distinct !DILocation(line: 586, column: 41, scope: !151)
!933 = !DILocation(line: 1361, column: 11, scope: !925, inlinedAt: !932)
!934 = !DILocation(line: 1361, column: 10, scope: !925, inlinedAt: !932)
!935 = !DILocation(line: 586, column: 19, scope: !151)
!936 = !DILocation(line: 587, column: 5, scope: !151)
!937 = !DILocation(line: 588, column: 7, scope: !938)
!938 = distinct !DILexicalBlock(scope: !144, file: !58, line: 588, column: 7)
!939 = !DILocation(line: 588, column: 7, scope: !144)
!940 = !DILocation(line: 590, column: 7, scope: !941)
!941 = distinct !DILexicalBlock(scope: !938, file: !58, line: 589, column: 5)
!942 = !DILocation(line: 591, column: 7, scope: !941)
!943 = !DILocation(line: 595, column: 37, scope: !144)
!944 = !DILocation(line: 595, column: 35, scope: !144)
!945 = !DILocation(line: 596, column: 29, scope: !144)
!946 = !DILocation(line: 597, column: 8, scope: !160)
!947 = !DILocation(line: 597, column: 7, scope: !144)
!948 = !DILocation(line: 604, column: 24, scope: !159)
!949 = !DILocation(line: 604, column: 12, scope: !160)
!950 = !DILocation(line: 0, scope: !158)
!951 = !DILocation(line: 610, column: 16, scope: !158)
!952 = !DILocation(line: 610, column: 7, scope: !158)
!953 = !DILocation(line: 611, column: 21, scope: !158)
!954 = !{!955, !955, i64 0}
!955 = !{!"short", !851, i64 0}
!956 = !DILocation(line: 611, column: 19, scope: !158)
!957 = !DILocation(line: 611, column: 16, scope: !158)
!958 = !DILocation(line: 610, column: 30, scope: !158)
!959 = distinct !{!959, !952, !953, !960}
!960 = !{!"llvm.loop.mustprogress"}
!961 = !DILocation(line: 612, column: 18, scope: !962)
!962 = distinct !DILexicalBlock(scope: !158, file: !58, line: 612, column: 11)
!963 = !DILocation(line: 612, column: 11, scope: !158)
!964 = !DILocation(line: 620, column: 23, scope: !144)
!965 = !DILocation(line: 625, column: 39, scope: !144)
!966 = !DILocation(line: 626, column: 3, scope: !144)
!967 = !DILocation(line: 626, column: 10, scope: !144)
!968 = !DILocation(line: 626, column: 21, scope: !144)
!969 = !DILocation(line: 628, column: 44, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !58, line: 628, column: 11)
!971 = distinct !DILexicalBlock(scope: !144, file: !58, line: 627, column: 5)
!972 = !DILocation(line: 628, column: 32, scope: !970)
!973 = !DILocation(line: 628, column: 49, scope: !970)
!974 = !DILocation(line: 628, column: 11, scope: !971)
!975 = !DILocation(line: 630, column: 11, scope: !976)
!976 = distinct !DILexicalBlock(scope: !971, file: !58, line: 630, column: 11)
!977 = !DILocation(line: 630, column: 11, scope: !971)
!978 = !DILocation(line: 632, column: 26, scope: !979)
!979 = distinct !DILexicalBlock(scope: !980, file: !58, line: 632, column: 15)
!980 = distinct !DILexicalBlock(scope: !976, file: !58, line: 631, column: 9)
!981 = !DILocation(line: 632, column: 34, scope: !979)
!982 = !DILocation(line: 632, column: 37, scope: !979)
!983 = !DILocation(line: 632, column: 15, scope: !980)
!984 = !DILocation(line: 636, column: 16, scope: !985)
!985 = distinct !DILexicalBlock(scope: !980, file: !58, line: 636, column: 15)
!986 = !DILocation(line: 636, column: 29, scope: !985)
!987 = !DILocation(line: 640, column: 16, scope: !971)
!988 = distinct !{!988, !966, !989, !960}
!989 = !DILocation(line: 641, column: 5, scope: !144)
!990 = !DILocation(line: 644, column: 3, scope: !144)
!991 = !DILocation(line: 0, scope: !925, inlinedAt: !992)
!992 = distinct !DILocation(line: 648, column: 31, scope: !144)
!993 = !DILocation(line: 0, scope: !925, inlinedAt: !994)
!994 = distinct !DILocation(line: 649, column: 31, scope: !144)
!995 = !DILocation(line: 0, scope: !925, inlinedAt: !996)
!996 = distinct !DILocation(line: 650, column: 31, scope: !144)
!997 = !DILocation(line: 0, scope: !925, inlinedAt: !998)
!998 = distinct !DILocation(line: 651, column: 31, scope: !144)
!999 = !DILocation(line: 0, scope: !925, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 652, column: 31, scope: !144)
!1001 = !DILocation(line: 0, scope: !925, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 653, column: 31, scope: !144)
!1003 = !DILocation(line: 0, scope: !925, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 654, column: 31, scope: !144)
!1005 = !DILocation(line: 0, scope: !925, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 655, column: 31, scope: !144)
!1007 = !DILocation(line: 0, scope: !925, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 656, column: 31, scope: !144)
!1009 = !DILocation(line: 0, scope: !925, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 657, column: 31, scope: !144)
!1011 = !DILocation(line: 663, column: 7, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !144, file: !58, line: 663, column: 7)
!1013 = !DILocation(line: 664, column: 7, scope: !1012)
!1014 = !DILocation(line: 664, column: 10, scope: !1012)
!1015 = !DILocation(line: 663, column: 7, scope: !144)
!1016 = !DILocation(line: 669, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !58, line: 665, column: 5)
!1018 = !DILocation(line: 671, column: 5, scope: !1017)
!1019 = !DILocation(line: 676, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1012, file: !58, line: 673, column: 5)
!1021 = !DILocation(line: 679, column: 3, scope: !144)
!1022 = !DILocation(line: 683, column: 3, scope: !144)
!1023 = !DILocation(line: 686, column: 3, scope: !144)
!1024 = !DILocation(line: 688, column: 3, scope: !144)
!1025 = !DILocation(line: 691, column: 3, scope: !144)
!1026 = !DILocation(line: 695, column: 3, scope: !144)
!1027 = !DILocation(line: 696, column: 1, scope: !144)
!1028 = !DISubprogram(name: "setlocale", scope: !1029, file: !1029, line: 122, type: !1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1029 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!54, !52, !107}
!1032 = !DISubprogram(name: "strncmp", scope: !1033, file: !1033, line: 159, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1033 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!52, !107, !107, !104}
!1036 = !DISubprogram(name: "exit", scope: !1037, file: !1037, line: 624, type: !839, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1037 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1038 = !DISubprogram(name: "getenv", scope: !1037, file: !1037, line: 641, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!54, !107}
!1041 = !DISubprogram(name: "strcmp", scope: !1033, file: !1033, line: 156, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!52, !107, !107}
!1044 = !DISubprogram(name: "strspn", scope: !1033, file: !1033, line: 297, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!106, !107, !107}
!1047 = !DISubprogram(name: "strchr", scope: !1033, file: !1033, line: 246, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!54, !107, !52}
!1050 = !DISubprogram(name: "__ctype_b_loc", scope: !63, file: !63, line: 79, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1056 = !DISubprogram(name: "strcspn", scope: !1033, file: !1033, line: 293, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1057 = !DISubprogram(name: "fwrite_unlocked", scope: !908, file: !908, line: 704, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!104, !1060, !104, !104, !902}
!1060 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1061)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1063 = !DILocation(line: 0, scope: !49)
!1064 = !DILocation(line: 534, column: 21, scope: !49)
!1065 = !DILocation(line: 534, column: 3, scope: !49)
!1066 = !DILocation(line: 535, column: 3, scope: !49)
!1067 = !DILocation(line: 536, column: 3, scope: !49)
!1068 = !DILocation(line: 537, column: 3, scope: !49)
!1069 = !DILocation(line: 539, column: 3, scope: !49)
!1070 = !DILocation(line: 541, column: 3, scope: !49)
!1071 = !DILocation(line: 549, column: 15, scope: !395)
!1072 = !DILocation(line: 0, scope: !395)
!1073 = !DILocation(line: 551, column: 11, scope: !395)
!1074 = !DILocation(line: 559, column: 9, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !395, file: !2, line: 555, column: 9)
!1076 = !DILocation(line: 561, column: 9, scope: !1075)
!1077 = !DILocation(line: 564, column: 11, scope: !1075)
!1078 = !DILocation(line: 568, column: 18, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !49, file: !2, line: 568, column: 7)
!1080 = !DILocation(line: 568, column: 16, scope: !1079)
!1081 = !DILocation(line: 568, column: 9, scope: !1079)
!1082 = !DILocation(line: 568, column: 7, scope: !49)
!1083 = !DILocation(line: 570, column: 7, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 569, column: 5)
!1085 = !DILocation(line: 571, column: 7, scope: !1084)
!1086 = !DILocation(line: 574, column: 17, scope: !49)
!1087 = !DILocation(line: 574, column: 10, scope: !49)
!1088 = !DILocation(line: 574, column: 33, scope: !49)
!1089 = !DILocation(line: 574, column: 3, scope: !49)
!1090 = !DISubprogram(name: "bindtextdomain", scope: !895, file: !895, line: 86, type: !1091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!54, !107, !107}
!1093 = !DISubprogram(name: "textdomain", scope: !895, file: !895, line: 82, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1094 = !DISubprogram(name: "atexit", scope: !1037, file: !1037, line: 602, type: !1095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!52, !476}
!1097 = !DISubprogram(name: "getopt_long", scope: !399, file: !399, line: 66, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!52, !52, !1100, !107, !1102, !404}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!1103 = distinct !DISubprogram(name: "tsort", scope: !2, file: !2, line: 429, type: !863, scopeLine: 430, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1104)
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1116, !1117, !1118, !1120}
!1105 = !DILocalVariable(name: "file", arg: 1, scope: !1103, file: !2, line: 429, type: !107)
!1106 = !DILocalVariable(name: "ok", scope: !1103, file: !2, line: 431, type: !154)
!1107 = !DILocalVariable(name: "j", scope: !1103, file: !2, line: 432, type: !371)
!1108 = !DILocalVariable(name: "k", scope: !1103, file: !2, line: 433, type: !371)
!1109 = !DILocalVariable(name: "tokenbuffer", scope: !1103, file: !2, line: 434, type: !1110)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !1111, line: 38, baseType: !1112)
!1111 = !DIFile(filename: "./lib/readtokens.h", directory: "/src", checksumkind: CSK_MD5, checksum: "75cc48641d199743577b153a0d1c82de")
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !1111, line: 33, size: 128, elements: !1113)
!1113 = !{!1114, !1115}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1112, file: !1111, line: 35, baseType: !104, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1112, file: !1111, line: 36, baseType: !54, size: 64, offset: 64)
!1116 = !DILocalVariable(name: "is_stdin", scope: !1103, file: !2, line: 435, type: !154)
!1117 = !DILocalVariable(name: "root", scope: !1103, file: !2, line: 438, type: !371)
!1118 = !DILocalVariable(name: "len", scope: !1119, file: !2, line: 450, type: !104)
!1119 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 448, column: 5)
!1120 = !DILocalVariable(name: "p", scope: !1121, file: !2, line: 485, type: !382)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 484, column: 9)
!1122 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 479, column: 5)
!1123 = distinct !DIAssignID()
!1124 = !DILocation(line: 0, scope: !1103)
!1125 = !DILocation(line: 434, column: 3, scope: !1103)
!1126 = !DILocation(line: 0, scope: !925, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 435, column: 19, scope: !1103)
!1128 = !DILocation(line: 1361, column: 11, scope: !925, inlinedAt: !1127)
!1129 = !DILocation(line: 1361, column: 10, scope: !925, inlinedAt: !1127)
!1130 = !DILocalVariable(name: "str", arg: 1, scope: !1131, file: !2, line: 101, type: !107)
!1131 = distinct !DISubprogram(name: "new_item", scope: !2, file: !2, line: 101, type: !1132, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1134)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!371, !107}
!1134 = !{!1130, !1135}
!1135 = !DILocalVariable(name: "k", scope: !1131, file: !2, line: 104, type: !371)
!1136 = !DILocation(line: 0, scope: !1131, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 438, column: 23, scope: !1103)
!1138 = !DILocation(line: 104, column: 20, scope: !1131, inlinedAt: !1137)
!1139 = !DILocation(line: 440, column: 17, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 440, column: 7)
!1141 = !DILocation(line: 440, column: 42, scope: !1140)
!1142 = !DILocation(line: 440, column: 22, scope: !1140)
!1143 = !DILocation(line: 440, column: 7, scope: !1103)
!1144 = !DILocation(line: 441, column: 5, scope: !1140)
!1145 = !DILocation(line: 443, column: 12, scope: !1103)
!1146 = !DILocation(line: 443, column: 3, scope: !1103)
!1147 = !DILocation(line: 445, column: 3, scope: !1103)
!1148 = !DILocation(line: 447, column: 3, scope: !1103)
!1149 = !DILocation(line: 433, column: 16, scope: !1103)
!1150 = !DILocation(line: 450, column: 31, scope: !1119)
!1151 = !DILocation(line: 450, column: 20, scope: !1119)
!1152 = !DILocation(line: 0, scope: !1119)
!1153 = !DILocation(line: 451, column: 11, scope: !1119)
!1154 = !DILocation(line: 453, column: 15, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !2, line: 453, column: 15)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 452, column: 9)
!1157 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 451, column: 11)
!1158 = !DILocalVariable(name: "__stream", arg: 1, scope: !1159, file: !1160, line: 135, type: !167)
!1159 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1160, file: !1160, line: 135, type: !1161, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1163)
!1160 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!52, !167}
!1163 = !{!1158}
!1164 = !DILocation(line: 0, scope: !1159, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 453, column: 15, scope: !1155)
!1166 = !DILocation(line: 137, column: 10, scope: !1159, inlinedAt: !1165)
!1167 = !{!1168, !914, i64 0}
!1168 = !{!"_IO_FILE", !914, i64 0, !850, i64 8, !850, i64 16, !850, i64 24, !850, i64 32, !850, i64 40, !850, i64 48, !850, i64 56, !850, i64 64, !850, i64 72, !850, i64 80, !850, i64 88, !850, i64 96, !850, i64 104, !914, i64 112, !914, i64 116, !1169, i64 120, !955, i64 128, !851, i64 130, !851, i64 131, !850, i64 136, !1169, i64 144, !850, i64 152, !850, i64 160, !850, i64 168, !850, i64 176, !1169, i64 184, !914, i64 192, !851, i64 196}
!1169 = !{!"long", !851, i64 0}
!1170 = !DILocation(line: 453, column: 15, scope: !1156)
!1171 = !DILocation(line: 454, column: 13, scope: !1155)
!1172 = !DILocation(line: 458, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 458, column: 7)
!1174 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 458, column: 7)
!1175 = !DILocation(line: 460, column: 42, scope: !1119)
!1176 = !{!1177, !850, i64 8}
!1177 = !{!"tokenbuffer", !1169, i64 0, !850, i64 8}
!1178 = !DILocalVariable(name: "root", arg: 1, scope: !1179, file: !2, line: 119, type: !371)
!1179 = distinct !DISubprogram(name: "search_item", scope: !2, file: !2, line: 119, type: !1180, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1182)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!371, !371, !107}
!1182 = !{!1178, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190}
!1183 = !DILocalVariable(name: "str", arg: 2, scope: !1179, file: !2, line: 119, type: !107)
!1184 = !DILocalVariable(name: "p", scope: !1179, file: !2, line: 121, type: !371)
!1185 = !DILocalVariable(name: "q", scope: !1179, file: !2, line: 121, type: !371)
!1186 = !DILocalVariable(name: "r", scope: !1179, file: !2, line: 121, type: !371)
!1187 = !DILocalVariable(name: "s", scope: !1179, file: !2, line: 121, type: !371)
!1188 = !DILocalVariable(name: "t", scope: !1179, file: !2, line: 121, type: !371)
!1189 = !DILocalVariable(name: "a", scope: !1179, file: !2, line: 122, type: !52)
!1190 = !DILocalVariable(name: "cmp", scope: !1191, file: !2, line: 173, type: !52)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 172, column: 13)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 147, column: 9)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 146, column: 11)
!1194 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 134, column: 5)
!1195 = !DILocation(line: 0, scope: !1179, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 460, column: 11, scope: !1119)
!1197 = !DILocation(line: 126, column: 13, scope: !1198, inlinedAt: !1196)
!1198 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 126, column: 7)
!1199 = !{!1200, !850, i64 16}
!1200 = !{!"item", !850, i64 0, !850, i64 8, !850, i64 16, !851, i64 24, !1201, i64 25, !1169, i64 32, !850, i64 40, !850, i64 48}
!1201 = !{!"_Bool", !851, i64 0}
!1202 = !DILocation(line: 126, column: 19, scope: !1198, inlinedAt: !1196)
!1203 = !DILocation(line: 126, column: 7, scope: !1179, inlinedAt: !1196)
!1204 = !DILocation(line: 136, column: 27, scope: !1194, inlinedAt: !1196)
!1205 = !{!1200, !850, i64 0}
!1206 = !DILocation(line: 136, column: 11, scope: !1194, inlinedAt: !1196)
!1207 = !DILocation(line: 137, column: 13, scope: !1208, inlinedAt: !1196)
!1208 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 137, column: 11)
!1209 = !DILocation(line: 137, column: 11, scope: !1194, inlinedAt: !1196)
!1210 = !DILocation(line: 0, scope: !1131, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 127, column: 27, scope: !1198, inlinedAt: !1196)
!1212 = !DILocation(line: 104, column: 20, scope: !1131, inlinedAt: !1211)
!1213 = !DILocation(line: 105, column: 7, scope: !1214, inlinedAt: !1211)
!1214 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 105, column: 7)
!1215 = !DILocation(line: 105, column: 7, scope: !1131, inlinedAt: !1211)
!1216 = !DILocation(line: 106, column: 14, scope: !1214, inlinedAt: !1211)
!1217 = !DILocation(line: 106, column: 12, scope: !1214, inlinedAt: !1211)
!1218 = !DILocation(line: 106, column: 5, scope: !1214, inlinedAt: !1211)
!1219 = !DILocation(line: 127, column: 25, scope: !1198, inlinedAt: !1196)
!1220 = !DILocation(line: 127, column: 5, scope: !1198, inlinedAt: !1196)
!1221 = !DILocation(line: 141, column: 13, scope: !1222, inlinedAt: !1196)
!1222 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 141, column: 11)
!1223 = !DILocation(line: 141, column: 11, scope: !1194, inlinedAt: !1196)
!1224 = !DILocation(line: 0, scope: !1222, inlinedAt: !1196)
!1225 = !DILocation(line: 146, column: 13, scope: !1193, inlinedAt: !1196)
!1226 = !DILocation(line: 146, column: 11, scope: !1194, inlinedAt: !1196)
!1227 = !DILocation(line: 0, scope: !1131, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 149, column: 15, scope: !1192, inlinedAt: !1196)
!1229 = !DILocation(line: 104, column: 20, scope: !1131, inlinedAt: !1228)
!1230 = !DILocation(line: 105, column: 7, scope: !1214, inlinedAt: !1228)
!1231 = !DILocation(line: 105, column: 7, scope: !1131, inlinedAt: !1228)
!1232 = !DILocation(line: 106, column: 14, scope: !1214, inlinedAt: !1228)
!1233 = !DILocation(line: 106, column: 12, scope: !1214, inlinedAt: !1228)
!1234 = !DILocation(line: 106, column: 5, scope: !1214, inlinedAt: !1228)
!1235 = !DILocation(line: 0, scope: !1236, inlinedAt: !1196)
!1236 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 152, column: 15)
!1237 = !DILocation(line: 158, column: 31, scope: !1192, inlinedAt: !1196)
!1238 = !DILocation(line: 158, column: 15, scope: !1192, inlinedAt: !1196)
!1239 = !DILocation(line: 159, column: 17, scope: !1240, inlinedAt: !1196)
!1240 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 159, column: 15)
!1241 = !DILocation(line: 159, column: 15, scope: !1192, inlinedAt: !1196)
!1242 = !DILocation(line: 161, column: 26, scope: !1243, inlinedAt: !1196)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 160, column: 13)
!1244 = !DILocation(line: 163, column: 13, scope: !1243, inlinedAt: !1196)
!1245 = !DILocation(line: 166, column: 15, scope: !1246, inlinedAt: !1196)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 166, column: 15)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 166, column: 15)
!1248 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 165, column: 13)
!1249 = !DILocation(line: 166, column: 15, scope: !1247, inlinedAt: !1196)
!1250 = !DILocation(line: 167, column: 26, scope: !1248, inlinedAt: !1196)
!1251 = !DILocation(line: 0, scope: !1240, inlinedAt: !1196)
!1252 = !DILocation(line: 171, column: 20, scope: !1192, inlinedAt: !1196)
!1253 = !DILocation(line: 171, column: 11, scope: !1192, inlinedAt: !1196)
!1254 = !DILocation(line: 173, column: 41, scope: !1191, inlinedAt: !1196)
!1255 = !DILocation(line: 173, column: 25, scope: !1191, inlinedAt: !1196)
!1256 = !DILocation(line: 0, scope: !1191, inlinedAt: !1196)
!1257 = !DILocation(line: 174, column: 23, scope: !1258, inlinedAt: !1196)
!1258 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 174, column: 19)
!1259 = !DILocation(line: 174, column: 19, scope: !1191, inlinedAt: !1196)
!1260 = !DILocation(line: 176, column: 22, scope: !1261, inlinedAt: !1196)
!1261 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 175, column: 17)
!1262 = !DILocation(line: 176, column: 30, scope: !1261, inlinedAt: !1196)
!1263 = !{!1200, !851, i64 24}
!1264 = !DILocation(line: 177, column: 26, scope: !1261, inlinedAt: !1196)
!1265 = !DILocation(line: 178, column: 17, scope: !1261, inlinedAt: !1196)
!1266 = !DILocation(line: 181, column: 19, scope: !1267, inlinedAt: !1196)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 181, column: 19)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 181, column: 19)
!1269 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 180, column: 17)
!1270 = !DILocation(line: 181, column: 19, scope: !1268, inlinedAt: !1196)
!1271 = !DILocation(line: 182, column: 22, scope: !1269, inlinedAt: !1196)
!1272 = !DILocation(line: 182, column: 30, scope: !1269, inlinedAt: !1196)
!1273 = !DILocation(line: 183, column: 26, scope: !1269, inlinedAt: !1196)
!1274 = !DILocation(line: 0, scope: !1258, inlinedAt: !1196)
!1275 = distinct !{!1275, !1253, !1276, !960}
!1276 = !DILocation(line: 185, column: 13, scope: !1192, inlinedAt: !1196)
!1277 = !DILocation(line: 188, column: 18, scope: !1278, inlinedAt: !1196)
!1278 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 188, column: 15)
!1279 = !DILocation(line: 188, column: 26, scope: !1278, inlinedAt: !1196)
!1280 = !DILocation(line: 188, column: 31, scope: !1278, inlinedAt: !1196)
!1281 = !DILocation(line: 188, column: 15, scope: !1278, inlinedAt: !1196)
!1282 = !DILocation(line: 188, column: 48, scope: !1278, inlinedAt: !1196)
!1283 = !DILocation(line: 188, column: 45, scope: !1278, inlinedAt: !1196)
!1284 = !DILocation(line: 188, column: 15, scope: !1192, inlinedAt: !1196)
!1285 = !DILocation(line: 190, column: 26, scope: !1286, inlinedAt: !1196)
!1286 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 189, column: 13)
!1287 = !DILocation(line: 191, column: 15, scope: !1286, inlinedAt: !1196)
!1288 = !DILocation(line: 194, column: 18, scope: !1289, inlinedAt: !1196)
!1289 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 194, column: 15)
!1290 = !DILocation(line: 194, column: 15, scope: !1289, inlinedAt: !1196)
!1291 = !DILocation(line: 194, column: 26, scope: !1289, inlinedAt: !1196)
!1292 = !DILocation(line: 194, column: 15, scope: !1192, inlinedAt: !1196)
!1293 = !DILocation(line: 198, column: 19, scope: !1294, inlinedAt: !1196)
!1294 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 195, column: 13)
!1295 = !DILocation(line: 200, column: 32, scope: !1296, inlinedAt: !1196)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !2, line: 199, column: 17)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 198, column: 19)
!1298 = !DILocation(line: 200, column: 22, scope: !1296, inlinedAt: !1196)
!1299 = !DILocation(line: 200, column: 27, scope: !1296, inlinedAt: !1196)
!1300 = !{!1200, !850, i64 8}
!1301 = !DILocation(line: 202, column: 17, scope: !1296, inlinedAt: !1196)
!1302 = !DILocation(line: 205, column: 33, scope: !1303, inlinedAt: !1196)
!1303 = distinct !DILexicalBlock(scope: !1297, file: !2, line: 204, column: 17)
!1304 = !DILocation(line: 205, column: 22, scope: !1303, inlinedAt: !1196)
!1305 = !DILocation(line: 205, column: 28, scope: !1303, inlinedAt: !1196)
!1306 = !DILocation(line: 0, scope: !1297, inlinedAt: !1196)
!1307 = !DILocation(line: 208, column: 39, scope: !1294, inlinedAt: !1196)
!1308 = !DILocation(line: 209, column: 13, scope: !1294, inlinedAt: !1196)
!1309 = !DILocation(line: 213, column: 19, scope: !1310, inlinedAt: !1196)
!1310 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 211, column: 13)
!1311 = !DILocation(line: 215, column: 26, scope: !1312, inlinedAt: !1196)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 214, column: 17)
!1313 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 213, column: 19)
!1314 = !DILocation(line: 216, column: 33, scope: !1312, inlinedAt: !1196)
!1315 = !DILocation(line: 216, column: 28, scope: !1312, inlinedAt: !1196)
!1316 = !DILocation(line: 217, column: 27, scope: !1312, inlinedAt: !1196)
!1317 = !DILocation(line: 218, column: 32, scope: !1312, inlinedAt: !1196)
!1318 = !DILocation(line: 218, column: 22, scope: !1312, inlinedAt: !1196)
!1319 = !DILocation(line: 218, column: 27, scope: !1312, inlinedAt: !1196)
!1320 = !DILocation(line: 220, column: 17, scope: !1312, inlinedAt: !1196)
!1321 = !DILocation(line: 223, column: 26, scope: !1322, inlinedAt: !1196)
!1322 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 222, column: 17)
!1323 = !DILocation(line: 224, column: 32, scope: !1322, inlinedAt: !1196)
!1324 = !DILocation(line: 224, column: 27, scope: !1322, inlinedAt: !1196)
!1325 = !DILocation(line: 225, column: 28, scope: !1322, inlinedAt: !1196)
!1326 = !DILocation(line: 226, column: 33, scope: !1322, inlinedAt: !1196)
!1327 = !DILocation(line: 226, column: 22, scope: !1322, inlinedAt: !1196)
!1328 = !DILocation(line: 226, column: 28, scope: !1322, inlinedAt: !1196)
!1329 = !DILocation(line: 0, scope: !1313, inlinedAt: !1196)
!1330 = !DILocation(line: 230, column: 26, scope: !1310, inlinedAt: !1196)
!1331 = !DILocation(line: 231, column: 26, scope: !1310, inlinedAt: !1196)
!1332 = !DILocation(line: 232, column: 22, scope: !1333, inlinedAt: !1196)
!1333 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 232, column: 19)
!1334 = !DILocation(line: 232, column: 19, scope: !1333, inlinedAt: !1196)
!1335 = !DILocation(line: 232, column: 30, scope: !1333, inlinedAt: !1196)
!1336 = !DILocation(line: 232, column: 19, scope: !1310, inlinedAt: !1196)
!1337 = !DILocation(line: 234, column: 35, scope: !1338, inlinedAt: !1196)
!1338 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 234, column: 24)
!1339 = !DILocation(line: 234, column: 24, scope: !1333, inlinedAt: !1196)
!1340 = !DILocation(line: 0, scope: !1333, inlinedAt: !1196)
!1341 = !DILocation(line: 236, column: 26, scope: !1310, inlinedAt: !1196)
!1342 = !DILocation(line: 0, scope: !1289, inlinedAt: !1196)
!1343 = !DILocation(line: 240, column: 23, scope: !1344, inlinedAt: !1196)
!1344 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 240, column: 15)
!1345 = !DILocation(line: 240, column: 17, scope: !1344, inlinedAt: !1196)
!1346 = !DILocation(line: 240, column: 15, scope: !1192, inlinedAt: !1196)
!1347 = !DILocation(line: 241, column: 22, scope: !1344, inlinedAt: !1196)
!1348 = !DILocation(line: 241, column: 13, scope: !1344, inlinedAt: !1196)
!1349 = !DILocation(line: 243, column: 16, scope: !1344, inlinedAt: !1196)
!1350 = !DILocation(line: 243, column: 21, scope: !1344, inlinedAt: !1196)
!1351 = !DILocation(line: 249, column: 14, scope: !1352, inlinedAt: !1196)
!1352 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 249, column: 11)
!1353 = !DILocation(line: 249, column: 11, scope: !1352, inlinedAt: !1196)
!1354 = !DILocation(line: 249, column: 11, scope: !1194, inlinedAt: !1196)
!1355 = distinct !{!1355, !1356, !1357}
!1356 = !DILocation(line: 133, column: 3, scope: !1179, inlinedAt: !1196)
!1357 = !DILocation(line: 256, column: 5, scope: !1179, inlinedAt: !1196)
!1358 = !DILocation(line: 461, column: 11, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 461, column: 11)
!1360 = !DILocation(line: 461, column: 11, scope: !1119)
!1361 = !DILocalVariable(name: "j", arg: 1, scope: !1362, file: !2, line: 264, type: !371)
!1362 = distinct !DISubprogram(name: "record_relation", scope: !2, file: !2, line: 264, type: !1363, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1365)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !371, !371}
!1365 = !{!1361, !1366, !1367}
!1366 = !DILocalVariable(name: "k", arg: 2, scope: !1362, file: !2, line: 264, type: !371)
!1367 = !DILocalVariable(name: "p", scope: !1362, file: !2, line: 266, type: !382)
!1368 = !DILocation(line: 0, scope: !1362, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 464, column: 11, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 462, column: 9)
!1371 = !DILocation(line: 268, column: 18, scope: !1372, inlinedAt: !1369)
!1372 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 268, column: 7)
!1373 = !DILocation(line: 268, column: 26, scope: !1372, inlinedAt: !1369)
!1374 = !DILocation(line: 0, scope: !925, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 268, column: 8, scope: !1372, inlinedAt: !1369)
!1376 = !DILocation(line: 1361, column: 11, scope: !925, inlinedAt: !1375)
!1377 = !DILocation(line: 1361, column: 10, scope: !925, inlinedAt: !1375)
!1378 = !DILocation(line: 268, column: 7, scope: !1362, inlinedAt: !1369)
!1379 = !DILocation(line: 270, column: 10, scope: !1380, inlinedAt: !1369)
!1380 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 269, column: 5)
!1381 = !DILocation(line: 270, column: 15, scope: !1380, inlinedAt: !1369)
!1382 = !{!1200, !1169, i64 32}
!1383 = !DILocation(line: 271, column: 11, scope: !1380, inlinedAt: !1369)
!1384 = !DILocation(line: 272, column: 14, scope: !1380, inlinedAt: !1369)
!1385 = !{!1386, !850, i64 0}
!1386 = !{!"successor", !850, i64 0, !850, i64 8}
!1387 = !DILocation(line: 273, column: 20, scope: !1380, inlinedAt: !1369)
!1388 = !{!1200, !850, i64 48}
!1389 = !DILocation(line: 273, column: 10, scope: !1380, inlinedAt: !1369)
!1390 = !DILocation(line: 273, column: 15, scope: !1380, inlinedAt: !1369)
!1391 = !{!1386, !850, i64 8}
!1392 = !DILocation(line: 274, column: 14, scope: !1380, inlinedAt: !1369)
!1393 = !DILocation(line: 275, column: 5, scope: !1380, inlinedAt: !1369)
!1394 = !DILocation(line: 471, column: 9, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 471, column: 7)
!1396 = !DILocation(line: 471, column: 7, scope: !1103)
!1397 = !DILocation(line: 472, column: 5, scope: !1395)
!1398 = !DILocalVariable(name: "root", arg: 1, scope: !1399, file: !2, line: 420, type: !371)
!1399 = distinct !DISubprogram(name: "walk_tree", scope: !2, file: !2, line: 420, type: !1400, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1405)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{null, !371, !1402}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!154, !371}
!1405 = !{!1398, !1406}
!1406 = !DILocalVariable(name: "action", arg: 2, scope: !1399, file: !2, line: 420, type: !1402)
!1407 = !DILocation(line: 0, scope: !1399, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 476, column: 3, scope: !1103)
!1409 = !DILocation(line: 422, column: 13, scope: !1410, inlinedAt: !1408)
!1410 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 422, column: 7)
!1411 = !DILocation(line: 422, column: 7, scope: !1410, inlinedAt: !1408)
!1412 = !DILocation(line: 422, column: 7, scope: !1399, inlinedAt: !1408)
!1413 = !DILocation(line: 423, column: 5, scope: !1410, inlinedAt: !1408)
!1414 = !DILocation(line: 478, column: 10, scope: !1103)
!1415 = !{!1169, !1169, i64 0}
!1416 = !DILocation(line: 478, column: 20, scope: !1103)
!1417 = !DILocation(line: 478, column: 3, scope: !1103)
!1418 = !DILocation(line: 0, scope: !1399, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 481, column: 7, scope: !1122)
!1420 = !DILocation(line: 422, column: 7, scope: !1399, inlinedAt: !1419)
!1421 = !DILocation(line: 423, column: 5, scope: !1410, inlinedAt: !1419)
!1422 = !DILocation(line: 483, column: 14, scope: !1122)
!1423 = !DILocation(line: 483, column: 7, scope: !1122)
!1424 = !DILocation(line: 510, column: 11, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 510, column: 11)
!1426 = !DILocation(line: 485, column: 39, scope: !1121)
!1427 = !DILocation(line: 0, scope: !1121)
!1428 = !DILocation(line: 488, column: 23, scope: !1121)
!1429 = !DILocation(line: 488, column: 11, scope: !1121)
!1430 = !DILocation(line: 489, column: 11, scope: !1121)
!1431 = !DILocation(line: 489, column: 17, scope: !1121)
!1432 = !DILocation(line: 489, column: 25, scope: !1121)
!1433 = !{!1200, !1201, i64 25}
!1434 = !DILocation(line: 490, column: 20, scope: !1121)
!1435 = !DILocation(line: 493, column: 11, scope: !1121)
!1436 = !DILocation(line: 495, column: 18, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 494, column: 13)
!1438 = !DILocation(line: 495, column: 23, scope: !1437)
!1439 = !DILocation(line: 495, column: 28, scope: !1437)
!1440 = !DILocation(line: 496, column: 33, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1437, file: !2, line: 496, column: 19)
!1442 = !DILocation(line: 496, column: 19, scope: !1437)
!1443 = !DILocation(line: 498, column: 26, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1441, file: !2, line: 497, column: 17)
!1445 = !DILocation(line: 498, column: 32, scope: !1444)
!1446 = !{!1200, !850, i64 40}
!1447 = !DILocation(line: 499, column: 25, scope: !1444)
!1448 = !DILocation(line: 500, column: 17, scope: !1444)
!1449 = !DILocation(line: 502, column: 22, scope: !1437)
!1450 = distinct !{!1450, !1435, !1451, !960}
!1451 = !DILocation(line: 503, column: 13, scope: !1121)
!1452 = !DILocation(line: 506, column: 24, scope: !1121)
!1453 = !DILocation(line: 506, column: 16, scope: !1121)
!1454 = distinct !{!1454, !1423, !1455, !960}
!1455 = !DILocation(line: 507, column: 9, scope: !1122)
!1456 = !DILocation(line: 510, column: 21, scope: !1425)
!1457 = !DILocation(line: 510, column: 11, scope: !1122)
!1458 = !DILocation(line: 513, column: 11, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1425, file: !2, line: 511, column: 9)
!1460 = !DILocation(line: 517, column: 11, scope: !1459)
!1461 = !DILocation(line: 0, scope: !1399, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 518, column: 13, scope: !1459)
!1463 = !DILocation(line: 422, column: 7, scope: !1399, inlinedAt: !1462)
!1464 = !DILocation(line: 423, column: 5, scope: !1410, inlinedAt: !1462)
!1465 = !DILocation(line: 519, column: 18, scope: !1459)
!1466 = !DILocation(line: 518, column: 13, scope: !1459)
!1467 = distinct !{!1467, !1460, !1468, !960}
!1468 = !DILocation(line: 519, column: 22, scope: !1459)
!1469 = distinct !{!1469, !1417, !1470, !960}
!1470 = !DILocation(line: 521, column: 5, scope: !1103)
!1471 = !DILocation(line: 527, column: 9, scope: !1103)
!1472 = !DILocation(line: 523, column: 15, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 523, column: 7)
!1474 = !DILocation(line: 523, column: 7, scope: !1473)
!1475 = !DILocation(line: 523, column: 22, scope: !1473)
!1476 = !DILocation(line: 523, column: 7, scope: !1103)
!1477 = !DILocation(line: 524, column: 5, scope: !1473)
!1478 = !DILocation(line: 527, column: 3, scope: !1103)
!1479 = !DISubprogram(name: "__errno_location", scope: !1480, file: !1480, line: 37, type: !1481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1480 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!404}
!1483 = !DISubprogram(name: "__assert_fail", scope: !1484, file: !1484, line: 69, type: !1485, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1484 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !107, !107, !64, !107}
!1487 = distinct !DISubprogram(name: "count_items", scope: !2, file: !2, line: 279, type: !1403, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1488)
!1488 = !{!1489}
!1489 = !DILocalVariable(name: "unused", arg: 1, scope: !1487, file: !2, line: 279, type: !371)
!1490 = !DILocation(line: 0, scope: !1487)
!1491 = !DILocation(line: 281, column: 12, scope: !1487)
!1492 = !DILocation(line: 282, column: 3, scope: !1487)
!1493 = distinct !DISubprogram(name: "recurse_tree", scope: !2, file: !2, line: 397, type: !1494, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1496)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!154, !371, !1402}
!1496 = !{!1497, !1498}
!1497 = !DILocalVariable(name: "root", arg: 1, scope: !1493, file: !2, line: 397, type: !371)
!1498 = !DILocalVariable(name: "action", arg: 2, scope: !1493, file: !2, line: 397, type: !1402)
!1499 = !DILocation(line: 0, scope: !1493)
!1500 = !DILocation(line: 399, column: 13, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 399, column: 7)
!1502 = !DILocation(line: 399, column: 18, scope: !1501)
!1503 = !DILocation(line: 399, column: 26, scope: !1501)
!1504 = !DILocation(line: 399, column: 35, scope: !1501)
!1505 = !DILocation(line: 399, column: 41, scope: !1501)
!1506 = !DILocation(line: 399, column: 7, scope: !1493)
!1507 = !DILocation(line: 400, column: 12, scope: !1501)
!1508 = !{ptr @count_items, ptr @detect_loop, ptr @scan_zeros}
!1509 = !DILocation(line: 400, column: 5, scope: !1501)
!1510 = !DILocation(line: 404, column: 13, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 404, column: 13)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !2, line: 403, column: 11)
!1513 = distinct !DILexicalBlock(scope: !1501, file: !2, line: 402, column: 5)
!1514 = !DILocation(line: 404, column: 13, scope: !1512)
!1515 = !DILocation(line: 406, column: 11, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1513, file: !2, line: 406, column: 11)
!1517 = !DILocation(line: 406, column: 11, scope: !1513)
!1518 = !DILocation(line: 408, column: 17, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1513, file: !2, line: 408, column: 11)
!1520 = !DILocation(line: 408, column: 23, scope: !1519)
!1521 = !DILocation(line: 408, column: 11, scope: !1513)
!1522 = !DILocation(line: 409, column: 13, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 409, column: 13)
!1524 = !DILocation(line: 409, column: 13, scope: !1519)
!1525 = !DILocation(line: 413, column: 3, scope: !1493)
!1526 = !DILocation(line: 414, column: 1, scope: !1493)
!1527 = distinct !DISubprogram(name: "scan_zeros", scope: !2, file: !2, line: 286, type: !1403, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1528)
!1528 = !{!1529}
!1529 = !DILocalVariable(name: "k", arg: 1, scope: !1527, file: !2, line: 286, type: !371)
!1530 = !DILocation(line: 0, scope: !1527)
!1531 = !DILocation(line: 289, column: 10, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 289, column: 7)
!1533 = !DILocation(line: 289, column: 16, scope: !1532)
!1534 = !DILocation(line: 289, column: 21, scope: !1532)
!1535 = !DILocation(line: 289, column: 28, scope: !1532)
!1536 = !{i8 0, i8 2}
!1537 = !DILocation(line: 289, column: 7, scope: !1527)
!1538 = !DILocation(line: 291, column: 11, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !2, line: 291, column: 11)
!1540 = distinct !DILexicalBlock(scope: !1532, file: !2, line: 290, column: 5)
!1541 = !DILocation(line: 291, column: 16, scope: !1539)
!1542 = !DILocation(line: 291, column: 11, scope: !1540)
!1543 = !DILocation(line: 0, scope: !1539)
!1544 = !DILocation(line: 296, column: 13, scope: !1540)
!1545 = !DILocation(line: 297, column: 5, scope: !1540)
!1546 = !DILocation(line: 299, column: 3, scope: !1527)
!1547 = !DISubprogram(name: "puts", scope: !908, file: !908, line: 661, type: !1548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!52, !107}
!1550 = distinct !DISubprogram(name: "detect_loop", scope: !2, file: !2, line: 321, type: !1403, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1551)
!1551 = !{!1552, !1553, !1559, !1566, !1569}
!1552 = !DILocalVariable(name: "k", arg: 1, scope: !1550, file: !2, line: 321, type: !371)
!1553 = !DILocalVariable(name: "p", scope: !1554, file: !2, line: 333, type: !1558)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 332, column: 9)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !2, line: 328, column: 11)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 324, column: 5)
!1557 = distinct !DILexicalBlock(scope: !1550, file: !2, line: 323, column: 7)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!1559 = !DILocalVariable(name: "tmp", scope: !1560, file: !2, line: 344, type: !371)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !2, line: 343, column: 25)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 340, column: 21)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !2, line: 339, column: 23)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !2, line: 338, column: 17)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !2, line: 337, column: 19)
!1565 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 336, column: 13)
!1566 = !DILocalVariable(name: "s", scope: !1567, file: !2, line: 352, type: !382)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !2, line: 350, column: 29)
!1568 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 349, column: 31)
!1569 = !DILocalVariable(name: "tmp", scope: !1570, file: !2, line: 367, type: !371)
!1570 = distinct !DILexicalBlock(scope: !1561, file: !2, line: 366, column: 25)
!1571 = !DILocation(line: 0, scope: !1550)
!1572 = !DILocation(line: 323, column: 10, scope: !1557)
!1573 = !DILocation(line: 323, column: 16, scope: !1557)
!1574 = !DILocation(line: 323, column: 7, scope: !1550)
!1575 = !DILocation(line: 328, column: 11, scope: !1555)
!1576 = !DILocation(line: 328, column: 16, scope: !1555)
!1577 = !DILocation(line: 328, column: 11, scope: !1556)
!1578 = !DILocation(line: 333, column: 38, scope: !1554)
!1579 = !DILocation(line: 0, scope: !1554)
!1580 = !DILocation(line: 335, column: 18, scope: !1554)
!1581 = !DILocation(line: 335, column: 11, scope: !1554)
!1582 = !DILocation(line: 337, column: 25, scope: !1564)
!1583 = !DILocation(line: 337, column: 29, scope: !1564)
!1584 = !DILocation(line: 337, column: 19, scope: !1565)
!1585 = !DILocation(line: 385, column: 26, scope: !1565)
!1586 = distinct !{!1586, !1581, !1587, !960}
!1587 = !DILocation(line: 386, column: 13, scope: !1554)
!1588 = !DILocation(line: 339, column: 26, scope: !1562)
!1589 = !DILocation(line: 339, column: 23, scope: !1562)
!1590 = !DILocation(line: 339, column: 23, scope: !1563)
!1591 = !DILocation(line: 344, column: 52, scope: !1560)
!1592 = !DILocation(line: 0, scope: !1560)
!1593 = !DILocation(line: 346, column: 27, scope: !1560)
!1594 = !DILocation(line: 349, column: 31, scope: !1568)
!1595 = !DILocation(line: 349, column: 36, scope: !1568)
!1596 = !DILocation(line: 349, column: 31, scope: !1560)
!1597 = !DILocation(line: 361, column: 33, scope: !1560)
!1598 = !DILocation(line: 361, column: 39, scope: !1560)
!1599 = !DILocation(line: 362, column: 32, scope: !1560)
!1600 = !DILocation(line: 342, column: 23, scope: !1561)
!1601 = !DILocation(line: 352, column: 53, scope: !1567)
!1602 = !DILocation(line: 0, scope: !1567)
!1603 = !DILocation(line: 353, column: 34, scope: !1567)
!1604 = !DILocation(line: 353, column: 39, scope: !1567)
!1605 = !DILocation(line: 353, column: 44, scope: !1567)
!1606 = !DILocation(line: 354, column: 39, scope: !1567)
!1607 = !DILocation(line: 354, column: 34, scope: !1567)
!1608 = !DILocation(line: 365, column: 23, scope: !1561)
!1609 = !DILocation(line: 367, column: 52, scope: !1570)
!1610 = !DILocation(line: 0, scope: !1570)
!1611 = !DILocation(line: 369, column: 39, scope: !1570)
!1612 = distinct !{!1612, !1608, !1613, !960}
!1613 = !DILocation(line: 371, column: 25, scope: !1561)
!1614 = !DILocation(line: 379, column: 32, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 378, column: 21)
!1616 = !DILocation(line: 381, column: 23, scope: !1615)
!1617 = !DILocation(line: 0, scope: !1555)
!1618 = !DILocation(line: 391, column: 1, scope: !1550)
!1619 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !416, file: !416, line: 50, type: !863, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1620)
!1620 = !{!1621}
!1621 = !DILocalVariable(name: "file", arg: 1, scope: !1619, file: !416, line: 50, type: !107)
!1622 = !DILocation(line: 0, scope: !1619)
!1623 = !DILocation(line: 52, column: 13, scope: !1619)
!1624 = !DILocation(line: 53, column: 1, scope: !1619)
!1625 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !416, file: !416, line: 87, type: !1626, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1628)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{null, !154}
!1628 = !{!1629}
!1629 = !DILocalVariable(name: "ignore", arg: 1, scope: !1625, file: !416, line: 87, type: !154)
!1630 = !DILocation(line: 0, scope: !1625)
!1631 = !DILocation(line: 89, column: 16, scope: !1625)
!1632 = !{!1201, !1201, i64 0}
!1633 = !DILocation(line: 90, column: 1, scope: !1625)
!1634 = distinct !DISubprogram(name: "close_stdout", scope: !416, file: !416, line: 116, type: !477, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1635)
!1635 = !{!1636}
!1636 = !DILocalVariable(name: "write_error", scope: !1637, file: !416, line: 121, type: !107)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !416, line: 120, column: 5)
!1638 = distinct !DILexicalBlock(scope: !1634, file: !416, line: 118, column: 7)
!1639 = !DILocation(line: 118, column: 21, scope: !1638)
!1640 = !DILocation(line: 118, column: 7, scope: !1638)
!1641 = !DILocation(line: 118, column: 29, scope: !1638)
!1642 = !DILocation(line: 119, column: 7, scope: !1638)
!1643 = !DILocation(line: 119, column: 12, scope: !1638)
!1644 = !DILocation(line: 119, column: 25, scope: !1638)
!1645 = !DILocation(line: 119, column: 28, scope: !1638)
!1646 = !DILocation(line: 119, column: 34, scope: !1638)
!1647 = !DILocation(line: 118, column: 7, scope: !1634)
!1648 = !DILocation(line: 121, column: 33, scope: !1637)
!1649 = !DILocation(line: 0, scope: !1637)
!1650 = !DILocation(line: 122, column: 11, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1637, file: !416, line: 122, column: 11)
!1652 = !DILocation(line: 0, scope: !1651)
!1653 = !DILocation(line: 122, column: 11, scope: !1637)
!1654 = !DILocation(line: 123, column: 9, scope: !1651)
!1655 = !DILocation(line: 126, column: 9, scope: !1651)
!1656 = !DILocation(line: 128, column: 14, scope: !1637)
!1657 = !DILocation(line: 128, column: 7, scope: !1637)
!1658 = !DILocation(line: 133, column: 42, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1634, file: !416, line: 133, column: 7)
!1660 = !DILocation(line: 133, column: 28, scope: !1659)
!1661 = !DILocation(line: 133, column: 50, scope: !1659)
!1662 = !DILocation(line: 133, column: 7, scope: !1634)
!1663 = !DILocation(line: 134, column: 12, scope: !1659)
!1664 = !DILocation(line: 134, column: 5, scope: !1659)
!1665 = !DILocation(line: 135, column: 1, scope: !1634)
!1666 = !DISubprogram(name: "_exit", scope: !1667, file: !1667, line: 624, type: !839, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1667 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1668 = distinct !DISubprogram(name: "verror", scope: !431, file: !431, line: 251, type: !1669, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1671)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{null, !52, !52, !107, !441}
!1671 = !{!1672, !1673, !1674, !1675}
!1672 = !DILocalVariable(name: "status", arg: 1, scope: !1668, file: !431, line: 251, type: !52)
!1673 = !DILocalVariable(name: "errnum", arg: 2, scope: !1668, file: !431, line: 251, type: !52)
!1674 = !DILocalVariable(name: "message", arg: 3, scope: !1668, file: !431, line: 251, type: !107)
!1675 = !DILocalVariable(name: "args", arg: 4, scope: !1668, file: !431, line: 251, type: !441)
!1676 = !DILocation(line: 0, scope: !1668)
!1677 = !DILocation(line: 261, column: 3, scope: !1668)
!1678 = !DILocation(line: 265, column: 7, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1668, file: !431, line: 265, column: 7)
!1680 = !DILocation(line: 265, column: 7, scope: !1668)
!1681 = !DILocation(line: 266, column: 5, scope: !1679)
!1682 = !DILocation(line: 272, column: 7, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1679, file: !431, line: 268, column: 5)
!1684 = !DILocation(line: 276, column: 3, scope: !1668)
!1685 = !DILocation(line: 282, column: 1, scope: !1668)
!1686 = distinct !DISubprogram(name: "flush_stdout", scope: !431, file: !431, line: 163, type: !477, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1687)
!1687 = !{!1688}
!1688 = !DILocalVariable(name: "stdout_fd", scope: !1686, file: !431, line: 166, type: !52)
!1689 = !DILocation(line: 0, scope: !1686)
!1690 = !DILocalVariable(name: "fd", arg: 1, scope: !1691, file: !431, line: 145, type: !52)
!1691 = distinct !DISubprogram(name: "is_open", scope: !431, file: !431, line: 145, type: !1692, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1694)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!52, !52}
!1694 = !{!1690}
!1695 = !DILocation(line: 0, scope: !1691, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 182, column: 25, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1686, file: !431, line: 182, column: 7)
!1698 = !DILocation(line: 157, column: 15, scope: !1691, inlinedAt: !1696)
!1699 = !DILocation(line: 157, column: 12, scope: !1691, inlinedAt: !1696)
!1700 = !DILocation(line: 182, column: 7, scope: !1686)
!1701 = !DILocation(line: 184, column: 5, scope: !1697)
!1702 = !DILocation(line: 185, column: 1, scope: !1686)
!1703 = distinct !DISubprogram(name: "error_tail", scope: !431, file: !431, line: 219, type: !1669, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1704)
!1704 = !{!1705, !1706, !1707, !1708}
!1705 = !DILocalVariable(name: "status", arg: 1, scope: !1703, file: !431, line: 219, type: !52)
!1706 = !DILocalVariable(name: "errnum", arg: 2, scope: !1703, file: !431, line: 219, type: !52)
!1707 = !DILocalVariable(name: "message", arg: 3, scope: !1703, file: !431, line: 219, type: !107)
!1708 = !DILocalVariable(name: "args", arg: 4, scope: !1703, file: !431, line: 219, type: !441)
!1709 = distinct !DIAssignID()
!1710 = !DILocation(line: 0, scope: !1703)
!1711 = !DILocation(line: 229, column: 13, scope: !1703)
!1712 = !DILocalVariable(name: "__stream", arg: 1, scope: !1713, file: !899, line: 132, type: !1716)
!1713 = distinct !DISubprogram(name: "vfprintf", scope: !899, file: !899, line: 132, type: !1714, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1751)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!52, !1716, !903, !441}
!1716 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1717)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !1719)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !1720)
!1720 = !{!1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1719, file: !171, line: 51, baseType: !52, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1719, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1719, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1719, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1719, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1719, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1719, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1719, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1719, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1719, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1719, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1719, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1719, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1719, file: !171, line: 70, baseType: !1735, size: 64, offset: 832)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1719, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1719, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1719, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1719, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1719, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1719, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1719, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1719, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1719, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1719, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1719, file: !171, line: 93, baseType: !1735, size: 64, offset: 1344)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1719, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1719, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1719, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1719, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!1751 = !{!1712, !1752, !1753}
!1752 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1713, file: !899, line: 133, type: !903)
!1753 = !DILocalVariable(name: "__ap", arg: 3, scope: !1713, file: !899, line: 133, type: !441)
!1754 = !DILocation(line: 0, scope: !1713, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 229, column: 3, scope: !1703)
!1756 = !DILocation(line: 135, column: 10, scope: !1713, inlinedAt: !1755)
!1757 = !DILocation(line: 232, column: 3, scope: !1703)
!1758 = !DILocation(line: 233, column: 7, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1703, file: !431, line: 233, column: 7)
!1760 = !DILocation(line: 233, column: 7, scope: !1703)
!1761 = !DILocalVariable(name: "errbuf", scope: !1762, file: !431, line: 193, type: !1766)
!1762 = distinct !DISubprogram(name: "print_errno_message", scope: !431, file: !431, line: 188, type: !839, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1763)
!1763 = !{!1764, !1765, !1761}
!1764 = !DILocalVariable(name: "errnum", arg: 1, scope: !1762, file: !431, line: 188, type: !52)
!1765 = !DILocalVariable(name: "s", scope: !1762, file: !431, line: 190, type: !107)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1767)
!1767 = !{!1768}
!1768 = !DISubrange(count: 1024)
!1769 = !DILocation(line: 0, scope: !1762, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 234, column: 5, scope: !1759)
!1771 = !DILocation(line: 193, column: 3, scope: !1762, inlinedAt: !1770)
!1772 = !DILocation(line: 195, column: 7, scope: !1762, inlinedAt: !1770)
!1773 = !DILocation(line: 207, column: 9, scope: !1774, inlinedAt: !1770)
!1774 = distinct !DILexicalBlock(scope: !1762, file: !431, line: 207, column: 7)
!1775 = !DILocation(line: 207, column: 7, scope: !1762, inlinedAt: !1770)
!1776 = !DILocation(line: 208, column: 9, scope: !1774, inlinedAt: !1770)
!1777 = !DILocation(line: 208, column: 5, scope: !1774, inlinedAt: !1770)
!1778 = !DILocation(line: 214, column: 3, scope: !1762, inlinedAt: !1770)
!1779 = !DILocation(line: 216, column: 1, scope: !1762, inlinedAt: !1770)
!1780 = !DILocation(line: 234, column: 5, scope: !1759)
!1781 = !DILocation(line: 238, column: 3, scope: !1703)
!1782 = !DILocalVariable(name: "__c", arg: 1, scope: !1783, file: !1160, line: 101, type: !52)
!1783 = distinct !DISubprogram(name: "putc_unlocked", scope: !1160, file: !1160, line: 101, type: !1784, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1786)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!52, !52, !1717}
!1786 = !{!1782, !1787}
!1787 = !DILocalVariable(name: "__stream", arg: 2, scope: !1783, file: !1160, line: 101, type: !1717)
!1788 = !DILocation(line: 0, scope: !1783, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 238, column: 3, scope: !1703)
!1790 = !DILocation(line: 103, column: 10, scope: !1783, inlinedAt: !1789)
!1791 = !{!1168, !850, i64 40}
!1792 = !{!1168, !850, i64 48}
!1793 = !{!"branch_weights", i32 2000, i32 1}
!1794 = !DILocation(line: 240, column: 3, scope: !1703)
!1795 = !DILocation(line: 241, column: 7, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1703, file: !431, line: 241, column: 7)
!1797 = !DILocation(line: 241, column: 7, scope: !1703)
!1798 = !DILocation(line: 242, column: 5, scope: !1796)
!1799 = !DILocation(line: 243, column: 1, scope: !1703)
!1800 = !DISubprogram(name: "__vfprintf_chk", scope: !899, file: !899, line: 96, type: !1801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!52, !1716, !52, !903, !441}
!1803 = !DISubprogram(name: "strerror_r", scope: !1033, file: !1033, line: 444, type: !1804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!54, !52, !54, !104}
!1806 = !DISubprogram(name: "__overflow", scope: !908, file: !908, line: 886, type: !1807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!52, !1717, !52}
!1809 = !DISubprogram(name: "fflush_unlocked", scope: !908, file: !908, line: 239, type: !1810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!52, !1717}
!1812 = !DISubprogram(name: "fcntl", scope: !1813, file: !1813, line: 149, type: !1814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1813 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!52, !52, !52, null}
!1816 = distinct !DISubprogram(name: "error", scope: !431, file: !431, line: 285, type: !1817, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1819)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{null, !52, !52, !107, null}
!1819 = !{!1820, !1821, !1822, !1823}
!1820 = !DILocalVariable(name: "status", arg: 1, scope: !1816, file: !431, line: 285, type: !52)
!1821 = !DILocalVariable(name: "errnum", arg: 2, scope: !1816, file: !431, line: 285, type: !52)
!1822 = !DILocalVariable(name: "message", arg: 3, scope: !1816, file: !431, line: 285, type: !107)
!1823 = !DILocalVariable(name: "ap", scope: !1816, file: !431, line: 287, type: !1824)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !908, line: 52, baseType: !1825)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1826, line: 12, baseType: !1827)
!1826 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !431, baseType: !1828)
!1828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 192, elements: !35)
!1829 = distinct !DIAssignID()
!1830 = !DILocation(line: 0, scope: !1816)
!1831 = !DILocation(line: 287, column: 3, scope: !1816)
!1832 = !DILocation(line: 288, column: 3, scope: !1816)
!1833 = !DILocation(line: 289, column: 3, scope: !1816)
!1834 = !DILocation(line: 290, column: 3, scope: !1816)
!1835 = !DILocation(line: 291, column: 1, scope: !1816)
!1836 = !DILocation(line: 0, scope: !438)
!1837 = !DILocation(line: 302, column: 7, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !438, file: !431, line: 302, column: 7)
!1839 = !DILocation(line: 302, column: 7, scope: !438)
!1840 = !DILocation(line: 307, column: 11, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !431, line: 307, column: 11)
!1842 = distinct !DILexicalBlock(scope: !1838, file: !431, line: 303, column: 5)
!1843 = !DILocation(line: 307, column: 27, scope: !1841)
!1844 = !DILocation(line: 308, column: 11, scope: !1841)
!1845 = !DILocation(line: 308, column: 28, scope: !1841)
!1846 = !DILocation(line: 308, column: 25, scope: !1841)
!1847 = !DILocation(line: 309, column: 15, scope: !1841)
!1848 = !DILocation(line: 309, column: 33, scope: !1841)
!1849 = !DILocation(line: 310, column: 19, scope: !1841)
!1850 = !DILocation(line: 311, column: 22, scope: !1841)
!1851 = !DILocation(line: 311, column: 56, scope: !1841)
!1852 = !DILocation(line: 307, column: 11, scope: !1842)
!1853 = !DILocation(line: 316, column: 21, scope: !1842)
!1854 = !DILocation(line: 317, column: 23, scope: !1842)
!1855 = !DILocation(line: 318, column: 5, scope: !1842)
!1856 = !DILocation(line: 327, column: 3, scope: !438)
!1857 = !DILocation(line: 331, column: 7, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !438, file: !431, line: 331, column: 7)
!1859 = !DILocation(line: 331, column: 7, scope: !438)
!1860 = !DILocation(line: 332, column: 5, scope: !1858)
!1861 = !DILocation(line: 338, column: 7, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1858, file: !431, line: 334, column: 5)
!1863 = !DILocation(line: 346, column: 3, scope: !438)
!1864 = !DILocation(line: 350, column: 3, scope: !438)
!1865 = !DILocation(line: 356, column: 1, scope: !438)
!1866 = distinct !DISubprogram(name: "error_at_line", scope: !431, file: !431, line: 359, type: !1867, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1869)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !52, !52, !107, !64, !107, null}
!1869 = !{!1870, !1871, !1872, !1873, !1874, !1875}
!1870 = !DILocalVariable(name: "status", arg: 1, scope: !1866, file: !431, line: 359, type: !52)
!1871 = !DILocalVariable(name: "errnum", arg: 2, scope: !1866, file: !431, line: 359, type: !52)
!1872 = !DILocalVariable(name: "file_name", arg: 3, scope: !1866, file: !431, line: 359, type: !107)
!1873 = !DILocalVariable(name: "line_number", arg: 4, scope: !1866, file: !431, line: 360, type: !64)
!1874 = !DILocalVariable(name: "message", arg: 5, scope: !1866, file: !431, line: 360, type: !107)
!1875 = !DILocalVariable(name: "ap", scope: !1866, file: !431, line: 362, type: !1824)
!1876 = distinct !DIAssignID()
!1877 = !DILocation(line: 0, scope: !1866)
!1878 = !DILocation(line: 362, column: 3, scope: !1866)
!1879 = !DILocation(line: 363, column: 3, scope: !1866)
!1880 = !DILocation(line: 364, column: 3, scope: !1866)
!1881 = !DILocation(line: 366, column: 3, scope: !1866)
!1882 = !DILocation(line: 367, column: 1, scope: !1866)
!1883 = distinct !DISubprogram(name: "fdadvise", scope: !752, file: !752, line: 25, type: !1884, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !1888)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{null, !52, !1886, !1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !908, line: 63, baseType: !193)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !755, line: 51, baseType: !754)
!1888 = !{!1889, !1890, !1891, !1892}
!1889 = !DILocalVariable(name: "fd", arg: 1, scope: !1883, file: !752, line: 25, type: !52)
!1890 = !DILocalVariable(name: "offset", arg: 2, scope: !1883, file: !752, line: 25, type: !1886)
!1891 = !DILocalVariable(name: "len", arg: 3, scope: !1883, file: !752, line: 25, type: !1886)
!1892 = !DILocalVariable(name: "advice", arg: 4, scope: !1883, file: !752, line: 25, type: !1887)
!1893 = !DILocation(line: 0, scope: !1883)
!1894 = !DILocation(line: 28, column: 3, scope: !1883)
!1895 = !DILocation(line: 30, column: 1, scope: !1883)
!1896 = !DISubprogram(name: "posix_fadvise", scope: !1813, file: !1813, line: 273, type: !1897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!52, !52, !1886, !1886, !52}
!1899 = distinct !DISubprogram(name: "fadvise", scope: !752, file: !752, line: 33, type: !1900, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !1936)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !1902, !1887}
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !1904)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !1905)
!1905 = !{!1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1904, file: !171, line: 51, baseType: !52, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1904, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1904, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1904, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1904, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1904, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1904, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1904, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1904, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1904, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1904, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1904, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1904, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1904, file: !171, line: 70, baseType: !1920, size: 64, offset: 832)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1904, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1904, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1904, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1904, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1904, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1904, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1904, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1904, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1904, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1904, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1904, file: !171, line: 93, baseType: !1920, size: 64, offset: 1344)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1904, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1904, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1904, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1904, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!1936 = !{!1937, !1938}
!1937 = !DILocalVariable(name: "fp", arg: 1, scope: !1899, file: !752, line: 33, type: !1902)
!1938 = !DILocalVariable(name: "advice", arg: 2, scope: !1899, file: !752, line: 33, type: !1887)
!1939 = !DILocation(line: 0, scope: !1899)
!1940 = !DILocation(line: 35, column: 7, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1899, file: !752, line: 35, column: 7)
!1942 = !DILocation(line: 35, column: 7, scope: !1899)
!1943 = !DILocation(line: 36, column: 15, scope: !1941)
!1944 = !DILocation(line: 0, scope: !1883, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 36, column: 5, scope: !1941)
!1946 = !DILocation(line: 28, column: 3, scope: !1883, inlinedAt: !1945)
!1947 = !DILocation(line: 36, column: 5, scope: !1941)
!1948 = !DILocation(line: 37, column: 1, scope: !1899)
!1949 = !DISubprogram(name: "fileno", scope: !908, file: !908, line: 809, type: !1950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!52, !1902}
!1952 = distinct !DISubprogram(name: "rpl_fclose", scope: !757, file: !757, line: 58, type: !1953, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !756, retainedNodes: !1989)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!52, !1955}
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !1957)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !1958)
!1958 = !{!1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1957, file: !171, line: 51, baseType: !52, size: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1957, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1957, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1957, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1957, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1957, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1957, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1957, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1957, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1957, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1957, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1957, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1957, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1957, file: !171, line: 70, baseType: !1973, size: 64, offset: 832)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1957, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1957, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1957, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1957, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1957, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1957, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1957, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1957, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1957, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1957, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1957, file: !171, line: 93, baseType: !1973, size: 64, offset: 1344)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1957, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1957, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1957, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1957, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!1989 = !{!1990, !1991, !1992, !1993}
!1990 = !DILocalVariable(name: "fp", arg: 1, scope: !1952, file: !757, line: 58, type: !1955)
!1991 = !DILocalVariable(name: "saved_errno", scope: !1952, file: !757, line: 60, type: !52)
!1992 = !DILocalVariable(name: "fd", scope: !1952, file: !757, line: 63, type: !52)
!1993 = !DILocalVariable(name: "result", scope: !1952, file: !757, line: 74, type: !52)
!1994 = !DILocation(line: 0, scope: !1952)
!1995 = !DILocation(line: 63, column: 12, scope: !1952)
!1996 = !DILocation(line: 64, column: 10, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1952, file: !757, line: 64, column: 7)
!1998 = !DILocation(line: 64, column: 7, scope: !1952)
!1999 = !DILocation(line: 65, column: 12, scope: !1997)
!2000 = !DILocation(line: 65, column: 5, scope: !1997)
!2001 = !DILocation(line: 70, column: 9, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1952, file: !757, line: 70, column: 7)
!2003 = !DILocation(line: 70, column: 23, scope: !2002)
!2004 = !DILocation(line: 70, column: 33, scope: !2002)
!2005 = !DILocation(line: 70, column: 26, scope: !2002)
!2006 = !DILocation(line: 70, column: 59, scope: !2002)
!2007 = !DILocation(line: 71, column: 7, scope: !2002)
!2008 = !DILocation(line: 71, column: 10, scope: !2002)
!2009 = !DILocation(line: 70, column: 7, scope: !1952)
!2010 = !DILocation(line: 100, column: 12, scope: !1952)
!2011 = !DILocation(line: 105, column: 7, scope: !1952)
!2012 = !DILocation(line: 72, column: 19, scope: !2002)
!2013 = !DILocation(line: 105, column: 19, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1952, file: !757, line: 105, column: 7)
!2015 = !DILocation(line: 107, column: 13, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2014, file: !757, line: 106, column: 5)
!2017 = !DILocation(line: 109, column: 5, scope: !2016)
!2018 = !DILocation(line: 112, column: 1, scope: !1952)
!2019 = !DISubprogram(name: "fclose", scope: !908, file: !908, line: 178, type: !1953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2020 = !DISubprogram(name: "__freading", scope: !2021, file: !2021, line: 51, type: !1953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2021 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2022 = !DISubprogram(name: "lseek", scope: !1667, file: !1667, line: 339, type: !2023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!193, !52, !193, !52}
!2025 = distinct !DISubprogram(name: "rpl_fflush", scope: !759, file: !759, line: 130, type: !2026, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !2062)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!52, !2028}
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2030)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2031)
!2031 = !{!2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2030, file: !171, line: 51, baseType: !52, size: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2030, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2030, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2030, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2030, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2030, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2030, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2030, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2030, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2030, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2030, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2030, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2030, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2030, file: !171, line: 70, baseType: !2046, size: 64, offset: 832)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2030, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2030, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2030, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2030, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2030, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2030, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2030, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2030, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2030, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2030, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2030, file: !171, line: 93, baseType: !2046, size: 64, offset: 1344)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2030, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2030, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2030, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2030, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2062 = !{!2063}
!2063 = !DILocalVariable(name: "stream", arg: 1, scope: !2025, file: !759, line: 130, type: !2028)
!2064 = !DILocation(line: 0, scope: !2025)
!2065 = !DILocation(line: 151, column: 14, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2025, file: !759, line: 151, column: 7)
!2067 = !DILocation(line: 151, column: 22, scope: !2066)
!2068 = !DILocation(line: 151, column: 27, scope: !2066)
!2069 = !DILocation(line: 151, column: 7, scope: !2025)
!2070 = !DILocation(line: 152, column: 12, scope: !2066)
!2071 = !DILocation(line: 152, column: 5, scope: !2066)
!2072 = !DILocalVariable(name: "fp", arg: 1, scope: !2073, file: !759, line: 42, type: !2028)
!2073 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !759, file: !759, line: 42, type: !2074, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !2076)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{null, !2028}
!2076 = !{!2072}
!2077 = !DILocation(line: 0, scope: !2073, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 157, column: 3, scope: !2025)
!2079 = !DILocation(line: 44, column: 12, scope: !2080, inlinedAt: !2078)
!2080 = distinct !DILexicalBlock(scope: !2073, file: !759, line: 44, column: 7)
!2081 = !DILocation(line: 44, column: 19, scope: !2080, inlinedAt: !2078)
!2082 = !DILocation(line: 44, column: 7, scope: !2073, inlinedAt: !2078)
!2083 = !DILocation(line: 46, column: 5, scope: !2080, inlinedAt: !2078)
!2084 = !DILocation(line: 159, column: 10, scope: !2025)
!2085 = !DILocation(line: 159, column: 3, scope: !2025)
!2086 = !DILocation(line: 236, column: 1, scope: !2025)
!2087 = !DISubprogram(name: "fflush", scope: !908, file: !908, line: 230, type: !2026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2088 = distinct !DISubprogram(name: "freopen_safer", scope: !481, file: !481, line: 60, type: !2089, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !2125)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!2091, !107, !107, !2091}
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2093)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2094)
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2093, file: !171, line: 51, baseType: !52, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2093, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2093, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2093, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2093, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2093, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2093, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2093, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2093, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2093, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2093, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2093, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2093, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2093, file: !171, line: 70, baseType: !2109, size: 64, offset: 832)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2093, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2093, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2093, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2093, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2093, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2093, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2093, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2093, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2093, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2093, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2093, file: !171, line: 93, baseType: !2109, size: 64, offset: 1344)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2093, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2093, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2093, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2093, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2125 = !{!2126, !2127, !2128, !2129, !2130, !2131, !2132}
!2126 = !DILocalVariable(name: "name", arg: 1, scope: !2088, file: !481, line: 60, type: !107)
!2127 = !DILocalVariable(name: "mode", arg: 2, scope: !2088, file: !481, line: 60, type: !107)
!2128 = !DILocalVariable(name: "f", arg: 3, scope: !2088, file: !481, line: 60, type: !2091)
!2129 = !DILocalVariable(name: "protect_in", scope: !2088, file: !481, line: 68, type: !154)
!2130 = !DILocalVariable(name: "protect_out", scope: !2088, file: !481, line: 69, type: !154)
!2131 = !DILocalVariable(name: "protect_err", scope: !2088, file: !481, line: 70, type: !154)
!2132 = !DILocalVariable(name: "saved_errno", scope: !2088, file: !481, line: 98, type: !52)
!2133 = !DILocation(line: 0, scope: !2088)
!2134 = !DILocation(line: 72, column: 11, scope: !2088)
!2135 = !DILocation(line: 72, column: 3, scope: !2088)
!2136 = !DILocation(line: 75, column: 11, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !481, line: 75, column: 11)
!2138 = distinct !DILexicalBlock(scope: !2088, file: !481, line: 73, column: 5)
!2139 = !DILocation(line: 75, column: 47, scope: !2137)
!2140 = !DILocation(line: 75, column: 11, scope: !2138)
!2141 = !DILocation(line: 79, column: 11, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2138, file: !481, line: 79, column: 11)
!2143 = !DILocation(line: 79, column: 47, scope: !2142)
!2144 = !DILocation(line: 79, column: 11, scope: !2138)
!2145 = !DILocation(line: 83, column: 11, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2138, file: !481, line: 83, column: 11)
!2147 = !DILocation(line: 83, column: 45, scope: !2146)
!2148 = !DILocation(line: 90, column: 18, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2088, file: !481, line: 90, column: 7)
!2150 = !DILocalVariable(name: "fd", arg: 1, scope: !2151, file: !481, line: 38, type: !52)
!2151 = distinct !DISubprogram(name: "protect_fd", scope: !481, file: !481, line: 38, type: !2152, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !2154)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!154, !52}
!2154 = !{!2150, !2155}
!2155 = !DILocalVariable(name: "value", scope: !2151, file: !481, line: 40, type: !52)
!2156 = !DILocation(line: 0, scope: !2151, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 90, column: 22, scope: !2149)
!2158 = !DILocation(line: 40, column: 15, scope: !2151, inlinedAt: !2157)
!2159 = !DILocation(line: 41, column: 7, scope: !2151, inlinedAt: !2157)
!2160 = !DILocation(line: 45, column: 11, scope: !2161, inlinedAt: !2157)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !481, line: 44, column: 9)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !481, line: 43, column: 11)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !481, line: 42, column: 5)
!2164 = distinct !DILexicalBlock(scope: !2151, file: !481, line: 41, column: 7)
!2165 = !DILocation(line: 46, column: 11, scope: !2161, inlinedAt: !2157)
!2166 = !DILocation(line: 46, column: 17, scope: !2161, inlinedAt: !2157)
!2167 = !DILocation(line: 90, column: 7, scope: !2088)
!2168 = !DILocation(line: 41, column: 13, scope: !2164, inlinedAt: !2157)
!2169 = !DILocation(line: 92, column: 12, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2149, file: !481, line: 92, column: 12)
!2171 = !DILocation(line: 92, column: 24, scope: !2170)
!2172 = !DILocation(line: 0, scope: !2151, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 92, column: 28, scope: !2170)
!2174 = !DILocation(line: 40, column: 15, scope: !2151, inlinedAt: !2173)
!2175 = !DILocation(line: 41, column: 13, scope: !2164, inlinedAt: !2173)
!2176 = !DILocation(line: 41, column: 7, scope: !2151, inlinedAt: !2173)
!2177 = !DILocation(line: 45, column: 11, scope: !2161, inlinedAt: !2173)
!2178 = !DILocation(line: 46, column: 11, scope: !2161, inlinedAt: !2173)
!2179 = !DILocation(line: 46, column: 17, scope: !2161, inlinedAt: !2173)
!2180 = !DILocation(line: 47, column: 9, scope: !2161, inlinedAt: !2173)
!2181 = !DILocation(line: 92, column: 12, scope: !2149)
!2182 = !DILocation(line: 94, column: 12, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2170, file: !481, line: 94, column: 12)
!2184 = !DILocation(line: 94, column: 24, scope: !2183)
!2185 = !DILocation(line: 0, scope: !2151, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 94, column: 28, scope: !2183)
!2187 = !DILocation(line: 40, column: 15, scope: !2151, inlinedAt: !2186)
!2188 = !DILocation(line: 41, column: 13, scope: !2164, inlinedAt: !2186)
!2189 = !DILocation(line: 41, column: 7, scope: !2151, inlinedAt: !2186)
!2190 = !DILocation(line: 45, column: 11, scope: !2161, inlinedAt: !2186)
!2191 = !DILocation(line: 46, column: 11, scope: !2161, inlinedAt: !2186)
!2192 = !DILocation(line: 46, column: 17, scope: !2161, inlinedAt: !2186)
!2193 = !DILocation(line: 47, column: 9, scope: !2161, inlinedAt: !2186)
!2194 = !DILocation(line: 94, column: 12, scope: !2170)
!2195 = !DILocation(line: 98, column: 21, scope: !2088)
!2196 = !DILocation(line: 99, column: 7, scope: !2088)
!2197 = !DILocation(line: 97, column: 9, scope: !2183)
!2198 = !DILocation(line: 0, scope: !2149)
!2199 = !DILocation(line: 99, column: 7, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2088, file: !481, line: 99, column: 7)
!2201 = !DILocation(line: 100, column: 5, scope: !2200)
!2202 = !DILocation(line: 101, column: 7, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2088, file: !481, line: 101, column: 7)
!2204 = !DILocation(line: 101, column: 7, scope: !2088)
!2205 = !DILocation(line: 102, column: 5, scope: !2203)
!2206 = !DILocation(line: 103, column: 7, scope: !2088)
!2207 = !DILocation(line: 104, column: 5, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2088, file: !481, line: 103, column: 7)
!2209 = !DILocation(line: 105, column: 8, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2088, file: !481, line: 105, column: 7)
!2211 = !DILocation(line: 105, column: 7, scope: !2088)
!2212 = !DILocation(line: 106, column: 11, scope: !2210)
!2213 = !DILocation(line: 106, column: 5, scope: !2210)
!2214 = !DILocation(line: 107, column: 3, scope: !2088)
!2215 = !DISubprogram(name: "dup2", scope: !1667, file: !1667, line: 555, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!52, !52, !52}
!2218 = !DISubprogram(name: "open", scope: !1813, file: !1813, line: 181, type: !2219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!52, !107, !52, null}
!2221 = !DISubprogram(name: "close", scope: !1667, file: !1667, line: 358, type: !1692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2222 = !DISubprogram(name: "freopen", scope: !908, file: !908, line: 265, type: !2223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!2091, !903, !903, !2225}
!2225 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2091)
!2226 = distinct !DISubprogram(name: "rpl_fseeko", scope: !764, file: !764, line: 28, type: !2227, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !2263)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!52, !2229, !1886, !52}
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2231)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2232)
!2232 = !{!2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2231, file: !171, line: 51, baseType: !52, size: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2231, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2231, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2231, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2231, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2231, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2231, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2231, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2231, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2231, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2231, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2231, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2231, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2231, file: !171, line: 70, baseType: !2247, size: 64, offset: 832)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2231, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2231, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2231, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2231, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2231, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2231, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2231, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2231, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2231, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2231, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2231, file: !171, line: 93, baseType: !2247, size: 64, offset: 1344)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2231, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2231, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2231, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2231, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2263 = !{!2264, !2265, !2266, !2267}
!2264 = !DILocalVariable(name: "fp", arg: 1, scope: !2226, file: !764, line: 28, type: !2229)
!2265 = !DILocalVariable(name: "offset", arg: 2, scope: !2226, file: !764, line: 28, type: !1886)
!2266 = !DILocalVariable(name: "whence", arg: 3, scope: !2226, file: !764, line: 28, type: !52)
!2267 = !DILocalVariable(name: "pos", scope: !2268, file: !764, line: 123, type: !1886)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !764, line: 119, column: 5)
!2269 = distinct !DILexicalBlock(scope: !2226, file: !764, line: 55, column: 7)
!2270 = !DILocation(line: 0, scope: !2226)
!2271 = !DILocation(line: 55, column: 12, scope: !2269)
!2272 = !{!1168, !850, i64 16}
!2273 = !DILocation(line: 55, column: 33, scope: !2269)
!2274 = !{!1168, !850, i64 8}
!2275 = !DILocation(line: 55, column: 25, scope: !2269)
!2276 = !DILocation(line: 56, column: 7, scope: !2269)
!2277 = !DILocation(line: 56, column: 15, scope: !2269)
!2278 = !DILocation(line: 56, column: 37, scope: !2269)
!2279 = !{!1168, !850, i64 32}
!2280 = !DILocation(line: 56, column: 29, scope: !2269)
!2281 = !DILocation(line: 57, column: 7, scope: !2269)
!2282 = !DILocation(line: 57, column: 15, scope: !2269)
!2283 = !{!1168, !850, i64 72}
!2284 = !DILocation(line: 57, column: 29, scope: !2269)
!2285 = !DILocation(line: 55, column: 7, scope: !2226)
!2286 = !DILocation(line: 123, column: 26, scope: !2268)
!2287 = !DILocation(line: 123, column: 19, scope: !2268)
!2288 = !DILocation(line: 0, scope: !2268)
!2289 = !DILocation(line: 124, column: 15, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2268, file: !764, line: 124, column: 11)
!2291 = !DILocation(line: 124, column: 11, scope: !2268)
!2292 = !DILocation(line: 135, column: 19, scope: !2268)
!2293 = !DILocation(line: 136, column: 12, scope: !2268)
!2294 = !DILocation(line: 136, column: 20, scope: !2268)
!2295 = !{!1168, !1169, i64 144}
!2296 = !DILocation(line: 167, column: 7, scope: !2268)
!2297 = !DILocation(line: 169, column: 10, scope: !2226)
!2298 = !DILocation(line: 169, column: 3, scope: !2226)
!2299 = !DILocation(line: 170, column: 1, scope: !2226)
!2300 = !DISubprogram(name: "fseeko", scope: !908, file: !908, line: 736, type: !2301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!52, !2229, !193, !52}
!2303 = distinct !DISubprogram(name: "getprogname", scope: !766, file: !766, line: 54, type: !2304, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!107}
!2306 = !DILocation(line: 58, column: 10, scope: !2303)
!2307 = !DILocation(line: 58, column: 3, scope: !2303)
!2308 = distinct !DISubprogram(name: "set_program_name", scope: !485, file: !485, line: 37, type: !863, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2309)
!2309 = !{!2310, !2311, !2312}
!2310 = !DILocalVariable(name: "argv0", arg: 1, scope: !2308, file: !485, line: 37, type: !107)
!2311 = !DILocalVariable(name: "slash", scope: !2308, file: !485, line: 44, type: !107)
!2312 = !DILocalVariable(name: "base", scope: !2308, file: !485, line: 45, type: !107)
!2313 = !DILocation(line: 0, scope: !2308)
!2314 = !DILocation(line: 44, column: 23, scope: !2308)
!2315 = !DILocation(line: 45, column: 22, scope: !2308)
!2316 = !DILocation(line: 46, column: 17, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2308, file: !485, line: 46, column: 7)
!2318 = !DILocation(line: 46, column: 9, scope: !2317)
!2319 = !DILocation(line: 46, column: 25, scope: !2317)
!2320 = !DILocation(line: 46, column: 40, scope: !2317)
!2321 = !DILocalVariable(name: "__s1", arg: 1, scope: !2322, file: !926, line: 974, type: !1061)
!2322 = distinct !DISubprogram(name: "memeq", scope: !926, file: !926, line: 974, type: !2323, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !2325)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!154, !1061, !1061, !104}
!2325 = !{!2321, !2326, !2327}
!2326 = !DILocalVariable(name: "__s2", arg: 2, scope: !2322, file: !926, line: 974, type: !1061)
!2327 = !DILocalVariable(name: "__n", arg: 3, scope: !2322, file: !926, line: 974, type: !104)
!2328 = !DILocation(line: 0, scope: !2322, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 46, column: 28, scope: !2317)
!2330 = !DILocation(line: 976, column: 11, scope: !2322, inlinedAt: !2329)
!2331 = !DILocation(line: 976, column: 10, scope: !2322, inlinedAt: !2329)
!2332 = !DILocation(line: 46, column: 7, scope: !2308)
!2333 = !DILocation(line: 49, column: 11, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !485, line: 49, column: 11)
!2335 = distinct !DILexicalBlock(scope: !2317, file: !485, line: 47, column: 5)
!2336 = !DILocation(line: 49, column: 36, scope: !2334)
!2337 = !DILocation(line: 49, column: 11, scope: !2335)
!2338 = !DILocation(line: 65, column: 16, scope: !2308)
!2339 = !DILocation(line: 71, column: 27, scope: !2308)
!2340 = !DILocation(line: 74, column: 33, scope: !2308)
!2341 = !DILocation(line: 76, column: 1, scope: !2308)
!2342 = !DISubprogram(name: "strrchr", scope: !1033, file: !1033, line: 273, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2343 = distinct !DIAssignID()
!2344 = !DILocation(line: 0, scope: !494)
!2345 = distinct !DIAssignID()
!2346 = !DILocation(line: 40, column: 29, scope: !494)
!2347 = !DILocation(line: 41, column: 19, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !494, file: !495, line: 41, column: 7)
!2349 = !DILocation(line: 41, column: 7, scope: !494)
!2350 = !DILocation(line: 47, column: 3, scope: !494)
!2351 = !DILocation(line: 48, column: 3, scope: !494)
!2352 = !DILocalVariable(name: "ps", arg: 1, scope: !2353, file: !2354, line: 1135, type: !2357)
!2353 = distinct !DISubprogram(name: "mbszero", scope: !2354, file: !2354, line: 1135, type: !2355, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !2358)
!2354 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !2357}
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!2358 = !{!2352}
!2359 = !DILocation(line: 0, scope: !2353, inlinedAt: !2360)
!2360 = distinct !DILocation(line: 48, column: 18, scope: !494)
!2361 = !DILocalVariable(name: "__dest", arg: 1, scope: !2362, file: !2363, line: 57, type: !102)
!2362 = distinct !DISubprogram(name: "memset", scope: !2363, file: !2363, line: 57, type: !2364, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !2366)
!2363 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!102, !102, !52, !104}
!2366 = !{!2361, !2367, !2368}
!2367 = !DILocalVariable(name: "__ch", arg: 2, scope: !2362, file: !2363, line: 57, type: !52)
!2368 = !DILocalVariable(name: "__len", arg: 3, scope: !2362, file: !2363, line: 57, type: !104)
!2369 = !DILocation(line: 0, scope: !2362, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 1137, column: 3, scope: !2353, inlinedAt: !2360)
!2371 = !DILocation(line: 59, column: 10, scope: !2362, inlinedAt: !2370)
!2372 = !DILocation(line: 49, column: 7, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !494, file: !495, line: 49, column: 7)
!2374 = !DILocation(line: 49, column: 39, scope: !2373)
!2375 = !DILocation(line: 49, column: 44, scope: !2373)
!2376 = !DILocation(line: 54, column: 1, scope: !494)
!2377 = !DISubprogram(name: "mbrtoc32", scope: !506, file: !506, line: 57, type: !2378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!104, !2380, !903, !104, !2382}
!2380 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2381)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2357)
!2383 = distinct !DISubprogram(name: "clone_quoting_options", scope: !525, file: !525, line: 113, type: !2384, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2387)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!2386, !2386}
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!2387 = !{!2388, !2389, !2390}
!2388 = !DILocalVariable(name: "o", arg: 1, scope: !2383, file: !525, line: 113, type: !2386)
!2389 = !DILocalVariable(name: "saved_errno", scope: !2383, file: !525, line: 115, type: !52)
!2390 = !DILocalVariable(name: "p", scope: !2383, file: !525, line: 116, type: !2386)
!2391 = !DILocation(line: 0, scope: !2383)
!2392 = !DILocation(line: 115, column: 21, scope: !2383)
!2393 = !DILocation(line: 116, column: 40, scope: !2383)
!2394 = !DILocation(line: 116, column: 31, scope: !2383)
!2395 = !DILocation(line: 118, column: 9, scope: !2383)
!2396 = !DILocation(line: 119, column: 3, scope: !2383)
!2397 = distinct !DISubprogram(name: "get_quoting_style", scope: !525, file: !525, line: 124, type: !2398, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2402)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!551, !2400}
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!2402 = !{!2403}
!2403 = !DILocalVariable(name: "o", arg: 1, scope: !2397, file: !525, line: 124, type: !2400)
!2404 = !DILocation(line: 0, scope: !2397)
!2405 = !DILocation(line: 126, column: 11, scope: !2397)
!2406 = !DILocation(line: 126, column: 46, scope: !2397)
!2407 = !{!2408, !914, i64 0}
!2408 = !{!"quoting_options", !914, i64 0, !914, i64 4, !851, i64 8, !850, i64 40, !850, i64 48}
!2409 = !DILocation(line: 126, column: 3, scope: !2397)
!2410 = distinct !DISubprogram(name: "set_quoting_style", scope: !525, file: !525, line: 132, type: !2411, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2413)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{null, !2386, !551}
!2413 = !{!2414, !2415}
!2414 = !DILocalVariable(name: "o", arg: 1, scope: !2410, file: !525, line: 132, type: !2386)
!2415 = !DILocalVariable(name: "s", arg: 2, scope: !2410, file: !525, line: 132, type: !551)
!2416 = !DILocation(line: 0, scope: !2410)
!2417 = !DILocation(line: 134, column: 4, scope: !2410)
!2418 = !DILocation(line: 134, column: 45, scope: !2410)
!2419 = !DILocation(line: 135, column: 1, scope: !2410)
!2420 = distinct !DISubprogram(name: "set_char_quoting", scope: !525, file: !525, line: 143, type: !2421, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2423)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!52, !2386, !4, !52}
!2423 = !{!2424, !2425, !2426, !2427, !2428, !2430, !2431}
!2424 = !DILocalVariable(name: "o", arg: 1, scope: !2420, file: !525, line: 143, type: !2386)
!2425 = !DILocalVariable(name: "c", arg: 2, scope: !2420, file: !525, line: 143, type: !4)
!2426 = !DILocalVariable(name: "i", arg: 3, scope: !2420, file: !525, line: 143, type: !52)
!2427 = !DILocalVariable(name: "uc", scope: !2420, file: !525, line: 145, type: !109)
!2428 = !DILocalVariable(name: "p", scope: !2420, file: !525, line: 146, type: !2429)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!2430 = !DILocalVariable(name: "shift", scope: !2420, file: !525, line: 148, type: !52)
!2431 = !DILocalVariable(name: "r", scope: !2420, file: !525, line: 149, type: !64)
!2432 = !DILocation(line: 0, scope: !2420)
!2433 = !DILocation(line: 147, column: 6, scope: !2420)
!2434 = !DILocation(line: 147, column: 41, scope: !2420)
!2435 = !DILocation(line: 147, column: 62, scope: !2420)
!2436 = !DILocation(line: 147, column: 57, scope: !2420)
!2437 = !DILocation(line: 148, column: 15, scope: !2420)
!2438 = !DILocation(line: 149, column: 21, scope: !2420)
!2439 = !DILocation(line: 149, column: 24, scope: !2420)
!2440 = !DILocation(line: 149, column: 34, scope: !2420)
!2441 = !DILocation(line: 150, column: 19, scope: !2420)
!2442 = !DILocation(line: 150, column: 24, scope: !2420)
!2443 = !DILocation(line: 150, column: 6, scope: !2420)
!2444 = !DILocation(line: 151, column: 3, scope: !2420)
!2445 = distinct !DISubprogram(name: "set_quoting_flags", scope: !525, file: !525, line: 159, type: !2446, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!52, !2386, !52}
!2448 = !{!2449, !2450, !2451}
!2449 = !DILocalVariable(name: "o", arg: 1, scope: !2445, file: !525, line: 159, type: !2386)
!2450 = !DILocalVariable(name: "i", arg: 2, scope: !2445, file: !525, line: 159, type: !52)
!2451 = !DILocalVariable(name: "r", scope: !2445, file: !525, line: 163, type: !52)
!2452 = !DILocation(line: 0, scope: !2445)
!2453 = !DILocation(line: 161, column: 8, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2445, file: !525, line: 161, column: 7)
!2455 = !DILocation(line: 161, column: 7, scope: !2445)
!2456 = !DILocation(line: 163, column: 14, scope: !2445)
!2457 = !{!2408, !914, i64 4}
!2458 = !DILocation(line: 164, column: 12, scope: !2445)
!2459 = !DILocation(line: 165, column: 3, scope: !2445)
!2460 = distinct !DISubprogram(name: "set_custom_quoting", scope: !525, file: !525, line: 169, type: !2461, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2463)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{null, !2386, !107, !107}
!2463 = !{!2464, !2465, !2466}
!2464 = !DILocalVariable(name: "o", arg: 1, scope: !2460, file: !525, line: 169, type: !2386)
!2465 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2460, file: !525, line: 170, type: !107)
!2466 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2460, file: !525, line: 170, type: !107)
!2467 = !DILocation(line: 0, scope: !2460)
!2468 = !DILocation(line: 172, column: 8, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2460, file: !525, line: 172, column: 7)
!2470 = !DILocation(line: 172, column: 7, scope: !2460)
!2471 = !DILocation(line: 174, column: 12, scope: !2460)
!2472 = !DILocation(line: 175, column: 8, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2460, file: !525, line: 175, column: 7)
!2474 = !DILocation(line: 175, column: 19, scope: !2473)
!2475 = !DILocation(line: 176, column: 5, scope: !2473)
!2476 = !DILocation(line: 177, column: 6, scope: !2460)
!2477 = !DILocation(line: 177, column: 17, scope: !2460)
!2478 = !{!2408, !850, i64 40}
!2479 = !DILocation(line: 178, column: 6, scope: !2460)
!2480 = !DILocation(line: 178, column: 18, scope: !2460)
!2481 = !{!2408, !850, i64 48}
!2482 = !DILocation(line: 179, column: 1, scope: !2460)
!2483 = !DISubprogram(name: "abort", scope: !1037, file: !1037, line: 598, type: !477, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2484 = distinct !DISubprogram(name: "quotearg_buffer", scope: !525, file: !525, line: 774, type: !2485, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2487)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!104, !54, !104, !107, !104, !2400}
!2487 = !{!2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495}
!2488 = !DILocalVariable(name: "buffer", arg: 1, scope: !2484, file: !525, line: 774, type: !54)
!2489 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2484, file: !525, line: 774, type: !104)
!2490 = !DILocalVariable(name: "arg", arg: 3, scope: !2484, file: !525, line: 775, type: !107)
!2491 = !DILocalVariable(name: "argsize", arg: 4, scope: !2484, file: !525, line: 775, type: !104)
!2492 = !DILocalVariable(name: "o", arg: 5, scope: !2484, file: !525, line: 776, type: !2400)
!2493 = !DILocalVariable(name: "p", scope: !2484, file: !525, line: 778, type: !2400)
!2494 = !DILocalVariable(name: "saved_errno", scope: !2484, file: !525, line: 779, type: !52)
!2495 = !DILocalVariable(name: "r", scope: !2484, file: !525, line: 780, type: !104)
!2496 = !DILocation(line: 0, scope: !2484)
!2497 = !DILocation(line: 778, column: 37, scope: !2484)
!2498 = !DILocation(line: 779, column: 21, scope: !2484)
!2499 = !DILocation(line: 781, column: 43, scope: !2484)
!2500 = !DILocation(line: 781, column: 53, scope: !2484)
!2501 = !DILocation(line: 781, column: 63, scope: !2484)
!2502 = !DILocation(line: 782, column: 43, scope: !2484)
!2503 = !DILocation(line: 782, column: 58, scope: !2484)
!2504 = !DILocation(line: 780, column: 14, scope: !2484)
!2505 = !DILocation(line: 783, column: 9, scope: !2484)
!2506 = !DILocation(line: 784, column: 3, scope: !2484)
!2507 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !525, file: !525, line: 251, type: !2508, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2512)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!104, !54, !104, !107, !104, !551, !52, !2510, !107, !107}
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!2512 = !{!2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2538, !2540, !2543, !2544, !2545, !2546, !2549, !2550, !2552, !2553, !2556, !2560, !2561, !2569, !2572, !2573, !2574}
!2513 = !DILocalVariable(name: "buffer", arg: 1, scope: !2507, file: !525, line: 251, type: !54)
!2514 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2507, file: !525, line: 251, type: !104)
!2515 = !DILocalVariable(name: "arg", arg: 3, scope: !2507, file: !525, line: 252, type: !107)
!2516 = !DILocalVariable(name: "argsize", arg: 4, scope: !2507, file: !525, line: 252, type: !104)
!2517 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2507, file: !525, line: 253, type: !551)
!2518 = !DILocalVariable(name: "flags", arg: 6, scope: !2507, file: !525, line: 253, type: !52)
!2519 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2507, file: !525, line: 254, type: !2510)
!2520 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2507, file: !525, line: 255, type: !107)
!2521 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2507, file: !525, line: 256, type: !107)
!2522 = !DILocalVariable(name: "unibyte_locale", scope: !2507, file: !525, line: 258, type: !154)
!2523 = !DILocalVariable(name: "len", scope: !2507, file: !525, line: 260, type: !104)
!2524 = !DILocalVariable(name: "orig_buffersize", scope: !2507, file: !525, line: 261, type: !104)
!2525 = !DILocalVariable(name: "quote_string", scope: !2507, file: !525, line: 262, type: !107)
!2526 = !DILocalVariable(name: "quote_string_len", scope: !2507, file: !525, line: 263, type: !104)
!2527 = !DILocalVariable(name: "backslash_escapes", scope: !2507, file: !525, line: 264, type: !154)
!2528 = !DILocalVariable(name: "elide_outer_quotes", scope: !2507, file: !525, line: 265, type: !154)
!2529 = !DILocalVariable(name: "encountered_single_quote", scope: !2507, file: !525, line: 266, type: !154)
!2530 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2507, file: !525, line: 267, type: !154)
!2531 = !DILabel(scope: !2507, name: "process_input", file: !525, line: 308)
!2532 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2507, file: !525, line: 309, type: !154)
!2533 = !DILocalVariable(name: "lq", scope: !2534, file: !525, line: 361, type: !107)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !525, line: 361, column: 11)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !525, line: 360, column: 13)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !525, line: 333, column: 7)
!2537 = distinct !DILexicalBlock(scope: !2507, file: !525, line: 312, column: 5)
!2538 = !DILocalVariable(name: "i", scope: !2539, file: !525, line: 395, type: !104)
!2539 = distinct !DILexicalBlock(scope: !2507, file: !525, line: 395, column: 3)
!2540 = !DILocalVariable(name: "is_right_quote", scope: !2541, file: !525, line: 397, type: !154)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !525, line: 396, column: 5)
!2542 = distinct !DILexicalBlock(scope: !2539, file: !525, line: 395, column: 3)
!2543 = !DILocalVariable(name: "escaping", scope: !2541, file: !525, line: 398, type: !154)
!2544 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2541, file: !525, line: 399, type: !154)
!2545 = !DILocalVariable(name: "c", scope: !2541, file: !525, line: 417, type: !109)
!2546 = !DILabel(scope: !2547, name: "c_and_shell_escape", file: !525, line: 502)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !525, line: 478, column: 9)
!2548 = distinct !DILexicalBlock(scope: !2541, file: !525, line: 419, column: 9)
!2549 = !DILabel(scope: !2547, name: "c_escape", file: !525, line: 507)
!2550 = !DILocalVariable(name: "m", scope: !2551, file: !525, line: 598, type: !104)
!2551 = distinct !DILexicalBlock(scope: !2548, file: !525, line: 596, column: 11)
!2552 = !DILocalVariable(name: "printable", scope: !2551, file: !525, line: 600, type: !154)
!2553 = !DILocalVariable(name: "mbs", scope: !2554, file: !525, line: 609, type: !600)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !525, line: 608, column: 15)
!2555 = distinct !DILexicalBlock(scope: !2551, file: !525, line: 602, column: 17)
!2556 = !DILocalVariable(name: "w", scope: !2557, file: !525, line: 618, type: !505)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !525, line: 617, column: 19)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !525, line: 616, column: 17)
!2559 = distinct !DILexicalBlock(scope: !2554, file: !525, line: 616, column: 17)
!2560 = !DILocalVariable(name: "bytes", scope: !2557, file: !525, line: 619, type: !104)
!2561 = !DILocalVariable(name: "j", scope: !2562, file: !525, line: 648, type: !104)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !525, line: 648, column: 29)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !525, line: 647, column: 27)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !525, line: 645, column: 29)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !525, line: 636, column: 23)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !525, line: 628, column: 30)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !525, line: 623, column: 30)
!2568 = distinct !DILexicalBlock(scope: !2557, file: !525, line: 621, column: 25)
!2569 = !DILocalVariable(name: "ilim", scope: !2570, file: !525, line: 674, type: !104)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !525, line: 671, column: 15)
!2571 = distinct !DILexicalBlock(scope: !2551, file: !525, line: 670, column: 17)
!2572 = !DILabel(scope: !2541, name: "store_escape", file: !525, line: 709)
!2573 = !DILabel(scope: !2541, name: "store_c", file: !525, line: 712)
!2574 = !DILabel(scope: !2507, name: "force_outer_quoting_style", file: !525, line: 753)
!2575 = distinct !DIAssignID()
!2576 = distinct !DIAssignID()
!2577 = distinct !DIAssignID()
!2578 = distinct !DIAssignID()
!2579 = distinct !DIAssignID()
!2580 = !DILocation(line: 0, scope: !2554)
!2581 = distinct !DIAssignID()
!2582 = !DILocation(line: 0, scope: !2557)
!2583 = !DILocation(line: 0, scope: !2507)
!2584 = !DILocation(line: 258, column: 25, scope: !2507)
!2585 = !DILocation(line: 258, column: 36, scope: !2507)
!2586 = !DILocation(line: 265, column: 8, scope: !2507)
!2587 = !DILocation(line: 267, column: 3, scope: !2507)
!2588 = !DILocation(line: 261, column: 10, scope: !2507)
!2589 = !DILocation(line: 262, column: 15, scope: !2507)
!2590 = !DILocation(line: 263, column: 10, scope: !2507)
!2591 = !DILocation(line: 264, column: 8, scope: !2507)
!2592 = !DILocation(line: 266, column: 8, scope: !2507)
!2593 = !DILocation(line: 267, column: 8, scope: !2507)
!2594 = !DILocation(line: 308, column: 2, scope: !2507)
!2595 = !DILocation(line: 311, column: 3, scope: !2507)
!2596 = !DILocation(line: 318, column: 11, scope: !2537)
!2597 = !DILocation(line: 318, column: 12, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2537, file: !525, line: 318, column: 11)
!2599 = !DILocation(line: 319, column: 9, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !525, line: 319, column: 9)
!2601 = distinct !DILexicalBlock(scope: !2598, file: !525, line: 319, column: 9)
!2602 = !DILocation(line: 319, column: 9, scope: !2601)
!2603 = !DILocation(line: 0, scope: !591, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 357, column: 26, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !525, line: 335, column: 11)
!2606 = distinct !DILexicalBlock(scope: !2536, file: !525, line: 334, column: 13)
!2607 = !DILocation(line: 199, column: 29, scope: !591, inlinedAt: !2604)
!2608 = !DILocation(line: 201, column: 19, scope: !2609, inlinedAt: !2604)
!2609 = distinct !DILexicalBlock(scope: !591, file: !525, line: 201, column: 7)
!2610 = !DILocation(line: 201, column: 7, scope: !591, inlinedAt: !2604)
!2611 = !DILocation(line: 229, column: 3, scope: !591, inlinedAt: !2604)
!2612 = !DILocation(line: 230, column: 3, scope: !591, inlinedAt: !2604)
!2613 = !DILocalVariable(name: "ps", arg: 1, scope: !2614, file: !2354, line: 1135, type: !2617)
!2614 = distinct !DISubprogram(name: "mbszero", scope: !2354, file: !2354, line: 1135, type: !2615, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2618)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{null, !2617}
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!2618 = !{!2613}
!2619 = !DILocation(line: 0, scope: !2614, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 230, column: 18, scope: !591, inlinedAt: !2604)
!2621 = !DILocalVariable(name: "__dest", arg: 1, scope: !2622, file: !2363, line: 57, type: !102)
!2622 = distinct !DISubprogram(name: "memset", scope: !2363, file: !2363, line: 57, type: !2364, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2623)
!2623 = !{!2621, !2624, !2625}
!2624 = !DILocalVariable(name: "__ch", arg: 2, scope: !2622, file: !2363, line: 57, type: !52)
!2625 = !DILocalVariable(name: "__len", arg: 3, scope: !2622, file: !2363, line: 57, type: !104)
!2626 = !DILocation(line: 0, scope: !2622, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 1137, column: 3, scope: !2614, inlinedAt: !2620)
!2628 = !DILocation(line: 59, column: 10, scope: !2622, inlinedAt: !2627)
!2629 = !DILocation(line: 231, column: 7, scope: !2630, inlinedAt: !2604)
!2630 = distinct !DILexicalBlock(scope: !591, file: !525, line: 231, column: 7)
!2631 = !DILocation(line: 231, column: 40, scope: !2630, inlinedAt: !2604)
!2632 = !DILocation(line: 231, column: 45, scope: !2630, inlinedAt: !2604)
!2633 = !DILocation(line: 235, column: 1, scope: !591, inlinedAt: !2604)
!2634 = !DILocation(line: 0, scope: !591, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 358, column: 27, scope: !2605)
!2636 = !DILocation(line: 199, column: 29, scope: !591, inlinedAt: !2635)
!2637 = !DILocation(line: 201, column: 19, scope: !2609, inlinedAt: !2635)
!2638 = !DILocation(line: 201, column: 7, scope: !591, inlinedAt: !2635)
!2639 = !DILocation(line: 229, column: 3, scope: !591, inlinedAt: !2635)
!2640 = !DILocation(line: 230, column: 3, scope: !591, inlinedAt: !2635)
!2641 = !DILocation(line: 0, scope: !2614, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 230, column: 18, scope: !591, inlinedAt: !2635)
!2643 = !DILocation(line: 0, scope: !2622, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 1137, column: 3, scope: !2614, inlinedAt: !2642)
!2645 = !DILocation(line: 59, column: 10, scope: !2622, inlinedAt: !2644)
!2646 = !DILocation(line: 231, column: 7, scope: !2630, inlinedAt: !2635)
!2647 = !DILocation(line: 231, column: 40, scope: !2630, inlinedAt: !2635)
!2648 = !DILocation(line: 231, column: 45, scope: !2630, inlinedAt: !2635)
!2649 = !DILocation(line: 235, column: 1, scope: !591, inlinedAt: !2635)
!2650 = !DILocation(line: 360, column: 14, scope: !2535)
!2651 = !DILocation(line: 360, column: 13, scope: !2536)
!2652 = !DILocation(line: 0, scope: !2534)
!2653 = !DILocation(line: 361, column: 45, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2534, file: !525, line: 361, column: 11)
!2655 = !DILocation(line: 361, column: 11, scope: !2534)
!2656 = !DILocation(line: 362, column: 13, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !525, line: 362, column: 13)
!2658 = distinct !DILexicalBlock(scope: !2654, file: !525, line: 362, column: 13)
!2659 = !DILocation(line: 362, column: 13, scope: !2658)
!2660 = !DILocation(line: 361, column: 52, scope: !2654)
!2661 = distinct !{!2661, !2655, !2662, !960}
!2662 = !DILocation(line: 362, column: 13, scope: !2534)
!2663 = !DILocation(line: 260, column: 10, scope: !2507)
!2664 = !DILocation(line: 365, column: 28, scope: !2536)
!2665 = !DILocation(line: 367, column: 7, scope: !2537)
!2666 = !DILocation(line: 370, column: 7, scope: !2537)
!2667 = !DILocation(line: 373, column: 7, scope: !2537)
!2668 = !DILocation(line: 376, column: 12, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2537, file: !525, line: 376, column: 11)
!2670 = !DILocation(line: 376, column: 11, scope: !2537)
!2671 = !DILocation(line: 381, column: 12, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2537, file: !525, line: 381, column: 11)
!2673 = !DILocation(line: 381, column: 11, scope: !2537)
!2674 = !DILocation(line: 382, column: 9, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !525, line: 382, column: 9)
!2676 = distinct !DILexicalBlock(scope: !2672, file: !525, line: 382, column: 9)
!2677 = !DILocation(line: 382, column: 9, scope: !2676)
!2678 = !DILocation(line: 389, column: 7, scope: !2537)
!2679 = !DILocation(line: 392, column: 7, scope: !2537)
!2680 = !DILocation(line: 0, scope: !2539)
!2681 = !DILocation(line: 395, column: 8, scope: !2539)
!2682 = !DILocation(line: 309, column: 8, scope: !2507)
!2683 = !DILocation(line: 395, scope: !2539)
!2684 = !DILocation(line: 395, column: 34, scope: !2542)
!2685 = !DILocation(line: 395, column: 26, scope: !2542)
!2686 = !DILocation(line: 395, column: 48, scope: !2542)
!2687 = !DILocation(line: 395, column: 55, scope: !2542)
!2688 = !DILocation(line: 395, column: 3, scope: !2539)
!2689 = !DILocation(line: 395, column: 67, scope: !2542)
!2690 = !DILocation(line: 0, scope: !2541)
!2691 = !DILocation(line: 402, column: 11, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2541, file: !525, line: 401, column: 11)
!2693 = !DILocation(line: 404, column: 17, scope: !2692)
!2694 = !DILocation(line: 405, column: 39, scope: !2692)
!2695 = !DILocation(line: 409, column: 32, scope: !2692)
!2696 = !DILocation(line: 405, column: 19, scope: !2692)
!2697 = !DILocation(line: 405, column: 15, scope: !2692)
!2698 = !DILocation(line: 410, column: 11, scope: !2692)
!2699 = !DILocation(line: 410, column: 25, scope: !2692)
!2700 = !DILocalVariable(name: "__s1", arg: 1, scope: !2701, file: !926, line: 974, type: !1061)
!2701 = distinct !DISubprogram(name: "memeq", scope: !926, file: !926, line: 974, type: !2323, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2702)
!2702 = !{!2700, !2703, !2704}
!2703 = !DILocalVariable(name: "__s2", arg: 2, scope: !2701, file: !926, line: 974, type: !1061)
!2704 = !DILocalVariable(name: "__n", arg: 3, scope: !2701, file: !926, line: 974, type: !104)
!2705 = !DILocation(line: 0, scope: !2701, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 410, column: 14, scope: !2692)
!2707 = !DILocation(line: 976, column: 11, scope: !2701, inlinedAt: !2706)
!2708 = !DILocation(line: 976, column: 10, scope: !2701, inlinedAt: !2706)
!2709 = !DILocation(line: 401, column: 11, scope: !2541)
!2710 = !DILocation(line: 417, column: 25, scope: !2541)
!2711 = !DILocation(line: 418, column: 7, scope: !2541)
!2712 = !DILocation(line: 421, column: 15, scope: !2548)
!2713 = !DILocation(line: 423, column: 15, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !525, line: 423, column: 15)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !525, line: 422, column: 13)
!2716 = distinct !DILexicalBlock(scope: !2548, file: !525, line: 421, column: 15)
!2717 = !DILocation(line: 423, column: 15, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2714, file: !525, line: 423, column: 15)
!2719 = !DILocation(line: 423, column: 15, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !525, line: 423, column: 15)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !525, line: 423, column: 15)
!2722 = distinct !DILexicalBlock(scope: !2718, file: !525, line: 423, column: 15)
!2723 = !DILocation(line: 423, column: 15, scope: !2721)
!2724 = !DILocation(line: 423, column: 15, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !525, line: 423, column: 15)
!2726 = distinct !DILexicalBlock(scope: !2722, file: !525, line: 423, column: 15)
!2727 = !DILocation(line: 423, column: 15, scope: !2726)
!2728 = !DILocation(line: 423, column: 15, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !525, line: 423, column: 15)
!2730 = distinct !DILexicalBlock(scope: !2722, file: !525, line: 423, column: 15)
!2731 = !DILocation(line: 423, column: 15, scope: !2730)
!2732 = !DILocation(line: 423, column: 15, scope: !2722)
!2733 = !DILocation(line: 423, column: 15, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !525, line: 423, column: 15)
!2735 = distinct !DILexicalBlock(scope: !2714, file: !525, line: 423, column: 15)
!2736 = !DILocation(line: 423, column: 15, scope: !2735)
!2737 = !DILocation(line: 431, column: 19, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2715, file: !525, line: 430, column: 19)
!2739 = !DILocation(line: 431, column: 24, scope: !2738)
!2740 = !DILocation(line: 431, column: 28, scope: !2738)
!2741 = !DILocation(line: 431, column: 38, scope: !2738)
!2742 = !DILocation(line: 431, column: 48, scope: !2738)
!2743 = !DILocation(line: 431, column: 59, scope: !2738)
!2744 = !DILocation(line: 433, column: 19, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !525, line: 433, column: 19)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !525, line: 433, column: 19)
!2747 = distinct !DILexicalBlock(scope: !2738, file: !525, line: 432, column: 17)
!2748 = !DILocation(line: 433, column: 19, scope: !2746)
!2749 = !DILocation(line: 434, column: 19, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !525, line: 434, column: 19)
!2751 = distinct !DILexicalBlock(scope: !2747, file: !525, line: 434, column: 19)
!2752 = !DILocation(line: 434, column: 19, scope: !2751)
!2753 = !DILocation(line: 435, column: 17, scope: !2747)
!2754 = !DILocation(line: 442, column: 20, scope: !2716)
!2755 = !DILocation(line: 447, column: 11, scope: !2548)
!2756 = !DILocation(line: 450, column: 19, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2548, file: !525, line: 448, column: 13)
!2758 = !DILocation(line: 456, column: 19, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2757, file: !525, line: 455, column: 19)
!2760 = !DILocation(line: 456, column: 24, scope: !2759)
!2761 = !DILocation(line: 456, column: 28, scope: !2759)
!2762 = !DILocation(line: 456, column: 38, scope: !2759)
!2763 = !DILocation(line: 456, column: 41, scope: !2759)
!2764 = !DILocation(line: 456, column: 52, scope: !2759)
!2765 = !DILocation(line: 455, column: 19, scope: !2757)
!2766 = !DILocation(line: 457, column: 25, scope: !2759)
!2767 = !DILocation(line: 457, column: 17, scope: !2759)
!2768 = !DILocation(line: 464, column: 25, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2759, file: !525, line: 458, column: 19)
!2770 = !DILocation(line: 468, column: 21, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !525, line: 468, column: 21)
!2772 = distinct !DILexicalBlock(scope: !2769, file: !525, line: 468, column: 21)
!2773 = !DILocation(line: 468, column: 21, scope: !2772)
!2774 = !DILocation(line: 469, column: 21, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !525, line: 469, column: 21)
!2776 = distinct !DILexicalBlock(scope: !2769, file: !525, line: 469, column: 21)
!2777 = !DILocation(line: 469, column: 21, scope: !2776)
!2778 = !DILocation(line: 470, column: 21, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !525, line: 470, column: 21)
!2780 = distinct !DILexicalBlock(scope: !2769, file: !525, line: 470, column: 21)
!2781 = !DILocation(line: 470, column: 21, scope: !2780)
!2782 = !DILocation(line: 471, column: 21, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !525, line: 471, column: 21)
!2784 = distinct !DILexicalBlock(scope: !2769, file: !525, line: 471, column: 21)
!2785 = !DILocation(line: 471, column: 21, scope: !2784)
!2786 = !DILocation(line: 472, column: 21, scope: !2769)
!2787 = !DILocation(line: 482, column: 33, scope: !2547)
!2788 = !DILocation(line: 483, column: 33, scope: !2547)
!2789 = !DILocation(line: 485, column: 33, scope: !2547)
!2790 = !DILocation(line: 486, column: 33, scope: !2547)
!2791 = !DILocation(line: 487, column: 33, scope: !2547)
!2792 = !DILocation(line: 490, column: 17, scope: !2547)
!2793 = !DILocation(line: 492, column: 21, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !525, line: 491, column: 15)
!2795 = distinct !DILexicalBlock(scope: !2547, file: !525, line: 490, column: 17)
!2796 = !DILocation(line: 499, column: 35, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2547, file: !525, line: 499, column: 17)
!2798 = !DILocation(line: 499, column: 57, scope: !2797)
!2799 = !DILocation(line: 0, scope: !2547)
!2800 = !DILocation(line: 502, column: 11, scope: !2547)
!2801 = !DILocation(line: 504, column: 17, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2547, file: !525, line: 503, column: 17)
!2803 = !DILocation(line: 507, column: 11, scope: !2547)
!2804 = !DILocation(line: 508, column: 17, scope: !2547)
!2805 = !DILocation(line: 517, column: 15, scope: !2548)
!2806 = !DILocation(line: 517, column: 40, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2548, file: !525, line: 517, column: 15)
!2808 = !DILocation(line: 517, column: 47, scope: !2807)
!2809 = !DILocation(line: 517, column: 18, scope: !2807)
!2810 = !DILocation(line: 521, column: 17, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2548, file: !525, line: 521, column: 15)
!2812 = !DILocation(line: 521, column: 15, scope: !2548)
!2813 = !DILocation(line: 525, column: 11, scope: !2548)
!2814 = !DILocation(line: 537, column: 15, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2548, file: !525, line: 536, column: 15)
!2816 = !DILocation(line: 544, column: 15, scope: !2548)
!2817 = !DILocation(line: 546, column: 19, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !525, line: 545, column: 13)
!2819 = distinct !DILexicalBlock(scope: !2548, file: !525, line: 544, column: 15)
!2820 = !DILocation(line: 549, column: 19, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2818, file: !525, line: 549, column: 19)
!2822 = !DILocation(line: 549, column: 30, scope: !2821)
!2823 = !DILocation(line: 558, column: 15, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !525, line: 558, column: 15)
!2825 = distinct !DILexicalBlock(scope: !2818, file: !525, line: 558, column: 15)
!2826 = !DILocation(line: 558, column: 15, scope: !2825)
!2827 = !DILocation(line: 559, column: 15, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !525, line: 559, column: 15)
!2829 = distinct !DILexicalBlock(scope: !2818, file: !525, line: 559, column: 15)
!2830 = !DILocation(line: 559, column: 15, scope: !2829)
!2831 = !DILocation(line: 560, column: 15, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !525, line: 560, column: 15)
!2833 = distinct !DILexicalBlock(scope: !2818, file: !525, line: 560, column: 15)
!2834 = !DILocation(line: 560, column: 15, scope: !2833)
!2835 = !DILocation(line: 562, column: 13, scope: !2818)
!2836 = !DILocation(line: 602, column: 17, scope: !2551)
!2837 = !DILocation(line: 0, scope: !2551)
!2838 = !DILocation(line: 605, column: 29, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2555, file: !525, line: 603, column: 15)
!2840 = !DILocation(line: 605, column: 27, scope: !2839)
!2841 = !DILocation(line: 606, column: 15, scope: !2839)
!2842 = !DILocation(line: 609, column: 17, scope: !2554)
!2843 = !DILocation(line: 0, scope: !2614, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 609, column: 32, scope: !2554)
!2845 = !DILocation(line: 0, scope: !2622, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 1137, column: 3, scope: !2614, inlinedAt: !2844)
!2847 = !DILocation(line: 59, column: 10, scope: !2622, inlinedAt: !2846)
!2848 = !DILocation(line: 613, column: 29, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2554, file: !525, line: 613, column: 21)
!2850 = !DILocation(line: 613, column: 21, scope: !2554)
!2851 = !DILocation(line: 614, column: 29, scope: !2849)
!2852 = !DILocation(line: 614, column: 19, scope: !2849)
!2853 = !DILocation(line: 618, column: 21, scope: !2557)
!2854 = !DILocation(line: 620, column: 54, scope: !2557)
!2855 = !DILocation(line: 619, column: 36, scope: !2557)
!2856 = !DILocation(line: 621, column: 25, scope: !2557)
!2857 = !DILocation(line: 631, column: 38, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2566, file: !525, line: 629, column: 23)
!2859 = !DILocation(line: 631, column: 48, scope: !2858)
!2860 = !DILocation(line: 626, column: 25, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2567, file: !525, line: 624, column: 23)
!2862 = !DILocation(line: 631, column: 51, scope: !2858)
!2863 = !DILocation(line: 631, column: 25, scope: !2858)
!2864 = !DILocation(line: 632, column: 28, scope: !2858)
!2865 = !DILocation(line: 631, column: 34, scope: !2858)
!2866 = distinct !{!2866, !2863, !2864, !960}
!2867 = !DILocation(line: 0, scope: !2562)
!2868 = !DILocation(line: 646, column: 29, scope: !2564)
!2869 = !DILocation(line: 649, column: 39, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2562, file: !525, line: 648, column: 29)
!2871 = !DILocation(line: 649, column: 31, scope: !2870)
!2872 = !DILocation(line: 648, column: 60, scope: !2870)
!2873 = !DILocation(line: 648, column: 50, scope: !2870)
!2874 = !DILocation(line: 648, column: 29, scope: !2562)
!2875 = distinct !{!2875, !2874, !2876, !960}
!2876 = !DILocation(line: 654, column: 33, scope: !2562)
!2877 = !DILocation(line: 657, column: 43, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2565, file: !525, line: 657, column: 29)
!2879 = !DILocalVariable(name: "wc", arg: 1, scope: !2880, file: !2881, line: 865, type: !2884)
!2880 = distinct !DISubprogram(name: "c32isprint", scope: !2881, file: !2881, line: 865, type: !2882, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2886)
!2881 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!52, !2884}
!2884 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2885, line: 20, baseType: !64)
!2885 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2886 = !{!2879}
!2887 = !DILocation(line: 0, scope: !2880, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 657, column: 31, scope: !2878)
!2889 = !DILocation(line: 871, column: 10, scope: !2880, inlinedAt: !2888)
!2890 = !DILocation(line: 657, column: 31, scope: !2878)
!2891 = !DILocation(line: 664, column: 23, scope: !2557)
!2892 = !DILocation(line: 665, column: 19, scope: !2558)
!2893 = !DILocation(line: 666, column: 15, scope: !2555)
!2894 = !DILocation(line: 0, scope: !2555)
!2895 = !DILocation(line: 670, column: 19, scope: !2571)
!2896 = !DILocation(line: 670, column: 23, scope: !2571)
!2897 = !DILocation(line: 674, column: 33, scope: !2570)
!2898 = !DILocation(line: 0, scope: !2570)
!2899 = !DILocation(line: 676, column: 17, scope: !2570)
!2900 = !DILocation(line: 398, column: 12, scope: !2541)
!2901 = !DILocation(line: 678, column: 43, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !525, line: 678, column: 25)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !525, line: 677, column: 19)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !525, line: 676, column: 17)
!2905 = distinct !DILexicalBlock(scope: !2570, file: !525, line: 676, column: 17)
!2906 = !DILocation(line: 680, column: 25, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !525, line: 680, column: 25)
!2908 = distinct !DILexicalBlock(scope: !2902, file: !525, line: 679, column: 23)
!2909 = !DILocation(line: 680, column: 25, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2907, file: !525, line: 680, column: 25)
!2911 = !DILocation(line: 680, column: 25, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !525, line: 680, column: 25)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !525, line: 680, column: 25)
!2914 = distinct !DILexicalBlock(scope: !2910, file: !525, line: 680, column: 25)
!2915 = !DILocation(line: 680, column: 25, scope: !2913)
!2916 = !DILocation(line: 680, column: 25, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !525, line: 680, column: 25)
!2918 = distinct !DILexicalBlock(scope: !2914, file: !525, line: 680, column: 25)
!2919 = !DILocation(line: 680, column: 25, scope: !2918)
!2920 = !DILocation(line: 680, column: 25, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !525, line: 680, column: 25)
!2922 = distinct !DILexicalBlock(scope: !2914, file: !525, line: 680, column: 25)
!2923 = !DILocation(line: 680, column: 25, scope: !2922)
!2924 = !DILocation(line: 680, column: 25, scope: !2914)
!2925 = !DILocation(line: 680, column: 25, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !525, line: 680, column: 25)
!2927 = distinct !DILexicalBlock(scope: !2907, file: !525, line: 680, column: 25)
!2928 = !DILocation(line: 680, column: 25, scope: !2927)
!2929 = !DILocation(line: 681, column: 25, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !525, line: 681, column: 25)
!2931 = distinct !DILexicalBlock(scope: !2908, file: !525, line: 681, column: 25)
!2932 = !DILocation(line: 681, column: 25, scope: !2931)
!2933 = !DILocation(line: 682, column: 25, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !525, line: 682, column: 25)
!2935 = distinct !DILexicalBlock(scope: !2908, file: !525, line: 682, column: 25)
!2936 = !DILocation(line: 682, column: 25, scope: !2935)
!2937 = !DILocation(line: 683, column: 38, scope: !2908)
!2938 = !DILocation(line: 683, column: 33, scope: !2908)
!2939 = !DILocation(line: 684, column: 23, scope: !2908)
!2940 = !DILocation(line: 685, column: 30, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2902, file: !525, line: 685, column: 30)
!2942 = !DILocation(line: 685, column: 30, scope: !2902)
!2943 = !DILocation(line: 687, column: 25, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !525, line: 687, column: 25)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !525, line: 687, column: 25)
!2946 = distinct !DILexicalBlock(scope: !2941, file: !525, line: 686, column: 23)
!2947 = !DILocation(line: 687, column: 25, scope: !2945)
!2948 = !DILocation(line: 689, column: 23, scope: !2946)
!2949 = !DILocation(line: 690, column: 35, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2903, file: !525, line: 690, column: 25)
!2951 = !DILocation(line: 690, column: 30, scope: !2950)
!2952 = !DILocation(line: 690, column: 25, scope: !2903)
!2953 = !DILocation(line: 692, column: 21, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !525, line: 692, column: 21)
!2955 = distinct !DILexicalBlock(scope: !2903, file: !525, line: 692, column: 21)
!2956 = !DILocation(line: 692, column: 21, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !525, line: 692, column: 21)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !525, line: 692, column: 21)
!2959 = distinct !DILexicalBlock(scope: !2954, file: !525, line: 692, column: 21)
!2960 = !DILocation(line: 692, column: 21, scope: !2958)
!2961 = !DILocation(line: 692, column: 21, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !525, line: 692, column: 21)
!2963 = distinct !DILexicalBlock(scope: !2959, file: !525, line: 692, column: 21)
!2964 = !DILocation(line: 692, column: 21, scope: !2963)
!2965 = !DILocation(line: 692, column: 21, scope: !2959)
!2966 = !DILocation(line: 0, scope: !2903)
!2967 = !DILocation(line: 693, column: 21, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !525, line: 693, column: 21)
!2969 = distinct !DILexicalBlock(scope: !2903, file: !525, line: 693, column: 21)
!2970 = !DILocation(line: 693, column: 21, scope: !2969)
!2971 = !DILocation(line: 694, column: 25, scope: !2903)
!2972 = !DILocation(line: 676, column: 17, scope: !2904)
!2973 = distinct !{!2973, !2974, !2975}
!2974 = !DILocation(line: 676, column: 17, scope: !2905)
!2975 = !DILocation(line: 695, column: 19, scope: !2905)
!2976 = !DILocation(line: 409, column: 30, scope: !2692)
!2977 = !DILocation(line: 702, column: 34, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2541, file: !525, line: 702, column: 11)
!2979 = !DILocation(line: 704, column: 14, scope: !2978)
!2980 = !DILocation(line: 705, column: 14, scope: !2978)
!2981 = !DILocation(line: 705, column: 35, scope: !2978)
!2982 = !DILocation(line: 705, column: 17, scope: !2978)
!2983 = !DILocation(line: 705, column: 47, scope: !2978)
!2984 = !DILocation(line: 705, column: 65, scope: !2978)
!2985 = !DILocation(line: 706, column: 11, scope: !2978)
!2986 = !DILocation(line: 702, column: 11, scope: !2541)
!2987 = !DILocation(line: 395, column: 15, scope: !2539)
!2988 = !DILocation(line: 709, column: 5, scope: !2541)
!2989 = !DILocation(line: 710, column: 7, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2541, file: !525, line: 710, column: 7)
!2991 = !DILocation(line: 710, column: 7, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2990, file: !525, line: 710, column: 7)
!2993 = !DILocation(line: 710, column: 7, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !525, line: 710, column: 7)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !525, line: 710, column: 7)
!2996 = distinct !DILexicalBlock(scope: !2992, file: !525, line: 710, column: 7)
!2997 = !DILocation(line: 710, column: 7, scope: !2995)
!2998 = !DILocation(line: 710, column: 7, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !525, line: 710, column: 7)
!3000 = distinct !DILexicalBlock(scope: !2996, file: !525, line: 710, column: 7)
!3001 = !DILocation(line: 710, column: 7, scope: !3000)
!3002 = !DILocation(line: 710, column: 7, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !3004, file: !525, line: 710, column: 7)
!3004 = distinct !DILexicalBlock(scope: !2996, file: !525, line: 710, column: 7)
!3005 = !DILocation(line: 710, column: 7, scope: !3004)
!3006 = !DILocation(line: 710, column: 7, scope: !2996)
!3007 = !DILocation(line: 710, column: 7, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !525, line: 710, column: 7)
!3009 = distinct !DILexicalBlock(scope: !2990, file: !525, line: 710, column: 7)
!3010 = !DILocation(line: 710, column: 7, scope: !3009)
!3011 = !DILocation(line: 712, column: 5, scope: !2541)
!3012 = !DILocation(line: 713, column: 7, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !525, line: 713, column: 7)
!3014 = distinct !DILexicalBlock(scope: !2541, file: !525, line: 713, column: 7)
!3015 = !DILocation(line: 417, column: 21, scope: !2541)
!3016 = !DILocation(line: 713, column: 7, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !525, line: 713, column: 7)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !525, line: 713, column: 7)
!3019 = distinct !DILexicalBlock(scope: !3013, file: !525, line: 713, column: 7)
!3020 = !DILocation(line: 713, column: 7, scope: !3018)
!3021 = !DILocation(line: 713, column: 7, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !525, line: 713, column: 7)
!3023 = distinct !DILexicalBlock(scope: !3019, file: !525, line: 713, column: 7)
!3024 = !DILocation(line: 713, column: 7, scope: !3023)
!3025 = !DILocation(line: 713, column: 7, scope: !3019)
!3026 = !DILocation(line: 714, column: 7, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !525, line: 714, column: 7)
!3028 = distinct !DILexicalBlock(scope: !2541, file: !525, line: 714, column: 7)
!3029 = !DILocation(line: 714, column: 7, scope: !3028)
!3030 = !DILocation(line: 716, column: 13, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2541, file: !525, line: 716, column: 11)
!3032 = !DILocation(line: 716, column: 11, scope: !2541)
!3033 = !DILocation(line: 718, column: 5, scope: !2542)
!3034 = !DILocation(line: 395, column: 82, scope: !2542)
!3035 = !DILocation(line: 395, column: 3, scope: !2542)
!3036 = distinct !{!3036, !2688, !3037, !960}
!3037 = !DILocation(line: 718, column: 5, scope: !2539)
!3038 = !DILocation(line: 720, column: 11, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !2507, file: !525, line: 720, column: 7)
!3040 = !DILocation(line: 720, column: 16, scope: !3039)
!3041 = !DILocation(line: 728, column: 51, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !2507, file: !525, line: 728, column: 7)
!3043 = !DILocation(line: 731, column: 11, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !525, line: 731, column: 11)
!3045 = distinct !DILexicalBlock(scope: !3042, file: !525, line: 730, column: 5)
!3046 = !DILocation(line: 731, column: 11, scope: !3045)
!3047 = !DILocation(line: 732, column: 16, scope: !3044)
!3048 = !DILocation(line: 732, column: 9, scope: !3044)
!3049 = !DILocation(line: 736, column: 18, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3044, file: !525, line: 736, column: 16)
!3051 = !DILocation(line: 736, column: 29, scope: !3050)
!3052 = !DILocation(line: 745, column: 7, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !2507, file: !525, line: 745, column: 7)
!3054 = !DILocation(line: 745, column: 20, scope: !3053)
!3055 = !DILocation(line: 746, column: 12, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !525, line: 746, column: 5)
!3057 = distinct !DILexicalBlock(scope: !3053, file: !525, line: 746, column: 5)
!3058 = !DILocation(line: 746, column: 5, scope: !3057)
!3059 = !DILocation(line: 747, column: 7, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !525, line: 747, column: 7)
!3061 = distinct !DILexicalBlock(scope: !3056, file: !525, line: 747, column: 7)
!3062 = !DILocation(line: 747, column: 7, scope: !3061)
!3063 = !DILocation(line: 746, column: 39, scope: !3056)
!3064 = distinct !{!3064, !3058, !3065, !960}
!3065 = !DILocation(line: 747, column: 7, scope: !3057)
!3066 = !DILocation(line: 749, column: 11, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !2507, file: !525, line: 749, column: 7)
!3068 = !DILocation(line: 749, column: 7, scope: !2507)
!3069 = !DILocation(line: 750, column: 5, scope: !3067)
!3070 = !DILocation(line: 750, column: 17, scope: !3067)
!3071 = !DILocation(line: 753, column: 2, scope: !2507)
!3072 = !DILocation(line: 756, column: 51, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !2507, file: !525, line: 756, column: 7)
!3074 = !DILocation(line: 756, column: 21, scope: !3073)
!3075 = !DILocation(line: 760, column: 42, scope: !2507)
!3076 = !DILocation(line: 758, column: 10, scope: !2507)
!3077 = !DILocation(line: 758, column: 3, scope: !2507)
!3078 = !DILocation(line: 762, column: 1, scope: !2507)
!3079 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1037, file: !1037, line: 98, type: !3080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!104}
!3082 = !DISubprogram(name: "strlen", scope: !1033, file: !1033, line: 407, type: !3083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!106, !107}
!3085 = !DISubprogram(name: "iswprint", scope: !3086, file: !3086, line: 120, type: !2882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3086 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3087 = distinct !DISubprogram(name: "quotearg_alloc", scope: !525, file: !525, line: 788, type: !3088, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3090)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!54, !107, !104, !2400}
!3090 = !{!3091, !3092, !3093}
!3091 = !DILocalVariable(name: "arg", arg: 1, scope: !3087, file: !525, line: 788, type: !107)
!3092 = !DILocalVariable(name: "argsize", arg: 2, scope: !3087, file: !525, line: 788, type: !104)
!3093 = !DILocalVariable(name: "o", arg: 3, scope: !3087, file: !525, line: 789, type: !2400)
!3094 = !DILocation(line: 0, scope: !3087)
!3095 = !DILocalVariable(name: "arg", arg: 1, scope: !3096, file: !525, line: 801, type: !107)
!3096 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !525, file: !525, line: 801, type: !3097, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3099)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!54, !107, !104, !788, !2400}
!3099 = !{!3095, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107}
!3100 = !DILocalVariable(name: "argsize", arg: 2, scope: !3096, file: !525, line: 801, type: !104)
!3101 = !DILocalVariable(name: "size", arg: 3, scope: !3096, file: !525, line: 801, type: !788)
!3102 = !DILocalVariable(name: "o", arg: 4, scope: !3096, file: !525, line: 802, type: !2400)
!3103 = !DILocalVariable(name: "p", scope: !3096, file: !525, line: 804, type: !2400)
!3104 = !DILocalVariable(name: "saved_errno", scope: !3096, file: !525, line: 805, type: !52)
!3105 = !DILocalVariable(name: "flags", scope: !3096, file: !525, line: 807, type: !52)
!3106 = !DILocalVariable(name: "bufsize", scope: !3096, file: !525, line: 808, type: !104)
!3107 = !DILocalVariable(name: "buf", scope: !3096, file: !525, line: 812, type: !54)
!3108 = !DILocation(line: 0, scope: !3096, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 791, column: 10, scope: !3087)
!3110 = !DILocation(line: 804, column: 37, scope: !3096, inlinedAt: !3109)
!3111 = !DILocation(line: 805, column: 21, scope: !3096, inlinedAt: !3109)
!3112 = !DILocation(line: 807, column: 18, scope: !3096, inlinedAt: !3109)
!3113 = !DILocation(line: 807, column: 24, scope: !3096, inlinedAt: !3109)
!3114 = !DILocation(line: 808, column: 72, scope: !3096, inlinedAt: !3109)
!3115 = !DILocation(line: 809, column: 56, scope: !3096, inlinedAt: !3109)
!3116 = !DILocation(line: 810, column: 49, scope: !3096, inlinedAt: !3109)
!3117 = !DILocation(line: 811, column: 49, scope: !3096, inlinedAt: !3109)
!3118 = !DILocation(line: 808, column: 20, scope: !3096, inlinedAt: !3109)
!3119 = !DILocation(line: 811, column: 62, scope: !3096, inlinedAt: !3109)
!3120 = !DILocation(line: 812, column: 15, scope: !3096, inlinedAt: !3109)
!3121 = !DILocation(line: 813, column: 60, scope: !3096, inlinedAt: !3109)
!3122 = !DILocation(line: 815, column: 32, scope: !3096, inlinedAt: !3109)
!3123 = !DILocation(line: 815, column: 47, scope: !3096, inlinedAt: !3109)
!3124 = !DILocation(line: 813, column: 3, scope: !3096, inlinedAt: !3109)
!3125 = !DILocation(line: 816, column: 9, scope: !3096, inlinedAt: !3109)
!3126 = !DILocation(line: 791, column: 3, scope: !3087)
!3127 = !DILocation(line: 0, scope: !3096)
!3128 = !DILocation(line: 804, column: 37, scope: !3096)
!3129 = !DILocation(line: 805, column: 21, scope: !3096)
!3130 = !DILocation(line: 807, column: 18, scope: !3096)
!3131 = !DILocation(line: 807, column: 27, scope: !3096)
!3132 = !DILocation(line: 807, column: 24, scope: !3096)
!3133 = !DILocation(line: 808, column: 72, scope: !3096)
!3134 = !DILocation(line: 809, column: 56, scope: !3096)
!3135 = !DILocation(line: 810, column: 49, scope: !3096)
!3136 = !DILocation(line: 811, column: 49, scope: !3096)
!3137 = !DILocation(line: 808, column: 20, scope: !3096)
!3138 = !DILocation(line: 811, column: 62, scope: !3096)
!3139 = !DILocation(line: 812, column: 15, scope: !3096)
!3140 = !DILocation(line: 813, column: 60, scope: !3096)
!3141 = !DILocation(line: 815, column: 32, scope: !3096)
!3142 = !DILocation(line: 815, column: 47, scope: !3096)
!3143 = !DILocation(line: 813, column: 3, scope: !3096)
!3144 = !DILocation(line: 816, column: 9, scope: !3096)
!3145 = !DILocation(line: 817, column: 7, scope: !3096)
!3146 = !DILocation(line: 818, column: 11, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3096, file: !525, line: 817, column: 7)
!3148 = !DILocation(line: 818, column: 5, scope: !3147)
!3149 = !DILocation(line: 819, column: 3, scope: !3096)
!3150 = distinct !DISubprogram(name: "quotearg_free", scope: !525, file: !525, line: 837, type: !477, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3151)
!3151 = !{!3152, !3153}
!3152 = !DILocalVariable(name: "sv", scope: !3150, file: !525, line: 839, type: !614)
!3153 = !DILocalVariable(name: "i", scope: !3154, file: !525, line: 840, type: !52)
!3154 = distinct !DILexicalBlock(scope: !3150, file: !525, line: 840, column: 3)
!3155 = !DILocation(line: 839, column: 24, scope: !3150)
!3156 = !DILocation(line: 0, scope: !3150)
!3157 = !DILocation(line: 0, scope: !3154)
!3158 = !DILocation(line: 840, column: 21, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3154, file: !525, line: 840, column: 3)
!3160 = !DILocation(line: 840, column: 3, scope: !3154)
!3161 = !DILocation(line: 842, column: 13, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3150, file: !525, line: 842, column: 7)
!3163 = !{!3164, !850, i64 8}
!3164 = !{!"slotvec", !1169, i64 0, !850, i64 8}
!3165 = !DILocation(line: 842, column: 17, scope: !3162)
!3166 = !DILocation(line: 842, column: 7, scope: !3150)
!3167 = !DILocation(line: 841, column: 17, scope: !3159)
!3168 = !DILocation(line: 841, column: 5, scope: !3159)
!3169 = !DILocation(line: 840, column: 32, scope: !3159)
!3170 = distinct !{!3170, !3160, !3171, !960}
!3171 = !DILocation(line: 841, column: 20, scope: !3154)
!3172 = !DILocation(line: 844, column: 7, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3162, file: !525, line: 843, column: 5)
!3174 = !DILocation(line: 845, column: 21, scope: !3173)
!3175 = !{!3164, !1169, i64 0}
!3176 = !DILocation(line: 846, column: 20, scope: !3173)
!3177 = !DILocation(line: 847, column: 5, scope: !3173)
!3178 = !DILocation(line: 848, column: 10, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3150, file: !525, line: 848, column: 7)
!3180 = !DILocation(line: 848, column: 7, scope: !3150)
!3181 = !DILocation(line: 850, column: 7, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3179, file: !525, line: 849, column: 5)
!3183 = !DILocation(line: 851, column: 15, scope: !3182)
!3184 = !DILocation(line: 852, column: 5, scope: !3182)
!3185 = !DILocation(line: 853, column: 10, scope: !3150)
!3186 = !DILocation(line: 854, column: 1, scope: !3150)
!3187 = !DISubprogram(name: "free", scope: !2354, file: !2354, line: 786, type: !3188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{null, !102}
!3190 = distinct !DISubprogram(name: "quotearg_n", scope: !525, file: !525, line: 919, type: !1030, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3191)
!3191 = !{!3192, !3193}
!3192 = !DILocalVariable(name: "n", arg: 1, scope: !3190, file: !525, line: 919, type: !52)
!3193 = !DILocalVariable(name: "arg", arg: 2, scope: !3190, file: !525, line: 919, type: !107)
!3194 = !DILocation(line: 0, scope: !3190)
!3195 = !DILocation(line: 921, column: 10, scope: !3190)
!3196 = !DILocation(line: 921, column: 3, scope: !3190)
!3197 = distinct !DISubprogram(name: "quotearg_n_options", scope: !525, file: !525, line: 866, type: !3198, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3200)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!54, !52, !107, !104, !2400}
!3200 = !{!3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3211, !3212, !3214, !3215, !3216}
!3201 = !DILocalVariable(name: "n", arg: 1, scope: !3197, file: !525, line: 866, type: !52)
!3202 = !DILocalVariable(name: "arg", arg: 2, scope: !3197, file: !525, line: 866, type: !107)
!3203 = !DILocalVariable(name: "argsize", arg: 3, scope: !3197, file: !525, line: 866, type: !104)
!3204 = !DILocalVariable(name: "options", arg: 4, scope: !3197, file: !525, line: 867, type: !2400)
!3205 = !DILocalVariable(name: "saved_errno", scope: !3197, file: !525, line: 869, type: !52)
!3206 = !DILocalVariable(name: "sv", scope: !3197, file: !525, line: 871, type: !614)
!3207 = !DILocalVariable(name: "nslots_max", scope: !3197, file: !525, line: 873, type: !52)
!3208 = !DILocalVariable(name: "preallocated", scope: !3209, file: !525, line: 879, type: !154)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !525, line: 878, column: 5)
!3210 = distinct !DILexicalBlock(scope: !3197, file: !525, line: 877, column: 7)
!3211 = !DILocalVariable(name: "new_nslots", scope: !3209, file: !525, line: 880, type: !801)
!3212 = !DILocalVariable(name: "size", scope: !3213, file: !525, line: 891, type: !104)
!3213 = distinct !DILexicalBlock(scope: !3197, file: !525, line: 890, column: 3)
!3214 = !DILocalVariable(name: "val", scope: !3213, file: !525, line: 892, type: !54)
!3215 = !DILocalVariable(name: "flags", scope: !3213, file: !525, line: 894, type: !52)
!3216 = !DILocalVariable(name: "qsize", scope: !3213, file: !525, line: 895, type: !104)
!3217 = distinct !DIAssignID()
!3218 = !DILocation(line: 0, scope: !3209)
!3219 = !DILocation(line: 0, scope: !3197)
!3220 = !DILocation(line: 869, column: 21, scope: !3197)
!3221 = !DILocation(line: 871, column: 24, scope: !3197)
!3222 = !DILocation(line: 874, column: 17, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3197, file: !525, line: 874, column: 7)
!3224 = !DILocation(line: 875, column: 5, scope: !3223)
!3225 = !DILocation(line: 877, column: 7, scope: !3210)
!3226 = !DILocation(line: 877, column: 14, scope: !3210)
!3227 = !DILocation(line: 877, column: 7, scope: !3197)
!3228 = !DILocation(line: 879, column: 31, scope: !3209)
!3229 = !DILocation(line: 880, column: 7, scope: !3209)
!3230 = !DILocation(line: 880, column: 26, scope: !3209)
!3231 = !DILocation(line: 880, column: 13, scope: !3209)
!3232 = distinct !DIAssignID()
!3233 = !DILocation(line: 882, column: 31, scope: !3209)
!3234 = !DILocation(line: 883, column: 33, scope: !3209)
!3235 = !DILocation(line: 883, column: 42, scope: !3209)
!3236 = !DILocation(line: 883, column: 31, scope: !3209)
!3237 = !DILocation(line: 882, column: 22, scope: !3209)
!3238 = !DILocation(line: 882, column: 15, scope: !3209)
!3239 = !DILocation(line: 884, column: 11, scope: !3209)
!3240 = !DILocation(line: 885, column: 15, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3209, file: !525, line: 884, column: 11)
!3242 = !{i64 0, i64 8, !1415, i64 8, i64 8, !849}
!3243 = !DILocation(line: 885, column: 9, scope: !3241)
!3244 = !DILocation(line: 886, column: 20, scope: !3209)
!3245 = !DILocation(line: 886, column: 18, scope: !3209)
!3246 = !DILocation(line: 886, column: 32, scope: !3209)
!3247 = !DILocation(line: 886, column: 43, scope: !3209)
!3248 = !DILocation(line: 886, column: 53, scope: !3209)
!3249 = !DILocation(line: 0, scope: !2622, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 886, column: 7, scope: !3209)
!3251 = !DILocation(line: 59, column: 10, scope: !2622, inlinedAt: !3250)
!3252 = !DILocation(line: 887, column: 16, scope: !3209)
!3253 = !DILocation(line: 887, column: 14, scope: !3209)
!3254 = !DILocation(line: 888, column: 5, scope: !3210)
!3255 = !DILocation(line: 888, column: 5, scope: !3209)
!3256 = !DILocation(line: 891, column: 19, scope: !3213)
!3257 = !DILocation(line: 891, column: 25, scope: !3213)
!3258 = !DILocation(line: 0, scope: !3213)
!3259 = !DILocation(line: 892, column: 23, scope: !3213)
!3260 = !DILocation(line: 894, column: 26, scope: !3213)
!3261 = !DILocation(line: 894, column: 32, scope: !3213)
!3262 = !DILocation(line: 896, column: 55, scope: !3213)
!3263 = !DILocation(line: 897, column: 55, scope: !3213)
!3264 = !DILocation(line: 898, column: 55, scope: !3213)
!3265 = !DILocation(line: 899, column: 55, scope: !3213)
!3266 = !DILocation(line: 895, column: 20, scope: !3213)
!3267 = !DILocation(line: 901, column: 14, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3213, file: !525, line: 901, column: 9)
!3269 = !DILocation(line: 901, column: 9, scope: !3213)
!3270 = !DILocation(line: 903, column: 35, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3268, file: !525, line: 902, column: 7)
!3272 = !DILocation(line: 903, column: 20, scope: !3271)
!3273 = !DILocation(line: 904, column: 17, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3271, file: !525, line: 904, column: 13)
!3275 = !DILocation(line: 904, column: 13, scope: !3271)
!3276 = !DILocation(line: 905, column: 11, scope: !3274)
!3277 = !DILocation(line: 906, column: 27, scope: !3271)
!3278 = !DILocation(line: 906, column: 19, scope: !3271)
!3279 = !DILocation(line: 907, column: 69, scope: !3271)
!3280 = !DILocation(line: 909, column: 44, scope: !3271)
!3281 = !DILocation(line: 910, column: 44, scope: !3271)
!3282 = !DILocation(line: 907, column: 9, scope: !3271)
!3283 = !DILocation(line: 911, column: 7, scope: !3271)
!3284 = !DILocation(line: 913, column: 11, scope: !3213)
!3285 = !DILocation(line: 914, column: 5, scope: !3213)
!3286 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !525, file: !525, line: 925, type: !3287, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3289)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!54, !52, !107, !104}
!3289 = !{!3290, !3291, !3292}
!3290 = !DILocalVariable(name: "n", arg: 1, scope: !3286, file: !525, line: 925, type: !52)
!3291 = !DILocalVariable(name: "arg", arg: 2, scope: !3286, file: !525, line: 925, type: !107)
!3292 = !DILocalVariable(name: "argsize", arg: 3, scope: !3286, file: !525, line: 925, type: !104)
!3293 = !DILocation(line: 0, scope: !3286)
!3294 = !DILocation(line: 927, column: 10, scope: !3286)
!3295 = !DILocation(line: 927, column: 3, scope: !3286)
!3296 = distinct !DISubprogram(name: "quotearg", scope: !525, file: !525, line: 931, type: !1039, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3297)
!3297 = !{!3298}
!3298 = !DILocalVariable(name: "arg", arg: 1, scope: !3296, file: !525, line: 931, type: !107)
!3299 = !DILocation(line: 0, scope: !3296)
!3300 = !DILocation(line: 0, scope: !3190, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 933, column: 10, scope: !3296)
!3302 = !DILocation(line: 921, column: 10, scope: !3190, inlinedAt: !3301)
!3303 = !DILocation(line: 933, column: 3, scope: !3296)
!3304 = distinct !DISubprogram(name: "quotearg_mem", scope: !525, file: !525, line: 937, type: !3305, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3307)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!54, !107, !104}
!3307 = !{!3308, !3309}
!3308 = !DILocalVariable(name: "arg", arg: 1, scope: !3304, file: !525, line: 937, type: !107)
!3309 = !DILocalVariable(name: "argsize", arg: 2, scope: !3304, file: !525, line: 937, type: !104)
!3310 = !DILocation(line: 0, scope: !3304)
!3311 = !DILocation(line: 0, scope: !3286, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 939, column: 10, scope: !3304)
!3313 = !DILocation(line: 927, column: 10, scope: !3286, inlinedAt: !3312)
!3314 = !DILocation(line: 939, column: 3, scope: !3304)
!3315 = distinct !DISubprogram(name: "quotearg_n_style", scope: !525, file: !525, line: 943, type: !3316, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3318)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!54, !52, !551, !107}
!3318 = !{!3319, !3320, !3321, !3322}
!3319 = !DILocalVariable(name: "n", arg: 1, scope: !3315, file: !525, line: 943, type: !52)
!3320 = !DILocalVariable(name: "s", arg: 2, scope: !3315, file: !525, line: 943, type: !551)
!3321 = !DILocalVariable(name: "arg", arg: 3, scope: !3315, file: !525, line: 943, type: !107)
!3322 = !DILocalVariable(name: "o", scope: !3315, file: !525, line: 945, type: !2401)
!3323 = distinct !DIAssignID()
!3324 = !DILocation(line: 0, scope: !3315)
!3325 = !DILocation(line: 945, column: 3, scope: !3315)
!3326 = !{!3327}
!3327 = distinct !{!3327, !3328, !"quoting_options_from_style: argument 0"}
!3328 = distinct !{!3328, !"quoting_options_from_style"}
!3329 = !DILocation(line: 945, column: 36, scope: !3315)
!3330 = !DILocalVariable(name: "style", arg: 1, scope: !3331, file: !525, line: 183, type: !551)
!3331 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !525, file: !525, line: 183, type: !3332, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!566, !551}
!3334 = !{!3330, !3335}
!3335 = !DILocalVariable(name: "o", scope: !3331, file: !525, line: 185, type: !566)
!3336 = !DILocation(line: 0, scope: !3331, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 945, column: 36, scope: !3315)
!3338 = !DILocation(line: 185, column: 26, scope: !3331, inlinedAt: !3337)
!3339 = distinct !DIAssignID()
!3340 = !DILocation(line: 186, column: 13, scope: !3341, inlinedAt: !3337)
!3341 = distinct !DILexicalBlock(scope: !3331, file: !525, line: 186, column: 7)
!3342 = !DILocation(line: 186, column: 7, scope: !3331, inlinedAt: !3337)
!3343 = !DILocation(line: 187, column: 5, scope: !3341, inlinedAt: !3337)
!3344 = !DILocation(line: 188, column: 11, scope: !3331, inlinedAt: !3337)
!3345 = distinct !DIAssignID()
!3346 = !DILocation(line: 946, column: 10, scope: !3315)
!3347 = !DILocation(line: 947, column: 1, scope: !3315)
!3348 = !DILocation(line: 946, column: 3, scope: !3315)
!3349 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !525, file: !525, line: 950, type: !3350, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3352)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!54, !52, !551, !107, !104}
!3352 = !{!3353, !3354, !3355, !3356, !3357}
!3353 = !DILocalVariable(name: "n", arg: 1, scope: !3349, file: !525, line: 950, type: !52)
!3354 = !DILocalVariable(name: "s", arg: 2, scope: !3349, file: !525, line: 950, type: !551)
!3355 = !DILocalVariable(name: "arg", arg: 3, scope: !3349, file: !525, line: 951, type: !107)
!3356 = !DILocalVariable(name: "argsize", arg: 4, scope: !3349, file: !525, line: 951, type: !104)
!3357 = !DILocalVariable(name: "o", scope: !3349, file: !525, line: 953, type: !2401)
!3358 = distinct !DIAssignID()
!3359 = !DILocation(line: 0, scope: !3349)
!3360 = !DILocation(line: 953, column: 3, scope: !3349)
!3361 = !{!3362}
!3362 = distinct !{!3362, !3363, !"quoting_options_from_style: argument 0"}
!3363 = distinct !{!3363, !"quoting_options_from_style"}
!3364 = !DILocation(line: 953, column: 36, scope: !3349)
!3365 = !DILocation(line: 0, scope: !3331, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 953, column: 36, scope: !3349)
!3367 = !DILocation(line: 185, column: 26, scope: !3331, inlinedAt: !3366)
!3368 = distinct !DIAssignID()
!3369 = !DILocation(line: 186, column: 13, scope: !3341, inlinedAt: !3366)
!3370 = !DILocation(line: 186, column: 7, scope: !3331, inlinedAt: !3366)
!3371 = !DILocation(line: 187, column: 5, scope: !3341, inlinedAt: !3366)
!3372 = !DILocation(line: 188, column: 11, scope: !3331, inlinedAt: !3366)
!3373 = distinct !DIAssignID()
!3374 = !DILocation(line: 954, column: 10, scope: !3349)
!3375 = !DILocation(line: 955, column: 1, scope: !3349)
!3376 = !DILocation(line: 954, column: 3, scope: !3349)
!3377 = distinct !DISubprogram(name: "quotearg_style", scope: !525, file: !525, line: 958, type: !3378, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3380)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!54, !551, !107}
!3380 = !{!3381, !3382}
!3381 = !DILocalVariable(name: "s", arg: 1, scope: !3377, file: !525, line: 958, type: !551)
!3382 = !DILocalVariable(name: "arg", arg: 2, scope: !3377, file: !525, line: 958, type: !107)
!3383 = distinct !DIAssignID()
!3384 = !DILocation(line: 0, scope: !3377)
!3385 = !DILocation(line: 0, scope: !3315, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 960, column: 10, scope: !3377)
!3387 = !DILocation(line: 945, column: 3, scope: !3315, inlinedAt: !3386)
!3388 = !{!3389}
!3389 = distinct !{!3389, !3390, !"quoting_options_from_style: argument 0"}
!3390 = distinct !{!3390, !"quoting_options_from_style"}
!3391 = !DILocation(line: 945, column: 36, scope: !3315, inlinedAt: !3386)
!3392 = !DILocation(line: 0, scope: !3331, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 945, column: 36, scope: !3315, inlinedAt: !3386)
!3394 = !DILocation(line: 185, column: 26, scope: !3331, inlinedAt: !3393)
!3395 = distinct !DIAssignID()
!3396 = !DILocation(line: 186, column: 13, scope: !3341, inlinedAt: !3393)
!3397 = !DILocation(line: 186, column: 7, scope: !3331, inlinedAt: !3393)
!3398 = !DILocation(line: 187, column: 5, scope: !3341, inlinedAt: !3393)
!3399 = !DILocation(line: 188, column: 11, scope: !3331, inlinedAt: !3393)
!3400 = distinct !DIAssignID()
!3401 = !DILocation(line: 946, column: 10, scope: !3315, inlinedAt: !3386)
!3402 = !DILocation(line: 947, column: 1, scope: !3315, inlinedAt: !3386)
!3403 = !DILocation(line: 960, column: 3, scope: !3377)
!3404 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !525, file: !525, line: 964, type: !3405, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3407)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!54, !551, !107, !104}
!3407 = !{!3408, !3409, !3410}
!3408 = !DILocalVariable(name: "s", arg: 1, scope: !3404, file: !525, line: 964, type: !551)
!3409 = !DILocalVariable(name: "arg", arg: 2, scope: !3404, file: !525, line: 964, type: !107)
!3410 = !DILocalVariable(name: "argsize", arg: 3, scope: !3404, file: !525, line: 964, type: !104)
!3411 = distinct !DIAssignID()
!3412 = !DILocation(line: 0, scope: !3404)
!3413 = !DILocation(line: 0, scope: !3349, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 966, column: 10, scope: !3404)
!3415 = !DILocation(line: 953, column: 3, scope: !3349, inlinedAt: !3414)
!3416 = !{!3417}
!3417 = distinct !{!3417, !3418, !"quoting_options_from_style: argument 0"}
!3418 = distinct !{!3418, !"quoting_options_from_style"}
!3419 = !DILocation(line: 953, column: 36, scope: !3349, inlinedAt: !3414)
!3420 = !DILocation(line: 0, scope: !3331, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 953, column: 36, scope: !3349, inlinedAt: !3414)
!3422 = !DILocation(line: 185, column: 26, scope: !3331, inlinedAt: !3421)
!3423 = distinct !DIAssignID()
!3424 = !DILocation(line: 186, column: 13, scope: !3341, inlinedAt: !3421)
!3425 = !DILocation(line: 186, column: 7, scope: !3331, inlinedAt: !3421)
!3426 = !DILocation(line: 187, column: 5, scope: !3341, inlinedAt: !3421)
!3427 = !DILocation(line: 188, column: 11, scope: !3331, inlinedAt: !3421)
!3428 = distinct !DIAssignID()
!3429 = !DILocation(line: 954, column: 10, scope: !3349, inlinedAt: !3414)
!3430 = !DILocation(line: 955, column: 1, scope: !3349, inlinedAt: !3414)
!3431 = !DILocation(line: 966, column: 3, scope: !3404)
!3432 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !525, file: !525, line: 970, type: !3433, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3435)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!54, !107, !104, !4}
!3435 = !{!3436, !3437, !3438, !3439}
!3436 = !DILocalVariable(name: "arg", arg: 1, scope: !3432, file: !525, line: 970, type: !107)
!3437 = !DILocalVariable(name: "argsize", arg: 2, scope: !3432, file: !525, line: 970, type: !104)
!3438 = !DILocalVariable(name: "ch", arg: 3, scope: !3432, file: !525, line: 970, type: !4)
!3439 = !DILocalVariable(name: "options", scope: !3432, file: !525, line: 972, type: !566)
!3440 = distinct !DIAssignID()
!3441 = !DILocation(line: 0, scope: !3432)
!3442 = !DILocation(line: 972, column: 3, scope: !3432)
!3443 = !DILocation(line: 973, column: 13, scope: !3432)
!3444 = !{i64 0, i64 4, !913, i64 4, i64 4, !913, i64 8, i64 32, !922, i64 40, i64 8, !849, i64 48, i64 8, !849}
!3445 = distinct !DIAssignID()
!3446 = !DILocation(line: 0, scope: !2420, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 974, column: 3, scope: !3432)
!3448 = !DILocation(line: 147, column: 41, scope: !2420, inlinedAt: !3447)
!3449 = !DILocation(line: 147, column: 62, scope: !2420, inlinedAt: !3447)
!3450 = !DILocation(line: 147, column: 57, scope: !2420, inlinedAt: !3447)
!3451 = !DILocation(line: 148, column: 15, scope: !2420, inlinedAt: !3447)
!3452 = !DILocation(line: 149, column: 21, scope: !2420, inlinedAt: !3447)
!3453 = !DILocation(line: 149, column: 24, scope: !2420, inlinedAt: !3447)
!3454 = !DILocation(line: 150, column: 19, scope: !2420, inlinedAt: !3447)
!3455 = !DILocation(line: 150, column: 24, scope: !2420, inlinedAt: !3447)
!3456 = !DILocation(line: 150, column: 6, scope: !2420, inlinedAt: !3447)
!3457 = !DILocation(line: 975, column: 10, scope: !3432)
!3458 = !DILocation(line: 976, column: 1, scope: !3432)
!3459 = !DILocation(line: 975, column: 3, scope: !3432)
!3460 = distinct !DISubprogram(name: "quotearg_char", scope: !525, file: !525, line: 979, type: !3461, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3463)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!54, !107, !4}
!3463 = !{!3464, !3465}
!3464 = !DILocalVariable(name: "arg", arg: 1, scope: !3460, file: !525, line: 979, type: !107)
!3465 = !DILocalVariable(name: "ch", arg: 2, scope: !3460, file: !525, line: 979, type: !4)
!3466 = distinct !DIAssignID()
!3467 = !DILocation(line: 0, scope: !3460)
!3468 = !DILocation(line: 0, scope: !3432, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 981, column: 10, scope: !3460)
!3470 = !DILocation(line: 972, column: 3, scope: !3432, inlinedAt: !3469)
!3471 = !DILocation(line: 973, column: 13, scope: !3432, inlinedAt: !3469)
!3472 = distinct !DIAssignID()
!3473 = !DILocation(line: 0, scope: !2420, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 974, column: 3, scope: !3432, inlinedAt: !3469)
!3475 = !DILocation(line: 147, column: 41, scope: !2420, inlinedAt: !3474)
!3476 = !DILocation(line: 147, column: 62, scope: !2420, inlinedAt: !3474)
!3477 = !DILocation(line: 147, column: 57, scope: !2420, inlinedAt: !3474)
!3478 = !DILocation(line: 148, column: 15, scope: !2420, inlinedAt: !3474)
!3479 = !DILocation(line: 149, column: 21, scope: !2420, inlinedAt: !3474)
!3480 = !DILocation(line: 149, column: 24, scope: !2420, inlinedAt: !3474)
!3481 = !DILocation(line: 150, column: 19, scope: !2420, inlinedAt: !3474)
!3482 = !DILocation(line: 150, column: 24, scope: !2420, inlinedAt: !3474)
!3483 = !DILocation(line: 150, column: 6, scope: !2420, inlinedAt: !3474)
!3484 = !DILocation(line: 975, column: 10, scope: !3432, inlinedAt: !3469)
!3485 = !DILocation(line: 976, column: 1, scope: !3432, inlinedAt: !3469)
!3486 = !DILocation(line: 981, column: 3, scope: !3460)
!3487 = distinct !DISubprogram(name: "quotearg_colon", scope: !525, file: !525, line: 985, type: !1039, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3488)
!3488 = !{!3489}
!3489 = !DILocalVariable(name: "arg", arg: 1, scope: !3487, file: !525, line: 985, type: !107)
!3490 = distinct !DIAssignID()
!3491 = !DILocation(line: 0, scope: !3487)
!3492 = !DILocation(line: 0, scope: !3460, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 987, column: 10, scope: !3487)
!3494 = !DILocation(line: 0, scope: !3432, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 981, column: 10, scope: !3460, inlinedAt: !3493)
!3496 = !DILocation(line: 972, column: 3, scope: !3432, inlinedAt: !3495)
!3497 = !DILocation(line: 973, column: 13, scope: !3432, inlinedAt: !3495)
!3498 = distinct !DIAssignID()
!3499 = !DILocation(line: 0, scope: !2420, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 974, column: 3, scope: !3432, inlinedAt: !3495)
!3501 = !DILocation(line: 147, column: 57, scope: !2420, inlinedAt: !3500)
!3502 = !DILocation(line: 149, column: 21, scope: !2420, inlinedAt: !3500)
!3503 = !DILocation(line: 150, column: 6, scope: !2420, inlinedAt: !3500)
!3504 = !DILocation(line: 975, column: 10, scope: !3432, inlinedAt: !3495)
!3505 = !DILocation(line: 976, column: 1, scope: !3432, inlinedAt: !3495)
!3506 = !DILocation(line: 987, column: 3, scope: !3487)
!3507 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !525, file: !525, line: 991, type: !3305, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3508)
!3508 = !{!3509, !3510}
!3509 = !DILocalVariable(name: "arg", arg: 1, scope: !3507, file: !525, line: 991, type: !107)
!3510 = !DILocalVariable(name: "argsize", arg: 2, scope: !3507, file: !525, line: 991, type: !104)
!3511 = distinct !DIAssignID()
!3512 = !DILocation(line: 0, scope: !3507)
!3513 = !DILocation(line: 0, scope: !3432, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 993, column: 10, scope: !3507)
!3515 = !DILocation(line: 972, column: 3, scope: !3432, inlinedAt: !3514)
!3516 = !DILocation(line: 973, column: 13, scope: !3432, inlinedAt: !3514)
!3517 = distinct !DIAssignID()
!3518 = !DILocation(line: 0, scope: !2420, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 974, column: 3, scope: !3432, inlinedAt: !3514)
!3520 = !DILocation(line: 147, column: 57, scope: !2420, inlinedAt: !3519)
!3521 = !DILocation(line: 149, column: 21, scope: !2420, inlinedAt: !3519)
!3522 = !DILocation(line: 150, column: 6, scope: !2420, inlinedAt: !3519)
!3523 = !DILocation(line: 975, column: 10, scope: !3432, inlinedAt: !3514)
!3524 = !DILocation(line: 976, column: 1, scope: !3432, inlinedAt: !3514)
!3525 = !DILocation(line: 993, column: 3, scope: !3507)
!3526 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !525, file: !525, line: 997, type: !3316, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3527)
!3527 = !{!3528, !3529, !3530, !3531}
!3528 = !DILocalVariable(name: "n", arg: 1, scope: !3526, file: !525, line: 997, type: !52)
!3529 = !DILocalVariable(name: "s", arg: 2, scope: !3526, file: !525, line: 997, type: !551)
!3530 = !DILocalVariable(name: "arg", arg: 3, scope: !3526, file: !525, line: 997, type: !107)
!3531 = !DILocalVariable(name: "options", scope: !3526, file: !525, line: 999, type: !566)
!3532 = distinct !DIAssignID()
!3533 = !DILocation(line: 0, scope: !3526)
!3534 = !DILocation(line: 185, column: 26, scope: !3331, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 1000, column: 13, scope: !3526)
!3536 = !DILocation(line: 999, column: 3, scope: !3526)
!3537 = !DILocation(line: 0, scope: !3331, inlinedAt: !3535)
!3538 = !DILocation(line: 186, column: 13, scope: !3341, inlinedAt: !3535)
!3539 = !DILocation(line: 186, column: 7, scope: !3331, inlinedAt: !3535)
!3540 = !DILocation(line: 187, column: 5, scope: !3341, inlinedAt: !3535)
!3541 = !{!3542}
!3542 = distinct !{!3542, !3543, !"quoting_options_from_style: argument 0"}
!3543 = distinct !{!3543, !"quoting_options_from_style"}
!3544 = !DILocation(line: 1000, column: 13, scope: !3526)
!3545 = distinct !DIAssignID()
!3546 = distinct !DIAssignID()
!3547 = !DILocation(line: 0, scope: !2420, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 1001, column: 3, scope: !3526)
!3549 = !DILocation(line: 147, column: 57, scope: !2420, inlinedAt: !3548)
!3550 = !DILocation(line: 149, column: 21, scope: !2420, inlinedAt: !3548)
!3551 = !DILocation(line: 150, column: 6, scope: !2420, inlinedAt: !3548)
!3552 = distinct !DIAssignID()
!3553 = !DILocation(line: 1002, column: 10, scope: !3526)
!3554 = !DILocation(line: 1003, column: 1, scope: !3526)
!3555 = !DILocation(line: 1002, column: 3, scope: !3526)
!3556 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !525, file: !525, line: 1006, type: !3557, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3559)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!54, !52, !107, !107, !107}
!3559 = !{!3560, !3561, !3562, !3563}
!3560 = !DILocalVariable(name: "n", arg: 1, scope: !3556, file: !525, line: 1006, type: !52)
!3561 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3556, file: !525, line: 1006, type: !107)
!3562 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3556, file: !525, line: 1007, type: !107)
!3563 = !DILocalVariable(name: "arg", arg: 4, scope: !3556, file: !525, line: 1007, type: !107)
!3564 = distinct !DIAssignID()
!3565 = !DILocation(line: 0, scope: !3556)
!3566 = !DILocalVariable(name: "o", scope: !3567, file: !525, line: 1018, type: !566)
!3567 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !525, file: !525, line: 1014, type: !3568, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3570)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!54, !52, !107, !107, !107, !104}
!3570 = !{!3571, !3572, !3573, !3574, !3575, !3566}
!3571 = !DILocalVariable(name: "n", arg: 1, scope: !3567, file: !525, line: 1014, type: !52)
!3572 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3567, file: !525, line: 1014, type: !107)
!3573 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3567, file: !525, line: 1015, type: !107)
!3574 = !DILocalVariable(name: "arg", arg: 4, scope: !3567, file: !525, line: 1016, type: !107)
!3575 = !DILocalVariable(name: "argsize", arg: 5, scope: !3567, file: !525, line: 1016, type: !104)
!3576 = !DILocation(line: 0, scope: !3567, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 1009, column: 10, scope: !3556)
!3578 = !DILocation(line: 1018, column: 3, scope: !3567, inlinedAt: !3577)
!3579 = !DILocation(line: 1018, column: 30, scope: !3567, inlinedAt: !3577)
!3580 = distinct !DIAssignID()
!3581 = distinct !DIAssignID()
!3582 = !DILocation(line: 0, scope: !2460, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 1019, column: 3, scope: !3567, inlinedAt: !3577)
!3584 = !DILocation(line: 174, column: 12, scope: !2460, inlinedAt: !3583)
!3585 = distinct !DIAssignID()
!3586 = !DILocation(line: 175, column: 8, scope: !2473, inlinedAt: !3583)
!3587 = !DILocation(line: 175, column: 19, scope: !2473, inlinedAt: !3583)
!3588 = !DILocation(line: 176, column: 5, scope: !2473, inlinedAt: !3583)
!3589 = !DILocation(line: 177, column: 6, scope: !2460, inlinedAt: !3583)
!3590 = !DILocation(line: 177, column: 17, scope: !2460, inlinedAt: !3583)
!3591 = distinct !DIAssignID()
!3592 = !DILocation(line: 178, column: 6, scope: !2460, inlinedAt: !3583)
!3593 = !DILocation(line: 178, column: 18, scope: !2460, inlinedAt: !3583)
!3594 = distinct !DIAssignID()
!3595 = !DILocation(line: 1020, column: 10, scope: !3567, inlinedAt: !3577)
!3596 = !DILocation(line: 1021, column: 1, scope: !3567, inlinedAt: !3577)
!3597 = !DILocation(line: 1009, column: 3, scope: !3556)
!3598 = distinct !DIAssignID()
!3599 = !DILocation(line: 0, scope: !3567)
!3600 = !DILocation(line: 1018, column: 3, scope: !3567)
!3601 = !DILocation(line: 1018, column: 30, scope: !3567)
!3602 = distinct !DIAssignID()
!3603 = distinct !DIAssignID()
!3604 = !DILocation(line: 0, scope: !2460, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 1019, column: 3, scope: !3567)
!3606 = !DILocation(line: 174, column: 12, scope: !2460, inlinedAt: !3605)
!3607 = distinct !DIAssignID()
!3608 = !DILocation(line: 175, column: 8, scope: !2473, inlinedAt: !3605)
!3609 = !DILocation(line: 175, column: 19, scope: !2473, inlinedAt: !3605)
!3610 = !DILocation(line: 176, column: 5, scope: !2473, inlinedAt: !3605)
!3611 = !DILocation(line: 177, column: 6, scope: !2460, inlinedAt: !3605)
!3612 = !DILocation(line: 177, column: 17, scope: !2460, inlinedAt: !3605)
!3613 = distinct !DIAssignID()
!3614 = !DILocation(line: 178, column: 6, scope: !2460, inlinedAt: !3605)
!3615 = !DILocation(line: 178, column: 18, scope: !2460, inlinedAt: !3605)
!3616 = distinct !DIAssignID()
!3617 = !DILocation(line: 1020, column: 10, scope: !3567)
!3618 = !DILocation(line: 1021, column: 1, scope: !3567)
!3619 = !DILocation(line: 1020, column: 3, scope: !3567)
!3620 = distinct !DISubprogram(name: "quotearg_custom", scope: !525, file: !525, line: 1024, type: !3621, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3623)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!54, !107, !107, !107}
!3623 = !{!3624, !3625, !3626}
!3624 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3620, file: !525, line: 1024, type: !107)
!3625 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3620, file: !525, line: 1024, type: !107)
!3626 = !DILocalVariable(name: "arg", arg: 3, scope: !3620, file: !525, line: 1025, type: !107)
!3627 = distinct !DIAssignID()
!3628 = !DILocation(line: 0, scope: !3620)
!3629 = !DILocation(line: 0, scope: !3556, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 1027, column: 10, scope: !3620)
!3631 = !DILocation(line: 0, scope: !3567, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 1009, column: 10, scope: !3556, inlinedAt: !3630)
!3633 = !DILocation(line: 1018, column: 3, scope: !3567, inlinedAt: !3632)
!3634 = !DILocation(line: 1018, column: 30, scope: !3567, inlinedAt: !3632)
!3635 = distinct !DIAssignID()
!3636 = distinct !DIAssignID()
!3637 = !DILocation(line: 0, scope: !2460, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 1019, column: 3, scope: !3567, inlinedAt: !3632)
!3639 = !DILocation(line: 174, column: 12, scope: !2460, inlinedAt: !3638)
!3640 = distinct !DIAssignID()
!3641 = !DILocation(line: 175, column: 8, scope: !2473, inlinedAt: !3638)
!3642 = !DILocation(line: 175, column: 19, scope: !2473, inlinedAt: !3638)
!3643 = !DILocation(line: 176, column: 5, scope: !2473, inlinedAt: !3638)
!3644 = !DILocation(line: 177, column: 6, scope: !2460, inlinedAt: !3638)
!3645 = !DILocation(line: 177, column: 17, scope: !2460, inlinedAt: !3638)
!3646 = distinct !DIAssignID()
!3647 = !DILocation(line: 178, column: 6, scope: !2460, inlinedAt: !3638)
!3648 = !DILocation(line: 178, column: 18, scope: !2460, inlinedAt: !3638)
!3649 = distinct !DIAssignID()
!3650 = !DILocation(line: 1020, column: 10, scope: !3567, inlinedAt: !3632)
!3651 = !DILocation(line: 1021, column: 1, scope: !3567, inlinedAt: !3632)
!3652 = !DILocation(line: 1027, column: 3, scope: !3620)
!3653 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !525, file: !525, line: 1031, type: !3654, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3656)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!54, !107, !107, !107, !104}
!3656 = !{!3657, !3658, !3659, !3660}
!3657 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3653, file: !525, line: 1031, type: !107)
!3658 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3653, file: !525, line: 1031, type: !107)
!3659 = !DILocalVariable(name: "arg", arg: 3, scope: !3653, file: !525, line: 1032, type: !107)
!3660 = !DILocalVariable(name: "argsize", arg: 4, scope: !3653, file: !525, line: 1032, type: !104)
!3661 = distinct !DIAssignID()
!3662 = !DILocation(line: 0, scope: !3653)
!3663 = !DILocation(line: 0, scope: !3567, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 1034, column: 10, scope: !3653)
!3665 = !DILocation(line: 1018, column: 3, scope: !3567, inlinedAt: !3664)
!3666 = !DILocation(line: 1018, column: 30, scope: !3567, inlinedAt: !3664)
!3667 = distinct !DIAssignID()
!3668 = distinct !DIAssignID()
!3669 = !DILocation(line: 0, scope: !2460, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 1019, column: 3, scope: !3567, inlinedAt: !3664)
!3671 = !DILocation(line: 174, column: 12, scope: !2460, inlinedAt: !3670)
!3672 = distinct !DIAssignID()
!3673 = !DILocation(line: 175, column: 8, scope: !2473, inlinedAt: !3670)
!3674 = !DILocation(line: 175, column: 19, scope: !2473, inlinedAt: !3670)
!3675 = !DILocation(line: 176, column: 5, scope: !2473, inlinedAt: !3670)
!3676 = !DILocation(line: 177, column: 6, scope: !2460, inlinedAt: !3670)
!3677 = !DILocation(line: 177, column: 17, scope: !2460, inlinedAt: !3670)
!3678 = distinct !DIAssignID()
!3679 = !DILocation(line: 178, column: 6, scope: !2460, inlinedAt: !3670)
!3680 = !DILocation(line: 178, column: 18, scope: !2460, inlinedAt: !3670)
!3681 = distinct !DIAssignID()
!3682 = !DILocation(line: 1020, column: 10, scope: !3567, inlinedAt: !3664)
!3683 = !DILocation(line: 1021, column: 1, scope: !3567, inlinedAt: !3664)
!3684 = !DILocation(line: 1034, column: 3, scope: !3653)
!3685 = distinct !DISubprogram(name: "quote_n_mem", scope: !525, file: !525, line: 1049, type: !3686, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3688)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!107, !52, !107, !104}
!3688 = !{!3689, !3690, !3691}
!3689 = !DILocalVariable(name: "n", arg: 1, scope: !3685, file: !525, line: 1049, type: !52)
!3690 = !DILocalVariable(name: "arg", arg: 2, scope: !3685, file: !525, line: 1049, type: !107)
!3691 = !DILocalVariable(name: "argsize", arg: 3, scope: !3685, file: !525, line: 1049, type: !104)
!3692 = !DILocation(line: 0, scope: !3685)
!3693 = !DILocation(line: 1051, column: 10, scope: !3685)
!3694 = !DILocation(line: 1051, column: 3, scope: !3685)
!3695 = distinct !DISubprogram(name: "quote_mem", scope: !525, file: !525, line: 1055, type: !3696, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3698)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!107, !107, !104}
!3698 = !{!3699, !3700}
!3699 = !DILocalVariable(name: "arg", arg: 1, scope: !3695, file: !525, line: 1055, type: !107)
!3700 = !DILocalVariable(name: "argsize", arg: 2, scope: !3695, file: !525, line: 1055, type: !104)
!3701 = !DILocation(line: 0, scope: !3695)
!3702 = !DILocation(line: 0, scope: !3685, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 1057, column: 10, scope: !3695)
!3704 = !DILocation(line: 1051, column: 10, scope: !3685, inlinedAt: !3703)
!3705 = !DILocation(line: 1057, column: 3, scope: !3695)
!3706 = distinct !DISubprogram(name: "quote_n", scope: !525, file: !525, line: 1061, type: !3707, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3709)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!107, !52, !107}
!3709 = !{!3710, !3711}
!3710 = !DILocalVariable(name: "n", arg: 1, scope: !3706, file: !525, line: 1061, type: !52)
!3711 = !DILocalVariable(name: "arg", arg: 2, scope: !3706, file: !525, line: 1061, type: !107)
!3712 = !DILocation(line: 0, scope: !3706)
!3713 = !DILocation(line: 0, scope: !3685, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 1063, column: 10, scope: !3706)
!3715 = !DILocation(line: 1051, column: 10, scope: !3685, inlinedAt: !3714)
!3716 = !DILocation(line: 1063, column: 3, scope: !3706)
!3717 = distinct !DISubprogram(name: "quote", scope: !525, file: !525, line: 1067, type: !3718, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3720)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!107, !107}
!3720 = !{!3721}
!3721 = !DILocalVariable(name: "arg", arg: 1, scope: !3717, file: !525, line: 1067, type: !107)
!3722 = !DILocation(line: 0, scope: !3717)
!3723 = !DILocation(line: 0, scope: !3706, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 1069, column: 10, scope: !3717)
!3725 = !DILocation(line: 0, scope: !3685, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 1063, column: 10, scope: !3706, inlinedAt: !3724)
!3727 = !DILocation(line: 1051, column: 10, scope: !3685, inlinedAt: !3726)
!3728 = !DILocation(line: 1069, column: 3, scope: !3717)
!3729 = distinct !DISubprogram(name: "init_tokenbuffer", scope: !768, file: !768, line: 43, type: !3730, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3739)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{null, !3732}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !3734, line: 38, baseType: !3735)
!3734 = !DIFile(filename: "lib/readtokens.h", directory: "/src", checksumkind: CSK_MD5, checksum: "75cc48641d199743577b153a0d1c82de")
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !3734, line: 33, size: 128, elements: !3736)
!3736 = !{!3737, !3738}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3735, file: !3734, line: 35, baseType: !104, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3735, file: !3734, line: 36, baseType: !54, size: 64, offset: 64)
!3739 = !{!3740}
!3740 = !DILocalVariable(name: "tokenbuffer", arg: 1, scope: !3729, file: !768, line: 43, type: !3732)
!3741 = !DILocation(line: 0, scope: !3729)
!3742 = !DILocation(line: 46, column: 23, scope: !3729)
!3743 = !DILocation(line: 47, column: 1, scope: !3729)
!3744 = distinct !DISubprogram(name: "readtoken", scope: !768, file: !768, line: 79, type: !3745, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3781)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!104, !3747, !107, !104, !3732}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !3749)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !3750)
!3750 = !{!3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3749, file: !171, line: 51, baseType: !52, size: 32)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3749, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3749, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3749, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3749, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3749, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3749, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3749, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3749, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3749, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3749, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3749, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3749, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3749, file: !171, line: 70, baseType: !3765, size: 64, offset: 832)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3749, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3749, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3749, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3749, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3749, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3749, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3749, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3749, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3749, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3749, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3749, file: !171, line: 93, baseType: !3765, size: 64, offset: 1344)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3749, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3749, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3749, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3749, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!3781 = !{!3782, !3783, !3784, !3785, !3786, !3789, !3791, !3794, !3795, !3796, !3797}
!3782 = !DILocalVariable(name: "stream", arg: 1, scope: !3744, file: !768, line: 79, type: !3747)
!3783 = !DILocalVariable(name: "delim", arg: 2, scope: !3744, file: !768, line: 80, type: !107)
!3784 = !DILocalVariable(name: "n_delim", arg: 3, scope: !3744, file: !768, line: 81, type: !104)
!3785 = !DILocalVariable(name: "tokenbuffer", arg: 4, scope: !3744, file: !768, line: 82, type: !3732)
!3786 = !DILocalVariable(name: "isdelim", scope: !3744, file: !768, line: 84, type: !3787)
!3787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3788, size: 256, elements: !232)
!3788 = !DIDerivedType(tag: DW_TAG_typedef, name: "word", file: !768, line: 49, baseType: !104)
!3789 = !DILocalVariable(name: "i", scope: !3790, file: !768, line: 86, type: !801)
!3790 = distinct !DILexicalBlock(scope: !3744, file: !768, line: 86, column: 3)
!3791 = !DILocalVariable(name: "ch", scope: !3792, file: !768, line: 88, type: !109)
!3792 = distinct !DILexicalBlock(scope: !3793, file: !768, line: 87, column: 5)
!3793 = distinct !DILexicalBlock(scope: !3790, file: !768, line: 86, column: 3)
!3794 = !DILocalVariable(name: "c", scope: !3744, file: !768, line: 92, type: !52)
!3795 = !DILocalVariable(name: "p", scope: !3744, file: !768, line: 100, type: !54)
!3796 = !DILocalVariable(name: "n", scope: !3744, file: !768, line: 101, type: !801)
!3797 = !DILocalVariable(name: "i", scope: !3744, file: !768, line: 102, type: !801)
!3798 = distinct !DIAssignID()
!3799 = !DILocation(line: 0, scope: !3744)
!3800 = distinct !DIAssignID()
!3801 = !DILocation(line: 84, column: 3, scope: !3744)
!3802 = !DILocalVariable(name: "__dest", arg: 1, scope: !3803, file: !2363, line: 57, type: !102)
!3803 = distinct !DISubprogram(name: "memset", scope: !2363, file: !2363, line: 57, type: !2364, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3804)
!3804 = !{!3802, !3805, !3806}
!3805 = !DILocalVariable(name: "__ch", arg: 2, scope: !3803, file: !2363, line: 57, type: !52)
!3806 = !DILocalVariable(name: "__len", arg: 3, scope: !3803, file: !2363, line: 57, type: !104)
!3807 = !DILocation(line: 0, scope: !3803, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 85, column: 3, scope: !3744)
!3809 = !DILocation(line: 59, column: 10, scope: !3803, inlinedAt: !3808)
!3810 = !DILocation(line: 0, scope: !3790)
!3811 = !DILocation(line: 86, column: 23, scope: !3793)
!3812 = !DILocation(line: 86, column: 3, scope: !3790)
!3813 = !DILocation(line: 88, column: 26, scope: !3792)
!3814 = !DILocation(line: 0, scope: !3792)
!3815 = !DILocation(line: 89, column: 20, scope: !3792)
!3816 = !DILocalVariable(name: "n", arg: 1, scope: !3817, file: !768, line: 59, type: !104)
!3817 = distinct !DISubprogram(name: "set_nth_bit", scope: !768, file: !768, line: 59, type: !3818, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3821)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{null, !104, !3820}
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3821 = !{!3816, !3822, !3823}
!3822 = !DILocalVariable(name: "bitset", arg: 2, scope: !3817, file: !768, line: 59, type: !3820)
!3823 = !DILocalVariable(name: "one", scope: !3817, file: !768, line: 61, type: !104)
!3824 = !DILocation(line: 0, scope: !3817, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 89, column: 7, scope: !3792)
!3826 = !DILocation(line: 62, column: 41, scope: !3817, inlinedAt: !3825)
!3827 = !DILocation(line: 62, column: 36, scope: !3817, inlinedAt: !3825)
!3828 = !DILocation(line: 62, column: 12, scope: !3817, inlinedAt: !3825)
!3829 = !DILocation(line: 62, column: 3, scope: !3817, inlinedAt: !3825)
!3830 = !DILocation(line: 62, column: 29, scope: !3817, inlinedAt: !3825)
!3831 = !DILocation(line: 68, column: 10, scope: !3832, inlinedAt: !3837)
!3832 = distinct !DISubprogram(name: "getc_unlocked", scope: !1160, file: !1160, line: 66, type: !3833, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3835)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!52, !3747}
!3835 = !{!3836}
!3836 = !DILocalVariable(name: "__fp", arg: 1, scope: !3832, file: !1160, line: 66, type: !3747)
!3837 = distinct !DILocation(line: 95, column: 12, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3744, file: !768, line: 95, column: 3)
!3839 = !DILocation(line: 0, scope: !3832, inlinedAt: !3837)
!3840 = !DILocation(line: 95, column: 34, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3838, file: !768, line: 95, column: 3)
!3842 = !DILocation(line: 95, column: 29, scope: !3841)
!3843 = !DILocation(line: 95, column: 3, scope: !3838)
!3844 = !DILocation(line: 86, column: 35, scope: !3793)
!3845 = distinct !{!3845, !3812, !3846, !960}
!3846 = !DILocation(line: 90, column: 5, scope: !3790)
!3847 = !DILocalVariable(name: "n", arg: 1, scope: !3848, file: !768, line: 53, type: !104)
!3848 = distinct !DISubprogram(name: "get_nth_bit", scope: !768, file: !768, line: 53, type: !3849, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3853)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!154, !104, !3851}
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3788)
!3853 = !{!3847, !3854}
!3854 = !DILocalVariable(name: "bitset", arg: 2, scope: !3848, file: !768, line: 53, type: !3851)
!3855 = !DILocation(line: 0, scope: !3848, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 95, column: 37, scope: !3841)
!3857 = !DILocation(line: 55, column: 19, scope: !3848, inlinedAt: !3856)
!3858 = !DILocation(line: 55, column: 10, scope: !3848, inlinedAt: !3856)
!3859 = !DILocation(line: 55, column: 41, scope: !3848, inlinedAt: !3856)
!3860 = !DILocation(line: 0, scope: !3832, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 95, column: 67, scope: !3841)
!3862 = !DILocation(line: 68, column: 10, scope: !3832, inlinedAt: !3861)
!3863 = distinct !{!3863, !3843, !3864, !960}
!3864 = !DILocation(line: 98, column: 5, scope: !3838)
!3865 = !DILocation(line: 101, column: 3, scope: !3744)
!3866 = distinct !DIAssignID()
!3867 = !DILocation(line: 105, column: 17, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3869, file: !768, line: 105, column: 11)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !768, line: 104, column: 5)
!3870 = distinct !DILexicalBlock(scope: !3871, file: !768, line: 103, column: 3)
!3871 = distinct !DILexicalBlock(scope: !3744, file: !768, line: 103, column: 3)
!3872 = !DILocation(line: 100, column: 26, scope: !3744)
!3873 = !DILocation(line: 101, column: 26, scope: !3744)
!3874 = !{!1177, !1169, i64 0}
!3875 = !DILocation(line: 101, column: 9, scope: !3744)
!3876 = !DILocation(line: 103, column: 3, scope: !3871)
!3877 = !DILocation(line: 108, column: 16, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3869, file: !768, line: 108, column: 11)
!3879 = !DILocation(line: 108, column: 13, scope: !3878)
!3880 = !DILocation(line: 108, column: 11, scope: !3869)
!3881 = !DILocation(line: 109, column: 13, scope: !3878)
!3882 = !DILocation(line: 109, column: 9, scope: !3878)
!3883 = !DILocation(line: 111, column: 11, scope: !3869)
!3884 = !DILocation(line: 0, scope: !3848, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 116, column: 11, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3869, file: !768, line: 116, column: 11)
!3887 = !DILocation(line: 55, column: 19, scope: !3848, inlinedAt: !3885)
!3888 = !DILocation(line: 55, column: 10, scope: !3848, inlinedAt: !3885)
!3889 = !DILocation(line: 55, column: 41, scope: !3848, inlinedAt: !3885)
!3890 = !DILocation(line: 116, column: 11, scope: !3869)
!3891 = !DILocation(line: 121, column: 16, scope: !3869)
!3892 = !DILocation(line: 121, column: 10, scope: !3869)
!3893 = !DILocation(line: 121, column: 7, scope: !3869)
!3894 = !DILocation(line: 121, column: 14, scope: !3869)
!3895 = !DILocation(line: 0, scope: !3832, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 122, column: 11, scope: !3869)
!3897 = !DILocation(line: 68, column: 10, scope: !3832, inlinedAt: !3896)
!3898 = !DILocation(line: 105, column: 13, scope: !3868)
!3899 = !DILocation(line: 0, scope: !3869)
!3900 = !DILocation(line: 125, column: 23, scope: !3744)
!3901 = !DILocation(line: 126, column: 23, scope: !3744)
!3902 = !DILocation(line: 126, column: 21, scope: !3744)
!3903 = !DILocation(line: 127, column: 3, scope: !3744)
!3904 = !DILocation(line: 128, column: 1, scope: !3744)
!3905 = !DISubprogram(name: "__uflow", scope: !908, file: !908, line: 885, type: !3833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3906 = distinct !DISubprogram(name: "readtokens", scope: !768, file: !768, line: 138, type: !3907, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3911)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!104, !3747, !104, !107, !104, !3909, !3910}
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!3911 = !{!3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3928}
!3912 = !DILocalVariable(name: "stream", arg: 1, scope: !3906, file: !768, line: 138, type: !3747)
!3913 = !DILocalVariable(name: "projected_n_tokens", arg: 2, scope: !3906, file: !768, line: 139, type: !104)
!3914 = !DILocalVariable(name: "delim", arg: 3, scope: !3906, file: !768, line: 140, type: !107)
!3915 = !DILocalVariable(name: "n_delim", arg: 4, scope: !3906, file: !768, line: 141, type: !104)
!3916 = !DILocalVariable(name: "tokens_out", arg: 5, scope: !3906, file: !768, line: 142, type: !3909)
!3917 = !DILocalVariable(name: "token_lengths", arg: 6, scope: !3906, file: !768, line: 143, type: !3910)
!3918 = !DILocalVariable(name: "sz", scope: !3906, file: !768, line: 151, type: !801)
!3919 = !DILocalVariable(name: "tokens", scope: !3906, file: !768, line: 152, type: !53)
!3920 = !DILocalVariable(name: "lengths", scope: !3906, file: !768, line: 153, type: !788)
!3921 = !DILocalVariable(name: "tb", scope: !3906, file: !768, line: 155, type: !3733)
!3922 = !DILocalVariable(name: "token", scope: !3906, file: !768, line: 156, type: !3732)
!3923 = !DILocalVariable(name: "n_tokens", scope: !3906, file: !768, line: 158, type: !801)
!3924 = !DILocalVariable(name: "token_length", scope: !3925, file: !768, line: 161, type: !104)
!3925 = distinct !DILexicalBlock(scope: !3926, file: !768, line: 160, column: 5)
!3926 = distinct !DILexicalBlock(scope: !3927, file: !768, line: 159, column: 3)
!3927 = distinct !DILexicalBlock(scope: !3906, file: !768, line: 159, column: 3)
!3928 = !DILocalVariable(name: "tmp", scope: !3925, file: !768, line: 175, type: !54)
!3929 = distinct !DIAssignID()
!3930 = !DILocation(line: 0, scope: !3906)
!3931 = distinct !DIAssignID()
!3932 = !DILocation(line: 146, column: 26, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3906, file: !768, line: 146, column: 7)
!3934 = !DILocation(line: 146, column: 7, scope: !3906)
!3935 = !DILocation(line: 151, column: 3, scope: !3906)
!3936 = !DILocation(line: 151, column: 9, scope: !3906)
!3937 = distinct !DIAssignID()
!3938 = !DILocation(line: 152, column: 19, scope: !3906)
!3939 = !DILocation(line: 153, column: 21, scope: !3906)
!3940 = !DILocation(line: 155, column: 3, scope: !3906)
!3941 = !DILocation(line: 0, scope: !3729, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 157, column: 3, scope: !3906)
!3943 = !DILocation(line: 46, column: 23, scope: !3729, inlinedAt: !3942)
!3944 = distinct !DIAssignID()
!3945 = !DILocation(line: 159, column: 3, scope: !3906)
!3946 = !DILocation(line: 158, column: 9, scope: !3906)
!3947 = !DILocation(line: 161, column: 29, scope: !3925)
!3948 = !DILocation(line: 0, scope: !3925)
!3949 = !DILocation(line: 162, column: 23, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3925, file: !768, line: 162, column: 11)
!3951 = !DILocation(line: 162, column: 20, scope: !3950)
!3952 = !DILocation(line: 162, column: 11, scope: !3925)
!3953 = !DILocation(line: 164, column: 20, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3950, file: !768, line: 163, column: 9)
!3955 = !DILocation(line: 165, column: 45, scope: !3954)
!3956 = !DILocation(line: 165, column: 21, scope: !3954)
!3957 = !DILocation(line: 166, column: 9, scope: !3954)
!3958 = !DILocation(line: 168, column: 24, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3925, file: !768, line: 168, column: 11)
!3960 = !DILocation(line: 168, column: 11, scope: !3925)
!3961 = !DILocation(line: 175, column: 42, scope: !3925)
!3962 = !DILocation(line: 175, column: 19, scope: !3925)
!3963 = !DILocation(line: 176, column: 25, scope: !3925)
!3964 = !DILocation(line: 177, column: 46, scope: !3925)
!3965 = !DILocalVariable(name: "__dest", arg: 1, scope: !3966, file: !2363, line: 26, type: !3969)
!3966 = distinct !DISubprogram(name: "memcpy", scope: !2363, file: !2363, line: 26, type: !3967, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3970)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!102, !3969, !1060, !104}
!3969 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!3970 = !{!3965, !3971, !3972}
!3971 = !DILocalVariable(name: "__src", arg: 2, scope: !3966, file: !2363, line: 26, type: !1060)
!3972 = !DILocalVariable(name: "__len", arg: 3, scope: !3966, file: !2363, line: 26, type: !104)
!3973 = !DILocation(line: 0, scope: !3966, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 177, column: 26, scope: !3925)
!3975 = !DILocation(line: 29, column: 10, scope: !3966, inlinedAt: !3974)
!3976 = !DILocation(line: 177, column: 7, scope: !3925)
!3977 = !DILocation(line: 177, column: 24, scope: !3925)
!3978 = !DILocation(line: 178, column: 15, scope: !3925)
!3979 = !DILocation(line: 171, column: 11, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3959, file: !768, line: 169, column: 9)
!3981 = !DILocation(line: 171, column: 28, scope: !3980)
!3982 = !DILocation(line: 172, column: 29, scope: !3980)
!3983 = !DILocation(line: 181, column: 16, scope: !3906)
!3984 = !DILocation(line: 181, column: 3, scope: !3906)
!3985 = !DILocation(line: 182, column: 15, scope: !3906)
!3986 = !DILocation(line: 183, column: 21, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3906, file: !768, line: 183, column: 7)
!3988 = !DILocation(line: 183, column: 7, scope: !3906)
!3989 = !DILocation(line: 184, column: 20, scope: !3987)
!3990 = !DILocation(line: 184, column: 5, scope: !3987)
!3991 = !DILocation(line: 186, column: 5, scope: !3987)
!3992 = !DILocation(line: 188, column: 1, scope: !3906)
!3993 = !DILocation(line: 187, column: 3, scope: !3906)
!3994 = distinct !DISubprogram(name: "version_etc_arn", scope: !629, file: !629, line: 61, type: !3995, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4032)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !3997, !107, !107, !107, !4031, !104}
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !3999)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !4000)
!4000 = !{!4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3999, file: !171, line: 51, baseType: !52, size: 32)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3999, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3999, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3999, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3999, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3999, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3999, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3999, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3999, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3999, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3999, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3999, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3999, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3999, file: !171, line: 70, baseType: !4015, size: 64, offset: 832)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3999, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3999, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3999, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3999, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3999, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3999, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3999, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3999, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3999, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3999, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3999, file: !171, line: 93, baseType: !4015, size: 64, offset: 1344)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3999, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3999, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3999, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3999, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!4032 = !{!4033, !4034, !4035, !4036, !4037, !4038}
!4033 = !DILocalVariable(name: "stream", arg: 1, scope: !3994, file: !629, line: 61, type: !3997)
!4034 = !DILocalVariable(name: "command_name", arg: 2, scope: !3994, file: !629, line: 62, type: !107)
!4035 = !DILocalVariable(name: "package", arg: 3, scope: !3994, file: !629, line: 62, type: !107)
!4036 = !DILocalVariable(name: "version", arg: 4, scope: !3994, file: !629, line: 63, type: !107)
!4037 = !DILocalVariable(name: "authors", arg: 5, scope: !3994, file: !629, line: 64, type: !4031)
!4038 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3994, file: !629, line: 64, type: !104)
!4039 = !DILocation(line: 0, scope: !3994)
!4040 = !DILocation(line: 66, column: 7, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !3994, file: !629, line: 66, column: 7)
!4042 = !DILocation(line: 66, column: 7, scope: !3994)
!4043 = !DILocation(line: 67, column: 5, scope: !4041)
!4044 = !DILocation(line: 69, column: 5, scope: !4041)
!4045 = !DILocation(line: 83, column: 3, scope: !3994)
!4046 = !DILocation(line: 85, column: 3, scope: !3994)
!4047 = !DILocation(line: 88, column: 3, scope: !3994)
!4048 = !DILocation(line: 95, column: 3, scope: !3994)
!4049 = !DILocation(line: 97, column: 3, scope: !3994)
!4050 = !DILocation(line: 105, column: 7, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !3994, file: !629, line: 98, column: 5)
!4052 = !DILocation(line: 106, column: 7, scope: !4051)
!4053 = !DILocation(line: 109, column: 7, scope: !4051)
!4054 = !DILocation(line: 110, column: 7, scope: !4051)
!4055 = !DILocation(line: 113, column: 7, scope: !4051)
!4056 = !DILocation(line: 115, column: 7, scope: !4051)
!4057 = !DILocation(line: 120, column: 7, scope: !4051)
!4058 = !DILocation(line: 122, column: 7, scope: !4051)
!4059 = !DILocation(line: 127, column: 7, scope: !4051)
!4060 = !DILocation(line: 129, column: 7, scope: !4051)
!4061 = !DILocation(line: 134, column: 7, scope: !4051)
!4062 = !DILocation(line: 137, column: 7, scope: !4051)
!4063 = !DILocation(line: 142, column: 7, scope: !4051)
!4064 = !DILocation(line: 145, column: 7, scope: !4051)
!4065 = !DILocation(line: 150, column: 7, scope: !4051)
!4066 = !DILocation(line: 154, column: 7, scope: !4051)
!4067 = !DILocation(line: 159, column: 7, scope: !4051)
!4068 = !DILocation(line: 163, column: 7, scope: !4051)
!4069 = !DILocation(line: 170, column: 7, scope: !4051)
!4070 = !DILocation(line: 174, column: 7, scope: !4051)
!4071 = !DILocation(line: 176, column: 1, scope: !3994)
!4072 = distinct !DISubprogram(name: "version_etc_ar", scope: !629, file: !629, line: 183, type: !4073, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4075)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{null, !3997, !107, !107, !107, !4031}
!4075 = !{!4076, !4077, !4078, !4079, !4080, !4081}
!4076 = !DILocalVariable(name: "stream", arg: 1, scope: !4072, file: !629, line: 183, type: !3997)
!4077 = !DILocalVariable(name: "command_name", arg: 2, scope: !4072, file: !629, line: 184, type: !107)
!4078 = !DILocalVariable(name: "package", arg: 3, scope: !4072, file: !629, line: 184, type: !107)
!4079 = !DILocalVariable(name: "version", arg: 4, scope: !4072, file: !629, line: 185, type: !107)
!4080 = !DILocalVariable(name: "authors", arg: 5, scope: !4072, file: !629, line: 185, type: !4031)
!4081 = !DILocalVariable(name: "n_authors", scope: !4072, file: !629, line: 187, type: !104)
!4082 = !DILocation(line: 0, scope: !4072)
!4083 = !DILocation(line: 189, column: 8, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4072, file: !629, line: 189, column: 3)
!4085 = !DILocation(line: 189, scope: !4084)
!4086 = !DILocation(line: 189, column: 23, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4084, file: !629, line: 189, column: 3)
!4088 = !DILocation(line: 189, column: 3, scope: !4084)
!4089 = !DILocation(line: 189, column: 52, scope: !4087)
!4090 = distinct !{!4090, !4088, !4091, !960}
!4091 = !DILocation(line: 190, column: 5, scope: !4084)
!4092 = !DILocation(line: 191, column: 3, scope: !4072)
!4093 = !DILocation(line: 192, column: 1, scope: !4072)
!4094 = distinct !DISubprogram(name: "version_etc_va", scope: !629, file: !629, line: 199, type: !4095, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4104)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{null, !3997, !107, !107, !107, !4097}
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4099)
!4099 = !{!4100, !4101, !4102, !4103}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4098, file: !629, line: 192, baseType: !64, size: 32)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4098, file: !629, line: 192, baseType: !64, size: 32, offset: 32)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4098, file: !629, line: 192, baseType: !102, size: 64, offset: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4098, file: !629, line: 192, baseType: !102, size: 64, offset: 128)
!4104 = !{!4105, !4106, !4107, !4108, !4109, !4110, !4111}
!4105 = !DILocalVariable(name: "stream", arg: 1, scope: !4094, file: !629, line: 199, type: !3997)
!4106 = !DILocalVariable(name: "command_name", arg: 2, scope: !4094, file: !629, line: 200, type: !107)
!4107 = !DILocalVariable(name: "package", arg: 3, scope: !4094, file: !629, line: 200, type: !107)
!4108 = !DILocalVariable(name: "version", arg: 4, scope: !4094, file: !629, line: 201, type: !107)
!4109 = !DILocalVariable(name: "authors", arg: 5, scope: !4094, file: !629, line: 201, type: !4097)
!4110 = !DILocalVariable(name: "n_authors", scope: !4094, file: !629, line: 203, type: !104)
!4111 = !DILocalVariable(name: "authtab", scope: !4094, file: !629, line: 204, type: !4112)
!4112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 640, elements: !40)
!4113 = distinct !DIAssignID()
!4114 = !DILocation(line: 0, scope: !4094)
!4115 = !DILocation(line: 204, column: 3, scope: !4094)
!4116 = !DILocation(line: 208, column: 35, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4118, file: !629, line: 206, column: 3)
!4118 = distinct !DILexicalBlock(scope: !4094, file: !629, line: 206, column: 3)
!4119 = !DILocation(line: 208, column: 33, scope: !4117)
!4120 = !DILocation(line: 208, column: 67, scope: !4117)
!4121 = !DILocation(line: 206, column: 3, scope: !4118)
!4122 = !DILocation(line: 208, column: 14, scope: !4117)
!4123 = !DILocation(line: 0, scope: !4118)
!4124 = !DILocation(line: 211, column: 3, scope: !4094)
!4125 = !DILocation(line: 213, column: 1, scope: !4094)
!4126 = distinct !DISubprogram(name: "version_etc", scope: !629, file: !629, line: 230, type: !4127, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4129)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{null, !3997, !107, !107, !107, null}
!4129 = !{!4130, !4131, !4132, !4133, !4134}
!4130 = !DILocalVariable(name: "stream", arg: 1, scope: !4126, file: !629, line: 230, type: !3997)
!4131 = !DILocalVariable(name: "command_name", arg: 2, scope: !4126, file: !629, line: 231, type: !107)
!4132 = !DILocalVariable(name: "package", arg: 3, scope: !4126, file: !629, line: 231, type: !107)
!4133 = !DILocalVariable(name: "version", arg: 4, scope: !4126, file: !629, line: 232, type: !107)
!4134 = !DILocalVariable(name: "authors", scope: !4126, file: !629, line: 234, type: !4135)
!4135 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !908, line: 52, baseType: !4136)
!4136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1826, line: 12, baseType: !4137)
!4137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !629, baseType: !4138)
!4138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4098, size: 192, elements: !35)
!4139 = distinct !DIAssignID()
!4140 = !DILocation(line: 0, scope: !4126)
!4141 = !DILocation(line: 234, column: 3, scope: !4126)
!4142 = !DILocation(line: 235, column: 3, scope: !4126)
!4143 = !DILocation(line: 236, column: 3, scope: !4126)
!4144 = !DILocation(line: 237, column: 3, scope: !4126)
!4145 = !DILocation(line: 238, column: 1, scope: !4126)
!4146 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !629, file: !629, line: 241, type: !477, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775)
!4147 = !DILocation(line: 243, column: 3, scope: !4146)
!4148 = !DILocation(line: 248, column: 3, scope: !4146)
!4149 = !DILocation(line: 254, column: 3, scope: !4146)
!4150 = !DILocation(line: 259, column: 3, scope: !4146)
!4151 = !DILocation(line: 261, column: 1, scope: !4146)
!4152 = distinct !DISubprogram(name: "xnrealloc", scope: !4153, file: !4153, line: 147, type: !4154, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4156)
!4153 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!102, !102, !104, !104}
!4156 = !{!4157, !4158, !4159}
!4157 = !DILocalVariable(name: "p", arg: 1, scope: !4152, file: !4153, line: 147, type: !102)
!4158 = !DILocalVariable(name: "n", arg: 2, scope: !4152, file: !4153, line: 147, type: !104)
!4159 = !DILocalVariable(name: "s", arg: 3, scope: !4152, file: !4153, line: 147, type: !104)
!4160 = !DILocation(line: 0, scope: !4152)
!4161 = !DILocalVariable(name: "p", arg: 1, scope: !4162, file: !782, line: 83, type: !102)
!4162 = distinct !DISubprogram(name: "xreallocarray", scope: !782, file: !782, line: 83, type: !4154, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4163)
!4163 = !{!4161, !4164, !4165}
!4164 = !DILocalVariable(name: "n", arg: 2, scope: !4162, file: !782, line: 83, type: !104)
!4165 = !DILocalVariable(name: "s", arg: 3, scope: !4162, file: !782, line: 83, type: !104)
!4166 = !DILocation(line: 0, scope: !4162, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 149, column: 10, scope: !4152)
!4168 = !DILocation(line: 85, column: 25, scope: !4162, inlinedAt: !4167)
!4169 = !DILocalVariable(name: "p", arg: 1, scope: !4170, file: !782, line: 37, type: !102)
!4170 = distinct !DISubprogram(name: "check_nonnull", scope: !782, file: !782, line: 37, type: !4171, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4173)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!102, !102}
!4173 = !{!4169}
!4174 = !DILocation(line: 0, scope: !4170, inlinedAt: !4175)
!4175 = distinct !DILocation(line: 85, column: 10, scope: !4162, inlinedAt: !4167)
!4176 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4175)
!4177 = distinct !DILexicalBlock(scope: !4170, file: !782, line: 39, column: 7)
!4178 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4175)
!4179 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4175)
!4180 = !DILocation(line: 149, column: 3, scope: !4152)
!4181 = !DILocation(line: 0, scope: !4162)
!4182 = !DILocation(line: 85, column: 25, scope: !4162)
!4183 = !DILocation(line: 0, scope: !4170, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 85, column: 10, scope: !4162)
!4185 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4184)
!4186 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4184)
!4187 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4184)
!4188 = !DILocation(line: 85, column: 3, scope: !4162)
!4189 = distinct !DISubprogram(name: "xmalloc", scope: !782, file: !782, line: 47, type: !4190, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4192)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!102, !104}
!4192 = !{!4193}
!4193 = !DILocalVariable(name: "s", arg: 1, scope: !4189, file: !782, line: 47, type: !104)
!4194 = !DILocation(line: 0, scope: !4189)
!4195 = !DILocation(line: 49, column: 25, scope: !4189)
!4196 = !DILocation(line: 0, scope: !4170, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 49, column: 10, scope: !4189)
!4198 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4197)
!4199 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4197)
!4200 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4197)
!4201 = !DILocation(line: 49, column: 3, scope: !4189)
!4202 = !DISubprogram(name: "malloc", scope: !1037, file: !1037, line: 540, type: !4190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4203 = distinct !DISubprogram(name: "ximalloc", scope: !782, file: !782, line: 53, type: !4204, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4206)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!102, !801}
!4206 = !{!4207}
!4207 = !DILocalVariable(name: "s", arg: 1, scope: !4203, file: !782, line: 53, type: !801)
!4208 = !DILocation(line: 0, scope: !4203)
!4209 = !DILocalVariable(name: "s", arg: 1, scope: !4210, file: !4211, line: 55, type: !801)
!4210 = distinct !DISubprogram(name: "imalloc", scope: !4211, file: !4211, line: 55, type: !4204, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4212)
!4211 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4212 = !{!4209}
!4213 = !DILocation(line: 0, scope: !4210, inlinedAt: !4214)
!4214 = distinct !DILocation(line: 55, column: 25, scope: !4203)
!4215 = !DILocation(line: 57, column: 26, scope: !4210, inlinedAt: !4214)
!4216 = !DILocation(line: 0, scope: !4170, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 55, column: 10, scope: !4203)
!4218 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4217)
!4219 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4217)
!4220 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4217)
!4221 = !DILocation(line: 55, column: 3, scope: !4203)
!4222 = distinct !DISubprogram(name: "xcharalloc", scope: !782, file: !782, line: 59, type: !4223, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4225)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!54, !104}
!4225 = !{!4226}
!4226 = !DILocalVariable(name: "n", arg: 1, scope: !4222, file: !782, line: 59, type: !104)
!4227 = !DILocation(line: 0, scope: !4222)
!4228 = !DILocation(line: 0, scope: !4189, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 61, column: 10, scope: !4222)
!4230 = !DILocation(line: 49, column: 25, scope: !4189, inlinedAt: !4229)
!4231 = !DILocation(line: 0, scope: !4170, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 49, column: 10, scope: !4189, inlinedAt: !4229)
!4233 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4232)
!4234 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4232)
!4235 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4232)
!4236 = !DILocation(line: 61, column: 3, scope: !4222)
!4237 = distinct !DISubprogram(name: "xrealloc", scope: !782, file: !782, line: 68, type: !4238, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4240)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!102, !102, !104}
!4240 = !{!4241, !4242}
!4241 = !DILocalVariable(name: "p", arg: 1, scope: !4237, file: !782, line: 68, type: !102)
!4242 = !DILocalVariable(name: "s", arg: 2, scope: !4237, file: !782, line: 68, type: !104)
!4243 = !DILocation(line: 0, scope: !4237)
!4244 = !DILocalVariable(name: "ptr", arg: 1, scope: !4245, file: !4246, line: 2057, type: !102)
!4245 = distinct !DISubprogram(name: "rpl_realloc", scope: !4246, file: !4246, line: 2057, type: !4238, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4247)
!4246 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4247 = !{!4244, !4248}
!4248 = !DILocalVariable(name: "size", arg: 2, scope: !4245, file: !4246, line: 2057, type: !104)
!4249 = !DILocation(line: 0, scope: !4245, inlinedAt: !4250)
!4250 = distinct !DILocation(line: 70, column: 25, scope: !4237)
!4251 = !DILocation(line: 2059, column: 24, scope: !4245, inlinedAt: !4250)
!4252 = !DILocation(line: 2059, column: 10, scope: !4245, inlinedAt: !4250)
!4253 = !DILocation(line: 0, scope: !4170, inlinedAt: !4254)
!4254 = distinct !DILocation(line: 70, column: 10, scope: !4237)
!4255 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4254)
!4256 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4254)
!4257 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4254)
!4258 = !DILocation(line: 70, column: 3, scope: !4237)
!4259 = !DISubprogram(name: "realloc", scope: !1037, file: !1037, line: 551, type: !4238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4260 = distinct !DISubprogram(name: "xirealloc", scope: !782, file: !782, line: 74, type: !4261, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4263)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!102, !102, !801}
!4263 = !{!4264, !4265}
!4264 = !DILocalVariable(name: "p", arg: 1, scope: !4260, file: !782, line: 74, type: !102)
!4265 = !DILocalVariable(name: "s", arg: 2, scope: !4260, file: !782, line: 74, type: !801)
!4266 = !DILocation(line: 0, scope: !4260)
!4267 = !DILocalVariable(name: "p", arg: 1, scope: !4268, file: !4211, line: 66, type: !102)
!4268 = distinct !DISubprogram(name: "irealloc", scope: !4211, file: !4211, line: 66, type: !4261, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4269)
!4269 = !{!4267, !4270}
!4270 = !DILocalVariable(name: "s", arg: 2, scope: !4268, file: !4211, line: 66, type: !801)
!4271 = !DILocation(line: 0, scope: !4268, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 76, column: 25, scope: !4260)
!4273 = !DILocation(line: 0, scope: !4245, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 68, column: 26, scope: !4268, inlinedAt: !4272)
!4275 = !DILocation(line: 2059, column: 24, scope: !4245, inlinedAt: !4274)
!4276 = !DILocation(line: 2059, column: 10, scope: !4245, inlinedAt: !4274)
!4277 = !DILocation(line: 0, scope: !4170, inlinedAt: !4278)
!4278 = distinct !DILocation(line: 76, column: 10, scope: !4260)
!4279 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4278)
!4280 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4278)
!4281 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4278)
!4282 = !DILocation(line: 76, column: 3, scope: !4260)
!4283 = distinct !DISubprogram(name: "xireallocarray", scope: !782, file: !782, line: 89, type: !4284, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4286)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!102, !102, !801, !801}
!4286 = !{!4287, !4288, !4289}
!4287 = !DILocalVariable(name: "p", arg: 1, scope: !4283, file: !782, line: 89, type: !102)
!4288 = !DILocalVariable(name: "n", arg: 2, scope: !4283, file: !782, line: 89, type: !801)
!4289 = !DILocalVariable(name: "s", arg: 3, scope: !4283, file: !782, line: 89, type: !801)
!4290 = !DILocation(line: 0, scope: !4283)
!4291 = !DILocalVariable(name: "p", arg: 1, scope: !4292, file: !4211, line: 98, type: !102)
!4292 = distinct !DISubprogram(name: "ireallocarray", scope: !4211, file: !4211, line: 98, type: !4284, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4293)
!4293 = !{!4291, !4294, !4295}
!4294 = !DILocalVariable(name: "n", arg: 2, scope: !4292, file: !4211, line: 98, type: !801)
!4295 = !DILocalVariable(name: "s", arg: 3, scope: !4292, file: !4211, line: 98, type: !801)
!4296 = !DILocation(line: 0, scope: !4292, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 91, column: 25, scope: !4283)
!4298 = !DILocation(line: 101, column: 13, scope: !4292, inlinedAt: !4297)
!4299 = !DILocation(line: 0, scope: !4170, inlinedAt: !4300)
!4300 = distinct !DILocation(line: 91, column: 10, scope: !4283)
!4301 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4300)
!4302 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4300)
!4303 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4300)
!4304 = !DILocation(line: 91, column: 3, scope: !4283)
!4305 = distinct !DISubprogram(name: "xnmalloc", scope: !782, file: !782, line: 98, type: !4306, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4308)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!102, !104, !104}
!4308 = !{!4309, !4310}
!4309 = !DILocalVariable(name: "n", arg: 1, scope: !4305, file: !782, line: 98, type: !104)
!4310 = !DILocalVariable(name: "s", arg: 2, scope: !4305, file: !782, line: 98, type: !104)
!4311 = !DILocation(line: 0, scope: !4305)
!4312 = !DILocation(line: 0, scope: !4162, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 100, column: 10, scope: !4305)
!4314 = !DILocation(line: 85, column: 25, scope: !4162, inlinedAt: !4313)
!4315 = !DILocation(line: 0, scope: !4170, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 85, column: 10, scope: !4162, inlinedAt: !4313)
!4317 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4316)
!4318 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4316)
!4319 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4316)
!4320 = !DILocation(line: 100, column: 3, scope: !4305)
!4321 = distinct !DISubprogram(name: "xinmalloc", scope: !782, file: !782, line: 104, type: !4322, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4324)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!102, !801, !801}
!4324 = !{!4325, !4326}
!4325 = !DILocalVariable(name: "n", arg: 1, scope: !4321, file: !782, line: 104, type: !801)
!4326 = !DILocalVariable(name: "s", arg: 2, scope: !4321, file: !782, line: 104, type: !801)
!4327 = !DILocation(line: 0, scope: !4321)
!4328 = !DILocation(line: 0, scope: !4283, inlinedAt: !4329)
!4329 = distinct !DILocation(line: 106, column: 10, scope: !4321)
!4330 = !DILocation(line: 0, scope: !4292, inlinedAt: !4331)
!4331 = distinct !DILocation(line: 91, column: 25, scope: !4283, inlinedAt: !4329)
!4332 = !DILocation(line: 101, column: 13, scope: !4292, inlinedAt: !4331)
!4333 = !DILocation(line: 0, scope: !4170, inlinedAt: !4334)
!4334 = distinct !DILocation(line: 91, column: 10, scope: !4283, inlinedAt: !4329)
!4335 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4334)
!4336 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4334)
!4337 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4334)
!4338 = !DILocation(line: 106, column: 3, scope: !4321)
!4339 = distinct !DISubprogram(name: "x2realloc", scope: !782, file: !782, line: 116, type: !4340, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4342)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!102, !102, !788}
!4342 = !{!4343, !4344}
!4343 = !DILocalVariable(name: "p", arg: 1, scope: !4339, file: !782, line: 116, type: !102)
!4344 = !DILocalVariable(name: "ps", arg: 2, scope: !4339, file: !782, line: 116, type: !788)
!4345 = !DILocation(line: 0, scope: !4339)
!4346 = !DILocation(line: 0, scope: !785, inlinedAt: !4347)
!4347 = distinct !DILocation(line: 118, column: 10, scope: !4339)
!4348 = !DILocation(line: 178, column: 14, scope: !785, inlinedAt: !4347)
!4349 = !DILocation(line: 180, column: 9, scope: !4350, inlinedAt: !4347)
!4350 = distinct !DILexicalBlock(scope: !785, file: !782, line: 180, column: 7)
!4351 = !DILocation(line: 180, column: 7, scope: !785, inlinedAt: !4347)
!4352 = !DILocation(line: 182, column: 13, scope: !4353, inlinedAt: !4347)
!4353 = distinct !DILexicalBlock(scope: !4354, file: !782, line: 182, column: 11)
!4354 = distinct !DILexicalBlock(scope: !4350, file: !782, line: 181, column: 5)
!4355 = !DILocation(line: 182, column: 11, scope: !4354, inlinedAt: !4347)
!4356 = !DILocation(line: 197, column: 11, scope: !4357, inlinedAt: !4347)
!4357 = distinct !DILexicalBlock(scope: !4358, file: !782, line: 197, column: 11)
!4358 = distinct !DILexicalBlock(scope: !4350, file: !782, line: 195, column: 5)
!4359 = !DILocation(line: 197, column: 11, scope: !4358, inlinedAt: !4347)
!4360 = !DILocation(line: 198, column: 9, scope: !4357, inlinedAt: !4347)
!4361 = !DILocation(line: 0, scope: !4162, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 201, column: 7, scope: !785, inlinedAt: !4347)
!4363 = !DILocation(line: 85, column: 25, scope: !4162, inlinedAt: !4362)
!4364 = !DILocation(line: 0, scope: !4170, inlinedAt: !4365)
!4365 = distinct !DILocation(line: 85, column: 10, scope: !4162, inlinedAt: !4362)
!4366 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4365)
!4367 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4365)
!4368 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4365)
!4369 = !DILocation(line: 202, column: 7, scope: !785, inlinedAt: !4347)
!4370 = !DILocation(line: 118, column: 3, scope: !4339)
!4371 = !DILocation(line: 0, scope: !785)
!4372 = !DILocation(line: 178, column: 14, scope: !785)
!4373 = !DILocation(line: 180, column: 9, scope: !4350)
!4374 = !DILocation(line: 180, column: 7, scope: !785)
!4375 = !DILocation(line: 182, column: 13, scope: !4353)
!4376 = !DILocation(line: 182, column: 11, scope: !4354)
!4377 = !DILocation(line: 190, column: 30, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4353, file: !782, line: 183, column: 9)
!4379 = !DILocation(line: 191, column: 16, scope: !4378)
!4380 = !DILocation(line: 191, column: 13, scope: !4378)
!4381 = !DILocation(line: 192, column: 9, scope: !4378)
!4382 = !DILocation(line: 197, column: 11, scope: !4357)
!4383 = !DILocation(line: 197, column: 11, scope: !4358)
!4384 = !DILocation(line: 198, column: 9, scope: !4357)
!4385 = !DILocation(line: 0, scope: !4162, inlinedAt: !4386)
!4386 = distinct !DILocation(line: 201, column: 7, scope: !785)
!4387 = !DILocation(line: 85, column: 25, scope: !4162, inlinedAt: !4386)
!4388 = !DILocation(line: 0, scope: !4170, inlinedAt: !4389)
!4389 = distinct !DILocation(line: 85, column: 10, scope: !4162, inlinedAt: !4386)
!4390 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4389)
!4391 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4389)
!4392 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4389)
!4393 = !DILocation(line: 202, column: 7, scope: !785)
!4394 = !DILocation(line: 203, column: 3, scope: !785)
!4395 = !DILocation(line: 0, scope: !797)
!4396 = !DILocation(line: 230, column: 14, scope: !797)
!4397 = !DILocation(line: 238, column: 7, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !797, file: !782, line: 238, column: 7)
!4399 = !DILocation(line: 238, column: 7, scope: !797)
!4400 = !DILocation(line: 240, column: 9, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !797, file: !782, line: 240, column: 7)
!4402 = !DILocation(line: 240, column: 18, scope: !4401)
!4403 = !DILocation(line: 253, column: 8, scope: !797)
!4404 = !DILocation(line: 256, column: 7, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !797, file: !782, line: 256, column: 7)
!4406 = !DILocation(line: 256, column: 7, scope: !797)
!4407 = !DILocation(line: 258, column: 27, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4405, file: !782, line: 257, column: 5)
!4409 = !DILocation(line: 259, column: 50, scope: !4408)
!4410 = !DILocation(line: 259, column: 32, scope: !4408)
!4411 = !DILocation(line: 260, column: 5, scope: !4408)
!4412 = !DILocation(line: 262, column: 9, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !797, file: !782, line: 262, column: 7)
!4414 = !DILocation(line: 262, column: 7, scope: !797)
!4415 = !DILocation(line: 263, column: 9, scope: !4413)
!4416 = !DILocation(line: 263, column: 5, scope: !4413)
!4417 = !DILocation(line: 264, column: 9, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !797, file: !782, line: 264, column: 7)
!4419 = !DILocation(line: 264, column: 14, scope: !4418)
!4420 = !DILocation(line: 265, column: 7, scope: !4418)
!4421 = !DILocation(line: 265, column: 11, scope: !4418)
!4422 = !DILocation(line: 266, column: 11, scope: !4418)
!4423 = !DILocation(line: 267, column: 14, scope: !4418)
!4424 = !DILocation(line: 264, column: 7, scope: !797)
!4425 = !DILocation(line: 268, column: 5, scope: !4418)
!4426 = !DILocation(line: 0, scope: !4237, inlinedAt: !4427)
!4427 = distinct !DILocation(line: 269, column: 8, scope: !797)
!4428 = !DILocation(line: 0, scope: !4245, inlinedAt: !4429)
!4429 = distinct !DILocation(line: 70, column: 25, scope: !4237, inlinedAt: !4427)
!4430 = !DILocation(line: 2059, column: 24, scope: !4245, inlinedAt: !4429)
!4431 = !DILocation(line: 2059, column: 10, scope: !4245, inlinedAt: !4429)
!4432 = !DILocation(line: 0, scope: !4170, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 70, column: 10, scope: !4237, inlinedAt: !4427)
!4434 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4433)
!4435 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4433)
!4436 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4433)
!4437 = !DILocation(line: 270, column: 7, scope: !797)
!4438 = !DILocation(line: 271, column: 3, scope: !797)
!4439 = distinct !DISubprogram(name: "xzalloc", scope: !782, file: !782, line: 279, type: !4190, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4440)
!4440 = !{!4441}
!4441 = !DILocalVariable(name: "s", arg: 1, scope: !4439, file: !782, line: 279, type: !104)
!4442 = !DILocation(line: 0, scope: !4439)
!4443 = !DILocalVariable(name: "n", arg: 1, scope: !4444, file: !782, line: 294, type: !104)
!4444 = distinct !DISubprogram(name: "xcalloc", scope: !782, file: !782, line: 294, type: !4306, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4445)
!4445 = !{!4443, !4446}
!4446 = !DILocalVariable(name: "s", arg: 2, scope: !4444, file: !782, line: 294, type: !104)
!4447 = !DILocation(line: 0, scope: !4444, inlinedAt: !4448)
!4448 = distinct !DILocation(line: 281, column: 10, scope: !4439)
!4449 = !DILocation(line: 296, column: 25, scope: !4444, inlinedAt: !4448)
!4450 = !DILocation(line: 0, scope: !4170, inlinedAt: !4451)
!4451 = distinct !DILocation(line: 296, column: 10, scope: !4444, inlinedAt: !4448)
!4452 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4451)
!4453 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4451)
!4454 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4451)
!4455 = !DILocation(line: 281, column: 3, scope: !4439)
!4456 = !DISubprogram(name: "calloc", scope: !1037, file: !1037, line: 543, type: !4306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4457 = !DILocation(line: 0, scope: !4444)
!4458 = !DILocation(line: 296, column: 25, scope: !4444)
!4459 = !DILocation(line: 0, scope: !4170, inlinedAt: !4460)
!4460 = distinct !DILocation(line: 296, column: 10, scope: !4444)
!4461 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4460)
!4462 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4460)
!4463 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4460)
!4464 = !DILocation(line: 296, column: 3, scope: !4444)
!4465 = distinct !DISubprogram(name: "xizalloc", scope: !782, file: !782, line: 285, type: !4204, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4466)
!4466 = !{!4467}
!4467 = !DILocalVariable(name: "s", arg: 1, scope: !4465, file: !782, line: 285, type: !801)
!4468 = !DILocation(line: 0, scope: !4465)
!4469 = !DILocalVariable(name: "n", arg: 1, scope: !4470, file: !782, line: 300, type: !801)
!4470 = distinct !DISubprogram(name: "xicalloc", scope: !782, file: !782, line: 300, type: !4322, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4471)
!4471 = !{!4469, !4472}
!4472 = !DILocalVariable(name: "s", arg: 2, scope: !4470, file: !782, line: 300, type: !801)
!4473 = !DILocation(line: 0, scope: !4470, inlinedAt: !4474)
!4474 = distinct !DILocation(line: 287, column: 10, scope: !4465)
!4475 = !DILocalVariable(name: "n", arg: 1, scope: !4476, file: !4211, line: 77, type: !801)
!4476 = distinct !DISubprogram(name: "icalloc", scope: !4211, file: !4211, line: 77, type: !4322, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4477)
!4477 = !{!4475, !4478}
!4478 = !DILocalVariable(name: "s", arg: 2, scope: !4476, file: !4211, line: 77, type: !801)
!4479 = !DILocation(line: 0, scope: !4476, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 302, column: 25, scope: !4470, inlinedAt: !4474)
!4481 = !DILocation(line: 91, column: 10, scope: !4476, inlinedAt: !4480)
!4482 = !DILocation(line: 0, scope: !4170, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 302, column: 10, scope: !4470, inlinedAt: !4474)
!4484 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4483)
!4485 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4483)
!4486 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4483)
!4487 = !DILocation(line: 287, column: 3, scope: !4465)
!4488 = !DILocation(line: 0, scope: !4470)
!4489 = !DILocation(line: 0, scope: !4476, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 302, column: 25, scope: !4470)
!4491 = !DILocation(line: 91, column: 10, scope: !4476, inlinedAt: !4490)
!4492 = !DILocation(line: 0, scope: !4170, inlinedAt: !4493)
!4493 = distinct !DILocation(line: 302, column: 10, scope: !4470)
!4494 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4493)
!4495 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4493)
!4496 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4493)
!4497 = !DILocation(line: 302, column: 3, scope: !4470)
!4498 = distinct !DISubprogram(name: "xmemdup", scope: !782, file: !782, line: 310, type: !4499, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4501)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!102, !1061, !104}
!4501 = !{!4502, !4503}
!4502 = !DILocalVariable(name: "p", arg: 1, scope: !4498, file: !782, line: 310, type: !1061)
!4503 = !DILocalVariable(name: "s", arg: 2, scope: !4498, file: !782, line: 310, type: !104)
!4504 = !DILocation(line: 0, scope: !4498)
!4505 = !DILocation(line: 0, scope: !4189, inlinedAt: !4506)
!4506 = distinct !DILocation(line: 312, column: 18, scope: !4498)
!4507 = !DILocation(line: 49, column: 25, scope: !4189, inlinedAt: !4506)
!4508 = !DILocation(line: 0, scope: !4170, inlinedAt: !4509)
!4509 = distinct !DILocation(line: 49, column: 10, scope: !4189, inlinedAt: !4506)
!4510 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4509)
!4511 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4509)
!4512 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4509)
!4513 = !DILocalVariable(name: "__dest", arg: 1, scope: !4514, file: !2363, line: 26, type: !3969)
!4514 = distinct !DISubprogram(name: "memcpy", scope: !2363, file: !2363, line: 26, type: !3967, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4515)
!4515 = !{!4513, !4516, !4517}
!4516 = !DILocalVariable(name: "__src", arg: 2, scope: !4514, file: !2363, line: 26, type: !1060)
!4517 = !DILocalVariable(name: "__len", arg: 3, scope: !4514, file: !2363, line: 26, type: !104)
!4518 = !DILocation(line: 0, scope: !4514, inlinedAt: !4519)
!4519 = distinct !DILocation(line: 312, column: 10, scope: !4498)
!4520 = !DILocation(line: 29, column: 10, scope: !4514, inlinedAt: !4519)
!4521 = !DILocation(line: 312, column: 3, scope: !4498)
!4522 = distinct !DISubprogram(name: "ximemdup", scope: !782, file: !782, line: 316, type: !4523, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4525)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!102, !1061, !801}
!4525 = !{!4526, !4527}
!4526 = !DILocalVariable(name: "p", arg: 1, scope: !4522, file: !782, line: 316, type: !1061)
!4527 = !DILocalVariable(name: "s", arg: 2, scope: !4522, file: !782, line: 316, type: !801)
!4528 = !DILocation(line: 0, scope: !4522)
!4529 = !DILocation(line: 0, scope: !4203, inlinedAt: !4530)
!4530 = distinct !DILocation(line: 318, column: 18, scope: !4522)
!4531 = !DILocation(line: 0, scope: !4210, inlinedAt: !4532)
!4532 = distinct !DILocation(line: 55, column: 25, scope: !4203, inlinedAt: !4530)
!4533 = !DILocation(line: 57, column: 26, scope: !4210, inlinedAt: !4532)
!4534 = !DILocation(line: 0, scope: !4170, inlinedAt: !4535)
!4535 = distinct !DILocation(line: 55, column: 10, scope: !4203, inlinedAt: !4530)
!4536 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4535)
!4537 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4535)
!4538 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4535)
!4539 = !DILocation(line: 0, scope: !4514, inlinedAt: !4540)
!4540 = distinct !DILocation(line: 318, column: 10, scope: !4522)
!4541 = !DILocation(line: 29, column: 10, scope: !4514, inlinedAt: !4540)
!4542 = !DILocation(line: 318, column: 3, scope: !4522)
!4543 = distinct !DISubprogram(name: "ximemdup0", scope: !782, file: !782, line: 325, type: !4544, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4546)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!54, !1061, !801}
!4546 = !{!4547, !4548, !4549}
!4547 = !DILocalVariable(name: "p", arg: 1, scope: !4543, file: !782, line: 325, type: !1061)
!4548 = !DILocalVariable(name: "s", arg: 2, scope: !4543, file: !782, line: 325, type: !801)
!4549 = !DILocalVariable(name: "result", scope: !4543, file: !782, line: 327, type: !54)
!4550 = !DILocation(line: 0, scope: !4543)
!4551 = !DILocation(line: 327, column: 30, scope: !4543)
!4552 = !DILocation(line: 0, scope: !4203, inlinedAt: !4553)
!4553 = distinct !DILocation(line: 327, column: 18, scope: !4543)
!4554 = !DILocation(line: 0, scope: !4210, inlinedAt: !4555)
!4555 = distinct !DILocation(line: 55, column: 25, scope: !4203, inlinedAt: !4553)
!4556 = !DILocation(line: 57, column: 26, scope: !4210, inlinedAt: !4555)
!4557 = !DILocation(line: 0, scope: !4170, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 55, column: 10, scope: !4203, inlinedAt: !4553)
!4559 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4558)
!4560 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4558)
!4561 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4558)
!4562 = !DILocation(line: 328, column: 3, scope: !4543)
!4563 = !DILocation(line: 328, column: 13, scope: !4543)
!4564 = !DILocation(line: 0, scope: !4514, inlinedAt: !4565)
!4565 = distinct !DILocation(line: 329, column: 10, scope: !4543)
!4566 = !DILocation(line: 29, column: 10, scope: !4514, inlinedAt: !4565)
!4567 = !DILocation(line: 329, column: 3, scope: !4543)
!4568 = distinct !DISubprogram(name: "xstrdup", scope: !782, file: !782, line: 335, type: !1039, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4569)
!4569 = !{!4570}
!4570 = !DILocalVariable(name: "string", arg: 1, scope: !4568, file: !782, line: 335, type: !107)
!4571 = !DILocation(line: 0, scope: !4568)
!4572 = !DILocation(line: 337, column: 27, scope: !4568)
!4573 = !DILocation(line: 337, column: 43, scope: !4568)
!4574 = !DILocation(line: 0, scope: !4498, inlinedAt: !4575)
!4575 = distinct !DILocation(line: 337, column: 10, scope: !4568)
!4576 = !DILocation(line: 0, scope: !4189, inlinedAt: !4577)
!4577 = distinct !DILocation(line: 312, column: 18, scope: !4498, inlinedAt: !4575)
!4578 = !DILocation(line: 49, column: 25, scope: !4189, inlinedAt: !4577)
!4579 = !DILocation(line: 0, scope: !4170, inlinedAt: !4580)
!4580 = distinct !DILocation(line: 49, column: 10, scope: !4189, inlinedAt: !4577)
!4581 = !DILocation(line: 39, column: 8, scope: !4177, inlinedAt: !4580)
!4582 = !DILocation(line: 39, column: 7, scope: !4170, inlinedAt: !4580)
!4583 = !DILocation(line: 40, column: 5, scope: !4177, inlinedAt: !4580)
!4584 = !DILocation(line: 0, scope: !4514, inlinedAt: !4585)
!4585 = distinct !DILocation(line: 312, column: 10, scope: !4498, inlinedAt: !4575)
!4586 = !DILocation(line: 29, column: 10, scope: !4514, inlinedAt: !4585)
!4587 = !DILocation(line: 337, column: 3, scope: !4568)
!4588 = distinct !DISubprogram(name: "xalloc_die", scope: !725, file: !725, line: 32, type: !477, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !4589)
!4589 = !{!4590}
!4590 = !DILocalVariable(name: "__errstatus", scope: !4591, file: !725, line: 34, type: !4592)
!4591 = distinct !DILexicalBlock(scope: !4588, file: !725, line: 34, column: 3)
!4592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!4593 = !DILocation(line: 34, column: 3, scope: !4591)
!4594 = !DILocation(line: 0, scope: !4591)
!4595 = !DILocation(line: 40, column: 3, scope: !4588)
!4596 = distinct !DISubprogram(name: "close_stream", scope: !819, file: !819, line: 55, type: !4597, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4633)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!52, !4599}
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !4601)
!4601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !4602)
!4602 = !{!4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4601, file: !171, line: 51, baseType: !52, size: 32)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4601, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4601, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4601, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4601, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4601, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4601, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4601, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4601, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4601, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4601, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4601, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4601, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4601, file: !171, line: 70, baseType: !4617, size: 64, offset: 832)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4601, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4601, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4601, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4601, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4601, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4601, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4601, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4601, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4601, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4601, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4601, file: !171, line: 93, baseType: !4617, size: 64, offset: 1344)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4601, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4601, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4601, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4601, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!4633 = !{!4634, !4635, !4637, !4638}
!4634 = !DILocalVariable(name: "stream", arg: 1, scope: !4596, file: !819, line: 55, type: !4599)
!4635 = !DILocalVariable(name: "some_pending", scope: !4596, file: !819, line: 57, type: !4636)
!4636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!4637 = !DILocalVariable(name: "prev_fail", scope: !4596, file: !819, line: 58, type: !4636)
!4638 = !DILocalVariable(name: "fclose_fail", scope: !4596, file: !819, line: 59, type: !4636)
!4639 = !DILocation(line: 0, scope: !4596)
!4640 = !DILocation(line: 57, column: 30, scope: !4596)
!4641 = !DILocalVariable(name: "__stream", arg: 1, scope: !4642, file: !1160, line: 135, type: !4599)
!4642 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1160, file: !1160, line: 135, type: !4597, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4643)
!4643 = !{!4641}
!4644 = !DILocation(line: 0, scope: !4642, inlinedAt: !4645)
!4645 = distinct !DILocation(line: 58, column: 27, scope: !4596)
!4646 = !DILocation(line: 137, column: 10, scope: !4642, inlinedAt: !4645)
!4647 = !DILocation(line: 58, column: 43, scope: !4596)
!4648 = !DILocation(line: 59, column: 29, scope: !4596)
!4649 = !DILocation(line: 59, column: 45, scope: !4596)
!4650 = !DILocation(line: 69, column: 17, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4596, file: !819, line: 69, column: 7)
!4652 = !DILocation(line: 57, column: 50, scope: !4596)
!4653 = !DILocation(line: 69, column: 33, scope: !4651)
!4654 = !DILocation(line: 69, column: 53, scope: !4651)
!4655 = !DILocation(line: 69, column: 59, scope: !4651)
!4656 = !DILocation(line: 69, column: 7, scope: !4596)
!4657 = !DILocation(line: 71, column: 11, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4651, file: !819, line: 70, column: 5)
!4659 = !DILocation(line: 72, column: 9, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4658, file: !819, line: 71, column: 11)
!4661 = !DILocation(line: 72, column: 15, scope: !4660)
!4662 = !DILocation(line: 77, column: 1, scope: !4596)
!4663 = !DISubprogram(name: "__fpending", scope: !2021, file: !2021, line: 75, type: !4664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!104, !4599}
!4666 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !732, file: !732, line: 100, type: !4667, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !4670)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!104, !2381, !107, !104, !4669}
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!4670 = !{!4671, !4672, !4673, !4674, !4675}
!4671 = !DILocalVariable(name: "pwc", arg: 1, scope: !4666, file: !732, line: 100, type: !2381)
!4672 = !DILocalVariable(name: "s", arg: 2, scope: !4666, file: !732, line: 100, type: !107)
!4673 = !DILocalVariable(name: "n", arg: 3, scope: !4666, file: !732, line: 100, type: !104)
!4674 = !DILocalVariable(name: "ps", arg: 4, scope: !4666, file: !732, line: 100, type: !4669)
!4675 = !DILocalVariable(name: "ret", scope: !4666, file: !732, line: 130, type: !104)
!4676 = !DILocation(line: 0, scope: !4666)
!4677 = !DILocation(line: 105, column: 9, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4666, file: !732, line: 105, column: 7)
!4679 = !DILocation(line: 105, column: 7, scope: !4666)
!4680 = !DILocation(line: 117, column: 10, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4666, file: !732, line: 117, column: 7)
!4682 = !DILocation(line: 117, column: 7, scope: !4666)
!4683 = !DILocation(line: 130, column: 16, scope: !4666)
!4684 = !DILocation(line: 135, column: 11, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4666, file: !732, line: 135, column: 7)
!4686 = !DILocation(line: 135, column: 25, scope: !4685)
!4687 = !DILocation(line: 135, column: 30, scope: !4685)
!4688 = !DILocation(line: 135, column: 7, scope: !4666)
!4689 = !DILocalVariable(name: "ps", arg: 1, scope: !4690, file: !2354, line: 1135, type: !4669)
!4690 = distinct !DISubprogram(name: "mbszero", scope: !2354, file: !2354, line: 1135, type: !4691, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !4693)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{null, !4669}
!4693 = !{!4689}
!4694 = !DILocation(line: 0, scope: !4690, inlinedAt: !4695)
!4695 = distinct !DILocation(line: 137, column: 5, scope: !4685)
!4696 = !DILocalVariable(name: "__dest", arg: 1, scope: !4697, file: !2363, line: 57, type: !102)
!4697 = distinct !DISubprogram(name: "memset", scope: !2363, file: !2363, line: 57, type: !2364, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !4698)
!4698 = !{!4696, !4699, !4700}
!4699 = !DILocalVariable(name: "__ch", arg: 2, scope: !4697, file: !2363, line: 57, type: !52)
!4700 = !DILocalVariable(name: "__len", arg: 3, scope: !4697, file: !2363, line: 57, type: !104)
!4701 = !DILocation(line: 0, scope: !4697, inlinedAt: !4702)
!4702 = distinct !DILocation(line: 1137, column: 3, scope: !4690, inlinedAt: !4695)
!4703 = !DILocation(line: 59, column: 10, scope: !4697, inlinedAt: !4702)
!4704 = !DILocation(line: 137, column: 5, scope: !4685)
!4705 = !DILocation(line: 138, column: 11, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4666, file: !732, line: 138, column: 7)
!4707 = !DILocation(line: 138, column: 7, scope: !4666)
!4708 = !DILocation(line: 139, column: 5, scope: !4706)
!4709 = !DILocation(line: 143, column: 26, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4666, file: !732, line: 143, column: 7)
!4711 = !DILocation(line: 143, column: 41, scope: !4710)
!4712 = !DILocation(line: 143, column: 7, scope: !4666)
!4713 = !DILocation(line: 145, column: 15, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4715, file: !732, line: 145, column: 11)
!4715 = distinct !DILexicalBlock(scope: !4710, file: !732, line: 144, column: 5)
!4716 = !DILocation(line: 145, column: 11, scope: !4715)
!4717 = !DILocation(line: 146, column: 32, scope: !4714)
!4718 = !DILocation(line: 146, column: 16, scope: !4714)
!4719 = !DILocation(line: 146, column: 14, scope: !4714)
!4720 = !DILocation(line: 146, column: 9, scope: !4714)
!4721 = !DILocation(line: 286, column: 1, scope: !4666)
!4722 = !DISubprogram(name: "mbsinit", scope: !4723, file: !4723, line: 293, type: !4724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4723 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!52, !4726}
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !738)
!4728 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !821, file: !821, line: 27, type: !4154, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4729)
!4729 = !{!4730, !4731, !4732, !4733}
!4730 = !DILocalVariable(name: "ptr", arg: 1, scope: !4728, file: !821, line: 27, type: !102)
!4731 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4728, file: !821, line: 27, type: !104)
!4732 = !DILocalVariable(name: "size", arg: 3, scope: !4728, file: !821, line: 27, type: !104)
!4733 = !DILocalVariable(name: "nbytes", scope: !4728, file: !821, line: 29, type: !104)
!4734 = !DILocation(line: 0, scope: !4728)
!4735 = !DILocation(line: 30, column: 7, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4728, file: !821, line: 30, column: 7)
!4737 = !DILocation(line: 30, column: 7, scope: !4728)
!4738 = !DILocation(line: 32, column: 7, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4736, file: !821, line: 31, column: 5)
!4740 = !DILocation(line: 32, column: 13, scope: !4739)
!4741 = !DILocation(line: 33, column: 7, scope: !4739)
!4742 = !DILocalVariable(name: "ptr", arg: 1, scope: !4743, file: !4246, line: 2057, type: !102)
!4743 = distinct !DISubprogram(name: "rpl_realloc", scope: !4246, file: !4246, line: 2057, type: !4238, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4744)
!4744 = !{!4742, !4745}
!4745 = !DILocalVariable(name: "size", arg: 2, scope: !4743, file: !4246, line: 2057, type: !104)
!4746 = !DILocation(line: 0, scope: !4743, inlinedAt: !4747)
!4747 = distinct !DILocation(line: 37, column: 10, scope: !4728)
!4748 = !DILocation(line: 2059, column: 24, scope: !4743, inlinedAt: !4747)
!4749 = !DILocation(line: 2059, column: 10, scope: !4743, inlinedAt: !4747)
!4750 = !DILocation(line: 37, column: 3, scope: !4728)
!4751 = !DILocation(line: 38, column: 1, scope: !4728)
!4752 = distinct !DISubprogram(name: "hard_locale", scope: !750, file: !750, line: 28, type: !2152, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4753)
!4753 = !{!4754, !4755}
!4754 = !DILocalVariable(name: "category", arg: 1, scope: !4752, file: !750, line: 28, type: !52)
!4755 = !DILocalVariable(name: "locale", scope: !4752, file: !750, line: 30, type: !4756)
!4756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4757)
!4757 = !{!4758}
!4758 = !DISubrange(count: 257)
!4759 = distinct !DIAssignID()
!4760 = !DILocation(line: 0, scope: !4752)
!4761 = !DILocation(line: 30, column: 3, scope: !4752)
!4762 = !DILocation(line: 32, column: 7, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4752, file: !750, line: 32, column: 7)
!4764 = !DILocation(line: 32, column: 7, scope: !4752)
!4765 = !DILocalVariable(name: "__s1", arg: 1, scope: !4766, file: !926, line: 1359, type: !107)
!4766 = distinct !DISubprogram(name: "streq", scope: !926, file: !926, line: 1359, type: !927, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4767)
!4767 = !{!4765, !4768}
!4768 = !DILocalVariable(name: "__s2", arg: 2, scope: !4766, file: !926, line: 1359, type: !107)
!4769 = !DILocation(line: 0, scope: !4766, inlinedAt: !4770)
!4770 = distinct !DILocation(line: 35, column: 9, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4752, file: !750, line: 35, column: 7)
!4772 = !DILocation(line: 1361, column: 11, scope: !4766, inlinedAt: !4770)
!4773 = !DILocation(line: 35, column: 29, scope: !4771)
!4774 = !DILocation(line: 0, scope: !4766, inlinedAt: !4775)
!4775 = distinct !DILocation(line: 35, column: 32, scope: !4771)
!4776 = !DILocation(line: 1361, column: 11, scope: !4766, inlinedAt: !4775)
!4777 = !DILocation(line: 1361, column: 10, scope: !4766, inlinedAt: !4775)
!4778 = !DILocation(line: 35, column: 7, scope: !4752)
!4779 = !DILocation(line: 46, column: 3, scope: !4752)
!4780 = !DILocation(line: 47, column: 1, scope: !4752)
!4781 = distinct !DISubprogram(name: "setlocale_null_r", scope: !827, file: !827, line: 154, type: !4782, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4784)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!52, !52, !54, !104}
!4784 = !{!4785, !4786, !4787}
!4785 = !DILocalVariable(name: "category", arg: 1, scope: !4781, file: !827, line: 154, type: !52)
!4786 = !DILocalVariable(name: "buf", arg: 2, scope: !4781, file: !827, line: 154, type: !54)
!4787 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4781, file: !827, line: 154, type: !104)
!4788 = !DILocation(line: 0, scope: !4781)
!4789 = !DILocation(line: 159, column: 10, scope: !4781)
!4790 = !DILocation(line: 159, column: 3, scope: !4781)
!4791 = distinct !DISubprogram(name: "setlocale_null", scope: !827, file: !827, line: 186, type: !4792, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4794)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!107, !52}
!4794 = !{!4795}
!4795 = !DILocalVariable(name: "category", arg: 1, scope: !4791, file: !827, line: 186, type: !52)
!4796 = !DILocation(line: 0, scope: !4791)
!4797 = !DILocation(line: 189, column: 10, scope: !4791)
!4798 = !DILocation(line: 189, column: 3, scope: !4791)
!4799 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !829, file: !829, line: 35, type: !4792, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !828, retainedNodes: !4800)
!4800 = !{!4801, !4802}
!4801 = !DILocalVariable(name: "category", arg: 1, scope: !4799, file: !829, line: 35, type: !52)
!4802 = !DILocalVariable(name: "result", scope: !4799, file: !829, line: 37, type: !107)
!4803 = !DILocation(line: 0, scope: !4799)
!4804 = !DILocation(line: 37, column: 24, scope: !4799)
!4805 = !DILocation(line: 62, column: 3, scope: !4799)
!4806 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !829, file: !829, line: 66, type: !4782, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !828, retainedNodes: !4807)
!4807 = !{!4808, !4809, !4810, !4811, !4812}
!4808 = !DILocalVariable(name: "category", arg: 1, scope: !4806, file: !829, line: 66, type: !52)
!4809 = !DILocalVariable(name: "buf", arg: 2, scope: !4806, file: !829, line: 66, type: !54)
!4810 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4806, file: !829, line: 66, type: !104)
!4811 = !DILocalVariable(name: "result", scope: !4806, file: !829, line: 111, type: !107)
!4812 = !DILocalVariable(name: "length", scope: !4813, file: !829, line: 125, type: !104)
!4813 = distinct !DILexicalBlock(scope: !4814, file: !829, line: 124, column: 5)
!4814 = distinct !DILexicalBlock(scope: !4806, file: !829, line: 113, column: 7)
!4815 = !DILocation(line: 0, scope: !4806)
!4816 = !DILocation(line: 0, scope: !4799, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 111, column: 24, scope: !4806)
!4818 = !DILocation(line: 37, column: 24, scope: !4799, inlinedAt: !4817)
!4819 = !DILocation(line: 113, column: 14, scope: !4814)
!4820 = !DILocation(line: 113, column: 7, scope: !4806)
!4821 = !DILocation(line: 116, column: 19, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4823, file: !829, line: 116, column: 11)
!4823 = distinct !DILexicalBlock(scope: !4814, file: !829, line: 114, column: 5)
!4824 = !DILocation(line: 116, column: 11, scope: !4823)
!4825 = !DILocation(line: 120, column: 16, scope: !4822)
!4826 = !DILocation(line: 120, column: 9, scope: !4822)
!4827 = !DILocation(line: 125, column: 23, scope: !4813)
!4828 = !DILocation(line: 0, scope: !4813)
!4829 = !DILocation(line: 126, column: 18, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4813, file: !829, line: 126, column: 11)
!4831 = !DILocation(line: 126, column: 11, scope: !4813)
!4832 = !DILocation(line: 128, column: 39, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4830, file: !829, line: 127, column: 9)
!4834 = !DILocalVariable(name: "__dest", arg: 1, scope: !4835, file: !2363, line: 26, type: !3969)
!4835 = distinct !DISubprogram(name: "memcpy", scope: !2363, file: !2363, line: 26, type: !3967, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !828, retainedNodes: !4836)
!4836 = !{!4834, !4837, !4838}
!4837 = !DILocalVariable(name: "__src", arg: 2, scope: !4835, file: !2363, line: 26, type: !1060)
!4838 = !DILocalVariable(name: "__len", arg: 3, scope: !4835, file: !2363, line: 26, type: !104)
!4839 = !DILocation(line: 0, scope: !4835, inlinedAt: !4840)
!4840 = distinct !DILocation(line: 128, column: 11, scope: !4833)
!4841 = !DILocation(line: 29, column: 10, scope: !4835, inlinedAt: !4840)
!4842 = !DILocation(line: 129, column: 11, scope: !4833)
!4843 = !DILocation(line: 133, column: 23, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4845, file: !829, line: 133, column: 15)
!4845 = distinct !DILexicalBlock(scope: !4830, file: !829, line: 132, column: 9)
!4846 = !DILocation(line: 133, column: 15, scope: !4845)
!4847 = !DILocation(line: 138, column: 44, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4844, file: !829, line: 134, column: 13)
!4849 = !DILocation(line: 0, scope: !4835, inlinedAt: !4850)
!4850 = distinct !DILocation(line: 138, column: 15, scope: !4848)
!4851 = !DILocation(line: 29, column: 10, scope: !4835, inlinedAt: !4850)
!4852 = !DILocation(line: 139, column: 15, scope: !4848)
!4853 = !DILocation(line: 139, column: 32, scope: !4848)
!4854 = !DILocation(line: 140, column: 13, scope: !4848)
!4855 = !DILocation(line: 0, scope: !4814)
!4856 = !DILocation(line: 145, column: 1, scope: !4806)
