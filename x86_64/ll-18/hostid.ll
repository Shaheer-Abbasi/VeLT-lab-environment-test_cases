; ModuleID = 'src/hostid.bc'
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !347
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !318
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !337
@.str.1.29 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !339
@.str.2.31 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !341
@.str.3.30 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !343
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !345
@.str.4.24 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !349
@.str.5.25 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !351
@.str.6.26 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !356
@opterr = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !361
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.40, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.41, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !364
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
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !738, metadata !DIExpression()), !dbg !739
  %2 = icmp eq i32 %0, 0, !dbg !740
  br i1 %2, label %8, label %3, !dbg !742

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !743, !tbaa !745
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !743
  %6 = load ptr, ptr @program_name, align 8, !dbg !743, !tbaa !745
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !743
  br label %28, !dbg !743

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !749
  %10 = load ptr, ptr @program_name, align 8, !dbg !749, !tbaa !745
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !749
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #37, !dbg !751
  tail call fastcc void @oputs_(ptr noundef %12), !dbg !751
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !752
  tail call fastcc void @oputs_(ptr noundef %13), !dbg !752
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !753, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata !772, metadata !766, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata ptr poison, metadata !765, metadata !DIExpression()), !dbg !770
  tail call void @emit_bug_reporting_address() #37, !dbg !773
  %14 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !774
  call void @llvm.dbg.value(metadata ptr %14, metadata !768, metadata !DIExpression()), !dbg !770
  %15 = icmp eq ptr %14, null, !dbg !775
  br i1 %15, label %23, label %16, !dbg !777

16:                                               ; preds = %8
  %17 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(4) @.str.42, i64 noundef 3) #38, !dbg !778
  %18 = icmp eq i32 %17, 0, !dbg !778
  br i1 %18, label %23, label %19, !dbg !779

19:                                               ; preds = %16
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #37, !dbg !780
  %21 = load ptr, ptr @stdout, align 8, !dbg !780, !tbaa !745
  %22 = tail call i32 @fputs_unlocked(ptr noundef %20, ptr noundef %21), !dbg !780
  br label %23, !dbg !782

23:                                               ; preds = %8, %16, %19
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !765, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !769, metadata !DIExpression()), !dbg !770
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #37, !dbg !783
  %25 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %24, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.2) #37, !dbg !783
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #37, !dbg !784
  %27 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %26, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.46) #37, !dbg !784
  br label %28

28:                                               ; preds = %23, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !785
  unreachable, !dbg !785
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !786 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !790 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !796 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !64 {
  tail call void @llvm.dbg.value(metadata ptr @.str.2, metadata !210, metadata !DIExpression()), !dbg !799
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !211, metadata !DIExpression()), !dbg !799
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !800, !tbaa !801
  %3 = icmp eq i32 %2, -1, !dbg !803
  br i1 %3, label %4, label %16, !dbg !804

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.12) #37, !dbg !805
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !212, metadata !DIExpression()), !dbg !806
  %6 = icmp eq ptr %5, null, !dbg !807
  br i1 %6, label %14, label %7, !dbg !808

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !809, !tbaa !810
  %9 = icmp eq i8 %8, 0, !dbg !809
  br i1 %9, label %14, label %10, !dbg !811

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !812, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata ptr @.str.13, metadata !818, metadata !DIExpression()), !dbg !819
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.13) #38, !dbg !821
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
  br label %124, !dbg !830

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !215, metadata !DIExpression()), !dbg !799
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.14) #38, !dbg !831
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !832
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !217, metadata !DIExpression()), !dbg !799
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !833
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !218, metadata !DIExpression()), !dbg !799
  %26 = icmp eq ptr %25, null, !dbg !834
  br i1 %26, label %54, label %27, !dbg !835

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !836
  br i1 %28, label %54, label %29, !dbg !837

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !219, metadata !DIExpression()), !dbg !838
  tail call void @llvm.dbg.value(metadata i64 0, metadata !223, metadata !DIExpression()), !dbg !838
  %30 = icmp ult ptr %24, %25, !dbg !839
  br i1 %30, label %31, label %54, !dbg !840

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !799
  %33 = load ptr, ptr %32, align 8, !tbaa !745
  br label %34, !dbg !840

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !219, metadata !DIExpression()), !dbg !838
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !223, metadata !DIExpression()), !dbg !838
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !841
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !219, metadata !DIExpression()), !dbg !838
  %38 = load i8, ptr %35, align 1, !dbg !841, !tbaa !810
  %39 = sext i8 %38 to i64, !dbg !841
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !841
  %41 = load i16, ptr %40, align 2, !dbg !841, !tbaa !842
  %42 = freeze i16 %41, !dbg !844
  %43 = lshr i16 %42, 13, !dbg !844
  %44 = and i16 %43, 1, !dbg !844
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !845
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !223, metadata !DIExpression()), !dbg !838
  %47 = icmp ult ptr %37, %25, !dbg !839
  %48 = icmp ult i64 %46, 2, !dbg !846
  %49 = select i1 %47, i1 %48, i1 false, !dbg !846
  br i1 %49, label %34, label %50, !dbg !840, !llvm.loop !847

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !849
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !851
  %53 = zext i1 %51 to i8, !dbg !851
  br label %54, !dbg !851

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !799
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !799
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !215, metadata !DIExpression()), !dbg !799
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !218, metadata !DIExpression()), !dbg !799
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.15) #38, !dbg !852
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !224, metadata !DIExpression()), !dbg !799
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !853
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !225, metadata !DIExpression()), !dbg !799
  br label %59, !dbg !854

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !799
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !799
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !215, metadata !DIExpression()), !dbg !799
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !225, metadata !DIExpression()), !dbg !799
  %62 = load i8, ptr %60, align 1, !dbg !855, !tbaa !810
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !856

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !857
  %65 = load i8, ptr %64, align 1, !dbg !860, !tbaa !810
  %66 = icmp eq i8 %65, 45, !dbg !861
  %67 = select i1 %66, i8 0, i8 %61, !dbg !862
  br label %68, !dbg !862

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !799
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !215, metadata !DIExpression()), !dbg !799
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !863
  %71 = load ptr, ptr %70, align 8, !dbg !863, !tbaa !745
  %72 = sext i8 %62 to i64, !dbg !863
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !863
  %74 = load i16, ptr %73, align 2, !dbg !863, !tbaa !842
  %75 = and i16 %74, 8192, !dbg !863
  %76 = icmp eq i16 %75, 0, !dbg !863
  br i1 %76, label %92, label %77, !dbg !865

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !866
  br i1 %78, label %94, label %79, !dbg !869

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !870
  %81 = load i8, ptr %80, align 1, !dbg !870, !tbaa !810
  %82 = sext i8 %81 to i64, !dbg !870
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !870
  %84 = load i16, ptr %83, align 2, !dbg !870, !tbaa !842
  %85 = and i16 %84, 8192, !dbg !870
  %86 = icmp eq i16 %85, 0, !dbg !870
  br i1 %86, label %87, label %94, !dbg !871

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !872
  %89 = icmp ne i8 %88, 0, !dbg !872
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !874
  br i1 %91, label %92, label %94, !dbg !874

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !875
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !225, metadata !DIExpression()), !dbg !799
  br label %59, !dbg !854, !llvm.loop !876

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !878
  %96 = load ptr, ptr @stdout, align 8, !dbg !878, !tbaa !745
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !878
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata !772, metadata !818, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata !772, metadata !818, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata !772, metadata !818, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata !772, metadata !818, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata !772, metadata !818, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata !772, metadata !818, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata !772, metadata !818, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata !772, metadata !818, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata !772, metadata !818, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !812, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata !772, metadata !818, metadata !DIExpression()), !dbg !897
  tail call void @llvm.dbg.value(metadata ptr @.str.2, metadata !283, metadata !DIExpression()), !dbg !799
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.29, i64 noundef 6) #38, !dbg !899
  %99 = icmp eq i32 %98, 0, !dbg !899
  br i1 %99, label %103, label %100, !dbg !901

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.30, i64 noundef 9) #38, !dbg !902
  %102 = icmp eq i32 %101, 0, !dbg !902
  br i1 %102, label %103, label %106, !dbg !903

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !904
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.2, i32 noundef %104, ptr noundef %55) #37, !dbg !904
  br label %109, !dbg !906

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !907
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef %107, ptr noundef %55) #37, !dbg !907
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !909, !tbaa !745
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.35, ptr noundef %110), !dbg !909
  %112 = load ptr, ptr @stdout, align 8, !dbg !910, !tbaa !745
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %112), !dbg !910
  %114 = ptrtoint ptr %60 to i64, !dbg !911
  %115 = sub i64 %114, %95, !dbg !911
  %116 = load ptr, ptr @stdout, align 8, !dbg !911, !tbaa !745
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !911
  %118 = load ptr, ptr @stdout, align 8, !dbg !912, !tbaa !745
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %118), !dbg !912
  %120 = load ptr, ptr @stdout, align 8, !dbg !913, !tbaa !745
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %120), !dbg !913
  %122 = load ptr, ptr @stdout, align 8, !dbg !914, !tbaa !745
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !914
  br label %124, !dbg !915

124:                                              ; preds = %109, %19
  ret void, !dbg !915
}

; Function Attrs: nounwind
declare !dbg !916 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !920 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !924 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !928 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !930 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !933 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !936 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !939 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !942 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !948 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !949 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !955 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !960, metadata !DIExpression()), !dbg !963
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !961, metadata !DIExpression()), !dbg !963
  %3 = load ptr, ptr %1, align 8, !dbg !964, !tbaa !745
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !965
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.5) #37, !dbg !966
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #37, !dbg !967
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.6) #37, !dbg !968
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !969
  %8 = load ptr, ptr @Version, align 8, !dbg !970, !tbaa !745
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.9) #37, !dbg !971
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8, ptr noundef %8, i1 noundef zeroext true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #37, !dbg !972
  %10 = load i32, ptr @optind, align 4, !dbg !973, !tbaa !801
  %11 = icmp slt i32 %10, %0, !dbg !975
  br i1 %11, label %12, label %19, !dbg !976

12:                                               ; preds = %2
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #37, !dbg !977
  %14 = load i32, ptr @optind, align 4, !dbg !977, !tbaa !801
  %15 = sext i32 %14 to i64, !dbg !977
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !977
  %17 = load ptr, ptr %16, align 8, !dbg !977, !tbaa !745
  %18 = tail call ptr @quote(ptr noundef %17) #37, !dbg !977
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13, ptr noundef %18) #37, !dbg !977
  tail call void @usage(i32 noundef 1) #41, !dbg !979
  unreachable, !dbg !979

19:                                               ; preds = %2
  %20 = tail call i64 @gethostid() #37, !dbg !980
  %21 = trunc i64 %20 to i32, !dbg !980
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !962, metadata !DIExpression()), !dbg !963
  %22 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %21) #37, !dbg !981
  ret i32 0, !dbg !982
}

; Function Attrs: nounwind
declare !dbg !983 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !986 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !987 i32 @atexit(ptr noundef) local_unnamed_addr #2

declare !dbg !990 i64 @gethostid() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !994 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !996, metadata !DIExpression()), !dbg !997
  store ptr %0, ptr @file_name, align 8, !dbg !998, !tbaa !745
  ret void, !dbg !999
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1000 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1004, metadata !DIExpression()), !dbg !1005
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1006, !tbaa !1007
  ret void, !dbg !1009
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1010 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1015, !tbaa !745
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1016
  %3 = icmp eq i32 %2, 0, !dbg !1017
  br i1 %3, label %22, label %4, !dbg !1018

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1019, !tbaa !1007, !range !1020, !noundef !772
  %6 = icmp eq i8 %5, 0, !dbg !1019
  br i1 %6, label %11, label %7, !dbg !1021

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1022
  %9 = load i32, ptr %8, align 4, !dbg !1022, !tbaa !801
  %10 = icmp eq i32 %9, 32, !dbg !1023
  br i1 %10, label %22, label %11, !dbg !1024

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1.20, i32 noundef 5) #37, !dbg !1025
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1012, metadata !DIExpression()), !dbg !1026
  %13 = load ptr, ptr @file_name, align 8, !dbg !1027, !tbaa !745
  %14 = icmp eq ptr %13, null, !dbg !1027
  %15 = tail call ptr @__errno_location() #40, !dbg !1029
  %16 = load i32, ptr %15, align 4, !dbg !1029, !tbaa !801
  br i1 %14, label %19, label %17, !dbg !1030

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1031
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.21, ptr noundef %18, ptr noundef %12) #37, !dbg !1031
  br label %20, !dbg !1031

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.22, ptr noundef %12) #37, !dbg !1032
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1033, !tbaa !801
  tail call void @_exit(i32 noundef %21) #39, !dbg !1034
  unreachable, !dbg !1034

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1035, !tbaa !745
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1037
  %25 = icmp eq i32 %24, 0, !dbg !1038
  br i1 %25, label %28, label %26, !dbg !1039

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1040, !tbaa !801
  tail call void @_exit(i32 noundef %27) #39, !dbg !1041
  unreachable, !dbg !1041

28:                                               ; preds = %22
  ret void, !dbg !1042
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1043 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1047 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !dbg !1048 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1052, metadata !DIExpression()), !dbg !1056
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1053, metadata !DIExpression()), !dbg !1056
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1054, metadata !DIExpression()), !dbg !1056
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1055, metadata !DIExpression()), !dbg !1056
  tail call fastcc void @flush_stdout(), !dbg !1057
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1058, !tbaa !745
  %6 = icmp eq ptr %5, null, !dbg !1058
  br i1 %6, label %8, label %7, !dbg !1060

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !1061
  br label %12, !dbg !1061

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1062, !tbaa !745
  %10 = tail call ptr @getprogname() #38, !dbg !1062
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef %10) #37, !dbg !1062
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1064
  ret void, !dbg !1065
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1066 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1068, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata i32 1, metadata !1070, metadata !DIExpression()), !dbg !1075
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1078
  %2 = icmp slt i32 %1, 0, !dbg !1079
  br i1 %2, label %6, label %3, !dbg !1080

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1081, !tbaa !745
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1081
  br label %6, !dbg !1081

6:                                                ; preds = %3, %0
  ret void, !dbg !1082
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1083 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1089
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1085, metadata !DIExpression()), !dbg !1090
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1086, metadata !DIExpression()), !dbg !1090
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1087, metadata !DIExpression()), !dbg !1090
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1088, metadata !DIExpression()), !dbg !1090
  %6 = load ptr, ptr @stderr, align 8, !dbg !1091, !tbaa !745
  call void @llvm.dbg.value(metadata ptr %6, metadata !1092, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr %2, metadata !1132, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr %3, metadata !1133, metadata !DIExpression()), !dbg !1134
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !1136
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1137, !tbaa !801
  %9 = add i32 %8, 1, !dbg !1137
  store i32 %9, ptr @error_message_count, align 4, !dbg !1137, !tbaa !801
  %10 = icmp eq i32 %1, 0, !dbg !1138
  br i1 %10, label %20, label %11, !dbg !1140

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1141, metadata !DIExpression(), metadata !1089, metadata ptr %5, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i32 %1, metadata !1144, metadata !DIExpression()), !dbg !1149
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1151
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1152
  call void @llvm.dbg.value(metadata ptr %12, metadata !1145, metadata !DIExpression()), !dbg !1149
  %13 = icmp eq ptr %12, null, !dbg !1153
  br i1 %13, label %14, label %16, !dbg !1155

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.24, ptr noundef nonnull @.str.5.25, i32 noundef 5) #37, !dbg !1156
  call void @llvm.dbg.value(metadata ptr %15, metadata !1145, metadata !DIExpression()), !dbg !1149
  br label %16, !dbg !1157

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1149
  call void @llvm.dbg.value(metadata ptr %17, metadata !1145, metadata !DIExpression()), !dbg !1149
  %18 = load ptr, ptr @stderr, align 8, !dbg !1158, !tbaa !745
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.26, ptr noundef %17) #37, !dbg !1158
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1159
  br label %20, !dbg !1160

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1161, !tbaa !745
  call void @llvm.dbg.value(metadata i32 10, metadata !1162, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata ptr %21, metadata !1168, metadata !DIExpression()), !dbg !1169
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1171
  %23 = load ptr, ptr %22, align 8, !dbg !1171, !tbaa !1172
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1171
  %25 = load ptr, ptr %24, align 8, !dbg !1171, !tbaa !1175
  %26 = icmp ult ptr %23, %25, !dbg !1171
  br i1 %26, label %29, label %27, !dbg !1171, !prof !1176

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !1171
  br label %31, !dbg !1171

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1171
  store ptr %30, ptr %22, align 8, !dbg !1171, !tbaa !1172
  store i8 10, ptr %23, align 1, !dbg !1171, !tbaa !810
  br label %31, !dbg !1171

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1177, !tbaa !745
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !1177
  %34 = icmp eq i32 %0, 0, !dbg !1178
  br i1 %34, label %36, label %35, !dbg !1180

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #39, !dbg !1181
  unreachable, !dbg !1181

36:                                               ; preds = %31
  ret void, !dbg !1182
}

declare !dbg !1183 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nounwind
declare !dbg !1186 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1189 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1192 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1195 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1199 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1212
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1206, metadata !DIExpression(), metadata !1212, metadata ptr %4, metadata !DIExpression()), !dbg !1213
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1203, metadata !DIExpression()), !dbg !1213
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1204, metadata !DIExpression()), !dbg !1213
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1205, metadata !DIExpression()), !dbg !1213
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !1214
  call void @llvm.va_start(ptr nonnull %4), !dbg !1215
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #42, !dbg !1216
  call void @llvm.va_end(ptr nonnull %4), !dbg !1217
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !1218
  ret void, !dbg !1218
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !320 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !331, metadata !DIExpression()), !dbg !1219
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !332, metadata !DIExpression()), !dbg !1219
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !333, metadata !DIExpression()), !dbg !1219
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !334, metadata !DIExpression()), !dbg !1219
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !335, metadata !DIExpression()), !dbg !1219
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !336, metadata !DIExpression()), !dbg !1219
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1220, !tbaa !801
  %8 = icmp eq i32 %7, 0, !dbg !1220
  br i1 %8, label %23, label %9, !dbg !1222

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1223, !tbaa !801
  %11 = icmp eq i32 %10, %3, !dbg !1226
  br i1 %11, label %12, label %22, !dbg !1227

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1228, !tbaa !745
  %14 = icmp eq ptr %13, %2, !dbg !1229
  br i1 %14, label %36, label %15, !dbg !1230

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1231
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1232
  br i1 %18, label %19, label %22, !dbg !1232

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1233
  %21 = icmp eq i32 %20, 0, !dbg !1234
  br i1 %21, label %36, label %22, !dbg !1235

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1236, !tbaa !745
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1237, !tbaa !801
  br label %23, !dbg !1238

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1239
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1240, !tbaa !745
  %25 = icmp eq ptr %24, null, !dbg !1240
  br i1 %25, label %27, label %26, !dbg !1242

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !1243
  br label %31, !dbg !1243

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1244, !tbaa !745
  %29 = tail call ptr @getprogname() #38, !dbg !1244
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.29, ptr noundef %29) #37, !dbg !1244
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1246, !tbaa !745
  %33 = icmp eq ptr %2, null, !dbg !1246
  %34 = select i1 %33, ptr @.str.3.30, ptr @.str.2.31, !dbg !1246
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !1246
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1247
  br label %36, !dbg !1248

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1248
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1249 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1259
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1258, metadata !DIExpression(), metadata !1259, metadata ptr %6, metadata !DIExpression()), !dbg !1260
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1253, metadata !DIExpression()), !dbg !1260
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1254, metadata !DIExpression()), !dbg !1260
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1255, metadata !DIExpression()), !dbg !1260
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1256, metadata !DIExpression()), !dbg !1260
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1257, metadata !DIExpression()), !dbg !1260
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !1261
  call void @llvm.va_start(ptr nonnull %6), !dbg !1262
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #42, !dbg !1263
  call void @llvm.va_end(ptr nonnull %6), !dbg !1264
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !1265
  ret void, !dbg !1265
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1266 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1269, !tbaa !745
  ret ptr %1, !dbg !1270
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1271 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1301
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1286, metadata !DIExpression(), metadata !1301, metadata ptr %7, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1276, metadata !DIExpression()), !dbg !1303
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1277, metadata !DIExpression()), !dbg !1303
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1278, metadata !DIExpression()), !dbg !1303
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1279, metadata !DIExpression()), !dbg !1303
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1280, metadata !DIExpression()), !dbg !1303
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1281, metadata !DIExpression()), !dbg !1303
  %8 = load i32, ptr @opterr, align 4, !dbg !1304, !tbaa !801
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !1282, metadata !DIExpression()), !dbg !1303
  store i32 0, ptr @opterr, align 4, !dbg !1305, !tbaa !801
  %9 = icmp eq i32 %0, 2, !dbg !1306
  br i1 %9, label %10, label %15, !dbg !1307

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1308
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1283, metadata !DIExpression()), !dbg !1309
  switch i32 %11, label %15 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1310

12:                                               ; preds = %10
  tail call void %5(i32 noundef 0) #37, !dbg !1311
  br label %15, !dbg !1312

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #37, !dbg !1313
  call void @llvm.va_start(ptr nonnull %7), !dbg !1314
  %14 = load ptr, ptr @stdout, align 8, !dbg !1315, !tbaa !745
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #37, !dbg !1316
  call void @exit(i32 noundef 0) #39, !dbg !1317
  unreachable, !dbg !1317

15:                                               ; preds = %12, %10, %6
  store i32 %8, ptr @opterr, align 4, !dbg !1318, !tbaa !801
  store i32 0, ptr @optind, align 4, !dbg !1319, !tbaa !801
  ret void, !dbg !1320
}

; Function Attrs: nounwind
declare !dbg !1321 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1327 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1346
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1341, metadata !DIExpression(), metadata !1346, metadata ptr %8, metadata !DIExpression()), !dbg !1347
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1331, metadata !DIExpression()), !dbg !1348
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1332, metadata !DIExpression()), !dbg !1348
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1333, metadata !DIExpression()), !dbg !1348
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1334, metadata !DIExpression()), !dbg !1348
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1335, metadata !DIExpression()), !dbg !1348
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1336, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1348
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1337, metadata !DIExpression()), !dbg !1348
  %9 = load i32, ptr @opterr, align 4, !dbg !1349, !tbaa !801
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1338, metadata !DIExpression()), !dbg !1348
  store i32 1, ptr @opterr, align 4, !dbg !1350, !tbaa !801
  %10 = select i1 %5, ptr @.str.1.44, ptr @.str.39, !dbg !1351
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !1339, metadata !DIExpression()), !dbg !1348
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1352
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1340, metadata !DIExpression()), !dbg !1348
  switch i32 %11, label %14 [
    i32 -1, label %18
    i32 104, label %16
    i32 118, label %12
  ], !dbg !1353

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #37, !dbg !1354
  call void @llvm.va_start(ptr nonnull %8), !dbg !1355
  %13 = load ptr, ptr @stdout, align 8, !dbg !1356, !tbaa !745
  call void @version_etc_va(ptr noundef %13, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #37, !dbg !1357
  call void @exit(i32 noundef 0) #39, !dbg !1358
  unreachable, !dbg !1358

14:                                               ; preds = %7
  %15 = load volatile i32, ptr @exit_failure, align 4, !dbg !1359, !tbaa !801
  br label %16, !dbg !1360

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %7 ]
  tail call void %6(i32 noundef %17) #37, !dbg !1361
  br label %18, !dbg !1362

18:                                               ; preds = %16, %7
  store i32 %9, ptr @opterr, align 4, !dbg !1362, !tbaa !801
  ret void, !dbg !1363
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1364 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1366, metadata !DIExpression()), !dbg !1369
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1370
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1367, metadata !DIExpression()), !dbg !1369
  %3 = icmp eq ptr %2, null, !dbg !1371
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1371
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1371
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1368, metadata !DIExpression()), !dbg !1369
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
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1366, metadata !DIExpression()), !dbg !1369
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.50, i64 noundef 3) #38, !dbg !1389
  %16 = icmp eq i32 %15, 0, !dbg !1392
  %17 = select i1 %16, i64 3, i64 0, !dbg !1393
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1393
  br label %19, !dbg !1393

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1369
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1368, metadata !DIExpression()), !dbg !1369
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1366, metadata !DIExpression()), !dbg !1369
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
  %3 = alloca i32, align 4, !DIAssignID !1399
  call void @llvm.dbg.assign(metadata i1 undef, metadata !407, metadata !DIExpression(), metadata !1399, metadata ptr %3, metadata !DIExpression()), !dbg !1400
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1401
  call void @llvm.dbg.assign(metadata i1 undef, metadata !412, metadata !DIExpression(), metadata !1401, metadata ptr %4, metadata !DIExpression()), !dbg !1400
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !1400
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !405, metadata !DIExpression()), !dbg !1400
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1402
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !406, metadata !DIExpression()), !dbg !1400
  %6 = icmp eq ptr %5, %0, !dbg !1403
  br i1 %6, label %7, label %14, !dbg !1405

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1406
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1407
  call void @llvm.dbg.value(metadata ptr %4, metadata !1408, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata ptr %4, metadata !1417, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i32 0, metadata !1423, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i64 8, metadata !1424, metadata !DIExpression()), !dbg !1425
  store i64 0, ptr %4, align 8, !dbg !1427
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1428
  %9 = icmp eq i64 %8, 2, !dbg !1430
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1431
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1400
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1432
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1432
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1400
  ret ptr %15, !dbg !1432
}

; Function Attrs: nounwind
declare !dbg !1433 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1439 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1444, metadata !DIExpression()), !dbg !1447
  %2 = tail call ptr @__errno_location() #40, !dbg !1448
  %3 = load i32, ptr %2, align 4, !dbg !1448, !tbaa !801
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1445, metadata !DIExpression()), !dbg !1447
  %4 = icmp eq ptr %0, null, !dbg !1449
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1449
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1450
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1446, metadata !DIExpression()), !dbg !1447
  store i32 %3, ptr %2, align 4, !dbg !1451, !tbaa !801
  ret ptr %6, !dbg !1452
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1453 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1459, metadata !DIExpression()), !dbg !1460
  %2 = icmp eq ptr %0, null, !dbg !1461
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1461
  %4 = load i32, ptr %3, align 8, !dbg !1462, !tbaa !1463
  ret i32 %4, !dbg !1465
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1466 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1470, metadata !DIExpression()), !dbg !1472
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1471, metadata !DIExpression()), !dbg !1472
  %3 = icmp eq ptr %0, null, !dbg !1473
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1473
  store i32 %1, ptr %4, align 8, !dbg !1474, !tbaa !1463
  ret void, !dbg !1475
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1476 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1480, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1481, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1482, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1483, metadata !DIExpression()), !dbg !1488
  %4 = icmp eq ptr %0, null, !dbg !1489
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1489
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1490
  %7 = lshr i8 %1, 5, !dbg !1491
  %8 = zext nneg i8 %7 to i64, !dbg !1491
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1492
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1484, metadata !DIExpression()), !dbg !1488
  %10 = and i8 %1, 31, !dbg !1493
  %11 = zext nneg i8 %10 to i32, !dbg !1493
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1486, metadata !DIExpression()), !dbg !1488
  %12 = load i32, ptr %9, align 4, !dbg !1494, !tbaa !801
  %13 = lshr i32 %12, %11, !dbg !1495
  %14 = and i32 %13, 1, !dbg !1496
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1487, metadata !DIExpression()), !dbg !1488
  %15 = xor i32 %13, %2, !dbg !1497
  %16 = and i32 %15, 1, !dbg !1497
  %17 = shl nuw i32 %16, %11, !dbg !1498
  %18 = xor i32 %17, %12, !dbg !1499
  store i32 %18, ptr %9, align 4, !dbg !1499, !tbaa !801
  ret i32 %14, !dbg !1500
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1501 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1505, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1506, metadata !DIExpression()), !dbg !1508
  %3 = icmp eq ptr %0, null, !dbg !1509
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1511
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1505, metadata !DIExpression()), !dbg !1508
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1512
  %6 = load i32, ptr %5, align 4, !dbg !1512, !tbaa !1513
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1507, metadata !DIExpression()), !dbg !1508
  store i32 %1, ptr %5, align 4, !dbg !1514, !tbaa !1513
  ret i32 %6, !dbg !1515
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1516 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1520, metadata !DIExpression()), !dbg !1523
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1521, metadata !DIExpression()), !dbg !1523
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1522, metadata !DIExpression()), !dbg !1523
  %4 = icmp eq ptr %0, null, !dbg !1524
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1526
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1520, metadata !DIExpression()), !dbg !1523
  store i32 10, ptr %5, align 8, !dbg !1527, !tbaa !1463
  %6 = icmp ne ptr %1, null, !dbg !1528
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1530
  br i1 %8, label %10, label %9, !dbg !1530

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1531
  unreachable, !dbg !1531

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1532
  store ptr %1, ptr %11, align 8, !dbg !1533, !tbaa !1534
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1535
  store ptr %2, ptr %12, align 8, !dbg !1536, !tbaa !1537
  ret void, !dbg !1538
}

; Function Attrs: noreturn nounwind
declare !dbg !1539 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1540 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1544, metadata !DIExpression()), !dbg !1552
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1545, metadata !DIExpression()), !dbg !1552
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1546, metadata !DIExpression()), !dbg !1552
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1547, metadata !DIExpression()), !dbg !1552
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1548, metadata !DIExpression()), !dbg !1552
  %6 = icmp eq ptr %4, null, !dbg !1553
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1553
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1549, metadata !DIExpression()), !dbg !1552
  %8 = tail call ptr @__errno_location() #40, !dbg !1554
  %9 = load i32, ptr %8, align 4, !dbg !1554, !tbaa !801
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1550, metadata !DIExpression()), !dbg !1552
  %10 = load i32, ptr %7, align 8, !dbg !1555, !tbaa !1463
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1556
  %12 = load i32, ptr %11, align 4, !dbg !1556, !tbaa !1513
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1557
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1558
  %15 = load ptr, ptr %14, align 8, !dbg !1558, !tbaa !1534
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1559
  %17 = load ptr, ptr %16, align 8, !dbg !1559, !tbaa !1537
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1560
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1551, metadata !DIExpression()), !dbg !1552
  store i32 %9, ptr %8, align 4, !dbg !1561, !tbaa !801
  ret i64 %18, !dbg !1562
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1563 {
  %10 = alloca i32, align 4, !DIAssignID !1631
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1632
  %12 = alloca i32, align 4, !DIAssignID !1633
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1634
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1635
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1609, metadata !DIExpression(), metadata !1635, metadata ptr %14, metadata !DIExpression()), !dbg !1636
  %15 = alloca i32, align 4, !DIAssignID !1637
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1612, metadata !DIExpression(), metadata !1637, metadata ptr %15, metadata !DIExpression()), !dbg !1638
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1569, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1570, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1571, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1572, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1573, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1574, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1575, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1576, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1577, metadata !DIExpression()), !dbg !1639
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1640
  %17 = icmp eq i64 %16, 1, !dbg !1641
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1578, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1580, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1581, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1582, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1583, metadata !DIExpression()), !dbg !1639
  %18 = trunc i32 %5 to i8, !dbg !1642
  %19 = lshr i8 %18, 1, !dbg !1642
  %20 = and i8 %19, 1, !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1584, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1585, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1586, metadata !DIExpression()), !dbg !1639
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1643

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !1644
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !1645
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !1646
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !1647
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !1639
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !1648
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !1649
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1570, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1586, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1585, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1584, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1583, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1582, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1581, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1580, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1572, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1577, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1576, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1573, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.label(metadata !1587), !dbg !1650
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1588, metadata !DIExpression()), !dbg !1639
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
  ], !dbg !1651

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1584, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1573, metadata !DIExpression()), !dbg !1639
  br label %114, !dbg !1652

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1584, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1573, metadata !DIExpression()), !dbg !1639
  %43 = and i8 %37, 1, !dbg !1653
  %44 = icmp eq i8 %43, 0, !dbg !1653
  br i1 %44, label %45, label %114, !dbg !1652

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1655
  br i1 %46, label %114, label %47, !dbg !1658

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1655, !tbaa !810
  br label %114, !dbg !1655

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !510, metadata !DIExpression(), metadata !1633, metadata ptr %12, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.assign(metadata i1 undef, metadata !511, metadata !DIExpression(), metadata !1634, metadata ptr %13, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata ptr @.str.11.63, metadata !507, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i32 %29, metadata !508, metadata !DIExpression()), !dbg !1659
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.64, ptr noundef nonnull @.str.11.63, i32 noundef 5) #37, !dbg !1663
  call void @llvm.dbg.value(metadata ptr %49, metadata !509, metadata !DIExpression()), !dbg !1659
  %50 = icmp eq ptr %49, @.str.11.63, !dbg !1664
  br i1 %50, label %51, label %60, !dbg !1666

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1667
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1668
  call void @llvm.dbg.value(metadata ptr %13, metadata !1669, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata ptr %13, metadata !1677, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 0, metadata !1680, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 8, metadata !1681, metadata !DIExpression()), !dbg !1682
  store i64 0, ptr %13, align 8, !dbg !1684
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1685
  %53 = icmp eq i64 %52, 3, !dbg !1687
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1688
  %57 = icmp eq i32 %29, 9, !dbg !1688
  %58 = select i1 %57, ptr @.str.10.65, ptr @.str.12.66, !dbg !1688
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1688
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1689
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1689
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1576, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.assign(metadata i1 undef, metadata !510, metadata !DIExpression(), metadata !1631, metadata ptr %10, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.assign(metadata i1 undef, metadata !511, metadata !DIExpression(), metadata !1632, metadata ptr %11, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata ptr @.str.12.66, metadata !507, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i32 %29, metadata !508, metadata !DIExpression()), !dbg !1690
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.64, ptr noundef nonnull @.str.12.66, i32 noundef 5) #37, !dbg !1692
  call void @llvm.dbg.value(metadata ptr %62, metadata !509, metadata !DIExpression()), !dbg !1690
  %63 = icmp eq ptr %62, @.str.12.66, !dbg !1693
  br i1 %63, label %64, label %73, !dbg !1694

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1695
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1696
  call void @llvm.dbg.value(metadata ptr %11, metadata !1669, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata ptr %11, metadata !1677, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i32 0, metadata !1680, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 8, metadata !1681, metadata !DIExpression()), !dbg !1699
  store i64 0, ptr %11, align 8, !dbg !1701
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1702
  %66 = icmp eq i64 %65, 3, !dbg !1703
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1704
  %70 = icmp eq i32 %29, 9, !dbg !1704
  %71 = select i1 %70, ptr @.str.10.65, ptr @.str.12.66, !dbg !1704
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1704
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1705
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1577, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1576, metadata !DIExpression()), !dbg !1639
  %76 = and i8 %37, 1, !dbg !1706
  %77 = icmp eq i8 %76, 0, !dbg !1706
  br i1 %77, label %78, label %93, !dbg !1707

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1589, metadata !DIExpression()), !dbg !1708
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1579, metadata !DIExpression()), !dbg !1639
  %79 = load i8, ptr %74, align 1, !dbg !1709, !tbaa !810
  %80 = icmp eq i8 %79, 0, !dbg !1711
  br i1 %80, label %93, label %81, !dbg !1711

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1589, metadata !DIExpression()), !dbg !1708
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1579, metadata !DIExpression()), !dbg !1639
  %85 = icmp ult i64 %84, %40, !dbg !1712
  br i1 %85, label %86, label %88, !dbg !1715

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1712
  store i8 %82, ptr %87, align 1, !dbg !1712, !tbaa !810
  br label %88, !dbg !1712

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1715
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1579, metadata !DIExpression()), !dbg !1639
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1716
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1589, metadata !DIExpression()), !dbg !1708
  %91 = load i8, ptr %90, align 1, !dbg !1709, !tbaa !810
  %92 = icmp eq i8 %91, 0, !dbg !1711
  br i1 %92, label %93, label %81, !dbg !1711, !llvm.loop !1717

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1719
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1583, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1581, metadata !DIExpression()), !dbg !1639
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !1720
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1582, metadata !DIExpression()), !dbg !1639
  br label %114, !dbg !1721

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1583, metadata !DIExpression()), !dbg !1639
  br label %98, !dbg !1722

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1583, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1584, metadata !DIExpression()), !dbg !1639
  br label %98, !dbg !1723

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !1647
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1584, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1583, metadata !DIExpression()), !dbg !1639
  %101 = and i8 %100, 1, !dbg !1724
  %102 = icmp eq i8 %101, 0, !dbg !1724
  %103 = select i1 %102, i8 1, i8 %99, !dbg !1726
  br label %104, !dbg !1726

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !1639
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1584, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1583, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1573, metadata !DIExpression()), !dbg !1639
  %107 = and i8 %106, 1, !dbg !1727
  %108 = icmp eq i8 %107, 0, !dbg !1727
  br i1 %108, label %109, label %114, !dbg !1729

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !1730
  br i1 %110, label %114, label %111, !dbg !1733

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !1730, !tbaa !810
  br label %114, !dbg !1730

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1584, metadata !DIExpression()), !dbg !1639
  br label %114, !dbg !1734

113:                                              ; preds = %28
  call void @abort() #39, !dbg !1735
  unreachable, !dbg !1735

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !1719
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.65, %45 ], [ @.str.10.65, %47 ], [ @.str.10.65, %42 ], [ %34, %28 ], [ @.str.12.66, %109 ], [ @.str.12.66, %111 ], [ @.str.12.66, %104 ], [ @.str.10.65, %41 ], !dbg !1639
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !1639
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !1639
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1584, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1583, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1582, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1581, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1577, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1576, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1573, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1594, metadata !DIExpression()), !dbg !1736
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
  br label %138, !dbg !1737

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !1719
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !1644
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !1648
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !1649
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !1738
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !1739
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1570, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1594, metadata !DIExpression()), !dbg !1736
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1588, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1586, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1585, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1580, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1572, metadata !DIExpression()), !dbg !1639
  %147 = icmp eq i64 %139, -1, !dbg !1740
  br i1 %147, label %148, label %152, !dbg !1741

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1742
  %150 = load i8, ptr %149, align 1, !dbg !1742, !tbaa !810
  %151 = icmp eq i8 %150, 0, !dbg !1743
  br i1 %151, label %612, label %154, !dbg !1744

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1745
  br i1 %153, label %612, label %154, !dbg !1744

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1596, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1599, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1600, metadata !DIExpression()), !dbg !1746
  br i1 %128, label %155, label %170, !dbg !1747

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !1749
  %157 = select i1 %147, i1 %129, i1 false, !dbg !1750
  br i1 %157, label %158, label %160, !dbg !1750

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1572, metadata !DIExpression()), !dbg !1639
  br label %160, !dbg !1752

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1752
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1572, metadata !DIExpression()), !dbg !1639
  %162 = icmp ugt i64 %156, %161, !dbg !1753
  br i1 %162, label %170, label %163, !dbg !1754

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1755
  call void @llvm.dbg.value(metadata ptr %164, metadata !1756, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata ptr %119, metadata !1759, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %120, metadata !1760, metadata !DIExpression()), !dbg !1761
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !1763
  %166 = icmp ne i32 %165, 0, !dbg !1764
  %167 = select i1 %166, i1 true, i1 %131, !dbg !1765
  %168 = xor i1 %166, true, !dbg !1765
  %169 = zext i1 %168 to i8, !dbg !1765
  br i1 %167, label %170, label %666, !dbg !1765

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1746
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1596, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1572, metadata !DIExpression()), !dbg !1639
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1766
  %175 = load i8, ptr %174, align 1, !dbg !1766, !tbaa !810
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1601, metadata !DIExpression()), !dbg !1746
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
  ], !dbg !1767

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !1768

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !1769

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1599, metadata !DIExpression()), !dbg !1746
  %179 = and i8 %144, 1, !dbg !1773
  %180 = icmp eq i8 %179, 0, !dbg !1773
  %181 = select i1 %132, i1 %180, i1 false, !dbg !1773
  br i1 %181, label %182, label %198, !dbg !1773

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1775
  br i1 %183, label %184, label %186, !dbg !1779

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1775
  store i8 39, ptr %185, align 1, !dbg !1775, !tbaa !810
  br label %186, !dbg !1775

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1779
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1579, metadata !DIExpression()), !dbg !1639
  %188 = icmp ult i64 %187, %146, !dbg !1780
  br i1 %188, label %189, label %191, !dbg !1783

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1780
  store i8 36, ptr %190, align 1, !dbg !1780, !tbaa !810
  br label %191, !dbg !1780

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1783
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1579, metadata !DIExpression()), !dbg !1639
  %193 = icmp ult i64 %192, %146, !dbg !1784
  br i1 %193, label %194, label %196, !dbg !1787

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1784
  store i8 39, ptr %195, align 1, !dbg !1784, !tbaa !810
  br label %196, !dbg !1784

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1787
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1588, metadata !DIExpression()), !dbg !1639
  br label %198, !dbg !1788

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1639
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1588, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1579, metadata !DIExpression()), !dbg !1639
  %201 = icmp ult i64 %199, %146, !dbg !1789
  br i1 %201, label %202, label %204, !dbg !1792

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1789
  store i8 92, ptr %203, align 1, !dbg !1789, !tbaa !810
  br label %204, !dbg !1789

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1792
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1579, metadata !DIExpression()), !dbg !1639
  br i1 %125, label %206, label %476, !dbg !1793

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1795
  %208 = icmp ult i64 %207, %171, !dbg !1796
  br i1 %208, label %209, label %465, !dbg !1797

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1798
  %211 = load i8, ptr %210, align 1, !dbg !1798, !tbaa !810
  %212 = add i8 %211, -48, !dbg !1799
  %213 = icmp ult i8 %212, 10, !dbg !1799
  br i1 %213, label %214, label %465, !dbg !1799

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1800
  br i1 %215, label %216, label %218, !dbg !1804

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1800
  store i8 48, ptr %217, align 1, !dbg !1800, !tbaa !810
  br label %218, !dbg !1800

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1804
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1579, metadata !DIExpression()), !dbg !1639
  %220 = icmp ult i64 %219, %146, !dbg !1805
  br i1 %220, label %221, label %223, !dbg !1808

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1805
  store i8 48, ptr %222, align 1, !dbg !1805, !tbaa !810
  br label %223, !dbg !1805

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1808
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1579, metadata !DIExpression()), !dbg !1639
  br label %465, !dbg !1809

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !1810

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1811

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !1812

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !1814

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1816
  %231 = icmp ult i64 %230, %171, !dbg !1817
  br i1 %231, label %232, label %465, !dbg !1818

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !1819
  %234 = load i8, ptr %233, align 1, !dbg !1819, !tbaa !810
  %235 = icmp eq i8 %234, 63, !dbg !1820
  br i1 %235, label %236, label %465, !dbg !1821

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1822
  %238 = load i8, ptr %237, align 1, !dbg !1822, !tbaa !810
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
  ], !dbg !1823

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !1824

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1601, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1594, metadata !DIExpression()), !dbg !1736
  %241 = icmp ult i64 %140, %146, !dbg !1826
  br i1 %241, label %242, label %244, !dbg !1829

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1826
  store i8 63, ptr %243, align 1, !dbg !1826, !tbaa !810
  br label %244, !dbg !1826

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !1829
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1579, metadata !DIExpression()), !dbg !1639
  %246 = icmp ult i64 %245, %146, !dbg !1830
  br i1 %246, label %247, label %249, !dbg !1833

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !1830
  store i8 34, ptr %248, align 1, !dbg !1830, !tbaa !810
  br label %249, !dbg !1830

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !1833
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1579, metadata !DIExpression()), !dbg !1639
  %251 = icmp ult i64 %250, %146, !dbg !1834
  br i1 %251, label %252, label %254, !dbg !1837

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !1834
  store i8 34, ptr %253, align 1, !dbg !1834, !tbaa !810
  br label %254, !dbg !1834

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !1837
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1579, metadata !DIExpression()), !dbg !1639
  %256 = icmp ult i64 %255, %146, !dbg !1838
  br i1 %256, label %257, label %259, !dbg !1841

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !1838
  store i8 63, ptr %258, align 1, !dbg !1838, !tbaa !810
  br label %259, !dbg !1838

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !1841
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1579, metadata !DIExpression()), !dbg !1639
  br label %465, !dbg !1842

261:                                              ; preds = %170
  br label %272, !dbg !1843

262:                                              ; preds = %170
  br label %272, !dbg !1844

263:                                              ; preds = %170
  br label %270, !dbg !1845

264:                                              ; preds = %170
  br label %270, !dbg !1846

265:                                              ; preds = %170
  br label %272, !dbg !1847

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !1848

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !1849

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !1852

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !1854

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !1855
  call void @llvm.dbg.label(metadata !1602), !dbg !1856
  br i1 %133, label %272, label %655, !dbg !1857

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !1855
  call void @llvm.dbg.label(metadata !1605), !dbg !1859
  br i1 %124, label %520, label %476, !dbg !1860

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !1861

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !1862, !tbaa !810
  %277 = icmp eq i8 %276, 0, !dbg !1864
  br i1 %277, label %278, label %465, !dbg !1865

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !1866
  br i1 %279, label %280, label %465, !dbg !1868

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1600, metadata !DIExpression()), !dbg !1746
  br label %281, !dbg !1869

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1600, metadata !DIExpression()), !dbg !1746
  br i1 %133, label %465, label %655, !dbg !1870

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1585, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1600, metadata !DIExpression()), !dbg !1746
  br i1 %132, label %284, label %465, !dbg !1872

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !1873

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !1876
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !1878
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !1878
  %290 = select i1 %288, i64 %146, i64 0, !dbg !1878
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1570, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1580, metadata !DIExpression()), !dbg !1639
  %291 = icmp ult i64 %140, %290, !dbg !1879
  br i1 %291, label %292, label %294, !dbg !1882

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1879
  store i8 39, ptr %293, align 1, !dbg !1879, !tbaa !810
  br label %294, !dbg !1879

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !1882
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1579, metadata !DIExpression()), !dbg !1639
  %296 = icmp ult i64 %295, %290, !dbg !1883
  br i1 %296, label %297, label %299, !dbg !1886

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !1883
  store i8 92, ptr %298, align 1, !dbg !1883, !tbaa !810
  br label %299, !dbg !1883

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !1886
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1579, metadata !DIExpression()), !dbg !1639
  %301 = icmp ult i64 %300, %290, !dbg !1887
  br i1 %301, label %302, label %304, !dbg !1890

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !1887
  store i8 39, ptr %303, align 1, !dbg !1887, !tbaa !810
  br label %304, !dbg !1887

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !1890
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1588, metadata !DIExpression()), !dbg !1639
  br label %465, !dbg !1891

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !1892

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1606, metadata !DIExpression()), !dbg !1893
  %308 = tail call ptr @__ctype_b_loc() #40, !dbg !1894
  %309 = load ptr, ptr %308, align 8, !dbg !1894, !tbaa !745
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !1894
  %312 = load i16, ptr %311, align 2, !dbg !1894, !tbaa !842
  %313 = and i16 %312, 16384, !dbg !1896
  %314 = icmp ne i16 %313, 0, !dbg !1896
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1608, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1893
  br label %355, !dbg !1897

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !1898
  call void @llvm.dbg.value(metadata ptr %14, metadata !1669, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata ptr %14, metadata !1677, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i32 0, metadata !1680, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 8, metadata !1681, metadata !DIExpression()), !dbg !1901
  store i64 0, ptr %14, align 8, !dbg !1903
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1606, metadata !DIExpression()), !dbg !1893
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1608, metadata !DIExpression()), !dbg !1893
  %316 = icmp eq i64 %171, -1, !dbg !1904
  br i1 %316, label %317, label %319, !dbg !1906

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1572, metadata !DIExpression()), !dbg !1639
  br label %319, !dbg !1908

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !1746
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1572, metadata !DIExpression()), !dbg !1639
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !1909
  %321 = sub i64 %320, %145, !dbg !1910
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #37, !dbg !1911
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1616, metadata !DIExpression()), !dbg !1638
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !1912

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1606, metadata !DIExpression()), !dbg !1893
  %324 = icmp ult i64 %145, %320, !dbg !1913
  br i1 %324, label %326, label %351, !dbg !1915

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1608, metadata !DIExpression()), !dbg !1893
  br label %351, !dbg !1916

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1606, metadata !DIExpression()), !dbg !1893
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !1918
  %330 = load i8, ptr %329, align 1, !dbg !1918, !tbaa !810
  %331 = icmp eq i8 %330, 0, !dbg !1915
  br i1 %331, label %351, label %332, !dbg !1919

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !1920
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1606, metadata !DIExpression()), !dbg !1893
  %334 = add i64 %333, %145, !dbg !1921
  %335 = icmp eq i64 %333, %321, !dbg !1913
  br i1 %335, label %351, label %326, !dbg !1915, !llvm.loop !1922

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1617, metadata !DIExpression()), !dbg !1923
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !1924
  %339 = and i1 %338, %132, !dbg !1924
  br i1 %339, label %340, label %347, !dbg !1924

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !1617, metadata !DIExpression()), !dbg !1923
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !1925
  %343 = load i8, ptr %342, align 1, !dbg !1925, !tbaa !810
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !1927

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !1617, metadata !DIExpression()), !dbg !1923
  %346 = icmp eq i64 %345, %322, !dbg !1929
  br i1 %346, label %347, label %340, !dbg !1930, !llvm.loop !1931

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !1933, !tbaa !801
  call void @llvm.dbg.value(metadata i32 %348, metadata !1935, metadata !DIExpression()), !dbg !1943
  %349 = call i32 @iswprint(i32 noundef %348) #37, !dbg !1945
  %350 = icmp ne i32 %349, 0, !dbg !1946
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1893
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1606, metadata !DIExpression()), !dbg !1893
  br label %351, !dbg !1947

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1893
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1606, metadata !DIExpression()), !dbg !1893
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1948
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1949
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1893
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1606, metadata !DIExpression()), !dbg !1893
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1948
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1949
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !1746
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !1950
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !1950
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1893
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1606, metadata !DIExpression()), !dbg !1893
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1572, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1600, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1746
  %359 = icmp ult i64 %357, 2, !dbg !1951
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !1952
  br i1 %361, label %461, label %362, !dbg !1952

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !1953
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1625, metadata !DIExpression()), !dbg !1954
  br label %364, !dbg !1955

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !1639
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !1738
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !1736
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !1746
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !1956
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1601, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1599, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1596, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1594, metadata !DIExpression()), !dbg !1736
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1588, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1579, metadata !DIExpression()), !dbg !1639
  br i1 %360, label %417, label %371, !dbg !1957

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !1962

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1599, metadata !DIExpression()), !dbg !1746
  %373 = and i8 %366, 1, !dbg !1965
  %374 = icmp eq i8 %373, 0, !dbg !1965
  %375 = select i1 %132, i1 %374, i1 false, !dbg !1965
  br i1 %375, label %376, label %392, !dbg !1965

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !1967
  br i1 %377, label %378, label %380, !dbg !1971

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !1967
  store i8 39, ptr %379, align 1, !dbg !1967, !tbaa !810
  br label %380, !dbg !1967

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !1971
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1579, metadata !DIExpression()), !dbg !1639
  %382 = icmp ult i64 %381, %146, !dbg !1972
  br i1 %382, label %383, label %385, !dbg !1975

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !1972
  store i8 36, ptr %384, align 1, !dbg !1972, !tbaa !810
  br label %385, !dbg !1972

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !1975
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1579, metadata !DIExpression()), !dbg !1639
  %387 = icmp ult i64 %386, %146, !dbg !1976
  br i1 %387, label %388, label %390, !dbg !1979

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !1976
  store i8 39, ptr %389, align 1, !dbg !1976, !tbaa !810
  br label %390, !dbg !1976

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !1979
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1588, metadata !DIExpression()), !dbg !1639
  br label %392, !dbg !1980

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !1639
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1588, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1579, metadata !DIExpression()), !dbg !1639
  %395 = icmp ult i64 %393, %146, !dbg !1981
  br i1 %395, label %396, label %398, !dbg !1984

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !1981
  store i8 92, ptr %397, align 1, !dbg !1981, !tbaa !810
  br label %398, !dbg !1981

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !1984
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1579, metadata !DIExpression()), !dbg !1639
  %400 = icmp ult i64 %399, %146, !dbg !1985
  br i1 %400, label %401, label %405, !dbg !1988

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !1985
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !1985
  store i8 %403, ptr %404, align 1, !dbg !1985, !tbaa !810
  br label %405, !dbg !1985

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !1988
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1579, metadata !DIExpression()), !dbg !1639
  %407 = icmp ult i64 %406, %146, !dbg !1989
  br i1 %407, label %408, label %413, !dbg !1992

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !1989
  %411 = or disjoint i8 %410, 48, !dbg !1989
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !1989
  store i8 %411, ptr %412, align 1, !dbg !1989, !tbaa !810
  br label %413, !dbg !1989

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !1992
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1579, metadata !DIExpression()), !dbg !1639
  %415 = and i8 %370, 7, !dbg !1993
  %416 = or disjoint i8 %415, 48, !dbg !1994
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1601, metadata !DIExpression()), !dbg !1746
  br label %426, !dbg !1995

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !1996
  %419 = icmp eq i8 %418, 0, !dbg !1996
  br i1 %419, label %426, label %420, !dbg !1998

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !1999
  br i1 %421, label %422, label %424, !dbg !2003

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !1999
  store i8 92, ptr %423, align 1, !dbg !1999, !tbaa !810
  br label %424, !dbg !1999

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2003
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1596, metadata !DIExpression()), !dbg !1746
  br label %426, !dbg !2004

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !1639
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !1738
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !1746
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !1746
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1601, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1599, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1596, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1588, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1579, metadata !DIExpression()), !dbg !1639
  %432 = add i64 %367, 1, !dbg !2005
  %433 = icmp ugt i64 %363, %432, !dbg !2007
  br i1 %433, label %434, label %463, !dbg !2008

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2009
  %436 = icmp ne i8 %435, 0, !dbg !2009
  %437 = and i8 %430, 1, !dbg !2009
  %438 = icmp eq i8 %437, 0, !dbg !2009
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2009
  br i1 %439, label %440, label %451, !dbg !2009

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2012
  br i1 %441, label %442, label %444, !dbg !2016

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2012
  store i8 39, ptr %443, align 1, !dbg !2012, !tbaa !810
  br label %444, !dbg !2012

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2016
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1579, metadata !DIExpression()), !dbg !1639
  %446 = icmp ult i64 %445, %146, !dbg !2017
  br i1 %446, label %447, label %449, !dbg !2020

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2017
  store i8 39, ptr %448, align 1, !dbg !2017, !tbaa !810
  br label %449, !dbg !2017

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2020
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1588, metadata !DIExpression()), !dbg !1639
  br label %451, !dbg !2021

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2022
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1588, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1579, metadata !DIExpression()), !dbg !1639
  %454 = icmp ult i64 %452, %146, !dbg !2023
  br i1 %454, label %455, label %457, !dbg !2026

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2023
  store i8 %431, ptr %456, align 1, !dbg !2023, !tbaa !810
  br label %457, !dbg !2023

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2026
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1594, metadata !DIExpression()), !dbg !1736
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2027
  %460 = load i8, ptr %459, align 1, !dbg !2027, !tbaa !810
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1601, metadata !DIExpression()), !dbg !1746
  br label %364, !dbg !2028, !llvm.loop !2029

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1601, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1600, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1599, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1596, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1594, metadata !DIExpression()), !dbg !1736
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1588, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1572, metadata !DIExpression()), !dbg !1639
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1601, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1600, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1599, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1596, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1594, metadata !DIExpression()), !dbg !1736
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1588, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1572, metadata !DIExpression()), !dbg !1639
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2032
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !1639
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !1644
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !1639
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !1639
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !1736
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !1746
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !1746
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !1746
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1570, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1601, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1600, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1599, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1596, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1594, metadata !DIExpression()), !dbg !1736
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1588, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1585, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1580, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1572, metadata !DIExpression()), !dbg !1639
  br i1 %126, label %487, label %476, !dbg !2033

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
  br i1 %137, label %488, label %509, !dbg !2035

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2036

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
  %499 = lshr i8 %490, 5, !dbg !2037
  %500 = zext nneg i8 %499 to i64, !dbg !2037
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2038
  %502 = load i32, ptr %501, align 4, !dbg !2038, !tbaa !801
  %503 = and i8 %490, 31, !dbg !2039
  %504 = zext nneg i8 %503 to i32, !dbg !2039
  %505 = shl nuw i32 1, %504, !dbg !2040
  %506 = and i32 %502, %505, !dbg !2040
  %507 = icmp eq i32 %506, 0, !dbg !2040
  %508 = and i1 %172, %507, !dbg !2041
  br i1 %508, label %558, label %520, !dbg !2041

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
  br i1 %172, label %558, label %520, !dbg !2042

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2032
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !1639
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !1644
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !1648
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !1738
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2043
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !1746
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !1746
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1570, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1601, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1600, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1594, metadata !DIExpression()), !dbg !1736
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1588, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1585, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1580, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1572, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.label(metadata !1628), !dbg !2044
  br i1 %131, label %530, label %659, !dbg !2045

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1599, metadata !DIExpression()), !dbg !1746
  %531 = and i8 %525, 1, !dbg !2047
  %532 = icmp eq i8 %531, 0, !dbg !2047
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2047
  br i1 %533, label %534, label %550, !dbg !2047

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2049
  br i1 %535, label %536, label %538, !dbg !2053

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2049
  store i8 39, ptr %537, align 1, !dbg !2049, !tbaa !810
  br label %538, !dbg !2049

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1579, metadata !DIExpression()), !dbg !1639
  %540 = icmp ult i64 %539, %529, !dbg !2054
  br i1 %540, label %541, label %543, !dbg !2057

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2054
  store i8 36, ptr %542, align 1, !dbg !2054, !tbaa !810
  br label %543, !dbg !2054

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1579, metadata !DIExpression()), !dbg !1639
  %545 = icmp ult i64 %544, %529, !dbg !2058
  br i1 %545, label %546, label %548, !dbg !2061

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2058
  store i8 39, ptr %547, align 1, !dbg !2058, !tbaa !810
  br label %548, !dbg !2058

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2061
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1588, metadata !DIExpression()), !dbg !1639
  br label %550, !dbg !2062

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !1746
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1588, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1579, metadata !DIExpression()), !dbg !1639
  %553 = icmp ult i64 %551, %529, !dbg !2063
  br i1 %553, label %554, label %556, !dbg !2066

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2063
  store i8 92, ptr %555, align 1, !dbg !2063, !tbaa !810
  br label %556, !dbg !2063

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2066
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1570, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1601, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1600, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1599, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1594, metadata !DIExpression()), !dbg !1736
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1588, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1585, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1580, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1572, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.label(metadata !1629), !dbg !2067
  br label %585, !dbg !2068

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2032
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !1639
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !1644
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !1648
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !1738
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2043
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !1746
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !1746
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2071
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1570, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1601, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1600, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1599, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1594, metadata !DIExpression()), !dbg !1736
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1588, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1585, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1580, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1572, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.label(metadata !1629), !dbg !2067
  %569 = and i8 %563, 1, !dbg !2068
  %570 = icmp ne i8 %569, 0, !dbg !2068
  %571 = and i8 %565, 1, !dbg !2068
  %572 = icmp eq i8 %571, 0, !dbg !2068
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2068
  br i1 %573, label %574, label %585, !dbg !2068

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2072
  br i1 %575, label %576, label %578, !dbg !2076

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2072
  store i8 39, ptr %577, align 1, !dbg !2072, !tbaa !810
  br label %578, !dbg !2072

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2076
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1579, metadata !DIExpression()), !dbg !1639
  %580 = icmp ult i64 %579, %568, !dbg !2077
  br i1 %580, label %581, label %583, !dbg !2080

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2077
  store i8 39, ptr %582, align 1, !dbg !2077, !tbaa !810
  br label %583, !dbg !2077

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2080
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1588, metadata !DIExpression()), !dbg !1639
  br label %585, !dbg !2081

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !1746
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1588, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1579, metadata !DIExpression()), !dbg !1639
  %595 = icmp ult i64 %593, %586, !dbg !2082
  br i1 %595, label %596, label %598, !dbg !2085

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2082
  store i8 %587, ptr %597, align 1, !dbg !2082, !tbaa !810
  br label %598, !dbg !2082

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2085
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1579, metadata !DIExpression()), !dbg !1639
  %600 = icmp eq i8 %588, 0, !dbg !2086
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2088
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1586, metadata !DIExpression()), !dbg !1639
  br label %602, !dbg !2089

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2032
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !1639
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !1644
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !1648
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !1649
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !1738
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2043
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1570, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1594, metadata !DIExpression()), !dbg !1736
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1588, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1586, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1585, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1580, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1572, metadata !DIExpression()), !dbg !1639
  %611 = add i64 %609, 1, !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1594, metadata !DIExpression()), !dbg !1736
  br label %138, !dbg !2091, !llvm.loop !2092

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1570, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1586, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1585, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1580, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1579, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1572, metadata !DIExpression()), !dbg !1639
  %613 = icmp eq i64 %140, 0, !dbg !2094
  %614 = and i1 %132, %613, !dbg !2096
  %615 = xor i1 %614, true, !dbg !2096
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2096
  br i1 %616, label %617, label %655, !dbg !2096

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2097
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2097
  br i1 %621, label %622, label %631, !dbg !2097

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2099
  %624 = icmp eq i8 %623, 0, !dbg !2099
  br i1 %624, label %627, label %625, !dbg !2102

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2103
  br label %672, !dbg !2104

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2105
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2107
  br i1 %630, label %28, label %631, !dbg !2107

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2108
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2110
  br i1 %634, label %635, label %650, !dbg !2110

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1581, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1579, metadata !DIExpression()), !dbg !1639
  %636 = load i8, ptr %119, align 1, !dbg !2111, !tbaa !810
  %637 = icmp eq i8 %636, 0, !dbg !2114
  br i1 %637, label %650, label %638, !dbg !2114

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1581, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1579, metadata !DIExpression()), !dbg !1639
  %642 = icmp ult i64 %641, %146, !dbg !2115
  br i1 %642, label %643, label %645, !dbg !2118

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2115
  store i8 %639, ptr %644, align 1, !dbg !2115, !tbaa !810
  br label %645, !dbg !2115

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2118
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1579, metadata !DIExpression()), !dbg !1639
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2119
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1581, metadata !DIExpression()), !dbg !1639
  %648 = load i8, ptr %647, align 1, !dbg !2111, !tbaa !810
  %649 = icmp eq i8 %648, 0, !dbg !2114
  br i1 %649, label %650, label %638, !dbg !2114, !llvm.loop !2120

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !1719
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1579, metadata !DIExpression()), !dbg !1639
  %652 = icmp ult i64 %651, %146, !dbg !2122
  br i1 %652, label %653, label %672, !dbg !2124

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2125
  store i8 0, ptr %654, align 1, !dbg !2126, !tbaa !810
  br label %672, !dbg !2125

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !1630), !dbg !2127
  %657 = icmp eq i8 %123, 0, !dbg !2128
  %658 = select i1 %657, i32 2, i32 4, !dbg !2128
  br label %666, !dbg !2128

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !1630), !dbg !2127
  %662 = icmp eq i32 %115, 2, !dbg !2130
  %663 = icmp eq i8 %123, 0, !dbg !2128
  %664 = select i1 %663, i32 2, i32 4, !dbg !2128
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2128
  br label %666, !dbg !2128

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1573, metadata !DIExpression()), !dbg !1639
  %670 = and i32 %5, -3, !dbg !2131
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2132
  br label %672, !dbg !2133

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2134
}

; Function Attrs: nounwind
declare !dbg !2135 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2138 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2141 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2143 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2147, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2148, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2149, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata ptr %0, metadata !2151, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i64 %1, metadata !2156, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata ptr null, metadata !2157, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata ptr %2, metadata !2158, metadata !DIExpression()), !dbg !2164
  %4 = icmp eq ptr %2, null, !dbg !2166
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2166
  call void @llvm.dbg.value(metadata ptr %5, metadata !2159, metadata !DIExpression()), !dbg !2164
  %6 = tail call ptr @__errno_location() #40, !dbg !2167
  %7 = load i32, ptr %6, align 4, !dbg !2167, !tbaa !801
  call void @llvm.dbg.value(metadata i32 %7, metadata !2160, metadata !DIExpression()), !dbg !2164
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2168
  %9 = load i32, ptr %8, align 4, !dbg !2168, !tbaa !1513
  %10 = or i32 %9, 1, !dbg !2169
  call void @llvm.dbg.value(metadata i32 %10, metadata !2161, metadata !DIExpression()), !dbg !2164
  %11 = load i32, ptr %5, align 8, !dbg !2170, !tbaa !1463
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2171
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2172
  %14 = load ptr, ptr %13, align 8, !dbg !2172, !tbaa !1534
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2173
  %16 = load ptr, ptr %15, align 8, !dbg !2173, !tbaa !1537
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2174
  %18 = add i64 %17, 1, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %18, metadata !2162, metadata !DIExpression()), !dbg !2164
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2176
  call void @llvm.dbg.value(metadata ptr %19, metadata !2163, metadata !DIExpression()), !dbg !2164
  %20 = load i32, ptr %5, align 8, !dbg !2177, !tbaa !1463
  %21 = load ptr, ptr %13, align 8, !dbg !2178, !tbaa !1534
  %22 = load ptr, ptr %15, align 8, !dbg !2179, !tbaa !1537
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2180
  store i32 %7, ptr %6, align 4, !dbg !2181, !tbaa !801
  ret ptr %19, !dbg !2182
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2152 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2151, metadata !DIExpression()), !dbg !2183
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2156, metadata !DIExpression()), !dbg !2183
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2157, metadata !DIExpression()), !dbg !2183
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2158, metadata !DIExpression()), !dbg !2183
  %5 = icmp eq ptr %3, null, !dbg !2184
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2184
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2159, metadata !DIExpression()), !dbg !2183
  %7 = tail call ptr @__errno_location() #40, !dbg !2185
  %8 = load i32, ptr %7, align 4, !dbg !2185, !tbaa !801
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2160, metadata !DIExpression()), !dbg !2183
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2186
  %10 = load i32, ptr %9, align 4, !dbg !2186, !tbaa !1513
  %11 = icmp eq ptr %2, null, !dbg !2187
  %12 = zext i1 %11 to i32, !dbg !2187
  %13 = or i32 %10, %12, !dbg !2188
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2161, metadata !DIExpression()), !dbg !2183
  %14 = load i32, ptr %6, align 8, !dbg !2189, !tbaa !1463
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2190
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2191
  %17 = load ptr, ptr %16, align 8, !dbg !2191, !tbaa !1534
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2192
  %19 = load ptr, ptr %18, align 8, !dbg !2192, !tbaa !1537
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2193
  %21 = add i64 %20, 1, !dbg !2194
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2162, metadata !DIExpression()), !dbg !2183
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2195
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2163, metadata !DIExpression()), !dbg !2183
  %23 = load i32, ptr %6, align 8, !dbg !2196, !tbaa !1463
  %24 = load ptr, ptr %16, align 8, !dbg !2197, !tbaa !1534
  %25 = load ptr, ptr %18, align 8, !dbg !2198, !tbaa !1537
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2199
  store i32 %8, ptr %7, align 4, !dbg !2200, !tbaa !801
  br i1 %11, label %28, label %27, !dbg !2201

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2202, !tbaa !2204
  br label %28, !dbg !2205

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2206
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2207 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2212, !tbaa !745
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2209, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2210, metadata !DIExpression()), !dbg !2214
  %2 = load i32, ptr @nslots, align 4, !tbaa !801
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2210, metadata !DIExpression()), !dbg !2214
  %3 = icmp sgt i32 %2, 1, !dbg !2215
  br i1 %3, label %4, label %6, !dbg !2217

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2215
  br label %10, !dbg !2217

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2218
  %8 = load ptr, ptr %7, align 8, !dbg !2218, !tbaa !2220
  %9 = icmp eq ptr %8, @slot0, !dbg !2222
  br i1 %9, label %17, label %16, !dbg !2223

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2210, metadata !DIExpression()), !dbg !2214
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2224
  %13 = load ptr, ptr %12, align 8, !dbg !2224, !tbaa !2220
  tail call void @free(ptr noundef %13) #37, !dbg !2225
  %14 = add nuw nsw i64 %11, 1, !dbg !2226
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2210, metadata !DIExpression()), !dbg !2214
  %15 = icmp eq i64 %14, %5, !dbg !2215
  br i1 %15, label %6, label %10, !dbg !2217, !llvm.loop !2227

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2229
  store i64 256, ptr @slotvec0, align 8, !dbg !2231, !tbaa !2232
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2233, !tbaa !2220
  br label %17, !dbg !2234

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2235
  br i1 %18, label %20, label %19, !dbg !2237

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2238
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2240, !tbaa !745
  br label %20, !dbg !2241

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2242, !tbaa !801
  ret void, !dbg !2243
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2244 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2247 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2249, metadata !DIExpression()), !dbg !2251
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2250, metadata !DIExpression()), !dbg !2251
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2252
  ret ptr %3, !dbg !2253
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2254 {
  %5 = alloca i64, align 8, !DIAssignID !2274
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2268, metadata !DIExpression(), metadata !2274, metadata ptr %5, metadata !DIExpression()), !dbg !2275
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2258, metadata !DIExpression()), !dbg !2276
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2259, metadata !DIExpression()), !dbg !2276
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2260, metadata !DIExpression()), !dbg !2276
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2261, metadata !DIExpression()), !dbg !2276
  %6 = tail call ptr @__errno_location() #40, !dbg !2277
  %7 = load i32, ptr %6, align 4, !dbg !2277, !tbaa !801
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2262, metadata !DIExpression()), !dbg !2276
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2278, !tbaa !745
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2263, metadata !DIExpression()), !dbg !2276
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2264, metadata !DIExpression()), !dbg !2276
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2279
  br i1 %9, label %10, label %11, !dbg !2279

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2281
  unreachable, !dbg !2281

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2282, !tbaa !801
  %13 = icmp sgt i32 %12, %0, !dbg !2283
  br i1 %13, label %32, label %14, !dbg !2284

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2285
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2265, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2275
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2286
  %16 = sext i32 %12 to i64, !dbg !2287
  store i64 %16, ptr %5, align 8, !dbg !2288, !tbaa !2204, !DIAssignID !2289
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2268, metadata !DIExpression(), metadata !2289, metadata ptr %5, metadata !DIExpression()), !dbg !2275
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2290
  %18 = add nuw nsw i32 %0, 1, !dbg !2291
  %19 = sub i32 %18, %12, !dbg !2292
  %20 = sext i32 %19 to i64, !dbg !2293
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2294
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2263, metadata !DIExpression()), !dbg !2276
  store ptr %21, ptr @slotvec, align 8, !dbg !2295, !tbaa !745
  br i1 %15, label %22, label %23, !dbg !2296

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2297, !tbaa.struct !2299
  br label %23, !dbg !2300

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2301, !tbaa !801
  %25 = sext i32 %24 to i64, !dbg !2302
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2302
  %27 = load i64, ptr %5, align 8, !dbg !2303, !tbaa !2204
  %28 = sub nsw i64 %27, %25, !dbg !2304
  %29 = shl i64 %28, 4, !dbg !2305
  call void @llvm.dbg.value(metadata ptr %26, metadata !1677, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i32 0, metadata !1680, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %29, metadata !1681, metadata !DIExpression()), !dbg !2306
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2308
  %30 = load i64, ptr %5, align 8, !dbg !2309, !tbaa !2204
  %31 = trunc i64 %30 to i32, !dbg !2309
  store i32 %31, ptr @nslots, align 4, !dbg !2310, !tbaa !801
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2311
  br label %32, !dbg !2312

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2276
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2263, metadata !DIExpression()), !dbg !2276
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2313
  %36 = load i64, ptr %35, align 8, !dbg !2314, !tbaa !2232
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2269, metadata !DIExpression()), !dbg !2315
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2316
  %38 = load ptr, ptr %37, align 8, !dbg !2316, !tbaa !2220
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2271, metadata !DIExpression()), !dbg !2315
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2317
  %40 = load i32, ptr %39, align 4, !dbg !2317, !tbaa !1513
  %41 = or i32 %40, 1, !dbg !2318
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2272, metadata !DIExpression()), !dbg !2315
  %42 = load i32, ptr %3, align 8, !dbg !2319, !tbaa !1463
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2320
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2321
  %45 = load ptr, ptr %44, align 8, !dbg !2321, !tbaa !1534
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2322
  %47 = load ptr, ptr %46, align 8, !dbg !2322, !tbaa !1537
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2323
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2273, metadata !DIExpression()), !dbg !2315
  %49 = icmp ugt i64 %36, %48, !dbg !2324
  br i1 %49, label %60, label %50, !dbg !2326

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2327
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2269, metadata !DIExpression()), !dbg !2315
  store i64 %51, ptr %35, align 8, !dbg !2329, !tbaa !2232
  %52 = icmp eq ptr %38, @slot0, !dbg !2330
  br i1 %52, label %54, label %53, !dbg !2332

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2333
  br label %54, !dbg !2333

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2334
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2271, metadata !DIExpression()), !dbg !2315
  store ptr %55, ptr %37, align 8, !dbg !2335, !tbaa !2220
  %56 = load i32, ptr %3, align 8, !dbg !2336, !tbaa !1463
  %57 = load ptr, ptr %44, align 8, !dbg !2337, !tbaa !1534
  %58 = load ptr, ptr %46, align 8, !dbg !2338, !tbaa !1537
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2339
  br label %60, !dbg !2340

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2315
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2271, metadata !DIExpression()), !dbg !2315
  store i32 %7, ptr %6, align 4, !dbg !2341, !tbaa !801
  ret ptr %61, !dbg !2342
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2343 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2347, metadata !DIExpression()), !dbg !2350
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2348, metadata !DIExpression()), !dbg !2350
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2349, metadata !DIExpression()), !dbg !2350
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2351
  ret ptr %4, !dbg !2352
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2353 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2355, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 0, metadata !2249, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata ptr %0, metadata !2250, metadata !DIExpression()), !dbg !2357
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2359
  ret ptr %2, !dbg !2360
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2361 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2365, metadata !DIExpression()), !dbg !2367
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2366, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i32 0, metadata !2347, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata ptr %0, metadata !2348, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i64 %1, metadata !2349, metadata !DIExpression()), !dbg !2368
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2370
  ret ptr %3, !dbg !2371
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2372 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2380
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2379, metadata !DIExpression(), metadata !2380, metadata ptr %4, metadata !DIExpression()), !dbg !2381
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2376, metadata !DIExpression()), !dbg !2381
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2377, metadata !DIExpression()), !dbg !2381
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2378, metadata !DIExpression()), !dbg !2381
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2382
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2383), !dbg !2386
  call void @llvm.dbg.value(metadata i32 %1, metadata !2387, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2392, metadata !DIExpression()), !dbg !2395
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2395, !alias.scope !2383, !DIAssignID !2396
  call void @llvm.dbg.assign(metadata i8 0, metadata !2379, metadata !DIExpression(), metadata !2396, metadata ptr %4, metadata !DIExpression()), !dbg !2381
  %5 = icmp eq i32 %1, 10, !dbg !2397
  br i1 %5, label %6, label %7, !dbg !2399

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2400, !noalias !2383
  unreachable, !dbg !2400

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2401, !tbaa !1463, !alias.scope !2383, !DIAssignID !2402
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2379, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2402, metadata ptr %4, metadata !DIExpression()), !dbg !2381
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2403
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2404
  ret ptr %8, !dbg !2405
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2406 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2415
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2414, metadata !DIExpression(), metadata !2415, metadata ptr %5, metadata !DIExpression()), !dbg !2416
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2410, metadata !DIExpression()), !dbg !2416
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2411, metadata !DIExpression()), !dbg !2416
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2412, metadata !DIExpression()), !dbg !2416
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2413, metadata !DIExpression()), !dbg !2416
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2418), !dbg !2421
  call void @llvm.dbg.value(metadata i32 %1, metadata !2387, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2392, metadata !DIExpression()), !dbg !2424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2424, !alias.scope !2418, !DIAssignID !2425
  call void @llvm.dbg.assign(metadata i8 0, metadata !2414, metadata !DIExpression(), metadata !2425, metadata ptr %5, metadata !DIExpression()), !dbg !2416
  %6 = icmp eq i32 %1, 10, !dbg !2426
  br i1 %6, label %7, label %8, !dbg !2427

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2428, !noalias !2418
  unreachable, !dbg !2428

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2429, !tbaa !1463, !alias.scope !2418, !DIAssignID !2430
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2414, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2430, metadata ptr %5, metadata !DIExpression()), !dbg !2416
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2431
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2432
  ret ptr %9, !dbg !2433
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2434 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2440
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2438, metadata !DIExpression()), !dbg !2441
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2439, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2379, metadata !DIExpression(), metadata !2440, metadata ptr %3, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i32 0, metadata !2376, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i32 %0, metadata !2377, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata ptr %1, metadata !2378, metadata !DIExpression()), !dbg !2442
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2444
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2445), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %0, metadata !2387, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2392, metadata !DIExpression()), !dbg !2451
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2451, !alias.scope !2445, !DIAssignID !2452
  call void @llvm.dbg.assign(metadata i8 0, metadata !2379, metadata !DIExpression(), metadata !2452, metadata ptr %3, metadata !DIExpression()), !dbg !2442
  %4 = icmp eq i32 %0, 10, !dbg !2453
  br i1 %4, label %5, label %6, !dbg !2454

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2455, !noalias !2445
  unreachable, !dbg !2455

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2456, !tbaa !1463, !alias.scope !2445, !DIAssignID !2457
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2379, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2457, metadata ptr %3, metadata !DIExpression()), !dbg !2442
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2458
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2459
  ret ptr %7, !dbg !2460
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2461 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2468
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2465, metadata !DIExpression()), !dbg !2469
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2466, metadata !DIExpression()), !dbg !2469
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2467, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2414, metadata !DIExpression(), metadata !2468, metadata ptr %4, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 0, metadata !2410, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 %0, metadata !2411, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata ptr %1, metadata !2412, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i64 %2, metadata !2413, metadata !DIExpression()), !dbg !2470
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2472
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2473), !dbg !2476
  call void @llvm.dbg.value(metadata i32 %0, metadata !2387, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2392, metadata !DIExpression()), !dbg !2479
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2479, !alias.scope !2473, !DIAssignID !2480
  call void @llvm.dbg.assign(metadata i8 0, metadata !2414, metadata !DIExpression(), metadata !2480, metadata ptr %4, metadata !DIExpression()), !dbg !2470
  %5 = icmp eq i32 %0, 10, !dbg !2481
  br i1 %5, label %6, label %7, !dbg !2482

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2483, !noalias !2473
  unreachable, !dbg !2483

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2484, !tbaa !1463, !alias.scope !2473, !DIAssignID !2485
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2414, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2485, metadata ptr %4, metadata !DIExpression()), !dbg !2470
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2486
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2487
  ret ptr %8, !dbg !2488
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2489 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2497
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2496, metadata !DIExpression(), metadata !2497, metadata ptr %4, metadata !DIExpression()), !dbg !2498
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2493, metadata !DIExpression()), !dbg !2498
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2494, metadata !DIExpression()), !dbg !2498
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2495, metadata !DIExpression()), !dbg !2498
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2500, !tbaa.struct !2501, !DIAssignID !2502
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2496, metadata !DIExpression(), metadata !2502, metadata ptr %4, metadata !DIExpression()), !dbg !2498
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1480, metadata !DIExpression()), !dbg !2503
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1481, metadata !DIExpression()), !dbg !2503
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1482, metadata !DIExpression()), !dbg !2503
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1483, metadata !DIExpression()), !dbg !2503
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2505
  %6 = lshr i8 %2, 5, !dbg !2506
  %7 = zext nneg i8 %6 to i64, !dbg !2506
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2507
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1484, metadata !DIExpression()), !dbg !2503
  %9 = and i8 %2, 31, !dbg !2508
  %10 = zext nneg i8 %9 to i32, !dbg !2508
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1486, metadata !DIExpression()), !dbg !2503
  %11 = load i32, ptr %8, align 4, !dbg !2509, !tbaa !801
  %12 = lshr i32 %11, %10, !dbg !2510
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1487, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2503
  %13 = and i32 %12, 1, !dbg !2511
  %14 = xor i32 %13, 1, !dbg !2511
  %15 = shl nuw i32 %14, %10, !dbg !2512
  %16 = xor i32 %15, %11, !dbg !2513
  store i32 %16, ptr %8, align 4, !dbg !2513, !tbaa !801
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2514
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2515
  ret ptr %17, !dbg !2516
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2517 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2523
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2521, metadata !DIExpression()), !dbg !2524
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2522, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2496, metadata !DIExpression(), metadata !2523, metadata ptr %3, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata ptr %0, metadata !2493, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i64 -1, metadata !2494, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 %1, metadata !2495, metadata !DIExpression()), !dbg !2525
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2528, !tbaa.struct !2501, !DIAssignID !2529
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2496, metadata !DIExpression(), metadata !2529, metadata ptr %3, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata ptr %3, metadata !1480, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8 %1, metadata !1481, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i32 1, metadata !1482, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8 %1, metadata !1483, metadata !DIExpression()), !dbg !2530
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2532
  %5 = lshr i8 %1, 5, !dbg !2533
  %6 = zext nneg i8 %5 to i64, !dbg !2533
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2534
  call void @llvm.dbg.value(metadata ptr %7, metadata !1484, metadata !DIExpression()), !dbg !2530
  %8 = and i8 %1, 31, !dbg !2535
  %9 = zext nneg i8 %8 to i32, !dbg !2535
  call void @llvm.dbg.value(metadata i32 %9, metadata !1486, metadata !DIExpression()), !dbg !2530
  %10 = load i32, ptr %7, align 4, !dbg !2536, !tbaa !801
  %11 = lshr i32 %10, %9, !dbg !2537
  call void @llvm.dbg.value(metadata i32 %11, metadata !1487, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2530
  %12 = and i32 %11, 1, !dbg !2538
  %13 = xor i32 %12, 1, !dbg !2538
  %14 = shl nuw i32 %13, %9, !dbg !2539
  %15 = xor i32 %14, %10, !dbg !2540
  store i32 %15, ptr %7, align 4, !dbg !2540, !tbaa !801
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2541
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2542
  ret ptr %16, !dbg !2543
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2544 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2547
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2546, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata ptr %0, metadata !2521, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8 58, metadata !2522, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2496, metadata !DIExpression(), metadata !2547, metadata ptr %2, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata ptr %0, metadata !2493, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 -1, metadata !2494, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 58, metadata !2495, metadata !DIExpression()), !dbg !2551
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2554, !tbaa.struct !2501, !DIAssignID !2555
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2496, metadata !DIExpression(), metadata !2555, metadata ptr %2, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata ptr %2, metadata !1480, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 58, metadata !1481, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i32 1, metadata !1482, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 58, metadata !1483, metadata !DIExpression()), !dbg !2556
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2558
  call void @llvm.dbg.value(metadata ptr %3, metadata !1484, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i32 26, metadata !1486, metadata !DIExpression()), !dbg !2556
  %4 = load i32, ptr %3, align 4, !dbg !2559, !tbaa !801
  call void @llvm.dbg.value(metadata i32 %4, metadata !1487, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2556
  %5 = or i32 %4, 67108864, !dbg !2560
  store i32 %5, ptr %3, align 4, !dbg !2560, !tbaa !801
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2561
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2562
  ret ptr %6, !dbg !2563
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2564 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2568
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2566, metadata !DIExpression()), !dbg !2569
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2567, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2496, metadata !DIExpression(), metadata !2568, metadata ptr %3, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata ptr %0, metadata !2493, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i64 %1, metadata !2494, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 58, metadata !2495, metadata !DIExpression()), !dbg !2570
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2573, !tbaa.struct !2501, !DIAssignID !2574
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2496, metadata !DIExpression(), metadata !2574, metadata ptr %3, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata ptr %3, metadata !1480, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8 58, metadata !1481, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 1, metadata !1482, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8 58, metadata !1483, metadata !DIExpression()), !dbg !2575
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2577
  call void @llvm.dbg.value(metadata ptr %4, metadata !1484, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 26, metadata !1486, metadata !DIExpression()), !dbg !2575
  %5 = load i32, ptr %4, align 4, !dbg !2578, !tbaa !801
  call void @llvm.dbg.value(metadata i32 %5, metadata !1487, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2575
  %6 = or i32 %5, 67108864, !dbg !2579
  store i32 %6, ptr %4, align 4, !dbg !2579, !tbaa !801
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2580
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2581
  ret ptr %7, !dbg !2582
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2583 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2589
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2588, metadata !DIExpression(), metadata !2589, metadata ptr %4, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2392, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2591
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2585, metadata !DIExpression()), !dbg !2590
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2586, metadata !DIExpression()), !dbg !2590
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2587, metadata !DIExpression()), !dbg !2590
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2593
  call void @llvm.dbg.value(metadata i32 %1, metadata !2387, metadata !DIExpression()), !dbg !2594
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2392, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2594
  %5 = icmp eq i32 %1, 10, !dbg !2595
  br i1 %5, label %6, label %7, !dbg !2596

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2597, !noalias !2598
  unreachable, !dbg !2597

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2392, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2594
  store i32 %1, ptr %4, align 8, !dbg !2601, !tbaa.struct !2501, !DIAssignID !2602
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2601
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2601
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2588, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2602, metadata ptr %4, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2588, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2603, metadata ptr %8, metadata !DIExpression()), !dbg !2590
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1480, metadata !DIExpression()), !dbg !2604
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1481, metadata !DIExpression()), !dbg !2604
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1482, metadata !DIExpression()), !dbg !2604
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1483, metadata !DIExpression()), !dbg !2604
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2606
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1484, metadata !DIExpression()), !dbg !2604
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1486, metadata !DIExpression()), !dbg !2604
  %10 = load i32, ptr %9, align 4, !dbg !2607, !tbaa !801
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1487, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2604
  %11 = or i32 %10, 67108864, !dbg !2608
  store i32 %11, ptr %9, align 4, !dbg !2608, !tbaa !801, !DIAssignID !2609
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2588, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2609, metadata ptr %9, metadata !DIExpression()), !dbg !2590
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2610
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2611
  ret ptr %12, !dbg !2612
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2613 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2621
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2617, metadata !DIExpression()), !dbg !2622
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2618, metadata !DIExpression()), !dbg !2622
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2619, metadata !DIExpression()), !dbg !2622
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2620, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2623, metadata !DIExpression(), metadata !2621, metadata ptr %5, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 %0, metadata !2628, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata ptr %1, metadata !2629, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata ptr %2, metadata !2630, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata ptr %3, metadata !2631, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 -1, metadata !2632, metadata !DIExpression()), !dbg !2633
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2636, !tbaa.struct !2501, !DIAssignID !2637
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2623, metadata !DIExpression(), metadata !2637, metadata ptr %5, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2623, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2638, metadata ptr undef, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata ptr %5, metadata !1520, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata ptr %1, metadata !1521, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata ptr %2, metadata !1522, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata ptr %5, metadata !1520, metadata !DIExpression()), !dbg !2639
  store i32 10, ptr %5, align 8, !dbg !2641, !tbaa !1463, !DIAssignID !2642
  call void @llvm.dbg.assign(metadata i32 10, metadata !2623, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2642, metadata ptr %5, metadata !DIExpression()), !dbg !2633
  %6 = icmp ne ptr %1, null, !dbg !2643
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2644
  br i1 %8, label %10, label %9, !dbg !2644

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2645
  unreachable, !dbg !2645

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2646
  store ptr %1, ptr %11, align 8, !dbg !2647, !tbaa !1534, !DIAssignID !2648
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2623, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2648, metadata ptr %11, metadata !DIExpression()), !dbg !2633
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2649
  store ptr %2, ptr %12, align 8, !dbg !2650, !tbaa !1537, !DIAssignID !2651
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2623, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2651, metadata ptr %12, metadata !DIExpression()), !dbg !2633
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2652
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2653
  ret ptr %13, !dbg !2654
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2624 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2655
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2623, metadata !DIExpression(), metadata !2655, metadata ptr %6, metadata !DIExpression()), !dbg !2656
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2628, metadata !DIExpression()), !dbg !2656
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2629, metadata !DIExpression()), !dbg !2656
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2630, metadata !DIExpression()), !dbg !2656
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2631, metadata !DIExpression()), !dbg !2656
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2632, metadata !DIExpression()), !dbg !2656
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2658, !tbaa.struct !2501, !DIAssignID !2659
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2623, metadata !DIExpression(), metadata !2659, metadata ptr %6, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2623, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2660, metadata ptr undef, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata ptr %6, metadata !1520, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata ptr %1, metadata !1521, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata ptr %2, metadata !1522, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata ptr %6, metadata !1520, metadata !DIExpression()), !dbg !2661
  store i32 10, ptr %6, align 8, !dbg !2663, !tbaa !1463, !DIAssignID !2664
  call void @llvm.dbg.assign(metadata i32 10, metadata !2623, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2664, metadata ptr %6, metadata !DIExpression()), !dbg !2656
  %7 = icmp ne ptr %1, null, !dbg !2665
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2666
  br i1 %9, label %11, label %10, !dbg !2666

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !2667
  unreachable, !dbg !2667

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2668
  store ptr %1, ptr %12, align 8, !dbg !2669, !tbaa !1534, !DIAssignID !2670
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2623, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2670, metadata ptr %12, metadata !DIExpression()), !dbg !2656
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2671
  store ptr %2, ptr %13, align 8, !dbg !2672, !tbaa !1537, !DIAssignID !2673
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2623, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2673, metadata ptr %13, metadata !DIExpression()), !dbg !2656
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2674
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2675
  ret ptr %14, !dbg !2676
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2677 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2684
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2681, metadata !DIExpression()), !dbg !2685
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2682, metadata !DIExpression()), !dbg !2685
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2683, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i32 0, metadata !2617, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata ptr %0, metadata !2618, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata ptr %1, metadata !2619, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata ptr %2, metadata !2620, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2623, metadata !DIExpression(), metadata !2684, metadata ptr %4, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i32 0, metadata !2628, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr %0, metadata !2629, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr %1, metadata !2630, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr %2, metadata !2631, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 -1, metadata !2632, metadata !DIExpression()), !dbg !2688
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2691, !tbaa.struct !2501, !DIAssignID !2692
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2623, metadata !DIExpression(), metadata !2692, metadata ptr %4, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2623, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2693, metadata ptr undef, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr %4, metadata !1520, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %0, metadata !1521, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %1, metadata !1522, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %4, metadata !1520, metadata !DIExpression()), !dbg !2694
  store i32 10, ptr %4, align 8, !dbg !2696, !tbaa !1463, !DIAssignID !2697
  call void @llvm.dbg.assign(metadata i32 10, metadata !2623, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2697, metadata ptr %4, metadata !DIExpression()), !dbg !2688
  %5 = icmp ne ptr %0, null, !dbg !2698
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2699
  br i1 %7, label %9, label %8, !dbg !2699

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2700
  unreachable, !dbg !2700

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2701
  store ptr %0, ptr %10, align 8, !dbg !2702, !tbaa !1534, !DIAssignID !2703
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2623, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2703, metadata ptr %10, metadata !DIExpression()), !dbg !2688
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2704
  store ptr %1, ptr %11, align 8, !dbg !2705, !tbaa !1537, !DIAssignID !2706
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2623, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2706, metadata ptr %11, metadata !DIExpression()), !dbg !2688
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2707
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2708
  ret ptr %12, !dbg !2709
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2710 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2718
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2714, metadata !DIExpression()), !dbg !2719
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2715, metadata !DIExpression()), !dbg !2719
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2716, metadata !DIExpression()), !dbg !2719
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2717, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2623, metadata !DIExpression(), metadata !2718, metadata ptr %5, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i32 0, metadata !2628, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata ptr %0, metadata !2629, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata ptr %1, metadata !2630, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata ptr %2, metadata !2631, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %3, metadata !2632, metadata !DIExpression()), !dbg !2720
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2723, !tbaa.struct !2501, !DIAssignID !2724
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2623, metadata !DIExpression(), metadata !2724, metadata ptr %5, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2623, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2725, metadata ptr undef, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata ptr %5, metadata !1520, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %0, metadata !1521, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %1, metadata !1522, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %5, metadata !1520, metadata !DIExpression()), !dbg !2726
  store i32 10, ptr %5, align 8, !dbg !2728, !tbaa !1463, !DIAssignID !2729
  call void @llvm.dbg.assign(metadata i32 10, metadata !2623, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2729, metadata ptr %5, metadata !DIExpression()), !dbg !2720
  %6 = icmp ne ptr %0, null, !dbg !2730
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2731
  br i1 %8, label %10, label %9, !dbg !2731

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2732
  unreachable, !dbg !2732

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2733
  store ptr %0, ptr %11, align 8, !dbg !2734, !tbaa !1534, !DIAssignID !2735
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2623, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2735, metadata ptr %11, metadata !DIExpression()), !dbg !2720
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2736
  store ptr %1, ptr %12, align 8, !dbg !2737, !tbaa !1537, !DIAssignID !2738
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2623, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2738, metadata ptr %12, metadata !DIExpression()), !dbg !2720
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2739
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2740
  ret ptr %13, !dbg !2741
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2742 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2746, metadata !DIExpression()), !dbg !2749
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2747, metadata !DIExpression()), !dbg !2749
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2748, metadata !DIExpression()), !dbg !2749
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2750
  ret ptr %4, !dbg !2751
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2752 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2756, metadata !DIExpression()), !dbg !2758
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2757, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i32 0, metadata !2746, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata ptr %0, metadata !2747, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %1, metadata !2748, metadata !DIExpression()), !dbg !2759
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2761
  ret ptr %3, !dbg !2762
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2763 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2767, metadata !DIExpression()), !dbg !2769
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2768, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i32 %0, metadata !2746, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata ptr %1, metadata !2747, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i64 -1, metadata !2748, metadata !DIExpression()), !dbg !2770
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2772
  ret ptr %3, !dbg !2773
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2774 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2778, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i32 0, metadata !2767, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata ptr %0, metadata !2768, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i32 0, metadata !2746, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %0, metadata !2747, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 -1, metadata !2748, metadata !DIExpression()), !dbg !2782
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2784
  ret ptr %2, !dbg !2785
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2786 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2825, metadata !DIExpression()), !dbg !2831
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2826, metadata !DIExpression()), !dbg !2831
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2827, metadata !DIExpression()), !dbg !2831
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2828, metadata !DIExpression()), !dbg !2831
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2829, metadata !DIExpression()), !dbg !2831
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2830, metadata !DIExpression()), !dbg !2831
  %7 = icmp eq ptr %1, null, !dbg !2832
  br i1 %7, label %10, label %8, !dbg !2834

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.71, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2835
  br label %12, !dbg !2835

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.72, ptr noundef %2, ptr noundef %3) #37, !dbg !2836
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.3.74, i32 noundef 5) #37, !dbg !2837
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2837
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.75, ptr noundef %0), !dbg !2838
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.5.76, i32 noundef 5) #37, !dbg !2839
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.77) #37, !dbg !2839
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.75, ptr noundef %0), !dbg !2840
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
  ], !dbg !2841

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.7.78, i32 noundef 5) #37, !dbg !2842
  %21 = load ptr, ptr %4, align 8, !dbg !2842, !tbaa !745
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2842
  br label %147, !dbg !2844

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.8.79, i32 noundef 5) #37, !dbg !2845
  %25 = load ptr, ptr %4, align 8, !dbg !2845, !tbaa !745
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2845
  %27 = load ptr, ptr %26, align 8, !dbg !2845, !tbaa !745
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2845
  br label %147, !dbg !2846

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.9.80, i32 noundef 5) #37, !dbg !2847
  %31 = load ptr, ptr %4, align 8, !dbg !2847, !tbaa !745
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2847
  %33 = load ptr, ptr %32, align 8, !dbg !2847, !tbaa !745
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2847
  %35 = load ptr, ptr %34, align 8, !dbg !2847, !tbaa !745
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2847
  br label %147, !dbg !2848

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.10.81, i32 noundef 5) #37, !dbg !2849
  %39 = load ptr, ptr %4, align 8, !dbg !2849, !tbaa !745
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2849
  %41 = load ptr, ptr %40, align 8, !dbg !2849, !tbaa !745
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2849
  %43 = load ptr, ptr %42, align 8, !dbg !2849, !tbaa !745
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2849
  %45 = load ptr, ptr %44, align 8, !dbg !2849, !tbaa !745
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2849
  br label %147, !dbg !2850

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.11.82, i32 noundef 5) #37, !dbg !2851
  %49 = load ptr, ptr %4, align 8, !dbg !2851, !tbaa !745
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2851
  %51 = load ptr, ptr %50, align 8, !dbg !2851, !tbaa !745
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2851
  %53 = load ptr, ptr %52, align 8, !dbg !2851, !tbaa !745
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2851
  %55 = load ptr, ptr %54, align 8, !dbg !2851, !tbaa !745
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2851
  %57 = load ptr, ptr %56, align 8, !dbg !2851, !tbaa !745
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2851
  br label %147, !dbg !2852

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.12.83, i32 noundef 5) #37, !dbg !2853
  %61 = load ptr, ptr %4, align 8, !dbg !2853, !tbaa !745
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2853
  %63 = load ptr, ptr %62, align 8, !dbg !2853, !tbaa !745
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2853
  %65 = load ptr, ptr %64, align 8, !dbg !2853, !tbaa !745
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2853
  %67 = load ptr, ptr %66, align 8, !dbg !2853, !tbaa !745
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2853
  %69 = load ptr, ptr %68, align 8, !dbg !2853, !tbaa !745
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2853
  %71 = load ptr, ptr %70, align 8, !dbg !2853, !tbaa !745
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2853
  br label %147, !dbg !2854

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.13.84, i32 noundef 5) #37, !dbg !2855
  %75 = load ptr, ptr %4, align 8, !dbg !2855, !tbaa !745
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2855
  %77 = load ptr, ptr %76, align 8, !dbg !2855, !tbaa !745
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2855
  %79 = load ptr, ptr %78, align 8, !dbg !2855, !tbaa !745
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2855
  %81 = load ptr, ptr %80, align 8, !dbg !2855, !tbaa !745
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2855
  %83 = load ptr, ptr %82, align 8, !dbg !2855, !tbaa !745
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2855
  %85 = load ptr, ptr %84, align 8, !dbg !2855, !tbaa !745
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2855
  %87 = load ptr, ptr %86, align 8, !dbg !2855, !tbaa !745
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2855
  br label %147, !dbg !2856

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.14.85, i32 noundef 5) #37, !dbg !2857
  %91 = load ptr, ptr %4, align 8, !dbg !2857, !tbaa !745
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2857
  %93 = load ptr, ptr %92, align 8, !dbg !2857, !tbaa !745
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2857
  %95 = load ptr, ptr %94, align 8, !dbg !2857, !tbaa !745
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2857
  %97 = load ptr, ptr %96, align 8, !dbg !2857, !tbaa !745
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2857
  %99 = load ptr, ptr %98, align 8, !dbg !2857, !tbaa !745
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2857
  %101 = load ptr, ptr %100, align 8, !dbg !2857, !tbaa !745
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2857
  %103 = load ptr, ptr %102, align 8, !dbg !2857, !tbaa !745
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2857
  %105 = load ptr, ptr %104, align 8, !dbg !2857, !tbaa !745
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2857
  br label %147, !dbg !2858

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.15.86, i32 noundef 5) #37, !dbg !2859
  %109 = load ptr, ptr %4, align 8, !dbg !2859, !tbaa !745
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2859
  %111 = load ptr, ptr %110, align 8, !dbg !2859, !tbaa !745
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2859
  %113 = load ptr, ptr %112, align 8, !dbg !2859, !tbaa !745
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2859
  %115 = load ptr, ptr %114, align 8, !dbg !2859, !tbaa !745
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2859
  %117 = load ptr, ptr %116, align 8, !dbg !2859, !tbaa !745
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2859
  %119 = load ptr, ptr %118, align 8, !dbg !2859, !tbaa !745
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2859
  %121 = load ptr, ptr %120, align 8, !dbg !2859, !tbaa !745
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2859
  %123 = load ptr, ptr %122, align 8, !dbg !2859, !tbaa !745
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2859
  %125 = load ptr, ptr %124, align 8, !dbg !2859, !tbaa !745
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2859
  br label %147, !dbg !2860

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.16.87, i32 noundef 5) #37, !dbg !2861
  %129 = load ptr, ptr %4, align 8, !dbg !2861, !tbaa !745
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2861
  %131 = load ptr, ptr %130, align 8, !dbg !2861, !tbaa !745
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2861
  %133 = load ptr, ptr %132, align 8, !dbg !2861, !tbaa !745
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2861
  %135 = load ptr, ptr %134, align 8, !dbg !2861, !tbaa !745
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2861
  %137 = load ptr, ptr %136, align 8, !dbg !2861, !tbaa !745
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2861
  %139 = load ptr, ptr %138, align 8, !dbg !2861, !tbaa !745
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2861
  %141 = load ptr, ptr %140, align 8, !dbg !2861, !tbaa !745
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2861
  %143 = load ptr, ptr %142, align 8, !dbg !2861, !tbaa !745
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2861
  %145 = load ptr, ptr %144, align 8, !dbg !2861, !tbaa !745
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2861
  br label %147, !dbg !2862

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2863
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2864 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2868, metadata !DIExpression()), !dbg !2874
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2869, metadata !DIExpression()), !dbg !2874
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2870, metadata !DIExpression()), !dbg !2874
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2871, metadata !DIExpression()), !dbg !2874
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2872, metadata !DIExpression()), !dbg !2874
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2873, metadata !DIExpression()), !dbg !2874
  br label %6, !dbg !2875

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2877
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2873, metadata !DIExpression()), !dbg !2874
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2878
  %9 = load ptr, ptr %8, align 8, !dbg !2878, !tbaa !745
  %10 = icmp eq ptr %9, null, !dbg !2880
  %11 = add i64 %7, 1, !dbg !2881
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2873, metadata !DIExpression()), !dbg !2874
  br i1 %10, label %12, label %6, !dbg !2880, !llvm.loop !2882

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2884
  ret void, !dbg !2885
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2886 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !2905
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2903, metadata !DIExpression(), metadata !2905, metadata ptr %6, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2897, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2898, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2899, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2900, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2901, metadata !DIExpression()), !dbg !2906
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !2907
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2902, metadata !DIExpression()), !dbg !2906
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2902, metadata !DIExpression()), !dbg !2906
  %10 = icmp ult i32 %9, 41, !dbg !2908
  br i1 %10, label %11, label %16, !dbg !2908

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2908
  %13 = zext nneg i32 %9 to i64, !dbg !2908
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2908
  %15 = add nuw nsw i32 %9, 8, !dbg !2908
  store i32 %15, ptr %4, align 8, !dbg !2908
  br label %19, !dbg !2908

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2908
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2908
  store ptr %18, ptr %7, align 8, !dbg !2908
  br label %19, !dbg !2908

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2908
  %22 = load ptr, ptr %21, align 8, !dbg !2908
  store ptr %22, ptr %6, align 16, !dbg !2911, !tbaa !745
  %23 = icmp eq ptr %22, null, !dbg !2912
  br i1 %23, label %128, label %24, !dbg !2913

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2902, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2902, metadata !DIExpression()), !dbg !2906
  %25 = icmp ult i32 %20, 41, !dbg !2908
  br i1 %25, label %29, label %26, !dbg !2908

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2908
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2908
  store ptr %28, ptr %7, align 8, !dbg !2908
  br label %34, !dbg !2908

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2908
  %31 = zext nneg i32 %20 to i64, !dbg !2908
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2908
  %33 = add nuw nsw i32 %20, 8, !dbg !2908
  store i32 %33, ptr %4, align 8, !dbg !2908
  br label %34, !dbg !2908

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2908
  %37 = load ptr, ptr %36, align 8, !dbg !2908
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2914
  store ptr %37, ptr %38, align 8, !dbg !2911, !tbaa !745
  %39 = icmp eq ptr %37, null, !dbg !2912
  br i1 %39, label %128, label %40, !dbg !2913

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2902, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2902, metadata !DIExpression()), !dbg !2906
  %41 = icmp ult i32 %35, 41, !dbg !2908
  br i1 %41, label %45, label %42, !dbg !2908

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2908
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2908
  store ptr %44, ptr %7, align 8, !dbg !2908
  br label %50, !dbg !2908

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2908
  %47 = zext nneg i32 %35 to i64, !dbg !2908
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2908
  %49 = add nuw nsw i32 %35, 8, !dbg !2908
  store i32 %49, ptr %4, align 8, !dbg !2908
  br label %50, !dbg !2908

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2908
  %53 = load ptr, ptr %52, align 8, !dbg !2908
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2914
  store ptr %53, ptr %54, align 16, !dbg !2911, !tbaa !745
  %55 = icmp eq ptr %53, null, !dbg !2912
  br i1 %55, label %128, label %56, !dbg !2913

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2902, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2902, metadata !DIExpression()), !dbg !2906
  %57 = icmp ult i32 %51, 41, !dbg !2908
  br i1 %57, label %61, label %58, !dbg !2908

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2908
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2908
  store ptr %60, ptr %7, align 8, !dbg !2908
  br label %66, !dbg !2908

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2908
  %63 = zext nneg i32 %51 to i64, !dbg !2908
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2908
  %65 = add nuw nsw i32 %51, 8, !dbg !2908
  store i32 %65, ptr %4, align 8, !dbg !2908
  br label %66, !dbg !2908

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2908
  %69 = load ptr, ptr %68, align 8, !dbg !2908
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2914
  store ptr %69, ptr %70, align 8, !dbg !2911, !tbaa !745
  %71 = icmp eq ptr %69, null, !dbg !2912
  br i1 %71, label %128, label %72, !dbg !2913

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2902, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2902, metadata !DIExpression()), !dbg !2906
  %73 = icmp ult i32 %67, 41, !dbg !2908
  br i1 %73, label %77, label %74, !dbg !2908

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2908
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2908
  store ptr %76, ptr %7, align 8, !dbg !2908
  br label %82, !dbg !2908

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2908
  %79 = zext nneg i32 %67 to i64, !dbg !2908
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2908
  %81 = add nuw nsw i32 %67, 8, !dbg !2908
  store i32 %81, ptr %4, align 8, !dbg !2908
  br label %82, !dbg !2908

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2908
  %85 = load ptr, ptr %84, align 8, !dbg !2908
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2914
  store ptr %85, ptr %86, align 16, !dbg !2911, !tbaa !745
  %87 = icmp eq ptr %85, null, !dbg !2912
  br i1 %87, label %128, label %88, !dbg !2913

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2902, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2902, metadata !DIExpression()), !dbg !2906
  %89 = icmp ult i32 %83, 41, !dbg !2908
  br i1 %89, label %93, label %90, !dbg !2908

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2908
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2908
  store ptr %92, ptr %7, align 8, !dbg !2908
  br label %98, !dbg !2908

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2908
  %95 = zext nneg i32 %83 to i64, !dbg !2908
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2908
  %97 = add nuw nsw i32 %83, 8, !dbg !2908
  store i32 %97, ptr %4, align 8, !dbg !2908
  br label %98, !dbg !2908

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2908
  %100 = load ptr, ptr %99, align 8, !dbg !2908
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2914
  store ptr %100, ptr %101, align 8, !dbg !2911, !tbaa !745
  %102 = icmp eq ptr %100, null, !dbg !2912
  br i1 %102, label %128, label %103, !dbg !2913

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2902, metadata !DIExpression()), !dbg !2906
  %104 = load ptr, ptr %7, align 8, !dbg !2908
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2908
  store ptr %105, ptr %7, align 8, !dbg !2908
  %106 = load ptr, ptr %104, align 8, !dbg !2908
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2914
  store ptr %106, ptr %107, align 16, !dbg !2911, !tbaa !745
  %108 = icmp eq ptr %106, null, !dbg !2912
  br i1 %108, label %128, label %109, !dbg !2913

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2902, metadata !DIExpression()), !dbg !2906
  %110 = load ptr, ptr %7, align 8, !dbg !2908
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2908
  store ptr %111, ptr %7, align 8, !dbg !2908
  %112 = load ptr, ptr %110, align 8, !dbg !2908
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2914
  store ptr %112, ptr %113, align 8, !dbg !2911, !tbaa !745
  %114 = icmp eq ptr %112, null, !dbg !2912
  br i1 %114, label %128, label %115, !dbg !2913

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2902, metadata !DIExpression()), !dbg !2906
  %116 = load ptr, ptr %7, align 8, !dbg !2908
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2908
  store ptr %117, ptr %7, align 8, !dbg !2908
  %118 = load ptr, ptr %116, align 8, !dbg !2908
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2914
  store ptr %118, ptr %119, align 16, !dbg !2911, !tbaa !745
  %120 = icmp eq ptr %118, null, !dbg !2912
  br i1 %120, label %128, label %121, !dbg !2913

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2902, metadata !DIExpression()), !dbg !2906
  %122 = load ptr, ptr %7, align 8, !dbg !2908
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2908
  store ptr %123, ptr %7, align 8, !dbg !2908
  %124 = load ptr, ptr %122, align 8, !dbg !2908
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2914
  store ptr %124, ptr %125, align 8, !dbg !2911, !tbaa !745
  %126 = icmp eq ptr %124, null, !dbg !2912
  %127 = select i1 %126, i64 9, i64 10, !dbg !2913
  br label %128, !dbg !2913

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2915
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2916
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !2917
  ret void, !dbg !2917
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2918 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2931
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2926, metadata !DIExpression(), metadata !2931, metadata ptr %5, metadata !DIExpression()), !dbg !2932
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2922, metadata !DIExpression()), !dbg !2932
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2923, metadata !DIExpression()), !dbg !2932
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2924, metadata !DIExpression()), !dbg !2932
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2925, metadata !DIExpression()), !dbg !2932
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !2933
  call void @llvm.va_start(ptr nonnull %5), !dbg !2934
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2935
  call void @llvm.va_end(ptr nonnull %5), !dbg !2936
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !2937
  ret void, !dbg !2937
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2938 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2939, !tbaa !745
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.75, ptr noundef %1), !dbg !2939
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.17, i32 noundef 5) #37, !dbg !2940
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18) #37, !dbg !2940
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.19.92, i32 noundef 5) #37, !dbg !2941
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #37, !dbg !2941
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !2942
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.93) #37, !dbg !2942
  ret void, !dbg !2943
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2944 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2949, metadata !DIExpression()), !dbg !2952
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2950, metadata !DIExpression()), !dbg !2952
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2951, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata ptr %0, metadata !2953, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %1, metadata !2956, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %2, metadata !2957, metadata !DIExpression()), !dbg !2958
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2960
  call void @llvm.dbg.value(metadata ptr %4, metadata !2961, metadata !DIExpression()), !dbg !2966
  %5 = icmp eq ptr %4, null, !dbg !2968
  br i1 %5, label %6, label %7, !dbg !2970

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2971
  unreachable, !dbg !2971

7:                                                ; preds = %3
  ret ptr %4, !dbg !2972
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2954 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2953, metadata !DIExpression()), !dbg !2973
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2956, metadata !DIExpression()), !dbg !2973
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2957, metadata !DIExpression()), !dbg !2973
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2974
  call void @llvm.dbg.value(metadata ptr %4, metadata !2961, metadata !DIExpression()), !dbg !2975
  %5 = icmp eq ptr %4, null, !dbg !2977
  br i1 %5, label %6, label %7, !dbg !2978

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2979
  unreachable, !dbg !2979

7:                                                ; preds = %3
  ret ptr %4, !dbg !2980
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2981 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2985, metadata !DIExpression()), !dbg !2986
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2987
  call void @llvm.dbg.value(metadata ptr %2, metadata !2961, metadata !DIExpression()), !dbg !2988
  %3 = icmp eq ptr %2, null, !dbg !2990
  br i1 %3, label %4, label %5, !dbg !2991

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !2992
  unreachable, !dbg !2992

5:                                                ; preds = %1
  ret ptr %2, !dbg !2993
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2994 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2995 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2999, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i64 %0, metadata !3001, metadata !DIExpression()), !dbg !3005
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3007
  call void @llvm.dbg.value(metadata ptr %2, metadata !2961, metadata !DIExpression()), !dbg !3008
  %3 = icmp eq ptr %2, null, !dbg !3010
  br i1 %3, label %4, label %5, !dbg !3011

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3012
  unreachable, !dbg !3012

5:                                                ; preds = %1
  ret ptr %2, !dbg !3013
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3014 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3018, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i64 %0, metadata !2985, metadata !DIExpression()), !dbg !3020
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3022
  call void @llvm.dbg.value(metadata ptr %2, metadata !2961, metadata !DIExpression()), !dbg !3023
  %3 = icmp eq ptr %2, null, !dbg !3025
  br i1 %3, label %4, label %5, !dbg !3026

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3027
  unreachable, !dbg !3027

5:                                                ; preds = %1
  ret ptr %2, !dbg !3028
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3029 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3033, metadata !DIExpression()), !dbg !3035
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3034, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata ptr %0, metadata !3036, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %1, metadata !3040, metadata !DIExpression()), !dbg !3041
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3043
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3044
  call void @llvm.dbg.value(metadata ptr %4, metadata !2961, metadata !DIExpression()), !dbg !3045
  %5 = icmp eq ptr %4, null, !dbg !3047
  br i1 %5, label %6, label %7, !dbg !3048

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3049
  unreachable, !dbg !3049

7:                                                ; preds = %2
  ret ptr %4, !dbg !3050
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3051 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3052 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3056, metadata !DIExpression()), !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3057, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata ptr %0, metadata !3059, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %1, metadata !3062, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr %0, metadata !3036, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i64 %1, metadata !3040, metadata !DIExpression()), !dbg !3065
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3067
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3068
  call void @llvm.dbg.value(metadata ptr %4, metadata !2961, metadata !DIExpression()), !dbg !3069
  %5 = icmp eq ptr %4, null, !dbg !3071
  br i1 %5, label %6, label %7, !dbg !3072

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3073
  unreachable, !dbg !3073

7:                                                ; preds = %2
  ret ptr %4, !dbg !3074
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3075 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3079, metadata !DIExpression()), !dbg !3082
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3080, metadata !DIExpression()), !dbg !3082
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3081, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata ptr %0, metadata !3083, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i64 %1, metadata !3086, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i64 %2, metadata !3087, metadata !DIExpression()), !dbg !3088
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3090
  call void @llvm.dbg.value(metadata ptr %4, metadata !2961, metadata !DIExpression()), !dbg !3091
  %5 = icmp eq ptr %4, null, !dbg !3093
  br i1 %5, label %6, label %7, !dbg !3094

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3095
  unreachable, !dbg !3095

7:                                                ; preds = %3
  ret ptr %4, !dbg !3096
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3097 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3101, metadata !DIExpression()), !dbg !3103
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3102, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr null, metadata !2953, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 %0, metadata !2956, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 %1, metadata !2957, metadata !DIExpression()), !dbg !3104
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3106
  call void @llvm.dbg.value(metadata ptr %3, metadata !2961, metadata !DIExpression()), !dbg !3107
  %4 = icmp eq ptr %3, null, !dbg !3109
  br i1 %4, label %5, label %6, !dbg !3110

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3111
  unreachable, !dbg !3111

6:                                                ; preds = %2
  ret ptr %3, !dbg !3112
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3113 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3117, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3118, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata ptr null, metadata !3079, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %0, metadata !3080, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %1, metadata !3081, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata ptr null, metadata !3083, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %0, metadata !3086, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %1, metadata !3087, metadata !DIExpression()), !dbg !3122
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3124
  call void @llvm.dbg.value(metadata ptr %3, metadata !2961, metadata !DIExpression()), !dbg !3125
  %4 = icmp eq ptr %3, null, !dbg !3127
  br i1 %4, label %5, label %6, !dbg !3128

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3129
  unreachable, !dbg !3129

6:                                                ; preds = %2
  ret ptr %3, !dbg !3130
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3131 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3135, metadata !DIExpression()), !dbg !3137
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3136, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata ptr %0, metadata !680, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata ptr %1, metadata !681, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 1, metadata !682, metadata !DIExpression()), !dbg !3138
  %3 = load i64, ptr %1, align 8, !dbg !3140, !tbaa !2204
  call void @llvm.dbg.value(metadata i64 %3, metadata !683, metadata !DIExpression()), !dbg !3138
  %4 = icmp eq ptr %0, null, !dbg !3141
  br i1 %4, label %5, label %8, !dbg !3143

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3144
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3147
  br label %15, !dbg !3147

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3148
  %10 = add nuw i64 %9, 1, !dbg !3148
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3148
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3148
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %13, metadata !683, metadata !DIExpression()), !dbg !3138
  br i1 %12, label %14, label %15, !dbg !3151

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3152
  unreachable, !dbg !3152

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3138
  call void @llvm.dbg.value(metadata i64 %16, metadata !683, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata ptr %0, metadata !2953, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %16, metadata !2956, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 1, metadata !2957, metadata !DIExpression()), !dbg !3153
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3155
  call void @llvm.dbg.value(metadata ptr %17, metadata !2961, metadata !DIExpression()), !dbg !3156
  %18 = icmp eq ptr %17, null, !dbg !3158
  br i1 %18, label %19, label %20, !dbg !3159

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3160
  unreachable, !dbg !3160

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !680, metadata !DIExpression()), !dbg !3138
  store i64 %16, ptr %1, align 8, !dbg !3161, !tbaa !2204
  ret ptr %17, !dbg !3162
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !675 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !680, metadata !DIExpression()), !dbg !3163
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !681, metadata !DIExpression()), !dbg !3163
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !682, metadata !DIExpression()), !dbg !3163
  %4 = load i64, ptr %1, align 8, !dbg !3164, !tbaa !2204
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !683, metadata !DIExpression()), !dbg !3163
  %5 = icmp eq ptr %0, null, !dbg !3165
  br i1 %5, label %6, label %13, !dbg !3166

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3167
  br i1 %7, label %8, label %20, !dbg !3168

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !683, metadata !DIExpression()), !dbg !3163
  %10 = icmp ugt i64 %2, 128, !dbg !3171
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3172
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !683, metadata !DIExpression()), !dbg !3163
  br label %20, !dbg !3173

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3174
  %15 = add nuw i64 %14, 1, !dbg !3174
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3174
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3174
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !683, metadata !DIExpression()), !dbg !3163
  br i1 %17, label %19, label %20, !dbg !3175

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3176
  unreachable, !dbg !3176

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3163
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !683, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata ptr %0, metadata !2953, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i64 %21, metadata !2956, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i64 %2, metadata !2957, metadata !DIExpression()), !dbg !3177
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3179
  call void @llvm.dbg.value(metadata ptr %22, metadata !2961, metadata !DIExpression()), !dbg !3180
  %23 = icmp eq ptr %22, null, !dbg !3182
  br i1 %23, label %24, label %25, !dbg !3183

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3184
  unreachable, !dbg !3184

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !680, metadata !DIExpression()), !dbg !3163
  store i64 %21, ptr %1, align 8, !dbg !3185, !tbaa !2204
  ret ptr %22, !dbg !3186
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !687 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !696, metadata !DIExpression()), !dbg !3187
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !697, metadata !DIExpression()), !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !698, metadata !DIExpression()), !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !699, metadata !DIExpression()), !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !700, metadata !DIExpression()), !dbg !3187
  %6 = load i64, ptr %1, align 8, !dbg !3188, !tbaa !2204
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !701, metadata !DIExpression()), !dbg !3187
  %7 = ashr i64 %6, 1, !dbg !3189
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3189
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3189
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3189
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !702, metadata !DIExpression()), !dbg !3187
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3191
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !702, metadata !DIExpression()), !dbg !3187
  %12 = icmp sgt i64 %3, -1, !dbg !3192
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3194
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3194
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !702, metadata !DIExpression()), !dbg !3187
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3195
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3195
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3195
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !703, metadata !DIExpression()), !dbg !3187
  %18 = icmp slt i64 %17, 128, !dbg !3195
  %19 = select i1 %18, i64 128, i64 0, !dbg !3195
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3195
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !704, metadata !DIExpression()), !dbg !3187
  %21 = icmp eq i64 %20, 0, !dbg !3196
  br i1 %21, label %26, label %22, !dbg !3198

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3199
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !702, metadata !DIExpression()), !dbg !3187
  %24 = srem i64 %20, %4, !dbg !3201
  %25 = sub nsw i64 %20, %24, !dbg !3202
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !703, metadata !DIExpression()), !dbg !3187
  br label %26, !dbg !3203

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3187
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !703, metadata !DIExpression()), !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !702, metadata !DIExpression()), !dbg !3187
  %29 = icmp eq ptr %0, null, !dbg !3204
  br i1 %29, label %30, label %31, !dbg !3206

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3207, !tbaa !2204
  br label %31, !dbg !3208

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3209
  %33 = icmp slt i64 %32, %2, !dbg !3211
  br i1 %33, label %34, label %46, !dbg !3212

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3213
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3213
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !702, metadata !DIExpression()), !dbg !3187
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3214
  br i1 %40, label %45, label %41, !dbg !3214

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3215
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3215
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3215
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !703, metadata !DIExpression()), !dbg !3187
  br i1 %43, label %45, label %46, !dbg !3216

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #39, !dbg !3217
  unreachable, !dbg !3217

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3187
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !703, metadata !DIExpression()), !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !702, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata ptr %0, metadata !3033, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 %48, metadata !3034, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata ptr %0, metadata !3036, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 %48, metadata !3040, metadata !DIExpression()), !dbg !3220
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3222
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #43, !dbg !3223
  call void @llvm.dbg.value(metadata ptr %50, metadata !2961, metadata !DIExpression()), !dbg !3224
  %51 = icmp eq ptr %50, null, !dbg !3226
  br i1 %51, label %52, label %53, !dbg !3227

52:                                               ; preds = %46
  tail call void @xalloc_die() #39, !dbg !3228
  unreachable, !dbg !3228

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !696, metadata !DIExpression()), !dbg !3187
  store i64 %47, ptr %1, align 8, !dbg !3229, !tbaa !2204
  ret ptr %50, !dbg !3230
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3231 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3233, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 %0, metadata !3235, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 1, metadata !3238, metadata !DIExpression()), !dbg !3239
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3241
  call void @llvm.dbg.value(metadata ptr %2, metadata !2961, metadata !DIExpression()), !dbg !3242
  %3 = icmp eq ptr %2, null, !dbg !3244
  br i1 %3, label %4, label %5, !dbg !3245

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3246
  unreachable, !dbg !3246

5:                                                ; preds = %1
  ret ptr %2, !dbg !3247
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3248 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3236 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3235, metadata !DIExpression()), !dbg !3249
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3238, metadata !DIExpression()), !dbg !3249
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3250
  call void @llvm.dbg.value(metadata ptr %3, metadata !2961, metadata !DIExpression()), !dbg !3251
  %4 = icmp eq ptr %3, null, !dbg !3253
  br i1 %4, label %5, label %6, !dbg !3254

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3255
  unreachable, !dbg !3255

6:                                                ; preds = %2
  ret ptr %3, !dbg !3256
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3257 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3259, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64 %0, metadata !3261, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 1, metadata !3264, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %0, metadata !3267, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 1, metadata !3270, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %0, metadata !3267, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 1, metadata !3270, metadata !DIExpression()), !dbg !3271
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3273
  call void @llvm.dbg.value(metadata ptr %2, metadata !2961, metadata !DIExpression()), !dbg !3274
  %3 = icmp eq ptr %2, null, !dbg !3276
  br i1 %3, label %4, label %5, !dbg !3277

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3278
  unreachable, !dbg !3278

5:                                                ; preds = %1
  ret ptr %2, !dbg !3279
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3262 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3261, metadata !DIExpression()), !dbg !3280
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3264, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %0, metadata !3267, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %1, metadata !3270, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %0, metadata !3267, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %1, metadata !3270, metadata !DIExpression()), !dbg !3281
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3283
  call void @llvm.dbg.value(metadata ptr %3, metadata !2961, metadata !DIExpression()), !dbg !3284
  %4 = icmp eq ptr %3, null, !dbg !3286
  br i1 %4, label %5, label %6, !dbg !3287

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3288
  unreachable, !dbg !3288

6:                                                ; preds = %2
  ret ptr %3, !dbg !3289
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3290 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3294, metadata !DIExpression()), !dbg !3296
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3295, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %1, metadata !2985, metadata !DIExpression()), !dbg !3297
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3299
  call void @llvm.dbg.value(metadata ptr %3, metadata !2961, metadata !DIExpression()), !dbg !3300
  %4 = icmp eq ptr %3, null, !dbg !3302
  br i1 %4, label %5, label %6, !dbg !3303

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3304
  unreachable, !dbg !3304

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3305, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata ptr %0, metadata !3311, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i64 %1, metadata !3312, metadata !DIExpression()), !dbg !3313
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3315
  ret ptr %3, !dbg !3316
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3317 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3321, metadata !DIExpression()), !dbg !3323
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3322, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %1, metadata !2999, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i64 %1, metadata !3001, metadata !DIExpression()), !dbg !3326
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3328
  call void @llvm.dbg.value(metadata ptr %3, metadata !2961, metadata !DIExpression()), !dbg !3329
  %4 = icmp eq ptr %3, null, !dbg !3331
  br i1 %4, label %5, label %6, !dbg !3332

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3333
  unreachable, !dbg !3333

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3305, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata ptr %0, metadata !3311, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i64 %1, metadata !3312, metadata !DIExpression()), !dbg !3334
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3336
  ret ptr %3, !dbg !3337
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3338 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3342, metadata !DIExpression()), !dbg !3345
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3343, metadata !DIExpression()), !dbg !3345
  %3 = add nsw i64 %1, 1, !dbg !3346
  call void @llvm.dbg.value(metadata i64 %3, metadata !2999, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i64 %3, metadata !3001, metadata !DIExpression()), !dbg !3349
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3351
  call void @llvm.dbg.value(metadata ptr %4, metadata !2961, metadata !DIExpression()), !dbg !3352
  %5 = icmp eq ptr %4, null, !dbg !3354
  br i1 %5, label %6, label %7, !dbg !3355

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3356
  unreachable, !dbg !3356

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3344, metadata !DIExpression()), !dbg !3345
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3357
  store i8 0, ptr %8, align 1, !dbg !3358, !tbaa !810
  call void @llvm.dbg.value(metadata ptr %4, metadata !3305, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata ptr %0, metadata !3311, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i64 %1, metadata !3312, metadata !DIExpression()), !dbg !3359
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3361
  ret ptr %4, !dbg !3362
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3363 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3365, metadata !DIExpression()), !dbg !3366
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3367
  %3 = add i64 %2, 1, !dbg !3368
  call void @llvm.dbg.value(metadata ptr %0, metadata !3294, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %3, metadata !3295, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %3, metadata !2985, metadata !DIExpression()), !dbg !3371
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3373
  call void @llvm.dbg.value(metadata ptr %4, metadata !2961, metadata !DIExpression()), !dbg !3374
  %5 = icmp eq ptr %4, null, !dbg !3376
  br i1 %5, label %6, label %7, !dbg !3377

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3378
  unreachable, !dbg !3378

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3305, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata ptr %0, metadata !3311, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 %3, metadata !3312, metadata !DIExpression()), !dbg !3379
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3381
  ret ptr %4, !dbg !3382
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3383 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3388, !tbaa !801
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3385, metadata !DIExpression()), !dbg !3389
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.104, ptr noundef nonnull @.str.2.105, i32 noundef 5) #37, !dbg !3388
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.106, ptr noundef %2) #37, !dbg !3388
  %3 = icmp eq i32 %1, 0, !dbg !3388
  tail call void @llvm.assume(i1 %3), !dbg !3388
  tail call void @abort() #39, !dbg !3390
  unreachable, !dbg !3390
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3391 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3429, metadata !DIExpression()), !dbg !3434
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3435
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3430, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3434
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3436, metadata !DIExpression()), !dbg !3439
  %3 = load i32, ptr %0, align 8, !dbg !3441, !tbaa !3442
  %4 = and i32 %3, 32, !dbg !3443
  %5 = icmp eq i32 %4, 0, !dbg !3443
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3432, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3434
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3444
  %7 = icmp eq i32 %6, 0, !dbg !3445
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3433, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3434
  br i1 %5, label %8, label %18, !dbg !3446

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3448
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3430, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3434
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3449
  %11 = xor i1 %7, true, !dbg !3449
  %12 = sext i1 %11 to i32, !dbg !3449
  br i1 %10, label %21, label %13, !dbg !3449

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3450
  %15 = load i32, ptr %14, align 4, !dbg !3450, !tbaa !801
  %16 = icmp ne i32 %15, 9, !dbg !3451
  %17 = sext i1 %16 to i32, !dbg !3452
  br label %21, !dbg !3452

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3453

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3455
  store i32 0, ptr %20, align 4, !dbg !3457, !tbaa !801
  br label %21, !dbg !3455

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3434
  ret i32 %22, !dbg !3458
}

; Function Attrs: nounwind
declare !dbg !3459 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3463 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3501, metadata !DIExpression()), !dbg !3505
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3502, metadata !DIExpression()), !dbg !3505
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3506
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3503, metadata !DIExpression()), !dbg !3505
  %3 = icmp slt i32 %2, 0, !dbg !3507
  br i1 %3, label %4, label %6, !dbg !3509

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3510
  br label %24, !dbg !3511

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3512
  %8 = icmp eq i32 %7, 0, !dbg !3512
  br i1 %8, label %13, label %9, !dbg !3514

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3515
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3516
  %12 = icmp eq i64 %11, -1, !dbg !3517
  br i1 %12, label %16, label %13, !dbg !3518

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3519
  %15 = icmp eq i32 %14, 0, !dbg !3519
  br i1 %15, label %16, label %18, !dbg !3520

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3502, metadata !DIExpression()), !dbg !3505
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3504, metadata !DIExpression()), !dbg !3505
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3521
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3504, metadata !DIExpression()), !dbg !3505
  br label %24, !dbg !3522

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3523
  %20 = load i32, ptr %19, align 4, !dbg !3523, !tbaa !801
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3502, metadata !DIExpression()), !dbg !3505
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3504, metadata !DIExpression()), !dbg !3505
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3521
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3504, metadata !DIExpression()), !dbg !3505
  %22 = icmp eq i32 %20, 0, !dbg !3524
  br i1 %22, label %24, label %23, !dbg !3522

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3526, !tbaa !801
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3504, metadata !DIExpression()), !dbg !3505
  br label %24, !dbg !3528

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3505
  ret i32 %25, !dbg !3529
}

; Function Attrs: nofree nounwind
declare !dbg !3530 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !3531 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3532 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3533 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3536 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3574, metadata !DIExpression()), !dbg !3575
  %2 = icmp eq ptr %0, null, !dbg !3576
  br i1 %2, label %6, label %3, !dbg !3578

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3579
  %5 = icmp eq i32 %4, 0, !dbg !3579
  br i1 %5, label %6, label %8, !dbg !3580

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3581
  br label %16, !dbg !3582

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3583, metadata !DIExpression()), !dbg !3588
  %9 = load i32, ptr %0, align 8, !dbg !3590, !tbaa !3442
  %10 = and i32 %9, 256, !dbg !3592
  %11 = icmp eq i32 %10, 0, !dbg !3592
  br i1 %11, label %14, label %12, !dbg !3593

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3594
  br label %14, !dbg !3594

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3595
  br label %16, !dbg !3596

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3575
  ret i32 %17, !dbg !3597
}

; Function Attrs: nofree nounwind
declare !dbg !3598 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3599 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3638, metadata !DIExpression()), !dbg !3644
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3639, metadata !DIExpression()), !dbg !3644
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3640, metadata !DIExpression()), !dbg !3644
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3645
  %5 = load ptr, ptr %4, align 8, !dbg !3645, !tbaa !3646
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3647
  %7 = load ptr, ptr %6, align 8, !dbg !3647, !tbaa !3648
  %8 = icmp eq ptr %5, %7, !dbg !3649
  br i1 %8, label %9, label %27, !dbg !3650

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3651
  %11 = load ptr, ptr %10, align 8, !dbg !3651, !tbaa !1172
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3652
  %13 = load ptr, ptr %12, align 8, !dbg !3652, !tbaa !3653
  %14 = icmp eq ptr %11, %13, !dbg !3654
  br i1 %14, label %15, label %27, !dbg !3655

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3656
  %17 = load ptr, ptr %16, align 8, !dbg !3656, !tbaa !3657
  %18 = icmp eq ptr %17, null, !dbg !3658
  br i1 %18, label %19, label %27, !dbg !3659

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3660
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3661
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3641, metadata !DIExpression()), !dbg !3662
  %22 = icmp eq i64 %21, -1, !dbg !3663
  br i1 %22, label %29, label %23, !dbg !3665

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3666, !tbaa !3442
  %25 = and i32 %24, -17, !dbg !3666
  store i32 %25, ptr %0, align 8, !dbg !3666, !tbaa !3442
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3667
  store i64 %21, ptr %26, align 8, !dbg !3668, !tbaa !3669
  br label %29, !dbg !3670

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3671
  br label %29, !dbg !3672

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3644
  ret i32 %30, !dbg !3673
}

; Function Attrs: nofree nounwind
declare !dbg !3674 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3677 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3682, metadata !DIExpression()), !dbg !3687
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3683, metadata !DIExpression()), !dbg !3687
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3684, metadata !DIExpression()), !dbg !3687
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3685, metadata !DIExpression()), !dbg !3687
  %5 = icmp eq ptr %1, null, !dbg !3688
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3690
  %7 = select i1 %5, ptr @.str.117, ptr %1, !dbg !3690
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3690
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3684, metadata !DIExpression()), !dbg !3687
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3683, metadata !DIExpression()), !dbg !3687
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3682, metadata !DIExpression()), !dbg !3687
  %9 = icmp eq ptr %3, null, !dbg !3691
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3693
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3685, metadata !DIExpression()), !dbg !3687
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3694
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3686, metadata !DIExpression()), !dbg !3687
  %12 = icmp ult i64 %11, -3, !dbg !3695
  br i1 %12, label %13, label %17, !dbg !3697

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !3698
  %15 = icmp eq i32 %14, 0, !dbg !3698
  br i1 %15, label %16, label %29, !dbg !3699

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3700, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata ptr %10, metadata !3707, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i32 0, metadata !3710, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i64 8, metadata !3711, metadata !DIExpression()), !dbg !3712
  store i64 0, ptr %10, align 1, !dbg !3714
  br label %29, !dbg !3715

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3716
  br i1 %18, label %19, label %20, !dbg !3718

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !3719
  unreachable, !dbg !3719

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3720

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !3722
  br i1 %23, label %29, label %24, !dbg !3723

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3724
  br i1 %25, label %29, label %26, !dbg !3727

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3728, !tbaa !810
  %28 = zext i8 %27 to i32, !dbg !3729
  store i32 %28, ptr %6, align 4, !dbg !3730, !tbaa !801
  br label %29, !dbg !3731

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3687
  ret i64 %30, !dbg !3732
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3733 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3739 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3741, metadata !DIExpression()), !dbg !3745
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3742, metadata !DIExpression()), !dbg !3745
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3743, metadata !DIExpression()), !dbg !3745
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3746
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3746
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3744, metadata !DIExpression()), !dbg !3745
  br i1 %5, label %6, label %8, !dbg !3748

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3749
  store i32 12, ptr %7, align 4, !dbg !3751, !tbaa !801
  br label %12, !dbg !3752

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3746
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3744, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata ptr %0, metadata !3753, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 %9, metadata !3756, metadata !DIExpression()), !dbg !3757
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3759
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3760
  br label %12, !dbg !3761

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3745
  ret ptr %13, !dbg !3762
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3763 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !3772
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3768, metadata !DIExpression(), metadata !3772, metadata ptr %2, metadata !DIExpression()), !dbg !3773
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3767, metadata !DIExpression()), !dbg !3773
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3774
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3775
  %4 = icmp eq i32 %3, 0, !dbg !3775
  br i1 %4, label %5, label %12, !dbg !3777

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3778, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata !772, metadata !3781, metadata !DIExpression()), !dbg !3782
  %6 = load i16, ptr %2, align 16, !dbg !3785
  %7 = icmp eq i16 %6, 67, !dbg !3785
  br i1 %7, label %11, label %8, !dbg !3786

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3778, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata ptr @.str.1.122, metadata !3781, metadata !DIExpression()), !dbg !3787
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.122, i64 6), !dbg !3789
  %10 = icmp eq i32 %9, 0, !dbg !3790
  br i1 %10, label %11, label %12, !dbg !3791

11:                                               ; preds = %8, %5
  br label %12, !dbg !3792

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3773
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3793
  ret i1 %13, !dbg !3793
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3794 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3798, metadata !DIExpression()), !dbg !3801
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3799, metadata !DIExpression()), !dbg !3801
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3800, metadata !DIExpression()), !dbg !3801
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3802
  ret i32 %4, !dbg !3803
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3804 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3808, metadata !DIExpression()), !dbg !3809
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3810
  ret ptr %2, !dbg !3811
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3812 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3814, metadata !DIExpression()), !dbg !3816
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3817
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3815, metadata !DIExpression()), !dbg !3816
  ret ptr %2, !dbg !3818
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3819 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3821, metadata !DIExpression()), !dbg !3828
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3822, metadata !DIExpression()), !dbg !3828
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3823, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i32 %0, metadata !3814, metadata !DIExpression()), !dbg !3829
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3831
  call void @llvm.dbg.value(metadata ptr %4, metadata !3815, metadata !DIExpression()), !dbg !3829
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3824, metadata !DIExpression()), !dbg !3828
  %5 = icmp eq ptr %4, null, !dbg !3832
  br i1 %5, label %6, label %9, !dbg !3833

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3834
  br i1 %7, label %19, label %8, !dbg !3837

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3838, !tbaa !810
  br label %19, !dbg !3839

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3840
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3825, metadata !DIExpression()), !dbg !3841
  %11 = icmp ult i64 %10, %2, !dbg !3842
  br i1 %11, label %12, label %14, !dbg !3844

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3845
  call void @llvm.dbg.value(metadata ptr %1, metadata !3847, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata ptr %4, metadata !3850, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i64 %13, metadata !3851, metadata !DIExpression()), !dbg !3852
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !3854
  br label %19, !dbg !3855

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3856
  br i1 %15, label %19, label %16, !dbg !3859

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3860
  call void @llvm.dbg.value(metadata ptr %1, metadata !3847, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata ptr %4, metadata !3850, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i64 %17, metadata !3851, metadata !DIExpression()), !dbg !3862
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3864
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3865
  store i8 0, ptr %18, align 1, !dbg !3866, !tbaa !810
  br label %19, !dbg !3867

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3868
  ret i32 %20, !dbg !3869
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

!llvm.dbg.cu = !{!70, !293, !297, !312, !631, !663, !366, !387, !401, !449, !665, !623, !671, !706, !708, !710, !712, !714, !647, !716, !718, !722, !724}
!llvm.ident = !{!726, !726, !726, !726, !726, !726, !726, !726, !726, !726, !726, !726, !726, !726, !726, !726, !726, !726, !726, !726, !726, !726, !726}
!llvm.module.flags = !{!727, !728, !729, !730, !731, !732, !733}

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
!70 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/hostid.o -MD -MP -MF src/.deps/hostid.Tpo -c src/hostid.c -o src/.hostid.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !71, retainedTypes: !88, globals: !96, splitDebugInlining: false, nameTableKind: None)
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
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 18, baseType: !94)
!93 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
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
!293 = distinct !DICompileUnit(language: DW_LANG_C11, file: !290, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !294, splitDebugInlining: false, nameTableKind: None)
!294 = !{!288, !291}
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "file_name", scope: !297, file: !298, line: 45, type: !68, isLocal: true, isDefinition: true)
!297 = distinct !DICompileUnit(language: DW_LANG_C11, file: !298, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !299, splitDebugInlining: false, nameTableKind: None)
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
!311 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !312, file: !313, line: 66, type: !358, isLocal: false, isDefinition: true)
!312 = distinct !DICompileUnit(language: DW_LANG_C11, file: !313, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !314, globals: !315, splitDebugInlining: false, nameTableKind: None)
!313 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!314 = !{!89, !95}
!315 = !{!316, !318, !337, !339, !341, !343, !310, !345, !347, !349, !351, !356}
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !313, line: 272, type: !99, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "old_file_name", scope: !320, file: !313, line: 304, type: !68, isLocal: true, isDefinition: true)
!320 = distinct !DISubprogram(name: "verror_at_line", scope: !313, file: !313, line: 298, type: !321, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !330)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !90, !90, !68, !74, !68, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !325)
!325 = !{!326, !327, !328, !329}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !324, file: !313, baseType: !74, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !324, file: !313, baseType: !74, size: 32, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !324, file: !313, baseType: !89, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !324, file: !313, baseType: !89, size: 64, offset: 128)
!330 = !{!331, !332, !333, !334, !335, !336}
!331 = !DILocalVariable(name: "status", arg: 1, scope: !320, file: !313, line: 298, type: !90)
!332 = !DILocalVariable(name: "errnum", arg: 2, scope: !320, file: !313, line: 298, type: !90)
!333 = !DILocalVariable(name: "file_name", arg: 3, scope: !320, file: !313, line: 298, type: !68)
!334 = !DILocalVariable(name: "line_number", arg: 4, scope: !320, file: !313, line: 298, type: !74)
!335 = !DILocalVariable(name: "message", arg: 5, scope: !320, file: !313, line: 298, type: !68)
!336 = !DILocalVariable(name: "args", arg: 6, scope: !320, file: !313, line: 298, type: !323)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "old_line_number", scope: !320, file: !313, line: 305, type: !74, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !313, line: 338, type: !106, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !313, line: 346, type: !135, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !313, line: 346, type: !113, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "error_message_count", scope: !312, file: !313, line: 69, type: !74, isLocal: false, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !312, file: !313, line: 295, type: !90, isLocal: false, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !313, line: 208, type: !14, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !313, line: 208, type: !353, isLocal: true, isDefinition: true)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 21)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !313, line: 214, type: !99, isLocal: true, isDefinition: true)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{null}
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !363, line: 60, type: !113, isLocal: true, isDefinition: true)
!363 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(name: "long_options", scope: !366, file: !363, line: 34, type: !375, isLocal: true, isDefinition: true)
!366 = distinct !DICompileUnit(language: DW_LANG_C11, file: !363, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-long-options.o -MD -MP -MF lib/.deps/libcoreutils_a-long-options.Tpo -c lib/long-options.c -o lib/.libcoreutils_a-long-options.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !367, globals: !368, splitDebugInlining: false, nameTableKind: None)
!367 = !{!89}
!368 = !{!361, !369, !371, !373, !364}
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !363, line: 112, type: !29, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !363, line: 36, type: !99, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !363, line: 37, type: !135, isLocal: true, isDefinition: true)
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
!387 = distinct !DICompileUnit(language: DW_LANG_C11, file: !388, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !389, globals: !390, splitDebugInlining: false, nameTableKind: None)
!388 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!389 = !{!89, !237}
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
!401 = distinct !DICompileUnit(language: DW_LANG_C11, file: !398, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !402, splitDebugInlining: false, nameTableKind: None)
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
!449 = distinct !DICompileUnit(language: DW_LANG_C11, file: !428, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !450, retainedTypes: !470, globals: !471, splitDebugInlining: false, nameTableKind: None)
!450 = !{!451, !465, !72}
!451 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !452, line: 42, baseType: !74, size: 32, elements: !453)
!452 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
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
!470 = !{!89, !90, !91, !92}
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
!623 = distinct !DICompileUnit(language: DW_LANG_C11, file: !624, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !625, splitDebugInlining: false, nameTableKind: None)
!624 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!625 = !{!621}
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 376, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 47)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(name: "exit_failure", scope: !631, file: !632, line: 24, type: !634, isLocal: false, isDefinition: true)
!631 = distinct !DICompileUnit(language: DW_LANG_C11, file: !632, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !633, splitDebugInlining: false, nameTableKind: None)
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
!647 = distinct !DICompileUnit(language: DW_LANG_C11, file: !644, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !648, globals: !649, splitDebugInlining: false, nameTableKind: None)
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
!663 = distinct !DICompileUnit(language: DW_LANG_C11, file: !664, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!664 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!665 = distinct !DICompileUnit(language: DW_LANG_C11, file: !541, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !666, retainedTypes: !367, globals: !670, splitDebugInlining: false, nameTableKind: None)
!666 = !{!667}
!667 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !541, line: 40, baseType: !74, size: 32, elements: !668)
!668 = !{!669}
!669 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!670 = !{!539, !542, !544, !546, !548, !550, !555, !560, !562, !567, !572, !577, !582, !584, !589, !594, !599, !604, !606, !608, !610, !612, !614, !616}
!671 = distinct !DICompileUnit(language: DW_LANG_C11, file: !672, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !673, retainedTypes: !705, splitDebugInlining: false, nameTableKind: None)
!672 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!673 = !{!674, !686}
!674 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !675, file: !672, line: 188, baseType: !74, size: 32, elements: !684)
!675 = distinct !DISubprogram(name: "x2nrealloc", scope: !672, file: !672, line: 176, type: !676, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !679)
!676 = !DISubroutineType(types: !677)
!677 = !{!89, !89, !678, !92}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!679 = !{!680, !681, !682, !683}
!680 = !DILocalVariable(name: "p", arg: 1, scope: !675, file: !672, line: 176, type: !89)
!681 = !DILocalVariable(name: "pn", arg: 2, scope: !675, file: !672, line: 176, type: !678)
!682 = !DILocalVariable(name: "s", arg: 3, scope: !675, file: !672, line: 176, type: !92)
!683 = !DILocalVariable(name: "n", scope: !675, file: !672, line: 178, type: !92)
!684 = !{!685}
!685 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!686 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !687, file: !672, line: 228, baseType: !74, size: 32, elements: !684)
!687 = distinct !DISubprogram(name: "xpalloc", scope: !672, file: !672, line: 223, type: !688, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !695)
!688 = !DISubroutineType(types: !689)
!689 = !{!89, !89, !690, !691, !693, !691}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !692, line: 130, baseType: !693)
!692 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !694, line: 18, baseType: !258)
!694 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704}
!696 = !DILocalVariable(name: "pa", arg: 1, scope: !687, file: !672, line: 223, type: !89)
!697 = !DILocalVariable(name: "pn", arg: 2, scope: !687, file: !672, line: 223, type: !690)
!698 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !687, file: !672, line: 223, type: !691)
!699 = !DILocalVariable(name: "n_max", arg: 4, scope: !687, file: !672, line: 223, type: !693)
!700 = !DILocalVariable(name: "s", arg: 5, scope: !687, file: !672, line: 223, type: !691)
!701 = !DILocalVariable(name: "n0", scope: !687, file: !672, line: 230, type: !691)
!702 = !DILocalVariable(name: "n", scope: !687, file: !672, line: 237, type: !691)
!703 = !DILocalVariable(name: "nbytes", scope: !687, file: !672, line: 248, type: !691)
!704 = !DILocalVariable(name: "adjusted_nbytes", scope: !687, file: !672, line: 252, type: !691)
!705 = !{!237, !89}
!706 = distinct !DICompileUnit(language: DW_LANG_C11, file: !637, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !707, splitDebugInlining: false, nameTableKind: None)
!707 = !{!635, !638, !640}
!708 = distinct !DICompileUnit(language: DW_LANG_C11, file: !709, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!709 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!710 = distinct !DICompileUnit(language: DW_LANG_C11, file: !711, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!711 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!712 = distinct !DICompileUnit(language: DW_LANG_C11, file: !713, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !367, splitDebugInlining: false, nameTableKind: None)
!713 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!714 = distinct !DICompileUnit(language: DW_LANG_C11, file: !715, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !367, splitDebugInlining: false, nameTableKind: None)
!715 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!716 = distinct !DICompileUnit(language: DW_LANG_C11, file: !717, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !367, splitDebugInlining: false, nameTableKind: None)
!717 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!718 = distinct !DICompileUnit(language: DW_LANG_C11, file: !662, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !719, splitDebugInlining: false, nameTableKind: None)
!719 = !{!720, !660}
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !662, line: 35, type: !113, isLocal: true, isDefinition: true)
!722 = distinct !DICompileUnit(language: DW_LANG_C11, file: !723, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!723 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!724 = distinct !DICompileUnit(language: DW_LANG_C11, file: !725, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !367, splitDebugInlining: false, nameTableKind: None)
!725 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!726 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!727 = !{i32 7, !"Dwarf Version", i32 5}
!728 = !{i32 2, !"Debug Info Version", i32 3}
!729 = !{i32 1, !"wchar_size", i32 4}
!730 = !{i32 8, !"PIC Level", i32 2}
!731 = !{i32 7, !"PIE Level", i32 2}
!732 = !{i32 7, !"uwtable", i32 2}
!733 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
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
!772 = !{}
!773 = !DILocation(line: 857, column: 3, scope: !754, inlinedAt: !771)
!774 = !DILocation(line: 861, column: 29, scope: !754, inlinedAt: !771)
!775 = !DILocation(line: 862, column: 7, scope: !776, inlinedAt: !771)
!776 = distinct !DILexicalBlock(scope: !754, file: !65, line: 862, column: 7)
!777 = !DILocation(line: 862, column: 19, scope: !776, inlinedAt: !771)
!778 = !DILocation(line: 862, column: 22, scope: !776, inlinedAt: !771)
!779 = !DILocation(line: 862, column: 7, scope: !754, inlinedAt: !771)
!780 = !DILocation(line: 868, column: 7, scope: !781, inlinedAt: !771)
!781 = distinct !DILexicalBlock(scope: !776, file: !65, line: 863, column: 5)
!782 = !DILocation(line: 870, column: 5, scope: !781, inlinedAt: !771)
!783 = !DILocation(line: 875, column: 3, scope: !754, inlinedAt: !771)
!784 = !DILocation(line: 877, column: 3, scope: !754, inlinedAt: !771)
!785 = !DILocation(line: 49, column: 3, scope: !734)
!786 = !DISubprogram(name: "dcgettext", scope: !787, file: !787, line: 51, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!787 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!788 = !DISubroutineType(types: !789)
!789 = !{!237, !68, !68, !90}
!790 = !DISubprogram(name: "__fprintf_chk", scope: !791, file: !791, line: 93, type: !792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!791 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!792 = !DISubroutineType(types: !793)
!793 = !{!90, !794, !90, !795, null}
!794 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !229)
!795 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!796 = !DISubprogram(name: "__printf_chk", scope: !791, file: !791, line: 95, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!852 = !DILocation(line: 620, column: 23, scope: !64)
!853 = !DILocation(line: 625, column: 39, scope: !64)
!854 = !DILocation(line: 626, column: 3, scope: !64)
!855 = !DILocation(line: 626, column: 10, scope: !64)
!856 = !DILocation(line: 626, column: 21, scope: !64)
!857 = !DILocation(line: 628, column: 44, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !65, line: 628, column: 11)
!859 = distinct !DILexicalBlock(scope: !64, file: !65, line: 627, column: 5)
!860 = !DILocation(line: 628, column: 32, scope: !858)
!861 = !DILocation(line: 628, column: 49, scope: !858)
!862 = !DILocation(line: 628, column: 11, scope: !859)
!863 = !DILocation(line: 630, column: 11, scope: !864)
!864 = distinct !DILexicalBlock(scope: !859, file: !65, line: 630, column: 11)
!865 = !DILocation(line: 630, column: 11, scope: !859)
!866 = !DILocation(line: 632, column: 26, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !65, line: 632, column: 15)
!868 = distinct !DILexicalBlock(scope: !864, file: !65, line: 631, column: 9)
!869 = !DILocation(line: 632, column: 34, scope: !867)
!870 = !DILocation(line: 632, column: 37, scope: !867)
!871 = !DILocation(line: 632, column: 15, scope: !868)
!872 = !DILocation(line: 636, column: 16, scope: !873)
!873 = distinct !DILexicalBlock(scope: !868, file: !65, line: 636, column: 15)
!874 = !DILocation(line: 636, column: 29, scope: !873)
!875 = !DILocation(line: 640, column: 16, scope: !859)
!876 = distinct !{!876, !854, !877, !848}
!877 = !DILocation(line: 641, column: 5, scope: !64)
!878 = !DILocation(line: 644, column: 3, scope: !64)
!879 = !DILocation(line: 0, scope: !813, inlinedAt: !880)
!880 = distinct !DILocation(line: 648, column: 31, scope: !64)
!881 = !DILocation(line: 0, scope: !813, inlinedAt: !882)
!882 = distinct !DILocation(line: 649, column: 31, scope: !64)
!883 = !DILocation(line: 0, scope: !813, inlinedAt: !884)
!884 = distinct !DILocation(line: 650, column: 31, scope: !64)
!885 = !DILocation(line: 0, scope: !813, inlinedAt: !886)
!886 = distinct !DILocation(line: 651, column: 31, scope: !64)
!887 = !DILocation(line: 0, scope: !813, inlinedAt: !888)
!888 = distinct !DILocation(line: 652, column: 31, scope: !64)
!889 = !DILocation(line: 0, scope: !813, inlinedAt: !890)
!890 = distinct !DILocation(line: 653, column: 31, scope: !64)
!891 = !DILocation(line: 0, scope: !813, inlinedAt: !892)
!892 = distinct !DILocation(line: 654, column: 31, scope: !64)
!893 = !DILocation(line: 0, scope: !813, inlinedAt: !894)
!894 = distinct !DILocation(line: 655, column: 31, scope: !64)
!895 = !DILocation(line: 0, scope: !813, inlinedAt: !896)
!896 = distinct !DILocation(line: 656, column: 31, scope: !64)
!897 = !DILocation(line: 0, scope: !813, inlinedAt: !898)
!898 = distinct !DILocation(line: 657, column: 31, scope: !64)
!899 = !DILocation(line: 663, column: 7, scope: !900)
!900 = distinct !DILexicalBlock(scope: !64, file: !65, line: 663, column: 7)
!901 = !DILocation(line: 664, column: 7, scope: !900)
!902 = !DILocation(line: 664, column: 10, scope: !900)
!903 = !DILocation(line: 663, column: 7, scope: !64)
!904 = !DILocation(line: 669, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !900, file: !65, line: 665, column: 5)
!906 = !DILocation(line: 671, column: 5, scope: !905)
!907 = !DILocation(line: 676, column: 7, scope: !908)
!908 = distinct !DILexicalBlock(scope: !900, file: !65, line: 673, column: 5)
!909 = !DILocation(line: 679, column: 3, scope: !64)
!910 = !DILocation(line: 683, column: 3, scope: !64)
!911 = !DILocation(line: 686, column: 3, scope: !64)
!912 = !DILocation(line: 688, column: 3, scope: !64)
!913 = !DILocation(line: 691, column: 3, scope: !64)
!914 = !DILocation(line: 695, column: 3, scope: !64)
!915 = !DILocation(line: 696, column: 1, scope: !64)
!916 = !DISubprogram(name: "setlocale", scope: !917, file: !917, line: 122, type: !918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!917 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!918 = !DISubroutineType(types: !919)
!919 = !{!237, !90, !68}
!920 = !DISubprogram(name: "strncmp", scope: !921, file: !921, line: 159, type: !922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!921 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!922 = !DISubroutineType(types: !923)
!923 = !{!90, !68, !68, !92}
!924 = !DISubprogram(name: "fputs_unlocked", scope: !925, file: !925, line: 691, type: !926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!925 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!926 = !DISubroutineType(types: !927)
!927 = !{!90, !795, !794}
!928 = !DISubprogram(name: "exit", scope: !929, file: !929, line: 624, type: !735, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!929 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!930 = !DISubprogram(name: "getenv", scope: !929, file: !929, line: 641, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!931 = !DISubroutineType(types: !932)
!932 = !{!237, !68}
!933 = !DISubprogram(name: "strcmp", scope: !921, file: !921, line: 156, type: !934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!934 = !DISubroutineType(types: !935)
!935 = !{!90, !68, !68}
!936 = !DISubprogram(name: "strspn", scope: !921, file: !921, line: 297, type: !937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!937 = !DISubroutineType(types: !938)
!938 = !{!94, !68, !68}
!939 = !DISubprogram(name: "strchr", scope: !921, file: !921, line: 246, type: !940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!940 = !DISubroutineType(types: !941)
!941 = !{!237, !68, !90}
!942 = !DISubprogram(name: "__ctype_b_loc", scope: !73, file: !73, line: 79, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!943 = !DISubroutineType(types: !944)
!944 = !{!945}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!948 = !DISubprogram(name: "strcspn", scope: !921, file: !921, line: 293, type: !937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!949 = !DISubprogram(name: "fwrite_unlocked", scope: !925, file: !925, line: 704, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!950 = !DISubroutineType(types: !951)
!951 = !{!92, !952, !92, !92, !794}
!952 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !953)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!955 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 53, type: !956, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !959)
!956 = !DISubroutineType(types: !957)
!957 = !{!90, !90, !958}
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!959 = !{!960, !961, !962}
!960 = !DILocalVariable(name: "argc", arg: 1, scope: !955, file: !2, line: 53, type: !90)
!961 = !DILocalVariable(name: "argv", arg: 2, scope: !955, file: !2, line: 53, type: !958)
!962 = !DILocalVariable(name: "id", scope: !955, file: !2, line: 76, type: !74)
!963 = !DILocation(line: 0, scope: !955)
!964 = !DILocation(line: 56, column: 21, scope: !955)
!965 = !DILocation(line: 56, column: 3, scope: !955)
!966 = !DILocation(line: 57, column: 3, scope: !955)
!967 = !DILocation(line: 58, column: 3, scope: !955)
!968 = !DILocation(line: 59, column: 3, scope: !955)
!969 = !DILocation(line: 61, column: 3, scope: !955)
!970 = !DILocation(line: 64, column: 36, scope: !955)
!971 = !DILocation(line: 64, column: 58, scope: !955)
!972 = !DILocation(line: 63, column: 3, scope: !955)
!973 = !DILocation(line: 67, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !955, file: !2, line: 67, column: 7)
!975 = !DILocation(line: 67, column: 14, scope: !974)
!976 = !DILocation(line: 67, column: 7, scope: !955)
!977 = !DILocation(line: 69, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !974, file: !2, line: 68, column: 5)
!979 = !DILocation(line: 70, column: 7, scope: !978)
!980 = !DILocation(line: 76, column: 21, scope: !955)
!981 = !DILocation(line: 78, column: 3, scope: !955)
!982 = !DILocation(line: 80, column: 3, scope: !955)
!983 = !DISubprogram(name: "bindtextdomain", scope: !787, file: !787, line: 86, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!984 = !DISubroutineType(types: !985)
!985 = !{!237, !68, !68}
!986 = !DISubprogram(name: "textdomain", scope: !787, file: !787, line: 82, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!987 = !DISubprogram(name: "atexit", scope: !929, file: !929, line: 602, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!988 = !DISubroutineType(types: !989)
!989 = !{!90, !358}
!990 = !DISubprogram(name: "gethostid", scope: !991, file: !991, line: 1002, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!991 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!992 = !DISubroutineType(types: !993)
!993 = !{!258}
!994 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !298, file: !298, line: 50, type: !755, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !995)
!995 = !{!996}
!996 = !DILocalVariable(name: "file", arg: 1, scope: !994, file: !298, line: 50, type: !68)
!997 = !DILocation(line: 0, scope: !994)
!998 = !DILocation(line: 52, column: 13, scope: !994)
!999 = !DILocation(line: 53, column: 1, scope: !994)
!1000 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !298, file: !298, line: 87, type: !1001, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1003)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{null, !216}
!1003 = !{!1004}
!1004 = !DILocalVariable(name: "ignore", arg: 1, scope: !1000, file: !298, line: 87, type: !216)
!1005 = !DILocation(line: 0, scope: !1000)
!1006 = !DILocation(line: 89, column: 16, scope: !1000)
!1007 = !{!1008, !1008, i64 0}
!1008 = !{!"_Bool", !747, i64 0}
!1009 = !DILocation(line: 90, column: 1, scope: !1000)
!1010 = distinct !DISubprogram(name: "close_stdout", scope: !298, file: !298, line: 116, type: !359, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1011)
!1011 = !{!1012}
!1012 = !DILocalVariable(name: "write_error", scope: !1013, file: !298, line: 121, type: !68)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !298, line: 120, column: 5)
!1014 = distinct !DILexicalBlock(scope: !1010, file: !298, line: 118, column: 7)
!1015 = !DILocation(line: 118, column: 21, scope: !1014)
!1016 = !DILocation(line: 118, column: 7, scope: !1014)
!1017 = !DILocation(line: 118, column: 29, scope: !1014)
!1018 = !DILocation(line: 119, column: 7, scope: !1014)
!1019 = !DILocation(line: 119, column: 12, scope: !1014)
!1020 = !{i8 0, i8 2}
!1021 = !DILocation(line: 119, column: 25, scope: !1014)
!1022 = !DILocation(line: 119, column: 28, scope: !1014)
!1023 = !DILocation(line: 119, column: 34, scope: !1014)
!1024 = !DILocation(line: 118, column: 7, scope: !1010)
!1025 = !DILocation(line: 121, column: 33, scope: !1013)
!1026 = !DILocation(line: 0, scope: !1013)
!1027 = !DILocation(line: 122, column: 11, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1013, file: !298, line: 122, column: 11)
!1029 = !DILocation(line: 0, scope: !1028)
!1030 = !DILocation(line: 122, column: 11, scope: !1013)
!1031 = !DILocation(line: 123, column: 9, scope: !1028)
!1032 = !DILocation(line: 126, column: 9, scope: !1028)
!1033 = !DILocation(line: 128, column: 14, scope: !1013)
!1034 = !DILocation(line: 128, column: 7, scope: !1013)
!1035 = !DILocation(line: 133, column: 42, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1010, file: !298, line: 133, column: 7)
!1037 = !DILocation(line: 133, column: 28, scope: !1036)
!1038 = !DILocation(line: 133, column: 50, scope: !1036)
!1039 = !DILocation(line: 133, column: 7, scope: !1010)
!1040 = !DILocation(line: 134, column: 12, scope: !1036)
!1041 = !DILocation(line: 134, column: 5, scope: !1036)
!1042 = !DILocation(line: 135, column: 1, scope: !1010)
!1043 = !DISubprogram(name: "__errno_location", scope: !1044, file: !1044, line: 37, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1044 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!383}
!1047 = !DISubprogram(name: "_exit", scope: !991, file: !991, line: 624, type: !735, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1048 = distinct !DISubprogram(name: "verror", scope: !313, file: !313, line: 251, type: !1049, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1051)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !90, !90, !68, !323}
!1051 = !{!1052, !1053, !1054, !1055}
!1052 = !DILocalVariable(name: "status", arg: 1, scope: !1048, file: !313, line: 251, type: !90)
!1053 = !DILocalVariable(name: "errnum", arg: 2, scope: !1048, file: !313, line: 251, type: !90)
!1054 = !DILocalVariable(name: "message", arg: 3, scope: !1048, file: !313, line: 251, type: !68)
!1055 = !DILocalVariable(name: "args", arg: 4, scope: !1048, file: !313, line: 251, type: !323)
!1056 = !DILocation(line: 0, scope: !1048)
!1057 = !DILocation(line: 261, column: 3, scope: !1048)
!1058 = !DILocation(line: 265, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1048, file: !313, line: 265, column: 7)
!1060 = !DILocation(line: 265, column: 7, scope: !1048)
!1061 = !DILocation(line: 266, column: 5, scope: !1059)
!1062 = !DILocation(line: 272, column: 7, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !313, line: 268, column: 5)
!1064 = !DILocation(line: 276, column: 3, scope: !1048)
!1065 = !DILocation(line: 282, column: 1, scope: !1048)
!1066 = distinct !DISubprogram(name: "flush_stdout", scope: !313, file: !313, line: 163, type: !359, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1067)
!1067 = !{!1068}
!1068 = !DILocalVariable(name: "stdout_fd", scope: !1066, file: !313, line: 166, type: !90)
!1069 = !DILocation(line: 0, scope: !1066)
!1070 = !DILocalVariable(name: "fd", arg: 1, scope: !1071, file: !313, line: 145, type: !90)
!1071 = distinct !DISubprogram(name: "is_open", scope: !313, file: !313, line: 145, type: !1072, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!90, !90}
!1074 = !{!1070}
!1075 = !DILocation(line: 0, scope: !1071, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 182, column: 25, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1066, file: !313, line: 182, column: 7)
!1078 = !DILocation(line: 157, column: 15, scope: !1071, inlinedAt: !1076)
!1079 = !DILocation(line: 157, column: 12, scope: !1071, inlinedAt: !1076)
!1080 = !DILocation(line: 182, column: 7, scope: !1066)
!1081 = !DILocation(line: 184, column: 5, scope: !1077)
!1082 = !DILocation(line: 185, column: 1, scope: !1066)
!1083 = distinct !DISubprogram(name: "error_tail", scope: !313, file: !313, line: 219, type: !1049, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1084)
!1084 = !{!1085, !1086, !1087, !1088}
!1085 = !DILocalVariable(name: "status", arg: 1, scope: !1083, file: !313, line: 219, type: !90)
!1086 = !DILocalVariable(name: "errnum", arg: 2, scope: !1083, file: !313, line: 219, type: !90)
!1087 = !DILocalVariable(name: "message", arg: 3, scope: !1083, file: !313, line: 219, type: !68)
!1088 = !DILocalVariable(name: "args", arg: 4, scope: !1083, file: !313, line: 219, type: !323)
!1089 = distinct !DIAssignID()
!1090 = !DILocation(line: 0, scope: !1083)
!1091 = !DILocation(line: 229, column: 13, scope: !1083)
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
!1135 = distinct !DILocation(line: 229, column: 3, scope: !1083)
!1136 = !DILocation(line: 135, column: 10, scope: !1093, inlinedAt: !1135)
!1137 = !DILocation(line: 232, column: 3, scope: !1083)
!1138 = !DILocation(line: 233, column: 7, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1083, file: !313, line: 233, column: 7)
!1140 = !DILocation(line: 233, column: 7, scope: !1083)
!1141 = !DILocalVariable(name: "errbuf", scope: !1142, file: !313, line: 193, type: !1146)
!1142 = distinct !DISubprogram(name: "print_errno_message", scope: !313, file: !313, line: 188, type: !735, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1143)
!1143 = !{!1144, !1145, !1141}
!1144 = !DILocalVariable(name: "errnum", arg: 1, scope: !1142, file: !313, line: 188, type: !90)
!1145 = !DILocalVariable(name: "s", scope: !1142, file: !313, line: 190, type: !68)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1147)
!1147 = !{!1148}
!1148 = !DISubrange(count: 1024)
!1149 = !DILocation(line: 0, scope: !1142, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 234, column: 5, scope: !1139)
!1151 = !DILocation(line: 193, column: 3, scope: !1142, inlinedAt: !1150)
!1152 = !DILocation(line: 195, column: 7, scope: !1142, inlinedAt: !1150)
!1153 = !DILocation(line: 207, column: 9, scope: !1154, inlinedAt: !1150)
!1154 = distinct !DILexicalBlock(scope: !1142, file: !313, line: 207, column: 7)
!1155 = !DILocation(line: 207, column: 7, scope: !1142, inlinedAt: !1150)
!1156 = !DILocation(line: 208, column: 9, scope: !1154, inlinedAt: !1150)
!1157 = !DILocation(line: 208, column: 5, scope: !1154, inlinedAt: !1150)
!1158 = !DILocation(line: 214, column: 3, scope: !1142, inlinedAt: !1150)
!1159 = !DILocation(line: 216, column: 1, scope: !1142, inlinedAt: !1150)
!1160 = !DILocation(line: 234, column: 5, scope: !1139)
!1161 = !DILocation(line: 238, column: 3, scope: !1083)
!1162 = !DILocalVariable(name: "__c", arg: 1, scope: !1163, file: !1164, line: 101, type: !90)
!1163 = distinct !DISubprogram(name: "putc_unlocked", scope: !1164, file: !1164, line: 101, type: !1165, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1167)
!1164 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!90, !90, !1097}
!1167 = !{!1162, !1168}
!1168 = !DILocalVariable(name: "__stream", arg: 2, scope: !1163, file: !1164, line: 101, type: !1097)
!1169 = !DILocation(line: 0, scope: !1163, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 238, column: 3, scope: !1083)
!1171 = !DILocation(line: 103, column: 10, scope: !1163, inlinedAt: !1170)
!1172 = !{!1173, !746, i64 40}
!1173 = !{!"_IO_FILE", !802, i64 0, !746, i64 8, !746, i64 16, !746, i64 24, !746, i64 32, !746, i64 40, !746, i64 48, !746, i64 56, !746, i64 64, !746, i64 72, !746, i64 80, !746, i64 88, !746, i64 96, !746, i64 104, !802, i64 112, !802, i64 116, !1174, i64 120, !843, i64 128, !747, i64 130, !747, i64 131, !746, i64 136, !1174, i64 144, !746, i64 152, !746, i64 160, !746, i64 168, !746, i64 176, !1174, i64 184, !802, i64 192, !747, i64 196}
!1174 = !{!"long", !747, i64 0}
!1175 = !{!1173, !746, i64 48}
!1176 = !{!"branch_weights", i32 2000, i32 1}
!1177 = !DILocation(line: 240, column: 3, scope: !1083)
!1178 = !DILocation(line: 241, column: 7, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1083, file: !313, line: 241, column: 7)
!1180 = !DILocation(line: 241, column: 7, scope: !1083)
!1181 = !DILocation(line: 242, column: 5, scope: !1179)
!1182 = !DILocation(line: 243, column: 1, scope: !1083)
!1183 = !DISubprogram(name: "__vfprintf_chk", scope: !791, file: !791, line: 96, type: !1184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!90, !1096, !90, !795, !323}
!1186 = !DISubprogram(name: "strerror_r", scope: !921, file: !921, line: 444, type: !1187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!237, !90, !237, !92}
!1189 = !DISubprogram(name: "__overflow", scope: !925, file: !925, line: 886, type: !1190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!90, !1097, !90}
!1192 = !DISubprogram(name: "fflush_unlocked", scope: !925, file: !925, line: 239, type: !1193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!90, !1097}
!1195 = !DISubprogram(name: "fcntl", scope: !1196, file: !1196, line: 149, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1196 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!90, !90, !90, null}
!1199 = distinct !DISubprogram(name: "error", scope: !313, file: !313, line: 285, type: !1200, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1202)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !90, !90, !68, null}
!1202 = !{!1203, !1204, !1205, !1206}
!1203 = !DILocalVariable(name: "status", arg: 1, scope: !1199, file: !313, line: 285, type: !90)
!1204 = !DILocalVariable(name: "errnum", arg: 2, scope: !1199, file: !313, line: 285, type: !90)
!1205 = !DILocalVariable(name: "message", arg: 3, scope: !1199, file: !313, line: 285, type: !68)
!1206 = !DILocalVariable(name: "ap", scope: !1199, file: !313, line: 287, type: !1207)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !925, line: 52, baseType: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1209, line: 12, baseType: !1210)
!1209 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !313, baseType: !1211)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 192, elements: !30)
!1212 = distinct !DIAssignID()
!1213 = !DILocation(line: 0, scope: !1199)
!1214 = !DILocation(line: 287, column: 3, scope: !1199)
!1215 = !DILocation(line: 288, column: 3, scope: !1199)
!1216 = !DILocation(line: 289, column: 3, scope: !1199)
!1217 = !DILocation(line: 290, column: 3, scope: !1199)
!1218 = !DILocation(line: 291, column: 1, scope: !1199)
!1219 = !DILocation(line: 0, scope: !320)
!1220 = !DILocation(line: 302, column: 7, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !320, file: !313, line: 302, column: 7)
!1222 = !DILocation(line: 302, column: 7, scope: !320)
!1223 = !DILocation(line: 307, column: 11, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !313, line: 307, column: 11)
!1225 = distinct !DILexicalBlock(scope: !1221, file: !313, line: 303, column: 5)
!1226 = !DILocation(line: 307, column: 27, scope: !1224)
!1227 = !DILocation(line: 308, column: 11, scope: !1224)
!1228 = !DILocation(line: 308, column: 28, scope: !1224)
!1229 = !DILocation(line: 308, column: 25, scope: !1224)
!1230 = !DILocation(line: 309, column: 15, scope: !1224)
!1231 = !DILocation(line: 309, column: 33, scope: !1224)
!1232 = !DILocation(line: 310, column: 19, scope: !1224)
!1233 = !DILocation(line: 311, column: 22, scope: !1224)
!1234 = !DILocation(line: 311, column: 56, scope: !1224)
!1235 = !DILocation(line: 307, column: 11, scope: !1225)
!1236 = !DILocation(line: 316, column: 21, scope: !1225)
!1237 = !DILocation(line: 317, column: 23, scope: !1225)
!1238 = !DILocation(line: 318, column: 5, scope: !1225)
!1239 = !DILocation(line: 327, column: 3, scope: !320)
!1240 = !DILocation(line: 331, column: 7, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !320, file: !313, line: 331, column: 7)
!1242 = !DILocation(line: 331, column: 7, scope: !320)
!1243 = !DILocation(line: 332, column: 5, scope: !1241)
!1244 = !DILocation(line: 338, column: 7, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !313, line: 334, column: 5)
!1246 = !DILocation(line: 346, column: 3, scope: !320)
!1247 = !DILocation(line: 350, column: 3, scope: !320)
!1248 = !DILocation(line: 356, column: 1, scope: !320)
!1249 = distinct !DISubprogram(name: "error_at_line", scope: !313, file: !313, line: 359, type: !1250, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1252)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{null, !90, !90, !68, !74, !68, null}
!1252 = !{!1253, !1254, !1255, !1256, !1257, !1258}
!1253 = !DILocalVariable(name: "status", arg: 1, scope: !1249, file: !313, line: 359, type: !90)
!1254 = !DILocalVariable(name: "errnum", arg: 2, scope: !1249, file: !313, line: 359, type: !90)
!1255 = !DILocalVariable(name: "file_name", arg: 3, scope: !1249, file: !313, line: 359, type: !68)
!1256 = !DILocalVariable(name: "line_number", arg: 4, scope: !1249, file: !313, line: 360, type: !74)
!1257 = !DILocalVariable(name: "message", arg: 5, scope: !1249, file: !313, line: 360, type: !68)
!1258 = !DILocalVariable(name: "ap", scope: !1249, file: !313, line: 362, type: !1207)
!1259 = distinct !DIAssignID()
!1260 = !DILocation(line: 0, scope: !1249)
!1261 = !DILocation(line: 362, column: 3, scope: !1249)
!1262 = !DILocation(line: 363, column: 3, scope: !1249)
!1263 = !DILocation(line: 364, column: 3, scope: !1249)
!1264 = !DILocation(line: 366, column: 3, scope: !1249)
!1265 = !DILocation(line: 367, column: 1, scope: !1249)
!1266 = distinct !DISubprogram(name: "getprogname", scope: !664, file: !664, line: 54, type: !1267, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!68}
!1269 = !DILocation(line: 58, column: 10, scope: !1266)
!1270 = !DILocation(line: 58, column: 3, scope: !1266)
!1271 = distinct !DISubprogram(name: "parse_long_options", scope: !363, file: !363, line: 45, type: !1272, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !366, retainedNodes: !1275)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !90, !958, !68, !68, !68, !1274, null}
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1286}
!1276 = !DILocalVariable(name: "argc", arg: 1, scope: !1271, file: !363, line: 45, type: !90)
!1277 = !DILocalVariable(name: "argv", arg: 2, scope: !1271, file: !363, line: 46, type: !958)
!1278 = !DILocalVariable(name: "command_name", arg: 3, scope: !1271, file: !363, line: 47, type: !68)
!1279 = !DILocalVariable(name: "package", arg: 4, scope: !1271, file: !363, line: 48, type: !68)
!1280 = !DILocalVariable(name: "version", arg: 5, scope: !1271, file: !363, line: 49, type: !68)
!1281 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1271, file: !363, line: 50, type: !1274)
!1282 = !DILocalVariable(name: "saved_opterr", scope: !1271, file: !363, line: 53, type: !90)
!1283 = !DILocalVariable(name: "c", scope: !1284, file: !363, line: 60, type: !90)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !363, line: 59, column: 5)
!1285 = distinct !DILexicalBlock(scope: !1271, file: !363, line: 58, column: 7)
!1286 = !DILocalVariable(name: "authors", scope: !1287, file: !363, line: 71, type: !1291)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !363, line: 70, column: 15)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !363, line: 64, column: 13)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !363, line: 62, column: 9)
!1290 = distinct !DILexicalBlock(scope: !1284, file: !363, line: 61, column: 11)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !925, line: 52, baseType: !1292)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1209, line: 12, baseType: !1293)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !363, baseType: !1294)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1295, size: 192, elements: !30)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1296)
!1296 = !{!1297, !1298, !1299, !1300}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1295, file: !363, line: 71, baseType: !74, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1295, file: !363, line: 71, baseType: !74, size: 32, offset: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1295, file: !363, line: 71, baseType: !89, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1295, file: !363, line: 71, baseType: !89, size: 64, offset: 128)
!1301 = distinct !DIAssignID()
!1302 = !DILocation(line: 0, scope: !1287)
!1303 = !DILocation(line: 0, scope: !1271)
!1304 = !DILocation(line: 53, column: 22, scope: !1271)
!1305 = !DILocation(line: 56, column: 10, scope: !1271)
!1306 = !DILocation(line: 58, column: 12, scope: !1285)
!1307 = !DILocation(line: 58, column: 7, scope: !1271)
!1308 = !DILocation(line: 60, column: 15, scope: !1284)
!1309 = !DILocation(line: 0, scope: !1284)
!1310 = !DILocation(line: 61, column: 11, scope: !1284)
!1311 = !DILocation(line: 66, column: 15, scope: !1288)
!1312 = !DILocation(line: 67, column: 15, scope: !1288)
!1313 = !DILocation(line: 71, column: 17, scope: !1287)
!1314 = !DILocation(line: 72, column: 17, scope: !1287)
!1315 = !DILocation(line: 73, column: 33, scope: !1287)
!1316 = !DILocation(line: 73, column: 17, scope: !1287)
!1317 = !DILocation(line: 74, column: 17, scope: !1287)
!1318 = !DILocation(line: 85, column: 10, scope: !1271)
!1319 = !DILocation(line: 89, column: 10, scope: !1271)
!1320 = !DILocation(line: 90, column: 1, scope: !1271)
!1321 = !DISubprogram(name: "getopt_long", scope: !378, file: !378, line: 66, type: !1322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!90, !90, !1324, !68, !1326, !383}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!1327 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !363, file: !363, line: 98, type: !1328, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !366, retainedNodes: !1330)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !90, !958, !68, !68, !68, !216, !1274, null}
!1330 = !{!1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341}
!1331 = !DILocalVariable(name: "argc", arg: 1, scope: !1327, file: !363, line: 98, type: !90)
!1332 = !DILocalVariable(name: "argv", arg: 2, scope: !1327, file: !363, line: 99, type: !958)
!1333 = !DILocalVariable(name: "command_name", arg: 3, scope: !1327, file: !363, line: 100, type: !68)
!1334 = !DILocalVariable(name: "package", arg: 4, scope: !1327, file: !363, line: 101, type: !68)
!1335 = !DILocalVariable(name: "version", arg: 5, scope: !1327, file: !363, line: 102, type: !68)
!1336 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1327, file: !363, line: 103, type: !216)
!1337 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1327, file: !363, line: 104, type: !1274)
!1338 = !DILocalVariable(name: "saved_opterr", scope: !1327, file: !363, line: 107, type: !90)
!1339 = !DILocalVariable(name: "optstring", scope: !1327, file: !363, line: 112, type: !68)
!1340 = !DILocalVariable(name: "c", scope: !1327, file: !363, line: 114, type: !90)
!1341 = !DILocalVariable(name: "authors", scope: !1342, file: !363, line: 125, type: !1291)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !363, line: 124, column: 11)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !363, line: 118, column: 9)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !363, line: 116, column: 5)
!1345 = distinct !DILexicalBlock(scope: !1327, file: !363, line: 115, column: 7)
!1346 = distinct !DIAssignID()
!1347 = !DILocation(line: 0, scope: !1342)
!1348 = !DILocation(line: 0, scope: !1327)
!1349 = !DILocation(line: 107, column: 22, scope: !1327)
!1350 = !DILocation(line: 110, column: 10, scope: !1327)
!1351 = !DILocation(line: 112, column: 27, scope: !1327)
!1352 = !DILocation(line: 114, column: 11, scope: !1327)
!1353 = !DILocation(line: 115, column: 7, scope: !1327)
!1354 = !DILocation(line: 125, column: 13, scope: !1342)
!1355 = !DILocation(line: 126, column: 13, scope: !1342)
!1356 = !DILocation(line: 127, column: 29, scope: !1342)
!1357 = !DILocation(line: 127, column: 13, scope: !1342)
!1358 = !DILocation(line: 128, column: 13, scope: !1342)
!1359 = !DILocation(line: 132, column: 26, scope: !1343)
!1360 = !DILocation(line: 133, column: 11, scope: !1343)
!1361 = !DILocation(line: 0, scope: !1343)
!1362 = !DILocation(line: 138, column: 10, scope: !1327)
!1363 = !DILocation(line: 139, column: 1, scope: !1327)
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
!1377 = !DILocalVariable(name: "__s1", arg: 1, scope: !1378, file: !814, line: 974, type: !953)
!1378 = distinct !DISubprogram(name: "memeq", scope: !814, file: !814, line: 974, type: !1379, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1381)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!216, !953, !953, !92}
!1381 = !{!1377, !1382, !1383}
!1382 = !DILocalVariable(name: "__s2", arg: 2, scope: !1378, file: !814, line: 974, type: !953)
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
!1398 = !DISubprogram(name: "strrchr", scope: !921, file: !921, line: 273, type: !940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1399 = distinct !DIAssignID()
!1400 = !DILocation(line: 0, scope: !397)
!1401 = distinct !DIAssignID()
!1402 = !DILocation(line: 40, column: 29, scope: !397)
!1403 = !DILocation(line: 41, column: 19, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !397, file: !398, line: 41, column: 7)
!1405 = !DILocation(line: 41, column: 7, scope: !397)
!1406 = !DILocation(line: 47, column: 3, scope: !397)
!1407 = !DILocation(line: 48, column: 3, scope: !397)
!1408 = !DILocalVariable(name: "ps", arg: 1, scope: !1409, file: !1410, line: 1135, type: !1413)
!1409 = distinct !DISubprogram(name: "mbszero", scope: !1410, file: !1410, line: 1135, type: !1411, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !1414)
!1410 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1411 = !DISubroutineType(types: !1412)
!1412 = !{null, !1413}
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!1414 = !{!1408}
!1415 = !DILocation(line: 0, scope: !1409, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 48, column: 18, scope: !397)
!1417 = !DILocalVariable(name: "__dest", arg: 1, scope: !1418, file: !1419, line: 57, type: !89)
!1418 = distinct !DISubprogram(name: "memset", scope: !1419, file: !1419, line: 57, type: !1420, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !1422)
!1419 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!89, !89, !90, !92}
!1422 = !{!1417, !1423, !1424}
!1423 = !DILocalVariable(name: "__ch", arg: 2, scope: !1418, file: !1419, line: 57, type: !90)
!1424 = !DILocalVariable(name: "__len", arg: 3, scope: !1418, file: !1419, line: 57, type: !92)
!1425 = !DILocation(line: 0, scope: !1418, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 1137, column: 3, scope: !1409, inlinedAt: !1416)
!1427 = !DILocation(line: 59, column: 10, scope: !1418, inlinedAt: !1426)
!1428 = !DILocation(line: 49, column: 7, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !397, file: !398, line: 49, column: 7)
!1430 = !DILocation(line: 49, column: 39, scope: !1429)
!1431 = !DILocation(line: 49, column: 44, scope: !1429)
!1432 = !DILocation(line: 54, column: 1, scope: !397)
!1433 = !DISubprogram(name: "mbrtoc32", scope: !409, file: !409, line: 57, type: !1434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!92, !1436, !795, !92, !1438}
!1436 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1437)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1413)
!1439 = distinct !DISubprogram(name: "clone_quoting_options", scope: !428, file: !428, line: 113, type: !1440, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1443)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!1442, !1442}
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!1443 = !{!1444, !1445, !1446}
!1444 = !DILocalVariable(name: "o", arg: 1, scope: !1439, file: !428, line: 113, type: !1442)
!1445 = !DILocalVariable(name: "saved_errno", scope: !1439, file: !428, line: 115, type: !90)
!1446 = !DILocalVariable(name: "p", scope: !1439, file: !428, line: 116, type: !1442)
!1447 = !DILocation(line: 0, scope: !1439)
!1448 = !DILocation(line: 115, column: 21, scope: !1439)
!1449 = !DILocation(line: 116, column: 40, scope: !1439)
!1450 = !DILocation(line: 116, column: 31, scope: !1439)
!1451 = !DILocation(line: 118, column: 9, scope: !1439)
!1452 = !DILocation(line: 119, column: 3, scope: !1439)
!1453 = distinct !DISubprogram(name: "get_quoting_style", scope: !428, file: !428, line: 124, type: !1454, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1458)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!451, !1456}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!1458 = !{!1459}
!1459 = !DILocalVariable(name: "o", arg: 1, scope: !1453, file: !428, line: 124, type: !1456)
!1460 = !DILocation(line: 0, scope: !1453)
!1461 = !DILocation(line: 126, column: 11, scope: !1453)
!1462 = !DILocation(line: 126, column: 46, scope: !1453)
!1463 = !{!1464, !802, i64 0}
!1464 = !{!"quoting_options", !802, i64 0, !802, i64 4, !747, i64 8, !746, i64 40, !746, i64 48}
!1465 = !DILocation(line: 126, column: 3, scope: !1453)
!1466 = distinct !DISubprogram(name: "set_quoting_style", scope: !428, file: !428, line: 132, type: !1467, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1469)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{null, !1442, !451}
!1469 = !{!1470, !1471}
!1470 = !DILocalVariable(name: "o", arg: 1, scope: !1466, file: !428, line: 132, type: !1442)
!1471 = !DILocalVariable(name: "s", arg: 2, scope: !1466, file: !428, line: 132, type: !451)
!1472 = !DILocation(line: 0, scope: !1466)
!1473 = !DILocation(line: 134, column: 4, scope: !1466)
!1474 = !DILocation(line: 134, column: 45, scope: !1466)
!1475 = !DILocation(line: 135, column: 1, scope: !1466)
!1476 = distinct !DISubprogram(name: "set_char_quoting", scope: !428, file: !428, line: 143, type: !1477, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1479)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!90, !1442, !4, !90}
!1479 = !{!1480, !1481, !1482, !1483, !1484, !1486, !1487}
!1480 = !DILocalVariable(name: "o", arg: 1, scope: !1476, file: !428, line: 143, type: !1442)
!1481 = !DILocalVariable(name: "c", arg: 2, scope: !1476, file: !428, line: 143, type: !4)
!1482 = !DILocalVariable(name: "i", arg: 3, scope: !1476, file: !428, line: 143, type: !90)
!1483 = !DILocalVariable(name: "uc", scope: !1476, file: !428, line: 145, type: !95)
!1484 = !DILocalVariable(name: "p", scope: !1476, file: !428, line: 146, type: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1486 = !DILocalVariable(name: "shift", scope: !1476, file: !428, line: 148, type: !90)
!1487 = !DILocalVariable(name: "r", scope: !1476, file: !428, line: 149, type: !74)
!1488 = !DILocation(line: 0, scope: !1476)
!1489 = !DILocation(line: 147, column: 6, scope: !1476)
!1490 = !DILocation(line: 147, column: 41, scope: !1476)
!1491 = !DILocation(line: 147, column: 62, scope: !1476)
!1492 = !DILocation(line: 147, column: 57, scope: !1476)
!1493 = !DILocation(line: 148, column: 15, scope: !1476)
!1494 = !DILocation(line: 149, column: 21, scope: !1476)
!1495 = !DILocation(line: 149, column: 24, scope: !1476)
!1496 = !DILocation(line: 149, column: 34, scope: !1476)
!1497 = !DILocation(line: 150, column: 19, scope: !1476)
!1498 = !DILocation(line: 150, column: 24, scope: !1476)
!1499 = !DILocation(line: 150, column: 6, scope: !1476)
!1500 = !DILocation(line: 151, column: 3, scope: !1476)
!1501 = distinct !DISubprogram(name: "set_quoting_flags", scope: !428, file: !428, line: 159, type: !1502, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1504)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!90, !1442, !90}
!1504 = !{!1505, !1506, !1507}
!1505 = !DILocalVariable(name: "o", arg: 1, scope: !1501, file: !428, line: 159, type: !1442)
!1506 = !DILocalVariable(name: "i", arg: 2, scope: !1501, file: !428, line: 159, type: !90)
!1507 = !DILocalVariable(name: "r", scope: !1501, file: !428, line: 163, type: !90)
!1508 = !DILocation(line: 0, scope: !1501)
!1509 = !DILocation(line: 161, column: 8, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1501, file: !428, line: 161, column: 7)
!1511 = !DILocation(line: 161, column: 7, scope: !1501)
!1512 = !DILocation(line: 163, column: 14, scope: !1501)
!1513 = !{!1464, !802, i64 4}
!1514 = !DILocation(line: 164, column: 12, scope: !1501)
!1515 = !DILocation(line: 165, column: 3, scope: !1501)
!1516 = distinct !DISubprogram(name: "set_custom_quoting", scope: !428, file: !428, line: 169, type: !1517, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1519)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !1442, !68, !68}
!1519 = !{!1520, !1521, !1522}
!1520 = !DILocalVariable(name: "o", arg: 1, scope: !1516, file: !428, line: 169, type: !1442)
!1521 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1516, file: !428, line: 170, type: !68)
!1522 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1516, file: !428, line: 170, type: !68)
!1523 = !DILocation(line: 0, scope: !1516)
!1524 = !DILocation(line: 172, column: 8, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1516, file: !428, line: 172, column: 7)
!1526 = !DILocation(line: 172, column: 7, scope: !1516)
!1527 = !DILocation(line: 174, column: 12, scope: !1516)
!1528 = !DILocation(line: 175, column: 8, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1516, file: !428, line: 175, column: 7)
!1530 = !DILocation(line: 175, column: 19, scope: !1529)
!1531 = !DILocation(line: 176, column: 5, scope: !1529)
!1532 = !DILocation(line: 177, column: 6, scope: !1516)
!1533 = !DILocation(line: 177, column: 17, scope: !1516)
!1534 = !{!1464, !746, i64 40}
!1535 = !DILocation(line: 178, column: 6, scope: !1516)
!1536 = !DILocation(line: 178, column: 18, scope: !1516)
!1537 = !{!1464, !746, i64 48}
!1538 = !DILocation(line: 179, column: 1, scope: !1516)
!1539 = !DISubprogram(name: "abort", scope: !929, file: !929, line: 598, type: !359, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1540 = distinct !DISubprogram(name: "quotearg_buffer", scope: !428, file: !428, line: 774, type: !1541, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1543)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!92, !237, !92, !68, !92, !1456}
!1543 = !{!1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551}
!1544 = !DILocalVariable(name: "buffer", arg: 1, scope: !1540, file: !428, line: 774, type: !237)
!1545 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1540, file: !428, line: 774, type: !92)
!1546 = !DILocalVariable(name: "arg", arg: 3, scope: !1540, file: !428, line: 775, type: !68)
!1547 = !DILocalVariable(name: "argsize", arg: 4, scope: !1540, file: !428, line: 775, type: !92)
!1548 = !DILocalVariable(name: "o", arg: 5, scope: !1540, file: !428, line: 776, type: !1456)
!1549 = !DILocalVariable(name: "p", scope: !1540, file: !428, line: 778, type: !1456)
!1550 = !DILocalVariable(name: "saved_errno", scope: !1540, file: !428, line: 779, type: !90)
!1551 = !DILocalVariable(name: "r", scope: !1540, file: !428, line: 780, type: !92)
!1552 = !DILocation(line: 0, scope: !1540)
!1553 = !DILocation(line: 778, column: 37, scope: !1540)
!1554 = !DILocation(line: 779, column: 21, scope: !1540)
!1555 = !DILocation(line: 781, column: 43, scope: !1540)
!1556 = !DILocation(line: 781, column: 53, scope: !1540)
!1557 = !DILocation(line: 781, column: 63, scope: !1540)
!1558 = !DILocation(line: 782, column: 43, scope: !1540)
!1559 = !DILocation(line: 782, column: 58, scope: !1540)
!1560 = !DILocation(line: 780, column: 14, scope: !1540)
!1561 = !DILocation(line: 783, column: 9, scope: !1540)
!1562 = !DILocation(line: 784, column: 3, scope: !1540)
!1563 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !428, file: !428, line: 251, type: !1564, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1568)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!92, !237, !92, !68, !92, !451, !90, !1566, !68, !68}
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1594, !1596, !1599, !1600, !1601, !1602, !1605, !1606, !1608, !1609, !1612, !1616, !1617, !1625, !1628, !1629, !1630}
!1569 = !DILocalVariable(name: "buffer", arg: 1, scope: !1563, file: !428, line: 251, type: !237)
!1570 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1563, file: !428, line: 251, type: !92)
!1571 = !DILocalVariable(name: "arg", arg: 3, scope: !1563, file: !428, line: 252, type: !68)
!1572 = !DILocalVariable(name: "argsize", arg: 4, scope: !1563, file: !428, line: 252, type: !92)
!1573 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1563, file: !428, line: 253, type: !451)
!1574 = !DILocalVariable(name: "flags", arg: 6, scope: !1563, file: !428, line: 253, type: !90)
!1575 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1563, file: !428, line: 254, type: !1566)
!1576 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1563, file: !428, line: 255, type: !68)
!1577 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1563, file: !428, line: 256, type: !68)
!1578 = !DILocalVariable(name: "unibyte_locale", scope: !1563, file: !428, line: 258, type: !216)
!1579 = !DILocalVariable(name: "len", scope: !1563, file: !428, line: 260, type: !92)
!1580 = !DILocalVariable(name: "orig_buffersize", scope: !1563, file: !428, line: 261, type: !92)
!1581 = !DILocalVariable(name: "quote_string", scope: !1563, file: !428, line: 262, type: !68)
!1582 = !DILocalVariable(name: "quote_string_len", scope: !1563, file: !428, line: 263, type: !92)
!1583 = !DILocalVariable(name: "backslash_escapes", scope: !1563, file: !428, line: 264, type: !216)
!1584 = !DILocalVariable(name: "elide_outer_quotes", scope: !1563, file: !428, line: 265, type: !216)
!1585 = !DILocalVariable(name: "encountered_single_quote", scope: !1563, file: !428, line: 266, type: !216)
!1586 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1563, file: !428, line: 267, type: !216)
!1587 = !DILabel(scope: !1563, name: "process_input", file: !428, line: 308)
!1588 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1563, file: !428, line: 309, type: !216)
!1589 = !DILocalVariable(name: "lq", scope: !1590, file: !428, line: 361, type: !68)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !428, line: 361, column: 11)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !428, line: 360, column: 13)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !428, line: 333, column: 7)
!1593 = distinct !DILexicalBlock(scope: !1563, file: !428, line: 312, column: 5)
!1594 = !DILocalVariable(name: "i", scope: !1595, file: !428, line: 395, type: !92)
!1595 = distinct !DILexicalBlock(scope: !1563, file: !428, line: 395, column: 3)
!1596 = !DILocalVariable(name: "is_right_quote", scope: !1597, file: !428, line: 397, type: !216)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !428, line: 396, column: 5)
!1598 = distinct !DILexicalBlock(scope: !1595, file: !428, line: 395, column: 3)
!1599 = !DILocalVariable(name: "escaping", scope: !1597, file: !428, line: 398, type: !216)
!1600 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1597, file: !428, line: 399, type: !216)
!1601 = !DILocalVariable(name: "c", scope: !1597, file: !428, line: 417, type: !95)
!1602 = !DILabel(scope: !1603, name: "c_and_shell_escape", file: !428, line: 502)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !428, line: 478, column: 9)
!1604 = distinct !DILexicalBlock(scope: !1597, file: !428, line: 419, column: 9)
!1605 = !DILabel(scope: !1603, name: "c_escape", file: !428, line: 507)
!1606 = !DILocalVariable(name: "m", scope: !1607, file: !428, line: 598, type: !92)
!1607 = distinct !DILexicalBlock(scope: !1604, file: !428, line: 596, column: 11)
!1608 = !DILocalVariable(name: "printable", scope: !1607, file: !428, line: 600, type: !216)
!1609 = !DILocalVariable(name: "mbs", scope: !1610, file: !428, line: 609, type: !512)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !428, line: 608, column: 15)
!1611 = distinct !DILexicalBlock(scope: !1607, file: !428, line: 602, column: 17)
!1612 = !DILocalVariable(name: "w", scope: !1613, file: !428, line: 618, type: !408)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !428, line: 617, column: 19)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !428, line: 616, column: 17)
!1615 = distinct !DILexicalBlock(scope: !1610, file: !428, line: 616, column: 17)
!1616 = !DILocalVariable(name: "bytes", scope: !1613, file: !428, line: 619, type: !92)
!1617 = !DILocalVariable(name: "j", scope: !1618, file: !428, line: 648, type: !92)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !428, line: 648, column: 29)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !428, line: 647, column: 27)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !428, line: 645, column: 29)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !428, line: 636, column: 23)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !428, line: 628, column: 30)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !428, line: 623, column: 30)
!1624 = distinct !DILexicalBlock(scope: !1613, file: !428, line: 621, column: 25)
!1625 = !DILocalVariable(name: "ilim", scope: !1626, file: !428, line: 674, type: !92)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !428, line: 671, column: 15)
!1627 = distinct !DILexicalBlock(scope: !1607, file: !428, line: 670, column: 17)
!1628 = !DILabel(scope: !1597, name: "store_escape", file: !428, line: 709)
!1629 = !DILabel(scope: !1597, name: "store_c", file: !428, line: 712)
!1630 = !DILabel(scope: !1563, name: "force_outer_quoting_style", file: !428, line: 753)
!1631 = distinct !DIAssignID()
!1632 = distinct !DIAssignID()
!1633 = distinct !DIAssignID()
!1634 = distinct !DIAssignID()
!1635 = distinct !DIAssignID()
!1636 = !DILocation(line: 0, scope: !1610)
!1637 = distinct !DIAssignID()
!1638 = !DILocation(line: 0, scope: !1613)
!1639 = !DILocation(line: 0, scope: !1563)
!1640 = !DILocation(line: 258, column: 25, scope: !1563)
!1641 = !DILocation(line: 258, column: 36, scope: !1563)
!1642 = !DILocation(line: 265, column: 8, scope: !1563)
!1643 = !DILocation(line: 267, column: 3, scope: !1563)
!1644 = !DILocation(line: 261, column: 10, scope: !1563)
!1645 = !DILocation(line: 262, column: 15, scope: !1563)
!1646 = !DILocation(line: 263, column: 10, scope: !1563)
!1647 = !DILocation(line: 264, column: 8, scope: !1563)
!1648 = !DILocation(line: 266, column: 8, scope: !1563)
!1649 = !DILocation(line: 267, column: 8, scope: !1563)
!1650 = !DILocation(line: 308, column: 2, scope: !1563)
!1651 = !DILocation(line: 311, column: 3, scope: !1563)
!1652 = !DILocation(line: 318, column: 11, scope: !1593)
!1653 = !DILocation(line: 318, column: 12, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1593, file: !428, line: 318, column: 11)
!1655 = !DILocation(line: 319, column: 9, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !428, line: 319, column: 9)
!1657 = distinct !DILexicalBlock(scope: !1654, file: !428, line: 319, column: 9)
!1658 = !DILocation(line: 319, column: 9, scope: !1657)
!1659 = !DILocation(line: 0, scope: !503, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 357, column: 26, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !428, line: 335, column: 11)
!1662 = distinct !DILexicalBlock(scope: !1592, file: !428, line: 334, column: 13)
!1663 = !DILocation(line: 199, column: 29, scope: !503, inlinedAt: !1660)
!1664 = !DILocation(line: 201, column: 19, scope: !1665, inlinedAt: !1660)
!1665 = distinct !DILexicalBlock(scope: !503, file: !428, line: 201, column: 7)
!1666 = !DILocation(line: 201, column: 7, scope: !503, inlinedAt: !1660)
!1667 = !DILocation(line: 229, column: 3, scope: !503, inlinedAt: !1660)
!1668 = !DILocation(line: 230, column: 3, scope: !503, inlinedAt: !1660)
!1669 = !DILocalVariable(name: "ps", arg: 1, scope: !1670, file: !1410, line: 1135, type: !1673)
!1670 = distinct !DISubprogram(name: "mbszero", scope: !1410, file: !1410, line: 1135, type: !1671, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1674)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{null, !1673}
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!1674 = !{!1669}
!1675 = !DILocation(line: 0, scope: !1670, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 230, column: 18, scope: !503, inlinedAt: !1660)
!1677 = !DILocalVariable(name: "__dest", arg: 1, scope: !1678, file: !1419, line: 57, type: !89)
!1678 = distinct !DISubprogram(name: "memset", scope: !1419, file: !1419, line: 57, type: !1420, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1679)
!1679 = !{!1677, !1680, !1681}
!1680 = !DILocalVariable(name: "__ch", arg: 2, scope: !1678, file: !1419, line: 57, type: !90)
!1681 = !DILocalVariable(name: "__len", arg: 3, scope: !1678, file: !1419, line: 57, type: !92)
!1682 = !DILocation(line: 0, scope: !1678, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 1137, column: 3, scope: !1670, inlinedAt: !1676)
!1684 = !DILocation(line: 59, column: 10, scope: !1678, inlinedAt: !1683)
!1685 = !DILocation(line: 231, column: 7, scope: !1686, inlinedAt: !1660)
!1686 = distinct !DILexicalBlock(scope: !503, file: !428, line: 231, column: 7)
!1687 = !DILocation(line: 231, column: 40, scope: !1686, inlinedAt: !1660)
!1688 = !DILocation(line: 231, column: 45, scope: !1686, inlinedAt: !1660)
!1689 = !DILocation(line: 235, column: 1, scope: !503, inlinedAt: !1660)
!1690 = !DILocation(line: 0, scope: !503, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 358, column: 27, scope: !1661)
!1692 = !DILocation(line: 199, column: 29, scope: !503, inlinedAt: !1691)
!1693 = !DILocation(line: 201, column: 19, scope: !1665, inlinedAt: !1691)
!1694 = !DILocation(line: 201, column: 7, scope: !503, inlinedAt: !1691)
!1695 = !DILocation(line: 229, column: 3, scope: !503, inlinedAt: !1691)
!1696 = !DILocation(line: 230, column: 3, scope: !503, inlinedAt: !1691)
!1697 = !DILocation(line: 0, scope: !1670, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 230, column: 18, scope: !503, inlinedAt: !1691)
!1699 = !DILocation(line: 0, scope: !1678, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 1137, column: 3, scope: !1670, inlinedAt: !1698)
!1701 = !DILocation(line: 59, column: 10, scope: !1678, inlinedAt: !1700)
!1702 = !DILocation(line: 231, column: 7, scope: !1686, inlinedAt: !1691)
!1703 = !DILocation(line: 231, column: 40, scope: !1686, inlinedAt: !1691)
!1704 = !DILocation(line: 231, column: 45, scope: !1686, inlinedAt: !1691)
!1705 = !DILocation(line: 235, column: 1, scope: !503, inlinedAt: !1691)
!1706 = !DILocation(line: 360, column: 14, scope: !1591)
!1707 = !DILocation(line: 360, column: 13, scope: !1592)
!1708 = !DILocation(line: 0, scope: !1590)
!1709 = !DILocation(line: 361, column: 45, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1590, file: !428, line: 361, column: 11)
!1711 = !DILocation(line: 361, column: 11, scope: !1590)
!1712 = !DILocation(line: 362, column: 13, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !428, line: 362, column: 13)
!1714 = distinct !DILexicalBlock(scope: !1710, file: !428, line: 362, column: 13)
!1715 = !DILocation(line: 362, column: 13, scope: !1714)
!1716 = !DILocation(line: 361, column: 52, scope: !1710)
!1717 = distinct !{!1717, !1711, !1718, !848}
!1718 = !DILocation(line: 362, column: 13, scope: !1590)
!1719 = !DILocation(line: 260, column: 10, scope: !1563)
!1720 = !DILocation(line: 365, column: 28, scope: !1592)
!1721 = !DILocation(line: 367, column: 7, scope: !1593)
!1722 = !DILocation(line: 370, column: 7, scope: !1593)
!1723 = !DILocation(line: 373, column: 7, scope: !1593)
!1724 = !DILocation(line: 376, column: 12, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1593, file: !428, line: 376, column: 11)
!1726 = !DILocation(line: 376, column: 11, scope: !1593)
!1727 = !DILocation(line: 381, column: 12, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1593, file: !428, line: 381, column: 11)
!1729 = !DILocation(line: 381, column: 11, scope: !1593)
!1730 = !DILocation(line: 382, column: 9, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !428, line: 382, column: 9)
!1732 = distinct !DILexicalBlock(scope: !1728, file: !428, line: 382, column: 9)
!1733 = !DILocation(line: 382, column: 9, scope: !1732)
!1734 = !DILocation(line: 389, column: 7, scope: !1593)
!1735 = !DILocation(line: 392, column: 7, scope: !1593)
!1736 = !DILocation(line: 0, scope: !1595)
!1737 = !DILocation(line: 395, column: 8, scope: !1595)
!1738 = !DILocation(line: 309, column: 8, scope: !1563)
!1739 = !DILocation(line: 395, scope: !1595)
!1740 = !DILocation(line: 395, column: 34, scope: !1598)
!1741 = !DILocation(line: 395, column: 26, scope: !1598)
!1742 = !DILocation(line: 395, column: 48, scope: !1598)
!1743 = !DILocation(line: 395, column: 55, scope: !1598)
!1744 = !DILocation(line: 395, column: 3, scope: !1595)
!1745 = !DILocation(line: 395, column: 67, scope: !1598)
!1746 = !DILocation(line: 0, scope: !1597)
!1747 = !DILocation(line: 402, column: 11, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1597, file: !428, line: 401, column: 11)
!1749 = !DILocation(line: 404, column: 17, scope: !1748)
!1750 = !DILocation(line: 405, column: 39, scope: !1748)
!1751 = !DILocation(line: 409, column: 32, scope: !1748)
!1752 = !DILocation(line: 405, column: 19, scope: !1748)
!1753 = !DILocation(line: 405, column: 15, scope: !1748)
!1754 = !DILocation(line: 410, column: 11, scope: !1748)
!1755 = !DILocation(line: 410, column: 25, scope: !1748)
!1756 = !DILocalVariable(name: "__s1", arg: 1, scope: !1757, file: !814, line: 974, type: !953)
!1757 = distinct !DISubprogram(name: "memeq", scope: !814, file: !814, line: 974, type: !1379, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !1758)
!1758 = !{!1756, !1759, !1760}
!1759 = !DILocalVariable(name: "__s2", arg: 2, scope: !1757, file: !814, line: 974, type: !953)
!1760 = !DILocalVariable(name: "__n", arg: 3, scope: !1757, file: !814, line: 974, type: !92)
!1761 = !DILocation(line: 0, scope: !1757, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 410, column: 14, scope: !1748)
!1763 = !DILocation(line: 976, column: 11, scope: !1757, inlinedAt: !1762)
!1764 = !DILocation(line: 976, column: 10, scope: !1757, inlinedAt: !1762)
!1765 = !DILocation(line: 401, column: 11, scope: !1597)
!1766 = !DILocation(line: 417, column: 25, scope: !1597)
!1767 = !DILocation(line: 418, column: 7, scope: !1597)
!1768 = !DILocation(line: 421, column: 15, scope: !1604)
!1769 = !DILocation(line: 423, column: 15, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !428, line: 423, column: 15)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !428, line: 422, column: 13)
!1772 = distinct !DILexicalBlock(scope: !1604, file: !428, line: 421, column: 15)
!1773 = !DILocation(line: 423, column: 15, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1770, file: !428, line: 423, column: 15)
!1775 = !DILocation(line: 423, column: 15, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !428, line: 423, column: 15)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !428, line: 423, column: 15)
!1778 = distinct !DILexicalBlock(scope: !1774, file: !428, line: 423, column: 15)
!1779 = !DILocation(line: 423, column: 15, scope: !1777)
!1780 = !DILocation(line: 423, column: 15, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !428, line: 423, column: 15)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !428, line: 423, column: 15)
!1783 = !DILocation(line: 423, column: 15, scope: !1782)
!1784 = !DILocation(line: 423, column: 15, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !428, line: 423, column: 15)
!1786 = distinct !DILexicalBlock(scope: !1778, file: !428, line: 423, column: 15)
!1787 = !DILocation(line: 423, column: 15, scope: !1786)
!1788 = !DILocation(line: 423, column: 15, scope: !1778)
!1789 = !DILocation(line: 423, column: 15, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !428, line: 423, column: 15)
!1791 = distinct !DILexicalBlock(scope: !1770, file: !428, line: 423, column: 15)
!1792 = !DILocation(line: 423, column: 15, scope: !1791)
!1793 = !DILocation(line: 431, column: 19, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1771, file: !428, line: 430, column: 19)
!1795 = !DILocation(line: 431, column: 24, scope: !1794)
!1796 = !DILocation(line: 431, column: 28, scope: !1794)
!1797 = !DILocation(line: 431, column: 38, scope: !1794)
!1798 = !DILocation(line: 431, column: 48, scope: !1794)
!1799 = !DILocation(line: 431, column: 59, scope: !1794)
!1800 = !DILocation(line: 433, column: 19, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !428, line: 433, column: 19)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !428, line: 433, column: 19)
!1803 = distinct !DILexicalBlock(scope: !1794, file: !428, line: 432, column: 17)
!1804 = !DILocation(line: 433, column: 19, scope: !1802)
!1805 = !DILocation(line: 434, column: 19, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !428, line: 434, column: 19)
!1807 = distinct !DILexicalBlock(scope: !1803, file: !428, line: 434, column: 19)
!1808 = !DILocation(line: 434, column: 19, scope: !1807)
!1809 = !DILocation(line: 435, column: 17, scope: !1803)
!1810 = !DILocation(line: 442, column: 20, scope: !1772)
!1811 = !DILocation(line: 447, column: 11, scope: !1604)
!1812 = !DILocation(line: 450, column: 19, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1604, file: !428, line: 448, column: 13)
!1814 = !DILocation(line: 456, column: 19, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1813, file: !428, line: 455, column: 19)
!1816 = !DILocation(line: 456, column: 24, scope: !1815)
!1817 = !DILocation(line: 456, column: 28, scope: !1815)
!1818 = !DILocation(line: 456, column: 38, scope: !1815)
!1819 = !DILocation(line: 456, column: 41, scope: !1815)
!1820 = !DILocation(line: 456, column: 52, scope: !1815)
!1821 = !DILocation(line: 455, column: 19, scope: !1813)
!1822 = !DILocation(line: 457, column: 25, scope: !1815)
!1823 = !DILocation(line: 457, column: 17, scope: !1815)
!1824 = !DILocation(line: 464, column: 25, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1815, file: !428, line: 458, column: 19)
!1826 = !DILocation(line: 468, column: 21, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !428, line: 468, column: 21)
!1828 = distinct !DILexicalBlock(scope: !1825, file: !428, line: 468, column: 21)
!1829 = !DILocation(line: 468, column: 21, scope: !1828)
!1830 = !DILocation(line: 469, column: 21, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !428, line: 469, column: 21)
!1832 = distinct !DILexicalBlock(scope: !1825, file: !428, line: 469, column: 21)
!1833 = !DILocation(line: 469, column: 21, scope: !1832)
!1834 = !DILocation(line: 470, column: 21, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !428, line: 470, column: 21)
!1836 = distinct !DILexicalBlock(scope: !1825, file: !428, line: 470, column: 21)
!1837 = !DILocation(line: 470, column: 21, scope: !1836)
!1838 = !DILocation(line: 471, column: 21, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !428, line: 471, column: 21)
!1840 = distinct !DILexicalBlock(scope: !1825, file: !428, line: 471, column: 21)
!1841 = !DILocation(line: 471, column: 21, scope: !1840)
!1842 = !DILocation(line: 472, column: 21, scope: !1825)
!1843 = !DILocation(line: 482, column: 33, scope: !1603)
!1844 = !DILocation(line: 483, column: 33, scope: !1603)
!1845 = !DILocation(line: 485, column: 33, scope: !1603)
!1846 = !DILocation(line: 486, column: 33, scope: !1603)
!1847 = !DILocation(line: 487, column: 33, scope: !1603)
!1848 = !DILocation(line: 490, column: 17, scope: !1603)
!1849 = !DILocation(line: 492, column: 21, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !428, line: 491, column: 15)
!1851 = distinct !DILexicalBlock(scope: !1603, file: !428, line: 490, column: 17)
!1852 = !DILocation(line: 499, column: 35, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1603, file: !428, line: 499, column: 17)
!1854 = !DILocation(line: 499, column: 57, scope: !1853)
!1855 = !DILocation(line: 0, scope: !1603)
!1856 = !DILocation(line: 502, column: 11, scope: !1603)
!1857 = !DILocation(line: 504, column: 17, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1603, file: !428, line: 503, column: 17)
!1859 = !DILocation(line: 507, column: 11, scope: !1603)
!1860 = !DILocation(line: 508, column: 17, scope: !1603)
!1861 = !DILocation(line: 517, column: 15, scope: !1604)
!1862 = !DILocation(line: 517, column: 40, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1604, file: !428, line: 517, column: 15)
!1864 = !DILocation(line: 517, column: 47, scope: !1863)
!1865 = !DILocation(line: 517, column: 18, scope: !1863)
!1866 = !DILocation(line: 521, column: 17, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1604, file: !428, line: 521, column: 15)
!1868 = !DILocation(line: 521, column: 15, scope: !1604)
!1869 = !DILocation(line: 525, column: 11, scope: !1604)
!1870 = !DILocation(line: 537, column: 15, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1604, file: !428, line: 536, column: 15)
!1872 = !DILocation(line: 544, column: 15, scope: !1604)
!1873 = !DILocation(line: 546, column: 19, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !428, line: 545, column: 13)
!1875 = distinct !DILexicalBlock(scope: !1604, file: !428, line: 544, column: 15)
!1876 = !DILocation(line: 549, column: 19, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1874, file: !428, line: 549, column: 19)
!1878 = !DILocation(line: 549, column: 30, scope: !1877)
!1879 = !DILocation(line: 558, column: 15, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !428, line: 558, column: 15)
!1881 = distinct !DILexicalBlock(scope: !1874, file: !428, line: 558, column: 15)
!1882 = !DILocation(line: 558, column: 15, scope: !1881)
!1883 = !DILocation(line: 559, column: 15, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !428, line: 559, column: 15)
!1885 = distinct !DILexicalBlock(scope: !1874, file: !428, line: 559, column: 15)
!1886 = !DILocation(line: 559, column: 15, scope: !1885)
!1887 = !DILocation(line: 560, column: 15, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !428, line: 560, column: 15)
!1889 = distinct !DILexicalBlock(scope: !1874, file: !428, line: 560, column: 15)
!1890 = !DILocation(line: 560, column: 15, scope: !1889)
!1891 = !DILocation(line: 562, column: 13, scope: !1874)
!1892 = !DILocation(line: 602, column: 17, scope: !1607)
!1893 = !DILocation(line: 0, scope: !1607)
!1894 = !DILocation(line: 605, column: 29, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1611, file: !428, line: 603, column: 15)
!1896 = !DILocation(line: 605, column: 27, scope: !1895)
!1897 = !DILocation(line: 606, column: 15, scope: !1895)
!1898 = !DILocation(line: 609, column: 17, scope: !1610)
!1899 = !DILocation(line: 0, scope: !1670, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 609, column: 32, scope: !1610)
!1901 = !DILocation(line: 0, scope: !1678, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 1137, column: 3, scope: !1670, inlinedAt: !1900)
!1903 = !DILocation(line: 59, column: 10, scope: !1678, inlinedAt: !1902)
!1904 = !DILocation(line: 613, column: 29, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1610, file: !428, line: 613, column: 21)
!1906 = !DILocation(line: 613, column: 21, scope: !1610)
!1907 = !DILocation(line: 614, column: 29, scope: !1905)
!1908 = !DILocation(line: 614, column: 19, scope: !1905)
!1909 = !DILocation(line: 618, column: 21, scope: !1613)
!1910 = !DILocation(line: 620, column: 54, scope: !1613)
!1911 = !DILocation(line: 619, column: 36, scope: !1613)
!1912 = !DILocation(line: 621, column: 25, scope: !1613)
!1913 = !DILocation(line: 631, column: 38, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1622, file: !428, line: 629, column: 23)
!1915 = !DILocation(line: 631, column: 48, scope: !1914)
!1916 = !DILocation(line: 626, column: 25, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1623, file: !428, line: 624, column: 23)
!1918 = !DILocation(line: 631, column: 51, scope: !1914)
!1919 = !DILocation(line: 631, column: 25, scope: !1914)
!1920 = !DILocation(line: 632, column: 28, scope: !1914)
!1921 = !DILocation(line: 631, column: 34, scope: !1914)
!1922 = distinct !{!1922, !1919, !1920, !848}
!1923 = !DILocation(line: 0, scope: !1618)
!1924 = !DILocation(line: 646, column: 29, scope: !1620)
!1925 = !DILocation(line: 649, column: 39, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1618, file: !428, line: 648, column: 29)
!1927 = !DILocation(line: 649, column: 31, scope: !1926)
!1928 = !DILocation(line: 648, column: 60, scope: !1926)
!1929 = !DILocation(line: 648, column: 50, scope: !1926)
!1930 = !DILocation(line: 648, column: 29, scope: !1618)
!1931 = distinct !{!1931, !1930, !1932, !848}
!1932 = !DILocation(line: 654, column: 33, scope: !1618)
!1933 = !DILocation(line: 657, column: 43, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1621, file: !428, line: 657, column: 29)
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
!1947 = !DILocation(line: 664, column: 23, scope: !1613)
!1948 = !DILocation(line: 665, column: 19, scope: !1614)
!1949 = !DILocation(line: 666, column: 15, scope: !1611)
!1950 = !DILocation(line: 0, scope: !1611)
!1951 = !DILocation(line: 670, column: 19, scope: !1627)
!1952 = !DILocation(line: 670, column: 23, scope: !1627)
!1953 = !DILocation(line: 674, column: 33, scope: !1626)
!1954 = !DILocation(line: 0, scope: !1626)
!1955 = !DILocation(line: 676, column: 17, scope: !1626)
!1956 = !DILocation(line: 398, column: 12, scope: !1597)
!1957 = !DILocation(line: 678, column: 43, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !428, line: 678, column: 25)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !428, line: 677, column: 19)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !428, line: 676, column: 17)
!1961 = distinct !DILexicalBlock(scope: !1626, file: !428, line: 676, column: 17)
!1962 = !DILocation(line: 680, column: 25, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !428, line: 680, column: 25)
!1964 = distinct !DILexicalBlock(scope: !1958, file: !428, line: 679, column: 23)
!1965 = !DILocation(line: 680, column: 25, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1963, file: !428, line: 680, column: 25)
!1967 = !DILocation(line: 680, column: 25, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !428, line: 680, column: 25)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !428, line: 680, column: 25)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !428, line: 680, column: 25)
!1971 = !DILocation(line: 680, column: 25, scope: !1969)
!1972 = !DILocation(line: 680, column: 25, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !428, line: 680, column: 25)
!1974 = distinct !DILexicalBlock(scope: !1970, file: !428, line: 680, column: 25)
!1975 = !DILocation(line: 680, column: 25, scope: !1974)
!1976 = !DILocation(line: 680, column: 25, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !428, line: 680, column: 25)
!1978 = distinct !DILexicalBlock(scope: !1970, file: !428, line: 680, column: 25)
!1979 = !DILocation(line: 680, column: 25, scope: !1978)
!1980 = !DILocation(line: 680, column: 25, scope: !1970)
!1981 = !DILocation(line: 680, column: 25, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !428, line: 680, column: 25)
!1983 = distinct !DILexicalBlock(scope: !1963, file: !428, line: 680, column: 25)
!1984 = !DILocation(line: 680, column: 25, scope: !1983)
!1985 = !DILocation(line: 681, column: 25, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !428, line: 681, column: 25)
!1987 = distinct !DILexicalBlock(scope: !1964, file: !428, line: 681, column: 25)
!1988 = !DILocation(line: 681, column: 25, scope: !1987)
!1989 = !DILocation(line: 682, column: 25, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !428, line: 682, column: 25)
!1991 = distinct !DILexicalBlock(scope: !1964, file: !428, line: 682, column: 25)
!1992 = !DILocation(line: 682, column: 25, scope: !1991)
!1993 = !DILocation(line: 683, column: 38, scope: !1964)
!1994 = !DILocation(line: 683, column: 33, scope: !1964)
!1995 = !DILocation(line: 684, column: 23, scope: !1964)
!1996 = !DILocation(line: 685, column: 30, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1958, file: !428, line: 685, column: 30)
!1998 = !DILocation(line: 685, column: 30, scope: !1958)
!1999 = !DILocation(line: 687, column: 25, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !428, line: 687, column: 25)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !428, line: 687, column: 25)
!2002 = distinct !DILexicalBlock(scope: !1997, file: !428, line: 686, column: 23)
!2003 = !DILocation(line: 687, column: 25, scope: !2001)
!2004 = !DILocation(line: 689, column: 23, scope: !2002)
!2005 = !DILocation(line: 690, column: 35, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1959, file: !428, line: 690, column: 25)
!2007 = !DILocation(line: 690, column: 30, scope: !2006)
!2008 = !DILocation(line: 690, column: 25, scope: !1959)
!2009 = !DILocation(line: 692, column: 21, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !428, line: 692, column: 21)
!2011 = distinct !DILexicalBlock(scope: !1959, file: !428, line: 692, column: 21)
!2012 = !DILocation(line: 692, column: 21, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !428, line: 692, column: 21)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !428, line: 692, column: 21)
!2015 = distinct !DILexicalBlock(scope: !2010, file: !428, line: 692, column: 21)
!2016 = !DILocation(line: 692, column: 21, scope: !2014)
!2017 = !DILocation(line: 692, column: 21, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !428, line: 692, column: 21)
!2019 = distinct !DILexicalBlock(scope: !2015, file: !428, line: 692, column: 21)
!2020 = !DILocation(line: 692, column: 21, scope: !2019)
!2021 = !DILocation(line: 692, column: 21, scope: !2015)
!2022 = !DILocation(line: 0, scope: !1959)
!2023 = !DILocation(line: 693, column: 21, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !428, line: 693, column: 21)
!2025 = distinct !DILexicalBlock(scope: !1959, file: !428, line: 693, column: 21)
!2026 = !DILocation(line: 693, column: 21, scope: !2025)
!2027 = !DILocation(line: 694, column: 25, scope: !1959)
!2028 = !DILocation(line: 676, column: 17, scope: !1960)
!2029 = distinct !{!2029, !2030, !2031}
!2030 = !DILocation(line: 676, column: 17, scope: !1961)
!2031 = !DILocation(line: 695, column: 19, scope: !1961)
!2032 = !DILocation(line: 409, column: 30, scope: !1748)
!2033 = !DILocation(line: 702, column: 34, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1597, file: !428, line: 702, column: 11)
!2035 = !DILocation(line: 704, column: 14, scope: !2034)
!2036 = !DILocation(line: 705, column: 14, scope: !2034)
!2037 = !DILocation(line: 705, column: 35, scope: !2034)
!2038 = !DILocation(line: 705, column: 17, scope: !2034)
!2039 = !DILocation(line: 705, column: 47, scope: !2034)
!2040 = !DILocation(line: 705, column: 65, scope: !2034)
!2041 = !DILocation(line: 706, column: 11, scope: !2034)
!2042 = !DILocation(line: 702, column: 11, scope: !1597)
!2043 = !DILocation(line: 395, column: 15, scope: !1595)
!2044 = !DILocation(line: 709, column: 5, scope: !1597)
!2045 = !DILocation(line: 710, column: 7, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1597, file: !428, line: 710, column: 7)
!2047 = !DILocation(line: 710, column: 7, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2046, file: !428, line: 710, column: 7)
!2049 = !DILocation(line: 710, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !428, line: 710, column: 7)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !428, line: 710, column: 7)
!2052 = distinct !DILexicalBlock(scope: !2048, file: !428, line: 710, column: 7)
!2053 = !DILocation(line: 710, column: 7, scope: !2051)
!2054 = !DILocation(line: 710, column: 7, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !428, line: 710, column: 7)
!2056 = distinct !DILexicalBlock(scope: !2052, file: !428, line: 710, column: 7)
!2057 = !DILocation(line: 710, column: 7, scope: !2056)
!2058 = !DILocation(line: 710, column: 7, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !428, line: 710, column: 7)
!2060 = distinct !DILexicalBlock(scope: !2052, file: !428, line: 710, column: 7)
!2061 = !DILocation(line: 710, column: 7, scope: !2060)
!2062 = !DILocation(line: 710, column: 7, scope: !2052)
!2063 = !DILocation(line: 710, column: 7, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !428, line: 710, column: 7)
!2065 = distinct !DILexicalBlock(scope: !2046, file: !428, line: 710, column: 7)
!2066 = !DILocation(line: 710, column: 7, scope: !2065)
!2067 = !DILocation(line: 712, column: 5, scope: !1597)
!2068 = !DILocation(line: 713, column: 7, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !428, line: 713, column: 7)
!2070 = distinct !DILexicalBlock(scope: !1597, file: !428, line: 713, column: 7)
!2071 = !DILocation(line: 417, column: 21, scope: !1597)
!2072 = !DILocation(line: 713, column: 7, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !428, line: 713, column: 7)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !428, line: 713, column: 7)
!2075 = distinct !DILexicalBlock(scope: !2069, file: !428, line: 713, column: 7)
!2076 = !DILocation(line: 713, column: 7, scope: !2074)
!2077 = !DILocation(line: 713, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !428, line: 713, column: 7)
!2079 = distinct !DILexicalBlock(scope: !2075, file: !428, line: 713, column: 7)
!2080 = !DILocation(line: 713, column: 7, scope: !2079)
!2081 = !DILocation(line: 713, column: 7, scope: !2075)
!2082 = !DILocation(line: 714, column: 7, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !428, line: 714, column: 7)
!2084 = distinct !DILexicalBlock(scope: !1597, file: !428, line: 714, column: 7)
!2085 = !DILocation(line: 714, column: 7, scope: !2084)
!2086 = !DILocation(line: 716, column: 13, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1597, file: !428, line: 716, column: 11)
!2088 = !DILocation(line: 716, column: 11, scope: !1597)
!2089 = !DILocation(line: 718, column: 5, scope: !1598)
!2090 = !DILocation(line: 395, column: 82, scope: !1598)
!2091 = !DILocation(line: 395, column: 3, scope: !1598)
!2092 = distinct !{!2092, !1744, !2093, !848}
!2093 = !DILocation(line: 718, column: 5, scope: !1595)
!2094 = !DILocation(line: 720, column: 11, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !1563, file: !428, line: 720, column: 7)
!2096 = !DILocation(line: 720, column: 16, scope: !2095)
!2097 = !DILocation(line: 728, column: 51, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1563, file: !428, line: 728, column: 7)
!2099 = !DILocation(line: 731, column: 11, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !428, line: 731, column: 11)
!2101 = distinct !DILexicalBlock(scope: !2098, file: !428, line: 730, column: 5)
!2102 = !DILocation(line: 731, column: 11, scope: !2101)
!2103 = !DILocation(line: 732, column: 16, scope: !2100)
!2104 = !DILocation(line: 732, column: 9, scope: !2100)
!2105 = !DILocation(line: 736, column: 18, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2100, file: !428, line: 736, column: 16)
!2107 = !DILocation(line: 736, column: 29, scope: !2106)
!2108 = !DILocation(line: 745, column: 7, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !1563, file: !428, line: 745, column: 7)
!2110 = !DILocation(line: 745, column: 20, scope: !2109)
!2111 = !DILocation(line: 746, column: 12, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !428, line: 746, column: 5)
!2113 = distinct !DILexicalBlock(scope: !2109, file: !428, line: 746, column: 5)
!2114 = !DILocation(line: 746, column: 5, scope: !2113)
!2115 = !DILocation(line: 747, column: 7, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !428, line: 747, column: 7)
!2117 = distinct !DILexicalBlock(scope: !2112, file: !428, line: 747, column: 7)
!2118 = !DILocation(line: 747, column: 7, scope: !2117)
!2119 = !DILocation(line: 746, column: 39, scope: !2112)
!2120 = distinct !{!2120, !2114, !2121, !848}
!2121 = !DILocation(line: 747, column: 7, scope: !2113)
!2122 = !DILocation(line: 749, column: 11, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !1563, file: !428, line: 749, column: 7)
!2124 = !DILocation(line: 749, column: 7, scope: !1563)
!2125 = !DILocation(line: 750, column: 5, scope: !2123)
!2126 = !DILocation(line: 750, column: 17, scope: !2123)
!2127 = !DILocation(line: 753, column: 2, scope: !1563)
!2128 = !DILocation(line: 756, column: 51, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !1563, file: !428, line: 756, column: 7)
!2130 = !DILocation(line: 756, column: 21, scope: !2129)
!2131 = !DILocation(line: 760, column: 42, scope: !1563)
!2132 = !DILocation(line: 758, column: 10, scope: !1563)
!2133 = !DILocation(line: 758, column: 3, scope: !1563)
!2134 = !DILocation(line: 762, column: 1, scope: !1563)
!2135 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !929, file: !929, line: 98, type: !2136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!92}
!2138 = !DISubprogram(name: "strlen", scope: !921, file: !921, line: 407, type: !2139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!94, !68}
!2141 = !DISubprogram(name: "iswprint", scope: !2142, file: !2142, line: 120, type: !1938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2142 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2143 = distinct !DISubprogram(name: "quotearg_alloc", scope: !428, file: !428, line: 788, type: !2144, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2146)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!237, !68, !92, !1456}
!2146 = !{!2147, !2148, !2149}
!2147 = !DILocalVariable(name: "arg", arg: 1, scope: !2143, file: !428, line: 788, type: !68)
!2148 = !DILocalVariable(name: "argsize", arg: 2, scope: !2143, file: !428, line: 788, type: !92)
!2149 = !DILocalVariable(name: "o", arg: 3, scope: !2143, file: !428, line: 789, type: !1456)
!2150 = !DILocation(line: 0, scope: !2143)
!2151 = !DILocalVariable(name: "arg", arg: 1, scope: !2152, file: !428, line: 801, type: !68)
!2152 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !428, file: !428, line: 801, type: !2153, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2155)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!237, !68, !92, !678, !1456}
!2155 = !{!2151, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163}
!2156 = !DILocalVariable(name: "argsize", arg: 2, scope: !2152, file: !428, line: 801, type: !92)
!2157 = !DILocalVariable(name: "size", arg: 3, scope: !2152, file: !428, line: 801, type: !678)
!2158 = !DILocalVariable(name: "o", arg: 4, scope: !2152, file: !428, line: 802, type: !1456)
!2159 = !DILocalVariable(name: "p", scope: !2152, file: !428, line: 804, type: !1456)
!2160 = !DILocalVariable(name: "saved_errno", scope: !2152, file: !428, line: 805, type: !90)
!2161 = !DILocalVariable(name: "flags", scope: !2152, file: !428, line: 807, type: !90)
!2162 = !DILocalVariable(name: "bufsize", scope: !2152, file: !428, line: 808, type: !92)
!2163 = !DILocalVariable(name: "buf", scope: !2152, file: !428, line: 812, type: !237)
!2164 = !DILocation(line: 0, scope: !2152, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 791, column: 10, scope: !2143)
!2166 = !DILocation(line: 804, column: 37, scope: !2152, inlinedAt: !2165)
!2167 = !DILocation(line: 805, column: 21, scope: !2152, inlinedAt: !2165)
!2168 = !DILocation(line: 807, column: 18, scope: !2152, inlinedAt: !2165)
!2169 = !DILocation(line: 807, column: 24, scope: !2152, inlinedAt: !2165)
!2170 = !DILocation(line: 808, column: 72, scope: !2152, inlinedAt: !2165)
!2171 = !DILocation(line: 809, column: 56, scope: !2152, inlinedAt: !2165)
!2172 = !DILocation(line: 810, column: 49, scope: !2152, inlinedAt: !2165)
!2173 = !DILocation(line: 811, column: 49, scope: !2152, inlinedAt: !2165)
!2174 = !DILocation(line: 808, column: 20, scope: !2152, inlinedAt: !2165)
!2175 = !DILocation(line: 811, column: 62, scope: !2152, inlinedAt: !2165)
!2176 = !DILocation(line: 812, column: 15, scope: !2152, inlinedAt: !2165)
!2177 = !DILocation(line: 813, column: 60, scope: !2152, inlinedAt: !2165)
!2178 = !DILocation(line: 815, column: 32, scope: !2152, inlinedAt: !2165)
!2179 = !DILocation(line: 815, column: 47, scope: !2152, inlinedAt: !2165)
!2180 = !DILocation(line: 813, column: 3, scope: !2152, inlinedAt: !2165)
!2181 = !DILocation(line: 816, column: 9, scope: !2152, inlinedAt: !2165)
!2182 = !DILocation(line: 791, column: 3, scope: !2143)
!2183 = !DILocation(line: 0, scope: !2152)
!2184 = !DILocation(line: 804, column: 37, scope: !2152)
!2185 = !DILocation(line: 805, column: 21, scope: !2152)
!2186 = !DILocation(line: 807, column: 18, scope: !2152)
!2187 = !DILocation(line: 807, column: 27, scope: !2152)
!2188 = !DILocation(line: 807, column: 24, scope: !2152)
!2189 = !DILocation(line: 808, column: 72, scope: !2152)
!2190 = !DILocation(line: 809, column: 56, scope: !2152)
!2191 = !DILocation(line: 810, column: 49, scope: !2152)
!2192 = !DILocation(line: 811, column: 49, scope: !2152)
!2193 = !DILocation(line: 808, column: 20, scope: !2152)
!2194 = !DILocation(line: 811, column: 62, scope: !2152)
!2195 = !DILocation(line: 812, column: 15, scope: !2152)
!2196 = !DILocation(line: 813, column: 60, scope: !2152)
!2197 = !DILocation(line: 815, column: 32, scope: !2152)
!2198 = !DILocation(line: 815, column: 47, scope: !2152)
!2199 = !DILocation(line: 813, column: 3, scope: !2152)
!2200 = !DILocation(line: 816, column: 9, scope: !2152)
!2201 = !DILocation(line: 817, column: 7, scope: !2152)
!2202 = !DILocation(line: 818, column: 11, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2152, file: !428, line: 817, column: 7)
!2204 = !{!1174, !1174, i64 0}
!2205 = !DILocation(line: 818, column: 5, scope: !2203)
!2206 = !DILocation(line: 819, column: 3, scope: !2152)
!2207 = distinct !DISubprogram(name: "quotearg_free", scope: !428, file: !428, line: 837, type: !359, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2208)
!2208 = !{!2209, !2210}
!2209 = !DILocalVariable(name: "sv", scope: !2207, file: !428, line: 839, type: !526)
!2210 = !DILocalVariable(name: "i", scope: !2211, file: !428, line: 840, type: !90)
!2211 = distinct !DILexicalBlock(scope: !2207, file: !428, line: 840, column: 3)
!2212 = !DILocation(line: 839, column: 24, scope: !2207)
!2213 = !DILocation(line: 0, scope: !2207)
!2214 = !DILocation(line: 0, scope: !2211)
!2215 = !DILocation(line: 840, column: 21, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2211, file: !428, line: 840, column: 3)
!2217 = !DILocation(line: 840, column: 3, scope: !2211)
!2218 = !DILocation(line: 842, column: 13, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2207, file: !428, line: 842, column: 7)
!2220 = !{!2221, !746, i64 8}
!2221 = !{!"slotvec", !1174, i64 0, !746, i64 8}
!2222 = !DILocation(line: 842, column: 17, scope: !2219)
!2223 = !DILocation(line: 842, column: 7, scope: !2207)
!2224 = !DILocation(line: 841, column: 17, scope: !2216)
!2225 = !DILocation(line: 841, column: 5, scope: !2216)
!2226 = !DILocation(line: 840, column: 32, scope: !2216)
!2227 = distinct !{!2227, !2217, !2228, !848}
!2228 = !DILocation(line: 841, column: 20, scope: !2211)
!2229 = !DILocation(line: 844, column: 7, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2219, file: !428, line: 843, column: 5)
!2231 = !DILocation(line: 845, column: 21, scope: !2230)
!2232 = !{!2221, !1174, i64 0}
!2233 = !DILocation(line: 846, column: 20, scope: !2230)
!2234 = !DILocation(line: 847, column: 5, scope: !2230)
!2235 = !DILocation(line: 848, column: 10, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2207, file: !428, line: 848, column: 7)
!2237 = !DILocation(line: 848, column: 7, scope: !2207)
!2238 = !DILocation(line: 850, column: 7, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2236, file: !428, line: 849, column: 5)
!2240 = !DILocation(line: 851, column: 15, scope: !2239)
!2241 = !DILocation(line: 852, column: 5, scope: !2239)
!2242 = !DILocation(line: 853, column: 10, scope: !2207)
!2243 = !DILocation(line: 854, column: 1, scope: !2207)
!2244 = !DISubprogram(name: "free", scope: !1410, file: !1410, line: 786, type: !2245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{null, !89}
!2247 = distinct !DISubprogram(name: "quotearg_n", scope: !428, file: !428, line: 919, type: !918, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2248)
!2248 = !{!2249, !2250}
!2249 = !DILocalVariable(name: "n", arg: 1, scope: !2247, file: !428, line: 919, type: !90)
!2250 = !DILocalVariable(name: "arg", arg: 2, scope: !2247, file: !428, line: 919, type: !68)
!2251 = !DILocation(line: 0, scope: !2247)
!2252 = !DILocation(line: 921, column: 10, scope: !2247)
!2253 = !DILocation(line: 921, column: 3, scope: !2247)
!2254 = distinct !DISubprogram(name: "quotearg_n_options", scope: !428, file: !428, line: 866, type: !2255, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2257)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!237, !90, !68, !92, !1456}
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2268, !2269, !2271, !2272, !2273}
!2258 = !DILocalVariable(name: "n", arg: 1, scope: !2254, file: !428, line: 866, type: !90)
!2259 = !DILocalVariable(name: "arg", arg: 2, scope: !2254, file: !428, line: 866, type: !68)
!2260 = !DILocalVariable(name: "argsize", arg: 3, scope: !2254, file: !428, line: 866, type: !92)
!2261 = !DILocalVariable(name: "options", arg: 4, scope: !2254, file: !428, line: 867, type: !1456)
!2262 = !DILocalVariable(name: "saved_errno", scope: !2254, file: !428, line: 869, type: !90)
!2263 = !DILocalVariable(name: "sv", scope: !2254, file: !428, line: 871, type: !526)
!2264 = !DILocalVariable(name: "nslots_max", scope: !2254, file: !428, line: 873, type: !90)
!2265 = !DILocalVariable(name: "preallocated", scope: !2266, file: !428, line: 879, type: !216)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !428, line: 878, column: 5)
!2267 = distinct !DILexicalBlock(scope: !2254, file: !428, line: 877, column: 7)
!2268 = !DILocalVariable(name: "new_nslots", scope: !2266, file: !428, line: 880, type: !691)
!2269 = !DILocalVariable(name: "size", scope: !2270, file: !428, line: 891, type: !92)
!2270 = distinct !DILexicalBlock(scope: !2254, file: !428, line: 890, column: 3)
!2271 = !DILocalVariable(name: "val", scope: !2270, file: !428, line: 892, type: !237)
!2272 = !DILocalVariable(name: "flags", scope: !2270, file: !428, line: 894, type: !90)
!2273 = !DILocalVariable(name: "qsize", scope: !2270, file: !428, line: 895, type: !92)
!2274 = distinct !DIAssignID()
!2275 = !DILocation(line: 0, scope: !2266)
!2276 = !DILocation(line: 0, scope: !2254)
!2277 = !DILocation(line: 869, column: 21, scope: !2254)
!2278 = !DILocation(line: 871, column: 24, scope: !2254)
!2279 = !DILocation(line: 874, column: 17, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2254, file: !428, line: 874, column: 7)
!2281 = !DILocation(line: 875, column: 5, scope: !2280)
!2282 = !DILocation(line: 877, column: 7, scope: !2267)
!2283 = !DILocation(line: 877, column: 14, scope: !2267)
!2284 = !DILocation(line: 877, column: 7, scope: !2254)
!2285 = !DILocation(line: 879, column: 31, scope: !2266)
!2286 = !DILocation(line: 880, column: 7, scope: !2266)
!2287 = !DILocation(line: 880, column: 26, scope: !2266)
!2288 = !DILocation(line: 880, column: 13, scope: !2266)
!2289 = distinct !DIAssignID()
!2290 = !DILocation(line: 882, column: 31, scope: !2266)
!2291 = !DILocation(line: 883, column: 33, scope: !2266)
!2292 = !DILocation(line: 883, column: 42, scope: !2266)
!2293 = !DILocation(line: 883, column: 31, scope: !2266)
!2294 = !DILocation(line: 882, column: 22, scope: !2266)
!2295 = !DILocation(line: 882, column: 15, scope: !2266)
!2296 = !DILocation(line: 884, column: 11, scope: !2266)
!2297 = !DILocation(line: 885, column: 15, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2266, file: !428, line: 884, column: 11)
!2299 = !{i64 0, i64 8, !2204, i64 8, i64 8, !745}
!2300 = !DILocation(line: 885, column: 9, scope: !2298)
!2301 = !DILocation(line: 886, column: 20, scope: !2266)
!2302 = !DILocation(line: 886, column: 18, scope: !2266)
!2303 = !DILocation(line: 886, column: 32, scope: !2266)
!2304 = !DILocation(line: 886, column: 43, scope: !2266)
!2305 = !DILocation(line: 886, column: 53, scope: !2266)
!2306 = !DILocation(line: 0, scope: !1678, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 886, column: 7, scope: !2266)
!2308 = !DILocation(line: 59, column: 10, scope: !1678, inlinedAt: !2307)
!2309 = !DILocation(line: 887, column: 16, scope: !2266)
!2310 = !DILocation(line: 887, column: 14, scope: !2266)
!2311 = !DILocation(line: 888, column: 5, scope: !2267)
!2312 = !DILocation(line: 888, column: 5, scope: !2266)
!2313 = !DILocation(line: 891, column: 19, scope: !2270)
!2314 = !DILocation(line: 891, column: 25, scope: !2270)
!2315 = !DILocation(line: 0, scope: !2270)
!2316 = !DILocation(line: 892, column: 23, scope: !2270)
!2317 = !DILocation(line: 894, column: 26, scope: !2270)
!2318 = !DILocation(line: 894, column: 32, scope: !2270)
!2319 = !DILocation(line: 896, column: 55, scope: !2270)
!2320 = !DILocation(line: 897, column: 55, scope: !2270)
!2321 = !DILocation(line: 898, column: 55, scope: !2270)
!2322 = !DILocation(line: 899, column: 55, scope: !2270)
!2323 = !DILocation(line: 895, column: 20, scope: !2270)
!2324 = !DILocation(line: 901, column: 14, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2270, file: !428, line: 901, column: 9)
!2326 = !DILocation(line: 901, column: 9, scope: !2270)
!2327 = !DILocation(line: 903, column: 35, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2325, file: !428, line: 902, column: 7)
!2329 = !DILocation(line: 903, column: 20, scope: !2328)
!2330 = !DILocation(line: 904, column: 17, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2328, file: !428, line: 904, column: 13)
!2332 = !DILocation(line: 904, column: 13, scope: !2328)
!2333 = !DILocation(line: 905, column: 11, scope: !2331)
!2334 = !DILocation(line: 906, column: 27, scope: !2328)
!2335 = !DILocation(line: 906, column: 19, scope: !2328)
!2336 = !DILocation(line: 907, column: 69, scope: !2328)
!2337 = !DILocation(line: 909, column: 44, scope: !2328)
!2338 = !DILocation(line: 910, column: 44, scope: !2328)
!2339 = !DILocation(line: 907, column: 9, scope: !2328)
!2340 = !DILocation(line: 911, column: 7, scope: !2328)
!2341 = !DILocation(line: 913, column: 11, scope: !2270)
!2342 = !DILocation(line: 914, column: 5, scope: !2270)
!2343 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !428, file: !428, line: 925, type: !2344, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2346)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!237, !90, !68, !92}
!2346 = !{!2347, !2348, !2349}
!2347 = !DILocalVariable(name: "n", arg: 1, scope: !2343, file: !428, line: 925, type: !90)
!2348 = !DILocalVariable(name: "arg", arg: 2, scope: !2343, file: !428, line: 925, type: !68)
!2349 = !DILocalVariable(name: "argsize", arg: 3, scope: !2343, file: !428, line: 925, type: !92)
!2350 = !DILocation(line: 0, scope: !2343)
!2351 = !DILocation(line: 927, column: 10, scope: !2343)
!2352 = !DILocation(line: 927, column: 3, scope: !2343)
!2353 = distinct !DISubprogram(name: "quotearg", scope: !428, file: !428, line: 931, type: !931, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2354)
!2354 = !{!2355}
!2355 = !DILocalVariable(name: "arg", arg: 1, scope: !2353, file: !428, line: 931, type: !68)
!2356 = !DILocation(line: 0, scope: !2353)
!2357 = !DILocation(line: 0, scope: !2247, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 933, column: 10, scope: !2353)
!2359 = !DILocation(line: 921, column: 10, scope: !2247, inlinedAt: !2358)
!2360 = !DILocation(line: 933, column: 3, scope: !2353)
!2361 = distinct !DISubprogram(name: "quotearg_mem", scope: !428, file: !428, line: 937, type: !2362, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!237, !68, !92}
!2364 = !{!2365, !2366}
!2365 = !DILocalVariable(name: "arg", arg: 1, scope: !2361, file: !428, line: 937, type: !68)
!2366 = !DILocalVariable(name: "argsize", arg: 2, scope: !2361, file: !428, line: 937, type: !92)
!2367 = !DILocation(line: 0, scope: !2361)
!2368 = !DILocation(line: 0, scope: !2343, inlinedAt: !2369)
!2369 = distinct !DILocation(line: 939, column: 10, scope: !2361)
!2370 = !DILocation(line: 927, column: 10, scope: !2343, inlinedAt: !2369)
!2371 = !DILocation(line: 939, column: 3, scope: !2361)
!2372 = distinct !DISubprogram(name: "quotearg_n_style", scope: !428, file: !428, line: 943, type: !2373, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2375)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!237, !90, !451, !68}
!2375 = !{!2376, !2377, !2378, !2379}
!2376 = !DILocalVariable(name: "n", arg: 1, scope: !2372, file: !428, line: 943, type: !90)
!2377 = !DILocalVariable(name: "s", arg: 2, scope: !2372, file: !428, line: 943, type: !451)
!2378 = !DILocalVariable(name: "arg", arg: 3, scope: !2372, file: !428, line: 943, type: !68)
!2379 = !DILocalVariable(name: "o", scope: !2372, file: !428, line: 945, type: !1457)
!2380 = distinct !DIAssignID()
!2381 = !DILocation(line: 0, scope: !2372)
!2382 = !DILocation(line: 945, column: 3, scope: !2372)
!2383 = !{!2384}
!2384 = distinct !{!2384, !2385, !"quoting_options_from_style: argument 0"}
!2385 = distinct !{!2385, !"quoting_options_from_style"}
!2386 = !DILocation(line: 945, column: 36, scope: !2372)
!2387 = !DILocalVariable(name: "style", arg: 1, scope: !2388, file: !428, line: 183, type: !451)
!2388 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !428, file: !428, line: 183, type: !2389, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2391)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!478, !451}
!2391 = !{!2387, !2392}
!2392 = !DILocalVariable(name: "o", scope: !2388, file: !428, line: 185, type: !478)
!2393 = !DILocation(line: 0, scope: !2388, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 945, column: 36, scope: !2372)
!2395 = !DILocation(line: 185, column: 26, scope: !2388, inlinedAt: !2394)
!2396 = distinct !DIAssignID()
!2397 = !DILocation(line: 186, column: 13, scope: !2398, inlinedAt: !2394)
!2398 = distinct !DILexicalBlock(scope: !2388, file: !428, line: 186, column: 7)
!2399 = !DILocation(line: 186, column: 7, scope: !2388, inlinedAt: !2394)
!2400 = !DILocation(line: 187, column: 5, scope: !2398, inlinedAt: !2394)
!2401 = !DILocation(line: 188, column: 11, scope: !2388, inlinedAt: !2394)
!2402 = distinct !DIAssignID()
!2403 = !DILocation(line: 946, column: 10, scope: !2372)
!2404 = !DILocation(line: 947, column: 1, scope: !2372)
!2405 = !DILocation(line: 946, column: 3, scope: !2372)
!2406 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !428, file: !428, line: 950, type: !2407, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2409)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!237, !90, !451, !68, !92}
!2409 = !{!2410, !2411, !2412, !2413, !2414}
!2410 = !DILocalVariable(name: "n", arg: 1, scope: !2406, file: !428, line: 950, type: !90)
!2411 = !DILocalVariable(name: "s", arg: 2, scope: !2406, file: !428, line: 950, type: !451)
!2412 = !DILocalVariable(name: "arg", arg: 3, scope: !2406, file: !428, line: 951, type: !68)
!2413 = !DILocalVariable(name: "argsize", arg: 4, scope: !2406, file: !428, line: 951, type: !92)
!2414 = !DILocalVariable(name: "o", scope: !2406, file: !428, line: 953, type: !1457)
!2415 = distinct !DIAssignID()
!2416 = !DILocation(line: 0, scope: !2406)
!2417 = !DILocation(line: 953, column: 3, scope: !2406)
!2418 = !{!2419}
!2419 = distinct !{!2419, !2420, !"quoting_options_from_style: argument 0"}
!2420 = distinct !{!2420, !"quoting_options_from_style"}
!2421 = !DILocation(line: 953, column: 36, scope: !2406)
!2422 = !DILocation(line: 0, scope: !2388, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 953, column: 36, scope: !2406)
!2424 = !DILocation(line: 185, column: 26, scope: !2388, inlinedAt: !2423)
!2425 = distinct !DIAssignID()
!2426 = !DILocation(line: 186, column: 13, scope: !2398, inlinedAt: !2423)
!2427 = !DILocation(line: 186, column: 7, scope: !2388, inlinedAt: !2423)
!2428 = !DILocation(line: 187, column: 5, scope: !2398, inlinedAt: !2423)
!2429 = !DILocation(line: 188, column: 11, scope: !2388, inlinedAt: !2423)
!2430 = distinct !DIAssignID()
!2431 = !DILocation(line: 954, column: 10, scope: !2406)
!2432 = !DILocation(line: 955, column: 1, scope: !2406)
!2433 = !DILocation(line: 954, column: 3, scope: !2406)
!2434 = distinct !DISubprogram(name: "quotearg_style", scope: !428, file: !428, line: 958, type: !2435, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2437)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!237, !451, !68}
!2437 = !{!2438, !2439}
!2438 = !DILocalVariable(name: "s", arg: 1, scope: !2434, file: !428, line: 958, type: !451)
!2439 = !DILocalVariable(name: "arg", arg: 2, scope: !2434, file: !428, line: 958, type: !68)
!2440 = distinct !DIAssignID()
!2441 = !DILocation(line: 0, scope: !2434)
!2442 = !DILocation(line: 0, scope: !2372, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 960, column: 10, scope: !2434)
!2444 = !DILocation(line: 945, column: 3, scope: !2372, inlinedAt: !2443)
!2445 = !{!2446}
!2446 = distinct !{!2446, !2447, !"quoting_options_from_style: argument 0"}
!2447 = distinct !{!2447, !"quoting_options_from_style"}
!2448 = !DILocation(line: 945, column: 36, scope: !2372, inlinedAt: !2443)
!2449 = !DILocation(line: 0, scope: !2388, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 945, column: 36, scope: !2372, inlinedAt: !2443)
!2451 = !DILocation(line: 185, column: 26, scope: !2388, inlinedAt: !2450)
!2452 = distinct !DIAssignID()
!2453 = !DILocation(line: 186, column: 13, scope: !2398, inlinedAt: !2450)
!2454 = !DILocation(line: 186, column: 7, scope: !2388, inlinedAt: !2450)
!2455 = !DILocation(line: 187, column: 5, scope: !2398, inlinedAt: !2450)
!2456 = !DILocation(line: 188, column: 11, scope: !2388, inlinedAt: !2450)
!2457 = distinct !DIAssignID()
!2458 = !DILocation(line: 946, column: 10, scope: !2372, inlinedAt: !2443)
!2459 = !DILocation(line: 947, column: 1, scope: !2372, inlinedAt: !2443)
!2460 = !DILocation(line: 960, column: 3, scope: !2434)
!2461 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !428, file: !428, line: 964, type: !2462, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2464)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!237, !451, !68, !92}
!2464 = !{!2465, !2466, !2467}
!2465 = !DILocalVariable(name: "s", arg: 1, scope: !2461, file: !428, line: 964, type: !451)
!2466 = !DILocalVariable(name: "arg", arg: 2, scope: !2461, file: !428, line: 964, type: !68)
!2467 = !DILocalVariable(name: "argsize", arg: 3, scope: !2461, file: !428, line: 964, type: !92)
!2468 = distinct !DIAssignID()
!2469 = !DILocation(line: 0, scope: !2461)
!2470 = !DILocation(line: 0, scope: !2406, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 966, column: 10, scope: !2461)
!2472 = !DILocation(line: 953, column: 3, scope: !2406, inlinedAt: !2471)
!2473 = !{!2474}
!2474 = distinct !{!2474, !2475, !"quoting_options_from_style: argument 0"}
!2475 = distinct !{!2475, !"quoting_options_from_style"}
!2476 = !DILocation(line: 953, column: 36, scope: !2406, inlinedAt: !2471)
!2477 = !DILocation(line: 0, scope: !2388, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 953, column: 36, scope: !2406, inlinedAt: !2471)
!2479 = !DILocation(line: 185, column: 26, scope: !2388, inlinedAt: !2478)
!2480 = distinct !DIAssignID()
!2481 = !DILocation(line: 186, column: 13, scope: !2398, inlinedAt: !2478)
!2482 = !DILocation(line: 186, column: 7, scope: !2388, inlinedAt: !2478)
!2483 = !DILocation(line: 187, column: 5, scope: !2398, inlinedAt: !2478)
!2484 = !DILocation(line: 188, column: 11, scope: !2388, inlinedAt: !2478)
!2485 = distinct !DIAssignID()
!2486 = !DILocation(line: 954, column: 10, scope: !2406, inlinedAt: !2471)
!2487 = !DILocation(line: 955, column: 1, scope: !2406, inlinedAt: !2471)
!2488 = !DILocation(line: 966, column: 3, scope: !2461)
!2489 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !428, file: !428, line: 970, type: !2490, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2492)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!237, !68, !92, !4}
!2492 = !{!2493, !2494, !2495, !2496}
!2493 = !DILocalVariable(name: "arg", arg: 1, scope: !2489, file: !428, line: 970, type: !68)
!2494 = !DILocalVariable(name: "argsize", arg: 2, scope: !2489, file: !428, line: 970, type: !92)
!2495 = !DILocalVariable(name: "ch", arg: 3, scope: !2489, file: !428, line: 970, type: !4)
!2496 = !DILocalVariable(name: "options", scope: !2489, file: !428, line: 972, type: !478)
!2497 = distinct !DIAssignID()
!2498 = !DILocation(line: 0, scope: !2489)
!2499 = !DILocation(line: 972, column: 3, scope: !2489)
!2500 = !DILocation(line: 973, column: 13, scope: !2489)
!2501 = !{i64 0, i64 4, !801, i64 4, i64 4, !801, i64 8, i64 32, !810, i64 40, i64 8, !745, i64 48, i64 8, !745}
!2502 = distinct !DIAssignID()
!2503 = !DILocation(line: 0, scope: !1476, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 974, column: 3, scope: !2489)
!2505 = !DILocation(line: 147, column: 41, scope: !1476, inlinedAt: !2504)
!2506 = !DILocation(line: 147, column: 62, scope: !1476, inlinedAt: !2504)
!2507 = !DILocation(line: 147, column: 57, scope: !1476, inlinedAt: !2504)
!2508 = !DILocation(line: 148, column: 15, scope: !1476, inlinedAt: !2504)
!2509 = !DILocation(line: 149, column: 21, scope: !1476, inlinedAt: !2504)
!2510 = !DILocation(line: 149, column: 24, scope: !1476, inlinedAt: !2504)
!2511 = !DILocation(line: 150, column: 19, scope: !1476, inlinedAt: !2504)
!2512 = !DILocation(line: 150, column: 24, scope: !1476, inlinedAt: !2504)
!2513 = !DILocation(line: 150, column: 6, scope: !1476, inlinedAt: !2504)
!2514 = !DILocation(line: 975, column: 10, scope: !2489)
!2515 = !DILocation(line: 976, column: 1, scope: !2489)
!2516 = !DILocation(line: 975, column: 3, scope: !2489)
!2517 = distinct !DISubprogram(name: "quotearg_char", scope: !428, file: !428, line: 979, type: !2518, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!237, !68, !4}
!2520 = !{!2521, !2522}
!2521 = !DILocalVariable(name: "arg", arg: 1, scope: !2517, file: !428, line: 979, type: !68)
!2522 = !DILocalVariable(name: "ch", arg: 2, scope: !2517, file: !428, line: 979, type: !4)
!2523 = distinct !DIAssignID()
!2524 = !DILocation(line: 0, scope: !2517)
!2525 = !DILocation(line: 0, scope: !2489, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 981, column: 10, scope: !2517)
!2527 = !DILocation(line: 972, column: 3, scope: !2489, inlinedAt: !2526)
!2528 = !DILocation(line: 973, column: 13, scope: !2489, inlinedAt: !2526)
!2529 = distinct !DIAssignID()
!2530 = !DILocation(line: 0, scope: !1476, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 974, column: 3, scope: !2489, inlinedAt: !2526)
!2532 = !DILocation(line: 147, column: 41, scope: !1476, inlinedAt: !2531)
!2533 = !DILocation(line: 147, column: 62, scope: !1476, inlinedAt: !2531)
!2534 = !DILocation(line: 147, column: 57, scope: !1476, inlinedAt: !2531)
!2535 = !DILocation(line: 148, column: 15, scope: !1476, inlinedAt: !2531)
!2536 = !DILocation(line: 149, column: 21, scope: !1476, inlinedAt: !2531)
!2537 = !DILocation(line: 149, column: 24, scope: !1476, inlinedAt: !2531)
!2538 = !DILocation(line: 150, column: 19, scope: !1476, inlinedAt: !2531)
!2539 = !DILocation(line: 150, column: 24, scope: !1476, inlinedAt: !2531)
!2540 = !DILocation(line: 150, column: 6, scope: !1476, inlinedAt: !2531)
!2541 = !DILocation(line: 975, column: 10, scope: !2489, inlinedAt: !2526)
!2542 = !DILocation(line: 976, column: 1, scope: !2489, inlinedAt: !2526)
!2543 = !DILocation(line: 981, column: 3, scope: !2517)
!2544 = distinct !DISubprogram(name: "quotearg_colon", scope: !428, file: !428, line: 985, type: !931, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2545)
!2545 = !{!2546}
!2546 = !DILocalVariable(name: "arg", arg: 1, scope: !2544, file: !428, line: 985, type: !68)
!2547 = distinct !DIAssignID()
!2548 = !DILocation(line: 0, scope: !2544)
!2549 = !DILocation(line: 0, scope: !2517, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 987, column: 10, scope: !2544)
!2551 = !DILocation(line: 0, scope: !2489, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 981, column: 10, scope: !2517, inlinedAt: !2550)
!2553 = !DILocation(line: 972, column: 3, scope: !2489, inlinedAt: !2552)
!2554 = !DILocation(line: 973, column: 13, scope: !2489, inlinedAt: !2552)
!2555 = distinct !DIAssignID()
!2556 = !DILocation(line: 0, scope: !1476, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 974, column: 3, scope: !2489, inlinedAt: !2552)
!2558 = !DILocation(line: 147, column: 57, scope: !1476, inlinedAt: !2557)
!2559 = !DILocation(line: 149, column: 21, scope: !1476, inlinedAt: !2557)
!2560 = !DILocation(line: 150, column: 6, scope: !1476, inlinedAt: !2557)
!2561 = !DILocation(line: 975, column: 10, scope: !2489, inlinedAt: !2552)
!2562 = !DILocation(line: 976, column: 1, scope: !2489, inlinedAt: !2552)
!2563 = !DILocation(line: 987, column: 3, scope: !2544)
!2564 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !428, file: !428, line: 991, type: !2362, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2565)
!2565 = !{!2566, !2567}
!2566 = !DILocalVariable(name: "arg", arg: 1, scope: !2564, file: !428, line: 991, type: !68)
!2567 = !DILocalVariable(name: "argsize", arg: 2, scope: !2564, file: !428, line: 991, type: !92)
!2568 = distinct !DIAssignID()
!2569 = !DILocation(line: 0, scope: !2564)
!2570 = !DILocation(line: 0, scope: !2489, inlinedAt: !2571)
!2571 = distinct !DILocation(line: 993, column: 10, scope: !2564)
!2572 = !DILocation(line: 972, column: 3, scope: !2489, inlinedAt: !2571)
!2573 = !DILocation(line: 973, column: 13, scope: !2489, inlinedAt: !2571)
!2574 = distinct !DIAssignID()
!2575 = !DILocation(line: 0, scope: !1476, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 974, column: 3, scope: !2489, inlinedAt: !2571)
!2577 = !DILocation(line: 147, column: 57, scope: !1476, inlinedAt: !2576)
!2578 = !DILocation(line: 149, column: 21, scope: !1476, inlinedAt: !2576)
!2579 = !DILocation(line: 150, column: 6, scope: !1476, inlinedAt: !2576)
!2580 = !DILocation(line: 975, column: 10, scope: !2489, inlinedAt: !2571)
!2581 = !DILocation(line: 976, column: 1, scope: !2489, inlinedAt: !2571)
!2582 = !DILocation(line: 993, column: 3, scope: !2564)
!2583 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !428, file: !428, line: 997, type: !2373, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2584)
!2584 = !{!2585, !2586, !2587, !2588}
!2585 = !DILocalVariable(name: "n", arg: 1, scope: !2583, file: !428, line: 997, type: !90)
!2586 = !DILocalVariable(name: "s", arg: 2, scope: !2583, file: !428, line: 997, type: !451)
!2587 = !DILocalVariable(name: "arg", arg: 3, scope: !2583, file: !428, line: 997, type: !68)
!2588 = !DILocalVariable(name: "options", scope: !2583, file: !428, line: 999, type: !478)
!2589 = distinct !DIAssignID()
!2590 = !DILocation(line: 0, scope: !2583)
!2591 = !DILocation(line: 185, column: 26, scope: !2388, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 1000, column: 13, scope: !2583)
!2593 = !DILocation(line: 999, column: 3, scope: !2583)
!2594 = !DILocation(line: 0, scope: !2388, inlinedAt: !2592)
!2595 = !DILocation(line: 186, column: 13, scope: !2398, inlinedAt: !2592)
!2596 = !DILocation(line: 186, column: 7, scope: !2388, inlinedAt: !2592)
!2597 = !DILocation(line: 187, column: 5, scope: !2398, inlinedAt: !2592)
!2598 = !{!2599}
!2599 = distinct !{!2599, !2600, !"quoting_options_from_style: argument 0"}
!2600 = distinct !{!2600, !"quoting_options_from_style"}
!2601 = !DILocation(line: 1000, column: 13, scope: !2583)
!2602 = distinct !DIAssignID()
!2603 = distinct !DIAssignID()
!2604 = !DILocation(line: 0, scope: !1476, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 1001, column: 3, scope: !2583)
!2606 = !DILocation(line: 147, column: 57, scope: !1476, inlinedAt: !2605)
!2607 = !DILocation(line: 149, column: 21, scope: !1476, inlinedAt: !2605)
!2608 = !DILocation(line: 150, column: 6, scope: !1476, inlinedAt: !2605)
!2609 = distinct !DIAssignID()
!2610 = !DILocation(line: 1002, column: 10, scope: !2583)
!2611 = !DILocation(line: 1003, column: 1, scope: !2583)
!2612 = !DILocation(line: 1002, column: 3, scope: !2583)
!2613 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !428, file: !428, line: 1006, type: !2614, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!237, !90, !68, !68, !68}
!2616 = !{!2617, !2618, !2619, !2620}
!2617 = !DILocalVariable(name: "n", arg: 1, scope: !2613, file: !428, line: 1006, type: !90)
!2618 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2613, file: !428, line: 1006, type: !68)
!2619 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2613, file: !428, line: 1007, type: !68)
!2620 = !DILocalVariable(name: "arg", arg: 4, scope: !2613, file: !428, line: 1007, type: !68)
!2621 = distinct !DIAssignID()
!2622 = !DILocation(line: 0, scope: !2613)
!2623 = !DILocalVariable(name: "o", scope: !2624, file: !428, line: 1018, type: !478)
!2624 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !428, file: !428, line: 1014, type: !2625, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!237, !90, !68, !68, !68, !92}
!2627 = !{!2628, !2629, !2630, !2631, !2632, !2623}
!2628 = !DILocalVariable(name: "n", arg: 1, scope: !2624, file: !428, line: 1014, type: !90)
!2629 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2624, file: !428, line: 1014, type: !68)
!2630 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2624, file: !428, line: 1015, type: !68)
!2631 = !DILocalVariable(name: "arg", arg: 4, scope: !2624, file: !428, line: 1016, type: !68)
!2632 = !DILocalVariable(name: "argsize", arg: 5, scope: !2624, file: !428, line: 1016, type: !92)
!2633 = !DILocation(line: 0, scope: !2624, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 1009, column: 10, scope: !2613)
!2635 = !DILocation(line: 1018, column: 3, scope: !2624, inlinedAt: !2634)
!2636 = !DILocation(line: 1018, column: 30, scope: !2624, inlinedAt: !2634)
!2637 = distinct !DIAssignID()
!2638 = distinct !DIAssignID()
!2639 = !DILocation(line: 0, scope: !1516, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 1019, column: 3, scope: !2624, inlinedAt: !2634)
!2641 = !DILocation(line: 174, column: 12, scope: !1516, inlinedAt: !2640)
!2642 = distinct !DIAssignID()
!2643 = !DILocation(line: 175, column: 8, scope: !1529, inlinedAt: !2640)
!2644 = !DILocation(line: 175, column: 19, scope: !1529, inlinedAt: !2640)
!2645 = !DILocation(line: 176, column: 5, scope: !1529, inlinedAt: !2640)
!2646 = !DILocation(line: 177, column: 6, scope: !1516, inlinedAt: !2640)
!2647 = !DILocation(line: 177, column: 17, scope: !1516, inlinedAt: !2640)
!2648 = distinct !DIAssignID()
!2649 = !DILocation(line: 178, column: 6, scope: !1516, inlinedAt: !2640)
!2650 = !DILocation(line: 178, column: 18, scope: !1516, inlinedAt: !2640)
!2651 = distinct !DIAssignID()
!2652 = !DILocation(line: 1020, column: 10, scope: !2624, inlinedAt: !2634)
!2653 = !DILocation(line: 1021, column: 1, scope: !2624, inlinedAt: !2634)
!2654 = !DILocation(line: 1009, column: 3, scope: !2613)
!2655 = distinct !DIAssignID()
!2656 = !DILocation(line: 0, scope: !2624)
!2657 = !DILocation(line: 1018, column: 3, scope: !2624)
!2658 = !DILocation(line: 1018, column: 30, scope: !2624)
!2659 = distinct !DIAssignID()
!2660 = distinct !DIAssignID()
!2661 = !DILocation(line: 0, scope: !1516, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 1019, column: 3, scope: !2624)
!2663 = !DILocation(line: 174, column: 12, scope: !1516, inlinedAt: !2662)
!2664 = distinct !DIAssignID()
!2665 = !DILocation(line: 175, column: 8, scope: !1529, inlinedAt: !2662)
!2666 = !DILocation(line: 175, column: 19, scope: !1529, inlinedAt: !2662)
!2667 = !DILocation(line: 176, column: 5, scope: !1529, inlinedAt: !2662)
!2668 = !DILocation(line: 177, column: 6, scope: !1516, inlinedAt: !2662)
!2669 = !DILocation(line: 177, column: 17, scope: !1516, inlinedAt: !2662)
!2670 = distinct !DIAssignID()
!2671 = !DILocation(line: 178, column: 6, scope: !1516, inlinedAt: !2662)
!2672 = !DILocation(line: 178, column: 18, scope: !1516, inlinedAt: !2662)
!2673 = distinct !DIAssignID()
!2674 = !DILocation(line: 1020, column: 10, scope: !2624)
!2675 = !DILocation(line: 1021, column: 1, scope: !2624)
!2676 = !DILocation(line: 1020, column: 3, scope: !2624)
!2677 = distinct !DISubprogram(name: "quotearg_custom", scope: !428, file: !428, line: 1024, type: !2678, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!237, !68, !68, !68}
!2680 = !{!2681, !2682, !2683}
!2681 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2677, file: !428, line: 1024, type: !68)
!2682 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2677, file: !428, line: 1024, type: !68)
!2683 = !DILocalVariable(name: "arg", arg: 3, scope: !2677, file: !428, line: 1025, type: !68)
!2684 = distinct !DIAssignID()
!2685 = !DILocation(line: 0, scope: !2677)
!2686 = !DILocation(line: 0, scope: !2613, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 1027, column: 10, scope: !2677)
!2688 = !DILocation(line: 0, scope: !2624, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 1009, column: 10, scope: !2613, inlinedAt: !2687)
!2690 = !DILocation(line: 1018, column: 3, scope: !2624, inlinedAt: !2689)
!2691 = !DILocation(line: 1018, column: 30, scope: !2624, inlinedAt: !2689)
!2692 = distinct !DIAssignID()
!2693 = distinct !DIAssignID()
!2694 = !DILocation(line: 0, scope: !1516, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 1019, column: 3, scope: !2624, inlinedAt: !2689)
!2696 = !DILocation(line: 174, column: 12, scope: !1516, inlinedAt: !2695)
!2697 = distinct !DIAssignID()
!2698 = !DILocation(line: 175, column: 8, scope: !1529, inlinedAt: !2695)
!2699 = !DILocation(line: 175, column: 19, scope: !1529, inlinedAt: !2695)
!2700 = !DILocation(line: 176, column: 5, scope: !1529, inlinedAt: !2695)
!2701 = !DILocation(line: 177, column: 6, scope: !1516, inlinedAt: !2695)
!2702 = !DILocation(line: 177, column: 17, scope: !1516, inlinedAt: !2695)
!2703 = distinct !DIAssignID()
!2704 = !DILocation(line: 178, column: 6, scope: !1516, inlinedAt: !2695)
!2705 = !DILocation(line: 178, column: 18, scope: !1516, inlinedAt: !2695)
!2706 = distinct !DIAssignID()
!2707 = !DILocation(line: 1020, column: 10, scope: !2624, inlinedAt: !2689)
!2708 = !DILocation(line: 1021, column: 1, scope: !2624, inlinedAt: !2689)
!2709 = !DILocation(line: 1027, column: 3, scope: !2677)
!2710 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !428, file: !428, line: 1031, type: !2711, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!237, !68, !68, !68, !92}
!2713 = !{!2714, !2715, !2716, !2717}
!2714 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2710, file: !428, line: 1031, type: !68)
!2715 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2710, file: !428, line: 1031, type: !68)
!2716 = !DILocalVariable(name: "arg", arg: 3, scope: !2710, file: !428, line: 1032, type: !68)
!2717 = !DILocalVariable(name: "argsize", arg: 4, scope: !2710, file: !428, line: 1032, type: !92)
!2718 = distinct !DIAssignID()
!2719 = !DILocation(line: 0, scope: !2710)
!2720 = !DILocation(line: 0, scope: !2624, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 1034, column: 10, scope: !2710)
!2722 = !DILocation(line: 1018, column: 3, scope: !2624, inlinedAt: !2721)
!2723 = !DILocation(line: 1018, column: 30, scope: !2624, inlinedAt: !2721)
!2724 = distinct !DIAssignID()
!2725 = distinct !DIAssignID()
!2726 = !DILocation(line: 0, scope: !1516, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 1019, column: 3, scope: !2624, inlinedAt: !2721)
!2728 = !DILocation(line: 174, column: 12, scope: !1516, inlinedAt: !2727)
!2729 = distinct !DIAssignID()
!2730 = !DILocation(line: 175, column: 8, scope: !1529, inlinedAt: !2727)
!2731 = !DILocation(line: 175, column: 19, scope: !1529, inlinedAt: !2727)
!2732 = !DILocation(line: 176, column: 5, scope: !1529, inlinedAt: !2727)
!2733 = !DILocation(line: 177, column: 6, scope: !1516, inlinedAt: !2727)
!2734 = !DILocation(line: 177, column: 17, scope: !1516, inlinedAt: !2727)
!2735 = distinct !DIAssignID()
!2736 = !DILocation(line: 178, column: 6, scope: !1516, inlinedAt: !2727)
!2737 = !DILocation(line: 178, column: 18, scope: !1516, inlinedAt: !2727)
!2738 = distinct !DIAssignID()
!2739 = !DILocation(line: 1020, column: 10, scope: !2624, inlinedAt: !2721)
!2740 = !DILocation(line: 1021, column: 1, scope: !2624, inlinedAt: !2721)
!2741 = !DILocation(line: 1034, column: 3, scope: !2710)
!2742 = distinct !DISubprogram(name: "quote_n_mem", scope: !428, file: !428, line: 1049, type: !2743, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!68, !90, !68, !92}
!2745 = !{!2746, !2747, !2748}
!2746 = !DILocalVariable(name: "n", arg: 1, scope: !2742, file: !428, line: 1049, type: !90)
!2747 = !DILocalVariable(name: "arg", arg: 2, scope: !2742, file: !428, line: 1049, type: !68)
!2748 = !DILocalVariable(name: "argsize", arg: 3, scope: !2742, file: !428, line: 1049, type: !92)
!2749 = !DILocation(line: 0, scope: !2742)
!2750 = !DILocation(line: 1051, column: 10, scope: !2742)
!2751 = !DILocation(line: 1051, column: 3, scope: !2742)
!2752 = distinct !DISubprogram(name: "quote_mem", scope: !428, file: !428, line: 1055, type: !2753, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2755)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!68, !68, !92}
!2755 = !{!2756, !2757}
!2756 = !DILocalVariable(name: "arg", arg: 1, scope: !2752, file: !428, line: 1055, type: !68)
!2757 = !DILocalVariable(name: "argsize", arg: 2, scope: !2752, file: !428, line: 1055, type: !92)
!2758 = !DILocation(line: 0, scope: !2752)
!2759 = !DILocation(line: 0, scope: !2742, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 1057, column: 10, scope: !2752)
!2761 = !DILocation(line: 1051, column: 10, scope: !2742, inlinedAt: !2760)
!2762 = !DILocation(line: 1057, column: 3, scope: !2752)
!2763 = distinct !DISubprogram(name: "quote_n", scope: !428, file: !428, line: 1061, type: !2764, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2766)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!68, !90, !68}
!2766 = !{!2767, !2768}
!2767 = !DILocalVariable(name: "n", arg: 1, scope: !2763, file: !428, line: 1061, type: !90)
!2768 = !DILocalVariable(name: "arg", arg: 2, scope: !2763, file: !428, line: 1061, type: !68)
!2769 = !DILocation(line: 0, scope: !2763)
!2770 = !DILocation(line: 0, scope: !2742, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 1063, column: 10, scope: !2763)
!2772 = !DILocation(line: 1051, column: 10, scope: !2742, inlinedAt: !2771)
!2773 = !DILocation(line: 1063, column: 3, scope: !2763)
!2774 = distinct !DISubprogram(name: "quote", scope: !428, file: !428, line: 1067, type: !2775, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2777)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!68, !68}
!2777 = !{!2778}
!2778 = !DILocalVariable(name: "arg", arg: 1, scope: !2774, file: !428, line: 1067, type: !68)
!2779 = !DILocation(line: 0, scope: !2774)
!2780 = !DILocation(line: 0, scope: !2763, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 1069, column: 10, scope: !2774)
!2782 = !DILocation(line: 0, scope: !2742, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 1063, column: 10, scope: !2763, inlinedAt: !2781)
!2784 = !DILocation(line: 1051, column: 10, scope: !2742, inlinedAt: !2783)
!2785 = !DILocation(line: 1069, column: 3, scope: !2774)
!2786 = distinct !DISubprogram(name: "version_etc_arn", scope: !541, file: !541, line: 61, type: !2787, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !2824)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{null, !2789, !68, !68, !68, !2823, !92}
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !2791)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !2792)
!2792 = !{!2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2791, file: !233, line: 51, baseType: !90, size: 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2791, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2791, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2791, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2791, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2791, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2791, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2791, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2791, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2791, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2791, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2791, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2791, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2791, file: !233, line: 70, baseType: !2807, size: 64, offset: 832)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2791, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2791, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2791, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2791, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2791, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2791, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2791, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2791, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2791, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2791, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2791, file: !233, line: 93, baseType: !2807, size: 64, offset: 1344)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2791, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2791, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2791, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2791, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!2824 = !{!2825, !2826, !2827, !2828, !2829, !2830}
!2825 = !DILocalVariable(name: "stream", arg: 1, scope: !2786, file: !541, line: 61, type: !2789)
!2826 = !DILocalVariable(name: "command_name", arg: 2, scope: !2786, file: !541, line: 62, type: !68)
!2827 = !DILocalVariable(name: "package", arg: 3, scope: !2786, file: !541, line: 62, type: !68)
!2828 = !DILocalVariable(name: "version", arg: 4, scope: !2786, file: !541, line: 63, type: !68)
!2829 = !DILocalVariable(name: "authors", arg: 5, scope: !2786, file: !541, line: 64, type: !2823)
!2830 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2786, file: !541, line: 64, type: !92)
!2831 = !DILocation(line: 0, scope: !2786)
!2832 = !DILocation(line: 66, column: 7, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2786, file: !541, line: 66, column: 7)
!2834 = !DILocation(line: 66, column: 7, scope: !2786)
!2835 = !DILocation(line: 67, column: 5, scope: !2833)
!2836 = !DILocation(line: 69, column: 5, scope: !2833)
!2837 = !DILocation(line: 83, column: 3, scope: !2786)
!2838 = !DILocation(line: 85, column: 3, scope: !2786)
!2839 = !DILocation(line: 88, column: 3, scope: !2786)
!2840 = !DILocation(line: 95, column: 3, scope: !2786)
!2841 = !DILocation(line: 97, column: 3, scope: !2786)
!2842 = !DILocation(line: 105, column: 7, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2786, file: !541, line: 98, column: 5)
!2844 = !DILocation(line: 106, column: 7, scope: !2843)
!2845 = !DILocation(line: 109, column: 7, scope: !2843)
!2846 = !DILocation(line: 110, column: 7, scope: !2843)
!2847 = !DILocation(line: 113, column: 7, scope: !2843)
!2848 = !DILocation(line: 115, column: 7, scope: !2843)
!2849 = !DILocation(line: 120, column: 7, scope: !2843)
!2850 = !DILocation(line: 122, column: 7, scope: !2843)
!2851 = !DILocation(line: 127, column: 7, scope: !2843)
!2852 = !DILocation(line: 129, column: 7, scope: !2843)
!2853 = !DILocation(line: 134, column: 7, scope: !2843)
!2854 = !DILocation(line: 137, column: 7, scope: !2843)
!2855 = !DILocation(line: 142, column: 7, scope: !2843)
!2856 = !DILocation(line: 145, column: 7, scope: !2843)
!2857 = !DILocation(line: 150, column: 7, scope: !2843)
!2858 = !DILocation(line: 154, column: 7, scope: !2843)
!2859 = !DILocation(line: 159, column: 7, scope: !2843)
!2860 = !DILocation(line: 163, column: 7, scope: !2843)
!2861 = !DILocation(line: 170, column: 7, scope: !2843)
!2862 = !DILocation(line: 174, column: 7, scope: !2843)
!2863 = !DILocation(line: 176, column: 1, scope: !2786)
!2864 = distinct !DISubprogram(name: "version_etc_ar", scope: !541, file: !541, line: 183, type: !2865, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{null, !2789, !68, !68, !68, !2823}
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2873}
!2868 = !DILocalVariable(name: "stream", arg: 1, scope: !2864, file: !541, line: 183, type: !2789)
!2869 = !DILocalVariable(name: "command_name", arg: 2, scope: !2864, file: !541, line: 184, type: !68)
!2870 = !DILocalVariable(name: "package", arg: 3, scope: !2864, file: !541, line: 184, type: !68)
!2871 = !DILocalVariable(name: "version", arg: 4, scope: !2864, file: !541, line: 185, type: !68)
!2872 = !DILocalVariable(name: "authors", arg: 5, scope: !2864, file: !541, line: 185, type: !2823)
!2873 = !DILocalVariable(name: "n_authors", scope: !2864, file: !541, line: 187, type: !92)
!2874 = !DILocation(line: 0, scope: !2864)
!2875 = !DILocation(line: 189, column: 8, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2864, file: !541, line: 189, column: 3)
!2877 = !DILocation(line: 189, scope: !2876)
!2878 = !DILocation(line: 189, column: 23, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2876, file: !541, line: 189, column: 3)
!2880 = !DILocation(line: 189, column: 3, scope: !2876)
!2881 = !DILocation(line: 189, column: 52, scope: !2879)
!2882 = distinct !{!2882, !2880, !2883, !848}
!2883 = !DILocation(line: 190, column: 5, scope: !2876)
!2884 = !DILocation(line: 191, column: 3, scope: !2864)
!2885 = !DILocation(line: 192, column: 1, scope: !2864)
!2886 = distinct !DISubprogram(name: "version_etc_va", scope: !541, file: !541, line: 199, type: !2887, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !2896)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{null, !2789, !68, !68, !68, !2889}
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2891)
!2891 = !{!2892, !2893, !2894, !2895}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2890, file: !541, line: 192, baseType: !74, size: 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2890, file: !541, line: 192, baseType: !74, size: 32, offset: 32)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2890, file: !541, line: 192, baseType: !89, size: 64, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2890, file: !541, line: 192, baseType: !89, size: 64, offset: 128)
!2896 = !{!2897, !2898, !2899, !2900, !2901, !2902, !2903}
!2897 = !DILocalVariable(name: "stream", arg: 1, scope: !2886, file: !541, line: 199, type: !2789)
!2898 = !DILocalVariable(name: "command_name", arg: 2, scope: !2886, file: !541, line: 200, type: !68)
!2899 = !DILocalVariable(name: "package", arg: 3, scope: !2886, file: !541, line: 200, type: !68)
!2900 = !DILocalVariable(name: "version", arg: 4, scope: !2886, file: !541, line: 201, type: !68)
!2901 = !DILocalVariable(name: "authors", arg: 5, scope: !2886, file: !541, line: 201, type: !2889)
!2902 = !DILocalVariable(name: "n_authors", scope: !2886, file: !541, line: 203, type: !92)
!2903 = !DILocalVariable(name: "authtab", scope: !2886, file: !541, line: 204, type: !2904)
!2904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 640, elements: !35)
!2905 = distinct !DIAssignID()
!2906 = !DILocation(line: 0, scope: !2886)
!2907 = !DILocation(line: 204, column: 3, scope: !2886)
!2908 = !DILocation(line: 208, column: 35, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2910, file: !541, line: 206, column: 3)
!2910 = distinct !DILexicalBlock(scope: !2886, file: !541, line: 206, column: 3)
!2911 = !DILocation(line: 208, column: 33, scope: !2909)
!2912 = !DILocation(line: 208, column: 67, scope: !2909)
!2913 = !DILocation(line: 206, column: 3, scope: !2910)
!2914 = !DILocation(line: 208, column: 14, scope: !2909)
!2915 = !DILocation(line: 0, scope: !2910)
!2916 = !DILocation(line: 211, column: 3, scope: !2886)
!2917 = !DILocation(line: 213, column: 1, scope: !2886)
!2918 = distinct !DISubprogram(name: "version_etc", scope: !541, file: !541, line: 230, type: !2919, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{null, !2789, !68, !68, !68, null}
!2921 = !{!2922, !2923, !2924, !2925, !2926}
!2922 = !DILocalVariable(name: "stream", arg: 1, scope: !2918, file: !541, line: 230, type: !2789)
!2923 = !DILocalVariable(name: "command_name", arg: 2, scope: !2918, file: !541, line: 231, type: !68)
!2924 = !DILocalVariable(name: "package", arg: 3, scope: !2918, file: !541, line: 231, type: !68)
!2925 = !DILocalVariable(name: "version", arg: 4, scope: !2918, file: !541, line: 232, type: !68)
!2926 = !DILocalVariable(name: "authors", scope: !2918, file: !541, line: 234, type: !2927)
!2927 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !925, line: 52, baseType: !2928)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1209, line: 12, baseType: !2929)
!2929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !541, baseType: !2930)
!2930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2890, size: 192, elements: !30)
!2931 = distinct !DIAssignID()
!2932 = !DILocation(line: 0, scope: !2918)
!2933 = !DILocation(line: 234, column: 3, scope: !2918)
!2934 = !DILocation(line: 235, column: 3, scope: !2918)
!2935 = !DILocation(line: 236, column: 3, scope: !2918)
!2936 = !DILocation(line: 237, column: 3, scope: !2918)
!2937 = !DILocation(line: 238, column: 1, scope: !2918)
!2938 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !541, file: !541, line: 241, type: !359, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665)
!2939 = !DILocation(line: 243, column: 3, scope: !2938)
!2940 = !DILocation(line: 248, column: 3, scope: !2938)
!2941 = !DILocation(line: 254, column: 3, scope: !2938)
!2942 = !DILocation(line: 259, column: 3, scope: !2938)
!2943 = !DILocation(line: 261, column: 1, scope: !2938)
!2944 = distinct !DISubprogram(name: "xnrealloc", scope: !2945, file: !2945, line: 147, type: !2946, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !2948)
!2945 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!89, !89, !92, !92}
!2948 = !{!2949, !2950, !2951}
!2949 = !DILocalVariable(name: "p", arg: 1, scope: !2944, file: !2945, line: 147, type: !89)
!2950 = !DILocalVariable(name: "n", arg: 2, scope: !2944, file: !2945, line: 147, type: !92)
!2951 = !DILocalVariable(name: "s", arg: 3, scope: !2944, file: !2945, line: 147, type: !92)
!2952 = !DILocation(line: 0, scope: !2944)
!2953 = !DILocalVariable(name: "p", arg: 1, scope: !2954, file: !672, line: 83, type: !89)
!2954 = distinct !DISubprogram(name: "xreallocarray", scope: !672, file: !672, line: 83, type: !2946, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !2955)
!2955 = !{!2953, !2956, !2957}
!2956 = !DILocalVariable(name: "n", arg: 2, scope: !2954, file: !672, line: 83, type: !92)
!2957 = !DILocalVariable(name: "s", arg: 3, scope: !2954, file: !672, line: 83, type: !92)
!2958 = !DILocation(line: 0, scope: !2954, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 149, column: 10, scope: !2944)
!2960 = !DILocation(line: 85, column: 25, scope: !2954, inlinedAt: !2959)
!2961 = !DILocalVariable(name: "p", arg: 1, scope: !2962, file: !672, line: 37, type: !89)
!2962 = distinct !DISubprogram(name: "check_nonnull", scope: !672, file: !672, line: 37, type: !2963, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!89, !89}
!2965 = !{!2961}
!2966 = !DILocation(line: 0, scope: !2962, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 85, column: 10, scope: !2954, inlinedAt: !2959)
!2968 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !2967)
!2969 = distinct !DILexicalBlock(scope: !2962, file: !672, line: 39, column: 7)
!2970 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !2967)
!2971 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !2967)
!2972 = !DILocation(line: 149, column: 3, scope: !2944)
!2973 = !DILocation(line: 0, scope: !2954)
!2974 = !DILocation(line: 85, column: 25, scope: !2954)
!2975 = !DILocation(line: 0, scope: !2962, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 85, column: 10, scope: !2954)
!2977 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !2976)
!2978 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !2976)
!2979 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !2976)
!2980 = !DILocation(line: 85, column: 3, scope: !2954)
!2981 = distinct !DISubprogram(name: "xmalloc", scope: !672, file: !672, line: 47, type: !2982, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !2984)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!89, !92}
!2984 = !{!2985}
!2985 = !DILocalVariable(name: "s", arg: 1, scope: !2981, file: !672, line: 47, type: !92)
!2986 = !DILocation(line: 0, scope: !2981)
!2987 = !DILocation(line: 49, column: 25, scope: !2981)
!2988 = !DILocation(line: 0, scope: !2962, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 49, column: 10, scope: !2981)
!2990 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !2989)
!2991 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !2989)
!2992 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !2989)
!2993 = !DILocation(line: 49, column: 3, scope: !2981)
!2994 = !DISubprogram(name: "malloc", scope: !929, file: !929, line: 540, type: !2982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2995 = distinct !DISubprogram(name: "ximalloc", scope: !672, file: !672, line: 53, type: !2996, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !2998)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!89, !691}
!2998 = !{!2999}
!2999 = !DILocalVariable(name: "s", arg: 1, scope: !2995, file: !672, line: 53, type: !691)
!3000 = !DILocation(line: 0, scope: !2995)
!3001 = !DILocalVariable(name: "s", arg: 1, scope: !3002, file: !3003, line: 55, type: !691)
!3002 = distinct !DISubprogram(name: "imalloc", scope: !3003, file: !3003, line: 55, type: !2996, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3004)
!3003 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3004 = !{!3001}
!3005 = !DILocation(line: 0, scope: !3002, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 55, column: 25, scope: !2995)
!3007 = !DILocation(line: 57, column: 26, scope: !3002, inlinedAt: !3006)
!3008 = !DILocation(line: 0, scope: !2962, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 55, column: 10, scope: !2995)
!3010 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !3009)
!3011 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !3009)
!3012 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !3009)
!3013 = !DILocation(line: 55, column: 3, scope: !2995)
!3014 = distinct !DISubprogram(name: "xcharalloc", scope: !672, file: !672, line: 59, type: !3015, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3017)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!237, !92}
!3017 = !{!3018}
!3018 = !DILocalVariable(name: "n", arg: 1, scope: !3014, file: !672, line: 59, type: !92)
!3019 = !DILocation(line: 0, scope: !3014)
!3020 = !DILocation(line: 0, scope: !2981, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 61, column: 10, scope: !3014)
!3022 = !DILocation(line: 49, column: 25, scope: !2981, inlinedAt: !3021)
!3023 = !DILocation(line: 0, scope: !2962, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 49, column: 10, scope: !2981, inlinedAt: !3021)
!3025 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !3024)
!3026 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !3024)
!3027 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !3024)
!3028 = !DILocation(line: 61, column: 3, scope: !3014)
!3029 = distinct !DISubprogram(name: "xrealloc", scope: !672, file: !672, line: 68, type: !3030, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3032)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!89, !89, !92}
!3032 = !{!3033, !3034}
!3033 = !DILocalVariable(name: "p", arg: 1, scope: !3029, file: !672, line: 68, type: !89)
!3034 = !DILocalVariable(name: "s", arg: 2, scope: !3029, file: !672, line: 68, type: !92)
!3035 = !DILocation(line: 0, scope: !3029)
!3036 = !DILocalVariable(name: "ptr", arg: 1, scope: !3037, file: !3038, line: 2057, type: !89)
!3037 = distinct !DISubprogram(name: "rpl_realloc", scope: !3038, file: !3038, line: 2057, type: !3030, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3039)
!3038 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3039 = !{!3036, !3040}
!3040 = !DILocalVariable(name: "size", arg: 2, scope: !3037, file: !3038, line: 2057, type: !92)
!3041 = !DILocation(line: 0, scope: !3037, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 70, column: 25, scope: !3029)
!3043 = !DILocation(line: 2059, column: 24, scope: !3037, inlinedAt: !3042)
!3044 = !DILocation(line: 2059, column: 10, scope: !3037, inlinedAt: !3042)
!3045 = !DILocation(line: 0, scope: !2962, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 70, column: 10, scope: !3029)
!3047 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !3046)
!3048 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !3046)
!3049 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !3046)
!3050 = !DILocation(line: 70, column: 3, scope: !3029)
!3051 = !DISubprogram(name: "realloc", scope: !929, file: !929, line: 551, type: !3030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3052 = distinct !DISubprogram(name: "xirealloc", scope: !672, file: !672, line: 74, type: !3053, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3055)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!89, !89, !691}
!3055 = !{!3056, !3057}
!3056 = !DILocalVariable(name: "p", arg: 1, scope: !3052, file: !672, line: 74, type: !89)
!3057 = !DILocalVariable(name: "s", arg: 2, scope: !3052, file: !672, line: 74, type: !691)
!3058 = !DILocation(line: 0, scope: !3052)
!3059 = !DILocalVariable(name: "p", arg: 1, scope: !3060, file: !3003, line: 66, type: !89)
!3060 = distinct !DISubprogram(name: "irealloc", scope: !3003, file: !3003, line: 66, type: !3053, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3061)
!3061 = !{!3059, !3062}
!3062 = !DILocalVariable(name: "s", arg: 2, scope: !3060, file: !3003, line: 66, type: !691)
!3063 = !DILocation(line: 0, scope: !3060, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 76, column: 25, scope: !3052)
!3065 = !DILocation(line: 0, scope: !3037, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 68, column: 26, scope: !3060, inlinedAt: !3064)
!3067 = !DILocation(line: 2059, column: 24, scope: !3037, inlinedAt: !3066)
!3068 = !DILocation(line: 2059, column: 10, scope: !3037, inlinedAt: !3066)
!3069 = !DILocation(line: 0, scope: !2962, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 76, column: 10, scope: !3052)
!3071 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !3070)
!3072 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !3070)
!3073 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !3070)
!3074 = !DILocation(line: 76, column: 3, scope: !3052)
!3075 = distinct !DISubprogram(name: "xireallocarray", scope: !672, file: !672, line: 89, type: !3076, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3078)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!89, !89, !691, !691}
!3078 = !{!3079, !3080, !3081}
!3079 = !DILocalVariable(name: "p", arg: 1, scope: !3075, file: !672, line: 89, type: !89)
!3080 = !DILocalVariable(name: "n", arg: 2, scope: !3075, file: !672, line: 89, type: !691)
!3081 = !DILocalVariable(name: "s", arg: 3, scope: !3075, file: !672, line: 89, type: !691)
!3082 = !DILocation(line: 0, scope: !3075)
!3083 = !DILocalVariable(name: "p", arg: 1, scope: !3084, file: !3003, line: 98, type: !89)
!3084 = distinct !DISubprogram(name: "ireallocarray", scope: !3003, file: !3003, line: 98, type: !3076, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3085)
!3085 = !{!3083, !3086, !3087}
!3086 = !DILocalVariable(name: "n", arg: 2, scope: !3084, file: !3003, line: 98, type: !691)
!3087 = !DILocalVariable(name: "s", arg: 3, scope: !3084, file: !3003, line: 98, type: !691)
!3088 = !DILocation(line: 0, scope: !3084, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 91, column: 25, scope: !3075)
!3090 = !DILocation(line: 101, column: 13, scope: !3084, inlinedAt: !3089)
!3091 = !DILocation(line: 0, scope: !2962, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 91, column: 10, scope: !3075)
!3093 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !3092)
!3094 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !3092)
!3095 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !3092)
!3096 = !DILocation(line: 91, column: 3, scope: !3075)
!3097 = distinct !DISubprogram(name: "xnmalloc", scope: !672, file: !672, line: 98, type: !3098, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3100)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!89, !92, !92}
!3100 = !{!3101, !3102}
!3101 = !DILocalVariable(name: "n", arg: 1, scope: !3097, file: !672, line: 98, type: !92)
!3102 = !DILocalVariable(name: "s", arg: 2, scope: !3097, file: !672, line: 98, type: !92)
!3103 = !DILocation(line: 0, scope: !3097)
!3104 = !DILocation(line: 0, scope: !2954, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 100, column: 10, scope: !3097)
!3106 = !DILocation(line: 85, column: 25, scope: !2954, inlinedAt: !3105)
!3107 = !DILocation(line: 0, scope: !2962, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 85, column: 10, scope: !2954, inlinedAt: !3105)
!3109 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !3108)
!3110 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !3108)
!3111 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !3108)
!3112 = !DILocation(line: 100, column: 3, scope: !3097)
!3113 = distinct !DISubprogram(name: "xinmalloc", scope: !672, file: !672, line: 104, type: !3114, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!89, !691, !691}
!3116 = !{!3117, !3118}
!3117 = !DILocalVariable(name: "n", arg: 1, scope: !3113, file: !672, line: 104, type: !691)
!3118 = !DILocalVariable(name: "s", arg: 2, scope: !3113, file: !672, line: 104, type: !691)
!3119 = !DILocation(line: 0, scope: !3113)
!3120 = !DILocation(line: 0, scope: !3075, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 106, column: 10, scope: !3113)
!3122 = !DILocation(line: 0, scope: !3084, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 91, column: 25, scope: !3075, inlinedAt: !3121)
!3124 = !DILocation(line: 101, column: 13, scope: !3084, inlinedAt: !3123)
!3125 = !DILocation(line: 0, scope: !2962, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 91, column: 10, scope: !3075, inlinedAt: !3121)
!3127 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !3126)
!3128 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !3126)
!3129 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !3126)
!3130 = !DILocation(line: 106, column: 3, scope: !3113)
!3131 = distinct !DISubprogram(name: "x2realloc", scope: !672, file: !672, line: 116, type: !3132, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3134)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!89, !89, !678}
!3134 = !{!3135, !3136}
!3135 = !DILocalVariable(name: "p", arg: 1, scope: !3131, file: !672, line: 116, type: !89)
!3136 = !DILocalVariable(name: "ps", arg: 2, scope: !3131, file: !672, line: 116, type: !678)
!3137 = !DILocation(line: 0, scope: !3131)
!3138 = !DILocation(line: 0, scope: !675, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 118, column: 10, scope: !3131)
!3140 = !DILocation(line: 178, column: 14, scope: !675, inlinedAt: !3139)
!3141 = !DILocation(line: 180, column: 9, scope: !3142, inlinedAt: !3139)
!3142 = distinct !DILexicalBlock(scope: !675, file: !672, line: 180, column: 7)
!3143 = !DILocation(line: 180, column: 7, scope: !675, inlinedAt: !3139)
!3144 = !DILocation(line: 182, column: 13, scope: !3145, inlinedAt: !3139)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !672, line: 182, column: 11)
!3146 = distinct !DILexicalBlock(scope: !3142, file: !672, line: 181, column: 5)
!3147 = !DILocation(line: 182, column: 11, scope: !3146, inlinedAt: !3139)
!3148 = !DILocation(line: 197, column: 11, scope: !3149, inlinedAt: !3139)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !672, line: 197, column: 11)
!3150 = distinct !DILexicalBlock(scope: !3142, file: !672, line: 195, column: 5)
!3151 = !DILocation(line: 197, column: 11, scope: !3150, inlinedAt: !3139)
!3152 = !DILocation(line: 198, column: 9, scope: !3149, inlinedAt: !3139)
!3153 = !DILocation(line: 0, scope: !2954, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 201, column: 7, scope: !675, inlinedAt: !3139)
!3155 = !DILocation(line: 85, column: 25, scope: !2954, inlinedAt: !3154)
!3156 = !DILocation(line: 0, scope: !2962, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 85, column: 10, scope: !2954, inlinedAt: !3154)
!3158 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !3157)
!3159 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !3157)
!3160 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !3157)
!3161 = !DILocation(line: 202, column: 7, scope: !675, inlinedAt: !3139)
!3162 = !DILocation(line: 118, column: 3, scope: !3131)
!3163 = !DILocation(line: 0, scope: !675)
!3164 = !DILocation(line: 178, column: 14, scope: !675)
!3165 = !DILocation(line: 180, column: 9, scope: !3142)
!3166 = !DILocation(line: 180, column: 7, scope: !675)
!3167 = !DILocation(line: 182, column: 13, scope: !3145)
!3168 = !DILocation(line: 182, column: 11, scope: !3146)
!3169 = !DILocation(line: 190, column: 30, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3145, file: !672, line: 183, column: 9)
!3171 = !DILocation(line: 191, column: 16, scope: !3170)
!3172 = !DILocation(line: 191, column: 13, scope: !3170)
!3173 = !DILocation(line: 192, column: 9, scope: !3170)
!3174 = !DILocation(line: 197, column: 11, scope: !3149)
!3175 = !DILocation(line: 197, column: 11, scope: !3150)
!3176 = !DILocation(line: 198, column: 9, scope: !3149)
!3177 = !DILocation(line: 0, scope: !2954, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 201, column: 7, scope: !675)
!3179 = !DILocation(line: 85, column: 25, scope: !2954, inlinedAt: !3178)
!3180 = !DILocation(line: 0, scope: !2962, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 85, column: 10, scope: !2954, inlinedAt: !3178)
!3182 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !3181)
!3183 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !3181)
!3184 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !3181)
!3185 = !DILocation(line: 202, column: 7, scope: !675)
!3186 = !DILocation(line: 203, column: 3, scope: !675)
!3187 = !DILocation(line: 0, scope: !687)
!3188 = !DILocation(line: 230, column: 14, scope: !687)
!3189 = !DILocation(line: 238, column: 7, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !687, file: !672, line: 238, column: 7)
!3191 = !DILocation(line: 238, column: 7, scope: !687)
!3192 = !DILocation(line: 240, column: 9, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !687, file: !672, line: 240, column: 7)
!3194 = !DILocation(line: 240, column: 18, scope: !3193)
!3195 = !DILocation(line: 253, column: 8, scope: !687)
!3196 = !DILocation(line: 256, column: 7, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !687, file: !672, line: 256, column: 7)
!3198 = !DILocation(line: 256, column: 7, scope: !687)
!3199 = !DILocation(line: 258, column: 27, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3197, file: !672, line: 257, column: 5)
!3201 = !DILocation(line: 259, column: 50, scope: !3200)
!3202 = !DILocation(line: 259, column: 32, scope: !3200)
!3203 = !DILocation(line: 260, column: 5, scope: !3200)
!3204 = !DILocation(line: 262, column: 9, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !687, file: !672, line: 262, column: 7)
!3206 = !DILocation(line: 262, column: 7, scope: !687)
!3207 = !DILocation(line: 263, column: 9, scope: !3205)
!3208 = !DILocation(line: 263, column: 5, scope: !3205)
!3209 = !DILocation(line: 264, column: 9, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !687, file: !672, line: 264, column: 7)
!3211 = !DILocation(line: 264, column: 14, scope: !3210)
!3212 = !DILocation(line: 265, column: 7, scope: !3210)
!3213 = !DILocation(line: 265, column: 11, scope: !3210)
!3214 = !DILocation(line: 266, column: 11, scope: !3210)
!3215 = !DILocation(line: 267, column: 14, scope: !3210)
!3216 = !DILocation(line: 264, column: 7, scope: !687)
!3217 = !DILocation(line: 268, column: 5, scope: !3210)
!3218 = !DILocation(line: 0, scope: !3029, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 269, column: 8, scope: !687)
!3220 = !DILocation(line: 0, scope: !3037, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 70, column: 25, scope: !3029, inlinedAt: !3219)
!3222 = !DILocation(line: 2059, column: 24, scope: !3037, inlinedAt: !3221)
!3223 = !DILocation(line: 2059, column: 10, scope: !3037, inlinedAt: !3221)
!3224 = !DILocation(line: 0, scope: !2962, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 70, column: 10, scope: !3029, inlinedAt: !3219)
!3226 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !3225)
!3227 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !3225)
!3228 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !3225)
!3229 = !DILocation(line: 270, column: 7, scope: !687)
!3230 = !DILocation(line: 271, column: 3, scope: !687)
!3231 = distinct !DISubprogram(name: "xzalloc", scope: !672, file: !672, line: 279, type: !2982, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3232)
!3232 = !{!3233}
!3233 = !DILocalVariable(name: "s", arg: 1, scope: !3231, file: !672, line: 279, type: !92)
!3234 = !DILocation(line: 0, scope: !3231)
!3235 = !DILocalVariable(name: "n", arg: 1, scope: !3236, file: !672, line: 294, type: !92)
!3236 = distinct !DISubprogram(name: "xcalloc", scope: !672, file: !672, line: 294, type: !3098, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3237)
!3237 = !{!3235, !3238}
!3238 = !DILocalVariable(name: "s", arg: 2, scope: !3236, file: !672, line: 294, type: !92)
!3239 = !DILocation(line: 0, scope: !3236, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 281, column: 10, scope: !3231)
!3241 = !DILocation(line: 296, column: 25, scope: !3236, inlinedAt: !3240)
!3242 = !DILocation(line: 0, scope: !2962, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 296, column: 10, scope: !3236, inlinedAt: !3240)
!3244 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !3243)
!3245 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !3243)
!3246 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !3243)
!3247 = !DILocation(line: 281, column: 3, scope: !3231)
!3248 = !DISubprogram(name: "calloc", scope: !929, file: !929, line: 543, type: !3098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3249 = !DILocation(line: 0, scope: !3236)
!3250 = !DILocation(line: 296, column: 25, scope: !3236)
!3251 = !DILocation(line: 0, scope: !2962, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 296, column: 10, scope: !3236)
!3253 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !3252)
!3254 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !3252)
!3255 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !3252)
!3256 = !DILocation(line: 296, column: 3, scope: !3236)
!3257 = distinct !DISubprogram(name: "xizalloc", scope: !672, file: !672, line: 285, type: !2996, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3258)
!3258 = !{!3259}
!3259 = !DILocalVariable(name: "s", arg: 1, scope: !3257, file: !672, line: 285, type: !691)
!3260 = !DILocation(line: 0, scope: !3257)
!3261 = !DILocalVariable(name: "n", arg: 1, scope: !3262, file: !672, line: 300, type: !691)
!3262 = distinct !DISubprogram(name: "xicalloc", scope: !672, file: !672, line: 300, type: !3114, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3263)
!3263 = !{!3261, !3264}
!3264 = !DILocalVariable(name: "s", arg: 2, scope: !3262, file: !672, line: 300, type: !691)
!3265 = !DILocation(line: 0, scope: !3262, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 287, column: 10, scope: !3257)
!3267 = !DILocalVariable(name: "n", arg: 1, scope: !3268, file: !3003, line: 77, type: !691)
!3268 = distinct !DISubprogram(name: "icalloc", scope: !3003, file: !3003, line: 77, type: !3114, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3269)
!3269 = !{!3267, !3270}
!3270 = !DILocalVariable(name: "s", arg: 2, scope: !3268, file: !3003, line: 77, type: !691)
!3271 = !DILocation(line: 0, scope: !3268, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 302, column: 25, scope: !3262, inlinedAt: !3266)
!3273 = !DILocation(line: 91, column: 10, scope: !3268, inlinedAt: !3272)
!3274 = !DILocation(line: 0, scope: !2962, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 302, column: 10, scope: !3262, inlinedAt: !3266)
!3276 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !3275)
!3277 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !3275)
!3278 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !3275)
!3279 = !DILocation(line: 287, column: 3, scope: !3257)
!3280 = !DILocation(line: 0, scope: !3262)
!3281 = !DILocation(line: 0, scope: !3268, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 302, column: 25, scope: !3262)
!3283 = !DILocation(line: 91, column: 10, scope: !3268, inlinedAt: !3282)
!3284 = !DILocation(line: 0, scope: !2962, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 302, column: 10, scope: !3262)
!3286 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !3285)
!3287 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !3285)
!3288 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !3285)
!3289 = !DILocation(line: 302, column: 3, scope: !3262)
!3290 = distinct !DISubprogram(name: "xmemdup", scope: !672, file: !672, line: 310, type: !3291, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3293)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!89, !953, !92}
!3293 = !{!3294, !3295}
!3294 = !DILocalVariable(name: "p", arg: 1, scope: !3290, file: !672, line: 310, type: !953)
!3295 = !DILocalVariable(name: "s", arg: 2, scope: !3290, file: !672, line: 310, type: !92)
!3296 = !DILocation(line: 0, scope: !3290)
!3297 = !DILocation(line: 0, scope: !2981, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 312, column: 18, scope: !3290)
!3299 = !DILocation(line: 49, column: 25, scope: !2981, inlinedAt: !3298)
!3300 = !DILocation(line: 0, scope: !2962, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 49, column: 10, scope: !2981, inlinedAt: !3298)
!3302 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !3301)
!3303 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !3301)
!3304 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !3301)
!3305 = !DILocalVariable(name: "__dest", arg: 1, scope: !3306, file: !1419, line: 26, type: !3309)
!3306 = distinct !DISubprogram(name: "memcpy", scope: !1419, file: !1419, line: 26, type: !3307, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3310)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!89, !3309, !952, !92}
!3309 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !89)
!3310 = !{!3305, !3311, !3312}
!3311 = !DILocalVariable(name: "__src", arg: 2, scope: !3306, file: !1419, line: 26, type: !952)
!3312 = !DILocalVariable(name: "__len", arg: 3, scope: !3306, file: !1419, line: 26, type: !92)
!3313 = !DILocation(line: 0, scope: !3306, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 312, column: 10, scope: !3290)
!3315 = !DILocation(line: 29, column: 10, scope: !3306, inlinedAt: !3314)
!3316 = !DILocation(line: 312, column: 3, scope: !3290)
!3317 = distinct !DISubprogram(name: "ximemdup", scope: !672, file: !672, line: 316, type: !3318, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3320)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!89, !953, !691}
!3320 = !{!3321, !3322}
!3321 = !DILocalVariable(name: "p", arg: 1, scope: !3317, file: !672, line: 316, type: !953)
!3322 = !DILocalVariable(name: "s", arg: 2, scope: !3317, file: !672, line: 316, type: !691)
!3323 = !DILocation(line: 0, scope: !3317)
!3324 = !DILocation(line: 0, scope: !2995, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 318, column: 18, scope: !3317)
!3326 = !DILocation(line: 0, scope: !3002, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 55, column: 25, scope: !2995, inlinedAt: !3325)
!3328 = !DILocation(line: 57, column: 26, scope: !3002, inlinedAt: !3327)
!3329 = !DILocation(line: 0, scope: !2962, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 55, column: 10, scope: !2995, inlinedAt: !3325)
!3331 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !3330)
!3332 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !3330)
!3333 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !3330)
!3334 = !DILocation(line: 0, scope: !3306, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 318, column: 10, scope: !3317)
!3336 = !DILocation(line: 29, column: 10, scope: !3306, inlinedAt: !3335)
!3337 = !DILocation(line: 318, column: 3, scope: !3317)
!3338 = distinct !DISubprogram(name: "ximemdup0", scope: !672, file: !672, line: 325, type: !3339, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3341)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!237, !953, !691}
!3341 = !{!3342, !3343, !3344}
!3342 = !DILocalVariable(name: "p", arg: 1, scope: !3338, file: !672, line: 325, type: !953)
!3343 = !DILocalVariable(name: "s", arg: 2, scope: !3338, file: !672, line: 325, type: !691)
!3344 = !DILocalVariable(name: "result", scope: !3338, file: !672, line: 327, type: !237)
!3345 = !DILocation(line: 0, scope: !3338)
!3346 = !DILocation(line: 327, column: 30, scope: !3338)
!3347 = !DILocation(line: 0, scope: !2995, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 327, column: 18, scope: !3338)
!3349 = !DILocation(line: 0, scope: !3002, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 55, column: 25, scope: !2995, inlinedAt: !3348)
!3351 = !DILocation(line: 57, column: 26, scope: !3002, inlinedAt: !3350)
!3352 = !DILocation(line: 0, scope: !2962, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 55, column: 10, scope: !2995, inlinedAt: !3348)
!3354 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !3353)
!3355 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !3353)
!3356 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !3353)
!3357 = !DILocation(line: 328, column: 3, scope: !3338)
!3358 = !DILocation(line: 328, column: 13, scope: !3338)
!3359 = !DILocation(line: 0, scope: !3306, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 329, column: 10, scope: !3338)
!3361 = !DILocation(line: 29, column: 10, scope: !3306, inlinedAt: !3360)
!3362 = !DILocation(line: 329, column: 3, scope: !3338)
!3363 = distinct !DISubprogram(name: "xstrdup", scope: !672, file: !672, line: 335, type: !931, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !3364)
!3364 = !{!3365}
!3365 = !DILocalVariable(name: "string", arg: 1, scope: !3363, file: !672, line: 335, type: !68)
!3366 = !DILocation(line: 0, scope: !3363)
!3367 = !DILocation(line: 337, column: 27, scope: !3363)
!3368 = !DILocation(line: 337, column: 43, scope: !3363)
!3369 = !DILocation(line: 0, scope: !3290, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 337, column: 10, scope: !3363)
!3371 = !DILocation(line: 0, scope: !2981, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 312, column: 18, scope: !3290, inlinedAt: !3370)
!3373 = !DILocation(line: 49, column: 25, scope: !2981, inlinedAt: !3372)
!3374 = !DILocation(line: 0, scope: !2962, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 49, column: 10, scope: !2981, inlinedAt: !3372)
!3376 = !DILocation(line: 39, column: 8, scope: !2969, inlinedAt: !3375)
!3377 = !DILocation(line: 39, column: 7, scope: !2962, inlinedAt: !3375)
!3378 = !DILocation(line: 40, column: 5, scope: !2969, inlinedAt: !3375)
!3379 = !DILocation(line: 0, scope: !3306, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 312, column: 10, scope: !3290, inlinedAt: !3370)
!3381 = !DILocation(line: 29, column: 10, scope: !3306, inlinedAt: !3380)
!3382 = !DILocation(line: 337, column: 3, scope: !3363)
!3383 = distinct !DISubprogram(name: "xalloc_die", scope: !637, file: !637, line: 32, type: !359, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3384)
!3384 = !{!3385}
!3385 = !DILocalVariable(name: "__errstatus", scope: !3386, file: !637, line: 34, type: !3387)
!3386 = distinct !DILexicalBlock(scope: !3383, file: !637, line: 34, column: 3)
!3387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!3388 = !DILocation(line: 34, column: 3, scope: !3386)
!3389 = !DILocation(line: 0, scope: !3386)
!3390 = !DILocation(line: 40, column: 3, scope: !3383)
!3391 = distinct !DISubprogram(name: "close_stream", scope: !709, file: !709, line: 55, type: !3392, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3428)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!90, !3394}
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !3396)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !3397)
!3397 = !{!3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3396, file: !233, line: 51, baseType: !90, size: 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3396, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3396, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3396, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3396, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3396, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3396, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3396, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3396, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3396, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3396, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3396, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3396, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3396, file: !233, line: 70, baseType: !3412, size: 64, offset: 832)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3396, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3396, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3396, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3396, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3396, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3396, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3396, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3396, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3396, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3396, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3396, file: !233, line: 93, baseType: !3412, size: 64, offset: 1344)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3396, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3396, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3396, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3396, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!3428 = !{!3429, !3430, !3432, !3433}
!3429 = !DILocalVariable(name: "stream", arg: 1, scope: !3391, file: !709, line: 55, type: !3394)
!3430 = !DILocalVariable(name: "some_pending", scope: !3391, file: !709, line: 57, type: !3431)
!3431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!3432 = !DILocalVariable(name: "prev_fail", scope: !3391, file: !709, line: 58, type: !3431)
!3433 = !DILocalVariable(name: "fclose_fail", scope: !3391, file: !709, line: 59, type: !3431)
!3434 = !DILocation(line: 0, scope: !3391)
!3435 = !DILocation(line: 57, column: 30, scope: !3391)
!3436 = !DILocalVariable(name: "__stream", arg: 1, scope: !3437, file: !1164, line: 135, type: !3394)
!3437 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1164, file: !1164, line: 135, type: !3392, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3438)
!3438 = !{!3436}
!3439 = !DILocation(line: 0, scope: !3437, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 58, column: 27, scope: !3391)
!3441 = !DILocation(line: 137, column: 10, scope: !3437, inlinedAt: !3440)
!3442 = !{!1173, !802, i64 0}
!3443 = !DILocation(line: 58, column: 43, scope: !3391)
!3444 = !DILocation(line: 59, column: 29, scope: !3391)
!3445 = !DILocation(line: 59, column: 45, scope: !3391)
!3446 = !DILocation(line: 69, column: 17, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3391, file: !709, line: 69, column: 7)
!3448 = !DILocation(line: 57, column: 50, scope: !3391)
!3449 = !DILocation(line: 69, column: 33, scope: !3447)
!3450 = !DILocation(line: 69, column: 53, scope: !3447)
!3451 = !DILocation(line: 69, column: 59, scope: !3447)
!3452 = !DILocation(line: 69, column: 7, scope: !3391)
!3453 = !DILocation(line: 71, column: 11, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3447, file: !709, line: 70, column: 5)
!3455 = !DILocation(line: 72, column: 9, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3454, file: !709, line: 71, column: 11)
!3457 = !DILocation(line: 72, column: 15, scope: !3456)
!3458 = !DILocation(line: 77, column: 1, scope: !3391)
!3459 = !DISubprogram(name: "__fpending", scope: !3460, file: !3460, line: 75, type: !3461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3460 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!92, !3394}
!3463 = distinct !DISubprogram(name: "rpl_fclose", scope: !711, file: !711, line: 58, type: !3464, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3500)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!90, !3466}
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !3468)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !3469)
!3469 = !{!3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3468, file: !233, line: 51, baseType: !90, size: 32)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3468, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3468, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3468, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3468, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3468, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3468, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3468, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3468, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3468, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3468, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3468, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3468, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3468, file: !233, line: 70, baseType: !3484, size: 64, offset: 832)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3468, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3468, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3468, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3468, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3468, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3468, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3468, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3468, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3468, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3468, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3468, file: !233, line: 93, baseType: !3484, size: 64, offset: 1344)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3468, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3468, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3468, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3468, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!3500 = !{!3501, !3502, !3503, !3504}
!3501 = !DILocalVariable(name: "fp", arg: 1, scope: !3463, file: !711, line: 58, type: !3466)
!3502 = !DILocalVariable(name: "saved_errno", scope: !3463, file: !711, line: 60, type: !90)
!3503 = !DILocalVariable(name: "fd", scope: !3463, file: !711, line: 63, type: !90)
!3504 = !DILocalVariable(name: "result", scope: !3463, file: !711, line: 74, type: !90)
!3505 = !DILocation(line: 0, scope: !3463)
!3506 = !DILocation(line: 63, column: 12, scope: !3463)
!3507 = !DILocation(line: 64, column: 10, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3463, file: !711, line: 64, column: 7)
!3509 = !DILocation(line: 64, column: 7, scope: !3463)
!3510 = !DILocation(line: 65, column: 12, scope: !3508)
!3511 = !DILocation(line: 65, column: 5, scope: !3508)
!3512 = !DILocation(line: 70, column: 9, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3463, file: !711, line: 70, column: 7)
!3514 = !DILocation(line: 70, column: 23, scope: !3513)
!3515 = !DILocation(line: 70, column: 33, scope: !3513)
!3516 = !DILocation(line: 70, column: 26, scope: !3513)
!3517 = !DILocation(line: 70, column: 59, scope: !3513)
!3518 = !DILocation(line: 71, column: 7, scope: !3513)
!3519 = !DILocation(line: 71, column: 10, scope: !3513)
!3520 = !DILocation(line: 70, column: 7, scope: !3463)
!3521 = !DILocation(line: 100, column: 12, scope: !3463)
!3522 = !DILocation(line: 105, column: 7, scope: !3463)
!3523 = !DILocation(line: 72, column: 19, scope: !3513)
!3524 = !DILocation(line: 105, column: 19, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3463, file: !711, line: 105, column: 7)
!3526 = !DILocation(line: 107, column: 13, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3525, file: !711, line: 106, column: 5)
!3528 = !DILocation(line: 109, column: 5, scope: !3527)
!3529 = !DILocation(line: 112, column: 1, scope: !3463)
!3530 = !DISubprogram(name: "fileno", scope: !925, file: !925, line: 809, type: !3464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3531 = !DISubprogram(name: "fclose", scope: !925, file: !925, line: 178, type: !3464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3532 = !DISubprogram(name: "__freading", scope: !3460, file: !3460, line: 51, type: !3464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3533 = !DISubprogram(name: "lseek", scope: !991, file: !991, line: 339, type: !3534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!256, !90, !256, !90}
!3536 = distinct !DISubprogram(name: "rpl_fflush", scope: !713, file: !713, line: 130, type: !3537, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3573)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!90, !3539}
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !3541)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !3542)
!3542 = !{!3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3541, file: !233, line: 51, baseType: !90, size: 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3541, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3541, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3541, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3541, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3541, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3541, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3541, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3541, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3541, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3541, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3541, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3541, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3541, file: !233, line: 70, baseType: !3557, size: 64, offset: 832)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3541, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3541, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3541, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3541, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3541, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3541, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3541, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3541, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3541, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3541, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3541, file: !233, line: 93, baseType: !3557, size: 64, offset: 1344)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3541, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3541, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3541, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3541, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!3573 = !{!3574}
!3574 = !DILocalVariable(name: "stream", arg: 1, scope: !3536, file: !713, line: 130, type: !3539)
!3575 = !DILocation(line: 0, scope: !3536)
!3576 = !DILocation(line: 151, column: 14, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3536, file: !713, line: 151, column: 7)
!3578 = !DILocation(line: 151, column: 22, scope: !3577)
!3579 = !DILocation(line: 151, column: 27, scope: !3577)
!3580 = !DILocation(line: 151, column: 7, scope: !3536)
!3581 = !DILocation(line: 152, column: 12, scope: !3577)
!3582 = !DILocation(line: 152, column: 5, scope: !3577)
!3583 = !DILocalVariable(name: "fp", arg: 1, scope: !3584, file: !713, line: 42, type: !3539)
!3584 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !713, file: !713, line: 42, type: !3585, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3587)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{null, !3539}
!3587 = !{!3583}
!3588 = !DILocation(line: 0, scope: !3584, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 157, column: 3, scope: !3536)
!3590 = !DILocation(line: 44, column: 12, scope: !3591, inlinedAt: !3589)
!3591 = distinct !DILexicalBlock(scope: !3584, file: !713, line: 44, column: 7)
!3592 = !DILocation(line: 44, column: 19, scope: !3591, inlinedAt: !3589)
!3593 = !DILocation(line: 44, column: 7, scope: !3584, inlinedAt: !3589)
!3594 = !DILocation(line: 46, column: 5, scope: !3591, inlinedAt: !3589)
!3595 = !DILocation(line: 159, column: 10, scope: !3536)
!3596 = !DILocation(line: 159, column: 3, scope: !3536)
!3597 = !DILocation(line: 236, column: 1, scope: !3536)
!3598 = !DISubprogram(name: "fflush", scope: !925, file: !925, line: 230, type: !3537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3599 = distinct !DISubprogram(name: "rpl_fseeko", scope: !715, file: !715, line: 28, type: !3600, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3637)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!90, !3602, !3636, !90}
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !3604)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !3605)
!3605 = !{!3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3604, file: !233, line: 51, baseType: !90, size: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3604, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3604, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3604, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3604, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3604, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3604, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3604, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3604, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3604, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3604, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3604, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3604, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3604, file: !233, line: 70, baseType: !3620, size: 64, offset: 832)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3604, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3604, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3604, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3604, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3604, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3604, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3604, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3604, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3604, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3604, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3604, file: !233, line: 93, baseType: !3620, size: 64, offset: 1344)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3604, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3604, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3604, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3604, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!3636 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !925, line: 63, baseType: !256)
!3637 = !{!3638, !3639, !3640, !3641}
!3638 = !DILocalVariable(name: "fp", arg: 1, scope: !3599, file: !715, line: 28, type: !3602)
!3639 = !DILocalVariable(name: "offset", arg: 2, scope: !3599, file: !715, line: 28, type: !3636)
!3640 = !DILocalVariable(name: "whence", arg: 3, scope: !3599, file: !715, line: 28, type: !90)
!3641 = !DILocalVariable(name: "pos", scope: !3642, file: !715, line: 123, type: !3636)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !715, line: 119, column: 5)
!3643 = distinct !DILexicalBlock(scope: !3599, file: !715, line: 55, column: 7)
!3644 = !DILocation(line: 0, scope: !3599)
!3645 = !DILocation(line: 55, column: 12, scope: !3643)
!3646 = !{!1173, !746, i64 16}
!3647 = !DILocation(line: 55, column: 33, scope: !3643)
!3648 = !{!1173, !746, i64 8}
!3649 = !DILocation(line: 55, column: 25, scope: !3643)
!3650 = !DILocation(line: 56, column: 7, scope: !3643)
!3651 = !DILocation(line: 56, column: 15, scope: !3643)
!3652 = !DILocation(line: 56, column: 37, scope: !3643)
!3653 = !{!1173, !746, i64 32}
!3654 = !DILocation(line: 56, column: 29, scope: !3643)
!3655 = !DILocation(line: 57, column: 7, scope: !3643)
!3656 = !DILocation(line: 57, column: 15, scope: !3643)
!3657 = !{!1173, !746, i64 72}
!3658 = !DILocation(line: 57, column: 29, scope: !3643)
!3659 = !DILocation(line: 55, column: 7, scope: !3599)
!3660 = !DILocation(line: 123, column: 26, scope: !3642)
!3661 = !DILocation(line: 123, column: 19, scope: !3642)
!3662 = !DILocation(line: 0, scope: !3642)
!3663 = !DILocation(line: 124, column: 15, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3642, file: !715, line: 124, column: 11)
!3665 = !DILocation(line: 124, column: 11, scope: !3642)
!3666 = !DILocation(line: 135, column: 19, scope: !3642)
!3667 = !DILocation(line: 136, column: 12, scope: !3642)
!3668 = !DILocation(line: 136, column: 20, scope: !3642)
!3669 = !{!1173, !1174, i64 144}
!3670 = !DILocation(line: 167, column: 7, scope: !3642)
!3671 = !DILocation(line: 169, column: 10, scope: !3599)
!3672 = !DILocation(line: 169, column: 3, scope: !3599)
!3673 = !DILocation(line: 170, column: 1, scope: !3599)
!3674 = !DISubprogram(name: "fseeko", scope: !925, file: !925, line: 736, type: !3675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!90, !3602, !256, !90}
!3677 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !644, file: !644, line: 100, type: !3678, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !3681)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!92, !1437, !68, !92, !3680}
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!3681 = !{!3682, !3683, !3684, !3685, !3686}
!3682 = !DILocalVariable(name: "pwc", arg: 1, scope: !3677, file: !644, line: 100, type: !1437)
!3683 = !DILocalVariable(name: "s", arg: 2, scope: !3677, file: !644, line: 100, type: !68)
!3684 = !DILocalVariable(name: "n", arg: 3, scope: !3677, file: !644, line: 100, type: !92)
!3685 = !DILocalVariable(name: "ps", arg: 4, scope: !3677, file: !644, line: 100, type: !3680)
!3686 = !DILocalVariable(name: "ret", scope: !3677, file: !644, line: 130, type: !92)
!3687 = !DILocation(line: 0, scope: !3677)
!3688 = !DILocation(line: 105, column: 9, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3677, file: !644, line: 105, column: 7)
!3690 = !DILocation(line: 105, column: 7, scope: !3677)
!3691 = !DILocation(line: 117, column: 10, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3677, file: !644, line: 117, column: 7)
!3693 = !DILocation(line: 117, column: 7, scope: !3677)
!3694 = !DILocation(line: 130, column: 16, scope: !3677)
!3695 = !DILocation(line: 135, column: 11, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3677, file: !644, line: 135, column: 7)
!3697 = !DILocation(line: 135, column: 25, scope: !3696)
!3698 = !DILocation(line: 135, column: 30, scope: !3696)
!3699 = !DILocation(line: 135, column: 7, scope: !3677)
!3700 = !DILocalVariable(name: "ps", arg: 1, scope: !3701, file: !1410, line: 1135, type: !3680)
!3701 = distinct !DISubprogram(name: "mbszero", scope: !1410, file: !1410, line: 1135, type: !3702, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !3704)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{null, !3680}
!3704 = !{!3700}
!3705 = !DILocation(line: 0, scope: !3701, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 137, column: 5, scope: !3696)
!3707 = !DILocalVariable(name: "__dest", arg: 1, scope: !3708, file: !1419, line: 57, type: !89)
!3708 = distinct !DISubprogram(name: "memset", scope: !1419, file: !1419, line: 57, type: !1420, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !3709)
!3709 = !{!3707, !3710, !3711}
!3710 = !DILocalVariable(name: "__ch", arg: 2, scope: !3708, file: !1419, line: 57, type: !90)
!3711 = !DILocalVariable(name: "__len", arg: 3, scope: !3708, file: !1419, line: 57, type: !92)
!3712 = !DILocation(line: 0, scope: !3708, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 1137, column: 3, scope: !3701, inlinedAt: !3706)
!3714 = !DILocation(line: 59, column: 10, scope: !3708, inlinedAt: !3713)
!3715 = !DILocation(line: 137, column: 5, scope: !3696)
!3716 = !DILocation(line: 138, column: 11, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3677, file: !644, line: 138, column: 7)
!3718 = !DILocation(line: 138, column: 7, scope: !3677)
!3719 = !DILocation(line: 139, column: 5, scope: !3717)
!3720 = !DILocation(line: 143, column: 26, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3677, file: !644, line: 143, column: 7)
!3722 = !DILocation(line: 143, column: 41, scope: !3721)
!3723 = !DILocation(line: 143, column: 7, scope: !3677)
!3724 = !DILocation(line: 145, column: 15, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3726, file: !644, line: 145, column: 11)
!3726 = distinct !DILexicalBlock(scope: !3721, file: !644, line: 144, column: 5)
!3727 = !DILocation(line: 145, column: 11, scope: !3726)
!3728 = !DILocation(line: 146, column: 32, scope: !3725)
!3729 = !DILocation(line: 146, column: 16, scope: !3725)
!3730 = !DILocation(line: 146, column: 14, scope: !3725)
!3731 = !DILocation(line: 146, column: 9, scope: !3725)
!3732 = !DILocation(line: 286, column: 1, scope: !3677)
!3733 = !DISubprogram(name: "mbsinit", scope: !3734, file: !3734, line: 293, type: !3735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3734 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!90, !3737}
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!3739 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !717, file: !717, line: 27, type: !2946, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3740)
!3740 = !{!3741, !3742, !3743, !3744}
!3741 = !DILocalVariable(name: "ptr", arg: 1, scope: !3739, file: !717, line: 27, type: !89)
!3742 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3739, file: !717, line: 27, type: !92)
!3743 = !DILocalVariable(name: "size", arg: 3, scope: !3739, file: !717, line: 27, type: !92)
!3744 = !DILocalVariable(name: "nbytes", scope: !3739, file: !717, line: 29, type: !92)
!3745 = !DILocation(line: 0, scope: !3739)
!3746 = !DILocation(line: 30, column: 7, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3739, file: !717, line: 30, column: 7)
!3748 = !DILocation(line: 30, column: 7, scope: !3739)
!3749 = !DILocation(line: 32, column: 7, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3747, file: !717, line: 31, column: 5)
!3751 = !DILocation(line: 32, column: 13, scope: !3750)
!3752 = !DILocation(line: 33, column: 7, scope: !3750)
!3753 = !DILocalVariable(name: "ptr", arg: 1, scope: !3754, file: !3038, line: 2057, type: !89)
!3754 = distinct !DISubprogram(name: "rpl_realloc", scope: !3038, file: !3038, line: 2057, type: !3030, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3755)
!3755 = !{!3753, !3756}
!3756 = !DILocalVariable(name: "size", arg: 2, scope: !3754, file: !3038, line: 2057, type: !92)
!3757 = !DILocation(line: 0, scope: !3754, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 37, column: 10, scope: !3739)
!3759 = !DILocation(line: 2059, column: 24, scope: !3754, inlinedAt: !3758)
!3760 = !DILocation(line: 2059, column: 10, scope: !3754, inlinedAt: !3758)
!3761 = !DILocation(line: 37, column: 3, scope: !3739)
!3762 = !DILocation(line: 38, column: 1, scope: !3739)
!3763 = distinct !DISubprogram(name: "hard_locale", scope: !662, file: !662, line: 28, type: !3764, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3766)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!216, !90}
!3766 = !{!3767, !3768}
!3767 = !DILocalVariable(name: "category", arg: 1, scope: !3763, file: !662, line: 28, type: !90)
!3768 = !DILocalVariable(name: "locale", scope: !3763, file: !662, line: 30, type: !3769)
!3769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3770)
!3770 = !{!3771}
!3771 = !DISubrange(count: 257)
!3772 = distinct !DIAssignID()
!3773 = !DILocation(line: 0, scope: !3763)
!3774 = !DILocation(line: 30, column: 3, scope: !3763)
!3775 = !DILocation(line: 32, column: 7, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3763, file: !662, line: 32, column: 7)
!3777 = !DILocation(line: 32, column: 7, scope: !3763)
!3778 = !DILocalVariable(name: "__s1", arg: 1, scope: !3779, file: !814, line: 1359, type: !68)
!3779 = distinct !DISubprogram(name: "streq", scope: !814, file: !814, line: 1359, type: !815, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3780)
!3780 = !{!3778, !3781}
!3781 = !DILocalVariable(name: "__s2", arg: 2, scope: !3779, file: !814, line: 1359, type: !68)
!3782 = !DILocation(line: 0, scope: !3779, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 35, column: 9, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3763, file: !662, line: 35, column: 7)
!3785 = !DILocation(line: 1361, column: 11, scope: !3779, inlinedAt: !3783)
!3786 = !DILocation(line: 35, column: 29, scope: !3784)
!3787 = !DILocation(line: 0, scope: !3779, inlinedAt: !3788)
!3788 = distinct !DILocation(line: 35, column: 32, scope: !3784)
!3789 = !DILocation(line: 1361, column: 11, scope: !3779, inlinedAt: !3788)
!3790 = !DILocation(line: 1361, column: 10, scope: !3779, inlinedAt: !3788)
!3791 = !DILocation(line: 35, column: 7, scope: !3763)
!3792 = !DILocation(line: 46, column: 3, scope: !3763)
!3793 = !DILocation(line: 47, column: 1, scope: !3763)
!3794 = distinct !DISubprogram(name: "setlocale_null_r", scope: !723, file: !723, line: 154, type: !3795, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3797)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!90, !90, !237, !92}
!3797 = !{!3798, !3799, !3800}
!3798 = !DILocalVariable(name: "category", arg: 1, scope: !3794, file: !723, line: 154, type: !90)
!3799 = !DILocalVariable(name: "buf", arg: 2, scope: !3794, file: !723, line: 154, type: !237)
!3800 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3794, file: !723, line: 154, type: !92)
!3801 = !DILocation(line: 0, scope: !3794)
!3802 = !DILocation(line: 159, column: 10, scope: !3794)
!3803 = !DILocation(line: 159, column: 3, scope: !3794)
!3804 = distinct !DISubprogram(name: "setlocale_null", scope: !723, file: !723, line: 186, type: !3805, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3807)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!68, !90}
!3807 = !{!3808}
!3808 = !DILocalVariable(name: "category", arg: 1, scope: !3804, file: !723, line: 186, type: !90)
!3809 = !DILocation(line: 0, scope: !3804)
!3810 = !DILocation(line: 189, column: 10, scope: !3804)
!3811 = !DILocation(line: 189, column: 3, scope: !3804)
!3812 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !725, file: !725, line: 35, type: !3805, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !3813)
!3813 = !{!3814, !3815}
!3814 = !DILocalVariable(name: "category", arg: 1, scope: !3812, file: !725, line: 35, type: !90)
!3815 = !DILocalVariable(name: "result", scope: !3812, file: !725, line: 37, type: !68)
!3816 = !DILocation(line: 0, scope: !3812)
!3817 = !DILocation(line: 37, column: 24, scope: !3812)
!3818 = !DILocation(line: 62, column: 3, scope: !3812)
!3819 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !725, file: !725, line: 66, type: !3795, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !3820)
!3820 = !{!3821, !3822, !3823, !3824, !3825}
!3821 = !DILocalVariable(name: "category", arg: 1, scope: !3819, file: !725, line: 66, type: !90)
!3822 = !DILocalVariable(name: "buf", arg: 2, scope: !3819, file: !725, line: 66, type: !237)
!3823 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3819, file: !725, line: 66, type: !92)
!3824 = !DILocalVariable(name: "result", scope: !3819, file: !725, line: 111, type: !68)
!3825 = !DILocalVariable(name: "length", scope: !3826, file: !725, line: 125, type: !92)
!3826 = distinct !DILexicalBlock(scope: !3827, file: !725, line: 124, column: 5)
!3827 = distinct !DILexicalBlock(scope: !3819, file: !725, line: 113, column: 7)
!3828 = !DILocation(line: 0, scope: !3819)
!3829 = !DILocation(line: 0, scope: !3812, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 111, column: 24, scope: !3819)
!3831 = !DILocation(line: 37, column: 24, scope: !3812, inlinedAt: !3830)
!3832 = !DILocation(line: 113, column: 14, scope: !3827)
!3833 = !DILocation(line: 113, column: 7, scope: !3819)
!3834 = !DILocation(line: 116, column: 19, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3836, file: !725, line: 116, column: 11)
!3836 = distinct !DILexicalBlock(scope: !3827, file: !725, line: 114, column: 5)
!3837 = !DILocation(line: 116, column: 11, scope: !3836)
!3838 = !DILocation(line: 120, column: 16, scope: !3835)
!3839 = !DILocation(line: 120, column: 9, scope: !3835)
!3840 = !DILocation(line: 125, column: 23, scope: !3826)
!3841 = !DILocation(line: 0, scope: !3826)
!3842 = !DILocation(line: 126, column: 18, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3826, file: !725, line: 126, column: 11)
!3844 = !DILocation(line: 126, column: 11, scope: !3826)
!3845 = !DILocation(line: 128, column: 39, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3843, file: !725, line: 127, column: 9)
!3847 = !DILocalVariable(name: "__dest", arg: 1, scope: !3848, file: !1419, line: 26, type: !3309)
!3848 = distinct !DISubprogram(name: "memcpy", scope: !1419, file: !1419, line: 26, type: !3307, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !3849)
!3849 = !{!3847, !3850, !3851}
!3850 = !DILocalVariable(name: "__src", arg: 2, scope: !3848, file: !1419, line: 26, type: !952)
!3851 = !DILocalVariable(name: "__len", arg: 3, scope: !3848, file: !1419, line: 26, type: !92)
!3852 = !DILocation(line: 0, scope: !3848, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 128, column: 11, scope: !3846)
!3854 = !DILocation(line: 29, column: 10, scope: !3848, inlinedAt: !3853)
!3855 = !DILocation(line: 129, column: 11, scope: !3846)
!3856 = !DILocation(line: 133, column: 23, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3858, file: !725, line: 133, column: 15)
!3858 = distinct !DILexicalBlock(scope: !3843, file: !725, line: 132, column: 9)
!3859 = !DILocation(line: 133, column: 15, scope: !3858)
!3860 = !DILocation(line: 138, column: 44, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3857, file: !725, line: 134, column: 13)
!3862 = !DILocation(line: 0, scope: !3848, inlinedAt: !3863)
!3863 = distinct !DILocation(line: 138, column: 15, scope: !3861)
!3864 = !DILocation(line: 29, column: 10, scope: !3848, inlinedAt: !3863)
!3865 = !DILocation(line: 139, column: 15, scope: !3861)
!3866 = !DILocation(line: 139, column: 32, scope: !3861)
!3867 = !DILocation(line: 140, column: 13, scope: !3861)
!3868 = !DILocation(line: 0, scope: !3827)
!3869 = !DILocation(line: 145, column: 1, scope: !3819)
