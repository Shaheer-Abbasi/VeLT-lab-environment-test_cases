; ModuleID = 'src/hostid.bc'
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
@.str.1 = private unnamed_addr constant [89 x i8] c"Usage: %s [OPTION]\0APrint the numeric identifier (in hexadecimal) for the current host.\0A\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [7 x i8] c"hostid\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !27
@.str.6 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1, !dbg !57
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !62
@.str.12 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !97
@.str.13 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !102
@.str.14 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !104
@.str.15 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !109
@.str.29 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !146
@.str.30 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !148
@.str.31 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !150
@.str.32 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !152
@.str.33 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !157
@.str.34 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !162
@.str.35 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !167
@.str.36 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !169
@.str.37 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !171
@.str.38 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !173
@.str.42 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !187
@.str.43 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !189
@.str.44 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !194
@.str.45 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !199
@.str.46 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !204
@.str.16 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !288
@Version = dso_local local_unnamed_addr global ptr @.str.16, align 8, !dbg !291
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !295
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !308
@.str.19 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !300
@.str.1.20 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !302
@.str.2.21 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !304
@.str.3.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !306
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !310
@stderr = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !316
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !348
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !318
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !338
@.str.1.29 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !340
@.str.2.31 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !342
@.str.3.30 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !344
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !346
@.str.4.24 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !350
@.str.5.25 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !352
@.str.6.26 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !357
@opterr = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !362
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.40, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.41, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !365
@optind = external local_unnamed_addr global i32, align 4
@.str.1.44 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !369
@.str.2.40 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !371
@.str.3.41 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !373
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !385
@.str.49 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !391
@.str.1.50 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !393
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !395
@.str.53 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !426
@.str.1.54 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !429
@.str.2.55 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !431
@.str.3.56 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !433
@.str.4.57 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !435
@.str.5.58 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !437
@.str.6.59 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !439
@.str.7.60 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !441
@.str.8.61 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !443
@.str.9.62 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !445
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.53, ptr @.str.1.54, ptr @.str.2.55, ptr @.str.3.56, ptr @.str.4.57, ptr @.str.5.58, ptr @.str.6.59, ptr @.str.7.60, ptr @.str.8.61, ptr @.str.9.62, ptr null], align 16, !dbg !447
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !472
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !486
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !524
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !531
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !488
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !533
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !476
@.str.10.65 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !493
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !495
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !497
@.str.13.64 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !499
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !501
@.str.71 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !539
@.str.1.72 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !542
@.str.2.73 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !544
@.str.3.74 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !546
@.str.4.75 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !548
@.str.5.76 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !550
@.str.6.77 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !555
@.str.7.78 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !560
@.str.8.79 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !562
@.str.9.80 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !567
@.str.10.81 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !572
@.str.11.82 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !577
@.str.12.83 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !582
@.str.13.84 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !584
@.str.14.85 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !589
@.str.15.86 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !594
@.str.16.87 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !599
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !604
@.str.18 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !606
@.str.19.92 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !608
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !610
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !612
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !614
@.str.23.93 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !616
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !621
@exit_failure = dso_local global i32 1, align 4, !dbg !629
@.str.106 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !635
@.str.1.104 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !638
@.str.2.105 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !640
@.str.117 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !642
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !645
@.str.1.122 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !660

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !734 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !738, metadata !DIExpression()), !dbg !739
  %2 = icmp eq i32 %0, 0, !dbg !740
  br i1 %2, label %8, label %3, !dbg !742

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !743, !tbaa !745
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !743
  %6 = load ptr, ptr @program_name, align 8, !dbg !743, !tbaa !745
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !743
  br label %28, !dbg !743

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !749
  %10 = load ptr, ptr @program_name, align 8, !dbg !749, !tbaa !745
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #36, !dbg !749
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #36, !dbg !751
  tail call fastcc void @oputs_(ptr noundef %12), !dbg !751
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !752
  tail call fastcc void @oputs_(ptr noundef %13), !dbg !752
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !753, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !765, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata ptr poison, metadata !765, metadata !DIExpression()), !dbg !770
  tail call void @emit_bug_reporting_address() #36, !dbg !772
  %14 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !773
  call void @llvm.dbg.value(metadata ptr %14, metadata !768, metadata !DIExpression()), !dbg !770
  %15 = icmp eq ptr %14, null, !dbg !774
  br i1 %15, label %23, label %16, !dbg !776

16:                                               ; preds = %8
  %17 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(4) @.str.42, i64 noundef 3) #37, !dbg !777
  %18 = icmp eq i32 %17, 0, !dbg !777
  br i1 %18, label %23, label %19, !dbg !778

19:                                               ; preds = %16
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #36, !dbg !779
  %21 = load ptr, ptr @stdout, align 8, !dbg !779, !tbaa !745
  %22 = tail call i32 @fputs_unlocked(ptr noundef %20, ptr noundef %21), !dbg !779
  br label %23, !dbg !781

23:                                               ; preds = %8, %16, %19
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !765, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !769, metadata !DIExpression()), !dbg !770
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #36, !dbg !782
  %25 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %24, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.2) #36, !dbg !782
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #36, !dbg !783
  %27 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %26, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.46) #36, !dbg !783
  br label %28

28:                                               ; preds = %23, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !784
  unreachable, !dbg !784
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !785 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !790 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !796 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !64 {
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !210, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata ptr %0, metadata !211, metadata !DIExpression()), !dbg !799
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !800, !tbaa !801
  %3 = icmp eq i32 %2, -1, !dbg !803
  br i1 %3, label %4, label %16, !dbg !804

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.12) #36, !dbg !805
  call void @llvm.dbg.value(metadata ptr %5, metadata !212, metadata !DIExpression()), !dbg !806
  %6 = icmp eq ptr %5, null, !dbg !807
  br i1 %6, label %14, label %7, !dbg !808

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !809, !tbaa !810
  %9 = icmp eq i8 %8, 0, !dbg !809
  br i1 %9, label %14, label %10, !dbg !811

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !812, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata ptr @.str.13, metadata !818, metadata !DIExpression()), !dbg !819
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.13) #37, !dbg !821
  %12 = icmp eq i32 %11, 0, !dbg !822
  %13 = zext i1 %12 to i32, !dbg !811
  br label %14, !dbg !811

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !823, !tbaa !801
  br label %16, !dbg !824

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !825
  %18 = icmp eq i32 %17, 0, !dbg !825
  br i1 %18, label %22, label %19, !dbg !827

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !828, !tbaa !745
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !828
  br label %128, !dbg !830

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !215, metadata !DIExpression()), !dbg !799
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.14) #37, !dbg !831
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !832
  call void @llvm.dbg.value(metadata ptr %24, metadata !217, metadata !DIExpression()), !dbg !799
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !833
  call void @llvm.dbg.value(metadata ptr %25, metadata !218, metadata !DIExpression()), !dbg !799
  %26 = icmp eq ptr %25, null, !dbg !834
  br i1 %26, label %58, label %27, !dbg !835

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !836
  br i1 %28, label %58, label %29, !dbg !837

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !219, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i64 0, metadata !223, metadata !DIExpression()), !dbg !838
  %30 = icmp ult ptr %24, %25, !dbg !839
  br i1 %30, label %31, label %52, !dbg !840

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !799
  %33 = load ptr, ptr %32, align 8, !tbaa !745
  br label %34, !dbg !840

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !219, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i64 %36, metadata !223, metadata !DIExpression()), !dbg !838
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !841
  call void @llvm.dbg.value(metadata ptr %37, metadata !219, metadata !DIExpression()), !dbg !838
  %38 = load i8, ptr %35, align 1, !dbg !841, !tbaa !810
  %39 = sext i8 %38 to i64, !dbg !841
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !841
  %41 = load i16, ptr %40, align 2, !dbg !841, !tbaa !842
  %42 = freeze i16 %41, !dbg !844
  %43 = lshr i16 %42, 13, !dbg !844
  %44 = and i16 %43, 1, !dbg !844
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !845
  call void @llvm.dbg.value(metadata i64 %46, metadata !223, metadata !DIExpression()), !dbg !838
  %47 = icmp ult ptr %37, %25, !dbg !839
  %48 = icmp ult i64 %46, 2, !dbg !846
  %49 = select i1 %47, i1 %48, i1 false, !dbg !846
  br i1 %49, label %34, label %50, !dbg !840, !llvm.loop !847

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !849
  br i1 %51, label %52, label %54, !dbg !851

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !851

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !851
  call void @llvm.dbg.value(metadata i8 %57, metadata !215, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata ptr %56, metadata !218, metadata !DIExpression()), !dbg !799
  br label %58, !dbg !852

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !799
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !799
  call void @llvm.dbg.value(metadata i8 %60, metadata !215, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata ptr %59, metadata !218, metadata !DIExpression()), !dbg !799
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.15) #37, !dbg !853
  call void @llvm.dbg.value(metadata i64 %61, metadata !224, metadata !DIExpression()), !dbg !799
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !854
  call void @llvm.dbg.value(metadata ptr %62, metadata !225, metadata !DIExpression()), !dbg !799
  br label %63, !dbg !855

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !799
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !799
  call void @llvm.dbg.value(metadata i8 %65, metadata !215, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata ptr %64, metadata !225, metadata !DIExpression()), !dbg !799
  %66 = load i8, ptr %64, align 1, !dbg !856, !tbaa !810
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !857

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !858
  %69 = load i8, ptr %68, align 1, !dbg !861, !tbaa !810
  %70 = icmp eq i8 %69, 45, !dbg !862
  %71 = select i1 %70, i8 0, i8 %65, !dbg !863
  br label %72, !dbg !863

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !799
  call void @llvm.dbg.value(metadata i8 %73, metadata !215, metadata !DIExpression()), !dbg !799
  %74 = tail call ptr @__ctype_b_loc() #39, !dbg !864
  %75 = load ptr, ptr %74, align 8, !dbg !864, !tbaa !745
  %76 = sext i8 %66 to i64, !dbg !864
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !864
  %78 = load i16, ptr %77, align 2, !dbg !864, !tbaa !842
  %79 = and i16 %78, 8192, !dbg !864
  %80 = icmp eq i16 %79, 0, !dbg !864
  br i1 %80, label %96, label %81, !dbg !866

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !867
  br i1 %82, label %98, label %83, !dbg !870

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !871
  %85 = load i8, ptr %84, align 1, !dbg !871, !tbaa !810
  %86 = sext i8 %85 to i64, !dbg !871
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !871
  %88 = load i16, ptr %87, align 2, !dbg !871, !tbaa !842
  %89 = and i16 %88, 8192, !dbg !871
  %90 = icmp eq i16 %89, 0, !dbg !871
  br i1 %90, label %91, label %98, !dbg !872

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !873
  %93 = icmp ne i8 %92, 0, !dbg !873
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !875
  br i1 %95, label %96, label %98, !dbg !875

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !876
  call void @llvm.dbg.value(metadata ptr %97, metadata !225, metadata !DIExpression()), !dbg !799
  br label %63, !dbg !855, !llvm.loop !877

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !879
  %100 = load ptr, ptr @stdout, align 8, !dbg !879, !tbaa !745
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !879
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !283, metadata !DIExpression()), !dbg !799
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.29, i64 noundef 6) #37, !dbg !900
  %103 = icmp eq i32 %102, 0, !dbg !900
  br i1 %103, label %107, label %104, !dbg !902

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.30, i64 noundef 9) #37, !dbg !903
  %106 = icmp eq i32 %105, 0, !dbg !903
  br i1 %106, label %107, label %110, !dbg !904

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !905
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.2, i32 noundef %108, ptr noundef %59) #36, !dbg !905
  br label %113, !dbg !907

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !908
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef %111, ptr noundef %59) #36, !dbg !908
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !910, !tbaa !745
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.35, ptr noundef %114), !dbg !910
  %116 = load ptr, ptr @stdout, align 8, !dbg !911, !tbaa !745
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %116), !dbg !911
  %118 = ptrtoint ptr %64 to i64, !dbg !912
  %119 = sub i64 %118, %99, !dbg !912
  %120 = load ptr, ptr @stdout, align 8, !dbg !912, !tbaa !745
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !912
  %122 = load ptr, ptr @stdout, align 8, !dbg !913, !tbaa !745
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %122), !dbg !913
  %124 = load ptr, ptr @stdout, align 8, !dbg !914, !tbaa !745
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %124), !dbg !914
  %126 = load ptr, ptr @stdout, align 8, !dbg !915, !tbaa !745
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !915
  br label %128, !dbg !916

128:                                              ; preds = %113, %19
  ret void, !dbg !916
}

; Function Attrs: nounwind
declare !dbg !917 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !921 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !925 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !929 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !931 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !934 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !937 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !940 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !943 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !949 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !950 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !956 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !961, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata ptr %1, metadata !962, metadata !DIExpression()), !dbg !964
  %3 = load ptr, ptr %1, align 8, !dbg !965, !tbaa !745
  tail call void @set_program_name(ptr noundef %3) #36, !dbg !966
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.5) #36, !dbg !967
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #36, !dbg !968
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.6) #36, !dbg !969
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !970
  %8 = load ptr, ptr @Version, align 8, !dbg !971, !tbaa !745
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.9) #36, !dbg !972
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8, ptr noundef %8, i1 noundef zeroext true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #36, !dbg !973
  %10 = load i32, ptr @optind, align 4, !dbg !974, !tbaa !801
  %11 = icmp slt i32 %10, %0, !dbg !976
  br i1 %11, label %12, label %19, !dbg !977

12:                                               ; preds = %2
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #36, !dbg !978
  %14 = load i32, ptr @optind, align 4, !dbg !978, !tbaa !801
  %15 = sext i32 %14 to i64, !dbg !978
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !978
  %17 = load ptr, ptr %16, align 8, !dbg !978, !tbaa !745
  %18 = tail call ptr @quote(ptr noundef %17) #36, !dbg !978
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13, ptr noundef %18) #36, !dbg !978
  tail call void @usage(i32 noundef 1) #40, !dbg !980
  unreachable, !dbg !980

19:                                               ; preds = %2
  %20 = tail call i64 @gethostid() #36, !dbg !981
  %21 = trunc i64 %20 to i32, !dbg !981
  call void @llvm.dbg.value(metadata i32 %21, metadata !963, metadata !DIExpression()), !dbg !964
  %22 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %21) #36, !dbg !982
  ret i32 0, !dbg !983
}

; Function Attrs: nounwind
declare !dbg !984 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !987 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !988 i32 @atexit(ptr noundef) local_unnamed_addr #2

declare !dbg !991 i64 @gethostid() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !995 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !997, metadata !DIExpression()), !dbg !998
  store ptr %0, ptr @file_name, align 8, !dbg !999, !tbaa !745
  ret void, !dbg !1000
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1001 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1005, metadata !DIExpression()), !dbg !1006
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1007, !tbaa !1008
  ret void, !dbg !1010
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1011 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1016, !tbaa !745
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1017
  %3 = icmp eq i32 %2, 0, !dbg !1018
  br i1 %3, label %22, label %4, !dbg !1019

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1020, !tbaa !1008, !range !1021, !noundef !789
  %6 = icmp eq i8 %5, 0, !dbg !1020
  br i1 %6, label %11, label %7, !dbg !1022

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1023
  %9 = load i32, ptr %8, align 4, !dbg !1023, !tbaa !801
  %10 = icmp eq i32 %9, 32, !dbg !1024
  br i1 %10, label %22, label %11, !dbg !1025

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1.20, i32 noundef 5) #36, !dbg !1026
  call void @llvm.dbg.value(metadata ptr %12, metadata !1013, metadata !DIExpression()), !dbg !1027
  %13 = load ptr, ptr @file_name, align 8, !dbg !1028, !tbaa !745
  %14 = icmp eq ptr %13, null, !dbg !1028
  %15 = tail call ptr @__errno_location() #39, !dbg !1030
  %16 = load i32, ptr %15, align 4, !dbg !1030, !tbaa !801
  br i1 %14, label %19, label %17, !dbg !1031

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1032
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.21, ptr noundef %18, ptr noundef %12) #36, !dbg !1032
  br label %20, !dbg !1032

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.22, ptr noundef %12) #36, !dbg !1033
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1034, !tbaa !801
  tail call void @_exit(i32 noundef %21) #38, !dbg !1035
  unreachable, !dbg !1035

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1036, !tbaa !745
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1038
  %25 = icmp eq i32 %24, 0, !dbg !1039
  br i1 %25, label %28, label %26, !dbg !1040

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1041, !tbaa !801
  tail call void @_exit(i32 noundef %27) #38, !dbg !1042
  unreachable, !dbg !1042

28:                                               ; preds = %22
  ret void, !dbg !1043
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1044 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1048 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !dbg !1049 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1053, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i32 %1, metadata !1054, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata ptr %2, metadata !1055, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata ptr %3, metadata !1056, metadata !DIExpression()), !dbg !1057
  tail call fastcc void @flush_stdout(), !dbg !1058
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1059, !tbaa !745
  %6 = icmp eq ptr %5, null, !dbg !1059
  br i1 %6, label %8, label %7, !dbg !1061

7:                                                ; preds = %4
  tail call void %5() #36, !dbg !1062
  br label %12, !dbg !1062

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1063, !tbaa !745
  %10 = tail call ptr @getprogname() #37, !dbg !1063
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef %10) #36, !dbg !1063
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1065
  ret void, !dbg !1066
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1067 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1069, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata i32 1, metadata !1071, metadata !DIExpression()), !dbg !1076
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1079
  %2 = icmp slt i32 %1, 0, !dbg !1080
  br i1 %2, label %6, label %3, !dbg !1081

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1082, !tbaa !745
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1082
  br label %6, !dbg !1082

6:                                                ; preds = %3, %0
  ret void, !dbg !1083
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1084 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1086, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i32 %1, metadata !1087, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata ptr %2, metadata !1088, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata ptr %3, metadata !1089, metadata !DIExpression()), !dbg !1090
  %6 = load ptr, ptr @stderr, align 8, !dbg !1091, !tbaa !745
  call void @llvm.dbg.value(metadata ptr %6, metadata !1092, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr %2, metadata !1132, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr %3, metadata !1133, metadata !DIExpression()), !dbg !1134
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #36, !dbg !1136
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1137, !tbaa !801
  %9 = add i32 %8, 1, !dbg !1137
  store i32 %9, ptr @error_message_count, align 4, !dbg !1137, !tbaa !801
  %10 = icmp eq i32 %1, 0, !dbg !1138
  br i1 %10, label %20, label %11, !dbg !1140

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1141, metadata !DIExpression()), !dbg !1149
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1151
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1145, metadata !DIExpression()), !dbg !1152
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1153
  call void @llvm.dbg.value(metadata ptr %12, metadata !1144, metadata !DIExpression()), !dbg !1149
  %13 = icmp eq ptr %12, null, !dbg !1154
  br i1 %13, label %14, label %16, !dbg !1156

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.24, ptr noundef nonnull @.str.5.25, i32 noundef 5) #36, !dbg !1157
  call void @llvm.dbg.value(metadata ptr %15, metadata !1144, metadata !DIExpression()), !dbg !1149
  br label %16, !dbg !1158

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1149
  call void @llvm.dbg.value(metadata ptr %17, metadata !1144, metadata !DIExpression()), !dbg !1149
  %18 = load ptr, ptr @stderr, align 8, !dbg !1159, !tbaa !745
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.26, ptr noundef %17) #36, !dbg !1159
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1160
  br label %20, !dbg !1161

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1162, !tbaa !745
  call void @llvm.dbg.value(metadata i32 10, metadata !1163, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata ptr %21, metadata !1169, metadata !DIExpression()), !dbg !1170
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1172
  %23 = load ptr, ptr %22, align 8, !dbg !1172, !tbaa !1173
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1172
  %25 = load ptr, ptr %24, align 8, !dbg !1172, !tbaa !1176
  %26 = icmp ult ptr %23, %25, !dbg !1172
  br i1 %26, label %29, label %27, !dbg !1172, !prof !1177

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #36, !dbg !1172
  br label %31, !dbg !1172

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1172
  store ptr %30, ptr %22, align 8, !dbg !1172, !tbaa !1173
  store i8 10, ptr %23, align 1, !dbg !1172, !tbaa !810
  br label %31, !dbg !1172

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1178, !tbaa !745
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #36, !dbg !1178
  %34 = icmp eq i32 %0, 0, !dbg !1179
  br i1 %34, label %36, label %35, !dbg !1181

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #38, !dbg !1182
  unreachable, !dbg !1182

36:                                               ; preds = %31
  ret void, !dbg !1183
}

declare !dbg !1184 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1187 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1190 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1193 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1196 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1200 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1204, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i32 %1, metadata !1205, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata ptr %2, metadata !1206, metadata !DIExpression()), !dbg !1213
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #36, !dbg !1214
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1207, metadata !DIExpression()), !dbg !1215
  call void @llvm.va_start(ptr nonnull %4), !dbg !1216
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #41, !dbg !1217
  call void @llvm.va_end(ptr nonnull %4), !dbg !1218
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #36, !dbg !1219
  ret void, !dbg !1219
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !320 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !332, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i32 %1, metadata !333, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata ptr %2, metadata !334, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i32 %3, metadata !335, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata ptr %4, metadata !336, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata ptr %5, metadata !337, metadata !DIExpression()), !dbg !1220
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1221, !tbaa !801
  %8 = icmp eq i32 %7, 0, !dbg !1221
  br i1 %8, label %23, label %9, !dbg !1223

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1224, !tbaa !801
  %11 = icmp eq i32 %10, %3, !dbg !1227
  br i1 %11, label %12, label %22, !dbg !1228

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1229, !tbaa !745
  %14 = icmp eq ptr %13, %2, !dbg !1230
  br i1 %14, label %36, label %15, !dbg !1231

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1232
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1233
  br i1 %18, label %19, label %22, !dbg !1233

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1234
  %21 = icmp eq i32 %20, 0, !dbg !1235
  br i1 %21, label %36, label %22, !dbg !1236

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1237, !tbaa !745
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1238, !tbaa !801
  br label %23, !dbg !1239

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1240
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1241, !tbaa !745
  %25 = icmp eq ptr %24, null, !dbg !1241
  br i1 %25, label %27, label %26, !dbg !1243

26:                                               ; preds = %23
  tail call void %24() #36, !dbg !1244
  br label %31, !dbg !1244

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1245, !tbaa !745
  %29 = tail call ptr @getprogname() #37, !dbg !1245
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.29, ptr noundef %29) #36, !dbg !1245
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1247, !tbaa !745
  %33 = icmp eq ptr %2, null, !dbg !1247
  %34 = select i1 %33, ptr @.str.3.30, ptr @.str.2.31, !dbg !1247
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #36, !dbg !1247
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1248
  br label %36, !dbg !1249

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1249
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1250 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1254, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i32 %1, metadata !1255, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata ptr %2, metadata !1256, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i32 %3, metadata !1257, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata ptr %4, metadata !1258, metadata !DIExpression()), !dbg !1260
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #36, !dbg !1261
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1259, metadata !DIExpression()), !dbg !1262
  call void @llvm.va_start(ptr nonnull %6), !dbg !1263
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #41, !dbg !1264
  call void @llvm.va_end(ptr nonnull %6), !dbg !1265
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #36, !dbg !1266
  ret void, !dbg !1266
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1267 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1270, !tbaa !745
  ret ptr %1, !dbg !1271
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1272 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1277, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata ptr %1, metadata !1278, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata ptr %2, metadata !1279, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata ptr %3, metadata !1280, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata ptr %4, metadata !1281, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata ptr %5, metadata !1282, metadata !DIExpression()), !dbg !1303
  %8 = load i32, ptr @opterr, align 4, !dbg !1304, !tbaa !801
  call void @llvm.dbg.value(metadata i32 %8, metadata !1283, metadata !DIExpression()), !dbg !1303
  store i32 0, ptr @opterr, align 4, !dbg !1305, !tbaa !801
  %9 = icmp eq i32 %0, 2, !dbg !1306
  br i1 %9, label %10, label %15, !dbg !1307

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %11, metadata !1284, metadata !DIExpression()), !dbg !1309
  switch i32 %11, label %15 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1310

12:                                               ; preds = %10
  tail call void %5(i32 noundef 0) #36, !dbg !1311
  br label %15, !dbg !1312

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #36, !dbg !1313
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1287, metadata !DIExpression()), !dbg !1314
  call void @llvm.va_start(ptr nonnull %7), !dbg !1315
  %14 = load ptr, ptr @stdout, align 8, !dbg !1316, !tbaa !745
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #36, !dbg !1317
  call void @exit(i32 noundef 0) #38, !dbg !1318
  unreachable, !dbg !1318

15:                                               ; preds = %12, %10, %6
  store i32 %8, ptr @opterr, align 4, !dbg !1319, !tbaa !801
  store i32 0, ptr @optind, align 4, !dbg !1320, !tbaa !801
  ret void, !dbg !1321
}

; Function Attrs: nounwind
declare !dbg !1322 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1328 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1332, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata ptr %1, metadata !1333, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata ptr %2, metadata !1334, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata ptr %3, metadata !1335, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata ptr %4, metadata !1336, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i1 %5, metadata !1337, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1347
  call void @llvm.dbg.value(metadata ptr %6, metadata !1338, metadata !DIExpression()), !dbg !1347
  %9 = load i32, ptr @opterr, align 4, !dbg !1348, !tbaa !801
  call void @llvm.dbg.value(metadata i32 %9, metadata !1339, metadata !DIExpression()), !dbg !1347
  store i32 1, ptr @opterr, align 4, !dbg !1349, !tbaa !801
  %10 = select i1 %5, ptr @.str.1.44, ptr @.str.39, !dbg !1350
  call void @llvm.dbg.value(metadata ptr %10, metadata !1340, metadata !DIExpression()), !dbg !1347
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1351
  call void @llvm.dbg.value(metadata i32 %11, metadata !1341, metadata !DIExpression()), !dbg !1347
  switch i32 %11, label %14 [
    i32 -1, label %18
    i32 104, label %16
    i32 118, label %12
  ], !dbg !1352

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #36, !dbg !1353
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1342, metadata !DIExpression()), !dbg !1354
  call void @llvm.va_start(ptr nonnull %8), !dbg !1355
  %13 = load ptr, ptr @stdout, align 8, !dbg !1356, !tbaa !745
  call void @version_etc_va(ptr noundef %13, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #36, !dbg !1357
  call void @exit(i32 noundef 0) #38, !dbg !1358
  unreachable, !dbg !1358

14:                                               ; preds = %7
  %15 = load volatile i32, ptr @exit_failure, align 4, !dbg !1359, !tbaa !801
  br label %16, !dbg !1360

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %7 ]
  tail call void %6(i32 noundef %17) #36, !dbg !1361
  br label %18, !dbg !1362

18:                                               ; preds = %16, %7
  store i32 %9, ptr @opterr, align 4, !dbg !1362, !tbaa !801
  ret void, !dbg !1363
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1364 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1366, metadata !DIExpression()), !dbg !1369
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1370
  call void @llvm.dbg.value(metadata ptr %2, metadata !1367, metadata !DIExpression()), !dbg !1369
  %3 = icmp eq ptr %2, null, !dbg !1371
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1371
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1371
  call void @llvm.dbg.value(metadata ptr %5, metadata !1368, metadata !DIExpression()), !dbg !1369
  %6 = ptrtoint ptr %5 to i64, !dbg !1372
  %7 = ptrtoint ptr %0 to i64, !dbg !1372
  %8 = sub i64 %6, %7, !dbg !1372
  %9 = icmp sgt i64 %8, 6, !dbg !1374
  br i1 %9, label %10, label %19, !dbg !1375

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1376
  call void @llvm.dbg.value(metadata ptr %11, metadata !1377, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata ptr @.str.49, metadata !1382, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i64 7, metadata !1383, metadata !DIExpression()), !dbg !1384
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.49, i64 7), !dbg !1386
  %13 = icmp eq i32 %12, 0, !dbg !1387
  br i1 %13, label %14, label %19, !dbg !1388

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1366, metadata !DIExpression()), !dbg !1369
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.50, i64 noundef 3) #37, !dbg !1389
  %16 = icmp eq i32 %15, 0, !dbg !1392
  %17 = select i1 %16, i64 3, i64 0, !dbg !1393
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1393
  br label %19, !dbg !1393

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1369
  call void @llvm.dbg.value(metadata ptr %21, metadata !1368, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata ptr %20, metadata !1366, metadata !DIExpression()), !dbg !1369
  store ptr %20, ptr @program_name, align 8, !dbg !1394, !tbaa !745
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1395, !tbaa !745
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1396, !tbaa !745
  ret void, !dbg !1397
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1398 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !397 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata ptr %1, metadata !405, metadata !DIExpression()), !dbg !1399
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1400
  call void @llvm.dbg.value(metadata ptr %5, metadata !406, metadata !DIExpression()), !dbg !1399
  %6 = icmp eq ptr %5, %0, !dbg !1401
  br i1 %6, label %7, label %14, !dbg !1403

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1404
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1405
  call void @llvm.dbg.declare(metadata ptr %4, metadata !412, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata ptr %4, metadata !1407, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata ptr %4, metadata !1416, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i32 0, metadata !1422, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i64 8, metadata !1423, metadata !DIExpression()), !dbg !1424
  store i64 0, ptr %4, align 8, !dbg !1426
  call void @llvm.dbg.value(metadata ptr %3, metadata !407, metadata !DIExpression(DW_OP_deref)), !dbg !1399
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1427
  %9 = icmp eq i64 %8, 2, !dbg !1429
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !407, metadata !DIExpression()), !dbg !1399
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1430
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1399
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1431
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1431
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1399
  ret ptr %15, !dbg !1431
}

; Function Attrs: nounwind
declare !dbg !1432 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1438 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1443, metadata !DIExpression()), !dbg !1446
  %2 = tail call ptr @__errno_location() #39, !dbg !1447
  %3 = load i32, ptr %2, align 4, !dbg !1447, !tbaa !801
  call void @llvm.dbg.value(metadata i32 %3, metadata !1444, metadata !DIExpression()), !dbg !1446
  %4 = icmp eq ptr %0, null, !dbg !1448
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1448
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1449
  call void @llvm.dbg.value(metadata ptr %6, metadata !1445, metadata !DIExpression()), !dbg !1446
  store i32 %3, ptr %2, align 4, !dbg !1450, !tbaa !801
  ret ptr %6, !dbg !1451
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1452 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1458, metadata !DIExpression()), !dbg !1459
  %2 = icmp eq ptr %0, null, !dbg !1460
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1460
  %4 = load i32, ptr %3, align 8, !dbg !1461, !tbaa !1462
  ret i32 %4, !dbg !1464
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1465 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1469, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %1, metadata !1470, metadata !DIExpression()), !dbg !1471
  %3 = icmp eq ptr %0, null, !dbg !1472
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1472
  store i32 %1, ptr %4, align 8, !dbg !1473, !tbaa !1462
  ret void, !dbg !1474
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1475 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1479, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %1, metadata !1480, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i32 %2, metadata !1481, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %1, metadata !1482, metadata !DIExpression()), !dbg !1487
  %4 = icmp eq ptr %0, null, !dbg !1488
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1488
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1489
  %7 = lshr i8 %1, 5, !dbg !1490
  %8 = zext i8 %7 to i64, !dbg !1490
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1491
  call void @llvm.dbg.value(metadata ptr %9, metadata !1483, metadata !DIExpression()), !dbg !1487
  %10 = and i8 %1, 31, !dbg !1492
  %11 = zext i8 %10 to i32, !dbg !1492
  call void @llvm.dbg.value(metadata i32 %11, metadata !1485, metadata !DIExpression()), !dbg !1487
  %12 = load i32, ptr %9, align 4, !dbg !1493, !tbaa !801
  %13 = lshr i32 %12, %11, !dbg !1494
  %14 = and i32 %13, 1, !dbg !1495
  call void @llvm.dbg.value(metadata i32 %14, metadata !1486, metadata !DIExpression()), !dbg !1487
  %15 = xor i32 %13, %2, !dbg !1496
  %16 = and i32 %15, 1, !dbg !1496
  %17 = shl nuw i32 %16, %11, !dbg !1497
  %18 = xor i32 %17, %12, !dbg !1498
  store i32 %18, ptr %9, align 4, !dbg !1498, !tbaa !801
  ret i32 %14, !dbg !1499
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1500 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1504, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i32 %1, metadata !1505, metadata !DIExpression()), !dbg !1507
  %3 = icmp eq ptr %0, null, !dbg !1508
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1510
  call void @llvm.dbg.value(metadata ptr %4, metadata !1504, metadata !DIExpression()), !dbg !1507
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1511
  %6 = load i32, ptr %5, align 4, !dbg !1511, !tbaa !1512
  call void @llvm.dbg.value(metadata i32 %6, metadata !1506, metadata !DIExpression()), !dbg !1507
  store i32 %1, ptr %5, align 4, !dbg !1513, !tbaa !1512
  ret i32 %6, !dbg !1514
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1515 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1519, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata ptr %1, metadata !1520, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata ptr %2, metadata !1521, metadata !DIExpression()), !dbg !1522
  %4 = icmp eq ptr %0, null, !dbg !1523
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1525
  call void @llvm.dbg.value(metadata ptr %5, metadata !1519, metadata !DIExpression()), !dbg !1522
  store i32 10, ptr %5, align 8, !dbg !1526, !tbaa !1462
  %6 = icmp ne ptr %1, null, !dbg !1527
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1529
  br i1 %8, label %10, label %9, !dbg !1529

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1530
  unreachable, !dbg !1530

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1531
  store ptr %1, ptr %11, align 8, !dbg !1532, !tbaa !1533
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1534
  store ptr %2, ptr %12, align 8, !dbg !1535, !tbaa !1536
  ret void, !dbg !1537
}

; Function Attrs: noreturn nounwind
declare !dbg !1538 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1539 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1543, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i64 %1, metadata !1544, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata ptr %2, metadata !1545, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i64 %3, metadata !1546, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata ptr %4, metadata !1547, metadata !DIExpression()), !dbg !1551
  %6 = icmp eq ptr %4, null, !dbg !1552
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1552
  call void @llvm.dbg.value(metadata ptr %7, metadata !1548, metadata !DIExpression()), !dbg !1551
  %8 = tail call ptr @__errno_location() #39, !dbg !1553
  %9 = load i32, ptr %8, align 4, !dbg !1553, !tbaa !801
  call void @llvm.dbg.value(metadata i32 %9, metadata !1549, metadata !DIExpression()), !dbg !1551
  %10 = load i32, ptr %7, align 8, !dbg !1554, !tbaa !1462
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1555
  %12 = load i32, ptr %11, align 4, !dbg !1555, !tbaa !1512
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1556
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1557
  %15 = load ptr, ptr %14, align 8, !dbg !1557, !tbaa !1533
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1558
  %17 = load ptr, ptr %16, align 8, !dbg !1558, !tbaa !1536
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1559
  call void @llvm.dbg.value(metadata i64 %18, metadata !1550, metadata !DIExpression()), !dbg !1551
  store i32 %9, ptr %8, align 4, !dbg !1560, !tbaa !801
  ret i64 %18, !dbg !1561
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1562 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1568, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %1, metadata !1569, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr %2, metadata !1570, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %3, metadata !1571, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i32 %4, metadata !1572, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i32 %5, metadata !1573, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr %6, metadata !1574, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr %7, metadata !1575, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr %8, metadata !1576, metadata !DIExpression()), !dbg !1630
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1631
  %17 = icmp eq i64 %16, 1, !dbg !1632
  call void @llvm.dbg.value(metadata i1 %17, metadata !1577, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1630
  call void @llvm.dbg.value(metadata i64 0, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 0, metadata !1579, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr null, metadata !1580, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 0, metadata !1581, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 0, metadata !1582, metadata !DIExpression()), !dbg !1630
  %18 = trunc i32 %5 to i8, !dbg !1633
  %19 = lshr i8 %18, 1, !dbg !1633
  %20 = and i8 %19, 1, !dbg !1633
  call void @llvm.dbg.value(metadata i8 %20, metadata !1583, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 0, metadata !1584, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 1, metadata !1585, metadata !DIExpression()), !dbg !1630
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1634

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !1635
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !1636
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !1637
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !1638
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !1630
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !1639
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !1640
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1569, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %39, metadata !1585, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %38, metadata !1584, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %37, metadata !1583, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %36, metadata !1582, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %35, metadata !1581, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr %34, metadata !1580, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %33, metadata !1579, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 0, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %32, metadata !1571, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr %31, metadata !1576, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr %30, metadata !1575, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i32 %29, metadata !1572, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.label(metadata !1623), !dbg !1641
  call void @llvm.dbg.value(metadata i8 0, metadata !1586, metadata !DIExpression()), !dbg !1630
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
  ], !dbg !1642

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1583, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i32 5, metadata !1572, metadata !DIExpression()), !dbg !1630
  br label %115, !dbg !1643

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1583, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i32 5, metadata !1572, metadata !DIExpression()), !dbg !1630
  %43 = and i8 %37, 1, !dbg !1644
  %44 = icmp eq i8 %43, 0, !dbg !1644
  br i1 %44, label %45, label %115, !dbg !1643

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1646
  br i1 %46, label %115, label %47, !dbg !1649

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1646, !tbaa !810
  br label %115, !dbg !1646

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.63, metadata !507, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 %29, metadata !508, metadata !DIExpression()), !dbg !1650
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.64, ptr noundef nonnull @.str.11.63, i32 noundef 5) #36, !dbg !1654
  call void @llvm.dbg.value(metadata ptr %49, metadata !509, metadata !DIExpression()), !dbg !1650
  %50 = icmp eq ptr %49, @.str.11.63, !dbg !1655
  br i1 %50, label %51, label %60, !dbg !1657

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1658
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1659
  call void @llvm.dbg.declare(metadata ptr %13, metadata !511, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata ptr %13, metadata !1661, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata ptr %13, metadata !1669, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i32 0, metadata !1672, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i64 8, metadata !1673, metadata !DIExpression()), !dbg !1674
  store i64 0, ptr %13, align 8, !dbg !1676
  call void @llvm.dbg.value(metadata ptr %12, metadata !510, metadata !DIExpression(DW_OP_deref)), !dbg !1650
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1677
  %53 = icmp eq i64 %52, 3, !dbg !1679
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !510, metadata !DIExpression()), !dbg !1650
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1680
  %57 = icmp eq i32 %29, 9, !dbg !1680
  %58 = select i1 %57, ptr @.str.10.65, ptr @.str.12.66, !dbg !1680
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1680
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1681
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1681
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1650
  call void @llvm.dbg.value(metadata ptr %61, metadata !1575, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr @.str.12.66, metadata !507, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %29, metadata !508, metadata !DIExpression()), !dbg !1682
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.64, ptr noundef nonnull @.str.12.66, i32 noundef 5) #36, !dbg !1684
  call void @llvm.dbg.value(metadata ptr %62, metadata !509, metadata !DIExpression()), !dbg !1682
  %63 = icmp eq ptr %62, @.str.12.66, !dbg !1685
  br i1 %63, label %64, label %73, !dbg !1686

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1687
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1688
  call void @llvm.dbg.declare(metadata ptr %11, metadata !511, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata ptr %11, metadata !1661, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata ptr %11, metadata !1669, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i32 0, metadata !1672, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 8, metadata !1673, metadata !DIExpression()), !dbg !1692
  store i64 0, ptr %11, align 8, !dbg !1694
  call void @llvm.dbg.value(metadata ptr %10, metadata !510, metadata !DIExpression(DW_OP_deref)), !dbg !1682
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1695
  %66 = icmp eq i64 %65, 3, !dbg !1696
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !510, metadata !DIExpression()), !dbg !1682
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1697
  %70 = icmp eq i32 %29, 9, !dbg !1697
  %71 = select i1 %70, ptr @.str.10.65, ptr @.str.12.66, !dbg !1697
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1697
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1698
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1698
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1576, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr %74, metadata !1575, metadata !DIExpression()), !dbg !1630
  %76 = and i8 %37, 1, !dbg !1699
  %77 = icmp eq i8 %76, 0, !dbg !1699
  br i1 %77, label %78, label %93, !dbg !1700

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1587, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 0, metadata !1578, metadata !DIExpression()), !dbg !1630
  %79 = load i8, ptr %74, align 1, !dbg !1702, !tbaa !810
  %80 = icmp eq i8 %79, 0, !dbg !1704
  br i1 %80, label %93, label %81, !dbg !1704

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1587, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %84, metadata !1578, metadata !DIExpression()), !dbg !1630
  %85 = icmp ult i64 %84, %40, !dbg !1705
  br i1 %85, label %86, label %88, !dbg !1708

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1705
  store i8 %82, ptr %87, align 1, !dbg !1705, !tbaa !810
  br label %88, !dbg !1705

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %89, metadata !1578, metadata !DIExpression()), !dbg !1630
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1709
  call void @llvm.dbg.value(metadata ptr %90, metadata !1587, metadata !DIExpression()), !dbg !1701
  %91 = load i8, ptr %90, align 1, !dbg !1702, !tbaa !810
  %92 = icmp eq i8 %91, 0, !dbg !1704
  br i1 %92, label %93, label %81, !dbg !1704, !llvm.loop !1710

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1712
  call void @llvm.dbg.value(metadata i64 %94, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 1, metadata !1582, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr %75, metadata !1580, metadata !DIExpression()), !dbg !1630
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #37, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %95, metadata !1581, metadata !DIExpression()), !dbg !1630
  br label %115, !dbg !1714

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1582, metadata !DIExpression()), !dbg !1630
  br label %97, !dbg !1715

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !1630
  call void @llvm.dbg.value(metadata i8 %98, metadata !1582, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 1, metadata !1583, metadata !DIExpression()), !dbg !1630
  br label %99, !dbg !1716

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !1638
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !1630
  call void @llvm.dbg.value(metadata i8 %101, metadata !1583, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %100, metadata !1582, metadata !DIExpression()), !dbg !1630
  %102 = and i8 %101, 1, !dbg !1717
  %103 = icmp eq i8 %102, 0, !dbg !1717
  %104 = select i1 %103, i8 1, i8 %100, !dbg !1719
  br label %105, !dbg !1719

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !1630
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !1633
  call void @llvm.dbg.value(metadata i8 %107, metadata !1583, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %106, metadata !1582, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i32 2, metadata !1572, metadata !DIExpression()), !dbg !1630
  %108 = and i8 %107, 1, !dbg !1720
  %109 = icmp eq i8 %108, 0, !dbg !1720
  br i1 %109, label %110, label %115, !dbg !1722

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !1723
  br i1 %111, label %115, label %112, !dbg !1726

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !1723, !tbaa !810
  br label %115, !dbg !1723

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1583, metadata !DIExpression()), !dbg !1630
  br label %115, !dbg !1727

114:                                              ; preds = %28
  call void @abort() #38, !dbg !1728
  unreachable, !dbg !1728

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !1712
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.65, %45 ], [ @.str.10.65, %47 ], [ @.str.10.65, %42 ], [ %34, %28 ], [ @.str.12.66, %110 ], [ @.str.12.66, %112 ], [ @.str.12.66, %105 ], [ @.str.10.65, %41 ], !dbg !1630
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !1630
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !1630
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !1630
  call void @llvm.dbg.value(metadata i8 %123, metadata !1583, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %122, metadata !1582, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %121, metadata !1581, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr %120, metadata !1580, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %119, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr %118, metadata !1576, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr %117, metadata !1575, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i32 %116, metadata !1572, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 0, metadata !1592, metadata !DIExpression()), !dbg !1729
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
  br label %138, !dbg !1730

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !1712
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !1635
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !1639
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !1640
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !1731
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !1732
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1569, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %145, metadata !1592, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %144, metadata !1586, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %143, metadata !1585, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %142, metadata !1584, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %141, metadata !1579, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %140, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %139, metadata !1571, metadata !DIExpression()), !dbg !1630
  %147 = icmp eq i64 %139, -1, !dbg !1733
  br i1 %147, label %148, label %152, !dbg !1734

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1735
  %150 = load i8, ptr %149, align 1, !dbg !1735, !tbaa !810
  %151 = icmp eq i8 %150, 0, !dbg !1736
  br i1 %151, label %627, label %154, !dbg !1737

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1738
  br i1 %153, label %627, label %154, !dbg !1737

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1594, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 0, metadata !1597, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 0, metadata !1598, metadata !DIExpression()), !dbg !1739
  br i1 %129, label %155, label %170, !dbg !1740

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !1742
  %157 = select i1 %147, i1 %130, i1 false, !dbg !1743
  br i1 %157, label %158, label %160, !dbg !1743

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1744
  call void @llvm.dbg.value(metadata i64 %159, metadata !1571, metadata !DIExpression()), !dbg !1630
  br label %160, !dbg !1745

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1745
  call void @llvm.dbg.value(metadata i64 %161, metadata !1571, metadata !DIExpression()), !dbg !1630
  %162 = icmp ugt i64 %156, %161, !dbg !1746
  br i1 %162, label %170, label %163, !dbg !1747

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1748
  call void @llvm.dbg.value(metadata ptr %164, metadata !1749, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata ptr %120, metadata !1752, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i64 %121, metadata !1753, metadata !DIExpression()), !dbg !1754
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !1756
  %166 = icmp ne i32 %165, 0, !dbg !1757
  %167 = select i1 %166, i1 true, i1 %132, !dbg !1758
  %168 = xor i1 %166, true, !dbg !1758
  %169 = zext i1 %168 to i8, !dbg !1758
  br i1 %167, label %170, label %688, !dbg !1758

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1739
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1739
  call void @llvm.dbg.value(metadata i8 %173, metadata !1594, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 %171, metadata !1571, metadata !DIExpression()), !dbg !1630
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1759
  %175 = load i8, ptr %174, align 1, !dbg !1759, !tbaa !810
  call void @llvm.dbg.value(metadata i8 %175, metadata !1599, metadata !DIExpression()), !dbg !1739
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
  ], !dbg !1760

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !1761

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !1762

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1597, metadata !DIExpression()), !dbg !1739
  %179 = and i8 %144, 1, !dbg !1766
  %180 = icmp eq i8 %179, 0, !dbg !1766
  %181 = select i1 %133, i1 %180, i1 false, !dbg !1766
  br i1 %181, label %182, label %198, !dbg !1766

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1768
  br i1 %183, label %184, label %186, !dbg !1772

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1768
  store i8 39, ptr %185, align 1, !dbg !1768, !tbaa !810
  br label %186, !dbg !1768

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1772
  call void @llvm.dbg.value(metadata i64 %187, metadata !1578, metadata !DIExpression()), !dbg !1630
  %188 = icmp ult i64 %187, %146, !dbg !1773
  br i1 %188, label %189, label %191, !dbg !1776

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1773
  store i8 36, ptr %190, align 1, !dbg !1773, !tbaa !810
  br label %191, !dbg !1773

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %192, metadata !1578, metadata !DIExpression()), !dbg !1630
  %193 = icmp ult i64 %192, %146, !dbg !1777
  br i1 %193, label %194, label %196, !dbg !1780

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1777
  store i8 39, ptr %195, align 1, !dbg !1777, !tbaa !810
  br label %196, !dbg !1777

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %197, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 1, metadata !1586, metadata !DIExpression()), !dbg !1630
  br label %198, !dbg !1781

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1630
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1630
  call void @llvm.dbg.value(metadata i8 %200, metadata !1586, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %199, metadata !1578, metadata !DIExpression()), !dbg !1630
  %201 = icmp ult i64 %199, %146, !dbg !1782
  br i1 %201, label %202, label %204, !dbg !1785

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1782
  store i8 92, ptr %203, align 1, !dbg !1782, !tbaa !810
  br label %204, !dbg !1782

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %205, metadata !1578, metadata !DIExpression()), !dbg !1630
  br i1 %126, label %206, label %491, !dbg !1786

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1788
  %208 = icmp ult i64 %207, %171, !dbg !1789
  br i1 %208, label %209, label %480, !dbg !1790

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1791
  %211 = load i8, ptr %210, align 1, !dbg !1791, !tbaa !810
  %212 = add i8 %211, -48, !dbg !1792
  %213 = icmp ult i8 %212, 10, !dbg !1792
  br i1 %213, label %214, label %480, !dbg !1792

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1793
  br i1 %215, label %216, label %218, !dbg !1797

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1793
  store i8 48, ptr %217, align 1, !dbg !1793, !tbaa !810
  br label %218, !dbg !1793

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %219, metadata !1578, metadata !DIExpression()), !dbg !1630
  %220 = icmp ult i64 %219, %146, !dbg !1798
  br i1 %220, label %221, label %223, !dbg !1801

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1798
  store i8 48, ptr %222, align 1, !dbg !1798, !tbaa !810
  br label %223, !dbg !1798

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1801
  call void @llvm.dbg.value(metadata i64 %224, metadata !1578, metadata !DIExpression()), !dbg !1630
  br label %480, !dbg !1802

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !1803

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1804

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !1805

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !1807

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1809
  %231 = icmp ult i64 %230, %171, !dbg !1810
  br i1 %231, label %232, label %480, !dbg !1811

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !1812
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !1813
  %235 = load i8, ptr %234, align 1, !dbg !1813, !tbaa !810
  %236 = icmp eq i8 %235, 63, !dbg !1814
  br i1 %236, label %237, label %480, !dbg !1815

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1816
  %239 = load i8, ptr %238, align 1, !dbg !1816, !tbaa !810
  %240 = sext i8 %239 to i32, !dbg !1816
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
  ], !dbg !1817

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !1818

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1599, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 %230, metadata !1592, metadata !DIExpression()), !dbg !1729
  %243 = icmp ult i64 %140, %146, !dbg !1820
  br i1 %243, label %244, label %246, !dbg !1823

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1820
  store i8 63, ptr %245, align 1, !dbg !1820, !tbaa !810
  br label %246, !dbg !1820

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !1823
  call void @llvm.dbg.value(metadata i64 %247, metadata !1578, metadata !DIExpression()), !dbg !1630
  %248 = icmp ult i64 %247, %146, !dbg !1824
  br i1 %248, label %249, label %251, !dbg !1827

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !1824
  store i8 34, ptr %250, align 1, !dbg !1824, !tbaa !810
  br label %251, !dbg !1824

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !1827
  call void @llvm.dbg.value(metadata i64 %252, metadata !1578, metadata !DIExpression()), !dbg !1630
  %253 = icmp ult i64 %252, %146, !dbg !1828
  br i1 %253, label %254, label %256, !dbg !1831

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !1828
  store i8 34, ptr %255, align 1, !dbg !1828, !tbaa !810
  br label %256, !dbg !1828

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %257, metadata !1578, metadata !DIExpression()), !dbg !1630
  %258 = icmp ult i64 %257, %146, !dbg !1832
  br i1 %258, label %259, label %261, !dbg !1835

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !1832
  store i8 63, ptr %260, align 1, !dbg !1832, !tbaa !810
  br label %261, !dbg !1832

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %262, metadata !1578, metadata !DIExpression()), !dbg !1630
  br label %480, !dbg !1836

263:                                              ; preds = %170
  br label %274, !dbg !1837

264:                                              ; preds = %170
  br label %274, !dbg !1838

265:                                              ; preds = %170
  br label %272, !dbg !1839

266:                                              ; preds = %170
  br label %272, !dbg !1840

267:                                              ; preds = %170
  br label %274, !dbg !1841

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !1842

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !1843

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !1846

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !1848

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !1849
  call void @llvm.dbg.label(metadata !1624), !dbg !1850
  br i1 %134, label %274, label %670, !dbg !1851

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !1849
  call void @llvm.dbg.label(metadata !1626), !dbg !1853
  br i1 %125, label %535, label %491, !dbg !1854

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !1855

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !1856, !tbaa !810
  %279 = icmp eq i8 %278, 0, !dbg !1858
  br i1 %279, label %280, label %480, !dbg !1859

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !1860
  br i1 %281, label %282, label %480, !dbg !1862

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1598, metadata !DIExpression()), !dbg !1739
  br label %283, !dbg !1863

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !1739
  call void @llvm.dbg.value(metadata i8 %284, metadata !1598, metadata !DIExpression()), !dbg !1739
  br i1 %134, label %480, label %670, !dbg !1864

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1584, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 1, metadata !1598, metadata !DIExpression()), !dbg !1739
  br i1 %133, label %286, label %480, !dbg !1866

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !1867

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !1870
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !1872
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !1872
  %292 = select i1 %290, i64 %146, i64 0, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %292, metadata !1569, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %291, metadata !1579, metadata !DIExpression()), !dbg !1630
  %293 = icmp ult i64 %140, %292, !dbg !1873
  br i1 %293, label %294, label %296, !dbg !1876

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1873
  store i8 39, ptr %295, align 1, !dbg !1873, !tbaa !810
  br label %296, !dbg !1873

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !1876
  call void @llvm.dbg.value(metadata i64 %297, metadata !1578, metadata !DIExpression()), !dbg !1630
  %298 = icmp ult i64 %297, %292, !dbg !1877
  br i1 %298, label %299, label %301, !dbg !1880

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !1877
  store i8 92, ptr %300, align 1, !dbg !1877, !tbaa !810
  br label %301, !dbg !1877

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %302, metadata !1578, metadata !DIExpression()), !dbg !1630
  %303 = icmp ult i64 %302, %292, !dbg !1881
  br i1 %303, label %304, label %306, !dbg !1884

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !1881
  store i8 39, ptr %305, align 1, !dbg !1881, !tbaa !810
  br label %306, !dbg !1881

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %307, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 0, metadata !1586, metadata !DIExpression()), !dbg !1630
  br label %480, !dbg !1885

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !1886

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1600, metadata !DIExpression()), !dbg !1887
  %310 = tail call ptr @__ctype_b_loc() #39, !dbg !1888
  %311 = load ptr, ptr %310, align 8, !dbg !1888, !tbaa !745
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !1888
  %314 = load i16, ptr %313, align 2, !dbg !1888, !tbaa !842
  %315 = lshr i16 %314, 14, !dbg !1890
  %316 = trunc i16 %315 to i8, !dbg !1890
  %317 = and i8 %316, 1, !dbg !1890
  call void @llvm.dbg.value(metadata i8 %317, metadata !1603, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 %171, metadata !1571, metadata !DIExpression()), !dbg !1630
  %318 = icmp eq i8 %317, 0, !dbg !1891
  call void @llvm.dbg.value(metadata i1 %318, metadata !1598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1739
  br label %368, !dbg !1892

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !1893
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1604, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata ptr %14, metadata !1661, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata ptr %14, metadata !1669, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i32 0, metadata !1672, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 8, metadata !1673, metadata !DIExpression()), !dbg !1897
  store i64 0, ptr %14, align 8, !dbg !1899
  call void @llvm.dbg.value(metadata i64 0, metadata !1600, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i8 1, metadata !1603, metadata !DIExpression()), !dbg !1887
  %320 = icmp eq i64 %171, -1, !dbg !1900
  br i1 %320, label %321, label %323, !dbg !1902

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %322, metadata !1571, metadata !DIExpression()), !dbg !1630
  br label %323, !dbg !1904

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !1739
  call void @llvm.dbg.value(metadata i64 %324, metadata !1571, metadata !DIExpression()), !dbg !1630
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !1905
  %325 = sub i64 %324, %145, !dbg !1906
  call void @llvm.dbg.value(metadata ptr %15, metadata !1607, metadata !DIExpression(DW_OP_deref)), !dbg !1907
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #36, !dbg !1908
  call void @llvm.dbg.value(metadata i64 %326, metadata !1611, metadata !DIExpression()), !dbg !1907
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !1909

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1600, metadata !DIExpression()), !dbg !1887
  %328 = icmp ugt i64 %324, %145, !dbg !1910
  br i1 %328, label %331, label %329, !dbg !1912

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1603, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 0, metadata !1600, metadata !DIExpression()), !dbg !1887
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1913
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %324, metadata !1571, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i1 true, metadata !1598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1739
  br label %368, !dbg !1892

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1603, metadata !DIExpression()), !dbg !1887
  br label %360, !dbg !1915

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1600, metadata !DIExpression()), !dbg !1887
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !1917
  %335 = load i8, ptr %334, align 1, !dbg !1917, !tbaa !810
  %336 = icmp eq i8 %335, 0, !dbg !1912
  br i1 %336, label %363, label %337, !dbg !1918

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %338, metadata !1600, metadata !DIExpression()), !dbg !1887
  %339 = add i64 %338, %145, !dbg !1920
  %340 = icmp eq i64 %338, %325, !dbg !1910
  br i1 %340, label %363, label %331, !dbg !1912, !llvm.loop !1921

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !1922
  %344 = and i1 %343, %133, !dbg !1922
  call void @llvm.dbg.value(metadata i64 1, metadata !1612, metadata !DIExpression()), !dbg !1923
  br i1 %344, label %345, label %354, !dbg !1922

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1612, metadata !DIExpression()), !dbg !1923
  %347 = add i64 %346, %145, !dbg !1924
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !1926
  %349 = load i8, ptr %348, align 1, !dbg !1926, !tbaa !810
  %350 = sext i8 %349 to i32, !dbg !1926
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !1927

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !1928
  call void @llvm.dbg.value(metadata i64 %352, metadata !1612, metadata !DIExpression()), !dbg !1923
  %353 = icmp eq i64 %352, %326, !dbg !1929
  br i1 %353, label %354, label %345, !dbg !1930, !llvm.loop !1931

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !1933, !tbaa !801
  call void @llvm.dbg.value(metadata i32 %355, metadata !1607, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i32 %355, metadata !1935, metadata !DIExpression()), !dbg !1943
  %356 = call i32 @iswprint(i32 noundef %355) #36, !dbg !1945
  %357 = icmp ne i32 %356, 0, !dbg !1946
  %358 = zext i1 %357 to i8, !dbg !1947
  call void @llvm.dbg.value(metadata i8 %358, metadata !1603, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 %326, metadata !1600, metadata !DIExpression()), !dbg !1887
  br label %363, !dbg !1948

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1603, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 0, metadata !1600, metadata !DIExpression()), !dbg !1887
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1913
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1914
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1603, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 0, metadata !1600, metadata !DIExpression()), !dbg !1887
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1913
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %324, metadata !1571, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i1 %361, metadata !1598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1739
  br label %368, !dbg !1892

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1603, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 %364, metadata !1600, metadata !DIExpression()), !dbg !1887
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1913
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %324, metadata !1571, metadata !DIExpression()), !dbg !1630
  %366 = icmp eq i8 %365, 0, !dbg !1891
  call void @llvm.dbg.value(metadata i1 %366, metadata !1598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1739
  %367 = icmp ugt i64 %364, 1, !dbg !1949
  br i1 %367, label %374, label %368, !dbg !1892

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !1950
  br i1 %373, label %374, label %480, !dbg !1950

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %379, metadata !1620, metadata !DIExpression()), !dbg !1952
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !1953

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !1630
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !1731
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !1729
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !1739
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !1954
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !1739
  call void @llvm.dbg.value(metadata i8 %387, metadata !1599, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 %386, metadata !1597, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 %385, metadata !1594, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 %384, metadata !1592, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %383, metadata !1586, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %382, metadata !1578, metadata !DIExpression()), !dbg !1630
  br i1 %380, label %388, label %434, !dbg !1955

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !1960

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1597, metadata !DIExpression()), !dbg !1739
  %390 = and i8 %383, 1, !dbg !1963
  %391 = icmp eq i8 %390, 0, !dbg !1963
  %392 = select i1 %133, i1 %391, i1 false, !dbg !1963
  br i1 %392, label %393, label %409, !dbg !1963

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !1965
  br i1 %394, label %395, label %397, !dbg !1969

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !1965
  store i8 39, ptr %396, align 1, !dbg !1965, !tbaa !810
  br label %397, !dbg !1965

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !1969
  call void @llvm.dbg.value(metadata i64 %398, metadata !1578, metadata !DIExpression()), !dbg !1630
  %399 = icmp ult i64 %398, %146, !dbg !1970
  br i1 %399, label %400, label %402, !dbg !1973

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !1970
  store i8 36, ptr %401, align 1, !dbg !1970, !tbaa !810
  br label %402, !dbg !1970

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !1973
  call void @llvm.dbg.value(metadata i64 %403, metadata !1578, metadata !DIExpression()), !dbg !1630
  %404 = icmp ult i64 %403, %146, !dbg !1974
  br i1 %404, label %405, label %407, !dbg !1977

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !1974
  store i8 39, ptr %406, align 1, !dbg !1974, !tbaa !810
  br label %407, !dbg !1974

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !1977
  call void @llvm.dbg.value(metadata i64 %408, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 1, metadata !1586, metadata !DIExpression()), !dbg !1630
  br label %409, !dbg !1978

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !1630
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !1630
  call void @llvm.dbg.value(metadata i8 %411, metadata !1586, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %410, metadata !1578, metadata !DIExpression()), !dbg !1630
  %412 = icmp ult i64 %410, %146, !dbg !1979
  br i1 %412, label %413, label %415, !dbg !1982

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !1979
  store i8 92, ptr %414, align 1, !dbg !1979, !tbaa !810
  br label %415, !dbg !1979

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !1982
  call void @llvm.dbg.value(metadata i64 %416, metadata !1578, metadata !DIExpression()), !dbg !1630
  %417 = icmp ult i64 %416, %146, !dbg !1983
  br i1 %417, label %418, label %422, !dbg !1986

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !1983
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !1983
  store i8 %420, ptr %421, align 1, !dbg !1983, !tbaa !810
  br label %422, !dbg !1983

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %423, metadata !1578, metadata !DIExpression()), !dbg !1630
  %424 = icmp ult i64 %423, %146, !dbg !1987
  br i1 %424, label %425, label %430, !dbg !1990

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !1987
  %428 = or i8 %427, 48, !dbg !1987
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !1987
  store i8 %428, ptr %429, align 1, !dbg !1987, !tbaa !810
  br label %430, !dbg !1987

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %431, metadata !1578, metadata !DIExpression()), !dbg !1630
  %432 = and i8 %387, 7, !dbg !1991
  %433 = or i8 %432, 48, !dbg !1992
  call void @llvm.dbg.value(metadata i8 %433, metadata !1599, metadata !DIExpression()), !dbg !1739
  br label %443, !dbg !1993

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !1994
  %436 = icmp eq i8 %435, 0, !dbg !1994
  br i1 %436, label %443, label %437, !dbg !1996

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !1997
  br i1 %438, label %439, label %441, !dbg !2001

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !1997
  store i8 92, ptr %440, align 1, !dbg !1997, !tbaa !810
  br label %441, !dbg !1997

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2001
  call void @llvm.dbg.value(metadata i64 %442, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 0, metadata !1594, metadata !DIExpression()), !dbg !1739
  br label %443, !dbg !2002

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !1630
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !1731
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !1739
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !1739
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !1739
  call void @llvm.dbg.value(metadata i8 %448, metadata !1599, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 %447, metadata !1597, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 %446, metadata !1594, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 %445, metadata !1586, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %444, metadata !1578, metadata !DIExpression()), !dbg !1630
  %449 = add i64 %384, 1, !dbg !2003
  %450 = icmp ugt i64 %379, %449, !dbg !2005
  br i1 %450, label %451, label %478, !dbg !2006

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2007
  %453 = icmp ne i8 %452, 0, !dbg !2007
  %454 = and i8 %447, 1, !dbg !2007
  %455 = icmp eq i8 %454, 0, !dbg !2007
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2007
  br i1 %456, label %457, label %468, !dbg !2007

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2010
  br i1 %458, label %459, label %461, !dbg !2014

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2010
  store i8 39, ptr %460, align 1, !dbg !2010, !tbaa !810
  br label %461, !dbg !2010

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %462, metadata !1578, metadata !DIExpression()), !dbg !1630
  %463 = icmp ult i64 %462, %146, !dbg !2015
  br i1 %463, label %464, label %466, !dbg !2018

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2015
  store i8 39, ptr %465, align 1, !dbg !2015, !tbaa !810
  br label %466, !dbg !2015

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %467, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 0, metadata !1586, metadata !DIExpression()), !dbg !1630
  br label %468, !dbg !2019

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2020
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !1630
  call void @llvm.dbg.value(metadata i8 %470, metadata !1586, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %469, metadata !1578, metadata !DIExpression()), !dbg !1630
  %471 = icmp ult i64 %469, %146, !dbg !2021
  br i1 %471, label %472, label %474, !dbg !2024

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2021
  store i8 %448, ptr %473, align 1, !dbg !2021, !tbaa !810
  br label %474, !dbg !2021

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %475, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %449, metadata !1592, metadata !DIExpression()), !dbg !1729
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2025
  %477 = load i8, ptr %476, align 1, !dbg !2025, !tbaa !810
  call void @llvm.dbg.value(metadata i8 %477, metadata !1599, metadata !DIExpression()), !dbg !1739
  br label %381, !dbg !2026, !llvm.loop !2027

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !1739
  call void @llvm.dbg.value(metadata i8 %448, metadata !1599, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 %479, metadata !1598, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 %447, metadata !1597, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 %446, metadata !1594, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 %384, metadata !1592, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %445, metadata !1586, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %444, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %378, metadata !1571, metadata !DIExpression()), !dbg !1630
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2030
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !1630
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !1635
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !1630
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !1630
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !1729
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !1739
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !1739
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !1739
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1569, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %489, metadata !1599, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 %488, metadata !1598, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 %487, metadata !1597, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 %173, metadata !1594, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 %486, metadata !1592, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %485, metadata !1586, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %484, metadata !1584, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %483, metadata !1579, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %482, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %481, metadata !1571, metadata !DIExpression()), !dbg !1630
  br i1 %127, label %502, label %491, !dbg !2031

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
  br i1 %137, label %503, label %524, !dbg !2033

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2034

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
  %514 = lshr i8 %505, 5, !dbg !2035
  %515 = zext i8 %514 to i64, !dbg !2035
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2036
  %517 = load i32, ptr %516, align 4, !dbg !2036, !tbaa !801
  %518 = and i8 %505, 31, !dbg !2037
  %519 = zext i8 %518 to i32, !dbg !2037
  %520 = shl nuw i32 1, %519, !dbg !2038
  %521 = and i32 %517, %520, !dbg !2038
  %522 = icmp eq i32 %521, 0, !dbg !2038
  %523 = and i1 %172, %522, !dbg !2039
  br i1 %523, label %573, label %535, !dbg !2039

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
  br i1 %172, label %573, label %535, !dbg !2040

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2030
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !1630
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !1635
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !1639
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !1731
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2041
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !1739
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !1739
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1569, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %543, metadata !1599, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 %542, metadata !1598, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 %541, metadata !1592, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %540, metadata !1586, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %539, metadata !1584, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %538, metadata !1579, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %537, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %536, metadata !1571, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.label(metadata !1627), !dbg !2042
  br i1 %132, label %545, label %674, !dbg !2043

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1597, metadata !DIExpression()), !dbg !1739
  %546 = and i8 %540, 1, !dbg !2045
  %547 = icmp eq i8 %546, 0, !dbg !2045
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2045
  br i1 %548, label %549, label %565, !dbg !2045

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2047
  br i1 %550, label %551, label %553, !dbg !2051

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2047
  store i8 39, ptr %552, align 1, !dbg !2047, !tbaa !810
  br label %553, !dbg !2047

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2051
  call void @llvm.dbg.value(metadata i64 %554, metadata !1578, metadata !DIExpression()), !dbg !1630
  %555 = icmp ult i64 %554, %544, !dbg !2052
  br i1 %555, label %556, label %558, !dbg !2055

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2052
  store i8 36, ptr %557, align 1, !dbg !2052, !tbaa !810
  br label %558, !dbg !2052

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %559, metadata !1578, metadata !DIExpression()), !dbg !1630
  %560 = icmp ult i64 %559, %544, !dbg !2056
  br i1 %560, label %561, label %563, !dbg !2059

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2056
  store i8 39, ptr %562, align 1, !dbg !2056, !tbaa !810
  br label %563, !dbg !2056

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2059
  call void @llvm.dbg.value(metadata i64 %564, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 1, metadata !1586, metadata !DIExpression()), !dbg !1630
  br label %565, !dbg !2060

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !1739
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !1630
  call void @llvm.dbg.value(metadata i8 %567, metadata !1586, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %566, metadata !1578, metadata !DIExpression()), !dbg !1630
  %568 = icmp ult i64 %566, %544, !dbg !2061
  br i1 %568, label %569, label %571, !dbg !2064

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2061
  store i8 92, ptr %570, align 1, !dbg !2061, !tbaa !810
  br label %571, !dbg !2061

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %544, metadata !1569, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %543, metadata !1599, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 %542, metadata !1598, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 1, metadata !1597, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 %541, metadata !1592, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %567, metadata !1586, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %539, metadata !1584, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %538, metadata !1579, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %572, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %536, metadata !1571, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.label(metadata !1628), !dbg !2065
  br label %600, !dbg !2066

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2030
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !1630
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !1635
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !1639
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !1731
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2041
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !1739
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !1739
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2069
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1569, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %582, metadata !1599, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 %581, metadata !1598, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 %580, metadata !1597, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 %579, metadata !1592, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %578, metadata !1586, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %577, metadata !1584, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %576, metadata !1579, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %575, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %574, metadata !1571, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.label(metadata !1628), !dbg !2065
  %584 = and i8 %578, 1, !dbg !2066
  %585 = icmp ne i8 %584, 0, !dbg !2066
  %586 = and i8 %580, 1, !dbg !2066
  %587 = icmp eq i8 %586, 0, !dbg !2066
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2066
  br i1 %588, label %589, label %600, !dbg !2066

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2070
  br i1 %590, label %591, label %593, !dbg !2074

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2070
  store i8 39, ptr %592, align 1, !dbg !2070, !tbaa !810
  br label %593, !dbg !2070

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2074
  call void @llvm.dbg.value(metadata i64 %594, metadata !1578, metadata !DIExpression()), !dbg !1630
  %595 = icmp ult i64 %594, %583, !dbg !2075
  br i1 %595, label %596, label %598, !dbg !2078

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2075
  store i8 39, ptr %597, align 1, !dbg !2075, !tbaa !810
  br label %598, !dbg !2075

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2078
  call void @llvm.dbg.value(metadata i64 %599, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 0, metadata !1586, metadata !DIExpression()), !dbg !1630
  br label %600, !dbg !2079

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !1739
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !1630
  call void @llvm.dbg.value(metadata i8 %609, metadata !1586, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %608, metadata !1578, metadata !DIExpression()), !dbg !1630
  %610 = icmp ult i64 %608, %601, !dbg !2080
  br i1 %610, label %611, label %613, !dbg !2083

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2080
  store i8 %602, ptr %612, align 1, !dbg !2080, !tbaa !810
  br label %613, !dbg !2080

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %614, metadata !1578, metadata !DIExpression()), !dbg !1630
  %615 = icmp eq i8 %603, 0, !dbg !2084
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2086
  call void @llvm.dbg.value(metadata i8 %616, metadata !1585, metadata !DIExpression()), !dbg !1630
  br label %617, !dbg !2087

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2030
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !1630
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !1635
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !1639
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !1640
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !1731
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2041
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1569, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %624, metadata !1592, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %623, metadata !1586, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %622, metadata !1585, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %621, metadata !1584, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %620, metadata !1579, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %619, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %618, metadata !1571, metadata !DIExpression()), !dbg !1630
  %626 = add i64 %624, 1, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %626, metadata !1592, metadata !DIExpression()), !dbg !1729
  br label %138, !dbg !2089, !llvm.loop !2090

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1569, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %143, metadata !1585, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %142, metadata !1584, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %141, metadata !1579, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %140, metadata !1578, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %139, metadata !1571, metadata !DIExpression()), !dbg !1630
  %628 = icmp eq i64 %140, 0, !dbg !2092
  %629 = and i1 %133, %628, !dbg !2094
  %630 = xor i1 %629, true, !dbg !2094
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2094
  br i1 %631, label %632, label %670, !dbg !2094

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2095
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2095
  br i1 %636, label %637, label %646, !dbg !2095

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2097
  %639 = icmp eq i8 %638, 0, !dbg !2097
  br i1 %639, label %642, label %640, !dbg !2100

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2101
  br label %694, !dbg !2102

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2103
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2105
  br i1 %645, label %28, label %646, !dbg !2105

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2106
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2108
  br i1 %649, label %650, label %665, !dbg !2108

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1580, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %140, metadata !1578, metadata !DIExpression()), !dbg !1630
  %651 = load i8, ptr %120, align 1, !dbg !2109, !tbaa !810
  %652 = icmp eq i8 %651, 0, !dbg !2112
  br i1 %652, label %665, label %653, !dbg !2112

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1580, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %656, metadata !1578, metadata !DIExpression()), !dbg !1630
  %657 = icmp ult i64 %656, %146, !dbg !2113
  br i1 %657, label %658, label %660, !dbg !2116

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2113
  store i8 %654, ptr %659, align 1, !dbg !2113, !tbaa !810
  br label %660, !dbg !2113

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %661, metadata !1578, metadata !DIExpression()), !dbg !1630
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2117
  call void @llvm.dbg.value(metadata ptr %662, metadata !1580, metadata !DIExpression()), !dbg !1630
  %663 = load i8, ptr %662, align 1, !dbg !2109, !tbaa !810
  %664 = icmp eq i8 %663, 0, !dbg !2112
  br i1 %664, label %665, label %653, !dbg !2112, !llvm.loop !2118

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !1712
  call void @llvm.dbg.value(metadata i64 %666, metadata !1578, metadata !DIExpression()), !dbg !1630
  %667 = icmp ult i64 %666, %146, !dbg !2120
  br i1 %667, label %668, label %694, !dbg !2122

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2123
  store i8 0, ptr %669, align 1, !dbg !2124, !tbaa !810
  br label %694, !dbg !2123

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !1629), !dbg !2125
  %672 = icmp eq i8 %124, 0, !dbg !2126
  %673 = select i1 %672, i32 2, i32 4, !dbg !2126
  br label %684, !dbg !2126

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2126
  %678 = select i1 %677, i32 2, i32 4, !dbg !2126
  br label %679, !dbg !2128

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !1629), !dbg !2125
  %683 = icmp eq i32 %116, 2, !dbg !2128
  br i1 %683, label %684, label %688, !dbg !2126

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2126

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1572, metadata !DIExpression()), !dbg !1630
  %692 = and i32 %5, -3, !dbg !2129
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2130
  br label %694, !dbg !2131

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2132
}

; Function Attrs: nounwind
declare !dbg !2133 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2136 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2139 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2141 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2145, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i64 %1, metadata !2146, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata ptr %2, metadata !2147, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata ptr %0, metadata !2149, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %1, metadata !2154, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata ptr null, metadata !2155, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata ptr %2, metadata !2156, metadata !DIExpression()), !dbg !2162
  %4 = icmp eq ptr %2, null, !dbg !2164
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2164
  call void @llvm.dbg.value(metadata ptr %5, metadata !2157, metadata !DIExpression()), !dbg !2162
  %6 = tail call ptr @__errno_location() #39, !dbg !2165
  %7 = load i32, ptr %6, align 4, !dbg !2165, !tbaa !801
  call void @llvm.dbg.value(metadata i32 %7, metadata !2158, metadata !DIExpression()), !dbg !2162
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2166
  %9 = load i32, ptr %8, align 4, !dbg !2166, !tbaa !1512
  %10 = or i32 %9, 1, !dbg !2167
  call void @llvm.dbg.value(metadata i32 %10, metadata !2159, metadata !DIExpression()), !dbg !2162
  %11 = load i32, ptr %5, align 8, !dbg !2168, !tbaa !1462
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2169
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2170
  %14 = load ptr, ptr %13, align 8, !dbg !2170, !tbaa !1533
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2171
  %16 = load ptr, ptr %15, align 8, !dbg !2171, !tbaa !1536
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2172
  %18 = add i64 %17, 1, !dbg !2173
  call void @llvm.dbg.value(metadata i64 %18, metadata !2160, metadata !DIExpression()), !dbg !2162
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2174
  call void @llvm.dbg.value(metadata ptr %19, metadata !2161, metadata !DIExpression()), !dbg !2162
  %20 = load i32, ptr %5, align 8, !dbg !2175, !tbaa !1462
  %21 = load ptr, ptr %13, align 8, !dbg !2176, !tbaa !1533
  %22 = load ptr, ptr %15, align 8, !dbg !2177, !tbaa !1536
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2178
  store i32 %7, ptr %6, align 4, !dbg !2179, !tbaa !801
  ret ptr %19, !dbg !2180
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2150 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2149, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %1, metadata !2154, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata ptr %2, metadata !2155, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata ptr %3, metadata !2156, metadata !DIExpression()), !dbg !2181
  %5 = icmp eq ptr %3, null, !dbg !2182
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2182
  call void @llvm.dbg.value(metadata ptr %6, metadata !2157, metadata !DIExpression()), !dbg !2181
  %7 = tail call ptr @__errno_location() #39, !dbg !2183
  %8 = load i32, ptr %7, align 4, !dbg !2183, !tbaa !801
  call void @llvm.dbg.value(metadata i32 %8, metadata !2158, metadata !DIExpression()), !dbg !2181
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2184
  %10 = load i32, ptr %9, align 4, !dbg !2184, !tbaa !1512
  %11 = icmp eq ptr %2, null, !dbg !2185
  %12 = zext i1 %11 to i32, !dbg !2185
  %13 = or i32 %10, %12, !dbg !2186
  call void @llvm.dbg.value(metadata i32 %13, metadata !2159, metadata !DIExpression()), !dbg !2181
  %14 = load i32, ptr %6, align 8, !dbg !2187, !tbaa !1462
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2188
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2189
  %17 = load ptr, ptr %16, align 8, !dbg !2189, !tbaa !1533
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2190
  %19 = load ptr, ptr %18, align 8, !dbg !2190, !tbaa !1536
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2191
  %21 = add i64 %20, 1, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %21, metadata !2160, metadata !DIExpression()), !dbg !2181
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2193
  call void @llvm.dbg.value(metadata ptr %22, metadata !2161, metadata !DIExpression()), !dbg !2181
  %23 = load i32, ptr %6, align 8, !dbg !2194, !tbaa !1462
  %24 = load ptr, ptr %16, align 8, !dbg !2195, !tbaa !1533
  %25 = load ptr, ptr %18, align 8, !dbg !2196, !tbaa !1536
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2197
  store i32 %8, ptr %7, align 4, !dbg !2198, !tbaa !801
  br i1 %11, label %28, label %27, !dbg !2199

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2200, !tbaa !2202
  br label %28, !dbg !2203

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2204
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2205 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2210, !tbaa !745
  call void @llvm.dbg.value(metadata ptr %1, metadata !2207, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i32 1, metadata !2208, metadata !DIExpression()), !dbg !2212
  %2 = load i32, ptr @nslots, align 4, !tbaa !801
  call void @llvm.dbg.value(metadata i32 1, metadata !2208, metadata !DIExpression()), !dbg !2212
  %3 = icmp sgt i32 %2, 1, !dbg !2213
  br i1 %3, label %4, label %6, !dbg !2215

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2213
  br label %10, !dbg !2215

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2216
  %8 = load ptr, ptr %7, align 8, !dbg !2216, !tbaa !2218
  %9 = icmp eq ptr %8, @slot0, !dbg !2220
  br i1 %9, label %17, label %16, !dbg !2221

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2208, metadata !DIExpression()), !dbg !2212
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2222
  %13 = load ptr, ptr %12, align 8, !dbg !2222, !tbaa !2218
  tail call void @free(ptr noundef %13) #36, !dbg !2223
  %14 = add nuw nsw i64 %11, 1, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %14, metadata !2208, metadata !DIExpression()), !dbg !2212
  %15 = icmp eq i64 %14, %5, !dbg !2213
  br i1 %15, label %6, label %10, !dbg !2215, !llvm.loop !2225

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2227
  store i64 256, ptr @slotvec0, align 8, !dbg !2229, !tbaa !2230
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2231, !tbaa !2218
  br label %17, !dbg !2232

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2233
  br i1 %18, label %20, label %19, !dbg !2235

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2236
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2238, !tbaa !745
  br label %20, !dbg !2239

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2240, !tbaa !801
  ret void, !dbg !2241
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2242 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2245 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2247, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata ptr %1, metadata !2248, metadata !DIExpression()), !dbg !2249
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2250
  ret ptr %3, !dbg !2251
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2252 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2256, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata ptr %1, metadata !2257, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %2, metadata !2258, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata ptr %3, metadata !2259, metadata !DIExpression()), !dbg !2272
  %6 = tail call ptr @__errno_location() #39, !dbg !2273
  %7 = load i32, ptr %6, align 4, !dbg !2273, !tbaa !801
  call void @llvm.dbg.value(metadata i32 %7, metadata !2260, metadata !DIExpression()), !dbg !2272
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2274, !tbaa !745
  call void @llvm.dbg.value(metadata ptr %8, metadata !2261, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2262, metadata !DIExpression()), !dbg !2272
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2275
  br i1 %9, label %10, label %11, !dbg !2275

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2277
  unreachable, !dbg !2277

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2278, !tbaa !801
  %13 = icmp sgt i32 %12, %0, !dbg !2279
  br i1 %13, label %32, label %14, !dbg !2280

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2281
  call void @llvm.dbg.value(metadata i1 %15, metadata !2263, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2282
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2283
  %16 = sext i32 %12 to i64, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %16, metadata !2266, metadata !DIExpression()), !dbg !2282
  store i64 %16, ptr %5, align 8, !dbg !2285, !tbaa !2202
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2286
  %18 = add nuw nsw i32 %0, 1, !dbg !2287
  %19 = sub i32 %18, %12, !dbg !2288
  %20 = sext i32 %19 to i64, !dbg !2289
  call void @llvm.dbg.value(metadata ptr %5, metadata !2266, metadata !DIExpression(DW_OP_deref)), !dbg !2282
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2290
  call void @llvm.dbg.value(metadata ptr %21, metadata !2261, metadata !DIExpression()), !dbg !2272
  store ptr %21, ptr @slotvec, align 8, !dbg !2291, !tbaa !745
  br i1 %15, label %22, label %23, !dbg !2292

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2293, !tbaa.struct !2295
  br label %23, !dbg !2296

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2297, !tbaa !801
  %25 = sext i32 %24 to i64, !dbg !2298
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2298
  %27 = load i64, ptr %5, align 8, !dbg !2299, !tbaa !2202
  call void @llvm.dbg.value(metadata i64 %27, metadata !2266, metadata !DIExpression()), !dbg !2282
  %28 = sub nsw i64 %27, %25, !dbg !2300
  %29 = shl i64 %28, 4, !dbg !2301
  call void @llvm.dbg.value(metadata ptr %26, metadata !1669, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i32 0, metadata !1672, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i64 %29, metadata !1673, metadata !DIExpression()), !dbg !2302
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2304
  %30 = load i64, ptr %5, align 8, !dbg !2305, !tbaa !2202
  call void @llvm.dbg.value(metadata i64 %30, metadata !2266, metadata !DIExpression()), !dbg !2282
  %31 = trunc i64 %30 to i32, !dbg !2305
  store i32 %31, ptr @nslots, align 4, !dbg !2306, !tbaa !801
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2307
  br label %32, !dbg !2308

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2272
  call void @llvm.dbg.value(metadata ptr %33, metadata !2261, metadata !DIExpression()), !dbg !2272
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2309
  %36 = load i64, ptr %35, align 8, !dbg !2310, !tbaa !2230
  call void @llvm.dbg.value(metadata i64 %36, metadata !2267, metadata !DIExpression()), !dbg !2311
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2312
  %38 = load ptr, ptr %37, align 8, !dbg !2312, !tbaa !2218
  call void @llvm.dbg.value(metadata ptr %38, metadata !2269, metadata !DIExpression()), !dbg !2311
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2313
  %40 = load i32, ptr %39, align 4, !dbg !2313, !tbaa !1512
  %41 = or i32 %40, 1, !dbg !2314
  call void @llvm.dbg.value(metadata i32 %41, metadata !2270, metadata !DIExpression()), !dbg !2311
  %42 = load i32, ptr %3, align 8, !dbg !2315, !tbaa !1462
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2316
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2317
  %45 = load ptr, ptr %44, align 8, !dbg !2317, !tbaa !1533
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2318
  %47 = load ptr, ptr %46, align 8, !dbg !2318, !tbaa !1536
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %48, metadata !2271, metadata !DIExpression()), !dbg !2311
  %49 = icmp ugt i64 %36, %48, !dbg !2320
  br i1 %49, label %60, label %50, !dbg !2322

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2323
  call void @llvm.dbg.value(metadata i64 %51, metadata !2267, metadata !DIExpression()), !dbg !2311
  store i64 %51, ptr %35, align 8, !dbg !2325, !tbaa !2230
  %52 = icmp eq ptr %38, @slot0, !dbg !2326
  br i1 %52, label %54, label %53, !dbg !2328

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2329
  br label %54, !dbg !2329

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2330
  call void @llvm.dbg.value(metadata ptr %55, metadata !2269, metadata !DIExpression()), !dbg !2311
  store ptr %55, ptr %37, align 8, !dbg !2331, !tbaa !2218
  %56 = load i32, ptr %3, align 8, !dbg !2332, !tbaa !1462
  %57 = load ptr, ptr %44, align 8, !dbg !2333, !tbaa !1533
  %58 = load ptr, ptr %46, align 8, !dbg !2334, !tbaa !1536
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2335
  br label %60, !dbg !2336

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2311
  call void @llvm.dbg.value(metadata ptr %61, metadata !2269, metadata !DIExpression()), !dbg !2311
  store i32 %7, ptr %6, align 4, !dbg !2337, !tbaa !801
  ret ptr %61, !dbg !2338
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2339 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2343, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata ptr %1, metadata !2344, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %2, metadata !2345, metadata !DIExpression()), !dbg !2346
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2347
  ret ptr %4, !dbg !2348
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2349 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2351, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i32 0, metadata !2247, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata ptr %0, metadata !2248, metadata !DIExpression()), !dbg !2353
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2355
  ret ptr %2, !dbg !2356
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2357 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2361, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i64 %1, metadata !2362, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i32 0, metadata !2343, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata ptr %0, metadata !2344, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i64 %1, metadata !2345, metadata !DIExpression()), !dbg !2364
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2366
  ret ptr %3, !dbg !2367
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2368 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2372, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 %1, metadata !2373, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %2, metadata !2374, metadata !DIExpression()), !dbg !2376
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2377
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2375, metadata !DIExpression()), !dbg !2378
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2379), !dbg !2382
  call void @llvm.dbg.value(metadata i32 %1, metadata !2383, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2388, metadata !DIExpression()), !dbg !2391
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2391, !alias.scope !2379
  %5 = icmp eq i32 %1, 10, !dbg !2392
  br i1 %5, label %6, label %7, !dbg !2394

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2395, !noalias !2379
  unreachable, !dbg !2395

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2396, !tbaa !1462, !alias.scope !2379
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2397
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2398
  ret ptr %8, !dbg !2399
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2400 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2404, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i32 %1, metadata !2405, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata ptr %2, metadata !2406, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %3, metadata !2407, metadata !DIExpression()), !dbg !2409
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2410
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2408, metadata !DIExpression()), !dbg !2411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2412), !dbg !2415
  call void @llvm.dbg.value(metadata i32 %1, metadata !2383, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2388, metadata !DIExpression()), !dbg !2418
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2418, !alias.scope !2412
  %6 = icmp eq i32 %1, 10, !dbg !2419
  br i1 %6, label %7, label %8, !dbg !2420

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2421, !noalias !2412
  unreachable, !dbg !2421

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2422, !tbaa !1462, !alias.scope !2412
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2423
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2424
  ret ptr %9, !dbg !2425
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2426 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2430, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata ptr %1, metadata !2431, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 0, metadata !2372, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %0, metadata !2373, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata ptr %1, metadata !2374, metadata !DIExpression()), !dbg !2433
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2435
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2375, metadata !DIExpression()), !dbg !2436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2437), !dbg !2440
  call void @llvm.dbg.value(metadata i32 %0, metadata !2383, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2388, metadata !DIExpression()), !dbg !2443
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2443, !alias.scope !2437
  %4 = icmp eq i32 %0, 10, !dbg !2444
  br i1 %4, label %5, label %6, !dbg !2445

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2446, !noalias !2437
  unreachable, !dbg !2446

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2447, !tbaa !1462, !alias.scope !2437
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2448
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2449
  ret ptr %7, !dbg !2450
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2451 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2455, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata ptr %1, metadata !2456, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i64 %2, metadata !2457, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i32 0, metadata !2404, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i32 %0, metadata !2405, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata ptr %1, metadata !2406, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i64 %2, metadata !2407, metadata !DIExpression()), !dbg !2459
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2461
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2408, metadata !DIExpression()), !dbg !2462
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2463), !dbg !2466
  call void @llvm.dbg.value(metadata i32 %0, metadata !2383, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2388, metadata !DIExpression()), !dbg !2469
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2469, !alias.scope !2463
  %5 = icmp eq i32 %0, 10, !dbg !2470
  br i1 %5, label %6, label %7, !dbg !2471

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2472, !noalias !2463
  unreachable, !dbg !2472

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2473, !tbaa !1462, !alias.scope !2463
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2474
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2475
  ret ptr %8, !dbg !2476
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2477 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2481, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %1, metadata !2482, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 %2, metadata !2483, metadata !DIExpression()), !dbg !2485
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2486
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2484, metadata !DIExpression()), !dbg !2487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2488, !tbaa.struct !2489
  call void @llvm.dbg.value(metadata ptr %4, metadata !1479, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 %2, metadata !1480, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i32 1, metadata !1481, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 %2, metadata !1482, metadata !DIExpression()), !dbg !2490
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2492
  %6 = lshr i8 %2, 5, !dbg !2493
  %7 = zext i8 %6 to i64, !dbg !2493
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2494
  call void @llvm.dbg.value(metadata ptr %8, metadata !1483, metadata !DIExpression()), !dbg !2490
  %9 = and i8 %2, 31, !dbg !2495
  %10 = zext i8 %9 to i32, !dbg !2495
  call void @llvm.dbg.value(metadata i32 %10, metadata !1485, metadata !DIExpression()), !dbg !2490
  %11 = load i32, ptr %8, align 4, !dbg !2496, !tbaa !801
  %12 = lshr i32 %11, %10, !dbg !2497
  call void @llvm.dbg.value(metadata i32 %12, metadata !1486, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2490
  %13 = and i32 %12, 1, !dbg !2498
  %14 = xor i32 %13, 1, !dbg !2498
  %15 = shl nuw i32 %14, %10, !dbg !2499
  %16 = xor i32 %15, %11, !dbg !2500
  store i32 %16, ptr %8, align 4, !dbg !2500, !tbaa !801
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2501
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2502
  ret ptr %17, !dbg !2503
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2504 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2508, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8 %1, metadata !2509, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata ptr %0, metadata !2481, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i64 -1, metadata !2482, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 %1, metadata !2483, metadata !DIExpression()), !dbg !2511
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2513
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2484, metadata !DIExpression()), !dbg !2514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2515, !tbaa.struct !2489
  call void @llvm.dbg.value(metadata ptr %3, metadata !1479, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8 %1, metadata !1480, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i32 1, metadata !1481, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8 %1, metadata !1482, metadata !DIExpression()), !dbg !2516
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2518
  %5 = lshr i8 %1, 5, !dbg !2519
  %6 = zext i8 %5 to i64, !dbg !2519
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2520
  call void @llvm.dbg.value(metadata ptr %7, metadata !1483, metadata !DIExpression()), !dbg !2516
  %8 = and i8 %1, 31, !dbg !2521
  %9 = zext i8 %8 to i32, !dbg !2521
  call void @llvm.dbg.value(metadata i32 %9, metadata !1485, metadata !DIExpression()), !dbg !2516
  %10 = load i32, ptr %7, align 4, !dbg !2522, !tbaa !801
  %11 = lshr i32 %10, %9, !dbg !2523
  call void @llvm.dbg.value(metadata i32 %11, metadata !1486, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2516
  %12 = and i32 %11, 1, !dbg !2524
  %13 = xor i32 %12, 1, !dbg !2524
  %14 = shl nuw i32 %13, %9, !dbg !2525
  %15 = xor i32 %14, %10, !dbg !2526
  store i32 %15, ptr %7, align 4, !dbg !2526, !tbaa !801
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2527
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2528
  ret ptr %16, !dbg !2529
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2530 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2532, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata ptr %0, metadata !2508, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8 58, metadata !2509, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata ptr %0, metadata !2481, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 -1, metadata !2482, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 58, metadata !2483, metadata !DIExpression()), !dbg !2536
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2538
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2484, metadata !DIExpression()), !dbg !2539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2540, !tbaa.struct !2489
  call void @llvm.dbg.value(metadata ptr %2, metadata !1479, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 58, metadata !1480, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i32 1, metadata !1481, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 58, metadata !1482, metadata !DIExpression()), !dbg !2541
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2543
  call void @llvm.dbg.value(metadata ptr %3, metadata !1483, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i32 26, metadata !1485, metadata !DIExpression()), !dbg !2541
  %4 = load i32, ptr %3, align 4, !dbg !2544, !tbaa !801
  call void @llvm.dbg.value(metadata i32 %4, metadata !1486, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2541
  %5 = or i32 %4, 67108864, !dbg !2545
  store i32 %5, ptr %3, align 4, !dbg !2545, !tbaa !801
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2546
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2547
  ret ptr %6, !dbg !2548
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2549 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2551, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i64 %1, metadata !2552, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata ptr %0, metadata !2481, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i64 %1, metadata !2482, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 58, metadata !2483, metadata !DIExpression()), !dbg !2554
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2556
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2484, metadata !DIExpression()), !dbg !2557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2558, !tbaa.struct !2489
  call void @llvm.dbg.value(metadata ptr %3, metadata !1479, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8 58, metadata !1480, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i32 1, metadata !1481, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8 58, metadata !1482, metadata !DIExpression()), !dbg !2559
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2561
  call void @llvm.dbg.value(metadata ptr %4, metadata !1483, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i32 26, metadata !1485, metadata !DIExpression()), !dbg !2559
  %5 = load i32, ptr %4, align 4, !dbg !2562, !tbaa !801
  call void @llvm.dbg.value(metadata i32 %5, metadata !1486, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2559
  %6 = or i32 %5, 67108864, !dbg !2563
  store i32 %6, ptr %4, align 4, !dbg !2563, !tbaa !801
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2564
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2565
  ret ptr %7, !dbg !2566
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2567 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2388, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2573
  call void @llvm.dbg.value(metadata i32 %0, metadata !2569, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 %1, metadata !2570, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata ptr %2, metadata !2571, metadata !DIExpression()), !dbg !2575
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2576
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2572, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 %1, metadata !2383, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i32 0, metadata !2388, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2578
  %5 = icmp eq i32 %1, 10, !dbg !2579
  br i1 %5, label %6, label %7, !dbg !2580

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2581, !noalias !2582
  unreachable, !dbg !2581

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2388, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2578
  store i32 %1, ptr %4, align 8, !dbg !2585, !tbaa.struct !2489
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2585
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2585
  call void @llvm.dbg.value(metadata ptr %4, metadata !1479, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 58, metadata !1480, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i32 1, metadata !1481, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 58, metadata !1482, metadata !DIExpression()), !dbg !2586
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2588
  call void @llvm.dbg.value(metadata ptr %9, metadata !1483, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i32 26, metadata !1485, metadata !DIExpression()), !dbg !2586
  %10 = load i32, ptr %9, align 4, !dbg !2589, !tbaa !801
  call void @llvm.dbg.value(metadata i32 %10, metadata !1486, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2586
  %11 = or i32 %10, 67108864, !dbg !2590
  store i32 %11, ptr %9, align 4, !dbg !2590, !tbaa !801
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2591
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2592
  ret ptr %12, !dbg !2593
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2594 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2598, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata ptr %1, metadata !2599, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata ptr %2, metadata !2600, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata ptr %3, metadata !2601, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i32 %0, metadata !2603, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata ptr %1, metadata !2608, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata ptr %2, metadata !2609, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata ptr %3, metadata !2610, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i64 -1, metadata !2611, metadata !DIExpression()), !dbg !2613
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2615
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2612, metadata !DIExpression()), !dbg !2616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2617, !tbaa.struct !2489
  call void @llvm.dbg.value(metadata ptr %5, metadata !1519, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata ptr %1, metadata !1520, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata ptr %2, metadata !1521, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata ptr %5, metadata !1519, metadata !DIExpression()), !dbg !2618
  store i32 10, ptr %5, align 8, !dbg !2620, !tbaa !1462
  %6 = icmp ne ptr %1, null, !dbg !2621
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2622
  br i1 %8, label %10, label %9, !dbg !2622

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2623
  unreachable, !dbg !2623

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2624
  store ptr %1, ptr %11, align 8, !dbg !2625, !tbaa !1533
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2626
  store ptr %2, ptr %12, align 8, !dbg !2627, !tbaa !1536
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2628
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2629
  ret ptr %13, !dbg !2630
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2604 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2603, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %1, metadata !2608, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %2, metadata !2609, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %3, metadata !2610, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i64 %4, metadata !2611, metadata !DIExpression()), !dbg !2631
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2632
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2612, metadata !DIExpression()), !dbg !2633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2634, !tbaa.struct !2489
  call void @llvm.dbg.value(metadata ptr %6, metadata !1519, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata ptr %1, metadata !1520, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata ptr %2, metadata !1521, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata ptr %6, metadata !1519, metadata !DIExpression()), !dbg !2635
  store i32 10, ptr %6, align 8, !dbg !2637, !tbaa !1462
  %7 = icmp ne ptr %1, null, !dbg !2638
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2639
  br i1 %9, label %11, label %10, !dbg !2639

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2640
  unreachable, !dbg !2640

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2641
  store ptr %1, ptr %12, align 8, !dbg !2642, !tbaa !1533
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2643
  store ptr %2, ptr %13, align 8, !dbg !2644, !tbaa !1536
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2645
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2646
  ret ptr %14, !dbg !2647
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2648 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2652, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata ptr %1, metadata !2653, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata ptr %2, metadata !2654, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i32 0, metadata !2598, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata ptr %0, metadata !2599, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata ptr %1, metadata !2600, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata ptr %2, metadata !2601, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i32 0, metadata !2603, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata ptr %0, metadata !2608, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata ptr %1, metadata !2609, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata ptr %2, metadata !2610, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 -1, metadata !2611, metadata !DIExpression()), !dbg !2658
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2660
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2612, metadata !DIExpression()), !dbg !2661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2662, !tbaa.struct !2489
  call void @llvm.dbg.value(metadata ptr %4, metadata !1519, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata ptr %0, metadata !1520, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata ptr %1, metadata !1521, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata ptr %4, metadata !1519, metadata !DIExpression()), !dbg !2663
  store i32 10, ptr %4, align 8, !dbg !2665, !tbaa !1462
  %5 = icmp ne ptr %0, null, !dbg !2666
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2667
  br i1 %7, label %9, label %8, !dbg !2667

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2668
  unreachable, !dbg !2668

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2669
  store ptr %0, ptr %10, align 8, !dbg !2670, !tbaa !1533
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2671
  store ptr %1, ptr %11, align 8, !dbg !2672, !tbaa !1536
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2673
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2674
  ret ptr %12, !dbg !2675
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2676 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2680, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %1, metadata !2681, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %2, metadata !2682, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i64 %3, metadata !2683, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 0, metadata !2603, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %0, metadata !2608, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %1, metadata !2609, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %2, metadata !2610, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i64 %3, metadata !2611, metadata !DIExpression()), !dbg !2685
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2687
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2612, metadata !DIExpression()), !dbg !2688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2689, !tbaa.struct !2489
  call void @llvm.dbg.value(metadata ptr %5, metadata !1519, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata ptr %0, metadata !1520, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata ptr %1, metadata !1521, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata ptr %5, metadata !1519, metadata !DIExpression()), !dbg !2690
  store i32 10, ptr %5, align 8, !dbg !2692, !tbaa !1462
  %6 = icmp ne ptr %0, null, !dbg !2693
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2694
  br i1 %8, label %10, label %9, !dbg !2694

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2695
  unreachable, !dbg !2695

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2696
  store ptr %0, ptr %11, align 8, !dbg !2697, !tbaa !1533
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2698
  store ptr %1, ptr %12, align 8, !dbg !2699, !tbaa !1536
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2700
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2701
  ret ptr %13, !dbg !2702
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2703 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2707, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata ptr %1, metadata !2708, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i64 %2, metadata !2709, metadata !DIExpression()), !dbg !2710
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2711
  ret ptr %4, !dbg !2712
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2713 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2717, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %1, metadata !2718, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i32 0, metadata !2707, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata ptr %0, metadata !2708, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %1, metadata !2709, metadata !DIExpression()), !dbg !2720
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2722
  ret ptr %3, !dbg !2723
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2724 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2728, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata ptr %1, metadata !2729, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i32 %0, metadata !2707, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata ptr %1, metadata !2708, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i64 -1, metadata !2709, metadata !DIExpression()), !dbg !2731
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2733
  ret ptr %3, !dbg !2734
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2735 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2739, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i32 0, metadata !2728, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata ptr %0, metadata !2729, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i32 0, metadata !2707, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %0, metadata !2708, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i64 -1, metadata !2709, metadata !DIExpression()), !dbg !2743
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2745
  ret ptr %2, !dbg !2746
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2747 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2786, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata ptr %1, metadata !2787, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata ptr %2, metadata !2788, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata ptr %3, metadata !2789, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata ptr %4, metadata !2790, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %5, metadata !2791, metadata !DIExpression()), !dbg !2792
  %7 = icmp eq ptr %1, null, !dbg !2793
  br i1 %7, label %10, label %8, !dbg !2795

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.71, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !2796
  br label %12, !dbg !2796

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.72, ptr noundef %2, ptr noundef %3) #36, !dbg !2797
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.3.74, i32 noundef 5) #36, !dbg !2798
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !2798
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.75, ptr noundef %0), !dbg !2799
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.5.76, i32 noundef 5) #36, !dbg !2800
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.77) #36, !dbg !2800
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.75, ptr noundef %0), !dbg !2801
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
  ], !dbg !2802

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.7.78, i32 noundef 5) #36, !dbg !2803
  %21 = load ptr, ptr %4, align 8, !dbg !2803, !tbaa !745
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !2803
  br label %147, !dbg !2805

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.8.79, i32 noundef 5) #36, !dbg !2806
  %25 = load ptr, ptr %4, align 8, !dbg !2806, !tbaa !745
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2806
  %27 = load ptr, ptr %26, align 8, !dbg !2806, !tbaa !745
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !2806
  br label %147, !dbg !2807

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.9.80, i32 noundef 5) #36, !dbg !2808
  %31 = load ptr, ptr %4, align 8, !dbg !2808, !tbaa !745
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2808
  %33 = load ptr, ptr %32, align 8, !dbg !2808, !tbaa !745
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2808
  %35 = load ptr, ptr %34, align 8, !dbg !2808, !tbaa !745
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !2808
  br label %147, !dbg !2809

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.10.81, i32 noundef 5) #36, !dbg !2810
  %39 = load ptr, ptr %4, align 8, !dbg !2810, !tbaa !745
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2810
  %41 = load ptr, ptr %40, align 8, !dbg !2810, !tbaa !745
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2810
  %43 = load ptr, ptr %42, align 8, !dbg !2810, !tbaa !745
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2810
  %45 = load ptr, ptr %44, align 8, !dbg !2810, !tbaa !745
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !2810
  br label %147, !dbg !2811

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.11.82, i32 noundef 5) #36, !dbg !2812
  %49 = load ptr, ptr %4, align 8, !dbg !2812, !tbaa !745
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2812
  %51 = load ptr, ptr %50, align 8, !dbg !2812, !tbaa !745
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2812
  %53 = load ptr, ptr %52, align 8, !dbg !2812, !tbaa !745
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2812
  %55 = load ptr, ptr %54, align 8, !dbg !2812, !tbaa !745
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2812
  %57 = load ptr, ptr %56, align 8, !dbg !2812, !tbaa !745
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !2812
  br label %147, !dbg !2813

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.12.83, i32 noundef 5) #36, !dbg !2814
  %61 = load ptr, ptr %4, align 8, !dbg !2814, !tbaa !745
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2814
  %63 = load ptr, ptr %62, align 8, !dbg !2814, !tbaa !745
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2814
  %65 = load ptr, ptr %64, align 8, !dbg !2814, !tbaa !745
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2814
  %67 = load ptr, ptr %66, align 8, !dbg !2814, !tbaa !745
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2814
  %69 = load ptr, ptr %68, align 8, !dbg !2814, !tbaa !745
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2814
  %71 = load ptr, ptr %70, align 8, !dbg !2814, !tbaa !745
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !2814
  br label %147, !dbg !2815

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.13.84, i32 noundef 5) #36, !dbg !2816
  %75 = load ptr, ptr %4, align 8, !dbg !2816, !tbaa !745
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2816
  %77 = load ptr, ptr %76, align 8, !dbg !2816, !tbaa !745
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2816
  %79 = load ptr, ptr %78, align 8, !dbg !2816, !tbaa !745
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2816
  %81 = load ptr, ptr %80, align 8, !dbg !2816, !tbaa !745
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2816
  %83 = load ptr, ptr %82, align 8, !dbg !2816, !tbaa !745
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2816
  %85 = load ptr, ptr %84, align 8, !dbg !2816, !tbaa !745
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2816
  %87 = load ptr, ptr %86, align 8, !dbg !2816, !tbaa !745
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !2816
  br label %147, !dbg !2817

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.14.85, i32 noundef 5) #36, !dbg !2818
  %91 = load ptr, ptr %4, align 8, !dbg !2818, !tbaa !745
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2818
  %93 = load ptr, ptr %92, align 8, !dbg !2818, !tbaa !745
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2818
  %95 = load ptr, ptr %94, align 8, !dbg !2818, !tbaa !745
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2818
  %97 = load ptr, ptr %96, align 8, !dbg !2818, !tbaa !745
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2818
  %99 = load ptr, ptr %98, align 8, !dbg !2818, !tbaa !745
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2818
  %101 = load ptr, ptr %100, align 8, !dbg !2818, !tbaa !745
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2818
  %103 = load ptr, ptr %102, align 8, !dbg !2818, !tbaa !745
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2818
  %105 = load ptr, ptr %104, align 8, !dbg !2818, !tbaa !745
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !2818
  br label %147, !dbg !2819

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.15.86, i32 noundef 5) #36, !dbg !2820
  %109 = load ptr, ptr %4, align 8, !dbg !2820, !tbaa !745
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2820
  %111 = load ptr, ptr %110, align 8, !dbg !2820, !tbaa !745
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2820
  %113 = load ptr, ptr %112, align 8, !dbg !2820, !tbaa !745
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2820
  %115 = load ptr, ptr %114, align 8, !dbg !2820, !tbaa !745
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2820
  %117 = load ptr, ptr %116, align 8, !dbg !2820, !tbaa !745
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2820
  %119 = load ptr, ptr %118, align 8, !dbg !2820, !tbaa !745
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2820
  %121 = load ptr, ptr %120, align 8, !dbg !2820, !tbaa !745
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2820
  %123 = load ptr, ptr %122, align 8, !dbg !2820, !tbaa !745
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2820
  %125 = load ptr, ptr %124, align 8, !dbg !2820, !tbaa !745
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !2820
  br label %147, !dbg !2821

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.16.87, i32 noundef 5) #36, !dbg !2822
  %129 = load ptr, ptr %4, align 8, !dbg !2822, !tbaa !745
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2822
  %131 = load ptr, ptr %130, align 8, !dbg !2822, !tbaa !745
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2822
  %133 = load ptr, ptr %132, align 8, !dbg !2822, !tbaa !745
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2822
  %135 = load ptr, ptr %134, align 8, !dbg !2822, !tbaa !745
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2822
  %137 = load ptr, ptr %136, align 8, !dbg !2822, !tbaa !745
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2822
  %139 = load ptr, ptr %138, align 8, !dbg !2822, !tbaa !745
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2822
  %141 = load ptr, ptr %140, align 8, !dbg !2822, !tbaa !745
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2822
  %143 = load ptr, ptr %142, align 8, !dbg !2822, !tbaa !745
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2822
  %145 = load ptr, ptr %144, align 8, !dbg !2822, !tbaa !745
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !2822
  br label %147, !dbg !2823

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2824
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2825 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2829, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata ptr %1, metadata !2830, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata ptr %2, metadata !2831, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata ptr %3, metadata !2832, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata ptr %4, metadata !2833, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i64 0, metadata !2834, metadata !DIExpression()), !dbg !2835
  br label %6, !dbg !2836

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2838
  call void @llvm.dbg.value(metadata i64 %7, metadata !2834, metadata !DIExpression()), !dbg !2835
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2839
  %9 = load ptr, ptr %8, align 8, !dbg !2839, !tbaa !745
  %10 = icmp eq ptr %9, null, !dbg !2841
  %11 = add i64 %7, 1, !dbg !2842
  call void @llvm.dbg.value(metadata i64 %11, metadata !2834, metadata !DIExpression()), !dbg !2835
  br i1 %10, label %12, label %6, !dbg !2841, !llvm.loop !2843

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2845
  ret void, !dbg !2846
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2847 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2859, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata ptr %1, metadata !2860, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata ptr %2, metadata !2861, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata ptr %3, metadata !2862, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata ptr %4, metadata !2863, metadata !DIExpression()), !dbg !2867
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !2868
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2865, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 0, metadata !2864, metadata !DIExpression()), !dbg !2867
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2864, metadata !DIExpression()), !dbg !2867
  %10 = icmp ult i32 %9, 41, !dbg !2870
  br i1 %10, label %11, label %16, !dbg !2870

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2870
  %13 = zext i32 %9 to i64, !dbg !2870
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2870
  %15 = add nuw nsw i32 %9, 8, !dbg !2870
  store i32 %15, ptr %4, align 8, !dbg !2870
  br label %19, !dbg !2870

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2870
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2870
  store ptr %18, ptr %7, align 8, !dbg !2870
  br label %19, !dbg !2870

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2870
  %22 = load ptr, ptr %21, align 8, !dbg !2870
  store ptr %22, ptr %6, align 16, !dbg !2873, !tbaa !745
  %23 = icmp eq ptr %22, null, !dbg !2874
  br i1 %23, label %128, label %24, !dbg !2875

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 1, metadata !2864, metadata !DIExpression()), !dbg !2867
  %25 = icmp ult i32 %20, 41, !dbg !2870
  br i1 %25, label %29, label %26, !dbg !2870

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2870
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2870
  store ptr %28, ptr %7, align 8, !dbg !2870
  br label %34, !dbg !2870

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2870
  %31 = zext i32 %20 to i64, !dbg !2870
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2870
  %33 = add nuw nsw i32 %20, 8, !dbg !2870
  store i32 %33, ptr %4, align 8, !dbg !2870
  br label %34, !dbg !2870

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2870
  %37 = load ptr, ptr %36, align 8, !dbg !2870
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2876
  store ptr %37, ptr %38, align 8, !dbg !2873, !tbaa !745
  %39 = icmp eq ptr %37, null, !dbg !2874
  br i1 %39, label %128, label %40, !dbg !2875

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 2, metadata !2864, metadata !DIExpression()), !dbg !2867
  %41 = icmp ult i32 %35, 41, !dbg !2870
  br i1 %41, label %45, label %42, !dbg !2870

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2870
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2870
  store ptr %44, ptr %7, align 8, !dbg !2870
  br label %50, !dbg !2870

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2870
  %47 = zext i32 %35 to i64, !dbg !2870
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2870
  %49 = add nuw nsw i32 %35, 8, !dbg !2870
  store i32 %49, ptr %4, align 8, !dbg !2870
  br label %50, !dbg !2870

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2870
  %53 = load ptr, ptr %52, align 8, !dbg !2870
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2876
  store ptr %53, ptr %54, align 16, !dbg !2873, !tbaa !745
  %55 = icmp eq ptr %53, null, !dbg !2874
  br i1 %55, label %128, label %56, !dbg !2875

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 3, metadata !2864, metadata !DIExpression()), !dbg !2867
  %57 = icmp ult i32 %51, 41, !dbg !2870
  br i1 %57, label %61, label %58, !dbg !2870

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2870
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2870
  store ptr %60, ptr %7, align 8, !dbg !2870
  br label %66, !dbg !2870

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2870
  %63 = zext i32 %51 to i64, !dbg !2870
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2870
  %65 = add nuw nsw i32 %51, 8, !dbg !2870
  store i32 %65, ptr %4, align 8, !dbg !2870
  br label %66, !dbg !2870

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2870
  %69 = load ptr, ptr %68, align 8, !dbg !2870
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2876
  store ptr %69, ptr %70, align 8, !dbg !2873, !tbaa !745
  %71 = icmp eq ptr %69, null, !dbg !2874
  br i1 %71, label %128, label %72, !dbg !2875

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 4, metadata !2864, metadata !DIExpression()), !dbg !2867
  %73 = icmp ult i32 %67, 41, !dbg !2870
  br i1 %73, label %77, label %74, !dbg !2870

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2870
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2870
  store ptr %76, ptr %7, align 8, !dbg !2870
  br label %82, !dbg !2870

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2870
  %79 = zext i32 %67 to i64, !dbg !2870
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2870
  %81 = add nuw nsw i32 %67, 8, !dbg !2870
  store i32 %81, ptr %4, align 8, !dbg !2870
  br label %82, !dbg !2870

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2870
  %85 = load ptr, ptr %84, align 8, !dbg !2870
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2876
  store ptr %85, ptr %86, align 16, !dbg !2873, !tbaa !745
  %87 = icmp eq ptr %85, null, !dbg !2874
  br i1 %87, label %128, label %88, !dbg !2875

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 5, metadata !2864, metadata !DIExpression()), !dbg !2867
  %89 = icmp ult i32 %83, 41, !dbg !2870
  br i1 %89, label %93, label %90, !dbg !2870

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2870
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2870
  store ptr %92, ptr %7, align 8, !dbg !2870
  br label %98, !dbg !2870

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2870
  %95 = zext i32 %83 to i64, !dbg !2870
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2870
  %97 = add nuw nsw i32 %83, 8, !dbg !2870
  store i32 %97, ptr %4, align 8, !dbg !2870
  br label %98, !dbg !2870

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2870
  %100 = load ptr, ptr %99, align 8, !dbg !2870
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2876
  store ptr %100, ptr %101, align 8, !dbg !2873, !tbaa !745
  %102 = icmp eq ptr %100, null, !dbg !2874
  br i1 %102, label %128, label %103, !dbg !2875

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !2864, metadata !DIExpression()), !dbg !2867
  %104 = load ptr, ptr %7, align 8, !dbg !2870
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2870
  store ptr %105, ptr %7, align 8, !dbg !2870
  %106 = load ptr, ptr %104, align 8, !dbg !2870
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2876
  store ptr %106, ptr %107, align 16, !dbg !2873, !tbaa !745
  %108 = icmp eq ptr %106, null, !dbg !2874
  br i1 %108, label %128, label %109, !dbg !2875

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !2864, metadata !DIExpression()), !dbg !2867
  %110 = load ptr, ptr %7, align 8, !dbg !2870
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2870
  store ptr %111, ptr %7, align 8, !dbg !2870
  %112 = load ptr, ptr %110, align 8, !dbg !2870
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2876
  store ptr %112, ptr %113, align 8, !dbg !2873, !tbaa !745
  %114 = icmp eq ptr %112, null, !dbg !2874
  br i1 %114, label %128, label %115, !dbg !2875

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !2864, metadata !DIExpression()), !dbg !2867
  %116 = load ptr, ptr %7, align 8, !dbg !2870
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2870
  store ptr %117, ptr %7, align 8, !dbg !2870
  %118 = load ptr, ptr %116, align 8, !dbg !2870
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2876
  store ptr %118, ptr %119, align 16, !dbg !2873, !tbaa !745
  %120 = icmp eq ptr %118, null, !dbg !2874
  br i1 %120, label %128, label %121, !dbg !2875

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !2864, metadata !DIExpression()), !dbg !2867
  %122 = load ptr, ptr %7, align 8, !dbg !2870
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2870
  store ptr %123, ptr %7, align 8, !dbg !2870
  %124 = load ptr, ptr %122, align 8, !dbg !2870
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2876
  store ptr %124, ptr %125, align 8, !dbg !2873, !tbaa !745
  %126 = icmp eq ptr %124, null, !dbg !2874
  %127 = select i1 %126, i64 9, i64 10, !dbg !2875
  br label %128, !dbg !2875

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2877
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2878
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !2879
  ret void, !dbg !2879
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2880 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2884, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata ptr %1, metadata !2885, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata ptr %2, metadata !2886, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata ptr %3, metadata !2887, metadata !DIExpression()), !dbg !2893
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #36, !dbg !2894
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2888, metadata !DIExpression()), !dbg !2895
  call void @llvm.va_start(ptr nonnull %5), !dbg !2896
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2897
  call void @llvm.va_end(ptr nonnull %5), !dbg !2898
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #36, !dbg !2899
  ret void, !dbg !2899
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2900 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2901, !tbaa !745
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.75, ptr noundef %1), !dbg !2901
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.17, i32 noundef 5) #36, !dbg !2902
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18) #36, !dbg !2902
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.19.92, i32 noundef 5) #36, !dbg !2903
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #36, !dbg !2903
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !2904
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.93) #36, !dbg !2904
  ret void, !dbg !2905
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2906 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2911, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %1, metadata !2912, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %2, metadata !2913, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata ptr %0, metadata !2915, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i64 %1, metadata !2918, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i64 %2, metadata !2919, metadata !DIExpression()), !dbg !2920
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2922
  call void @llvm.dbg.value(metadata ptr %4, metadata !2923, metadata !DIExpression()), !dbg !2928
  %5 = icmp eq ptr %4, null, !dbg !2930
  br i1 %5, label %6, label %7, !dbg !2932

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2933
  unreachable, !dbg !2933

7:                                                ; preds = %3
  ret ptr %4, !dbg !2934
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2916 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2915, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 %1, metadata !2918, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 %2, metadata !2919, metadata !DIExpression()), !dbg !2935
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2936
  call void @llvm.dbg.value(metadata ptr %4, metadata !2923, metadata !DIExpression()), !dbg !2937
  %5 = icmp eq ptr %4, null, !dbg !2939
  br i1 %5, label %6, label %7, !dbg !2940

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2941
  unreachable, !dbg !2941

7:                                                ; preds = %3
  ret ptr %4, !dbg !2942
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2943 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2947, metadata !DIExpression()), !dbg !2948
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2949
  call void @llvm.dbg.value(metadata ptr %2, metadata !2923, metadata !DIExpression()), !dbg !2950
  %3 = icmp eq ptr %2, null, !dbg !2952
  br i1 %3, label %4, label %5, !dbg !2953

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2954
  unreachable, !dbg !2954

5:                                                ; preds = %1
  ret ptr %2, !dbg !2955
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2956 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2957 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2961, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i64 %0, metadata !2963, metadata !DIExpression()), !dbg !2967
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2969
  call void @llvm.dbg.value(metadata ptr %2, metadata !2923, metadata !DIExpression()), !dbg !2970
  %3 = icmp eq ptr %2, null, !dbg !2972
  br i1 %3, label %4, label %5, !dbg !2973

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2974
  unreachable, !dbg !2974

5:                                                ; preds = %1
  ret ptr %2, !dbg !2975
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2976 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2980, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %0, metadata !2947, metadata !DIExpression()), !dbg !2982
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2984
  call void @llvm.dbg.value(metadata ptr %2, metadata !2923, metadata !DIExpression()), !dbg !2985
  %3 = icmp eq ptr %2, null, !dbg !2987
  br i1 %3, label %4, label %5, !dbg !2988

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2989
  unreachable, !dbg !2989

5:                                                ; preds = %1
  ret ptr %2, !dbg !2990
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2991 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2995, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i64 %1, metadata !2996, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata ptr %0, metadata !2998, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %1, metadata !3002, metadata !DIExpression()), !dbg !3003
  %3 = icmp eq i64 %1, 0, !dbg !3005
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3005
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3006
  call void @llvm.dbg.value(metadata ptr %5, metadata !2923, metadata !DIExpression()), !dbg !3007
  %6 = icmp eq ptr %5, null, !dbg !3009
  br i1 %6, label %7, label %8, !dbg !3010

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3011
  unreachable, !dbg !3011

8:                                                ; preds = %2
  ret ptr %5, !dbg !3012
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3013 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3014 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3018, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 %1, metadata !3019, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata ptr %0, metadata !3021, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 %1, metadata !3024, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata ptr %0, metadata !2998, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %1, metadata !3002, metadata !DIExpression()), !dbg !3027
  %3 = icmp eq i64 %1, 0, !dbg !3029
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3029
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3030
  call void @llvm.dbg.value(metadata ptr %5, metadata !2923, metadata !DIExpression()), !dbg !3031
  %6 = icmp eq ptr %5, null, !dbg !3033
  br i1 %6, label %7, label %8, !dbg !3034

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3035
  unreachable, !dbg !3035

8:                                                ; preds = %2
  ret ptr %5, !dbg !3036
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3037 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3041, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %1, metadata !3042, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %2, metadata !3043, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %0, metadata !3045, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i64 %1, metadata !3048, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i64 %2, metadata !3049, metadata !DIExpression()), !dbg !3050
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3052
  call void @llvm.dbg.value(metadata ptr %4, metadata !2923, metadata !DIExpression()), !dbg !3053
  %5 = icmp eq ptr %4, null, !dbg !3055
  br i1 %5, label %6, label %7, !dbg !3056

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3057
  unreachable, !dbg !3057

7:                                                ; preds = %3
  ret ptr %4, !dbg !3058
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3059 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3063, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i64 %1, metadata !3064, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata ptr null, metadata !2915, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64 %0, metadata !2918, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64 %1, metadata !2919, metadata !DIExpression()), !dbg !3066
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3068
  call void @llvm.dbg.value(metadata ptr %3, metadata !2923, metadata !DIExpression()), !dbg !3069
  %4 = icmp eq ptr %3, null, !dbg !3071
  br i1 %4, label %5, label %6, !dbg !3072

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3073
  unreachable, !dbg !3073

6:                                                ; preds = %2
  ret ptr %3, !dbg !3074
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3075 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3079, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 %1, metadata !3080, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata ptr null, metadata !3041, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64 %0, metadata !3042, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64 %1, metadata !3043, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata ptr null, metadata !3045, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 %0, metadata !3048, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 %1, metadata !3049, metadata !DIExpression()), !dbg !3084
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3086
  call void @llvm.dbg.value(metadata ptr %3, metadata !2923, metadata !DIExpression()), !dbg !3087
  %4 = icmp eq ptr %3, null, !dbg !3089
  br i1 %4, label %5, label %6, !dbg !3090

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3091
  unreachable, !dbg !3091

6:                                                ; preds = %2
  ret ptr %3, !dbg !3092
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3093 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3097, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr %1, metadata !3098, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr %0, metadata !681, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata ptr %1, metadata !682, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i64 1, metadata !683, metadata !DIExpression()), !dbg !3100
  %3 = load i64, ptr %1, align 8, !dbg !3102, !tbaa !2202
  call void @llvm.dbg.value(metadata i64 %3, metadata !684, metadata !DIExpression()), !dbg !3100
  %4 = icmp eq ptr %0, null, !dbg !3103
  br i1 %4, label %5, label %8, !dbg !3105

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3106
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3109
  br label %15, !dbg !3109

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3110
  %10 = add nuw i64 %9, 1, !dbg !3110
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3110
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3110
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %13, metadata !684, metadata !DIExpression()), !dbg !3100
  br i1 %12, label %14, label %15, !dbg !3113

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3114
  unreachable, !dbg !3114

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3100
  call void @llvm.dbg.value(metadata i64 %16, metadata !684, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata ptr %0, metadata !2915, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i64 %16, metadata !2918, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i64 1, metadata !2919, metadata !DIExpression()), !dbg !3115
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3117
  call void @llvm.dbg.value(metadata ptr %17, metadata !2923, metadata !DIExpression()), !dbg !3118
  %18 = icmp eq ptr %17, null, !dbg !3120
  br i1 %18, label %19, label %20, !dbg !3121

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3122
  unreachable, !dbg !3122

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !681, metadata !DIExpression()), !dbg !3100
  store i64 %16, ptr %1, align 8, !dbg !3123, !tbaa !2202
  ret ptr %17, !dbg !3124
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !676 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !681, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata ptr %1, metadata !682, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i64 %2, metadata !683, metadata !DIExpression()), !dbg !3125
  %4 = load i64, ptr %1, align 8, !dbg !3126, !tbaa !2202
  call void @llvm.dbg.value(metadata i64 %4, metadata !684, metadata !DIExpression()), !dbg !3125
  %5 = icmp eq ptr %0, null, !dbg !3127
  br i1 %5, label %6, label %13, !dbg !3128

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3129
  br i1 %7, label %8, label %20, !dbg !3130

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %9, metadata !684, metadata !DIExpression()), !dbg !3125
  %10 = icmp ugt i64 %2, 128, !dbg !3133
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3134
  call void @llvm.dbg.value(metadata i64 %12, metadata !684, metadata !DIExpression()), !dbg !3125
  br label %20, !dbg !3135

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3136
  %15 = add nuw i64 %14, 1, !dbg !3136
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3136
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3136
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3136
  call void @llvm.dbg.value(metadata i64 %18, metadata !684, metadata !DIExpression()), !dbg !3125
  br i1 %17, label %19, label %20, !dbg !3137

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3138
  unreachable, !dbg !3138

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3125
  call void @llvm.dbg.value(metadata i64 %21, metadata !684, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata ptr %0, metadata !2915, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %21, metadata !2918, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %2, metadata !2919, metadata !DIExpression()), !dbg !3139
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3141
  call void @llvm.dbg.value(metadata ptr %22, metadata !2923, metadata !DIExpression()), !dbg !3142
  %23 = icmp eq ptr %22, null, !dbg !3144
  br i1 %23, label %24, label %25, !dbg !3145

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3146
  unreachable, !dbg !3146

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !681, metadata !DIExpression()), !dbg !3125
  store i64 %21, ptr %1, align 8, !dbg !3147, !tbaa !2202
  ret ptr %22, !dbg !3148
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !688 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !696, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata ptr %1, metadata !697, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i64 %2, metadata !698, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i64 %3, metadata !699, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i64 %4, metadata !700, metadata !DIExpression()), !dbg !3149
  %6 = load i64, ptr %1, align 8, !dbg !3150, !tbaa !2202
  call void @llvm.dbg.value(metadata i64 %6, metadata !701, metadata !DIExpression()), !dbg !3149
  %7 = ashr i64 %6, 1, !dbg !3151
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3151
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3151
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3151
  call void @llvm.dbg.value(metadata i64 %10, metadata !702, metadata !DIExpression()), !dbg !3149
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3153
  call void @llvm.dbg.value(metadata i64 %11, metadata !702, metadata !DIExpression()), !dbg !3149
  %12 = icmp sgt i64 %3, -1, !dbg !3154
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3156
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3156
  call void @llvm.dbg.value(metadata i64 %15, metadata !702, metadata !DIExpression()), !dbg !3149
  %16 = icmp slt i64 %4, 0, !dbg !3157
  br i1 %16, label %17, label %30, !dbg !3157

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3157
  br i1 %18, label %19, label %24, !dbg !3157

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3157
  %21 = udiv i64 9223372036854775807, %20, !dbg !3157
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3157
  br i1 %23, label %46, label %43, !dbg !3157

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3157
  br i1 %25, label %43, label %26, !dbg !3157

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3157
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3157
  %29 = icmp ult i64 %28, %15, !dbg !3157
  br i1 %29, label %46, label %43, !dbg !3157

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3157
  br i1 %31, label %43, label %32, !dbg !3157

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3157
  br i1 %33, label %34, label %40, !dbg !3157

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3157
  br i1 %35, label %43, label %36, !dbg !3157

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3157
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3157
  %39 = icmp ult i64 %38, %4, !dbg !3157
  br i1 %39, label %46, label %43, !dbg !3157

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3157
  br i1 %42, label %46, label %43, !dbg !3157

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !703, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3149
  %44 = mul i64 %15, %4, !dbg !3157
  call void @llvm.dbg.value(metadata i64 %44, metadata !703, metadata !DIExpression()), !dbg !3149
  %45 = icmp slt i64 %44, 128, !dbg !3157
  br i1 %45, label %46, label %51, !dbg !3157

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !704, metadata !DIExpression()), !dbg !3149
  %48 = sdiv i64 %47, %4, !dbg !3158
  call void @llvm.dbg.value(metadata i64 %48, metadata !702, metadata !DIExpression()), !dbg !3149
  %49 = srem i64 %47, %4, !dbg !3161
  %50 = sub nsw i64 %47, %49, !dbg !3162
  call void @llvm.dbg.value(metadata i64 %50, metadata !703, metadata !DIExpression()), !dbg !3149
  br label %51, !dbg !3163

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3149
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3149
  call void @llvm.dbg.value(metadata i64 %53, metadata !703, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i64 %52, metadata !702, metadata !DIExpression()), !dbg !3149
  %54 = icmp eq ptr %0, null, !dbg !3164
  br i1 %54, label %55, label %56, !dbg !3166

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3167, !tbaa !2202
  br label %56, !dbg !3168

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3169
  %58 = icmp slt i64 %57, %2, !dbg !3171
  br i1 %58, label %59, label %96, !dbg !3172

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3173
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3173
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3173
  call void @llvm.dbg.value(metadata i64 %62, metadata !702, metadata !DIExpression()), !dbg !3149
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3174
  br i1 %65, label %95, label %66, !dbg !3174

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3175

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3175
  br i1 %68, label %69, label %74, !dbg !3175

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3175
  %71 = udiv i64 9223372036854775807, %70, !dbg !3175
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3175
  br i1 %73, label %95, label %93, !dbg !3175

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3175
  br i1 %75, label %93, label %76, !dbg !3175

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3175
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3175
  %79 = icmp ult i64 %78, %62, !dbg !3175
  br i1 %79, label %95, label %93, !dbg !3175

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3175
  br i1 %81, label %93, label %82, !dbg !3175

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3175
  br i1 %83, label %84, label %90, !dbg !3175

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3175
  br i1 %85, label %93, label %86, !dbg !3175

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3175
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3175
  %89 = icmp ult i64 %88, %4, !dbg !3175
  br i1 %89, label %95, label %93, !dbg !3175

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3175
  br i1 %92, label %95, label %93, !dbg !3175

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !703, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3149
  %94 = mul i64 %62, %4, !dbg !3175
  call void @llvm.dbg.value(metadata i64 %94, metadata !703, metadata !DIExpression()), !dbg !3149
  br label %96, !dbg !3176

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #38, !dbg !3177
  unreachable, !dbg !3177

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3149
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3149
  call void @llvm.dbg.value(metadata i64 %98, metadata !703, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i64 %97, metadata !702, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata ptr %0, metadata !2995, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i64 %98, metadata !2996, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata ptr %0, metadata !2998, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i64 %98, metadata !3002, metadata !DIExpression()), !dbg !3180
  %99 = icmp eq i64 %98, 0, !dbg !3182
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3182
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #42, !dbg !3183
  call void @llvm.dbg.value(metadata ptr %101, metadata !2923, metadata !DIExpression()), !dbg !3184
  %102 = icmp eq ptr %101, null, !dbg !3186
  br i1 %102, label %103, label %104, !dbg !3187

103:                                              ; preds = %96
  tail call void @xalloc_die() #38, !dbg !3188
  unreachable, !dbg !3188

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !696, metadata !DIExpression()), !dbg !3149
  store i64 %97, ptr %1, align 8, !dbg !3189, !tbaa !2202
  ret ptr %101, !dbg !3190
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3191 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3193, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %0, metadata !3195, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 1, metadata !3198, metadata !DIExpression()), !dbg !3199
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3201
  call void @llvm.dbg.value(metadata ptr %2, metadata !2923, metadata !DIExpression()), !dbg !3202
  %3 = icmp eq ptr %2, null, !dbg !3204
  br i1 %3, label %4, label %5, !dbg !3205

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3206
  unreachable, !dbg !3206

5:                                                ; preds = %1
  ret ptr %2, !dbg !3207
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3208 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3196 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3195, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %1, metadata !3198, metadata !DIExpression()), !dbg !3209
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3210
  call void @llvm.dbg.value(metadata ptr %3, metadata !2923, metadata !DIExpression()), !dbg !3211
  %4 = icmp eq ptr %3, null, !dbg !3213
  br i1 %4, label %5, label %6, !dbg !3214

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3215
  unreachable, !dbg !3215

6:                                                ; preds = %2
  ret ptr %3, !dbg !3216
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3217 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3219, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 %0, metadata !3221, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i64 1, metadata !3224, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i64 %0, metadata !3227, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 1, metadata !3230, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %0, metadata !3227, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 1, metadata !3230, metadata !DIExpression()), !dbg !3231
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3233
  call void @llvm.dbg.value(metadata ptr %2, metadata !2923, metadata !DIExpression()), !dbg !3234
  %3 = icmp eq ptr %2, null, !dbg !3236
  br i1 %3, label %4, label %5, !dbg !3237

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3238
  unreachable, !dbg !3238

5:                                                ; preds = %1
  ret ptr %2, !dbg !3239
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3222 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3221, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i64 %1, metadata !3224, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i64 %0, metadata !3227, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %1, metadata !3230, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %0, metadata !3227, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %1, metadata !3230, metadata !DIExpression()), !dbg !3241
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3243
  call void @llvm.dbg.value(metadata ptr %3, metadata !2923, metadata !DIExpression()), !dbg !3244
  %4 = icmp eq ptr %3, null, !dbg !3246
  br i1 %4, label %5, label %6, !dbg !3247

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3248
  unreachable, !dbg !3248

6:                                                ; preds = %2
  ret ptr %3, !dbg !3249
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3250 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3254, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 %1, metadata !3255, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 %1, metadata !2947, metadata !DIExpression()), !dbg !3257
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3259
  call void @llvm.dbg.value(metadata ptr %3, metadata !2923, metadata !DIExpression()), !dbg !3260
  %4 = icmp eq ptr %3, null, !dbg !3262
  br i1 %4, label %5, label %6, !dbg !3263

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3264
  unreachable, !dbg !3264

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3265, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata ptr %0, metadata !3271, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i64 %1, metadata !3272, metadata !DIExpression()), !dbg !3273
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3275
  ret ptr %3, !dbg !3276
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3277 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3281, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 %1, metadata !3282, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 %1, metadata !2961, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i64 %1, metadata !2963, metadata !DIExpression()), !dbg !3286
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3288
  call void @llvm.dbg.value(metadata ptr %3, metadata !2923, metadata !DIExpression()), !dbg !3289
  %4 = icmp eq ptr %3, null, !dbg !3291
  br i1 %4, label %5, label %6, !dbg !3292

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3293
  unreachable, !dbg !3293

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3265, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata ptr %0, metadata !3271, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %1, metadata !3272, metadata !DIExpression()), !dbg !3294
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3296
  ret ptr %3, !dbg !3297
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3298 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3302, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i64 %1, metadata !3303, metadata !DIExpression()), !dbg !3305
  %3 = add nsw i64 %1, 1, !dbg !3306
  call void @llvm.dbg.value(metadata i64 %3, metadata !2961, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i64 %3, metadata !2963, metadata !DIExpression()), !dbg !3309
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3311
  call void @llvm.dbg.value(metadata ptr %4, metadata !2923, metadata !DIExpression()), !dbg !3312
  %5 = icmp eq ptr %4, null, !dbg !3314
  br i1 %5, label %6, label %7, !dbg !3315

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3316
  unreachable, !dbg !3316

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3304, metadata !DIExpression()), !dbg !3305
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3317
  store i8 0, ptr %8, align 1, !dbg !3318, !tbaa !810
  call void @llvm.dbg.value(metadata ptr %4, metadata !3265, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata ptr %0, metadata !3271, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i64 %1, metadata !3272, metadata !DIExpression()), !dbg !3319
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3321
  ret ptr %4, !dbg !3322
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3323 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3325, metadata !DIExpression()), !dbg !3326
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3327
  %3 = add i64 %2, 1, !dbg !3328
  call void @llvm.dbg.value(metadata ptr %0, metadata !3254, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i64 %3, metadata !3255, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i64 %3, metadata !2947, metadata !DIExpression()), !dbg !3331
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3333
  call void @llvm.dbg.value(metadata ptr %4, metadata !2923, metadata !DIExpression()), !dbg !3334
  %5 = icmp eq ptr %4, null, !dbg !3336
  br i1 %5, label %6, label %7, !dbg !3337

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3338
  unreachable, !dbg !3338

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3265, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata ptr %0, metadata !3271, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %3, metadata !3272, metadata !DIExpression()), !dbg !3339
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3341
  ret ptr %4, !dbg !3342
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3343 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3348, !tbaa !801
  call void @llvm.dbg.value(metadata i32 %1, metadata !3345, metadata !DIExpression()), !dbg !3349
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.104, ptr noundef nonnull @.str.2.105, i32 noundef 5) #36, !dbg !3348
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.106, ptr noundef %2) #36, !dbg !3348
  %3 = icmp eq i32 %1, 0, !dbg !3348
  tail call void @llvm.assume(i1 %3), !dbg !3348
  tail call void @abort() #38, !dbg !3350
  unreachable, !dbg !3350
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3351 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3389, metadata !DIExpression()), !dbg !3394
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3395
  call void @llvm.dbg.value(metadata i1 poison, metadata !3390, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3394
  call void @llvm.dbg.value(metadata ptr %0, metadata !3396, metadata !DIExpression()), !dbg !3399
  %3 = load i32, ptr %0, align 8, !dbg !3401, !tbaa !3402
  %4 = and i32 %3, 32, !dbg !3403
  %5 = icmp eq i32 %4, 0, !dbg !3403
  call void @llvm.dbg.value(metadata i1 %5, metadata !3392, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3394
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3404
  %7 = icmp eq i32 %6, 0, !dbg !3405
  call void @llvm.dbg.value(metadata i1 %7, metadata !3393, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3394
  br i1 %5, label %8, label %18, !dbg !3406

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3408
  call void @llvm.dbg.value(metadata i1 %9, metadata !3390, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3394
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3409
  %11 = xor i1 %7, true, !dbg !3409
  %12 = sext i1 %11 to i32, !dbg !3409
  br i1 %10, label %21, label %13, !dbg !3409

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3410
  %15 = load i32, ptr %14, align 4, !dbg !3410, !tbaa !801
  %16 = icmp ne i32 %15, 9, !dbg !3411
  %17 = sext i1 %16 to i32, !dbg !3412
  br label %21, !dbg !3412

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3413

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3415
  store i32 0, ptr %20, align 4, !dbg !3417, !tbaa !801
  br label %21, !dbg !3415

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3394
  ret i32 %22, !dbg !3418
}

; Function Attrs: nounwind
declare !dbg !3419 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3423 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3461, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i32 0, metadata !3462, metadata !DIExpression()), !dbg !3465
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3466
  call void @llvm.dbg.value(metadata i32 %2, metadata !3463, metadata !DIExpression()), !dbg !3465
  %3 = icmp slt i32 %2, 0, !dbg !3467
  br i1 %3, label %4, label %6, !dbg !3469

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3470
  br label %24, !dbg !3471

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3472
  %8 = icmp eq i32 %7, 0, !dbg !3472
  br i1 %8, label %13, label %9, !dbg !3474

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3475
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3476
  %12 = icmp eq i64 %11, -1, !dbg !3477
  br i1 %12, label %16, label %13, !dbg !3478

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3479
  %15 = icmp eq i32 %14, 0, !dbg !3479
  br i1 %15, label %16, label %18, !dbg !3480

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3462, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i32 0, metadata !3464, metadata !DIExpression()), !dbg !3465
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %17, metadata !3464, metadata !DIExpression()), !dbg !3465
  br label %24, !dbg !3482

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3483
  %20 = load i32, ptr %19, align 4, !dbg !3483, !tbaa !801
  call void @llvm.dbg.value(metadata i32 %20, metadata !3462, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i32 0, metadata !3464, metadata !DIExpression()), !dbg !3465
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %21, metadata !3464, metadata !DIExpression()), !dbg !3465
  %22 = icmp eq i32 %20, 0, !dbg !3484
  br i1 %22, label %24, label %23, !dbg !3482

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3486, !tbaa !801
  call void @llvm.dbg.value(metadata i32 -1, metadata !3464, metadata !DIExpression()), !dbg !3465
  br label %24, !dbg !3488

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3465
  ret i32 %25, !dbg !3489
}

; Function Attrs: nofree nounwind
declare !dbg !3490 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !3491 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3492 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3493 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3496 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3534, metadata !DIExpression()), !dbg !3535
  %2 = icmp eq ptr %0, null, !dbg !3536
  br i1 %2, label %6, label %3, !dbg !3538

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3539
  %5 = icmp eq i32 %4, 0, !dbg !3539
  br i1 %5, label %6, label %8, !dbg !3540

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3541
  br label %16, !dbg !3542

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3543, metadata !DIExpression()), !dbg !3548
  %9 = load i32, ptr %0, align 8, !dbg !3550, !tbaa !3402
  %10 = and i32 %9, 256, !dbg !3552
  %11 = icmp eq i32 %10, 0, !dbg !3552
  br i1 %11, label %14, label %12, !dbg !3553

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3554
  br label %14, !dbg !3554

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3555
  br label %16, !dbg !3556

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3535
  ret i32 %17, !dbg !3557
}

; Function Attrs: nofree nounwind
declare !dbg !3558 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3559 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3598, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i64 %1, metadata !3599, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 %2, metadata !3600, metadata !DIExpression()), !dbg !3604
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3605
  %5 = load ptr, ptr %4, align 8, !dbg !3605, !tbaa !3606
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3607
  %7 = load ptr, ptr %6, align 8, !dbg !3607, !tbaa !3608
  %8 = icmp eq ptr %5, %7, !dbg !3609
  br i1 %8, label %9, label %27, !dbg !3610

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3611
  %11 = load ptr, ptr %10, align 8, !dbg !3611, !tbaa !1173
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3612
  %13 = load ptr, ptr %12, align 8, !dbg !3612, !tbaa !3613
  %14 = icmp eq ptr %11, %13, !dbg !3614
  br i1 %14, label %15, label %27, !dbg !3615

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3616
  %17 = load ptr, ptr %16, align 8, !dbg !3616, !tbaa !3617
  %18 = icmp eq ptr %17, null, !dbg !3618
  br i1 %18, label %19, label %27, !dbg !3619

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3620
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3621
  call void @llvm.dbg.value(metadata i64 %21, metadata !3601, metadata !DIExpression()), !dbg !3622
  %22 = icmp eq i64 %21, -1, !dbg !3623
  br i1 %22, label %29, label %23, !dbg !3625

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3626, !tbaa !3402
  %25 = and i32 %24, -17, !dbg !3626
  store i32 %25, ptr %0, align 8, !dbg !3626, !tbaa !3402
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3627
  store i64 %21, ptr %26, align 8, !dbg !3628, !tbaa !3629
  br label %29, !dbg !3630

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3631
  br label %29, !dbg !3632

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3604
  ret i32 %30, !dbg !3633
}

; Function Attrs: nofree nounwind
declare !dbg !3634 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3637 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3642, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %1, metadata !3643, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i64 %2, metadata !3644, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %3, metadata !3645, metadata !DIExpression()), !dbg !3647
  %5 = icmp eq ptr %1, null, !dbg !3648
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3650
  %7 = select i1 %5, ptr @.str.117, ptr %1, !dbg !3650
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3650
  call void @llvm.dbg.value(metadata i64 %8, metadata !3644, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %7, metadata !3643, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %6, metadata !3642, metadata !DIExpression()), !dbg !3647
  %9 = icmp eq ptr %3, null, !dbg !3651
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3653
  call void @llvm.dbg.value(metadata ptr %10, metadata !3645, metadata !DIExpression()), !dbg !3647
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3654
  call void @llvm.dbg.value(metadata i64 %11, metadata !3646, metadata !DIExpression()), !dbg !3647
  %12 = icmp ult i64 %11, -3, !dbg !3655
  br i1 %12, label %13, label %17, !dbg !3657

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !3658
  %15 = icmp eq i32 %14, 0, !dbg !3658
  br i1 %15, label %16, label %29, !dbg !3659

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3660, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata ptr %10, metadata !3667, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i32 0, metadata !3670, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i64 8, metadata !3671, metadata !DIExpression()), !dbg !3672
  store i64 0, ptr %10, align 1, !dbg !3674
  br label %29, !dbg !3675

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3676
  br i1 %18, label %19, label %20, !dbg !3678

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3679
  unreachable, !dbg !3679

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3680

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #36, !dbg !3682
  br i1 %23, label %29, label %24, !dbg !3683

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3684
  br i1 %25, label %29, label %26, !dbg !3687

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3688, !tbaa !810
  %28 = zext i8 %27 to i32, !dbg !3689
  store i32 %28, ptr %6, align 4, !dbg !3690, !tbaa !801
  br label %29, !dbg !3691

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3647
  ret i64 %30, !dbg !3692
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3693 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3699 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3701, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i64 %1, metadata !3702, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i64 %2, metadata !3703, metadata !DIExpression()), !dbg !3705
  %4 = icmp eq i64 %2, 0, !dbg !3706
  br i1 %4, label %8, label %5, !dbg !3706

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3706
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3706
  br i1 %7, label %13, label %8, !dbg !3706

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3704, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3705
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3704, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3705
  %9 = mul i64 %2, %1, !dbg !3706
  call void @llvm.dbg.value(metadata i64 %9, metadata !3704, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata ptr %0, metadata !3708, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i64 %9, metadata !3711, metadata !DIExpression()), !dbg !3712
  %10 = icmp eq i64 %9, 0, !dbg !3714
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3714
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3715
  br label %15, !dbg !3716

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3704, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3705
  %14 = tail call ptr @__errno_location() #39, !dbg !3717
  store i32 12, ptr %14, align 4, !dbg !3719, !tbaa !801
  br label %15, !dbg !3720

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3705
  ret ptr %16, !dbg !3721
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3722 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3726, metadata !DIExpression()), !dbg !3731
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !3732
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3727, metadata !DIExpression()), !dbg !3733
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !3734
  %4 = icmp eq i32 %3, 0, !dbg !3734
  br i1 %4, label %5, label %12, !dbg !3736

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3737, metadata !DIExpression()), !dbg !3741
  %6 = load i16, ptr %2, align 16, !dbg !3744
  %7 = icmp eq i16 %6, 67, !dbg !3744
  br i1 %7, label %11, label %8, !dbg !3745

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3737, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata ptr @.str.1.122, metadata !3740, metadata !DIExpression()), !dbg !3746
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.122, i64 6), !dbg !3748
  %10 = icmp eq i32 %9, 0, !dbg !3749
  br i1 %10, label %11, label %12, !dbg !3750

11:                                               ; preds = %8, %5
  br label %12, !dbg !3751

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3731
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !3752
  ret i1 %13, !dbg !3752
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3753 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3757, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata ptr %1, metadata !3758, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i64 %2, metadata !3759, metadata !DIExpression()), !dbg !3760
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !3761
  ret i32 %4, !dbg !3762
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3763 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3767, metadata !DIExpression()), !dbg !3768
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !3769
  ret ptr %2, !dbg !3770
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3771 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3773, metadata !DIExpression()), !dbg !3775
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3776
  call void @llvm.dbg.value(metadata ptr %2, metadata !3774, metadata !DIExpression()), !dbg !3775
  ret ptr %2, !dbg !3777
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3778 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3780, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata ptr %1, metadata !3781, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i64 %2, metadata !3782, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i32 %0, metadata !3773, metadata !DIExpression()), !dbg !3788
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3790
  call void @llvm.dbg.value(metadata ptr %4, metadata !3774, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata ptr %4, metadata !3783, metadata !DIExpression()), !dbg !3787
  %5 = icmp eq ptr %4, null, !dbg !3791
  br i1 %5, label %6, label %9, !dbg !3792

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3793
  br i1 %7, label %19, label %8, !dbg !3796

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3797, !tbaa !810
  br label %19, !dbg !3798

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !3799
  call void @llvm.dbg.value(metadata i64 %10, metadata !3784, metadata !DIExpression()), !dbg !3800
  %11 = icmp ult i64 %10, %2, !dbg !3801
  br i1 %11, label %12, label %14, !dbg !3803

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3804
  call void @llvm.dbg.value(metadata ptr %1, metadata !3806, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata ptr %4, metadata !3809, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i64 %13, metadata !3810, metadata !DIExpression()), !dbg !3811
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !3813
  br label %19, !dbg !3814

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3815
  br i1 %15, label %19, label %16, !dbg !3818

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3819
  call void @llvm.dbg.value(metadata ptr %1, metadata !3806, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata ptr %4, metadata !3809, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i64 %17, metadata !3810, metadata !DIExpression()), !dbg !3821
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !3823
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3824
  store i8 0, ptr %18, align 1, !dbg !3825, !tbaa !810
  br label %19, !dbg !3826

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3827
  ret i32 %20, !dbg !3828
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

!llvm.dbg.cu = !{!70, !293, !297, !312, !631, !663, !367, !387, !401, !449, !665, !623, !672, !706, !708, !710, !712, !714, !647, !716, !719, !723, !725}
!llvm.ident = !{!727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727}
!llvm.module.flags = !{!728, !729, !730, !731, !732, !733}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/hostid.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7f0e5f3aa5d6f632ed5741d47ec6b339")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 712, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 89)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 7)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 50)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 62)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 1)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 10)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 24)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 14)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 13)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 17)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 6)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !64, file: !65, line: 575, type: !90, isLocal: true, isDefinition: true)
!64 = distinct !DISubprogram(name: "oputs_", scope: !65, file: !65, line: 573, type: !66, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !209)
!65 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!66 = !DISubroutineType(cc: DW_CC_nocall, types: !67)
!67 = !{null, !68, !68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!70 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !71, retainedTypes: !88, globals: !96, splitDebugInlining: false, nameTableKind: None)
!71 = !{!72}
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
!88 = !{!68, !89, !90, !91, !92, !95}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 46, baseType: !94)
!93 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!94 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!95 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !97, !102, !104, !109, !111, !116, !118, !120, !125, !127, !129, !131, !133, !138, !140, !142, !144, !146, !148, !150, !152, !157, !162, !167, !169, !171, !173, !175, !180, !185, !187, !189, !194, !199, !204}
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !65, line: 585, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 5)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !65, line: 586, type: !99, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !65, line: 595, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 4)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !65, line: 620, type: !59, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !65, line: 648, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 2)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !65, line: 648, type: !99, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !65, line: 649, type: !106, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !65, line: 649, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 3)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !65, line: 650, type: !99, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !65, line: 651, type: !59, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !65, line: 651, type: !59, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !65, line: 652, type: !14, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !65, line: 653, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 8)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !65, line: 654, type: !34, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !65, line: 655, type: !34, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !65, line: 656, type: !34, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !65, line: 657, type: !34, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !65, line: 663, type: !14, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !65, line: 664, type: !34, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !65, line: 669, type: !54, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !65, line: 669, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 40)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !65, line: 676, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 15)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !65, line: 676, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 61)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !65, line: 679, type: !122, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !65, line: 683, type: !99, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !65, line: 688, type: !99, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !65, line: 691, type: !135, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !65, line: 839, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 16)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !65, line: 840, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 22)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !65, line: 841, type: !159, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !65, line: 862, type: !106, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !65, line: 868, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 71)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !65, line: 875, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 27)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !65, line: 877, type: !201, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 51)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !65, line: 877, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 12)
!209 = !{!210, !211, !212, !215, !217, !218, !219, !223, !224, !225, !226, !228, !282, !283, !284, !286, !287}
!210 = !DILocalVariable(name: "program", arg: 1, scope: !64, file: !65, line: 573, type: !68)
!211 = !DILocalVariable(name: "option", arg: 2, scope: !64, file: !65, line: 573, type: !68)
!212 = !DILocalVariable(name: "term", scope: !213, file: !65, line: 585, type: !68)
!213 = distinct !DILexicalBlock(scope: !214, file: !65, line: 582, column: 5)
!214 = distinct !DILexicalBlock(scope: !64, file: !65, line: 581, column: 7)
!215 = !DILocalVariable(name: "double_space", scope: !64, file: !65, line: 594, type: !216)
!216 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!217 = !DILocalVariable(name: "first_word", scope: !64, file: !65, line: 595, type: !68)
!218 = !DILocalVariable(name: "option_text", scope: !64, file: !65, line: 596, type: !68)
!219 = !DILocalVariable(name: "s", scope: !220, file: !65, line: 608, type: !68)
!220 = distinct !DILexicalBlock(scope: !221, file: !65, line: 605, column: 5)
!221 = distinct !DILexicalBlock(scope: !222, file: !65, line: 604, column: 12)
!222 = distinct !DILexicalBlock(scope: !64, file: !65, line: 597, column: 7)
!223 = !DILocalVariable(name: "spaces", scope: !220, file: !65, line: 609, type: !92)
!224 = !DILocalVariable(name: "anchor_len", scope: !64, file: !65, line: 620, type: !92)
!225 = !DILocalVariable(name: "desc_text", scope: !64, file: !65, line: 625, type: !68)
!226 = !DILocalVariable(name: "__ptr", scope: !227, file: !65, line: 644, type: !68)
!227 = distinct !DILexicalBlock(scope: !64, file: !65, line: 644, column: 3)
!228 = !DILocalVariable(name: "__stream", scope: !227, file: !65, line: 644, type: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !232)
!231 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !234)
!233 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!234 = !{!235, !236, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !251, !253, !254, !255, !259, !260, !262, !263, !266, !268, !271, !274, !275, !276, !277, !278}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !232, file: !233, line: 51, baseType: !90, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !232, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !232, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !232, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !232, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !232, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !232, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !232, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !232, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !232, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !232, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !232, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !232, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !233, line: 36, flags: DIFlagFwdDecl)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !232, file: !233, line: 70, baseType: !252, size: 64, offset: 832)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !232, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !232, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !232, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !257, line: 152, baseType: !258)
!257 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!258 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !232, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !232, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!261 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !232, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !232, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !233, line: 43, baseType: null)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !232, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !257, line: 153, baseType: !258)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !232, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !233, line: 37, flags: DIFlagFwdDecl)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !232, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !233, line: 38, flags: DIFlagFwdDecl)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !232, file: !233, line: 93, baseType: !252, size: 64, offset: 1344)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !232, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !232, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !232, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !232, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 20)
!282 = !DILocalVariable(name: "__cnt", scope: !227, file: !65, line: 644, type: !92)
!283 = !DILocalVariable(name: "url_program", scope: !64, file: !65, line: 648, type: !68)
!284 = !DILocalVariable(name: "__ptr", scope: !285, file: !65, line: 686, type: !68)
!285 = distinct !DILexicalBlock(scope: !64, file: !65, line: 686, column: 3)
!286 = !DILocalVariable(name: "__stream", scope: !285, file: !65, line: 686, type: !229)
!287 = !DILocalVariable(name: "__cnt", scope: !285, file: !65, line: 686, type: !92)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !290, line: 3, type: !159, isLocal: true, isDefinition: true)
!290 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "Version", scope: !293, file: !290, line: 3, type: !68, isLocal: false, isDefinition: true)
!293 = distinct !DICompileUnit(language: DW_LANG_C11, file: !290, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !294, splitDebugInlining: false, nameTableKind: None)
!294 = !{!288, !291}
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "file_name", scope: !297, file: !298, line: 45, type: !68, isLocal: true, isDefinition: true)
!297 = distinct !DICompileUnit(language: DW_LANG_C11, file: !298, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !299, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!299 = !{!300, !302, !304, !306, !295, !308}
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !298, line: 121, type: !14, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !298, line: 121, type: !206, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !298, line: 123, type: !14, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !298, line: 126, type: !122, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !297, file: !298, line: 55, type: !216, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !312, file: !313, line: 66, type: !359, isLocal: false, isDefinition: true)
!312 = distinct !DICompileUnit(language: DW_LANG_C11, file: !313, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !314, globals: !315, splitDebugInlining: false, nameTableKind: None)
!313 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!314 = !{!89, !95}
!315 = !{!316, !318, !338, !340, !342, !344, !310, !346, !348, !350, !352, !357}
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !313, line: 272, type: !99, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "old_file_name", scope: !320, file: !313, line: 304, type: !68, isLocal: true, isDefinition: true)
!320 = distinct !DISubprogram(name: "verror_at_line", scope: !313, file: !313, line: 298, type: !321, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !331)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !90, !90, !68, !74, !68, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !325)
!325 = !{!326, !328, !329, !330}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !324, file: !327, baseType: !74, size: 32)
!327 = !DIFile(filename: "lib/error.c", directory: "/src")
!328 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !324, file: !327, baseType: !74, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !324, file: !327, baseType: !89, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !324, file: !327, baseType: !89, size: 64, offset: 128)
!331 = !{!332, !333, !334, !335, !336, !337}
!332 = !DILocalVariable(name: "status", arg: 1, scope: !320, file: !313, line: 298, type: !90)
!333 = !DILocalVariable(name: "errnum", arg: 2, scope: !320, file: !313, line: 298, type: !90)
!334 = !DILocalVariable(name: "file_name", arg: 3, scope: !320, file: !313, line: 298, type: !68)
!335 = !DILocalVariable(name: "line_number", arg: 4, scope: !320, file: !313, line: 298, type: !74)
!336 = !DILocalVariable(name: "message", arg: 5, scope: !320, file: !313, line: 298, type: !68)
!337 = !DILocalVariable(name: "args", arg: 6, scope: !320, file: !313, line: 298, type: !323)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(name: "old_line_number", scope: !320, file: !313, line: 305, type: !74, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !313, line: 338, type: !106, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !313, line: 346, type: !135, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !313, line: 346, type: !113, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "error_message_count", scope: !312, file: !313, line: 69, type: !74, isLocal: false, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !312, file: !313, line: 295, type: !90, isLocal: false, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !313, line: 208, type: !14, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !313, line: 208, type: !354, isLocal: true, isDefinition: true)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 21)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !313, line: 214, type: !99, isLocal: true, isDefinition: true)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null}
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !364, line: 60, type: !113, isLocal: true, isDefinition: true)
!364 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(name: "long_options", scope: !367, file: !364, line: 34, type: !375, isLocal: true, isDefinition: true)
!367 = distinct !DICompileUnit(language: DW_LANG_C11, file: !364, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !368, splitDebugInlining: false, nameTableKind: None)
!368 = !{!362, !369, !371, !373, !365}
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !364, line: 112, type: !29, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !364, line: 36, type: !99, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !364, line: 37, type: !135, isLocal: true, isDefinition: true)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 768, elements: !123)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !378, line: 50, size: 256, elements: !379)
!378 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!379 = !{!380, !381, !382, !384}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !377, file: !378, line: 52, baseType: !68, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !377, file: !378, line: 55, baseType: !90, size: 32, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !377, file: !378, line: 56, baseType: !383, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !377, file: !378, line: 57, baseType: !90, size: 32, offset: 192)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(name: "program_name", scope: !387, file: !388, line: 31, type: !68, isLocal: false, isDefinition: true)
!387 = distinct !DICompileUnit(language: DW_LANG_C11, file: !388, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !389, globals: !390, splitDebugInlining: false, nameTableKind: None)
!388 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!389 = !{!237}
!390 = !{!385, !391, !393}
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !388, line: 46, type: !135, isLocal: true, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !388, line: 49, type: !106, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(name: "utf07FF", scope: !397, file: !398, line: 46, type: !425, isLocal: true, isDefinition: true)
!397 = distinct !DISubprogram(name: "proper_name_lite", scope: !398, file: !398, line: 38, type: !399, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !403)
!398 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!399 = !DISubroutineType(types: !400)
!400 = !{!68, !68, !68}
!401 = distinct !DICompileUnit(language: DW_LANG_C11, file: !398, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !402, splitDebugInlining: false, nameTableKind: None)
!402 = !{!395}
!403 = !{!404, !405, !406, !407, !412}
!404 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !397, file: !398, line: 38, type: !68)
!405 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !397, file: !398, line: 38, type: !68)
!406 = !DILocalVariable(name: "translation", scope: !397, file: !398, line: 40, type: !68)
!407 = !DILocalVariable(name: "w", scope: !397, file: !398, line: 47, type: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !409, line: 37, baseType: !410)
!409 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !257, line: 57, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !257, line: 42, baseType: !74)
!412 = !DILocalVariable(name: "mbs", scope: !397, file: !398, line: 48, type: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !414, line: 6, baseType: !415)
!414 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !416, line: 21, baseType: !417)
!416 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !416, line: 13, size: 64, elements: !418)
!418 = !{!419, !420}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !417, file: !416, line: 15, baseType: !90, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !417, file: !416, line: 20, baseType: !421, size: 32, offset: 32)
!421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !417, file: !416, line: 16, size: 32, elements: !422)
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !421, file: !416, line: 18, baseType: !74, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !421, file: !416, line: 19, baseType: !106, size: 32)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 16, elements: !114)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !428, line: 78, type: !135, isLocal: true, isDefinition: true)
!428 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !428, line: 79, type: !59, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !428, line: 80, type: !49, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !428, line: 81, type: !49, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !428, line: 82, type: !279, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !428, line: 83, type: !113, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !428, line: 84, type: !135, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !428, line: 85, type: !14, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !428, line: 86, type: !14, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !428, line: 87, type: !135, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !449, file: !428, line: 76, type: !535, isLocal: false, isDefinition: true)
!449 = distinct !DICompileUnit(language: DW_LANG_C11, file: !428, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !450, retainedTypes: !470, globals: !471, splitDebugInlining: false, nameTableKind: None)
!450 = !{!451, !465, !72}
!451 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !452, line: 42, baseType: !74, size: 32, elements: !453)
!452 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464}
!454 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!455 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!456 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!457 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!458 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!459 = !DIEnumerator(name: "c_quoting_style", value: 5)
!460 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!461 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!462 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!463 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!464 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!465 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !452, line: 254, baseType: !74, size: 32, elements: !466)
!466 = !{!467, !468, !469}
!467 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!468 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!469 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!470 = !{!90, !91, !92}
!471 = !{!426, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !472, !476, !486, !488, !493, !495, !497, !499, !501, !524, !531, !533}
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !449, file: !428, line: 92, type: !474, isLocal: false, isDefinition: true)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 320, elements: !35)
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !449, file: !428, line: 1040, type: !478, isLocal: false, isDefinition: true)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !428, line: 56, size: 448, elements: !479)
!479 = !{!480, !481, !482, !484, !485}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !478, file: !428, line: 59, baseType: !451, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !478, file: !428, line: 62, baseType: !90, size: 32, offset: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !478, file: !428, line: 66, baseType: !483, size: 256, offset: 64)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 256, elements: !136)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !478, file: !428, line: 69, baseType: !68, size: 64, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !478, file: !428, line: 72, baseType: !68, size: 64, offset: 384)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !449, file: !428, line: 107, type: !478, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(name: "slot0", scope: !449, file: !428, line: 831, type: !490, isLocal: true, isDefinition: true)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 256)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !428, line: 321, type: !113, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !428, line: 357, type: !113, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !428, line: 358, type: !113, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !428, line: 199, type: !14, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(name: "quote", scope: !503, file: !428, line: 228, type: !522, isLocal: true, isDefinition: true)
!503 = distinct !DISubprogram(name: "gettext_quote", scope: !428, file: !428, line: 197, type: !504, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !506)
!504 = !DISubroutineType(types: !505)
!505 = !{!68, !68, !451}
!506 = !{!507, !508, !509, !510, !511}
!507 = !DILocalVariable(name: "msgid", arg: 1, scope: !503, file: !428, line: 197, type: !68)
!508 = !DILocalVariable(name: "s", arg: 2, scope: !503, file: !428, line: 197, type: !451)
!509 = !DILocalVariable(name: "translation", scope: !503, file: !428, line: 199, type: !68)
!510 = !DILocalVariable(name: "w", scope: !503, file: !428, line: 229, type: !408)
!511 = !DILocalVariable(name: "mbs", scope: !503, file: !428, line: 230, type: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !414, line: 6, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !416, line: 21, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !416, line: 13, size: 64, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !514, file: !416, line: 15, baseType: !90, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !514, file: !416, line: 20, baseType: !518, size: 32, offset: 32)
!518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !514, file: !416, line: 16, size: 32, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !518, file: !416, line: 18, baseType: !74, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !518, file: !416, line: 19, baseType: !106, size: 32)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 64, elements: !523)
!523 = !{!115, !108}
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(name: "slotvec", scope: !449, file: !428, line: 834, type: !526, isLocal: true, isDefinition: true)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !428, line: 823, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !527, file: !428, line: 825, baseType: !92, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !527, file: !428, line: 826, baseType: !237, size: 64, offset: 64)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(name: "nslots", scope: !449, file: !428, line: 832, type: !90, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(name: "slotvec0", scope: !449, file: !428, line: 833, type: !527, isLocal: true, isDefinition: true)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 704, elements: !537)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!537 = !{!538}
!538 = !DISubrange(count: 11)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !541, line: 67, type: !206, isLocal: true, isDefinition: true)
!541 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !541, line: 69, type: !14, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !541, line: 83, type: !14, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !541, line: 83, type: !106, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !541, line: 85, type: !113, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !541, line: 88, type: !552, isLocal: true, isDefinition: true)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 171)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !541, line: 88, type: !557, isLocal: true, isDefinition: true)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 34)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !541, line: 105, type: !177, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !541, line: 109, type: !564, isLocal: true, isDefinition: true)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 23)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !541, line: 113, type: !569, isLocal: true, isDefinition: true)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 28)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !541, line: 120, type: !574, isLocal: true, isDefinition: true)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: 32)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !541, line: 127, type: !579, isLocal: true, isDefinition: true)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: 36)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !541, line: 134, type: !154, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !541, line: 142, type: !586, isLocal: true, isDefinition: true)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 44)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !541, line: 150, type: !591, isLocal: true, isDefinition: true)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 48)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !541, line: 159, type: !596, isLocal: true, isDefinition: true)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 52)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !541, line: 170, type: !601, isLocal: true, isDefinition: true)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 60)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !541, line: 248, type: !279, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !541, line: 248, type: !182, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !541, line: 254, type: !279, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !541, line: 254, type: !44, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !541, line: 254, type: !154, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !541, line: 259, type: !3, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !541, line: 259, type: !618, isLocal: true, isDefinition: true)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: 29)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !623, file: !624, line: 26, type: !626, isLocal: false, isDefinition: true)
!623 = distinct !DICompileUnit(language: DW_LANG_C11, file: !624, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !625, splitDebugInlining: false, nameTableKind: None)
!624 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!625 = !{!621}
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 376, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 47)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(name: "exit_failure", scope: !631, file: !632, line: 24, type: !634, isLocal: false, isDefinition: true)
!631 = distinct !DICompileUnit(language: DW_LANG_C11, file: !632, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !633, splitDebugInlining: false, nameTableKind: None)
!632 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!633 = !{!629}
!634 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !90)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !637, line: 34, type: !122, isLocal: true, isDefinition: true)
!637 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !637, line: 34, type: !14, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !637, line: 34, type: !54, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !644, line: 108, type: !29, isLocal: true, isDefinition: true)
!644 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(name: "internal_state", scope: !647, file: !644, line: 97, type: !650, isLocal: true, isDefinition: true)
!647 = distinct !DICompileUnit(language: DW_LANG_C11, file: !644, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !648, globals: !649, splitDebugInlining: false, nameTableKind: None)
!648 = !{!89, !92, !95}
!649 = !{!642, !645}
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !414, line: 6, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !416, line: 21, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !416, line: 13, size: 64, elements: !653)
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !652, file: !416, line: 15, baseType: !90, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !652, file: !416, line: 20, baseType: !656, size: 32, offset: 32)
!656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !652, file: !416, line: 16, size: 32, elements: !657)
!657 = !{!658, !659}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !656, file: !416, line: 18, baseType: !74, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !656, file: !416, line: 19, baseType: !106, size: 32)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !662, line: 35, type: !59, isLocal: true, isDefinition: true)
!662 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!663 = distinct !DICompileUnit(language: DW_LANG_C11, file: !664, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!664 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!665 = distinct !DICompileUnit(language: DW_LANG_C11, file: !541, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !666, retainedTypes: !670, globals: !671, splitDebugInlining: false, nameTableKind: None)
!666 = !{!667}
!667 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !541, line: 40, baseType: !74, size: 32, elements: !668)
!668 = !{!669}
!669 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!670 = !{!89}
!671 = !{!539, !542, !544, !546, !548, !550, !555, !560, !562, !567, !572, !577, !582, !584, !589, !594, !599, !604, !606, !608, !610, !612, !614, !616}
!672 = distinct !DICompileUnit(language: DW_LANG_C11, file: !673, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !674, retainedTypes: !705, splitDebugInlining: false, nameTableKind: None)
!673 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!674 = !{!675, !687}
!675 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !676, file: !673, line: 188, baseType: !74, size: 32, elements: !685)
!676 = distinct !DISubprogram(name: "x2nrealloc", scope: !673, file: !673, line: 176, type: !677, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !680)
!677 = !DISubroutineType(types: !678)
!678 = !{!89, !89, !679, !92}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!680 = !{!681, !682, !683, !684}
!681 = !DILocalVariable(name: "p", arg: 1, scope: !676, file: !673, line: 176, type: !89)
!682 = !DILocalVariable(name: "pn", arg: 2, scope: !676, file: !673, line: 176, type: !679)
!683 = !DILocalVariable(name: "s", arg: 3, scope: !676, file: !673, line: 176, type: !92)
!684 = !DILocalVariable(name: "n", scope: !676, file: !673, line: 178, type: !92)
!685 = !{!686}
!686 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!687 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !688, file: !673, line: 228, baseType: !74, size: 32, elements: !685)
!688 = distinct !DISubprogram(name: "xpalloc", scope: !673, file: !673, line: 223, type: !689, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !695)
!689 = !DISubroutineType(types: !690)
!690 = !{!89, !89, !691, !692, !694, !692}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !693, line: 130, baseType: !694)
!693 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !93, line: 35, baseType: !258)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704}
!696 = !DILocalVariable(name: "pa", arg: 1, scope: !688, file: !673, line: 223, type: !89)
!697 = !DILocalVariable(name: "pn", arg: 2, scope: !688, file: !673, line: 223, type: !691)
!698 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !688, file: !673, line: 223, type: !692)
!699 = !DILocalVariable(name: "n_max", arg: 4, scope: !688, file: !673, line: 223, type: !694)
!700 = !DILocalVariable(name: "s", arg: 5, scope: !688, file: !673, line: 223, type: !692)
!701 = !DILocalVariable(name: "n0", scope: !688, file: !673, line: 230, type: !692)
!702 = !DILocalVariable(name: "n", scope: !688, file: !673, line: 237, type: !692)
!703 = !DILocalVariable(name: "nbytes", scope: !688, file: !673, line: 248, type: !692)
!704 = !DILocalVariable(name: "adjusted_nbytes", scope: !688, file: !673, line: 252, type: !692)
!705 = !{!237, !89, !216, !258, !94}
!706 = distinct !DICompileUnit(language: DW_LANG_C11, file: !637, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !707, splitDebugInlining: false, nameTableKind: None)
!707 = !{!635, !638, !640}
!708 = distinct !DICompileUnit(language: DW_LANG_C11, file: !709, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!709 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!710 = distinct !DICompileUnit(language: DW_LANG_C11, file: !711, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!711 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!712 = distinct !DICompileUnit(language: DW_LANG_C11, file: !713, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !670, splitDebugInlining: false, nameTableKind: None)
!713 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!714 = distinct !DICompileUnit(language: DW_LANG_C11, file: !715, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !670, splitDebugInlining: false, nameTableKind: None)
!715 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!716 = distinct !DICompileUnit(language: DW_LANG_C11, file: !717, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !718, splitDebugInlining: false, nameTableKind: None)
!717 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!718 = !{!216, !94, !89}
!719 = distinct !DICompileUnit(language: DW_LANG_C11, file: !662, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !720, splitDebugInlining: false, nameTableKind: None)
!720 = !{!721, !660}
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !662, line: 35, type: !113, isLocal: true, isDefinition: true)
!723 = distinct !DICompileUnit(language: DW_LANG_C11, file: !724, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!724 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!725 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !670, splitDebugInlining: false, nameTableKind: None)
!726 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!727 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!728 = !{i32 7, !"Dwarf Version", i32 5}
!729 = !{i32 2, !"Debug Info Version", i32 3}
!730 = !{i32 1, !"wchar_size", i32 4}
!731 = !{i32 8, !"PIC Level", i32 2}
!732 = !{i32 7, !"PIE Level", i32 2}
!733 = !{i32 7, !"uwtable", i32 2}
!734 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 34, type: !735, scopeLine: 35, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !737)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !90}
!737 = !{!738}
!738 = !DILocalVariable(name: "status", arg: 1, scope: !734, file: !2, line: 34, type: !90)
!739 = !DILocation(line: 0, scope: !734)
!740 = !DILocation(line: 36, column: 14, scope: !741)
!741 = distinct !DILexicalBlock(scope: !734, file: !2, line: 36, column: 7)
!742 = !DILocation(line: 36, column: 7, scope: !734)
!743 = !DILocation(line: 37, column: 5, scope: !744)
!744 = distinct !DILexicalBlock(scope: !741, file: !2, line: 37, column: 5)
!745 = !{!746, !746, i64 0}
!746 = !{!"any pointer", !747, i64 0}
!747 = !{!"omnipotent char", !748, i64 0}
!748 = !{!"Simple C/C++ TBAA"}
!749 = !DILocation(line: 40, column: 7, scope: !750)
!750 = distinct !DILexicalBlock(scope: !741, file: !2, line: 39, column: 5)
!751 = !DILocation(line: 45, column: 7, scope: !750)
!752 = !DILocation(line: 46, column: 7, scope: !750)
!753 = !DILocalVariable(name: "program", arg: 1, scope: !754, file: !65, line: 836, type: !68)
!754 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !65, file: !65, line: 836, type: !755, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !68}
!757 = !{!753, !758, !765, !766, !768, !769}
!758 = !DILocalVariable(name: "infomap", scope: !754, file: !65, line: 838, type: !759)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !760, size: 896, elements: !15)
!760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !754, file: !65, line: 838, size: 128, elements: !762)
!762 = !{!763, !764}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !761, file: !65, line: 838, baseType: !68, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !761, file: !65, line: 838, baseType: !68, size: 64, offset: 64)
!765 = !DILocalVariable(name: "node", scope: !754, file: !65, line: 848, type: !68)
!766 = !DILocalVariable(name: "map_prog", scope: !754, file: !65, line: 849, type: !767)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!768 = !DILocalVariable(name: "lc_messages", scope: !754, file: !65, line: 861, type: !68)
!769 = !DILocalVariable(name: "url_program", scope: !754, file: !65, line: 874, type: !68)
!770 = !DILocation(line: 0, scope: !754, inlinedAt: !771)
!771 = distinct !DILocation(line: 47, column: 7, scope: !750)
!772 = !DILocation(line: 857, column: 3, scope: !754, inlinedAt: !771)
!773 = !DILocation(line: 861, column: 29, scope: !754, inlinedAt: !771)
!774 = !DILocation(line: 862, column: 7, scope: !775, inlinedAt: !771)
!775 = distinct !DILexicalBlock(scope: !754, file: !65, line: 862, column: 7)
!776 = !DILocation(line: 862, column: 19, scope: !775, inlinedAt: !771)
!777 = !DILocation(line: 862, column: 22, scope: !775, inlinedAt: !771)
!778 = !DILocation(line: 862, column: 7, scope: !754, inlinedAt: !771)
!779 = !DILocation(line: 868, column: 7, scope: !780, inlinedAt: !771)
!780 = distinct !DILexicalBlock(scope: !775, file: !65, line: 863, column: 5)
!781 = !DILocation(line: 870, column: 5, scope: !780, inlinedAt: !771)
!782 = !DILocation(line: 875, column: 3, scope: !754, inlinedAt: !771)
!783 = !DILocation(line: 877, column: 3, scope: !754, inlinedAt: !771)
!784 = !DILocation(line: 49, column: 3, scope: !734)
!785 = !DISubprogram(name: "dcgettext", scope: !786, file: !786, line: 51, type: !787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!786 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!787 = !DISubroutineType(types: !788)
!788 = !{!237, !68, !68, !90}
!789 = !{}
!790 = !DISubprogram(name: "__fprintf_chk", scope: !791, file: !791, line: 93, type: !792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!791 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!792 = !DISubroutineType(types: !793)
!793 = !{!90, !794, !90, !795, null}
!794 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !229)
!795 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!796 = !DISubprogram(name: "__printf_chk", scope: !791, file: !791, line: 95, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!797 = !DISubroutineType(types: !798)
!798 = !{!90, !90, !795, null}
!799 = !DILocation(line: 0, scope: !64)
!800 = !DILocation(line: 581, column: 7, scope: !214)
!801 = !{!802, !802, i64 0}
!802 = !{!"int", !747, i64 0}
!803 = !DILocation(line: 581, column: 19, scope: !214)
!804 = !DILocation(line: 581, column: 7, scope: !64)
!805 = !DILocation(line: 585, column: 26, scope: !213)
!806 = !DILocation(line: 0, scope: !213)
!807 = !DILocation(line: 586, column: 23, scope: !213)
!808 = !DILocation(line: 586, column: 28, scope: !213)
!809 = !DILocation(line: 586, column: 32, scope: !213)
!810 = !{!747, !747, i64 0}
!811 = !DILocation(line: 586, column: 38, scope: !213)
!812 = !DILocalVariable(name: "__s1", arg: 1, scope: !813, file: !814, line: 1359, type: !68)
!813 = distinct !DISubprogram(name: "streq", scope: !814, file: !814, line: 1359, type: !815, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !817)
!814 = !DIFile(filename: "./lib/string.h", directory: "/src")
!815 = !DISubroutineType(types: !816)
!816 = !{!216, !68, !68}
!817 = !{!812, !818}
!818 = !DILocalVariable(name: "__s2", arg: 2, scope: !813, file: !814, line: 1359, type: !68)
!819 = !DILocation(line: 0, scope: !813, inlinedAt: !820)
!820 = distinct !DILocation(line: 586, column: 41, scope: !213)
!821 = !DILocation(line: 1361, column: 11, scope: !813, inlinedAt: !820)
!822 = !DILocation(line: 1361, column: 10, scope: !813, inlinedAt: !820)
!823 = !DILocation(line: 586, column: 19, scope: !213)
!824 = !DILocation(line: 587, column: 5, scope: !213)
!825 = !DILocation(line: 588, column: 7, scope: !826)
!826 = distinct !DILexicalBlock(scope: !64, file: !65, line: 588, column: 7)
!827 = !DILocation(line: 588, column: 7, scope: !64)
!828 = !DILocation(line: 590, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !826, file: !65, line: 589, column: 5)
!830 = !DILocation(line: 591, column: 7, scope: !829)
!831 = !DILocation(line: 595, column: 37, scope: !64)
!832 = !DILocation(line: 595, column: 35, scope: !64)
!833 = !DILocation(line: 596, column: 29, scope: !64)
!834 = !DILocation(line: 597, column: 8, scope: !222)
!835 = !DILocation(line: 597, column: 7, scope: !64)
!836 = !DILocation(line: 604, column: 24, scope: !221)
!837 = !DILocation(line: 604, column: 12, scope: !222)
!838 = !DILocation(line: 0, scope: !220)
!839 = !DILocation(line: 610, column: 16, scope: !220)
!840 = !DILocation(line: 610, column: 7, scope: !220)
!841 = !DILocation(line: 611, column: 21, scope: !220)
!842 = !{!843, !843, i64 0}
!843 = !{!"short", !747, i64 0}
!844 = !DILocation(line: 611, column: 19, scope: !220)
!845 = !DILocation(line: 611, column: 16, scope: !220)
!846 = !DILocation(line: 610, column: 30, scope: !220)
!847 = distinct !{!847, !840, !841, !848}
!848 = !{!"llvm.loop.mustprogress"}
!849 = !DILocation(line: 612, column: 18, scope: !850)
!850 = distinct !DILexicalBlock(scope: !220, file: !65, line: 612, column: 11)
!851 = !DILocation(line: 612, column: 11, scope: !220)
!852 = !DILocation(line: 618, column: 5, scope: !220)
!853 = !DILocation(line: 620, column: 23, scope: !64)
!854 = !DILocation(line: 625, column: 39, scope: !64)
!855 = !DILocation(line: 626, column: 3, scope: !64)
!856 = !DILocation(line: 626, column: 10, scope: !64)
!857 = !DILocation(line: 626, column: 21, scope: !64)
!858 = !DILocation(line: 628, column: 44, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !65, line: 628, column: 11)
!860 = distinct !DILexicalBlock(scope: !64, file: !65, line: 627, column: 5)
!861 = !DILocation(line: 628, column: 32, scope: !859)
!862 = !DILocation(line: 628, column: 49, scope: !859)
!863 = !DILocation(line: 628, column: 11, scope: !860)
!864 = !DILocation(line: 630, column: 11, scope: !865)
!865 = distinct !DILexicalBlock(scope: !860, file: !65, line: 630, column: 11)
!866 = !DILocation(line: 630, column: 11, scope: !860)
!867 = !DILocation(line: 632, column: 26, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !65, line: 632, column: 15)
!869 = distinct !DILexicalBlock(scope: !865, file: !65, line: 631, column: 9)
!870 = !DILocation(line: 632, column: 34, scope: !868)
!871 = !DILocation(line: 632, column: 37, scope: !868)
!872 = !DILocation(line: 632, column: 15, scope: !869)
!873 = !DILocation(line: 636, column: 16, scope: !874)
!874 = distinct !DILexicalBlock(scope: !869, file: !65, line: 636, column: 15)
!875 = !DILocation(line: 636, column: 29, scope: !874)
!876 = !DILocation(line: 640, column: 16, scope: !860)
!877 = distinct !{!877, !855, !878, !848}
!878 = !DILocation(line: 641, column: 5, scope: !64)
!879 = !DILocation(line: 644, column: 3, scope: !64)
!880 = !DILocation(line: 0, scope: !813, inlinedAt: !881)
!881 = distinct !DILocation(line: 648, column: 31, scope: !64)
!882 = !DILocation(line: 0, scope: !813, inlinedAt: !883)
!883 = distinct !DILocation(line: 649, column: 31, scope: !64)
!884 = !DILocation(line: 0, scope: !813, inlinedAt: !885)
!885 = distinct !DILocation(line: 650, column: 31, scope: !64)
!886 = !DILocation(line: 0, scope: !813, inlinedAt: !887)
!887 = distinct !DILocation(line: 651, column: 31, scope: !64)
!888 = !DILocation(line: 0, scope: !813, inlinedAt: !889)
!889 = distinct !DILocation(line: 652, column: 31, scope: !64)
!890 = !DILocation(line: 0, scope: !813, inlinedAt: !891)
!891 = distinct !DILocation(line: 653, column: 31, scope: !64)
!892 = !DILocation(line: 0, scope: !813, inlinedAt: !893)
!893 = distinct !DILocation(line: 654, column: 31, scope: !64)
!894 = !DILocation(line: 0, scope: !813, inlinedAt: !895)
!895 = distinct !DILocation(line: 655, column: 31, scope: !64)
!896 = !DILocation(line: 0, scope: !813, inlinedAt: !897)
!897 = distinct !DILocation(line: 656, column: 31, scope: !64)
!898 = !DILocation(line: 0, scope: !813, inlinedAt: !899)
!899 = distinct !DILocation(line: 657, column: 31, scope: !64)
!900 = !DILocation(line: 663, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !64, file: !65, line: 663, column: 7)
!902 = !DILocation(line: 664, column: 7, scope: !901)
!903 = !DILocation(line: 664, column: 10, scope: !901)
!904 = !DILocation(line: 663, column: 7, scope: !64)
!905 = !DILocation(line: 669, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !901, file: !65, line: 665, column: 5)
!907 = !DILocation(line: 671, column: 5, scope: !906)
!908 = !DILocation(line: 676, column: 7, scope: !909)
!909 = distinct !DILexicalBlock(scope: !901, file: !65, line: 673, column: 5)
!910 = !DILocation(line: 679, column: 3, scope: !64)
!911 = !DILocation(line: 683, column: 3, scope: !64)
!912 = !DILocation(line: 686, column: 3, scope: !64)
!913 = !DILocation(line: 688, column: 3, scope: !64)
!914 = !DILocation(line: 691, column: 3, scope: !64)
!915 = !DILocation(line: 695, column: 3, scope: !64)
!916 = !DILocation(line: 696, column: 1, scope: !64)
!917 = !DISubprogram(name: "setlocale", scope: !918, file: !918, line: 122, type: !919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!918 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!919 = !DISubroutineType(types: !920)
!920 = !{!237, !90, !68}
!921 = !DISubprogram(name: "strncmp", scope: !922, file: !922, line: 159, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!922 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!923 = !DISubroutineType(types: !924)
!924 = !{!90, !68, !68, !92}
!925 = !DISubprogram(name: "fputs_unlocked", scope: !926, file: !926, line: 691, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!926 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!927 = !DISubroutineType(types: !928)
!928 = !{!90, !795, !794}
!929 = !DISubprogram(name: "exit", scope: !930, file: !930, line: 624, type: !735, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !789)
!930 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!931 = !DISubprogram(name: "getenv", scope: !930, file: !930, line: 641, type: !932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!932 = !DISubroutineType(types: !933)
!933 = !{!237, !68}
!934 = !DISubprogram(name: "strcmp", scope: !922, file: !922, line: 156, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!935 = !DISubroutineType(types: !936)
!936 = !{!90, !68, !68}
!937 = !DISubprogram(name: "strspn", scope: !922, file: !922, line: 297, type: !938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!938 = !DISubroutineType(types: !939)
!939 = !{!94, !68, !68}
!940 = !DISubprogram(name: "strchr", scope: !922, file: !922, line: 246, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!941 = !DISubroutineType(types: !942)
!942 = !{!237, !68, !90}
!943 = !DISubprogram(name: "__ctype_b_loc", scope: !73, file: !73, line: 79, type: !944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!944 = !DISubroutineType(types: !945)
!945 = !{!946}
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!949 = !DISubprogram(name: "strcspn", scope: !922, file: !922, line: 293, type: !938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!950 = !DISubprogram(name: "fwrite_unlocked", scope: !926, file: !926, line: 704, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!951 = !DISubroutineType(types: !952)
!952 = !{!92, !953, !92, !92, !794}
!953 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !954)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!956 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 53, type: !957, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !960)
!957 = !DISubroutineType(types: !958)
!958 = !{!90, !90, !959}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!960 = !{!961, !962, !963}
!961 = !DILocalVariable(name: "argc", arg: 1, scope: !956, file: !2, line: 53, type: !90)
!962 = !DILocalVariable(name: "argv", arg: 2, scope: !956, file: !2, line: 53, type: !959)
!963 = !DILocalVariable(name: "id", scope: !956, file: !2, line: 76, type: !74)
!964 = !DILocation(line: 0, scope: !956)
!965 = !DILocation(line: 56, column: 21, scope: !956)
!966 = !DILocation(line: 56, column: 3, scope: !956)
!967 = !DILocation(line: 57, column: 3, scope: !956)
!968 = !DILocation(line: 58, column: 3, scope: !956)
!969 = !DILocation(line: 59, column: 3, scope: !956)
!970 = !DILocation(line: 61, column: 3, scope: !956)
!971 = !DILocation(line: 64, column: 36, scope: !956)
!972 = !DILocation(line: 64, column: 58, scope: !956)
!973 = !DILocation(line: 63, column: 3, scope: !956)
!974 = !DILocation(line: 67, column: 7, scope: !975)
!975 = distinct !DILexicalBlock(scope: !956, file: !2, line: 67, column: 7)
!976 = !DILocation(line: 67, column: 14, scope: !975)
!977 = !DILocation(line: 67, column: 7, scope: !956)
!978 = !DILocation(line: 69, column: 7, scope: !979)
!979 = distinct !DILexicalBlock(scope: !975, file: !2, line: 68, column: 5)
!980 = !DILocation(line: 70, column: 7, scope: !979)
!981 = !DILocation(line: 76, column: 21, scope: !956)
!982 = !DILocation(line: 78, column: 3, scope: !956)
!983 = !DILocation(line: 80, column: 3, scope: !956)
!984 = !DISubprogram(name: "bindtextdomain", scope: !786, file: !786, line: 86, type: !985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!985 = !DISubroutineType(types: !986)
!986 = !{!237, !68, !68}
!987 = !DISubprogram(name: "textdomain", scope: !786, file: !786, line: 82, type: !932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!988 = !DISubprogram(name: "atexit", scope: !930, file: !930, line: 602, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!989 = !DISubroutineType(types: !990)
!990 = !{!90, !359}
!991 = !DISubprogram(name: "gethostid", scope: !992, file: !992, line: 1002, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!992 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!993 = !DISubroutineType(types: !994)
!994 = !{!258}
!995 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !298, file: !298, line: 50, type: !755, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !996)
!996 = !{!997}
!997 = !DILocalVariable(name: "file", arg: 1, scope: !995, file: !298, line: 50, type: !68)
!998 = !DILocation(line: 0, scope: !995)
!999 = !DILocation(line: 52, column: 13, scope: !995)
!1000 = !DILocation(line: 53, column: 1, scope: !995)
!1001 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !298, file: !298, line: 87, type: !1002, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1004)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null, !216}
!1004 = !{!1005}
!1005 = !DILocalVariable(name: "ignore", arg: 1, scope: !1001, file: !298, line: 87, type: !216)
!1006 = !DILocation(line: 0, scope: !1001)
!1007 = !DILocation(line: 89, column: 16, scope: !1001)
!1008 = !{!1009, !1009, i64 0}
!1009 = !{!"_Bool", !747, i64 0}
!1010 = !DILocation(line: 90, column: 1, scope: !1001)
!1011 = distinct !DISubprogram(name: "close_stdout", scope: !298, file: !298, line: 116, type: !360, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1012)
!1012 = !{!1013}
!1013 = !DILocalVariable(name: "write_error", scope: !1014, file: !298, line: 121, type: !68)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !298, line: 120, column: 5)
!1015 = distinct !DILexicalBlock(scope: !1011, file: !298, line: 118, column: 7)
!1016 = !DILocation(line: 118, column: 21, scope: !1015)
!1017 = !DILocation(line: 118, column: 7, scope: !1015)
!1018 = !DILocation(line: 118, column: 29, scope: !1015)
!1019 = !DILocation(line: 119, column: 7, scope: !1015)
!1020 = !DILocation(line: 119, column: 12, scope: !1015)
!1021 = !{i8 0, i8 2}
!1022 = !DILocation(line: 119, column: 25, scope: !1015)
!1023 = !DILocation(line: 119, column: 28, scope: !1015)
!1024 = !DILocation(line: 119, column: 34, scope: !1015)
!1025 = !DILocation(line: 118, column: 7, scope: !1011)
!1026 = !DILocation(line: 121, column: 33, scope: !1014)
!1027 = !DILocation(line: 0, scope: !1014)
!1028 = !DILocation(line: 122, column: 11, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1014, file: !298, line: 122, column: 11)
!1030 = !DILocation(line: 0, scope: !1029)
!1031 = !DILocation(line: 122, column: 11, scope: !1014)
!1032 = !DILocation(line: 123, column: 9, scope: !1029)
!1033 = !DILocation(line: 126, column: 9, scope: !1029)
!1034 = !DILocation(line: 128, column: 14, scope: !1014)
!1035 = !DILocation(line: 128, column: 7, scope: !1014)
!1036 = !DILocation(line: 133, column: 42, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1011, file: !298, line: 133, column: 7)
!1038 = !DILocation(line: 133, column: 28, scope: !1037)
!1039 = !DILocation(line: 133, column: 50, scope: !1037)
!1040 = !DILocation(line: 133, column: 7, scope: !1011)
!1041 = !DILocation(line: 134, column: 12, scope: !1037)
!1042 = !DILocation(line: 134, column: 5, scope: !1037)
!1043 = !DILocation(line: 135, column: 1, scope: !1011)
!1044 = !DISubprogram(name: "__errno_location", scope: !1045, file: !1045, line: 37, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1045 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!383}
!1048 = !DISubprogram(name: "_exit", scope: !992, file: !992, line: 624, type: !735, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1049 = distinct !DISubprogram(name: "verror", scope: !313, file: !313, line: 251, type: !1050, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1052)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{null, !90, !90, !68, !323}
!1052 = !{!1053, !1054, !1055, !1056}
!1053 = !DILocalVariable(name: "status", arg: 1, scope: !1049, file: !313, line: 251, type: !90)
!1054 = !DILocalVariable(name: "errnum", arg: 2, scope: !1049, file: !313, line: 251, type: !90)
!1055 = !DILocalVariable(name: "message", arg: 3, scope: !1049, file: !313, line: 251, type: !68)
!1056 = !DILocalVariable(name: "args", arg: 4, scope: !1049, file: !313, line: 251, type: !323)
!1057 = !DILocation(line: 0, scope: !1049)
!1058 = !DILocation(line: 261, column: 3, scope: !1049)
!1059 = !DILocation(line: 265, column: 7, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1049, file: !313, line: 265, column: 7)
!1061 = !DILocation(line: 265, column: 7, scope: !1049)
!1062 = !DILocation(line: 266, column: 5, scope: !1060)
!1063 = !DILocation(line: 272, column: 7, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !313, line: 268, column: 5)
!1065 = !DILocation(line: 276, column: 3, scope: !1049)
!1066 = !DILocation(line: 282, column: 1, scope: !1049)
!1067 = distinct !DISubprogram(name: "flush_stdout", scope: !313, file: !313, line: 163, type: !360, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1068)
!1068 = !{!1069}
!1069 = !DILocalVariable(name: "stdout_fd", scope: !1067, file: !313, line: 166, type: !90)
!1070 = !DILocation(line: 0, scope: !1067)
!1071 = !DILocalVariable(name: "fd", arg: 1, scope: !1072, file: !313, line: 145, type: !90)
!1072 = distinct !DISubprogram(name: "is_open", scope: !313, file: !313, line: 145, type: !1073, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1075)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!90, !90}
!1075 = !{!1071}
!1076 = !DILocation(line: 0, scope: !1072, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 182, column: 25, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1067, file: !313, line: 182, column: 7)
!1079 = !DILocation(line: 157, column: 15, scope: !1072, inlinedAt: !1077)
!1080 = !DILocation(line: 157, column: 12, scope: !1072, inlinedAt: !1077)
!1081 = !DILocation(line: 182, column: 7, scope: !1067)
!1082 = !DILocation(line: 184, column: 5, scope: !1078)
!1083 = !DILocation(line: 185, column: 1, scope: !1067)
!1084 = distinct !DISubprogram(name: "error_tail", scope: !313, file: !313, line: 219, type: !1050, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1085)
!1085 = !{!1086, !1087, !1088, !1089}
!1086 = !DILocalVariable(name: "status", arg: 1, scope: !1084, file: !313, line: 219, type: !90)
!1087 = !DILocalVariable(name: "errnum", arg: 2, scope: !1084, file: !313, line: 219, type: !90)
!1088 = !DILocalVariable(name: "message", arg: 3, scope: !1084, file: !313, line: 219, type: !68)
!1089 = !DILocalVariable(name: "args", arg: 4, scope: !1084, file: !313, line: 219, type: !323)
!1090 = !DILocation(line: 0, scope: !1084)
!1091 = !DILocation(line: 229, column: 13, scope: !1084)
!1092 = !DILocalVariable(name: "__stream", arg: 1, scope: !1093, file: !791, line: 132, type: !1096)
!1093 = distinct !DISubprogram(name: "vfprintf", scope: !791, file: !791, line: 132, type: !1094, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1131)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!90, !1096, !795, !323}
!1096 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !1099)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1099, file: !233, line: 51, baseType: !90, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1099, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1099, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1099, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1099, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1099, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1099, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1099, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1099, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1099, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1099, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1099, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1099, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1099, file: !233, line: 70, baseType: !1115, size: 64, offset: 832)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1099, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1099, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1099, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1099, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1099, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1099, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1099, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1099, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1099, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1099, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1099, file: !233, line: 93, baseType: !1115, size: 64, offset: 1344)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1099, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1099, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1099, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1099, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!1131 = !{!1092, !1132, !1133}
!1132 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1093, file: !791, line: 133, type: !795)
!1133 = !DILocalVariable(name: "__ap", arg: 3, scope: !1093, file: !791, line: 133, type: !323)
!1134 = !DILocation(line: 0, scope: !1093, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 229, column: 3, scope: !1084)
!1136 = !DILocation(line: 135, column: 10, scope: !1093, inlinedAt: !1135)
!1137 = !DILocation(line: 232, column: 3, scope: !1084)
!1138 = !DILocation(line: 233, column: 7, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1084, file: !313, line: 233, column: 7)
!1140 = !DILocation(line: 233, column: 7, scope: !1084)
!1141 = !DILocalVariable(name: "errnum", arg: 1, scope: !1142, file: !313, line: 188, type: !90)
!1142 = distinct !DISubprogram(name: "print_errno_message", scope: !313, file: !313, line: 188, type: !735, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1143)
!1143 = !{!1141, !1144, !1145}
!1144 = !DILocalVariable(name: "s", scope: !1142, file: !313, line: 190, type: !68)
!1145 = !DILocalVariable(name: "errbuf", scope: !1142, file: !313, line: 193, type: !1146)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1147)
!1147 = !{!1148}
!1148 = !DISubrange(count: 1024)
!1149 = !DILocation(line: 0, scope: !1142, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 234, column: 5, scope: !1139)
!1151 = !DILocation(line: 193, column: 3, scope: !1142, inlinedAt: !1150)
!1152 = !DILocation(line: 193, column: 8, scope: !1142, inlinedAt: !1150)
!1153 = !DILocation(line: 195, column: 7, scope: !1142, inlinedAt: !1150)
!1154 = !DILocation(line: 207, column: 9, scope: !1155, inlinedAt: !1150)
!1155 = distinct !DILexicalBlock(scope: !1142, file: !313, line: 207, column: 7)
!1156 = !DILocation(line: 207, column: 7, scope: !1142, inlinedAt: !1150)
!1157 = !DILocation(line: 208, column: 9, scope: !1155, inlinedAt: !1150)
!1158 = !DILocation(line: 208, column: 5, scope: !1155, inlinedAt: !1150)
!1159 = !DILocation(line: 214, column: 3, scope: !1142, inlinedAt: !1150)
!1160 = !DILocation(line: 216, column: 1, scope: !1142, inlinedAt: !1150)
!1161 = !DILocation(line: 234, column: 5, scope: !1139)
!1162 = !DILocation(line: 238, column: 3, scope: !1084)
!1163 = !DILocalVariable(name: "__c", arg: 1, scope: !1164, file: !1165, line: 101, type: !90)
!1164 = distinct !DISubprogram(name: "putc_unlocked", scope: !1165, file: !1165, line: 101, type: !1166, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1168)
!1165 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!90, !90, !1097}
!1168 = !{!1163, !1169}
!1169 = !DILocalVariable(name: "__stream", arg: 2, scope: !1164, file: !1165, line: 101, type: !1097)
!1170 = !DILocation(line: 0, scope: !1164, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 238, column: 3, scope: !1084)
!1172 = !DILocation(line: 103, column: 10, scope: !1164, inlinedAt: !1171)
!1173 = !{!1174, !746, i64 40}
!1174 = !{!"_IO_FILE", !802, i64 0, !746, i64 8, !746, i64 16, !746, i64 24, !746, i64 32, !746, i64 40, !746, i64 48, !746, i64 56, !746, i64 64, !746, i64 72, !746, i64 80, !746, i64 88, !746, i64 96, !746, i64 104, !802, i64 112, !802, i64 116, !1175, i64 120, !843, i64 128, !747, i64 130, !747, i64 131, !746, i64 136, !1175, i64 144, !746, i64 152, !746, i64 160, !746, i64 168, !746, i64 176, !1175, i64 184, !802, i64 192, !747, i64 196}
!1175 = !{!"long", !747, i64 0}
!1176 = !{!1174, !746, i64 48}
!1177 = !{!"branch_weights", i32 2000, i32 1}
!1178 = !DILocation(line: 240, column: 3, scope: !1084)
!1179 = !DILocation(line: 241, column: 7, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1084, file: !313, line: 241, column: 7)
!1181 = !DILocation(line: 241, column: 7, scope: !1084)
!1182 = !DILocation(line: 242, column: 5, scope: !1180)
!1183 = !DILocation(line: 243, column: 1, scope: !1084)
!1184 = !DISubprogram(name: "__vfprintf_chk", scope: !791, file: !791, line: 96, type: !1185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!90, !1096, !90, !795, !323}
!1187 = !DISubprogram(name: "strerror_r", scope: !922, file: !922, line: 444, type: !1188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!237, !90, !237, !92}
!1190 = !DISubprogram(name: "__overflow", scope: !926, file: !926, line: 886, type: !1191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!90, !1097, !90}
!1193 = !DISubprogram(name: "fflush_unlocked", scope: !926, file: !926, line: 239, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!90, !1097}
!1196 = !DISubprogram(name: "fcntl", scope: !1197, file: !1197, line: 149, type: !1198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1197 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!90, !90, !90, null}
!1200 = distinct !DISubprogram(name: "error", scope: !313, file: !313, line: 285, type: !1201, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1203)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{null, !90, !90, !68, null}
!1203 = !{!1204, !1205, !1206, !1207}
!1204 = !DILocalVariable(name: "status", arg: 1, scope: !1200, file: !313, line: 285, type: !90)
!1205 = !DILocalVariable(name: "errnum", arg: 2, scope: !1200, file: !313, line: 285, type: !90)
!1206 = !DILocalVariable(name: "message", arg: 3, scope: !1200, file: !313, line: 285, type: !68)
!1207 = !DILocalVariable(name: "ap", scope: !1200, file: !313, line: 287, type: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !926, line: 52, baseType: !1209)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1210, line: 14, baseType: !1211)
!1210 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !327, baseType: !1212)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 192, elements: !30)
!1213 = !DILocation(line: 0, scope: !1200)
!1214 = !DILocation(line: 287, column: 3, scope: !1200)
!1215 = !DILocation(line: 287, column: 11, scope: !1200)
!1216 = !DILocation(line: 288, column: 3, scope: !1200)
!1217 = !DILocation(line: 289, column: 3, scope: !1200)
!1218 = !DILocation(line: 290, column: 3, scope: !1200)
!1219 = !DILocation(line: 291, column: 1, scope: !1200)
!1220 = !DILocation(line: 0, scope: !320)
!1221 = !DILocation(line: 302, column: 7, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !320, file: !313, line: 302, column: 7)
!1223 = !DILocation(line: 302, column: 7, scope: !320)
!1224 = !DILocation(line: 307, column: 11, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !313, line: 307, column: 11)
!1226 = distinct !DILexicalBlock(scope: !1222, file: !313, line: 303, column: 5)
!1227 = !DILocation(line: 307, column: 27, scope: !1225)
!1228 = !DILocation(line: 308, column: 11, scope: !1225)
!1229 = !DILocation(line: 308, column: 28, scope: !1225)
!1230 = !DILocation(line: 308, column: 25, scope: !1225)
!1231 = !DILocation(line: 309, column: 15, scope: !1225)
!1232 = !DILocation(line: 309, column: 33, scope: !1225)
!1233 = !DILocation(line: 310, column: 19, scope: !1225)
!1234 = !DILocation(line: 311, column: 22, scope: !1225)
!1235 = !DILocation(line: 311, column: 56, scope: !1225)
!1236 = !DILocation(line: 307, column: 11, scope: !1226)
!1237 = !DILocation(line: 316, column: 21, scope: !1226)
!1238 = !DILocation(line: 317, column: 23, scope: !1226)
!1239 = !DILocation(line: 318, column: 5, scope: !1226)
!1240 = !DILocation(line: 327, column: 3, scope: !320)
!1241 = !DILocation(line: 331, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !320, file: !313, line: 331, column: 7)
!1243 = !DILocation(line: 331, column: 7, scope: !320)
!1244 = !DILocation(line: 332, column: 5, scope: !1242)
!1245 = !DILocation(line: 338, column: 7, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !313, line: 334, column: 5)
!1247 = !DILocation(line: 346, column: 3, scope: !320)
!1248 = !DILocation(line: 350, column: 3, scope: !320)
!1249 = !DILocation(line: 356, column: 1, scope: !320)
!1250 = distinct !DISubprogram(name: "error_at_line", scope: !313, file: !313, line: 359, type: !1251, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1253)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{null, !90, !90, !68, !74, !68, null}
!1253 = !{!1254, !1255, !1256, !1257, !1258, !1259}
!1254 = !DILocalVariable(name: "status", arg: 1, scope: !1250, file: !313, line: 359, type: !90)
!1255 = !DILocalVariable(name: "errnum", arg: 2, scope: !1250, file: !313, line: 359, type: !90)
!1256 = !DILocalVariable(name: "file_name", arg: 3, scope: !1250, file: !313, line: 359, type: !68)
!1257 = !DILocalVariable(name: "line_number", arg: 4, scope: !1250, file: !313, line: 360, type: !74)
!1258 = !DILocalVariable(name: "message", arg: 5, scope: !1250, file: !313, line: 360, type: !68)
!1259 = !DILocalVariable(name: "ap", scope: !1250, file: !313, line: 362, type: !1208)
!1260 = !DILocation(line: 0, scope: !1250)
!1261 = !DILocation(line: 362, column: 3, scope: !1250)
!1262 = !DILocation(line: 362, column: 11, scope: !1250)
!1263 = !DILocation(line: 363, column: 3, scope: !1250)
!1264 = !DILocation(line: 364, column: 3, scope: !1250)
!1265 = !DILocation(line: 366, column: 3, scope: !1250)
!1266 = !DILocation(line: 367, column: 1, scope: !1250)
!1267 = distinct !DISubprogram(name: "getprogname", scope: !664, file: !664, line: 54, type: !1268, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !789)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!68}
!1270 = !DILocation(line: 58, column: 10, scope: !1267)
!1271 = !DILocation(line: 58, column: 3, scope: !1267)
!1272 = distinct !DISubprogram(name: "parse_long_options", scope: !364, file: !364, line: 45, type: !1273, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1276)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{null, !90, !959, !68, !68, !68, !1275, null}
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!1276 = !{!1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1287}
!1277 = !DILocalVariable(name: "argc", arg: 1, scope: !1272, file: !364, line: 45, type: !90)
!1278 = !DILocalVariable(name: "argv", arg: 2, scope: !1272, file: !364, line: 46, type: !959)
!1279 = !DILocalVariable(name: "command_name", arg: 3, scope: !1272, file: !364, line: 47, type: !68)
!1280 = !DILocalVariable(name: "package", arg: 4, scope: !1272, file: !364, line: 48, type: !68)
!1281 = !DILocalVariable(name: "version", arg: 5, scope: !1272, file: !364, line: 49, type: !68)
!1282 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1272, file: !364, line: 50, type: !1275)
!1283 = !DILocalVariable(name: "saved_opterr", scope: !1272, file: !364, line: 53, type: !90)
!1284 = !DILocalVariable(name: "c", scope: !1285, file: !364, line: 60, type: !90)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !364, line: 59, column: 5)
!1286 = distinct !DILexicalBlock(scope: !1272, file: !364, line: 58, column: 7)
!1287 = !DILocalVariable(name: "authors", scope: !1288, file: !364, line: 71, type: !1292)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !364, line: 70, column: 15)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !364, line: 64, column: 13)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !364, line: 62, column: 9)
!1291 = distinct !DILexicalBlock(scope: !1285, file: !364, line: 61, column: 11)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !926, line: 52, baseType: !1293)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1210, line: 14, baseType: !1294)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1295, baseType: !1296)
!1295 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1297, size: 192, elements: !30)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1297, file: !1295, line: 71, baseType: !74, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1297, file: !1295, line: 71, baseType: !74, size: 32, offset: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1297, file: !1295, line: 71, baseType: !89, size: 64, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1297, file: !1295, line: 71, baseType: !89, size: 64, offset: 128)
!1303 = !DILocation(line: 0, scope: !1272)
!1304 = !DILocation(line: 53, column: 22, scope: !1272)
!1305 = !DILocation(line: 56, column: 10, scope: !1272)
!1306 = !DILocation(line: 58, column: 12, scope: !1286)
!1307 = !DILocation(line: 58, column: 7, scope: !1272)
!1308 = !DILocation(line: 60, column: 15, scope: !1285)
!1309 = !DILocation(line: 0, scope: !1285)
!1310 = !DILocation(line: 61, column: 11, scope: !1285)
!1311 = !DILocation(line: 66, column: 15, scope: !1289)
!1312 = !DILocation(line: 67, column: 15, scope: !1289)
!1313 = !DILocation(line: 71, column: 17, scope: !1288)
!1314 = !DILocation(line: 71, column: 25, scope: !1288)
!1315 = !DILocation(line: 72, column: 17, scope: !1288)
!1316 = !DILocation(line: 73, column: 33, scope: !1288)
!1317 = !DILocation(line: 73, column: 17, scope: !1288)
!1318 = !DILocation(line: 74, column: 17, scope: !1288)
!1319 = !DILocation(line: 85, column: 10, scope: !1272)
!1320 = !DILocation(line: 89, column: 10, scope: !1272)
!1321 = !DILocation(line: 90, column: 1, scope: !1272)
!1322 = !DISubprogram(name: "getopt_long", scope: !378, file: !378, line: 66, type: !1323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!90, !90, !1325, !68, !1327, !383}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!1328 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !364, file: !364, line: 98, type: !1329, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !1331)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{null, !90, !959, !68, !68, !68, !216, !1275, null}
!1331 = !{!1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342}
!1332 = !DILocalVariable(name: "argc", arg: 1, scope: !1328, file: !364, line: 98, type: !90)
!1333 = !DILocalVariable(name: "argv", arg: 2, scope: !1328, file: !364, line: 99, type: !959)
!1334 = !DILocalVariable(name: "command_name", arg: 3, scope: !1328, file: !364, line: 100, type: !68)
!1335 = !DILocalVariable(name: "package", arg: 4, scope: !1328, file: !364, line: 101, type: !68)
!1336 = !DILocalVariable(name: "version", arg: 5, scope: !1328, file: !364, line: 102, type: !68)
!1337 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1328, file: !364, line: 103, type: !216)
!1338 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1328, file: !364, line: 104, type: !1275)
!1339 = !DILocalVariable(name: "saved_opterr", scope: !1328, file: !364, line: 107, type: !90)
!1340 = !DILocalVariable(name: "optstring", scope: !1328, file: !364, line: 112, type: !68)
!1341 = !DILocalVariable(name: "c", scope: !1328, file: !364, line: 114, type: !90)
!1342 = !DILocalVariable(name: "authors", scope: !1343, file: !364, line: 125, type: !1292)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !364, line: 124, column: 11)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !364, line: 118, column: 9)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !364, line: 116, column: 5)
!1346 = distinct !DILexicalBlock(scope: !1328, file: !364, line: 115, column: 7)
!1347 = !DILocation(line: 0, scope: !1328)
!1348 = !DILocation(line: 107, column: 22, scope: !1328)
!1349 = !DILocation(line: 110, column: 10, scope: !1328)
!1350 = !DILocation(line: 112, column: 27, scope: !1328)
!1351 = !DILocation(line: 114, column: 11, scope: !1328)
!1352 = !DILocation(line: 115, column: 7, scope: !1328)
!1353 = !DILocation(line: 125, column: 13, scope: !1343)
!1354 = !DILocation(line: 125, column: 21, scope: !1343)
!1355 = !DILocation(line: 126, column: 13, scope: !1343)
!1356 = !DILocation(line: 127, column: 29, scope: !1343)
!1357 = !DILocation(line: 127, column: 13, scope: !1343)
!1358 = !DILocation(line: 128, column: 13, scope: !1343)
!1359 = !DILocation(line: 132, column: 26, scope: !1344)
!1360 = !DILocation(line: 133, column: 11, scope: !1344)
!1361 = !DILocation(line: 0, scope: !1344)
!1362 = !DILocation(line: 138, column: 10, scope: !1328)
!1363 = !DILocation(line: 139, column: 1, scope: !1328)
!1364 = distinct !DISubprogram(name: "set_program_name", scope: !388, file: !388, line: 37, type: !755, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1365)
!1365 = !{!1366, !1367, !1368}
!1366 = !DILocalVariable(name: "argv0", arg: 1, scope: !1364, file: !388, line: 37, type: !68)
!1367 = !DILocalVariable(name: "slash", scope: !1364, file: !388, line: 44, type: !68)
!1368 = !DILocalVariable(name: "base", scope: !1364, file: !388, line: 45, type: !68)
!1369 = !DILocation(line: 0, scope: !1364)
!1370 = !DILocation(line: 44, column: 23, scope: !1364)
!1371 = !DILocation(line: 45, column: 22, scope: !1364)
!1372 = !DILocation(line: 46, column: 17, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1364, file: !388, line: 46, column: 7)
!1374 = !DILocation(line: 46, column: 9, scope: !1373)
!1375 = !DILocation(line: 46, column: 25, scope: !1373)
!1376 = !DILocation(line: 46, column: 40, scope: !1373)
!1377 = !DILocalVariable(name: "__s1", arg: 1, scope: !1378, file: !814, line: 974, type: !954)
!1378 = distinct !DISubprogram(name: "memeq", scope: !814, file: !814, line: 974, type: !1379, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1381)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!216, !954, !954, !92}
!1381 = !{!1377, !1382, !1383}
!1382 = !DILocalVariable(name: "__s2", arg: 2, scope: !1378, file: !814, line: 974, type: !954)
!1383 = !DILocalVariable(name: "__n", arg: 3, scope: !1378, file: !814, line: 974, type: !92)
!1384 = !DILocation(line: 0, scope: !1378, inlinedAt: !1385)
!1385 = distinct !DILocation(line: 46, column: 28, scope: !1373)
!1386 = !DILocation(line: 976, column: 11, scope: !1378, inlinedAt: !1385)
!1387 = !DILocation(line: 976, column: 10, scope: !1378, inlinedAt: !1385)
!1388 = !DILocation(line: 46, column: 7, scope: !1364)
!1389 = !DILocation(line: 49, column: 11, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !388, line: 49, column: 11)
!1391 = distinct !DILexicalBlock(scope: !1373, file: !388, line: 47, column: 5)
!1392 = !DILocation(line: 49, column: 36, scope: !1390)
!1393 = !DILocation(line: 49, column: 11, scope: !1391)
!1394 = !DILocation(line: 65, column: 16, scope: !1364)
!1395 = !DILocation(line: 71, column: 27, scope: !1364)
!1396 = !DILocation(line: 74, column: 33, scope: !1364)
!1397 = !DILocation(line: 76, column: 1, scope: !1364)
!1398 = !DISubprogram(name: "strrchr", scope: !922, file: !922, line: 273, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1399 = !DILocation(line: 0, scope: !397)
!1400 = !DILocation(line: 40, column: 29, scope: !397)
!1401 = !DILocation(line: 41, column: 19, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !397, file: !398, line: 41, column: 7)
!1403 = !DILocation(line: 41, column: 7, scope: !397)
!1404 = !DILocation(line: 47, column: 3, scope: !397)
!1405 = !DILocation(line: 48, column: 3, scope: !397)
!1406 = !DILocation(line: 48, column: 13, scope: !397)
!1407 = !DILocalVariable(name: "ps", arg: 1, scope: !1408, file: !1409, line: 1135, type: !1412)
!1408 = distinct !DISubprogram(name: "mbszero", scope: !1409, file: !1409, line: 1135, type: !1410, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !1413)
!1409 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !1412}
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!1413 = !{!1407}
!1414 = !DILocation(line: 0, scope: !1408, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 48, column: 18, scope: !397)
!1416 = !DILocalVariable(name: "__dest", arg: 1, scope: !1417, file: !1418, line: 57, type: !89)
!1417 = distinct !DISubprogram(name: "memset", scope: !1418, file: !1418, line: 57, type: !1419, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !1421)
!1418 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!89, !89, !90, !92}
!1421 = !{!1416, !1422, !1423}
!1422 = !DILocalVariable(name: "__ch", arg: 2, scope: !1417, file: !1418, line: 57, type: !90)
!1423 = !DILocalVariable(name: "__len", arg: 3, scope: !1417, file: !1418, line: 57, type: !92)
!1424 = !DILocation(line: 0, scope: !1417, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 1137, column: 3, scope: !1408, inlinedAt: !1415)
!1426 = !DILocation(line: 59, column: 10, scope: !1417, inlinedAt: !1425)
!1427 = !DILocation(line: 49, column: 7, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !397, file: !398, line: 49, column: 7)
!1429 = !DILocation(line: 49, column: 39, scope: !1428)
!1430 = !DILocation(line: 49, column: 44, scope: !1428)
!1431 = !DILocation(line: 54, column: 1, scope: !397)
!1432 = !DISubprogram(name: "mbrtoc32", scope: !409, file: !409, line: 57, type: !1433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!92, !1435, !795, !92, !1437}
!1435 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1436)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1412)
!1438 = distinct !DISubprogram(name: "clone_quoting_options", scope: !428, file: !428, line: 113, type: !1439, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1442)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!1441, !1441}
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!1442 = !{!1443, !1444, !1445}
!1443 = !DILocalVariable(name: "o", arg: 1, scope: !1438, file: !428, line: 113, type: !1441)
!1444 = !DILocalVariable(name: "saved_errno", scope: !1438, file: !428, line: 115, type: !90)
!1445 = !DILocalVariable(name: "p", scope: !1438, file: !428, line: 116, type: !1441)
!1446 = !DILocation(line: 0, scope: !1438)
!1447 = !DILocation(line: 115, column: 21, scope: !1438)
!1448 = !DILocation(line: 116, column: 40, scope: !1438)
!1449 = !DILocation(line: 116, column: 31, scope: !1438)
!1450 = !DILocation(line: 118, column: 9, scope: !1438)
!1451 = !DILocation(line: 119, column: 3, scope: !1438)
!1452 = distinct !DISubprogram(name: "get_quoting_style", scope: !428, file: !428, line: 124, type: !1453, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1457)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!451, !1455}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!1457 = !{!1458}
!1458 = !DILocalVariable(name: "o", arg: 1, scope: !1452, file: !428, line: 124, type: !1455)
!1459 = !DILocation(line: 0, scope: !1452)
!1460 = !DILocation(line: 126, column: 11, scope: !1452)
!1461 = !DILocation(line: 126, column: 46, scope: !1452)
!1462 = !{!1463, !747, i64 0}
!1463 = !{!"quoting_options", !747, i64 0, !802, i64 4, !747, i64 8, !746, i64 40, !746, i64 48}
!1464 = !DILocation(line: 126, column: 3, scope: !1452)
!1465 = distinct !DISubprogram(name: "set_quoting_style", scope: !428, file: !428, line: 132, type: !1466, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1468)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{null, !1441, !451}
!1468 = !{!1469, !1470}
!1469 = !DILocalVariable(name: "o", arg: 1, scope: !1465, file: !428, line: 132, type: !1441)
!1470 = !DILocalVariable(name: "s", arg: 2, scope: !1465, file: !428, line: 132, type: !451)
!1471 = !DILocation(line: 0, scope: !1465)
!1472 = !DILocation(line: 134, column: 4, scope: !1465)
!1473 = !DILocation(line: 134, column: 45, scope: !1465)
!1474 = !DILocation(line: 135, column: 1, scope: !1465)
!1475 = distinct !DISubprogram(name: "set_char_quoting", scope: !428, file: !428, line: 143, type: !1476, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!90, !1441, !4, !90}
!1478 = !{!1479, !1480, !1481, !1482, !1483, !1485, !1486}
!1479 = !DILocalVariable(name: "o", arg: 1, scope: !1475, file: !428, line: 143, type: !1441)
!1480 = !DILocalVariable(name: "c", arg: 2, scope: !1475, file: !428, line: 143, type: !4)
!1481 = !DILocalVariable(name: "i", arg: 3, scope: !1475, file: !428, line: 143, type: !90)
!1482 = !DILocalVariable(name: "uc", scope: !1475, file: !428, line: 145, type: !95)
!1483 = !DILocalVariable(name: "p", scope: !1475, file: !428, line: 146, type: !1484)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1485 = !DILocalVariable(name: "shift", scope: !1475, file: !428, line: 148, type: !90)
!1486 = !DILocalVariable(name: "r", scope: !1475, file: !428, line: 149, type: !74)
!1487 = !DILocation(line: 0, scope: !1475)
!1488 = !DILocation(line: 147, column: 6, scope: !1475)
!1489 = !DILocation(line: 147, column: 41, scope: !1475)
!1490 = !DILocation(line: 147, column: 62, scope: !1475)
!1491 = !DILocation(line: 147, column: 57, scope: !1475)
!1492 = !DILocation(line: 148, column: 15, scope: !1475)
!1493 = !DILocation(line: 149, column: 21, scope: !1475)
!1494 = !DILocation(line: 149, column: 24, scope: !1475)
!1495 = !DILocation(line: 149, column: 34, scope: !1475)
!1496 = !DILocation(line: 150, column: 19, scope: !1475)
!1497 = !DILocation(line: 150, column: 24, scope: !1475)
!1498 = !DILocation(line: 150, column: 6, scope: !1475)
!1499 = !DILocation(line: 151, column: 3, scope: !1475)
!1500 = distinct !DISubprogram(name: "set_quoting_flags", scope: !428, file: !428, line: 159, type: !1501, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1503)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!90, !1441, !90}
!1503 = !{!1504, !1505, !1506}
!1504 = !DILocalVariable(name: "o", arg: 1, scope: !1500, file: !428, line: 159, type: !1441)
!1505 = !DILocalVariable(name: "i", arg: 2, scope: !1500, file: !428, line: 159, type: !90)
!1506 = !DILocalVariable(name: "r", scope: !1500, file: !428, line: 163, type: !90)
!1507 = !DILocation(line: 0, scope: !1500)
!1508 = !DILocation(line: 161, column: 8, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1500, file: !428, line: 161, column: 7)
!1510 = !DILocation(line: 161, column: 7, scope: !1500)
!1511 = !DILocation(line: 163, column: 14, scope: !1500)
!1512 = !{!1463, !802, i64 4}
!1513 = !DILocation(line: 164, column: 12, scope: !1500)
!1514 = !DILocation(line: 165, column: 3, scope: !1500)
!1515 = distinct !DISubprogram(name: "set_custom_quoting", scope: !428, file: !428, line: 169, type: !1516, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1518)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{null, !1441, !68, !68}
!1518 = !{!1519, !1520, !1521}
!1519 = !DILocalVariable(name: "o", arg: 1, scope: !1515, file: !428, line: 169, type: !1441)
!1520 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1515, file: !428, line: 170, type: !68)
!1521 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1515, file: !428, line: 170, type: !68)
!1522 = !DILocation(line: 0, scope: !1515)
!1523 = !DILocation(line: 172, column: 8, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1515, file: !428, line: 172, column: 7)
!1525 = !DILocation(line: 172, column: 7, scope: !1515)
!1526 = !DILocation(line: 174, column: 12, scope: !1515)
!1527 = !DILocation(line: 175, column: 8, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1515, file: !428, line: 175, column: 7)
!1529 = !DILocation(line: 175, column: 19, scope: !1528)
!1530 = !DILocation(line: 176, column: 5, scope: !1528)
!1531 = !DILocation(line: 177, column: 6, scope: !1515)
!1532 = !DILocation(line: 177, column: 17, scope: !1515)
!1533 = !{!1463, !746, i64 40}
!1534 = !DILocation(line: 178, column: 6, scope: !1515)
!1535 = !DILocation(line: 178, column: 18, scope: !1515)
!1536 = !{!1463, !746, i64 48}
!1537 = !DILocation(line: 179, column: 1, scope: !1515)
!1538 = !DISubprogram(name: "abort", scope: !930, file: !930, line: 598, type: !360, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1539 = distinct !DISubprogram(name: "quotearg_buffer", scope: !428, file: !428, line: 774, type: !1540, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1542)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!92, !237, !92, !68, !92, !1455}
!1542 = !{!1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550}
!1543 = !DILocalVariable(name: "buffer", arg: 1, scope: !1539, file: !428, line: 774, type: !237)
!1544 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1539, file: !428, line: 774, type: !92)
!1545 = !DILocalVariable(name: "arg", arg: 3, scope: !1539, file: !428, line: 775, type: !68)
!1546 = !DILocalVariable(name: "argsize", arg: 4, scope: !1539, file: !428, line: 775, type: !92)
!1547 = !DILocalVariable(name: "o", arg: 5, scope: !1539, file: !428, line: 776, type: !1455)
!1548 = !DILocalVariable(name: "p", scope: !1539, file: !428, line: 778, type: !1455)
!1549 = !DILocalVariable(name: "saved_errno", scope: !1539, file: !428, line: 779, type: !90)
!1550 = !DILocalVariable(name: "r", scope: !1539, file: !428, line: 780, type: !92)
!1551 = !DILocation(line: 0, scope: !1539)
!1552 = !DILocation(line: 778, column: 37, scope: !1539)
!1553 = !DILocation(line: 779, column: 21, scope: !1539)
!1554 = !DILocation(line: 781, column: 43, scope: !1539)
!1555 = !DILocation(line: 781, column: 53, scope: !1539)
!1556 = !DILocation(line: 781, column: 63, scope: !1539)
!1557 = !DILocation(line: 782, column: 43, scope: !1539)
!1558 = !DILocation(line: 782, column: 58, scope: !1539)
!1559 = !DILocation(line: 780, column: 14, scope: !1539)
!1560 = !DILocation(line: 783, column: 9, scope: !1539)
!1561 = !DILocation(line: 784, column: 3, scope: !1539)
!1562 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !428, file: !428, line: 251, type: !1563, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1567)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!92, !237, !92, !68, !92, !451, !90, !1565, !68, !68}
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!1567 = !{!1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1592, !1594, !1597, !1598, !1599, !1600, !1603, !1604, !1607, !1611, !1612, !1620, !1623, !1624, !1626, !1627, !1628, !1629}
!1568 = !DILocalVariable(name: "buffer", arg: 1, scope: !1562, file: !428, line: 251, type: !237)
!1569 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1562, file: !428, line: 251, type: !92)
!1570 = !DILocalVariable(name: "arg", arg: 3, scope: !1562, file: !428, line: 252, type: !68)
!1571 = !DILocalVariable(name: "argsize", arg: 4, scope: !1562, file: !428, line: 252, type: !92)
!1572 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1562, file: !428, line: 253, type: !451)
!1573 = !DILocalVariable(name: "flags", arg: 6, scope: !1562, file: !428, line: 253, type: !90)
!1574 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1562, file: !428, line: 254, type: !1565)
!1575 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1562, file: !428, line: 255, type: !68)
!1576 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1562, file: !428, line: 256, type: !68)
!1577 = !DILocalVariable(name: "unibyte_locale", scope: !1562, file: !428, line: 258, type: !216)
!1578 = !DILocalVariable(name: "len", scope: !1562, file: !428, line: 260, type: !92)
!1579 = !DILocalVariable(name: "orig_buffersize", scope: !1562, file: !428, line: 261, type: !92)
!1580 = !DILocalVariable(name: "quote_string", scope: !1562, file: !428, line: 262, type: !68)
!1581 = !DILocalVariable(name: "quote_string_len", scope: !1562, file: !428, line: 263, type: !92)
!1582 = !DILocalVariable(name: "backslash_escapes", scope: !1562, file: !428, line: 264, type: !216)
!1583 = !DILocalVariable(name: "elide_outer_quotes", scope: !1562, file: !428, line: 265, type: !216)
!1584 = !DILocalVariable(name: "encountered_single_quote", scope: !1562, file: !428, line: 266, type: !216)
!1585 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1562, file: !428, line: 267, type: !216)
!1586 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1562, file: !428, line: 309, type: !216)
!1587 = !DILocalVariable(name: "lq", scope: !1588, file: !428, line: 361, type: !68)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !428, line: 361, column: 11)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !428, line: 360, column: 13)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !428, line: 333, column: 7)
!1591 = distinct !DILexicalBlock(scope: !1562, file: !428, line: 312, column: 5)
!1592 = !DILocalVariable(name: "i", scope: !1593, file: !428, line: 395, type: !92)
!1593 = distinct !DILexicalBlock(scope: !1562, file: !428, line: 395, column: 3)
!1594 = !DILocalVariable(name: "is_right_quote", scope: !1595, file: !428, line: 397, type: !216)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !428, line: 396, column: 5)
!1596 = distinct !DILexicalBlock(scope: !1593, file: !428, line: 395, column: 3)
!1597 = !DILocalVariable(name: "escaping", scope: !1595, file: !428, line: 398, type: !216)
!1598 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1595, file: !428, line: 399, type: !216)
!1599 = !DILocalVariable(name: "c", scope: !1595, file: !428, line: 417, type: !95)
!1600 = !DILocalVariable(name: "m", scope: !1601, file: !428, line: 598, type: !92)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !428, line: 596, column: 11)
!1602 = distinct !DILexicalBlock(scope: !1595, file: !428, line: 419, column: 9)
!1603 = !DILocalVariable(name: "printable", scope: !1601, file: !428, line: 600, type: !216)
!1604 = !DILocalVariable(name: "mbs", scope: !1605, file: !428, line: 609, type: !512)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !428, line: 608, column: 15)
!1606 = distinct !DILexicalBlock(scope: !1601, file: !428, line: 602, column: 17)
!1607 = !DILocalVariable(name: "w", scope: !1608, file: !428, line: 618, type: !408)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !428, line: 617, column: 19)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !428, line: 616, column: 17)
!1610 = distinct !DILexicalBlock(scope: !1605, file: !428, line: 616, column: 17)
!1611 = !DILocalVariable(name: "bytes", scope: !1608, file: !428, line: 619, type: !92)
!1612 = !DILocalVariable(name: "j", scope: !1613, file: !428, line: 648, type: !92)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !428, line: 648, column: 29)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !428, line: 647, column: 27)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !428, line: 645, column: 29)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !428, line: 636, column: 23)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !428, line: 628, column: 30)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !428, line: 623, column: 30)
!1619 = distinct !DILexicalBlock(scope: !1608, file: !428, line: 621, column: 25)
!1620 = !DILocalVariable(name: "ilim", scope: !1621, file: !428, line: 674, type: !92)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !428, line: 671, column: 15)
!1622 = distinct !DILexicalBlock(scope: !1601, file: !428, line: 670, column: 17)
!1623 = !DILabel(scope: !1562, name: "process_input", file: !428, line: 308)
!1624 = !DILabel(scope: !1625, name: "c_and_shell_escape", file: !428, line: 502)
!1625 = distinct !DILexicalBlock(scope: !1602, file: !428, line: 478, column: 9)
!1626 = !DILabel(scope: !1625, name: "c_escape", file: !428, line: 507)
!1627 = !DILabel(scope: !1595, name: "store_escape", file: !428, line: 709)
!1628 = !DILabel(scope: !1595, name: "store_c", file: !428, line: 712)
!1629 = !DILabel(scope: !1562, name: "force_outer_quoting_style", file: !428, line: 753)
!1630 = !DILocation(line: 0, scope: !1562)
!1631 = !DILocation(line: 258, column: 25, scope: !1562)
!1632 = !DILocation(line: 258, column: 36, scope: !1562)
!1633 = !DILocation(line: 265, column: 8, scope: !1562)
!1634 = !DILocation(line: 267, column: 3, scope: !1562)
!1635 = !DILocation(line: 261, column: 10, scope: !1562)
!1636 = !DILocation(line: 262, column: 15, scope: !1562)
!1637 = !DILocation(line: 263, column: 10, scope: !1562)
!1638 = !DILocation(line: 264, column: 8, scope: !1562)
!1639 = !DILocation(line: 266, column: 8, scope: !1562)
!1640 = !DILocation(line: 267, column: 8, scope: !1562)
!1641 = !DILocation(line: 308, column: 2, scope: !1562)
!1642 = !DILocation(line: 311, column: 3, scope: !1562)
!1643 = !DILocation(line: 318, column: 11, scope: !1591)
!1644 = !DILocation(line: 318, column: 12, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1591, file: !428, line: 318, column: 11)
!1646 = !DILocation(line: 319, column: 9, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !428, line: 319, column: 9)
!1648 = distinct !DILexicalBlock(scope: !1645, file: !428, line: 319, column: 9)
!1649 = !DILocation(line: 319, column: 9, scope: !1648)
!1650 = !DILocation(line: 0, scope: !503, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 357, column: 26, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !428, line: 335, column: 11)
!1653 = distinct !DILexicalBlock(scope: !1590, file: !428, line: 334, column: 13)
!1654 = !DILocation(line: 199, column: 29, scope: !503, inlinedAt: !1651)
!1655 = !DILocation(line: 201, column: 19, scope: !1656, inlinedAt: !1651)
!1656 = distinct !DILexicalBlock(scope: !503, file: !428, line: 201, column: 7)
!1657 = !DILocation(line: 201, column: 7, scope: !503, inlinedAt: !1651)
!1658 = !DILocation(line: 229, column: 3, scope: !503, inlinedAt: !1651)
!1659 = !DILocation(line: 230, column: 3, scope: !503, inlinedAt: !1651)
!1660 = !DILocation(line: 230, column: 13, scope: !503, inlinedAt: !1651)
!1661 = !DILocalVariable(name: "ps", arg: 1, scope: !1662, file: !1409, line: 1135, type: !1665)
!1662 = distinct !DISubprogram(name: "mbszero", scope: !1409, file: !1409, line: 1135, type: !1663, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1666)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{null, !1665}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!1666 = !{!1661}
!1667 = !DILocation(line: 0, scope: !1662, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 230, column: 18, scope: !503, inlinedAt: !1651)
!1669 = !DILocalVariable(name: "__dest", arg: 1, scope: !1670, file: !1418, line: 57, type: !89)
!1670 = distinct !DISubprogram(name: "memset", scope: !1418, file: !1418, line: 57, type: !1419, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1671)
!1671 = !{!1669, !1672, !1673}
!1672 = !DILocalVariable(name: "__ch", arg: 2, scope: !1670, file: !1418, line: 57, type: !90)
!1673 = !DILocalVariable(name: "__len", arg: 3, scope: !1670, file: !1418, line: 57, type: !92)
!1674 = !DILocation(line: 0, scope: !1670, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 1137, column: 3, scope: !1662, inlinedAt: !1668)
!1676 = !DILocation(line: 59, column: 10, scope: !1670, inlinedAt: !1675)
!1677 = !DILocation(line: 231, column: 7, scope: !1678, inlinedAt: !1651)
!1678 = distinct !DILexicalBlock(scope: !503, file: !428, line: 231, column: 7)
!1679 = !DILocation(line: 231, column: 40, scope: !1678, inlinedAt: !1651)
!1680 = !DILocation(line: 231, column: 45, scope: !1678, inlinedAt: !1651)
!1681 = !DILocation(line: 235, column: 1, scope: !503, inlinedAt: !1651)
!1682 = !DILocation(line: 0, scope: !503, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 358, column: 27, scope: !1652)
!1684 = !DILocation(line: 199, column: 29, scope: !503, inlinedAt: !1683)
!1685 = !DILocation(line: 201, column: 19, scope: !1656, inlinedAt: !1683)
!1686 = !DILocation(line: 201, column: 7, scope: !503, inlinedAt: !1683)
!1687 = !DILocation(line: 229, column: 3, scope: !503, inlinedAt: !1683)
!1688 = !DILocation(line: 230, column: 3, scope: !503, inlinedAt: !1683)
!1689 = !DILocation(line: 230, column: 13, scope: !503, inlinedAt: !1683)
!1690 = !DILocation(line: 0, scope: !1662, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 230, column: 18, scope: !503, inlinedAt: !1683)
!1692 = !DILocation(line: 0, scope: !1670, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 1137, column: 3, scope: !1662, inlinedAt: !1691)
!1694 = !DILocation(line: 59, column: 10, scope: !1670, inlinedAt: !1693)
!1695 = !DILocation(line: 231, column: 7, scope: !1678, inlinedAt: !1683)
!1696 = !DILocation(line: 231, column: 40, scope: !1678, inlinedAt: !1683)
!1697 = !DILocation(line: 231, column: 45, scope: !1678, inlinedAt: !1683)
!1698 = !DILocation(line: 235, column: 1, scope: !503, inlinedAt: !1683)
!1699 = !DILocation(line: 360, column: 14, scope: !1589)
!1700 = !DILocation(line: 360, column: 13, scope: !1590)
!1701 = !DILocation(line: 0, scope: !1588)
!1702 = !DILocation(line: 361, column: 45, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1588, file: !428, line: 361, column: 11)
!1704 = !DILocation(line: 361, column: 11, scope: !1588)
!1705 = !DILocation(line: 362, column: 13, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !428, line: 362, column: 13)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !428, line: 362, column: 13)
!1708 = !DILocation(line: 362, column: 13, scope: !1707)
!1709 = !DILocation(line: 361, column: 52, scope: !1703)
!1710 = distinct !{!1710, !1704, !1711, !848}
!1711 = !DILocation(line: 362, column: 13, scope: !1588)
!1712 = !DILocation(line: 260, column: 10, scope: !1562)
!1713 = !DILocation(line: 365, column: 28, scope: !1590)
!1714 = !DILocation(line: 367, column: 7, scope: !1591)
!1715 = !DILocation(line: 370, column: 7, scope: !1591)
!1716 = !DILocation(line: 373, column: 7, scope: !1591)
!1717 = !DILocation(line: 376, column: 12, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1591, file: !428, line: 376, column: 11)
!1719 = !DILocation(line: 376, column: 11, scope: !1591)
!1720 = !DILocation(line: 381, column: 12, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1591, file: !428, line: 381, column: 11)
!1722 = !DILocation(line: 381, column: 11, scope: !1591)
!1723 = !DILocation(line: 382, column: 9, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !428, line: 382, column: 9)
!1725 = distinct !DILexicalBlock(scope: !1721, file: !428, line: 382, column: 9)
!1726 = !DILocation(line: 382, column: 9, scope: !1725)
!1727 = !DILocation(line: 389, column: 7, scope: !1591)
!1728 = !DILocation(line: 392, column: 7, scope: !1591)
!1729 = !DILocation(line: 0, scope: !1593)
!1730 = !DILocation(line: 395, column: 8, scope: !1593)
!1731 = !DILocation(line: 309, column: 8, scope: !1562)
!1732 = !DILocation(line: 395, scope: !1593)
!1733 = !DILocation(line: 395, column: 34, scope: !1596)
!1734 = !DILocation(line: 395, column: 26, scope: !1596)
!1735 = !DILocation(line: 395, column: 48, scope: !1596)
!1736 = !DILocation(line: 395, column: 55, scope: !1596)
!1737 = !DILocation(line: 395, column: 3, scope: !1593)
!1738 = !DILocation(line: 395, column: 67, scope: !1596)
!1739 = !DILocation(line: 0, scope: !1595)
!1740 = !DILocation(line: 402, column: 11, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1595, file: !428, line: 401, column: 11)
!1742 = !DILocation(line: 404, column: 17, scope: !1741)
!1743 = !DILocation(line: 405, column: 39, scope: !1741)
!1744 = !DILocation(line: 409, column: 32, scope: !1741)
!1745 = !DILocation(line: 405, column: 19, scope: !1741)
!1746 = !DILocation(line: 405, column: 15, scope: !1741)
!1747 = !DILocation(line: 410, column: 11, scope: !1741)
!1748 = !DILocation(line: 410, column: 25, scope: !1741)
!1749 = !DILocalVariable(name: "__s1", arg: 1, scope: !1750, file: !814, line: 974, type: !954)
!1750 = distinct !DISubprogram(name: "memeq", scope: !814, file: !814, line: 974, type: !1379, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1751)
!1751 = !{!1749, !1752, !1753}
!1752 = !DILocalVariable(name: "__s2", arg: 2, scope: !1750, file: !814, line: 974, type: !954)
!1753 = !DILocalVariable(name: "__n", arg: 3, scope: !1750, file: !814, line: 974, type: !92)
!1754 = !DILocation(line: 0, scope: !1750, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 410, column: 14, scope: !1741)
!1756 = !DILocation(line: 976, column: 11, scope: !1750, inlinedAt: !1755)
!1757 = !DILocation(line: 976, column: 10, scope: !1750, inlinedAt: !1755)
!1758 = !DILocation(line: 401, column: 11, scope: !1595)
!1759 = !DILocation(line: 417, column: 25, scope: !1595)
!1760 = !DILocation(line: 418, column: 7, scope: !1595)
!1761 = !DILocation(line: 421, column: 15, scope: !1602)
!1762 = !DILocation(line: 423, column: 15, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !428, line: 423, column: 15)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !428, line: 422, column: 13)
!1765 = distinct !DILexicalBlock(scope: !1602, file: !428, line: 421, column: 15)
!1766 = !DILocation(line: 423, column: 15, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1763, file: !428, line: 423, column: 15)
!1768 = !DILocation(line: 423, column: 15, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !428, line: 423, column: 15)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !428, line: 423, column: 15)
!1771 = distinct !DILexicalBlock(scope: !1767, file: !428, line: 423, column: 15)
!1772 = !DILocation(line: 423, column: 15, scope: !1770)
!1773 = !DILocation(line: 423, column: 15, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !428, line: 423, column: 15)
!1775 = distinct !DILexicalBlock(scope: !1771, file: !428, line: 423, column: 15)
!1776 = !DILocation(line: 423, column: 15, scope: !1775)
!1777 = !DILocation(line: 423, column: 15, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !428, line: 423, column: 15)
!1779 = distinct !DILexicalBlock(scope: !1771, file: !428, line: 423, column: 15)
!1780 = !DILocation(line: 423, column: 15, scope: !1779)
!1781 = !DILocation(line: 423, column: 15, scope: !1771)
!1782 = !DILocation(line: 423, column: 15, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !428, line: 423, column: 15)
!1784 = distinct !DILexicalBlock(scope: !1763, file: !428, line: 423, column: 15)
!1785 = !DILocation(line: 423, column: 15, scope: !1784)
!1786 = !DILocation(line: 431, column: 19, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1764, file: !428, line: 430, column: 19)
!1788 = !DILocation(line: 431, column: 24, scope: !1787)
!1789 = !DILocation(line: 431, column: 28, scope: !1787)
!1790 = !DILocation(line: 431, column: 38, scope: !1787)
!1791 = !DILocation(line: 431, column: 48, scope: !1787)
!1792 = !DILocation(line: 431, column: 59, scope: !1787)
!1793 = !DILocation(line: 433, column: 19, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !428, line: 433, column: 19)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !428, line: 433, column: 19)
!1796 = distinct !DILexicalBlock(scope: !1787, file: !428, line: 432, column: 17)
!1797 = !DILocation(line: 433, column: 19, scope: !1795)
!1798 = !DILocation(line: 434, column: 19, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !428, line: 434, column: 19)
!1800 = distinct !DILexicalBlock(scope: !1796, file: !428, line: 434, column: 19)
!1801 = !DILocation(line: 434, column: 19, scope: !1800)
!1802 = !DILocation(line: 435, column: 17, scope: !1796)
!1803 = !DILocation(line: 442, column: 20, scope: !1765)
!1804 = !DILocation(line: 447, column: 11, scope: !1602)
!1805 = !DILocation(line: 450, column: 19, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1602, file: !428, line: 448, column: 13)
!1807 = !DILocation(line: 456, column: 19, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1806, file: !428, line: 455, column: 19)
!1809 = !DILocation(line: 456, column: 24, scope: !1808)
!1810 = !DILocation(line: 456, column: 28, scope: !1808)
!1811 = !DILocation(line: 456, column: 38, scope: !1808)
!1812 = !DILocation(line: 456, column: 47, scope: !1808)
!1813 = !DILocation(line: 456, column: 41, scope: !1808)
!1814 = !DILocation(line: 456, column: 52, scope: !1808)
!1815 = !DILocation(line: 455, column: 19, scope: !1806)
!1816 = !DILocation(line: 457, column: 25, scope: !1808)
!1817 = !DILocation(line: 457, column: 17, scope: !1808)
!1818 = !DILocation(line: 464, column: 25, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1808, file: !428, line: 458, column: 19)
!1820 = !DILocation(line: 468, column: 21, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !428, line: 468, column: 21)
!1822 = distinct !DILexicalBlock(scope: !1819, file: !428, line: 468, column: 21)
!1823 = !DILocation(line: 468, column: 21, scope: !1822)
!1824 = !DILocation(line: 469, column: 21, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !428, line: 469, column: 21)
!1826 = distinct !DILexicalBlock(scope: !1819, file: !428, line: 469, column: 21)
!1827 = !DILocation(line: 469, column: 21, scope: !1826)
!1828 = !DILocation(line: 470, column: 21, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !428, line: 470, column: 21)
!1830 = distinct !DILexicalBlock(scope: !1819, file: !428, line: 470, column: 21)
!1831 = !DILocation(line: 470, column: 21, scope: !1830)
!1832 = !DILocation(line: 471, column: 21, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !428, line: 471, column: 21)
!1834 = distinct !DILexicalBlock(scope: !1819, file: !428, line: 471, column: 21)
!1835 = !DILocation(line: 471, column: 21, scope: !1834)
!1836 = !DILocation(line: 472, column: 21, scope: !1819)
!1837 = !DILocation(line: 482, column: 33, scope: !1625)
!1838 = !DILocation(line: 483, column: 33, scope: !1625)
!1839 = !DILocation(line: 485, column: 33, scope: !1625)
!1840 = !DILocation(line: 486, column: 33, scope: !1625)
!1841 = !DILocation(line: 487, column: 33, scope: !1625)
!1842 = !DILocation(line: 490, column: 17, scope: !1625)
!1843 = !DILocation(line: 492, column: 21, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !428, line: 491, column: 15)
!1845 = distinct !DILexicalBlock(scope: !1625, file: !428, line: 490, column: 17)
!1846 = !DILocation(line: 499, column: 35, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1625, file: !428, line: 499, column: 17)
!1848 = !DILocation(line: 499, column: 57, scope: !1847)
!1849 = !DILocation(line: 0, scope: !1625)
!1850 = !DILocation(line: 502, column: 11, scope: !1625)
!1851 = !DILocation(line: 504, column: 17, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1625, file: !428, line: 503, column: 17)
!1853 = !DILocation(line: 507, column: 11, scope: !1625)
!1854 = !DILocation(line: 508, column: 17, scope: !1625)
!1855 = !DILocation(line: 517, column: 15, scope: !1602)
!1856 = !DILocation(line: 517, column: 40, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1602, file: !428, line: 517, column: 15)
!1858 = !DILocation(line: 517, column: 47, scope: !1857)
!1859 = !DILocation(line: 517, column: 18, scope: !1857)
!1860 = !DILocation(line: 521, column: 17, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1602, file: !428, line: 521, column: 15)
!1862 = !DILocation(line: 521, column: 15, scope: !1602)
!1863 = !DILocation(line: 525, column: 11, scope: !1602)
!1864 = !DILocation(line: 537, column: 15, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1602, file: !428, line: 536, column: 15)
!1866 = !DILocation(line: 544, column: 15, scope: !1602)
!1867 = !DILocation(line: 546, column: 19, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !428, line: 545, column: 13)
!1869 = distinct !DILexicalBlock(scope: !1602, file: !428, line: 544, column: 15)
!1870 = !DILocation(line: 549, column: 19, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1868, file: !428, line: 549, column: 19)
!1872 = !DILocation(line: 549, column: 30, scope: !1871)
!1873 = !DILocation(line: 558, column: 15, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !428, line: 558, column: 15)
!1875 = distinct !DILexicalBlock(scope: !1868, file: !428, line: 558, column: 15)
!1876 = !DILocation(line: 558, column: 15, scope: !1875)
!1877 = !DILocation(line: 559, column: 15, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !428, line: 559, column: 15)
!1879 = distinct !DILexicalBlock(scope: !1868, file: !428, line: 559, column: 15)
!1880 = !DILocation(line: 559, column: 15, scope: !1879)
!1881 = !DILocation(line: 560, column: 15, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !428, line: 560, column: 15)
!1883 = distinct !DILexicalBlock(scope: !1868, file: !428, line: 560, column: 15)
!1884 = !DILocation(line: 560, column: 15, scope: !1883)
!1885 = !DILocation(line: 562, column: 13, scope: !1868)
!1886 = !DILocation(line: 602, column: 17, scope: !1601)
!1887 = !DILocation(line: 0, scope: !1601)
!1888 = !DILocation(line: 605, column: 29, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1606, file: !428, line: 603, column: 15)
!1890 = !DILocation(line: 605, column: 27, scope: !1889)
!1891 = !DILocation(line: 668, column: 40, scope: !1601)
!1892 = !DILocation(line: 670, column: 23, scope: !1622)
!1893 = !DILocation(line: 609, column: 17, scope: !1605)
!1894 = !DILocation(line: 609, column: 27, scope: !1605)
!1895 = !DILocation(line: 0, scope: !1662, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 609, column: 32, scope: !1605)
!1897 = !DILocation(line: 0, scope: !1670, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 1137, column: 3, scope: !1662, inlinedAt: !1896)
!1899 = !DILocation(line: 59, column: 10, scope: !1670, inlinedAt: !1898)
!1900 = !DILocation(line: 613, column: 29, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1605, file: !428, line: 613, column: 21)
!1902 = !DILocation(line: 613, column: 21, scope: !1605)
!1903 = !DILocation(line: 614, column: 29, scope: !1901)
!1904 = !DILocation(line: 614, column: 19, scope: !1901)
!1905 = !DILocation(line: 618, column: 21, scope: !1608)
!1906 = !DILocation(line: 620, column: 54, scope: !1608)
!1907 = !DILocation(line: 0, scope: !1608)
!1908 = !DILocation(line: 619, column: 36, scope: !1608)
!1909 = !DILocation(line: 621, column: 25, scope: !1608)
!1910 = !DILocation(line: 631, column: 38, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1617, file: !428, line: 629, column: 23)
!1912 = !DILocation(line: 631, column: 48, scope: !1911)
!1913 = !DILocation(line: 665, column: 19, scope: !1609)
!1914 = !DILocation(line: 666, column: 15, scope: !1606)
!1915 = !DILocation(line: 626, column: 25, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1618, file: !428, line: 624, column: 23)
!1917 = !DILocation(line: 631, column: 51, scope: !1911)
!1918 = !DILocation(line: 631, column: 25, scope: !1911)
!1919 = !DILocation(line: 632, column: 28, scope: !1911)
!1920 = !DILocation(line: 631, column: 34, scope: !1911)
!1921 = distinct !{!1921, !1918, !1919, !848}
!1922 = !DILocation(line: 646, column: 29, scope: !1615)
!1923 = !DILocation(line: 0, scope: !1613)
!1924 = !DILocation(line: 649, column: 49, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1613, file: !428, line: 648, column: 29)
!1926 = !DILocation(line: 649, column: 39, scope: !1925)
!1927 = !DILocation(line: 649, column: 31, scope: !1925)
!1928 = !DILocation(line: 648, column: 60, scope: !1925)
!1929 = !DILocation(line: 648, column: 50, scope: !1925)
!1930 = !DILocation(line: 648, column: 29, scope: !1613)
!1931 = distinct !{!1931, !1930, !1932, !848}
!1932 = !DILocation(line: 654, column: 33, scope: !1613)
!1933 = !DILocation(line: 657, column: 43, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1616, file: !428, line: 657, column: 29)
!1935 = !DILocalVariable(name: "wc", arg: 1, scope: !1936, file: !1937, line: 865, type: !1940)
!1936 = distinct !DISubprogram(name: "c32isprint", scope: !1937, file: !1937, line: 865, type: !1938, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1942)
!1937 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!90, !1940}
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1941, line: 20, baseType: !74)
!1941 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1942 = !{!1935}
!1943 = !DILocation(line: 0, scope: !1936, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 657, column: 31, scope: !1934)
!1945 = !DILocation(line: 871, column: 10, scope: !1936, inlinedAt: !1944)
!1946 = !DILocation(line: 657, column: 31, scope: !1934)
!1947 = !DILocation(line: 657, column: 29, scope: !1616)
!1948 = !DILocation(line: 664, column: 23, scope: !1608)
!1949 = !DILocation(line: 670, column: 19, scope: !1622)
!1950 = !DILocation(line: 670, column: 45, scope: !1622)
!1951 = !DILocation(line: 674, column: 33, scope: !1621)
!1952 = !DILocation(line: 0, scope: !1621)
!1953 = !DILocation(line: 676, column: 17, scope: !1621)
!1954 = !DILocation(line: 398, column: 12, scope: !1595)
!1955 = !DILocation(line: 678, column: 43, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !428, line: 678, column: 25)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !428, line: 677, column: 19)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !428, line: 676, column: 17)
!1959 = distinct !DILexicalBlock(scope: !1621, file: !428, line: 676, column: 17)
!1960 = !DILocation(line: 680, column: 25, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !428, line: 680, column: 25)
!1962 = distinct !DILexicalBlock(scope: !1956, file: !428, line: 679, column: 23)
!1963 = !DILocation(line: 680, column: 25, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1961, file: !428, line: 680, column: 25)
!1965 = !DILocation(line: 680, column: 25, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !428, line: 680, column: 25)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !428, line: 680, column: 25)
!1968 = distinct !DILexicalBlock(scope: !1964, file: !428, line: 680, column: 25)
!1969 = !DILocation(line: 680, column: 25, scope: !1967)
!1970 = !DILocation(line: 680, column: 25, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !428, line: 680, column: 25)
!1972 = distinct !DILexicalBlock(scope: !1968, file: !428, line: 680, column: 25)
!1973 = !DILocation(line: 680, column: 25, scope: !1972)
!1974 = !DILocation(line: 680, column: 25, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !428, line: 680, column: 25)
!1976 = distinct !DILexicalBlock(scope: !1968, file: !428, line: 680, column: 25)
!1977 = !DILocation(line: 680, column: 25, scope: !1976)
!1978 = !DILocation(line: 680, column: 25, scope: !1968)
!1979 = !DILocation(line: 680, column: 25, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !428, line: 680, column: 25)
!1981 = distinct !DILexicalBlock(scope: !1961, file: !428, line: 680, column: 25)
!1982 = !DILocation(line: 680, column: 25, scope: !1981)
!1983 = !DILocation(line: 681, column: 25, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !428, line: 681, column: 25)
!1985 = distinct !DILexicalBlock(scope: !1962, file: !428, line: 681, column: 25)
!1986 = !DILocation(line: 681, column: 25, scope: !1985)
!1987 = !DILocation(line: 682, column: 25, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !428, line: 682, column: 25)
!1989 = distinct !DILexicalBlock(scope: !1962, file: !428, line: 682, column: 25)
!1990 = !DILocation(line: 682, column: 25, scope: !1989)
!1991 = !DILocation(line: 683, column: 38, scope: !1962)
!1992 = !DILocation(line: 683, column: 33, scope: !1962)
!1993 = !DILocation(line: 684, column: 23, scope: !1962)
!1994 = !DILocation(line: 685, column: 30, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1956, file: !428, line: 685, column: 30)
!1996 = !DILocation(line: 685, column: 30, scope: !1956)
!1997 = !DILocation(line: 687, column: 25, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !428, line: 687, column: 25)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !428, line: 687, column: 25)
!2000 = distinct !DILexicalBlock(scope: !1995, file: !428, line: 686, column: 23)
!2001 = !DILocation(line: 687, column: 25, scope: !1999)
!2002 = !DILocation(line: 689, column: 23, scope: !2000)
!2003 = !DILocation(line: 690, column: 35, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1957, file: !428, line: 690, column: 25)
!2005 = !DILocation(line: 690, column: 30, scope: !2004)
!2006 = !DILocation(line: 690, column: 25, scope: !1957)
!2007 = !DILocation(line: 692, column: 21, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !428, line: 692, column: 21)
!2009 = distinct !DILexicalBlock(scope: !1957, file: !428, line: 692, column: 21)
!2010 = !DILocation(line: 692, column: 21, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !428, line: 692, column: 21)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !428, line: 692, column: 21)
!2013 = distinct !DILexicalBlock(scope: !2008, file: !428, line: 692, column: 21)
!2014 = !DILocation(line: 692, column: 21, scope: !2012)
!2015 = !DILocation(line: 692, column: 21, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !428, line: 692, column: 21)
!2017 = distinct !DILexicalBlock(scope: !2013, file: !428, line: 692, column: 21)
!2018 = !DILocation(line: 692, column: 21, scope: !2017)
!2019 = !DILocation(line: 692, column: 21, scope: !2013)
!2020 = !DILocation(line: 0, scope: !1957)
!2021 = !DILocation(line: 693, column: 21, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !428, line: 693, column: 21)
!2023 = distinct !DILexicalBlock(scope: !1957, file: !428, line: 693, column: 21)
!2024 = !DILocation(line: 693, column: 21, scope: !2023)
!2025 = !DILocation(line: 694, column: 25, scope: !1957)
!2026 = !DILocation(line: 676, column: 17, scope: !1958)
!2027 = distinct !{!2027, !2028, !2029}
!2028 = !DILocation(line: 676, column: 17, scope: !1959)
!2029 = !DILocation(line: 695, column: 19, scope: !1959)
!2030 = !DILocation(line: 409, column: 30, scope: !1741)
!2031 = !DILocation(line: 702, column: 34, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1595, file: !428, line: 702, column: 11)
!2033 = !DILocation(line: 704, column: 14, scope: !2032)
!2034 = !DILocation(line: 705, column: 14, scope: !2032)
!2035 = !DILocation(line: 705, column: 35, scope: !2032)
!2036 = !DILocation(line: 705, column: 17, scope: !2032)
!2037 = !DILocation(line: 705, column: 47, scope: !2032)
!2038 = !DILocation(line: 705, column: 65, scope: !2032)
!2039 = !DILocation(line: 706, column: 11, scope: !2032)
!2040 = !DILocation(line: 702, column: 11, scope: !1595)
!2041 = !DILocation(line: 395, column: 15, scope: !1593)
!2042 = !DILocation(line: 709, column: 5, scope: !1595)
!2043 = !DILocation(line: 710, column: 7, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1595, file: !428, line: 710, column: 7)
!2045 = !DILocation(line: 710, column: 7, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2044, file: !428, line: 710, column: 7)
!2047 = !DILocation(line: 710, column: 7, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !428, line: 710, column: 7)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !428, line: 710, column: 7)
!2050 = distinct !DILexicalBlock(scope: !2046, file: !428, line: 710, column: 7)
!2051 = !DILocation(line: 710, column: 7, scope: !2049)
!2052 = !DILocation(line: 710, column: 7, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !428, line: 710, column: 7)
!2054 = distinct !DILexicalBlock(scope: !2050, file: !428, line: 710, column: 7)
!2055 = !DILocation(line: 710, column: 7, scope: !2054)
!2056 = !DILocation(line: 710, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !428, line: 710, column: 7)
!2058 = distinct !DILexicalBlock(scope: !2050, file: !428, line: 710, column: 7)
!2059 = !DILocation(line: 710, column: 7, scope: !2058)
!2060 = !DILocation(line: 710, column: 7, scope: !2050)
!2061 = !DILocation(line: 710, column: 7, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !428, line: 710, column: 7)
!2063 = distinct !DILexicalBlock(scope: !2044, file: !428, line: 710, column: 7)
!2064 = !DILocation(line: 710, column: 7, scope: !2063)
!2065 = !DILocation(line: 712, column: 5, scope: !1595)
!2066 = !DILocation(line: 713, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !428, line: 713, column: 7)
!2068 = distinct !DILexicalBlock(scope: !1595, file: !428, line: 713, column: 7)
!2069 = !DILocation(line: 417, column: 21, scope: !1595)
!2070 = !DILocation(line: 713, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !428, line: 713, column: 7)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !428, line: 713, column: 7)
!2073 = distinct !DILexicalBlock(scope: !2067, file: !428, line: 713, column: 7)
!2074 = !DILocation(line: 713, column: 7, scope: !2072)
!2075 = !DILocation(line: 713, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !428, line: 713, column: 7)
!2077 = distinct !DILexicalBlock(scope: !2073, file: !428, line: 713, column: 7)
!2078 = !DILocation(line: 713, column: 7, scope: !2077)
!2079 = !DILocation(line: 713, column: 7, scope: !2073)
!2080 = !DILocation(line: 714, column: 7, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !428, line: 714, column: 7)
!2082 = distinct !DILexicalBlock(scope: !1595, file: !428, line: 714, column: 7)
!2083 = !DILocation(line: 714, column: 7, scope: !2082)
!2084 = !DILocation(line: 716, column: 13, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1595, file: !428, line: 716, column: 11)
!2086 = !DILocation(line: 716, column: 11, scope: !1595)
!2087 = !DILocation(line: 718, column: 5, scope: !1596)
!2088 = !DILocation(line: 395, column: 82, scope: !1596)
!2089 = !DILocation(line: 395, column: 3, scope: !1596)
!2090 = distinct !{!2090, !1737, !2091, !848}
!2091 = !DILocation(line: 718, column: 5, scope: !1593)
!2092 = !DILocation(line: 720, column: 11, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !1562, file: !428, line: 720, column: 7)
!2094 = !DILocation(line: 720, column: 16, scope: !2093)
!2095 = !DILocation(line: 728, column: 51, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !1562, file: !428, line: 728, column: 7)
!2097 = !DILocation(line: 731, column: 11, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !428, line: 731, column: 11)
!2099 = distinct !DILexicalBlock(scope: !2096, file: !428, line: 730, column: 5)
!2100 = !DILocation(line: 731, column: 11, scope: !2099)
!2101 = !DILocation(line: 732, column: 16, scope: !2098)
!2102 = !DILocation(line: 732, column: 9, scope: !2098)
!2103 = !DILocation(line: 736, column: 18, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2098, file: !428, line: 736, column: 16)
!2105 = !DILocation(line: 736, column: 29, scope: !2104)
!2106 = !DILocation(line: 745, column: 7, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !1562, file: !428, line: 745, column: 7)
!2108 = !DILocation(line: 745, column: 20, scope: !2107)
!2109 = !DILocation(line: 746, column: 12, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !428, line: 746, column: 5)
!2111 = distinct !DILexicalBlock(scope: !2107, file: !428, line: 746, column: 5)
!2112 = !DILocation(line: 746, column: 5, scope: !2111)
!2113 = !DILocation(line: 747, column: 7, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !428, line: 747, column: 7)
!2115 = distinct !DILexicalBlock(scope: !2110, file: !428, line: 747, column: 7)
!2116 = !DILocation(line: 747, column: 7, scope: !2115)
!2117 = !DILocation(line: 746, column: 39, scope: !2110)
!2118 = distinct !{!2118, !2112, !2119, !848}
!2119 = !DILocation(line: 747, column: 7, scope: !2111)
!2120 = !DILocation(line: 749, column: 11, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !1562, file: !428, line: 749, column: 7)
!2122 = !DILocation(line: 749, column: 7, scope: !1562)
!2123 = !DILocation(line: 750, column: 5, scope: !2121)
!2124 = !DILocation(line: 750, column: 17, scope: !2121)
!2125 = !DILocation(line: 753, column: 2, scope: !1562)
!2126 = !DILocation(line: 756, column: 51, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !1562, file: !428, line: 756, column: 7)
!2128 = !DILocation(line: 756, column: 21, scope: !2127)
!2129 = !DILocation(line: 760, column: 42, scope: !1562)
!2130 = !DILocation(line: 758, column: 10, scope: !1562)
!2131 = !DILocation(line: 758, column: 3, scope: !1562)
!2132 = !DILocation(line: 762, column: 1, scope: !1562)
!2133 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !930, file: !930, line: 98, type: !2134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!92}
!2136 = !DISubprogram(name: "strlen", scope: !922, file: !922, line: 407, type: !2137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!94, !68}
!2139 = !DISubprogram(name: "iswprint", scope: !2140, file: !2140, line: 120, type: !1938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!2140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2141 = distinct !DISubprogram(name: "quotearg_alloc", scope: !428, file: !428, line: 788, type: !2142, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!237, !68, !92, !1455}
!2144 = !{!2145, !2146, !2147}
!2145 = !DILocalVariable(name: "arg", arg: 1, scope: !2141, file: !428, line: 788, type: !68)
!2146 = !DILocalVariable(name: "argsize", arg: 2, scope: !2141, file: !428, line: 788, type: !92)
!2147 = !DILocalVariable(name: "o", arg: 3, scope: !2141, file: !428, line: 789, type: !1455)
!2148 = !DILocation(line: 0, scope: !2141)
!2149 = !DILocalVariable(name: "arg", arg: 1, scope: !2150, file: !428, line: 801, type: !68)
!2150 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !428, file: !428, line: 801, type: !2151, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2153)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!237, !68, !92, !679, !1455}
!2153 = !{!2149, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161}
!2154 = !DILocalVariable(name: "argsize", arg: 2, scope: !2150, file: !428, line: 801, type: !92)
!2155 = !DILocalVariable(name: "size", arg: 3, scope: !2150, file: !428, line: 801, type: !679)
!2156 = !DILocalVariable(name: "o", arg: 4, scope: !2150, file: !428, line: 802, type: !1455)
!2157 = !DILocalVariable(name: "p", scope: !2150, file: !428, line: 804, type: !1455)
!2158 = !DILocalVariable(name: "saved_errno", scope: !2150, file: !428, line: 805, type: !90)
!2159 = !DILocalVariable(name: "flags", scope: !2150, file: !428, line: 807, type: !90)
!2160 = !DILocalVariable(name: "bufsize", scope: !2150, file: !428, line: 808, type: !92)
!2161 = !DILocalVariable(name: "buf", scope: !2150, file: !428, line: 812, type: !237)
!2162 = !DILocation(line: 0, scope: !2150, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 791, column: 10, scope: !2141)
!2164 = !DILocation(line: 804, column: 37, scope: !2150, inlinedAt: !2163)
!2165 = !DILocation(line: 805, column: 21, scope: !2150, inlinedAt: !2163)
!2166 = !DILocation(line: 807, column: 18, scope: !2150, inlinedAt: !2163)
!2167 = !DILocation(line: 807, column: 24, scope: !2150, inlinedAt: !2163)
!2168 = !DILocation(line: 808, column: 72, scope: !2150, inlinedAt: !2163)
!2169 = !DILocation(line: 809, column: 56, scope: !2150, inlinedAt: !2163)
!2170 = !DILocation(line: 810, column: 49, scope: !2150, inlinedAt: !2163)
!2171 = !DILocation(line: 811, column: 49, scope: !2150, inlinedAt: !2163)
!2172 = !DILocation(line: 808, column: 20, scope: !2150, inlinedAt: !2163)
!2173 = !DILocation(line: 811, column: 62, scope: !2150, inlinedAt: !2163)
!2174 = !DILocation(line: 812, column: 15, scope: !2150, inlinedAt: !2163)
!2175 = !DILocation(line: 813, column: 60, scope: !2150, inlinedAt: !2163)
!2176 = !DILocation(line: 815, column: 32, scope: !2150, inlinedAt: !2163)
!2177 = !DILocation(line: 815, column: 47, scope: !2150, inlinedAt: !2163)
!2178 = !DILocation(line: 813, column: 3, scope: !2150, inlinedAt: !2163)
!2179 = !DILocation(line: 816, column: 9, scope: !2150, inlinedAt: !2163)
!2180 = !DILocation(line: 791, column: 3, scope: !2141)
!2181 = !DILocation(line: 0, scope: !2150)
!2182 = !DILocation(line: 804, column: 37, scope: !2150)
!2183 = !DILocation(line: 805, column: 21, scope: !2150)
!2184 = !DILocation(line: 807, column: 18, scope: !2150)
!2185 = !DILocation(line: 807, column: 27, scope: !2150)
!2186 = !DILocation(line: 807, column: 24, scope: !2150)
!2187 = !DILocation(line: 808, column: 72, scope: !2150)
!2188 = !DILocation(line: 809, column: 56, scope: !2150)
!2189 = !DILocation(line: 810, column: 49, scope: !2150)
!2190 = !DILocation(line: 811, column: 49, scope: !2150)
!2191 = !DILocation(line: 808, column: 20, scope: !2150)
!2192 = !DILocation(line: 811, column: 62, scope: !2150)
!2193 = !DILocation(line: 812, column: 15, scope: !2150)
!2194 = !DILocation(line: 813, column: 60, scope: !2150)
!2195 = !DILocation(line: 815, column: 32, scope: !2150)
!2196 = !DILocation(line: 815, column: 47, scope: !2150)
!2197 = !DILocation(line: 813, column: 3, scope: !2150)
!2198 = !DILocation(line: 816, column: 9, scope: !2150)
!2199 = !DILocation(line: 817, column: 7, scope: !2150)
!2200 = !DILocation(line: 818, column: 11, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2150, file: !428, line: 817, column: 7)
!2202 = !{!1175, !1175, i64 0}
!2203 = !DILocation(line: 818, column: 5, scope: !2201)
!2204 = !DILocation(line: 819, column: 3, scope: !2150)
!2205 = distinct !DISubprogram(name: "quotearg_free", scope: !428, file: !428, line: 837, type: !360, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2206)
!2206 = !{!2207, !2208}
!2207 = !DILocalVariable(name: "sv", scope: !2205, file: !428, line: 839, type: !526)
!2208 = !DILocalVariable(name: "i", scope: !2209, file: !428, line: 840, type: !90)
!2209 = distinct !DILexicalBlock(scope: !2205, file: !428, line: 840, column: 3)
!2210 = !DILocation(line: 839, column: 24, scope: !2205)
!2211 = !DILocation(line: 0, scope: !2205)
!2212 = !DILocation(line: 0, scope: !2209)
!2213 = !DILocation(line: 840, column: 21, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2209, file: !428, line: 840, column: 3)
!2215 = !DILocation(line: 840, column: 3, scope: !2209)
!2216 = !DILocation(line: 842, column: 13, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2205, file: !428, line: 842, column: 7)
!2218 = !{!2219, !746, i64 8}
!2219 = !{!"slotvec", !1175, i64 0, !746, i64 8}
!2220 = !DILocation(line: 842, column: 17, scope: !2217)
!2221 = !DILocation(line: 842, column: 7, scope: !2205)
!2222 = !DILocation(line: 841, column: 17, scope: !2214)
!2223 = !DILocation(line: 841, column: 5, scope: !2214)
!2224 = !DILocation(line: 840, column: 32, scope: !2214)
!2225 = distinct !{!2225, !2215, !2226, !848}
!2226 = !DILocation(line: 841, column: 20, scope: !2209)
!2227 = !DILocation(line: 844, column: 7, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2217, file: !428, line: 843, column: 5)
!2229 = !DILocation(line: 845, column: 21, scope: !2228)
!2230 = !{!2219, !1175, i64 0}
!2231 = !DILocation(line: 846, column: 20, scope: !2228)
!2232 = !DILocation(line: 847, column: 5, scope: !2228)
!2233 = !DILocation(line: 848, column: 10, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2205, file: !428, line: 848, column: 7)
!2235 = !DILocation(line: 848, column: 7, scope: !2205)
!2236 = !DILocation(line: 850, column: 7, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2234, file: !428, line: 849, column: 5)
!2238 = !DILocation(line: 851, column: 15, scope: !2237)
!2239 = !DILocation(line: 852, column: 5, scope: !2237)
!2240 = !DILocation(line: 853, column: 10, scope: !2205)
!2241 = !DILocation(line: 854, column: 1, scope: !2205)
!2242 = !DISubprogram(name: "free", scope: !1409, file: !1409, line: 786, type: !2243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{null, !89}
!2245 = distinct !DISubprogram(name: "quotearg_n", scope: !428, file: !428, line: 919, type: !919, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2246)
!2246 = !{!2247, !2248}
!2247 = !DILocalVariable(name: "n", arg: 1, scope: !2245, file: !428, line: 919, type: !90)
!2248 = !DILocalVariable(name: "arg", arg: 2, scope: !2245, file: !428, line: 919, type: !68)
!2249 = !DILocation(line: 0, scope: !2245)
!2250 = !DILocation(line: 921, column: 10, scope: !2245)
!2251 = !DILocation(line: 921, column: 3, scope: !2245)
!2252 = distinct !DISubprogram(name: "quotearg_n_options", scope: !428, file: !428, line: 866, type: !2253, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2255)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!237, !90, !68, !92, !1455}
!2255 = !{!2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2266, !2267, !2269, !2270, !2271}
!2256 = !DILocalVariable(name: "n", arg: 1, scope: !2252, file: !428, line: 866, type: !90)
!2257 = !DILocalVariable(name: "arg", arg: 2, scope: !2252, file: !428, line: 866, type: !68)
!2258 = !DILocalVariable(name: "argsize", arg: 3, scope: !2252, file: !428, line: 866, type: !92)
!2259 = !DILocalVariable(name: "options", arg: 4, scope: !2252, file: !428, line: 867, type: !1455)
!2260 = !DILocalVariable(name: "saved_errno", scope: !2252, file: !428, line: 869, type: !90)
!2261 = !DILocalVariable(name: "sv", scope: !2252, file: !428, line: 871, type: !526)
!2262 = !DILocalVariable(name: "nslots_max", scope: !2252, file: !428, line: 873, type: !90)
!2263 = !DILocalVariable(name: "preallocated", scope: !2264, file: !428, line: 879, type: !216)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !428, line: 878, column: 5)
!2265 = distinct !DILexicalBlock(scope: !2252, file: !428, line: 877, column: 7)
!2266 = !DILocalVariable(name: "new_nslots", scope: !2264, file: !428, line: 880, type: !692)
!2267 = !DILocalVariable(name: "size", scope: !2268, file: !428, line: 891, type: !92)
!2268 = distinct !DILexicalBlock(scope: !2252, file: !428, line: 890, column: 3)
!2269 = !DILocalVariable(name: "val", scope: !2268, file: !428, line: 892, type: !237)
!2270 = !DILocalVariable(name: "flags", scope: !2268, file: !428, line: 894, type: !90)
!2271 = !DILocalVariable(name: "qsize", scope: !2268, file: !428, line: 895, type: !92)
!2272 = !DILocation(line: 0, scope: !2252)
!2273 = !DILocation(line: 869, column: 21, scope: !2252)
!2274 = !DILocation(line: 871, column: 24, scope: !2252)
!2275 = !DILocation(line: 874, column: 17, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2252, file: !428, line: 874, column: 7)
!2277 = !DILocation(line: 875, column: 5, scope: !2276)
!2278 = !DILocation(line: 877, column: 7, scope: !2265)
!2279 = !DILocation(line: 877, column: 14, scope: !2265)
!2280 = !DILocation(line: 877, column: 7, scope: !2252)
!2281 = !DILocation(line: 879, column: 31, scope: !2264)
!2282 = !DILocation(line: 0, scope: !2264)
!2283 = !DILocation(line: 880, column: 7, scope: !2264)
!2284 = !DILocation(line: 880, column: 26, scope: !2264)
!2285 = !DILocation(line: 880, column: 13, scope: !2264)
!2286 = !DILocation(line: 882, column: 31, scope: !2264)
!2287 = !DILocation(line: 883, column: 33, scope: !2264)
!2288 = !DILocation(line: 883, column: 42, scope: !2264)
!2289 = !DILocation(line: 883, column: 31, scope: !2264)
!2290 = !DILocation(line: 882, column: 22, scope: !2264)
!2291 = !DILocation(line: 882, column: 15, scope: !2264)
!2292 = !DILocation(line: 884, column: 11, scope: !2264)
!2293 = !DILocation(line: 885, column: 15, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2264, file: !428, line: 884, column: 11)
!2295 = !{i64 0, i64 8, !2202, i64 8, i64 8, !745}
!2296 = !DILocation(line: 885, column: 9, scope: !2294)
!2297 = !DILocation(line: 886, column: 20, scope: !2264)
!2298 = !DILocation(line: 886, column: 18, scope: !2264)
!2299 = !DILocation(line: 886, column: 32, scope: !2264)
!2300 = !DILocation(line: 886, column: 43, scope: !2264)
!2301 = !DILocation(line: 886, column: 53, scope: !2264)
!2302 = !DILocation(line: 0, scope: !1670, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 886, column: 7, scope: !2264)
!2304 = !DILocation(line: 59, column: 10, scope: !1670, inlinedAt: !2303)
!2305 = !DILocation(line: 887, column: 16, scope: !2264)
!2306 = !DILocation(line: 887, column: 14, scope: !2264)
!2307 = !DILocation(line: 888, column: 5, scope: !2265)
!2308 = !DILocation(line: 888, column: 5, scope: !2264)
!2309 = !DILocation(line: 891, column: 19, scope: !2268)
!2310 = !DILocation(line: 891, column: 25, scope: !2268)
!2311 = !DILocation(line: 0, scope: !2268)
!2312 = !DILocation(line: 892, column: 23, scope: !2268)
!2313 = !DILocation(line: 894, column: 26, scope: !2268)
!2314 = !DILocation(line: 894, column: 32, scope: !2268)
!2315 = !DILocation(line: 896, column: 55, scope: !2268)
!2316 = !DILocation(line: 897, column: 55, scope: !2268)
!2317 = !DILocation(line: 898, column: 55, scope: !2268)
!2318 = !DILocation(line: 899, column: 55, scope: !2268)
!2319 = !DILocation(line: 895, column: 20, scope: !2268)
!2320 = !DILocation(line: 901, column: 14, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2268, file: !428, line: 901, column: 9)
!2322 = !DILocation(line: 901, column: 9, scope: !2268)
!2323 = !DILocation(line: 903, column: 35, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2321, file: !428, line: 902, column: 7)
!2325 = !DILocation(line: 903, column: 20, scope: !2324)
!2326 = !DILocation(line: 904, column: 17, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2324, file: !428, line: 904, column: 13)
!2328 = !DILocation(line: 904, column: 13, scope: !2324)
!2329 = !DILocation(line: 905, column: 11, scope: !2327)
!2330 = !DILocation(line: 906, column: 27, scope: !2324)
!2331 = !DILocation(line: 906, column: 19, scope: !2324)
!2332 = !DILocation(line: 907, column: 69, scope: !2324)
!2333 = !DILocation(line: 909, column: 44, scope: !2324)
!2334 = !DILocation(line: 910, column: 44, scope: !2324)
!2335 = !DILocation(line: 907, column: 9, scope: !2324)
!2336 = !DILocation(line: 911, column: 7, scope: !2324)
!2337 = !DILocation(line: 913, column: 11, scope: !2268)
!2338 = !DILocation(line: 914, column: 5, scope: !2268)
!2339 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !428, file: !428, line: 925, type: !2340, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2342)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!237, !90, !68, !92}
!2342 = !{!2343, !2344, !2345}
!2343 = !DILocalVariable(name: "n", arg: 1, scope: !2339, file: !428, line: 925, type: !90)
!2344 = !DILocalVariable(name: "arg", arg: 2, scope: !2339, file: !428, line: 925, type: !68)
!2345 = !DILocalVariable(name: "argsize", arg: 3, scope: !2339, file: !428, line: 925, type: !92)
!2346 = !DILocation(line: 0, scope: !2339)
!2347 = !DILocation(line: 927, column: 10, scope: !2339)
!2348 = !DILocation(line: 927, column: 3, scope: !2339)
!2349 = distinct !DISubprogram(name: "quotearg", scope: !428, file: !428, line: 931, type: !932, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2350)
!2350 = !{!2351}
!2351 = !DILocalVariable(name: "arg", arg: 1, scope: !2349, file: !428, line: 931, type: !68)
!2352 = !DILocation(line: 0, scope: !2349)
!2353 = !DILocation(line: 0, scope: !2245, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 933, column: 10, scope: !2349)
!2355 = !DILocation(line: 921, column: 10, scope: !2245, inlinedAt: !2354)
!2356 = !DILocation(line: 933, column: 3, scope: !2349)
!2357 = distinct !DISubprogram(name: "quotearg_mem", scope: !428, file: !428, line: 937, type: !2358, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!237, !68, !92}
!2360 = !{!2361, !2362}
!2361 = !DILocalVariable(name: "arg", arg: 1, scope: !2357, file: !428, line: 937, type: !68)
!2362 = !DILocalVariable(name: "argsize", arg: 2, scope: !2357, file: !428, line: 937, type: !92)
!2363 = !DILocation(line: 0, scope: !2357)
!2364 = !DILocation(line: 0, scope: !2339, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 939, column: 10, scope: !2357)
!2366 = !DILocation(line: 927, column: 10, scope: !2339, inlinedAt: !2365)
!2367 = !DILocation(line: 939, column: 3, scope: !2357)
!2368 = distinct !DISubprogram(name: "quotearg_n_style", scope: !428, file: !428, line: 943, type: !2369, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!237, !90, !451, !68}
!2371 = !{!2372, !2373, !2374, !2375}
!2372 = !DILocalVariable(name: "n", arg: 1, scope: !2368, file: !428, line: 943, type: !90)
!2373 = !DILocalVariable(name: "s", arg: 2, scope: !2368, file: !428, line: 943, type: !451)
!2374 = !DILocalVariable(name: "arg", arg: 3, scope: !2368, file: !428, line: 943, type: !68)
!2375 = !DILocalVariable(name: "o", scope: !2368, file: !428, line: 945, type: !1456)
!2376 = !DILocation(line: 0, scope: !2368)
!2377 = !DILocation(line: 945, column: 3, scope: !2368)
!2378 = !DILocation(line: 945, column: 32, scope: !2368)
!2379 = !{!2380}
!2380 = distinct !{!2380, !2381, !"quoting_options_from_style: argument 0"}
!2381 = distinct !{!2381, !"quoting_options_from_style"}
!2382 = !DILocation(line: 945, column: 36, scope: !2368)
!2383 = !DILocalVariable(name: "style", arg: 1, scope: !2384, file: !428, line: 183, type: !451)
!2384 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !428, file: !428, line: 183, type: !2385, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!478, !451}
!2387 = !{!2383, !2388}
!2388 = !DILocalVariable(name: "o", scope: !2384, file: !428, line: 185, type: !478)
!2389 = !DILocation(line: 0, scope: !2384, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 945, column: 36, scope: !2368)
!2391 = !DILocation(line: 185, column: 26, scope: !2384, inlinedAt: !2390)
!2392 = !DILocation(line: 186, column: 13, scope: !2393, inlinedAt: !2390)
!2393 = distinct !DILexicalBlock(scope: !2384, file: !428, line: 186, column: 7)
!2394 = !DILocation(line: 186, column: 7, scope: !2384, inlinedAt: !2390)
!2395 = !DILocation(line: 187, column: 5, scope: !2393, inlinedAt: !2390)
!2396 = !DILocation(line: 188, column: 11, scope: !2384, inlinedAt: !2390)
!2397 = !DILocation(line: 946, column: 10, scope: !2368)
!2398 = !DILocation(line: 947, column: 1, scope: !2368)
!2399 = !DILocation(line: 946, column: 3, scope: !2368)
!2400 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !428, file: !428, line: 950, type: !2401, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!237, !90, !451, !68, !92}
!2403 = !{!2404, !2405, !2406, !2407, !2408}
!2404 = !DILocalVariable(name: "n", arg: 1, scope: !2400, file: !428, line: 950, type: !90)
!2405 = !DILocalVariable(name: "s", arg: 2, scope: !2400, file: !428, line: 950, type: !451)
!2406 = !DILocalVariable(name: "arg", arg: 3, scope: !2400, file: !428, line: 951, type: !68)
!2407 = !DILocalVariable(name: "argsize", arg: 4, scope: !2400, file: !428, line: 951, type: !92)
!2408 = !DILocalVariable(name: "o", scope: !2400, file: !428, line: 953, type: !1456)
!2409 = !DILocation(line: 0, scope: !2400)
!2410 = !DILocation(line: 953, column: 3, scope: !2400)
!2411 = !DILocation(line: 953, column: 32, scope: !2400)
!2412 = !{!2413}
!2413 = distinct !{!2413, !2414, !"quoting_options_from_style: argument 0"}
!2414 = distinct !{!2414, !"quoting_options_from_style"}
!2415 = !DILocation(line: 953, column: 36, scope: !2400)
!2416 = !DILocation(line: 0, scope: !2384, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 953, column: 36, scope: !2400)
!2418 = !DILocation(line: 185, column: 26, scope: !2384, inlinedAt: !2417)
!2419 = !DILocation(line: 186, column: 13, scope: !2393, inlinedAt: !2417)
!2420 = !DILocation(line: 186, column: 7, scope: !2384, inlinedAt: !2417)
!2421 = !DILocation(line: 187, column: 5, scope: !2393, inlinedAt: !2417)
!2422 = !DILocation(line: 188, column: 11, scope: !2384, inlinedAt: !2417)
!2423 = !DILocation(line: 954, column: 10, scope: !2400)
!2424 = !DILocation(line: 955, column: 1, scope: !2400)
!2425 = !DILocation(line: 954, column: 3, scope: !2400)
!2426 = distinct !DISubprogram(name: "quotearg_style", scope: !428, file: !428, line: 958, type: !2427, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!237, !451, !68}
!2429 = !{!2430, !2431}
!2430 = !DILocalVariable(name: "s", arg: 1, scope: !2426, file: !428, line: 958, type: !451)
!2431 = !DILocalVariable(name: "arg", arg: 2, scope: !2426, file: !428, line: 958, type: !68)
!2432 = !DILocation(line: 0, scope: !2426)
!2433 = !DILocation(line: 0, scope: !2368, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 960, column: 10, scope: !2426)
!2435 = !DILocation(line: 945, column: 3, scope: !2368, inlinedAt: !2434)
!2436 = !DILocation(line: 945, column: 32, scope: !2368, inlinedAt: !2434)
!2437 = !{!2438}
!2438 = distinct !{!2438, !2439, !"quoting_options_from_style: argument 0"}
!2439 = distinct !{!2439, !"quoting_options_from_style"}
!2440 = !DILocation(line: 945, column: 36, scope: !2368, inlinedAt: !2434)
!2441 = !DILocation(line: 0, scope: !2384, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 945, column: 36, scope: !2368, inlinedAt: !2434)
!2443 = !DILocation(line: 185, column: 26, scope: !2384, inlinedAt: !2442)
!2444 = !DILocation(line: 186, column: 13, scope: !2393, inlinedAt: !2442)
!2445 = !DILocation(line: 186, column: 7, scope: !2384, inlinedAt: !2442)
!2446 = !DILocation(line: 187, column: 5, scope: !2393, inlinedAt: !2442)
!2447 = !DILocation(line: 188, column: 11, scope: !2384, inlinedAt: !2442)
!2448 = !DILocation(line: 946, column: 10, scope: !2368, inlinedAt: !2434)
!2449 = !DILocation(line: 947, column: 1, scope: !2368, inlinedAt: !2434)
!2450 = !DILocation(line: 960, column: 3, scope: !2426)
!2451 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !428, file: !428, line: 964, type: !2452, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!237, !451, !68, !92}
!2454 = !{!2455, !2456, !2457}
!2455 = !DILocalVariable(name: "s", arg: 1, scope: !2451, file: !428, line: 964, type: !451)
!2456 = !DILocalVariable(name: "arg", arg: 2, scope: !2451, file: !428, line: 964, type: !68)
!2457 = !DILocalVariable(name: "argsize", arg: 3, scope: !2451, file: !428, line: 964, type: !92)
!2458 = !DILocation(line: 0, scope: !2451)
!2459 = !DILocation(line: 0, scope: !2400, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 966, column: 10, scope: !2451)
!2461 = !DILocation(line: 953, column: 3, scope: !2400, inlinedAt: !2460)
!2462 = !DILocation(line: 953, column: 32, scope: !2400, inlinedAt: !2460)
!2463 = !{!2464}
!2464 = distinct !{!2464, !2465, !"quoting_options_from_style: argument 0"}
!2465 = distinct !{!2465, !"quoting_options_from_style"}
!2466 = !DILocation(line: 953, column: 36, scope: !2400, inlinedAt: !2460)
!2467 = !DILocation(line: 0, scope: !2384, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 953, column: 36, scope: !2400, inlinedAt: !2460)
!2469 = !DILocation(line: 185, column: 26, scope: !2384, inlinedAt: !2468)
!2470 = !DILocation(line: 186, column: 13, scope: !2393, inlinedAt: !2468)
!2471 = !DILocation(line: 186, column: 7, scope: !2384, inlinedAt: !2468)
!2472 = !DILocation(line: 187, column: 5, scope: !2393, inlinedAt: !2468)
!2473 = !DILocation(line: 188, column: 11, scope: !2384, inlinedAt: !2468)
!2474 = !DILocation(line: 954, column: 10, scope: !2400, inlinedAt: !2460)
!2475 = !DILocation(line: 955, column: 1, scope: !2400, inlinedAt: !2460)
!2476 = !DILocation(line: 966, column: 3, scope: !2451)
!2477 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !428, file: !428, line: 970, type: !2478, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!237, !68, !92, !4}
!2480 = !{!2481, !2482, !2483, !2484}
!2481 = !DILocalVariable(name: "arg", arg: 1, scope: !2477, file: !428, line: 970, type: !68)
!2482 = !DILocalVariable(name: "argsize", arg: 2, scope: !2477, file: !428, line: 970, type: !92)
!2483 = !DILocalVariable(name: "ch", arg: 3, scope: !2477, file: !428, line: 970, type: !4)
!2484 = !DILocalVariable(name: "options", scope: !2477, file: !428, line: 972, type: !478)
!2485 = !DILocation(line: 0, scope: !2477)
!2486 = !DILocation(line: 972, column: 3, scope: !2477)
!2487 = !DILocation(line: 972, column: 26, scope: !2477)
!2488 = !DILocation(line: 973, column: 13, scope: !2477)
!2489 = !{i64 0, i64 4, !810, i64 4, i64 4, !801, i64 8, i64 32, !810, i64 40, i64 8, !745, i64 48, i64 8, !745}
!2490 = !DILocation(line: 0, scope: !1475, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 974, column: 3, scope: !2477)
!2492 = !DILocation(line: 147, column: 41, scope: !1475, inlinedAt: !2491)
!2493 = !DILocation(line: 147, column: 62, scope: !1475, inlinedAt: !2491)
!2494 = !DILocation(line: 147, column: 57, scope: !1475, inlinedAt: !2491)
!2495 = !DILocation(line: 148, column: 15, scope: !1475, inlinedAt: !2491)
!2496 = !DILocation(line: 149, column: 21, scope: !1475, inlinedAt: !2491)
!2497 = !DILocation(line: 149, column: 24, scope: !1475, inlinedAt: !2491)
!2498 = !DILocation(line: 150, column: 19, scope: !1475, inlinedAt: !2491)
!2499 = !DILocation(line: 150, column: 24, scope: !1475, inlinedAt: !2491)
!2500 = !DILocation(line: 150, column: 6, scope: !1475, inlinedAt: !2491)
!2501 = !DILocation(line: 975, column: 10, scope: !2477)
!2502 = !DILocation(line: 976, column: 1, scope: !2477)
!2503 = !DILocation(line: 975, column: 3, scope: !2477)
!2504 = distinct !DISubprogram(name: "quotearg_char", scope: !428, file: !428, line: 979, type: !2505, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2507)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!237, !68, !4}
!2507 = !{!2508, !2509}
!2508 = !DILocalVariable(name: "arg", arg: 1, scope: !2504, file: !428, line: 979, type: !68)
!2509 = !DILocalVariable(name: "ch", arg: 2, scope: !2504, file: !428, line: 979, type: !4)
!2510 = !DILocation(line: 0, scope: !2504)
!2511 = !DILocation(line: 0, scope: !2477, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 981, column: 10, scope: !2504)
!2513 = !DILocation(line: 972, column: 3, scope: !2477, inlinedAt: !2512)
!2514 = !DILocation(line: 972, column: 26, scope: !2477, inlinedAt: !2512)
!2515 = !DILocation(line: 973, column: 13, scope: !2477, inlinedAt: !2512)
!2516 = !DILocation(line: 0, scope: !1475, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 974, column: 3, scope: !2477, inlinedAt: !2512)
!2518 = !DILocation(line: 147, column: 41, scope: !1475, inlinedAt: !2517)
!2519 = !DILocation(line: 147, column: 62, scope: !1475, inlinedAt: !2517)
!2520 = !DILocation(line: 147, column: 57, scope: !1475, inlinedAt: !2517)
!2521 = !DILocation(line: 148, column: 15, scope: !1475, inlinedAt: !2517)
!2522 = !DILocation(line: 149, column: 21, scope: !1475, inlinedAt: !2517)
!2523 = !DILocation(line: 149, column: 24, scope: !1475, inlinedAt: !2517)
!2524 = !DILocation(line: 150, column: 19, scope: !1475, inlinedAt: !2517)
!2525 = !DILocation(line: 150, column: 24, scope: !1475, inlinedAt: !2517)
!2526 = !DILocation(line: 150, column: 6, scope: !1475, inlinedAt: !2517)
!2527 = !DILocation(line: 975, column: 10, scope: !2477, inlinedAt: !2512)
!2528 = !DILocation(line: 976, column: 1, scope: !2477, inlinedAt: !2512)
!2529 = !DILocation(line: 981, column: 3, scope: !2504)
!2530 = distinct !DISubprogram(name: "quotearg_colon", scope: !428, file: !428, line: 985, type: !932, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2531)
!2531 = !{!2532}
!2532 = !DILocalVariable(name: "arg", arg: 1, scope: !2530, file: !428, line: 985, type: !68)
!2533 = !DILocation(line: 0, scope: !2530)
!2534 = !DILocation(line: 0, scope: !2504, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 987, column: 10, scope: !2530)
!2536 = !DILocation(line: 0, scope: !2477, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 981, column: 10, scope: !2504, inlinedAt: !2535)
!2538 = !DILocation(line: 972, column: 3, scope: !2477, inlinedAt: !2537)
!2539 = !DILocation(line: 972, column: 26, scope: !2477, inlinedAt: !2537)
!2540 = !DILocation(line: 973, column: 13, scope: !2477, inlinedAt: !2537)
!2541 = !DILocation(line: 0, scope: !1475, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 974, column: 3, scope: !2477, inlinedAt: !2537)
!2543 = !DILocation(line: 147, column: 57, scope: !1475, inlinedAt: !2542)
!2544 = !DILocation(line: 149, column: 21, scope: !1475, inlinedAt: !2542)
!2545 = !DILocation(line: 150, column: 6, scope: !1475, inlinedAt: !2542)
!2546 = !DILocation(line: 975, column: 10, scope: !2477, inlinedAt: !2537)
!2547 = !DILocation(line: 976, column: 1, scope: !2477, inlinedAt: !2537)
!2548 = !DILocation(line: 987, column: 3, scope: !2530)
!2549 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !428, file: !428, line: 991, type: !2358, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2550)
!2550 = !{!2551, !2552}
!2551 = !DILocalVariable(name: "arg", arg: 1, scope: !2549, file: !428, line: 991, type: !68)
!2552 = !DILocalVariable(name: "argsize", arg: 2, scope: !2549, file: !428, line: 991, type: !92)
!2553 = !DILocation(line: 0, scope: !2549)
!2554 = !DILocation(line: 0, scope: !2477, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 993, column: 10, scope: !2549)
!2556 = !DILocation(line: 972, column: 3, scope: !2477, inlinedAt: !2555)
!2557 = !DILocation(line: 972, column: 26, scope: !2477, inlinedAt: !2555)
!2558 = !DILocation(line: 973, column: 13, scope: !2477, inlinedAt: !2555)
!2559 = !DILocation(line: 0, scope: !1475, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 974, column: 3, scope: !2477, inlinedAt: !2555)
!2561 = !DILocation(line: 147, column: 57, scope: !1475, inlinedAt: !2560)
!2562 = !DILocation(line: 149, column: 21, scope: !1475, inlinedAt: !2560)
!2563 = !DILocation(line: 150, column: 6, scope: !1475, inlinedAt: !2560)
!2564 = !DILocation(line: 975, column: 10, scope: !2477, inlinedAt: !2555)
!2565 = !DILocation(line: 976, column: 1, scope: !2477, inlinedAt: !2555)
!2566 = !DILocation(line: 993, column: 3, scope: !2549)
!2567 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !428, file: !428, line: 997, type: !2369, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2568)
!2568 = !{!2569, !2570, !2571, !2572}
!2569 = !DILocalVariable(name: "n", arg: 1, scope: !2567, file: !428, line: 997, type: !90)
!2570 = !DILocalVariable(name: "s", arg: 2, scope: !2567, file: !428, line: 997, type: !451)
!2571 = !DILocalVariable(name: "arg", arg: 3, scope: !2567, file: !428, line: 997, type: !68)
!2572 = !DILocalVariable(name: "options", scope: !2567, file: !428, line: 999, type: !478)
!2573 = !DILocation(line: 185, column: 26, scope: !2384, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 1000, column: 13, scope: !2567)
!2575 = !DILocation(line: 0, scope: !2567)
!2576 = !DILocation(line: 999, column: 3, scope: !2567)
!2577 = !DILocation(line: 999, column: 26, scope: !2567)
!2578 = !DILocation(line: 0, scope: !2384, inlinedAt: !2574)
!2579 = !DILocation(line: 186, column: 13, scope: !2393, inlinedAt: !2574)
!2580 = !DILocation(line: 186, column: 7, scope: !2384, inlinedAt: !2574)
!2581 = !DILocation(line: 187, column: 5, scope: !2393, inlinedAt: !2574)
!2582 = !{!2583}
!2583 = distinct !{!2583, !2584, !"quoting_options_from_style: argument 0"}
!2584 = distinct !{!2584, !"quoting_options_from_style"}
!2585 = !DILocation(line: 1000, column: 13, scope: !2567)
!2586 = !DILocation(line: 0, scope: !1475, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 1001, column: 3, scope: !2567)
!2588 = !DILocation(line: 147, column: 57, scope: !1475, inlinedAt: !2587)
!2589 = !DILocation(line: 149, column: 21, scope: !1475, inlinedAt: !2587)
!2590 = !DILocation(line: 150, column: 6, scope: !1475, inlinedAt: !2587)
!2591 = !DILocation(line: 1002, column: 10, scope: !2567)
!2592 = !DILocation(line: 1003, column: 1, scope: !2567)
!2593 = !DILocation(line: 1002, column: 3, scope: !2567)
!2594 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !428, file: !428, line: 1006, type: !2595, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2597)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!237, !90, !68, !68, !68}
!2597 = !{!2598, !2599, !2600, !2601}
!2598 = !DILocalVariable(name: "n", arg: 1, scope: !2594, file: !428, line: 1006, type: !90)
!2599 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2594, file: !428, line: 1006, type: !68)
!2600 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2594, file: !428, line: 1007, type: !68)
!2601 = !DILocalVariable(name: "arg", arg: 4, scope: !2594, file: !428, line: 1007, type: !68)
!2602 = !DILocation(line: 0, scope: !2594)
!2603 = !DILocalVariable(name: "n", arg: 1, scope: !2604, file: !428, line: 1014, type: !90)
!2604 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !428, file: !428, line: 1014, type: !2605, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!237, !90, !68, !68, !68, !92}
!2607 = !{!2603, !2608, !2609, !2610, !2611, !2612}
!2608 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2604, file: !428, line: 1014, type: !68)
!2609 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2604, file: !428, line: 1015, type: !68)
!2610 = !DILocalVariable(name: "arg", arg: 4, scope: !2604, file: !428, line: 1016, type: !68)
!2611 = !DILocalVariable(name: "argsize", arg: 5, scope: !2604, file: !428, line: 1016, type: !92)
!2612 = !DILocalVariable(name: "o", scope: !2604, file: !428, line: 1018, type: !478)
!2613 = !DILocation(line: 0, scope: !2604, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 1009, column: 10, scope: !2594)
!2615 = !DILocation(line: 1018, column: 3, scope: !2604, inlinedAt: !2614)
!2616 = !DILocation(line: 1018, column: 26, scope: !2604, inlinedAt: !2614)
!2617 = !DILocation(line: 1018, column: 30, scope: !2604, inlinedAt: !2614)
!2618 = !DILocation(line: 0, scope: !1515, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 1019, column: 3, scope: !2604, inlinedAt: !2614)
!2620 = !DILocation(line: 174, column: 12, scope: !1515, inlinedAt: !2619)
!2621 = !DILocation(line: 175, column: 8, scope: !1528, inlinedAt: !2619)
!2622 = !DILocation(line: 175, column: 19, scope: !1528, inlinedAt: !2619)
!2623 = !DILocation(line: 176, column: 5, scope: !1528, inlinedAt: !2619)
!2624 = !DILocation(line: 177, column: 6, scope: !1515, inlinedAt: !2619)
!2625 = !DILocation(line: 177, column: 17, scope: !1515, inlinedAt: !2619)
!2626 = !DILocation(line: 178, column: 6, scope: !1515, inlinedAt: !2619)
!2627 = !DILocation(line: 178, column: 18, scope: !1515, inlinedAt: !2619)
!2628 = !DILocation(line: 1020, column: 10, scope: !2604, inlinedAt: !2614)
!2629 = !DILocation(line: 1021, column: 1, scope: !2604, inlinedAt: !2614)
!2630 = !DILocation(line: 1009, column: 3, scope: !2594)
!2631 = !DILocation(line: 0, scope: !2604)
!2632 = !DILocation(line: 1018, column: 3, scope: !2604)
!2633 = !DILocation(line: 1018, column: 26, scope: !2604)
!2634 = !DILocation(line: 1018, column: 30, scope: !2604)
!2635 = !DILocation(line: 0, scope: !1515, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 1019, column: 3, scope: !2604)
!2637 = !DILocation(line: 174, column: 12, scope: !1515, inlinedAt: !2636)
!2638 = !DILocation(line: 175, column: 8, scope: !1528, inlinedAt: !2636)
!2639 = !DILocation(line: 175, column: 19, scope: !1528, inlinedAt: !2636)
!2640 = !DILocation(line: 176, column: 5, scope: !1528, inlinedAt: !2636)
!2641 = !DILocation(line: 177, column: 6, scope: !1515, inlinedAt: !2636)
!2642 = !DILocation(line: 177, column: 17, scope: !1515, inlinedAt: !2636)
!2643 = !DILocation(line: 178, column: 6, scope: !1515, inlinedAt: !2636)
!2644 = !DILocation(line: 178, column: 18, scope: !1515, inlinedAt: !2636)
!2645 = !DILocation(line: 1020, column: 10, scope: !2604)
!2646 = !DILocation(line: 1021, column: 1, scope: !2604)
!2647 = !DILocation(line: 1020, column: 3, scope: !2604)
!2648 = distinct !DISubprogram(name: "quotearg_custom", scope: !428, file: !428, line: 1024, type: !2649, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2651)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!237, !68, !68, !68}
!2651 = !{!2652, !2653, !2654}
!2652 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2648, file: !428, line: 1024, type: !68)
!2653 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2648, file: !428, line: 1024, type: !68)
!2654 = !DILocalVariable(name: "arg", arg: 3, scope: !2648, file: !428, line: 1025, type: !68)
!2655 = !DILocation(line: 0, scope: !2648)
!2656 = !DILocation(line: 0, scope: !2594, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 1027, column: 10, scope: !2648)
!2658 = !DILocation(line: 0, scope: !2604, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 1009, column: 10, scope: !2594, inlinedAt: !2657)
!2660 = !DILocation(line: 1018, column: 3, scope: !2604, inlinedAt: !2659)
!2661 = !DILocation(line: 1018, column: 26, scope: !2604, inlinedAt: !2659)
!2662 = !DILocation(line: 1018, column: 30, scope: !2604, inlinedAt: !2659)
!2663 = !DILocation(line: 0, scope: !1515, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 1019, column: 3, scope: !2604, inlinedAt: !2659)
!2665 = !DILocation(line: 174, column: 12, scope: !1515, inlinedAt: !2664)
!2666 = !DILocation(line: 175, column: 8, scope: !1528, inlinedAt: !2664)
!2667 = !DILocation(line: 175, column: 19, scope: !1528, inlinedAt: !2664)
!2668 = !DILocation(line: 176, column: 5, scope: !1528, inlinedAt: !2664)
!2669 = !DILocation(line: 177, column: 6, scope: !1515, inlinedAt: !2664)
!2670 = !DILocation(line: 177, column: 17, scope: !1515, inlinedAt: !2664)
!2671 = !DILocation(line: 178, column: 6, scope: !1515, inlinedAt: !2664)
!2672 = !DILocation(line: 178, column: 18, scope: !1515, inlinedAt: !2664)
!2673 = !DILocation(line: 1020, column: 10, scope: !2604, inlinedAt: !2659)
!2674 = !DILocation(line: 1021, column: 1, scope: !2604, inlinedAt: !2659)
!2675 = !DILocation(line: 1027, column: 3, scope: !2648)
!2676 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !428, file: !428, line: 1031, type: !2677, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2679)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!237, !68, !68, !68, !92}
!2679 = !{!2680, !2681, !2682, !2683}
!2680 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2676, file: !428, line: 1031, type: !68)
!2681 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2676, file: !428, line: 1031, type: !68)
!2682 = !DILocalVariable(name: "arg", arg: 3, scope: !2676, file: !428, line: 1032, type: !68)
!2683 = !DILocalVariable(name: "argsize", arg: 4, scope: !2676, file: !428, line: 1032, type: !92)
!2684 = !DILocation(line: 0, scope: !2676)
!2685 = !DILocation(line: 0, scope: !2604, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 1034, column: 10, scope: !2676)
!2687 = !DILocation(line: 1018, column: 3, scope: !2604, inlinedAt: !2686)
!2688 = !DILocation(line: 1018, column: 26, scope: !2604, inlinedAt: !2686)
!2689 = !DILocation(line: 1018, column: 30, scope: !2604, inlinedAt: !2686)
!2690 = !DILocation(line: 0, scope: !1515, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 1019, column: 3, scope: !2604, inlinedAt: !2686)
!2692 = !DILocation(line: 174, column: 12, scope: !1515, inlinedAt: !2691)
!2693 = !DILocation(line: 175, column: 8, scope: !1528, inlinedAt: !2691)
!2694 = !DILocation(line: 175, column: 19, scope: !1528, inlinedAt: !2691)
!2695 = !DILocation(line: 176, column: 5, scope: !1528, inlinedAt: !2691)
!2696 = !DILocation(line: 177, column: 6, scope: !1515, inlinedAt: !2691)
!2697 = !DILocation(line: 177, column: 17, scope: !1515, inlinedAt: !2691)
!2698 = !DILocation(line: 178, column: 6, scope: !1515, inlinedAt: !2691)
!2699 = !DILocation(line: 178, column: 18, scope: !1515, inlinedAt: !2691)
!2700 = !DILocation(line: 1020, column: 10, scope: !2604, inlinedAt: !2686)
!2701 = !DILocation(line: 1021, column: 1, scope: !2604, inlinedAt: !2686)
!2702 = !DILocation(line: 1034, column: 3, scope: !2676)
!2703 = distinct !DISubprogram(name: "quote_n_mem", scope: !428, file: !428, line: 1049, type: !2704, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!68, !90, !68, !92}
!2706 = !{!2707, !2708, !2709}
!2707 = !DILocalVariable(name: "n", arg: 1, scope: !2703, file: !428, line: 1049, type: !90)
!2708 = !DILocalVariable(name: "arg", arg: 2, scope: !2703, file: !428, line: 1049, type: !68)
!2709 = !DILocalVariable(name: "argsize", arg: 3, scope: !2703, file: !428, line: 1049, type: !92)
!2710 = !DILocation(line: 0, scope: !2703)
!2711 = !DILocation(line: 1051, column: 10, scope: !2703)
!2712 = !DILocation(line: 1051, column: 3, scope: !2703)
!2713 = distinct !DISubprogram(name: "quote_mem", scope: !428, file: !428, line: 1055, type: !2714, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!68, !68, !92}
!2716 = !{!2717, !2718}
!2717 = !DILocalVariable(name: "arg", arg: 1, scope: !2713, file: !428, line: 1055, type: !68)
!2718 = !DILocalVariable(name: "argsize", arg: 2, scope: !2713, file: !428, line: 1055, type: !92)
!2719 = !DILocation(line: 0, scope: !2713)
!2720 = !DILocation(line: 0, scope: !2703, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 1057, column: 10, scope: !2713)
!2722 = !DILocation(line: 1051, column: 10, scope: !2703, inlinedAt: !2721)
!2723 = !DILocation(line: 1057, column: 3, scope: !2713)
!2724 = distinct !DISubprogram(name: "quote_n", scope: !428, file: !428, line: 1061, type: !2725, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2727)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!68, !90, !68}
!2727 = !{!2728, !2729}
!2728 = !DILocalVariable(name: "n", arg: 1, scope: !2724, file: !428, line: 1061, type: !90)
!2729 = !DILocalVariable(name: "arg", arg: 2, scope: !2724, file: !428, line: 1061, type: !68)
!2730 = !DILocation(line: 0, scope: !2724)
!2731 = !DILocation(line: 0, scope: !2703, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 1063, column: 10, scope: !2724)
!2733 = !DILocation(line: 1051, column: 10, scope: !2703, inlinedAt: !2732)
!2734 = !DILocation(line: 1063, column: 3, scope: !2724)
!2735 = distinct !DISubprogram(name: "quote", scope: !428, file: !428, line: 1067, type: !2736, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!68, !68}
!2738 = !{!2739}
!2739 = !DILocalVariable(name: "arg", arg: 1, scope: !2735, file: !428, line: 1067, type: !68)
!2740 = !DILocation(line: 0, scope: !2735)
!2741 = !DILocation(line: 0, scope: !2724, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 1069, column: 10, scope: !2735)
!2743 = !DILocation(line: 0, scope: !2703, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 1063, column: 10, scope: !2724, inlinedAt: !2742)
!2745 = !DILocation(line: 1051, column: 10, scope: !2703, inlinedAt: !2744)
!2746 = !DILocation(line: 1069, column: 3, scope: !2735)
!2747 = distinct !DISubprogram(name: "version_etc_arn", scope: !541, file: !541, line: 61, type: !2748, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !2785)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{null, !2750, !68, !68, !68, !2784, !92}
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !2752)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !2753)
!2753 = !{!2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2752, file: !233, line: 51, baseType: !90, size: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2752, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2752, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2752, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2752, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2752, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2752, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2752, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2752, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2752, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2752, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2752, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2752, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2752, file: !233, line: 70, baseType: !2768, size: 64, offset: 832)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2752, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2752, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2752, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2752, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2752, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2752, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2752, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2752, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2752, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2752, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2752, file: !233, line: 93, baseType: !2768, size: 64, offset: 1344)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2752, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2752, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2752, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2752, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!2785 = !{!2786, !2787, !2788, !2789, !2790, !2791}
!2786 = !DILocalVariable(name: "stream", arg: 1, scope: !2747, file: !541, line: 61, type: !2750)
!2787 = !DILocalVariable(name: "command_name", arg: 2, scope: !2747, file: !541, line: 62, type: !68)
!2788 = !DILocalVariable(name: "package", arg: 3, scope: !2747, file: !541, line: 62, type: !68)
!2789 = !DILocalVariable(name: "version", arg: 4, scope: !2747, file: !541, line: 63, type: !68)
!2790 = !DILocalVariable(name: "authors", arg: 5, scope: !2747, file: !541, line: 64, type: !2784)
!2791 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2747, file: !541, line: 64, type: !92)
!2792 = !DILocation(line: 0, scope: !2747)
!2793 = !DILocation(line: 66, column: 7, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2747, file: !541, line: 66, column: 7)
!2795 = !DILocation(line: 66, column: 7, scope: !2747)
!2796 = !DILocation(line: 67, column: 5, scope: !2794)
!2797 = !DILocation(line: 69, column: 5, scope: !2794)
!2798 = !DILocation(line: 83, column: 3, scope: !2747)
!2799 = !DILocation(line: 85, column: 3, scope: !2747)
!2800 = !DILocation(line: 88, column: 3, scope: !2747)
!2801 = !DILocation(line: 95, column: 3, scope: !2747)
!2802 = !DILocation(line: 97, column: 3, scope: !2747)
!2803 = !DILocation(line: 105, column: 7, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2747, file: !541, line: 98, column: 5)
!2805 = !DILocation(line: 106, column: 7, scope: !2804)
!2806 = !DILocation(line: 109, column: 7, scope: !2804)
!2807 = !DILocation(line: 110, column: 7, scope: !2804)
!2808 = !DILocation(line: 113, column: 7, scope: !2804)
!2809 = !DILocation(line: 115, column: 7, scope: !2804)
!2810 = !DILocation(line: 120, column: 7, scope: !2804)
!2811 = !DILocation(line: 122, column: 7, scope: !2804)
!2812 = !DILocation(line: 127, column: 7, scope: !2804)
!2813 = !DILocation(line: 129, column: 7, scope: !2804)
!2814 = !DILocation(line: 134, column: 7, scope: !2804)
!2815 = !DILocation(line: 137, column: 7, scope: !2804)
!2816 = !DILocation(line: 142, column: 7, scope: !2804)
!2817 = !DILocation(line: 145, column: 7, scope: !2804)
!2818 = !DILocation(line: 150, column: 7, scope: !2804)
!2819 = !DILocation(line: 154, column: 7, scope: !2804)
!2820 = !DILocation(line: 159, column: 7, scope: !2804)
!2821 = !DILocation(line: 163, column: 7, scope: !2804)
!2822 = !DILocation(line: 170, column: 7, scope: !2804)
!2823 = !DILocation(line: 174, column: 7, scope: !2804)
!2824 = !DILocation(line: 176, column: 1, scope: !2747)
!2825 = distinct !DISubprogram(name: "version_etc_ar", scope: !541, file: !541, line: 183, type: !2826, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !2828)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{null, !2750, !68, !68, !68, !2784}
!2828 = !{!2829, !2830, !2831, !2832, !2833, !2834}
!2829 = !DILocalVariable(name: "stream", arg: 1, scope: !2825, file: !541, line: 183, type: !2750)
!2830 = !DILocalVariable(name: "command_name", arg: 2, scope: !2825, file: !541, line: 184, type: !68)
!2831 = !DILocalVariable(name: "package", arg: 3, scope: !2825, file: !541, line: 184, type: !68)
!2832 = !DILocalVariable(name: "version", arg: 4, scope: !2825, file: !541, line: 185, type: !68)
!2833 = !DILocalVariable(name: "authors", arg: 5, scope: !2825, file: !541, line: 185, type: !2784)
!2834 = !DILocalVariable(name: "n_authors", scope: !2825, file: !541, line: 187, type: !92)
!2835 = !DILocation(line: 0, scope: !2825)
!2836 = !DILocation(line: 189, column: 8, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2825, file: !541, line: 189, column: 3)
!2838 = !DILocation(line: 189, scope: !2837)
!2839 = !DILocation(line: 189, column: 23, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2837, file: !541, line: 189, column: 3)
!2841 = !DILocation(line: 189, column: 3, scope: !2837)
!2842 = !DILocation(line: 189, column: 52, scope: !2840)
!2843 = distinct !{!2843, !2841, !2844, !848}
!2844 = !DILocation(line: 190, column: 5, scope: !2837)
!2845 = !DILocation(line: 191, column: 3, scope: !2825)
!2846 = !DILocation(line: 192, column: 1, scope: !2825)
!2847 = distinct !DISubprogram(name: "version_etc_va", scope: !541, file: !541, line: 199, type: !2848, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !2858)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{null, !2750, !68, !68, !68, !2850}
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2852)
!2852 = !{!2853, !2855, !2856, !2857}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2851, file: !2854, line: 192, baseType: !74, size: 32)
!2854 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2851, file: !2854, line: 192, baseType: !74, size: 32, offset: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2851, file: !2854, line: 192, baseType: !89, size: 64, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2851, file: !2854, line: 192, baseType: !89, size: 64, offset: 128)
!2858 = !{!2859, !2860, !2861, !2862, !2863, !2864, !2865}
!2859 = !DILocalVariable(name: "stream", arg: 1, scope: !2847, file: !541, line: 199, type: !2750)
!2860 = !DILocalVariable(name: "command_name", arg: 2, scope: !2847, file: !541, line: 200, type: !68)
!2861 = !DILocalVariable(name: "package", arg: 3, scope: !2847, file: !541, line: 200, type: !68)
!2862 = !DILocalVariable(name: "version", arg: 4, scope: !2847, file: !541, line: 201, type: !68)
!2863 = !DILocalVariable(name: "authors", arg: 5, scope: !2847, file: !541, line: 201, type: !2850)
!2864 = !DILocalVariable(name: "n_authors", scope: !2847, file: !541, line: 203, type: !92)
!2865 = !DILocalVariable(name: "authtab", scope: !2847, file: !541, line: 204, type: !2866)
!2866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 640, elements: !35)
!2867 = !DILocation(line: 0, scope: !2847)
!2868 = !DILocation(line: 204, column: 3, scope: !2847)
!2869 = !DILocation(line: 204, column: 15, scope: !2847)
!2870 = !DILocation(line: 208, column: 35, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !541, line: 206, column: 3)
!2872 = distinct !DILexicalBlock(scope: !2847, file: !541, line: 206, column: 3)
!2873 = !DILocation(line: 208, column: 33, scope: !2871)
!2874 = !DILocation(line: 208, column: 67, scope: !2871)
!2875 = !DILocation(line: 206, column: 3, scope: !2872)
!2876 = !DILocation(line: 208, column: 14, scope: !2871)
!2877 = !DILocation(line: 0, scope: !2872)
!2878 = !DILocation(line: 211, column: 3, scope: !2847)
!2879 = !DILocation(line: 213, column: 1, scope: !2847)
!2880 = distinct !DISubprogram(name: "version_etc", scope: !541, file: !541, line: 230, type: !2881, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !2883)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{null, !2750, !68, !68, !68, null}
!2883 = !{!2884, !2885, !2886, !2887, !2888}
!2884 = !DILocalVariable(name: "stream", arg: 1, scope: !2880, file: !541, line: 230, type: !2750)
!2885 = !DILocalVariable(name: "command_name", arg: 2, scope: !2880, file: !541, line: 231, type: !68)
!2886 = !DILocalVariable(name: "package", arg: 3, scope: !2880, file: !541, line: 231, type: !68)
!2887 = !DILocalVariable(name: "version", arg: 4, scope: !2880, file: !541, line: 232, type: !68)
!2888 = !DILocalVariable(name: "authors", scope: !2880, file: !541, line: 234, type: !2889)
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !926, line: 52, baseType: !2890)
!2890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1210, line: 14, baseType: !2891)
!2891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2854, baseType: !2892)
!2892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2851, size: 192, elements: !30)
!2893 = !DILocation(line: 0, scope: !2880)
!2894 = !DILocation(line: 234, column: 3, scope: !2880)
!2895 = !DILocation(line: 234, column: 11, scope: !2880)
!2896 = !DILocation(line: 235, column: 3, scope: !2880)
!2897 = !DILocation(line: 236, column: 3, scope: !2880)
!2898 = !DILocation(line: 237, column: 3, scope: !2880)
!2899 = !DILocation(line: 238, column: 1, scope: !2880)
!2900 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !541, file: !541, line: 241, type: !360, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !789)
!2901 = !DILocation(line: 243, column: 3, scope: !2900)
!2902 = !DILocation(line: 248, column: 3, scope: !2900)
!2903 = !DILocation(line: 254, column: 3, scope: !2900)
!2904 = !DILocation(line: 259, column: 3, scope: !2900)
!2905 = !DILocation(line: 261, column: 1, scope: !2900)
!2906 = distinct !DISubprogram(name: "xnrealloc", scope: !2907, file: !2907, line: 147, type: !2908, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2910)
!2907 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!89, !89, !92, !92}
!2910 = !{!2911, !2912, !2913}
!2911 = !DILocalVariable(name: "p", arg: 1, scope: !2906, file: !2907, line: 147, type: !89)
!2912 = !DILocalVariable(name: "n", arg: 2, scope: !2906, file: !2907, line: 147, type: !92)
!2913 = !DILocalVariable(name: "s", arg: 3, scope: !2906, file: !2907, line: 147, type: !92)
!2914 = !DILocation(line: 0, scope: !2906)
!2915 = !DILocalVariable(name: "p", arg: 1, scope: !2916, file: !673, line: 83, type: !89)
!2916 = distinct !DISubprogram(name: "xreallocarray", scope: !673, file: !673, line: 83, type: !2908, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2917)
!2917 = !{!2915, !2918, !2919}
!2918 = !DILocalVariable(name: "n", arg: 2, scope: !2916, file: !673, line: 83, type: !92)
!2919 = !DILocalVariable(name: "s", arg: 3, scope: !2916, file: !673, line: 83, type: !92)
!2920 = !DILocation(line: 0, scope: !2916, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 149, column: 10, scope: !2906)
!2922 = !DILocation(line: 85, column: 25, scope: !2916, inlinedAt: !2921)
!2923 = !DILocalVariable(name: "p", arg: 1, scope: !2924, file: !673, line: 37, type: !89)
!2924 = distinct !DISubprogram(name: "check_nonnull", scope: !673, file: !673, line: 37, type: !2925, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2927)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!89, !89}
!2927 = !{!2923}
!2928 = !DILocation(line: 0, scope: !2924, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 85, column: 10, scope: !2916, inlinedAt: !2921)
!2930 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !2929)
!2931 = distinct !DILexicalBlock(scope: !2924, file: !673, line: 39, column: 7)
!2932 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !2929)
!2933 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !2929)
!2934 = !DILocation(line: 149, column: 3, scope: !2906)
!2935 = !DILocation(line: 0, scope: !2916)
!2936 = !DILocation(line: 85, column: 25, scope: !2916)
!2937 = !DILocation(line: 0, scope: !2924, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 85, column: 10, scope: !2916)
!2939 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !2938)
!2940 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !2938)
!2941 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !2938)
!2942 = !DILocation(line: 85, column: 3, scope: !2916)
!2943 = distinct !DISubprogram(name: "xmalloc", scope: !673, file: !673, line: 47, type: !2944, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2946)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!89, !92}
!2946 = !{!2947}
!2947 = !DILocalVariable(name: "s", arg: 1, scope: !2943, file: !673, line: 47, type: !92)
!2948 = !DILocation(line: 0, scope: !2943)
!2949 = !DILocation(line: 49, column: 25, scope: !2943)
!2950 = !DILocation(line: 0, scope: !2924, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 49, column: 10, scope: !2943)
!2952 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !2951)
!2953 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !2951)
!2954 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !2951)
!2955 = !DILocation(line: 49, column: 3, scope: !2943)
!2956 = !DISubprogram(name: "malloc", scope: !930, file: !930, line: 540, type: !2944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!2957 = distinct !DISubprogram(name: "ximalloc", scope: !673, file: !673, line: 53, type: !2958, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2960)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!89, !692}
!2960 = !{!2961}
!2961 = !DILocalVariable(name: "s", arg: 1, scope: !2957, file: !673, line: 53, type: !692)
!2962 = !DILocation(line: 0, scope: !2957)
!2963 = !DILocalVariable(name: "s", arg: 1, scope: !2964, file: !2965, line: 55, type: !692)
!2964 = distinct !DISubprogram(name: "imalloc", scope: !2965, file: !2965, line: 55, type: !2958, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2966)
!2965 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2966 = !{!2963}
!2967 = !DILocation(line: 0, scope: !2964, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 55, column: 25, scope: !2957)
!2969 = !DILocation(line: 57, column: 26, scope: !2964, inlinedAt: !2968)
!2970 = !DILocation(line: 0, scope: !2924, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 55, column: 10, scope: !2957)
!2972 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !2971)
!2973 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !2971)
!2974 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !2971)
!2975 = !DILocation(line: 55, column: 3, scope: !2957)
!2976 = distinct !DISubprogram(name: "xcharalloc", scope: !673, file: !673, line: 59, type: !2977, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2979)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!237, !92}
!2979 = !{!2980}
!2980 = !DILocalVariable(name: "n", arg: 1, scope: !2976, file: !673, line: 59, type: !92)
!2981 = !DILocation(line: 0, scope: !2976)
!2982 = !DILocation(line: 0, scope: !2943, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 61, column: 10, scope: !2976)
!2984 = !DILocation(line: 49, column: 25, scope: !2943, inlinedAt: !2983)
!2985 = !DILocation(line: 0, scope: !2924, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 49, column: 10, scope: !2943, inlinedAt: !2983)
!2987 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !2986)
!2988 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !2986)
!2989 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !2986)
!2990 = !DILocation(line: 61, column: 3, scope: !2976)
!2991 = distinct !DISubprogram(name: "xrealloc", scope: !673, file: !673, line: 68, type: !2992, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2994)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!89, !89, !92}
!2994 = !{!2995, !2996}
!2995 = !DILocalVariable(name: "p", arg: 1, scope: !2991, file: !673, line: 68, type: !89)
!2996 = !DILocalVariable(name: "s", arg: 2, scope: !2991, file: !673, line: 68, type: !92)
!2997 = !DILocation(line: 0, scope: !2991)
!2998 = !DILocalVariable(name: "ptr", arg: 1, scope: !2999, file: !3000, line: 2057, type: !89)
!2999 = distinct !DISubprogram(name: "rpl_realloc", scope: !3000, file: !3000, line: 2057, type: !2992, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3001)
!3000 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3001 = !{!2998, !3002}
!3002 = !DILocalVariable(name: "size", arg: 2, scope: !2999, file: !3000, line: 2057, type: !92)
!3003 = !DILocation(line: 0, scope: !2999, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 70, column: 25, scope: !2991)
!3005 = !DILocation(line: 2059, column: 24, scope: !2999, inlinedAt: !3004)
!3006 = !DILocation(line: 2059, column: 10, scope: !2999, inlinedAt: !3004)
!3007 = !DILocation(line: 0, scope: !2924, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 70, column: 10, scope: !2991)
!3009 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !3008)
!3010 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !3008)
!3011 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !3008)
!3012 = !DILocation(line: 70, column: 3, scope: !2991)
!3013 = !DISubprogram(name: "realloc", scope: !930, file: !930, line: 551, type: !2992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!3014 = distinct !DISubprogram(name: "xirealloc", scope: !673, file: !673, line: 74, type: !3015, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3017)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!89, !89, !692}
!3017 = !{!3018, !3019}
!3018 = !DILocalVariable(name: "p", arg: 1, scope: !3014, file: !673, line: 74, type: !89)
!3019 = !DILocalVariable(name: "s", arg: 2, scope: !3014, file: !673, line: 74, type: !692)
!3020 = !DILocation(line: 0, scope: !3014)
!3021 = !DILocalVariable(name: "p", arg: 1, scope: !3022, file: !2965, line: 66, type: !89)
!3022 = distinct !DISubprogram(name: "irealloc", scope: !2965, file: !2965, line: 66, type: !3015, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3023)
!3023 = !{!3021, !3024}
!3024 = !DILocalVariable(name: "s", arg: 2, scope: !3022, file: !2965, line: 66, type: !692)
!3025 = !DILocation(line: 0, scope: !3022, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 76, column: 25, scope: !3014)
!3027 = !DILocation(line: 0, scope: !2999, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 68, column: 26, scope: !3022, inlinedAt: !3026)
!3029 = !DILocation(line: 2059, column: 24, scope: !2999, inlinedAt: !3028)
!3030 = !DILocation(line: 2059, column: 10, scope: !2999, inlinedAt: !3028)
!3031 = !DILocation(line: 0, scope: !2924, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 76, column: 10, scope: !3014)
!3033 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !3032)
!3034 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !3032)
!3035 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !3032)
!3036 = !DILocation(line: 76, column: 3, scope: !3014)
!3037 = distinct !DISubprogram(name: "xireallocarray", scope: !673, file: !673, line: 89, type: !3038, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3040)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!89, !89, !692, !692}
!3040 = !{!3041, !3042, !3043}
!3041 = !DILocalVariable(name: "p", arg: 1, scope: !3037, file: !673, line: 89, type: !89)
!3042 = !DILocalVariable(name: "n", arg: 2, scope: !3037, file: !673, line: 89, type: !692)
!3043 = !DILocalVariable(name: "s", arg: 3, scope: !3037, file: !673, line: 89, type: !692)
!3044 = !DILocation(line: 0, scope: !3037)
!3045 = !DILocalVariable(name: "p", arg: 1, scope: !3046, file: !2965, line: 98, type: !89)
!3046 = distinct !DISubprogram(name: "ireallocarray", scope: !2965, file: !2965, line: 98, type: !3038, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3047)
!3047 = !{!3045, !3048, !3049}
!3048 = !DILocalVariable(name: "n", arg: 2, scope: !3046, file: !2965, line: 98, type: !692)
!3049 = !DILocalVariable(name: "s", arg: 3, scope: !3046, file: !2965, line: 98, type: !692)
!3050 = !DILocation(line: 0, scope: !3046, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 91, column: 25, scope: !3037)
!3052 = !DILocation(line: 101, column: 13, scope: !3046, inlinedAt: !3051)
!3053 = !DILocation(line: 0, scope: !2924, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 91, column: 10, scope: !3037)
!3055 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !3054)
!3056 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !3054)
!3057 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !3054)
!3058 = !DILocation(line: 91, column: 3, scope: !3037)
!3059 = distinct !DISubprogram(name: "xnmalloc", scope: !673, file: !673, line: 98, type: !3060, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3062)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!89, !92, !92}
!3062 = !{!3063, !3064}
!3063 = !DILocalVariable(name: "n", arg: 1, scope: !3059, file: !673, line: 98, type: !92)
!3064 = !DILocalVariable(name: "s", arg: 2, scope: !3059, file: !673, line: 98, type: !92)
!3065 = !DILocation(line: 0, scope: !3059)
!3066 = !DILocation(line: 0, scope: !2916, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 100, column: 10, scope: !3059)
!3068 = !DILocation(line: 85, column: 25, scope: !2916, inlinedAt: !3067)
!3069 = !DILocation(line: 0, scope: !2924, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 85, column: 10, scope: !2916, inlinedAt: !3067)
!3071 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !3070)
!3072 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !3070)
!3073 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !3070)
!3074 = !DILocation(line: 100, column: 3, scope: !3059)
!3075 = distinct !DISubprogram(name: "xinmalloc", scope: !673, file: !673, line: 104, type: !3076, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3078)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!89, !692, !692}
!3078 = !{!3079, !3080}
!3079 = !DILocalVariable(name: "n", arg: 1, scope: !3075, file: !673, line: 104, type: !692)
!3080 = !DILocalVariable(name: "s", arg: 2, scope: !3075, file: !673, line: 104, type: !692)
!3081 = !DILocation(line: 0, scope: !3075)
!3082 = !DILocation(line: 0, scope: !3037, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 106, column: 10, scope: !3075)
!3084 = !DILocation(line: 0, scope: !3046, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 91, column: 25, scope: !3037, inlinedAt: !3083)
!3086 = !DILocation(line: 101, column: 13, scope: !3046, inlinedAt: !3085)
!3087 = !DILocation(line: 0, scope: !2924, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 91, column: 10, scope: !3037, inlinedAt: !3083)
!3089 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !3088)
!3090 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !3088)
!3091 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !3088)
!3092 = !DILocation(line: 106, column: 3, scope: !3075)
!3093 = distinct !DISubprogram(name: "x2realloc", scope: !673, file: !673, line: 116, type: !3094, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3096)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!89, !89, !679}
!3096 = !{!3097, !3098}
!3097 = !DILocalVariable(name: "p", arg: 1, scope: !3093, file: !673, line: 116, type: !89)
!3098 = !DILocalVariable(name: "ps", arg: 2, scope: !3093, file: !673, line: 116, type: !679)
!3099 = !DILocation(line: 0, scope: !3093)
!3100 = !DILocation(line: 0, scope: !676, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 118, column: 10, scope: !3093)
!3102 = !DILocation(line: 178, column: 14, scope: !676, inlinedAt: !3101)
!3103 = !DILocation(line: 180, column: 9, scope: !3104, inlinedAt: !3101)
!3104 = distinct !DILexicalBlock(scope: !676, file: !673, line: 180, column: 7)
!3105 = !DILocation(line: 180, column: 7, scope: !676, inlinedAt: !3101)
!3106 = !DILocation(line: 182, column: 13, scope: !3107, inlinedAt: !3101)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !673, line: 182, column: 11)
!3108 = distinct !DILexicalBlock(scope: !3104, file: !673, line: 181, column: 5)
!3109 = !DILocation(line: 182, column: 11, scope: !3108, inlinedAt: !3101)
!3110 = !DILocation(line: 197, column: 11, scope: !3111, inlinedAt: !3101)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !673, line: 197, column: 11)
!3112 = distinct !DILexicalBlock(scope: !3104, file: !673, line: 195, column: 5)
!3113 = !DILocation(line: 197, column: 11, scope: !3112, inlinedAt: !3101)
!3114 = !DILocation(line: 198, column: 9, scope: !3111, inlinedAt: !3101)
!3115 = !DILocation(line: 0, scope: !2916, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 201, column: 7, scope: !676, inlinedAt: !3101)
!3117 = !DILocation(line: 85, column: 25, scope: !2916, inlinedAt: !3116)
!3118 = !DILocation(line: 0, scope: !2924, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 85, column: 10, scope: !2916, inlinedAt: !3116)
!3120 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !3119)
!3121 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !3119)
!3122 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !3119)
!3123 = !DILocation(line: 202, column: 7, scope: !676, inlinedAt: !3101)
!3124 = !DILocation(line: 118, column: 3, scope: !3093)
!3125 = !DILocation(line: 0, scope: !676)
!3126 = !DILocation(line: 178, column: 14, scope: !676)
!3127 = !DILocation(line: 180, column: 9, scope: !3104)
!3128 = !DILocation(line: 180, column: 7, scope: !676)
!3129 = !DILocation(line: 182, column: 13, scope: !3107)
!3130 = !DILocation(line: 182, column: 11, scope: !3108)
!3131 = !DILocation(line: 190, column: 30, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3107, file: !673, line: 183, column: 9)
!3133 = !DILocation(line: 191, column: 16, scope: !3132)
!3134 = !DILocation(line: 191, column: 13, scope: !3132)
!3135 = !DILocation(line: 192, column: 9, scope: !3132)
!3136 = !DILocation(line: 197, column: 11, scope: !3111)
!3137 = !DILocation(line: 197, column: 11, scope: !3112)
!3138 = !DILocation(line: 198, column: 9, scope: !3111)
!3139 = !DILocation(line: 0, scope: !2916, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 201, column: 7, scope: !676)
!3141 = !DILocation(line: 85, column: 25, scope: !2916, inlinedAt: !3140)
!3142 = !DILocation(line: 0, scope: !2924, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 85, column: 10, scope: !2916, inlinedAt: !3140)
!3144 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !3143)
!3145 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !3143)
!3146 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !3143)
!3147 = !DILocation(line: 202, column: 7, scope: !676)
!3148 = !DILocation(line: 203, column: 3, scope: !676)
!3149 = !DILocation(line: 0, scope: !688)
!3150 = !DILocation(line: 230, column: 14, scope: !688)
!3151 = !DILocation(line: 238, column: 7, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !688, file: !673, line: 238, column: 7)
!3153 = !DILocation(line: 238, column: 7, scope: !688)
!3154 = !DILocation(line: 240, column: 9, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !688, file: !673, line: 240, column: 7)
!3156 = !DILocation(line: 240, column: 18, scope: !3155)
!3157 = !DILocation(line: 253, column: 8, scope: !688)
!3158 = !DILocation(line: 258, column: 27, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !673, line: 257, column: 5)
!3160 = distinct !DILexicalBlock(scope: !688, file: !673, line: 256, column: 7)
!3161 = !DILocation(line: 259, column: 50, scope: !3159)
!3162 = !DILocation(line: 259, column: 32, scope: !3159)
!3163 = !DILocation(line: 260, column: 5, scope: !3159)
!3164 = !DILocation(line: 262, column: 9, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !688, file: !673, line: 262, column: 7)
!3166 = !DILocation(line: 262, column: 7, scope: !688)
!3167 = !DILocation(line: 263, column: 9, scope: !3165)
!3168 = !DILocation(line: 263, column: 5, scope: !3165)
!3169 = !DILocation(line: 264, column: 9, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !688, file: !673, line: 264, column: 7)
!3171 = !DILocation(line: 264, column: 14, scope: !3170)
!3172 = !DILocation(line: 265, column: 7, scope: !3170)
!3173 = !DILocation(line: 265, column: 11, scope: !3170)
!3174 = !DILocation(line: 266, column: 11, scope: !3170)
!3175 = !DILocation(line: 267, column: 14, scope: !3170)
!3176 = !DILocation(line: 264, column: 7, scope: !688)
!3177 = !DILocation(line: 268, column: 5, scope: !3170)
!3178 = !DILocation(line: 0, scope: !2991, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 269, column: 8, scope: !688)
!3180 = !DILocation(line: 0, scope: !2999, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 70, column: 25, scope: !2991, inlinedAt: !3179)
!3182 = !DILocation(line: 2059, column: 24, scope: !2999, inlinedAt: !3181)
!3183 = !DILocation(line: 2059, column: 10, scope: !2999, inlinedAt: !3181)
!3184 = !DILocation(line: 0, scope: !2924, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 70, column: 10, scope: !2991, inlinedAt: !3179)
!3186 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !3185)
!3187 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !3185)
!3188 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !3185)
!3189 = !DILocation(line: 270, column: 7, scope: !688)
!3190 = !DILocation(line: 271, column: 3, scope: !688)
!3191 = distinct !DISubprogram(name: "xzalloc", scope: !673, file: !673, line: 279, type: !2944, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3192)
!3192 = !{!3193}
!3193 = !DILocalVariable(name: "s", arg: 1, scope: !3191, file: !673, line: 279, type: !92)
!3194 = !DILocation(line: 0, scope: !3191)
!3195 = !DILocalVariable(name: "n", arg: 1, scope: !3196, file: !673, line: 294, type: !92)
!3196 = distinct !DISubprogram(name: "xcalloc", scope: !673, file: !673, line: 294, type: !3060, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3197)
!3197 = !{!3195, !3198}
!3198 = !DILocalVariable(name: "s", arg: 2, scope: !3196, file: !673, line: 294, type: !92)
!3199 = !DILocation(line: 0, scope: !3196, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 281, column: 10, scope: !3191)
!3201 = !DILocation(line: 296, column: 25, scope: !3196, inlinedAt: !3200)
!3202 = !DILocation(line: 0, scope: !2924, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 296, column: 10, scope: !3196, inlinedAt: !3200)
!3204 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !3203)
!3205 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !3203)
!3206 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !3203)
!3207 = !DILocation(line: 281, column: 3, scope: !3191)
!3208 = !DISubprogram(name: "calloc", scope: !930, file: !930, line: 543, type: !3060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!3209 = !DILocation(line: 0, scope: !3196)
!3210 = !DILocation(line: 296, column: 25, scope: !3196)
!3211 = !DILocation(line: 0, scope: !2924, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 296, column: 10, scope: !3196)
!3213 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !3212)
!3214 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !3212)
!3215 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !3212)
!3216 = !DILocation(line: 296, column: 3, scope: !3196)
!3217 = distinct !DISubprogram(name: "xizalloc", scope: !673, file: !673, line: 285, type: !2958, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3218)
!3218 = !{!3219}
!3219 = !DILocalVariable(name: "s", arg: 1, scope: !3217, file: !673, line: 285, type: !692)
!3220 = !DILocation(line: 0, scope: !3217)
!3221 = !DILocalVariable(name: "n", arg: 1, scope: !3222, file: !673, line: 300, type: !692)
!3222 = distinct !DISubprogram(name: "xicalloc", scope: !673, file: !673, line: 300, type: !3076, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3223)
!3223 = !{!3221, !3224}
!3224 = !DILocalVariable(name: "s", arg: 2, scope: !3222, file: !673, line: 300, type: !692)
!3225 = !DILocation(line: 0, scope: !3222, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 287, column: 10, scope: !3217)
!3227 = !DILocalVariable(name: "n", arg: 1, scope: !3228, file: !2965, line: 77, type: !692)
!3228 = distinct !DISubprogram(name: "icalloc", scope: !2965, file: !2965, line: 77, type: !3076, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3229)
!3229 = !{!3227, !3230}
!3230 = !DILocalVariable(name: "s", arg: 2, scope: !3228, file: !2965, line: 77, type: !692)
!3231 = !DILocation(line: 0, scope: !3228, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 302, column: 25, scope: !3222, inlinedAt: !3226)
!3233 = !DILocation(line: 91, column: 10, scope: !3228, inlinedAt: !3232)
!3234 = !DILocation(line: 0, scope: !2924, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 302, column: 10, scope: !3222, inlinedAt: !3226)
!3236 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !3235)
!3237 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !3235)
!3238 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !3235)
!3239 = !DILocation(line: 287, column: 3, scope: !3217)
!3240 = !DILocation(line: 0, scope: !3222)
!3241 = !DILocation(line: 0, scope: !3228, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 302, column: 25, scope: !3222)
!3243 = !DILocation(line: 91, column: 10, scope: !3228, inlinedAt: !3242)
!3244 = !DILocation(line: 0, scope: !2924, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 302, column: 10, scope: !3222)
!3246 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !3245)
!3247 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !3245)
!3248 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !3245)
!3249 = !DILocation(line: 302, column: 3, scope: !3222)
!3250 = distinct !DISubprogram(name: "xmemdup", scope: !673, file: !673, line: 310, type: !3251, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3253)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!89, !954, !92}
!3253 = !{!3254, !3255}
!3254 = !DILocalVariable(name: "p", arg: 1, scope: !3250, file: !673, line: 310, type: !954)
!3255 = !DILocalVariable(name: "s", arg: 2, scope: !3250, file: !673, line: 310, type: !92)
!3256 = !DILocation(line: 0, scope: !3250)
!3257 = !DILocation(line: 0, scope: !2943, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 312, column: 18, scope: !3250)
!3259 = !DILocation(line: 49, column: 25, scope: !2943, inlinedAt: !3258)
!3260 = !DILocation(line: 0, scope: !2924, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 49, column: 10, scope: !2943, inlinedAt: !3258)
!3262 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !3261)
!3263 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !3261)
!3264 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !3261)
!3265 = !DILocalVariable(name: "__dest", arg: 1, scope: !3266, file: !1418, line: 26, type: !3269)
!3266 = distinct !DISubprogram(name: "memcpy", scope: !1418, file: !1418, line: 26, type: !3267, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3270)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!89, !3269, !953, !92}
!3269 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !89)
!3270 = !{!3265, !3271, !3272}
!3271 = !DILocalVariable(name: "__src", arg: 2, scope: !3266, file: !1418, line: 26, type: !953)
!3272 = !DILocalVariable(name: "__len", arg: 3, scope: !3266, file: !1418, line: 26, type: !92)
!3273 = !DILocation(line: 0, scope: !3266, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 312, column: 10, scope: !3250)
!3275 = !DILocation(line: 29, column: 10, scope: !3266, inlinedAt: !3274)
!3276 = !DILocation(line: 312, column: 3, scope: !3250)
!3277 = distinct !DISubprogram(name: "ximemdup", scope: !673, file: !673, line: 316, type: !3278, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3280)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!89, !954, !692}
!3280 = !{!3281, !3282}
!3281 = !DILocalVariable(name: "p", arg: 1, scope: !3277, file: !673, line: 316, type: !954)
!3282 = !DILocalVariable(name: "s", arg: 2, scope: !3277, file: !673, line: 316, type: !692)
!3283 = !DILocation(line: 0, scope: !3277)
!3284 = !DILocation(line: 0, scope: !2957, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 318, column: 18, scope: !3277)
!3286 = !DILocation(line: 0, scope: !2964, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 55, column: 25, scope: !2957, inlinedAt: !3285)
!3288 = !DILocation(line: 57, column: 26, scope: !2964, inlinedAt: !3287)
!3289 = !DILocation(line: 0, scope: !2924, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 55, column: 10, scope: !2957, inlinedAt: !3285)
!3291 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !3290)
!3292 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !3290)
!3293 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !3290)
!3294 = !DILocation(line: 0, scope: !3266, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 318, column: 10, scope: !3277)
!3296 = !DILocation(line: 29, column: 10, scope: !3266, inlinedAt: !3295)
!3297 = !DILocation(line: 318, column: 3, scope: !3277)
!3298 = distinct !DISubprogram(name: "ximemdup0", scope: !673, file: !673, line: 325, type: !3299, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3301)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!237, !954, !692}
!3301 = !{!3302, !3303, !3304}
!3302 = !DILocalVariable(name: "p", arg: 1, scope: !3298, file: !673, line: 325, type: !954)
!3303 = !DILocalVariable(name: "s", arg: 2, scope: !3298, file: !673, line: 325, type: !692)
!3304 = !DILocalVariable(name: "result", scope: !3298, file: !673, line: 327, type: !237)
!3305 = !DILocation(line: 0, scope: !3298)
!3306 = !DILocation(line: 327, column: 30, scope: !3298)
!3307 = !DILocation(line: 0, scope: !2957, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 327, column: 18, scope: !3298)
!3309 = !DILocation(line: 0, scope: !2964, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 55, column: 25, scope: !2957, inlinedAt: !3308)
!3311 = !DILocation(line: 57, column: 26, scope: !2964, inlinedAt: !3310)
!3312 = !DILocation(line: 0, scope: !2924, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 55, column: 10, scope: !2957, inlinedAt: !3308)
!3314 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !3313)
!3315 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !3313)
!3316 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !3313)
!3317 = !DILocation(line: 328, column: 3, scope: !3298)
!3318 = !DILocation(line: 328, column: 13, scope: !3298)
!3319 = !DILocation(line: 0, scope: !3266, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 329, column: 10, scope: !3298)
!3321 = !DILocation(line: 29, column: 10, scope: !3266, inlinedAt: !3320)
!3322 = !DILocation(line: 329, column: 3, scope: !3298)
!3323 = distinct !DISubprogram(name: "xstrdup", scope: !673, file: !673, line: 335, type: !932, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3324)
!3324 = !{!3325}
!3325 = !DILocalVariable(name: "string", arg: 1, scope: !3323, file: !673, line: 335, type: !68)
!3326 = !DILocation(line: 0, scope: !3323)
!3327 = !DILocation(line: 337, column: 27, scope: !3323)
!3328 = !DILocation(line: 337, column: 43, scope: !3323)
!3329 = !DILocation(line: 0, scope: !3250, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 337, column: 10, scope: !3323)
!3331 = !DILocation(line: 0, scope: !2943, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 312, column: 18, scope: !3250, inlinedAt: !3330)
!3333 = !DILocation(line: 49, column: 25, scope: !2943, inlinedAt: !3332)
!3334 = !DILocation(line: 0, scope: !2924, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 49, column: 10, scope: !2943, inlinedAt: !3332)
!3336 = !DILocation(line: 39, column: 8, scope: !2931, inlinedAt: !3335)
!3337 = !DILocation(line: 39, column: 7, scope: !2924, inlinedAt: !3335)
!3338 = !DILocation(line: 40, column: 5, scope: !2931, inlinedAt: !3335)
!3339 = !DILocation(line: 0, scope: !3266, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 312, column: 10, scope: !3250, inlinedAt: !3330)
!3341 = !DILocation(line: 29, column: 10, scope: !3266, inlinedAt: !3340)
!3342 = !DILocation(line: 337, column: 3, scope: !3323)
!3343 = distinct !DISubprogram(name: "xalloc_die", scope: !637, file: !637, line: 32, type: !360, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3344)
!3344 = !{!3345}
!3345 = !DILocalVariable(name: "__errstatus", scope: !3346, file: !637, line: 34, type: !3347)
!3346 = distinct !DILexicalBlock(scope: !3343, file: !637, line: 34, column: 3)
!3347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!3348 = !DILocation(line: 34, column: 3, scope: !3346)
!3349 = !DILocation(line: 0, scope: !3346)
!3350 = !DILocation(line: 40, column: 3, scope: !3343)
!3351 = distinct !DISubprogram(name: "close_stream", scope: !709, file: !709, line: 55, type: !3352, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3388)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!90, !3354}
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !3356)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !3357)
!3357 = !{!3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3356, file: !233, line: 51, baseType: !90, size: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3356, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3356, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3356, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3356, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3356, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3356, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3356, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3356, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3356, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3356, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3356, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3356, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3356, file: !233, line: 70, baseType: !3372, size: 64, offset: 832)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3356, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3356, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3356, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3356, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3356, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3356, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3356, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3356, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3356, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3356, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3356, file: !233, line: 93, baseType: !3372, size: 64, offset: 1344)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3356, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3356, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3356, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3356, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!3388 = !{!3389, !3390, !3392, !3393}
!3389 = !DILocalVariable(name: "stream", arg: 1, scope: !3351, file: !709, line: 55, type: !3354)
!3390 = !DILocalVariable(name: "some_pending", scope: !3351, file: !709, line: 57, type: !3391)
!3391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!3392 = !DILocalVariable(name: "prev_fail", scope: !3351, file: !709, line: 58, type: !3391)
!3393 = !DILocalVariable(name: "fclose_fail", scope: !3351, file: !709, line: 59, type: !3391)
!3394 = !DILocation(line: 0, scope: !3351)
!3395 = !DILocation(line: 57, column: 30, scope: !3351)
!3396 = !DILocalVariable(name: "__stream", arg: 1, scope: !3397, file: !1165, line: 135, type: !3354)
!3397 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1165, file: !1165, line: 135, type: !3352, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3398)
!3398 = !{!3396}
!3399 = !DILocation(line: 0, scope: !3397, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 58, column: 27, scope: !3351)
!3401 = !DILocation(line: 137, column: 10, scope: !3397, inlinedAt: !3400)
!3402 = !{!1174, !802, i64 0}
!3403 = !DILocation(line: 58, column: 43, scope: !3351)
!3404 = !DILocation(line: 59, column: 29, scope: !3351)
!3405 = !DILocation(line: 59, column: 45, scope: !3351)
!3406 = !DILocation(line: 69, column: 17, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3351, file: !709, line: 69, column: 7)
!3408 = !DILocation(line: 57, column: 50, scope: !3351)
!3409 = !DILocation(line: 69, column: 33, scope: !3407)
!3410 = !DILocation(line: 69, column: 53, scope: !3407)
!3411 = !DILocation(line: 69, column: 59, scope: !3407)
!3412 = !DILocation(line: 69, column: 7, scope: !3351)
!3413 = !DILocation(line: 71, column: 11, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3407, file: !709, line: 70, column: 5)
!3415 = !DILocation(line: 72, column: 9, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3414, file: !709, line: 71, column: 11)
!3417 = !DILocation(line: 72, column: 15, scope: !3416)
!3418 = !DILocation(line: 77, column: 1, scope: !3351)
!3419 = !DISubprogram(name: "__fpending", scope: !3420, file: !3420, line: 75, type: !3421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!3420 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!92, !3354}
!3423 = distinct !DISubprogram(name: "rpl_fclose", scope: !711, file: !711, line: 58, type: !3424, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3460)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!90, !3426}
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !3428)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !3429)
!3429 = !{!3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3428, file: !233, line: 51, baseType: !90, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3428, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3428, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3428, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3428, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3428, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3428, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3428, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3428, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3428, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3428, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3428, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3428, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3428, file: !233, line: 70, baseType: !3444, size: 64, offset: 832)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3428, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3428, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3428, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3428, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3428, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3428, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3428, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3428, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3428, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3428, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3428, file: !233, line: 93, baseType: !3444, size: 64, offset: 1344)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3428, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3428, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3428, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3428, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!3460 = !{!3461, !3462, !3463, !3464}
!3461 = !DILocalVariable(name: "fp", arg: 1, scope: !3423, file: !711, line: 58, type: !3426)
!3462 = !DILocalVariable(name: "saved_errno", scope: !3423, file: !711, line: 60, type: !90)
!3463 = !DILocalVariable(name: "fd", scope: !3423, file: !711, line: 63, type: !90)
!3464 = !DILocalVariable(name: "result", scope: !3423, file: !711, line: 74, type: !90)
!3465 = !DILocation(line: 0, scope: !3423)
!3466 = !DILocation(line: 63, column: 12, scope: !3423)
!3467 = !DILocation(line: 64, column: 10, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3423, file: !711, line: 64, column: 7)
!3469 = !DILocation(line: 64, column: 7, scope: !3423)
!3470 = !DILocation(line: 65, column: 12, scope: !3468)
!3471 = !DILocation(line: 65, column: 5, scope: !3468)
!3472 = !DILocation(line: 70, column: 9, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3423, file: !711, line: 70, column: 7)
!3474 = !DILocation(line: 70, column: 23, scope: !3473)
!3475 = !DILocation(line: 70, column: 33, scope: !3473)
!3476 = !DILocation(line: 70, column: 26, scope: !3473)
!3477 = !DILocation(line: 70, column: 59, scope: !3473)
!3478 = !DILocation(line: 71, column: 7, scope: !3473)
!3479 = !DILocation(line: 71, column: 10, scope: !3473)
!3480 = !DILocation(line: 70, column: 7, scope: !3423)
!3481 = !DILocation(line: 100, column: 12, scope: !3423)
!3482 = !DILocation(line: 105, column: 7, scope: !3423)
!3483 = !DILocation(line: 72, column: 19, scope: !3473)
!3484 = !DILocation(line: 105, column: 19, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3423, file: !711, line: 105, column: 7)
!3486 = !DILocation(line: 107, column: 13, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3485, file: !711, line: 106, column: 5)
!3488 = !DILocation(line: 109, column: 5, scope: !3487)
!3489 = !DILocation(line: 112, column: 1, scope: !3423)
!3490 = !DISubprogram(name: "fileno", scope: !926, file: !926, line: 809, type: !3424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!3491 = !DISubprogram(name: "fclose", scope: !926, file: !926, line: 178, type: !3424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!3492 = !DISubprogram(name: "__freading", scope: !3420, file: !3420, line: 51, type: !3424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!3493 = !DISubprogram(name: "lseek", scope: !992, file: !992, line: 339, type: !3494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!256, !90, !256, !90}
!3496 = distinct !DISubprogram(name: "rpl_fflush", scope: !713, file: !713, line: 130, type: !3497, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3533)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!90, !3499}
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !3501)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !3502)
!3502 = !{!3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3501, file: !233, line: 51, baseType: !90, size: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3501, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3501, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3501, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3501, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3501, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3501, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3501, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3501, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3501, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3501, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3501, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3501, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3501, file: !233, line: 70, baseType: !3517, size: 64, offset: 832)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3501, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3501, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3501, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3501, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3501, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3501, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3501, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3501, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3501, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3501, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3501, file: !233, line: 93, baseType: !3517, size: 64, offset: 1344)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3501, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3501, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3501, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3501, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!3533 = !{!3534}
!3534 = !DILocalVariable(name: "stream", arg: 1, scope: !3496, file: !713, line: 130, type: !3499)
!3535 = !DILocation(line: 0, scope: !3496)
!3536 = !DILocation(line: 151, column: 14, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3496, file: !713, line: 151, column: 7)
!3538 = !DILocation(line: 151, column: 22, scope: !3537)
!3539 = !DILocation(line: 151, column: 27, scope: !3537)
!3540 = !DILocation(line: 151, column: 7, scope: !3496)
!3541 = !DILocation(line: 152, column: 12, scope: !3537)
!3542 = !DILocation(line: 152, column: 5, scope: !3537)
!3543 = !DILocalVariable(name: "fp", arg: 1, scope: !3544, file: !713, line: 42, type: !3499)
!3544 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !713, file: !713, line: 42, type: !3545, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3547)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{null, !3499}
!3547 = !{!3543}
!3548 = !DILocation(line: 0, scope: !3544, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 157, column: 3, scope: !3496)
!3550 = !DILocation(line: 44, column: 12, scope: !3551, inlinedAt: !3549)
!3551 = distinct !DILexicalBlock(scope: !3544, file: !713, line: 44, column: 7)
!3552 = !DILocation(line: 44, column: 19, scope: !3551, inlinedAt: !3549)
!3553 = !DILocation(line: 44, column: 7, scope: !3544, inlinedAt: !3549)
!3554 = !DILocation(line: 46, column: 5, scope: !3551, inlinedAt: !3549)
!3555 = !DILocation(line: 159, column: 10, scope: !3496)
!3556 = !DILocation(line: 159, column: 3, scope: !3496)
!3557 = !DILocation(line: 236, column: 1, scope: !3496)
!3558 = !DISubprogram(name: "fflush", scope: !926, file: !926, line: 230, type: !3497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!3559 = distinct !DISubprogram(name: "rpl_fseeko", scope: !715, file: !715, line: 28, type: !3560, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3597)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!90, !3562, !3596, !90}
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !3564)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !3565)
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3564, file: !233, line: 51, baseType: !90, size: 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3564, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3564, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3564, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3564, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3564, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3564, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3564, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3564, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3564, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3564, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3564, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3564, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3564, file: !233, line: 70, baseType: !3580, size: 64, offset: 832)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3564, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3564, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3564, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3564, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3564, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3564, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3564, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3564, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3564, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3564, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3564, file: !233, line: 93, baseType: !3580, size: 64, offset: 1344)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3564, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3564, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3564, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3564, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!3596 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !926, line: 63, baseType: !256)
!3597 = !{!3598, !3599, !3600, !3601}
!3598 = !DILocalVariable(name: "fp", arg: 1, scope: !3559, file: !715, line: 28, type: !3562)
!3599 = !DILocalVariable(name: "offset", arg: 2, scope: !3559, file: !715, line: 28, type: !3596)
!3600 = !DILocalVariable(name: "whence", arg: 3, scope: !3559, file: !715, line: 28, type: !90)
!3601 = !DILocalVariable(name: "pos", scope: !3602, file: !715, line: 123, type: !3596)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !715, line: 119, column: 5)
!3603 = distinct !DILexicalBlock(scope: !3559, file: !715, line: 55, column: 7)
!3604 = !DILocation(line: 0, scope: !3559)
!3605 = !DILocation(line: 55, column: 12, scope: !3603)
!3606 = !{!1174, !746, i64 16}
!3607 = !DILocation(line: 55, column: 33, scope: !3603)
!3608 = !{!1174, !746, i64 8}
!3609 = !DILocation(line: 55, column: 25, scope: !3603)
!3610 = !DILocation(line: 56, column: 7, scope: !3603)
!3611 = !DILocation(line: 56, column: 15, scope: !3603)
!3612 = !DILocation(line: 56, column: 37, scope: !3603)
!3613 = !{!1174, !746, i64 32}
!3614 = !DILocation(line: 56, column: 29, scope: !3603)
!3615 = !DILocation(line: 57, column: 7, scope: !3603)
!3616 = !DILocation(line: 57, column: 15, scope: !3603)
!3617 = !{!1174, !746, i64 72}
!3618 = !DILocation(line: 57, column: 29, scope: !3603)
!3619 = !DILocation(line: 55, column: 7, scope: !3559)
!3620 = !DILocation(line: 123, column: 26, scope: !3602)
!3621 = !DILocation(line: 123, column: 19, scope: !3602)
!3622 = !DILocation(line: 0, scope: !3602)
!3623 = !DILocation(line: 124, column: 15, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3602, file: !715, line: 124, column: 11)
!3625 = !DILocation(line: 124, column: 11, scope: !3602)
!3626 = !DILocation(line: 135, column: 19, scope: !3602)
!3627 = !DILocation(line: 136, column: 12, scope: !3602)
!3628 = !DILocation(line: 136, column: 20, scope: !3602)
!3629 = !{!1174, !1175, i64 144}
!3630 = !DILocation(line: 167, column: 7, scope: !3602)
!3631 = !DILocation(line: 169, column: 10, scope: !3559)
!3632 = !DILocation(line: 169, column: 3, scope: !3559)
!3633 = !DILocation(line: 170, column: 1, scope: !3559)
!3634 = !DISubprogram(name: "fseeko", scope: !926, file: !926, line: 736, type: !3635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!90, !3562, !256, !90}
!3637 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !644, file: !644, line: 100, type: !3638, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !3641)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!92, !1436, !68, !92, !3640}
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!3641 = !{!3642, !3643, !3644, !3645, !3646}
!3642 = !DILocalVariable(name: "pwc", arg: 1, scope: !3637, file: !644, line: 100, type: !1436)
!3643 = !DILocalVariable(name: "s", arg: 2, scope: !3637, file: !644, line: 100, type: !68)
!3644 = !DILocalVariable(name: "n", arg: 3, scope: !3637, file: !644, line: 100, type: !92)
!3645 = !DILocalVariable(name: "ps", arg: 4, scope: !3637, file: !644, line: 100, type: !3640)
!3646 = !DILocalVariable(name: "ret", scope: !3637, file: !644, line: 130, type: !92)
!3647 = !DILocation(line: 0, scope: !3637)
!3648 = !DILocation(line: 105, column: 9, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3637, file: !644, line: 105, column: 7)
!3650 = !DILocation(line: 105, column: 7, scope: !3637)
!3651 = !DILocation(line: 117, column: 10, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3637, file: !644, line: 117, column: 7)
!3653 = !DILocation(line: 117, column: 7, scope: !3637)
!3654 = !DILocation(line: 130, column: 16, scope: !3637)
!3655 = !DILocation(line: 135, column: 11, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3637, file: !644, line: 135, column: 7)
!3657 = !DILocation(line: 135, column: 25, scope: !3656)
!3658 = !DILocation(line: 135, column: 30, scope: !3656)
!3659 = !DILocation(line: 135, column: 7, scope: !3637)
!3660 = !DILocalVariable(name: "ps", arg: 1, scope: !3661, file: !1409, line: 1135, type: !3640)
!3661 = distinct !DISubprogram(name: "mbszero", scope: !1409, file: !1409, line: 1135, type: !3662, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !3664)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{null, !3640}
!3664 = !{!3660}
!3665 = !DILocation(line: 0, scope: !3661, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 137, column: 5, scope: !3656)
!3667 = !DILocalVariable(name: "__dest", arg: 1, scope: !3668, file: !1418, line: 57, type: !89)
!3668 = distinct !DISubprogram(name: "memset", scope: !1418, file: !1418, line: 57, type: !1419, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !3669)
!3669 = !{!3667, !3670, !3671}
!3670 = !DILocalVariable(name: "__ch", arg: 2, scope: !3668, file: !1418, line: 57, type: !90)
!3671 = !DILocalVariable(name: "__len", arg: 3, scope: !3668, file: !1418, line: 57, type: !92)
!3672 = !DILocation(line: 0, scope: !3668, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 1137, column: 3, scope: !3661, inlinedAt: !3666)
!3674 = !DILocation(line: 59, column: 10, scope: !3668, inlinedAt: !3673)
!3675 = !DILocation(line: 137, column: 5, scope: !3656)
!3676 = !DILocation(line: 138, column: 11, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3637, file: !644, line: 138, column: 7)
!3678 = !DILocation(line: 138, column: 7, scope: !3637)
!3679 = !DILocation(line: 139, column: 5, scope: !3677)
!3680 = !DILocation(line: 143, column: 26, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3637, file: !644, line: 143, column: 7)
!3682 = !DILocation(line: 143, column: 41, scope: !3681)
!3683 = !DILocation(line: 143, column: 7, scope: !3637)
!3684 = !DILocation(line: 145, column: 15, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3686, file: !644, line: 145, column: 11)
!3686 = distinct !DILexicalBlock(scope: !3681, file: !644, line: 144, column: 5)
!3687 = !DILocation(line: 145, column: 11, scope: !3686)
!3688 = !DILocation(line: 146, column: 32, scope: !3685)
!3689 = !DILocation(line: 146, column: 16, scope: !3685)
!3690 = !DILocation(line: 146, column: 14, scope: !3685)
!3691 = !DILocation(line: 146, column: 9, scope: !3685)
!3692 = !DILocation(line: 286, column: 1, scope: !3637)
!3693 = !DISubprogram(name: "mbsinit", scope: !3694, file: !3694, line: 293, type: !3695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!3694 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!90, !3697}
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!3699 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !717, file: !717, line: 27, type: !2908, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3700)
!3700 = !{!3701, !3702, !3703, !3704}
!3701 = !DILocalVariable(name: "ptr", arg: 1, scope: !3699, file: !717, line: 27, type: !89)
!3702 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3699, file: !717, line: 27, type: !92)
!3703 = !DILocalVariable(name: "size", arg: 3, scope: !3699, file: !717, line: 27, type: !92)
!3704 = !DILocalVariable(name: "nbytes", scope: !3699, file: !717, line: 29, type: !92)
!3705 = !DILocation(line: 0, scope: !3699)
!3706 = !DILocation(line: 30, column: 7, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3699, file: !717, line: 30, column: 7)
!3708 = !DILocalVariable(name: "ptr", arg: 1, scope: !3709, file: !3000, line: 2057, type: !89)
!3709 = distinct !DISubprogram(name: "rpl_realloc", scope: !3000, file: !3000, line: 2057, type: !2992, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3710)
!3710 = !{!3708, !3711}
!3711 = !DILocalVariable(name: "size", arg: 2, scope: !3709, file: !3000, line: 2057, type: !92)
!3712 = !DILocation(line: 0, scope: !3709, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 37, column: 10, scope: !3699)
!3714 = !DILocation(line: 2059, column: 24, scope: !3709, inlinedAt: !3713)
!3715 = !DILocation(line: 2059, column: 10, scope: !3709, inlinedAt: !3713)
!3716 = !DILocation(line: 37, column: 3, scope: !3699)
!3717 = !DILocation(line: 32, column: 7, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3707, file: !717, line: 31, column: 5)
!3719 = !DILocation(line: 32, column: 13, scope: !3718)
!3720 = !DILocation(line: 33, column: 7, scope: !3718)
!3721 = !DILocation(line: 38, column: 1, scope: !3699)
!3722 = distinct !DISubprogram(name: "hard_locale", scope: !662, file: !662, line: 28, type: !3723, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3725)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!216, !90}
!3725 = !{!3726, !3727}
!3726 = !DILocalVariable(name: "category", arg: 1, scope: !3722, file: !662, line: 28, type: !90)
!3727 = !DILocalVariable(name: "locale", scope: !3722, file: !662, line: 30, type: !3728)
!3728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3729)
!3729 = !{!3730}
!3730 = !DISubrange(count: 257)
!3731 = !DILocation(line: 0, scope: !3722)
!3732 = !DILocation(line: 30, column: 3, scope: !3722)
!3733 = !DILocation(line: 30, column: 8, scope: !3722)
!3734 = !DILocation(line: 32, column: 7, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3722, file: !662, line: 32, column: 7)
!3736 = !DILocation(line: 32, column: 7, scope: !3722)
!3737 = !DILocalVariable(name: "__s1", arg: 1, scope: !3738, file: !814, line: 1359, type: !68)
!3738 = distinct !DISubprogram(name: "streq", scope: !814, file: !814, line: 1359, type: !815, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3739)
!3739 = !{!3737, !3740}
!3740 = !DILocalVariable(name: "__s2", arg: 2, scope: !3738, file: !814, line: 1359, type: !68)
!3741 = !DILocation(line: 0, scope: !3738, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 35, column: 9, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3722, file: !662, line: 35, column: 7)
!3744 = !DILocation(line: 1361, column: 11, scope: !3738, inlinedAt: !3742)
!3745 = !DILocation(line: 35, column: 29, scope: !3743)
!3746 = !DILocation(line: 0, scope: !3738, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 35, column: 32, scope: !3743)
!3748 = !DILocation(line: 1361, column: 11, scope: !3738, inlinedAt: !3747)
!3749 = !DILocation(line: 1361, column: 10, scope: !3738, inlinedAt: !3747)
!3750 = !DILocation(line: 35, column: 7, scope: !3722)
!3751 = !DILocation(line: 46, column: 3, scope: !3722)
!3752 = !DILocation(line: 47, column: 1, scope: !3722)
!3753 = distinct !DISubprogram(name: "setlocale_null_r", scope: !724, file: !724, line: 154, type: !3754, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3756)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!90, !90, !237, !92}
!3756 = !{!3757, !3758, !3759}
!3757 = !DILocalVariable(name: "category", arg: 1, scope: !3753, file: !724, line: 154, type: !90)
!3758 = !DILocalVariable(name: "buf", arg: 2, scope: !3753, file: !724, line: 154, type: !237)
!3759 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3753, file: !724, line: 154, type: !92)
!3760 = !DILocation(line: 0, scope: !3753)
!3761 = !DILocation(line: 159, column: 10, scope: !3753)
!3762 = !DILocation(line: 159, column: 3, scope: !3753)
!3763 = distinct !DISubprogram(name: "setlocale_null", scope: !724, file: !724, line: 186, type: !3764, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3766)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!68, !90}
!3766 = !{!3767}
!3767 = !DILocalVariable(name: "category", arg: 1, scope: !3763, file: !724, line: 186, type: !90)
!3768 = !DILocation(line: 0, scope: !3763)
!3769 = !DILocation(line: 189, column: 10, scope: !3763)
!3770 = !DILocation(line: 189, column: 3, scope: !3763)
!3771 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !726, file: !726, line: 35, type: !3764, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3772)
!3772 = !{!3773, !3774}
!3773 = !DILocalVariable(name: "category", arg: 1, scope: !3771, file: !726, line: 35, type: !90)
!3774 = !DILocalVariable(name: "result", scope: !3771, file: !726, line: 37, type: !68)
!3775 = !DILocation(line: 0, scope: !3771)
!3776 = !DILocation(line: 37, column: 24, scope: !3771)
!3777 = !DILocation(line: 62, column: 3, scope: !3771)
!3778 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !726, file: !726, line: 66, type: !3754, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3779)
!3779 = !{!3780, !3781, !3782, !3783, !3784}
!3780 = !DILocalVariable(name: "category", arg: 1, scope: !3778, file: !726, line: 66, type: !90)
!3781 = !DILocalVariable(name: "buf", arg: 2, scope: !3778, file: !726, line: 66, type: !237)
!3782 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3778, file: !726, line: 66, type: !92)
!3783 = !DILocalVariable(name: "result", scope: !3778, file: !726, line: 111, type: !68)
!3784 = !DILocalVariable(name: "length", scope: !3785, file: !726, line: 125, type: !92)
!3785 = distinct !DILexicalBlock(scope: !3786, file: !726, line: 124, column: 5)
!3786 = distinct !DILexicalBlock(scope: !3778, file: !726, line: 113, column: 7)
!3787 = !DILocation(line: 0, scope: !3778)
!3788 = !DILocation(line: 0, scope: !3771, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 111, column: 24, scope: !3778)
!3790 = !DILocation(line: 37, column: 24, scope: !3771, inlinedAt: !3789)
!3791 = !DILocation(line: 113, column: 14, scope: !3786)
!3792 = !DILocation(line: 113, column: 7, scope: !3778)
!3793 = !DILocation(line: 116, column: 19, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3795, file: !726, line: 116, column: 11)
!3795 = distinct !DILexicalBlock(scope: !3786, file: !726, line: 114, column: 5)
!3796 = !DILocation(line: 116, column: 11, scope: !3795)
!3797 = !DILocation(line: 120, column: 16, scope: !3794)
!3798 = !DILocation(line: 120, column: 9, scope: !3794)
!3799 = !DILocation(line: 125, column: 23, scope: !3785)
!3800 = !DILocation(line: 0, scope: !3785)
!3801 = !DILocation(line: 126, column: 18, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3785, file: !726, line: 126, column: 11)
!3803 = !DILocation(line: 126, column: 11, scope: !3785)
!3804 = !DILocation(line: 128, column: 39, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3802, file: !726, line: 127, column: 9)
!3806 = !DILocalVariable(name: "__dest", arg: 1, scope: !3807, file: !1418, line: 26, type: !3269)
!3807 = distinct !DISubprogram(name: "memcpy", scope: !1418, file: !1418, line: 26, type: !3267, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3808)
!3808 = !{!3806, !3809, !3810}
!3809 = !DILocalVariable(name: "__src", arg: 2, scope: !3807, file: !1418, line: 26, type: !953)
!3810 = !DILocalVariable(name: "__len", arg: 3, scope: !3807, file: !1418, line: 26, type: !92)
!3811 = !DILocation(line: 0, scope: !3807, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 128, column: 11, scope: !3805)
!3813 = !DILocation(line: 29, column: 10, scope: !3807, inlinedAt: !3812)
!3814 = !DILocation(line: 129, column: 11, scope: !3805)
!3815 = !DILocation(line: 133, column: 23, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3817, file: !726, line: 133, column: 15)
!3817 = distinct !DILexicalBlock(scope: !3802, file: !726, line: 132, column: 9)
!3818 = !DILocation(line: 133, column: 15, scope: !3817)
!3819 = !DILocation(line: 138, column: 44, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3816, file: !726, line: 134, column: 13)
!3821 = !DILocation(line: 0, scope: !3807, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 138, column: 15, scope: !3820)
!3823 = !DILocation(line: 29, column: 10, scope: !3807, inlinedAt: !3822)
!3824 = !DILocation(line: 139, column: 15, scope: !3820)
!3825 = !DILocation(line: 139, column: 32, scope: !3820)
!3826 = !DILocation(line: 140, column: 13, scope: !3820)
!3827 = !DILocation(line: 0, scope: !3786)
!3828 = !DILocation(line: 145, column: 1, scope: !3778)
