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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !471
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !436
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !461
@.str.1.34 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !463
@.str.2.36 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !465
@.str.3.35 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !467
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !469
@.str.4.29 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !473
@.str.5.30 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !475
@.str.6.31 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !480
@.str.62 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1, !dbg !485
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !488
@.str.71 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !494
@.str.1.72 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !496
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !498
@.str.75 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !529
@.str.1.76 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !532
@.str.2.77 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !534
@.str.3.78 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !539
@.str.4.79 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !541
@.str.5.80 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !543
@.str.6.81 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !545
@.str.7.82 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !547
@.str.8.83 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !549
@.str.9.84 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !551
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.75, ptr @.str.1.76, ptr @.str.2.77, ptr @.str.3.78, ptr @.str.4.79, ptr @.str.5.80, ptr @.str.6.81, ptr @.str.7.82, ptr @.str.8.83, ptr @.str.9.84, ptr null], align 8, !dbg !553
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !564
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !578
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !616
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !623
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !580
@slotvec0 = internal global %struct.tokenbuffer { i64 256, ptr @slot0 }, align 8, !dbg !625
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !568
@.str.10.87 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !585
@.str.11.85 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !587
@.str.12.88 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !589
@.str.13.86 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !591
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !593
@.str.99 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !631
@.str.1.100 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !634
@.str.2.101 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !636
@.str.3.102 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !638
@.str.4.103 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !640
@.str.5.104 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !642
@.str.6.105 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !647
@.str.7.106 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !652
@.str.8.107 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !654
@.str.9.108 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !659
@.str.10.109 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !664
@.str.11.110 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !669
@.str.12.111 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !674
@.str.13.112 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !676
@.str.14.113 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !681
@.str.15.114 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !686
@.str.16.115 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !691
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.120 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !696
@.str.18.121 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !698
@.str.19.122 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !700
@.str.20.123 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !702
@.str.21.124 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !704
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !706
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !708
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !713
@exit_failure = dso_local global i32 1, align 4, !dbg !721
@.str.147 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !727
@.str.1.145 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !730
@.str.2.146 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !732
@.str.152 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !734
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !737
@.str.157 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !752
@.str.1.158 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !755

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !840 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !844, metadata !DIExpression()), !dbg !845
  %2 = icmp eq i32 %0, 0, !dbg !846
  br i1 %2, label %8, label %3, !dbg !848

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !849, !tbaa !851
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !849
  %6 = load ptr, ptr @program_name, align 8, !dbg !849, !tbaa !851
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !849
  br label %34, !dbg !849

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !855
  %10 = load ptr, ptr @program_name, align 8, !dbg !855, !tbaa !851
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !855
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !857
  %13 = load ptr, ptr @stdout, align 8, !dbg !857, !tbaa !851
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !857
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !861
  %16 = load ptr, ptr @stdout, align 8, !dbg !861, !tbaa !851
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !861
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !862
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !862
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !863
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !863
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !864, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !876, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata ptr poison, metadata !876, metadata !DIExpression()), !dbg !881
  tail call void @emit_bug_reporting_address() #39, !dbg !883
  %20 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !884
  call void @llvm.dbg.value(metadata ptr %20, metadata !879, metadata !DIExpression()), !dbg !881
  %21 = icmp eq ptr %20, null, !dbg !885
  br i1 %21, label %29, label %22, !dbg !887

22:                                               ; preds = %8
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(4) @.str.47, i64 noundef 3) #40, !dbg !888
  %24 = icmp eq i32 %23, 0, !dbg !888
  br i1 %24, label %29, label %25, !dbg !889

25:                                               ; preds = %22
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #39, !dbg !890
  %27 = load ptr, ptr @stdout, align 8, !dbg !890, !tbaa !851
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !890
  br label %29, !dbg !892

29:                                               ; preds = %8, %22, %25
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !876, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !880, metadata !DIExpression()), !dbg !881
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #39, !dbg !893
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3) #39, !dbg !893
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #39, !dbg !894
  %33 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.51) #39, !dbg !894
  br label %34

34:                                               ; preds = %29, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !895
  unreachable, !dbg !895
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !896 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !900 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !906 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !909 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !144 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !148, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata ptr %0, metadata !149, metadata !DIExpression()), !dbg !912
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !913, !tbaa !914
  %3 = icmp eq i32 %2, -1, !dbg !916
  br i1 %3, label %4, label %16, !dbg !917

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.17) #39, !dbg !918
  call void @llvm.dbg.value(metadata ptr %5, metadata !150, metadata !DIExpression()), !dbg !919
  %6 = icmp eq ptr %5, null, !dbg !920
  br i1 %6, label %14, label %7, !dbg !921

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !922, !tbaa !923
  %9 = icmp eq i8 %8, 0, !dbg !922
  br i1 %9, label %14, label %10, !dbg !924

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !925, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !931, metadata !DIExpression()), !dbg !932
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.18) #40, !dbg !934
  %12 = icmp eq i32 %11, 0, !dbg !935
  %13 = zext i1 %12 to i32, !dbg !924
  br label %14, !dbg !924

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !936, !tbaa !914
  br label %16, !dbg !937

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !938
  %18 = icmp eq i32 %17, 0, !dbg !938
  br i1 %18, label %22, label %19, !dbg !940

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !941, !tbaa !851
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !941
  br label %122, !dbg !943

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !153, metadata !DIExpression()), !dbg !912
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.19) #40, !dbg !944
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !945
  call void @llvm.dbg.value(metadata ptr %24, metadata !155, metadata !DIExpression()), !dbg !912
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !946
  call void @llvm.dbg.value(metadata ptr %25, metadata !156, metadata !DIExpression()), !dbg !912
  %26 = icmp eq ptr %25, null, !dbg !947
  br i1 %26, label %54, label %27, !dbg !948

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !949
  br i1 %28, label %54, label %29, !dbg !950

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !157, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i64 0, metadata !161, metadata !DIExpression()), !dbg !951
  %30 = icmp ult ptr %24, %25, !dbg !952
  br i1 %30, label %31, label %52, !dbg !953

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !912
  %33 = load ptr, ptr %32, align 8, !tbaa !851
  br label %34, !dbg !953

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !157, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i64 %36, metadata !161, metadata !DIExpression()), !dbg !951
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !954
  call void @llvm.dbg.value(metadata ptr %37, metadata !157, metadata !DIExpression()), !dbg !951
  %38 = load i8, ptr %35, align 1, !dbg !954, !tbaa !923
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !954
  %41 = load i16, ptr %40, align 2, !dbg !954, !tbaa !955
  %42 = freeze i16 %41, !dbg !957
  %43 = lshr i16 %42, 13, !dbg !957
  %44 = and i16 %43, 1, !dbg !957
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !958
  call void @llvm.dbg.value(metadata i64 %46, metadata !161, metadata !DIExpression()), !dbg !951
  %47 = icmp ult ptr %37, %25, !dbg !952
  %48 = icmp ult i64 %46, 2, !dbg !959
  %49 = select i1 %47, i1 %48, i1 false, !dbg !959
  br i1 %49, label %34, label %50, !dbg !953, !llvm.loop !960

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !962
  br i1 %51, label %52, label %54, !dbg !964

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !964

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !912
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !153, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata ptr %55, metadata !156, metadata !DIExpression()), !dbg !912
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.20) #40, !dbg !965
  call void @llvm.dbg.value(metadata i64 %57, metadata !162, metadata !DIExpression()), !dbg !912
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !966
  call void @llvm.dbg.value(metadata ptr %58, metadata !163, metadata !DIExpression()), !dbg !912
  br label %59, !dbg !967

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !912
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !153, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata ptr %60, metadata !163, metadata !DIExpression()), !dbg !912
  %62 = load i8, ptr %60, align 1, !dbg !968, !tbaa !923
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !969

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !970
  %65 = load i8, ptr %64, align 1, !dbg !973, !tbaa !923
  %66 = icmp ne i8 %65, 45, !dbg !974
  %67 = select i1 %66, i1 %61, i1 false, !dbg !975
  br label %68, !dbg !975

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !153, metadata !DIExpression()), !dbg !912
  %70 = tail call ptr @__ctype_b_loc() #42, !dbg !976
  %71 = load ptr, ptr %70, align 8, !dbg !976, !tbaa !851
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !976
  %74 = load i16, ptr %73, align 2, !dbg !976, !tbaa !955
  %75 = and i16 %74, 8192, !dbg !976
  %76 = icmp eq i16 %75, 0, !dbg !976
  br i1 %76, label %90, label %77, !dbg !978

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !979
  br i1 %78, label %92, label %79, !dbg !982

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !983
  %81 = load i8, ptr %80, align 1, !dbg !983, !tbaa !923
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !983
  %84 = load i16, ptr %83, align 2, !dbg !983, !tbaa !955
  %85 = and i16 %84, 8192, !dbg !983
  %86 = icmp eq i16 %85, 0, !dbg !983
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !984
  br i1 %89, label %90, label %92, !dbg !984

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !985
  call void @llvm.dbg.value(metadata ptr %91, metadata !163, metadata !DIExpression()), !dbg !912
  br label %59, !dbg !967, !llvm.loop !986

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !988
  %94 = load ptr, ptr @stdout, align 8, !dbg !988, !tbaa !851
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !988
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !220, metadata !DIExpression()), !dbg !912
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.34, i64 noundef 6) #40, !dbg !1009
  %97 = icmp eq i32 %96, 0, !dbg !1009
  br i1 %97, label %101, label %98, !dbg !1011

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.35, i64 noundef 9) #40, !dbg !1012
  %100 = icmp eq i32 %99, 0, !dbg !1012
  br i1 %100, label %101, label %104, !dbg !1013

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1014
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #39, !dbg !1014
  br label %107, !dbg !1016

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1017
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #39, !dbg !1017
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1019, !tbaa !851
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %108), !dbg !1019
  %110 = load ptr, ptr @stdout, align 8, !dbg !1020, !tbaa !851
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %110), !dbg !1020
  %112 = ptrtoint ptr %60 to i64, !dbg !1021
  %113 = sub i64 %112, %93, !dbg !1021
  %114 = load ptr, ptr @stdout, align 8, !dbg !1021, !tbaa !851
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1021
  %116 = load ptr, ptr @stdout, align 8, !dbg !1022, !tbaa !851
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %116), !dbg !1022
  %118 = load ptr, ptr @stdout, align 8, !dbg !1023, !tbaa !851
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %118), !dbg !1023
  %120 = load ptr, ptr @stdout, align 8, !dbg !1024, !tbaa !851
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1024
  br label %122, !dbg !1025

122:                                              ; preds = %107, %19
  ret void, !dbg !1025
}

; Function Attrs: nounwind
declare !dbg !1026 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1030 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1034 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1036 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1039 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1042 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1045 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1048 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1054 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1055 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !49 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !392, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata ptr %1, metadata !393, metadata !DIExpression()), !dbg !1061
  %3 = load ptr, ptr %1, align 8, !dbg !1062, !tbaa !851
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !1063
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #39, !dbg !1064
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #39, !dbg !1065
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #39, !dbg !1066
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1067
  br label %8, !dbg !1068

8:                                                ; preds = %8, %2
  %9 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @main.long_options, ptr noundef null) #39, !dbg !1069
  call void @llvm.dbg.value(metadata i32 %9, metadata !394, metadata !DIExpression()), !dbg !1070
  switch i32 %9, label %15 [
    i32 -1, label %16
    i32 119, label %8
    i32 -2, label %10
    i32 -3, label %11
  ], !dbg !1071

10:                                               ; preds = %8
  tail call void @usage(i32 noundef 0) #43, !dbg !1072
  unreachable, !dbg !1072

11:                                               ; preds = %8
  %12 = load ptr, ptr @stdout, align 8, !dbg !1074, !tbaa !851
  %13 = load ptr, ptr @Version, align 8, !dbg !1074, !tbaa !851
  %14 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #39, !dbg !1074
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %13, ptr noundef %14, ptr noundef null) #39, !dbg !1074
  tail call void @exit(i32 noundef 0) #41, !dbg !1074
  unreachable, !dbg !1074

15:                                               ; preds = %8
  tail call void @usage(i32 noundef 1) #43, !dbg !1075
  unreachable, !dbg !1075

16:                                               ; preds = %8
  %17 = load i32, ptr @optind, align 4, !dbg !1076, !tbaa !914
  %18 = sub nsw i32 %0, %17, !dbg !1078
  %19 = icmp sgt i32 %18, 1, !dbg !1079
  br i1 %19, label %20, label %28, !dbg !1080

20:                                               ; preds = %16
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #39, !dbg !1081
  %22 = load i32, ptr @optind, align 4, !dbg !1081, !tbaa !914
  %23 = add nsw i32 %22, 1, !dbg !1081
  %24 = sext i32 %23 to i64, !dbg !1081
  %25 = getelementptr inbounds ptr, ptr %1, i64 %24, !dbg !1081
  %26 = load ptr, ptr %25, align 8, !dbg !1081, !tbaa !851
  %27 = tail call ptr @quote(ptr noundef %26) #39, !dbg !1081
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %21, ptr noundef %27) #39, !dbg !1081
  tail call void @usage(i32 noundef 1) #43, !dbg !1083
  unreachable, !dbg !1083

28:                                               ; preds = %16
  %29 = icmp eq i32 %17, %0, !dbg !1084
  br i1 %29, label %34, label %30, !dbg !1085

30:                                               ; preds = %28
  %31 = sext i32 %17 to i64, !dbg !1086
  %32 = getelementptr inbounds ptr, ptr %1, i64 %31, !dbg !1086
  %33 = load ptr, ptr %32, align 8, !dbg !1086, !tbaa !851
  br label %34, !dbg !1085

34:                                               ; preds = %28, %30
  %35 = phi ptr [ %33, %30 ], [ @.str.15, %28 ], !dbg !1085
  tail call fastcc void @tsort(ptr noundef %35) #43, !dbg !1087
  unreachable, !dbg !1087
}

; Function Attrs: nounwind
declare !dbg !1088 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1091 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1092 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1095 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @tsort(ptr noundef %0) unnamed_addr #0 !dbg !1101 {
  %2 = alloca %struct.tokenbuffer, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1103, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 1, metadata !1104, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata ptr null, metadata !1105, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata ptr null, metadata !1106, metadata !DIExpression()), !dbg !1121
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #39, !dbg !1122
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1107, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata ptr %0, metadata !925, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !931, metadata !DIExpression()), !dbg !1124
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.15) #40, !dbg !1126
  %4 = icmp eq i32 %3, 0, !dbg !1127
  call void @llvm.dbg.value(metadata i1 %4, metadata !1114, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1121
  call void @llvm.dbg.value(metadata ptr null, metadata !1128, metadata !DIExpression()), !dbg !1134
  %5 = tail call noalias nonnull dereferenceable(56) ptr @xzalloc(i64 noundef 56) #44, !dbg !1136
  call void @llvm.dbg.value(metadata ptr %5, metadata !1133, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr %5, metadata !1115, metadata !DIExpression()), !dbg !1121
  br i1 %4, label %14, label %6, !dbg !1137

6:                                                ; preds = %1
  %7 = load ptr, ptr @stdin, align 8, !dbg !1139, !tbaa !851
  %8 = tail call ptr @freopen_safer(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef %7) #39, !dbg !1140
  %9 = icmp eq ptr %8, null, !dbg !1140
  br i1 %9, label %10, label %14, !dbg !1141

10:                                               ; preds = %6
  %11 = tail call ptr @__errno_location() #42, !dbg !1142
  %12 = load i32, ptr %11, align 4, !dbg !1142, !tbaa !914
  %13 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #39, !dbg !1142
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %12, ptr noundef nonnull @.str.53, ptr noundef %13) #39, !dbg !1142
  unreachable, !dbg !1142

14:                                               ; preds = %6, %1
  %15 = load ptr, ptr @stdin, align 8, !dbg !1143, !tbaa !851
  tail call void @fadvise(ptr noundef %15, i32 noundef 2) #39, !dbg !1144
  call void @init_tokenbuffer(ptr noundef nonnull %2) #39, !dbg !1145
  %16 = getelementptr inbounds %struct.tokenbuffer, ptr %2, i64 0, i32 1
  %17 = getelementptr inbounds %struct.item, ptr %5, i64 0, i32 2
  br label %18, !dbg !1146

18:                                               ; preds = %188, %14
  %19 = phi ptr [ null, %14 ], [ %189, %188 ], !dbg !1147
  call void @llvm.dbg.value(metadata ptr %19, metadata !1105, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata ptr %19, metadata !1106, metadata !DIExpression()), !dbg !1121
  %20 = load ptr, ptr @stdin, align 8, !dbg !1148, !tbaa !851
  %21 = call i64 @readtoken(ptr noundef %20, ptr noundef nonnull @.str.19, i64 noundef 3, ptr noundef nonnull %2) #39, !dbg !1149
  call void @llvm.dbg.value(metadata i64 %21, metadata !1116, metadata !DIExpression()), !dbg !1150
  switch i64 %21, label %33 [
    i64 -1, label %22
    i64 0, label %32
  ], !dbg !1151

22:                                               ; preds = %18
  %23 = load ptr, ptr @stdin, align 8, !dbg !1152, !tbaa !851
  call void @llvm.dbg.value(metadata ptr %23, metadata !1156, metadata !DIExpression()), !dbg !1162
  %24 = load i32, ptr %23, align 8, !dbg !1164, !tbaa !1165
  %25 = and i32 %24, 32, !dbg !1152
  %26 = icmp eq i32 %25, 0, !dbg !1152
  br i1 %26, label %190, label %27, !dbg !1168

27:                                               ; preds = %22
  %28 = tail call ptr @__errno_location() #42, !dbg !1169
  %29 = load i32, ptr %28, align 4, !dbg !1169, !tbaa !914
  %30 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #39, !dbg !1169
  %31 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #39, !dbg !1169
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %29, ptr noundef %30, ptr noundef %31) #39, !dbg !1169
  unreachable, !dbg !1169

32:                                               ; preds = %18
  call void @__assert_fail(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 458, ptr noundef nonnull @__PRETTY_FUNCTION__.tsort) #41, !dbg !1170
  unreachable, !dbg !1170

33:                                               ; preds = %18
  %34 = load ptr, ptr %16, align 8, !dbg !1173, !tbaa !1174
  call void @llvm.dbg.value(metadata ptr %5, metadata !1176, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr %34, metadata !1181, metadata !DIExpression()), !dbg !1193
  %35 = load ptr, ptr %17, align 8, !dbg !1195, !tbaa !1197
  %36 = icmp eq ptr %35, null, !dbg !1200
  br i1 %36, label %41, label %37, !dbg !1201

37:                                               ; preds = %33
  call void @llvm.dbg.value(metadata ptr %5, metadata !1186, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr %35, metadata !1185, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr %35, metadata !1182, metadata !DIExpression()), !dbg !1193
  %38 = load ptr, ptr %35, align 8, !dbg !1202, !tbaa !1203
  %39 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %38) #40, !dbg !1204
  call void @llvm.dbg.value(metadata i32 %39, metadata !1187, metadata !DIExpression()), !dbg !1193
  %40 = icmp eq i32 %39, 0, !dbg !1205
  br i1 %40, label %172, label %47, !dbg !1207

41:                                               ; preds = %33
  call void @llvm.dbg.value(metadata ptr %34, metadata !1128, metadata !DIExpression()), !dbg !1208
  %42 = call noalias nonnull dereferenceable(56) ptr @xzalloc(i64 noundef 56) #44, !dbg !1210
  call void @llvm.dbg.value(metadata ptr %42, metadata !1133, metadata !DIExpression()), !dbg !1208
  %43 = icmp eq ptr %34, null, !dbg !1211
  br i1 %43, label %46, label %44, !dbg !1213

44:                                               ; preds = %41
  %45 = call noalias nonnull ptr @xstrdup(ptr noundef nonnull %34) #39, !dbg !1214
  store ptr %45, ptr %42, align 8, !dbg !1215, !tbaa !1203
  br label %46, !dbg !1216

46:                                               ; preds = %44, %41
  store ptr %42, ptr %17, align 8, !dbg !1217, !tbaa !1197
  br label %172, !dbg !1218

47:                                               ; preds = %37, %163
  %48 = phi i32 [ %170, %163 ], [ %39, %37 ]
  %49 = phi ptr [ %168, %163 ], [ %5, %37 ]
  %50 = phi ptr [ %167, %163 ], [ %35, %37 ]
  %51 = phi ptr [ %56, %163 ], [ %35, %37 ]
  call void @llvm.dbg.value(metadata ptr %49, metadata !1186, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr %50, metadata !1185, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr %51, metadata !1182, metadata !DIExpression()), !dbg !1193
  %52 = icmp slt i32 %48, 0, !dbg !1219
  %53 = getelementptr inbounds %struct.item, ptr %51, i64 0, i32 1, !dbg !1221
  %54 = getelementptr inbounds %struct.item, ptr %51, i64 0, i32 2, !dbg !1221
  %55 = select i1 %52, ptr %53, ptr %54, !dbg !1221
  %56 = load ptr, ptr %55, align 8, !dbg !1222, !tbaa !851
  call void @llvm.dbg.value(metadata ptr %56, metadata !1183, metadata !DIExpression()), !dbg !1193
  %57 = icmp eq ptr %56, null, !dbg !1223
  br i1 %57, label %58, label %163, !dbg !1224

58:                                               ; preds = %47
  call void @llvm.dbg.value(metadata ptr %34, metadata !1128, metadata !DIExpression()), !dbg !1225
  %59 = call noalias nonnull dereferenceable(56) ptr @xzalloc(i64 noundef 56) #44, !dbg !1227
  call void @llvm.dbg.value(metadata ptr %59, metadata !1133, metadata !DIExpression()), !dbg !1225
  %60 = icmp eq ptr %34, null, !dbg !1228
  br i1 %60, label %63, label %61, !dbg !1229

61:                                               ; preds = %58
  %62 = call noalias nonnull ptr @xstrdup(ptr noundef nonnull %34) #39, !dbg !1230
  store ptr %62, ptr %59, align 8, !dbg !1231, !tbaa !1203
  br label %63, !dbg !1232

63:                                               ; preds = %61, %58
  call void @llvm.dbg.value(metadata ptr %59, metadata !1183, metadata !DIExpression()), !dbg !1193
  store ptr %59, ptr %55, align 8, !dbg !1233, !tbaa !851
  %64 = load ptr, ptr %50, align 8, !dbg !1235, !tbaa !1203
  %65 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %64) #40, !dbg !1236
  call void @llvm.dbg.value(metadata i32 %65, metadata !1187, metadata !DIExpression()), !dbg !1193
  %66 = icmp slt i32 %65, 0, !dbg !1237
  br i1 %66, label %67, label %69, !dbg !1239

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 1, !dbg !1240
  call void @llvm.dbg.value(metadata ptr poison, metadata !1182, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr poison, metadata !1184, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i32 -1, metadata !1187, metadata !DIExpression()), !dbg !1193
  br label %74, !dbg !1242

69:                                               ; preds = %63
  %70 = icmp eq i32 %65, 0, !dbg !1243
  br i1 %70, label %71, label %72, !dbg !1247

71:                                               ; preds = %69
  call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.56, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__.search_item) #41, !dbg !1243
  unreachable, !dbg !1243

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 2, !dbg !1248
  call void @llvm.dbg.value(metadata ptr poison, metadata !1182, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr poison, metadata !1184, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i32 1, metadata !1187, metadata !DIExpression()), !dbg !1193
  br label %74

74:                                               ; preds = %72, %67
  %75 = phi ptr [ %68, %67 ], [ %73, %72 ]
  %76 = phi i32 [ -1, %67 ], [ 1, %72 ], !dbg !1249
  %77 = load ptr, ptr %75, align 8, !dbg !1249, !tbaa !851
  call void @llvm.dbg.value(metadata i32 %76, metadata !1187, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr %77, metadata !1184, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr %77, metadata !1182, metadata !DIExpression()), !dbg !1193
  %78 = icmp eq ptr %77, %59, !dbg !1250
  br i1 %78, label %97, label %79, !dbg !1251

79:                                               ; preds = %74, %93
  %80 = phi ptr [ %95, %93 ], [ %77, %74 ]
  call void @llvm.dbg.value(metadata ptr %80, metadata !1182, metadata !DIExpression()), !dbg !1193
  %81 = load ptr, ptr %80, align 8, !dbg !1252, !tbaa !1203
  %82 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %81) #40, !dbg !1253
  call void @llvm.dbg.value(metadata i32 %82, metadata !1188, metadata !DIExpression()), !dbg !1254
  %83 = icmp slt i32 %82, 0, !dbg !1255
  br i1 %83, label %84, label %87, !dbg !1257

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.item, ptr %80, i64 0, i32 3, !dbg !1258
  store i8 -1, ptr %85, align 8, !dbg !1260, !tbaa !1261
  %86 = getelementptr inbounds %struct.item, ptr %80, i64 0, i32 1, !dbg !1262
  call void @llvm.dbg.value(metadata ptr poison, metadata !1182, metadata !DIExpression()), !dbg !1193
  br label %93, !dbg !1263

87:                                               ; preds = %79
  %88 = icmp eq i32 %82, 0, !dbg !1264
  br i1 %88, label %89, label %90, !dbg !1268

89:                                               ; preds = %87
  call void @__assert_fail(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.56, i32 noundef 181, ptr noundef nonnull @__PRETTY_FUNCTION__.search_item) #41, !dbg !1264
  unreachable, !dbg !1264

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.item, ptr %80, i64 0, i32 3, !dbg !1269
  store i8 1, ptr %91, align 8, !dbg !1270, !tbaa !1261
  %92 = getelementptr inbounds %struct.item, ptr %80, i64 0, i32 2, !dbg !1271
  call void @llvm.dbg.value(metadata ptr poison, metadata !1182, metadata !DIExpression()), !dbg !1193
  br label %93

93:                                               ; preds = %90, %84
  %94 = phi ptr [ %86, %84 ], [ %92, %90 ]
  %95 = load ptr, ptr %94, align 8, !dbg !1272, !tbaa !851
  call void @llvm.dbg.value(metadata ptr %95, metadata !1182, metadata !DIExpression()), !dbg !1193
  %96 = icmp eq ptr %95, %59, !dbg !1250
  br i1 %96, label %97, label %79, !dbg !1251, !llvm.loop !1273

97:                                               ; preds = %93, %74
  %98 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 3, !dbg !1275
  %99 = load i8, ptr %98, align 8, !dbg !1275, !tbaa !1261
  %100 = icmp eq i8 %99, 0, !dbg !1277
  br i1 %100, label %105, label %101, !dbg !1278

101:                                              ; preds = %97
  %102 = sext i8 %99 to i32, !dbg !1279
  %103 = sub nsw i32 0, %76, !dbg !1280
  %104 = icmp eq i32 %102, %103, !dbg !1281
  br i1 %104, label %105, label %108, !dbg !1282

105:                                              ; preds = %101, %97
  %106 = trunc i32 %76 to i8, !dbg !1283
  %107 = add i8 %99, %106, !dbg !1283
  store i8 %107, ptr %98, align 8, !dbg !1283, !tbaa !1261
  br label %172, !dbg !1285

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 3, !dbg !1286
  %110 = load i8, ptr %109, align 8, !dbg !1286, !tbaa !1261
  %111 = sext i8 %110 to i32, !dbg !1288
  %112 = icmp eq i32 %76, %111, !dbg !1289
  br i1 %112, label %113, label %124, !dbg !1290

113:                                              ; preds = %108
  call void @llvm.dbg.value(metadata ptr %77, metadata !1182, metadata !DIExpression()), !dbg !1193
  br i1 %66, label %114, label %118, !dbg !1291

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 2, !dbg !1293
  %116 = load ptr, ptr %115, align 8, !dbg !1293, !tbaa !1197
  %117 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 1, !dbg !1296
  store ptr %116, ptr %117, align 8, !dbg !1297, !tbaa !1298
  br label %122, !dbg !1299

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 1, !dbg !1300
  %120 = load ptr, ptr %119, align 8, !dbg !1300, !tbaa !1298
  %121 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 2, !dbg !1302
  store ptr %120, ptr %121, align 8, !dbg !1303, !tbaa !1197
  br label %122

122:                                              ; preds = %118, %114
  %123 = phi ptr [ %119, %118 ], [ %115, %114 ]
  store ptr %50, ptr %123, align 8, !dbg !1304, !tbaa !851
  store i8 0, ptr %109, align 8, !dbg !1305, !tbaa !1261
  br label %154, !dbg !1306

124:                                              ; preds = %108
  br i1 %66, label %125, label %133, !dbg !1307

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 2, !dbg !1309
  %127 = load ptr, ptr %126, align 8, !dbg !1309, !tbaa !1197
  call void @llvm.dbg.value(metadata ptr %127, metadata !1182, metadata !DIExpression()), !dbg !1193
  %128 = getelementptr inbounds %struct.item, ptr %127, i64 0, i32 1, !dbg !1312
  %129 = load ptr, ptr %128, align 8, !dbg !1312, !tbaa !1298
  store ptr %129, ptr %126, align 8, !dbg !1313, !tbaa !1197
  store ptr %77, ptr %128, align 8, !dbg !1314, !tbaa !1298
  %130 = getelementptr inbounds %struct.item, ptr %127, i64 0, i32 2, !dbg !1315
  %131 = load ptr, ptr %130, align 8, !dbg !1315, !tbaa !1197
  %132 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 1, !dbg !1316
  store ptr %131, ptr %132, align 8, !dbg !1317, !tbaa !1298
  br label %141, !dbg !1318

133:                                              ; preds = %124
  %134 = getelementptr inbounds %struct.item, ptr %77, i64 0, i32 1, !dbg !1319
  %135 = load ptr, ptr %134, align 8, !dbg !1319, !tbaa !1298
  call void @llvm.dbg.value(metadata ptr %135, metadata !1182, metadata !DIExpression()), !dbg !1193
  %136 = getelementptr inbounds %struct.item, ptr %135, i64 0, i32 2, !dbg !1321
  %137 = load ptr, ptr %136, align 8, !dbg !1321, !tbaa !1197
  store ptr %137, ptr %134, align 8, !dbg !1322, !tbaa !1298
  store ptr %77, ptr %136, align 8, !dbg !1323, !tbaa !1197
  %138 = getelementptr inbounds %struct.item, ptr %135, i64 0, i32 1, !dbg !1324
  %139 = load ptr, ptr %138, align 8, !dbg !1324, !tbaa !1298
  %140 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 2, !dbg !1325
  store ptr %139, ptr %140, align 8, !dbg !1326, !tbaa !1197
  br label %141

141:                                              ; preds = %133, %125
  %142 = phi ptr [ %138, %133 ], [ %130, %125 ]
  %143 = phi ptr [ %135, %133 ], [ %127, %125 ], !dbg !1327
  store ptr %50, ptr %142, align 8, !dbg !1327, !tbaa !851
  call void @llvm.dbg.value(metadata ptr %143, metadata !1182, metadata !DIExpression()), !dbg !1193
  store i8 0, ptr %98, align 8, !dbg !1328, !tbaa !1261
  store i8 0, ptr %109, align 8, !dbg !1329, !tbaa !1261
  %144 = getelementptr inbounds %struct.item, ptr %143, i64 0, i32 3, !dbg !1330
  %145 = load i8, ptr %144, align 8, !dbg !1330, !tbaa !1261
  %146 = sext i8 %145 to i32, !dbg !1332
  %147 = icmp eq i32 %76, %146, !dbg !1333
  br i1 %147, label %150, label %148, !dbg !1334

148:                                              ; preds = %141
  %149 = icmp eq i32 %146, %103, !dbg !1335
  br i1 %149, label %150, label %154, !dbg !1337

150:                                              ; preds = %148, %141
  %151 = phi i32 [ %103, %141 ], [ %76, %148 ]
  %152 = phi ptr [ %98, %141 ], [ %109, %148 ]
  %153 = trunc i32 %151 to i8, !dbg !1338
  store i8 %153, ptr %152, align 8, !dbg !1338, !tbaa !1261
  br label %154, !dbg !1339

154:                                              ; preds = %150, %148, %122
  %155 = phi ptr [ %98, %122 ], [ %144, %150 ], [ %144, %148 ]
  %156 = phi ptr [ %77, %122 ], [ %143, %150 ], [ %143, %148 ], !dbg !1340
  store i8 0, ptr %155, align 8, !dbg !1340, !tbaa !1261
  call void @llvm.dbg.value(metadata ptr %156, metadata !1182, metadata !DIExpression()), !dbg !1193
  %157 = getelementptr inbounds %struct.item, ptr %49, i64 0, i32 2, !dbg !1341
  %158 = load ptr, ptr %157, align 8, !dbg !1341, !tbaa !1197
  %159 = icmp eq ptr %50, %158, !dbg !1343
  br i1 %159, label %160, label %161, !dbg !1344

160:                                              ; preds = %154
  store ptr %156, ptr %157, align 8, !dbg !1345, !tbaa !1197
  br label %172, !dbg !1346

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.item, ptr %49, i64 0, i32 1, !dbg !1347
  store ptr %156, ptr %162, align 8, !dbg !1348, !tbaa !1298
  br label %172

163:                                              ; preds = %47
  %164 = getelementptr inbounds %struct.item, ptr %56, i64 0, i32 3, !dbg !1349
  %165 = load i8, ptr %164, align 8, !dbg !1349, !tbaa !1261
  %166 = icmp eq i8 %165, 0, !dbg !1351
  %167 = select i1 %166, ptr %50, ptr %56, !dbg !1352
  %168 = select i1 %166, ptr %49, ptr %51, !dbg !1352
  call void @llvm.dbg.value(metadata ptr %168, metadata !1186, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr %167, metadata !1185, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr %56, metadata !1182, metadata !DIExpression()), !dbg !1193
  %169 = load ptr, ptr %56, align 8, !dbg !1202, !tbaa !1203
  %170 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %169) #40, !dbg !1204
  call void @llvm.dbg.value(metadata i32 %170, metadata !1187, metadata !DIExpression()), !dbg !1193
  %171 = icmp eq i32 %170, 0, !dbg !1205
  br i1 %171, label %172, label %47, !dbg !1207, !llvm.loop !1353

172:                                              ; preds = %163, %37, %46, %105, %160, %161
  %173 = phi ptr [ %42, %46 ], [ %59, %105 ], [ %59, %161 ], [ %59, %160 ], [ %35, %37 ], [ %56, %163 ], !dbg !1193
  call void @llvm.dbg.value(metadata ptr %173, metadata !1106, metadata !DIExpression()), !dbg !1121
  %174 = icmp eq ptr %19, null, !dbg !1356
  br i1 %174, label %188, label %175, !dbg !1358

175:                                              ; preds = %172
  call void @llvm.dbg.value(metadata ptr %19, metadata !1359, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata ptr %173, metadata !1364, metadata !DIExpression()), !dbg !1366
  %176 = load ptr, ptr %19, align 8, !dbg !1369, !tbaa !1203
  %177 = load ptr, ptr %173, align 8, !dbg !1371, !tbaa !1203
  call void @llvm.dbg.value(metadata ptr %176, metadata !925, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata ptr %177, metadata !931, metadata !DIExpression()), !dbg !1372
  %178 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %176, ptr noundef nonnull dereferenceable(1) %177) #40, !dbg !1374
  %179 = icmp eq i32 %178, 0, !dbg !1375
  br i1 %179, label %188, label %180, !dbg !1376

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.item, ptr %173, i64 0, i32 5, !dbg !1377
  %182 = load i64, ptr %181, align 8, !dbg !1379, !tbaa !1380
  %183 = add i64 %182, 1, !dbg !1379
  store i64 %183, ptr %181, align 8, !dbg !1379, !tbaa !1380
  %184 = call noalias nonnull dereferenceable(16) ptr @xmalloc(i64 noundef 16) #44, !dbg !1381
  call void @llvm.dbg.value(metadata ptr %184, metadata !1365, metadata !DIExpression()), !dbg !1366
  store ptr %173, ptr %184, align 8, !dbg !1382, !tbaa !1383
  %185 = getelementptr inbounds %struct.item, ptr %19, i64 0, i32 7, !dbg !1385
  %186 = load ptr, ptr %185, align 8, !dbg !1385, !tbaa !1386
  %187 = getelementptr inbounds %struct.successor, ptr %184, i64 0, i32 1, !dbg !1387
  store ptr %186, ptr %187, align 8, !dbg !1388, !tbaa !1389
  store ptr %184, ptr %185, align 8, !dbg !1390, !tbaa !1386
  br label %188, !dbg !1391

188:                                              ; preds = %180, %175, %172
  %189 = phi ptr [ %173, %172 ], [ null, %175 ], [ null, %180 ]
  br label %18, !dbg !1121

190:                                              ; preds = %22
  call void @llvm.dbg.value(metadata ptr poison, metadata !1105, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata ptr %19, metadata !1106, metadata !DIExpression()), !dbg !1121
  %191 = icmp eq ptr %19, null, !dbg !1392
  br i1 %191, label %195, label %192, !dbg !1394

192:                                              ; preds = %190
  %193 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #39, !dbg !1395
  %194 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #39, !dbg !1395
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %193, ptr noundef %194) #39, !dbg !1395
  unreachable, !dbg !1395

195:                                              ; preds = %190
  call void @llvm.dbg.value(metadata ptr %5, metadata !1396, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata ptr @count_items, metadata !1404, metadata !DIExpression()), !dbg !1405
  %196 = load ptr, ptr %17, align 8, !dbg !1407, !tbaa !1197
  %197 = icmp eq ptr %196, null, !dbg !1409
  br i1 %197, label %200, label %198, !dbg !1410

198:                                              ; preds = %195
  %199 = call fastcc i1 @recurse_tree(ptr noundef nonnull %196, ptr noundef nonnull @count_items), !dbg !1411
  br label %200, !dbg !1411

200:                                              ; preds = %195, %198
  call void @llvm.dbg.value(metadata i8 poison, metadata !1104, metadata !DIExpression()), !dbg !1121
  %201 = load i64, ptr @n_strings, align 8, !dbg !1412, !tbaa !1413
  %202 = icmp eq i64 %201, 0, !dbg !1414
  br i1 %202, label %259, label %203, !dbg !1415

203:                                              ; preds = %200, %256
  %204 = phi i32 [ 0, %256 ], [ 1, %200 ]
  call void @llvm.dbg.value(metadata ptr %5, metadata !1396, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata ptr @scan_zeros, metadata !1404, metadata !DIExpression()), !dbg !1416
  br i1 %197, label %207, label %205, !dbg !1418

205:                                              ; preds = %203
  %206 = call fastcc i1 @recurse_tree(ptr noundef nonnull %196, ptr noundef nonnull @scan_zeros), !dbg !1419
  br label %207, !dbg !1419

207:                                              ; preds = %203, %205
  %208 = load ptr, ptr @head, align 8, !dbg !1420, !tbaa !851
  %209 = icmp eq ptr %208, null, !dbg !1421
  br i1 %209, label %210, label %212, !dbg !1421

210:                                              ; preds = %207
  %211 = load i64, ptr @n_strings, align 8, !dbg !1422, !tbaa !1413
  br label %244, !dbg !1421

212:                                              ; preds = %207, %240
  %213 = phi ptr [ %242, %240 ], [ %208, %207 ]
  %214 = getelementptr inbounds %struct.item, ptr %213, i64 0, i32 7, !dbg !1424
  %215 = load ptr, ptr %214, align 8, !dbg !1424, !tbaa !1386
  call void @llvm.dbg.value(metadata ptr %215, metadata !1118, metadata !DIExpression()), !dbg !1425
  %216 = load ptr, ptr %213, align 8, !dbg !1426, !tbaa !1203
  %217 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %216), !dbg !1427
  %218 = load ptr, ptr @head, align 8, !dbg !1428, !tbaa !851
  %219 = getelementptr inbounds %struct.item, ptr %218, i64 0, i32 4, !dbg !1429
  store i8 1, ptr %219, align 1, !dbg !1430, !tbaa !1431
  %220 = load i64, ptr @n_strings, align 8, !dbg !1432, !tbaa !1413
  %221 = add i64 %220, -1, !dbg !1432
  store i64 %221, ptr @n_strings, align 8, !dbg !1432, !tbaa !1413
  %222 = icmp eq ptr %215, null, !dbg !1433
  br i1 %222, label %240, label %223, !dbg !1433

223:                                              ; preds = %212
  %224 = load ptr, ptr @zeros, align 8, !tbaa !851
  br label %225, !dbg !1433

225:                                              ; preds = %223, %235
  %226 = phi ptr [ %238, %235 ], [ %215, %223 ]
  %227 = phi ptr [ %236, %235 ], [ %224, %223 ]
  call void @llvm.dbg.value(metadata ptr %226, metadata !1118, metadata !DIExpression()), !dbg !1425
  %228 = load ptr, ptr %226, align 8, !dbg !1434, !tbaa !1383
  %229 = getelementptr inbounds %struct.item, ptr %228, i64 0, i32 5, !dbg !1436
  %230 = load i64, ptr %229, align 8, !dbg !1437, !tbaa !1380
  %231 = add i64 %230, -1, !dbg !1437
  store i64 %231, ptr %229, align 8, !dbg !1437, !tbaa !1380
  %232 = icmp eq i64 %231, 0, !dbg !1438
  br i1 %232, label %233, label %235, !dbg !1440

233:                                              ; preds = %225
  %234 = getelementptr inbounds %struct.item, ptr %227, i64 0, i32 6, !dbg !1441
  store ptr %228, ptr %234, align 8, !dbg !1443, !tbaa !1444
  store ptr %228, ptr @zeros, align 8, !dbg !1445, !tbaa !851
  br label %235, !dbg !1446

235:                                              ; preds = %233, %225
  %236 = phi ptr [ %228, %233 ], [ %227, %225 ]
  %237 = getelementptr inbounds %struct.successor, ptr %226, i64 0, i32 1, !dbg !1447
  %238 = load ptr, ptr %237, align 8, !dbg !1447, !tbaa !1389
  call void @llvm.dbg.value(metadata ptr %238, metadata !1118, metadata !DIExpression()), !dbg !1425
  %239 = icmp eq ptr %238, null, !dbg !1433
  br i1 %239, label %240, label %225, !dbg !1433, !llvm.loop !1448

240:                                              ; preds = %235, %212
  %241 = getelementptr inbounds %struct.item, ptr %218, i64 0, i32 6, !dbg !1450
  %242 = load ptr, ptr %241, align 8, !dbg !1450, !tbaa !1444
  store ptr %242, ptr @head, align 8, !dbg !1451, !tbaa !851
  %243 = icmp eq ptr %242, null, !dbg !1421
  br i1 %243, label %244, label %212, !dbg !1421, !llvm.loop !1452

244:                                              ; preds = %240, %210
  %245 = phi i64 [ %211, %210 ], [ %221, %240 ], !dbg !1422
  %246 = icmp eq i64 %245, 0, !dbg !1454
  br i1 %246, label %259, label %247, !dbg !1455

247:                                              ; preds = %244
  %248 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #39, !dbg !1456
  %249 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #39, !dbg !1456
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %248, ptr noundef %249) #39, !dbg !1456
  call void @llvm.dbg.value(metadata i8 0, metadata !1104, metadata !DIExpression()), !dbg !1121
  br label %250, !dbg !1458

250:                                              ; preds = %253, %247
  call void @llvm.dbg.value(metadata ptr %5, metadata !1396, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata ptr @detect_loop, metadata !1404, metadata !DIExpression()), !dbg !1459
  br i1 %197, label %253, label %251, !dbg !1461

251:                                              ; preds = %250
  %252 = call fastcc i1 @recurse_tree(ptr noundef nonnull %196, ptr noundef nonnull @detect_loop), !dbg !1462
  br label %253, !dbg !1462

253:                                              ; preds = %250, %251
  %254 = load ptr, ptr @loop, align 8, !dbg !1463, !tbaa !851
  %255 = icmp eq ptr %254, null, !dbg !1464
  br i1 %255, label %256, label %250, !dbg !1464, !llvm.loop !1465

256:                                              ; preds = %253
  %257 = load i64, ptr @n_strings, align 8, !dbg !1412, !tbaa !1413
  call void @llvm.dbg.value(metadata i8 poison, metadata !1104, metadata !DIExpression()), !dbg !1121
  %258 = icmp eq i64 %257, 0, !dbg !1414
  br i1 %258, label %259, label %203, !dbg !1415, !llvm.loop !1467

259:                                              ; preds = %244, %256, %200
  %260 = phi i32 [ 1, %200 ], [ %204, %244 ], [ 0, %256 ]
  %261 = load ptr, ptr @stdin, align 8, !dbg !1469, !tbaa !851
  %262 = call i32 @rpl_fclose(ptr noundef %261) #39, !dbg !1471
  %263 = icmp eq i32 %262, 0, !dbg !1472
  br i1 %263, label %273, label %264, !dbg !1473

264:                                              ; preds = %259
  %265 = tail call ptr @__errno_location() #42, !dbg !1474
  %266 = load i32, ptr %265, align 4, !dbg !1474, !tbaa !914
  br i1 %4, label %267, label %269, !dbg !1474

267:                                              ; preds = %264
  %268 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #39, !dbg !1474
  br label %271, !dbg !1474

269:                                              ; preds = %264
  %270 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #39, !dbg !1474
  br label %271, !dbg !1474

271:                                              ; preds = %269, %267
  %272 = phi ptr [ %268, %267 ], [ %270, %269 ], !dbg !1474
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %266, ptr noundef nonnull @.str.53, ptr noundef %272) #39, !dbg !1474
  unreachable, !dbg !1474

273:                                              ; preds = %259
  %274 = and i32 %260, 1, !dbg !1475
  %275 = xor i32 %274, 1, !dbg !1475
  call void @exit(i32 noundef %275) #41, !dbg !1476
  unreachable, !dbg !1476
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1477 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare !dbg !1481 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal i1 @count_items(ptr nocapture readnone %0) #11 !dbg !1485 {
  call void @llvm.dbg.value(metadata ptr poison, metadata !1487, metadata !DIExpression()), !dbg !1488
  %2 = load i64, ptr @n_strings, align 8, !dbg !1489, !tbaa !1413
  %3 = add i64 %2, 1, !dbg !1489
  store i64 %3, ptr @n_strings, align 8, !dbg !1489, !tbaa !1413
  ret i1 false, !dbg !1490
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @recurse_tree(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !dbg !1491 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1495, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata ptr %1, metadata !1496, metadata !DIExpression()), !dbg !1497
  %3 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 1, !dbg !1498
  %4 = load ptr, ptr %3, align 8, !dbg !1498, !tbaa !1298
  %5 = icmp eq ptr %4, null, !dbg !1500
  br i1 %5, label %6, label %12, !dbg !1501

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 2, !dbg !1502
  %8 = load ptr, ptr %7, align 8, !dbg !1502, !tbaa !1197
  %9 = icmp eq ptr %8, null, !dbg !1503
  br i1 %9, label %10, label %14, !dbg !1504

10:                                               ; preds = %6
  %11 = tail call i1 %1(ptr noundef nonnull %0) #39, !dbg !1505, !callees !1506
  br label %23, !dbg !1507

12:                                               ; preds = %2
  %13 = tail call fastcc i1 @recurse_tree(ptr noundef nonnull %4, ptr noundef %1), !dbg !1508
  br i1 %13, label %23, label %14, !dbg !1512

14:                                               ; preds = %6, %12
  %15 = tail call i1 %1(ptr noundef nonnull %0) #39, !dbg !1513, !callees !1506
  br i1 %15, label %23, label %16, !dbg !1515

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 2, !dbg !1516
  %18 = load ptr, ptr %17, align 8, !dbg !1516, !tbaa !1197
  %19 = icmp eq ptr %18, null, !dbg !1518
  br i1 %19, label %22, label %20, !dbg !1519

20:                                               ; preds = %16
  %21 = tail call fastcc i1 @recurse_tree(ptr noundef nonnull %18, ptr noundef %1), !dbg !1520
  br i1 %21, label %23, label %22, !dbg !1522

22:                                               ; preds = %16, %20
  br label %23, !dbg !1523

23:                                               ; preds = %20, %14, %12, %22, %10
  %24 = phi i1 [ %11, %10 ], [ false, %22 ], [ true, %12 ], [ true, %14 ], [ true, %20 ], !dbg !1497
  ret i1 %24, !dbg !1524
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal i1 @scan_zeros(ptr noundef %0) #13 !dbg !1525 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1527, metadata !DIExpression()), !dbg !1528
  %2 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 5, !dbg !1529
  %3 = load i64, ptr %2, align 8, !dbg !1529, !tbaa !1380
  %4 = icmp eq i64 %3, 0, !dbg !1531
  br i1 %4, label %5, label %15, !dbg !1532

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 4, !dbg !1533
  %7 = load i8, ptr %6, align 1, !dbg !1533, !tbaa !1431, !range !1534, !noundef !859
  %8 = icmp eq i8 %7, 0, !dbg !1533
  br i1 %8, label %9, label %15, !dbg !1535

9:                                                ; preds = %5
  %10 = load ptr, ptr @head, align 8, !dbg !1536, !tbaa !851
  %11 = icmp eq ptr %10, null, !dbg !1539
  %12 = load ptr, ptr @zeros, align 8, !dbg !1540
  %13 = getelementptr inbounds %struct.item, ptr %12, i64 0, i32 6, !dbg !1540
  %14 = select i1 %11, ptr @head, ptr %13, !dbg !1540
  store ptr %0, ptr %14, align 8, !dbg !1541, !tbaa !851
  store ptr %0, ptr @zeros, align 8, !dbg !1542, !tbaa !851
  br label %15, !dbg !1543

15:                                               ; preds = %9, %5, %1
  ret i1 false, !dbg !1544
}

; Function Attrs: nofree nounwind
declare !dbg !1545 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i1 @detect_loop(ptr noundef %0) #12 !dbg !1548 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1550, metadata !DIExpression()), !dbg !1569
  %2 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 5, !dbg !1570
  %3 = load i64, ptr %2, align 8, !dbg !1570, !tbaa !1380
  %4 = icmp eq i64 %3, 0, !dbg !1571
  br i1 %4, label %58, label %5, !dbg !1572

5:                                                ; preds = %1
  %6 = load ptr, ptr @loop, align 8, !dbg !1573, !tbaa !851
  %7 = icmp eq ptr %6, null, !dbg !1574
  br i1 %7, label %55, label %8, !dbg !1575

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 7, !dbg !1576
  call void @llvm.dbg.value(metadata ptr %9, metadata !1551, metadata !DIExpression()), !dbg !1577
  %10 = load ptr, ptr %9, align 8, !dbg !1578, !tbaa !851
  %11 = icmp eq ptr %10, null, !dbg !1579
  br i1 %11, label %58, label %12, !dbg !1579

12:                                               ; preds = %8
  call void @llvm.dbg.value(metadata ptr %9, metadata !1551, metadata !DIExpression()), !dbg !1577
  %13 = load ptr, ptr %10, align 8, !dbg !1580, !tbaa !1383
  %14 = icmp eq ptr %13, %6, !dbg !1581
  call void @llvm.dbg.value(metadata ptr %10, metadata !1551, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1577
  br i1 %14, label %25, label %15, !dbg !1582

15:                                               ; preds = %12, %20
  %16 = phi ptr [ %18, %20 ], [ %10, %12 ]
  call void @llvm.dbg.value(metadata ptr %16, metadata !1551, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1577
  %17 = getelementptr inbounds %struct.successor, ptr %16, i64 0, i32 1, !dbg !1583
  call void @llvm.dbg.value(metadata ptr %17, metadata !1551, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata ptr %16, metadata !1551, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1577
  %18 = load ptr, ptr %17, align 8, !dbg !1578, !tbaa !851
  %19 = icmp eq ptr %18, null, !dbg !1579
  br i1 %19, label %58, label %20, !dbg !1579, !llvm.loop !1584

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !1551, metadata !DIExpression()), !dbg !1577
  %21 = load ptr, ptr %18, align 8, !dbg !1580, !tbaa !1383
  %22 = icmp eq ptr %21, %6, !dbg !1581
  call void @llvm.dbg.value(metadata ptr %18, metadata !1551, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1577
  br i1 %22, label %23, label %15, !dbg !1582, !llvm.loop !1584

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.successor, ptr %16, i64 0, i32 1, !dbg !1583
  br label %25, !dbg !1586

25:                                               ; preds = %23, %12
  %26 = phi ptr [ %9, %12 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.item, ptr %0, i64 0, i32 6, !dbg !1586
  %28 = load ptr, ptr %27, align 8, !dbg !1586, !tbaa !1444
  %29 = icmp eq ptr %28, null, !dbg !1587
  br i1 %29, label %54, label %30, !dbg !1588

30:                                               ; preds = %25, %37
  %31 = phi ptr [ %33, %37 ], [ %6, %25 ]
  %32 = getelementptr inbounds %struct.item, ptr %31, i64 0, i32 6, !dbg !1589
  %33 = load ptr, ptr %32, align 8, !dbg !1589, !tbaa !1444
  call void @llvm.dbg.value(metadata ptr %33, metadata !1557, metadata !DIExpression()), !dbg !1590
  %34 = load ptr, ptr %31, align 8, !dbg !1591, !tbaa !1203
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.53, ptr noundef %34) #39, !dbg !1591
  %35 = load ptr, ptr @loop, align 8, !dbg !1592, !tbaa !851
  %36 = icmp eq ptr %35, %0, !dbg !1593
  br i1 %36, label %40, label %37, !dbg !1594

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.item, ptr %35, i64 0, i32 6, !dbg !1595
  store ptr null, ptr %38, align 8, !dbg !1596, !tbaa !1444
  store ptr %33, ptr @loop, align 8, !dbg !1597, !tbaa !851
  %39 = icmp eq ptr %33, null, !dbg !1598
  br i1 %39, label %58, label %30, !dbg !1598

40:                                               ; preds = %30
  %41 = load ptr, ptr %26, align 8, !dbg !1599, !tbaa !851
  call void @llvm.dbg.value(metadata ptr %41, metadata !1564, metadata !DIExpression()), !dbg !1600
  %42 = load ptr, ptr %41, align 8, !dbg !1601, !tbaa !1383
  %43 = getelementptr inbounds %struct.item, ptr %42, i64 0, i32 5, !dbg !1602
  %44 = load i64, ptr %43, align 8, !dbg !1603, !tbaa !1380
  %45 = add i64 %44, -1, !dbg !1603
  store i64 %45, ptr %43, align 8, !dbg !1603, !tbaa !1380
  %46 = getelementptr inbounds %struct.successor, ptr %41, i64 0, i32 1, !dbg !1604
  %47 = load ptr, ptr %46, align 8, !dbg !1604, !tbaa !1389
  store ptr %47, ptr %26, align 8, !dbg !1605, !tbaa !851
  %48 = icmp eq ptr %0, null, !dbg !1606
  br i1 %48, label %58, label %49, !dbg !1606

49:                                               ; preds = %40, %49
  %50 = phi ptr [ %52, %49 ], [ %0, %40 ]
  %51 = getelementptr inbounds %struct.item, ptr %50, i64 0, i32 6, !dbg !1607
  %52 = load ptr, ptr %51, align 8, !dbg !1607, !tbaa !1444
  call void @llvm.dbg.value(metadata ptr %52, metadata !1567, metadata !DIExpression()), !dbg !1608
  store ptr null, ptr %51, align 8, !dbg !1609, !tbaa !1444
  %53 = icmp eq ptr %52, null, !dbg !1606
  br i1 %53, label %55, label %49, !dbg !1606, !llvm.loop !1610

54:                                               ; preds = %25
  store ptr %6, ptr %27, align 8, !dbg !1612, !tbaa !1444
  br label %55, !dbg !1614

55:                                               ; preds = %49, %5, %54
  %56 = phi ptr [ %0, %54 ], [ %0, %5 ], [ null, %49 ]
  %57 = phi i1 [ false, %54 ], [ false, %5 ], [ true, %49 ]
  store ptr %56, ptr @loop, align 8, !dbg !1615, !tbaa !851
  br label %58, !dbg !1616

58:                                               ; preds = %15, %37, %55, %8, %40, %1
  %59 = phi i1 [ false, %1 ], [ true, %40 ], [ false, %8 ], [ %57, %55 ], [ true, %37 ], [ false, %15 ], !dbg !1569
  ret i1 %59, !dbg !1616
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #14 !dbg !1617 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1619, metadata !DIExpression()), !dbg !1620
  store ptr %0, ptr @file_name, align 8, !dbg !1621, !tbaa !851
  ret void, !dbg !1622
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !1623 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1627, metadata !DIExpression()), !dbg !1628
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1629, !tbaa !1630
  ret void, !dbg !1631
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1632 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1637, !tbaa !851
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1638
  %3 = icmp eq i32 %2, 0, !dbg !1639
  br i1 %3, label %22, label %4, !dbg !1640

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1641, !tbaa !1630, !range !1534, !noundef !859
  %6 = icmp eq i8 %5, 0, !dbg !1641
  br i1 %6, label %11, label %7, !dbg !1642

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1643
  %9 = load i32, ptr %8, align 4, !dbg !1643, !tbaa !914
  %10 = icmp eq i32 %9, 32, !dbg !1644
  br i1 %10, label %22, label %11, !dbg !1645

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1.25, i32 noundef 5) #39, !dbg !1646
  call void @llvm.dbg.value(metadata ptr %12, metadata !1634, metadata !DIExpression()), !dbg !1647
  %13 = load ptr, ptr @file_name, align 8, !dbg !1648, !tbaa !851
  %14 = icmp eq ptr %13, null, !dbg !1648
  %15 = tail call ptr @__errno_location() #42, !dbg !1650
  %16 = load i32, ptr %15, align 4, !dbg !1650, !tbaa !914
  br i1 %14, label %19, label %17, !dbg !1651

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1652
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.26, ptr noundef %18, ptr noundef %12) #39, !dbg !1652
  br label %20, !dbg !1652

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.27, ptr noundef %12) #39, !dbg !1653
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1654, !tbaa !914
  tail call void @_exit(i32 noundef %21) #41, !dbg !1655
  unreachable, !dbg !1655

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1656, !tbaa !851
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1658
  %25 = icmp eq i32 %24, 0, !dbg !1659
  br i1 %25, label %28, label %26, !dbg !1660

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1661, !tbaa !914
  tail call void @_exit(i32 noundef %27) #41, !dbg !1662
  unreachable, !dbg !1662

28:                                               ; preds = %22
  ret void, !dbg !1663
}

; Function Attrs: noreturn
declare !dbg !1664 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !1666 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1670, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i32 %1, metadata !1671, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata ptr %2, metadata !1672, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1673, metadata !DIExpression()), !dbg !1675
  tail call fastcc void @flush_stdout(), !dbg !1676
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1677, !tbaa !851
  %7 = icmp eq ptr %6, null, !dbg !1677
  br i1 %7, label %9, label %8, !dbg !1679

8:                                                ; preds = %4
  tail call void %6() #39, !dbg !1680
  br label %13, !dbg !1680

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1681, !tbaa !851
  %11 = tail call ptr @getprogname() #40, !dbg !1681
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef %11) #39, !dbg !1681
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1683, !tbaa.struct !1684
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1683
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1683
  ret void, !dbg !1685
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1686 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1688, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i32 1, metadata !1690, metadata !DIExpression()), !dbg !1695
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1698
  %2 = icmp slt i32 %1, 0, !dbg !1699
  br i1 %2, label %6, label %3, !dbg !1700

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1701, !tbaa !851
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1701
  br label %6, !dbg !1701

6:                                                ; preds = %3, %0
  ret void, !dbg !1702
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #12 !dbg !1703 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1705, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i32 %1, metadata !1706, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata ptr %2, metadata !1707, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1708, metadata !DIExpression()), !dbg !1710
  %7 = load ptr, ptr @stderr, align 8, !dbg !1711, !tbaa !851
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1712, !noalias !1756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1760
  call void @llvm.dbg.value(metadata ptr %7, metadata !1752, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata ptr %2, metadata !1753, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1754, metadata !DIExpression()), !dbg !1762
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #39, !dbg !1712
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1712, !noalias !1756
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1763, !tbaa !914
  %10 = add i32 %9, 1, !dbg !1763
  store i32 %10, ptr @error_message_count, align 4, !dbg !1763, !tbaa !914
  %11 = icmp eq i32 %1, 0, !dbg !1764
  br i1 %11, label %21, label %12, !dbg !1766

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1767, metadata !DIExpression()), !dbg !1775
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1777
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1771, metadata !DIExpression()), !dbg !1778
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1779
  call void @llvm.dbg.value(metadata ptr %13, metadata !1770, metadata !DIExpression()), !dbg !1775
  %14 = icmp eq ptr %13, null, !dbg !1780
  br i1 %14, label %15, label %17, !dbg !1782

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.29, ptr noundef nonnull @.str.5.30, i32 noundef 5) #39, !dbg !1783
  call void @llvm.dbg.value(metadata ptr %16, metadata !1770, metadata !DIExpression()), !dbg !1775
  br label %17, !dbg !1784

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1775
  call void @llvm.dbg.value(metadata ptr %18, metadata !1770, metadata !DIExpression()), !dbg !1775
  %19 = load ptr, ptr @stderr, align 8, !dbg !1785, !tbaa !851
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.31, ptr noundef %18) #39, !dbg !1785
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1786
  br label %21, !dbg !1787

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1788, !tbaa !851
  call void @llvm.dbg.value(metadata i32 10, metadata !1789, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata ptr %22, metadata !1794, metadata !DIExpression()), !dbg !1795
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1797
  %24 = load ptr, ptr %23, align 8, !dbg !1797, !tbaa !1798
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1797
  %26 = load ptr, ptr %25, align 8, !dbg !1797, !tbaa !1799
  %27 = icmp ult ptr %24, %26, !dbg !1797
  br i1 %27, label %30, label %28, !dbg !1797, !prof !1800

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #39, !dbg !1797
  br label %32, !dbg !1797

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1797
  store ptr %31, ptr %23, align 8, !dbg !1797, !tbaa !1798
  store i8 10, ptr %24, align 1, !dbg !1797, !tbaa !923
  br label %32, !dbg !1797

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1801, !tbaa !851
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #39, !dbg !1801
  %35 = icmp eq i32 %0, 0, !dbg !1802
  br i1 %35, label %37, label %36, !dbg !1804

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #41, !dbg !1805
  unreachable, !dbg !1805

37:                                               ; preds = %32
  ret void, !dbg !1806
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

declare !dbg !1807 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1810 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1813 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1816 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1819 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #12 !dbg !1823 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1827, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i32 %1, metadata !1828, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata ptr %2, metadata !1829, metadata !DIExpression()), !dbg !1831
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !1832
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1830, metadata !DIExpression()), !dbg !1833
  call void @llvm.va_start(ptr nonnull %4), !dbg !1834
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1835, !tbaa.struct !1684
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #45, !dbg !1835
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1835
  call void @llvm.va_end(ptr nonnull %4), !dbg !1836
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !1837
  ret void, !dbg !1837
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !438 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !455, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 %1, metadata !456, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata ptr %2, metadata !457, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 %3, metadata !458, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata ptr %4, metadata !459, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.declare(metadata ptr %5, metadata !460, metadata !DIExpression()), !dbg !1839
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1840, !tbaa !914
  %9 = icmp eq i32 %8, 0, !dbg !1840
  br i1 %9, label %24, label %10, !dbg !1842

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1843, !tbaa !914
  %12 = icmp eq i32 %11, %3, !dbg !1846
  br i1 %12, label %13, label %23, !dbg !1847

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1848, !tbaa !851
  %15 = icmp eq ptr %14, %2, !dbg !1849
  br i1 %15, label %37, label %16, !dbg !1850

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1851
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1852
  br i1 %19, label %20, label %23, !dbg !1852

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1853
  %22 = icmp eq i32 %21, 0, !dbg !1854
  br i1 %22, label %37, label %23, !dbg !1855

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1856, !tbaa !851
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1857, !tbaa !914
  br label %24, !dbg !1858

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1859
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1860, !tbaa !851
  %26 = icmp eq ptr %25, null, !dbg !1860
  br i1 %26, label %28, label %27, !dbg !1862

27:                                               ; preds = %24
  tail call void %25() #39, !dbg !1863
  br label %32, !dbg !1863

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1864, !tbaa !851
  %30 = tail call ptr @getprogname() #40, !dbg !1864
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.34, ptr noundef %30) #39, !dbg !1864
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1866, !tbaa !851
  %34 = icmp eq ptr %2, null, !dbg !1866
  %35 = select i1 %34, ptr @.str.3.35, ptr @.str.2.36, !dbg !1866
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #39, !dbg !1866
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1867
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1867, !tbaa.struct !1684
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1867
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1867
  br label %37, !dbg !1868

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1868
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #12 !dbg !1869 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1873, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i32 %1, metadata !1874, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata ptr %2, metadata !1875, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i32 %3, metadata !1876, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata ptr %4, metadata !1877, metadata !DIExpression()), !dbg !1879
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1880
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1878, metadata !DIExpression()), !dbg !1881
  call void @llvm.va_start(ptr nonnull %6), !dbg !1882
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1883, !tbaa.struct !1684
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #45, !dbg !1883
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1883
  call void @llvm.va_end(ptr nonnull %6), !dbg !1884
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1885
  ret void, !dbg !1885
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 !dbg !1886 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1892, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i64 %1, metadata !1893, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i64 %2, metadata !1894, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i32 %3, metadata !1895, metadata !DIExpression()), !dbg !1896
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #39, !dbg !1897
  ret void, !dbg !1898
}

; Function Attrs: nounwind
declare !dbg !1899 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !1902 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1940, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i32 %1, metadata !1941, metadata !DIExpression()), !dbg !1942
  %3 = icmp eq ptr %0, null, !dbg !1943
  br i1 %3, label %7, label %4, !dbg !1945

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !1946
  call void @llvm.dbg.value(metadata i32 %5, metadata !1892, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 0, metadata !1893, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 0, metadata !1894, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i32 %1, metadata !1895, metadata !DIExpression()), !dbg !1947
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #39, !dbg !1949
  br label %7, !dbg !1950

7:                                                ; preds = %4, %2
  ret void, !dbg !1951
}

; Function Attrs: nofree nounwind
declare !dbg !1952 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #12 !dbg !1955 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1993, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i32 0, metadata !1994, metadata !DIExpression()), !dbg !1997
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !1998
  call void @llvm.dbg.value(metadata i32 %2, metadata !1995, metadata !DIExpression()), !dbg !1997
  %3 = icmp slt i32 %2, 0, !dbg !1999
  br i1 %3, label %4, label %6, !dbg !2001

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2002
  br label %24, !dbg !2003

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !2004
  %8 = icmp eq i32 %7, 0, !dbg !2004
  br i1 %8, label %13, label %9, !dbg !2006

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2007
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !2008
  %12 = icmp eq i64 %11, -1, !dbg !2009
  br i1 %12, label %16, label %13, !dbg !2010

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !2011
  %15 = icmp eq i32 %14, 0, !dbg !2011
  br i1 %15, label %16, label %18, !dbg !2012

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !1994, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i32 0, metadata !1996, metadata !DIExpression()), !dbg !1997
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2013
  call void @llvm.dbg.value(metadata i32 %17, metadata !1996, metadata !DIExpression()), !dbg !1997
  br label %24, !dbg !2014

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !2015
  %20 = load i32, ptr %19, align 4, !dbg !2015, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %20, metadata !1994, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i32 0, metadata !1996, metadata !DIExpression()), !dbg !1997
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2013
  call void @llvm.dbg.value(metadata i32 %21, metadata !1996, metadata !DIExpression()), !dbg !1997
  %22 = icmp eq i32 %20, 0, !dbg !2016
  br i1 %22, label %24, label %23, !dbg !2014

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2018, !tbaa !914
  call void @llvm.dbg.value(metadata i32 -1, metadata !1996, metadata !DIExpression()), !dbg !1997
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
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #12 !dbg !2028 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2066, metadata !DIExpression()), !dbg !2067
  %2 = icmp eq ptr %0, null, !dbg !2068
  br i1 %2, label %6, label %3, !dbg !2070

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !2071
  %5 = icmp eq i32 %4, 0, !dbg !2071
  br i1 %5, label %6, label %8, !dbg !2072

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2073
  br label %16, !dbg !2074

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2075, metadata !DIExpression()), !dbg !2080
  %9 = load i32, ptr %0, align 8, !dbg !2082, !tbaa !1165
  %10 = and i32 %9, 256, !dbg !2084
  %11 = icmp eq i32 %10, 0, !dbg !2084
  br i1 %11, label %14, label %12, !dbg !2085

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !2086
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
  call void @llvm.dbg.value(metadata ptr %0, metadata !2129, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata ptr %1, metadata !2130, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata ptr %2, metadata !2131, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 0, metadata !2132, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 0, metadata !2133, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 0, metadata !2134, metadata !DIExpression()), !dbg !2136
  %4 = tail call i32 @fileno(ptr noundef nonnull %2) #39, !dbg !2137
  switch i32 %4, label %5 [
    i32 2, label %8
    i32 1, label %14
    i32 0, label %57
  ], !dbg !2138

5:                                                ; preds = %3
  %6 = tail call i32 @dup2(i32 noundef 2, i32 noundef 2) #39, !dbg !2139
  %7 = icmp eq i32 %6, 2, !dbg !2142
  br label %8, !dbg !2143

8:                                                ; preds = %3, %5
  %9 = phi i1 [ true, %3 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2134, metadata !DIExpression()), !dbg !2136
  %10 = tail call i32 @dup2(i32 noundef 1, i32 noundef 1) #39, !dbg !2144
  %11 = icmp ne i32 %10, 1, !dbg !2146
  call void @llvm.dbg.value(metadata i8 poison, metadata !2133, metadata !DIExpression()), !dbg !2136
  %12 = tail call i32 @dup2(i32 noundef 0, i32 noundef 0) #39, !dbg !2147
  %13 = icmp eq i32 %12, 0, !dbg !2149
  br i1 %13, label %17, label %18, !dbg !2150

14:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i8 0, metadata !2134, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 poison, metadata !2133, metadata !DIExpression()), !dbg !2136
  %15 = tail call i32 @dup2(i32 noundef 0, i32 noundef 0) #39, !dbg !2147
  %16 = icmp eq i32 %15, 0, !dbg !2149
  br i1 %16, label %57, label %18, !dbg !2150

17:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i8 poison, metadata !2134, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 poison, metadata !2133, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2136
  br i1 %11, label %29, label %40, !dbg !2151

18:                                               ; preds = %14, %8
  %19 = phi i1 [ true, %14 ], [ %9, %8 ]
  %20 = phi i1 [ false, %14 ], [ %11, %8 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2134, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 poison, metadata !2133, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 poison, metadata !2132, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i32 0, metadata !2154, metadata !DIExpression()), !dbg !2160
  %21 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.62, i32 noundef 0) #39, !dbg !2162
  call void @llvm.dbg.value(metadata i32 %21, metadata !2159, metadata !DIExpression()), !dbg !2160
  %22 = icmp slt i32 %21, 1, !dbg !2163
  br i1 %22, label %26, label %23, !dbg !2163

23:                                               ; preds = %18
  %24 = tail call i32 @close(i32 noundef %21) #39, !dbg !2164
  %25 = tail call ptr @__errno_location() #42, !dbg !2169
  store i32 9, ptr %25, align 4, !dbg !2170, !tbaa !914
  call void @llvm.dbg.value(metadata ptr null, metadata !2131, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i32 %69, metadata !2135, metadata !DIExpression()), !dbg !2136
  br i1 %19, label %77, label %70, !dbg !2171

26:                                               ; preds = %18
  %27 = icmp eq i32 %21, 0, !dbg !2172
  br i1 %27, label %28, label %64, !dbg !2173

28:                                               ; preds = %26
  br i1 %20, label %29, label %40, !dbg !2151

29:                                               ; preds = %17, %28
  %30 = phi i1 [ %9, %17 ], [ %19, %28 ]
  %31 = phi i1 [ false, %17 ], [ true, %28 ]
  call void @llvm.dbg.value(metadata i32 1, metadata !2154, metadata !DIExpression()), !dbg !2174
  %32 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.62, i32 noundef 0) #39, !dbg !2176
  call void @llvm.dbg.value(metadata i32 %32, metadata !2159, metadata !DIExpression()), !dbg !2174
  %33 = icmp eq i32 %32, 1, !dbg !2177
  %34 = icmp slt i32 %32, 0
  %35 = or i1 %34, %33, !dbg !2178
  br i1 %35, label %39, label %36, !dbg !2178

36:                                               ; preds = %29
  %37 = tail call i32 @close(i32 noundef %32) #39, !dbg !2179
  %38 = tail call ptr @__errno_location() #42, !dbg !2180
  store i32 9, ptr %38, align 4, !dbg !2181, !tbaa !914
  br label %39, !dbg !2182

39:                                               ; preds = %29, %36
  br i1 %33, label %40, label %64, !dbg !2183

40:                                               ; preds = %17, %39, %28
  %41 = phi i1 [ %9, %17 ], [ %30, %39 ], [ %19, %28 ]
  %42 = phi i1 [ false, %17 ], [ %31, %39 ], [ true, %28 ]
  %43 = phi i1 [ false, %17 ], [ true, %39 ], [ false, %28 ]
  br i1 %41, label %57, label %44, !dbg !2184

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 2, metadata !2154, metadata !DIExpression()), !dbg !2186
  %45 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.62, i32 noundef 0) #39, !dbg !2188
  call void @llvm.dbg.value(metadata i32 %45, metadata !2159, metadata !DIExpression()), !dbg !2186
  %46 = icmp eq i32 %45, 2, !dbg !2189
  %47 = icmp slt i32 %45, 0
  %48 = or i1 %47, %46, !dbg !2190
  br i1 %48, label %52, label %49, !dbg !2190

49:                                               ; preds = %44
  %50 = tail call i32 @close(i32 noundef %45) #39, !dbg !2191
  %51 = tail call ptr @__errno_location() #42, !dbg !2192
  store i32 9, ptr %51, align 4, !dbg !2193, !tbaa !914
  br label %52, !dbg !2194

52:                                               ; preds = %44, %49
  br i1 %46, label %57, label %53, !dbg !2195

53:                                               ; preds = %52
  call void @llvm.dbg.value(metadata ptr null, metadata !2131, metadata !DIExpression()), !dbg !2136
  %54 = tail call ptr @__errno_location() #42, !dbg !2196
  %55 = load i32, ptr %54, align 4, !dbg !2196, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %55, metadata !2135, metadata !DIExpression()), !dbg !2136
  %56 = tail call i32 @close(i32 noundef 2) #39, !dbg !2197
  br i1 %43, label %83, label %89, !dbg !2199

57:                                               ; preds = %14, %3, %52, %40
  %58 = phi i1 [ true, %52 ], [ false, %40 ], [ false, %3 ], [ false, %14 ]
  %59 = phi i1 [ %43, %52 ], [ %43, %40 ], [ false, %3 ], [ false, %14 ]
  %60 = phi i1 [ %42, %52 ], [ %42, %40 ], [ false, %3 ], [ false, %14 ]
  %61 = tail call ptr @freopen(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #39, !dbg !2200
  call void @llvm.dbg.value(metadata ptr null, metadata !2131, metadata !DIExpression()), !dbg !2136
  %62 = tail call ptr @__errno_location() #42, !dbg !2196
  %63 = load i32, ptr %62, align 4, !dbg !2196, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %69, metadata !2135, metadata !DIExpression()), !dbg !2136
  br i1 %58, label %70, label %77, !dbg !2171

64:                                               ; preds = %39, %26
  %65 = phi i1 [ %19, %26 ], [ %30, %39 ]
  %66 = phi i1 [ %20, %26 ], [ true, %39 ]
  %67 = phi i1 [ true, %26 ], [ %31, %39 ]
  call void @llvm.dbg.value(metadata ptr null, metadata !2131, metadata !DIExpression()), !dbg !2136
  %68 = tail call ptr @__errno_location() #42, !dbg !2196
  %69 = load i32, ptr %68, align 4, !dbg !2196, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %69, metadata !2135, metadata !DIExpression()), !dbg !2136
  br i1 %65, label %77, label %70, !dbg !2171

70:                                               ; preds = %23, %57, %64
  %71 = phi i32 [ %69, %64 ], [ %63, %57 ], [ 9, %23 ]
  %72 = phi ptr [ %68, %64 ], [ %62, %57 ], [ %25, %23 ]
  %73 = phi ptr [ null, %64 ], [ %61, %57 ], [ null, %23 ]
  %74 = phi i1 [ %67, %64 ], [ %60, %57 ], [ true, %23 ]
  %75 = phi i1 [ %66, %64 ], [ %59, %57 ], [ %20, %23 ]
  %76 = tail call i32 @close(i32 noundef 2) #39, !dbg !2197
  br i1 %75, label %83, label %89, !dbg !2199

77:                                               ; preds = %23, %57, %64
  %78 = phi i32 [ %69, %64 ], [ %63, %57 ], [ 9, %23 ]
  %79 = phi ptr [ %68, %64 ], [ %62, %57 ], [ %25, %23 ]
  %80 = phi ptr [ null, %64 ], [ %61, %57 ], [ null, %23 ]
  %81 = phi i1 [ %67, %64 ], [ %60, %57 ], [ true, %23 ]
  %82 = phi i1 [ %66, %64 ], [ %59, %57 ], [ %20, %23 ]
  br i1 %82, label %83, label %89, !dbg !2199

83:                                               ; preds = %53, %70, %77
  %84 = phi i1 [ %74, %70 ], [ %81, %77 ], [ %42, %53 ]
  %85 = phi ptr [ %73, %70 ], [ %80, %77 ], [ null, %53 ]
  %86 = phi ptr [ %72, %70 ], [ %79, %77 ], [ %54, %53 ]
  %87 = phi i32 [ %71, %70 ], [ %78, %77 ], [ %55, %53 ]
  %88 = tail call i32 @close(i32 noundef 1) #39, !dbg !2201
  br i1 %84, label %94, label %99, !dbg !2203

89:                                               ; preds = %53, %70, %77
  %90 = phi i1 [ %74, %70 ], [ %81, %77 ], [ %42, %53 ]
  %91 = phi ptr [ %73, %70 ], [ %80, %77 ], [ null, %53 ]
  %92 = phi ptr [ %72, %70 ], [ %79, %77 ], [ %54, %53 ]
  %93 = phi i32 [ %71, %70 ], [ %78, %77 ], [ %55, %53 ]
  br i1 %90, label %94, label %99, !dbg !2203

94:                                               ; preds = %83, %89
  %95 = phi i32 [ %87, %83 ], [ %93, %89 ]
  %96 = phi ptr [ %86, %83 ], [ %92, %89 ]
  %97 = phi ptr [ %85, %83 ], [ %91, %89 ]
  %98 = tail call i32 @close(i32 noundef 0) #39, !dbg !2204
  br label %99, !dbg !2204

99:                                               ; preds = %83, %94, %89
  %100 = phi i32 [ %87, %83 ], [ %95, %94 ], [ %93, %89 ]
  %101 = phi ptr [ %86, %83 ], [ %96, %94 ], [ %92, %89 ]
  %102 = phi ptr [ %85, %83 ], [ %97, %94 ], [ %91, %89 ]
  %103 = icmp eq ptr %102, null, !dbg !2206
  br i1 %103, label %104, label %105, !dbg !2208

104:                                              ; preds = %99
  store i32 %100, ptr %101, align 4, !dbg !2209, !tbaa !914
  br label %105, !dbg !2210

105:                                              ; preds = %104, %99
  ret ptr %102, !dbg !2211
}

; Function Attrs: nounwind
declare !dbg !2212 i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !2215 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #19

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
  %11 = load ptr, ptr %10, align 8, !dbg !2274, !tbaa !1798
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
  %24 = load i32, ptr %0, align 8, !dbg !2289, !tbaa !1165
  %25 = and i32 %24, -17, !dbg !2289
  store i32 %25, ptr %0, align 8, !dbg !2289, !tbaa !1165
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
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !2300 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2303, !tbaa !851
  ret ptr %1, !dbg !2304
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !2305 {
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
  store ptr %20, ptr @program_name, align 8, !dbg !2335, !tbaa !851
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2336, !tbaa !851
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2337, !tbaa !851
  ret void, !dbg !2338
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2339 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #12 !dbg !500 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !507, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata ptr %1, metadata !508, metadata !DIExpression()), !dbg !2340
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !2341
  call void @llvm.dbg.value(metadata ptr %5, metadata !509, metadata !DIExpression()), !dbg !2340
  %6 = icmp eq ptr %5, %0, !dbg !2342
  br i1 %6, label %7, label %14, !dbg !2344

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !2345
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !2346
  call void @llvm.dbg.declare(metadata ptr %4, metadata !515, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %4, metadata !2348, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata ptr %4, metadata !2357, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 0, metadata !2363, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 8, metadata !2364, metadata !DIExpression()), !dbg !2365
  store i64 0, ptr %4, align 8, !dbg !2367
  call void @llvm.dbg.value(metadata ptr %3, metadata !510, metadata !DIExpression(DW_OP_deref)), !dbg !2340
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !2368
  %9 = icmp eq i64 %8, 2, !dbg !2370
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !510, metadata !DIExpression()), !dbg !2340
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
  %3 = load i32, ptr %2, align 4, !dbg !2388, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %3, metadata !2385, metadata !DIExpression()), !dbg !2387
  %4 = icmp eq ptr %0, null, !dbg !2389
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2389
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #46, !dbg !2390
  call void @llvm.dbg.value(metadata ptr %6, metadata !2386, metadata !DIExpression()), !dbg !2387
  store i32 %3, ptr %2, align 4, !dbg !2391, !tbaa !914
  ret ptr %6, !dbg !2392
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !2393 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2399, metadata !DIExpression()), !dbg !2400
  %2 = icmp eq ptr %0, null, !dbg !2401
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2401
  %4 = load i32, ptr %3, align 8, !dbg !2402, !tbaa !2403
  ret i32 %4, !dbg !2405
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2406 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2410, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 %1, metadata !2411, metadata !DIExpression()), !dbg !2412
  %3 = icmp eq ptr %0, null, !dbg !2413
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2413
  store i32 %1, ptr %4, align 8, !dbg !2414, !tbaa !2403
  ret void, !dbg !2415
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #13 !dbg !2416 {
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
  %12 = load i32, ptr %9, align 4, !dbg !2434, !tbaa !914
  %13 = lshr i32 %12, %11, !dbg !2435
  %14 = and i32 %13, 1, !dbg !2436
  call void @llvm.dbg.value(metadata i32 %14, metadata !2427, metadata !DIExpression()), !dbg !2428
  %15 = xor i32 %13, %2, !dbg !2437
  %16 = and i32 %15, 1, !dbg !2437
  %17 = shl nuw i32 %16, %11, !dbg !2438
  %18 = xor i32 %17, %12, !dbg !2439
  store i32 %18, ptr %9, align 4, !dbg !2439, !tbaa !914
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
  %9 = load i32, ptr %8, align 4, !dbg !2494, !tbaa !914
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
  store i32 %9, ptr %8, align 4, !dbg !2501, !tbaa !914
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
  call void @llvm.dbg.value(metadata i32 %5, metadata !2524, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2571
  call void @llvm.dbg.value(metadata i8 0, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 1, metadata !2526, metadata !DIExpression()), !dbg !2571
  %18 = and i32 %5, 2, !dbg !2574
  %19 = icmp ne i32 %18, 0, !dbg !2574
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2574

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2575
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2576
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2577
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2510, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2526, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2524, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2523, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %34, metadata !2522, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %33, metadata !2521, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %32, metadata !2520, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 0, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %31, metadata !2512, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %30, metadata !2517, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %29, metadata !2516, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %28, metadata !2513, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.label(metadata !2564), !dbg !2578
  call void @llvm.dbg.value(metadata i8 0, metadata !2527, metadata !DIExpression()), !dbg !2571
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
  ], !dbg !2579

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2524, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 5, metadata !2513, metadata !DIExpression()), !dbg !2571
  br label %102, !dbg !2580

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2524, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 5, metadata !2513, metadata !DIExpression()), !dbg !2571
  br i1 %36, label %102, label %42, !dbg !2580

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2581
  br i1 %43, label %102, label %44, !dbg !2585

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2581, !tbaa !923
  br label %102, !dbg !2581

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.85, metadata !599, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i32 %28, metadata !600, metadata !DIExpression()), !dbg !2586
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.86, ptr noundef nonnull @.str.11.85, i32 noundef 5) #39, !dbg !2590
  call void @llvm.dbg.value(metadata ptr %46, metadata !601, metadata !DIExpression()), !dbg !2586
  %47 = icmp eq ptr %46, @.str.11.85, !dbg !2591
  br i1 %47, label %48, label %57, !dbg !2593

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2594
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2595
  call void @llvm.dbg.declare(metadata ptr %13, metadata !603, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata ptr %13, metadata !2597, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata ptr %13, metadata !2605, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 0, metadata !2608, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 8, metadata !2609, metadata !DIExpression()), !dbg !2610
  store i64 0, ptr %13, align 8, !dbg !2612
  call void @llvm.dbg.value(metadata ptr %12, metadata !602, metadata !DIExpression(DW_OP_deref)), !dbg !2586
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2613
  %50 = icmp eq i64 %49, 3, !dbg !2615
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !602, metadata !DIExpression()), !dbg !2586
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2616
  %54 = icmp eq i32 %28, 9, !dbg !2616
  %55 = select i1 %54, ptr @.str.10.87, ptr @.str.12.88, !dbg !2616
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2616
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2617
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2617
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2586
  call void @llvm.dbg.value(metadata ptr %58, metadata !2516, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr @.str.12.88, metadata !599, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i32 %28, metadata !600, metadata !DIExpression()), !dbg !2618
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.86, ptr noundef nonnull @.str.12.88, i32 noundef 5) #39, !dbg !2620
  call void @llvm.dbg.value(metadata ptr %59, metadata !601, metadata !DIExpression()), !dbg !2618
  %60 = icmp eq ptr %59, @.str.12.88, !dbg !2621
  br i1 %60, label %61, label %70, !dbg !2622

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2623
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2624
  call void @llvm.dbg.declare(metadata ptr %11, metadata !603, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata ptr %11, metadata !2597, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata ptr %11, metadata !2605, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 0, metadata !2608, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i64 8, metadata !2609, metadata !DIExpression()), !dbg !2628
  store i64 0, ptr %11, align 8, !dbg !2630
  call void @llvm.dbg.value(metadata ptr %10, metadata !602, metadata !DIExpression(DW_OP_deref)), !dbg !2618
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2631
  %63 = icmp eq i64 %62, 3, !dbg !2632
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !602, metadata !DIExpression()), !dbg !2618
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2633
  %67 = icmp eq i32 %28, 9, !dbg !2633
  %68 = select i1 %67, ptr @.str.10.87, ptr @.str.12.88, !dbg !2633
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2633
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2634
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2634
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2517, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %71, metadata !2516, metadata !DIExpression()), !dbg !2571
  br i1 %36, label %88, label %73, !dbg !2635

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2528, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i64 0, metadata !2519, metadata !DIExpression()), !dbg !2571
  %74 = load i8, ptr %71, align 1, !dbg !2637, !tbaa !923
  %75 = icmp eq i8 %74, 0, !dbg !2639
  br i1 %75, label %88, label %76, !dbg !2639

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2528, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i64 %79, metadata !2519, metadata !DIExpression()), !dbg !2571
  %80 = icmp ult i64 %79, %39, !dbg !2640
  br i1 %80, label %81, label %83, !dbg !2643

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2640
  store i8 %77, ptr %82, align 1, !dbg !2640, !tbaa !923
  br label %83, !dbg !2640

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2643
  call void @llvm.dbg.value(metadata i64 %84, metadata !2519, metadata !DIExpression()), !dbg !2571
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2644
  call void @llvm.dbg.value(metadata ptr %85, metadata !2528, metadata !DIExpression()), !dbg !2636
  %86 = load i8, ptr %85, align 1, !dbg !2637, !tbaa !923
  %87 = icmp eq i8 %86, 0, !dbg !2639
  br i1 %87, label %88, label %76, !dbg !2639, !llvm.loop !2645

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2647
  call void @llvm.dbg.value(metadata i64 %89, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 1, metadata !2523, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %72, metadata !2521, metadata !DIExpression()), !dbg !2571
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #40, !dbg !2648
  call void @llvm.dbg.value(metadata i64 %90, metadata !2522, metadata !DIExpression()), !dbg !2571
  br label %102, !dbg !2649

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2523, metadata !DIExpression()), !dbg !2571
  br label %93, !dbg !2650

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2524, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2523, metadata !DIExpression()), !dbg !2571
  br i1 %36, label %102, label %96, !dbg !2651

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2524, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2523, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 2, metadata !2513, metadata !DIExpression()), !dbg !2571
  br label %102, !dbg !2652

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2524, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2523, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 2, metadata !2513, metadata !DIExpression()), !dbg !2571
  br i1 %36, label %102, label %96, !dbg !2652

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2653
  br i1 %98, label %102, label %99, !dbg !2657

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2653, !tbaa !923
  br label %102, !dbg !2653

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2524, metadata !DIExpression()), !dbg !2571
  br label %102, !dbg !2658

101:                                              ; preds = %27
  call void @abort() #41, !dbg !2659
  unreachable, !dbg !2659

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2647
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.87, %42 ], [ @.str.10.87, %44 ], [ @.str.10.87, %41 ], [ %33, %27 ], [ @.str.12.88, %96 ], [ @.str.12.88, %99 ], [ @.str.12.88, %95 ], [ @.str.10.87, %40 ], [ @.str.12.88, %93 ], [ @.str.12.88, %92 ], !dbg !2571
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2571
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2524, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2523, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %108, metadata !2522, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %107, metadata !2521, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %106, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %105, metadata !2517, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %104, metadata !2516, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %103, metadata !2513, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 0, metadata !2533, metadata !DIExpression()), !dbg !2660
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
  br label %122, !dbg !2661

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2647
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2575
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2662
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2510, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %129, metadata !2533, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2526, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %125, metadata !2520, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %124, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %123, metadata !2512, metadata !DIExpression()), !dbg !2571
  %131 = icmp eq i64 %123, -1, !dbg !2663
  br i1 %131, label %132, label %136, !dbg !2664

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2665
  %134 = load i8, ptr %133, align 1, !dbg !2665, !tbaa !923
  %135 = icmp eq i8 %134, 0, !dbg !2666
  br i1 %135, label %579, label %138, !dbg !2667

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2668
  br i1 %137, label %579, label %138, !dbg !2667

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2535, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 0, metadata !2538, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 0, metadata !2539, metadata !DIExpression()), !dbg !2669
  br i1 %114, label %139, label %152, !dbg !2670

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2672
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2673
  br i1 %141, label %142, label %144, !dbg !2673

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2674
  call void @llvm.dbg.value(metadata i64 %143, metadata !2512, metadata !DIExpression()), !dbg !2571
  br label %144, !dbg !2675

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2675
  call void @llvm.dbg.value(metadata i64 %145, metadata !2512, metadata !DIExpression()), !dbg !2571
  %146 = icmp ugt i64 %140, %145, !dbg !2676
  br i1 %146, label %152, label %147, !dbg !2677

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2678
  call void @llvm.dbg.value(metadata ptr %148, metadata !2679, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %107, metadata !2682, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i64 %108, metadata !2683, metadata !DIExpression()), !dbg !2684
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2686
  %150 = icmp eq i32 %149, 0, !dbg !2687
  %151 = and i1 %150, %110, !dbg !2688
  br i1 %151, label %630, label %152, !dbg !2688

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2535, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i64 %153, metadata !2512, metadata !DIExpression()), !dbg !2571
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2689
  %156 = load i8, ptr %155, align 1, !dbg !2689, !tbaa !923
  call void @llvm.dbg.value(metadata i8 %156, metadata !2540, metadata !DIExpression()), !dbg !2669
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
  ], !dbg !2690

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2691

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2692

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2538, metadata !DIExpression()), !dbg !2669
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2696
  br i1 %160, label %177, label %161, !dbg !2696

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2698
  br i1 %162, label %163, label %165, !dbg !2702

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2698
  store i8 39, ptr %164, align 1, !dbg !2698, !tbaa !923
  br label %165, !dbg !2698

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2702
  call void @llvm.dbg.value(metadata i64 %166, metadata !2519, metadata !DIExpression()), !dbg !2571
  %167 = icmp ult i64 %166, %130, !dbg !2703
  br i1 %167, label %168, label %170, !dbg !2706

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2703
  store i8 36, ptr %169, align 1, !dbg !2703, !tbaa !923
  br label %170, !dbg !2703

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2706
  call void @llvm.dbg.value(metadata i64 %171, metadata !2519, metadata !DIExpression()), !dbg !2571
  %172 = icmp ult i64 %171, %130, !dbg !2707
  br i1 %172, label %173, label %175, !dbg !2710

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2707
  store i8 39, ptr %174, align 1, !dbg !2707, !tbaa !923
  br label %175, !dbg !2707

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2710
  call void @llvm.dbg.value(metadata i64 %176, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 1, metadata !2527, metadata !DIExpression()), !dbg !2571
  br label %177, !dbg !2711

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2571
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %178, metadata !2519, metadata !DIExpression()), !dbg !2571
  %180 = icmp ult i64 %178, %130, !dbg !2712
  br i1 %180, label %181, label %183, !dbg !2715

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2712
  store i8 92, ptr %182, align 1, !dbg !2712, !tbaa !923
  br label %183, !dbg !2712

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2715
  call void @llvm.dbg.value(metadata i64 %184, metadata !2519, metadata !DIExpression()), !dbg !2571
  br i1 %111, label %185, label %482, !dbg !2716

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2718
  %187 = icmp ult i64 %186, %153, !dbg !2719
  br i1 %187, label %188, label %439, !dbg !2720

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2721
  %190 = load i8, ptr %189, align 1, !dbg !2721, !tbaa !923
  %191 = add i8 %190, -48, !dbg !2722
  %192 = icmp ult i8 %191, 10, !dbg !2722
  br i1 %192, label %193, label %439, !dbg !2722

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2723
  br i1 %194, label %195, label %197, !dbg !2727

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2723
  store i8 48, ptr %196, align 1, !dbg !2723, !tbaa !923
  br label %197, !dbg !2723

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %198, metadata !2519, metadata !DIExpression()), !dbg !2571
  %199 = icmp ult i64 %198, %130, !dbg !2728
  br i1 %199, label %200, label %202, !dbg !2731

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2728
  store i8 48, ptr %201, align 1, !dbg !2728, !tbaa !923
  br label %202, !dbg !2728

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2731
  call void @llvm.dbg.value(metadata i64 %203, metadata !2519, metadata !DIExpression()), !dbg !2571
  br label %439, !dbg !2732

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2733

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2734

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2735

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2737

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2739
  %210 = icmp ult i64 %209, %153, !dbg !2740
  br i1 %210, label %211, label %439, !dbg !2741

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2742
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2743
  %214 = load i8, ptr %213, align 1, !dbg !2743, !tbaa !923
  %215 = icmp eq i8 %214, 63, !dbg !2744
  br i1 %215, label %216, label %439, !dbg !2745

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2746
  %218 = load i8, ptr %217, align 1, !dbg !2746, !tbaa !923
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
  ], !dbg !2747

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2748

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2540, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i64 %209, metadata !2533, metadata !DIExpression()), !dbg !2660
  %221 = icmp ult i64 %124, %130, !dbg !2750
  br i1 %221, label %222, label %224, !dbg !2753

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2750
  store i8 63, ptr %223, align 1, !dbg !2750, !tbaa !923
  br label %224, !dbg !2750

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2753
  call void @llvm.dbg.value(metadata i64 %225, metadata !2519, metadata !DIExpression()), !dbg !2571
  %226 = icmp ult i64 %225, %130, !dbg !2754
  br i1 %226, label %227, label %229, !dbg !2757

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2754
  store i8 34, ptr %228, align 1, !dbg !2754, !tbaa !923
  br label %229, !dbg !2754

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2757
  call void @llvm.dbg.value(metadata i64 %230, metadata !2519, metadata !DIExpression()), !dbg !2571
  %231 = icmp ult i64 %230, %130, !dbg !2758
  br i1 %231, label %232, label %234, !dbg !2761

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2758
  store i8 34, ptr %233, align 1, !dbg !2758, !tbaa !923
  br label %234, !dbg !2758

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %235, metadata !2519, metadata !DIExpression()), !dbg !2571
  %236 = icmp ult i64 %235, %130, !dbg !2762
  br i1 %236, label %237, label %239, !dbg !2765

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2762
  store i8 63, ptr %238, align 1, !dbg !2762, !tbaa !923
  br label %239, !dbg !2762

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2765
  call void @llvm.dbg.value(metadata i64 %240, metadata !2519, metadata !DIExpression()), !dbg !2571
  br label %439, !dbg !2766

241:                                              ; preds = %152
  br label %251, !dbg !2767

242:                                              ; preds = %152
  br label %251, !dbg !2768

243:                                              ; preds = %152
  br label %249, !dbg !2769

244:                                              ; preds = %152
  br label %249, !dbg !2770

245:                                              ; preds = %152
  br label %251, !dbg !2771

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2772

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2773

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2776

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2778
  call void @llvm.dbg.label(metadata !2565), !dbg !2779
  br i1 %119, label %621, label %251, !dbg !2780

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2778
  call void @llvm.dbg.label(metadata !2567), !dbg !2782
  br i1 %109, label %493, label %450, !dbg !2783

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2784

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2785, !tbaa !923
  %256 = icmp eq i8 %255, 0, !dbg !2787
  br i1 %256, label %257, label %439, !dbg !2788

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2789
  br i1 %258, label %259, label %439, !dbg !2791

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2539, metadata !DIExpression()), !dbg !2669
  br label %260, !dbg !2792

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2539, metadata !DIExpression()), !dbg !2669
  br i1 %116, label %262, label %439, !dbg !2793

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2795

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 1, metadata !2539, metadata !DIExpression()), !dbg !2669
  br i1 %116, label %264, label %439, !dbg !2796

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2797

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2800
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2802
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2802
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2802
  call void @llvm.dbg.value(metadata i64 %270, metadata !2510, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %269, metadata !2520, metadata !DIExpression()), !dbg !2571
  %271 = icmp ult i64 %124, %270, !dbg !2803
  br i1 %271, label %272, label %274, !dbg !2806

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2803
  store i8 39, ptr %273, align 1, !dbg !2803, !tbaa !923
  br label %274, !dbg !2803

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2806
  call void @llvm.dbg.value(metadata i64 %275, metadata !2519, metadata !DIExpression()), !dbg !2571
  %276 = icmp ult i64 %275, %270, !dbg !2807
  br i1 %276, label %277, label %279, !dbg !2810

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2807
  store i8 92, ptr %278, align 1, !dbg !2807, !tbaa !923
  br label %279, !dbg !2807

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2810
  call void @llvm.dbg.value(metadata i64 %280, metadata !2519, metadata !DIExpression()), !dbg !2571
  %281 = icmp ult i64 %280, %270, !dbg !2811
  br i1 %281, label %282, label %284, !dbg !2814

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2811
  store i8 39, ptr %283, align 1, !dbg !2811, !tbaa !923
  br label %284, !dbg !2811

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2814
  call void @llvm.dbg.value(metadata i64 %285, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 0, metadata !2527, metadata !DIExpression()), !dbg !2571
  br label %439, !dbg !2815

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2816

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2541, metadata !DIExpression()), !dbg !2817
  %288 = tail call ptr @__ctype_b_loc() #42, !dbg !2818
  %289 = load ptr, ptr %288, align 8, !dbg !2818, !tbaa !851
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2818
  %292 = load i16, ptr %291, align 2, !dbg !2818, !tbaa !955
  %293 = and i16 %292, 16384, !dbg !2818
  %294 = icmp ne i16 %293, 0, !dbg !2820
  call void @llvm.dbg.value(metadata i1 %294, metadata !2544, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2817
  br label %337, !dbg !2821

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2822
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2545, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata ptr %14, metadata !2597, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata ptr %14, metadata !2605, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i32 0, metadata !2608, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 8, metadata !2609, metadata !DIExpression()), !dbg !2826
  store i64 0, ptr %14, align 8, !dbg !2828
  call void @llvm.dbg.value(metadata i64 0, metadata !2541, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8 1, metadata !2544, metadata !DIExpression()), !dbg !2817
  %296 = icmp eq i64 %153, -1, !dbg !2829
  br i1 %296, label %297, label %299, !dbg !2831

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2832
  call void @llvm.dbg.value(metadata i64 %298, metadata !2512, metadata !DIExpression()), !dbg !2571
  br label %299, !dbg !2833

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2669
  call void @llvm.dbg.value(metadata i64 %300, metadata !2512, metadata !DIExpression()), !dbg !2571
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2834
  %301 = sub i64 %300, %129, !dbg !2835
  call void @llvm.dbg.value(metadata ptr %15, metadata !2548, metadata !DIExpression(DW_OP_deref)), !dbg !2836
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #39, !dbg !2837
  call void @llvm.dbg.value(metadata i64 %302, metadata !2552, metadata !DIExpression()), !dbg !2836
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2838

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2541, metadata !DIExpression()), !dbg !2817
  %304 = icmp ugt i64 %300, %129, !dbg !2839
  br i1 %304, label %306, label %332, !dbg !2841

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2544, metadata !DIExpression()), !dbg !2817
  br label %332, !dbg !2842

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2541, metadata !DIExpression()), !dbg !2817
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2844
  %310 = load i8, ptr %309, align 1, !dbg !2844, !tbaa !923
  %311 = icmp eq i8 %310, 0, !dbg !2841
  br i1 %311, label %332, label %312, !dbg !2845

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2846
  call void @llvm.dbg.value(metadata i64 %313, metadata !2541, metadata !DIExpression()), !dbg !2817
  %314 = add i64 %313, %129, !dbg !2847
  %315 = icmp eq i64 %313, %301, !dbg !2839
  br i1 %315, label %332, label %306, !dbg !2841, !llvm.loop !2848

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2849
  %319 = and i1 %318, %110, !dbg !2849
  call void @llvm.dbg.value(metadata i64 1, metadata !2553, metadata !DIExpression()), !dbg !2850
  br i1 %319, label %320, label %328, !dbg !2849

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2553, metadata !DIExpression()), !dbg !2850
  %322 = add i64 %321, %129, !dbg !2851
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2853
  %324 = load i8, ptr %323, align 1, !dbg !2853, !tbaa !923
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2854

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2855
  call void @llvm.dbg.value(metadata i64 %326, metadata !2553, metadata !DIExpression()), !dbg !2850
  %327 = icmp eq i64 %326, %302, !dbg !2856
  br i1 %327, label %328, label %320, !dbg !2857, !llvm.loop !2858

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2860, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %329, metadata !2548, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i32 %329, metadata !2862, metadata !DIExpression()), !dbg !2870
  %330 = call i32 @iswprint(i32 noundef %329) #39, !dbg !2872
  %331 = icmp ne i32 %330, 0, !dbg !2873
  call void @llvm.dbg.value(metadata i8 poison, metadata !2544, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i64 %302, metadata !2541, metadata !DIExpression()), !dbg !2817
  br label %332, !dbg !2874

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2544, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i64 %333, metadata !2541, metadata !DIExpression()), !dbg !2817
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2875
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2876
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2544, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i64 0, metadata !2541, metadata !DIExpression()), !dbg !2817
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2875
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2876
  call void @llvm.dbg.label(metadata !2570), !dbg !2877
  %336 = select i1 %109, i32 4, i32 2, !dbg !2878
  br label %626, !dbg !2878

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2669
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2880
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2544, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i64 %339, metadata !2541, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i64 %338, metadata !2512, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i1 %340, metadata !2539, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2669
  %341 = icmp ult i64 %339, 2, !dbg !2881
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2882
  br i1 %343, label %439, label %344, !dbg !2882

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %345, metadata !2561, metadata !DIExpression()), !dbg !2884
  br label %346, !dbg !2885

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2571
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2660
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2886
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2669
  call void @llvm.dbg.value(metadata i8 %352, metadata !2540, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 %351, metadata !2538, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 poison, metadata !2535, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i64 %349, metadata !2533, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %347, metadata !2519, metadata !DIExpression()), !dbg !2571
  br i1 %342, label %397, label %353, !dbg !2887

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2892

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2538, metadata !DIExpression()), !dbg !2669
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2895
  br i1 %355, label %372, label %356, !dbg !2895

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2897
  br i1 %357, label %358, label %360, !dbg !2901

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2897
  store i8 39, ptr %359, align 1, !dbg !2897, !tbaa !923
  br label %360, !dbg !2897

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2901
  call void @llvm.dbg.value(metadata i64 %361, metadata !2519, metadata !DIExpression()), !dbg !2571
  %362 = icmp ult i64 %361, %130, !dbg !2902
  br i1 %362, label %363, label %365, !dbg !2905

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2902
  store i8 36, ptr %364, align 1, !dbg !2902, !tbaa !923
  br label %365, !dbg !2902

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2905
  call void @llvm.dbg.value(metadata i64 %366, metadata !2519, metadata !DIExpression()), !dbg !2571
  %367 = icmp ult i64 %366, %130, !dbg !2906
  br i1 %367, label %368, label %370, !dbg !2909

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2906
  store i8 39, ptr %369, align 1, !dbg !2906, !tbaa !923
  br label %370, !dbg !2906

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %371, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 1, metadata !2527, metadata !DIExpression()), !dbg !2571
  br label %372, !dbg !2910

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2571
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %373, metadata !2519, metadata !DIExpression()), !dbg !2571
  %375 = icmp ult i64 %373, %130, !dbg !2911
  br i1 %375, label %376, label %378, !dbg !2914

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2911
  store i8 92, ptr %377, align 1, !dbg !2911, !tbaa !923
  br label %378, !dbg !2911

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2914
  call void @llvm.dbg.value(metadata i64 %379, metadata !2519, metadata !DIExpression()), !dbg !2571
  %380 = icmp ult i64 %379, %130, !dbg !2915
  br i1 %380, label %381, label %385, !dbg !2918

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2915
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2915
  store i8 %383, ptr %384, align 1, !dbg !2915, !tbaa !923
  br label %385, !dbg !2915

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2918
  call void @llvm.dbg.value(metadata i64 %386, metadata !2519, metadata !DIExpression()), !dbg !2571
  %387 = icmp ult i64 %386, %130, !dbg !2919
  br i1 %387, label %388, label %393, !dbg !2922

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2919
  %391 = or i8 %390, 48, !dbg !2919
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2919
  store i8 %391, ptr %392, align 1, !dbg !2919, !tbaa !923
  br label %393, !dbg !2919

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2922
  call void @llvm.dbg.value(metadata i64 %394, metadata !2519, metadata !DIExpression()), !dbg !2571
  %395 = and i8 %352, 7, !dbg !2923
  %396 = or i8 %395, 48, !dbg !2924
  call void @llvm.dbg.value(metadata i8 %396, metadata !2540, metadata !DIExpression()), !dbg !2669
  br label %404, !dbg !2925

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2926

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2927
  br i1 %399, label %400, label %402, !dbg !2932

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2927
  store i8 92, ptr %401, align 1, !dbg !2927, !tbaa !923
  br label %402, !dbg !2927

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2932
  call void @llvm.dbg.value(metadata i64 %403, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 0, metadata !2535, metadata !DIExpression()), !dbg !2669
  br label %404, !dbg !2933

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2571
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2669
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2669
  call void @llvm.dbg.value(metadata i8 %409, metadata !2540, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 %408, metadata !2538, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 poison, metadata !2535, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %405, metadata !2519, metadata !DIExpression()), !dbg !2571
  %410 = add i64 %349, 1, !dbg !2934
  %411 = icmp ugt i64 %345, %410, !dbg !2936
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2937

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2938
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2938
  br i1 %415, label %416, label %427, !dbg !2938

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2941
  br i1 %417, label %418, label %420, !dbg !2945

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2941
  store i8 39, ptr %419, align 1, !dbg !2941, !tbaa !923
  br label %420, !dbg !2941

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2945
  call void @llvm.dbg.value(metadata i64 %421, metadata !2519, metadata !DIExpression()), !dbg !2571
  %422 = icmp ult i64 %421, %130, !dbg !2946
  br i1 %422, label %423, label %425, !dbg !2949

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2946
  store i8 39, ptr %424, align 1, !dbg !2946, !tbaa !923
  br label %425, !dbg !2946

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2949
  call void @llvm.dbg.value(metadata i64 %426, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 0, metadata !2527, metadata !DIExpression()), !dbg !2571
  br label %427, !dbg !2950

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2951
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %428, metadata !2519, metadata !DIExpression()), !dbg !2571
  %430 = icmp ult i64 %428, %130, !dbg !2952
  br i1 %430, label %431, label %433, !dbg !2955

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2952
  store i8 %409, ptr %432, align 1, !dbg !2952, !tbaa !923
  br label %433, !dbg !2952

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2955
  call void @llvm.dbg.value(metadata i64 %434, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %410, metadata !2533, metadata !DIExpression()), !dbg !2660
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2956
  %436 = load i8, ptr %435, align 1, !dbg !2956, !tbaa !923
  call void @llvm.dbg.value(metadata i8 %436, metadata !2540, metadata !DIExpression()), !dbg !2669
  br label %346, !dbg !2957, !llvm.loop !2958

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2540, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i1 %340, metadata !2539, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2669
  call void @llvm.dbg.value(metadata i8 %408, metadata !2538, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 poison, metadata !2535, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i64 %349, metadata !2533, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %405, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %338, metadata !2512, metadata !DIExpression()), !dbg !2571
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2961
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2571
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2575
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2660
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2669
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2510, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %448, metadata !2540, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 poison, metadata !2539, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 poison, metadata !2538, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 poison, metadata !2535, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i64 %445, metadata !2533, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %442, metadata !2520, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %441, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %440, metadata !2512, metadata !DIExpression()), !dbg !2571
  br i1 %112, label %461, label %450, !dbg !2962

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
  br i1 %121, label %462, label %482, !dbg !2964

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2965

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
  %473 = lshr i8 %464, 5, !dbg !2966
  %474 = zext i8 %473 to i64, !dbg !2966
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2967
  %476 = load i32, ptr %475, align 4, !dbg !2967, !tbaa !914
  %477 = and i8 %464, 31, !dbg !2968
  %478 = zext i8 %477 to i32, !dbg !2968
  %479 = shl nuw i32 1, %478, !dbg !2969
  %480 = and i32 %476, %479, !dbg !2969
  %481 = icmp eq i32 %480, 0, !dbg !2969
  br i1 %481, label %482, label %493, !dbg !2970

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
  br i1 %154, label %493, label %529, !dbg !2971

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2961
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2571
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2575
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2972
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2669
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2510, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %501, metadata !2540, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 poison, metadata !2539, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i64 %499, metadata !2533, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %496, metadata !2520, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %495, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %494, metadata !2512, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.label(metadata !2568), !dbg !2973
  br i1 %110, label %621, label %503, !dbg !2974

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2538, metadata !DIExpression()), !dbg !2669
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2976
  br i1 %504, label %521, label %505, !dbg !2976

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2978
  br i1 %506, label %507, label %509, !dbg !2982

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2978
  store i8 39, ptr %508, align 1, !dbg !2978, !tbaa !923
  br label %509, !dbg !2978

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2982
  call void @llvm.dbg.value(metadata i64 %510, metadata !2519, metadata !DIExpression()), !dbg !2571
  %511 = icmp ult i64 %510, %502, !dbg !2983
  br i1 %511, label %512, label %514, !dbg !2986

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2983
  store i8 36, ptr %513, align 1, !dbg !2983, !tbaa !923
  br label %514, !dbg !2983

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2986
  call void @llvm.dbg.value(metadata i64 %515, metadata !2519, metadata !DIExpression()), !dbg !2571
  %516 = icmp ult i64 %515, %502, !dbg !2987
  br i1 %516, label %517, label %519, !dbg !2990

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2987
  store i8 39, ptr %518, align 1, !dbg !2987, !tbaa !923
  br label %519, !dbg !2987

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2990
  call void @llvm.dbg.value(metadata i64 %520, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 1, metadata !2527, metadata !DIExpression()), !dbg !2571
  br label %521, !dbg !2991

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2669
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %522, metadata !2519, metadata !DIExpression()), !dbg !2571
  %524 = icmp ult i64 %522, %502, !dbg !2992
  br i1 %524, label %525, label %527, !dbg !2995

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2992
  store i8 92, ptr %526, align 1, !dbg !2992, !tbaa !923
  br label %527, !dbg !2992

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2995
  call void @llvm.dbg.value(metadata i64 %502, metadata !2510, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %501, metadata !2540, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 poison, metadata !2539, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 poison, metadata !2538, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i64 %499, metadata !2533, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %496, metadata !2520, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %528, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %494, metadata !2512, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.label(metadata !2569), !dbg !2996
  br label %553, !dbg !2997

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2961
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2571
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2575
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2972
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3000
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2510, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %538, metadata !2540, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 poison, metadata !2539, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 poison, metadata !2538, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i64 %535, metadata !2533, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %532, metadata !2520, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %531, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %530, metadata !2512, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.label(metadata !2569), !dbg !2996
  %540 = xor i1 %534, true, !dbg !2997
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2997
  br i1 %541, label %553, label %542, !dbg !2997

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3001
  br i1 %543, label %544, label %546, !dbg !3005

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3001
  store i8 39, ptr %545, align 1, !dbg !3001, !tbaa !923
  br label %546, !dbg !3001

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %547, metadata !2519, metadata !DIExpression()), !dbg !2571
  %548 = icmp ult i64 %547, %539, !dbg !3006
  br i1 %548, label %549, label %551, !dbg !3009

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3006
  store i8 39, ptr %550, align 1, !dbg !3006, !tbaa !923
  br label %551, !dbg !3006

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3009
  call void @llvm.dbg.value(metadata i64 %552, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 0, metadata !2527, metadata !DIExpression()), !dbg !2571
  br label %553, !dbg !3010

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2669
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %561, metadata !2519, metadata !DIExpression()), !dbg !2571
  %563 = icmp ult i64 %561, %554, !dbg !3011
  br i1 %563, label %564, label %566, !dbg !3014

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3011
  store i8 %555, ptr %565, align 1, !dbg !3011, !tbaa !923
  br label %566, !dbg !3011

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %567, metadata !2519, metadata !DIExpression()), !dbg !2571
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3015
  call void @llvm.dbg.value(metadata i8 poison, metadata !2526, metadata !DIExpression()), !dbg !2571
  br label %569, !dbg !3016

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2961
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2571
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2575
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2972
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2510, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %576, metadata !2533, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 poison, metadata !2527, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2526, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %572, metadata !2520, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %571, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %570, metadata !2512, metadata !DIExpression()), !dbg !2571
  %578 = add i64 %576, 1, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %578, metadata !2533, metadata !DIExpression()), !dbg !2660
  br label %122, !dbg !3018, !llvm.loop !3019

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2510, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2526, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2525, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %125, metadata !2520, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %124, metadata !2519, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %123, metadata !2512, metadata !DIExpression()), !dbg !2571
  %580 = icmp ne i64 %124, 0, !dbg !3021
  %581 = xor i1 %110, true, !dbg !3023
  %582 = or i1 %580, %581, !dbg !3023
  %583 = or i1 %582, %111, !dbg !3023
  br i1 %583, label %584, label %621, !dbg !3023

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3024
  %586 = xor i1 %126, true, !dbg !3024
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3024
  br i1 %587, label %595, label %588, !dbg !3024

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3026

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3028
  br label %636, !dbg !3030

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3031
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3033
  br i1 %594, label %27, label %595, !dbg !3033

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3034
  %598 = or i1 %597, %596, !dbg !3036
  br i1 %598, label %614, label %599, !dbg !3036

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2521, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %124, metadata !2519, metadata !DIExpression()), !dbg !2571
  %600 = load i8, ptr %107, align 1, !dbg !3037, !tbaa !923
  %601 = icmp eq i8 %600, 0, !dbg !3040
  br i1 %601, label %614, label %602, !dbg !3040

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2521, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %605, metadata !2519, metadata !DIExpression()), !dbg !2571
  %606 = icmp ult i64 %605, %130, !dbg !3041
  br i1 %606, label %607, label %609, !dbg !3044

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3041
  store i8 %603, ptr %608, align 1, !dbg !3041, !tbaa !923
  br label %609, !dbg !3041

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3044
  call void @llvm.dbg.value(metadata i64 %610, metadata !2519, metadata !DIExpression()), !dbg !2571
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3045
  call void @llvm.dbg.value(metadata ptr %611, metadata !2521, metadata !DIExpression()), !dbg !2571
  %612 = load i8, ptr %611, align 1, !dbg !3037, !tbaa !923
  %613 = icmp eq i8 %612, 0, !dbg !3040
  br i1 %613, label %614, label %602, !dbg !3040, !llvm.loop !3046

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2647
  call void @llvm.dbg.value(metadata i64 %615, metadata !2519, metadata !DIExpression()), !dbg !2571
  %616 = icmp ult i64 %615, %130, !dbg !3048
  br i1 %616, label %617, label %636, !dbg !3050

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3051
  store i8 0, ptr %618, align 1, !dbg !3052, !tbaa !923
  br label %636, !dbg !3051

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2570), !dbg !2877
  %620 = icmp eq i32 %103, 2, !dbg !3053
  br i1 %620, label %626, label %630, !dbg !2878

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2570), !dbg !2877
  %624 = icmp eq i32 %103, 2, !dbg !3053
  %625 = select i1 %109, i32 4, i32 2, !dbg !2878
  br i1 %624, label %626, label %630, !dbg !2878

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2878

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2513, metadata !DIExpression()), !dbg !2571
  %634 = and i32 %5, -3, !dbg !3054
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3055
  br label %636, !dbg !3056

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3057
}

; Function Attrs: nounwind
declare !dbg !3058 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3061 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3064 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #12 !dbg !3066 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3070, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %1, metadata !3071, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata ptr %2, metadata !3072, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata ptr %0, metadata !3074, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 %1, metadata !3079, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata ptr null, metadata !3080, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata ptr %2, metadata !3081, metadata !DIExpression()), !dbg !3087
  %4 = icmp eq ptr %2, null, !dbg !3089
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3089
  call void @llvm.dbg.value(metadata ptr %5, metadata !3082, metadata !DIExpression()), !dbg !3087
  %6 = tail call ptr @__errno_location() #42, !dbg !3090
  %7 = load i32, ptr %6, align 4, !dbg !3090, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %7, metadata !3083, metadata !DIExpression()), !dbg !3087
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3091
  %9 = load i32, ptr %8, align 4, !dbg !3091, !tbaa !2453
  %10 = or i32 %9, 1, !dbg !3092
  call void @llvm.dbg.value(metadata i32 %10, metadata !3084, metadata !DIExpression()), !dbg !3087
  %11 = load i32, ptr %5, align 8, !dbg !3093, !tbaa !2403
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3094
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3095
  %14 = load ptr, ptr %13, align 8, !dbg !3095, !tbaa !2474
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3096
  %16 = load ptr, ptr %15, align 8, !dbg !3096, !tbaa !2477
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3097
  %18 = add i64 %17, 1, !dbg !3098
  call void @llvm.dbg.value(metadata i64 %18, metadata !3085, metadata !DIExpression()), !dbg !3087
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !3099
  call void @llvm.dbg.value(metadata ptr %19, metadata !3086, metadata !DIExpression()), !dbg !3087
  %20 = load i32, ptr %5, align 8, !dbg !3100, !tbaa !2403
  %21 = load ptr, ptr %13, align 8, !dbg !3101, !tbaa !2474
  %22 = load ptr, ptr %15, align 8, !dbg !3102, !tbaa !2477
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3103
  store i32 %7, ptr %6, align 4, !dbg !3104, !tbaa !914
  ret ptr %19, !dbg !3105
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #12 !dbg !3075 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3074, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i64 %1, metadata !3079, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata ptr %2, metadata !3080, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata ptr %3, metadata !3081, metadata !DIExpression()), !dbg !3106
  %5 = icmp eq ptr %3, null, !dbg !3107
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3107
  call void @llvm.dbg.value(metadata ptr %6, metadata !3082, metadata !DIExpression()), !dbg !3106
  %7 = tail call ptr @__errno_location() #42, !dbg !3108
  %8 = load i32, ptr %7, align 4, !dbg !3108, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %8, metadata !3083, metadata !DIExpression()), !dbg !3106
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3109
  %10 = load i32, ptr %9, align 4, !dbg !3109, !tbaa !2453
  %11 = icmp eq ptr %2, null, !dbg !3110
  %12 = zext i1 %11 to i32, !dbg !3110
  %13 = or i32 %10, %12, !dbg !3111
  call void @llvm.dbg.value(metadata i32 %13, metadata !3084, metadata !DIExpression()), !dbg !3106
  %14 = load i32, ptr %6, align 8, !dbg !3112, !tbaa !2403
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3113
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3114
  %17 = load ptr, ptr %16, align 8, !dbg !3114, !tbaa !2474
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3115
  %19 = load ptr, ptr %18, align 8, !dbg !3115, !tbaa !2477
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3116
  %21 = add i64 %20, 1, !dbg !3117
  call void @llvm.dbg.value(metadata i64 %21, metadata !3085, metadata !DIExpression()), !dbg !3106
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !3118
  call void @llvm.dbg.value(metadata ptr %22, metadata !3086, metadata !DIExpression()), !dbg !3106
  %23 = load i32, ptr %6, align 8, !dbg !3119, !tbaa !2403
  %24 = load ptr, ptr %16, align 8, !dbg !3120, !tbaa !2474
  %25 = load ptr, ptr %18, align 8, !dbg !3121, !tbaa !2477
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3122
  store i32 %8, ptr %7, align 4, !dbg !3123, !tbaa !914
  br i1 %11, label %28, label %27, !dbg !3124

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3125, !tbaa !1413
  br label %28, !dbg !3127

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3128
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !3129 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3134, !tbaa !851
  call void @llvm.dbg.value(metadata ptr %1, metadata !3131, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i32 1, metadata !3132, metadata !DIExpression()), !dbg !3136
  %2 = load i32, ptr @nslots, align 4, !tbaa !914
  call void @llvm.dbg.value(metadata i32 1, metadata !3132, metadata !DIExpression()), !dbg !3136
  %3 = icmp sgt i32 %2, 1, !dbg !3137
  br i1 %3, label %4, label %6, !dbg !3139

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3137
  br label %10, !dbg !3139

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.tokenbuffer, ptr %1, i64 0, i32 1, !dbg !3140
  %8 = load ptr, ptr %7, align 8, !dbg !3140, !tbaa !3142
  %9 = icmp eq ptr %8, @slot0, !dbg !3144
  br i1 %9, label %17, label %16, !dbg !3145

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3132, metadata !DIExpression()), !dbg !3136
  %12 = getelementptr inbounds %struct.tokenbuffer, ptr %1, i64 %11, i32 1, !dbg !3146
  %13 = load ptr, ptr %12, align 8, !dbg !3146, !tbaa !3142
  tail call void @free(ptr noundef %13) #39, !dbg !3147
  %14 = add nuw nsw i64 %11, 1, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %14, metadata !3132, metadata !DIExpression()), !dbg !3136
  %15 = icmp eq i64 %14, %5, !dbg !3137
  br i1 %15, label %6, label %10, !dbg !3139, !llvm.loop !3149

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !3151
  store i64 256, ptr @slotvec0, align 8, !dbg !3153, !tbaa !3154
  store ptr @slot0, ptr getelementptr inbounds (%struct.tokenbuffer, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3155, !tbaa !3142
  br label %17, !dbg !3156

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3157
  br i1 %18, label %20, label %19, !dbg !3159

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !3160
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3162, !tbaa !851
  br label %20, !dbg !3163

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3164, !tbaa !914
  ret void, !dbg !3165
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3166 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #12 !dbg !3169 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3171, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata ptr %1, metadata !3172, metadata !DIExpression()), !dbg !3173
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3174
  ret ptr %3, !dbg !3175
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #12 !dbg !3176 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3180, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata ptr %1, metadata !3181, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 %2, metadata !3182, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata ptr %3, metadata !3183, metadata !DIExpression()), !dbg !3196
  %6 = tail call ptr @__errno_location() #42, !dbg !3197
  %7 = load i32, ptr %6, align 4, !dbg !3197, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %7, metadata !3184, metadata !DIExpression()), !dbg !3196
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3198, !tbaa !851
  call void @llvm.dbg.value(metadata ptr %8, metadata !3185, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3186, metadata !DIExpression()), !dbg !3196
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3199
  br i1 %9, label %10, label %11, !dbg !3199

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !3201
  unreachable, !dbg !3201

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3202, !tbaa !914
  %13 = icmp sgt i32 %12, %0, !dbg !3203
  br i1 %13, label %32, label %14, !dbg !3204

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3205
  call void @llvm.dbg.value(metadata i1 %15, metadata !3187, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3206
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !3207
  %16 = sext i32 %12 to i64, !dbg !3208
  call void @llvm.dbg.value(metadata i64 %16, metadata !3190, metadata !DIExpression()), !dbg !3206
  store i64 %16, ptr %5, align 8, !dbg !3209, !tbaa !1413
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3210
  %18 = add nuw nsw i32 %0, 1, !dbg !3211
  %19 = sub i32 %18, %12, !dbg !3212
  %20 = sext i32 %19 to i64, !dbg !3213
  call void @llvm.dbg.value(metadata ptr %5, metadata !3190, metadata !DIExpression(DW_OP_deref)), !dbg !3206
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !3214
  call void @llvm.dbg.value(metadata ptr %21, metadata !3185, metadata !DIExpression()), !dbg !3196
  store ptr %21, ptr @slotvec, align 8, !dbg !3215, !tbaa !851
  br i1 %15, label %22, label %23, !dbg !3216

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3217, !tbaa.struct !3219
  br label %23, !dbg !3220

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3221, !tbaa !914
  %25 = sext i32 %24 to i64, !dbg !3222
  %26 = getelementptr inbounds %struct.tokenbuffer, ptr %21, i64 %25, !dbg !3222
  %27 = load i64, ptr %5, align 8, !dbg !3223, !tbaa !1413
  call void @llvm.dbg.value(metadata i64 %27, metadata !3190, metadata !DIExpression()), !dbg !3206
  %28 = sub nsw i64 %27, %25, !dbg !3224
  %29 = shl i64 %28, 4, !dbg !3225
  call void @llvm.dbg.value(metadata ptr %26, metadata !2605, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i32 0, metadata !2608, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i64 %29, metadata !2609, metadata !DIExpression()), !dbg !3226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !3228
  %30 = load i64, ptr %5, align 8, !dbg !3229, !tbaa !1413
  call void @llvm.dbg.value(metadata i64 %30, metadata !3190, metadata !DIExpression()), !dbg !3206
  %31 = trunc i64 %30 to i32, !dbg !3229
  store i32 %31, ptr @nslots, align 4, !dbg !3230, !tbaa !914
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3231
  br label %32, !dbg !3232

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3196
  call void @llvm.dbg.value(metadata ptr %33, metadata !3185, metadata !DIExpression()), !dbg !3196
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.tokenbuffer, ptr %33, i64 %34, !dbg !3233
  %36 = load i64, ptr %35, align 8, !dbg !3234, !tbaa !3154
  call void @llvm.dbg.value(metadata i64 %36, metadata !3191, metadata !DIExpression()), !dbg !3235
  %37 = getelementptr inbounds %struct.tokenbuffer, ptr %33, i64 %34, i32 1, !dbg !3236
  %38 = load ptr, ptr %37, align 8, !dbg !3236, !tbaa !3142
  call void @llvm.dbg.value(metadata ptr %38, metadata !3193, metadata !DIExpression()), !dbg !3235
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3237
  %40 = load i32, ptr %39, align 4, !dbg !3237, !tbaa !2453
  %41 = or i32 %40, 1, !dbg !3238
  call void @llvm.dbg.value(metadata i32 %41, metadata !3194, metadata !DIExpression()), !dbg !3235
  %42 = load i32, ptr %3, align 8, !dbg !3239, !tbaa !2403
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3240
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3241
  %45 = load ptr, ptr %44, align 8, !dbg !3241, !tbaa !2474
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3242
  %47 = load ptr, ptr %46, align 8, !dbg !3242, !tbaa !2477
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3243
  call void @llvm.dbg.value(metadata i64 %48, metadata !3195, metadata !DIExpression()), !dbg !3235
  %49 = icmp ugt i64 %36, %48, !dbg !3244
  br i1 %49, label %60, label %50, !dbg !3246

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3247
  call void @llvm.dbg.value(metadata i64 %51, metadata !3191, metadata !DIExpression()), !dbg !3235
  store i64 %51, ptr %35, align 8, !dbg !3249, !tbaa !3154
  %52 = icmp eq ptr %38, @slot0, !dbg !3250
  br i1 %52, label %54, label %53, !dbg !3252

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3253
  br label %54, !dbg !3253

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !3254
  call void @llvm.dbg.value(metadata ptr %55, metadata !3193, metadata !DIExpression()), !dbg !3235
  store ptr %55, ptr %37, align 8, !dbg !3255, !tbaa !3142
  %56 = load i32, ptr %3, align 8, !dbg !3256, !tbaa !2403
  %57 = load ptr, ptr %44, align 8, !dbg !3257, !tbaa !2474
  %58 = load ptr, ptr %46, align 8, !dbg !3258, !tbaa !2477
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3259
  br label %60, !dbg !3260

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3235
  call void @llvm.dbg.value(metadata ptr %61, metadata !3193, metadata !DIExpression()), !dbg !3235
  store i32 %7, ptr %6, align 4, !dbg !3261, !tbaa !914
  ret ptr %61, !dbg !3262
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3263 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3267, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata ptr %1, metadata !3268, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 %2, metadata !3269, metadata !DIExpression()), !dbg !3270
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3271
  ret ptr %4, !dbg !3272
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #12 !dbg !3273 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3275, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i32 0, metadata !3171, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata ptr %0, metadata !3172, metadata !DIExpression()), !dbg !3277
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3279
  ret ptr %2, !dbg !3280
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3281 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3285, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i64 %1, metadata !3286, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i32 0, metadata !3267, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata ptr %0, metadata !3268, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %1, metadata !3269, metadata !DIExpression()), !dbg !3288
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3290
  ret ptr %3, !dbg !3291
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #12 !dbg !3292 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3296, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i32 %1, metadata !3297, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata ptr %2, metadata !3298, metadata !DIExpression()), !dbg !3300
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3301
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3299, metadata !DIExpression()), !dbg !3302
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3303), !dbg !3306
  call void @llvm.dbg.value(metadata i32 %1, metadata !3307, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3312, metadata !DIExpression()), !dbg !3315
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3315, !alias.scope !3303
  %5 = icmp eq i32 %1, 10, !dbg !3316
  br i1 %5, label %6, label %7, !dbg !3318

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3319, !noalias !3303
  unreachable, !dbg !3319

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3320, !tbaa !2403, !alias.scope !3303
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3321
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3322
  ret ptr %8, !dbg !3323
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3324 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3328, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i32 %1, metadata !3329, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata ptr %2, metadata !3330, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i64 %3, metadata !3331, metadata !DIExpression()), !dbg !3333
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3334
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3332, metadata !DIExpression()), !dbg !3335
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3336), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %1, metadata !3307, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3312, metadata !DIExpression()), !dbg !3342
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3342, !alias.scope !3336
  %6 = icmp eq i32 %1, 10, !dbg !3343
  br i1 %6, label %7, label %8, !dbg !3344

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3345, !noalias !3336
  unreachable, !dbg !3345

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3346, !tbaa !2403, !alias.scope !3336
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3347
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3348
  ret ptr %9, !dbg !3349
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #12 !dbg !3350 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3354, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata ptr %1, metadata !3355, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i32 0, metadata !3296, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32 %0, metadata !3297, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata ptr %1, metadata !3298, metadata !DIExpression()), !dbg !3357
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3359
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3299, metadata !DIExpression()), !dbg !3360
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3361), !dbg !3364
  call void @llvm.dbg.value(metadata i32 %0, metadata !3307, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3312, metadata !DIExpression()), !dbg !3367
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3367, !alias.scope !3361
  %4 = icmp eq i32 %0, 10, !dbg !3368
  br i1 %4, label %5, label %6, !dbg !3369

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3370, !noalias !3361
  unreachable, !dbg !3370

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3371, !tbaa !2403, !alias.scope !3361
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3372
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3373
  ret ptr %7, !dbg !3374
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3375 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3379, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata ptr %1, metadata !3380, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i64 %2, metadata !3381, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i32 0, metadata !3328, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i32 %0, metadata !3329, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata ptr %1, metadata !3330, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %2, metadata !3331, metadata !DIExpression()), !dbg !3383
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3385
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3332, metadata !DIExpression()), !dbg !3386
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3387), !dbg !3390
  call void @llvm.dbg.value(metadata i32 %0, metadata !3307, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3312, metadata !DIExpression()), !dbg !3393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3393, !alias.scope !3387
  %5 = icmp eq i32 %0, 10, !dbg !3394
  br i1 %5, label %6, label %7, !dbg !3395

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3396, !noalias !3387
  unreachable, !dbg !3396

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3397, !tbaa !2403, !alias.scope !3387
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3398
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3399
  ret ptr %8, !dbg !3400
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3401 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3405, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 %1, metadata !3406, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i8 %2, metadata !3407, metadata !DIExpression()), !dbg !3409
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3410
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3408, metadata !DIExpression()), !dbg !3411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3412, !tbaa.struct !3413
  call void @llvm.dbg.value(metadata ptr %4, metadata !2420, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8 %2, metadata !2421, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 1, metadata !2422, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8 %2, metadata !2423, metadata !DIExpression()), !dbg !3414
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3416
  %6 = lshr i8 %2, 5, !dbg !3417
  %7 = zext i8 %6 to i64, !dbg !3417
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3418
  call void @llvm.dbg.value(metadata ptr %8, metadata !2424, metadata !DIExpression()), !dbg !3414
  %9 = and i8 %2, 31, !dbg !3419
  %10 = zext i8 %9 to i32, !dbg !3419
  call void @llvm.dbg.value(metadata i32 %10, metadata !2426, metadata !DIExpression()), !dbg !3414
  %11 = load i32, ptr %8, align 4, !dbg !3420, !tbaa !914
  %12 = lshr i32 %11, %10, !dbg !3421
  call void @llvm.dbg.value(metadata i32 %12, metadata !2427, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3414
  %13 = and i32 %12, 1, !dbg !3422
  %14 = xor i32 %13, 1, !dbg !3422
  %15 = shl nuw i32 %14, %10, !dbg !3423
  %16 = xor i32 %15, %11, !dbg !3424
  store i32 %16, ptr %8, align 4, !dbg !3424, !tbaa !914
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3425
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3426
  ret ptr %17, !dbg !3427
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3428 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3432, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i8 %1, metadata !3433, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata ptr %0, metadata !3405, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i64 -1, metadata !3406, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i8 %1, metadata !3407, metadata !DIExpression()), !dbg !3435
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3437
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3408, metadata !DIExpression()), !dbg !3438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3439, !tbaa.struct !3413
  call void @llvm.dbg.value(metadata ptr %3, metadata !2420, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i8 %1, metadata !2421, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i32 1, metadata !2422, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i8 %1, metadata !2423, metadata !DIExpression()), !dbg !3440
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3442
  %5 = lshr i8 %1, 5, !dbg !3443
  %6 = zext i8 %5 to i64, !dbg !3443
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3444
  call void @llvm.dbg.value(metadata ptr %7, metadata !2424, metadata !DIExpression()), !dbg !3440
  %8 = and i8 %1, 31, !dbg !3445
  %9 = zext i8 %8 to i32, !dbg !3445
  call void @llvm.dbg.value(metadata i32 %9, metadata !2426, metadata !DIExpression()), !dbg !3440
  %10 = load i32, ptr %7, align 4, !dbg !3446, !tbaa !914
  %11 = lshr i32 %10, %9, !dbg !3447
  call void @llvm.dbg.value(metadata i32 %11, metadata !2427, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3440
  %12 = and i32 %11, 1, !dbg !3448
  %13 = xor i32 %12, 1, !dbg !3448
  %14 = shl nuw i32 %13, %9, !dbg !3449
  %15 = xor i32 %14, %10, !dbg !3450
  store i32 %15, ptr %7, align 4, !dbg !3450, !tbaa !914
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3451
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3452
  ret ptr %16, !dbg !3453
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #12 !dbg !3454 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3456, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata ptr %0, metadata !3432, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i8 58, metadata !3433, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata ptr %0, metadata !3405, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 -1, metadata !3406, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i8 58, metadata !3407, metadata !DIExpression()), !dbg !3460
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3462
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3408, metadata !DIExpression()), !dbg !3463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3464, !tbaa.struct !3413
  call void @llvm.dbg.value(metadata ptr %2, metadata !2420, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i8 58, metadata !2421, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i32 1, metadata !2422, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i8 58, metadata !2423, metadata !DIExpression()), !dbg !3465
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3467
  call void @llvm.dbg.value(metadata ptr %3, metadata !2424, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i32 26, metadata !2426, metadata !DIExpression()), !dbg !3465
  %4 = load i32, ptr %3, align 4, !dbg !3468, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %4, metadata !2427, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3465
  %5 = or i32 %4, 67108864, !dbg !3469
  store i32 %5, ptr %3, align 4, !dbg !3469, !tbaa !914
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3470
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3471
  ret ptr %6, !dbg !3472
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3473 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3475, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i64 %1, metadata !3476, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata ptr %0, metadata !3405, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i64 %1, metadata !3406, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i8 58, metadata !3407, metadata !DIExpression()), !dbg !3478
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3480
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3408, metadata !DIExpression()), !dbg !3481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3482, !tbaa.struct !3413
  call void @llvm.dbg.value(metadata ptr %3, metadata !2420, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i8 58, metadata !2421, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i32 1, metadata !2422, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i8 58, metadata !2423, metadata !DIExpression()), !dbg !3483
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3485
  call void @llvm.dbg.value(metadata ptr %4, metadata !2424, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i32 26, metadata !2426, metadata !DIExpression()), !dbg !3483
  %5 = load i32, ptr %4, align 4, !dbg !3486, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %5, metadata !2427, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3483
  %6 = or i32 %5, 67108864, !dbg !3487
  store i32 %6, ptr %4, align 4, !dbg !3487, !tbaa !914
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3488
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3489
  ret ptr %7, !dbg !3490
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #12 !dbg !3491 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3312, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3497
  call void @llvm.dbg.value(metadata i32 %0, metadata !3493, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i32 %1, metadata !3494, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata ptr %2, metadata !3495, metadata !DIExpression()), !dbg !3499
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3500
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3496, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i32 %1, metadata !3307, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 0, metadata !3312, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3502
  %5 = icmp eq i32 %1, 10, !dbg !3503
  br i1 %5, label %6, label %7, !dbg !3504

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3505, !noalias !3506
  unreachable, !dbg !3505

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3312, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3502
  store i32 %1, ptr %4, align 8, !dbg !3509, !tbaa.struct !3413
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3509
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3509
  call void @llvm.dbg.value(metadata ptr %4, metadata !2420, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i8 58, metadata !2421, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i32 1, metadata !2422, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i8 58, metadata !2423, metadata !DIExpression()), !dbg !3510
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3512
  call void @llvm.dbg.value(metadata ptr %9, metadata !2424, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i32 26, metadata !2426, metadata !DIExpression()), !dbg !3510
  %10 = load i32, ptr %9, align 4, !dbg !3513, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %10, metadata !2427, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3510
  %11 = or i32 %10, 67108864, !dbg !3514
  store i32 %11, ptr %9, align 4, !dbg !3514, !tbaa !914
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3515
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3516
  ret ptr %12, !dbg !3517
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 !dbg !3518 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3522, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata ptr %1, metadata !3523, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata ptr %2, metadata !3524, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata ptr %3, metadata !3525, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i32 %0, metadata !3527, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata ptr %1, metadata !3532, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata ptr %2, metadata !3533, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata ptr %3, metadata !3534, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i64 -1, metadata !3535, metadata !DIExpression()), !dbg !3537
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3539
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3536, metadata !DIExpression()), !dbg !3540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3541, !tbaa.struct !3413
  call void @llvm.dbg.value(metadata ptr %5, metadata !2460, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata ptr %1, metadata !2461, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata ptr %2, metadata !2462, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata ptr %5, metadata !2460, metadata !DIExpression()), !dbg !3542
  store i32 10, ptr %5, align 8, !dbg !3544, !tbaa !2403
  %6 = icmp ne ptr %1, null, !dbg !3545
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3546
  br i1 %8, label %10, label %9, !dbg !3546

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3547
  unreachable, !dbg !3547

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3548
  store ptr %1, ptr %11, align 8, !dbg !3549, !tbaa !2474
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3550
  store ptr %2, ptr %12, align 8, !dbg !3551, !tbaa !2477
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3552
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3553
  ret ptr %13, !dbg !3554
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3528 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3527, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata ptr %1, metadata !3532, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata ptr %2, metadata !3533, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata ptr %3, metadata !3534, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i64 %4, metadata !3535, metadata !DIExpression()), !dbg !3555
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3556
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3536, metadata !DIExpression()), !dbg !3557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3558, !tbaa.struct !3413
  call void @llvm.dbg.value(metadata ptr %6, metadata !2460, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata ptr %1, metadata !2461, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata ptr %2, metadata !2462, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata ptr %6, metadata !2460, metadata !DIExpression()), !dbg !3559
  store i32 10, ptr %6, align 8, !dbg !3561, !tbaa !2403
  %7 = icmp ne ptr %1, null, !dbg !3562
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3563
  br i1 %9, label %11, label %10, !dbg !3563

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3564
  unreachable, !dbg !3564

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3565
  store ptr %1, ptr %12, align 8, !dbg !3566, !tbaa !2474
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3567
  store ptr %2, ptr %13, align 8, !dbg !3568, !tbaa !2477
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3569
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3570
  ret ptr %14, !dbg !3571
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 !dbg !3572 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3576, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata ptr %1, metadata !3577, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata ptr %2, metadata !3578, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i32 0, metadata !3522, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata ptr %0, metadata !3523, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata ptr %1, metadata !3524, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata ptr %2, metadata !3525, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i32 0, metadata !3527, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr %0, metadata !3532, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr %1, metadata !3533, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr %2, metadata !3534, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i64 -1, metadata !3535, metadata !DIExpression()), !dbg !3582
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3584
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3536, metadata !DIExpression()), !dbg !3585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3586, !tbaa.struct !3413
  call void @llvm.dbg.value(metadata ptr %4, metadata !2460, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr %0, metadata !2461, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr %1, metadata !2462, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr %4, metadata !2460, metadata !DIExpression()), !dbg !3587
  store i32 10, ptr %4, align 8, !dbg !3589, !tbaa !2403
  %5 = icmp ne ptr %0, null, !dbg !3590
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3591
  br i1 %7, label %9, label %8, !dbg !3591

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3592
  unreachable, !dbg !3592

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3593
  store ptr %0, ptr %10, align 8, !dbg !3594, !tbaa !2474
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3595
  store ptr %1, ptr %11, align 8, !dbg !3596, !tbaa !2477
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3597
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3598
  ret ptr %12, !dbg !3599
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3600 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3604, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %1, metadata !3605, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %2, metadata !3606, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i64 %3, metadata !3607, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 0, metadata !3527, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata ptr %0, metadata !3532, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata ptr %1, metadata !3533, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata ptr %2, metadata !3534, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 %3, metadata !3535, metadata !DIExpression()), !dbg !3609
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3611
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3536, metadata !DIExpression()), !dbg !3612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3613, !tbaa.struct !3413
  call void @llvm.dbg.value(metadata ptr %5, metadata !2460, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata ptr %0, metadata !2461, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata ptr %1, metadata !2462, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata ptr %5, metadata !2460, metadata !DIExpression()), !dbg !3614
  store i32 10, ptr %5, align 8, !dbg !3616, !tbaa !2403
  %6 = icmp ne ptr %0, null, !dbg !3617
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3618
  br i1 %8, label %10, label %9, !dbg !3618

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3619
  unreachable, !dbg !3619

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3620
  store ptr %0, ptr %11, align 8, !dbg !3621, !tbaa !2474
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3622
  store ptr %1, ptr %12, align 8, !dbg !3623, !tbaa !2477
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3624
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3625
  ret ptr %13, !dbg !3626
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3627 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3631, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata ptr %1, metadata !3632, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i64 %2, metadata !3633, metadata !DIExpression()), !dbg !3634
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3635
  ret ptr %4, !dbg !3636
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3637 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3641, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i64 %1, metadata !3642, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i32 0, metadata !3631, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata ptr %0, metadata !3632, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i64 %1, metadata !3633, metadata !DIExpression()), !dbg !3644
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3646
  ret ptr %3, !dbg !3647
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #12 !dbg !3648 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3652, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %1, metadata !3653, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i32 %0, metadata !3631, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata ptr %1, metadata !3632, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i64 -1, metadata !3633, metadata !DIExpression()), !dbg !3655
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3657
  ret ptr %3, !dbg !3658
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #12 !dbg !3659 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3663, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i32 0, metadata !3652, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata ptr %0, metadata !3653, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i32 0, metadata !3631, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata ptr %0, metadata !3632, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 -1, metadata !3633, metadata !DIExpression()), !dbg !3667
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3669
  ret ptr %2, !dbg !3670
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_tokenbuffer(ptr nocapture noundef writeonly %0) local_unnamed_addr #28 !dbg !3671 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3681, metadata !DIExpression()), !dbg !3682
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !dbg !3683
  ret void, !dbg !3684
}

; Function Attrs: nounwind uwtable
define dso_local i64 @readtoken(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #12 !dbg !3685 {
  %5 = alloca [4 x i64], align 8
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3723, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata ptr %1, metadata !3724, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i64 %2, metadata !3725, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata ptr %3, metadata !3726, metadata !DIExpression()), !dbg !3739
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !3740
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3727, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata ptr %5, metadata !3742, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i32 0, metadata !3745, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 32, metadata !3746, metadata !DIExpression()), !dbg !3747
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef 0, i64 noundef 32, i1 noundef false) #39, !dbg !3749
  call void @llvm.dbg.value(metadata i64 0, metadata !3730, metadata !DIExpression()), !dbg !3750
  %7 = icmp eq i64 %2, 0, !dbg !3751
  br i1 %7, label %8, label %23, !dbg !3752

8:                                                ; preds = %23, %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3753, metadata !DIExpression()), !dbg !3758
  %9 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3761
  %10 = load ptr, ptr %9, align 8, !dbg !3761, !tbaa !2271
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3761
  %12 = load ptr, ptr %11, align 8, !dbg !3761, !tbaa !2269
  %13 = icmp ult ptr %10, %12, !dbg !3761
  br i1 %13, label %14, label %18, !dbg !3761, !prof !1800

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !3761
  store ptr %15, ptr %9, align 8, !dbg !3761, !tbaa !2271
  %16 = load i8, ptr %10, align 1, !dbg !3761, !tbaa !923
  %17 = zext i8 %16 to i32, !dbg !3761
  call void @llvm.dbg.value(metadata i32 %17, metadata !3735, metadata !DIExpression()), !dbg !3739
  br label %21, !dbg !3762

18:                                               ; preds = %8
  %19 = tail call i32 @__uflow(ptr noundef nonnull %0) #39, !dbg !3761
  call void @llvm.dbg.value(metadata i32 %19, metadata !3735, metadata !DIExpression()), !dbg !3739
  %20 = icmp sgt i32 %19, -1, !dbg !3764
  br i1 %20, label %21, label %59, !dbg !3762

21:                                               ; preds = %14, %18
  %22 = phi i32 [ %19, %18 ], [ %17, %14 ]
  br label %36, !dbg !3765

23:                                               ; preds = %4, %23
  %24 = phi i64 [ %34, %23 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i64 %24, metadata !3730, metadata !DIExpression()), !dbg !3750
  %25 = getelementptr inbounds i8, ptr %1, i64 %24, !dbg !3766
  %26 = load i8, ptr %25, align 1, !dbg !3766, !tbaa !923
  call void @llvm.dbg.value(metadata i8 %26, metadata !3732, metadata !DIExpression()), !dbg !3767
  %27 = zext i8 %26 to i64, !dbg !3768
  call void @llvm.dbg.value(metadata i64 %27, metadata !3769, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata ptr %5, metadata !3775, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i64 1, metadata !3776, metadata !DIExpression()), !dbg !3777
  %28 = and i64 %27, 63, !dbg !3779
  %29 = shl nuw i64 1, %28, !dbg !3780
  %30 = lshr i64 %27, 6, !dbg !3781
  %31 = getelementptr inbounds i64, ptr %5, i64 %30, !dbg !3782
  %32 = load i64, ptr %31, align 8, !dbg !3783, !tbaa !1413
  %33 = or i64 %29, %32, !dbg !3783
  store i64 %33, ptr %31, align 8, !dbg !3783, !tbaa !1413
  %34 = add nuw nsw i64 %24, 1, !dbg !3784
  call void @llvm.dbg.value(metadata i64 %34, metadata !3730, metadata !DIExpression()), !dbg !3750
  %35 = icmp eq i64 %34, %2, !dbg !3751
  br i1 %35, label %8, label %23, !dbg !3752, !llvm.loop !3785

36:                                               ; preds = %21, %56
  %37 = phi i32 [ %57, %56 ], [ %22, %21 ]
  call void @llvm.dbg.value(metadata i32 %37, metadata !3735, metadata !DIExpression()), !dbg !3739
  %38 = zext i32 %37 to i64
  call void @llvm.dbg.value(metadata i64 %38, metadata !3787, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata ptr %5, metadata !3794, metadata !DIExpression()), !dbg !3795
  %39 = lshr i64 %38, 6, !dbg !3797
  %40 = getelementptr inbounds i64, ptr %5, i64 %39, !dbg !3798
  %41 = load i64, ptr %40, align 8, !dbg !3798, !tbaa !1413
  %42 = and i64 %38, 63, !dbg !3799
  %43 = shl nuw i64 1, %42, !dbg !3798
  %44 = and i64 %41, %43, !dbg !3798
  %45 = icmp eq i64 %44, 0, !dbg !3798
  br i1 %45, label %60, label %46, !dbg !3765

46:                                               ; preds = %36
  call void @llvm.dbg.value(metadata ptr %0, metadata !3753, metadata !DIExpression()), !dbg !3800
  %47 = load ptr, ptr %9, align 8, !dbg !3802, !tbaa !2271
  %48 = load ptr, ptr %11, align 8, !dbg !3802, !tbaa !2269
  %49 = icmp ult ptr %47, %48, !dbg !3802
  br i1 %49, label %52, label %50, !dbg !3802, !prof !1800

50:                                               ; preds = %46
  %51 = tail call i32 @__uflow(ptr noundef nonnull %0) #39, !dbg !3802
  br label %56, !dbg !3802

52:                                               ; preds = %46
  %53 = getelementptr inbounds i8, ptr %47, i64 1, !dbg !3802
  store ptr %53, ptr %9, align 8, !dbg !3802, !tbaa !2271
  %54 = load i8, ptr %47, align 1, !dbg !3802, !tbaa !923
  %55 = zext i8 %54 to i32, !dbg !3802
  br label %56, !dbg !3802

56:                                               ; preds = %50, %52
  %57 = phi i32 [ %51, %50 ], [ %55, %52 ], !dbg !3802
  call void @llvm.dbg.value(metadata i32 %57, metadata !3735, metadata !DIExpression()), !dbg !3739
  %58 = icmp sgt i32 %57, -1, !dbg !3764
  br i1 %58, label %36, label %59, !dbg !3762, !llvm.loop !3803

59:                                               ; preds = %56, %18
  call void @llvm.dbg.value(metadata ptr poison, metadata !3736, metadata !DIExpression()), !dbg !3739
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #39, !dbg !3805
  call void @llvm.dbg.value(metadata i64 poison, metadata !3737, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i64 0, metadata !3738, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i32 poison, metadata !3735, metadata !DIExpression()), !dbg !3739
  br label %103, !dbg !3806

60:                                               ; preds = %36
  %61 = getelementptr inbounds %struct.tokenbuffer, ptr %3, i64 0, i32 1, !dbg !3811
  %62 = load ptr, ptr %61, align 8, !dbg !3811, !tbaa !1174
  call void @llvm.dbg.value(metadata ptr %62, metadata !3736, metadata !DIExpression()), !dbg !3739
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #39, !dbg !3805
  %63 = load i64, ptr %3, align 8, !dbg !3812, !tbaa !3813
  call void @llvm.dbg.value(metadata i64 %63, metadata !3737, metadata !DIExpression()), !dbg !3739
  store i64 %63, ptr %6, align 8, !dbg !3814, !tbaa !1413
  call void @llvm.dbg.value(metadata i64 0, metadata !3738, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i32 %37, metadata !3735, metadata !DIExpression()), !dbg !3739
  br label %64, !dbg !3815

64:                                               ; preds = %97, %60
  %65 = phi i1 [ %99, %97 ], [ false, %60 ]
  %66 = phi i64 [ %86, %97 ], [ 0, %60 ]
  %67 = phi ptr [ %74, %97 ], [ %62, %60 ]
  %68 = phi i32 [ %98, %97 ], [ %37, %60 ]
  call void @llvm.dbg.value(metadata i64 %66, metadata !3738, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata ptr %67, metadata !3736, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i32 %68, metadata !3735, metadata !DIExpression()), !dbg !3739
  %69 = load i64, ptr %6, align 8, !dbg !3816, !tbaa !1413
  call void @llvm.dbg.value(metadata i64 %69, metadata !3737, metadata !DIExpression()), !dbg !3739
  %70 = icmp eq i64 %66, %69, !dbg !3818
  br i1 %70, label %71, label %73, !dbg !3819

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata ptr %6, metadata !3737, metadata !DIExpression(DW_OP_deref)), !dbg !3739
  %72 = call nonnull ptr @xpalloc(ptr noundef %67, ptr noundef nonnull %6, i64 noundef 1, i64 noundef -1, i64 noundef 1) #39, !dbg !3820
  call void @llvm.dbg.value(metadata ptr %72, metadata !3736, metadata !DIExpression()), !dbg !3739
  br label %73, !dbg !3821

73:                                               ; preds = %71, %64
  %74 = phi ptr [ %72, %71 ], [ %67, %64 ], !dbg !3739
  call void @llvm.dbg.value(metadata ptr %74, metadata !3736, metadata !DIExpression()), !dbg !3739
  br i1 %65, label %100, label %75, !dbg !3822

75:                                               ; preds = %73
  %76 = zext i32 %68 to i64
  call void @llvm.dbg.value(metadata i64 %76, metadata !3787, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata ptr %5, metadata !3794, metadata !DIExpression()), !dbg !3823
  %77 = lshr i64 %76, 6, !dbg !3826
  %78 = getelementptr inbounds i64, ptr %5, i64 %77, !dbg !3827
  %79 = load i64, ptr %78, align 8, !dbg !3827, !tbaa !1413
  %80 = and i64 %76, 63, !dbg !3828
  %81 = shl nuw i64 1, %80, !dbg !3827
  %82 = and i64 %79, %81, !dbg !3827
  %83 = icmp eq i64 %82, 0, !dbg !3827
  br i1 %83, label %84, label %100, !dbg !3829

84:                                               ; preds = %75
  %85 = trunc i32 %68 to i8, !dbg !3830
  %86 = add nuw nsw i64 %66, 1, !dbg !3831
  call void @llvm.dbg.value(metadata i64 %86, metadata !3738, metadata !DIExpression()), !dbg !3739
  %87 = getelementptr inbounds i8, ptr %74, i64 %66, !dbg !3832
  store i8 %85, ptr %87, align 1, !dbg !3833, !tbaa !923
  call void @llvm.dbg.value(metadata ptr %0, metadata !3753, metadata !DIExpression()), !dbg !3834
  %88 = load ptr, ptr %9, align 8, !dbg !3836, !tbaa !2271
  %89 = load ptr, ptr %11, align 8, !dbg !3836, !tbaa !2269
  %90 = icmp ult ptr %88, %89, !dbg !3836
  br i1 %90, label %93, label %91, !dbg !3836, !prof !1800

91:                                               ; preds = %84
  %92 = call i32 @__uflow(ptr noundef nonnull %0) #39, !dbg !3836
  br label %97, !dbg !3836

93:                                               ; preds = %84
  %94 = getelementptr inbounds i8, ptr %88, i64 1, !dbg !3836
  store ptr %94, ptr %9, align 8, !dbg !3836, !tbaa !2271
  %95 = load i8, ptr %88, align 1, !dbg !3836, !tbaa !923
  %96 = zext i8 %95 to i32, !dbg !3836
  br label %97, !dbg !3836

97:                                               ; preds = %91, %93
  %98 = phi i32 [ %92, %91 ], [ %96, %93 ], !dbg !3836
  call void @llvm.dbg.value(metadata i64 %86, metadata !3738, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata ptr %74, metadata !3736, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i32 %98, metadata !3735, metadata !DIExpression()), !dbg !3739
  %99 = icmp slt i32 %98, 0, !dbg !3837
  br label %64

100:                                              ; preds = %75, %73
  %101 = getelementptr inbounds i8, ptr %74, i64 %66, !dbg !3838
  store i8 0, ptr %101, align 1, !dbg !3838, !tbaa !923
  store ptr %74, ptr %61, align 8, !dbg !3839, !tbaa !1174
  %102 = load i64, ptr %6, align 8, !dbg !3840, !tbaa !1413
  call void @llvm.dbg.value(metadata i64 %102, metadata !3737, metadata !DIExpression()), !dbg !3739
  store i64 %102, ptr %3, align 8, !dbg !3841, !tbaa !3813
  br label %103, !dbg !3842

103:                                              ; preds = %59, %100
  %104 = phi i64 [ %66, %100 ], [ -1, %59 ], !dbg !3739
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #39, !dbg !3843
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !3843
  ret i64 %104, !dbg !3843
}

declare !dbg !3844 i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @readtokens(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, ptr nocapture noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #12 !dbg !3845 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.tokenbuffer, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3851, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i64 %1, metadata !3852, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata ptr %2, metadata !3853, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i64 %3, metadata !3854, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata ptr %4, metadata !3855, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata ptr %5, metadata !3856, metadata !DIExpression()), !dbg !3868
  %9 = icmp eq i64 %1, 0, !dbg !3869
  %10 = add i64 %1, 1, !dbg !3871
  %11 = select i1 %9, i64 64, i64 %10, !dbg !3871
  call void @llvm.dbg.value(metadata i64 %11, metadata !3852, metadata !DIExpression()), !dbg !3868
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #39, !dbg !3872
  call void @llvm.dbg.value(metadata i64 %11, metadata !3857, metadata !DIExpression()), !dbg !3868
  store i64 %11, ptr %7, align 8, !dbg !3873, !tbaa !1413
  %12 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %11, i64 noundef 8) #47, !dbg !3874
  call void @llvm.dbg.value(metadata ptr %12, metadata !3858, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i64 %11, metadata !3857, metadata !DIExpression()), !dbg !3868
  %13 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %11, i64 noundef 8) #47, !dbg !3875
  call void @llvm.dbg.value(metadata ptr %13, metadata !3859, metadata !DIExpression()), !dbg !3868
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #39, !dbg !3876
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3860, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata ptr %8, metadata !3861, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata ptr %8, metadata !3681, metadata !DIExpression()), !dbg !3878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !dbg !3880
  call void @llvm.dbg.value(metadata i64 0, metadata !3862, metadata !DIExpression()), !dbg !3868
  %14 = getelementptr inbounds %struct.tokenbuffer, ptr %8, i64 0, i32 1
  br label %15, !dbg !3881

15:                                               ; preds = %31, %6
  %16 = phi ptr [ %13, %6 ], [ %27, %31 ], !dbg !3868
  %17 = phi i64 [ 0, %6 ], [ %36, %31 ], !dbg !3882
  %18 = phi ptr [ %12, %6 ], [ %28, %31 ], !dbg !3868
  call void @llvm.dbg.value(metadata ptr %18, metadata !3858, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i64 %17, metadata !3862, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata ptr %16, metadata !3859, metadata !DIExpression()), !dbg !3868
  %19 = call i64 @readtoken(ptr noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %8), !dbg !3883
  call void @llvm.dbg.value(metadata i64 %19, metadata !3863, metadata !DIExpression()), !dbg !3884
  %20 = load i64, ptr %7, align 8, !dbg !3885, !tbaa !1413
  call void @llvm.dbg.value(metadata i64 %20, metadata !3857, metadata !DIExpression()), !dbg !3868
  %21 = icmp slt i64 %17, %20, !dbg !3887
  br i1 %21, label %26, label %22, !dbg !3888

22:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %7, metadata !3857, metadata !DIExpression(DW_OP_deref)), !dbg !3868
  %23 = call nonnull ptr @xpalloc(ptr noundef %18, ptr noundef nonnull %7, i64 noundef 1, i64 noundef -1, i64 noundef 8) #39, !dbg !3889
  call void @llvm.dbg.value(metadata ptr %23, metadata !3858, metadata !DIExpression()), !dbg !3868
  %24 = load i64, ptr %7, align 8, !dbg !3891, !tbaa !1413
  call void @llvm.dbg.value(metadata i64 %24, metadata !3857, metadata !DIExpression()), !dbg !3868
  %25 = call ptr @xreallocarray(ptr noundef nonnull %16, i64 noundef %24, i64 noundef 8) #48, !dbg !3892
  call void @llvm.dbg.value(metadata ptr %25, metadata !3859, metadata !DIExpression()), !dbg !3868
  br label %26, !dbg !3893

26:                                               ; preds = %22, %15
  %27 = phi ptr [ %25, %22 ], [ %16, %15 ], !dbg !3868
  %28 = phi ptr [ %23, %22 ], [ %18, %15 ], !dbg !3868
  call void @llvm.dbg.value(metadata ptr %28, metadata !3858, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata ptr %27, metadata !3859, metadata !DIExpression()), !dbg !3868
  %29 = icmp eq i64 %19, -1, !dbg !3894
  %30 = getelementptr inbounds i64, ptr %27, i64 %17, !dbg !3884
  br i1 %29, label %37, label %31, !dbg !3896

31:                                               ; preds = %26
  %32 = add nuw i64 %19, 1, !dbg !3897
  %33 = call noalias nonnull ptr @xnmalloc(i64 noundef %32, i64 noundef 1) #47, !dbg !3898
  call void @llvm.dbg.value(metadata ptr %33, metadata !3867, metadata !DIExpression()), !dbg !3884
  store i64 %19, ptr %30, align 8, !dbg !3899, !tbaa !1413
  %34 = load ptr, ptr %14, align 8, !dbg !3900, !tbaa !1174
  call void @llvm.dbg.value(metadata ptr %33, metadata !3901, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata ptr %34, metadata !3907, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i64 %32, metadata !3908, metadata !DIExpression()), !dbg !3909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %33, ptr noundef nonnull align 1 %34, i64 noundef %32, i1 noundef false) #39, !dbg !3911
  %35 = getelementptr inbounds ptr, ptr %28, i64 %17, !dbg !3912
  store ptr %33, ptr %35, align 8, !dbg !3913, !tbaa !851
  %36 = add nuw nsw i64 %17, 1, !dbg !3914
  call void @llvm.dbg.value(metadata i64 %36, metadata !3862, metadata !DIExpression()), !dbg !3868
  br label %15

37:                                               ; preds = %26
  %38 = getelementptr inbounds ptr, ptr %28, i64 %17, !dbg !3915
  store ptr null, ptr %38, align 8, !dbg !3917, !tbaa !851
  store i64 0, ptr %30, align 8, !dbg !3918, !tbaa !1413
  call void @llvm.dbg.value(metadata i64 %17, metadata !3862, metadata !DIExpression()), !dbg !3868
  %39 = load ptr, ptr %14, align 8, !dbg !3919, !tbaa !1174
  call void @free(ptr noundef %39) #39, !dbg !3920
  store ptr %28, ptr %4, align 8, !dbg !3921, !tbaa !851
  %40 = icmp eq ptr %5, null, !dbg !3922
  br i1 %40, label %42, label %41, !dbg !3924

41:                                               ; preds = %37
  store ptr %27, ptr %5, align 8, !dbg !3925, !tbaa !851
  br label %43, !dbg !3926

42:                                               ; preds = %37
  call void @free(ptr noundef nonnull %27) #39, !dbg !3927
  br label %43

43:                                               ; preds = %42, %41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #39, !dbg !3928
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #39, !dbg !3928
  ret i64 %17, !dbg !3929
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3930 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3969, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata ptr %1, metadata !3970, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata ptr %2, metadata !3971, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata ptr %3, metadata !3972, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata ptr %4, metadata !3973, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata i64 %5, metadata !3974, metadata !DIExpression()), !dbg !3975
  %7 = icmp eq ptr %1, null, !dbg !3976
  br i1 %7, label %10, label %8, !dbg !3978

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.99, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !3979
  br label %12, !dbg !3979

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.100, ptr noundef %2, ptr noundef %3) #39, !dbg !3980
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.3.102, i32 noundef 5) #39, !dbg !3981
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !3981
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.103, ptr noundef %0), !dbg !3982
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.5.104, i32 noundef 5) #39, !dbg !3983
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.105) #39, !dbg !3983
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.103, ptr noundef %0), !dbg !3984
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
  ], !dbg !3985

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.7.106, i32 noundef 5) #39, !dbg !3986
  %21 = load ptr, ptr %4, align 8, !dbg !3986, !tbaa !851
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !3986
  br label %147, !dbg !3988

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.8.107, i32 noundef 5) #39, !dbg !3989
  %25 = load ptr, ptr %4, align 8, !dbg !3989, !tbaa !851
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3989
  %27 = load ptr, ptr %26, align 8, !dbg !3989, !tbaa !851
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !3989
  br label %147, !dbg !3990

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.9.108, i32 noundef 5) #39, !dbg !3991
  %31 = load ptr, ptr %4, align 8, !dbg !3991, !tbaa !851
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3991
  %33 = load ptr, ptr %32, align 8, !dbg !3991, !tbaa !851
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3991
  %35 = load ptr, ptr %34, align 8, !dbg !3991, !tbaa !851
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !3991
  br label %147, !dbg !3992

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.10.109, i32 noundef 5) #39, !dbg !3993
  %39 = load ptr, ptr %4, align 8, !dbg !3993, !tbaa !851
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3993
  %41 = load ptr, ptr %40, align 8, !dbg !3993, !tbaa !851
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3993
  %43 = load ptr, ptr %42, align 8, !dbg !3993, !tbaa !851
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3993
  %45 = load ptr, ptr %44, align 8, !dbg !3993, !tbaa !851
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !3993
  br label %147, !dbg !3994

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.11.110, i32 noundef 5) #39, !dbg !3995
  %49 = load ptr, ptr %4, align 8, !dbg !3995, !tbaa !851
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3995
  %51 = load ptr, ptr %50, align 8, !dbg !3995, !tbaa !851
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3995
  %53 = load ptr, ptr %52, align 8, !dbg !3995, !tbaa !851
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3995
  %55 = load ptr, ptr %54, align 8, !dbg !3995, !tbaa !851
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3995
  %57 = load ptr, ptr %56, align 8, !dbg !3995, !tbaa !851
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !3995
  br label %147, !dbg !3996

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.12.111, i32 noundef 5) #39, !dbg !3997
  %61 = load ptr, ptr %4, align 8, !dbg !3997, !tbaa !851
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3997
  %63 = load ptr, ptr %62, align 8, !dbg !3997, !tbaa !851
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3997
  %65 = load ptr, ptr %64, align 8, !dbg !3997, !tbaa !851
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3997
  %67 = load ptr, ptr %66, align 8, !dbg !3997, !tbaa !851
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3997
  %69 = load ptr, ptr %68, align 8, !dbg !3997, !tbaa !851
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3997
  %71 = load ptr, ptr %70, align 8, !dbg !3997, !tbaa !851
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !3997
  br label %147, !dbg !3998

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.13.112, i32 noundef 5) #39, !dbg !3999
  %75 = load ptr, ptr %4, align 8, !dbg !3999, !tbaa !851
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3999
  %77 = load ptr, ptr %76, align 8, !dbg !3999, !tbaa !851
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3999
  %79 = load ptr, ptr %78, align 8, !dbg !3999, !tbaa !851
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3999
  %81 = load ptr, ptr %80, align 8, !dbg !3999, !tbaa !851
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3999
  %83 = load ptr, ptr %82, align 8, !dbg !3999, !tbaa !851
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3999
  %85 = load ptr, ptr %84, align 8, !dbg !3999, !tbaa !851
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3999
  %87 = load ptr, ptr %86, align 8, !dbg !3999, !tbaa !851
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !3999
  br label %147, !dbg !4000

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.14.113, i32 noundef 5) #39, !dbg !4001
  %91 = load ptr, ptr %4, align 8, !dbg !4001, !tbaa !851
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4001
  %93 = load ptr, ptr %92, align 8, !dbg !4001, !tbaa !851
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4001
  %95 = load ptr, ptr %94, align 8, !dbg !4001, !tbaa !851
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4001
  %97 = load ptr, ptr %96, align 8, !dbg !4001, !tbaa !851
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4001
  %99 = load ptr, ptr %98, align 8, !dbg !4001, !tbaa !851
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4001
  %101 = load ptr, ptr %100, align 8, !dbg !4001, !tbaa !851
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4001
  %103 = load ptr, ptr %102, align 8, !dbg !4001, !tbaa !851
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4001
  %105 = load ptr, ptr %104, align 8, !dbg !4001, !tbaa !851
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !4001
  br label %147, !dbg !4002

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.15.114, i32 noundef 5) #39, !dbg !4003
  %109 = load ptr, ptr %4, align 8, !dbg !4003, !tbaa !851
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4003
  %111 = load ptr, ptr %110, align 8, !dbg !4003, !tbaa !851
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4003
  %113 = load ptr, ptr %112, align 8, !dbg !4003, !tbaa !851
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4003
  %115 = load ptr, ptr %114, align 8, !dbg !4003, !tbaa !851
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4003
  %117 = load ptr, ptr %116, align 8, !dbg !4003, !tbaa !851
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4003
  %119 = load ptr, ptr %118, align 8, !dbg !4003, !tbaa !851
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4003
  %121 = load ptr, ptr %120, align 8, !dbg !4003, !tbaa !851
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4003
  %123 = load ptr, ptr %122, align 8, !dbg !4003, !tbaa !851
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4003
  %125 = load ptr, ptr %124, align 8, !dbg !4003, !tbaa !851
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !4003
  br label %147, !dbg !4004

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.16.115, i32 noundef 5) #39, !dbg !4005
  %129 = load ptr, ptr %4, align 8, !dbg !4005, !tbaa !851
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4005
  %131 = load ptr, ptr %130, align 8, !dbg !4005, !tbaa !851
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4005
  %133 = load ptr, ptr %132, align 8, !dbg !4005, !tbaa !851
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4005
  %135 = load ptr, ptr %134, align 8, !dbg !4005, !tbaa !851
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4005
  %137 = load ptr, ptr %136, align 8, !dbg !4005, !tbaa !851
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4005
  %139 = load ptr, ptr %138, align 8, !dbg !4005, !tbaa !851
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4005
  %141 = load ptr, ptr %140, align 8, !dbg !4005, !tbaa !851
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4005
  %143 = load ptr, ptr %142, align 8, !dbg !4005, !tbaa !851
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4005
  %145 = load ptr, ptr %144, align 8, !dbg !4005, !tbaa !851
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !4005
  br label %147, !dbg !4006

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4007
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #12 !dbg !4008 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4012, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr %1, metadata !4013, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr %2, metadata !4014, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr %3, metadata !4015, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr %4, metadata !4016, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i64 0, metadata !4017, metadata !DIExpression()), !dbg !4018
  br label %6, !dbg !4019

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4021
  call void @llvm.dbg.value(metadata i64 %7, metadata !4017, metadata !DIExpression()), !dbg !4018
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4022
  %9 = load ptr, ptr %8, align 8, !dbg !4022, !tbaa !851
  %10 = icmp eq ptr %9, null, !dbg !4024
  %11 = add i64 %7, 1, !dbg !4025
  call void @llvm.dbg.value(metadata i64 %11, metadata !4017, metadata !DIExpression()), !dbg !4018
  br i1 %10, label %12, label %6, !dbg !4024, !llvm.loop !4026

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4028
  ret void, !dbg !4029
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #12 !dbg !4030 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4045, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata ptr %1, metadata !4046, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata ptr %2, metadata !4047, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata ptr %3, metadata !4048, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4049, metadata !DIExpression()), !dbg !4054
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !4055
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4051, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i64 0, metadata !4050, metadata !DIExpression()), !dbg !4053
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4050, metadata !DIExpression()), !dbg !4053
  %10 = icmp sgt i32 %9, -1, !dbg !4057
  br i1 %10, label %18, label %11, !dbg !4057

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4057
  store i32 %12, ptr %7, align 8, !dbg !4057
  %13 = icmp ult i32 %9, -7, !dbg !4057
  br i1 %13, label %14, label %18, !dbg !4057

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4057
  %16 = sext i32 %9 to i64, !dbg !4057
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4057
  br label %22, !dbg !4057

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4057
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4057
  store ptr %21, ptr %4, align 8, !dbg !4057
  br label %22, !dbg !4057

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4057
  %25 = load ptr, ptr %24, align 8, !dbg !4057
  store ptr %25, ptr %6, align 8, !dbg !4060, !tbaa !851
  %26 = icmp eq ptr %25, null, !dbg !4061
  br i1 %26, label %197, label %27, !dbg !4062

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !4050, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i64 1, metadata !4050, metadata !DIExpression()), !dbg !4053
  %28 = icmp sgt i32 %23, -1, !dbg !4057
  br i1 %28, label %36, label %29, !dbg !4057

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4057
  store i32 %30, ptr %7, align 8, !dbg !4057
  %31 = icmp ult i32 %23, -7, !dbg !4057
  br i1 %31, label %32, label %36, !dbg !4057

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4057
  %34 = sext i32 %23 to i64, !dbg !4057
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4057
  br label %40, !dbg !4057

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4057
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4057
  store ptr %39, ptr %4, align 8, !dbg !4057
  br label %40, !dbg !4057

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4057
  %43 = load ptr, ptr %42, align 8, !dbg !4057
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4063
  store ptr %43, ptr %44, align 8, !dbg !4060, !tbaa !851
  %45 = icmp eq ptr %43, null, !dbg !4061
  br i1 %45, label %197, label %46, !dbg !4062

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4050, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i64 2, metadata !4050, metadata !DIExpression()), !dbg !4053
  %47 = icmp sgt i32 %41, -1, !dbg !4057
  br i1 %47, label %55, label %48, !dbg !4057

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4057
  store i32 %49, ptr %7, align 8, !dbg !4057
  %50 = icmp ult i32 %41, -7, !dbg !4057
  br i1 %50, label %51, label %55, !dbg !4057

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4057
  %53 = sext i32 %41 to i64, !dbg !4057
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4057
  br label %59, !dbg !4057

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4057
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4057
  store ptr %58, ptr %4, align 8, !dbg !4057
  br label %59, !dbg !4057

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4057
  %62 = load ptr, ptr %61, align 8, !dbg !4057
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4063
  store ptr %62, ptr %63, align 8, !dbg !4060, !tbaa !851
  %64 = icmp eq ptr %62, null, !dbg !4061
  br i1 %64, label %197, label %65, !dbg !4062

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !4050, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i64 3, metadata !4050, metadata !DIExpression()), !dbg !4053
  %66 = icmp sgt i32 %60, -1, !dbg !4057
  br i1 %66, label %74, label %67, !dbg !4057

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4057
  store i32 %68, ptr %7, align 8, !dbg !4057
  %69 = icmp ult i32 %60, -7, !dbg !4057
  br i1 %69, label %70, label %74, !dbg !4057

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4057
  %72 = sext i32 %60 to i64, !dbg !4057
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4057
  br label %78, !dbg !4057

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4057
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4057
  store ptr %77, ptr %4, align 8, !dbg !4057
  br label %78, !dbg !4057

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4057
  %81 = load ptr, ptr %80, align 8, !dbg !4057
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4063
  store ptr %81, ptr %82, align 8, !dbg !4060, !tbaa !851
  %83 = icmp eq ptr %81, null, !dbg !4061
  br i1 %83, label %197, label %84, !dbg !4062

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !4050, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i64 4, metadata !4050, metadata !DIExpression()), !dbg !4053
  %85 = icmp sgt i32 %79, -1, !dbg !4057
  br i1 %85, label %93, label %86, !dbg !4057

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4057
  store i32 %87, ptr %7, align 8, !dbg !4057
  %88 = icmp ult i32 %79, -7, !dbg !4057
  br i1 %88, label %89, label %93, !dbg !4057

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4057
  %91 = sext i32 %79 to i64, !dbg !4057
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4057
  br label %97, !dbg !4057

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4057
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4057
  store ptr %96, ptr %4, align 8, !dbg !4057
  br label %97, !dbg !4057

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4057
  %100 = load ptr, ptr %99, align 8, !dbg !4057
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4063
  store ptr %100, ptr %101, align 8, !dbg !4060, !tbaa !851
  %102 = icmp eq ptr %100, null, !dbg !4061
  br i1 %102, label %197, label %103, !dbg !4062

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !4050, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i64 5, metadata !4050, metadata !DIExpression()), !dbg !4053
  %104 = icmp sgt i32 %98, -1, !dbg !4057
  br i1 %104, label %112, label %105, !dbg !4057

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4057
  store i32 %106, ptr %7, align 8, !dbg !4057
  %107 = icmp ult i32 %98, -7, !dbg !4057
  br i1 %107, label %108, label %112, !dbg !4057

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4057
  %110 = sext i32 %98 to i64, !dbg !4057
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4057
  br label %116, !dbg !4057

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4057
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4057
  store ptr %115, ptr %4, align 8, !dbg !4057
  br label %116, !dbg !4057

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4057
  %119 = load ptr, ptr %118, align 8, !dbg !4057
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4063
  store ptr %119, ptr %120, align 8, !dbg !4060, !tbaa !851
  %121 = icmp eq ptr %119, null, !dbg !4061
  br i1 %121, label %197, label %122, !dbg !4062

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !4050, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i64 6, metadata !4050, metadata !DIExpression()), !dbg !4053
  %123 = icmp sgt i32 %117, -1, !dbg !4057
  br i1 %123, label %131, label %124, !dbg !4057

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4057
  store i32 %125, ptr %7, align 8, !dbg !4057
  %126 = icmp ult i32 %117, -7, !dbg !4057
  br i1 %126, label %127, label %131, !dbg !4057

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4057
  %129 = sext i32 %117 to i64, !dbg !4057
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4057
  br label %135, !dbg !4057

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4057
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4057
  store ptr %134, ptr %4, align 8, !dbg !4057
  br label %135, !dbg !4057

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4057
  %138 = load ptr, ptr %137, align 8, !dbg !4057
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4063
  store ptr %138, ptr %139, align 8, !dbg !4060, !tbaa !851
  %140 = icmp eq ptr %138, null, !dbg !4061
  br i1 %140, label %197, label %141, !dbg !4062

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !4050, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i64 7, metadata !4050, metadata !DIExpression()), !dbg !4053
  %142 = icmp sgt i32 %136, -1, !dbg !4057
  br i1 %142, label %150, label %143, !dbg !4057

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4057
  store i32 %144, ptr %7, align 8, !dbg !4057
  %145 = icmp ult i32 %136, -7, !dbg !4057
  br i1 %145, label %146, label %150, !dbg !4057

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4057
  %148 = sext i32 %136 to i64, !dbg !4057
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4057
  br label %154, !dbg !4057

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4057
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4057
  store ptr %153, ptr %4, align 8, !dbg !4057
  br label %154, !dbg !4057

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4057
  %157 = load ptr, ptr %156, align 8, !dbg !4057
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4063
  store ptr %157, ptr %158, align 8, !dbg !4060, !tbaa !851
  %159 = icmp eq ptr %157, null, !dbg !4061
  br i1 %159, label %197, label %160, !dbg !4062

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !4050, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i64 8, metadata !4050, metadata !DIExpression()), !dbg !4053
  %161 = icmp sgt i32 %155, -1, !dbg !4057
  br i1 %161, label %169, label %162, !dbg !4057

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4057
  store i32 %163, ptr %7, align 8, !dbg !4057
  %164 = icmp ult i32 %155, -7, !dbg !4057
  br i1 %164, label %165, label %169, !dbg !4057

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4057
  %167 = sext i32 %155 to i64, !dbg !4057
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4057
  br label %173, !dbg !4057

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4057
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4057
  store ptr %172, ptr %4, align 8, !dbg !4057
  br label %173, !dbg !4057

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4057
  %176 = load ptr, ptr %175, align 8, !dbg !4057
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4063
  store ptr %176, ptr %177, align 8, !dbg !4060, !tbaa !851
  %178 = icmp eq ptr %176, null, !dbg !4061
  br i1 %178, label %197, label %179, !dbg !4062

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !4050, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i64 9, metadata !4050, metadata !DIExpression()), !dbg !4053
  %180 = icmp sgt i32 %174, -1, !dbg !4057
  br i1 %180, label %188, label %181, !dbg !4057

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4057
  store i32 %182, ptr %7, align 8, !dbg !4057
  %183 = icmp ult i32 %174, -7, !dbg !4057
  br i1 %183, label %184, label %188, !dbg !4057

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4057
  %186 = sext i32 %174 to i64, !dbg !4057
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4057
  br label %191, !dbg !4057

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4057
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4057
  store ptr %190, ptr %4, align 8, !dbg !4057
  br label %191, !dbg !4057

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4057
  %193 = load ptr, ptr %192, align 8, !dbg !4057
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4063
  store ptr %193, ptr %194, align 8, !dbg !4060, !tbaa !851
  %195 = icmp eq ptr %193, null, !dbg !4061
  %196 = select i1 %195, i64 9, i64 10, !dbg !4062
  br label %197, !dbg !4062

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4064
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4065
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !4066
  ret void, !dbg !4066
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #12 !dbg !4067 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4071, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata ptr %1, metadata !4072, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata ptr %2, metadata !4073, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata ptr %3, metadata !4074, metadata !DIExpression()), !dbg !4076
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !4077
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4075, metadata !DIExpression()), !dbg !4078
  call void @llvm.va_start(ptr nonnull %5), !dbg !4079
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !4080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4080, !tbaa.struct !1684
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4080
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !4080
  call void @llvm.va_end(ptr nonnull %5), !dbg !4081
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !4082
  ret void, !dbg !4082
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !4083 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4084, !tbaa !851
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.103, ptr noundef %1), !dbg !4084
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.17.120, i32 noundef 5) #39, !dbg !4085
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.121) #39, !dbg !4085
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.19.122, i32 noundef 5) #39, !dbg !4086
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.123, ptr noundef nonnull @.str.21.124) #39, !dbg !4086
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.101, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !4087
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #39, !dbg !4087
  ret void, !dbg !4088
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4089 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4094, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i64 %1, metadata !4095, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i64 %2, metadata !4096, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata ptr %0, metadata !4098, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %1, metadata !4101, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %2, metadata !4102, metadata !DIExpression()), !dbg !4103
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4105
  call void @llvm.dbg.value(metadata ptr %4, metadata !4106, metadata !DIExpression()), !dbg !4111
  %5 = icmp eq ptr %4, null, !dbg !4113
  br i1 %5, label %6, label %7, !dbg !4115

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4116
  unreachable, !dbg !4116

7:                                                ; preds = %3
  ret ptr %4, !dbg !4117
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4099 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4098, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i64 %1, metadata !4101, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i64 %2, metadata !4102, metadata !DIExpression()), !dbg !4118
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4119
  call void @llvm.dbg.value(metadata ptr %4, metadata !4106, metadata !DIExpression()), !dbg !4120
  %5 = icmp eq ptr %4, null, !dbg !4122
  br i1 %5, label %6, label %7, !dbg !4123

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4124
  unreachable, !dbg !4124

7:                                                ; preds = %3
  ret ptr %4, !dbg !4125
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4126 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4130, metadata !DIExpression()), !dbg !4131
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4132
  call void @llvm.dbg.value(metadata ptr %2, metadata !4106, metadata !DIExpression()), !dbg !4133
  %3 = icmp eq ptr %2, null, !dbg !4135
  br i1 %3, label %4, label %5, !dbg !4136

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4137
  unreachable, !dbg !4137

5:                                                ; preds = %1
  ret ptr %2, !dbg !4138
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4139 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4140 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4144, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i64 %0, metadata !4146, metadata !DIExpression()), !dbg !4150
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4152
  call void @llvm.dbg.value(metadata ptr %2, metadata !4106, metadata !DIExpression()), !dbg !4153
  %3 = icmp eq ptr %2, null, !dbg !4155
  br i1 %3, label %4, label %5, !dbg !4156

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4157
  unreachable, !dbg !4157

5:                                                ; preds = %1
  ret ptr %2, !dbg !4158
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4159 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4163, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i64 %0, metadata !4130, metadata !DIExpression()), !dbg !4165
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4167
  call void @llvm.dbg.value(metadata ptr %2, metadata !4106, metadata !DIExpression()), !dbg !4168
  %3 = icmp eq ptr %2, null, !dbg !4170
  br i1 %3, label %4, label %5, !dbg !4171

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4172
  unreachable, !dbg !4172

5:                                                ; preds = %1
  ret ptr %2, !dbg !4173
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4174 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4178, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i64 %1, metadata !4179, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata ptr %0, metadata !4181, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i64 %1, metadata !4185, metadata !DIExpression()), !dbg !4186
  %3 = icmp eq i64 %1, 0, !dbg !4188
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4188
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4189
  call void @llvm.dbg.value(metadata ptr %5, metadata !4106, metadata !DIExpression()), !dbg !4190
  %6 = icmp eq ptr %5, null, !dbg !4192
  br i1 %6, label %7, label %8, !dbg !4193

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4194
  unreachable, !dbg !4194

8:                                                ; preds = %2
  ret ptr %5, !dbg !4195
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4196 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4197 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4201, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i64 %1, metadata !4202, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata ptr %0, metadata !4204, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata i64 %1, metadata !4207, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata ptr %0, metadata !4181, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i64 %1, metadata !4185, metadata !DIExpression()), !dbg !4210
  %3 = icmp eq i64 %1, 0, !dbg !4212
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4212
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4213
  call void @llvm.dbg.value(metadata ptr %5, metadata !4106, metadata !DIExpression()), !dbg !4214
  %6 = icmp eq ptr %5, null, !dbg !4216
  br i1 %6, label %7, label %8, !dbg !4217

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4218
  unreachable, !dbg !4218

8:                                                ; preds = %2
  ret ptr %5, !dbg !4219
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4220 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4224, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i64 %1, metadata !4225, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i64 %2, metadata !4226, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata ptr %0, metadata !4228, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i64 %1, metadata !4231, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i64 %2, metadata !4232, metadata !DIExpression()), !dbg !4233
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4235
  call void @llvm.dbg.value(metadata ptr %4, metadata !4106, metadata !DIExpression()), !dbg !4236
  %5 = icmp eq ptr %4, null, !dbg !4238
  br i1 %5, label %6, label %7, !dbg !4239

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4240
  unreachable, !dbg !4240

7:                                                ; preds = %3
  ret ptr %4, !dbg !4241
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4242 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4246, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 %1, metadata !4247, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata ptr null, metadata !4098, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata i64 %0, metadata !4101, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata i64 %1, metadata !4102, metadata !DIExpression()), !dbg !4249
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4251
  call void @llvm.dbg.value(metadata ptr %3, metadata !4106, metadata !DIExpression()), !dbg !4252
  %4 = icmp eq ptr %3, null, !dbg !4254
  br i1 %4, label %5, label %6, !dbg !4255

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4256
  unreachable, !dbg !4256

6:                                                ; preds = %2
  ret ptr %3, !dbg !4257
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4258 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4262, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata i64 %1, metadata !4263, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata ptr null, metadata !4224, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i64 %0, metadata !4225, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i64 %1, metadata !4226, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata ptr null, metadata !4228, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata i64 %0, metadata !4231, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata i64 %1, metadata !4232, metadata !DIExpression()), !dbg !4267
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4269
  call void @llvm.dbg.value(metadata ptr %3, metadata !4106, metadata !DIExpression()), !dbg !4270
  %4 = icmp eq ptr %3, null, !dbg !4272
  br i1 %4, label %5, label %6, !dbg !4273

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4274
  unreachable, !dbg !4274

6:                                                ; preds = %2
  ret ptr %3, !dbg !4275
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #12 !dbg !4276 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4280, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata ptr %1, metadata !4281, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata ptr %0, metadata !794, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata ptr %1, metadata !795, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata i64 1, metadata !796, metadata !DIExpression()), !dbg !4283
  %3 = load i64, ptr %1, align 8, !dbg !4285, !tbaa !1413
  call void @llvm.dbg.value(metadata i64 %3, metadata !797, metadata !DIExpression()), !dbg !4283
  %4 = icmp eq ptr %0, null, !dbg !4286
  br i1 %4, label %5, label %8, !dbg !4288

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4289
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4292
  br label %15, !dbg !4292

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4293
  %10 = add nuw i64 %9, 1, !dbg !4293
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4293
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4293
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4293
  call void @llvm.dbg.value(metadata i64 %13, metadata !797, metadata !DIExpression()), !dbg !4283
  br i1 %12, label %14, label %15, !dbg !4296

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4297
  unreachable, !dbg !4297

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4283
  call void @llvm.dbg.value(metadata i64 %16, metadata !797, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata ptr %0, metadata !4098, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i64 %16, metadata !4101, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i64 1, metadata !4102, metadata !DIExpression()), !dbg !4298
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4300
  call void @llvm.dbg.value(metadata ptr %17, metadata !4106, metadata !DIExpression()), !dbg !4301
  %18 = icmp eq ptr %17, null, !dbg !4303
  br i1 %18, label %19, label %20, !dbg !4304

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4305
  unreachable, !dbg !4305

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !794, metadata !DIExpression()), !dbg !4283
  store i64 %16, ptr %1, align 8, !dbg !4306, !tbaa !1413
  ret ptr %17, !dbg !4307
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !789 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !794, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata ptr %1, metadata !795, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i64 %2, metadata !796, metadata !DIExpression()), !dbg !4308
  %4 = load i64, ptr %1, align 8, !dbg !4309, !tbaa !1413
  call void @llvm.dbg.value(metadata i64 %4, metadata !797, metadata !DIExpression()), !dbg !4308
  %5 = icmp eq ptr %0, null, !dbg !4310
  br i1 %5, label %6, label %13, !dbg !4311

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4312
  br i1 %7, label %8, label %20, !dbg !4313

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4314
  call void @llvm.dbg.value(metadata i64 %9, metadata !797, metadata !DIExpression()), !dbg !4308
  %10 = icmp ugt i64 %2, 128, !dbg !4316
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4317
  call void @llvm.dbg.value(metadata i64 %12, metadata !797, metadata !DIExpression()), !dbg !4308
  br label %20, !dbg !4318

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4319
  %15 = add nuw i64 %14, 1, !dbg !4319
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4319
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4319
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4319
  call void @llvm.dbg.value(metadata i64 %18, metadata !797, metadata !DIExpression()), !dbg !4308
  br i1 %17, label %19, label %20, !dbg !4320

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4321
  unreachable, !dbg !4321

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4308
  call void @llvm.dbg.value(metadata i64 %21, metadata !797, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata ptr %0, metadata !4098, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i64 %21, metadata !4101, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i64 %2, metadata !4102, metadata !DIExpression()), !dbg !4322
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4324
  call void @llvm.dbg.value(metadata ptr %22, metadata !4106, metadata !DIExpression()), !dbg !4325
  %23 = icmp eq ptr %22, null, !dbg !4327
  br i1 %23, label %24, label %25, !dbg !4328

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4329
  unreachable, !dbg !4329

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !794, metadata !DIExpression()), !dbg !4308
  store i64 %21, ptr %1, align 8, !dbg !4330, !tbaa !1413
  ret ptr %22, !dbg !4331
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !801 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !809, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata ptr %1, metadata !810, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %2, metadata !811, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %3, metadata !812, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %4, metadata !813, metadata !DIExpression()), !dbg !4332
  %6 = load i64, ptr %1, align 8, !dbg !4333, !tbaa !1413
  call void @llvm.dbg.value(metadata i64 %6, metadata !814, metadata !DIExpression()), !dbg !4332
  %7 = ashr i64 %6, 1, !dbg !4334
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4334
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4334
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4334
  call void @llvm.dbg.value(metadata i64 %10, metadata !815, metadata !DIExpression()), !dbg !4332
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4336
  call void @llvm.dbg.value(metadata i64 %11, metadata !815, metadata !DIExpression()), !dbg !4332
  %12 = icmp sgt i64 %3, -1, !dbg !4337
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4339
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4339
  call void @llvm.dbg.value(metadata i64 %15, metadata !815, metadata !DIExpression()), !dbg !4332
  %16 = icmp slt i64 %4, 0, !dbg !4340
  br i1 %16, label %17, label %30, !dbg !4340

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4340
  br i1 %18, label %19, label %24, !dbg !4340

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4340
  %21 = udiv i64 9223372036854775807, %20, !dbg !4340
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4340
  br i1 %23, label %46, label %43, !dbg !4340

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4340
  br i1 %25, label %43, label %26, !dbg !4340

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4340
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4340
  %29 = icmp ult i64 %28, %15, !dbg !4340
  br i1 %29, label %46, label %43, !dbg !4340

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4340
  br i1 %31, label %43, label %32, !dbg !4340

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4340
  br i1 %33, label %34, label %40, !dbg !4340

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4340
  br i1 %35, label %43, label %36, !dbg !4340

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4340
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4340
  %39 = icmp ult i64 %38, %4, !dbg !4340
  br i1 %39, label %46, label %43, !dbg !4340

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4340
  br i1 %42, label %46, label %43, !dbg !4340

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !816, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4332
  %44 = mul i64 %15, %4, !dbg !4340
  call void @llvm.dbg.value(metadata i64 %44, metadata !816, metadata !DIExpression()), !dbg !4332
  %45 = icmp slt i64 %44, 128, !dbg !4340
  br i1 %45, label %46, label %52, !dbg !4340

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !817, metadata !DIExpression()), !dbg !4332
  %48 = sdiv i64 %47, %4, !dbg !4341
  call void @llvm.dbg.value(metadata i64 %48, metadata !815, metadata !DIExpression()), !dbg !4332
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4344
  call void @llvm.dbg.value(metadata i64 %51, metadata !816, metadata !DIExpression()), !dbg !4332
  br label %52, !dbg !4345

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4332
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4332
  call void @llvm.dbg.value(metadata i64 %54, metadata !816, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %53, metadata !815, metadata !DIExpression()), !dbg !4332
  %55 = icmp eq ptr %0, null, !dbg !4346
  br i1 %55, label %56, label %57, !dbg !4348

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4349, !tbaa !1413
  br label %57, !dbg !4350

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4351
  %59 = icmp slt i64 %58, %2, !dbg !4353
  br i1 %59, label %60, label %97, !dbg !4354

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4355
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4355
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4355
  call void @llvm.dbg.value(metadata i64 %63, metadata !815, metadata !DIExpression()), !dbg !4332
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4356
  br i1 %66, label %96, label %67, !dbg !4356

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4357

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4357
  br i1 %69, label %70, label %75, !dbg !4357

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4357
  %72 = udiv i64 9223372036854775807, %71, !dbg !4357
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4357
  br i1 %74, label %96, label %94, !dbg !4357

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4357
  br i1 %76, label %94, label %77, !dbg !4357

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4357
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4357
  %80 = icmp ult i64 %79, %63, !dbg !4357
  br i1 %80, label %96, label %94, !dbg !4357

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4357
  br i1 %82, label %94, label %83, !dbg !4357

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4357
  br i1 %84, label %85, label %91, !dbg !4357

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4357
  br i1 %86, label %94, label %87, !dbg !4357

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4357
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4357
  %90 = icmp ult i64 %89, %4, !dbg !4357
  br i1 %90, label %96, label %94, !dbg !4357

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4357
  br i1 %93, label %96, label %94, !dbg !4357

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !816, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4332
  %95 = mul i64 %63, %4, !dbg !4357
  call void @llvm.dbg.value(metadata i64 %95, metadata !816, metadata !DIExpression()), !dbg !4332
  br label %97, !dbg !4358

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #41, !dbg !4359
  unreachable, !dbg !4359

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4332
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4332
  call void @llvm.dbg.value(metadata i64 %99, metadata !816, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %98, metadata !815, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata ptr %0, metadata !4178, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i64 %99, metadata !4179, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata ptr %0, metadata !4181, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 %99, metadata !4185, metadata !DIExpression()), !dbg !4362
  %100 = icmp eq i64 %99, 0, !dbg !4364
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4364
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #46, !dbg !4365
  call void @llvm.dbg.value(metadata ptr %102, metadata !4106, metadata !DIExpression()), !dbg !4366
  %103 = icmp eq ptr %102, null, !dbg !4368
  br i1 %103, label %104, label %105, !dbg !4369

104:                                              ; preds = %97
  tail call void @xalloc_die() #41, !dbg !4370
  unreachable, !dbg !4370

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !809, metadata !DIExpression()), !dbg !4332
  store i64 %98, ptr %1, align 8, !dbg !4371, !tbaa !1413
  ret ptr %102, !dbg !4372
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4373 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4375, metadata !DIExpression()), !dbg !4376
  call void @llvm.dbg.value(metadata i64 %0, metadata !4377, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata i64 1, metadata !4380, metadata !DIExpression()), !dbg !4381
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4383
  call void @llvm.dbg.value(metadata ptr %2, metadata !4106, metadata !DIExpression()), !dbg !4384
  %3 = icmp eq ptr %2, null, !dbg !4386
  br i1 %3, label %4, label %5, !dbg !4387

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4388
  unreachable, !dbg !4388

5:                                                ; preds = %1
  ret ptr %2, !dbg !4389
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4390 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4378 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4377, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata i64 %1, metadata !4380, metadata !DIExpression()), !dbg !4391
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4392
  call void @llvm.dbg.value(metadata ptr %3, metadata !4106, metadata !DIExpression()), !dbg !4393
  %4 = icmp eq ptr %3, null, !dbg !4395
  br i1 %4, label %5, label %6, !dbg !4396

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4397
  unreachable, !dbg !4397

6:                                                ; preds = %2
  ret ptr %3, !dbg !4398
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4399 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4401, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i64 %0, metadata !4403, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata i64 1, metadata !4406, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata i64 %0, metadata !4409, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata i64 1, metadata !4412, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata i64 %0, metadata !4409, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata i64 1, metadata !4412, metadata !DIExpression()), !dbg !4413
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4415
  call void @llvm.dbg.value(metadata ptr %2, metadata !4106, metadata !DIExpression()), !dbg !4416
  %3 = icmp eq ptr %2, null, !dbg !4418
  br i1 %3, label %4, label %5, !dbg !4419

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4420
  unreachable, !dbg !4420

5:                                                ; preds = %1
  ret ptr %2, !dbg !4421
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4404 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4403, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64 %1, metadata !4406, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64 %0, metadata !4409, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.value(metadata i64 %1, metadata !4412, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.value(metadata i64 %0, metadata !4409, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.value(metadata i64 %1, metadata !4412, metadata !DIExpression()), !dbg !4423
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4425
  call void @llvm.dbg.value(metadata ptr %3, metadata !4106, metadata !DIExpression()), !dbg !4426
  %4 = icmp eq ptr %3, null, !dbg !4428
  br i1 %4, label %5, label %6, !dbg !4429

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4430
  unreachable, !dbg !4430

6:                                                ; preds = %2
  ret ptr %3, !dbg !4431
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4432 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4436, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata i64 %1, metadata !4437, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata i64 %1, metadata !4130, metadata !DIExpression()), !dbg !4439
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4441
  call void @llvm.dbg.value(metadata ptr %3, metadata !4106, metadata !DIExpression()), !dbg !4442
  %4 = icmp eq ptr %3, null, !dbg !4444
  br i1 %4, label %5, label %6, !dbg !4445

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4446
  unreachable, !dbg !4446

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4447, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata ptr %0, metadata !4450, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i64 %1, metadata !4451, metadata !DIExpression()), !dbg !4452
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4454
  ret ptr %3, !dbg !4455
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4456 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4460, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 %1, metadata !4461, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 %1, metadata !4144, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.value(metadata i64 %1, metadata !4146, metadata !DIExpression()), !dbg !4465
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4467
  call void @llvm.dbg.value(metadata ptr %3, metadata !4106, metadata !DIExpression()), !dbg !4468
  %4 = icmp eq ptr %3, null, !dbg !4470
  br i1 %4, label %5, label %6, !dbg !4471

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4472
  unreachable, !dbg !4472

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4447, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata ptr %0, metadata !4450, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i64 %1, metadata !4451, metadata !DIExpression()), !dbg !4473
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4475
  ret ptr %3, !dbg !4476
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !4477 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4481, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i64 %1, metadata !4482, metadata !DIExpression()), !dbg !4484
  %3 = add nsw i64 %1, 1, !dbg !4485
  call void @llvm.dbg.value(metadata i64 %3, metadata !4144, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.value(metadata i64 %3, metadata !4146, metadata !DIExpression()), !dbg !4488
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4490
  call void @llvm.dbg.value(metadata ptr %4, metadata !4106, metadata !DIExpression()), !dbg !4491
  %5 = icmp eq ptr %4, null, !dbg !4493
  br i1 %5, label %6, label %7, !dbg !4494

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4495
  unreachable, !dbg !4495

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4483, metadata !DIExpression()), !dbg !4484
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4496
  store i8 0, ptr %8, align 1, !dbg !4497, !tbaa !923
  call void @llvm.dbg.value(metadata ptr %4, metadata !4447, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata ptr %0, metadata !4450, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i64 %1, metadata !4451, metadata !DIExpression()), !dbg !4498
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4500
  ret ptr %4, !dbg !4501
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !4502 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4504, metadata !DIExpression()), !dbg !4505
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4506
  %3 = add i64 %2, 1, !dbg !4507
  call void @llvm.dbg.value(metadata ptr %0, metadata !4436, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i64 %3, metadata !4437, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i64 %3, metadata !4130, metadata !DIExpression()), !dbg !4510
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4512
  call void @llvm.dbg.value(metadata ptr %4, metadata !4106, metadata !DIExpression()), !dbg !4513
  %5 = icmp eq ptr %4, null, !dbg !4515
  br i1 %5, label %6, label %7, !dbg !4516

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4517
  unreachable, !dbg !4517

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4447, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata ptr %0, metadata !4450, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata i64 %3, metadata !4451, metadata !DIExpression()), !dbg !4518
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4520
  ret ptr %4, !dbg !4521
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4522 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4527, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %1, metadata !4524, metadata !DIExpression()), !dbg !4528
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.145, ptr noundef nonnull @.str.2.146, i32 noundef 5) #39, !dbg !4527
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.147, ptr noundef %2) #39, !dbg !4527
  %3 = icmp eq i32 %1, 0, !dbg !4527
  tail call void @llvm.assume(i1 %3), !dbg !4527
  tail call void @abort() #41, !dbg !4529
  unreachable, !dbg !4529
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #12 !dbg !4530 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4568, metadata !DIExpression()), !dbg !4573
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !4574
  call void @llvm.dbg.value(metadata i1 poison, metadata !4569, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4573
  call void @llvm.dbg.value(metadata ptr %0, metadata !4575, metadata !DIExpression()), !dbg !4578
  %3 = load i32, ptr %0, align 8, !dbg !4580, !tbaa !1165
  %4 = and i32 %3, 32, !dbg !4581
  %5 = icmp eq i32 %4, 0, !dbg !4581
  call void @llvm.dbg.value(metadata i1 %5, metadata !4571, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4573
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !4582
  %7 = icmp eq i32 %6, 0, !dbg !4583
  call void @llvm.dbg.value(metadata i1 %7, metadata !4572, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4573
  br i1 %5, label %8, label %18, !dbg !4584

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4586
  call void @llvm.dbg.value(metadata i1 %9, metadata !4569, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4573
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4587
  %11 = xor i1 %7, true, !dbg !4587
  %12 = sext i1 %11 to i32, !dbg !4587
  br i1 %10, label %21, label %13, !dbg !4587

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !4588
  %15 = load i32, ptr %14, align 4, !dbg !4588, !tbaa !914
  %16 = icmp ne i32 %15, 9, !dbg !4589
  %17 = sext i1 %16 to i32, !dbg !4590
  br label %21, !dbg !4590

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4591

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !4593
  store i32 0, ptr %20, align 4, !dbg !4595, !tbaa !914
  br label %21, !dbg !4593

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4573
  ret i32 %22, !dbg !4596
}

; Function Attrs: nounwind
declare !dbg !4597 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #12 !dbg !4600 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4605, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata ptr %1, metadata !4606, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata i64 %2, metadata !4607, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata ptr %3, metadata !4608, metadata !DIExpression()), !dbg !4610
  %5 = icmp eq ptr %1, null, !dbg !4611
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4613
  %7 = select i1 %5, ptr @.str.152, ptr %1, !dbg !4613
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4613
  call void @llvm.dbg.value(metadata i64 %8, metadata !4607, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata ptr %7, metadata !4606, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata ptr %6, metadata !4605, metadata !DIExpression()), !dbg !4610
  %9 = icmp eq ptr %3, null, !dbg !4614
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4616
  call void @llvm.dbg.value(metadata ptr %10, metadata !4608, metadata !DIExpression()), !dbg !4610
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !4617
  call void @llvm.dbg.value(metadata i64 %11, metadata !4609, metadata !DIExpression()), !dbg !4610
  %12 = icmp ult i64 %11, -3, !dbg !4618
  br i1 %12, label %13, label %17, !dbg !4620

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !4621
  %15 = icmp eq i32 %14, 0, !dbg !4621
  br i1 %15, label %16, label %29, !dbg !4622

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4623, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata ptr %10, metadata !4630, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i32 0, metadata !4633, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i64 8, metadata !4634, metadata !DIExpression()), !dbg !4635
  store i64 0, ptr %10, align 1, !dbg !4637
  br label %29, !dbg !4638

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4639
  br i1 %18, label %19, label %20, !dbg !4641

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4642
  unreachable, !dbg !4642

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4643

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #39, !dbg !4645
  br i1 %23, label %29, label %24, !dbg !4646

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4647
  br i1 %25, label %29, label %26, !dbg !4650

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4651, !tbaa !923
  %28 = zext i8 %27 to i32, !dbg !4652
  store i32 %28, ptr %6, align 4, !dbg !4653, !tbaa !914
  br label %29, !dbg !4654

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4610
  ret i64 %30, !dbg !4655
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4656 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4662 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4664, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i64 %1, metadata !4665, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i64 %2, metadata !4666, metadata !DIExpression()), !dbg !4668
  %4 = icmp eq i64 %2, 0, !dbg !4669
  br i1 %4, label %8, label %5, !dbg !4669

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4669
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4669
  br i1 %7, label %13, label %8, !dbg !4669

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4667, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4668
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4667, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4668
  %9 = mul i64 %2, %1, !dbg !4669
  call void @llvm.dbg.value(metadata i64 %9, metadata !4667, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata ptr %0, metadata !4671, metadata !DIExpression()), !dbg !4675
  call void @llvm.dbg.value(metadata i64 %9, metadata !4674, metadata !DIExpression()), !dbg !4675
  %10 = icmp eq i64 %9, 0, !dbg !4677
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4677
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #46, !dbg !4678
  br label %15, !dbg !4679

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4667, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4668
  %14 = tail call ptr @__errno_location() #42, !dbg !4680
  store i32 12, ptr %14, align 4, !dbg !4682, !tbaa !914
  br label %15, !dbg !4683

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4668
  ret ptr %16, !dbg !4684
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4685 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4687, metadata !DIExpression()), !dbg !4692
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4693
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4688, metadata !DIExpression()), !dbg !4694
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4695
  %4 = icmp eq i32 %3, 0, !dbg !4695
  br i1 %4, label %5, label %12, !dbg !4697

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4698, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.value(metadata ptr @.str.157, metadata !4701, metadata !DIExpression()), !dbg !4702
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.157, i64 2), !dbg !4705
  %7 = icmp eq i32 %6, 0, !dbg !4706
  br i1 %7, label %11, label %8, !dbg !4707

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4698, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.value(metadata ptr @.str.1.158, metadata !4701, metadata !DIExpression()), !dbg !4708
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.158, i64 6), !dbg !4710
  %10 = icmp eq i32 %9, 0, !dbg !4711
  br i1 %10, label %11, label %12, !dbg !4712

11:                                               ; preds = %8, %5
  br label %12, !dbg !4713

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4692
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4714
  ret i1 %13, !dbg !4714
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4715 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4719, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata ptr %1, metadata !4720, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i64 %2, metadata !4721, metadata !DIExpression()), !dbg !4722
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !4723
  ret i32 %4, !dbg !4724
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4725 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4729, metadata !DIExpression()), !dbg !4730
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !4731
  ret ptr %2, !dbg !4732
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4733 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4735, metadata !DIExpression()), !dbg !4737
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4738
  call void @llvm.dbg.value(metadata ptr %2, metadata !4736, metadata !DIExpression()), !dbg !4737
  ret ptr %2, !dbg !4739
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4740 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4742, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata ptr %1, metadata !4743, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i64 %2, metadata !4744, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i32 %0, metadata !4735, metadata !DIExpression()), !dbg !4750
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4752
  call void @llvm.dbg.value(metadata ptr %4, metadata !4736, metadata !DIExpression()), !dbg !4750
  call void @llvm.dbg.value(metadata ptr %4, metadata !4745, metadata !DIExpression()), !dbg !4749
  %5 = icmp eq ptr %4, null, !dbg !4753
  br i1 %5, label %6, label %9, !dbg !4754

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4755
  br i1 %7, label %19, label %8, !dbg !4758

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4759, !tbaa !923
  br label %19, !dbg !4760

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !4761
  call void @llvm.dbg.value(metadata i64 %10, metadata !4746, metadata !DIExpression()), !dbg !4762
  %11 = icmp ult i64 %10, %2, !dbg !4763
  br i1 %11, label %12, label %14, !dbg !4765

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4766
  call void @llvm.dbg.value(metadata ptr %1, metadata !4768, metadata !DIExpression()), !dbg !4773
  call void @llvm.dbg.value(metadata ptr %4, metadata !4771, metadata !DIExpression()), !dbg !4773
  call void @llvm.dbg.value(metadata i64 %13, metadata !4772, metadata !DIExpression()), !dbg !4773
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !4775
  br label %19, !dbg !4776

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4777
  br i1 %15, label %19, label %16, !dbg !4780

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4781
  call void @llvm.dbg.value(metadata ptr %1, metadata !4768, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata ptr %4, metadata !4771, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata i64 %17, metadata !4772, metadata !DIExpression()), !dbg !4783
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !4785
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4786
  store i8 0, ptr %18, align 1, !dbg !4787, !tbaa !923
  br label %19, !dbg !4788

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4789
  ret i32 %20, !dbg !4790
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
attributes #48 = { nounwind allocsize(1,2) }

!llvm.dbg.cu = !{!55, !411, !415, !430, !723, !757, !760, !762, !765, !767, !769, !490, !504, !555, !771, !779, !715, !785, !819, !821, !739, !823, !826, !828, !830}
!llvm.ident = !{!832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832, !832}
!llvm.module.flags = !{!833, !834, !835, !836, !837, !838, !839}

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
!55 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !101, globals: !110, splitDebugInlining: false, nameTableKind: None)
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
!429 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !430, file: !431, line: 66, type: !482, isLocal: false, isDefinition: true)
!430 = distinct !DICompileUnit(language: DW_LANG_C11, file: !431, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !432, globals: !433, splitDebugInlining: false, nameTableKind: None)
!431 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!432 = !{!102, !109}
!433 = !{!434, !436, !461, !463, !465, !467, !428, !469, !471, !473, !475, !480}
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !431, line: 272, type: !113, isLocal: true, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(name: "old_file_name", scope: !438, file: !431, line: 304, type: !107, isLocal: true, isDefinition: true)
!438 = distinct !DISubprogram(name: "verror_at_line", scope: !431, file: !431, line: 298, type: !439, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !454)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !52, !52, !107, !64, !107, !441}
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !442, line: 52, baseType: !443)
!442 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !444, line: 14, baseType: !445)
!444 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !446, baseType: !447)
!446 = !DIFile(filename: "lib/error.c", directory: "/src")
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !448)
!448 = !{!449, !450, !451, !452, !453}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !447, file: !446, baseType: !102, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !447, file: !446, baseType: !102, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !447, file: !446, baseType: !102, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !447, file: !446, baseType: !52, size: 32, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !447, file: !446, baseType: !52, size: 32, offset: 224)
!454 = !{!455, !456, !457, !458, !459, !460}
!455 = !DILocalVariable(name: "status", arg: 1, scope: !438, file: !431, line: 298, type: !52)
!456 = !DILocalVariable(name: "errnum", arg: 2, scope: !438, file: !431, line: 298, type: !52)
!457 = !DILocalVariable(name: "file_name", arg: 3, scope: !438, file: !431, line: 298, type: !107)
!458 = !DILocalVariable(name: "line_number", arg: 4, scope: !438, file: !431, line: 298, type: !64)
!459 = !DILocalVariable(name: "message", arg: 5, scope: !438, file: !431, line: 298, type: !107)
!460 = !DILocalVariable(name: "args", arg: 6, scope: !438, file: !431, line: 298, type: !441)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(name: "old_line_number", scope: !438, file: !431, line: 305, type: !64, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !431, line: 338, type: !231, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !431, line: 346, type: !118, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !431, line: 346, type: !14, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(name: "error_message_count", scope: !430, file: !431, line: 69, type: !64, isLocal: false, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !430, file: !431, line: 295, type: !52, isLocal: false, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !431, line: 208, type: !255, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !431, line: 208, type: !477, isLocal: true, isDefinition: true)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 21)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !431, line: 214, type: !113, isLocal: true, isDefinition: true)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{null}
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !487, line: 40, type: !39, isLocal: true, isDefinition: true)
!487 = !DIFile(filename: "lib/freopen-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "380f3eea209580e07073525fbfd0dac5")
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(name: "program_name", scope: !490, file: !491, line: 31, type: !107, isLocal: false, isDefinition: true)
!490 = distinct !DICompileUnit(language: DW_LANG_C11, file: !491, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !492, globals: !493, splitDebugInlining: false, nameTableKind: None)
!491 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!492 = !{!54}
!493 = !{!488, !494, !496}
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !491, line: 46, type: !118, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !491, line: 49, type: !231, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "utf07FF", scope: !500, file: !501, line: 46, type: !528, isLocal: true, isDefinition: true)
!500 = distinct !DISubprogram(name: "proper_name_lite", scope: !501, file: !501, line: 38, type: !502, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !504, retainedNodes: !506)
!501 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!502 = !DISubroutineType(types: !503)
!503 = !{!107, !107, !107}
!504 = distinct !DICompileUnit(language: DW_LANG_C11, file: !501, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !505, splitDebugInlining: false, nameTableKind: None)
!505 = !{!498}
!506 = !{!507, !508, !509, !510, !515}
!507 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !500, file: !501, line: 38, type: !107)
!508 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !500, file: !501, line: 38, type: !107)
!509 = !DILocalVariable(name: "translation", scope: !500, file: !501, line: 40, type: !107)
!510 = !DILocalVariable(name: "w", scope: !500, file: !501, line: 47, type: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !512, line: 37, baseType: !513)
!512 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !194, line: 57, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !194, line: 42, baseType: !64)
!515 = !DILocalVariable(name: "mbs", scope: !500, file: !501, line: 48, type: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !517, line: 6, baseType: !518)
!517 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !519, line: 21, baseType: !520)
!519 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !519, line: 13, size: 64, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !520, file: !519, line: 15, baseType: !52, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !520, file: !519, line: 20, baseType: !524, size: 32, offset: 32)
!524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !520, file: !519, line: 16, size: 32, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !524, file: !519, line: 18, baseType: !64, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !524, file: !519, line: 19, baseType: !231, size: 32)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 16, elements: !15)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !531, line: 78, type: !118, isLocal: true, isDefinition: true)
!531 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !531, line: 79, type: !19, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !531, line: 80, type: !536, isLocal: true, isDefinition: true)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 13)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !531, line: 81, type: !536, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !531, line: 82, type: !216, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !531, line: 83, type: !14, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !531, line: 84, type: !118, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !531, line: 85, type: !255, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !531, line: 86, type: !255, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !531, line: 87, type: !118, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !555, file: !531, line: 76, type: !627, isLocal: false, isDefinition: true)
!555 = distinct !DICompileUnit(language: DW_LANG_C11, file: !531, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !556, retainedTypes: !562, globals: !563, splitDebugInlining: false, nameTableKind: None)
!556 = !{!78, !557, !62}
!557 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !79, line: 254, baseType: !64, size: 32, elements: !558)
!558 = !{!559, !560, !561}
!559 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!560 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!561 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!562 = !{!52, !103, !104}
!563 = !{!529, !532, !534, !539, !541, !543, !545, !547, !549, !551, !553, !564, !568, !578, !580, !585, !587, !589, !591, !593, !616, !623, !625}
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !555, file: !531, line: 92, type: !566, isLocal: false, isDefinition: true)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 320, elements: !40)
!567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !555, file: !531, line: 1040, type: !570, isLocal: false, isDefinition: true)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !531, line: 56, size: 448, elements: !571)
!571 = !{!572, !573, !574, !576, !577}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !570, file: !531, line: 59, baseType: !78, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !570, file: !531, line: 62, baseType: !52, size: 32, offset: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !570, file: !531, line: 66, baseType: !575, size: 256, offset: 64)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 256, elements: !119)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !570, file: !531, line: 69, baseType: !107, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !570, file: !531, line: 72, baseType: !107, size: 64, offset: 384)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !555, file: !531, line: 107, type: !570, isLocal: true, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(name: "slot0", scope: !555, file: !531, line: 831, type: !582, isLocal: true, isDefinition: true)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !583)
!583 = !{!584}
!584 = !DISubrange(count: 256)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !531, line: 321, type: !14, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !531, line: 357, type: !14, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !531, line: 358, type: !14, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !531, line: 199, type: !255, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(name: "quote", scope: !595, file: !531, line: 228, type: !614, isLocal: true, isDefinition: true)
!595 = distinct !DISubprogram(name: "gettext_quote", scope: !531, file: !531, line: 197, type: !596, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{!107, !107, !78}
!598 = !{!599, !600, !601, !602, !603}
!599 = !DILocalVariable(name: "msgid", arg: 1, scope: !595, file: !531, line: 197, type: !107)
!600 = !DILocalVariable(name: "s", arg: 2, scope: !595, file: !531, line: 197, type: !78)
!601 = !DILocalVariable(name: "translation", scope: !595, file: !531, line: 199, type: !107)
!602 = !DILocalVariable(name: "w", scope: !595, file: !531, line: 229, type: !511)
!603 = !DILocalVariable(name: "mbs", scope: !595, file: !531, line: 230, type: !604)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !517, line: 6, baseType: !605)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !519, line: 21, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !519, line: 13, size: 64, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !606, file: !519, line: 15, baseType: !52, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !606, file: !519, line: 20, baseType: !610, size: 32, offset: 32)
!610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !606, file: !519, line: 16, size: 32, elements: !611)
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !610, file: !519, line: 18, baseType: !64, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !610, file: !519, line: 19, baseType: !231, size: 32)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !615)
!615 = !{!16, !233}
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(name: "slotvec", scope: !555, file: !531, line: 834, type: !618, isLocal: true, isDefinition: true)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !531, line: 823, size: 128, elements: !620)
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !619, file: !531, line: 825, baseType: !104, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !619, file: !531, line: 826, baseType: !54, size: 64, offset: 64)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(name: "nslots", scope: !555, file: !531, line: 832, type: !52, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(name: "slotvec0", scope: !555, file: !531, line: 833, type: !619, isLocal: true, isDefinition: true)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 704, elements: !629)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!629 = !{!630}
!630 = !DISubrange(count: 11)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !633, line: 67, type: !328, isLocal: true, isDefinition: true)
!633 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !633, line: 69, type: !255, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !633, line: 83, type: !255, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !633, line: 83, type: !231, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !633, line: 85, type: !14, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !633, line: 88, type: !644, isLocal: true, isDefinition: true)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 171)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !633, line: 88, type: !649, isLocal: true, isDefinition: true)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !650)
!650 = !{!651}
!651 = !DISubrange(count: 34)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !633, line: 105, type: !299, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !633, line: 109, type: !656, isLocal: true, isDefinition: true)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 23)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !633, line: 113, type: !661, isLocal: true, isDefinition: true)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !662)
!662 = !{!663}
!663 = !DISubrange(count: 28)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !633, line: 120, type: !666, isLocal: true, isDefinition: true)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !667)
!667 = !{!668}
!668 = !DISubrange(count: 32)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !633, line: 127, type: !671, isLocal: true, isDefinition: true)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !672)
!672 = !{!673}
!673 = !DISubrange(count: 36)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !633, line: 134, type: !276, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !633, line: 142, type: !678, isLocal: true, isDefinition: true)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !679)
!679 = !{!680}
!680 = !DISubrange(count: 44)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !633, line: 150, type: !683, isLocal: true, isDefinition: true)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 48)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !633, line: 159, type: !688, isLocal: true, isDefinition: true)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 52)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !633, line: 170, type: !693, isLocal: true, isDefinition: true)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !694)
!694 = !{!695}
!695 = !DISubrange(count: 60)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !633, line: 248, type: !216, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !633, line: 248, type: !304, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !633, line: 254, type: !216, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !633, line: 254, type: !125, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !633, line: 254, type: !276, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !633, line: 259, type: !3, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !633, line: 259, type: !710, isLocal: true, isDefinition: true)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !711)
!711 = !{!712}
!712 = !DISubrange(count: 29)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !715, file: !716, line: 26, type: !718, isLocal: false, isDefinition: true)
!715 = distinct !DICompileUnit(language: DW_LANG_C11, file: !716, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !717, splitDebugInlining: false, nameTableKind: None)
!716 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!717 = !{!713}
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 376, elements: !719)
!719 = !{!720}
!720 = !DISubrange(count: 47)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(name: "exit_failure", scope: !723, file: !724, line: 24, type: !726, isLocal: false, isDefinition: true)
!723 = distinct !DICompileUnit(language: DW_LANG_C11, file: !724, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !725, splitDebugInlining: false, nameTableKind: None)
!724 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!725 = !{!721}
!726 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !52)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !729, line: 34, type: !244, isLocal: true, isDefinition: true)
!729 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !729, line: 34, type: !255, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !729, line: 34, type: !132, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !736, line: 108, type: !34, isLocal: true, isDefinition: true)
!736 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(name: "internal_state", scope: !739, file: !736, line: 97, type: !742, isLocal: true, isDefinition: true)
!739 = distinct !DICompileUnit(language: DW_LANG_C11, file: !736, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !740, globals: !741, splitDebugInlining: false, nameTableKind: None)
!740 = !{!102, !104, !109}
!741 = !{!734, !737}
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !517, line: 6, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !519, line: 21, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !519, line: 13, size: 64, elements: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !744, file: !519, line: 15, baseType: !52, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !744, file: !519, line: 20, baseType: !748, size: 32, offset: 32)
!748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !744, file: !519, line: 16, size: 32, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !748, file: !519, line: 18, baseType: !64, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !748, file: !519, line: 19, baseType: !231, size: 32)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !754, line: 35, type: !14, isLocal: true, isDefinition: true)
!754 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !754, line: 35, type: !19, isLocal: true, isDefinition: true)
!757 = distinct !DICompileUnit(language: DW_LANG_C11, file: !758, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !759, splitDebugInlining: false, nameTableKind: None)
!758 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!759 = !{!92}
!760 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!761 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!762 = distinct !DICompileUnit(language: DW_LANG_C11, file: !763, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !764, splitDebugInlining: false, nameTableKind: None)
!763 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!764 = !{!102}
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !487, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !766, splitDebugInlining: false, nameTableKind: None)
!766 = !{!485}
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !764, splitDebugInlining: false, nameTableKind: None)
!768 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!769 = distinct !DICompileUnit(language: DW_LANG_C11, file: !770, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!770 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!771 = distinct !DICompileUnit(language: DW_LANG_C11, file: !772, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !773, retainedTypes: !777, splitDebugInlining: false, nameTableKind: None)
!772 = !DIFile(filename: "lib/readtokens.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bd27ae043f20cb5dd96b528a940c0bf9")
!773 = !{!774}
!774 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !772, line: 50, baseType: !64, size: 32, elements: !775)
!775 = !{!776}
!776 = !DIEnumerator(name: "bits_per_word", value: 64)
!777 = !{!104, !102, !778}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!779 = distinct !DICompileUnit(language: DW_LANG_C11, file: !633, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !780, retainedTypes: !764, globals: !784, splitDebugInlining: false, nameTableKind: None)
!780 = !{!781}
!781 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !633, line: 40, baseType: !64, size: 32, elements: !782)
!782 = !{!783}
!783 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!784 = !{!631, !634, !636, !638, !640, !642, !647, !652, !654, !659, !664, !669, !674, !676, !681, !686, !691, !696, !698, !700, !702, !704, !706, !708}
!785 = distinct !DICompileUnit(language: DW_LANG_C11, file: !786, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !787, retainedTypes: !818, splitDebugInlining: false, nameTableKind: None)
!786 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!787 = !{!788, !800}
!788 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !789, file: !786, line: 188, baseType: !64, size: 32, elements: !798)
!789 = distinct !DISubprogram(name: "x2nrealloc", scope: !786, file: !786, line: 176, type: !790, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !793)
!790 = !DISubroutineType(types: !791)
!791 = !{!102, !102, !792, !104}
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!793 = !{!794, !795, !796, !797}
!794 = !DILocalVariable(name: "p", arg: 1, scope: !789, file: !786, line: 176, type: !102)
!795 = !DILocalVariable(name: "pn", arg: 2, scope: !789, file: !786, line: 176, type: !792)
!796 = !DILocalVariable(name: "s", arg: 3, scope: !789, file: !786, line: 176, type: !104)
!797 = !DILocalVariable(name: "n", scope: !789, file: !786, line: 178, type: !104)
!798 = !{!799}
!799 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!800 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !801, file: !786, line: 228, baseType: !64, size: 32, elements: !798)
!801 = distinct !DISubprogram(name: "xpalloc", scope: !786, file: !786, line: 223, type: !802, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !808)
!802 = !DISubroutineType(types: !803)
!803 = !{!102, !102, !804, !805, !807, !805}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !806, line: 130, baseType: !807)
!806 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !105, line: 35, baseType: !195)
!808 = !{!809, !810, !811, !812, !813, !814, !815, !816, !817}
!809 = !DILocalVariable(name: "pa", arg: 1, scope: !801, file: !786, line: 223, type: !102)
!810 = !DILocalVariable(name: "pn", arg: 2, scope: !801, file: !786, line: 223, type: !804)
!811 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !801, file: !786, line: 223, type: !805)
!812 = !DILocalVariable(name: "n_max", arg: 4, scope: !801, file: !786, line: 223, type: !807)
!813 = !DILocalVariable(name: "s", arg: 5, scope: !801, file: !786, line: 223, type: !805)
!814 = !DILocalVariable(name: "n0", scope: !801, file: !786, line: 230, type: !805)
!815 = !DILocalVariable(name: "n", scope: !801, file: !786, line: 237, type: !805)
!816 = !DILocalVariable(name: "nbytes", scope: !801, file: !786, line: 248, type: !805)
!817 = !DILocalVariable(name: "adjusted_nbytes", scope: !801, file: !786, line: 252, type: !805)
!818 = !{!54, !102, !154, !195, !106}
!819 = distinct !DICompileUnit(language: DW_LANG_C11, file: !729, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !820, splitDebugInlining: false, nameTableKind: None)
!820 = !{!727, !730, !732}
!821 = distinct !DICompileUnit(language: DW_LANG_C11, file: !822, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!822 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!823 = distinct !DICompileUnit(language: DW_LANG_C11, file: !824, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !825, splitDebugInlining: false, nameTableKind: None)
!824 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!825 = !{!154, !106, !102}
!826 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !827, splitDebugInlining: false, nameTableKind: None)
!827 = !{!752, !755}
!828 = distinct !DICompileUnit(language: DW_LANG_C11, file: !829, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!829 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!830 = distinct !DICompileUnit(language: DW_LANG_C11, file: !831, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !764, splitDebugInlining: false, nameTableKind: None)
!831 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!832 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!833 = !{i32 7, !"Dwarf Version", i32 5}
!834 = !{i32 2, !"Debug Info Version", i32 3}
!835 = !{i32 1, !"wchar_size", i32 4}
!836 = !{i32 8, !"PIC Level", i32 2}
!837 = !{i32 7, !"PIE Level", i32 2}
!838 = !{i32 7, !"uwtable", i32 2}
!839 = !{i32 7, !"frame-pointer", i32 1}
!840 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 75, type: !841, scopeLine: 76, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !843)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !52}
!843 = !{!844}
!844 = !DILocalVariable(name: "status", arg: 1, scope: !840, file: !2, line: 75, type: !52)
!845 = !DILocation(line: 0, scope: !840)
!846 = !DILocation(line: 77, column: 14, scope: !847)
!847 = distinct !DILexicalBlock(scope: !840, file: !2, line: 77, column: 7)
!848 = !DILocation(line: 77, column: 7, scope: !840)
!849 = !DILocation(line: 78, column: 5, scope: !850)
!850 = distinct !DILexicalBlock(scope: !847, file: !2, line: 78, column: 5)
!851 = !{!852, !852, i64 0}
!852 = !{!"any pointer", !853, i64 0}
!853 = !{!"omnipotent char", !854, i64 0}
!854 = !{!"Simple C/C++ TBAA"}
!855 = !DILocation(line: 81, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !847, file: !2, line: 80, column: 5)
!857 = !DILocation(line: 729, column: 3, scope: !858, inlinedAt: !860)
!858 = distinct !DISubprogram(name: "emit_stdin_note", scope: !58, file: !58, line: 727, type: !483, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !859)
!859 = !{}
!860 = distinct !DILocation(line: 86, column: 7, scope: !856)
!861 = !DILocation(line: 88, column: 7, scope: !856)
!862 = !DILocation(line: 91, column: 7, scope: !856)
!863 = !DILocation(line: 92, column: 7, scope: !856)
!864 = !DILocalVariable(name: "program", arg: 1, scope: !865, file: !58, line: 836, type: !107)
!865 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !58, file: !58, line: 836, type: !866, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !868)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !107}
!868 = !{!864, !869, !876, !877, !879, !880}
!869 = !DILocalVariable(name: "infomap", scope: !865, file: !58, line: 838, type: !870)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 896, elements: !256)
!871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !872)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !865, file: !58, line: 838, size: 128, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !872, file: !58, line: 838, baseType: !107, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !872, file: !58, line: 838, baseType: !107, size: 64, offset: 64)
!876 = !DILocalVariable(name: "node", scope: !865, file: !58, line: 848, type: !107)
!877 = !DILocalVariable(name: "map_prog", scope: !865, file: !58, line: 849, type: !878)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!879 = !DILocalVariable(name: "lc_messages", scope: !865, file: !58, line: 861, type: !107)
!880 = !DILocalVariable(name: "url_program", scope: !865, file: !58, line: 874, type: !107)
!881 = !DILocation(line: 0, scope: !865, inlinedAt: !882)
!882 = distinct !DILocation(line: 93, column: 7, scope: !856)
!883 = !DILocation(line: 857, column: 3, scope: !865, inlinedAt: !882)
!884 = !DILocation(line: 861, column: 29, scope: !865, inlinedAt: !882)
!885 = !DILocation(line: 862, column: 7, scope: !886, inlinedAt: !882)
!886 = distinct !DILexicalBlock(scope: !865, file: !58, line: 862, column: 7)
!887 = !DILocation(line: 862, column: 19, scope: !886, inlinedAt: !882)
!888 = !DILocation(line: 862, column: 22, scope: !886, inlinedAt: !882)
!889 = !DILocation(line: 862, column: 7, scope: !865, inlinedAt: !882)
!890 = !DILocation(line: 868, column: 7, scope: !891, inlinedAt: !882)
!891 = distinct !DILexicalBlock(scope: !886, file: !58, line: 863, column: 5)
!892 = !DILocation(line: 870, column: 5, scope: !891, inlinedAt: !882)
!893 = !DILocation(line: 875, column: 3, scope: !865, inlinedAt: !882)
!894 = !DILocation(line: 877, column: 3, scope: !865, inlinedAt: !882)
!895 = !DILocation(line: 96, column: 3, scope: !840)
!896 = !DISubprogram(name: "dcgettext", scope: !897, file: !897, line: 51, type: !898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!897 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!898 = !DISubroutineType(types: !899)
!899 = !{!54, !107, !107, !52}
!900 = !DISubprogram(name: "__fprintf_chk", scope: !901, file: !901, line: 93, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!901 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!902 = !DISubroutineType(types: !903)
!903 = !{!52, !904, !52, !905, null}
!904 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !167)
!905 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!906 = !DISubprogram(name: "__printf_chk", scope: !901, file: !901, line: 95, type: !907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!907 = !DISubroutineType(types: !908)
!908 = !{!52, !52, !905, null}
!909 = !DISubprogram(name: "fputs_unlocked", scope: !442, file: !442, line: 691, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!910 = !DISubroutineType(types: !911)
!911 = !{!52, !905, !904}
!912 = !DILocation(line: 0, scope: !144)
!913 = !DILocation(line: 581, column: 7, scope: !152)
!914 = !{!915, !915, i64 0}
!915 = !{!"int", !853, i64 0}
!916 = !DILocation(line: 581, column: 19, scope: !152)
!917 = !DILocation(line: 581, column: 7, scope: !144)
!918 = !DILocation(line: 585, column: 26, scope: !151)
!919 = !DILocation(line: 0, scope: !151)
!920 = !DILocation(line: 586, column: 23, scope: !151)
!921 = !DILocation(line: 586, column: 28, scope: !151)
!922 = !DILocation(line: 586, column: 32, scope: !151)
!923 = !{!853, !853, i64 0}
!924 = !DILocation(line: 586, column: 38, scope: !151)
!925 = !DILocalVariable(name: "__s1", arg: 1, scope: !926, file: !927, line: 1359, type: !107)
!926 = distinct !DISubprogram(name: "streq", scope: !927, file: !927, line: 1359, type: !928, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !930)
!927 = !DIFile(filename: "./lib/string.h", directory: "/src")
!928 = !DISubroutineType(types: !929)
!929 = !{!154, !107, !107}
!930 = !{!925, !931}
!931 = !DILocalVariable(name: "__s2", arg: 2, scope: !926, file: !927, line: 1359, type: !107)
!932 = !DILocation(line: 0, scope: !926, inlinedAt: !933)
!933 = distinct !DILocation(line: 586, column: 41, scope: !151)
!934 = !DILocation(line: 1361, column: 11, scope: !926, inlinedAt: !933)
!935 = !DILocation(line: 1361, column: 10, scope: !926, inlinedAt: !933)
!936 = !DILocation(line: 586, column: 19, scope: !151)
!937 = !DILocation(line: 587, column: 5, scope: !151)
!938 = !DILocation(line: 588, column: 7, scope: !939)
!939 = distinct !DILexicalBlock(scope: !144, file: !58, line: 588, column: 7)
!940 = !DILocation(line: 588, column: 7, scope: !144)
!941 = !DILocation(line: 590, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !939, file: !58, line: 589, column: 5)
!943 = !DILocation(line: 591, column: 7, scope: !942)
!944 = !DILocation(line: 595, column: 37, scope: !144)
!945 = !DILocation(line: 595, column: 35, scope: !144)
!946 = !DILocation(line: 596, column: 29, scope: !144)
!947 = !DILocation(line: 597, column: 8, scope: !160)
!948 = !DILocation(line: 597, column: 7, scope: !144)
!949 = !DILocation(line: 604, column: 24, scope: !159)
!950 = !DILocation(line: 604, column: 12, scope: !160)
!951 = !DILocation(line: 0, scope: !158)
!952 = !DILocation(line: 610, column: 16, scope: !158)
!953 = !DILocation(line: 610, column: 7, scope: !158)
!954 = !DILocation(line: 611, column: 21, scope: !158)
!955 = !{!956, !956, i64 0}
!956 = !{!"short", !853, i64 0}
!957 = !DILocation(line: 611, column: 19, scope: !158)
!958 = !DILocation(line: 611, column: 16, scope: !158)
!959 = !DILocation(line: 610, column: 30, scope: !158)
!960 = distinct !{!960, !953, !954, !961}
!961 = !{!"llvm.loop.mustprogress"}
!962 = !DILocation(line: 612, column: 18, scope: !963)
!963 = distinct !DILexicalBlock(scope: !158, file: !58, line: 612, column: 11)
!964 = !DILocation(line: 612, column: 11, scope: !158)
!965 = !DILocation(line: 620, column: 23, scope: !144)
!966 = !DILocation(line: 625, column: 39, scope: !144)
!967 = !DILocation(line: 626, column: 3, scope: !144)
!968 = !DILocation(line: 626, column: 10, scope: !144)
!969 = !DILocation(line: 626, column: 21, scope: !144)
!970 = !DILocation(line: 628, column: 44, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !58, line: 628, column: 11)
!972 = distinct !DILexicalBlock(scope: !144, file: !58, line: 627, column: 5)
!973 = !DILocation(line: 628, column: 32, scope: !971)
!974 = !DILocation(line: 628, column: 49, scope: !971)
!975 = !DILocation(line: 628, column: 11, scope: !972)
!976 = !DILocation(line: 630, column: 11, scope: !977)
!977 = distinct !DILexicalBlock(scope: !972, file: !58, line: 630, column: 11)
!978 = !DILocation(line: 630, column: 11, scope: !972)
!979 = !DILocation(line: 632, column: 26, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !58, line: 632, column: 15)
!981 = distinct !DILexicalBlock(scope: !977, file: !58, line: 631, column: 9)
!982 = !DILocation(line: 632, column: 34, scope: !980)
!983 = !DILocation(line: 632, column: 37, scope: !980)
!984 = !DILocation(line: 632, column: 15, scope: !981)
!985 = !DILocation(line: 640, column: 16, scope: !972)
!986 = distinct !{!986, !967, !987, !961}
!987 = !DILocation(line: 641, column: 5, scope: !144)
!988 = !DILocation(line: 644, column: 3, scope: !144)
!989 = !DILocation(line: 0, scope: !926, inlinedAt: !990)
!990 = distinct !DILocation(line: 648, column: 31, scope: !144)
!991 = !DILocation(line: 0, scope: !926, inlinedAt: !992)
!992 = distinct !DILocation(line: 649, column: 31, scope: !144)
!993 = !DILocation(line: 0, scope: !926, inlinedAt: !994)
!994 = distinct !DILocation(line: 650, column: 31, scope: !144)
!995 = !DILocation(line: 0, scope: !926, inlinedAt: !996)
!996 = distinct !DILocation(line: 651, column: 31, scope: !144)
!997 = !DILocation(line: 0, scope: !926, inlinedAt: !998)
!998 = distinct !DILocation(line: 652, column: 31, scope: !144)
!999 = !DILocation(line: 0, scope: !926, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 653, column: 31, scope: !144)
!1001 = !DILocation(line: 0, scope: !926, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 654, column: 31, scope: !144)
!1003 = !DILocation(line: 0, scope: !926, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 655, column: 31, scope: !144)
!1005 = !DILocation(line: 0, scope: !926, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 656, column: 31, scope: !144)
!1007 = !DILocation(line: 0, scope: !926, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 657, column: 31, scope: !144)
!1009 = !DILocation(line: 663, column: 7, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !144, file: !58, line: 663, column: 7)
!1011 = !DILocation(line: 664, column: 7, scope: !1010)
!1012 = !DILocation(line: 664, column: 10, scope: !1010)
!1013 = !DILocation(line: 663, column: 7, scope: !144)
!1014 = !DILocation(line: 669, column: 7, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !58, line: 665, column: 5)
!1016 = !DILocation(line: 671, column: 5, scope: !1015)
!1017 = !DILocation(line: 676, column: 7, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1010, file: !58, line: 673, column: 5)
!1019 = !DILocation(line: 679, column: 3, scope: !144)
!1020 = !DILocation(line: 683, column: 3, scope: !144)
!1021 = !DILocation(line: 686, column: 3, scope: !144)
!1022 = !DILocation(line: 688, column: 3, scope: !144)
!1023 = !DILocation(line: 691, column: 3, scope: !144)
!1024 = !DILocation(line: 695, column: 3, scope: !144)
!1025 = !DILocation(line: 696, column: 1, scope: !144)
!1026 = !DISubprogram(name: "setlocale", scope: !1027, file: !1027, line: 122, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1027 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!54, !52, !107}
!1030 = !DISubprogram(name: "strncmp", scope: !1031, file: !1031, line: 159, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1031 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!52, !107, !107, !104}
!1034 = !DISubprogram(name: "exit", scope: !1035, file: !1035, line: 624, type: !841, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1035 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1036 = !DISubprogram(name: "getenv", scope: !1035, file: !1035, line: 641, type: !1037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!54, !107}
!1039 = !DISubprogram(name: "strcmp", scope: !1031, file: !1031, line: 156, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!52, !107, !107}
!1042 = !DISubprogram(name: "strspn", scope: !1031, file: !1031, line: 297, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!106, !107, !107}
!1045 = !DISubprogram(name: "strchr", scope: !1031, file: !1031, line: 246, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!54, !107, !52}
!1048 = !DISubprogram(name: "__ctype_b_loc", scope: !63, file: !63, line: 79, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1054 = !DISubprogram(name: "strcspn", scope: !1031, file: !1031, line: 293, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1055 = !DISubprogram(name: "fwrite_unlocked", scope: !442, file: !442, line: 704, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!104, !1058, !104, !104, !904}
!1058 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1059)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1061 = !DILocation(line: 0, scope: !49)
!1062 = !DILocation(line: 534, column: 21, scope: !49)
!1063 = !DILocation(line: 534, column: 3, scope: !49)
!1064 = !DILocation(line: 535, column: 3, scope: !49)
!1065 = !DILocation(line: 536, column: 3, scope: !49)
!1066 = !DILocation(line: 537, column: 3, scope: !49)
!1067 = !DILocation(line: 539, column: 3, scope: !49)
!1068 = !DILocation(line: 541, column: 3, scope: !49)
!1069 = !DILocation(line: 549, column: 15, scope: !395)
!1070 = !DILocation(line: 0, scope: !395)
!1071 = !DILocation(line: 551, column: 11, scope: !395)
!1072 = !DILocation(line: 559, column: 9, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !395, file: !2, line: 555, column: 9)
!1074 = !DILocation(line: 561, column: 9, scope: !1073)
!1075 = !DILocation(line: 564, column: 11, scope: !1073)
!1076 = !DILocation(line: 568, column: 18, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !49, file: !2, line: 568, column: 7)
!1078 = !DILocation(line: 568, column: 16, scope: !1077)
!1079 = !DILocation(line: 568, column: 9, scope: !1077)
!1080 = !DILocation(line: 568, column: 7, scope: !49)
!1081 = !DILocation(line: 570, column: 7, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 569, column: 5)
!1083 = !DILocation(line: 571, column: 7, scope: !1082)
!1084 = !DILocation(line: 574, column: 17, scope: !49)
!1085 = !DILocation(line: 574, column: 10, scope: !49)
!1086 = !DILocation(line: 574, column: 33, scope: !49)
!1087 = !DILocation(line: 574, column: 3, scope: !49)
!1088 = !DISubprogram(name: "bindtextdomain", scope: !897, file: !897, line: 86, type: !1089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!54, !107, !107}
!1091 = !DISubprogram(name: "textdomain", scope: !897, file: !897, line: 82, type: !1037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1092 = !DISubprogram(name: "atexit", scope: !1035, file: !1035, line: 602, type: !1093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!52, !482}
!1095 = !DISubprogram(name: "getopt_long", scope: !399, file: !399, line: 66, type: !1096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!52, !52, !1098, !107, !1100, !404}
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!1101 = distinct !DISubprogram(name: "tsort", scope: !2, file: !2, line: 429, type: !866, scopeLine: 430, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1102)
!1102 = !{!1103, !1104, !1105, !1106, !1107, !1114, !1115, !1116, !1118}
!1103 = !DILocalVariable(name: "file", arg: 1, scope: !1101, file: !2, line: 429, type: !107)
!1104 = !DILocalVariable(name: "ok", scope: !1101, file: !2, line: 431, type: !154)
!1105 = !DILocalVariable(name: "j", scope: !1101, file: !2, line: 432, type: !371)
!1106 = !DILocalVariable(name: "k", scope: !1101, file: !2, line: 433, type: !371)
!1107 = !DILocalVariable(name: "tokenbuffer", scope: !1101, file: !2, line: 434, type: !1108)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !1109, line: 38, baseType: !1110)
!1109 = !DIFile(filename: "./lib/readtokens.h", directory: "/src", checksumkind: CSK_MD5, checksum: "75cc48641d199743577b153a0d1c82de")
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !1109, line: 33, size: 128, elements: !1111)
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1110, file: !1109, line: 35, baseType: !104, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1110, file: !1109, line: 36, baseType: !54, size: 64, offset: 64)
!1114 = !DILocalVariable(name: "is_stdin", scope: !1101, file: !2, line: 435, type: !154)
!1115 = !DILocalVariable(name: "root", scope: !1101, file: !2, line: 438, type: !371)
!1116 = !DILocalVariable(name: "len", scope: !1117, file: !2, line: 450, type: !104)
!1117 = distinct !DILexicalBlock(scope: !1101, file: !2, line: 448, column: 5)
!1118 = !DILocalVariable(name: "p", scope: !1119, file: !2, line: 485, type: !382)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 484, column: 9)
!1120 = distinct !DILexicalBlock(scope: !1101, file: !2, line: 479, column: 5)
!1121 = !DILocation(line: 0, scope: !1101)
!1122 = !DILocation(line: 434, column: 3, scope: !1101)
!1123 = !DILocation(line: 434, column: 16, scope: !1101)
!1124 = !DILocation(line: 0, scope: !926, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 435, column: 19, scope: !1101)
!1126 = !DILocation(line: 1361, column: 11, scope: !926, inlinedAt: !1125)
!1127 = !DILocation(line: 1361, column: 10, scope: !926, inlinedAt: !1125)
!1128 = !DILocalVariable(name: "str", arg: 1, scope: !1129, file: !2, line: 101, type: !107)
!1129 = distinct !DISubprogram(name: "new_item", scope: !2, file: !2, line: 101, type: !1130, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1132)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!371, !107}
!1132 = !{!1128, !1133}
!1133 = !DILocalVariable(name: "k", scope: !1129, file: !2, line: 104, type: !371)
!1134 = !DILocation(line: 0, scope: !1129, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 438, column: 23, scope: !1101)
!1136 = !DILocation(line: 104, column: 20, scope: !1129, inlinedAt: !1135)
!1137 = !DILocation(line: 440, column: 17, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1101, file: !2, line: 440, column: 7)
!1139 = !DILocation(line: 440, column: 42, scope: !1138)
!1140 = !DILocation(line: 440, column: 22, scope: !1138)
!1141 = !DILocation(line: 440, column: 7, scope: !1101)
!1142 = !DILocation(line: 441, column: 5, scope: !1138)
!1143 = !DILocation(line: 443, column: 12, scope: !1101)
!1144 = !DILocation(line: 443, column: 3, scope: !1101)
!1145 = !DILocation(line: 445, column: 3, scope: !1101)
!1146 = !DILocation(line: 447, column: 3, scope: !1101)
!1147 = !DILocation(line: 433, column: 16, scope: !1101)
!1148 = !DILocation(line: 450, column: 31, scope: !1117)
!1149 = !DILocation(line: 450, column: 20, scope: !1117)
!1150 = !DILocation(line: 0, scope: !1117)
!1151 = !DILocation(line: 451, column: 11, scope: !1117)
!1152 = !DILocation(line: 453, column: 15, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 453, column: 15)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !2, line: 452, column: 9)
!1155 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 451, column: 11)
!1156 = !DILocalVariable(name: "__stream", arg: 1, scope: !1157, file: !1158, line: 135, type: !167)
!1157 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1158, file: !1158, line: 135, type: !1159, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1161)
!1158 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!52, !167}
!1161 = !{!1156}
!1162 = !DILocation(line: 0, scope: !1157, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 453, column: 15, scope: !1153)
!1164 = !DILocation(line: 137, column: 10, scope: !1157, inlinedAt: !1163)
!1165 = !{!1166, !915, i64 0}
!1166 = !{!"_IO_FILE", !915, i64 0, !852, i64 8, !852, i64 16, !852, i64 24, !852, i64 32, !852, i64 40, !852, i64 48, !852, i64 56, !852, i64 64, !852, i64 72, !852, i64 80, !852, i64 88, !852, i64 96, !852, i64 104, !915, i64 112, !915, i64 116, !1167, i64 120, !956, i64 128, !853, i64 130, !853, i64 131, !852, i64 136, !1167, i64 144, !852, i64 152, !852, i64 160, !852, i64 168, !852, i64 176, !1167, i64 184, !915, i64 192, !853, i64 196}
!1167 = !{!"long", !853, i64 0}
!1168 = !DILocation(line: 453, column: 15, scope: !1154)
!1169 = !DILocation(line: 454, column: 13, scope: !1153)
!1170 = !DILocation(line: 458, column: 7, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 458, column: 7)
!1172 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 458, column: 7)
!1173 = !DILocation(line: 460, column: 42, scope: !1117)
!1174 = !{!1175, !852, i64 8}
!1175 = !{!"tokenbuffer", !1167, i64 0, !852, i64 8}
!1176 = !DILocalVariable(name: "root", arg: 1, scope: !1177, file: !2, line: 119, type: !371)
!1177 = distinct !DISubprogram(name: "search_item", scope: !2, file: !2, line: 119, type: !1178, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1180)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!371, !371, !107}
!1180 = !{!1176, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188}
!1181 = !DILocalVariable(name: "str", arg: 2, scope: !1177, file: !2, line: 119, type: !107)
!1182 = !DILocalVariable(name: "p", scope: !1177, file: !2, line: 121, type: !371)
!1183 = !DILocalVariable(name: "q", scope: !1177, file: !2, line: 121, type: !371)
!1184 = !DILocalVariable(name: "r", scope: !1177, file: !2, line: 121, type: !371)
!1185 = !DILocalVariable(name: "s", scope: !1177, file: !2, line: 121, type: !371)
!1186 = !DILocalVariable(name: "t", scope: !1177, file: !2, line: 121, type: !371)
!1187 = !DILocalVariable(name: "a", scope: !1177, file: !2, line: 122, type: !52)
!1188 = !DILocalVariable(name: "cmp", scope: !1189, file: !2, line: 173, type: !52)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 172, column: 13)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 147, column: 9)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 146, column: 11)
!1192 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 134, column: 5)
!1193 = !DILocation(line: 0, scope: !1177, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 460, column: 11, scope: !1117)
!1195 = !DILocation(line: 126, column: 13, scope: !1196, inlinedAt: !1194)
!1196 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 126, column: 7)
!1197 = !{!1198, !852, i64 16}
!1198 = !{!"item", !852, i64 0, !852, i64 8, !852, i64 16, !853, i64 24, !1199, i64 25, !1167, i64 32, !852, i64 40, !852, i64 48}
!1199 = !{!"_Bool", !853, i64 0}
!1200 = !DILocation(line: 126, column: 19, scope: !1196, inlinedAt: !1194)
!1201 = !DILocation(line: 126, column: 7, scope: !1177, inlinedAt: !1194)
!1202 = !DILocation(line: 136, column: 27, scope: !1192, inlinedAt: !1194)
!1203 = !{!1198, !852, i64 0}
!1204 = !DILocation(line: 136, column: 11, scope: !1192, inlinedAt: !1194)
!1205 = !DILocation(line: 137, column: 13, scope: !1206, inlinedAt: !1194)
!1206 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 137, column: 11)
!1207 = !DILocation(line: 137, column: 11, scope: !1192, inlinedAt: !1194)
!1208 = !DILocation(line: 0, scope: !1129, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 127, column: 27, scope: !1196, inlinedAt: !1194)
!1210 = !DILocation(line: 104, column: 20, scope: !1129, inlinedAt: !1209)
!1211 = !DILocation(line: 105, column: 7, scope: !1212, inlinedAt: !1209)
!1212 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 105, column: 7)
!1213 = !DILocation(line: 105, column: 7, scope: !1129, inlinedAt: !1209)
!1214 = !DILocation(line: 106, column: 14, scope: !1212, inlinedAt: !1209)
!1215 = !DILocation(line: 106, column: 12, scope: !1212, inlinedAt: !1209)
!1216 = !DILocation(line: 106, column: 5, scope: !1212, inlinedAt: !1209)
!1217 = !DILocation(line: 127, column: 25, scope: !1196, inlinedAt: !1194)
!1218 = !DILocation(line: 127, column: 5, scope: !1196, inlinedAt: !1194)
!1219 = !DILocation(line: 141, column: 13, scope: !1220, inlinedAt: !1194)
!1220 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 141, column: 11)
!1221 = !DILocation(line: 141, column: 11, scope: !1192, inlinedAt: !1194)
!1222 = !DILocation(line: 0, scope: !1220, inlinedAt: !1194)
!1223 = !DILocation(line: 146, column: 13, scope: !1191, inlinedAt: !1194)
!1224 = !DILocation(line: 146, column: 11, scope: !1192, inlinedAt: !1194)
!1225 = !DILocation(line: 0, scope: !1129, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 149, column: 15, scope: !1190, inlinedAt: !1194)
!1227 = !DILocation(line: 104, column: 20, scope: !1129, inlinedAt: !1226)
!1228 = !DILocation(line: 105, column: 7, scope: !1212, inlinedAt: !1226)
!1229 = !DILocation(line: 105, column: 7, scope: !1129, inlinedAt: !1226)
!1230 = !DILocation(line: 106, column: 14, scope: !1212, inlinedAt: !1226)
!1231 = !DILocation(line: 106, column: 12, scope: !1212, inlinedAt: !1226)
!1232 = !DILocation(line: 106, column: 5, scope: !1212, inlinedAt: !1226)
!1233 = !DILocation(line: 0, scope: !1234, inlinedAt: !1194)
!1234 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 152, column: 15)
!1235 = !DILocation(line: 158, column: 31, scope: !1190, inlinedAt: !1194)
!1236 = !DILocation(line: 158, column: 15, scope: !1190, inlinedAt: !1194)
!1237 = !DILocation(line: 159, column: 17, scope: !1238, inlinedAt: !1194)
!1238 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 159, column: 15)
!1239 = !DILocation(line: 159, column: 15, scope: !1190, inlinedAt: !1194)
!1240 = !DILocation(line: 161, column: 26, scope: !1241, inlinedAt: !1194)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !2, line: 160, column: 13)
!1242 = !DILocation(line: 163, column: 13, scope: !1241, inlinedAt: !1194)
!1243 = !DILocation(line: 166, column: 15, scope: !1244, inlinedAt: !1194)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 166, column: 15)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !2, line: 166, column: 15)
!1246 = distinct !DILexicalBlock(scope: !1238, file: !2, line: 165, column: 13)
!1247 = !DILocation(line: 166, column: 15, scope: !1245, inlinedAt: !1194)
!1248 = !DILocation(line: 167, column: 26, scope: !1246, inlinedAt: !1194)
!1249 = !DILocation(line: 0, scope: !1238, inlinedAt: !1194)
!1250 = !DILocation(line: 171, column: 20, scope: !1190, inlinedAt: !1194)
!1251 = !DILocation(line: 171, column: 11, scope: !1190, inlinedAt: !1194)
!1252 = !DILocation(line: 173, column: 41, scope: !1189, inlinedAt: !1194)
!1253 = !DILocation(line: 173, column: 25, scope: !1189, inlinedAt: !1194)
!1254 = !DILocation(line: 0, scope: !1189, inlinedAt: !1194)
!1255 = !DILocation(line: 174, column: 23, scope: !1256, inlinedAt: !1194)
!1256 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 174, column: 19)
!1257 = !DILocation(line: 174, column: 19, scope: !1189, inlinedAt: !1194)
!1258 = !DILocation(line: 176, column: 22, scope: !1259, inlinedAt: !1194)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !2, line: 175, column: 17)
!1260 = !DILocation(line: 176, column: 30, scope: !1259, inlinedAt: !1194)
!1261 = !{!1198, !853, i64 24}
!1262 = !DILocation(line: 177, column: 26, scope: !1259, inlinedAt: !1194)
!1263 = !DILocation(line: 178, column: 17, scope: !1259, inlinedAt: !1194)
!1264 = !DILocation(line: 181, column: 19, scope: !1265, inlinedAt: !1194)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 181, column: 19)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 181, column: 19)
!1267 = distinct !DILexicalBlock(scope: !1256, file: !2, line: 180, column: 17)
!1268 = !DILocation(line: 181, column: 19, scope: !1266, inlinedAt: !1194)
!1269 = !DILocation(line: 182, column: 22, scope: !1267, inlinedAt: !1194)
!1270 = !DILocation(line: 182, column: 30, scope: !1267, inlinedAt: !1194)
!1271 = !DILocation(line: 183, column: 26, scope: !1267, inlinedAt: !1194)
!1272 = !DILocation(line: 0, scope: !1256, inlinedAt: !1194)
!1273 = distinct !{!1273, !1251, !1274, !961}
!1274 = !DILocation(line: 185, column: 13, scope: !1190, inlinedAt: !1194)
!1275 = !DILocation(line: 188, column: 18, scope: !1276, inlinedAt: !1194)
!1276 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 188, column: 15)
!1277 = !DILocation(line: 188, column: 26, scope: !1276, inlinedAt: !1194)
!1278 = !DILocation(line: 188, column: 31, scope: !1276, inlinedAt: !1194)
!1279 = !DILocation(line: 188, column: 15, scope: !1276, inlinedAt: !1194)
!1280 = !DILocation(line: 188, column: 48, scope: !1276, inlinedAt: !1194)
!1281 = !DILocation(line: 188, column: 45, scope: !1276, inlinedAt: !1194)
!1282 = !DILocation(line: 188, column: 15, scope: !1190, inlinedAt: !1194)
!1283 = !DILocation(line: 190, column: 26, scope: !1284, inlinedAt: !1194)
!1284 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 189, column: 13)
!1285 = !DILocation(line: 191, column: 15, scope: !1284, inlinedAt: !1194)
!1286 = !DILocation(line: 194, column: 18, scope: !1287, inlinedAt: !1194)
!1287 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 194, column: 15)
!1288 = !DILocation(line: 194, column: 15, scope: !1287, inlinedAt: !1194)
!1289 = !DILocation(line: 194, column: 26, scope: !1287, inlinedAt: !1194)
!1290 = !DILocation(line: 194, column: 15, scope: !1190, inlinedAt: !1194)
!1291 = !DILocation(line: 198, column: 19, scope: !1292, inlinedAt: !1194)
!1292 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 195, column: 13)
!1293 = !DILocation(line: 200, column: 32, scope: !1294, inlinedAt: !1194)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 199, column: 17)
!1295 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 198, column: 19)
!1296 = !DILocation(line: 200, column: 22, scope: !1294, inlinedAt: !1194)
!1297 = !DILocation(line: 200, column: 27, scope: !1294, inlinedAt: !1194)
!1298 = !{!1198, !852, i64 8}
!1299 = !DILocation(line: 202, column: 17, scope: !1294, inlinedAt: !1194)
!1300 = !DILocation(line: 205, column: 33, scope: !1301, inlinedAt: !1194)
!1301 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 204, column: 17)
!1302 = !DILocation(line: 205, column: 22, scope: !1301, inlinedAt: !1194)
!1303 = !DILocation(line: 205, column: 28, scope: !1301, inlinedAt: !1194)
!1304 = !DILocation(line: 0, scope: !1295, inlinedAt: !1194)
!1305 = !DILocation(line: 208, column: 39, scope: !1292, inlinedAt: !1194)
!1306 = !DILocation(line: 209, column: 13, scope: !1292, inlinedAt: !1194)
!1307 = !DILocation(line: 213, column: 19, scope: !1308, inlinedAt: !1194)
!1308 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 211, column: 13)
!1309 = !DILocation(line: 215, column: 26, scope: !1310, inlinedAt: !1194)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 214, column: 17)
!1311 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 213, column: 19)
!1312 = !DILocation(line: 216, column: 33, scope: !1310, inlinedAt: !1194)
!1313 = !DILocation(line: 216, column: 28, scope: !1310, inlinedAt: !1194)
!1314 = !DILocation(line: 217, column: 27, scope: !1310, inlinedAt: !1194)
!1315 = !DILocation(line: 218, column: 32, scope: !1310, inlinedAt: !1194)
!1316 = !DILocation(line: 218, column: 22, scope: !1310, inlinedAt: !1194)
!1317 = !DILocation(line: 218, column: 27, scope: !1310, inlinedAt: !1194)
!1318 = !DILocation(line: 220, column: 17, scope: !1310, inlinedAt: !1194)
!1319 = !DILocation(line: 223, column: 26, scope: !1320, inlinedAt: !1194)
!1320 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 222, column: 17)
!1321 = !DILocation(line: 224, column: 32, scope: !1320, inlinedAt: !1194)
!1322 = !DILocation(line: 224, column: 27, scope: !1320, inlinedAt: !1194)
!1323 = !DILocation(line: 225, column: 28, scope: !1320, inlinedAt: !1194)
!1324 = !DILocation(line: 226, column: 33, scope: !1320, inlinedAt: !1194)
!1325 = !DILocation(line: 226, column: 22, scope: !1320, inlinedAt: !1194)
!1326 = !DILocation(line: 226, column: 28, scope: !1320, inlinedAt: !1194)
!1327 = !DILocation(line: 0, scope: !1311, inlinedAt: !1194)
!1328 = !DILocation(line: 230, column: 26, scope: !1308, inlinedAt: !1194)
!1329 = !DILocation(line: 231, column: 26, scope: !1308, inlinedAt: !1194)
!1330 = !DILocation(line: 232, column: 22, scope: !1331, inlinedAt: !1194)
!1331 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 232, column: 19)
!1332 = !DILocation(line: 232, column: 19, scope: !1331, inlinedAt: !1194)
!1333 = !DILocation(line: 232, column: 30, scope: !1331, inlinedAt: !1194)
!1334 = !DILocation(line: 232, column: 19, scope: !1308, inlinedAt: !1194)
!1335 = !DILocation(line: 234, column: 35, scope: !1336, inlinedAt: !1194)
!1336 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 234, column: 24)
!1337 = !DILocation(line: 234, column: 24, scope: !1331, inlinedAt: !1194)
!1338 = !DILocation(line: 0, scope: !1331, inlinedAt: !1194)
!1339 = !DILocation(line: 236, column: 26, scope: !1308, inlinedAt: !1194)
!1340 = !DILocation(line: 0, scope: !1287, inlinedAt: !1194)
!1341 = !DILocation(line: 240, column: 23, scope: !1342, inlinedAt: !1194)
!1342 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 240, column: 15)
!1343 = !DILocation(line: 240, column: 17, scope: !1342, inlinedAt: !1194)
!1344 = !DILocation(line: 240, column: 15, scope: !1190, inlinedAt: !1194)
!1345 = !DILocation(line: 241, column: 22, scope: !1342, inlinedAt: !1194)
!1346 = !DILocation(line: 241, column: 13, scope: !1342, inlinedAt: !1194)
!1347 = !DILocation(line: 243, column: 16, scope: !1342, inlinedAt: !1194)
!1348 = !DILocation(line: 243, column: 21, scope: !1342, inlinedAt: !1194)
!1349 = !DILocation(line: 249, column: 14, scope: !1350, inlinedAt: !1194)
!1350 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 249, column: 11)
!1351 = !DILocation(line: 249, column: 11, scope: !1350, inlinedAt: !1194)
!1352 = !DILocation(line: 249, column: 11, scope: !1192, inlinedAt: !1194)
!1353 = distinct !{!1353, !1354, !1355}
!1354 = !DILocation(line: 133, column: 3, scope: !1177, inlinedAt: !1194)
!1355 = !DILocation(line: 256, column: 5, scope: !1177, inlinedAt: !1194)
!1356 = !DILocation(line: 461, column: 11, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 461, column: 11)
!1358 = !DILocation(line: 461, column: 11, scope: !1117)
!1359 = !DILocalVariable(name: "j", arg: 1, scope: !1360, file: !2, line: 264, type: !371)
!1360 = distinct !DISubprogram(name: "record_relation", scope: !2, file: !2, line: 264, type: !1361, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1363)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{null, !371, !371}
!1363 = !{!1359, !1364, !1365}
!1364 = !DILocalVariable(name: "k", arg: 2, scope: !1360, file: !2, line: 264, type: !371)
!1365 = !DILocalVariable(name: "p", scope: !1360, file: !2, line: 266, type: !382)
!1366 = !DILocation(line: 0, scope: !1360, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 464, column: 11, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 462, column: 9)
!1369 = !DILocation(line: 268, column: 18, scope: !1370, inlinedAt: !1367)
!1370 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 268, column: 7)
!1371 = !DILocation(line: 268, column: 26, scope: !1370, inlinedAt: !1367)
!1372 = !DILocation(line: 0, scope: !926, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 268, column: 8, scope: !1370, inlinedAt: !1367)
!1374 = !DILocation(line: 1361, column: 11, scope: !926, inlinedAt: !1373)
!1375 = !DILocation(line: 1361, column: 10, scope: !926, inlinedAt: !1373)
!1376 = !DILocation(line: 268, column: 7, scope: !1360, inlinedAt: !1367)
!1377 = !DILocation(line: 270, column: 10, scope: !1378, inlinedAt: !1367)
!1378 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 269, column: 5)
!1379 = !DILocation(line: 270, column: 15, scope: !1378, inlinedAt: !1367)
!1380 = !{!1198, !1167, i64 32}
!1381 = !DILocation(line: 271, column: 11, scope: !1378, inlinedAt: !1367)
!1382 = !DILocation(line: 272, column: 14, scope: !1378, inlinedAt: !1367)
!1383 = !{!1384, !852, i64 0}
!1384 = !{!"successor", !852, i64 0, !852, i64 8}
!1385 = !DILocation(line: 273, column: 20, scope: !1378, inlinedAt: !1367)
!1386 = !{!1198, !852, i64 48}
!1387 = !DILocation(line: 273, column: 10, scope: !1378, inlinedAt: !1367)
!1388 = !DILocation(line: 273, column: 15, scope: !1378, inlinedAt: !1367)
!1389 = !{!1384, !852, i64 8}
!1390 = !DILocation(line: 274, column: 14, scope: !1378, inlinedAt: !1367)
!1391 = !DILocation(line: 275, column: 5, scope: !1378, inlinedAt: !1367)
!1392 = !DILocation(line: 471, column: 9, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1101, file: !2, line: 471, column: 7)
!1394 = !DILocation(line: 471, column: 7, scope: !1101)
!1395 = !DILocation(line: 472, column: 5, scope: !1393)
!1396 = !DILocalVariable(name: "root", arg: 1, scope: !1397, file: !2, line: 420, type: !371)
!1397 = distinct !DISubprogram(name: "walk_tree", scope: !2, file: !2, line: 420, type: !1398, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1403)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null, !371, !1400}
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!154, !371}
!1403 = !{!1396, !1404}
!1404 = !DILocalVariable(name: "action", arg: 2, scope: !1397, file: !2, line: 420, type: !1400)
!1405 = !DILocation(line: 0, scope: !1397, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 476, column: 3, scope: !1101)
!1407 = !DILocation(line: 422, column: 13, scope: !1408, inlinedAt: !1406)
!1408 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 422, column: 7)
!1409 = !DILocation(line: 422, column: 7, scope: !1408, inlinedAt: !1406)
!1410 = !DILocation(line: 422, column: 7, scope: !1397, inlinedAt: !1406)
!1411 = !DILocation(line: 423, column: 5, scope: !1408, inlinedAt: !1406)
!1412 = !DILocation(line: 478, column: 10, scope: !1101)
!1413 = !{!1167, !1167, i64 0}
!1414 = !DILocation(line: 478, column: 20, scope: !1101)
!1415 = !DILocation(line: 478, column: 3, scope: !1101)
!1416 = !DILocation(line: 0, scope: !1397, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 481, column: 7, scope: !1120)
!1418 = !DILocation(line: 422, column: 7, scope: !1397, inlinedAt: !1417)
!1419 = !DILocation(line: 423, column: 5, scope: !1408, inlinedAt: !1417)
!1420 = !DILocation(line: 483, column: 14, scope: !1120)
!1421 = !DILocation(line: 483, column: 7, scope: !1120)
!1422 = !DILocation(line: 510, column: 11, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 510, column: 11)
!1424 = !DILocation(line: 485, column: 39, scope: !1119)
!1425 = !DILocation(line: 0, scope: !1119)
!1426 = !DILocation(line: 488, column: 23, scope: !1119)
!1427 = !DILocation(line: 488, column: 11, scope: !1119)
!1428 = !DILocation(line: 489, column: 11, scope: !1119)
!1429 = !DILocation(line: 489, column: 17, scope: !1119)
!1430 = !DILocation(line: 489, column: 25, scope: !1119)
!1431 = !{!1198, !1199, i64 25}
!1432 = !DILocation(line: 490, column: 20, scope: !1119)
!1433 = !DILocation(line: 493, column: 11, scope: !1119)
!1434 = !DILocation(line: 495, column: 18, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 494, column: 13)
!1436 = !DILocation(line: 495, column: 23, scope: !1435)
!1437 = !DILocation(line: 495, column: 28, scope: !1435)
!1438 = !DILocation(line: 496, column: 33, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1435, file: !2, line: 496, column: 19)
!1440 = !DILocation(line: 496, column: 19, scope: !1435)
!1441 = !DILocation(line: 498, column: 26, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1439, file: !2, line: 497, column: 17)
!1443 = !DILocation(line: 498, column: 32, scope: !1442)
!1444 = !{!1198, !852, i64 40}
!1445 = !DILocation(line: 499, column: 25, scope: !1442)
!1446 = !DILocation(line: 500, column: 17, scope: !1442)
!1447 = !DILocation(line: 502, column: 22, scope: !1435)
!1448 = distinct !{!1448, !1433, !1449, !961}
!1449 = !DILocation(line: 503, column: 13, scope: !1119)
!1450 = !DILocation(line: 506, column: 24, scope: !1119)
!1451 = !DILocation(line: 506, column: 16, scope: !1119)
!1452 = distinct !{!1452, !1421, !1453, !961}
!1453 = !DILocation(line: 507, column: 9, scope: !1120)
!1454 = !DILocation(line: 510, column: 21, scope: !1423)
!1455 = !DILocation(line: 510, column: 11, scope: !1120)
!1456 = !DILocation(line: 513, column: 11, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1423, file: !2, line: 511, column: 9)
!1458 = !DILocation(line: 517, column: 11, scope: !1457)
!1459 = !DILocation(line: 0, scope: !1397, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 518, column: 13, scope: !1457)
!1461 = !DILocation(line: 422, column: 7, scope: !1397, inlinedAt: !1460)
!1462 = !DILocation(line: 423, column: 5, scope: !1408, inlinedAt: !1460)
!1463 = !DILocation(line: 519, column: 18, scope: !1457)
!1464 = !DILocation(line: 518, column: 13, scope: !1457)
!1465 = distinct !{!1465, !1458, !1466, !961}
!1466 = !DILocation(line: 519, column: 22, scope: !1457)
!1467 = distinct !{!1467, !1415, !1468, !961}
!1468 = !DILocation(line: 521, column: 5, scope: !1101)
!1469 = !DILocation(line: 523, column: 15, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1101, file: !2, line: 523, column: 7)
!1471 = !DILocation(line: 523, column: 7, scope: !1470)
!1472 = !DILocation(line: 523, column: 22, scope: !1470)
!1473 = !DILocation(line: 523, column: 7, scope: !1101)
!1474 = !DILocation(line: 524, column: 5, scope: !1470)
!1475 = !DILocation(line: 527, column: 9, scope: !1101)
!1476 = !DILocation(line: 527, column: 3, scope: !1101)
!1477 = !DISubprogram(name: "__errno_location", scope: !1478, file: !1478, line: 37, type: !1479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1478 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!404}
!1481 = !DISubprogram(name: "__assert_fail", scope: !1482, file: !1482, line: 69, type: !1483, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1482 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !107, !107, !64, !107}
!1485 = distinct !DISubprogram(name: "count_items", scope: !2, file: !2, line: 279, type: !1401, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1486)
!1486 = !{!1487}
!1487 = !DILocalVariable(name: "unused", arg: 1, scope: !1485, file: !2, line: 279, type: !371)
!1488 = !DILocation(line: 0, scope: !1485)
!1489 = !DILocation(line: 281, column: 12, scope: !1485)
!1490 = !DILocation(line: 282, column: 3, scope: !1485)
!1491 = distinct !DISubprogram(name: "recurse_tree", scope: !2, file: !2, line: 397, type: !1492, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1494)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!154, !371, !1400}
!1494 = !{!1495, !1496}
!1495 = !DILocalVariable(name: "root", arg: 1, scope: !1491, file: !2, line: 397, type: !371)
!1496 = !DILocalVariable(name: "action", arg: 2, scope: !1491, file: !2, line: 397, type: !1400)
!1497 = !DILocation(line: 0, scope: !1491)
!1498 = !DILocation(line: 399, column: 13, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1491, file: !2, line: 399, column: 7)
!1500 = !DILocation(line: 399, column: 18, scope: !1499)
!1501 = !DILocation(line: 399, column: 26, scope: !1499)
!1502 = !DILocation(line: 399, column: 35, scope: !1499)
!1503 = !DILocation(line: 399, column: 41, scope: !1499)
!1504 = !DILocation(line: 399, column: 7, scope: !1491)
!1505 = !DILocation(line: 400, column: 12, scope: !1499)
!1506 = !{ptr @count_items, ptr @detect_loop, ptr @scan_zeros}
!1507 = !DILocation(line: 400, column: 5, scope: !1499)
!1508 = !DILocation(line: 404, column: 13, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 404, column: 13)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 403, column: 11)
!1511 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 402, column: 5)
!1512 = !DILocation(line: 404, column: 13, scope: !1510)
!1513 = !DILocation(line: 406, column: 11, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 406, column: 11)
!1515 = !DILocation(line: 406, column: 11, scope: !1511)
!1516 = !DILocation(line: 408, column: 17, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 408, column: 11)
!1518 = !DILocation(line: 408, column: 23, scope: !1517)
!1519 = !DILocation(line: 408, column: 11, scope: !1511)
!1520 = !DILocation(line: 409, column: 13, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1517, file: !2, line: 409, column: 13)
!1522 = !DILocation(line: 409, column: 13, scope: !1517)
!1523 = !DILocation(line: 413, column: 3, scope: !1491)
!1524 = !DILocation(line: 414, column: 1, scope: !1491)
!1525 = distinct !DISubprogram(name: "scan_zeros", scope: !2, file: !2, line: 286, type: !1401, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1526)
!1526 = !{!1527}
!1527 = !DILocalVariable(name: "k", arg: 1, scope: !1525, file: !2, line: 286, type: !371)
!1528 = !DILocation(line: 0, scope: !1525)
!1529 = !DILocation(line: 289, column: 10, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 289, column: 7)
!1531 = !DILocation(line: 289, column: 16, scope: !1530)
!1532 = !DILocation(line: 289, column: 21, scope: !1530)
!1533 = !DILocation(line: 289, column: 28, scope: !1530)
!1534 = !{i8 0, i8 2}
!1535 = !DILocation(line: 289, column: 7, scope: !1525)
!1536 = !DILocation(line: 291, column: 11, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !2, line: 291, column: 11)
!1538 = distinct !DILexicalBlock(scope: !1530, file: !2, line: 290, column: 5)
!1539 = !DILocation(line: 291, column: 16, scope: !1537)
!1540 = !DILocation(line: 291, column: 11, scope: !1538)
!1541 = !DILocation(line: 0, scope: !1537)
!1542 = !DILocation(line: 296, column: 13, scope: !1538)
!1543 = !DILocation(line: 297, column: 5, scope: !1538)
!1544 = !DILocation(line: 299, column: 3, scope: !1525)
!1545 = !DISubprogram(name: "puts", scope: !442, file: !442, line: 661, type: !1546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!52, !107}
!1548 = distinct !DISubprogram(name: "detect_loop", scope: !2, file: !2, line: 321, type: !1401, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1549)
!1549 = !{!1550, !1551, !1557, !1564, !1567}
!1550 = !DILocalVariable(name: "k", arg: 1, scope: !1548, file: !2, line: 321, type: !371)
!1551 = !DILocalVariable(name: "p", scope: !1552, file: !2, line: 333, type: !1556)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 332, column: 9)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 328, column: 11)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 324, column: 5)
!1555 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 323, column: 7)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!1557 = !DILocalVariable(name: "tmp", scope: !1558, file: !2, line: 344, type: !371)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 343, column: 25)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 340, column: 21)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !2, line: 339, column: 23)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 338, column: 17)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !2, line: 337, column: 19)
!1563 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 336, column: 13)
!1564 = !DILocalVariable(name: "s", scope: !1565, file: !2, line: 352, type: !382)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !2, line: 350, column: 29)
!1566 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 349, column: 31)
!1567 = !DILocalVariable(name: "tmp", scope: !1568, file: !2, line: 367, type: !371)
!1568 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 366, column: 25)
!1569 = !DILocation(line: 0, scope: !1548)
!1570 = !DILocation(line: 323, column: 10, scope: !1555)
!1571 = !DILocation(line: 323, column: 16, scope: !1555)
!1572 = !DILocation(line: 323, column: 7, scope: !1548)
!1573 = !DILocation(line: 328, column: 11, scope: !1553)
!1574 = !DILocation(line: 328, column: 16, scope: !1553)
!1575 = !DILocation(line: 328, column: 11, scope: !1554)
!1576 = !DILocation(line: 333, column: 38, scope: !1552)
!1577 = !DILocation(line: 0, scope: !1552)
!1578 = !DILocation(line: 335, column: 18, scope: !1552)
!1579 = !DILocation(line: 335, column: 11, scope: !1552)
!1580 = !DILocation(line: 337, column: 25, scope: !1562)
!1581 = !DILocation(line: 337, column: 29, scope: !1562)
!1582 = !DILocation(line: 337, column: 19, scope: !1563)
!1583 = !DILocation(line: 385, column: 26, scope: !1563)
!1584 = distinct !{!1584, !1579, !1585, !961}
!1585 = !DILocation(line: 386, column: 13, scope: !1552)
!1586 = !DILocation(line: 339, column: 26, scope: !1560)
!1587 = !DILocation(line: 339, column: 23, scope: !1560)
!1588 = !DILocation(line: 339, column: 23, scope: !1561)
!1589 = !DILocation(line: 344, column: 52, scope: !1558)
!1590 = !DILocation(line: 0, scope: !1558)
!1591 = !DILocation(line: 346, column: 27, scope: !1558)
!1592 = !DILocation(line: 349, column: 31, scope: !1566)
!1593 = !DILocation(line: 349, column: 36, scope: !1566)
!1594 = !DILocation(line: 349, column: 31, scope: !1558)
!1595 = !DILocation(line: 361, column: 33, scope: !1558)
!1596 = !DILocation(line: 361, column: 39, scope: !1558)
!1597 = !DILocation(line: 362, column: 32, scope: !1558)
!1598 = !DILocation(line: 342, column: 23, scope: !1559)
!1599 = !DILocation(line: 352, column: 53, scope: !1565)
!1600 = !DILocation(line: 0, scope: !1565)
!1601 = !DILocation(line: 353, column: 34, scope: !1565)
!1602 = !DILocation(line: 353, column: 39, scope: !1565)
!1603 = !DILocation(line: 353, column: 44, scope: !1565)
!1604 = !DILocation(line: 354, column: 39, scope: !1565)
!1605 = !DILocation(line: 354, column: 34, scope: !1565)
!1606 = !DILocation(line: 365, column: 23, scope: !1559)
!1607 = !DILocation(line: 367, column: 52, scope: !1568)
!1608 = !DILocation(line: 0, scope: !1568)
!1609 = !DILocation(line: 369, column: 39, scope: !1568)
!1610 = distinct !{!1610, !1606, !1611, !961}
!1611 = !DILocation(line: 371, column: 25, scope: !1559)
!1612 = !DILocation(line: 379, column: 32, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 378, column: 21)
!1614 = !DILocation(line: 381, column: 23, scope: !1613)
!1615 = !DILocation(line: 0, scope: !1553)
!1616 = !DILocation(line: 391, column: 1, scope: !1548)
!1617 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !416, file: !416, line: 50, type: !866, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1618)
!1618 = !{!1619}
!1619 = !DILocalVariable(name: "file", arg: 1, scope: !1617, file: !416, line: 50, type: !107)
!1620 = !DILocation(line: 0, scope: !1617)
!1621 = !DILocation(line: 52, column: 13, scope: !1617)
!1622 = !DILocation(line: 53, column: 1, scope: !1617)
!1623 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !416, file: !416, line: 87, type: !1624, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1626)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !154}
!1626 = !{!1627}
!1627 = !DILocalVariable(name: "ignore", arg: 1, scope: !1623, file: !416, line: 87, type: !154)
!1628 = !DILocation(line: 0, scope: !1623)
!1629 = !DILocation(line: 89, column: 16, scope: !1623)
!1630 = !{!1199, !1199, i64 0}
!1631 = !DILocation(line: 90, column: 1, scope: !1623)
!1632 = distinct !DISubprogram(name: "close_stdout", scope: !416, file: !416, line: 116, type: !483, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1633)
!1633 = !{!1634}
!1634 = !DILocalVariable(name: "write_error", scope: !1635, file: !416, line: 121, type: !107)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !416, line: 120, column: 5)
!1636 = distinct !DILexicalBlock(scope: !1632, file: !416, line: 118, column: 7)
!1637 = !DILocation(line: 118, column: 21, scope: !1636)
!1638 = !DILocation(line: 118, column: 7, scope: !1636)
!1639 = !DILocation(line: 118, column: 29, scope: !1636)
!1640 = !DILocation(line: 119, column: 7, scope: !1636)
!1641 = !DILocation(line: 119, column: 12, scope: !1636)
!1642 = !DILocation(line: 119, column: 25, scope: !1636)
!1643 = !DILocation(line: 119, column: 28, scope: !1636)
!1644 = !DILocation(line: 119, column: 34, scope: !1636)
!1645 = !DILocation(line: 118, column: 7, scope: !1632)
!1646 = !DILocation(line: 121, column: 33, scope: !1635)
!1647 = !DILocation(line: 0, scope: !1635)
!1648 = !DILocation(line: 122, column: 11, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1635, file: !416, line: 122, column: 11)
!1650 = !DILocation(line: 0, scope: !1649)
!1651 = !DILocation(line: 122, column: 11, scope: !1635)
!1652 = !DILocation(line: 123, column: 9, scope: !1649)
!1653 = !DILocation(line: 126, column: 9, scope: !1649)
!1654 = !DILocation(line: 128, column: 14, scope: !1635)
!1655 = !DILocation(line: 128, column: 7, scope: !1635)
!1656 = !DILocation(line: 133, column: 42, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1632, file: !416, line: 133, column: 7)
!1658 = !DILocation(line: 133, column: 28, scope: !1657)
!1659 = !DILocation(line: 133, column: 50, scope: !1657)
!1660 = !DILocation(line: 133, column: 7, scope: !1632)
!1661 = !DILocation(line: 134, column: 12, scope: !1657)
!1662 = !DILocation(line: 134, column: 5, scope: !1657)
!1663 = !DILocation(line: 135, column: 1, scope: !1632)
!1664 = !DISubprogram(name: "_exit", scope: !1665, file: !1665, line: 624, type: !841, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1665 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1666 = distinct !DISubprogram(name: "verror", scope: !431, file: !431, line: 251, type: !1667, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1669)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{null, !52, !52, !107, !441}
!1669 = !{!1670, !1671, !1672, !1673}
!1670 = !DILocalVariable(name: "status", arg: 1, scope: !1666, file: !431, line: 251, type: !52)
!1671 = !DILocalVariable(name: "errnum", arg: 2, scope: !1666, file: !431, line: 251, type: !52)
!1672 = !DILocalVariable(name: "message", arg: 3, scope: !1666, file: !431, line: 251, type: !107)
!1673 = !DILocalVariable(name: "args", arg: 4, scope: !1666, file: !431, line: 251, type: !441)
!1674 = !DILocation(line: 0, scope: !1666)
!1675 = !DILocation(line: 251, column: 1, scope: !1666)
!1676 = !DILocation(line: 261, column: 3, scope: !1666)
!1677 = !DILocation(line: 265, column: 7, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1666, file: !431, line: 265, column: 7)
!1679 = !DILocation(line: 265, column: 7, scope: !1666)
!1680 = !DILocation(line: 266, column: 5, scope: !1678)
!1681 = !DILocation(line: 272, column: 7, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1678, file: !431, line: 268, column: 5)
!1683 = !DILocation(line: 276, column: 3, scope: !1666)
!1684 = !{i64 0, i64 8, !851, i64 8, i64 8, !851, i64 16, i64 8, !851, i64 24, i64 4, !914, i64 28, i64 4, !914}
!1685 = !DILocation(line: 282, column: 1, scope: !1666)
!1686 = distinct !DISubprogram(name: "flush_stdout", scope: !431, file: !431, line: 163, type: !483, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1687)
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
!1703 = distinct !DISubprogram(name: "error_tail", scope: !431, file: !431, line: 219, type: !1667, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1704)
!1704 = !{!1705, !1706, !1707, !1708}
!1705 = !DILocalVariable(name: "status", arg: 1, scope: !1703, file: !431, line: 219, type: !52)
!1706 = !DILocalVariable(name: "errnum", arg: 2, scope: !1703, file: !431, line: 219, type: !52)
!1707 = !DILocalVariable(name: "message", arg: 3, scope: !1703, file: !431, line: 219, type: !107)
!1708 = !DILocalVariable(name: "args", arg: 4, scope: !1703, file: !431, line: 219, type: !441)
!1709 = !DILocation(line: 0, scope: !1703)
!1710 = !DILocation(line: 219, column: 1, scope: !1703)
!1711 = !DILocation(line: 229, column: 13, scope: !1703)
!1712 = !DILocation(line: 135, column: 10, scope: !1713, inlinedAt: !1755)
!1713 = distinct !DISubprogram(name: "vfprintf", scope: !901, file: !901, line: 132, type: !1714, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1751)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!52, !1716, !905, !443}
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
!1751 = !{!1752, !1753, !1754}
!1752 = !DILocalVariable(name: "__stream", arg: 1, scope: !1713, file: !901, line: 132, type: !1716)
!1753 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1713, file: !901, line: 133, type: !905)
!1754 = !DILocalVariable(name: "__ap", arg: 3, scope: !1713, file: !901, line: 133, type: !443)
!1755 = distinct !DILocation(line: 229, column: 3, scope: !1703)
!1756 = !{!1757, !1759}
!1757 = distinct !{!1757, !1758, !"vfprintf.inline: argument 0"}
!1758 = distinct !{!1758, !"vfprintf.inline"}
!1759 = distinct !{!1759, !1758, !"vfprintf.inline: argument 1"}
!1760 = !DILocation(line: 229, column: 3, scope: !1703)
!1761 = !DILocation(line: 0, scope: !1713, inlinedAt: !1755)
!1762 = !DILocation(line: 133, column: 49, scope: !1713, inlinedAt: !1755)
!1763 = !DILocation(line: 232, column: 3, scope: !1703)
!1764 = !DILocation(line: 233, column: 7, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1703, file: !431, line: 233, column: 7)
!1766 = !DILocation(line: 233, column: 7, scope: !1703)
!1767 = !DILocalVariable(name: "errnum", arg: 1, scope: !1768, file: !431, line: 188, type: !52)
!1768 = distinct !DISubprogram(name: "print_errno_message", scope: !431, file: !431, line: 188, type: !841, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1769)
!1769 = !{!1767, !1770, !1771}
!1770 = !DILocalVariable(name: "s", scope: !1768, file: !431, line: 190, type: !107)
!1771 = !DILocalVariable(name: "errbuf", scope: !1768, file: !431, line: 193, type: !1772)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1773)
!1773 = !{!1774}
!1774 = !DISubrange(count: 1024)
!1775 = !DILocation(line: 0, scope: !1768, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 234, column: 5, scope: !1765)
!1777 = !DILocation(line: 193, column: 3, scope: !1768, inlinedAt: !1776)
!1778 = !DILocation(line: 193, column: 8, scope: !1768, inlinedAt: !1776)
!1779 = !DILocation(line: 195, column: 7, scope: !1768, inlinedAt: !1776)
!1780 = !DILocation(line: 207, column: 9, scope: !1781, inlinedAt: !1776)
!1781 = distinct !DILexicalBlock(scope: !1768, file: !431, line: 207, column: 7)
!1782 = !DILocation(line: 207, column: 7, scope: !1768, inlinedAt: !1776)
!1783 = !DILocation(line: 208, column: 9, scope: !1781, inlinedAt: !1776)
!1784 = !DILocation(line: 208, column: 5, scope: !1781, inlinedAt: !1776)
!1785 = !DILocation(line: 214, column: 3, scope: !1768, inlinedAt: !1776)
!1786 = !DILocation(line: 216, column: 1, scope: !1768, inlinedAt: !1776)
!1787 = !DILocation(line: 234, column: 5, scope: !1765)
!1788 = !DILocation(line: 238, column: 3, scope: !1703)
!1789 = !DILocalVariable(name: "__c", arg: 1, scope: !1790, file: !1158, line: 101, type: !52)
!1790 = distinct !DISubprogram(name: "putc_unlocked", scope: !1158, file: !1158, line: 101, type: !1791, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1793)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!52, !52, !1717}
!1793 = !{!1789, !1794}
!1794 = !DILocalVariable(name: "__stream", arg: 2, scope: !1790, file: !1158, line: 101, type: !1717)
!1795 = !DILocation(line: 0, scope: !1790, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 238, column: 3, scope: !1703)
!1797 = !DILocation(line: 103, column: 10, scope: !1790, inlinedAt: !1796)
!1798 = !{!1166, !852, i64 40}
!1799 = !{!1166, !852, i64 48}
!1800 = !{!"branch_weights", i32 2000, i32 1}
!1801 = !DILocation(line: 240, column: 3, scope: !1703)
!1802 = !DILocation(line: 241, column: 7, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1703, file: !431, line: 241, column: 7)
!1804 = !DILocation(line: 241, column: 7, scope: !1703)
!1805 = !DILocation(line: 242, column: 5, scope: !1803)
!1806 = !DILocation(line: 243, column: 1, scope: !1703)
!1807 = !DISubprogram(name: "__vfprintf_chk", scope: !901, file: !901, line: 96, type: !1808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!52, !1716, !52, !905, !443}
!1810 = !DISubprogram(name: "strerror_r", scope: !1031, file: !1031, line: 444, type: !1811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!54, !52, !54, !104}
!1813 = !DISubprogram(name: "__overflow", scope: !442, file: !442, line: 886, type: !1814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!52, !1717, !52}
!1816 = !DISubprogram(name: "fflush_unlocked", scope: !442, file: !442, line: 239, type: !1817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!52, !1717}
!1819 = !DISubprogram(name: "fcntl", scope: !1820, file: !1820, line: 149, type: !1821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1820 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!52, !52, !52, null}
!1823 = distinct !DISubprogram(name: "error", scope: !431, file: !431, line: 285, type: !1824, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1826)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{null, !52, !52, !107, null}
!1826 = !{!1827, !1828, !1829, !1830}
!1827 = !DILocalVariable(name: "status", arg: 1, scope: !1823, file: !431, line: 285, type: !52)
!1828 = !DILocalVariable(name: "errnum", arg: 2, scope: !1823, file: !431, line: 285, type: !52)
!1829 = !DILocalVariable(name: "message", arg: 3, scope: !1823, file: !431, line: 285, type: !107)
!1830 = !DILocalVariable(name: "ap", scope: !1823, file: !431, line: 287, type: !441)
!1831 = !DILocation(line: 0, scope: !1823)
!1832 = !DILocation(line: 287, column: 3, scope: !1823)
!1833 = !DILocation(line: 287, column: 11, scope: !1823)
!1834 = !DILocation(line: 288, column: 3, scope: !1823)
!1835 = !DILocation(line: 289, column: 3, scope: !1823)
!1836 = !DILocation(line: 290, column: 3, scope: !1823)
!1837 = !DILocation(line: 291, column: 1, scope: !1823)
!1838 = !DILocation(line: 0, scope: !438)
!1839 = !DILocation(line: 298, column: 1, scope: !438)
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
!1879 = !DILocation(line: 0, scope: !1869)
!1880 = !DILocation(line: 362, column: 3, scope: !1869)
!1881 = !DILocation(line: 362, column: 11, scope: !1869)
!1882 = !DILocation(line: 363, column: 3, scope: !1869)
!1883 = !DILocation(line: 364, column: 3, scope: !1869)
!1884 = !DILocation(line: 366, column: 3, scope: !1869)
!1885 = !DILocation(line: 367, column: 1, scope: !1869)
!1886 = distinct !DISubprogram(name: "fdadvise", scope: !758, file: !758, line: 25, type: !1887, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !1891)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{null, !52, !1889, !1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !442, line: 63, baseType: !193)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !93, line: 51, baseType: !92)
!1891 = !{!1892, !1893, !1894, !1895}
!1892 = !DILocalVariable(name: "fd", arg: 1, scope: !1886, file: !758, line: 25, type: !52)
!1893 = !DILocalVariable(name: "offset", arg: 2, scope: !1886, file: !758, line: 25, type: !1889)
!1894 = !DILocalVariable(name: "len", arg: 3, scope: !1886, file: !758, line: 25, type: !1889)
!1895 = !DILocalVariable(name: "advice", arg: 4, scope: !1886, file: !758, line: 25, type: !1890)
!1896 = !DILocation(line: 0, scope: !1886)
!1897 = !DILocation(line: 28, column: 3, scope: !1886)
!1898 = !DILocation(line: 30, column: 1, scope: !1886)
!1899 = !DISubprogram(name: "posix_fadvise", scope: !1820, file: !1820, line: 273, type: !1900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!52, !52, !1889, !1889, !52}
!1902 = distinct !DISubprogram(name: "fadvise", scope: !758, file: !758, line: 33, type: !1903, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !1939)
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
!1940 = !DILocalVariable(name: "fp", arg: 1, scope: !1902, file: !758, line: 33, type: !1905)
!1941 = !DILocalVariable(name: "advice", arg: 2, scope: !1902, file: !758, line: 33, type: !1890)
!1942 = !DILocation(line: 0, scope: !1902)
!1943 = !DILocation(line: 35, column: 7, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1902, file: !758, line: 35, column: 7)
!1945 = !DILocation(line: 35, column: 7, scope: !1902)
!1946 = !DILocation(line: 36, column: 15, scope: !1944)
!1947 = !DILocation(line: 0, scope: !1886, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 36, column: 5, scope: !1944)
!1949 = !DILocation(line: 28, column: 3, scope: !1886, inlinedAt: !1948)
!1950 = !DILocation(line: 36, column: 5, scope: !1944)
!1951 = !DILocation(line: 37, column: 1, scope: !1902)
!1952 = !DISubprogram(name: "fileno", scope: !442, file: !442, line: 809, type: !1953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!52, !1905}
!1955 = distinct !DISubprogram(name: "rpl_fclose", scope: !761, file: !761, line: 58, type: !1956, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !1992)
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
!1993 = !DILocalVariable(name: "fp", arg: 1, scope: !1955, file: !761, line: 58, type: !1958)
!1994 = !DILocalVariable(name: "saved_errno", scope: !1955, file: !761, line: 60, type: !52)
!1995 = !DILocalVariable(name: "fd", scope: !1955, file: !761, line: 63, type: !52)
!1996 = !DILocalVariable(name: "result", scope: !1955, file: !761, line: 74, type: !52)
!1997 = !DILocation(line: 0, scope: !1955)
!1998 = !DILocation(line: 63, column: 12, scope: !1955)
!1999 = !DILocation(line: 64, column: 10, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1955, file: !761, line: 64, column: 7)
!2001 = !DILocation(line: 64, column: 7, scope: !1955)
!2002 = !DILocation(line: 65, column: 12, scope: !2000)
!2003 = !DILocation(line: 65, column: 5, scope: !2000)
!2004 = !DILocation(line: 70, column: 9, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1955, file: !761, line: 70, column: 7)
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
!2017 = distinct !DILexicalBlock(scope: !1955, file: !761, line: 105, column: 7)
!2018 = !DILocation(line: 107, column: 13, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2017, file: !761, line: 106, column: 5)
!2020 = !DILocation(line: 109, column: 5, scope: !2019)
!2021 = !DILocation(line: 112, column: 1, scope: !1955)
!2022 = !DISubprogram(name: "fclose", scope: !442, file: !442, line: 178, type: !1956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!2023 = !DISubprogram(name: "__freading", scope: !2024, file: !2024, line: 51, type: !1956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!2024 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2025 = !DISubprogram(name: "lseek", scope: !1665, file: !1665, line: 339, type: !2026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!193, !52, !193, !52}
!2028 = distinct !DISubprogram(name: "rpl_fflush", scope: !763, file: !763, line: 130, type: !2029, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !2065)
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
!2066 = !DILocalVariable(name: "stream", arg: 1, scope: !2028, file: !763, line: 130, type: !2031)
!2067 = !DILocation(line: 0, scope: !2028)
!2068 = !DILocation(line: 151, column: 14, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2028, file: !763, line: 151, column: 7)
!2070 = !DILocation(line: 151, column: 22, scope: !2069)
!2071 = !DILocation(line: 151, column: 27, scope: !2069)
!2072 = !DILocation(line: 151, column: 7, scope: !2028)
!2073 = !DILocation(line: 152, column: 12, scope: !2069)
!2074 = !DILocation(line: 152, column: 5, scope: !2069)
!2075 = !DILocalVariable(name: "fp", arg: 1, scope: !2076, file: !763, line: 42, type: !2031)
!2076 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !763, file: !763, line: 42, type: !2077, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !2079)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{null, !2031}
!2079 = !{!2075}
!2080 = !DILocation(line: 0, scope: !2076, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 157, column: 3, scope: !2028)
!2082 = !DILocation(line: 44, column: 12, scope: !2083, inlinedAt: !2081)
!2083 = distinct !DILexicalBlock(scope: !2076, file: !763, line: 44, column: 7)
!2084 = !DILocation(line: 44, column: 19, scope: !2083, inlinedAt: !2081)
!2085 = !DILocation(line: 44, column: 7, scope: !2076, inlinedAt: !2081)
!2086 = !DILocation(line: 46, column: 5, scope: !2083, inlinedAt: !2081)
!2087 = !DILocation(line: 159, column: 10, scope: !2028)
!2088 = !DILocation(line: 159, column: 3, scope: !2028)
!2089 = !DILocation(line: 236, column: 1, scope: !2028)
!2090 = !DISubprogram(name: "fflush", scope: !442, file: !442, line: 230, type: !2029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!2091 = distinct !DISubprogram(name: "freopen_safer", scope: !487, file: !487, line: 60, type: !2092, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !2128)
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
!2129 = !DILocalVariable(name: "name", arg: 1, scope: !2091, file: !487, line: 60, type: !107)
!2130 = !DILocalVariable(name: "mode", arg: 2, scope: !2091, file: !487, line: 60, type: !107)
!2131 = !DILocalVariable(name: "f", arg: 3, scope: !2091, file: !487, line: 60, type: !2094)
!2132 = !DILocalVariable(name: "protect_in", scope: !2091, file: !487, line: 68, type: !154)
!2133 = !DILocalVariable(name: "protect_out", scope: !2091, file: !487, line: 69, type: !154)
!2134 = !DILocalVariable(name: "protect_err", scope: !2091, file: !487, line: 70, type: !154)
!2135 = !DILocalVariable(name: "saved_errno", scope: !2091, file: !487, line: 98, type: !52)
!2136 = !DILocation(line: 0, scope: !2091)
!2137 = !DILocation(line: 72, column: 11, scope: !2091)
!2138 = !DILocation(line: 72, column: 3, scope: !2091)
!2139 = !DILocation(line: 75, column: 11, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !487, line: 75, column: 11)
!2141 = distinct !DILexicalBlock(scope: !2091, file: !487, line: 73, column: 5)
!2142 = !DILocation(line: 75, column: 47, scope: !2140)
!2143 = !DILocation(line: 75, column: 11, scope: !2141)
!2144 = !DILocation(line: 79, column: 11, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2141, file: !487, line: 79, column: 11)
!2146 = !DILocation(line: 79, column: 47, scope: !2145)
!2147 = !DILocation(line: 83, column: 11, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2141, file: !487, line: 83, column: 11)
!2149 = !DILocation(line: 83, column: 45, scope: !2148)
!2150 = !DILocation(line: 83, column: 11, scope: !2141)
!2151 = !DILocation(line: 92, column: 24, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !487, line: 92, column: 12)
!2153 = distinct !DILexicalBlock(scope: !2091, file: !487, line: 90, column: 7)
!2154 = !DILocalVariable(name: "fd", arg: 1, scope: !2155, file: !487, line: 38, type: !52)
!2155 = distinct !DISubprogram(name: "protect_fd", scope: !487, file: !487, line: 38, type: !2156, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !2158)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!154, !52}
!2158 = !{!2154, !2159}
!2159 = !DILocalVariable(name: "value", scope: !2155, file: !487, line: 40, type: !52)
!2160 = !DILocation(line: 0, scope: !2155, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 90, column: 22, scope: !2153)
!2162 = !DILocation(line: 40, column: 15, scope: !2155, inlinedAt: !2161)
!2163 = !DILocation(line: 41, column: 7, scope: !2155, inlinedAt: !2161)
!2164 = !DILocation(line: 45, column: 11, scope: !2165, inlinedAt: !2161)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !487, line: 44, column: 9)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !487, line: 43, column: 11)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !487, line: 42, column: 5)
!2168 = distinct !DILexicalBlock(scope: !2155, file: !487, line: 41, column: 7)
!2169 = !DILocation(line: 46, column: 11, scope: !2165, inlinedAt: !2161)
!2170 = !DILocation(line: 46, column: 17, scope: !2165, inlinedAt: !2161)
!2171 = !DILocation(line: 99, column: 7, scope: !2091)
!2172 = !DILocation(line: 41, column: 13, scope: !2168, inlinedAt: !2161)
!2173 = !DILocation(line: 90, column: 7, scope: !2091)
!2174 = !DILocation(line: 0, scope: !2155, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 92, column: 28, scope: !2152)
!2176 = !DILocation(line: 40, column: 15, scope: !2155, inlinedAt: !2175)
!2177 = !DILocation(line: 41, column: 13, scope: !2168, inlinedAt: !2175)
!2178 = !DILocation(line: 41, column: 7, scope: !2155, inlinedAt: !2175)
!2179 = !DILocation(line: 45, column: 11, scope: !2165, inlinedAt: !2175)
!2180 = !DILocation(line: 46, column: 11, scope: !2165, inlinedAt: !2175)
!2181 = !DILocation(line: 46, column: 17, scope: !2165, inlinedAt: !2175)
!2182 = !DILocation(line: 47, column: 9, scope: !2165, inlinedAt: !2175)
!2183 = !DILocation(line: 92, column: 12, scope: !2153)
!2184 = !DILocation(line: 94, column: 24, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2152, file: !487, line: 94, column: 12)
!2186 = !DILocation(line: 0, scope: !2155, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 94, column: 28, scope: !2185)
!2188 = !DILocation(line: 40, column: 15, scope: !2155, inlinedAt: !2187)
!2189 = !DILocation(line: 41, column: 13, scope: !2168, inlinedAt: !2187)
!2190 = !DILocation(line: 41, column: 7, scope: !2155, inlinedAt: !2187)
!2191 = !DILocation(line: 45, column: 11, scope: !2165, inlinedAt: !2187)
!2192 = !DILocation(line: 46, column: 11, scope: !2165, inlinedAt: !2187)
!2193 = !DILocation(line: 46, column: 17, scope: !2165, inlinedAt: !2187)
!2194 = !DILocation(line: 47, column: 9, scope: !2165, inlinedAt: !2187)
!2195 = !DILocation(line: 94, column: 12, scope: !2152)
!2196 = !DILocation(line: 98, column: 21, scope: !2091)
!2197 = !DILocation(line: 100, column: 5, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2091, file: !487, line: 99, column: 7)
!2199 = !DILocation(line: 101, column: 7, scope: !2091)
!2200 = !DILocation(line: 97, column: 9, scope: !2185)
!2201 = !DILocation(line: 102, column: 5, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2091, file: !487, line: 101, column: 7)
!2203 = !DILocation(line: 103, column: 7, scope: !2091)
!2204 = !DILocation(line: 104, column: 5, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2091, file: !487, line: 103, column: 7)
!2206 = !DILocation(line: 105, column: 8, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2091, file: !487, line: 105, column: 7)
!2208 = !DILocation(line: 105, column: 7, scope: !2091)
!2209 = !DILocation(line: 106, column: 11, scope: !2207)
!2210 = !DILocation(line: 106, column: 5, scope: !2207)
!2211 = !DILocation(line: 107, column: 3, scope: !2091)
!2212 = !DISubprogram(name: "dup2", scope: !1665, file: !1665, line: 555, type: !2213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!52, !52, !52}
!2215 = !DISubprogram(name: "open", scope: !1820, file: !1820, line: 181, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!52, !107, !52, null}
!2218 = !DISubprogram(name: "close", scope: !1665, file: !1665, line: 358, type: !1692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!2219 = !DISubprogram(name: "freopen", scope: !442, file: !442, line: 265, type: !2220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!2094, !905, !905, !2222}
!2222 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2094)
!2223 = distinct !DISubprogram(name: "rpl_fseeko", scope: !768, file: !768, line: 28, type: !2224, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !2260)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!52, !2226, !1889, !52}
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
!2261 = !DILocalVariable(name: "fp", arg: 1, scope: !2223, file: !768, line: 28, type: !2226)
!2262 = !DILocalVariable(name: "offset", arg: 2, scope: !2223, file: !768, line: 28, type: !1889)
!2263 = !DILocalVariable(name: "whence", arg: 3, scope: !2223, file: !768, line: 28, type: !52)
!2264 = !DILocalVariable(name: "pos", scope: !2265, file: !768, line: 123, type: !1889)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !768, line: 119, column: 5)
!2266 = distinct !DILexicalBlock(scope: !2223, file: !768, line: 55, column: 7)
!2267 = !DILocation(line: 0, scope: !2223)
!2268 = !DILocation(line: 55, column: 12, scope: !2266)
!2269 = !{!1166, !852, i64 16}
!2270 = !DILocation(line: 55, column: 33, scope: !2266)
!2271 = !{!1166, !852, i64 8}
!2272 = !DILocation(line: 55, column: 25, scope: !2266)
!2273 = !DILocation(line: 56, column: 7, scope: !2266)
!2274 = !DILocation(line: 56, column: 15, scope: !2266)
!2275 = !DILocation(line: 56, column: 37, scope: !2266)
!2276 = !{!1166, !852, i64 32}
!2277 = !DILocation(line: 56, column: 29, scope: !2266)
!2278 = !DILocation(line: 57, column: 7, scope: !2266)
!2279 = !DILocation(line: 57, column: 15, scope: !2266)
!2280 = !{!1166, !852, i64 72}
!2281 = !DILocation(line: 57, column: 29, scope: !2266)
!2282 = !DILocation(line: 55, column: 7, scope: !2223)
!2283 = !DILocation(line: 123, column: 26, scope: !2265)
!2284 = !DILocation(line: 123, column: 19, scope: !2265)
!2285 = !DILocation(line: 0, scope: !2265)
!2286 = !DILocation(line: 124, column: 15, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2265, file: !768, line: 124, column: 11)
!2288 = !DILocation(line: 124, column: 11, scope: !2265)
!2289 = !DILocation(line: 135, column: 19, scope: !2265)
!2290 = !DILocation(line: 136, column: 12, scope: !2265)
!2291 = !DILocation(line: 136, column: 20, scope: !2265)
!2292 = !{!1166, !1167, i64 144}
!2293 = !DILocation(line: 167, column: 7, scope: !2265)
!2294 = !DILocation(line: 169, column: 10, scope: !2223)
!2295 = !DILocation(line: 169, column: 3, scope: !2223)
!2296 = !DILocation(line: 170, column: 1, scope: !2223)
!2297 = !DISubprogram(name: "fseeko", scope: !442, file: !442, line: 736, type: !2298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!52, !2226, !193, !52}
!2300 = distinct !DISubprogram(name: "getprogname", scope: !770, file: !770, line: 54, type: !2301, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !859)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!107}
!2303 = !DILocation(line: 58, column: 10, scope: !2300)
!2304 = !DILocation(line: 58, column: 3, scope: !2300)
!2305 = distinct !DISubprogram(name: "set_program_name", scope: !491, file: !491, line: 37, type: !866, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2306)
!2306 = !{!2307, !2308, !2309}
!2307 = !DILocalVariable(name: "argv0", arg: 1, scope: !2305, file: !491, line: 37, type: !107)
!2308 = !DILocalVariable(name: "slash", scope: !2305, file: !491, line: 44, type: !107)
!2309 = !DILocalVariable(name: "base", scope: !2305, file: !491, line: 45, type: !107)
!2310 = !DILocation(line: 0, scope: !2305)
!2311 = !DILocation(line: 44, column: 23, scope: !2305)
!2312 = !DILocation(line: 45, column: 22, scope: !2305)
!2313 = !DILocation(line: 46, column: 17, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2305, file: !491, line: 46, column: 7)
!2315 = !DILocation(line: 46, column: 9, scope: !2314)
!2316 = !DILocation(line: 46, column: 25, scope: !2314)
!2317 = !DILocation(line: 46, column: 40, scope: !2314)
!2318 = !DILocalVariable(name: "__s1", arg: 1, scope: !2319, file: !927, line: 974, type: !1059)
!2319 = distinct !DISubprogram(name: "memeq", scope: !927, file: !927, line: 974, type: !2320, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2322)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!154, !1059, !1059, !104}
!2322 = !{!2318, !2323, !2324}
!2323 = !DILocalVariable(name: "__s2", arg: 2, scope: !2319, file: !927, line: 974, type: !1059)
!2324 = !DILocalVariable(name: "__n", arg: 3, scope: !2319, file: !927, line: 974, type: !104)
!2325 = !DILocation(line: 0, scope: !2319, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 46, column: 28, scope: !2314)
!2327 = !DILocation(line: 976, column: 11, scope: !2319, inlinedAt: !2326)
!2328 = !DILocation(line: 976, column: 10, scope: !2319, inlinedAt: !2326)
!2329 = !DILocation(line: 46, column: 7, scope: !2305)
!2330 = !DILocation(line: 49, column: 11, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !491, line: 49, column: 11)
!2332 = distinct !DILexicalBlock(scope: !2314, file: !491, line: 47, column: 5)
!2333 = !DILocation(line: 49, column: 36, scope: !2331)
!2334 = !DILocation(line: 49, column: 11, scope: !2332)
!2335 = !DILocation(line: 65, column: 16, scope: !2305)
!2336 = !DILocation(line: 71, column: 27, scope: !2305)
!2337 = !DILocation(line: 74, column: 33, scope: !2305)
!2338 = !DILocation(line: 76, column: 1, scope: !2305)
!2339 = !DISubprogram(name: "strrchr", scope: !1031, file: !1031, line: 273, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!2340 = !DILocation(line: 0, scope: !500)
!2341 = !DILocation(line: 40, column: 29, scope: !500)
!2342 = !DILocation(line: 41, column: 19, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !500, file: !501, line: 41, column: 7)
!2344 = !DILocation(line: 41, column: 7, scope: !500)
!2345 = !DILocation(line: 47, column: 3, scope: !500)
!2346 = !DILocation(line: 48, column: 3, scope: !500)
!2347 = !DILocation(line: 48, column: 13, scope: !500)
!2348 = !DILocalVariable(name: "ps", arg: 1, scope: !2349, file: !2350, line: 1135, type: !2353)
!2349 = distinct !DISubprogram(name: "mbszero", scope: !2350, file: !2350, line: 1135, type: !2351, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !504, retainedNodes: !2354)
!2350 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2351 = !DISubroutineType(types: !2352)
!2352 = !{null, !2353}
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!2354 = !{!2348}
!2355 = !DILocation(line: 0, scope: !2349, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 48, column: 18, scope: !500)
!2357 = !DILocalVariable(name: "__dest", arg: 1, scope: !2358, file: !2359, line: 57, type: !102)
!2358 = distinct !DISubprogram(name: "memset", scope: !2359, file: !2359, line: 57, type: !2360, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !504, retainedNodes: !2362)
!2359 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!102, !102, !52, !104}
!2362 = !{!2357, !2363, !2364}
!2363 = !DILocalVariable(name: "__ch", arg: 2, scope: !2358, file: !2359, line: 57, type: !52)
!2364 = !DILocalVariable(name: "__len", arg: 3, scope: !2358, file: !2359, line: 57, type: !104)
!2365 = !DILocation(line: 0, scope: !2358, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 1137, column: 3, scope: !2349, inlinedAt: !2356)
!2367 = !DILocation(line: 59, column: 10, scope: !2358, inlinedAt: !2366)
!2368 = !DILocation(line: 49, column: 7, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !500, file: !501, line: 49, column: 7)
!2370 = !DILocation(line: 49, column: 39, scope: !2369)
!2371 = !DILocation(line: 49, column: 44, scope: !2369)
!2372 = !DILocation(line: 54, column: 1, scope: !500)
!2373 = !DISubprogram(name: "mbrtoc32", scope: !512, file: !512, line: 57, type: !2374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!104, !2376, !905, !104, !2378}
!2376 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2377)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2353)
!2379 = distinct !DISubprogram(name: "clone_quoting_options", scope: !531, file: !531, line: 113, type: !2380, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2383)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!2382, !2382}
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!2383 = !{!2384, !2385, !2386}
!2384 = !DILocalVariable(name: "o", arg: 1, scope: !2379, file: !531, line: 113, type: !2382)
!2385 = !DILocalVariable(name: "saved_errno", scope: !2379, file: !531, line: 115, type: !52)
!2386 = !DILocalVariable(name: "p", scope: !2379, file: !531, line: 116, type: !2382)
!2387 = !DILocation(line: 0, scope: !2379)
!2388 = !DILocation(line: 115, column: 21, scope: !2379)
!2389 = !DILocation(line: 116, column: 40, scope: !2379)
!2390 = !DILocation(line: 116, column: 31, scope: !2379)
!2391 = !DILocation(line: 118, column: 9, scope: !2379)
!2392 = !DILocation(line: 119, column: 3, scope: !2379)
!2393 = distinct !DISubprogram(name: "get_quoting_style", scope: !531, file: !531, line: 124, type: !2394, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2398)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!78, !2396}
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!2398 = !{!2399}
!2399 = !DILocalVariable(name: "o", arg: 1, scope: !2393, file: !531, line: 124, type: !2396)
!2400 = !DILocation(line: 0, scope: !2393)
!2401 = !DILocation(line: 126, column: 11, scope: !2393)
!2402 = !DILocation(line: 126, column: 46, scope: !2393)
!2403 = !{!2404, !853, i64 0}
!2404 = !{!"quoting_options", !853, i64 0, !915, i64 4, !853, i64 8, !852, i64 40, !852, i64 48}
!2405 = !DILocation(line: 126, column: 3, scope: !2393)
!2406 = distinct !DISubprogram(name: "set_quoting_style", scope: !531, file: !531, line: 132, type: !2407, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2409)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{null, !2382, !78}
!2409 = !{!2410, !2411}
!2410 = !DILocalVariable(name: "o", arg: 1, scope: !2406, file: !531, line: 132, type: !2382)
!2411 = !DILocalVariable(name: "s", arg: 2, scope: !2406, file: !531, line: 132, type: !78)
!2412 = !DILocation(line: 0, scope: !2406)
!2413 = !DILocation(line: 134, column: 4, scope: !2406)
!2414 = !DILocation(line: 134, column: 45, scope: !2406)
!2415 = !DILocation(line: 135, column: 1, scope: !2406)
!2416 = distinct !DISubprogram(name: "set_char_quoting", scope: !531, file: !531, line: 143, type: !2417, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!52, !2382, !4, !52}
!2419 = !{!2420, !2421, !2422, !2423, !2424, !2426, !2427}
!2420 = !DILocalVariable(name: "o", arg: 1, scope: !2416, file: !531, line: 143, type: !2382)
!2421 = !DILocalVariable(name: "c", arg: 2, scope: !2416, file: !531, line: 143, type: !4)
!2422 = !DILocalVariable(name: "i", arg: 3, scope: !2416, file: !531, line: 143, type: !52)
!2423 = !DILocalVariable(name: "uc", scope: !2416, file: !531, line: 145, type: !109)
!2424 = !DILocalVariable(name: "p", scope: !2416, file: !531, line: 146, type: !2425)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!2426 = !DILocalVariable(name: "shift", scope: !2416, file: !531, line: 148, type: !52)
!2427 = !DILocalVariable(name: "r", scope: !2416, file: !531, line: 149, type: !64)
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
!2441 = distinct !DISubprogram(name: "set_quoting_flags", scope: !531, file: !531, line: 159, type: !2442, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2444)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!52, !2382, !52}
!2444 = !{!2445, !2446, !2447}
!2445 = !DILocalVariable(name: "o", arg: 1, scope: !2441, file: !531, line: 159, type: !2382)
!2446 = !DILocalVariable(name: "i", arg: 2, scope: !2441, file: !531, line: 159, type: !52)
!2447 = !DILocalVariable(name: "r", scope: !2441, file: !531, line: 163, type: !52)
!2448 = !DILocation(line: 0, scope: !2441)
!2449 = !DILocation(line: 161, column: 8, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2441, file: !531, line: 161, column: 7)
!2451 = !DILocation(line: 161, column: 7, scope: !2441)
!2452 = !DILocation(line: 163, column: 14, scope: !2441)
!2453 = !{!2404, !915, i64 4}
!2454 = !DILocation(line: 164, column: 12, scope: !2441)
!2455 = !DILocation(line: 165, column: 3, scope: !2441)
!2456 = distinct !DISubprogram(name: "set_custom_quoting", scope: !531, file: !531, line: 169, type: !2457, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2459)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{null, !2382, !107, !107}
!2459 = !{!2460, !2461, !2462}
!2460 = !DILocalVariable(name: "o", arg: 1, scope: !2456, file: !531, line: 169, type: !2382)
!2461 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2456, file: !531, line: 170, type: !107)
!2462 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2456, file: !531, line: 170, type: !107)
!2463 = !DILocation(line: 0, scope: !2456)
!2464 = !DILocation(line: 172, column: 8, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2456, file: !531, line: 172, column: 7)
!2466 = !DILocation(line: 172, column: 7, scope: !2456)
!2467 = !DILocation(line: 174, column: 12, scope: !2456)
!2468 = !DILocation(line: 175, column: 8, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2456, file: !531, line: 175, column: 7)
!2470 = !DILocation(line: 175, column: 19, scope: !2469)
!2471 = !DILocation(line: 176, column: 5, scope: !2469)
!2472 = !DILocation(line: 177, column: 6, scope: !2456)
!2473 = !DILocation(line: 177, column: 17, scope: !2456)
!2474 = !{!2404, !852, i64 40}
!2475 = !DILocation(line: 178, column: 6, scope: !2456)
!2476 = !DILocation(line: 178, column: 18, scope: !2456)
!2477 = !{!2404, !852, i64 48}
!2478 = !DILocation(line: 179, column: 1, scope: !2456)
!2479 = !DISubprogram(name: "abort", scope: !1035, file: !1035, line: 598, type: !483, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !859)
!2480 = distinct !DISubprogram(name: "quotearg_buffer", scope: !531, file: !531, line: 774, type: !2481, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!104, !54, !104, !107, !104, !2396}
!2483 = !{!2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491}
!2484 = !DILocalVariable(name: "buffer", arg: 1, scope: !2480, file: !531, line: 774, type: !54)
!2485 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2480, file: !531, line: 774, type: !104)
!2486 = !DILocalVariable(name: "arg", arg: 3, scope: !2480, file: !531, line: 775, type: !107)
!2487 = !DILocalVariable(name: "argsize", arg: 4, scope: !2480, file: !531, line: 775, type: !104)
!2488 = !DILocalVariable(name: "o", arg: 5, scope: !2480, file: !531, line: 776, type: !2396)
!2489 = !DILocalVariable(name: "p", scope: !2480, file: !531, line: 778, type: !2396)
!2490 = !DILocalVariable(name: "saved_errno", scope: !2480, file: !531, line: 779, type: !52)
!2491 = !DILocalVariable(name: "r", scope: !2480, file: !531, line: 780, type: !104)
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
!2503 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !531, file: !531, line: 251, type: !2504, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2508)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!104, !54, !104, !107, !104, !78, !52, !2506, !107, !107}
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!2508 = !{!2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2533, !2535, !2538, !2539, !2540, !2541, !2544, !2545, !2548, !2552, !2553, !2561, !2564, !2565, !2567, !2568, !2569, !2570}
!2509 = !DILocalVariable(name: "buffer", arg: 1, scope: !2503, file: !531, line: 251, type: !54)
!2510 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2503, file: !531, line: 251, type: !104)
!2511 = !DILocalVariable(name: "arg", arg: 3, scope: !2503, file: !531, line: 252, type: !107)
!2512 = !DILocalVariable(name: "argsize", arg: 4, scope: !2503, file: !531, line: 252, type: !104)
!2513 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2503, file: !531, line: 253, type: !78)
!2514 = !DILocalVariable(name: "flags", arg: 6, scope: !2503, file: !531, line: 253, type: !52)
!2515 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2503, file: !531, line: 254, type: !2506)
!2516 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2503, file: !531, line: 255, type: !107)
!2517 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2503, file: !531, line: 256, type: !107)
!2518 = !DILocalVariable(name: "unibyte_locale", scope: !2503, file: !531, line: 258, type: !154)
!2519 = !DILocalVariable(name: "len", scope: !2503, file: !531, line: 260, type: !104)
!2520 = !DILocalVariable(name: "orig_buffersize", scope: !2503, file: !531, line: 261, type: !104)
!2521 = !DILocalVariable(name: "quote_string", scope: !2503, file: !531, line: 262, type: !107)
!2522 = !DILocalVariable(name: "quote_string_len", scope: !2503, file: !531, line: 263, type: !104)
!2523 = !DILocalVariable(name: "backslash_escapes", scope: !2503, file: !531, line: 264, type: !154)
!2524 = !DILocalVariable(name: "elide_outer_quotes", scope: !2503, file: !531, line: 265, type: !154)
!2525 = !DILocalVariable(name: "encountered_single_quote", scope: !2503, file: !531, line: 266, type: !154)
!2526 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2503, file: !531, line: 267, type: !154)
!2527 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2503, file: !531, line: 309, type: !154)
!2528 = !DILocalVariable(name: "lq", scope: !2529, file: !531, line: 361, type: !107)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !531, line: 361, column: 11)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !531, line: 360, column: 13)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !531, line: 333, column: 7)
!2532 = distinct !DILexicalBlock(scope: !2503, file: !531, line: 312, column: 5)
!2533 = !DILocalVariable(name: "i", scope: !2534, file: !531, line: 395, type: !104)
!2534 = distinct !DILexicalBlock(scope: !2503, file: !531, line: 395, column: 3)
!2535 = !DILocalVariable(name: "is_right_quote", scope: !2536, file: !531, line: 397, type: !154)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !531, line: 396, column: 5)
!2537 = distinct !DILexicalBlock(scope: !2534, file: !531, line: 395, column: 3)
!2538 = !DILocalVariable(name: "escaping", scope: !2536, file: !531, line: 398, type: !154)
!2539 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2536, file: !531, line: 399, type: !154)
!2540 = !DILocalVariable(name: "c", scope: !2536, file: !531, line: 417, type: !109)
!2541 = !DILocalVariable(name: "m", scope: !2542, file: !531, line: 598, type: !104)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !531, line: 596, column: 11)
!2543 = distinct !DILexicalBlock(scope: !2536, file: !531, line: 419, column: 9)
!2544 = !DILocalVariable(name: "printable", scope: !2542, file: !531, line: 600, type: !154)
!2545 = !DILocalVariable(name: "mbs", scope: !2546, file: !531, line: 609, type: !604)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !531, line: 608, column: 15)
!2547 = distinct !DILexicalBlock(scope: !2542, file: !531, line: 602, column: 17)
!2548 = !DILocalVariable(name: "w", scope: !2549, file: !531, line: 618, type: !511)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !531, line: 617, column: 19)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !531, line: 616, column: 17)
!2551 = distinct !DILexicalBlock(scope: !2546, file: !531, line: 616, column: 17)
!2552 = !DILocalVariable(name: "bytes", scope: !2549, file: !531, line: 619, type: !104)
!2553 = !DILocalVariable(name: "j", scope: !2554, file: !531, line: 648, type: !104)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !531, line: 648, column: 29)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !531, line: 647, column: 27)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !531, line: 645, column: 29)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !531, line: 636, column: 23)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !531, line: 628, column: 30)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !531, line: 623, column: 30)
!2560 = distinct !DILexicalBlock(scope: !2549, file: !531, line: 621, column: 25)
!2561 = !DILocalVariable(name: "ilim", scope: !2562, file: !531, line: 674, type: !104)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !531, line: 671, column: 15)
!2563 = distinct !DILexicalBlock(scope: !2542, file: !531, line: 670, column: 17)
!2564 = !DILabel(scope: !2503, name: "process_input", file: !531, line: 308)
!2565 = !DILabel(scope: !2566, name: "c_and_shell_escape", file: !531, line: 502)
!2566 = distinct !DILexicalBlock(scope: !2543, file: !531, line: 478, column: 9)
!2567 = !DILabel(scope: !2566, name: "c_escape", file: !531, line: 507)
!2568 = !DILabel(scope: !2536, name: "store_escape", file: !531, line: 709)
!2569 = !DILabel(scope: !2536, name: "store_c", file: !531, line: 712)
!2570 = !DILabel(scope: !2503, name: "force_outer_quoting_style", file: !531, line: 753)
!2571 = !DILocation(line: 0, scope: !2503)
!2572 = !DILocation(line: 258, column: 25, scope: !2503)
!2573 = !DILocation(line: 258, column: 36, scope: !2503)
!2574 = !DILocation(line: 267, column: 3, scope: !2503)
!2575 = !DILocation(line: 261, column: 10, scope: !2503)
!2576 = !DILocation(line: 262, column: 15, scope: !2503)
!2577 = !DILocation(line: 263, column: 10, scope: !2503)
!2578 = !DILocation(line: 308, column: 2, scope: !2503)
!2579 = !DILocation(line: 311, column: 3, scope: !2503)
!2580 = !DILocation(line: 318, column: 11, scope: !2532)
!2581 = !DILocation(line: 319, column: 9, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !531, line: 319, column: 9)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !531, line: 319, column: 9)
!2584 = distinct !DILexicalBlock(scope: !2532, file: !531, line: 318, column: 11)
!2585 = !DILocation(line: 319, column: 9, scope: !2583)
!2586 = !DILocation(line: 0, scope: !595, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 357, column: 26, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !531, line: 335, column: 11)
!2589 = distinct !DILexicalBlock(scope: !2531, file: !531, line: 334, column: 13)
!2590 = !DILocation(line: 199, column: 29, scope: !595, inlinedAt: !2587)
!2591 = !DILocation(line: 201, column: 19, scope: !2592, inlinedAt: !2587)
!2592 = distinct !DILexicalBlock(scope: !595, file: !531, line: 201, column: 7)
!2593 = !DILocation(line: 201, column: 7, scope: !595, inlinedAt: !2587)
!2594 = !DILocation(line: 229, column: 3, scope: !595, inlinedAt: !2587)
!2595 = !DILocation(line: 230, column: 3, scope: !595, inlinedAt: !2587)
!2596 = !DILocation(line: 230, column: 13, scope: !595, inlinedAt: !2587)
!2597 = !DILocalVariable(name: "ps", arg: 1, scope: !2598, file: !2350, line: 1135, type: !2601)
!2598 = distinct !DISubprogram(name: "mbszero", scope: !2350, file: !2350, line: 1135, type: !2599, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2602)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{null, !2601}
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!2602 = !{!2597}
!2603 = !DILocation(line: 0, scope: !2598, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 230, column: 18, scope: !595, inlinedAt: !2587)
!2605 = !DILocalVariable(name: "__dest", arg: 1, scope: !2606, file: !2359, line: 57, type: !102)
!2606 = distinct !DISubprogram(name: "memset", scope: !2359, file: !2359, line: 57, type: !2360, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2607)
!2607 = !{!2605, !2608, !2609}
!2608 = !DILocalVariable(name: "__ch", arg: 2, scope: !2606, file: !2359, line: 57, type: !52)
!2609 = !DILocalVariable(name: "__len", arg: 3, scope: !2606, file: !2359, line: 57, type: !104)
!2610 = !DILocation(line: 0, scope: !2606, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 1137, column: 3, scope: !2598, inlinedAt: !2604)
!2612 = !DILocation(line: 59, column: 10, scope: !2606, inlinedAt: !2611)
!2613 = !DILocation(line: 231, column: 7, scope: !2614, inlinedAt: !2587)
!2614 = distinct !DILexicalBlock(scope: !595, file: !531, line: 231, column: 7)
!2615 = !DILocation(line: 231, column: 40, scope: !2614, inlinedAt: !2587)
!2616 = !DILocation(line: 231, column: 45, scope: !2614, inlinedAt: !2587)
!2617 = !DILocation(line: 235, column: 1, scope: !595, inlinedAt: !2587)
!2618 = !DILocation(line: 0, scope: !595, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 358, column: 27, scope: !2588)
!2620 = !DILocation(line: 199, column: 29, scope: !595, inlinedAt: !2619)
!2621 = !DILocation(line: 201, column: 19, scope: !2592, inlinedAt: !2619)
!2622 = !DILocation(line: 201, column: 7, scope: !595, inlinedAt: !2619)
!2623 = !DILocation(line: 229, column: 3, scope: !595, inlinedAt: !2619)
!2624 = !DILocation(line: 230, column: 3, scope: !595, inlinedAt: !2619)
!2625 = !DILocation(line: 230, column: 13, scope: !595, inlinedAt: !2619)
!2626 = !DILocation(line: 0, scope: !2598, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 230, column: 18, scope: !595, inlinedAt: !2619)
!2628 = !DILocation(line: 0, scope: !2606, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 1137, column: 3, scope: !2598, inlinedAt: !2627)
!2630 = !DILocation(line: 59, column: 10, scope: !2606, inlinedAt: !2629)
!2631 = !DILocation(line: 231, column: 7, scope: !2614, inlinedAt: !2619)
!2632 = !DILocation(line: 231, column: 40, scope: !2614, inlinedAt: !2619)
!2633 = !DILocation(line: 231, column: 45, scope: !2614, inlinedAt: !2619)
!2634 = !DILocation(line: 235, column: 1, scope: !595, inlinedAt: !2619)
!2635 = !DILocation(line: 360, column: 13, scope: !2531)
!2636 = !DILocation(line: 0, scope: !2529)
!2637 = !DILocation(line: 361, column: 45, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2529, file: !531, line: 361, column: 11)
!2639 = !DILocation(line: 361, column: 11, scope: !2529)
!2640 = !DILocation(line: 362, column: 13, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !531, line: 362, column: 13)
!2642 = distinct !DILexicalBlock(scope: !2638, file: !531, line: 362, column: 13)
!2643 = !DILocation(line: 362, column: 13, scope: !2642)
!2644 = !DILocation(line: 361, column: 52, scope: !2638)
!2645 = distinct !{!2645, !2639, !2646, !961}
!2646 = !DILocation(line: 362, column: 13, scope: !2529)
!2647 = !DILocation(line: 260, column: 10, scope: !2503)
!2648 = !DILocation(line: 365, column: 28, scope: !2531)
!2649 = !DILocation(line: 367, column: 7, scope: !2532)
!2650 = !DILocation(line: 370, column: 7, scope: !2532)
!2651 = !DILocation(line: 376, column: 11, scope: !2532)
!2652 = !DILocation(line: 381, column: 11, scope: !2532)
!2653 = !DILocation(line: 382, column: 9, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !531, line: 382, column: 9)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !531, line: 382, column: 9)
!2656 = distinct !DILexicalBlock(scope: !2532, file: !531, line: 381, column: 11)
!2657 = !DILocation(line: 382, column: 9, scope: !2655)
!2658 = !DILocation(line: 389, column: 7, scope: !2532)
!2659 = !DILocation(line: 392, column: 7, scope: !2532)
!2660 = !DILocation(line: 0, scope: !2534)
!2661 = !DILocation(line: 395, column: 8, scope: !2534)
!2662 = !DILocation(line: 395, scope: !2534)
!2663 = !DILocation(line: 395, column: 34, scope: !2537)
!2664 = !DILocation(line: 395, column: 26, scope: !2537)
!2665 = !DILocation(line: 395, column: 48, scope: !2537)
!2666 = !DILocation(line: 395, column: 55, scope: !2537)
!2667 = !DILocation(line: 395, column: 3, scope: !2534)
!2668 = !DILocation(line: 395, column: 67, scope: !2537)
!2669 = !DILocation(line: 0, scope: !2536)
!2670 = !DILocation(line: 402, column: 11, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2536, file: !531, line: 401, column: 11)
!2672 = !DILocation(line: 404, column: 17, scope: !2671)
!2673 = !DILocation(line: 405, column: 39, scope: !2671)
!2674 = !DILocation(line: 409, column: 32, scope: !2671)
!2675 = !DILocation(line: 405, column: 19, scope: !2671)
!2676 = !DILocation(line: 405, column: 15, scope: !2671)
!2677 = !DILocation(line: 410, column: 11, scope: !2671)
!2678 = !DILocation(line: 410, column: 25, scope: !2671)
!2679 = !DILocalVariable(name: "__s1", arg: 1, scope: !2680, file: !927, line: 974, type: !1059)
!2680 = distinct !DISubprogram(name: "memeq", scope: !927, file: !927, line: 974, type: !2320, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2681)
!2681 = !{!2679, !2682, !2683}
!2682 = !DILocalVariable(name: "__s2", arg: 2, scope: !2680, file: !927, line: 974, type: !1059)
!2683 = !DILocalVariable(name: "__n", arg: 3, scope: !2680, file: !927, line: 974, type: !104)
!2684 = !DILocation(line: 0, scope: !2680, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 410, column: 14, scope: !2671)
!2686 = !DILocation(line: 976, column: 11, scope: !2680, inlinedAt: !2685)
!2687 = !DILocation(line: 976, column: 10, scope: !2680, inlinedAt: !2685)
!2688 = !DILocation(line: 401, column: 11, scope: !2536)
!2689 = !DILocation(line: 417, column: 25, scope: !2536)
!2690 = !DILocation(line: 418, column: 7, scope: !2536)
!2691 = !DILocation(line: 421, column: 15, scope: !2543)
!2692 = !DILocation(line: 423, column: 15, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !531, line: 423, column: 15)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !531, line: 422, column: 13)
!2695 = distinct !DILexicalBlock(scope: !2543, file: !531, line: 421, column: 15)
!2696 = !DILocation(line: 423, column: 15, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2693, file: !531, line: 423, column: 15)
!2698 = !DILocation(line: 423, column: 15, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !531, line: 423, column: 15)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !531, line: 423, column: 15)
!2701 = distinct !DILexicalBlock(scope: !2697, file: !531, line: 423, column: 15)
!2702 = !DILocation(line: 423, column: 15, scope: !2700)
!2703 = !DILocation(line: 423, column: 15, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !531, line: 423, column: 15)
!2705 = distinct !DILexicalBlock(scope: !2701, file: !531, line: 423, column: 15)
!2706 = !DILocation(line: 423, column: 15, scope: !2705)
!2707 = !DILocation(line: 423, column: 15, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !531, line: 423, column: 15)
!2709 = distinct !DILexicalBlock(scope: !2701, file: !531, line: 423, column: 15)
!2710 = !DILocation(line: 423, column: 15, scope: !2709)
!2711 = !DILocation(line: 423, column: 15, scope: !2701)
!2712 = !DILocation(line: 423, column: 15, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !531, line: 423, column: 15)
!2714 = distinct !DILexicalBlock(scope: !2693, file: !531, line: 423, column: 15)
!2715 = !DILocation(line: 423, column: 15, scope: !2714)
!2716 = !DILocation(line: 431, column: 19, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2694, file: !531, line: 430, column: 19)
!2718 = !DILocation(line: 431, column: 24, scope: !2717)
!2719 = !DILocation(line: 431, column: 28, scope: !2717)
!2720 = !DILocation(line: 431, column: 38, scope: !2717)
!2721 = !DILocation(line: 431, column: 48, scope: !2717)
!2722 = !DILocation(line: 431, column: 59, scope: !2717)
!2723 = !DILocation(line: 433, column: 19, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !531, line: 433, column: 19)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !531, line: 433, column: 19)
!2726 = distinct !DILexicalBlock(scope: !2717, file: !531, line: 432, column: 17)
!2727 = !DILocation(line: 433, column: 19, scope: !2725)
!2728 = !DILocation(line: 434, column: 19, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !531, line: 434, column: 19)
!2730 = distinct !DILexicalBlock(scope: !2726, file: !531, line: 434, column: 19)
!2731 = !DILocation(line: 434, column: 19, scope: !2730)
!2732 = !DILocation(line: 435, column: 17, scope: !2726)
!2733 = !DILocation(line: 442, column: 20, scope: !2695)
!2734 = !DILocation(line: 447, column: 11, scope: !2543)
!2735 = !DILocation(line: 450, column: 19, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2543, file: !531, line: 448, column: 13)
!2737 = !DILocation(line: 456, column: 19, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2736, file: !531, line: 455, column: 19)
!2739 = !DILocation(line: 456, column: 24, scope: !2738)
!2740 = !DILocation(line: 456, column: 28, scope: !2738)
!2741 = !DILocation(line: 456, column: 38, scope: !2738)
!2742 = !DILocation(line: 456, column: 47, scope: !2738)
!2743 = !DILocation(line: 456, column: 41, scope: !2738)
!2744 = !DILocation(line: 456, column: 52, scope: !2738)
!2745 = !DILocation(line: 455, column: 19, scope: !2736)
!2746 = !DILocation(line: 457, column: 25, scope: !2738)
!2747 = !DILocation(line: 457, column: 17, scope: !2738)
!2748 = !DILocation(line: 464, column: 25, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2738, file: !531, line: 458, column: 19)
!2750 = !DILocation(line: 468, column: 21, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !531, line: 468, column: 21)
!2752 = distinct !DILexicalBlock(scope: !2749, file: !531, line: 468, column: 21)
!2753 = !DILocation(line: 468, column: 21, scope: !2752)
!2754 = !DILocation(line: 469, column: 21, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !531, line: 469, column: 21)
!2756 = distinct !DILexicalBlock(scope: !2749, file: !531, line: 469, column: 21)
!2757 = !DILocation(line: 469, column: 21, scope: !2756)
!2758 = !DILocation(line: 470, column: 21, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !531, line: 470, column: 21)
!2760 = distinct !DILexicalBlock(scope: !2749, file: !531, line: 470, column: 21)
!2761 = !DILocation(line: 470, column: 21, scope: !2760)
!2762 = !DILocation(line: 471, column: 21, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !531, line: 471, column: 21)
!2764 = distinct !DILexicalBlock(scope: !2749, file: !531, line: 471, column: 21)
!2765 = !DILocation(line: 471, column: 21, scope: !2764)
!2766 = !DILocation(line: 472, column: 21, scope: !2749)
!2767 = !DILocation(line: 482, column: 33, scope: !2566)
!2768 = !DILocation(line: 483, column: 33, scope: !2566)
!2769 = !DILocation(line: 485, column: 33, scope: !2566)
!2770 = !DILocation(line: 486, column: 33, scope: !2566)
!2771 = !DILocation(line: 487, column: 33, scope: !2566)
!2772 = !DILocation(line: 490, column: 17, scope: !2566)
!2773 = !DILocation(line: 492, column: 21, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !531, line: 491, column: 15)
!2775 = distinct !DILexicalBlock(scope: !2566, file: !531, line: 490, column: 17)
!2776 = !DILocation(line: 499, column: 35, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2566, file: !531, line: 499, column: 17)
!2778 = !DILocation(line: 0, scope: !2566)
!2779 = !DILocation(line: 502, column: 11, scope: !2566)
!2780 = !DILocation(line: 504, column: 17, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2566, file: !531, line: 503, column: 17)
!2782 = !DILocation(line: 507, column: 11, scope: !2566)
!2783 = !DILocation(line: 508, column: 17, scope: !2566)
!2784 = !DILocation(line: 517, column: 15, scope: !2543)
!2785 = !DILocation(line: 517, column: 40, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2543, file: !531, line: 517, column: 15)
!2787 = !DILocation(line: 517, column: 47, scope: !2786)
!2788 = !DILocation(line: 517, column: 18, scope: !2786)
!2789 = !DILocation(line: 521, column: 17, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2543, file: !531, line: 521, column: 15)
!2791 = !DILocation(line: 521, column: 15, scope: !2543)
!2792 = !DILocation(line: 525, column: 11, scope: !2543)
!2793 = !DILocation(line: 537, column: 15, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2543, file: !531, line: 536, column: 15)
!2795 = !DILocation(line: 536, column: 15, scope: !2543)
!2796 = !DILocation(line: 544, column: 15, scope: !2543)
!2797 = !DILocation(line: 546, column: 19, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !531, line: 545, column: 13)
!2799 = distinct !DILexicalBlock(scope: !2543, file: !531, line: 544, column: 15)
!2800 = !DILocation(line: 549, column: 19, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2798, file: !531, line: 549, column: 19)
!2802 = !DILocation(line: 549, column: 30, scope: !2801)
!2803 = !DILocation(line: 558, column: 15, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !531, line: 558, column: 15)
!2805 = distinct !DILexicalBlock(scope: !2798, file: !531, line: 558, column: 15)
!2806 = !DILocation(line: 558, column: 15, scope: !2805)
!2807 = !DILocation(line: 559, column: 15, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !531, line: 559, column: 15)
!2809 = distinct !DILexicalBlock(scope: !2798, file: !531, line: 559, column: 15)
!2810 = !DILocation(line: 559, column: 15, scope: !2809)
!2811 = !DILocation(line: 560, column: 15, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !531, line: 560, column: 15)
!2813 = distinct !DILexicalBlock(scope: !2798, file: !531, line: 560, column: 15)
!2814 = !DILocation(line: 560, column: 15, scope: !2813)
!2815 = !DILocation(line: 562, column: 13, scope: !2798)
!2816 = !DILocation(line: 602, column: 17, scope: !2542)
!2817 = !DILocation(line: 0, scope: !2542)
!2818 = !DILocation(line: 605, column: 29, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2547, file: !531, line: 603, column: 15)
!2820 = !DILocation(line: 605, column: 41, scope: !2819)
!2821 = !DILocation(line: 606, column: 15, scope: !2819)
!2822 = !DILocation(line: 609, column: 17, scope: !2546)
!2823 = !DILocation(line: 609, column: 27, scope: !2546)
!2824 = !DILocation(line: 0, scope: !2598, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 609, column: 32, scope: !2546)
!2826 = !DILocation(line: 0, scope: !2606, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 1137, column: 3, scope: !2598, inlinedAt: !2825)
!2828 = !DILocation(line: 59, column: 10, scope: !2606, inlinedAt: !2827)
!2829 = !DILocation(line: 613, column: 29, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2546, file: !531, line: 613, column: 21)
!2831 = !DILocation(line: 613, column: 21, scope: !2546)
!2832 = !DILocation(line: 614, column: 29, scope: !2830)
!2833 = !DILocation(line: 614, column: 19, scope: !2830)
!2834 = !DILocation(line: 618, column: 21, scope: !2549)
!2835 = !DILocation(line: 620, column: 54, scope: !2549)
!2836 = !DILocation(line: 0, scope: !2549)
!2837 = !DILocation(line: 619, column: 36, scope: !2549)
!2838 = !DILocation(line: 621, column: 25, scope: !2549)
!2839 = !DILocation(line: 631, column: 38, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2558, file: !531, line: 629, column: 23)
!2841 = !DILocation(line: 631, column: 48, scope: !2840)
!2842 = !DILocation(line: 626, column: 25, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2559, file: !531, line: 624, column: 23)
!2844 = !DILocation(line: 631, column: 51, scope: !2840)
!2845 = !DILocation(line: 631, column: 25, scope: !2840)
!2846 = !DILocation(line: 632, column: 28, scope: !2840)
!2847 = !DILocation(line: 631, column: 34, scope: !2840)
!2848 = distinct !{!2848, !2845, !2846, !961}
!2849 = !DILocation(line: 646, column: 29, scope: !2556)
!2850 = !DILocation(line: 0, scope: !2554)
!2851 = !DILocation(line: 649, column: 49, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2554, file: !531, line: 648, column: 29)
!2853 = !DILocation(line: 649, column: 39, scope: !2852)
!2854 = !DILocation(line: 649, column: 31, scope: !2852)
!2855 = !DILocation(line: 648, column: 60, scope: !2852)
!2856 = !DILocation(line: 648, column: 50, scope: !2852)
!2857 = !DILocation(line: 648, column: 29, scope: !2554)
!2858 = distinct !{!2858, !2857, !2859, !961}
!2859 = !DILocation(line: 654, column: 33, scope: !2554)
!2860 = !DILocation(line: 657, column: 43, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2557, file: !531, line: 657, column: 29)
!2862 = !DILocalVariable(name: "wc", arg: 1, scope: !2863, file: !2864, line: 865, type: !2867)
!2863 = distinct !DISubprogram(name: "c32isprint", scope: !2864, file: !2864, line: 865, type: !2865, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !2869)
!2864 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!52, !2867}
!2867 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2868, line: 20, baseType: !64)
!2868 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2869 = !{!2862}
!2870 = !DILocation(line: 0, scope: !2863, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 657, column: 31, scope: !2861)
!2872 = !DILocation(line: 871, column: 10, scope: !2863, inlinedAt: !2871)
!2873 = !DILocation(line: 657, column: 31, scope: !2861)
!2874 = !DILocation(line: 664, column: 23, scope: !2549)
!2875 = !DILocation(line: 665, column: 19, scope: !2550)
!2876 = !DILocation(line: 666, column: 15, scope: !2547)
!2877 = !DILocation(line: 753, column: 2, scope: !2503)
!2878 = !DILocation(line: 756, column: 51, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2503, file: !531, line: 756, column: 7)
!2880 = !DILocation(line: 0, scope: !2547)
!2881 = !DILocation(line: 670, column: 19, scope: !2563)
!2882 = !DILocation(line: 670, column: 23, scope: !2563)
!2883 = !DILocation(line: 674, column: 33, scope: !2562)
!2884 = !DILocation(line: 0, scope: !2562)
!2885 = !DILocation(line: 676, column: 17, scope: !2562)
!2886 = !DILocation(line: 398, column: 12, scope: !2536)
!2887 = !DILocation(line: 678, column: 43, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !531, line: 678, column: 25)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !531, line: 677, column: 19)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !531, line: 676, column: 17)
!2891 = distinct !DILexicalBlock(scope: !2562, file: !531, line: 676, column: 17)
!2892 = !DILocation(line: 680, column: 25, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !531, line: 680, column: 25)
!2894 = distinct !DILexicalBlock(scope: !2888, file: !531, line: 679, column: 23)
!2895 = !DILocation(line: 680, column: 25, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2893, file: !531, line: 680, column: 25)
!2897 = !DILocation(line: 680, column: 25, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !531, line: 680, column: 25)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !531, line: 680, column: 25)
!2900 = distinct !DILexicalBlock(scope: !2896, file: !531, line: 680, column: 25)
!2901 = !DILocation(line: 680, column: 25, scope: !2899)
!2902 = !DILocation(line: 680, column: 25, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !531, line: 680, column: 25)
!2904 = distinct !DILexicalBlock(scope: !2900, file: !531, line: 680, column: 25)
!2905 = !DILocation(line: 680, column: 25, scope: !2904)
!2906 = !DILocation(line: 680, column: 25, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !531, line: 680, column: 25)
!2908 = distinct !DILexicalBlock(scope: !2900, file: !531, line: 680, column: 25)
!2909 = !DILocation(line: 680, column: 25, scope: !2908)
!2910 = !DILocation(line: 680, column: 25, scope: !2900)
!2911 = !DILocation(line: 680, column: 25, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !531, line: 680, column: 25)
!2913 = distinct !DILexicalBlock(scope: !2893, file: !531, line: 680, column: 25)
!2914 = !DILocation(line: 680, column: 25, scope: !2913)
!2915 = !DILocation(line: 681, column: 25, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !531, line: 681, column: 25)
!2917 = distinct !DILexicalBlock(scope: !2894, file: !531, line: 681, column: 25)
!2918 = !DILocation(line: 681, column: 25, scope: !2917)
!2919 = !DILocation(line: 682, column: 25, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !531, line: 682, column: 25)
!2921 = distinct !DILexicalBlock(scope: !2894, file: !531, line: 682, column: 25)
!2922 = !DILocation(line: 682, column: 25, scope: !2921)
!2923 = !DILocation(line: 683, column: 38, scope: !2894)
!2924 = !DILocation(line: 683, column: 33, scope: !2894)
!2925 = !DILocation(line: 684, column: 23, scope: !2894)
!2926 = !DILocation(line: 685, column: 30, scope: !2888)
!2927 = !DILocation(line: 687, column: 25, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !531, line: 687, column: 25)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !531, line: 687, column: 25)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !531, line: 686, column: 23)
!2931 = distinct !DILexicalBlock(scope: !2888, file: !531, line: 685, column: 30)
!2932 = !DILocation(line: 687, column: 25, scope: !2929)
!2933 = !DILocation(line: 689, column: 23, scope: !2930)
!2934 = !DILocation(line: 690, column: 35, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2889, file: !531, line: 690, column: 25)
!2936 = !DILocation(line: 690, column: 30, scope: !2935)
!2937 = !DILocation(line: 690, column: 25, scope: !2889)
!2938 = !DILocation(line: 692, column: 21, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !531, line: 692, column: 21)
!2940 = distinct !DILexicalBlock(scope: !2889, file: !531, line: 692, column: 21)
!2941 = !DILocation(line: 692, column: 21, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !531, line: 692, column: 21)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !531, line: 692, column: 21)
!2944 = distinct !DILexicalBlock(scope: !2939, file: !531, line: 692, column: 21)
!2945 = !DILocation(line: 692, column: 21, scope: !2943)
!2946 = !DILocation(line: 692, column: 21, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !531, line: 692, column: 21)
!2948 = distinct !DILexicalBlock(scope: !2944, file: !531, line: 692, column: 21)
!2949 = !DILocation(line: 692, column: 21, scope: !2948)
!2950 = !DILocation(line: 692, column: 21, scope: !2944)
!2951 = !DILocation(line: 0, scope: !2889)
!2952 = !DILocation(line: 693, column: 21, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !531, line: 693, column: 21)
!2954 = distinct !DILexicalBlock(scope: !2889, file: !531, line: 693, column: 21)
!2955 = !DILocation(line: 693, column: 21, scope: !2954)
!2956 = !DILocation(line: 694, column: 25, scope: !2889)
!2957 = !DILocation(line: 676, column: 17, scope: !2890)
!2958 = distinct !{!2958, !2959, !2960}
!2959 = !DILocation(line: 676, column: 17, scope: !2891)
!2960 = !DILocation(line: 695, column: 19, scope: !2891)
!2961 = !DILocation(line: 409, column: 30, scope: !2671)
!2962 = !DILocation(line: 702, column: 34, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2536, file: !531, line: 702, column: 11)
!2964 = !DILocation(line: 704, column: 14, scope: !2963)
!2965 = !DILocation(line: 705, column: 14, scope: !2963)
!2966 = !DILocation(line: 705, column: 35, scope: !2963)
!2967 = !DILocation(line: 705, column: 17, scope: !2963)
!2968 = !DILocation(line: 705, column: 47, scope: !2963)
!2969 = !DILocation(line: 705, column: 65, scope: !2963)
!2970 = !DILocation(line: 706, column: 11, scope: !2963)
!2971 = !DILocation(line: 702, column: 11, scope: !2536)
!2972 = !DILocation(line: 395, column: 15, scope: !2534)
!2973 = !DILocation(line: 709, column: 5, scope: !2536)
!2974 = !DILocation(line: 710, column: 7, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2536, file: !531, line: 710, column: 7)
!2976 = !DILocation(line: 710, column: 7, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2975, file: !531, line: 710, column: 7)
!2978 = !DILocation(line: 710, column: 7, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !531, line: 710, column: 7)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !531, line: 710, column: 7)
!2981 = distinct !DILexicalBlock(scope: !2977, file: !531, line: 710, column: 7)
!2982 = !DILocation(line: 710, column: 7, scope: !2980)
!2983 = !DILocation(line: 710, column: 7, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !531, line: 710, column: 7)
!2985 = distinct !DILexicalBlock(scope: !2981, file: !531, line: 710, column: 7)
!2986 = !DILocation(line: 710, column: 7, scope: !2985)
!2987 = !DILocation(line: 710, column: 7, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !531, line: 710, column: 7)
!2989 = distinct !DILexicalBlock(scope: !2981, file: !531, line: 710, column: 7)
!2990 = !DILocation(line: 710, column: 7, scope: !2989)
!2991 = !DILocation(line: 710, column: 7, scope: !2981)
!2992 = !DILocation(line: 710, column: 7, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !531, line: 710, column: 7)
!2994 = distinct !DILexicalBlock(scope: !2975, file: !531, line: 710, column: 7)
!2995 = !DILocation(line: 710, column: 7, scope: !2994)
!2996 = !DILocation(line: 712, column: 5, scope: !2536)
!2997 = !DILocation(line: 713, column: 7, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !531, line: 713, column: 7)
!2999 = distinct !DILexicalBlock(scope: !2536, file: !531, line: 713, column: 7)
!3000 = !DILocation(line: 417, column: 21, scope: !2536)
!3001 = !DILocation(line: 713, column: 7, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !531, line: 713, column: 7)
!3003 = distinct !DILexicalBlock(scope: !3004, file: !531, line: 713, column: 7)
!3004 = distinct !DILexicalBlock(scope: !2998, file: !531, line: 713, column: 7)
!3005 = !DILocation(line: 713, column: 7, scope: !3003)
!3006 = !DILocation(line: 713, column: 7, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !531, line: 713, column: 7)
!3008 = distinct !DILexicalBlock(scope: !3004, file: !531, line: 713, column: 7)
!3009 = !DILocation(line: 713, column: 7, scope: !3008)
!3010 = !DILocation(line: 713, column: 7, scope: !3004)
!3011 = !DILocation(line: 714, column: 7, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !531, line: 714, column: 7)
!3013 = distinct !DILexicalBlock(scope: !2536, file: !531, line: 714, column: 7)
!3014 = !DILocation(line: 714, column: 7, scope: !3013)
!3015 = !DILocation(line: 716, column: 11, scope: !2536)
!3016 = !DILocation(line: 718, column: 5, scope: !2537)
!3017 = !DILocation(line: 395, column: 82, scope: !2537)
!3018 = !DILocation(line: 395, column: 3, scope: !2537)
!3019 = distinct !{!3019, !2667, !3020, !961}
!3020 = !DILocation(line: 718, column: 5, scope: !2534)
!3021 = !DILocation(line: 720, column: 11, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2503, file: !531, line: 720, column: 7)
!3023 = !DILocation(line: 720, column: 16, scope: !3022)
!3024 = !DILocation(line: 728, column: 51, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2503, file: !531, line: 728, column: 7)
!3026 = !DILocation(line: 731, column: 11, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3025, file: !531, line: 730, column: 5)
!3028 = !DILocation(line: 732, column: 16, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3027, file: !531, line: 731, column: 11)
!3030 = !DILocation(line: 732, column: 9, scope: !3029)
!3031 = !DILocation(line: 736, column: 18, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3029, file: !531, line: 736, column: 16)
!3033 = !DILocation(line: 736, column: 29, scope: !3032)
!3034 = !DILocation(line: 745, column: 7, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2503, file: !531, line: 745, column: 7)
!3036 = !DILocation(line: 745, column: 20, scope: !3035)
!3037 = !DILocation(line: 746, column: 12, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !531, line: 746, column: 5)
!3039 = distinct !DILexicalBlock(scope: !3035, file: !531, line: 746, column: 5)
!3040 = !DILocation(line: 746, column: 5, scope: !3039)
!3041 = !DILocation(line: 747, column: 7, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !531, line: 747, column: 7)
!3043 = distinct !DILexicalBlock(scope: !3038, file: !531, line: 747, column: 7)
!3044 = !DILocation(line: 747, column: 7, scope: !3043)
!3045 = !DILocation(line: 746, column: 39, scope: !3038)
!3046 = distinct !{!3046, !3040, !3047, !961}
!3047 = !DILocation(line: 747, column: 7, scope: !3039)
!3048 = !DILocation(line: 749, column: 11, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !2503, file: !531, line: 749, column: 7)
!3050 = !DILocation(line: 749, column: 7, scope: !2503)
!3051 = !DILocation(line: 750, column: 5, scope: !3049)
!3052 = !DILocation(line: 750, column: 17, scope: !3049)
!3053 = !DILocation(line: 756, column: 21, scope: !2879)
!3054 = !DILocation(line: 760, column: 42, scope: !2503)
!3055 = !DILocation(line: 758, column: 10, scope: !2503)
!3056 = !DILocation(line: 758, column: 3, scope: !2503)
!3057 = !DILocation(line: 762, column: 1, scope: !2503)
!3058 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1035, file: !1035, line: 98, type: !3059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!104}
!3061 = !DISubprogram(name: "strlen", scope: !1031, file: !1031, line: 407, type: !3062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!106, !107}
!3064 = !DISubprogram(name: "iswprint", scope: !3065, file: !3065, line: 120, type: !2865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3065 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3066 = distinct !DISubprogram(name: "quotearg_alloc", scope: !531, file: !531, line: 788, type: !3067, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3069)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!54, !107, !104, !2396}
!3069 = !{!3070, !3071, !3072}
!3070 = !DILocalVariable(name: "arg", arg: 1, scope: !3066, file: !531, line: 788, type: !107)
!3071 = !DILocalVariable(name: "argsize", arg: 2, scope: !3066, file: !531, line: 788, type: !104)
!3072 = !DILocalVariable(name: "o", arg: 3, scope: !3066, file: !531, line: 789, type: !2396)
!3073 = !DILocation(line: 0, scope: !3066)
!3074 = !DILocalVariable(name: "arg", arg: 1, scope: !3075, file: !531, line: 801, type: !107)
!3075 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !531, file: !531, line: 801, type: !3076, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3078)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!54, !107, !104, !792, !2396}
!3078 = !{!3074, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086}
!3079 = !DILocalVariable(name: "argsize", arg: 2, scope: !3075, file: !531, line: 801, type: !104)
!3080 = !DILocalVariable(name: "size", arg: 3, scope: !3075, file: !531, line: 801, type: !792)
!3081 = !DILocalVariable(name: "o", arg: 4, scope: !3075, file: !531, line: 802, type: !2396)
!3082 = !DILocalVariable(name: "p", scope: !3075, file: !531, line: 804, type: !2396)
!3083 = !DILocalVariable(name: "saved_errno", scope: !3075, file: !531, line: 805, type: !52)
!3084 = !DILocalVariable(name: "flags", scope: !3075, file: !531, line: 807, type: !52)
!3085 = !DILocalVariable(name: "bufsize", scope: !3075, file: !531, line: 808, type: !104)
!3086 = !DILocalVariable(name: "buf", scope: !3075, file: !531, line: 812, type: !54)
!3087 = !DILocation(line: 0, scope: !3075, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 791, column: 10, scope: !3066)
!3089 = !DILocation(line: 804, column: 37, scope: !3075, inlinedAt: !3088)
!3090 = !DILocation(line: 805, column: 21, scope: !3075, inlinedAt: !3088)
!3091 = !DILocation(line: 807, column: 18, scope: !3075, inlinedAt: !3088)
!3092 = !DILocation(line: 807, column: 24, scope: !3075, inlinedAt: !3088)
!3093 = !DILocation(line: 808, column: 72, scope: !3075, inlinedAt: !3088)
!3094 = !DILocation(line: 809, column: 56, scope: !3075, inlinedAt: !3088)
!3095 = !DILocation(line: 810, column: 49, scope: !3075, inlinedAt: !3088)
!3096 = !DILocation(line: 811, column: 49, scope: !3075, inlinedAt: !3088)
!3097 = !DILocation(line: 808, column: 20, scope: !3075, inlinedAt: !3088)
!3098 = !DILocation(line: 811, column: 62, scope: !3075, inlinedAt: !3088)
!3099 = !DILocation(line: 812, column: 15, scope: !3075, inlinedAt: !3088)
!3100 = !DILocation(line: 813, column: 60, scope: !3075, inlinedAt: !3088)
!3101 = !DILocation(line: 815, column: 32, scope: !3075, inlinedAt: !3088)
!3102 = !DILocation(line: 815, column: 47, scope: !3075, inlinedAt: !3088)
!3103 = !DILocation(line: 813, column: 3, scope: !3075, inlinedAt: !3088)
!3104 = !DILocation(line: 816, column: 9, scope: !3075, inlinedAt: !3088)
!3105 = !DILocation(line: 791, column: 3, scope: !3066)
!3106 = !DILocation(line: 0, scope: !3075)
!3107 = !DILocation(line: 804, column: 37, scope: !3075)
!3108 = !DILocation(line: 805, column: 21, scope: !3075)
!3109 = !DILocation(line: 807, column: 18, scope: !3075)
!3110 = !DILocation(line: 807, column: 27, scope: !3075)
!3111 = !DILocation(line: 807, column: 24, scope: !3075)
!3112 = !DILocation(line: 808, column: 72, scope: !3075)
!3113 = !DILocation(line: 809, column: 56, scope: !3075)
!3114 = !DILocation(line: 810, column: 49, scope: !3075)
!3115 = !DILocation(line: 811, column: 49, scope: !3075)
!3116 = !DILocation(line: 808, column: 20, scope: !3075)
!3117 = !DILocation(line: 811, column: 62, scope: !3075)
!3118 = !DILocation(line: 812, column: 15, scope: !3075)
!3119 = !DILocation(line: 813, column: 60, scope: !3075)
!3120 = !DILocation(line: 815, column: 32, scope: !3075)
!3121 = !DILocation(line: 815, column: 47, scope: !3075)
!3122 = !DILocation(line: 813, column: 3, scope: !3075)
!3123 = !DILocation(line: 816, column: 9, scope: !3075)
!3124 = !DILocation(line: 817, column: 7, scope: !3075)
!3125 = !DILocation(line: 818, column: 11, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3075, file: !531, line: 817, column: 7)
!3127 = !DILocation(line: 818, column: 5, scope: !3126)
!3128 = !DILocation(line: 819, column: 3, scope: !3075)
!3129 = distinct !DISubprogram(name: "quotearg_free", scope: !531, file: !531, line: 837, type: !483, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3130)
!3130 = !{!3131, !3132}
!3131 = !DILocalVariable(name: "sv", scope: !3129, file: !531, line: 839, type: !618)
!3132 = !DILocalVariable(name: "i", scope: !3133, file: !531, line: 840, type: !52)
!3133 = distinct !DILexicalBlock(scope: !3129, file: !531, line: 840, column: 3)
!3134 = !DILocation(line: 839, column: 24, scope: !3129)
!3135 = !DILocation(line: 0, scope: !3129)
!3136 = !DILocation(line: 0, scope: !3133)
!3137 = !DILocation(line: 840, column: 21, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3133, file: !531, line: 840, column: 3)
!3139 = !DILocation(line: 840, column: 3, scope: !3133)
!3140 = !DILocation(line: 842, column: 13, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3129, file: !531, line: 842, column: 7)
!3142 = !{!3143, !852, i64 8}
!3143 = !{!"slotvec", !1167, i64 0, !852, i64 8}
!3144 = !DILocation(line: 842, column: 17, scope: !3141)
!3145 = !DILocation(line: 842, column: 7, scope: !3129)
!3146 = !DILocation(line: 841, column: 17, scope: !3138)
!3147 = !DILocation(line: 841, column: 5, scope: !3138)
!3148 = !DILocation(line: 840, column: 32, scope: !3138)
!3149 = distinct !{!3149, !3139, !3150, !961}
!3150 = !DILocation(line: 841, column: 20, scope: !3133)
!3151 = !DILocation(line: 844, column: 7, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3141, file: !531, line: 843, column: 5)
!3153 = !DILocation(line: 845, column: 21, scope: !3152)
!3154 = !{!3143, !1167, i64 0}
!3155 = !DILocation(line: 846, column: 20, scope: !3152)
!3156 = !DILocation(line: 847, column: 5, scope: !3152)
!3157 = !DILocation(line: 848, column: 10, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3129, file: !531, line: 848, column: 7)
!3159 = !DILocation(line: 848, column: 7, scope: !3129)
!3160 = !DILocation(line: 850, column: 7, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3158, file: !531, line: 849, column: 5)
!3162 = !DILocation(line: 851, column: 15, scope: !3161)
!3163 = !DILocation(line: 852, column: 5, scope: !3161)
!3164 = !DILocation(line: 853, column: 10, scope: !3129)
!3165 = !DILocation(line: 854, column: 1, scope: !3129)
!3166 = !DISubprogram(name: "free", scope: !2350, file: !2350, line: 786, type: !3167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{null, !102}
!3169 = distinct !DISubprogram(name: "quotearg_n", scope: !531, file: !531, line: 919, type: !1028, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3170)
!3170 = !{!3171, !3172}
!3171 = !DILocalVariable(name: "n", arg: 1, scope: !3169, file: !531, line: 919, type: !52)
!3172 = !DILocalVariable(name: "arg", arg: 2, scope: !3169, file: !531, line: 919, type: !107)
!3173 = !DILocation(line: 0, scope: !3169)
!3174 = !DILocation(line: 921, column: 10, scope: !3169)
!3175 = !DILocation(line: 921, column: 3, scope: !3169)
!3176 = distinct !DISubprogram(name: "quotearg_n_options", scope: !531, file: !531, line: 866, type: !3177, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3179)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!54, !52, !107, !104, !2396}
!3179 = !{!3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3190, !3191, !3193, !3194, !3195}
!3180 = !DILocalVariable(name: "n", arg: 1, scope: !3176, file: !531, line: 866, type: !52)
!3181 = !DILocalVariable(name: "arg", arg: 2, scope: !3176, file: !531, line: 866, type: !107)
!3182 = !DILocalVariable(name: "argsize", arg: 3, scope: !3176, file: !531, line: 866, type: !104)
!3183 = !DILocalVariable(name: "options", arg: 4, scope: !3176, file: !531, line: 867, type: !2396)
!3184 = !DILocalVariable(name: "saved_errno", scope: !3176, file: !531, line: 869, type: !52)
!3185 = !DILocalVariable(name: "sv", scope: !3176, file: !531, line: 871, type: !618)
!3186 = !DILocalVariable(name: "nslots_max", scope: !3176, file: !531, line: 873, type: !52)
!3187 = !DILocalVariable(name: "preallocated", scope: !3188, file: !531, line: 879, type: !154)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !531, line: 878, column: 5)
!3189 = distinct !DILexicalBlock(scope: !3176, file: !531, line: 877, column: 7)
!3190 = !DILocalVariable(name: "new_nslots", scope: !3188, file: !531, line: 880, type: !805)
!3191 = !DILocalVariable(name: "size", scope: !3192, file: !531, line: 891, type: !104)
!3192 = distinct !DILexicalBlock(scope: !3176, file: !531, line: 890, column: 3)
!3193 = !DILocalVariable(name: "val", scope: !3192, file: !531, line: 892, type: !54)
!3194 = !DILocalVariable(name: "flags", scope: !3192, file: !531, line: 894, type: !52)
!3195 = !DILocalVariable(name: "qsize", scope: !3192, file: !531, line: 895, type: !104)
!3196 = !DILocation(line: 0, scope: !3176)
!3197 = !DILocation(line: 869, column: 21, scope: !3176)
!3198 = !DILocation(line: 871, column: 24, scope: !3176)
!3199 = !DILocation(line: 874, column: 17, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3176, file: !531, line: 874, column: 7)
!3201 = !DILocation(line: 875, column: 5, scope: !3200)
!3202 = !DILocation(line: 877, column: 7, scope: !3189)
!3203 = !DILocation(line: 877, column: 14, scope: !3189)
!3204 = !DILocation(line: 877, column: 7, scope: !3176)
!3205 = !DILocation(line: 879, column: 31, scope: !3188)
!3206 = !DILocation(line: 0, scope: !3188)
!3207 = !DILocation(line: 880, column: 7, scope: !3188)
!3208 = !DILocation(line: 880, column: 26, scope: !3188)
!3209 = !DILocation(line: 880, column: 13, scope: !3188)
!3210 = !DILocation(line: 882, column: 31, scope: !3188)
!3211 = !DILocation(line: 883, column: 33, scope: !3188)
!3212 = !DILocation(line: 883, column: 42, scope: !3188)
!3213 = !DILocation(line: 883, column: 31, scope: !3188)
!3214 = !DILocation(line: 882, column: 22, scope: !3188)
!3215 = !DILocation(line: 882, column: 15, scope: !3188)
!3216 = !DILocation(line: 884, column: 11, scope: !3188)
!3217 = !DILocation(line: 885, column: 15, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3188, file: !531, line: 884, column: 11)
!3219 = !{i64 0, i64 8, !1413, i64 8, i64 8, !851}
!3220 = !DILocation(line: 885, column: 9, scope: !3218)
!3221 = !DILocation(line: 886, column: 20, scope: !3188)
!3222 = !DILocation(line: 886, column: 18, scope: !3188)
!3223 = !DILocation(line: 886, column: 32, scope: !3188)
!3224 = !DILocation(line: 886, column: 43, scope: !3188)
!3225 = !DILocation(line: 886, column: 53, scope: !3188)
!3226 = !DILocation(line: 0, scope: !2606, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 886, column: 7, scope: !3188)
!3228 = !DILocation(line: 59, column: 10, scope: !2606, inlinedAt: !3227)
!3229 = !DILocation(line: 887, column: 16, scope: !3188)
!3230 = !DILocation(line: 887, column: 14, scope: !3188)
!3231 = !DILocation(line: 888, column: 5, scope: !3189)
!3232 = !DILocation(line: 888, column: 5, scope: !3188)
!3233 = !DILocation(line: 891, column: 19, scope: !3192)
!3234 = !DILocation(line: 891, column: 25, scope: !3192)
!3235 = !DILocation(line: 0, scope: !3192)
!3236 = !DILocation(line: 892, column: 23, scope: !3192)
!3237 = !DILocation(line: 894, column: 26, scope: !3192)
!3238 = !DILocation(line: 894, column: 32, scope: !3192)
!3239 = !DILocation(line: 896, column: 55, scope: !3192)
!3240 = !DILocation(line: 897, column: 55, scope: !3192)
!3241 = !DILocation(line: 898, column: 55, scope: !3192)
!3242 = !DILocation(line: 899, column: 55, scope: !3192)
!3243 = !DILocation(line: 895, column: 20, scope: !3192)
!3244 = !DILocation(line: 901, column: 14, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3192, file: !531, line: 901, column: 9)
!3246 = !DILocation(line: 901, column: 9, scope: !3192)
!3247 = !DILocation(line: 903, column: 35, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3245, file: !531, line: 902, column: 7)
!3249 = !DILocation(line: 903, column: 20, scope: !3248)
!3250 = !DILocation(line: 904, column: 17, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3248, file: !531, line: 904, column: 13)
!3252 = !DILocation(line: 904, column: 13, scope: !3248)
!3253 = !DILocation(line: 905, column: 11, scope: !3251)
!3254 = !DILocation(line: 906, column: 27, scope: !3248)
!3255 = !DILocation(line: 906, column: 19, scope: !3248)
!3256 = !DILocation(line: 907, column: 69, scope: !3248)
!3257 = !DILocation(line: 909, column: 44, scope: !3248)
!3258 = !DILocation(line: 910, column: 44, scope: !3248)
!3259 = !DILocation(line: 907, column: 9, scope: !3248)
!3260 = !DILocation(line: 911, column: 7, scope: !3248)
!3261 = !DILocation(line: 913, column: 11, scope: !3192)
!3262 = !DILocation(line: 914, column: 5, scope: !3192)
!3263 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !531, file: !531, line: 925, type: !3264, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3266)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!54, !52, !107, !104}
!3266 = !{!3267, !3268, !3269}
!3267 = !DILocalVariable(name: "n", arg: 1, scope: !3263, file: !531, line: 925, type: !52)
!3268 = !DILocalVariable(name: "arg", arg: 2, scope: !3263, file: !531, line: 925, type: !107)
!3269 = !DILocalVariable(name: "argsize", arg: 3, scope: !3263, file: !531, line: 925, type: !104)
!3270 = !DILocation(line: 0, scope: !3263)
!3271 = !DILocation(line: 927, column: 10, scope: !3263)
!3272 = !DILocation(line: 927, column: 3, scope: !3263)
!3273 = distinct !DISubprogram(name: "quotearg", scope: !531, file: !531, line: 931, type: !1037, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3274)
!3274 = !{!3275}
!3275 = !DILocalVariable(name: "arg", arg: 1, scope: !3273, file: !531, line: 931, type: !107)
!3276 = !DILocation(line: 0, scope: !3273)
!3277 = !DILocation(line: 0, scope: !3169, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 933, column: 10, scope: !3273)
!3279 = !DILocation(line: 921, column: 10, scope: !3169, inlinedAt: !3278)
!3280 = !DILocation(line: 933, column: 3, scope: !3273)
!3281 = distinct !DISubprogram(name: "quotearg_mem", scope: !531, file: !531, line: 937, type: !3282, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!54, !107, !104}
!3284 = !{!3285, !3286}
!3285 = !DILocalVariable(name: "arg", arg: 1, scope: !3281, file: !531, line: 937, type: !107)
!3286 = !DILocalVariable(name: "argsize", arg: 2, scope: !3281, file: !531, line: 937, type: !104)
!3287 = !DILocation(line: 0, scope: !3281)
!3288 = !DILocation(line: 0, scope: !3263, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 939, column: 10, scope: !3281)
!3290 = !DILocation(line: 927, column: 10, scope: !3263, inlinedAt: !3289)
!3291 = !DILocation(line: 939, column: 3, scope: !3281)
!3292 = distinct !DISubprogram(name: "quotearg_n_style", scope: !531, file: !531, line: 943, type: !3293, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3295)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!54, !52, !78, !107}
!3295 = !{!3296, !3297, !3298, !3299}
!3296 = !DILocalVariable(name: "n", arg: 1, scope: !3292, file: !531, line: 943, type: !52)
!3297 = !DILocalVariable(name: "s", arg: 2, scope: !3292, file: !531, line: 943, type: !78)
!3298 = !DILocalVariable(name: "arg", arg: 3, scope: !3292, file: !531, line: 943, type: !107)
!3299 = !DILocalVariable(name: "o", scope: !3292, file: !531, line: 945, type: !2397)
!3300 = !DILocation(line: 0, scope: !3292)
!3301 = !DILocation(line: 945, column: 3, scope: !3292)
!3302 = !DILocation(line: 945, column: 32, scope: !3292)
!3303 = !{!3304}
!3304 = distinct !{!3304, !3305, !"quoting_options_from_style: argument 0"}
!3305 = distinct !{!3305, !"quoting_options_from_style"}
!3306 = !DILocation(line: 945, column: 36, scope: !3292)
!3307 = !DILocalVariable(name: "style", arg: 1, scope: !3308, file: !531, line: 183, type: !78)
!3308 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !531, file: !531, line: 183, type: !3309, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3311)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!570, !78}
!3311 = !{!3307, !3312}
!3312 = !DILocalVariable(name: "o", scope: !3308, file: !531, line: 185, type: !570)
!3313 = !DILocation(line: 0, scope: !3308, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 945, column: 36, scope: !3292)
!3315 = !DILocation(line: 185, column: 26, scope: !3308, inlinedAt: !3314)
!3316 = !DILocation(line: 186, column: 13, scope: !3317, inlinedAt: !3314)
!3317 = distinct !DILexicalBlock(scope: !3308, file: !531, line: 186, column: 7)
!3318 = !DILocation(line: 186, column: 7, scope: !3308, inlinedAt: !3314)
!3319 = !DILocation(line: 187, column: 5, scope: !3317, inlinedAt: !3314)
!3320 = !DILocation(line: 188, column: 11, scope: !3308, inlinedAt: !3314)
!3321 = !DILocation(line: 946, column: 10, scope: !3292)
!3322 = !DILocation(line: 947, column: 1, scope: !3292)
!3323 = !DILocation(line: 946, column: 3, scope: !3292)
!3324 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !531, file: !531, line: 950, type: !3325, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3327)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!54, !52, !78, !107, !104}
!3327 = !{!3328, !3329, !3330, !3331, !3332}
!3328 = !DILocalVariable(name: "n", arg: 1, scope: !3324, file: !531, line: 950, type: !52)
!3329 = !DILocalVariable(name: "s", arg: 2, scope: !3324, file: !531, line: 950, type: !78)
!3330 = !DILocalVariable(name: "arg", arg: 3, scope: !3324, file: !531, line: 951, type: !107)
!3331 = !DILocalVariable(name: "argsize", arg: 4, scope: !3324, file: !531, line: 951, type: !104)
!3332 = !DILocalVariable(name: "o", scope: !3324, file: !531, line: 953, type: !2397)
!3333 = !DILocation(line: 0, scope: !3324)
!3334 = !DILocation(line: 953, column: 3, scope: !3324)
!3335 = !DILocation(line: 953, column: 32, scope: !3324)
!3336 = !{!3337}
!3337 = distinct !{!3337, !3338, !"quoting_options_from_style: argument 0"}
!3338 = distinct !{!3338, !"quoting_options_from_style"}
!3339 = !DILocation(line: 953, column: 36, scope: !3324)
!3340 = !DILocation(line: 0, scope: !3308, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 953, column: 36, scope: !3324)
!3342 = !DILocation(line: 185, column: 26, scope: !3308, inlinedAt: !3341)
!3343 = !DILocation(line: 186, column: 13, scope: !3317, inlinedAt: !3341)
!3344 = !DILocation(line: 186, column: 7, scope: !3308, inlinedAt: !3341)
!3345 = !DILocation(line: 187, column: 5, scope: !3317, inlinedAt: !3341)
!3346 = !DILocation(line: 188, column: 11, scope: !3308, inlinedAt: !3341)
!3347 = !DILocation(line: 954, column: 10, scope: !3324)
!3348 = !DILocation(line: 955, column: 1, scope: !3324)
!3349 = !DILocation(line: 954, column: 3, scope: !3324)
!3350 = distinct !DISubprogram(name: "quotearg_style", scope: !531, file: !531, line: 958, type: !3351, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!54, !78, !107}
!3353 = !{!3354, !3355}
!3354 = !DILocalVariable(name: "s", arg: 1, scope: !3350, file: !531, line: 958, type: !78)
!3355 = !DILocalVariable(name: "arg", arg: 2, scope: !3350, file: !531, line: 958, type: !107)
!3356 = !DILocation(line: 0, scope: !3350)
!3357 = !DILocation(line: 0, scope: !3292, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 960, column: 10, scope: !3350)
!3359 = !DILocation(line: 945, column: 3, scope: !3292, inlinedAt: !3358)
!3360 = !DILocation(line: 945, column: 32, scope: !3292, inlinedAt: !3358)
!3361 = !{!3362}
!3362 = distinct !{!3362, !3363, !"quoting_options_from_style: argument 0"}
!3363 = distinct !{!3363, !"quoting_options_from_style"}
!3364 = !DILocation(line: 945, column: 36, scope: !3292, inlinedAt: !3358)
!3365 = !DILocation(line: 0, scope: !3308, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 945, column: 36, scope: !3292, inlinedAt: !3358)
!3367 = !DILocation(line: 185, column: 26, scope: !3308, inlinedAt: !3366)
!3368 = !DILocation(line: 186, column: 13, scope: !3317, inlinedAt: !3366)
!3369 = !DILocation(line: 186, column: 7, scope: !3308, inlinedAt: !3366)
!3370 = !DILocation(line: 187, column: 5, scope: !3317, inlinedAt: !3366)
!3371 = !DILocation(line: 188, column: 11, scope: !3308, inlinedAt: !3366)
!3372 = !DILocation(line: 946, column: 10, scope: !3292, inlinedAt: !3358)
!3373 = !DILocation(line: 947, column: 1, scope: !3292, inlinedAt: !3358)
!3374 = !DILocation(line: 960, column: 3, scope: !3350)
!3375 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !531, file: !531, line: 964, type: !3376, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3378)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!54, !78, !107, !104}
!3378 = !{!3379, !3380, !3381}
!3379 = !DILocalVariable(name: "s", arg: 1, scope: !3375, file: !531, line: 964, type: !78)
!3380 = !DILocalVariable(name: "arg", arg: 2, scope: !3375, file: !531, line: 964, type: !107)
!3381 = !DILocalVariable(name: "argsize", arg: 3, scope: !3375, file: !531, line: 964, type: !104)
!3382 = !DILocation(line: 0, scope: !3375)
!3383 = !DILocation(line: 0, scope: !3324, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 966, column: 10, scope: !3375)
!3385 = !DILocation(line: 953, column: 3, scope: !3324, inlinedAt: !3384)
!3386 = !DILocation(line: 953, column: 32, scope: !3324, inlinedAt: !3384)
!3387 = !{!3388}
!3388 = distinct !{!3388, !3389, !"quoting_options_from_style: argument 0"}
!3389 = distinct !{!3389, !"quoting_options_from_style"}
!3390 = !DILocation(line: 953, column: 36, scope: !3324, inlinedAt: !3384)
!3391 = !DILocation(line: 0, scope: !3308, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 953, column: 36, scope: !3324, inlinedAt: !3384)
!3393 = !DILocation(line: 185, column: 26, scope: !3308, inlinedAt: !3392)
!3394 = !DILocation(line: 186, column: 13, scope: !3317, inlinedAt: !3392)
!3395 = !DILocation(line: 186, column: 7, scope: !3308, inlinedAt: !3392)
!3396 = !DILocation(line: 187, column: 5, scope: !3317, inlinedAt: !3392)
!3397 = !DILocation(line: 188, column: 11, scope: !3308, inlinedAt: !3392)
!3398 = !DILocation(line: 954, column: 10, scope: !3324, inlinedAt: !3384)
!3399 = !DILocation(line: 955, column: 1, scope: !3324, inlinedAt: !3384)
!3400 = !DILocation(line: 966, column: 3, scope: !3375)
!3401 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !531, file: !531, line: 970, type: !3402, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3404)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!54, !107, !104, !4}
!3404 = !{!3405, !3406, !3407, !3408}
!3405 = !DILocalVariable(name: "arg", arg: 1, scope: !3401, file: !531, line: 970, type: !107)
!3406 = !DILocalVariable(name: "argsize", arg: 2, scope: !3401, file: !531, line: 970, type: !104)
!3407 = !DILocalVariable(name: "ch", arg: 3, scope: !3401, file: !531, line: 970, type: !4)
!3408 = !DILocalVariable(name: "options", scope: !3401, file: !531, line: 972, type: !570)
!3409 = !DILocation(line: 0, scope: !3401)
!3410 = !DILocation(line: 972, column: 3, scope: !3401)
!3411 = !DILocation(line: 972, column: 26, scope: !3401)
!3412 = !DILocation(line: 973, column: 13, scope: !3401)
!3413 = !{i64 0, i64 4, !923, i64 4, i64 4, !914, i64 8, i64 32, !923, i64 40, i64 8, !851, i64 48, i64 8, !851}
!3414 = !DILocation(line: 0, scope: !2416, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 974, column: 3, scope: !3401)
!3416 = !DILocation(line: 147, column: 41, scope: !2416, inlinedAt: !3415)
!3417 = !DILocation(line: 147, column: 62, scope: !2416, inlinedAt: !3415)
!3418 = !DILocation(line: 147, column: 57, scope: !2416, inlinedAt: !3415)
!3419 = !DILocation(line: 148, column: 15, scope: !2416, inlinedAt: !3415)
!3420 = !DILocation(line: 149, column: 21, scope: !2416, inlinedAt: !3415)
!3421 = !DILocation(line: 149, column: 24, scope: !2416, inlinedAt: !3415)
!3422 = !DILocation(line: 150, column: 19, scope: !2416, inlinedAt: !3415)
!3423 = !DILocation(line: 150, column: 24, scope: !2416, inlinedAt: !3415)
!3424 = !DILocation(line: 150, column: 6, scope: !2416, inlinedAt: !3415)
!3425 = !DILocation(line: 975, column: 10, scope: !3401)
!3426 = !DILocation(line: 976, column: 1, scope: !3401)
!3427 = !DILocation(line: 975, column: 3, scope: !3401)
!3428 = distinct !DISubprogram(name: "quotearg_char", scope: !531, file: !531, line: 979, type: !3429, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3431)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!54, !107, !4}
!3431 = !{!3432, !3433}
!3432 = !DILocalVariable(name: "arg", arg: 1, scope: !3428, file: !531, line: 979, type: !107)
!3433 = !DILocalVariable(name: "ch", arg: 2, scope: !3428, file: !531, line: 979, type: !4)
!3434 = !DILocation(line: 0, scope: !3428)
!3435 = !DILocation(line: 0, scope: !3401, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 981, column: 10, scope: !3428)
!3437 = !DILocation(line: 972, column: 3, scope: !3401, inlinedAt: !3436)
!3438 = !DILocation(line: 972, column: 26, scope: !3401, inlinedAt: !3436)
!3439 = !DILocation(line: 973, column: 13, scope: !3401, inlinedAt: !3436)
!3440 = !DILocation(line: 0, scope: !2416, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 974, column: 3, scope: !3401, inlinedAt: !3436)
!3442 = !DILocation(line: 147, column: 41, scope: !2416, inlinedAt: !3441)
!3443 = !DILocation(line: 147, column: 62, scope: !2416, inlinedAt: !3441)
!3444 = !DILocation(line: 147, column: 57, scope: !2416, inlinedAt: !3441)
!3445 = !DILocation(line: 148, column: 15, scope: !2416, inlinedAt: !3441)
!3446 = !DILocation(line: 149, column: 21, scope: !2416, inlinedAt: !3441)
!3447 = !DILocation(line: 149, column: 24, scope: !2416, inlinedAt: !3441)
!3448 = !DILocation(line: 150, column: 19, scope: !2416, inlinedAt: !3441)
!3449 = !DILocation(line: 150, column: 24, scope: !2416, inlinedAt: !3441)
!3450 = !DILocation(line: 150, column: 6, scope: !2416, inlinedAt: !3441)
!3451 = !DILocation(line: 975, column: 10, scope: !3401, inlinedAt: !3436)
!3452 = !DILocation(line: 976, column: 1, scope: !3401, inlinedAt: !3436)
!3453 = !DILocation(line: 981, column: 3, scope: !3428)
!3454 = distinct !DISubprogram(name: "quotearg_colon", scope: !531, file: !531, line: 985, type: !1037, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3455)
!3455 = !{!3456}
!3456 = !DILocalVariable(name: "arg", arg: 1, scope: !3454, file: !531, line: 985, type: !107)
!3457 = !DILocation(line: 0, scope: !3454)
!3458 = !DILocation(line: 0, scope: !3428, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 987, column: 10, scope: !3454)
!3460 = !DILocation(line: 0, scope: !3401, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 981, column: 10, scope: !3428, inlinedAt: !3459)
!3462 = !DILocation(line: 972, column: 3, scope: !3401, inlinedAt: !3461)
!3463 = !DILocation(line: 972, column: 26, scope: !3401, inlinedAt: !3461)
!3464 = !DILocation(line: 973, column: 13, scope: !3401, inlinedAt: !3461)
!3465 = !DILocation(line: 0, scope: !2416, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 974, column: 3, scope: !3401, inlinedAt: !3461)
!3467 = !DILocation(line: 147, column: 57, scope: !2416, inlinedAt: !3466)
!3468 = !DILocation(line: 149, column: 21, scope: !2416, inlinedAt: !3466)
!3469 = !DILocation(line: 150, column: 6, scope: !2416, inlinedAt: !3466)
!3470 = !DILocation(line: 975, column: 10, scope: !3401, inlinedAt: !3461)
!3471 = !DILocation(line: 976, column: 1, scope: !3401, inlinedAt: !3461)
!3472 = !DILocation(line: 987, column: 3, scope: !3454)
!3473 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !531, file: !531, line: 991, type: !3282, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3474)
!3474 = !{!3475, !3476}
!3475 = !DILocalVariable(name: "arg", arg: 1, scope: !3473, file: !531, line: 991, type: !107)
!3476 = !DILocalVariable(name: "argsize", arg: 2, scope: !3473, file: !531, line: 991, type: !104)
!3477 = !DILocation(line: 0, scope: !3473)
!3478 = !DILocation(line: 0, scope: !3401, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 993, column: 10, scope: !3473)
!3480 = !DILocation(line: 972, column: 3, scope: !3401, inlinedAt: !3479)
!3481 = !DILocation(line: 972, column: 26, scope: !3401, inlinedAt: !3479)
!3482 = !DILocation(line: 973, column: 13, scope: !3401, inlinedAt: !3479)
!3483 = !DILocation(line: 0, scope: !2416, inlinedAt: !3484)
!3484 = distinct !DILocation(line: 974, column: 3, scope: !3401, inlinedAt: !3479)
!3485 = !DILocation(line: 147, column: 57, scope: !2416, inlinedAt: !3484)
!3486 = !DILocation(line: 149, column: 21, scope: !2416, inlinedAt: !3484)
!3487 = !DILocation(line: 150, column: 6, scope: !2416, inlinedAt: !3484)
!3488 = !DILocation(line: 975, column: 10, scope: !3401, inlinedAt: !3479)
!3489 = !DILocation(line: 976, column: 1, scope: !3401, inlinedAt: !3479)
!3490 = !DILocation(line: 993, column: 3, scope: !3473)
!3491 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !531, file: !531, line: 997, type: !3293, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3492)
!3492 = !{!3493, !3494, !3495, !3496}
!3493 = !DILocalVariable(name: "n", arg: 1, scope: !3491, file: !531, line: 997, type: !52)
!3494 = !DILocalVariable(name: "s", arg: 2, scope: !3491, file: !531, line: 997, type: !78)
!3495 = !DILocalVariable(name: "arg", arg: 3, scope: !3491, file: !531, line: 997, type: !107)
!3496 = !DILocalVariable(name: "options", scope: !3491, file: !531, line: 999, type: !570)
!3497 = !DILocation(line: 185, column: 26, scope: !3308, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 1000, column: 13, scope: !3491)
!3499 = !DILocation(line: 0, scope: !3491)
!3500 = !DILocation(line: 999, column: 3, scope: !3491)
!3501 = !DILocation(line: 999, column: 26, scope: !3491)
!3502 = !DILocation(line: 0, scope: !3308, inlinedAt: !3498)
!3503 = !DILocation(line: 186, column: 13, scope: !3317, inlinedAt: !3498)
!3504 = !DILocation(line: 186, column: 7, scope: !3308, inlinedAt: !3498)
!3505 = !DILocation(line: 187, column: 5, scope: !3317, inlinedAt: !3498)
!3506 = !{!3507}
!3507 = distinct !{!3507, !3508, !"quoting_options_from_style: argument 0"}
!3508 = distinct !{!3508, !"quoting_options_from_style"}
!3509 = !DILocation(line: 1000, column: 13, scope: !3491)
!3510 = !DILocation(line: 0, scope: !2416, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 1001, column: 3, scope: !3491)
!3512 = !DILocation(line: 147, column: 57, scope: !2416, inlinedAt: !3511)
!3513 = !DILocation(line: 149, column: 21, scope: !2416, inlinedAt: !3511)
!3514 = !DILocation(line: 150, column: 6, scope: !2416, inlinedAt: !3511)
!3515 = !DILocation(line: 1002, column: 10, scope: !3491)
!3516 = !DILocation(line: 1003, column: 1, scope: !3491)
!3517 = !DILocation(line: 1002, column: 3, scope: !3491)
!3518 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !531, file: !531, line: 1006, type: !3519, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3521)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!54, !52, !107, !107, !107}
!3521 = !{!3522, !3523, !3524, !3525}
!3522 = !DILocalVariable(name: "n", arg: 1, scope: !3518, file: !531, line: 1006, type: !52)
!3523 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3518, file: !531, line: 1006, type: !107)
!3524 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3518, file: !531, line: 1007, type: !107)
!3525 = !DILocalVariable(name: "arg", arg: 4, scope: !3518, file: !531, line: 1007, type: !107)
!3526 = !DILocation(line: 0, scope: !3518)
!3527 = !DILocalVariable(name: "n", arg: 1, scope: !3528, file: !531, line: 1014, type: !52)
!3528 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !531, file: !531, line: 1014, type: !3529, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3531)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!54, !52, !107, !107, !107, !104}
!3531 = !{!3527, !3532, !3533, !3534, !3535, !3536}
!3532 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3528, file: !531, line: 1014, type: !107)
!3533 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3528, file: !531, line: 1015, type: !107)
!3534 = !DILocalVariable(name: "arg", arg: 4, scope: !3528, file: !531, line: 1016, type: !107)
!3535 = !DILocalVariable(name: "argsize", arg: 5, scope: !3528, file: !531, line: 1016, type: !104)
!3536 = !DILocalVariable(name: "o", scope: !3528, file: !531, line: 1018, type: !570)
!3537 = !DILocation(line: 0, scope: !3528, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 1009, column: 10, scope: !3518)
!3539 = !DILocation(line: 1018, column: 3, scope: !3528, inlinedAt: !3538)
!3540 = !DILocation(line: 1018, column: 26, scope: !3528, inlinedAt: !3538)
!3541 = !DILocation(line: 1018, column: 30, scope: !3528, inlinedAt: !3538)
!3542 = !DILocation(line: 0, scope: !2456, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 1019, column: 3, scope: !3528, inlinedAt: !3538)
!3544 = !DILocation(line: 174, column: 12, scope: !2456, inlinedAt: !3543)
!3545 = !DILocation(line: 175, column: 8, scope: !2469, inlinedAt: !3543)
!3546 = !DILocation(line: 175, column: 19, scope: !2469, inlinedAt: !3543)
!3547 = !DILocation(line: 176, column: 5, scope: !2469, inlinedAt: !3543)
!3548 = !DILocation(line: 177, column: 6, scope: !2456, inlinedAt: !3543)
!3549 = !DILocation(line: 177, column: 17, scope: !2456, inlinedAt: !3543)
!3550 = !DILocation(line: 178, column: 6, scope: !2456, inlinedAt: !3543)
!3551 = !DILocation(line: 178, column: 18, scope: !2456, inlinedAt: !3543)
!3552 = !DILocation(line: 1020, column: 10, scope: !3528, inlinedAt: !3538)
!3553 = !DILocation(line: 1021, column: 1, scope: !3528, inlinedAt: !3538)
!3554 = !DILocation(line: 1009, column: 3, scope: !3518)
!3555 = !DILocation(line: 0, scope: !3528)
!3556 = !DILocation(line: 1018, column: 3, scope: !3528)
!3557 = !DILocation(line: 1018, column: 26, scope: !3528)
!3558 = !DILocation(line: 1018, column: 30, scope: !3528)
!3559 = !DILocation(line: 0, scope: !2456, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 1019, column: 3, scope: !3528)
!3561 = !DILocation(line: 174, column: 12, scope: !2456, inlinedAt: !3560)
!3562 = !DILocation(line: 175, column: 8, scope: !2469, inlinedAt: !3560)
!3563 = !DILocation(line: 175, column: 19, scope: !2469, inlinedAt: !3560)
!3564 = !DILocation(line: 176, column: 5, scope: !2469, inlinedAt: !3560)
!3565 = !DILocation(line: 177, column: 6, scope: !2456, inlinedAt: !3560)
!3566 = !DILocation(line: 177, column: 17, scope: !2456, inlinedAt: !3560)
!3567 = !DILocation(line: 178, column: 6, scope: !2456, inlinedAt: !3560)
!3568 = !DILocation(line: 178, column: 18, scope: !2456, inlinedAt: !3560)
!3569 = !DILocation(line: 1020, column: 10, scope: !3528)
!3570 = !DILocation(line: 1021, column: 1, scope: !3528)
!3571 = !DILocation(line: 1020, column: 3, scope: !3528)
!3572 = distinct !DISubprogram(name: "quotearg_custom", scope: !531, file: !531, line: 1024, type: !3573, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3575)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!54, !107, !107, !107}
!3575 = !{!3576, !3577, !3578}
!3576 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3572, file: !531, line: 1024, type: !107)
!3577 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3572, file: !531, line: 1024, type: !107)
!3578 = !DILocalVariable(name: "arg", arg: 3, scope: !3572, file: !531, line: 1025, type: !107)
!3579 = !DILocation(line: 0, scope: !3572)
!3580 = !DILocation(line: 0, scope: !3518, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 1027, column: 10, scope: !3572)
!3582 = !DILocation(line: 0, scope: !3528, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 1009, column: 10, scope: !3518, inlinedAt: !3581)
!3584 = !DILocation(line: 1018, column: 3, scope: !3528, inlinedAt: !3583)
!3585 = !DILocation(line: 1018, column: 26, scope: !3528, inlinedAt: !3583)
!3586 = !DILocation(line: 1018, column: 30, scope: !3528, inlinedAt: !3583)
!3587 = !DILocation(line: 0, scope: !2456, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 1019, column: 3, scope: !3528, inlinedAt: !3583)
!3589 = !DILocation(line: 174, column: 12, scope: !2456, inlinedAt: !3588)
!3590 = !DILocation(line: 175, column: 8, scope: !2469, inlinedAt: !3588)
!3591 = !DILocation(line: 175, column: 19, scope: !2469, inlinedAt: !3588)
!3592 = !DILocation(line: 176, column: 5, scope: !2469, inlinedAt: !3588)
!3593 = !DILocation(line: 177, column: 6, scope: !2456, inlinedAt: !3588)
!3594 = !DILocation(line: 177, column: 17, scope: !2456, inlinedAt: !3588)
!3595 = !DILocation(line: 178, column: 6, scope: !2456, inlinedAt: !3588)
!3596 = !DILocation(line: 178, column: 18, scope: !2456, inlinedAt: !3588)
!3597 = !DILocation(line: 1020, column: 10, scope: !3528, inlinedAt: !3583)
!3598 = !DILocation(line: 1021, column: 1, scope: !3528, inlinedAt: !3583)
!3599 = !DILocation(line: 1027, column: 3, scope: !3572)
!3600 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !531, file: !531, line: 1031, type: !3601, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3603)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!54, !107, !107, !107, !104}
!3603 = !{!3604, !3605, !3606, !3607}
!3604 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3600, file: !531, line: 1031, type: !107)
!3605 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3600, file: !531, line: 1031, type: !107)
!3606 = !DILocalVariable(name: "arg", arg: 3, scope: !3600, file: !531, line: 1032, type: !107)
!3607 = !DILocalVariable(name: "argsize", arg: 4, scope: !3600, file: !531, line: 1032, type: !104)
!3608 = !DILocation(line: 0, scope: !3600)
!3609 = !DILocation(line: 0, scope: !3528, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 1034, column: 10, scope: !3600)
!3611 = !DILocation(line: 1018, column: 3, scope: !3528, inlinedAt: !3610)
!3612 = !DILocation(line: 1018, column: 26, scope: !3528, inlinedAt: !3610)
!3613 = !DILocation(line: 1018, column: 30, scope: !3528, inlinedAt: !3610)
!3614 = !DILocation(line: 0, scope: !2456, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 1019, column: 3, scope: !3528, inlinedAt: !3610)
!3616 = !DILocation(line: 174, column: 12, scope: !2456, inlinedAt: !3615)
!3617 = !DILocation(line: 175, column: 8, scope: !2469, inlinedAt: !3615)
!3618 = !DILocation(line: 175, column: 19, scope: !2469, inlinedAt: !3615)
!3619 = !DILocation(line: 176, column: 5, scope: !2469, inlinedAt: !3615)
!3620 = !DILocation(line: 177, column: 6, scope: !2456, inlinedAt: !3615)
!3621 = !DILocation(line: 177, column: 17, scope: !2456, inlinedAt: !3615)
!3622 = !DILocation(line: 178, column: 6, scope: !2456, inlinedAt: !3615)
!3623 = !DILocation(line: 178, column: 18, scope: !2456, inlinedAt: !3615)
!3624 = !DILocation(line: 1020, column: 10, scope: !3528, inlinedAt: !3610)
!3625 = !DILocation(line: 1021, column: 1, scope: !3528, inlinedAt: !3610)
!3626 = !DILocation(line: 1034, column: 3, scope: !3600)
!3627 = distinct !DISubprogram(name: "quote_n_mem", scope: !531, file: !531, line: 1049, type: !3628, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3630)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!107, !52, !107, !104}
!3630 = !{!3631, !3632, !3633}
!3631 = !DILocalVariable(name: "n", arg: 1, scope: !3627, file: !531, line: 1049, type: !52)
!3632 = !DILocalVariable(name: "arg", arg: 2, scope: !3627, file: !531, line: 1049, type: !107)
!3633 = !DILocalVariable(name: "argsize", arg: 3, scope: !3627, file: !531, line: 1049, type: !104)
!3634 = !DILocation(line: 0, scope: !3627)
!3635 = !DILocation(line: 1051, column: 10, scope: !3627)
!3636 = !DILocation(line: 1051, column: 3, scope: !3627)
!3637 = distinct !DISubprogram(name: "quote_mem", scope: !531, file: !531, line: 1055, type: !3638, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3640)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!107, !107, !104}
!3640 = !{!3641, !3642}
!3641 = !DILocalVariable(name: "arg", arg: 1, scope: !3637, file: !531, line: 1055, type: !107)
!3642 = !DILocalVariable(name: "argsize", arg: 2, scope: !3637, file: !531, line: 1055, type: !104)
!3643 = !DILocation(line: 0, scope: !3637)
!3644 = !DILocation(line: 0, scope: !3627, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 1057, column: 10, scope: !3637)
!3646 = !DILocation(line: 1051, column: 10, scope: !3627, inlinedAt: !3645)
!3647 = !DILocation(line: 1057, column: 3, scope: !3637)
!3648 = distinct !DISubprogram(name: "quote_n", scope: !531, file: !531, line: 1061, type: !3649, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3651)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!107, !52, !107}
!3651 = !{!3652, !3653}
!3652 = !DILocalVariable(name: "n", arg: 1, scope: !3648, file: !531, line: 1061, type: !52)
!3653 = !DILocalVariable(name: "arg", arg: 2, scope: !3648, file: !531, line: 1061, type: !107)
!3654 = !DILocation(line: 0, scope: !3648)
!3655 = !DILocation(line: 0, scope: !3627, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 1063, column: 10, scope: !3648)
!3657 = !DILocation(line: 1051, column: 10, scope: !3627, inlinedAt: !3656)
!3658 = !DILocation(line: 1063, column: 3, scope: !3648)
!3659 = distinct !DISubprogram(name: "quote", scope: !531, file: !531, line: 1067, type: !3660, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3662)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!107, !107}
!3662 = !{!3663}
!3663 = !DILocalVariable(name: "arg", arg: 1, scope: !3659, file: !531, line: 1067, type: !107)
!3664 = !DILocation(line: 0, scope: !3659)
!3665 = !DILocation(line: 0, scope: !3648, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 1069, column: 10, scope: !3659)
!3667 = !DILocation(line: 0, scope: !3627, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 1063, column: 10, scope: !3648, inlinedAt: !3666)
!3669 = !DILocation(line: 1051, column: 10, scope: !3627, inlinedAt: !3668)
!3670 = !DILocation(line: 1069, column: 3, scope: !3659)
!3671 = distinct !DISubprogram(name: "init_tokenbuffer", scope: !772, file: !772, line: 43, type: !3672, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !3680)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{null, !3674}
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !1109, line: 38, baseType: !3676)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !1109, line: 33, size: 128, elements: !3677)
!3677 = !{!3678, !3679}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3676, file: !1109, line: 35, baseType: !104, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3676, file: !1109, line: 36, baseType: !54, size: 64, offset: 64)
!3680 = !{!3681}
!3681 = !DILocalVariable(name: "tokenbuffer", arg: 1, scope: !3671, file: !772, line: 43, type: !3674)
!3682 = !DILocation(line: 0, scope: !3671)
!3683 = !DILocation(line: 46, column: 23, scope: !3671)
!3684 = !DILocation(line: 47, column: 1, scope: !3671)
!3685 = distinct !DISubprogram(name: "readtoken", scope: !772, file: !772, line: 79, type: !3686, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !3722)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!104, !3688, !107, !104, !3674}
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !3690)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !3691)
!3691 = !{!3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3690, file: !171, line: 51, baseType: !52, size: 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3690, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3690, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3690, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3690, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3690, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3690, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3690, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3690, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3690, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3690, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3690, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3690, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3690, file: !171, line: 70, baseType: !3706, size: 64, offset: 832)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3690, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3690, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3690, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3690, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3690, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3690, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3690, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3690, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3690, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3690, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3690, file: !171, line: 93, baseType: !3706, size: 64, offset: 1344)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3690, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3690, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3690, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3690, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!3722 = !{!3723, !3724, !3725, !3726, !3727, !3730, !3732, !3735, !3736, !3737, !3738}
!3723 = !DILocalVariable(name: "stream", arg: 1, scope: !3685, file: !772, line: 79, type: !3688)
!3724 = !DILocalVariable(name: "delim", arg: 2, scope: !3685, file: !772, line: 80, type: !107)
!3725 = !DILocalVariable(name: "n_delim", arg: 3, scope: !3685, file: !772, line: 81, type: !104)
!3726 = !DILocalVariable(name: "tokenbuffer", arg: 4, scope: !3685, file: !772, line: 82, type: !3674)
!3727 = !DILocalVariable(name: "isdelim", scope: !3685, file: !772, line: 84, type: !3728)
!3728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3729, size: 256, elements: !232)
!3729 = !DIDerivedType(tag: DW_TAG_typedef, name: "word", file: !772, line: 49, baseType: !104)
!3730 = !DILocalVariable(name: "i", scope: !3731, file: !772, line: 86, type: !805)
!3731 = distinct !DILexicalBlock(scope: !3685, file: !772, line: 86, column: 3)
!3732 = !DILocalVariable(name: "ch", scope: !3733, file: !772, line: 88, type: !109)
!3733 = distinct !DILexicalBlock(scope: !3734, file: !772, line: 87, column: 5)
!3734 = distinct !DILexicalBlock(scope: !3731, file: !772, line: 86, column: 3)
!3735 = !DILocalVariable(name: "c", scope: !3685, file: !772, line: 92, type: !52)
!3736 = !DILocalVariable(name: "p", scope: !3685, file: !772, line: 100, type: !54)
!3737 = !DILocalVariable(name: "n", scope: !3685, file: !772, line: 101, type: !805)
!3738 = !DILocalVariable(name: "i", scope: !3685, file: !772, line: 102, type: !805)
!3739 = !DILocation(line: 0, scope: !3685)
!3740 = !DILocation(line: 84, column: 3, scope: !3685)
!3741 = !DILocation(line: 84, column: 8, scope: !3685)
!3742 = !DILocalVariable(name: "__dest", arg: 1, scope: !3743, file: !2359, line: 57, type: !102)
!3743 = distinct !DISubprogram(name: "memset", scope: !2359, file: !2359, line: 57, type: !2360, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !3744)
!3744 = !{!3742, !3745, !3746}
!3745 = !DILocalVariable(name: "__ch", arg: 2, scope: !3743, file: !2359, line: 57, type: !52)
!3746 = !DILocalVariable(name: "__len", arg: 3, scope: !3743, file: !2359, line: 57, type: !104)
!3747 = !DILocation(line: 0, scope: !3743, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 85, column: 3, scope: !3685)
!3749 = !DILocation(line: 59, column: 10, scope: !3743, inlinedAt: !3748)
!3750 = !DILocation(line: 0, scope: !3731)
!3751 = !DILocation(line: 86, column: 23, scope: !3734)
!3752 = !DILocation(line: 86, column: 3, scope: !3731)
!3753 = !DILocalVariable(name: "__fp", arg: 1, scope: !3754, file: !1158, line: 66, type: !3688)
!3754 = distinct !DISubprogram(name: "getc_unlocked", scope: !1158, file: !1158, line: 66, type: !3755, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !3757)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!52, !3688}
!3757 = !{!3753}
!3758 = !DILocation(line: 0, scope: !3754, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 95, column: 12, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3685, file: !772, line: 95, column: 3)
!3761 = !DILocation(line: 68, column: 10, scope: !3754, inlinedAt: !3759)
!3762 = !DILocation(line: 95, column: 34, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3760, file: !772, line: 95, column: 3)
!3764 = !DILocation(line: 95, column: 29, scope: !3763)
!3765 = !DILocation(line: 95, column: 3, scope: !3760)
!3766 = !DILocation(line: 88, column: 26, scope: !3733)
!3767 = !DILocation(line: 0, scope: !3733)
!3768 = !DILocation(line: 89, column: 20, scope: !3733)
!3769 = !DILocalVariable(name: "n", arg: 1, scope: !3770, file: !772, line: 59, type: !104)
!3770 = distinct !DISubprogram(name: "set_nth_bit", scope: !772, file: !772, line: 59, type: !3771, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !3774)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{null, !104, !3773}
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3774 = !{!3769, !3775, !3776}
!3775 = !DILocalVariable(name: "bitset", arg: 2, scope: !3770, file: !772, line: 59, type: !3773)
!3776 = !DILocalVariable(name: "one", scope: !3770, file: !772, line: 61, type: !104)
!3777 = !DILocation(line: 0, scope: !3770, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 89, column: 7, scope: !3733)
!3779 = !DILocation(line: 62, column: 41, scope: !3770, inlinedAt: !3778)
!3780 = !DILocation(line: 62, column: 36, scope: !3770, inlinedAt: !3778)
!3781 = !DILocation(line: 62, column: 12, scope: !3770, inlinedAt: !3778)
!3782 = !DILocation(line: 62, column: 3, scope: !3770, inlinedAt: !3778)
!3783 = !DILocation(line: 62, column: 29, scope: !3770, inlinedAt: !3778)
!3784 = !DILocation(line: 86, column: 35, scope: !3734)
!3785 = distinct !{!3785, !3752, !3786, !961}
!3786 = !DILocation(line: 90, column: 5, scope: !3731)
!3787 = !DILocalVariable(name: "n", arg: 1, scope: !3788, file: !772, line: 53, type: !104)
!3788 = distinct !DISubprogram(name: "get_nth_bit", scope: !772, file: !772, line: 53, type: !3789, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !3793)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!154, !104, !3791}
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3729)
!3793 = !{!3787, !3794}
!3794 = !DILocalVariable(name: "bitset", arg: 2, scope: !3788, file: !772, line: 53, type: !3791)
!3795 = !DILocation(line: 0, scope: !3788, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 95, column: 37, scope: !3763)
!3797 = !DILocation(line: 55, column: 19, scope: !3788, inlinedAt: !3796)
!3798 = !DILocation(line: 55, column: 10, scope: !3788, inlinedAt: !3796)
!3799 = !DILocation(line: 55, column: 41, scope: !3788, inlinedAt: !3796)
!3800 = !DILocation(line: 0, scope: !3754, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 95, column: 67, scope: !3763)
!3802 = !DILocation(line: 68, column: 10, scope: !3754, inlinedAt: !3801)
!3803 = distinct !{!3803, !3765, !3804, !961}
!3804 = !DILocation(line: 98, column: 5, scope: !3760)
!3805 = !DILocation(line: 101, column: 3, scope: !3685)
!3806 = !DILocation(line: 105, column: 17, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3808, file: !772, line: 105, column: 11)
!3808 = distinct !DILexicalBlock(scope: !3809, file: !772, line: 104, column: 5)
!3809 = distinct !DILexicalBlock(scope: !3810, file: !772, line: 103, column: 3)
!3810 = distinct !DILexicalBlock(scope: !3685, file: !772, line: 103, column: 3)
!3811 = !DILocation(line: 100, column: 26, scope: !3685)
!3812 = !DILocation(line: 101, column: 26, scope: !3685)
!3813 = !{!1175, !1167, i64 0}
!3814 = !DILocation(line: 101, column: 9, scope: !3685)
!3815 = !DILocation(line: 103, column: 3, scope: !3810)
!3816 = !DILocation(line: 108, column: 16, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3808, file: !772, line: 108, column: 11)
!3818 = !DILocation(line: 108, column: 13, scope: !3817)
!3819 = !DILocation(line: 108, column: 11, scope: !3808)
!3820 = !DILocation(line: 109, column: 13, scope: !3817)
!3821 = !DILocation(line: 109, column: 9, scope: !3817)
!3822 = !DILocation(line: 111, column: 11, scope: !3808)
!3823 = !DILocation(line: 0, scope: !3788, inlinedAt: !3824)
!3824 = distinct !DILocation(line: 116, column: 11, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3808, file: !772, line: 116, column: 11)
!3826 = !DILocation(line: 55, column: 19, scope: !3788, inlinedAt: !3824)
!3827 = !DILocation(line: 55, column: 10, scope: !3788, inlinedAt: !3824)
!3828 = !DILocation(line: 55, column: 41, scope: !3788, inlinedAt: !3824)
!3829 = !DILocation(line: 116, column: 11, scope: !3808)
!3830 = !DILocation(line: 121, column: 16, scope: !3808)
!3831 = !DILocation(line: 121, column: 10, scope: !3808)
!3832 = !DILocation(line: 121, column: 7, scope: !3808)
!3833 = !DILocation(line: 121, column: 14, scope: !3808)
!3834 = !DILocation(line: 0, scope: !3754, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 122, column: 11, scope: !3808)
!3836 = !DILocation(line: 68, column: 10, scope: !3754, inlinedAt: !3835)
!3837 = !DILocation(line: 105, column: 13, scope: !3807)
!3838 = !DILocation(line: 0, scope: !3808)
!3839 = !DILocation(line: 125, column: 23, scope: !3685)
!3840 = !DILocation(line: 126, column: 23, scope: !3685)
!3841 = !DILocation(line: 126, column: 21, scope: !3685)
!3842 = !DILocation(line: 127, column: 3, scope: !3685)
!3843 = !DILocation(line: 128, column: 1, scope: !3685)
!3844 = !DISubprogram(name: "__uflow", scope: !442, file: !442, line: 885, type: !3755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3845 = distinct !DISubprogram(name: "readtokens", scope: !772, file: !772, line: 138, type: !3846, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !3850)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!104, !3688, !104, !107, !104, !3848, !3849}
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!3850 = !{!3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3867}
!3851 = !DILocalVariable(name: "stream", arg: 1, scope: !3845, file: !772, line: 138, type: !3688)
!3852 = !DILocalVariable(name: "projected_n_tokens", arg: 2, scope: !3845, file: !772, line: 139, type: !104)
!3853 = !DILocalVariable(name: "delim", arg: 3, scope: !3845, file: !772, line: 140, type: !107)
!3854 = !DILocalVariable(name: "n_delim", arg: 4, scope: !3845, file: !772, line: 141, type: !104)
!3855 = !DILocalVariable(name: "tokens_out", arg: 5, scope: !3845, file: !772, line: 142, type: !3848)
!3856 = !DILocalVariable(name: "token_lengths", arg: 6, scope: !3845, file: !772, line: 143, type: !3849)
!3857 = !DILocalVariable(name: "sz", scope: !3845, file: !772, line: 151, type: !805)
!3858 = !DILocalVariable(name: "tokens", scope: !3845, file: !772, line: 152, type: !53)
!3859 = !DILocalVariable(name: "lengths", scope: !3845, file: !772, line: 153, type: !792)
!3860 = !DILocalVariable(name: "tb", scope: !3845, file: !772, line: 155, type: !3675)
!3861 = !DILocalVariable(name: "token", scope: !3845, file: !772, line: 156, type: !3674)
!3862 = !DILocalVariable(name: "n_tokens", scope: !3845, file: !772, line: 158, type: !805)
!3863 = !DILocalVariable(name: "token_length", scope: !3864, file: !772, line: 161, type: !104)
!3864 = distinct !DILexicalBlock(scope: !3865, file: !772, line: 160, column: 5)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !772, line: 159, column: 3)
!3866 = distinct !DILexicalBlock(scope: !3845, file: !772, line: 159, column: 3)
!3867 = !DILocalVariable(name: "tmp", scope: !3864, file: !772, line: 175, type: !54)
!3868 = !DILocation(line: 0, scope: !3845)
!3869 = !DILocation(line: 146, column: 26, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3845, file: !772, line: 146, column: 7)
!3871 = !DILocation(line: 146, column: 7, scope: !3845)
!3872 = !DILocation(line: 151, column: 3, scope: !3845)
!3873 = !DILocation(line: 151, column: 9, scope: !3845)
!3874 = !DILocation(line: 152, column: 19, scope: !3845)
!3875 = !DILocation(line: 153, column: 21, scope: !3845)
!3876 = !DILocation(line: 155, column: 3, scope: !3845)
!3877 = !DILocation(line: 155, column: 16, scope: !3845)
!3878 = !DILocation(line: 0, scope: !3671, inlinedAt: !3879)
!3879 = distinct !DILocation(line: 157, column: 3, scope: !3845)
!3880 = !DILocation(line: 46, column: 23, scope: !3671, inlinedAt: !3879)
!3881 = !DILocation(line: 159, column: 3, scope: !3845)
!3882 = !DILocation(line: 158, column: 9, scope: !3845)
!3883 = !DILocation(line: 161, column: 29, scope: !3864)
!3884 = !DILocation(line: 0, scope: !3864)
!3885 = !DILocation(line: 162, column: 23, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3864, file: !772, line: 162, column: 11)
!3887 = !DILocation(line: 162, column: 20, scope: !3886)
!3888 = !DILocation(line: 162, column: 11, scope: !3864)
!3889 = !DILocation(line: 164, column: 20, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3886, file: !772, line: 163, column: 9)
!3891 = !DILocation(line: 165, column: 45, scope: !3890)
!3892 = !DILocation(line: 165, column: 21, scope: !3890)
!3893 = !DILocation(line: 166, column: 9, scope: !3890)
!3894 = !DILocation(line: 168, column: 24, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3864, file: !772, line: 168, column: 11)
!3896 = !DILocation(line: 168, column: 11, scope: !3864)
!3897 = !DILocation(line: 175, column: 42, scope: !3864)
!3898 = !DILocation(line: 175, column: 19, scope: !3864)
!3899 = !DILocation(line: 176, column: 25, scope: !3864)
!3900 = !DILocation(line: 177, column: 46, scope: !3864)
!3901 = !DILocalVariable(name: "__dest", arg: 1, scope: !3902, file: !2359, line: 26, type: !3905)
!3902 = distinct !DISubprogram(name: "memcpy", scope: !2359, file: !2359, line: 26, type: !3903, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !3906)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!102, !3905, !1058, !104}
!3905 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!3906 = !{!3901, !3907, !3908}
!3907 = !DILocalVariable(name: "__src", arg: 2, scope: !3902, file: !2359, line: 26, type: !1058)
!3908 = !DILocalVariable(name: "__len", arg: 3, scope: !3902, file: !2359, line: 26, type: !104)
!3909 = !DILocation(line: 0, scope: !3902, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 177, column: 26, scope: !3864)
!3911 = !DILocation(line: 29, column: 10, scope: !3902, inlinedAt: !3910)
!3912 = !DILocation(line: 177, column: 7, scope: !3864)
!3913 = !DILocation(line: 177, column: 24, scope: !3864)
!3914 = !DILocation(line: 178, column: 15, scope: !3864)
!3915 = !DILocation(line: 171, column: 11, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3895, file: !772, line: 169, column: 9)
!3917 = !DILocation(line: 171, column: 28, scope: !3916)
!3918 = !DILocation(line: 172, column: 29, scope: !3916)
!3919 = !DILocation(line: 181, column: 16, scope: !3845)
!3920 = !DILocation(line: 181, column: 3, scope: !3845)
!3921 = !DILocation(line: 182, column: 15, scope: !3845)
!3922 = !DILocation(line: 183, column: 21, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3845, file: !772, line: 183, column: 7)
!3924 = !DILocation(line: 183, column: 7, scope: !3845)
!3925 = !DILocation(line: 184, column: 20, scope: !3923)
!3926 = !DILocation(line: 184, column: 5, scope: !3923)
!3927 = !DILocation(line: 186, column: 5, scope: !3923)
!3928 = !DILocation(line: 188, column: 1, scope: !3845)
!3929 = !DILocation(line: 187, column: 3, scope: !3845)
!3930 = distinct !DISubprogram(name: "version_etc_arn", scope: !633, file: !633, line: 61, type: !3931, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3968)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{null, !3933, !107, !107, !107, !3967, !104}
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !3935)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !3936)
!3936 = !{!3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3935, file: !171, line: 51, baseType: !52, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3935, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3935, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3935, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3935, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3935, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3935, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3935, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3935, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3935, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3935, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3935, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3935, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3935, file: !171, line: 70, baseType: !3951, size: 64, offset: 832)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3935, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3935, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3935, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3935, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3935, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3935, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3935, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3935, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3935, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3935, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3935, file: !171, line: 93, baseType: !3951, size: 64, offset: 1344)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3935, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3935, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3935, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3935, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!3968 = !{!3969, !3970, !3971, !3972, !3973, !3974}
!3969 = !DILocalVariable(name: "stream", arg: 1, scope: !3930, file: !633, line: 61, type: !3933)
!3970 = !DILocalVariable(name: "command_name", arg: 2, scope: !3930, file: !633, line: 62, type: !107)
!3971 = !DILocalVariable(name: "package", arg: 3, scope: !3930, file: !633, line: 62, type: !107)
!3972 = !DILocalVariable(name: "version", arg: 4, scope: !3930, file: !633, line: 63, type: !107)
!3973 = !DILocalVariable(name: "authors", arg: 5, scope: !3930, file: !633, line: 64, type: !3967)
!3974 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3930, file: !633, line: 64, type: !104)
!3975 = !DILocation(line: 0, scope: !3930)
!3976 = !DILocation(line: 66, column: 7, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3930, file: !633, line: 66, column: 7)
!3978 = !DILocation(line: 66, column: 7, scope: !3930)
!3979 = !DILocation(line: 67, column: 5, scope: !3977)
!3980 = !DILocation(line: 69, column: 5, scope: !3977)
!3981 = !DILocation(line: 83, column: 3, scope: !3930)
!3982 = !DILocation(line: 85, column: 3, scope: !3930)
!3983 = !DILocation(line: 88, column: 3, scope: !3930)
!3984 = !DILocation(line: 95, column: 3, scope: !3930)
!3985 = !DILocation(line: 97, column: 3, scope: !3930)
!3986 = !DILocation(line: 105, column: 7, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3930, file: !633, line: 98, column: 5)
!3988 = !DILocation(line: 106, column: 7, scope: !3987)
!3989 = !DILocation(line: 109, column: 7, scope: !3987)
!3990 = !DILocation(line: 110, column: 7, scope: !3987)
!3991 = !DILocation(line: 113, column: 7, scope: !3987)
!3992 = !DILocation(line: 115, column: 7, scope: !3987)
!3993 = !DILocation(line: 120, column: 7, scope: !3987)
!3994 = !DILocation(line: 122, column: 7, scope: !3987)
!3995 = !DILocation(line: 127, column: 7, scope: !3987)
!3996 = !DILocation(line: 129, column: 7, scope: !3987)
!3997 = !DILocation(line: 134, column: 7, scope: !3987)
!3998 = !DILocation(line: 137, column: 7, scope: !3987)
!3999 = !DILocation(line: 142, column: 7, scope: !3987)
!4000 = !DILocation(line: 145, column: 7, scope: !3987)
!4001 = !DILocation(line: 150, column: 7, scope: !3987)
!4002 = !DILocation(line: 154, column: 7, scope: !3987)
!4003 = !DILocation(line: 159, column: 7, scope: !3987)
!4004 = !DILocation(line: 163, column: 7, scope: !3987)
!4005 = !DILocation(line: 170, column: 7, scope: !3987)
!4006 = !DILocation(line: 174, column: 7, scope: !3987)
!4007 = !DILocation(line: 176, column: 1, scope: !3930)
!4008 = distinct !DISubprogram(name: "version_etc_ar", scope: !633, file: !633, line: 183, type: !4009, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4011)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{null, !3933, !107, !107, !107, !3967}
!4011 = !{!4012, !4013, !4014, !4015, !4016, !4017}
!4012 = !DILocalVariable(name: "stream", arg: 1, scope: !4008, file: !633, line: 183, type: !3933)
!4013 = !DILocalVariable(name: "command_name", arg: 2, scope: !4008, file: !633, line: 184, type: !107)
!4014 = !DILocalVariable(name: "package", arg: 3, scope: !4008, file: !633, line: 184, type: !107)
!4015 = !DILocalVariable(name: "version", arg: 4, scope: !4008, file: !633, line: 185, type: !107)
!4016 = !DILocalVariable(name: "authors", arg: 5, scope: !4008, file: !633, line: 185, type: !3967)
!4017 = !DILocalVariable(name: "n_authors", scope: !4008, file: !633, line: 187, type: !104)
!4018 = !DILocation(line: 0, scope: !4008)
!4019 = !DILocation(line: 189, column: 8, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4008, file: !633, line: 189, column: 3)
!4021 = !DILocation(line: 189, scope: !4020)
!4022 = !DILocation(line: 189, column: 23, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4020, file: !633, line: 189, column: 3)
!4024 = !DILocation(line: 189, column: 3, scope: !4020)
!4025 = !DILocation(line: 189, column: 52, scope: !4023)
!4026 = distinct !{!4026, !4024, !4027, !961}
!4027 = !DILocation(line: 190, column: 5, scope: !4020)
!4028 = !DILocation(line: 191, column: 3, scope: !4008)
!4029 = !DILocation(line: 192, column: 1, scope: !4008)
!4030 = distinct !DISubprogram(name: "version_etc_va", scope: !633, file: !633, line: 199, type: !4031, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4044)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{null, !3933, !107, !107, !107, !4033}
!4033 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !442, line: 52, baseType: !4034)
!4034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !444, line: 14, baseType: !4035)
!4035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4036, baseType: !4037)
!4036 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4038)
!4038 = !{!4039, !4040, !4041, !4042, !4043}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4037, file: !4036, line: 192, baseType: !102, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4037, file: !4036, line: 192, baseType: !102, size: 64, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4037, file: !4036, line: 192, baseType: !102, size: 64, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4037, file: !4036, line: 192, baseType: !52, size: 32, offset: 192)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4037, file: !4036, line: 192, baseType: !52, size: 32, offset: 224)
!4044 = !{!4045, !4046, !4047, !4048, !4049, !4050, !4051}
!4045 = !DILocalVariable(name: "stream", arg: 1, scope: !4030, file: !633, line: 199, type: !3933)
!4046 = !DILocalVariable(name: "command_name", arg: 2, scope: !4030, file: !633, line: 200, type: !107)
!4047 = !DILocalVariable(name: "package", arg: 3, scope: !4030, file: !633, line: 200, type: !107)
!4048 = !DILocalVariable(name: "version", arg: 4, scope: !4030, file: !633, line: 201, type: !107)
!4049 = !DILocalVariable(name: "authors", arg: 5, scope: !4030, file: !633, line: 201, type: !4033)
!4050 = !DILocalVariable(name: "n_authors", scope: !4030, file: !633, line: 203, type: !104)
!4051 = !DILocalVariable(name: "authtab", scope: !4030, file: !633, line: 204, type: !4052)
!4052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 640, elements: !40)
!4053 = !DILocation(line: 0, scope: !4030)
!4054 = !DILocation(line: 201, column: 46, scope: !4030)
!4055 = !DILocation(line: 204, column: 3, scope: !4030)
!4056 = !DILocation(line: 204, column: 15, scope: !4030)
!4057 = !DILocation(line: 208, column: 35, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4059, file: !633, line: 206, column: 3)
!4059 = distinct !DILexicalBlock(scope: !4030, file: !633, line: 206, column: 3)
!4060 = !DILocation(line: 208, column: 33, scope: !4058)
!4061 = !DILocation(line: 208, column: 67, scope: !4058)
!4062 = !DILocation(line: 206, column: 3, scope: !4059)
!4063 = !DILocation(line: 208, column: 14, scope: !4058)
!4064 = !DILocation(line: 0, scope: !4059)
!4065 = !DILocation(line: 211, column: 3, scope: !4030)
!4066 = !DILocation(line: 213, column: 1, scope: !4030)
!4067 = distinct !DISubprogram(name: "version_etc", scope: !633, file: !633, line: 230, type: !4068, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4070)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{null, !3933, !107, !107, !107, null}
!4070 = !{!4071, !4072, !4073, !4074, !4075}
!4071 = !DILocalVariable(name: "stream", arg: 1, scope: !4067, file: !633, line: 230, type: !3933)
!4072 = !DILocalVariable(name: "command_name", arg: 2, scope: !4067, file: !633, line: 231, type: !107)
!4073 = !DILocalVariable(name: "package", arg: 3, scope: !4067, file: !633, line: 231, type: !107)
!4074 = !DILocalVariable(name: "version", arg: 4, scope: !4067, file: !633, line: 232, type: !107)
!4075 = !DILocalVariable(name: "authors", scope: !4067, file: !633, line: 234, type: !4033)
!4076 = !DILocation(line: 0, scope: !4067)
!4077 = !DILocation(line: 234, column: 3, scope: !4067)
!4078 = !DILocation(line: 234, column: 11, scope: !4067)
!4079 = !DILocation(line: 235, column: 3, scope: !4067)
!4080 = !DILocation(line: 236, column: 3, scope: !4067)
!4081 = !DILocation(line: 237, column: 3, scope: !4067)
!4082 = !DILocation(line: 238, column: 1, scope: !4067)
!4083 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !633, file: !633, line: 241, type: !483, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !859)
!4084 = !DILocation(line: 243, column: 3, scope: !4083)
!4085 = !DILocation(line: 248, column: 3, scope: !4083)
!4086 = !DILocation(line: 254, column: 3, scope: !4083)
!4087 = !DILocation(line: 259, column: 3, scope: !4083)
!4088 = !DILocation(line: 261, column: 1, scope: !4083)
!4089 = distinct !DISubprogram(name: "xnrealloc", scope: !4090, file: !4090, line: 147, type: !4091, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4093)
!4090 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!102, !102, !104, !104}
!4093 = !{!4094, !4095, !4096}
!4094 = !DILocalVariable(name: "p", arg: 1, scope: !4089, file: !4090, line: 147, type: !102)
!4095 = !DILocalVariable(name: "n", arg: 2, scope: !4089, file: !4090, line: 147, type: !104)
!4096 = !DILocalVariable(name: "s", arg: 3, scope: !4089, file: !4090, line: 147, type: !104)
!4097 = !DILocation(line: 0, scope: !4089)
!4098 = !DILocalVariable(name: "p", arg: 1, scope: !4099, file: !786, line: 83, type: !102)
!4099 = distinct !DISubprogram(name: "xreallocarray", scope: !786, file: !786, line: 83, type: !4091, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4100)
!4100 = !{!4098, !4101, !4102}
!4101 = !DILocalVariable(name: "n", arg: 2, scope: !4099, file: !786, line: 83, type: !104)
!4102 = !DILocalVariable(name: "s", arg: 3, scope: !4099, file: !786, line: 83, type: !104)
!4103 = !DILocation(line: 0, scope: !4099, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 149, column: 10, scope: !4089)
!4105 = !DILocation(line: 85, column: 25, scope: !4099, inlinedAt: !4104)
!4106 = !DILocalVariable(name: "p", arg: 1, scope: !4107, file: !786, line: 37, type: !102)
!4107 = distinct !DISubprogram(name: "check_nonnull", scope: !786, file: !786, line: 37, type: !4108, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4110)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!102, !102}
!4110 = !{!4106}
!4111 = !DILocation(line: 0, scope: !4107, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 85, column: 10, scope: !4099, inlinedAt: !4104)
!4113 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4112)
!4114 = distinct !DILexicalBlock(scope: !4107, file: !786, line: 39, column: 7)
!4115 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4112)
!4116 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4112)
!4117 = !DILocation(line: 149, column: 3, scope: !4089)
!4118 = !DILocation(line: 0, scope: !4099)
!4119 = !DILocation(line: 85, column: 25, scope: !4099)
!4120 = !DILocation(line: 0, scope: !4107, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 85, column: 10, scope: !4099)
!4122 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4121)
!4123 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4121)
!4124 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4121)
!4125 = !DILocation(line: 85, column: 3, scope: !4099)
!4126 = distinct !DISubprogram(name: "xmalloc", scope: !786, file: !786, line: 47, type: !4127, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4129)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!102, !104}
!4129 = !{!4130}
!4130 = !DILocalVariable(name: "s", arg: 1, scope: !4126, file: !786, line: 47, type: !104)
!4131 = !DILocation(line: 0, scope: !4126)
!4132 = !DILocation(line: 49, column: 25, scope: !4126)
!4133 = !DILocation(line: 0, scope: !4107, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 49, column: 10, scope: !4126)
!4135 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4134)
!4136 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4134)
!4137 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4134)
!4138 = !DILocation(line: 49, column: 3, scope: !4126)
!4139 = !DISubprogram(name: "malloc", scope: !1035, file: !1035, line: 540, type: !4127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!4140 = distinct !DISubprogram(name: "ximalloc", scope: !786, file: !786, line: 53, type: !4141, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4143)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!102, !805}
!4143 = !{!4144}
!4144 = !DILocalVariable(name: "s", arg: 1, scope: !4140, file: !786, line: 53, type: !805)
!4145 = !DILocation(line: 0, scope: !4140)
!4146 = !DILocalVariable(name: "s", arg: 1, scope: !4147, file: !4148, line: 55, type: !805)
!4147 = distinct !DISubprogram(name: "imalloc", scope: !4148, file: !4148, line: 55, type: !4141, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4149)
!4148 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4149 = !{!4146}
!4150 = !DILocation(line: 0, scope: !4147, inlinedAt: !4151)
!4151 = distinct !DILocation(line: 55, column: 25, scope: !4140)
!4152 = !DILocation(line: 57, column: 26, scope: !4147, inlinedAt: !4151)
!4153 = !DILocation(line: 0, scope: !4107, inlinedAt: !4154)
!4154 = distinct !DILocation(line: 55, column: 10, scope: !4140)
!4155 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4154)
!4156 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4154)
!4157 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4154)
!4158 = !DILocation(line: 55, column: 3, scope: !4140)
!4159 = distinct !DISubprogram(name: "xcharalloc", scope: !786, file: !786, line: 59, type: !4160, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4162)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!54, !104}
!4162 = !{!4163}
!4163 = !DILocalVariable(name: "n", arg: 1, scope: !4159, file: !786, line: 59, type: !104)
!4164 = !DILocation(line: 0, scope: !4159)
!4165 = !DILocation(line: 0, scope: !4126, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 61, column: 10, scope: !4159)
!4167 = !DILocation(line: 49, column: 25, scope: !4126, inlinedAt: !4166)
!4168 = !DILocation(line: 0, scope: !4107, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 49, column: 10, scope: !4126, inlinedAt: !4166)
!4170 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4169)
!4171 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4169)
!4172 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4169)
!4173 = !DILocation(line: 61, column: 3, scope: !4159)
!4174 = distinct !DISubprogram(name: "xrealloc", scope: !786, file: !786, line: 68, type: !4175, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4177)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!102, !102, !104}
!4177 = !{!4178, !4179}
!4178 = !DILocalVariable(name: "p", arg: 1, scope: !4174, file: !786, line: 68, type: !102)
!4179 = !DILocalVariable(name: "s", arg: 2, scope: !4174, file: !786, line: 68, type: !104)
!4180 = !DILocation(line: 0, scope: !4174)
!4181 = !DILocalVariable(name: "ptr", arg: 1, scope: !4182, file: !4183, line: 2057, type: !102)
!4182 = distinct !DISubprogram(name: "rpl_realloc", scope: !4183, file: !4183, line: 2057, type: !4175, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4184)
!4183 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4184 = !{!4181, !4185}
!4185 = !DILocalVariable(name: "size", arg: 2, scope: !4182, file: !4183, line: 2057, type: !104)
!4186 = !DILocation(line: 0, scope: !4182, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 70, column: 25, scope: !4174)
!4188 = !DILocation(line: 2059, column: 24, scope: !4182, inlinedAt: !4187)
!4189 = !DILocation(line: 2059, column: 10, scope: !4182, inlinedAt: !4187)
!4190 = !DILocation(line: 0, scope: !4107, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 70, column: 10, scope: !4174)
!4192 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4191)
!4193 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4191)
!4194 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4191)
!4195 = !DILocation(line: 70, column: 3, scope: !4174)
!4196 = !DISubprogram(name: "realloc", scope: !1035, file: !1035, line: 551, type: !4175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!4197 = distinct !DISubprogram(name: "xirealloc", scope: !786, file: !786, line: 74, type: !4198, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4200)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!102, !102, !805}
!4200 = !{!4201, !4202}
!4201 = !DILocalVariable(name: "p", arg: 1, scope: !4197, file: !786, line: 74, type: !102)
!4202 = !DILocalVariable(name: "s", arg: 2, scope: !4197, file: !786, line: 74, type: !805)
!4203 = !DILocation(line: 0, scope: !4197)
!4204 = !DILocalVariable(name: "p", arg: 1, scope: !4205, file: !4148, line: 66, type: !102)
!4205 = distinct !DISubprogram(name: "irealloc", scope: !4148, file: !4148, line: 66, type: !4198, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4206)
!4206 = !{!4204, !4207}
!4207 = !DILocalVariable(name: "s", arg: 2, scope: !4205, file: !4148, line: 66, type: !805)
!4208 = !DILocation(line: 0, scope: !4205, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 76, column: 25, scope: !4197)
!4210 = !DILocation(line: 0, scope: !4182, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 68, column: 26, scope: !4205, inlinedAt: !4209)
!4212 = !DILocation(line: 2059, column: 24, scope: !4182, inlinedAt: !4211)
!4213 = !DILocation(line: 2059, column: 10, scope: !4182, inlinedAt: !4211)
!4214 = !DILocation(line: 0, scope: !4107, inlinedAt: !4215)
!4215 = distinct !DILocation(line: 76, column: 10, scope: !4197)
!4216 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4215)
!4217 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4215)
!4218 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4215)
!4219 = !DILocation(line: 76, column: 3, scope: !4197)
!4220 = distinct !DISubprogram(name: "xireallocarray", scope: !786, file: !786, line: 89, type: !4221, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4223)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!102, !102, !805, !805}
!4223 = !{!4224, !4225, !4226}
!4224 = !DILocalVariable(name: "p", arg: 1, scope: !4220, file: !786, line: 89, type: !102)
!4225 = !DILocalVariable(name: "n", arg: 2, scope: !4220, file: !786, line: 89, type: !805)
!4226 = !DILocalVariable(name: "s", arg: 3, scope: !4220, file: !786, line: 89, type: !805)
!4227 = !DILocation(line: 0, scope: !4220)
!4228 = !DILocalVariable(name: "p", arg: 1, scope: !4229, file: !4148, line: 98, type: !102)
!4229 = distinct !DISubprogram(name: "ireallocarray", scope: !4148, file: !4148, line: 98, type: !4221, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4230)
!4230 = !{!4228, !4231, !4232}
!4231 = !DILocalVariable(name: "n", arg: 2, scope: !4229, file: !4148, line: 98, type: !805)
!4232 = !DILocalVariable(name: "s", arg: 3, scope: !4229, file: !4148, line: 98, type: !805)
!4233 = !DILocation(line: 0, scope: !4229, inlinedAt: !4234)
!4234 = distinct !DILocation(line: 91, column: 25, scope: !4220)
!4235 = !DILocation(line: 101, column: 13, scope: !4229, inlinedAt: !4234)
!4236 = !DILocation(line: 0, scope: !4107, inlinedAt: !4237)
!4237 = distinct !DILocation(line: 91, column: 10, scope: !4220)
!4238 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4237)
!4239 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4237)
!4240 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4237)
!4241 = !DILocation(line: 91, column: 3, scope: !4220)
!4242 = distinct !DISubprogram(name: "xnmalloc", scope: !786, file: !786, line: 98, type: !4243, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4245)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!102, !104, !104}
!4245 = !{!4246, !4247}
!4246 = !DILocalVariable(name: "n", arg: 1, scope: !4242, file: !786, line: 98, type: !104)
!4247 = !DILocalVariable(name: "s", arg: 2, scope: !4242, file: !786, line: 98, type: !104)
!4248 = !DILocation(line: 0, scope: !4242)
!4249 = !DILocation(line: 0, scope: !4099, inlinedAt: !4250)
!4250 = distinct !DILocation(line: 100, column: 10, scope: !4242)
!4251 = !DILocation(line: 85, column: 25, scope: !4099, inlinedAt: !4250)
!4252 = !DILocation(line: 0, scope: !4107, inlinedAt: !4253)
!4253 = distinct !DILocation(line: 85, column: 10, scope: !4099, inlinedAt: !4250)
!4254 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4253)
!4255 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4253)
!4256 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4253)
!4257 = !DILocation(line: 100, column: 3, scope: !4242)
!4258 = distinct !DISubprogram(name: "xinmalloc", scope: !786, file: !786, line: 104, type: !4259, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4261)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!102, !805, !805}
!4261 = !{!4262, !4263}
!4262 = !DILocalVariable(name: "n", arg: 1, scope: !4258, file: !786, line: 104, type: !805)
!4263 = !DILocalVariable(name: "s", arg: 2, scope: !4258, file: !786, line: 104, type: !805)
!4264 = !DILocation(line: 0, scope: !4258)
!4265 = !DILocation(line: 0, scope: !4220, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 106, column: 10, scope: !4258)
!4267 = !DILocation(line: 0, scope: !4229, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 91, column: 25, scope: !4220, inlinedAt: !4266)
!4269 = !DILocation(line: 101, column: 13, scope: !4229, inlinedAt: !4268)
!4270 = !DILocation(line: 0, scope: !4107, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 91, column: 10, scope: !4220, inlinedAt: !4266)
!4272 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4271)
!4273 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4271)
!4274 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4271)
!4275 = !DILocation(line: 106, column: 3, scope: !4258)
!4276 = distinct !DISubprogram(name: "x2realloc", scope: !786, file: !786, line: 116, type: !4277, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4279)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!102, !102, !792}
!4279 = !{!4280, !4281}
!4280 = !DILocalVariable(name: "p", arg: 1, scope: !4276, file: !786, line: 116, type: !102)
!4281 = !DILocalVariable(name: "ps", arg: 2, scope: !4276, file: !786, line: 116, type: !792)
!4282 = !DILocation(line: 0, scope: !4276)
!4283 = !DILocation(line: 0, scope: !789, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 118, column: 10, scope: !4276)
!4285 = !DILocation(line: 178, column: 14, scope: !789, inlinedAt: !4284)
!4286 = !DILocation(line: 180, column: 9, scope: !4287, inlinedAt: !4284)
!4287 = distinct !DILexicalBlock(scope: !789, file: !786, line: 180, column: 7)
!4288 = !DILocation(line: 180, column: 7, scope: !789, inlinedAt: !4284)
!4289 = !DILocation(line: 182, column: 13, scope: !4290, inlinedAt: !4284)
!4290 = distinct !DILexicalBlock(scope: !4291, file: !786, line: 182, column: 11)
!4291 = distinct !DILexicalBlock(scope: !4287, file: !786, line: 181, column: 5)
!4292 = !DILocation(line: 182, column: 11, scope: !4291, inlinedAt: !4284)
!4293 = !DILocation(line: 197, column: 11, scope: !4294, inlinedAt: !4284)
!4294 = distinct !DILexicalBlock(scope: !4295, file: !786, line: 197, column: 11)
!4295 = distinct !DILexicalBlock(scope: !4287, file: !786, line: 195, column: 5)
!4296 = !DILocation(line: 197, column: 11, scope: !4295, inlinedAt: !4284)
!4297 = !DILocation(line: 198, column: 9, scope: !4294, inlinedAt: !4284)
!4298 = !DILocation(line: 0, scope: !4099, inlinedAt: !4299)
!4299 = distinct !DILocation(line: 201, column: 7, scope: !789, inlinedAt: !4284)
!4300 = !DILocation(line: 85, column: 25, scope: !4099, inlinedAt: !4299)
!4301 = !DILocation(line: 0, scope: !4107, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 85, column: 10, scope: !4099, inlinedAt: !4299)
!4303 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4302)
!4304 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4302)
!4305 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4302)
!4306 = !DILocation(line: 202, column: 7, scope: !789, inlinedAt: !4284)
!4307 = !DILocation(line: 118, column: 3, scope: !4276)
!4308 = !DILocation(line: 0, scope: !789)
!4309 = !DILocation(line: 178, column: 14, scope: !789)
!4310 = !DILocation(line: 180, column: 9, scope: !4287)
!4311 = !DILocation(line: 180, column: 7, scope: !789)
!4312 = !DILocation(line: 182, column: 13, scope: !4290)
!4313 = !DILocation(line: 182, column: 11, scope: !4291)
!4314 = !DILocation(line: 190, column: 30, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4290, file: !786, line: 183, column: 9)
!4316 = !DILocation(line: 191, column: 16, scope: !4315)
!4317 = !DILocation(line: 191, column: 13, scope: !4315)
!4318 = !DILocation(line: 192, column: 9, scope: !4315)
!4319 = !DILocation(line: 197, column: 11, scope: !4294)
!4320 = !DILocation(line: 197, column: 11, scope: !4295)
!4321 = !DILocation(line: 198, column: 9, scope: !4294)
!4322 = !DILocation(line: 0, scope: !4099, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 201, column: 7, scope: !789)
!4324 = !DILocation(line: 85, column: 25, scope: !4099, inlinedAt: !4323)
!4325 = !DILocation(line: 0, scope: !4107, inlinedAt: !4326)
!4326 = distinct !DILocation(line: 85, column: 10, scope: !4099, inlinedAt: !4323)
!4327 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4326)
!4328 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4326)
!4329 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4326)
!4330 = !DILocation(line: 202, column: 7, scope: !789)
!4331 = !DILocation(line: 203, column: 3, scope: !789)
!4332 = !DILocation(line: 0, scope: !801)
!4333 = !DILocation(line: 230, column: 14, scope: !801)
!4334 = !DILocation(line: 238, column: 7, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !801, file: !786, line: 238, column: 7)
!4336 = !DILocation(line: 238, column: 7, scope: !801)
!4337 = !DILocation(line: 240, column: 9, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !801, file: !786, line: 240, column: 7)
!4339 = !DILocation(line: 240, column: 18, scope: !4338)
!4340 = !DILocation(line: 253, column: 8, scope: !801)
!4341 = !DILocation(line: 258, column: 27, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4343, file: !786, line: 257, column: 5)
!4343 = distinct !DILexicalBlock(scope: !801, file: !786, line: 256, column: 7)
!4344 = !DILocation(line: 259, column: 32, scope: !4342)
!4345 = !DILocation(line: 260, column: 5, scope: !4342)
!4346 = !DILocation(line: 262, column: 9, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !801, file: !786, line: 262, column: 7)
!4348 = !DILocation(line: 262, column: 7, scope: !801)
!4349 = !DILocation(line: 263, column: 9, scope: !4347)
!4350 = !DILocation(line: 263, column: 5, scope: !4347)
!4351 = !DILocation(line: 264, column: 9, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !801, file: !786, line: 264, column: 7)
!4353 = !DILocation(line: 264, column: 14, scope: !4352)
!4354 = !DILocation(line: 265, column: 7, scope: !4352)
!4355 = !DILocation(line: 265, column: 11, scope: !4352)
!4356 = !DILocation(line: 266, column: 11, scope: !4352)
!4357 = !DILocation(line: 267, column: 14, scope: !4352)
!4358 = !DILocation(line: 264, column: 7, scope: !801)
!4359 = !DILocation(line: 268, column: 5, scope: !4352)
!4360 = !DILocation(line: 0, scope: !4174, inlinedAt: !4361)
!4361 = distinct !DILocation(line: 269, column: 8, scope: !801)
!4362 = !DILocation(line: 0, scope: !4182, inlinedAt: !4363)
!4363 = distinct !DILocation(line: 70, column: 25, scope: !4174, inlinedAt: !4361)
!4364 = !DILocation(line: 2059, column: 24, scope: !4182, inlinedAt: !4363)
!4365 = !DILocation(line: 2059, column: 10, scope: !4182, inlinedAt: !4363)
!4366 = !DILocation(line: 0, scope: !4107, inlinedAt: !4367)
!4367 = distinct !DILocation(line: 70, column: 10, scope: !4174, inlinedAt: !4361)
!4368 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4367)
!4369 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4367)
!4370 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4367)
!4371 = !DILocation(line: 270, column: 7, scope: !801)
!4372 = !DILocation(line: 271, column: 3, scope: !801)
!4373 = distinct !DISubprogram(name: "xzalloc", scope: !786, file: !786, line: 279, type: !4127, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4374)
!4374 = !{!4375}
!4375 = !DILocalVariable(name: "s", arg: 1, scope: !4373, file: !786, line: 279, type: !104)
!4376 = !DILocation(line: 0, scope: !4373)
!4377 = !DILocalVariable(name: "n", arg: 1, scope: !4378, file: !786, line: 294, type: !104)
!4378 = distinct !DISubprogram(name: "xcalloc", scope: !786, file: !786, line: 294, type: !4243, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4379)
!4379 = !{!4377, !4380}
!4380 = !DILocalVariable(name: "s", arg: 2, scope: !4378, file: !786, line: 294, type: !104)
!4381 = !DILocation(line: 0, scope: !4378, inlinedAt: !4382)
!4382 = distinct !DILocation(line: 281, column: 10, scope: !4373)
!4383 = !DILocation(line: 296, column: 25, scope: !4378, inlinedAt: !4382)
!4384 = !DILocation(line: 0, scope: !4107, inlinedAt: !4385)
!4385 = distinct !DILocation(line: 296, column: 10, scope: !4378, inlinedAt: !4382)
!4386 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4385)
!4387 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4385)
!4388 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4385)
!4389 = !DILocation(line: 281, column: 3, scope: !4373)
!4390 = !DISubprogram(name: "calloc", scope: !1035, file: !1035, line: 543, type: !4243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!4391 = !DILocation(line: 0, scope: !4378)
!4392 = !DILocation(line: 296, column: 25, scope: !4378)
!4393 = !DILocation(line: 0, scope: !4107, inlinedAt: !4394)
!4394 = distinct !DILocation(line: 296, column: 10, scope: !4378)
!4395 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4394)
!4396 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4394)
!4397 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4394)
!4398 = !DILocation(line: 296, column: 3, scope: !4378)
!4399 = distinct !DISubprogram(name: "xizalloc", scope: !786, file: !786, line: 285, type: !4141, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4400)
!4400 = !{!4401}
!4401 = !DILocalVariable(name: "s", arg: 1, scope: !4399, file: !786, line: 285, type: !805)
!4402 = !DILocation(line: 0, scope: !4399)
!4403 = !DILocalVariable(name: "n", arg: 1, scope: !4404, file: !786, line: 300, type: !805)
!4404 = distinct !DISubprogram(name: "xicalloc", scope: !786, file: !786, line: 300, type: !4259, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4405)
!4405 = !{!4403, !4406}
!4406 = !DILocalVariable(name: "s", arg: 2, scope: !4404, file: !786, line: 300, type: !805)
!4407 = !DILocation(line: 0, scope: !4404, inlinedAt: !4408)
!4408 = distinct !DILocation(line: 287, column: 10, scope: !4399)
!4409 = !DILocalVariable(name: "n", arg: 1, scope: !4410, file: !4148, line: 77, type: !805)
!4410 = distinct !DISubprogram(name: "icalloc", scope: !4148, file: !4148, line: 77, type: !4259, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4411)
!4411 = !{!4409, !4412}
!4412 = !DILocalVariable(name: "s", arg: 2, scope: !4410, file: !4148, line: 77, type: !805)
!4413 = !DILocation(line: 0, scope: !4410, inlinedAt: !4414)
!4414 = distinct !DILocation(line: 302, column: 25, scope: !4404, inlinedAt: !4408)
!4415 = !DILocation(line: 91, column: 10, scope: !4410, inlinedAt: !4414)
!4416 = !DILocation(line: 0, scope: !4107, inlinedAt: !4417)
!4417 = distinct !DILocation(line: 302, column: 10, scope: !4404, inlinedAt: !4408)
!4418 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4417)
!4419 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4417)
!4420 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4417)
!4421 = !DILocation(line: 287, column: 3, scope: !4399)
!4422 = !DILocation(line: 0, scope: !4404)
!4423 = !DILocation(line: 0, scope: !4410, inlinedAt: !4424)
!4424 = distinct !DILocation(line: 302, column: 25, scope: !4404)
!4425 = !DILocation(line: 91, column: 10, scope: !4410, inlinedAt: !4424)
!4426 = !DILocation(line: 0, scope: !4107, inlinedAt: !4427)
!4427 = distinct !DILocation(line: 302, column: 10, scope: !4404)
!4428 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4427)
!4429 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4427)
!4430 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4427)
!4431 = !DILocation(line: 302, column: 3, scope: !4404)
!4432 = distinct !DISubprogram(name: "xmemdup", scope: !786, file: !786, line: 310, type: !4433, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4435)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!102, !1059, !104}
!4435 = !{!4436, !4437}
!4436 = !DILocalVariable(name: "p", arg: 1, scope: !4432, file: !786, line: 310, type: !1059)
!4437 = !DILocalVariable(name: "s", arg: 2, scope: !4432, file: !786, line: 310, type: !104)
!4438 = !DILocation(line: 0, scope: !4432)
!4439 = !DILocation(line: 0, scope: !4126, inlinedAt: !4440)
!4440 = distinct !DILocation(line: 312, column: 18, scope: !4432)
!4441 = !DILocation(line: 49, column: 25, scope: !4126, inlinedAt: !4440)
!4442 = !DILocation(line: 0, scope: !4107, inlinedAt: !4443)
!4443 = distinct !DILocation(line: 49, column: 10, scope: !4126, inlinedAt: !4440)
!4444 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4443)
!4445 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4443)
!4446 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4443)
!4447 = !DILocalVariable(name: "__dest", arg: 1, scope: !4448, file: !2359, line: 26, type: !3905)
!4448 = distinct !DISubprogram(name: "memcpy", scope: !2359, file: !2359, line: 26, type: !3903, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4449)
!4449 = !{!4447, !4450, !4451}
!4450 = !DILocalVariable(name: "__src", arg: 2, scope: !4448, file: !2359, line: 26, type: !1058)
!4451 = !DILocalVariable(name: "__len", arg: 3, scope: !4448, file: !2359, line: 26, type: !104)
!4452 = !DILocation(line: 0, scope: !4448, inlinedAt: !4453)
!4453 = distinct !DILocation(line: 312, column: 10, scope: !4432)
!4454 = !DILocation(line: 29, column: 10, scope: !4448, inlinedAt: !4453)
!4455 = !DILocation(line: 312, column: 3, scope: !4432)
!4456 = distinct !DISubprogram(name: "ximemdup", scope: !786, file: !786, line: 316, type: !4457, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4459)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!102, !1059, !805}
!4459 = !{!4460, !4461}
!4460 = !DILocalVariable(name: "p", arg: 1, scope: !4456, file: !786, line: 316, type: !1059)
!4461 = !DILocalVariable(name: "s", arg: 2, scope: !4456, file: !786, line: 316, type: !805)
!4462 = !DILocation(line: 0, scope: !4456)
!4463 = !DILocation(line: 0, scope: !4140, inlinedAt: !4464)
!4464 = distinct !DILocation(line: 318, column: 18, scope: !4456)
!4465 = !DILocation(line: 0, scope: !4147, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 55, column: 25, scope: !4140, inlinedAt: !4464)
!4467 = !DILocation(line: 57, column: 26, scope: !4147, inlinedAt: !4466)
!4468 = !DILocation(line: 0, scope: !4107, inlinedAt: !4469)
!4469 = distinct !DILocation(line: 55, column: 10, scope: !4140, inlinedAt: !4464)
!4470 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4469)
!4471 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4469)
!4472 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4469)
!4473 = !DILocation(line: 0, scope: !4448, inlinedAt: !4474)
!4474 = distinct !DILocation(line: 318, column: 10, scope: !4456)
!4475 = !DILocation(line: 29, column: 10, scope: !4448, inlinedAt: !4474)
!4476 = !DILocation(line: 318, column: 3, scope: !4456)
!4477 = distinct !DISubprogram(name: "ximemdup0", scope: !786, file: !786, line: 325, type: !4478, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4480)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!54, !1059, !805}
!4480 = !{!4481, !4482, !4483}
!4481 = !DILocalVariable(name: "p", arg: 1, scope: !4477, file: !786, line: 325, type: !1059)
!4482 = !DILocalVariable(name: "s", arg: 2, scope: !4477, file: !786, line: 325, type: !805)
!4483 = !DILocalVariable(name: "result", scope: !4477, file: !786, line: 327, type: !54)
!4484 = !DILocation(line: 0, scope: !4477)
!4485 = !DILocation(line: 327, column: 30, scope: !4477)
!4486 = !DILocation(line: 0, scope: !4140, inlinedAt: !4487)
!4487 = distinct !DILocation(line: 327, column: 18, scope: !4477)
!4488 = !DILocation(line: 0, scope: !4147, inlinedAt: !4489)
!4489 = distinct !DILocation(line: 55, column: 25, scope: !4140, inlinedAt: !4487)
!4490 = !DILocation(line: 57, column: 26, scope: !4147, inlinedAt: !4489)
!4491 = !DILocation(line: 0, scope: !4107, inlinedAt: !4492)
!4492 = distinct !DILocation(line: 55, column: 10, scope: !4140, inlinedAt: !4487)
!4493 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4492)
!4494 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4492)
!4495 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4492)
!4496 = !DILocation(line: 328, column: 3, scope: !4477)
!4497 = !DILocation(line: 328, column: 13, scope: !4477)
!4498 = !DILocation(line: 0, scope: !4448, inlinedAt: !4499)
!4499 = distinct !DILocation(line: 329, column: 10, scope: !4477)
!4500 = !DILocation(line: 29, column: 10, scope: !4448, inlinedAt: !4499)
!4501 = !DILocation(line: 329, column: 3, scope: !4477)
!4502 = distinct !DISubprogram(name: "xstrdup", scope: !786, file: !786, line: 335, type: !1037, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4503)
!4503 = !{!4504}
!4504 = !DILocalVariable(name: "string", arg: 1, scope: !4502, file: !786, line: 335, type: !107)
!4505 = !DILocation(line: 0, scope: !4502)
!4506 = !DILocation(line: 337, column: 27, scope: !4502)
!4507 = !DILocation(line: 337, column: 43, scope: !4502)
!4508 = !DILocation(line: 0, scope: !4432, inlinedAt: !4509)
!4509 = distinct !DILocation(line: 337, column: 10, scope: !4502)
!4510 = !DILocation(line: 0, scope: !4126, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 312, column: 18, scope: !4432, inlinedAt: !4509)
!4512 = !DILocation(line: 49, column: 25, scope: !4126, inlinedAt: !4511)
!4513 = !DILocation(line: 0, scope: !4107, inlinedAt: !4514)
!4514 = distinct !DILocation(line: 49, column: 10, scope: !4126, inlinedAt: !4511)
!4515 = !DILocation(line: 39, column: 8, scope: !4114, inlinedAt: !4514)
!4516 = !DILocation(line: 39, column: 7, scope: !4107, inlinedAt: !4514)
!4517 = !DILocation(line: 40, column: 5, scope: !4114, inlinedAt: !4514)
!4518 = !DILocation(line: 0, scope: !4448, inlinedAt: !4519)
!4519 = distinct !DILocation(line: 312, column: 10, scope: !4432, inlinedAt: !4509)
!4520 = !DILocation(line: 29, column: 10, scope: !4448, inlinedAt: !4519)
!4521 = !DILocation(line: 337, column: 3, scope: !4502)
!4522 = distinct !DISubprogram(name: "xalloc_die", scope: !729, file: !729, line: 32, type: !483, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !4523)
!4523 = !{!4524}
!4524 = !DILocalVariable(name: "__errstatus", scope: !4525, file: !729, line: 34, type: !4526)
!4525 = distinct !DILexicalBlock(scope: !4522, file: !729, line: 34, column: 3)
!4526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!4527 = !DILocation(line: 34, column: 3, scope: !4525)
!4528 = !DILocation(line: 0, scope: !4525)
!4529 = !DILocation(line: 40, column: 3, scope: !4522)
!4530 = distinct !DISubprogram(name: "close_stream", scope: !822, file: !822, line: 55, type: !4531, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4567)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!52, !4533}
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !4535)
!4535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !4536)
!4536 = !{!4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4535, file: !171, line: 51, baseType: !52, size: 32)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4535, file: !171, line: 54, baseType: !54, size: 64, offset: 64)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4535, file: !171, line: 55, baseType: !54, size: 64, offset: 128)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4535, file: !171, line: 56, baseType: !54, size: 64, offset: 192)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4535, file: !171, line: 57, baseType: !54, size: 64, offset: 256)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4535, file: !171, line: 58, baseType: !54, size: 64, offset: 320)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4535, file: !171, line: 59, baseType: !54, size: 64, offset: 384)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4535, file: !171, line: 60, baseType: !54, size: 64, offset: 448)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4535, file: !171, line: 61, baseType: !54, size: 64, offset: 512)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4535, file: !171, line: 64, baseType: !54, size: 64, offset: 576)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4535, file: !171, line: 65, baseType: !54, size: 64, offset: 640)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4535, file: !171, line: 66, baseType: !54, size: 64, offset: 704)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4535, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4535, file: !171, line: 70, baseType: !4551, size: 64, offset: 832)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4535, file: !171, line: 72, baseType: !52, size: 32, offset: 896)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4535, file: !171, line: 73, baseType: !52, size: 32, offset: 928)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4535, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4535, file: !171, line: 77, baseType: !103, size: 16, offset: 1024)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4535, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4535, file: !171, line: 79, baseType: !34, size: 8, offset: 1048)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4535, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4535, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4535, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4535, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4535, file: !171, line: 93, baseType: !4551, size: 64, offset: 1344)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4535, file: !171, line: 94, baseType: !102, size: 64, offset: 1408)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4535, file: !171, line: 95, baseType: !104, size: 64, offset: 1472)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4535, file: !171, line: 96, baseType: !52, size: 32, offset: 1536)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4535, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!4567 = !{!4568, !4569, !4571, !4572}
!4568 = !DILocalVariable(name: "stream", arg: 1, scope: !4530, file: !822, line: 55, type: !4533)
!4569 = !DILocalVariable(name: "some_pending", scope: !4530, file: !822, line: 57, type: !4570)
!4570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!4571 = !DILocalVariable(name: "prev_fail", scope: !4530, file: !822, line: 58, type: !4570)
!4572 = !DILocalVariable(name: "fclose_fail", scope: !4530, file: !822, line: 59, type: !4570)
!4573 = !DILocation(line: 0, scope: !4530)
!4574 = !DILocation(line: 57, column: 30, scope: !4530)
!4575 = !DILocalVariable(name: "__stream", arg: 1, scope: !4576, file: !1158, line: 135, type: !4533)
!4576 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1158, file: !1158, line: 135, type: !4531, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4577)
!4577 = !{!4575}
!4578 = !DILocation(line: 0, scope: !4576, inlinedAt: !4579)
!4579 = distinct !DILocation(line: 58, column: 27, scope: !4530)
!4580 = !DILocation(line: 137, column: 10, scope: !4576, inlinedAt: !4579)
!4581 = !DILocation(line: 58, column: 43, scope: !4530)
!4582 = !DILocation(line: 59, column: 29, scope: !4530)
!4583 = !DILocation(line: 59, column: 45, scope: !4530)
!4584 = !DILocation(line: 69, column: 17, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4530, file: !822, line: 69, column: 7)
!4586 = !DILocation(line: 57, column: 50, scope: !4530)
!4587 = !DILocation(line: 69, column: 33, scope: !4585)
!4588 = !DILocation(line: 69, column: 53, scope: !4585)
!4589 = !DILocation(line: 69, column: 59, scope: !4585)
!4590 = !DILocation(line: 69, column: 7, scope: !4530)
!4591 = !DILocation(line: 71, column: 11, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4585, file: !822, line: 70, column: 5)
!4593 = !DILocation(line: 72, column: 9, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4592, file: !822, line: 71, column: 11)
!4595 = !DILocation(line: 72, column: 15, scope: !4594)
!4596 = !DILocation(line: 77, column: 1, scope: !4530)
!4597 = !DISubprogram(name: "__fpending", scope: !2024, file: !2024, line: 75, type: !4598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!104, !4533}
!4600 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !736, file: !736, line: 100, type: !4601, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !4604)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!104, !2377, !107, !104, !4603}
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!4604 = !{!4605, !4606, !4607, !4608, !4609}
!4605 = !DILocalVariable(name: "pwc", arg: 1, scope: !4600, file: !736, line: 100, type: !2377)
!4606 = !DILocalVariable(name: "s", arg: 2, scope: !4600, file: !736, line: 100, type: !107)
!4607 = !DILocalVariable(name: "n", arg: 3, scope: !4600, file: !736, line: 100, type: !104)
!4608 = !DILocalVariable(name: "ps", arg: 4, scope: !4600, file: !736, line: 100, type: !4603)
!4609 = !DILocalVariable(name: "ret", scope: !4600, file: !736, line: 130, type: !104)
!4610 = !DILocation(line: 0, scope: !4600)
!4611 = !DILocation(line: 105, column: 9, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4600, file: !736, line: 105, column: 7)
!4613 = !DILocation(line: 105, column: 7, scope: !4600)
!4614 = !DILocation(line: 117, column: 10, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4600, file: !736, line: 117, column: 7)
!4616 = !DILocation(line: 117, column: 7, scope: !4600)
!4617 = !DILocation(line: 130, column: 16, scope: !4600)
!4618 = !DILocation(line: 135, column: 11, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4600, file: !736, line: 135, column: 7)
!4620 = !DILocation(line: 135, column: 25, scope: !4619)
!4621 = !DILocation(line: 135, column: 30, scope: !4619)
!4622 = !DILocation(line: 135, column: 7, scope: !4600)
!4623 = !DILocalVariable(name: "ps", arg: 1, scope: !4624, file: !2350, line: 1135, type: !4603)
!4624 = distinct !DISubprogram(name: "mbszero", scope: !2350, file: !2350, line: 1135, type: !4625, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !4627)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{null, !4603}
!4627 = !{!4623}
!4628 = !DILocation(line: 0, scope: !4624, inlinedAt: !4629)
!4629 = distinct !DILocation(line: 137, column: 5, scope: !4619)
!4630 = !DILocalVariable(name: "__dest", arg: 1, scope: !4631, file: !2359, line: 57, type: !102)
!4631 = distinct !DISubprogram(name: "memset", scope: !2359, file: !2359, line: 57, type: !2360, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !4632)
!4632 = !{!4630, !4633, !4634}
!4633 = !DILocalVariable(name: "__ch", arg: 2, scope: !4631, file: !2359, line: 57, type: !52)
!4634 = !DILocalVariable(name: "__len", arg: 3, scope: !4631, file: !2359, line: 57, type: !104)
!4635 = !DILocation(line: 0, scope: !4631, inlinedAt: !4636)
!4636 = distinct !DILocation(line: 1137, column: 3, scope: !4624, inlinedAt: !4629)
!4637 = !DILocation(line: 59, column: 10, scope: !4631, inlinedAt: !4636)
!4638 = !DILocation(line: 137, column: 5, scope: !4619)
!4639 = !DILocation(line: 138, column: 11, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4600, file: !736, line: 138, column: 7)
!4641 = !DILocation(line: 138, column: 7, scope: !4600)
!4642 = !DILocation(line: 139, column: 5, scope: !4640)
!4643 = !DILocation(line: 143, column: 26, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4600, file: !736, line: 143, column: 7)
!4645 = !DILocation(line: 143, column: 41, scope: !4644)
!4646 = !DILocation(line: 143, column: 7, scope: !4600)
!4647 = !DILocation(line: 145, column: 15, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4649, file: !736, line: 145, column: 11)
!4649 = distinct !DILexicalBlock(scope: !4644, file: !736, line: 144, column: 5)
!4650 = !DILocation(line: 145, column: 11, scope: !4649)
!4651 = !DILocation(line: 146, column: 32, scope: !4648)
!4652 = !DILocation(line: 146, column: 16, scope: !4648)
!4653 = !DILocation(line: 146, column: 14, scope: !4648)
!4654 = !DILocation(line: 146, column: 9, scope: !4648)
!4655 = !DILocation(line: 286, column: 1, scope: !4600)
!4656 = !DISubprogram(name: "mbsinit", scope: !4657, file: !4657, line: 293, type: !4658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!4657 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!52, !4660}
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !742)
!4662 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !824, file: !824, line: 27, type: !4091, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !4663)
!4663 = !{!4664, !4665, !4666, !4667}
!4664 = !DILocalVariable(name: "ptr", arg: 1, scope: !4662, file: !824, line: 27, type: !102)
!4665 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4662, file: !824, line: 27, type: !104)
!4666 = !DILocalVariable(name: "size", arg: 3, scope: !4662, file: !824, line: 27, type: !104)
!4667 = !DILocalVariable(name: "nbytes", scope: !4662, file: !824, line: 29, type: !104)
!4668 = !DILocation(line: 0, scope: !4662)
!4669 = !DILocation(line: 30, column: 7, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4662, file: !824, line: 30, column: 7)
!4671 = !DILocalVariable(name: "ptr", arg: 1, scope: !4672, file: !4183, line: 2057, type: !102)
!4672 = distinct !DISubprogram(name: "rpl_realloc", scope: !4183, file: !4183, line: 2057, type: !4175, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !4673)
!4673 = !{!4671, !4674}
!4674 = !DILocalVariable(name: "size", arg: 2, scope: !4672, file: !4183, line: 2057, type: !104)
!4675 = !DILocation(line: 0, scope: !4672, inlinedAt: !4676)
!4676 = distinct !DILocation(line: 37, column: 10, scope: !4662)
!4677 = !DILocation(line: 2059, column: 24, scope: !4672, inlinedAt: !4676)
!4678 = !DILocation(line: 2059, column: 10, scope: !4672, inlinedAt: !4676)
!4679 = !DILocation(line: 37, column: 3, scope: !4662)
!4680 = !DILocation(line: 32, column: 7, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4670, file: !824, line: 31, column: 5)
!4682 = !DILocation(line: 32, column: 13, scope: !4681)
!4683 = !DILocation(line: 33, column: 7, scope: !4681)
!4684 = !DILocation(line: 38, column: 1, scope: !4662)
!4685 = distinct !DISubprogram(name: "hard_locale", scope: !754, file: !754, line: 28, type: !2156, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4686)
!4686 = !{!4687, !4688}
!4687 = !DILocalVariable(name: "category", arg: 1, scope: !4685, file: !754, line: 28, type: !52)
!4688 = !DILocalVariable(name: "locale", scope: !4685, file: !754, line: 30, type: !4689)
!4689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4690)
!4690 = !{!4691}
!4691 = !DISubrange(count: 257)
!4692 = !DILocation(line: 0, scope: !4685)
!4693 = !DILocation(line: 30, column: 3, scope: !4685)
!4694 = !DILocation(line: 30, column: 8, scope: !4685)
!4695 = !DILocation(line: 32, column: 7, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4685, file: !754, line: 32, column: 7)
!4697 = !DILocation(line: 32, column: 7, scope: !4685)
!4698 = !DILocalVariable(name: "__s1", arg: 1, scope: !4699, file: !927, line: 1359, type: !107)
!4699 = distinct !DISubprogram(name: "streq", scope: !927, file: !927, line: 1359, type: !928, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4700)
!4700 = !{!4698, !4701}
!4701 = !DILocalVariable(name: "__s2", arg: 2, scope: !4699, file: !927, line: 1359, type: !107)
!4702 = !DILocation(line: 0, scope: !4699, inlinedAt: !4703)
!4703 = distinct !DILocation(line: 35, column: 9, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4685, file: !754, line: 35, column: 7)
!4705 = !DILocation(line: 1361, column: 11, scope: !4699, inlinedAt: !4703)
!4706 = !DILocation(line: 1361, column: 10, scope: !4699, inlinedAt: !4703)
!4707 = !DILocation(line: 35, column: 29, scope: !4704)
!4708 = !DILocation(line: 0, scope: !4699, inlinedAt: !4709)
!4709 = distinct !DILocation(line: 35, column: 32, scope: !4704)
!4710 = !DILocation(line: 1361, column: 11, scope: !4699, inlinedAt: !4709)
!4711 = !DILocation(line: 1361, column: 10, scope: !4699, inlinedAt: !4709)
!4712 = !DILocation(line: 35, column: 7, scope: !4685)
!4713 = !DILocation(line: 46, column: 3, scope: !4685)
!4714 = !DILocation(line: 47, column: 1, scope: !4685)
!4715 = distinct !DISubprogram(name: "setlocale_null_r", scope: !829, file: !829, line: 154, type: !4716, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !828, retainedNodes: !4718)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!52, !52, !54, !104}
!4718 = !{!4719, !4720, !4721}
!4719 = !DILocalVariable(name: "category", arg: 1, scope: !4715, file: !829, line: 154, type: !52)
!4720 = !DILocalVariable(name: "buf", arg: 2, scope: !4715, file: !829, line: 154, type: !54)
!4721 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4715, file: !829, line: 154, type: !104)
!4722 = !DILocation(line: 0, scope: !4715)
!4723 = !DILocation(line: 159, column: 10, scope: !4715)
!4724 = !DILocation(line: 159, column: 3, scope: !4715)
!4725 = distinct !DISubprogram(name: "setlocale_null", scope: !829, file: !829, line: 186, type: !4726, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !828, retainedNodes: !4728)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!107, !52}
!4728 = !{!4729}
!4729 = !DILocalVariable(name: "category", arg: 1, scope: !4725, file: !829, line: 186, type: !52)
!4730 = !DILocation(line: 0, scope: !4725)
!4731 = !DILocation(line: 189, column: 10, scope: !4725)
!4732 = !DILocation(line: 189, column: 3, scope: !4725)
!4733 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !831, file: !831, line: 35, type: !4726, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4734)
!4734 = !{!4735, !4736}
!4735 = !DILocalVariable(name: "category", arg: 1, scope: !4733, file: !831, line: 35, type: !52)
!4736 = !DILocalVariable(name: "result", scope: !4733, file: !831, line: 37, type: !107)
!4737 = !DILocation(line: 0, scope: !4733)
!4738 = !DILocation(line: 37, column: 24, scope: !4733)
!4739 = !DILocation(line: 62, column: 3, scope: !4733)
!4740 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !831, file: !831, line: 66, type: !4716, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4741)
!4741 = !{!4742, !4743, !4744, !4745, !4746}
!4742 = !DILocalVariable(name: "category", arg: 1, scope: !4740, file: !831, line: 66, type: !52)
!4743 = !DILocalVariable(name: "buf", arg: 2, scope: !4740, file: !831, line: 66, type: !54)
!4744 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4740, file: !831, line: 66, type: !104)
!4745 = !DILocalVariable(name: "result", scope: !4740, file: !831, line: 111, type: !107)
!4746 = !DILocalVariable(name: "length", scope: !4747, file: !831, line: 125, type: !104)
!4747 = distinct !DILexicalBlock(scope: !4748, file: !831, line: 124, column: 5)
!4748 = distinct !DILexicalBlock(scope: !4740, file: !831, line: 113, column: 7)
!4749 = !DILocation(line: 0, scope: !4740)
!4750 = !DILocation(line: 0, scope: !4733, inlinedAt: !4751)
!4751 = distinct !DILocation(line: 111, column: 24, scope: !4740)
!4752 = !DILocation(line: 37, column: 24, scope: !4733, inlinedAt: !4751)
!4753 = !DILocation(line: 113, column: 14, scope: !4748)
!4754 = !DILocation(line: 113, column: 7, scope: !4740)
!4755 = !DILocation(line: 116, column: 19, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4757, file: !831, line: 116, column: 11)
!4757 = distinct !DILexicalBlock(scope: !4748, file: !831, line: 114, column: 5)
!4758 = !DILocation(line: 116, column: 11, scope: !4757)
!4759 = !DILocation(line: 120, column: 16, scope: !4756)
!4760 = !DILocation(line: 120, column: 9, scope: !4756)
!4761 = !DILocation(line: 125, column: 23, scope: !4747)
!4762 = !DILocation(line: 0, scope: !4747)
!4763 = !DILocation(line: 126, column: 18, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4747, file: !831, line: 126, column: 11)
!4765 = !DILocation(line: 126, column: 11, scope: !4747)
!4766 = !DILocation(line: 128, column: 39, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4764, file: !831, line: 127, column: 9)
!4768 = !DILocalVariable(name: "__dest", arg: 1, scope: !4769, file: !2359, line: 26, type: !3905)
!4769 = distinct !DISubprogram(name: "memcpy", scope: !2359, file: !2359, line: 26, type: !3903, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4770)
!4770 = !{!4768, !4771, !4772}
!4771 = !DILocalVariable(name: "__src", arg: 2, scope: !4769, file: !2359, line: 26, type: !1058)
!4772 = !DILocalVariable(name: "__len", arg: 3, scope: !4769, file: !2359, line: 26, type: !104)
!4773 = !DILocation(line: 0, scope: !4769, inlinedAt: !4774)
!4774 = distinct !DILocation(line: 128, column: 11, scope: !4767)
!4775 = !DILocation(line: 29, column: 10, scope: !4769, inlinedAt: !4774)
!4776 = !DILocation(line: 129, column: 11, scope: !4767)
!4777 = !DILocation(line: 133, column: 23, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4779, file: !831, line: 133, column: 15)
!4779 = distinct !DILexicalBlock(scope: !4764, file: !831, line: 132, column: 9)
!4780 = !DILocation(line: 133, column: 15, scope: !4779)
!4781 = !DILocation(line: 138, column: 44, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4778, file: !831, line: 134, column: 13)
!4783 = !DILocation(line: 0, scope: !4769, inlinedAt: !4784)
!4784 = distinct !DILocation(line: 138, column: 15, scope: !4782)
!4785 = !DILocation(line: 29, column: 10, scope: !4769, inlinedAt: !4784)
!4786 = !DILocation(line: 139, column: 15, scope: !4782)
!4787 = !DILocation(line: 139, column: 32, scope: !4782)
!4788 = !DILocation(line: 140, column: 13, scope: !4782)
!4789 = !DILocation(line: 0, scope: !4748)
!4790 = !DILocation(line: 145, column: 1, scope: !4740)
