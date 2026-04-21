; ModuleID = 'src/true.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@.str = private unnamed_addr constant [61 x i8] c"Usage: %s [ignored command line arguments]\0A  or:  %s OPTION\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [44 x i8] c"Exit with a status code indicating success.\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !34
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !56
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !61
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !66
@.str.14 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !102
@.str.15 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !104
@.str.16 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !106
@.str.17 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !111
@.str.31 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !151
@.str.32 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !156
@.str.33 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !161
@.str.34 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !166
@.str.35 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !168
@.str.36 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !170
@.str.37 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !172
@.str.38 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !174
@.str.42 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !188
@.str.43 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !190
@.str.44 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !195
@.str.45 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !200
@.str.46 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !205
@.str.18 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !288
@Version = dso_local local_unnamed_addr global ptr @.str.18, align 8, !dbg !291
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !295
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !308
@.str.21 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !300
@.str.1.22 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !302
@.str.2.23 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !304
@.str.3.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !306
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !310
@stderr = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !316
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !352
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !318
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !342
@.str.1.31 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !344
@.str.2.33 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !346
@.str.3.32 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !348
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !350
@.str.4.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !354
@.str.5.27 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !356
@.str.6.28 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !361
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !366
@.str.47 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !372
@.str.1.48 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !374
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !376
@.str.51 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !407
@.str.1.52 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !410
@.str.2.53 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !412
@.str.3.54 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !414
@.str.4.55 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !416
@.str.5.56 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !418
@.str.6.57 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !420
@.str.7.58 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !422
@.str.8.59 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !424
@.str.9.60 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !426
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.51, ptr @.str.1.52, ptr @.str.2.53, ptr @.str.3.54, ptr @.str.4.55, ptr @.str.5.56, ptr @.str.6.57, ptr @.str.7.58, ptr @.str.8.59, ptr @.str.9.60, ptr null], align 8, !dbg !428
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !453
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !467
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !505
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !512
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !469
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !514
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !457
@.str.10.63 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !474
@.str.11.61 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !476
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !478
@.str.13.62 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !480
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !482
@.str.67 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !520
@.str.1.68 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !523
@.str.2.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !525
@.str.3.70 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !527
@.str.4.71 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !529
@.str.5.72 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !531
@.str.6.73 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !536
@.str.7.74 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !541
@.str.8.75 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !543
@.str.9.76 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !548
@.str.10.77 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !553
@.str.11.78 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !558
@.str.12.79 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !563
@.str.13.80 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !565
@.str.14.81 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !567
@.str.15.82 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !572
@.str.16.83 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !577
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.88 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !582
@.str.18.89 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !584
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !586
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !588
@.str.21.90 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !590
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !592
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !597
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !602
@exit_failure = dso_local global i32 1, align 4, !dbg !610
@.str.103 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !616
@.str.1.101 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !619
@.str.2.102 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !621
@.str.114 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !623
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !626
@.str.119 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !641
@.str.1.120 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !644

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !717 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !721, metadata !DIExpression()), !dbg !722
  %2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !723
  %3 = load ptr, ptr @program_name, align 8, !dbg !723, !tbaa !724
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %2, ptr noundef %3, ptr noundef %3) #37, !dbg !723
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !728
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %5) #37, !dbg !728
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !729
  tail call fastcc void @oputs_(ptr noundef %7), !dbg !729
  %8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !730
  tail call fastcc void @oputs_(ptr noundef %8), !dbg !730
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !731
  %10 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef nonnull @.str.3) #37, !dbg !731
  tail call fastcc void @emit_ancillary_info(), !dbg !732
  tail call void @exit(i32 noundef %0) #38, !dbg !733
  unreachable, !dbg !733
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !734 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !738 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !68 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !211, metadata !DIExpression()), !dbg !743
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !212, metadata !DIExpression()), !dbg !743
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !744, !tbaa !745
  %3 = icmp eq i32 %2, -1, !dbg !747
  br i1 %3, label %4, label %16, !dbg !748

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.14) #37, !dbg !749
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !213, metadata !DIExpression()), !dbg !750
  %6 = icmp eq ptr %5, null, !dbg !751
  br i1 %6, label %14, label %7, !dbg !752

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !753, !tbaa !754
  %9 = icmp eq i8 %8, 0, !dbg !753
  br i1 %9, label %14, label %10, !dbg !755

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !756, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !762, metadata !DIExpression()), !dbg !763
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.15) #39, !dbg !765
  %12 = icmp eq i32 %11, 0, !dbg !766
  %13 = zext i1 %12 to i32, !dbg !755
  br label %14, !dbg !755

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !767, !tbaa !745
  br label %16, !dbg !768

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !769
  %18 = icmp eq i32 %17, 0, !dbg !769
  br i1 %18, label %22, label %19, !dbg !771

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !772, !tbaa !724
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !772
  br label %121, !dbg !774

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !216, metadata !DIExpression()), !dbg !743
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.16) #39, !dbg !775
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !776
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !218, metadata !DIExpression()), !dbg !743
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !777
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !219, metadata !DIExpression()), !dbg !743
  %26 = icmp eq ptr %25, null, !dbg !778
  br i1 %26, label %53, label %27, !dbg !779

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !780
  br i1 %28, label %53, label %29, !dbg !781

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !220, metadata !DIExpression()), !dbg !782
  tail call void @llvm.dbg.value(metadata i64 0, metadata !224, metadata !DIExpression()), !dbg !782
  %30 = icmp ult ptr %24, %25, !dbg !783
  br i1 %30, label %31, label %53, !dbg !784

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !743
  %33 = load ptr, ptr %32, align 8, !tbaa !724
  br label %34, !dbg !784

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !220, metadata !DIExpression()), !dbg !782
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !224, metadata !DIExpression()), !dbg !782
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !785
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !220, metadata !DIExpression()), !dbg !782
  %38 = load i8, ptr %35, align 1, !dbg !785, !tbaa !754
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !785
  %41 = load i16, ptr %40, align 2, !dbg !785, !tbaa !786
  %42 = freeze i16 %41, !dbg !788
  %43 = lshr i16 %42, 13, !dbg !788
  %44 = and i16 %43, 1, !dbg !788
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !789
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !224, metadata !DIExpression()), !dbg !782
  %47 = icmp ult ptr %37, %25, !dbg !783
  %48 = icmp ult i64 %46, 2, !dbg !790
  %49 = select i1 %47, i1 %48, i1 false, !dbg !790
  br i1 %49, label %34, label %50, !dbg !784, !llvm.loop !791

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !789
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !793
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !795
  br label %53, !dbg !795

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !743
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !216, metadata !DIExpression()), !dbg !743
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !219, metadata !DIExpression()), !dbg !743
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.17) #39, !dbg !796
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !225, metadata !DIExpression()), !dbg !743
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !797
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !226, metadata !DIExpression()), !dbg !743
  br label %58, !dbg !798

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !743
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !216, metadata !DIExpression()), !dbg !743
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !226, metadata !DIExpression()), !dbg !743
  %61 = load i8, ptr %59, align 1, !dbg !799, !tbaa !754
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !800

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !801
  %64 = load i8, ptr %63, align 1, !dbg !804, !tbaa !754
  %65 = icmp ne i8 %64, 45, !dbg !805
  %66 = select i1 %65, i1 %60, i1 false, !dbg !806
  br label %67, !dbg !806

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !216, metadata !DIExpression()), !dbg !743
  %69 = tail call ptr @__ctype_b_loc() #40, !dbg !807
  %70 = load ptr, ptr %69, align 8, !dbg !807, !tbaa !724
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !807
  %73 = load i16, ptr %72, align 2, !dbg !807, !tbaa !786
  %74 = and i16 %73, 8192, !dbg !807
  %75 = icmp eq i16 %74, 0, !dbg !807
  br i1 %75, label %89, label %76, !dbg !809

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !810
  br i1 %77, label %91, label %78, !dbg !813

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !814
  %80 = load i8, ptr %79, align 1, !dbg !814, !tbaa !754
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !814
  %83 = load i16, ptr %82, align 2, !dbg !814, !tbaa !786
  %84 = and i16 %83, 8192, !dbg !814
  %85 = icmp eq i16 %84, 0, !dbg !814
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !815
  br i1 %88, label %89, label %91, !dbg !815

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !816
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !226, metadata !DIExpression()), !dbg !743
  br label %58, !dbg !798, !llvm.loop !817

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !743
  %92 = ptrtoint ptr %24 to i64, !dbg !819
  %93 = load ptr, ptr @stdout, align 8, !dbg !819, !tbaa !724
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !819
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !756, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata !822, metadata !762, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !756, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata !822, metadata !762, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !756, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata !822, metadata !762, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !756, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata !822, metadata !762, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !756, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata !822, metadata !762, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !756, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata !822, metadata !762, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !756, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata !822, metadata !762, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !756, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata !822, metadata !762, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !756, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata !822, metadata !762, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !756, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata !822, metadata !762, metadata !DIExpression()), !dbg !839
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !283, metadata !DIExpression()), !dbg !743
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.10, i64 noundef 6) #39, !dbg !841
  %96 = icmp eq i32 %95, 0, !dbg !841
  br i1 %96, label %100, label %97, !dbg !843

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.11, i64 noundef 9) #39, !dbg !844
  %99 = icmp eq i32 %98, 0, !dbg !844
  br i1 %99, label %100, label %103, !dbg !845

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !846
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #37, !dbg !846
  br label %106, !dbg !848

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !849
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #37, !dbg !849
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !851, !tbaa !724
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.35, ptr noundef %107), !dbg !851
  %109 = load ptr, ptr @stdout, align 8, !dbg !852, !tbaa !724
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %109), !dbg !852
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !853
  %112 = sub i64 %111, %92, !dbg !853
  %113 = load ptr, ptr @stdout, align 8, !dbg !853, !tbaa !724
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !853
  %115 = load ptr, ptr @stdout, align 8, !dbg !854, !tbaa !724
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %115), !dbg !854
  %117 = load ptr, ptr @stdout, align 8, !dbg !855, !tbaa !724
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %117), !dbg !855
  %119 = load ptr, ptr @stdout, align 8, !dbg !856, !tbaa !724
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !856
  br label %121, !dbg !857

121:                                              ; preds = %106, %19
  ret void, !dbg !857
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #4 !dbg !858 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !862, metadata !DIExpression()), !dbg !875
  tail call void @llvm.dbg.value(metadata !822, metadata !871, metadata !DIExpression()), !dbg !875
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !870, metadata !DIExpression()), !dbg !875
  tail call void @emit_bug_reporting_address() #37, !dbg !876
  %1 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !877
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !873, metadata !DIExpression()), !dbg !875
  %2 = icmp eq ptr %1, null, !dbg !878
  br i1 %2, label %10, label %3, !dbg !880

3:                                                ; preds = %0
  %4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.42, i64 noundef 3) #39, !dbg !881
  %5 = icmp eq i32 %4, 0, !dbg !881
  br i1 %5, label %10, label %6, !dbg !882

6:                                                ; preds = %3
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #37, !dbg !883
  %8 = load ptr, ptr @stdout, align 8, !dbg !883, !tbaa !724
  %9 = tail call i32 @fputs_unlocked(ptr noundef %7, ptr noundef %8), !dbg !883
  br label %10, !dbg !885

10:                                               ; preds = %6, %3, %0
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !870, metadata !DIExpression()), !dbg !875
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !875
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #37, !dbg !886
  %12 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %11, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3) #37, !dbg !886
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #37, !dbg !887
  %14 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.46) #37, !dbg !887
  ret void, !dbg !888
}

; Function Attrs: noreturn nounwind
declare !dbg !889 void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !891 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !895 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !899 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !903 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !906 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !909 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !912 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !915 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !921 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !922 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !dbg !928 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !933, metadata !DIExpression()), !dbg !935
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !934, metadata !DIExpression()), !dbg !935
  %3 = icmp eq i32 %0, 2, !dbg !936
  br i1 %3, label %4, label %22, !dbg !938

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !dbg !939, !tbaa !724
  tail call void @set_program_name(ptr noundef %5) #37, !dbg !941
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.7) #37, !dbg !942
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #37, !dbg !943
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.8) #37, !dbg !944
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !945
  %10 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !946
  %11 = load ptr, ptr %10, align 8, !dbg !946, !tbaa !724
  call void @llvm.dbg.value(metadata ptr %11, metadata !756, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !762, metadata !DIExpression()), !dbg !948
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(7) @.str.10) #39, !dbg !950
  %13 = icmp eq i32 %12, 0, !dbg !951
  br i1 %13, label %14, label %15, !dbg !952

14:                                               ; preds = %4
  tail call void @usage(i32 noundef 0) #41, !dbg !953
  unreachable, !dbg !953

15:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr %11, metadata !756, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata ptr @.str.11, metadata !762, metadata !DIExpression()), !dbg !954
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(10) @.str.11) #39, !dbg !957
  %17 = icmp eq i32 %16, 0, !dbg !958
  br i1 %17, label %18, label %22, !dbg !959

18:                                               ; preds = %15
  %19 = load ptr, ptr @stdout, align 8, !dbg !960, !tbaa !724
  %20 = load ptr, ptr @Version, align 8, !dbg !961, !tbaa !724
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #37, !dbg !962
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %20, ptr noundef %21, ptr noundef null) #37, !dbg !963
  br label %22, !dbg !963

22:                                               ; preds = %15, %18, %2
  ret i32 0, !dbg !964
}

; Function Attrs: nounwind
declare !dbg !965 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !968 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !969 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !972 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !975, metadata !DIExpression()), !dbg !976
  store ptr %0, ptr @file_name, align 8, !dbg !977, !tbaa !724
  ret void, !dbg !978
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !979 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !983, metadata !DIExpression()), !dbg !984
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !985, !tbaa !986
  ret void, !dbg !988
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !989 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !994, !tbaa !724
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !995
  %3 = icmp eq i32 %2, 0, !dbg !996
  br i1 %3, label %22, label %4, !dbg !997

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !998, !tbaa !986, !range !999, !noundef !822
  %6 = icmp eq i8 %5, 0, !dbg !998
  br i1 %6, label %11, label %7, !dbg !1000

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1001
  %9 = load i32, ptr %8, align 4, !dbg !1001, !tbaa !745
  %10 = icmp eq i32 %9, 32, !dbg !1002
  br i1 %10, label %22, label %11, !dbg !1003

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1.22, i32 noundef 5) #37, !dbg !1004
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !991, metadata !DIExpression()), !dbg !1005
  %13 = load ptr, ptr @file_name, align 8, !dbg !1006, !tbaa !724
  %14 = icmp eq ptr %13, null, !dbg !1006
  %15 = tail call ptr @__errno_location() #40, !dbg !1008
  %16 = load i32, ptr %15, align 4, !dbg !1008, !tbaa !745
  br i1 %14, label %19, label %17, !dbg !1009

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1010
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.23, ptr noundef %18, ptr noundef %12) #37, !dbg !1010
  br label %20, !dbg !1010

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.24, ptr noundef %12) #37, !dbg !1011
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1012, !tbaa !745
  tail call void @_exit(i32 noundef %21) #38, !dbg !1013
  unreachable, !dbg !1013

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1014, !tbaa !724
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1016
  %25 = icmp eq i32 %24, 0, !dbg !1017
  br i1 %25, label %28, label %26, !dbg !1018

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1019, !tbaa !745
  tail call void @_exit(i32 noundef %27) #38, !dbg !1020
  unreachable, !dbg !1020

28:                                               ; preds = %22
  ret void, !dbg !1021
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1022 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1027 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 !dbg !1029 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1033, metadata !DIExpression()), !dbg !1037
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1034, metadata !DIExpression()), !dbg !1037
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1035, metadata !DIExpression()), !dbg !1037
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1036, metadata !DIExpression(DW_OP_deref)), !dbg !1037
  tail call fastcc void @flush_stdout(), !dbg !1038
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1039, !tbaa !724
  %7 = icmp eq ptr %6, null, !dbg !1039
  br i1 %7, label %9, label %8, !dbg !1041

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1042
  br label %13, !dbg !1042

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1043, !tbaa !724
  %11 = tail call ptr @getprogname() #39, !dbg !1043
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef %11) #37, !dbg !1043
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1045, !tbaa.struct !1046
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1045
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1045
  ret void, !dbg !1047
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1048 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1050, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata i32 1, metadata !1052, metadata !DIExpression()), !dbg !1057
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1060
  %2 = icmp slt i32 %1, 0, !dbg !1061
  br i1 %2, label %6, label %3, !dbg !1062

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1063, !tbaa !724
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1063
  br label %6, !dbg !1063

6:                                                ; preds = %3, %0
  ret void, !dbg !1064
}

declare !dbg !1065 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1103 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1109
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1105, metadata !DIExpression()), !dbg !1110
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1106, metadata !DIExpression()), !dbg !1110
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1107, metadata !DIExpression()), !dbg !1110
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1108, metadata !DIExpression(DW_OP_deref)), !dbg !1110
  %7 = load ptr, ptr @stderr, align 8, !dbg !1111, !tbaa !724
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1112, !noalias !1121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1125
  call void @llvm.dbg.value(metadata ptr %7, metadata !1117, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata ptr %2, metadata !1118, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata ptr poison, metadata !1119, metadata !DIExpression(DW_OP_deref)), !dbg !1126
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !1112
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1112, !noalias !1121
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1127, !tbaa !745
  %10 = add i32 %9, 1, !dbg !1127
  store i32 %10, ptr @error_message_count, align 4, !dbg !1127, !tbaa !745
  %11 = icmp eq i32 %1, 0, !dbg !1128
  br i1 %11, label %21, label %12, !dbg !1130

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1131, metadata !DIExpression(), metadata !1109, metadata ptr %5, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i32 %1, metadata !1134, metadata !DIExpression()), !dbg !1139
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1141
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1142
  call void @llvm.dbg.value(metadata ptr %13, metadata !1135, metadata !DIExpression()), !dbg !1139
  %14 = icmp eq ptr %13, null, !dbg !1143
  br i1 %14, label %15, label %17, !dbg !1145

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.26, ptr noundef nonnull @.str.5.27, i32 noundef 5) #37, !dbg !1146
  call void @llvm.dbg.value(metadata ptr %16, metadata !1135, metadata !DIExpression()), !dbg !1139
  br label %17, !dbg !1147

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1139
  call void @llvm.dbg.value(metadata ptr %18, metadata !1135, metadata !DIExpression()), !dbg !1139
  %19 = load ptr, ptr @stderr, align 8, !dbg !1148, !tbaa !724
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.28, ptr noundef %18) #37, !dbg !1148
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1149
  br label %21, !dbg !1150

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1151, !tbaa !724
  call void @llvm.dbg.value(metadata i32 10, metadata !1152, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata ptr %22, metadata !1158, metadata !DIExpression()), !dbg !1159
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1161
  %24 = load ptr, ptr %23, align 8, !dbg !1161, !tbaa !1162
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1161
  %26 = load ptr, ptr %25, align 8, !dbg !1161, !tbaa !1165
  %27 = icmp ult ptr %24, %26, !dbg !1161
  br i1 %27, label %30, label %28, !dbg !1161, !prof !1166

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !1161
  br label %32, !dbg !1161

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1161
  store ptr %31, ptr %23, align 8, !dbg !1161, !tbaa !1162
  store i8 10, ptr %24, align 1, !dbg !1161, !tbaa !754
  br label %32, !dbg !1161

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1167, !tbaa !724
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !1167
  %35 = icmp eq i32 %0, 0, !dbg !1168
  br i1 %35, label %37, label %36, !dbg !1170

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #38, !dbg !1171
  unreachable, !dbg !1171

37:                                               ; preds = %32
  ret void, !dbg !1172
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1173 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1176 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1179 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1182 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1185 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1189 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1197
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1196, metadata !DIExpression(), metadata !1197, metadata ptr %4, metadata !DIExpression()), !dbg !1198
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1193, metadata !DIExpression()), !dbg !1198
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1194, metadata !DIExpression()), !dbg !1198
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1195, metadata !DIExpression()), !dbg !1198
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !1199
  call void @llvm.va_start(ptr nonnull %4), !dbg !1200
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1201, !tbaa.struct !1046
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #42, !dbg !1201
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1201
  call void @llvm.va_end(ptr nonnull %4), !dbg !1202
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !1203
  ret void, !dbg !1203
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !320 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !336, metadata !DIExpression()), !dbg !1204
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !337, metadata !DIExpression()), !dbg !1204
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !338, metadata !DIExpression()), !dbg !1204
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !339, metadata !DIExpression()), !dbg !1204
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !340, metadata !DIExpression()), !dbg !1204
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !341, metadata !DIExpression(DW_OP_deref)), !dbg !1204
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1205, !tbaa !745
  %9 = icmp eq i32 %8, 0, !dbg !1205
  br i1 %9, label %24, label %10, !dbg !1207

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1208, !tbaa !745
  %12 = icmp eq i32 %11, %3, !dbg !1211
  br i1 %12, label %13, label %23, !dbg !1212

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1213, !tbaa !724
  %15 = icmp eq ptr %14, %2, !dbg !1214
  br i1 %15, label %37, label %16, !dbg !1215

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1216
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1217
  br i1 %19, label %20, label %23, !dbg !1217

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1218
  %22 = icmp eq i32 %21, 0, !dbg !1219
  br i1 %22, label %37, label %23, !dbg !1220

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1221, !tbaa !724
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1222, !tbaa !745
  br label %24, !dbg !1223

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1224
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1225, !tbaa !724
  %26 = icmp eq ptr %25, null, !dbg !1225
  br i1 %26, label %28, label %27, !dbg !1227

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !1228
  br label %32, !dbg !1228

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1229, !tbaa !724
  %30 = tail call ptr @getprogname() #39, !dbg !1229
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.31, ptr noundef %30) #37, !dbg !1229
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1231, !tbaa !724
  %34 = icmp eq ptr %2, null, !dbg !1231
  %35 = select i1 %34, ptr @.str.3.32, ptr @.str.2.33, !dbg !1231
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !1231
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1232, !tbaa.struct !1046
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1232
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1232
  br label %37, !dbg !1233

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1233
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1234 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1244
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1243, metadata !DIExpression(), metadata !1244, metadata ptr %6, metadata !DIExpression()), !dbg !1245
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1238, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1239, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1240, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1241, metadata !DIExpression()), !dbg !1245
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1242, metadata !DIExpression()), !dbg !1245
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1246
  call void @llvm.va_start(ptr nonnull %6), !dbg !1247
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1248, !tbaa.struct !1046
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #42, !dbg !1248
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1248
  call void @llvm.va_end(ptr nonnull %6), !dbg !1249
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1250
  ret void, !dbg !1250
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1251 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1254, !tbaa !724
  ret ptr %1, !dbg !1255
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1256 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1258, metadata !DIExpression()), !dbg !1261
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1262
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1259, metadata !DIExpression()), !dbg !1261
  %3 = icmp eq ptr %2, null, !dbg !1263
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1263
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1263
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1260, metadata !DIExpression()), !dbg !1261
  %6 = ptrtoint ptr %5 to i64, !dbg !1264
  %7 = ptrtoint ptr %0 to i64, !dbg !1264
  %8 = sub i64 %6, %7, !dbg !1264
  %9 = icmp sgt i64 %8, 6, !dbg !1266
  br i1 %9, label %10, label %19, !dbg !1267

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1268
  call void @llvm.dbg.value(metadata ptr %11, metadata !1269, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata ptr @.str.47, metadata !1274, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i64 7, metadata !1275, metadata !DIExpression()), !dbg !1276
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.47, i64 7), !dbg !1278
  %13 = icmp eq i32 %12, 0, !dbg !1279
  br i1 %13, label %14, label %19, !dbg !1280

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1258, metadata !DIExpression()), !dbg !1261
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.48, i64 noundef 3) #39, !dbg !1281
  %16 = icmp eq i32 %15, 0, !dbg !1284
  %17 = select i1 %16, i64 3, i64 0, !dbg !1285
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1285
  br label %19, !dbg !1285

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1261
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1260, metadata !DIExpression()), !dbg !1261
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1258, metadata !DIExpression()), !dbg !1261
  store ptr %20, ptr @program_name, align 8, !dbg !1286, !tbaa !724
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1287, !tbaa !724
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1288, !tbaa !724
  ret void, !dbg !1289
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1290 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !378 {
  %3 = alloca i32, align 4, !DIAssignID !1291
  call void @llvm.dbg.assign(metadata i1 undef, metadata !388, metadata !DIExpression(), metadata !1291, metadata ptr %3, metadata !DIExpression()), !dbg !1292
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1293
  call void @llvm.dbg.assign(metadata i1 undef, metadata !393, metadata !DIExpression(), metadata !1293, metadata ptr %4, metadata !DIExpression()), !dbg !1292
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !385, metadata !DIExpression()), !dbg !1292
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !386, metadata !DIExpression()), !dbg !1292
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1294
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !387, metadata !DIExpression()), !dbg !1292
  %6 = icmp eq ptr %5, %0, !dbg !1295
  br i1 %6, label %7, label %14, !dbg !1297

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1298
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1299
  call void @llvm.dbg.value(metadata ptr %4, metadata !1300, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata ptr %4, metadata !1309, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i32 0, metadata !1315, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 8, metadata !1316, metadata !DIExpression()), !dbg !1317
  store i64 0, ptr %4, align 8, !dbg !1319
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1320
  %9 = icmp eq i64 %8, 2, !dbg !1322
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1323
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1292
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1324
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1324
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1292
  ret ptr %15, !dbg !1324
}

; Function Attrs: nounwind
declare !dbg !1325 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1331 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1336, metadata !DIExpression()), !dbg !1339
  %2 = tail call ptr @__errno_location() #40, !dbg !1340
  %3 = load i32, ptr %2, align 4, !dbg !1340, !tbaa !745
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1337, metadata !DIExpression()), !dbg !1339
  %4 = icmp eq ptr %0, null, !dbg !1341
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1341
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1342
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1338, metadata !DIExpression()), !dbg !1339
  store i32 %3, ptr %2, align 4, !dbg !1343, !tbaa !745
  ret ptr %6, !dbg !1344
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1345 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1351, metadata !DIExpression()), !dbg !1352
  %2 = icmp eq ptr %0, null, !dbg !1353
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1353
  %4 = load i32, ptr %3, align 8, !dbg !1354, !tbaa !1355
  ret i32 %4, !dbg !1357
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1358 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1362, metadata !DIExpression()), !dbg !1364
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1363, metadata !DIExpression()), !dbg !1364
  %3 = icmp eq ptr %0, null, !dbg !1365
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1365
  store i32 %1, ptr %4, align 8, !dbg !1366, !tbaa !1355
  ret void, !dbg !1367
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1368 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1372, metadata !DIExpression()), !dbg !1380
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1373, metadata !DIExpression()), !dbg !1380
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1374, metadata !DIExpression()), !dbg !1380
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1375, metadata !DIExpression()), !dbg !1380
  %4 = icmp eq ptr %0, null, !dbg !1381
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1381
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1382
  %7 = lshr i8 %1, 5, !dbg !1383
  %8 = zext nneg i8 %7 to i64, !dbg !1383
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1384
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1376, metadata !DIExpression()), !dbg !1380
  %10 = and i8 %1, 31, !dbg !1385
  %11 = zext nneg i8 %10 to i32, !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1378, metadata !DIExpression()), !dbg !1380
  %12 = load i32, ptr %9, align 4, !dbg !1386, !tbaa !745
  %13 = lshr i32 %12, %11, !dbg !1387
  %14 = and i32 %13, 1, !dbg !1388
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1379, metadata !DIExpression()), !dbg !1380
  %15 = xor i32 %13, %2, !dbg !1389
  %16 = and i32 %15, 1, !dbg !1389
  %17 = shl nuw i32 %16, %11, !dbg !1390
  %18 = xor i32 %17, %12, !dbg !1391
  store i32 %18, ptr %9, align 4, !dbg !1391, !tbaa !745
  ret i32 %14, !dbg !1392
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1393 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1397, metadata !DIExpression()), !dbg !1400
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1398, metadata !DIExpression()), !dbg !1400
  %3 = icmp eq ptr %0, null, !dbg !1401
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1403
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1397, metadata !DIExpression()), !dbg !1400
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1404
  %6 = load i32, ptr %5, align 4, !dbg !1404, !tbaa !1405
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1399, metadata !DIExpression()), !dbg !1400
  store i32 %1, ptr %5, align 4, !dbg !1406, !tbaa !1405
  ret i32 %6, !dbg !1407
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1408 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1412, metadata !DIExpression()), !dbg !1415
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1413, metadata !DIExpression()), !dbg !1415
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1414, metadata !DIExpression()), !dbg !1415
  %4 = icmp eq ptr %0, null, !dbg !1416
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1418
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1412, metadata !DIExpression()), !dbg !1415
  store i32 10, ptr %5, align 8, !dbg !1419, !tbaa !1355
  %6 = icmp ne ptr %1, null, !dbg !1420
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1422
  br i1 %8, label %10, label %9, !dbg !1422

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1423
  unreachable, !dbg !1423

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1424
  store ptr %1, ptr %11, align 8, !dbg !1425, !tbaa !1426
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1427
  store ptr %2, ptr %12, align 8, !dbg !1428, !tbaa !1429
  ret void, !dbg !1430
}

; Function Attrs: noreturn nounwind
declare !dbg !1431 void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1432 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1436, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1437, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1438, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1439, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1440, metadata !DIExpression()), !dbg !1444
  %6 = icmp eq ptr %4, null, !dbg !1445
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1445
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1441, metadata !DIExpression()), !dbg !1444
  %8 = tail call ptr @__errno_location() #40, !dbg !1446
  %9 = load i32, ptr %8, align 4, !dbg !1446, !tbaa !745
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1442, metadata !DIExpression()), !dbg !1444
  %10 = load i32, ptr %7, align 8, !dbg !1447, !tbaa !1355
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1448
  %12 = load i32, ptr %11, align 4, !dbg !1448, !tbaa !1405
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1449
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1450
  %15 = load ptr, ptr %14, align 8, !dbg !1450, !tbaa !1426
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1451
  %17 = load ptr, ptr %16, align 8, !dbg !1451, !tbaa !1429
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1452
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1443, metadata !DIExpression()), !dbg !1444
  store i32 %9, ptr %8, align 4, !dbg !1453, !tbaa !745
  ret i64 %18, !dbg !1454
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1455 {
  %10 = alloca i32, align 4, !DIAssignID !1523
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1524
  %12 = alloca i32, align 4, !DIAssignID !1525
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1526
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1527
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1501, metadata !DIExpression(), metadata !1527, metadata ptr %14, metadata !DIExpression()), !dbg !1528
  %15 = alloca i32, align 4, !DIAssignID !1529
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1504, metadata !DIExpression(), metadata !1529, metadata ptr %15, metadata !DIExpression()), !dbg !1530
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1461, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1462, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1463, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1464, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1465, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1466, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1467, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1468, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1469, metadata !DIExpression()), !dbg !1531
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1532
  %17 = icmp eq i64 %16, 1, !dbg !1533
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1470, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1471, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1472, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1473, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1474, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1475, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1476, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1477, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1478, metadata !DIExpression()), !dbg !1531
  %18 = and i32 %5, 2, !dbg !1534
  %19 = icmp ne i32 %18, 0, !dbg !1534
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1534

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !1535
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !1536
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !1537
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1462, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1477, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1476, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1475, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1474, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1473, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1472, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1471, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1464, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1469, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1468, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1465, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.label(metadata !1479), !dbg !1538
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1480, metadata !DIExpression()), !dbg !1531
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
  ], !dbg !1539

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1476, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1465, metadata !DIExpression()), !dbg !1531
  br label %101, !dbg !1540

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1476, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1465, metadata !DIExpression()), !dbg !1531
  br i1 %36, label %101, label %42, !dbg !1540

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1541
  br i1 %43, label %101, label %44, !dbg !1545

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1541, !tbaa !754
  br label %101, !dbg !1541

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !491, metadata !DIExpression(), metadata !1525, metadata ptr %12, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.assign(metadata i1 undef, metadata !492, metadata !DIExpression(), metadata !1526, metadata ptr %13, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata ptr @.str.11.61, metadata !488, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i32 %28, metadata !489, metadata !DIExpression()), !dbg !1546
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.62, ptr noundef nonnull @.str.11.61, i32 noundef 5) #37, !dbg !1550
  call void @llvm.dbg.value(metadata ptr %46, metadata !490, metadata !DIExpression()), !dbg !1546
  %47 = icmp eq ptr %46, @.str.11.61, !dbg !1551
  br i1 %47, label %48, label %57, !dbg !1553

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1554
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1555
  call void @llvm.dbg.value(metadata ptr %13, metadata !1556, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata ptr %13, metadata !1564, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i32 0, metadata !1567, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i64 8, metadata !1568, metadata !DIExpression()), !dbg !1569
  store i64 0, ptr %13, align 8, !dbg !1571
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1572
  %50 = icmp eq i64 %49, 3, !dbg !1574
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1575
  %54 = icmp eq i32 %28, 9, !dbg !1575
  %55 = select i1 %54, ptr @.str.10.63, ptr @.str.12.64, !dbg !1575
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1575
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1576
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1576
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1546
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1468, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.assign(metadata i1 undef, metadata !491, metadata !DIExpression(), metadata !1523, metadata ptr %10, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.assign(metadata i1 undef, metadata !492, metadata !DIExpression(), metadata !1524, metadata ptr %11, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata ptr @.str.12.64, metadata !488, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 %28, metadata !489, metadata !DIExpression()), !dbg !1577
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.62, ptr noundef nonnull @.str.12.64, i32 noundef 5) #37, !dbg !1579
  call void @llvm.dbg.value(metadata ptr %59, metadata !490, metadata !DIExpression()), !dbg !1577
  %60 = icmp eq ptr %59, @.str.12.64, !dbg !1580
  br i1 %60, label %61, label %70, !dbg !1581

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1582
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1583
  call void @llvm.dbg.value(metadata ptr %11, metadata !1556, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata ptr %11, metadata !1564, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i32 0, metadata !1567, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i64 8, metadata !1568, metadata !DIExpression()), !dbg !1586
  store i64 0, ptr %11, align 8, !dbg !1588
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1589
  %63 = icmp eq i64 %62, 3, !dbg !1590
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1591
  %67 = icmp eq i32 %28, 9, !dbg !1591
  %68 = select i1 %67, ptr @.str.10.63, ptr @.str.12.64, !dbg !1591
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1591
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1592
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1592
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1469, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1468, metadata !DIExpression()), !dbg !1531
  br i1 %36, label %88, label %73, !dbg !1593

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1481, metadata !DIExpression()), !dbg !1594
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1471, metadata !DIExpression()), !dbg !1531
  %74 = load i8, ptr %71, align 1, !dbg !1595, !tbaa !754
  %75 = icmp eq i8 %74, 0, !dbg !1597
  br i1 %75, label %88, label %.preheader11, !dbg !1597

.preheader11:                                     ; preds = %73
  br label %76, !dbg !1597

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1481, metadata !DIExpression()), !dbg !1594
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1471, metadata !DIExpression()), !dbg !1531
  %80 = icmp ult i64 %79, %39, !dbg !1598
  br i1 %80, label %81, label %83, !dbg !1601

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1598
  store i8 %77, ptr %82, align 1, !dbg !1598, !tbaa !754
  br label %83, !dbg !1598

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1601
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1471, metadata !DIExpression()), !dbg !1531
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1602
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1481, metadata !DIExpression()), !dbg !1594
  %86 = load i8, ptr %85, align 1, !dbg !1595, !tbaa !754
  %87 = icmp eq i8 %86, 0, !dbg !1597
  br i1 %87, label %.loopexit12, label %76, !dbg !1597, !llvm.loop !1603

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !1601
  br label %88, !dbg !1605

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !1606
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1471, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1475, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1473, metadata !DIExpression()), !dbg !1531
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #39, !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1474, metadata !DIExpression()), !dbg !1531
  br label %101, !dbg !1607

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1475, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1476, metadata !DIExpression()), !dbg !1531
  br label %101, !dbg !1608

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1476, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1475, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1465, metadata !DIExpression()), !dbg !1531
  br label %101, !dbg !1609

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1476, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1475, metadata !DIExpression()), !dbg !1531
  br i1 %36, label %101, label %95, !dbg !1610

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1476, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1475, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1465, metadata !DIExpression()), !dbg !1531
  br i1 %36, label %101, label %95, !dbg !1609

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !1611
  br i1 %97, label %101, label %98, !dbg !1615

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !1611, !tbaa !754
  br label %101, !dbg !1611

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1476, metadata !DIExpression()), !dbg !1531
  br label %101, !dbg !1616

100:                                              ; preds = %27
  call void @abort() #38, !dbg !1617
  unreachable, !dbg !1617

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !1606
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.63, %42 ], [ @.str.10.63, %44 ], [ @.str.10.63, %41 ], [ %33, %27 ], [ @.str.12.64, %95 ], [ @.str.12.64, %98 ], [ @.str.12.64, %94 ], [ @.str.10.63, %40 ], [ @.str.12.64, %91 ], [ @.str.12.64, %92 ], [ @.str.12.64, %93 ], !dbg !1531
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !1531
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1476, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1475, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1474, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1473, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1471, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1469, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1468, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1465, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1486, metadata !DIExpression()), !dbg !1618
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
  br label %121, !dbg !1619

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !1606
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !1535
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !1620
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1462, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1486, metadata !DIExpression()), !dbg !1618
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1477, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1472, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1471, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1464, metadata !DIExpression()), !dbg !1531
  %130 = icmp eq i64 %122, -1, !dbg !1621
  br i1 %130, label %131, label %135, !dbg !1622

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1623
  %133 = load i8, ptr %132, align 1, !dbg !1623, !tbaa !754
  %134 = icmp eq i8 %133, 0, !dbg !1624
  br i1 %134, label %573, label %137, !dbg !1625

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !1626
  br i1 %136, label %573, label %137, !dbg !1625

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1488, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1491, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1492, metadata !DIExpression()), !dbg !1627
  br i1 %113, label %138, label %151, !dbg !1628

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !1630
  %140 = select i1 %130, i1 %114, i1 false, !dbg !1631
  br i1 %140, label %141, label %143, !dbg !1631

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1632
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1464, metadata !DIExpression()), !dbg !1531
  br label %143, !dbg !1633

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !1633
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1464, metadata !DIExpression()), !dbg !1531
  %145 = icmp ugt i64 %139, %144, !dbg !1634
  br i1 %145, label %151, label %146, !dbg !1635

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1636
  call void @llvm.dbg.value(metadata ptr %147, metadata !1637, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata ptr %106, metadata !1640, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i64 %107, metadata !1641, metadata !DIExpression()), !dbg !1642
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !1644
  %149 = icmp eq i32 %148, 0, !dbg !1645
  %150 = and i1 %149, %109, !dbg !1646
  br i1 %150, label %.loopexit7, label %151, !dbg !1646

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1488, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1464, metadata !DIExpression()), !dbg !1531
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1647
  %155 = load i8, ptr %154, align 1, !dbg !1647, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1493, metadata !DIExpression()), !dbg !1627
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
  ], !dbg !1648

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !1649

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !1650

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1491, metadata !DIExpression()), !dbg !1627
  %159 = select i1 %110, i1 true, i1 %127, !dbg !1654
  br i1 %159, label %176, label %160, !dbg !1654

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !1656
  br i1 %161, label %162, label %164, !dbg !1660

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1656
  store i8 39, ptr %163, align 1, !dbg !1656, !tbaa !754
  br label %164, !dbg !1656

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !1660
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1471, metadata !DIExpression()), !dbg !1531
  %166 = icmp ult i64 %165, %129, !dbg !1661
  br i1 %166, label %167, label %169, !dbg !1664

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !1661
  store i8 36, ptr %168, align 1, !dbg !1661, !tbaa !754
  br label %169, !dbg !1661

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1471, metadata !DIExpression()), !dbg !1531
  %171 = icmp ult i64 %170, %129, !dbg !1665
  br i1 %171, label %172, label %174, !dbg !1668

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !1665
  store i8 39, ptr %173, align 1, !dbg !1665, !tbaa !754
  br label %174, !dbg !1665

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !1668
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1471, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1480, metadata !DIExpression()), !dbg !1531
  br label %176, !dbg !1669

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !1531
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1471, metadata !DIExpression()), !dbg !1531
  %179 = icmp ult i64 %177, %129, !dbg !1670
  br i1 %179, label %180, label %182, !dbg !1673

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !1670
  store i8 92, ptr %181, align 1, !dbg !1670, !tbaa !754
  br label %182, !dbg !1670

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !1673
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1471, metadata !DIExpression()), !dbg !1531
  br i1 %110, label %184, label %476, !dbg !1674

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !1676
  %186 = icmp ult i64 %185, %152, !dbg !1677
  br i1 %186, label %187, label %433, !dbg !1678

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !1679
  %189 = load i8, ptr %188, align 1, !dbg !1679, !tbaa !754
  %190 = add i8 %189, -48, !dbg !1680
  %191 = icmp ult i8 %190, 10, !dbg !1680
  br i1 %191, label %192, label %433, !dbg !1680

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !1681
  br i1 %193, label %194, label %196, !dbg !1685

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !1681
  store i8 48, ptr %195, align 1, !dbg !1681, !tbaa !754
  br label %196, !dbg !1681

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1471, metadata !DIExpression()), !dbg !1531
  %198 = icmp ult i64 %197, %129, !dbg !1686
  br i1 %198, label %199, label %201, !dbg !1689

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !1686
  store i8 48, ptr %200, align 1, !dbg !1686, !tbaa !754
  br label %201, !dbg !1686

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !1689
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1471, metadata !DIExpression()), !dbg !1531
  br label %433, !dbg !1690

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !1691

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !1692

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !1693

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !1695

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !1697
  %209 = icmp ult i64 %208, %152, !dbg !1698
  br i1 %209, label %210, label %433, !dbg !1699

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !1700
  %212 = load i8, ptr %211, align 1, !dbg !1700, !tbaa !754
  %213 = icmp eq i8 %212, 63, !dbg !1701
  br i1 %213, label %214, label %433, !dbg !1702

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !1703
  %216 = load i8, ptr %215, align 1, !dbg !1703, !tbaa !754
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
  ], !dbg !1704

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !1705

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1493, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1486, metadata !DIExpression()), !dbg !1618
  %219 = icmp ult i64 %123, %129, !dbg !1707
  br i1 %219, label %220, label %222, !dbg !1710

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1707
  store i8 63, ptr %221, align 1, !dbg !1707, !tbaa !754
  br label %222, !dbg !1707

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !1710
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1471, metadata !DIExpression()), !dbg !1531
  %224 = icmp ult i64 %223, %129, !dbg !1711
  br i1 %224, label %225, label %227, !dbg !1714

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !1711
  store i8 34, ptr %226, align 1, !dbg !1711, !tbaa !754
  br label %227, !dbg !1711

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !1714
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1471, metadata !DIExpression()), !dbg !1531
  %229 = icmp ult i64 %228, %129, !dbg !1715
  br i1 %229, label %230, label %232, !dbg !1718

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !1715
  store i8 34, ptr %231, align 1, !dbg !1715, !tbaa !754
  br label %232, !dbg !1715

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !1718
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1471, metadata !DIExpression()), !dbg !1531
  %234 = icmp ult i64 %233, %129, !dbg !1719
  br i1 %234, label %235, label %237, !dbg !1722

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !1719
  store i8 63, ptr %236, align 1, !dbg !1719, !tbaa !754
  br label %237, !dbg !1719

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !1722
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1471, metadata !DIExpression()), !dbg !1531
  br label %433, !dbg !1723

239:                                              ; preds = %151
  br label %249, !dbg !1724

240:                                              ; preds = %151
  br label %249, !dbg !1725

241:                                              ; preds = %151
  br label %247, !dbg !1726

242:                                              ; preds = %151
  br label %247, !dbg !1727

243:                                              ; preds = %151
  br label %249, !dbg !1728

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !1729

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !1730

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !1733

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !1735
  call void @llvm.dbg.label(metadata !1494), !dbg !1736
  br i1 %118, label %.loopexit8, label %249, !dbg !1737

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !1735
  call void @llvm.dbg.label(metadata !1497), !dbg !1739
  br i1 %108, label %487, label %444, !dbg !1740

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !1741

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !1742, !tbaa !754
  %254 = icmp eq i8 %253, 0, !dbg !1744
  br i1 %254, label %255, label %433, !dbg !1745

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !1746
  br i1 %256, label %257, label %433, !dbg !1748

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1492, metadata !DIExpression()), !dbg !1627
  br label %258, !dbg !1749

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1492, metadata !DIExpression()), !dbg !1627
  br i1 %115, label %260, label %433, !dbg !1750

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !1752

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1477, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1492, metadata !DIExpression()), !dbg !1627
  br i1 %115, label %262, label %433, !dbg !1753

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !1754

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !1757
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !1759
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !1759
  %268 = select i1 %266, i64 %129, i64 0, !dbg !1759
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1462, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1472, metadata !DIExpression()), !dbg !1531
  %269 = icmp ult i64 %123, %268, !dbg !1760
  br i1 %269, label %270, label %272, !dbg !1763

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1760
  store i8 39, ptr %271, align 1, !dbg !1760, !tbaa !754
  br label %272, !dbg !1760

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1471, metadata !DIExpression()), !dbg !1531
  %274 = icmp ult i64 %273, %268, !dbg !1764
  br i1 %274, label %275, label %277, !dbg !1767

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !1764
  store i8 92, ptr %276, align 1, !dbg !1764, !tbaa !754
  br label %277, !dbg !1764

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !1767
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1471, metadata !DIExpression()), !dbg !1531
  %279 = icmp ult i64 %278, %268, !dbg !1768
  br i1 %279, label %280, label %282, !dbg !1771

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !1768
  store i8 39, ptr %281, align 1, !dbg !1768, !tbaa !754
  br label %282, !dbg !1768

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !1771
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1471, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1480, metadata !DIExpression()), !dbg !1531
  br label %433, !dbg !1772

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !1773

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1498, metadata !DIExpression()), !dbg !1774
  %286 = tail call ptr @__ctype_b_loc() #40, !dbg !1775
  %287 = load ptr, ptr %286, align 8, !dbg !1775, !tbaa !724
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !1775
  %290 = load i16, ptr %289, align 2, !dbg !1775, !tbaa !786
  %291 = and i16 %290, 16384, !dbg !1775
  %292 = icmp ne i16 %291, 0, !dbg !1777
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !1500, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1774
  br label %334, !dbg !1778

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !1779
  call void @llvm.dbg.value(metadata ptr %14, metadata !1556, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata ptr %14, metadata !1564, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i32 0, metadata !1567, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 8, metadata !1568, metadata !DIExpression()), !dbg !1782
  store i64 0, ptr %14, align 8, !dbg !1784
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1498, metadata !DIExpression()), !dbg !1774
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1500, metadata !DIExpression()), !dbg !1774
  %294 = icmp eq i64 %152, -1, !dbg !1785
  br i1 %294, label %295, label %297, !dbg !1787

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1788
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1464, metadata !DIExpression()), !dbg !1531
  br label %297, !dbg !1789

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !1627
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1464, metadata !DIExpression()), !dbg !1531
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !1790
  %299 = sub i64 %298, %128, !dbg !1791
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #37, !dbg !1792
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1508, metadata !DIExpression()), !dbg !1530
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !1793

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1498, metadata !DIExpression()), !dbg !1774
  %302 = icmp ult i64 %128, %298, !dbg !1794
  br i1 %302, label %.preheader5, label %329, !dbg !1796

.preheader5:                                      ; preds = %301
  br label %304, !dbg !1797

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1500, metadata !DIExpression()), !dbg !1774
  br label %329, !dbg !1798

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !1498, metadata !DIExpression()), !dbg !1774
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !1800
  %308 = load i8, ptr %307, align 1, !dbg !1800, !tbaa !754
  %309 = icmp eq i8 %308, 0, !dbg !1796
  br i1 %309, label %.loopexit6, label %310, !dbg !1797

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !1498, metadata !DIExpression()), !dbg !1774
  %312 = add i64 %311, %128, !dbg !1802
  %313 = icmp eq i64 %311, %299, !dbg !1794
  br i1 %313, label %.loopexit6, label %304, !dbg !1796, !llvm.loop !1803

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1509, metadata !DIExpression()), !dbg !1804
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !1805
  %317 = and i1 %316, %109, !dbg !1805
  br i1 %317, label %.preheader3, label %325, !dbg !1805

.preheader3:                                      ; preds = %314
  br label %318, !dbg !1806

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !1509, metadata !DIExpression()), !dbg !1804
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !1807
  %321 = load i8, ptr %320, align 1, !dbg !1807, !tbaa !754
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !1809

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !1810
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1509, metadata !DIExpression()), !dbg !1804
  %324 = icmp eq i64 %323, %300, !dbg !1811
  br i1 %324, label %.loopexit4, label %318, !dbg !1806, !llvm.loop !1812

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !1814

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !1814, !tbaa !745
  call void @llvm.dbg.value(metadata i32 %326, metadata !1816, metadata !DIExpression()), !dbg !1824
  %327 = call i32 @iswprint(i32 noundef %326) #37, !dbg !1826
  %328 = icmp ne i32 %327, 0, !dbg !1827
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1500, metadata !DIExpression()), !dbg !1774
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1498, metadata !DIExpression()), !dbg !1774
  br label %329, !dbg !1828

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !1829

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1500, metadata !DIExpression()), !dbg !1774
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !1498, metadata !DIExpression()), !dbg !1774
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1829
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1830
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1500, metadata !DIExpression()), !dbg !1774
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1498, metadata !DIExpression()), !dbg !1774
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1829
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1830
  call void @llvm.dbg.label(metadata !1522), !dbg !1831
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !1832
  br label %624, !dbg !1832

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !1627
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !1834
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1500, metadata !DIExpression()), !dbg !1774
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !1498, metadata !DIExpression()), !dbg !1774
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1464, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1492, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1627
  %338 = icmp ult i64 %336, 2, !dbg !1835
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !1836
  br i1 %340, label %433, label %341, !dbg !1836

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !1837
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !1517, metadata !DIExpression()), !dbg !1838
  br label %343, !dbg !1839

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !1531
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !1618
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1493, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1491, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1488, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1486, metadata !DIExpression()), !dbg !1618
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1471, metadata !DIExpression()), !dbg !1531
  br i1 %339, label %394, label %350, !dbg !1840

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !1845

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1491, metadata !DIExpression()), !dbg !1627
  %352 = select i1 %110, i1 true, i1 %345, !dbg !1848
  br i1 %352, label %369, label %353, !dbg !1848

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !1850
  br i1 %354, label %355, label %357, !dbg !1854

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !1850
  store i8 39, ptr %356, align 1, !dbg !1850, !tbaa !754
  br label %357, !dbg !1850

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !1854
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1471, metadata !DIExpression()), !dbg !1531
  %359 = icmp ult i64 %358, %129, !dbg !1855
  br i1 %359, label %360, label %362, !dbg !1858

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !1855
  store i8 36, ptr %361, align 1, !dbg !1855, !tbaa !754
  br label %362, !dbg !1855

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !1858
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1471, metadata !DIExpression()), !dbg !1531
  %364 = icmp ult i64 %363, %129, !dbg !1859
  br i1 %364, label %365, label %367, !dbg !1862

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !1859
  store i8 39, ptr %366, align 1, !dbg !1859, !tbaa !754
  br label %367, !dbg !1859

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !1862
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1471, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1480, metadata !DIExpression()), !dbg !1531
  br label %369, !dbg !1863

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !1531
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1471, metadata !DIExpression()), !dbg !1531
  %372 = icmp ult i64 %370, %129, !dbg !1864
  br i1 %372, label %373, label %375, !dbg !1867

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !1864
  store i8 92, ptr %374, align 1, !dbg !1864, !tbaa !754
  br label %375, !dbg !1864

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !1867
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1471, metadata !DIExpression()), !dbg !1531
  %377 = icmp ult i64 %376, %129, !dbg !1868
  br i1 %377, label %378, label %382, !dbg !1871

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !1868
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !1868
  store i8 %380, ptr %381, align 1, !dbg !1868, !tbaa !754
  br label %382, !dbg !1868

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !1871
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1471, metadata !DIExpression()), !dbg !1531
  %384 = icmp ult i64 %383, %129, !dbg !1872
  br i1 %384, label %385, label %390, !dbg !1875

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !1872
  %388 = or disjoint i8 %387, 48, !dbg !1872
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !1872
  store i8 %388, ptr %389, align 1, !dbg !1872, !tbaa !754
  br label %390, !dbg !1872

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !1875
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1471, metadata !DIExpression()), !dbg !1531
  %392 = and i8 %349, 7, !dbg !1876
  %393 = or disjoint i8 %392, 48, !dbg !1877
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1493, metadata !DIExpression()), !dbg !1627
  br label %401, !dbg !1878

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !1879

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !1880
  br i1 %396, label %397, label %399, !dbg !1885

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !1880
  store i8 92, ptr %398, align 1, !dbg !1880, !tbaa !754
  br label %399, !dbg !1880

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !1885
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1471, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1488, metadata !DIExpression()), !dbg !1627
  br label %401, !dbg !1886

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !1531
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1493, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1491, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1488, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1471, metadata !DIExpression()), !dbg !1531
  %407 = add i64 %346, 1, !dbg !1887
  %408 = icmp ugt i64 %342, %407, !dbg !1889
  br i1 %408, label %409, label %.loopexit2, !dbg !1890

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !1891
  %411 = select i1 %410, i1 true, i1 %405, !dbg !1891
  br i1 %411, label %423, label %412, !dbg !1891

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !1894
  br i1 %413, label %414, label %416, !dbg !1898

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !1894
  store i8 39, ptr %415, align 1, !dbg !1894, !tbaa !754
  br label %416, !dbg !1894

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !1898
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1471, metadata !DIExpression()), !dbg !1531
  %418 = icmp ult i64 %417, %129, !dbg !1899
  br i1 %418, label %419, label %421, !dbg !1902

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !1899
  store i8 39, ptr %420, align 1, !dbg !1899, !tbaa !754
  br label %421, !dbg !1899

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !1902
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1471, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1480, metadata !DIExpression()), !dbg !1531
  br label %423, !dbg !1903

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !1904
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1471, metadata !DIExpression()), !dbg !1531
  %426 = icmp ult i64 %424, %129, !dbg !1905
  br i1 %426, label %427, label %429, !dbg !1908

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !1905
  store i8 %406, ptr %428, align 1, !dbg !1905, !tbaa !754
  br label %429, !dbg !1905

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !1908
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1471, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1486, metadata !DIExpression()), !dbg !1618
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !1909
  %432 = load i8, ptr %431, align 1, !dbg !1909, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1493, metadata !DIExpression()), !dbg !1627
  br label %343, !dbg !1910, !llvm.loop !1911

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !1914
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !1531
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !1535
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !1618
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !1627
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1462, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1493, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1492, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1491, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1488, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1486, metadata !DIExpression()), !dbg !1618
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1477, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1472, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1471, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1464, metadata !DIExpression()), !dbg !1531
  br i1 %111, label %455, label %444, !dbg !1915

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
  br i1 %120, label %456, label %476, !dbg !1917

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !1918

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
  %467 = lshr i8 %458, 5, !dbg !1919
  %468 = zext nneg i8 %467 to i64, !dbg !1919
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !1920
  %470 = load i32, ptr %469, align 4, !dbg !1920, !tbaa !745
  %471 = and i8 %458, 31, !dbg !1921
  %472 = zext nneg i8 %471 to i32, !dbg !1921
  %473 = shl nuw i32 1, %472, !dbg !1922
  %474 = and i32 %470, %473, !dbg !1922
  %475 = icmp eq i32 %474, 0, !dbg !1922
  br i1 %475, label %476, label %487, !dbg !1923

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
  br i1 %153, label %487, label %523, !dbg !1924

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !1914
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !1531
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !1535
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !1925
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !1627
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1462, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1493, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1492, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1486, metadata !DIExpression()), !dbg !1618
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1477, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1472, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1471, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1464, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.label(metadata !1520), !dbg !1926
  br i1 %109, label %.loopexit8, label %497, !dbg !1927

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1491, metadata !DIExpression()), !dbg !1627
  %498 = select i1 %110, i1 true, i1 %492, !dbg !1929
  br i1 %498, label %515, label %499, !dbg !1929

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !1931
  br i1 %500, label %501, label %503, !dbg !1935

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !1931
  store i8 39, ptr %502, align 1, !dbg !1931, !tbaa !754
  br label %503, !dbg !1931

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !1935
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1471, metadata !DIExpression()), !dbg !1531
  %505 = icmp ult i64 %504, %496, !dbg !1936
  br i1 %505, label %506, label %508, !dbg !1939

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !1936
  store i8 36, ptr %507, align 1, !dbg !1936, !tbaa !754
  br label %508, !dbg !1936

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !1939
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1471, metadata !DIExpression()), !dbg !1531
  %510 = icmp ult i64 %509, %496, !dbg !1940
  br i1 %510, label %511, label %513, !dbg !1943

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !1940
  store i8 39, ptr %512, align 1, !dbg !1940, !tbaa !754
  br label %513, !dbg !1940

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !1943
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1471, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1480, metadata !DIExpression()), !dbg !1531
  br label %515, !dbg !1944

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !1627
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1471, metadata !DIExpression()), !dbg !1531
  %518 = icmp ult i64 %516, %496, !dbg !1945
  br i1 %518, label %519, label %521, !dbg !1948

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !1945
  store i8 92, ptr %520, align 1, !dbg !1945, !tbaa !754
  br label %521, !dbg !1945

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !1948
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1462, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1493, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1492, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1491, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1486, metadata !DIExpression()), !dbg !1618
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1477, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1472, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1471, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1464, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.label(metadata !1521), !dbg !1949
  br label %547, !dbg !1950

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !1531
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !1627
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !1618
  br label %523, !dbg !1950

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !1914
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !1531
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !1535
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !1925
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !1953
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1462, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1493, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1492, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1491, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1486, metadata !DIExpression()), !dbg !1618
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1477, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1472, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1471, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1464, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.label(metadata !1521), !dbg !1949
  %534 = xor i1 %528, true, !dbg !1950
  %535 = select i1 %534, i1 true, i1 %530, !dbg !1950
  br i1 %535, label %547, label %536, !dbg !1950

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !1954
  br i1 %537, label %538, label %540, !dbg !1958

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !1954
  store i8 39, ptr %539, align 1, !dbg !1954, !tbaa !754
  br label %540, !dbg !1954

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !1958
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1471, metadata !DIExpression()), !dbg !1531
  %542 = icmp ult i64 %541, %533, !dbg !1959
  br i1 %542, label %543, label %545, !dbg !1962

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !1959
  store i8 39, ptr %544, align 1, !dbg !1959, !tbaa !754
  br label %545, !dbg !1959

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !1962
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1471, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1480, metadata !DIExpression()), !dbg !1531
  br label %547, !dbg !1963

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !1627
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1471, metadata !DIExpression()), !dbg !1531
  %557 = icmp ult i64 %555, %548, !dbg !1964
  br i1 %557, label %558, label %560, !dbg !1967

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !1964
  store i8 %549, ptr %559, align 1, !dbg !1964, !tbaa !754
  br label %560, !dbg !1964

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !1967
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1471, metadata !DIExpression()), !dbg !1531
  %562 = select i1 %550, i1 %126, i1 false, !dbg !1968
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1531
  br label %563, !dbg !1969

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !1914
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !1531
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !1535
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !1925
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1462, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1486, metadata !DIExpression()), !dbg !1618
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1477, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1472, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1471, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1464, metadata !DIExpression()), !dbg !1531
  %572 = add i64 %570, 1, !dbg !1970
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1486, metadata !DIExpression()), !dbg !1618
  br label %121, !dbg !1971, !llvm.loop !1972

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !1606
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !1535
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1462, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1477, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1472, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1471, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1464, metadata !DIExpression()), !dbg !1531
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !1974
  %575 = xor i1 %109, true, !dbg !1976
  %576 = or i1 %574, %575, !dbg !1976
  %577 = or i1 %576, %110, !dbg !1976
  br i1 %577, label %578, label %.loopexit13, !dbg !1976

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !1977
  %580 = xor i1 %.lcssa38, true, !dbg !1977
  %581 = select i1 %579, i1 true, i1 %580, !dbg !1977
  br i1 %581, label %589, label %582, !dbg !1977

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !1979

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !1535
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !1981
  br label %638, !dbg !1983

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !1984
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !1986
  br i1 %588, label %27, label %589, !dbg !1986

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !1531
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !1606
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !1987
  %592 = or i1 %591, %590, !dbg !1989
  br i1 %592, label %608, label %593, !dbg !1989

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1473, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1471, metadata !DIExpression()), !dbg !1531
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !1990, !tbaa !754
  %595 = icmp eq i8 %594, 0, !dbg !1993
  br i1 %595, label %608, label %.preheader, !dbg !1993

.preheader:                                       ; preds = %593
  br label %596, !dbg !1993

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1473, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1471, metadata !DIExpression()), !dbg !1531
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !1994
  br i1 %600, label %601, label %603, !dbg !1997

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !1994
  store i8 %597, ptr %602, align 1, !dbg !1994, !tbaa !754
  br label %603, !dbg !1994

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !1997
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1471, metadata !DIExpression()), !dbg !1531
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !1998
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1473, metadata !DIExpression()), !dbg !1531
  %606 = load i8, ptr %605, align 1, !dbg !1990, !tbaa !754
  %607 = icmp eq i8 %606, 0, !dbg !1993
  br i1 %607, label %.loopexit, label %596, !dbg !1993, !llvm.loop !1999

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !1997
  br label %608, !dbg !2001

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !1606
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1471, metadata !DIExpression()), !dbg !1531
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2001
  br i1 %610, label %611, label %638, !dbg !2003

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2004
  store i8 0, ptr %612, align 1, !dbg !2005, !tbaa !754
  br label %638, !dbg !2004

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !1522), !dbg !1831
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2006
  br i1 %614, label %624, label %630, !dbg !1832

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !1627
  br label %615, !dbg !2006

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2006

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2006

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !1522), !dbg !1831
  %622 = icmp eq i32 %616, 2, !dbg !2006
  %623 = select i1 %619, i32 4, i32 2, !dbg !1832
  br i1 %622, label %624, label %630, !dbg !1832

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !1832

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !1633
  br label %630, !dbg !2007

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1465, metadata !DIExpression()), !dbg !1531
  %636 = and i32 %5, -3, !dbg !2007
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2008
  br label %638, !dbg !2009

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2010
}

; Function Attrs: nounwind
declare !dbg !2011 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2014 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2017 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2019 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2023, metadata !DIExpression()), !dbg !2026
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2024, metadata !DIExpression()), !dbg !2026
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2025, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata ptr %0, metadata !2027, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i64 %1, metadata !2032, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata ptr null, metadata !2033, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata ptr %2, metadata !2034, metadata !DIExpression()), !dbg !2040
  %4 = icmp eq ptr %2, null, !dbg !2042
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2042
  call void @llvm.dbg.value(metadata ptr %5, metadata !2035, metadata !DIExpression()), !dbg !2040
  %6 = tail call ptr @__errno_location() #40, !dbg !2043
  %7 = load i32, ptr %6, align 4, !dbg !2043, !tbaa !745
  call void @llvm.dbg.value(metadata i32 %7, metadata !2036, metadata !DIExpression()), !dbg !2040
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2044
  %9 = load i32, ptr %8, align 4, !dbg !2044, !tbaa !1405
  %10 = or i32 %9, 1, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %10, metadata !2037, metadata !DIExpression()), !dbg !2040
  %11 = load i32, ptr %5, align 8, !dbg !2046, !tbaa !1355
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2047
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2048
  %14 = load ptr, ptr %13, align 8, !dbg !2048, !tbaa !1426
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2049
  %16 = load ptr, ptr %15, align 8, !dbg !2049, !tbaa !1429
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2050
  %18 = add i64 %17, 1, !dbg !2051
  call void @llvm.dbg.value(metadata i64 %18, metadata !2038, metadata !DIExpression()), !dbg !2040
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2052
  call void @llvm.dbg.value(metadata ptr %19, metadata !2039, metadata !DIExpression()), !dbg !2040
  %20 = load i32, ptr %5, align 8, !dbg !2053, !tbaa !1355
  %21 = load ptr, ptr %13, align 8, !dbg !2054, !tbaa !1426
  %22 = load ptr, ptr %15, align 8, !dbg !2055, !tbaa !1429
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2056
  store i32 %7, ptr %6, align 4, !dbg !2057, !tbaa !745
  ret ptr %19, !dbg !2058
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2028 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2027, metadata !DIExpression()), !dbg !2059
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2032, metadata !DIExpression()), !dbg !2059
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2033, metadata !DIExpression()), !dbg !2059
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2034, metadata !DIExpression()), !dbg !2059
  %5 = icmp eq ptr %3, null, !dbg !2060
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2060
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2035, metadata !DIExpression()), !dbg !2059
  %7 = tail call ptr @__errno_location() #40, !dbg !2061
  %8 = load i32, ptr %7, align 4, !dbg !2061, !tbaa !745
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2036, metadata !DIExpression()), !dbg !2059
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2062
  %10 = load i32, ptr %9, align 4, !dbg !2062, !tbaa !1405
  %11 = icmp eq ptr %2, null, !dbg !2063
  %12 = zext i1 %11 to i32, !dbg !2063
  %13 = or i32 %10, %12, !dbg !2064
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2037, metadata !DIExpression()), !dbg !2059
  %14 = load i32, ptr %6, align 8, !dbg !2065, !tbaa !1355
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2066
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2067
  %17 = load ptr, ptr %16, align 8, !dbg !2067, !tbaa !1426
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2068
  %19 = load ptr, ptr %18, align 8, !dbg !2068, !tbaa !1429
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2069
  %21 = add i64 %20, 1, !dbg !2070
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2038, metadata !DIExpression()), !dbg !2059
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2071
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2039, metadata !DIExpression()), !dbg !2059
  %23 = load i32, ptr %6, align 8, !dbg !2072, !tbaa !1355
  %24 = load ptr, ptr %16, align 8, !dbg !2073, !tbaa !1426
  %25 = load ptr, ptr %18, align 8, !dbg !2074, !tbaa !1429
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2075
  store i32 %8, ptr %7, align 4, !dbg !2076, !tbaa !745
  br i1 %11, label %28, label %27, !dbg !2077

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2078, !tbaa !2080
  br label %28, !dbg !2081

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2082
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2083 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2088, !tbaa !724
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2085, metadata !DIExpression()), !dbg !2089
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2086, metadata !DIExpression()), !dbg !2090
  %2 = load i32, ptr @nslots, align 4, !tbaa !745
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2086, metadata !DIExpression()), !dbg !2090
  %3 = icmp sgt i32 %2, 1, !dbg !2091
  br i1 %3, label %4, label %6, !dbg !2093

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2091
  br label %10, !dbg !2093

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2094

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2094
  %8 = load ptr, ptr %7, align 8, !dbg !2094, !tbaa !2096
  %9 = icmp eq ptr %8, @slot0, !dbg !2098
  br i1 %9, label %17, label %16, !dbg !2099

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2086, metadata !DIExpression()), !dbg !2090
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2100
  %13 = load ptr, ptr %12, align 8, !dbg !2100, !tbaa !2096
  tail call void @free(ptr noundef %13) #37, !dbg !2101
  %14 = add nuw nsw i64 %11, 1, !dbg !2102
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2086, metadata !DIExpression()), !dbg !2090
  %15 = icmp eq i64 %14, %5, !dbg !2091
  br i1 %15, label %.loopexit, label %10, !dbg !2093, !llvm.loop !2103

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2105
  store i64 256, ptr @slotvec0, align 8, !dbg !2107, !tbaa !2108
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2109, !tbaa !2096
  br label %17, !dbg !2110

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2111
  br i1 %18, label %20, label %19, !dbg !2113

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2114
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2116, !tbaa !724
  br label %20, !dbg !2117

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2118, !tbaa !745
  ret void, !dbg !2119
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2120 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2123 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2125, metadata !DIExpression()), !dbg !2127
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2126, metadata !DIExpression()), !dbg !2127
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2128
  ret ptr %3, !dbg !2129
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2130 {
  %5 = alloca i64, align 8, !DIAssignID !2150
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2144, metadata !DIExpression(), metadata !2150, metadata ptr %5, metadata !DIExpression()), !dbg !2151
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2134, metadata !DIExpression()), !dbg !2152
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2135, metadata !DIExpression()), !dbg !2152
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2136, metadata !DIExpression()), !dbg !2152
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2137, metadata !DIExpression()), !dbg !2152
  %6 = tail call ptr @__errno_location() #40, !dbg !2153
  %7 = load i32, ptr %6, align 4, !dbg !2153, !tbaa !745
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2138, metadata !DIExpression()), !dbg !2152
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2154, !tbaa !724
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2139, metadata !DIExpression()), !dbg !2152
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2140, metadata !DIExpression()), !dbg !2152
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2155
  br i1 %9, label %10, label %11, !dbg !2155

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2157
  unreachable, !dbg !2157

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2158, !tbaa !745
  %13 = icmp sgt i32 %12, %0, !dbg !2159
  br i1 %13, label %32, label %14, !dbg !2160

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2161
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2151
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2162
  %16 = sext i32 %12 to i64, !dbg !2163
  store i64 %16, ptr %5, align 8, !dbg !2164, !tbaa !2080, !DIAssignID !2165
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2144, metadata !DIExpression(), metadata !2165, metadata ptr %5, metadata !DIExpression()), !dbg !2151
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2166
  %18 = add nuw nsw i32 %0, 1, !dbg !2167
  %19 = sub i32 %18, %12, !dbg !2168
  %20 = sext i32 %19 to i64, !dbg !2169
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2170
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2139, metadata !DIExpression()), !dbg !2152
  store ptr %21, ptr @slotvec, align 8, !dbg !2171, !tbaa !724
  br i1 %15, label %22, label %23, !dbg !2172

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2173, !tbaa.struct !2175
  br label %23, !dbg !2176

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2177, !tbaa !745
  %25 = sext i32 %24 to i64, !dbg !2178
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2178
  %27 = load i64, ptr %5, align 8, !dbg !2179, !tbaa !2080
  %28 = sub nsw i64 %27, %25, !dbg !2180
  %29 = shl i64 %28, 4, !dbg !2181
  call void @llvm.dbg.value(metadata ptr %26, metadata !1564, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i32 0, metadata !1567, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i64 %29, metadata !1568, metadata !DIExpression()), !dbg !2182
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2184
  %30 = load i64, ptr %5, align 8, !dbg !2185, !tbaa !2080
  %31 = trunc i64 %30 to i32, !dbg !2185
  store i32 %31, ptr @nslots, align 4, !dbg !2186, !tbaa !745
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2187
  br label %32, !dbg !2188

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2152
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2139, metadata !DIExpression()), !dbg !2152
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2189
  %36 = load i64, ptr %35, align 8, !dbg !2190, !tbaa !2108
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2145, metadata !DIExpression()), !dbg !2191
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2192
  %38 = load ptr, ptr %37, align 8, !dbg !2192, !tbaa !2096
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2147, metadata !DIExpression()), !dbg !2191
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2193
  %40 = load i32, ptr %39, align 4, !dbg !2193, !tbaa !1405
  %41 = or i32 %40, 1, !dbg !2194
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2148, metadata !DIExpression()), !dbg !2191
  %42 = load i32, ptr %3, align 8, !dbg !2195, !tbaa !1355
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2196
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2197
  %45 = load ptr, ptr %44, align 8, !dbg !2197, !tbaa !1426
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2198
  %47 = load ptr, ptr %46, align 8, !dbg !2198, !tbaa !1429
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2199
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2149, metadata !DIExpression()), !dbg !2191
  %49 = icmp ugt i64 %36, %48, !dbg !2200
  br i1 %49, label %60, label %50, !dbg !2202

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2203
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2145, metadata !DIExpression()), !dbg !2191
  store i64 %51, ptr %35, align 8, !dbg !2205, !tbaa !2108
  %52 = icmp eq ptr %38, @slot0, !dbg !2206
  br i1 %52, label %54, label %53, !dbg !2208

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2209
  br label %54, !dbg !2209

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2210
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2147, metadata !DIExpression()), !dbg !2191
  store ptr %55, ptr %37, align 8, !dbg !2211, !tbaa !2096
  %56 = load i32, ptr %3, align 8, !dbg !2212, !tbaa !1355
  %57 = load ptr, ptr %44, align 8, !dbg !2213, !tbaa !1426
  %58 = load ptr, ptr %46, align 8, !dbg !2214, !tbaa !1429
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2215
  br label %60, !dbg !2216

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2191
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2147, metadata !DIExpression()), !dbg !2191
  store i32 %7, ptr %6, align 4, !dbg !2217, !tbaa !745
  ret ptr %61, !dbg !2218
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2219 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2223, metadata !DIExpression()), !dbg !2226
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2224, metadata !DIExpression()), !dbg !2226
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2225, metadata !DIExpression()), !dbg !2226
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2227
  ret ptr %4, !dbg !2228
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2229 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2231, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i32 0, metadata !2125, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata ptr %0, metadata !2126, metadata !DIExpression()), !dbg !2233
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2235
  ret ptr %2, !dbg !2236
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2237 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2241, metadata !DIExpression()), !dbg !2243
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2242, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i32 0, metadata !2223, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata ptr %0, metadata !2224, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %1, metadata !2225, metadata !DIExpression()), !dbg !2244
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2246
  ret ptr %3, !dbg !2247
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2248 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2256
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2255, metadata !DIExpression(), metadata !2256, metadata ptr %4, metadata !DIExpression()), !dbg !2257
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2252, metadata !DIExpression()), !dbg !2257
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2253, metadata !DIExpression()), !dbg !2257
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2254, metadata !DIExpression()), !dbg !2257
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2258
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2259), !dbg !2262
  call void @llvm.dbg.value(metadata i32 %1, metadata !2263, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2268, metadata !DIExpression()), !dbg !2271
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2271, !alias.scope !2259, !DIAssignID !2272
  call void @llvm.dbg.assign(metadata i8 0, metadata !2255, metadata !DIExpression(), metadata !2272, metadata ptr %4, metadata !DIExpression()), !dbg !2257
  %5 = icmp eq i32 %1, 10, !dbg !2273
  br i1 %5, label %6, label %7, !dbg !2275

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2276, !noalias !2259
  unreachable, !dbg !2276

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2277, !tbaa !1355, !alias.scope !2259, !DIAssignID !2278
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2255, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2278, metadata ptr %4, metadata !DIExpression()), !dbg !2257
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2279
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2280
  ret ptr %8, !dbg !2281
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2282 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2291
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2290, metadata !DIExpression(), metadata !2291, metadata ptr %5, metadata !DIExpression()), !dbg !2292
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2286, metadata !DIExpression()), !dbg !2292
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2287, metadata !DIExpression()), !dbg !2292
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2288, metadata !DIExpression()), !dbg !2292
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2289, metadata !DIExpression()), !dbg !2292
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2293
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2294), !dbg !2297
  call void @llvm.dbg.value(metadata i32 %1, metadata !2263, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2268, metadata !DIExpression()), !dbg !2300
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2300, !alias.scope !2294, !DIAssignID !2301
  call void @llvm.dbg.assign(metadata i8 0, metadata !2290, metadata !DIExpression(), metadata !2301, metadata ptr %5, metadata !DIExpression()), !dbg !2292
  %6 = icmp eq i32 %1, 10, !dbg !2302
  br i1 %6, label %7, label %8, !dbg !2303

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2304, !noalias !2294
  unreachable, !dbg !2304

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2305, !tbaa !1355, !alias.scope !2294, !DIAssignID !2306
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2290, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2306, metadata ptr %5, metadata !DIExpression()), !dbg !2292
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2307
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2308
  ret ptr %9, !dbg !2309
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2310 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2316
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2314, metadata !DIExpression()), !dbg !2317
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2315, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2255, metadata !DIExpression(), metadata !2316, metadata ptr %3, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i32 0, metadata !2252, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i32 %0, metadata !2253, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata ptr %1, metadata !2254, metadata !DIExpression()), !dbg !2318
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2320
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2321), !dbg !2324
  call void @llvm.dbg.value(metadata i32 %0, metadata !2263, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2268, metadata !DIExpression()), !dbg !2327
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2327, !alias.scope !2321, !DIAssignID !2328
  call void @llvm.dbg.assign(metadata i8 0, metadata !2255, metadata !DIExpression(), metadata !2328, metadata ptr %3, metadata !DIExpression()), !dbg !2318
  %4 = icmp eq i32 %0, 10, !dbg !2329
  br i1 %4, label %5, label %6, !dbg !2330

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2331, !noalias !2321
  unreachable, !dbg !2331

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2332, !tbaa !1355, !alias.scope !2321, !DIAssignID !2333
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2255, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2333, metadata ptr %3, metadata !DIExpression()), !dbg !2318
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2334
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2335
  ret ptr %7, !dbg !2336
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2337 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2344
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2341, metadata !DIExpression()), !dbg !2345
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2342, metadata !DIExpression()), !dbg !2345
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2343, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2290, metadata !DIExpression(), metadata !2344, metadata ptr %4, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i32 0, metadata !2286, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i32 %0, metadata !2287, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata ptr %1, metadata !2288, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %2, metadata !2289, metadata !DIExpression()), !dbg !2346
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2349), !dbg !2352
  call void @llvm.dbg.value(metadata i32 %0, metadata !2263, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2268, metadata !DIExpression()), !dbg !2355
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2355, !alias.scope !2349, !DIAssignID !2356
  call void @llvm.dbg.assign(metadata i8 0, metadata !2290, metadata !DIExpression(), metadata !2356, metadata ptr %4, metadata !DIExpression()), !dbg !2346
  %5 = icmp eq i32 %0, 10, !dbg !2357
  br i1 %5, label %6, label %7, !dbg !2358

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2359, !noalias !2349
  unreachable, !dbg !2359

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2360, !tbaa !1355, !alias.scope !2349, !DIAssignID !2361
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2290, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2361, metadata ptr %4, metadata !DIExpression()), !dbg !2346
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2362
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2363
  ret ptr %8, !dbg !2364
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2365 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2373
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2372, metadata !DIExpression(), metadata !2373, metadata ptr %4, metadata !DIExpression()), !dbg !2374
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2369, metadata !DIExpression()), !dbg !2374
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2370, metadata !DIExpression()), !dbg !2374
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2371, metadata !DIExpression()), !dbg !2374
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2376, !tbaa.struct !2377, !DIAssignID !2378
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2372, metadata !DIExpression(), metadata !2378, metadata ptr %4, metadata !DIExpression()), !dbg !2374
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1372, metadata !DIExpression()), !dbg !2379
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1373, metadata !DIExpression()), !dbg !2379
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1374, metadata !DIExpression()), !dbg !2379
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1375, metadata !DIExpression()), !dbg !2379
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2381
  %6 = lshr i8 %2, 5, !dbg !2382
  %7 = zext nneg i8 %6 to i64, !dbg !2382
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2383
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1376, metadata !DIExpression()), !dbg !2379
  %9 = and i8 %2, 31, !dbg !2384
  %10 = zext nneg i8 %9 to i32, !dbg !2384
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1378, metadata !DIExpression()), !dbg !2379
  %11 = load i32, ptr %8, align 4, !dbg !2385, !tbaa !745
  %12 = lshr i32 %11, %10, !dbg !2386
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1379, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2379
  %13 = and i32 %12, 1, !dbg !2387
  %14 = xor i32 %13, 1, !dbg !2387
  %15 = shl nuw i32 %14, %10, !dbg !2388
  %16 = xor i32 %15, %11, !dbg !2389
  store i32 %16, ptr %8, align 4, !dbg !2389, !tbaa !745
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2390
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2391
  ret ptr %17, !dbg !2392
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2393 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2399
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2397, metadata !DIExpression()), !dbg !2400
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2398, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2372, metadata !DIExpression(), metadata !2399, metadata ptr %3, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata ptr %0, metadata !2369, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i64 -1, metadata !2370, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 %1, metadata !2371, metadata !DIExpression()), !dbg !2401
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2404, !tbaa.struct !2377, !DIAssignID !2405
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2372, metadata !DIExpression(), metadata !2405, metadata ptr %3, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata ptr %3, metadata !1372, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 %1, metadata !1373, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 1, metadata !1374, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 %1, metadata !1375, metadata !DIExpression()), !dbg !2406
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2408
  %5 = lshr i8 %1, 5, !dbg !2409
  %6 = zext nneg i8 %5 to i64, !dbg !2409
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2410
  call void @llvm.dbg.value(metadata ptr %7, metadata !1376, metadata !DIExpression()), !dbg !2406
  %8 = and i8 %1, 31, !dbg !2411
  %9 = zext nneg i8 %8 to i32, !dbg !2411
  call void @llvm.dbg.value(metadata i32 %9, metadata !1378, metadata !DIExpression()), !dbg !2406
  %10 = load i32, ptr %7, align 4, !dbg !2412, !tbaa !745
  %11 = lshr i32 %10, %9, !dbg !2413
  call void @llvm.dbg.value(metadata i32 %11, metadata !1379, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2406
  %12 = and i32 %11, 1, !dbg !2414
  %13 = xor i32 %12, 1, !dbg !2414
  %14 = shl nuw i32 %13, %9, !dbg !2415
  %15 = xor i32 %14, %10, !dbg !2416
  store i32 %15, ptr %7, align 4, !dbg !2416, !tbaa !745
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2417
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2418
  ret ptr %16, !dbg !2419
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2420 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2423
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2422, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata ptr %0, metadata !2397, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8 58, metadata !2398, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2372, metadata !DIExpression(), metadata !2423, metadata ptr %2, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata ptr %0, metadata !2369, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i64 -1, metadata !2370, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 58, metadata !2371, metadata !DIExpression()), !dbg !2427
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2430, !tbaa.struct !2377, !DIAssignID !2431
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2372, metadata !DIExpression(), metadata !2431, metadata ptr %2, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata ptr %2, metadata !1372, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 58, metadata !1373, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 1, metadata !1374, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 58, metadata !1375, metadata !DIExpression()), !dbg !2432
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2434
  call void @llvm.dbg.value(metadata ptr %3, metadata !1376, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 26, metadata !1378, metadata !DIExpression()), !dbg !2432
  %4 = load i32, ptr %3, align 4, !dbg !2435, !tbaa !745
  call void @llvm.dbg.value(metadata i32 %4, metadata !1379, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2432
  %5 = or i32 %4, 67108864, !dbg !2436
  store i32 %5, ptr %3, align 4, !dbg !2436, !tbaa !745
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2437
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2438
  ret ptr %6, !dbg !2439
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2440 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2444
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2442, metadata !DIExpression()), !dbg !2445
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2443, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2372, metadata !DIExpression(), metadata !2444, metadata ptr %3, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata ptr %0, metadata !2369, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i64 %1, metadata !2370, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 58, metadata !2371, metadata !DIExpression()), !dbg !2446
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2449, !tbaa.struct !2377, !DIAssignID !2450
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2372, metadata !DIExpression(), metadata !2450, metadata ptr %3, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata ptr %3, metadata !1372, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i8 58, metadata !1373, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 1, metadata !1374, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i8 58, metadata !1375, metadata !DIExpression()), !dbg !2451
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2453
  call void @llvm.dbg.value(metadata ptr %4, metadata !1376, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 26, metadata !1378, metadata !DIExpression()), !dbg !2451
  %5 = load i32, ptr %4, align 4, !dbg !2454, !tbaa !745
  call void @llvm.dbg.value(metadata i32 %5, metadata !1379, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2451
  %6 = or i32 %5, 67108864, !dbg !2455
  store i32 %6, ptr %4, align 4, !dbg !2455, !tbaa !745
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2456
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2457
  ret ptr %7, !dbg !2458
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2459 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2465
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2464, metadata !DIExpression(), metadata !2465, metadata ptr %4, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2268, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2467
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2461, metadata !DIExpression()), !dbg !2466
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2462, metadata !DIExpression()), !dbg !2466
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2463, metadata !DIExpression()), !dbg !2466
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2469
  call void @llvm.dbg.value(metadata i32 %1, metadata !2263, metadata !DIExpression()), !dbg !2470
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2268, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2470
  %5 = icmp eq i32 %1, 10, !dbg !2471
  br i1 %5, label %6, label %7, !dbg !2472

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2473, !noalias !2474
  unreachable, !dbg !2473

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2268, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2470
  store i32 %1, ptr %4, align 8, !dbg !2477, !tbaa.struct !2377, !DIAssignID !2478
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2477
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2477
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2464, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2478, metadata ptr %4, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2464, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2479, metadata ptr %8, metadata !DIExpression()), !dbg !2466
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1372, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1373, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1374, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1375, metadata !DIExpression()), !dbg !2480
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2482
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1376, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1378, metadata !DIExpression()), !dbg !2480
  %10 = load i32, ptr %9, align 4, !dbg !2483, !tbaa !745
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1379, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2480
  %11 = or i32 %10, 67108864, !dbg !2484
  store i32 %11, ptr %9, align 4, !dbg !2484, !tbaa !745, !DIAssignID !2485
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2464, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2485, metadata ptr %9, metadata !DIExpression()), !dbg !2466
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2486
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2487
  ret ptr %12, !dbg !2488
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2489 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2497
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2493, metadata !DIExpression()), !dbg !2498
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2494, metadata !DIExpression()), !dbg !2498
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2495, metadata !DIExpression()), !dbg !2498
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2496, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(), metadata !2497, metadata ptr %5, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i32 %0, metadata !2504, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata ptr %1, metadata !2505, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata ptr %2, metadata !2506, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata ptr %3, metadata !2507, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64 -1, metadata !2508, metadata !DIExpression()), !dbg !2509
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2512, !tbaa.struct !2377, !DIAssignID !2513
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(), metadata !2513, metadata ptr %5, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2514, metadata ptr undef, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata ptr %5, metadata !1412, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata ptr %1, metadata !1413, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata ptr %2, metadata !1414, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata ptr %5, metadata !1412, metadata !DIExpression()), !dbg !2515
  store i32 10, ptr %5, align 8, !dbg !2517, !tbaa !1355, !DIAssignID !2518
  call void @llvm.dbg.assign(metadata i32 10, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2518, metadata ptr %5, metadata !DIExpression()), !dbg !2509
  %6 = icmp ne ptr %1, null, !dbg !2519
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2520
  br i1 %8, label %10, label %9, !dbg !2520

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2521
  unreachable, !dbg !2521

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2522
  store ptr %1, ptr %11, align 8, !dbg !2523, !tbaa !1426, !DIAssignID !2524
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2524, metadata ptr %11, metadata !DIExpression()), !dbg !2509
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2525
  store ptr %2, ptr %12, align 8, !dbg !2526, !tbaa !1429, !DIAssignID !2527
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2527, metadata ptr %12, metadata !DIExpression()), !dbg !2509
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2528
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2529
  ret ptr %13, !dbg !2530
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2500 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2531
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(), metadata !2531, metadata ptr %6, metadata !DIExpression()), !dbg !2532
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2504, metadata !DIExpression()), !dbg !2532
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2505, metadata !DIExpression()), !dbg !2532
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2506, metadata !DIExpression()), !dbg !2532
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2507, metadata !DIExpression()), !dbg !2532
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2508, metadata !DIExpression()), !dbg !2532
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2534, !tbaa.struct !2377, !DIAssignID !2535
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(), metadata !2535, metadata ptr %6, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2536, metadata ptr undef, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata ptr %6, metadata !1412, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata ptr %1, metadata !1413, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata ptr %2, metadata !1414, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata ptr %6, metadata !1412, metadata !DIExpression()), !dbg !2537
  store i32 10, ptr %6, align 8, !dbg !2539, !tbaa !1355, !DIAssignID !2540
  call void @llvm.dbg.assign(metadata i32 10, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2540, metadata ptr %6, metadata !DIExpression()), !dbg !2532
  %7 = icmp ne ptr %1, null, !dbg !2541
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2542
  br i1 %9, label %11, label %10, !dbg !2542

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2543
  unreachable, !dbg !2543

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2544
  store ptr %1, ptr %12, align 8, !dbg !2545, !tbaa !1426, !DIAssignID !2546
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2546, metadata ptr %12, metadata !DIExpression()), !dbg !2532
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2547
  store ptr %2, ptr %13, align 8, !dbg !2548, !tbaa !1429, !DIAssignID !2549
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2549, metadata ptr %13, metadata !DIExpression()), !dbg !2532
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2550
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2551
  ret ptr %14, !dbg !2552
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2553 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2560
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2557, metadata !DIExpression()), !dbg !2561
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2558, metadata !DIExpression()), !dbg !2561
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2559, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i32 0, metadata !2493, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata ptr %0, metadata !2494, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata ptr %1, metadata !2495, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata ptr %2, metadata !2496, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(), metadata !2560, metadata ptr %4, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i32 0, metadata !2504, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata ptr %0, metadata !2505, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata ptr %1, metadata !2506, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata ptr %2, metadata !2507, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i64 -1, metadata !2508, metadata !DIExpression()), !dbg !2564
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2567, !tbaa.struct !2377, !DIAssignID !2568
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(), metadata !2568, metadata ptr %4, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2569, metadata ptr undef, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata ptr %4, metadata !1412, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata ptr %0, metadata !1413, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata ptr %1, metadata !1414, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata ptr %4, metadata !1412, metadata !DIExpression()), !dbg !2570
  store i32 10, ptr %4, align 8, !dbg !2572, !tbaa !1355, !DIAssignID !2573
  call void @llvm.dbg.assign(metadata i32 10, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2573, metadata ptr %4, metadata !DIExpression()), !dbg !2564
  %5 = icmp ne ptr %0, null, !dbg !2574
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2575
  br i1 %7, label %9, label %8, !dbg !2575

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2576
  unreachable, !dbg !2576

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2577
  store ptr %0, ptr %10, align 8, !dbg !2578, !tbaa !1426, !DIAssignID !2579
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2579, metadata ptr %10, metadata !DIExpression()), !dbg !2564
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2580
  store ptr %1, ptr %11, align 8, !dbg !2581, !tbaa !1429, !DIAssignID !2582
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2582, metadata ptr %11, metadata !DIExpression()), !dbg !2564
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2583
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2584
  ret ptr %12, !dbg !2585
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2586 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2594
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2590, metadata !DIExpression()), !dbg !2595
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2591, metadata !DIExpression()), !dbg !2595
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2592, metadata !DIExpression()), !dbg !2595
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2593, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(), metadata !2594, metadata ptr %5, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i32 0, metadata !2504, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata ptr %0, metadata !2505, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata ptr %1, metadata !2506, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata ptr %2, metadata !2507, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 %3, metadata !2508, metadata !DIExpression()), !dbg !2596
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2599, !tbaa.struct !2377, !DIAssignID !2600
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(), metadata !2600, metadata ptr %5, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2601, metadata ptr undef, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata ptr %5, metadata !1412, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata ptr %0, metadata !1413, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata ptr %1, metadata !1414, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata ptr %5, metadata !1412, metadata !DIExpression()), !dbg !2602
  store i32 10, ptr %5, align 8, !dbg !2604, !tbaa !1355, !DIAssignID !2605
  call void @llvm.dbg.assign(metadata i32 10, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2605, metadata ptr %5, metadata !DIExpression()), !dbg !2596
  %6 = icmp ne ptr %0, null, !dbg !2606
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2607
  br i1 %8, label %10, label %9, !dbg !2607

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2608
  unreachable, !dbg !2608

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2609
  store ptr %0, ptr %11, align 8, !dbg !2610, !tbaa !1426, !DIAssignID !2611
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2611, metadata ptr %11, metadata !DIExpression()), !dbg !2596
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2612
  store ptr %1, ptr %12, align 8, !dbg !2613, !tbaa !1429, !DIAssignID !2614
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2614, metadata ptr %12, metadata !DIExpression()), !dbg !2596
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2615
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2616
  ret ptr %13, !dbg !2617
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2618 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2622, metadata !DIExpression()), !dbg !2625
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2623, metadata !DIExpression()), !dbg !2625
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2624, metadata !DIExpression()), !dbg !2625
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2626
  ret ptr %4, !dbg !2627
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2628 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2632, metadata !DIExpression()), !dbg !2634
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2633, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i32 0, metadata !2622, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata ptr %0, metadata !2623, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i64 %1, metadata !2624, metadata !DIExpression()), !dbg !2635
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2637
  ret ptr %3, !dbg !2638
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2639 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2643, metadata !DIExpression()), !dbg !2645
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2644, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 %0, metadata !2622, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata ptr %1, metadata !2623, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i64 -1, metadata !2624, metadata !DIExpression()), !dbg !2646
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2648
  ret ptr %3, !dbg !2649
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2650 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2654, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i32 0, metadata !2643, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata ptr %0, metadata !2644, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i32 0, metadata !2622, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata ptr %0, metadata !2623, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 -1, metadata !2624, metadata !DIExpression()), !dbg !2658
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2660
  ret ptr %2, !dbg !2661
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2662 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2701, metadata !DIExpression()), !dbg !2707
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2702, metadata !DIExpression()), !dbg !2707
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2703, metadata !DIExpression()), !dbg !2707
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2704, metadata !DIExpression()), !dbg !2707
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2705, metadata !DIExpression()), !dbg !2707
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2706, metadata !DIExpression()), !dbg !2707
  %7 = icmp eq ptr %1, null, !dbg !2708
  br i1 %7, label %10, label %8, !dbg !2710

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.67, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2711
  br label %12, !dbg !2711

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.68, ptr noundef %2, ptr noundef %3) #37, !dbg !2712
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.3.70, i32 noundef 5) #37, !dbg !2713
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2713
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %0), !dbg !2714
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.5.72, i32 noundef 5) #37, !dbg !2715
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.73) #37, !dbg !2715
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %0), !dbg !2716
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
  ], !dbg !2717

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.7.74, i32 noundef 5) #37, !dbg !2718
  %21 = load ptr, ptr %4, align 8, !dbg !2718, !tbaa !724
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2718
  br label %147, !dbg !2720

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.8.75, i32 noundef 5) #37, !dbg !2721
  %25 = load ptr, ptr %4, align 8, !dbg !2721, !tbaa !724
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2721
  %27 = load ptr, ptr %26, align 8, !dbg !2721, !tbaa !724
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2721
  br label %147, !dbg !2722

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.9.76, i32 noundef 5) #37, !dbg !2723
  %31 = load ptr, ptr %4, align 8, !dbg !2723, !tbaa !724
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2723
  %33 = load ptr, ptr %32, align 8, !dbg !2723, !tbaa !724
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2723
  %35 = load ptr, ptr %34, align 8, !dbg !2723, !tbaa !724
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2723
  br label %147, !dbg !2724

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.10.77, i32 noundef 5) #37, !dbg !2725
  %39 = load ptr, ptr %4, align 8, !dbg !2725, !tbaa !724
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2725
  %41 = load ptr, ptr %40, align 8, !dbg !2725, !tbaa !724
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2725
  %43 = load ptr, ptr %42, align 8, !dbg !2725, !tbaa !724
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2725
  %45 = load ptr, ptr %44, align 8, !dbg !2725, !tbaa !724
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2725
  br label %147, !dbg !2726

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.11.78, i32 noundef 5) #37, !dbg !2727
  %49 = load ptr, ptr %4, align 8, !dbg !2727, !tbaa !724
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2727
  %51 = load ptr, ptr %50, align 8, !dbg !2727, !tbaa !724
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2727
  %53 = load ptr, ptr %52, align 8, !dbg !2727, !tbaa !724
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2727
  %55 = load ptr, ptr %54, align 8, !dbg !2727, !tbaa !724
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2727
  %57 = load ptr, ptr %56, align 8, !dbg !2727, !tbaa !724
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2727
  br label %147, !dbg !2728

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.12.79, i32 noundef 5) #37, !dbg !2729
  %61 = load ptr, ptr %4, align 8, !dbg !2729, !tbaa !724
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2729
  %63 = load ptr, ptr %62, align 8, !dbg !2729, !tbaa !724
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2729
  %65 = load ptr, ptr %64, align 8, !dbg !2729, !tbaa !724
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2729
  %67 = load ptr, ptr %66, align 8, !dbg !2729, !tbaa !724
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2729
  %69 = load ptr, ptr %68, align 8, !dbg !2729, !tbaa !724
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2729
  %71 = load ptr, ptr %70, align 8, !dbg !2729, !tbaa !724
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2729
  br label %147, !dbg !2730

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.13.80, i32 noundef 5) #37, !dbg !2731
  %75 = load ptr, ptr %4, align 8, !dbg !2731, !tbaa !724
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2731
  %77 = load ptr, ptr %76, align 8, !dbg !2731, !tbaa !724
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2731
  %79 = load ptr, ptr %78, align 8, !dbg !2731, !tbaa !724
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2731
  %81 = load ptr, ptr %80, align 8, !dbg !2731, !tbaa !724
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2731
  %83 = load ptr, ptr %82, align 8, !dbg !2731, !tbaa !724
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2731
  %85 = load ptr, ptr %84, align 8, !dbg !2731, !tbaa !724
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2731
  %87 = load ptr, ptr %86, align 8, !dbg !2731, !tbaa !724
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2731
  br label %147, !dbg !2732

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.14.81, i32 noundef 5) #37, !dbg !2733
  %91 = load ptr, ptr %4, align 8, !dbg !2733, !tbaa !724
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2733
  %93 = load ptr, ptr %92, align 8, !dbg !2733, !tbaa !724
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2733
  %95 = load ptr, ptr %94, align 8, !dbg !2733, !tbaa !724
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2733
  %97 = load ptr, ptr %96, align 8, !dbg !2733, !tbaa !724
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2733
  %99 = load ptr, ptr %98, align 8, !dbg !2733, !tbaa !724
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2733
  %101 = load ptr, ptr %100, align 8, !dbg !2733, !tbaa !724
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2733
  %103 = load ptr, ptr %102, align 8, !dbg !2733, !tbaa !724
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2733
  %105 = load ptr, ptr %104, align 8, !dbg !2733, !tbaa !724
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2733
  br label %147, !dbg !2734

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.15.82, i32 noundef 5) #37, !dbg !2735
  %109 = load ptr, ptr %4, align 8, !dbg !2735, !tbaa !724
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2735
  %111 = load ptr, ptr %110, align 8, !dbg !2735, !tbaa !724
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2735
  %113 = load ptr, ptr %112, align 8, !dbg !2735, !tbaa !724
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2735
  %115 = load ptr, ptr %114, align 8, !dbg !2735, !tbaa !724
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2735
  %117 = load ptr, ptr %116, align 8, !dbg !2735, !tbaa !724
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2735
  %119 = load ptr, ptr %118, align 8, !dbg !2735, !tbaa !724
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2735
  %121 = load ptr, ptr %120, align 8, !dbg !2735, !tbaa !724
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2735
  %123 = load ptr, ptr %122, align 8, !dbg !2735, !tbaa !724
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2735
  %125 = load ptr, ptr %124, align 8, !dbg !2735, !tbaa !724
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2735
  br label %147, !dbg !2736

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.16.83, i32 noundef 5) #37, !dbg !2737
  %129 = load ptr, ptr %4, align 8, !dbg !2737, !tbaa !724
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2737
  %131 = load ptr, ptr %130, align 8, !dbg !2737, !tbaa !724
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2737
  %133 = load ptr, ptr %132, align 8, !dbg !2737, !tbaa !724
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2737
  %135 = load ptr, ptr %134, align 8, !dbg !2737, !tbaa !724
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2737
  %137 = load ptr, ptr %136, align 8, !dbg !2737, !tbaa !724
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2737
  %139 = load ptr, ptr %138, align 8, !dbg !2737, !tbaa !724
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2737
  %141 = load ptr, ptr %140, align 8, !dbg !2737, !tbaa !724
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2737
  %143 = load ptr, ptr %142, align 8, !dbg !2737, !tbaa !724
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2737
  %145 = load ptr, ptr %144, align 8, !dbg !2737, !tbaa !724
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2737
  br label %147, !dbg !2738

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2739
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2740 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2744, metadata !DIExpression()), !dbg !2750
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2745, metadata !DIExpression()), !dbg !2750
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2746, metadata !DIExpression()), !dbg !2750
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2747, metadata !DIExpression()), !dbg !2750
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2748, metadata !DIExpression()), !dbg !2750
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2749, metadata !DIExpression()), !dbg !2750
  br label %6, !dbg !2751

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2753
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2749, metadata !DIExpression()), !dbg !2750
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2754
  %9 = load ptr, ptr %8, align 8, !dbg !2754, !tbaa !724
  %10 = icmp eq ptr %9, null, !dbg !2756
  %11 = add i64 %7, 1, !dbg !2757
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2749, metadata !DIExpression()), !dbg !2750
  br i1 %10, label %12, label %6, !dbg !2756, !llvm.loop !2758

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !2753
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !2760
  ret void, !dbg !2761
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2762 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !2784
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2782, metadata !DIExpression(), metadata !2784, metadata ptr %6, metadata !DIExpression()), !dbg !2785
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2776, metadata !DIExpression()), !dbg !2785
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2777, metadata !DIExpression()), !dbg !2785
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2778, metadata !DIExpression()), !dbg !2785
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2779, metadata !DIExpression()), !dbg !2785
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2780, metadata !DIExpression(DW_OP_deref)), !dbg !2785
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !2786
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2781, metadata !DIExpression()), !dbg !2785
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2781, metadata !DIExpression()), !dbg !2785
  %10 = icmp sgt i32 %9, -1, !dbg !2787
  br i1 %10, label %18, label %11, !dbg !2787

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2787
  store i32 %12, ptr %7, align 8, !dbg !2787
  %13 = icmp ult i32 %9, -7, !dbg !2787
  br i1 %13, label %14, label %18, !dbg !2787

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2787
  %16 = sext i32 %9 to i64, !dbg !2787
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2787
  br label %22, !dbg !2787

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2787
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2787
  store ptr %21, ptr %4, align 8, !dbg !2787
  br label %22, !dbg !2787

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2787
  %25 = load ptr, ptr %24, align 8, !dbg !2787
  store ptr %25, ptr %6, align 8, !dbg !2790, !tbaa !724
  %26 = icmp eq ptr %25, null, !dbg !2791
  br i1 %26, label %197, label %27, !dbg !2792

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2781, metadata !DIExpression()), !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2781, metadata !DIExpression()), !dbg !2785
  %28 = icmp sgt i32 %23, -1, !dbg !2787
  br i1 %28, label %36, label %29, !dbg !2787

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2787
  store i32 %30, ptr %7, align 8, !dbg !2787
  %31 = icmp ult i32 %23, -7, !dbg !2787
  br i1 %31, label %32, label %36, !dbg !2787

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2787
  %34 = sext i32 %23 to i64, !dbg !2787
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2787
  br label %40, !dbg !2787

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2787
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2787
  store ptr %39, ptr %4, align 8, !dbg !2787
  br label %40, !dbg !2787

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2787
  %43 = load ptr, ptr %42, align 8, !dbg !2787
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2793
  store ptr %43, ptr %44, align 8, !dbg !2790, !tbaa !724
  %45 = icmp eq ptr %43, null, !dbg !2791
  br i1 %45, label %197, label %46, !dbg !2792

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2781, metadata !DIExpression()), !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2781, metadata !DIExpression()), !dbg !2785
  %47 = icmp sgt i32 %41, -1, !dbg !2787
  br i1 %47, label %55, label %48, !dbg !2787

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2787
  store i32 %49, ptr %7, align 8, !dbg !2787
  %50 = icmp ult i32 %41, -7, !dbg !2787
  br i1 %50, label %51, label %55, !dbg !2787

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2787
  %53 = sext i32 %41 to i64, !dbg !2787
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2787
  br label %59, !dbg !2787

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2787
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2787
  store ptr %58, ptr %4, align 8, !dbg !2787
  br label %59, !dbg !2787

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2787
  %62 = load ptr, ptr %61, align 8, !dbg !2787
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2793
  store ptr %62, ptr %63, align 8, !dbg !2790, !tbaa !724
  %64 = icmp eq ptr %62, null, !dbg !2791
  br i1 %64, label %197, label %65, !dbg !2792

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2781, metadata !DIExpression()), !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2781, metadata !DIExpression()), !dbg !2785
  %66 = icmp sgt i32 %60, -1, !dbg !2787
  br i1 %66, label %74, label %67, !dbg !2787

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2787
  store i32 %68, ptr %7, align 8, !dbg !2787
  %69 = icmp ult i32 %60, -7, !dbg !2787
  br i1 %69, label %70, label %74, !dbg !2787

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2787
  %72 = sext i32 %60 to i64, !dbg !2787
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2787
  br label %78, !dbg !2787

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2787
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2787
  store ptr %77, ptr %4, align 8, !dbg !2787
  br label %78, !dbg !2787

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2787
  %81 = load ptr, ptr %80, align 8, !dbg !2787
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2793
  store ptr %81, ptr %82, align 8, !dbg !2790, !tbaa !724
  %83 = icmp eq ptr %81, null, !dbg !2791
  br i1 %83, label %197, label %84, !dbg !2792

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2781, metadata !DIExpression()), !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2781, metadata !DIExpression()), !dbg !2785
  %85 = icmp sgt i32 %79, -1, !dbg !2787
  br i1 %85, label %93, label %86, !dbg !2787

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2787
  store i32 %87, ptr %7, align 8, !dbg !2787
  %88 = icmp ult i32 %79, -7, !dbg !2787
  br i1 %88, label %89, label %93, !dbg !2787

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2787
  %91 = sext i32 %79 to i64, !dbg !2787
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2787
  br label %97, !dbg !2787

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2787
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2787
  store ptr %96, ptr %4, align 8, !dbg !2787
  br label %97, !dbg !2787

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2787
  %100 = load ptr, ptr %99, align 8, !dbg !2787
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2793
  store ptr %100, ptr %101, align 8, !dbg !2790, !tbaa !724
  %102 = icmp eq ptr %100, null, !dbg !2791
  br i1 %102, label %197, label %103, !dbg !2792

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2781, metadata !DIExpression()), !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2781, metadata !DIExpression()), !dbg !2785
  %104 = icmp sgt i32 %98, -1, !dbg !2787
  br i1 %104, label %112, label %105, !dbg !2787

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2787
  store i32 %106, ptr %7, align 8, !dbg !2787
  %107 = icmp ult i32 %98, -7, !dbg !2787
  br i1 %107, label %108, label %112, !dbg !2787

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2787
  %110 = sext i32 %98 to i64, !dbg !2787
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2787
  br label %116, !dbg !2787

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2787
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2787
  store ptr %115, ptr %4, align 8, !dbg !2787
  br label %116, !dbg !2787

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2787
  %119 = load ptr, ptr %118, align 8, !dbg !2787
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2793
  store ptr %119, ptr %120, align 8, !dbg !2790, !tbaa !724
  %121 = icmp eq ptr %119, null, !dbg !2791
  br i1 %121, label %197, label %122, !dbg !2792

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2781, metadata !DIExpression()), !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2781, metadata !DIExpression()), !dbg !2785
  %123 = icmp sgt i32 %117, -1, !dbg !2787
  br i1 %123, label %131, label %124, !dbg !2787

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2787
  store i32 %125, ptr %7, align 8, !dbg !2787
  %126 = icmp ult i32 %117, -7, !dbg !2787
  br i1 %126, label %127, label %131, !dbg !2787

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2787
  %129 = sext i32 %117 to i64, !dbg !2787
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2787
  br label %135, !dbg !2787

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2787
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2787
  store ptr %134, ptr %4, align 8, !dbg !2787
  br label %135, !dbg !2787

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2787
  %138 = load ptr, ptr %137, align 8, !dbg !2787
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2793
  store ptr %138, ptr %139, align 8, !dbg !2790, !tbaa !724
  %140 = icmp eq ptr %138, null, !dbg !2791
  br i1 %140, label %197, label %141, !dbg !2792

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2781, metadata !DIExpression()), !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2781, metadata !DIExpression()), !dbg !2785
  %142 = icmp sgt i32 %136, -1, !dbg !2787
  br i1 %142, label %150, label %143, !dbg !2787

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2787
  store i32 %144, ptr %7, align 8, !dbg !2787
  %145 = icmp ult i32 %136, -7, !dbg !2787
  br i1 %145, label %146, label %150, !dbg !2787

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2787
  %148 = sext i32 %136 to i64, !dbg !2787
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2787
  br label %154, !dbg !2787

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2787
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2787
  store ptr %153, ptr %4, align 8, !dbg !2787
  br label %154, !dbg !2787

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2787
  %157 = load ptr, ptr %156, align 8, !dbg !2787
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2793
  store ptr %157, ptr %158, align 8, !dbg !2790, !tbaa !724
  %159 = icmp eq ptr %157, null, !dbg !2791
  br i1 %159, label %197, label %160, !dbg !2792

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2781, metadata !DIExpression()), !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2781, metadata !DIExpression()), !dbg !2785
  %161 = icmp sgt i32 %155, -1, !dbg !2787
  br i1 %161, label %169, label %162, !dbg !2787

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2787
  store i32 %163, ptr %7, align 8, !dbg !2787
  %164 = icmp ult i32 %155, -7, !dbg !2787
  br i1 %164, label %165, label %169, !dbg !2787

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2787
  %167 = sext i32 %155 to i64, !dbg !2787
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2787
  br label %173, !dbg !2787

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2787
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2787
  store ptr %172, ptr %4, align 8, !dbg !2787
  br label %173, !dbg !2787

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2787
  %176 = load ptr, ptr %175, align 8, !dbg !2787
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2793
  store ptr %176, ptr %177, align 8, !dbg !2790, !tbaa !724
  %178 = icmp eq ptr %176, null, !dbg !2791
  br i1 %178, label %197, label %179, !dbg !2792

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2781, metadata !DIExpression()), !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2781, metadata !DIExpression()), !dbg !2785
  %180 = icmp sgt i32 %174, -1, !dbg !2787
  br i1 %180, label %188, label %181, !dbg !2787

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2787
  store i32 %182, ptr %7, align 8, !dbg !2787
  %183 = icmp ult i32 %174, -7, !dbg !2787
  br i1 %183, label %184, label %188, !dbg !2787

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2787
  %186 = sext i32 %174 to i64, !dbg !2787
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2787
  br label %191, !dbg !2787

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2787
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2787
  store ptr %190, ptr %4, align 8, !dbg !2787
  br label %191, !dbg !2787

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2787
  %193 = load ptr, ptr %192, align 8, !dbg !2787
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2793
  store ptr %193, ptr %194, align 8, !dbg !2790, !tbaa !724
  %195 = icmp eq ptr %193, null, !dbg !2791
  %196 = select i1 %195, i64 9, i64 10, !dbg !2792
  br label %197, !dbg !2792

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2794
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2795
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !2796
  ret void, !dbg !2796
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2797 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !2806
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2805, metadata !DIExpression(), metadata !2806, metadata ptr %5, metadata !DIExpression()), !dbg !2807
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2801, metadata !DIExpression()), !dbg !2807
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2802, metadata !DIExpression()), !dbg !2807
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2803, metadata !DIExpression()), !dbg !2807
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2804, metadata !DIExpression()), !dbg !2807
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !2808
  call void @llvm.va_start(ptr nonnull %5), !dbg !2809
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !2810
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2810, !tbaa.struct !1046
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2810
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !2810
  call void @llvm.va_end(ptr nonnull %5), !dbg !2811
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !2812
  ret void, !dbg !2812
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2813 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2814, !tbaa !724
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %1), !dbg !2814
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.17.88, i32 noundef 5) #37, !dbg !2815
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.89) #37, !dbg !2815
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.19, i32 noundef 5) #37, !dbg !2816
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21.90) #37, !dbg !2816
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !2817
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !2817
  ret void, !dbg !2818
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2819 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2824, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2825, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2826, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata ptr %0, metadata !2828, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i64 %1, metadata !2831, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i64 %2, metadata !2832, metadata !DIExpression()), !dbg !2833
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2835
  call void @llvm.dbg.value(metadata ptr %4, metadata !2836, metadata !DIExpression()), !dbg !2841
  %5 = icmp eq ptr %4, null, !dbg !2843
  br i1 %5, label %6, label %7, !dbg !2845

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2846
  unreachable, !dbg !2846

7:                                                ; preds = %3
  ret ptr %4, !dbg !2847
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2829 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2828, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2831, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2832, metadata !DIExpression()), !dbg !2848
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2849
  call void @llvm.dbg.value(metadata ptr %4, metadata !2836, metadata !DIExpression()), !dbg !2850
  %5 = icmp eq ptr %4, null, !dbg !2852
  br i1 %5, label %6, label %7, !dbg !2853

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2854
  unreachable, !dbg !2854

7:                                                ; preds = %3
  ret ptr %4, !dbg !2855
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2856 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2860, metadata !DIExpression()), !dbg !2861
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2862
  call void @llvm.dbg.value(metadata ptr %2, metadata !2836, metadata !DIExpression()), !dbg !2863
  %3 = icmp eq ptr %2, null, !dbg !2865
  br i1 %3, label %4, label %5, !dbg !2866

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2867
  unreachable, !dbg !2867

5:                                                ; preds = %1
  ret ptr %2, !dbg !2868
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2869 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2870 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2874, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i64 %0, metadata !2876, metadata !DIExpression()), !dbg !2880
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2882
  call void @llvm.dbg.value(metadata ptr %2, metadata !2836, metadata !DIExpression()), !dbg !2883
  %3 = icmp eq ptr %2, null, !dbg !2885
  br i1 %3, label %4, label %5, !dbg !2886

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2887
  unreachable, !dbg !2887

5:                                                ; preds = %1
  ret ptr %2, !dbg !2888
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2889 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2893, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i64 %0, metadata !2860, metadata !DIExpression()), !dbg !2895
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2897
  call void @llvm.dbg.value(metadata ptr %2, metadata !2836, metadata !DIExpression()), !dbg !2898
  %3 = icmp eq ptr %2, null, !dbg !2900
  br i1 %3, label %4, label %5, !dbg !2901

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2902
  unreachable, !dbg !2902

5:                                                ; preds = %1
  ret ptr %2, !dbg !2903
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2904 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2908, metadata !DIExpression()), !dbg !2910
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2909, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata ptr %0, metadata !2911, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i64 %1, metadata !2915, metadata !DIExpression()), !dbg !2916
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !2918
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !2919
  call void @llvm.dbg.value(metadata ptr %4, metadata !2836, metadata !DIExpression()), !dbg !2920
  %5 = icmp eq ptr %4, null, !dbg !2922
  br i1 %5, label %6, label %7, !dbg !2923

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !2924
  unreachable, !dbg !2924

7:                                                ; preds = %2
  ret ptr %4, !dbg !2925
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2926 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2927 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2931, metadata !DIExpression()), !dbg !2933
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2932, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata ptr %0, metadata !2934, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i64 %1, metadata !2937, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata ptr %0, metadata !2911, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 %1, metadata !2915, metadata !DIExpression()), !dbg !2940
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !2942
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !2943
  call void @llvm.dbg.value(metadata ptr %4, metadata !2836, metadata !DIExpression()), !dbg !2944
  %5 = icmp eq ptr %4, null, !dbg !2946
  br i1 %5, label %6, label %7, !dbg !2947

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !2948
  unreachable, !dbg !2948

7:                                                ; preds = %2
  ret ptr %4, !dbg !2949
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2950 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2954, metadata !DIExpression()), !dbg !2957
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2955, metadata !DIExpression()), !dbg !2957
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2956, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata ptr %0, metadata !2958, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %1, metadata !2961, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %2, metadata !2962, metadata !DIExpression()), !dbg !2963
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2965
  call void @llvm.dbg.value(metadata ptr %4, metadata !2836, metadata !DIExpression()), !dbg !2966
  %5 = icmp eq ptr %4, null, !dbg !2968
  br i1 %5, label %6, label %7, !dbg !2969

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2970
  unreachable, !dbg !2970

7:                                                ; preds = %3
  ret ptr %4, !dbg !2971
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !2972 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2976, metadata !DIExpression()), !dbg !2978
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2977, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata ptr null, metadata !2828, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %0, metadata !2831, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %1, metadata !2832, metadata !DIExpression()), !dbg !2979
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !2981
  call void @llvm.dbg.value(metadata ptr %3, metadata !2836, metadata !DIExpression()), !dbg !2982
  %4 = icmp eq ptr %3, null, !dbg !2984
  br i1 %4, label %5, label %6, !dbg !2985

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !2986
  unreachable, !dbg !2986

6:                                                ; preds = %2
  ret ptr %3, !dbg !2987
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !2988 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2992, metadata !DIExpression()), !dbg !2994
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2993, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata ptr null, metadata !2954, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i64 %0, metadata !2955, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i64 %1, metadata !2956, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata ptr null, metadata !2958, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i64 %0, metadata !2961, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i64 %1, metadata !2962, metadata !DIExpression()), !dbg !2997
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !2999
  call void @llvm.dbg.value(metadata ptr %3, metadata !2836, metadata !DIExpression()), !dbg !3000
  %4 = icmp eq ptr %3, null, !dbg !3002
  br i1 %4, label %5, label %6, !dbg !3003

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3004
  unreachable, !dbg !3004

6:                                                ; preds = %2
  ret ptr %3, !dbg !3005
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3006 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3010, metadata !DIExpression()), !dbg !3012
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3011, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata ptr %0, metadata !664, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata ptr %1, metadata !665, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i64 1, metadata !666, metadata !DIExpression()), !dbg !3013
  %3 = load i64, ptr %1, align 8, !dbg !3015, !tbaa !2080
  call void @llvm.dbg.value(metadata i64 %3, metadata !667, metadata !DIExpression()), !dbg !3013
  %4 = icmp eq ptr %0, null, !dbg !3016
  br i1 %4, label %5, label %8, !dbg !3018

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3019
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3022
  br label %15, !dbg !3022

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3023
  %10 = add nuw i64 %9, 1, !dbg !3023
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3023
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3023
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3023
  call void @llvm.dbg.value(metadata i64 %13, metadata !667, metadata !DIExpression()), !dbg !3013
  br i1 %12, label %14, label %15, !dbg !3026

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3027
  unreachable, !dbg !3027

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3013
  call void @llvm.dbg.value(metadata i64 %16, metadata !667, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata ptr %0, metadata !2828, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %16, metadata !2831, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 1, metadata !2832, metadata !DIExpression()), !dbg !3028
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3030
  call void @llvm.dbg.value(metadata ptr %17, metadata !2836, metadata !DIExpression()), !dbg !3031
  %18 = icmp eq ptr %17, null, !dbg !3033
  br i1 %18, label %19, label %20, !dbg !3034

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3035
  unreachable, !dbg !3035

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !664, metadata !DIExpression()), !dbg !3013
  store i64 %16, ptr %1, align 8, !dbg !3036, !tbaa !2080
  ret ptr %17, !dbg !3037
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !659 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !664, metadata !DIExpression()), !dbg !3038
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !665, metadata !DIExpression()), !dbg !3038
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !666, metadata !DIExpression()), !dbg !3038
  %4 = load i64, ptr %1, align 8, !dbg !3039, !tbaa !2080
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !667, metadata !DIExpression()), !dbg !3038
  %5 = icmp eq ptr %0, null, !dbg !3040
  br i1 %5, label %6, label %13, !dbg !3041

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3042
  br i1 %7, label %8, label %20, !dbg !3043

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3044
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !667, metadata !DIExpression()), !dbg !3038
  %10 = icmp ugt i64 %2, 128, !dbg !3046
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3047
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !667, metadata !DIExpression()), !dbg !3038
  br label %20, !dbg !3048

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3049
  %15 = add nuw i64 %14, 1, !dbg !3049
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3049
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3049
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3049
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !667, metadata !DIExpression()), !dbg !3038
  br i1 %17, label %19, label %20, !dbg !3050

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3051
  unreachable, !dbg !3051

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3038
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !667, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata ptr %0, metadata !2828, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i64 %21, metadata !2831, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i64 %2, metadata !2832, metadata !DIExpression()), !dbg !3052
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3054
  call void @llvm.dbg.value(metadata ptr %22, metadata !2836, metadata !DIExpression()), !dbg !3055
  %23 = icmp eq ptr %22, null, !dbg !3057
  br i1 %23, label %24, label %25, !dbg !3058

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3059
  unreachable, !dbg !3059

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !664, metadata !DIExpression()), !dbg !3038
  store i64 %21, ptr %1, align 8, !dbg !3060, !tbaa !2080
  ret ptr %22, !dbg !3061
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !671 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !680, metadata !DIExpression()), !dbg !3062
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !681, metadata !DIExpression()), !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !682, metadata !DIExpression()), !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !683, metadata !DIExpression()), !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !684, metadata !DIExpression()), !dbg !3062
  %6 = load i64, ptr %1, align 8, !dbg !3063, !tbaa !2080
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !685, metadata !DIExpression()), !dbg !3062
  %7 = ashr i64 %6, 1, !dbg !3064
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3064
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3064
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !686, metadata !DIExpression()), !dbg !3062
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3066
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !686, metadata !DIExpression()), !dbg !3062
  %12 = icmp sgt i64 %3, -1, !dbg !3067
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3069
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3069
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !686, metadata !DIExpression()), !dbg !3062
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3070
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3070
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3070
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !687, metadata !DIExpression()), !dbg !3062
  %18 = icmp slt i64 %17, 128, !dbg !3070
  %19 = select i1 %18, i64 128, i64 0, !dbg !3070
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3070
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !688, metadata !DIExpression()), !dbg !3062
  %21 = icmp eq i64 %20, 0, !dbg !3071
  br i1 %21, label %28, label %22, !dbg !3073

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3074
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !686, metadata !DIExpression()), !dbg !3062
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3076
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !687, metadata !DIExpression()), !dbg !3062
  br label %28, !dbg !3077

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3062
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !687, metadata !DIExpression()), !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !686, metadata !DIExpression()), !dbg !3062
  %31 = icmp eq ptr %0, null, !dbg !3078
  br i1 %31, label %32, label %33, !dbg !3080

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3081, !tbaa !2080
  br label %33, !dbg !3082

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3083
  %35 = icmp slt i64 %34, %2, !dbg !3085
  br i1 %35, label %36, label %48, !dbg !3086

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3087
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3087
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3087
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !686, metadata !DIExpression()), !dbg !3062
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3088
  br i1 %42, label %47, label %43, !dbg !3088

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3089
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3089
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3089
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !687, metadata !DIExpression()), !dbg !3062
  br i1 %45, label %47, label %48, !dbg !3090

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #38, !dbg !3091
  unreachable, !dbg !3091

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3062
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !687, metadata !DIExpression()), !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !686, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata ptr %0, metadata !2908, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %50, metadata !2909, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata ptr %0, metadata !2911, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %50, metadata !2915, metadata !DIExpression()), !dbg !3094
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3096
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #43, !dbg !3097
  call void @llvm.dbg.value(metadata ptr %52, metadata !2836, metadata !DIExpression()), !dbg !3098
  %53 = icmp eq ptr %52, null, !dbg !3100
  br i1 %53, label %54, label %55, !dbg !3101

54:                                               ; preds = %48
  tail call void @xalloc_die() #38, !dbg !3102
  unreachable, !dbg !3102

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !680, metadata !DIExpression()), !dbg !3062
  store i64 %49, ptr %1, align 8, !dbg !3103, !tbaa !2080
  ret ptr %52, !dbg !3104
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3105 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3107, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %0, metadata !3109, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i64 1, metadata !3112, metadata !DIExpression()), !dbg !3113
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3115
  call void @llvm.dbg.value(metadata ptr %2, metadata !2836, metadata !DIExpression()), !dbg !3116
  %3 = icmp eq ptr %2, null, !dbg !3118
  br i1 %3, label %4, label %5, !dbg !3119

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3120
  unreachable, !dbg !3120

5:                                                ; preds = %1
  ret ptr %2, !dbg !3121
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3122 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3110 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3109, metadata !DIExpression()), !dbg !3123
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3112, metadata !DIExpression()), !dbg !3123
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3124
  call void @llvm.dbg.value(metadata ptr %3, metadata !2836, metadata !DIExpression()), !dbg !3125
  %4 = icmp eq ptr %3, null, !dbg !3127
  br i1 %4, label %5, label %6, !dbg !3128

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3129
  unreachable, !dbg !3129

6:                                                ; preds = %2
  ret ptr %3, !dbg !3130
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3131 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3133, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %0, metadata !3135, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 1, metadata !3138, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %0, metadata !3141, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i64 1, metadata !3144, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i64 %0, metadata !3141, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i64 1, metadata !3144, metadata !DIExpression()), !dbg !3145
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3147
  call void @llvm.dbg.value(metadata ptr %2, metadata !2836, metadata !DIExpression()), !dbg !3148
  %3 = icmp eq ptr %2, null, !dbg !3150
  br i1 %3, label %4, label %5, !dbg !3151

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3152
  unreachable, !dbg !3152

5:                                                ; preds = %1
  ret ptr %2, !dbg !3153
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3136 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3135, metadata !DIExpression()), !dbg !3154
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3138, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i64 %0, metadata !3141, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 %1, metadata !3144, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 %0, metadata !3141, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 %1, metadata !3144, metadata !DIExpression()), !dbg !3155
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3157
  call void @llvm.dbg.value(metadata ptr %3, metadata !2836, metadata !DIExpression()), !dbg !3158
  %4 = icmp eq ptr %3, null, !dbg !3160
  br i1 %4, label %5, label %6, !dbg !3161

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3162
  unreachable, !dbg !3162

6:                                                ; preds = %2
  ret ptr %3, !dbg !3163
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3164 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3168, metadata !DIExpression()), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3169, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 %1, metadata !2860, metadata !DIExpression()), !dbg !3171
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3173
  call void @llvm.dbg.value(metadata ptr %3, metadata !2836, metadata !DIExpression()), !dbg !3174
  %4 = icmp eq ptr %3, null, !dbg !3176
  br i1 %4, label %5, label %6, !dbg !3177

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3178
  unreachable, !dbg !3178

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3179, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata ptr %0, metadata !3185, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 %1, metadata !3186, metadata !DIExpression()), !dbg !3187
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3189
  ret ptr %3, !dbg !3190
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3191 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3195, metadata !DIExpression()), !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3196, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 %1, metadata !2874, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %1, metadata !2876, metadata !DIExpression()), !dbg !3200
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3202
  call void @llvm.dbg.value(metadata ptr %3, metadata !2836, metadata !DIExpression()), !dbg !3203
  %4 = icmp eq ptr %3, null, !dbg !3205
  br i1 %4, label %5, label %6, !dbg !3206

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3207
  unreachable, !dbg !3207

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3179, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata ptr %0, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i64 %1, metadata !3186, metadata !DIExpression()), !dbg !3208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3210
  ret ptr %3, !dbg !3211
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3212 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3216, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3217, metadata !DIExpression()), !dbg !3219
  %3 = add nsw i64 %1, 1, !dbg !3220
  call void @llvm.dbg.value(metadata i64 %3, metadata !2874, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64 %3, metadata !2876, metadata !DIExpression()), !dbg !3223
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3225
  call void @llvm.dbg.value(metadata ptr %4, metadata !2836, metadata !DIExpression()), !dbg !3226
  %5 = icmp eq ptr %4, null, !dbg !3228
  br i1 %5, label %6, label %7, !dbg !3229

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3230
  unreachable, !dbg !3230

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3218, metadata !DIExpression()), !dbg !3219
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3231
  store i8 0, ptr %8, align 1, !dbg !3232, !tbaa !754
  call void @llvm.dbg.value(metadata ptr %4, metadata !3179, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata ptr %0, metadata !3185, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i64 %1, metadata !3186, metadata !DIExpression()), !dbg !3233
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3235
  ret ptr %4, !dbg !3236
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3237 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3239, metadata !DIExpression()), !dbg !3240
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3241
  %3 = add i64 %2, 1, !dbg !3242
  call void @llvm.dbg.value(metadata ptr %0, metadata !3168, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 %3, metadata !3169, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 %3, metadata !2860, metadata !DIExpression()), !dbg !3245
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3247
  call void @llvm.dbg.value(metadata ptr %4, metadata !2836, metadata !DIExpression()), !dbg !3248
  %5 = icmp eq ptr %4, null, !dbg !3250
  br i1 %5, label %6, label %7, !dbg !3251

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3252
  unreachable, !dbg !3252

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3179, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata ptr %0, metadata !3185, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i64 %3, metadata !3186, metadata !DIExpression()), !dbg !3253
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3255
  ret ptr %4, !dbg !3256
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3257 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3262, !tbaa !745
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3259, metadata !DIExpression()), !dbg !3263
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.101, ptr noundef nonnull @.str.2.102, i32 noundef 5) #37, !dbg !3262
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.103, ptr noundef %2) #37, !dbg !3262
  %3 = icmp eq i32 %1, 0, !dbg !3262
  tail call void @llvm.assume(i1 %3), !dbg !3262
  tail call void @abort() #38, !dbg !3264
  unreachable, !dbg !3264
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3265 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3303, metadata !DIExpression()), !dbg !3308
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3309
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3304, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3308
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3310, metadata !DIExpression()), !dbg !3313
  %3 = load i32, ptr %0, align 8, !dbg !3315, !tbaa !3316
  %4 = and i32 %3, 32, !dbg !3317
  %5 = icmp eq i32 %4, 0, !dbg !3317
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3306, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3308
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3318
  %7 = icmp eq i32 %6, 0, !dbg !3319
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3307, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3308
  br i1 %5, label %8, label %18, !dbg !3320

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3322
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3304, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3308
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3323
  %11 = xor i1 %7, true, !dbg !3323
  %12 = sext i1 %11 to i32, !dbg !3323
  br i1 %10, label %21, label %13, !dbg !3323

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3324
  %15 = load i32, ptr %14, align 4, !dbg !3324, !tbaa !745
  %16 = icmp ne i32 %15, 9, !dbg !3325
  %17 = sext i1 %16 to i32, !dbg !3326
  br label %21, !dbg !3326

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3327

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3329
  store i32 0, ptr %20, align 4, !dbg !3331, !tbaa !745
  br label %21, !dbg !3329

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3308
  ret i32 %22, !dbg !3332
}

; Function Attrs: nounwind
declare !dbg !3333 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3337 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3375, metadata !DIExpression()), !dbg !3379
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3376, metadata !DIExpression()), !dbg !3379
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3380
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3377, metadata !DIExpression()), !dbg !3379
  %3 = icmp slt i32 %2, 0, !dbg !3381
  br i1 %3, label %4, label %6, !dbg !3383

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3384
  br label %24, !dbg !3385

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3386
  %8 = icmp eq i32 %7, 0, !dbg !3386
  br i1 %8, label %13, label %9, !dbg !3388

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3389
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3390
  %12 = icmp eq i64 %11, -1, !dbg !3391
  br i1 %12, label %16, label %13, !dbg !3392

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3393
  %15 = icmp eq i32 %14, 0, !dbg !3393
  br i1 %15, label %16, label %18, !dbg !3394

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3376, metadata !DIExpression()), !dbg !3379
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3378, metadata !DIExpression()), !dbg !3379
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3395
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3378, metadata !DIExpression()), !dbg !3379
  br label %24, !dbg !3396

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3397
  %20 = load i32, ptr %19, align 4, !dbg !3397, !tbaa !745
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3376, metadata !DIExpression()), !dbg !3379
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3378, metadata !DIExpression()), !dbg !3379
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3395
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3378, metadata !DIExpression()), !dbg !3379
  %22 = icmp eq i32 %20, 0, !dbg !3398
  br i1 %22, label %24, label %23, !dbg !3396

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3400, !tbaa !745
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3378, metadata !DIExpression()), !dbg !3379
  br label %24, !dbg !3402

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3379
  ret i32 %25, !dbg !3403
}

; Function Attrs: nofree nounwind
declare !dbg !3404 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !3405 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3406 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3407 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3410 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3448, metadata !DIExpression()), !dbg !3449
  %2 = icmp eq ptr %0, null, !dbg !3450
  br i1 %2, label %6, label %3, !dbg !3452

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3453
  %5 = icmp eq i32 %4, 0, !dbg !3453
  br i1 %5, label %6, label %8, !dbg !3454

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3455
  br label %16, !dbg !3456

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3457, metadata !DIExpression()), !dbg !3462
  %9 = load i32, ptr %0, align 8, !dbg !3464, !tbaa !3316
  %10 = and i32 %9, 256, !dbg !3466
  %11 = icmp eq i32 %10, 0, !dbg !3466
  br i1 %11, label %14, label %12, !dbg !3467

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3468
  br label %14, !dbg !3468

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3469
  br label %16, !dbg !3470

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3449
  ret i32 %17, !dbg !3471
}

; Function Attrs: nofree nounwind
declare !dbg !3472 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3473 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3512, metadata !DIExpression()), !dbg !3518
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3513, metadata !DIExpression()), !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3514, metadata !DIExpression()), !dbg !3518
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3519
  %5 = load ptr, ptr %4, align 8, !dbg !3519, !tbaa !3520
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3521
  %7 = load ptr, ptr %6, align 8, !dbg !3521, !tbaa !3522
  %8 = icmp eq ptr %5, %7, !dbg !3523
  br i1 %8, label %9, label %27, !dbg !3524

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3525
  %11 = load ptr, ptr %10, align 8, !dbg !3525, !tbaa !1162
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3526
  %13 = load ptr, ptr %12, align 8, !dbg !3526, !tbaa !3527
  %14 = icmp eq ptr %11, %13, !dbg !3528
  br i1 %14, label %15, label %27, !dbg !3529

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3530
  %17 = load ptr, ptr %16, align 8, !dbg !3530, !tbaa !3531
  %18 = icmp eq ptr %17, null, !dbg !3532
  br i1 %18, label %19, label %27, !dbg !3533

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3534
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3535
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3515, metadata !DIExpression()), !dbg !3536
  %22 = icmp eq i64 %21, -1, !dbg !3537
  br i1 %22, label %29, label %23, !dbg !3539

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3540, !tbaa !3316
  %25 = and i32 %24, -17, !dbg !3540
  store i32 %25, ptr %0, align 8, !dbg !3540, !tbaa !3316
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3541
  store i64 %21, ptr %26, align 8, !dbg !3542, !tbaa !3543
  br label %29, !dbg !3544

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3545
  br label %29, !dbg !3546

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3518
  ret i32 %30, !dbg !3547
}

; Function Attrs: nofree nounwind
declare !dbg !3548 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3551 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3556, metadata !DIExpression()), !dbg !3561
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3557, metadata !DIExpression()), !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3558, metadata !DIExpression()), !dbg !3561
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3559, metadata !DIExpression()), !dbg !3561
  %5 = icmp eq ptr %1, null, !dbg !3562
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3564
  %7 = select i1 %5, ptr @.str.114, ptr %1, !dbg !3564
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3564
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3558, metadata !DIExpression()), !dbg !3561
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3557, metadata !DIExpression()), !dbg !3561
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3556, metadata !DIExpression()), !dbg !3561
  %9 = icmp eq ptr %3, null, !dbg !3565
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3567
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3559, metadata !DIExpression()), !dbg !3561
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3568
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3560, metadata !DIExpression()), !dbg !3561
  %12 = icmp ult i64 %11, -3, !dbg !3569
  br i1 %12, label %13, label %17, !dbg !3571

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #39, !dbg !3572
  %15 = icmp eq i32 %14, 0, !dbg !3572
  br i1 %15, label %16, label %29, !dbg !3573

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3574, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata ptr %10, metadata !3581, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 0, metadata !3584, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 8, metadata !3585, metadata !DIExpression()), !dbg !3586
  store i64 0, ptr %10, align 1, !dbg !3588
  br label %29, !dbg !3589

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3590
  br i1 %18, label %19, label %20, !dbg !3592

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3593
  unreachable, !dbg !3593

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3594

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !3596
  br i1 %23, label %29, label %24, !dbg !3597

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3598
  br i1 %25, label %29, label %26, !dbg !3601

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3602, !tbaa !754
  %28 = zext i8 %27 to i32, !dbg !3603
  store i32 %28, ptr %6, align 4, !dbg !3604, !tbaa !745
  br label %29, !dbg !3605

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3561
  ret i64 %30, !dbg !3606
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3607 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3613 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3615, metadata !DIExpression()), !dbg !3619
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3616, metadata !DIExpression()), !dbg !3619
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3617, metadata !DIExpression()), !dbg !3619
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3620
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3620
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3618, metadata !DIExpression()), !dbg !3619
  br i1 %5, label %6, label %8, !dbg !3622

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3623
  store i32 12, ptr %7, align 4, !dbg !3625, !tbaa !745
  br label %12, !dbg !3626

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3620
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3618, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata ptr %0, metadata !3627, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %9, metadata !3630, metadata !DIExpression()), !dbg !3631
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3633
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3634
  br label %12, !dbg !3635

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3619
  ret ptr %13, !dbg !3636
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3637 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !3646
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3642, metadata !DIExpression(), metadata !3646, metadata ptr %2, metadata !DIExpression()), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3641, metadata !DIExpression()), !dbg !3647
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3648
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3649
  %4 = icmp eq i32 %3, 0, !dbg !3649
  br i1 %4, label %5, label %12, !dbg !3651

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3652, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata ptr @.str.119, metadata !3655, metadata !DIExpression()), !dbg !3656
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.119, i64 2), !dbg !3659
  %7 = icmp eq i32 %6, 0, !dbg !3660
  br i1 %7, label %11, label %8, !dbg !3661

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3652, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata ptr @.str.1.120, metadata !3655, metadata !DIExpression()), !dbg !3662
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.120, i64 6), !dbg !3664
  %10 = icmp eq i32 %9, 0, !dbg !3665
  br i1 %10, label %11, label %12, !dbg !3666

11:                                               ; preds = %8, %5
  br label %12, !dbg !3667

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3647
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3668
  ret i1 %13, !dbg !3668
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3669 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3673, metadata !DIExpression()), !dbg !3676
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3674, metadata !DIExpression()), !dbg !3676
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3675, metadata !DIExpression()), !dbg !3676
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3677
  ret i32 %4, !dbg !3678
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3679 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3683, metadata !DIExpression()), !dbg !3684
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3685
  ret ptr %2, !dbg !3686
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3687 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3689, metadata !DIExpression()), !dbg !3691
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3692
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3690, metadata !DIExpression()), !dbg !3691
  ret ptr %2, !dbg !3693
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3694 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3696, metadata !DIExpression()), !dbg !3703
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3697, metadata !DIExpression()), !dbg !3703
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3698, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i32 %0, metadata !3689, metadata !DIExpression()), !dbg !3704
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3706
  call void @llvm.dbg.value(metadata ptr %4, metadata !3690, metadata !DIExpression()), !dbg !3704
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3699, metadata !DIExpression()), !dbg !3703
  %5 = icmp eq ptr %4, null, !dbg !3707
  br i1 %5, label %6, label %9, !dbg !3708

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3709
  br i1 %7, label %19, label %8, !dbg !3712

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3713, !tbaa !754
  br label %19, !dbg !3714

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !3715
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3700, metadata !DIExpression()), !dbg !3716
  %11 = icmp ult i64 %10, %2, !dbg !3717
  br i1 %11, label %12, label %14, !dbg !3719

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3720
  call void @llvm.dbg.value(metadata ptr %1, metadata !3722, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata ptr %4, metadata !3725, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i64 %13, metadata !3726, metadata !DIExpression()), !dbg !3727
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !3729
  br label %19, !dbg !3730

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3731
  br i1 %15, label %19, label %16, !dbg !3734

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3735
  call void @llvm.dbg.value(metadata ptr %1, metadata !3722, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata ptr %4, metadata !3725, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i64 %17, metadata !3726, metadata !DIExpression()), !dbg !3737
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3739
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3740
  store i8 0, ptr %18, align 1, !dbg !3741, !tbaa !754
  br label %19, !dbg !3742

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3743
  ret i32 %20, !dbg !3744
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #7 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #8 = { nofree nounwind memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #10 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nounwind }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!74, !293, !297, !312, !612, !646, !368, !382, !430, !648, !604, !655, !690, !692, !694, !696, !698, !628, !700, !702, !704, !706}
!llvm.ident = !{!708, !708, !708, !708, !708, !708, !708, !708, !708, !708, !708, !708, !708, !708, !708, !708, !708, !708, !708, !708, !708, !708}
!llvm.module.flags = !{!709, !710, !711, !712, !713, !714, !715, !716}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/true.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ce7e4fa94fdaa872b3d469aaea1081c9")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 61)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 5)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 44)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !9, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 50)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 62)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1480, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 185)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 1)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 10)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 24)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 7)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !41, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 14)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 13)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !68, file: !69, line: 575, type: !95, isLocal: true, isDefinition: true)
!68 = distinct !DISubprogram(name: "oputs_", scope: !69, file: !69, line: 573, type: !70, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !210)
!69 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!70 = !DISubroutineType(cc: DW_CC_nocall, types: !71)
!71 = !{null, !72, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!74 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/true.o -MD -MP -MF src/.deps/true.Tpo -c src/true.c -o src/.true.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !92, globals: !101, splitDebugInlining: false, nameTableKind: None)
!75 = !{!76}
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 46, baseType: !78, size: 32, elements: !79)
!77 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!78 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!80 = !DIEnumerator(name: "_ISupper", value: 256)
!81 = !DIEnumerator(name: "_ISlower", value: 512)
!82 = !DIEnumerator(name: "_ISalpha", value: 1024)
!83 = !DIEnumerator(name: "_ISdigit", value: 2048)
!84 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!85 = !DIEnumerator(name: "_ISspace", value: 8192)
!86 = !DIEnumerator(name: "_ISprint", value: 16384)
!87 = !DIEnumerator(name: "_ISgraph", value: 32768)
!88 = !DIEnumerator(name: "_ISblank", value: 1)
!89 = !DIEnumerator(name: "_IScntrl", value: 2)
!90 = !DIEnumerator(name: "_ISpunct", value: 4)
!91 = !DIEnumerator(name: "_ISalnum", value: 8)
!92 = !{!93, !94, !95, !96, !97, !72, !100}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!95 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!96 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 18, baseType: !99)
!98 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!99 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!100 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!101 = !{!0, !7, !12, !17, !19, !24, !29, !34, !39, !44, !49, !54, !56, !61, !66, !102, !104, !106, !111, !116, !121, !123, !125, !130, !132, !134, !136, !138, !143, !145, !147, !149, !151, !156, !161, !166, !168, !170, !172, !174, !176, !181, !186, !188, !190, !195, !200, !205}
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !69, line: 585, type: !9, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !69, line: 586, type: !9, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !69, line: 595, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 4)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !69, line: 620, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 6)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !69, line: 648, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 2)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !69, line: 648, type: !9, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !69, line: 649, type: !108, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !69, line: 649, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 3)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !69, line: 650, type: !9, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !69, line: 651, type: !113, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !69, line: 651, type: !113, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !69, line: 652, type: !51, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !69, line: 653, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 8)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !69, line: 654, type: !41, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !69, line: 655, type: !41, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !69, line: 656, type: !41, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !69, line: 657, type: !41, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !69, line: 669, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 17)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !69, line: 669, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 40)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !69, line: 676, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 15)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !69, line: 676, type: !3, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !69, line: 679, type: !127, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !69, line: 683, type: !9, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !69, line: 688, type: !9, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !69, line: 691, type: !140, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !69, line: 839, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 16)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !69, line: 840, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 22)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !69, line: 841, type: !163, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !69, line: 862, type: !108, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !69, line: 868, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 71)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !69, line: 875, type: !197, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 27)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !69, line: 877, type: !202, isLocal: true, isDefinition: true)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 51)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(scope: null, file: !69, line: 877, type: !207, isLocal: true, isDefinition: true)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 12)
!210 = !{!211, !212, !213, !216, !218, !219, !220, !224, !225, !226, !227, !229, !282, !283, !284, !286, !287}
!211 = !DILocalVariable(name: "program", arg: 1, scope: !68, file: !69, line: 573, type: !72)
!212 = !DILocalVariable(name: "option", arg: 2, scope: !68, file: !69, line: 573, type: !72)
!213 = !DILocalVariable(name: "term", scope: !214, file: !69, line: 585, type: !72)
!214 = distinct !DILexicalBlock(scope: !215, file: !69, line: 582, column: 5)
!215 = distinct !DILexicalBlock(scope: !68, file: !69, line: 581, column: 7)
!216 = !DILocalVariable(name: "double_space", scope: !68, file: !69, line: 594, type: !217)
!217 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!218 = !DILocalVariable(name: "first_word", scope: !68, file: !69, line: 595, type: !72)
!219 = !DILocalVariable(name: "option_text", scope: !68, file: !69, line: 596, type: !72)
!220 = !DILocalVariable(name: "s", scope: !221, file: !69, line: 608, type: !72)
!221 = distinct !DILexicalBlock(scope: !222, file: !69, line: 605, column: 5)
!222 = distinct !DILexicalBlock(scope: !223, file: !69, line: 604, column: 12)
!223 = distinct !DILexicalBlock(scope: !68, file: !69, line: 597, column: 7)
!224 = !DILocalVariable(name: "spaces", scope: !221, file: !69, line: 609, type: !97)
!225 = !DILocalVariable(name: "anchor_len", scope: !68, file: !69, line: 620, type: !97)
!226 = !DILocalVariable(name: "desc_text", scope: !68, file: !69, line: 625, type: !72)
!227 = !DILocalVariable(name: "__ptr", scope: !228, file: !69, line: 644, type: !72)
!228 = distinct !DILexicalBlock(scope: !68, file: !69, line: 644, column: 3)
!229 = !DILocalVariable(name: "__stream", scope: !228, file: !69, line: 644, type: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !233)
!232 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !235)
!234 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !251, !253, !254, !255, !259, !260, !262, !263, !266, !268, !271, !274, !275, !276, !277, !278}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !233, file: !234, line: 51, baseType: !95, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !233, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !233, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !233, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !233, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !233, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !233, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !233, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !233, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !233, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !233, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !233, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !233, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !234, line: 36, flags: DIFlagFwdDecl)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !233, file: !234, line: 70, baseType: !252, size: 64, offset: 832)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !233, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !233, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !233, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !257, line: 152, baseType: !258)
!257 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!258 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !233, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !233, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!261 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !233, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !233, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !234, line: 43, baseType: null)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !233, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !257, line: 153, baseType: !258)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !233, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !234, line: 37, flags: DIFlagFwdDecl)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !233, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !234, line: 38, flags: DIFlagFwdDecl)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !233, file: !234, line: 93, baseType: !252, size: 64, offset: 1344)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !233, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !233, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !233, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !233, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 20)
!282 = !DILocalVariable(name: "__cnt", scope: !228, file: !69, line: 644, type: !97)
!283 = !DILocalVariable(name: "url_program", scope: !68, file: !69, line: 648, type: !72)
!284 = !DILocalVariable(name: "__ptr", scope: !285, file: !69, line: 686, type: !72)
!285 = distinct !DILexicalBlock(scope: !68, file: !69, line: 686, column: 3)
!286 = !DILocalVariable(name: "__stream", scope: !285, file: !69, line: 686, type: !230)
!287 = !DILocalVariable(name: "__cnt", scope: !285, file: !69, line: 686, type: !97)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !290, line: 3, type: !163, isLocal: true, isDefinition: true)
!290 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "Version", scope: !293, file: !290, line: 3, type: !72, isLocal: false, isDefinition: true)
!293 = distinct !DICompileUnit(language: DW_LANG_C11, file: !290, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !294, splitDebugInlining: false, nameTableKind: None)
!294 = !{!288, !291}
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "file_name", scope: !297, file: !298, line: 45, type: !72, isLocal: true, isDefinition: true)
!297 = distinct !DICompileUnit(language: DW_LANG_C11, file: !298, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !299, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!299 = !{!300, !302, !304, !306, !295, !308}
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !298, line: 121, type: !51, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !298, line: 121, type: !207, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !298, line: 123, type: !51, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !298, line: 126, type: !127, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !297, file: !298, line: 55, type: !217, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !312, file: !313, line: 66, type: !363, isLocal: false, isDefinition: true)
!312 = distinct !DICompileUnit(language: DW_LANG_C11, file: !313, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !314, globals: !315, splitDebugInlining: false, nameTableKind: None)
!313 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!314 = !{!94, !100}
!315 = !{!316, !318, !342, !344, !346, !348, !310, !350, !352, !354, !356, !361}
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !313, line: 272, type: !9, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "old_file_name", scope: !320, file: !313, line: 304, type: !72, isLocal: true, isDefinition: true)
!320 = distinct !DISubprogram(name: "verror_at_line", scope: !313, file: !313, line: 298, type: !321, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !335)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !95, !95, !72, !78, !72, !323}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !324, line: 52, baseType: !325)
!324 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !326, line: 12, baseType: !327)
!326 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !313, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !329)
!329 = !{!330, !331, !332, !333, !334}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !328, file: !313, baseType: !94, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !328, file: !313, baseType: !94, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !328, file: !313, baseType: !94, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !328, file: !313, baseType: !95, size: 32, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !328, file: !313, baseType: !95, size: 32, offset: 224)
!335 = !{!336, !337, !338, !339, !340, !341}
!336 = !DILocalVariable(name: "status", arg: 1, scope: !320, file: !313, line: 298, type: !95)
!337 = !DILocalVariable(name: "errnum", arg: 2, scope: !320, file: !313, line: 298, type: !95)
!338 = !DILocalVariable(name: "file_name", arg: 3, scope: !320, file: !313, line: 298, type: !72)
!339 = !DILocalVariable(name: "line_number", arg: 4, scope: !320, file: !313, line: 298, type: !78)
!340 = !DILocalVariable(name: "message", arg: 5, scope: !320, file: !313, line: 298, type: !72)
!341 = !DILocalVariable(name: "args", arg: 6, scope: !320, file: !313, line: 298, type: !323)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(name: "old_line_number", scope: !320, file: !313, line: 305, type: !78, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !313, line: 338, type: !108, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !313, line: 346, type: !140, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !313, line: 346, type: !118, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "error_message_count", scope: !312, file: !313, line: 69, type: !78, isLocal: false, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !312, file: !313, line: 295, type: !95, isLocal: false, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !313, line: 208, type: !51, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !313, line: 208, type: !358, isLocal: true, isDefinition: true)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 21)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !313, line: 214, type: !9, isLocal: true, isDefinition: true)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{null}
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "program_name", scope: !368, file: !369, line: 31, type: !72, isLocal: false, isDefinition: true)
!368 = distinct !DICompileUnit(language: DW_LANG_C11, file: !369, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !370, globals: !371, splitDebugInlining: false, nameTableKind: None)
!369 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!370 = !{!94, !93}
!371 = !{!366, !372, !374}
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !369, line: 46, type: !140, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !369, line: 49, type: !108, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "utf07FF", scope: !378, file: !379, line: 46, type: !406, isLocal: true, isDefinition: true)
!378 = distinct !DISubprogram(name: "proper_name_lite", scope: !379, file: !379, line: 38, type: !380, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !384)
!379 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!380 = !DISubroutineType(types: !381)
!381 = !{!72, !72, !72}
!382 = distinct !DICompileUnit(language: DW_LANG_C11, file: !379, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !383, splitDebugInlining: false, nameTableKind: None)
!383 = !{!376}
!384 = !{!385, !386, !387, !388, !393}
!385 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !378, file: !379, line: 38, type: !72)
!386 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !378, file: !379, line: 38, type: !72)
!387 = !DILocalVariable(name: "translation", scope: !378, file: !379, line: 40, type: !72)
!388 = !DILocalVariable(name: "w", scope: !378, file: !379, line: 47, type: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !390, line: 37, baseType: !391)
!390 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !257, line: 57, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !257, line: 42, baseType: !78)
!393 = !DILocalVariable(name: "mbs", scope: !378, file: !379, line: 48, type: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !395, line: 6, baseType: !396)
!395 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !397, line: 21, baseType: !398)
!397 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 13, size: 64, elements: !399)
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !398, file: !397, line: 15, baseType: !95, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !398, file: !397, line: 20, baseType: !402, size: 32, offset: 32)
!402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !397, line: 16, size: 32, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !402, file: !397, line: 18, baseType: !78, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !402, file: !397, line: 19, baseType: !108, size: 32)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 16, elements: !119)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !409, line: 78, type: !140, isLocal: true, isDefinition: true)
!409 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !409, line: 79, type: !113, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !409, line: 80, type: !63, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !409, line: 81, type: !63, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !409, line: 82, type: !279, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !409, line: 83, type: !118, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !409, line: 84, type: !140, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !409, line: 85, type: !51, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !409, line: 86, type: !51, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !409, line: 87, type: !140, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !430, file: !409, line: 76, type: !516, isLocal: false, isDefinition: true)
!430 = distinct !DICompileUnit(language: DW_LANG_C11, file: !409, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !431, retainedTypes: !451, globals: !452, splitDebugInlining: false, nameTableKind: None)
!431 = !{!432, !446, !76}
!432 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !433, line: 42, baseType: !78, size: 32, elements: !434)
!433 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!435 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!436 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!437 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!438 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!439 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!440 = !DIEnumerator(name: "c_quoting_style", value: 5)
!441 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!442 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!443 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!444 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!445 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!446 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !433, line: 254, baseType: !78, size: 32, elements: !447)
!447 = !{!448, !449, !450}
!448 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!449 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!450 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!451 = !{!94, !95, !96, !97}
!452 = !{!407, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !453, !457, !467, !469, !474, !476, !478, !480, !482, !505, !512, !514}
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !430, file: !409, line: 92, type: !455, isLocal: false, isDefinition: true)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 320, elements: !42)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !430, file: !409, line: 1040, type: !459, isLocal: false, isDefinition: true)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !409, line: 56, size: 448, elements: !460)
!460 = !{!461, !462, !463, !465, !466}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !459, file: !409, line: 59, baseType: !432, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !409, line: 62, baseType: !95, size: 32, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !459, file: !409, line: 66, baseType: !464, size: 256, offset: 64)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !141)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !459, file: !409, line: 69, baseType: !72, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !459, file: !409, line: 72, baseType: !72, size: 64, offset: 384)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !430, file: !409, line: 107, type: !459, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(name: "slot0", scope: !430, file: !409, line: 831, type: !471, isLocal: true, isDefinition: true)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 256)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !409, line: 321, type: !118, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !409, line: 357, type: !118, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !409, line: 358, type: !118, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !409, line: 199, type: !51, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(name: "quote", scope: !484, file: !409, line: 228, type: !503, isLocal: true, isDefinition: true)
!484 = distinct !DISubprogram(name: "gettext_quote", scope: !409, file: !409, line: 197, type: !485, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !487)
!485 = !DISubroutineType(types: !486)
!486 = !{!72, !72, !432}
!487 = !{!488, !489, !490, !491, !492}
!488 = !DILocalVariable(name: "msgid", arg: 1, scope: !484, file: !409, line: 197, type: !72)
!489 = !DILocalVariable(name: "s", arg: 2, scope: !484, file: !409, line: 197, type: !432)
!490 = !DILocalVariable(name: "translation", scope: !484, file: !409, line: 199, type: !72)
!491 = !DILocalVariable(name: "w", scope: !484, file: !409, line: 229, type: !389)
!492 = !DILocalVariable(name: "mbs", scope: !484, file: !409, line: 230, type: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !395, line: 6, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !397, line: 21, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 13, size: 64, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !495, file: !397, line: 15, baseType: !95, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !495, file: !397, line: 20, baseType: !499, size: 32, offset: 32)
!499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !495, file: !397, line: 16, size: 32, elements: !500)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !499, file: !397, line: 18, baseType: !78, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !499, file: !397, line: 19, baseType: !108, size: 32)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !504)
!504 = !{!120, !110}
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "slotvec", scope: !430, file: !409, line: 834, type: !507, isLocal: true, isDefinition: true)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !409, line: 823, size: 128, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !508, file: !409, line: 825, baseType: !97, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !508, file: !409, line: 826, baseType: !93, size: 64, offset: 64)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(name: "nslots", scope: !430, file: !409, line: 832, type: !95, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(name: "slotvec0", scope: !430, file: !409, line: 833, type: !508, isLocal: true, isDefinition: true)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 704, elements: !518)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!518 = !{!519}
!519 = !DISubrange(count: 11)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !522, line: 67, type: !207, isLocal: true, isDefinition: true)
!522 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !522, line: 69, type: !51, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !522, line: 83, type: !51, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !522, line: 83, type: !108, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !522, line: 85, type: !118, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !522, line: 88, type: !533, isLocal: true, isDefinition: true)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 171)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !522, line: 88, type: !538, isLocal: true, isDefinition: true)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 34)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !522, line: 105, type: !178, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !522, line: 109, type: !545, isLocal: true, isDefinition: true)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !546)
!546 = !{!547}
!547 = !DISubrange(count: 23)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !522, line: 113, type: !550, isLocal: true, isDefinition: true)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: 28)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !522, line: 120, type: !555, isLocal: true, isDefinition: true)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 32)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !522, line: 127, type: !560, isLocal: true, isDefinition: true)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !561)
!561 = !{!562}
!562 = !DISubrange(count: 36)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !522, line: 134, type: !158, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !522, line: 142, type: !14, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !522, line: 150, type: !569, isLocal: true, isDefinition: true)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 48)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !522, line: 159, type: !574, isLocal: true, isDefinition: true)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: 52)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !522, line: 170, type: !579, isLocal: true, isDefinition: true)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: 60)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !522, line: 248, type: !279, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !522, line: 248, type: !183, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !522, line: 254, type: !279, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !522, line: 254, type: !58, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !522, line: 254, type: !158, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !522, line: 259, type: !594, isLocal: true, isDefinition: true)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 39)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !522, line: 259, type: !599, isLocal: true, isDefinition: true)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 29)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !604, file: !605, line: 26, type: !607, isLocal: false, isDefinition: true)
!604 = distinct !DICompileUnit(language: DW_LANG_C11, file: !605, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !606, splitDebugInlining: false, nameTableKind: None)
!605 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!606 = !{!602}
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 376, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 47)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(name: "exit_failure", scope: !612, file: !613, line: 24, type: !615, isLocal: false, isDefinition: true)
!612 = distinct !DICompileUnit(language: DW_LANG_C11, file: !613, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !614, splitDebugInlining: false, nameTableKind: None)
!613 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!614 = !{!610}
!615 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !95)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !618, line: 34, type: !127, isLocal: true, isDefinition: true)
!618 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !618, line: 34, type: !51, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !618, line: 34, type: !153, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !625, line: 108, type: !36, isLocal: true, isDefinition: true)
!625 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(name: "internal_state", scope: !628, file: !625, line: 97, type: !631, isLocal: true, isDefinition: true)
!628 = distinct !DICompileUnit(language: DW_LANG_C11, file: !625, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !629, globals: !630, splitDebugInlining: false, nameTableKind: None)
!629 = !{!94, !97, !100}
!630 = !{!623, !626}
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !395, line: 6, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !397, line: 21, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 13, size: 64, elements: !634)
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !633, file: !397, line: 15, baseType: !95, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !633, file: !397, line: 20, baseType: !637, size: 32, offset: 32)
!637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !633, file: !397, line: 16, size: 32, elements: !638)
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !637, file: !397, line: 18, baseType: !78, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !637, file: !397, line: 19, baseType: !108, size: 32)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !643, line: 35, type: !118, isLocal: true, isDefinition: true)
!643 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !643, line: 35, type: !113, isLocal: true, isDefinition: true)
!646 = distinct !DICompileUnit(language: DW_LANG_C11, file: !647, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!647 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!648 = distinct !DICompileUnit(language: DW_LANG_C11, file: !522, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !649, retainedTypes: !653, globals: !654, splitDebugInlining: false, nameTableKind: None)
!649 = !{!650}
!650 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !522, line: 40, baseType: !78, size: 32, elements: !651)
!651 = !{!652}
!652 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!653 = !{!94}
!654 = !{!520, !523, !525, !527, !529, !531, !536, !541, !543, !548, !553, !558, !563, !565, !567, !572, !577, !582, !584, !586, !588, !590, !592, !597}
!655 = distinct !DICompileUnit(language: DW_LANG_C11, file: !656, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !657, retainedTypes: !689, splitDebugInlining: false, nameTableKind: None)
!656 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!657 = !{!658, !670}
!658 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !659, file: !656, line: 188, baseType: !78, size: 32, elements: !668)
!659 = distinct !DISubprogram(name: "x2nrealloc", scope: !656, file: !656, line: 176, type: !660, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !663)
!660 = !DISubroutineType(types: !661)
!661 = !{!94, !94, !662, !97}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!663 = !{!664, !665, !666, !667}
!664 = !DILocalVariable(name: "p", arg: 1, scope: !659, file: !656, line: 176, type: !94)
!665 = !DILocalVariable(name: "pn", arg: 2, scope: !659, file: !656, line: 176, type: !662)
!666 = !DILocalVariable(name: "s", arg: 3, scope: !659, file: !656, line: 176, type: !97)
!667 = !DILocalVariable(name: "n", scope: !659, file: !656, line: 178, type: !97)
!668 = !{!669}
!669 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!670 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !671, file: !656, line: 228, baseType: !78, size: 32, elements: !668)
!671 = distinct !DISubprogram(name: "xpalloc", scope: !656, file: !656, line: 223, type: !672, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !679)
!672 = !DISubroutineType(types: !673)
!673 = !{!94, !94, !674, !675, !677, !675}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !676, line: 130, baseType: !677)
!676 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !678, line: 18, baseType: !258)
!678 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!679 = !{!680, !681, !682, !683, !684, !685, !686, !687, !688}
!680 = !DILocalVariable(name: "pa", arg: 1, scope: !671, file: !656, line: 223, type: !94)
!681 = !DILocalVariable(name: "pn", arg: 2, scope: !671, file: !656, line: 223, type: !674)
!682 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !671, file: !656, line: 223, type: !675)
!683 = !DILocalVariable(name: "n_max", arg: 4, scope: !671, file: !656, line: 223, type: !677)
!684 = !DILocalVariable(name: "s", arg: 5, scope: !671, file: !656, line: 223, type: !675)
!685 = !DILocalVariable(name: "n0", scope: !671, file: !656, line: 230, type: !675)
!686 = !DILocalVariable(name: "n", scope: !671, file: !656, line: 237, type: !675)
!687 = !DILocalVariable(name: "nbytes", scope: !671, file: !656, line: 248, type: !675)
!688 = !DILocalVariable(name: "adjusted_nbytes", scope: !671, file: !656, line: 252, type: !675)
!689 = !{!93, !94}
!690 = distinct !DICompileUnit(language: DW_LANG_C11, file: !618, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !691, splitDebugInlining: false, nameTableKind: None)
!691 = !{!616, !619, !621}
!692 = distinct !DICompileUnit(language: DW_LANG_C11, file: !693, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!693 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!694 = distinct !DICompileUnit(language: DW_LANG_C11, file: !695, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!695 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!696 = distinct !DICompileUnit(language: DW_LANG_C11, file: !697, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !653, splitDebugInlining: false, nameTableKind: None)
!697 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!698 = distinct !DICompileUnit(language: DW_LANG_C11, file: !699, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !653, splitDebugInlining: false, nameTableKind: None)
!699 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!700 = distinct !DICompileUnit(language: DW_LANG_C11, file: !701, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !653, splitDebugInlining: false, nameTableKind: None)
!701 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!702 = distinct !DICompileUnit(language: DW_LANG_C11, file: !643, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !703, splitDebugInlining: false, nameTableKind: None)
!703 = !{!641, !644}
!704 = distinct !DICompileUnit(language: DW_LANG_C11, file: !705, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!705 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!706 = distinct !DICompileUnit(language: DW_LANG_C11, file: !707, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !653, splitDebugInlining: false, nameTableKind: None)
!707 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!708 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!709 = !{i32 7, !"Dwarf Version", i32 5}
!710 = !{i32 2, !"Debug Info Version", i32 3}
!711 = !{i32 1, !"wchar_size", i32 4}
!712 = !{i32 8, !"PIC Level", i32 2}
!713 = !{i32 7, !"PIE Level", i32 2}
!714 = !{i32 7, !"uwtable", i32 2}
!715 = !{i32 7, !"frame-pointer", i32 1}
!716 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!717 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 36, type: !718, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !720)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !95}
!720 = !{!721}
!721 = !DILocalVariable(name: "status", arg: 1, scope: !717, file: !2, line: 36, type: !95)
!722 = !DILocation(line: 0, scope: !717)
!723 = !DILocation(line: 38, column: 3, scope: !717)
!724 = !{!725, !725, i64 0}
!725 = !{!"any pointer", !726, i64 0}
!726 = !{!"omnipotent char", !727, i64 0}
!727 = !{!"Simple C/C++ TBAA"}
!728 = !DILocation(line: 43, column: 3, scope: !717)
!729 = !DILocation(line: 47, column: 3, scope: !717)
!730 = !DILocation(line: 48, column: 3, scope: !717)
!731 = !DILocation(line: 49, column: 3, scope: !717)
!732 = !DILocation(line: 50, column: 3, scope: !717)
!733 = !DILocation(line: 51, column: 3, scope: !717)
!734 = !DISubprogram(name: "dcgettext", scope: !735, file: !735, line: 51, type: !736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!735 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!736 = !DISubroutineType(types: !737)
!737 = !{!93, !72, !72, !95}
!738 = !DISubprogram(name: "__printf_chk", scope: !739, file: !739, line: 95, type: !740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!739 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!740 = !DISubroutineType(types: !741)
!741 = !{!95, !95, !742, null}
!742 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !72)
!743 = !DILocation(line: 0, scope: !68)
!744 = !DILocation(line: 581, column: 7, scope: !215)
!745 = !{!746, !746, i64 0}
!746 = !{!"int", !726, i64 0}
!747 = !DILocation(line: 581, column: 19, scope: !215)
!748 = !DILocation(line: 581, column: 7, scope: !68)
!749 = !DILocation(line: 585, column: 26, scope: !214)
!750 = !DILocation(line: 0, scope: !214)
!751 = !DILocation(line: 586, column: 23, scope: !214)
!752 = !DILocation(line: 586, column: 28, scope: !214)
!753 = !DILocation(line: 586, column: 32, scope: !214)
!754 = !{!726, !726, i64 0}
!755 = !DILocation(line: 586, column: 38, scope: !214)
!756 = !DILocalVariable(name: "__s1", arg: 1, scope: !757, file: !758, line: 1359, type: !72)
!757 = distinct !DISubprogram(name: "streq", scope: !758, file: !758, line: 1359, type: !759, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !761)
!758 = !DIFile(filename: "./lib/string.h", directory: "/src")
!759 = !DISubroutineType(types: !760)
!760 = !{!217, !72, !72}
!761 = !{!756, !762}
!762 = !DILocalVariable(name: "__s2", arg: 2, scope: !757, file: !758, line: 1359, type: !72)
!763 = !DILocation(line: 0, scope: !757, inlinedAt: !764)
!764 = distinct !DILocation(line: 586, column: 41, scope: !214)
!765 = !DILocation(line: 1361, column: 11, scope: !757, inlinedAt: !764)
!766 = !DILocation(line: 1361, column: 10, scope: !757, inlinedAt: !764)
!767 = !DILocation(line: 586, column: 19, scope: !214)
!768 = !DILocation(line: 587, column: 5, scope: !214)
!769 = !DILocation(line: 588, column: 7, scope: !770)
!770 = distinct !DILexicalBlock(scope: !68, file: !69, line: 588, column: 7)
!771 = !DILocation(line: 588, column: 7, scope: !68)
!772 = !DILocation(line: 590, column: 7, scope: !773)
!773 = distinct !DILexicalBlock(scope: !770, file: !69, line: 589, column: 5)
!774 = !DILocation(line: 591, column: 7, scope: !773)
!775 = !DILocation(line: 595, column: 37, scope: !68)
!776 = !DILocation(line: 595, column: 35, scope: !68)
!777 = !DILocation(line: 596, column: 29, scope: !68)
!778 = !DILocation(line: 597, column: 8, scope: !223)
!779 = !DILocation(line: 597, column: 7, scope: !68)
!780 = !DILocation(line: 604, column: 24, scope: !222)
!781 = !DILocation(line: 604, column: 12, scope: !223)
!782 = !DILocation(line: 0, scope: !221)
!783 = !DILocation(line: 610, column: 16, scope: !221)
!784 = !DILocation(line: 610, column: 7, scope: !221)
!785 = !DILocation(line: 611, column: 21, scope: !221)
!786 = !{!787, !787, i64 0}
!787 = !{!"short", !726, i64 0}
!788 = !DILocation(line: 611, column: 19, scope: !221)
!789 = !DILocation(line: 611, column: 16, scope: !221)
!790 = !DILocation(line: 610, column: 30, scope: !221)
!791 = distinct !{!791, !784, !785, !792}
!792 = !{!"llvm.loop.mustprogress"}
!793 = !DILocation(line: 612, column: 18, scope: !794)
!794 = distinct !DILexicalBlock(scope: !221, file: !69, line: 612, column: 11)
!795 = !DILocation(line: 612, column: 11, scope: !221)
!796 = !DILocation(line: 620, column: 23, scope: !68)
!797 = !DILocation(line: 625, column: 39, scope: !68)
!798 = !DILocation(line: 626, column: 3, scope: !68)
!799 = !DILocation(line: 626, column: 10, scope: !68)
!800 = !DILocation(line: 626, column: 21, scope: !68)
!801 = !DILocation(line: 628, column: 44, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !69, line: 628, column: 11)
!803 = distinct !DILexicalBlock(scope: !68, file: !69, line: 627, column: 5)
!804 = !DILocation(line: 628, column: 32, scope: !802)
!805 = !DILocation(line: 628, column: 49, scope: !802)
!806 = !DILocation(line: 628, column: 11, scope: !803)
!807 = !DILocation(line: 630, column: 11, scope: !808)
!808 = distinct !DILexicalBlock(scope: !803, file: !69, line: 630, column: 11)
!809 = !DILocation(line: 630, column: 11, scope: !803)
!810 = !DILocation(line: 632, column: 26, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !69, line: 632, column: 15)
!812 = distinct !DILexicalBlock(scope: !808, file: !69, line: 631, column: 9)
!813 = !DILocation(line: 632, column: 34, scope: !811)
!814 = !DILocation(line: 632, column: 37, scope: !811)
!815 = !DILocation(line: 632, column: 15, scope: !812)
!816 = !DILocation(line: 640, column: 16, scope: !803)
!817 = distinct !{!817, !798, !818, !792}
!818 = !DILocation(line: 641, column: 5, scope: !68)
!819 = !DILocation(line: 644, column: 3, scope: !68)
!820 = !DILocation(line: 0, scope: !757, inlinedAt: !821)
!821 = distinct !DILocation(line: 648, column: 31, scope: !68)
!822 = !{}
!823 = !DILocation(line: 0, scope: !757, inlinedAt: !824)
!824 = distinct !DILocation(line: 649, column: 31, scope: !68)
!825 = !DILocation(line: 0, scope: !757, inlinedAt: !826)
!826 = distinct !DILocation(line: 650, column: 31, scope: !68)
!827 = !DILocation(line: 0, scope: !757, inlinedAt: !828)
!828 = distinct !DILocation(line: 651, column: 31, scope: !68)
!829 = !DILocation(line: 0, scope: !757, inlinedAt: !830)
!830 = distinct !DILocation(line: 652, column: 31, scope: !68)
!831 = !DILocation(line: 0, scope: !757, inlinedAt: !832)
!832 = distinct !DILocation(line: 653, column: 31, scope: !68)
!833 = !DILocation(line: 0, scope: !757, inlinedAt: !834)
!834 = distinct !DILocation(line: 654, column: 31, scope: !68)
!835 = !DILocation(line: 0, scope: !757, inlinedAt: !836)
!836 = distinct !DILocation(line: 655, column: 31, scope: !68)
!837 = !DILocation(line: 0, scope: !757, inlinedAt: !838)
!838 = distinct !DILocation(line: 656, column: 31, scope: !68)
!839 = !DILocation(line: 0, scope: !757, inlinedAt: !840)
!840 = distinct !DILocation(line: 657, column: 31, scope: !68)
!841 = !DILocation(line: 663, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !68, file: !69, line: 663, column: 7)
!843 = !DILocation(line: 664, column: 7, scope: !842)
!844 = !DILocation(line: 664, column: 10, scope: !842)
!845 = !DILocation(line: 663, column: 7, scope: !68)
!846 = !DILocation(line: 669, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !842, file: !69, line: 665, column: 5)
!848 = !DILocation(line: 671, column: 5, scope: !847)
!849 = !DILocation(line: 676, column: 7, scope: !850)
!850 = distinct !DILexicalBlock(scope: !842, file: !69, line: 673, column: 5)
!851 = !DILocation(line: 679, column: 3, scope: !68)
!852 = !DILocation(line: 683, column: 3, scope: !68)
!853 = !DILocation(line: 686, column: 3, scope: !68)
!854 = !DILocation(line: 688, column: 3, scope: !68)
!855 = !DILocation(line: 691, column: 3, scope: !68)
!856 = !DILocation(line: 695, column: 3, scope: !68)
!857 = !DILocation(line: 696, column: 1, scope: !68)
!858 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !69, file: !69, line: 836, type: !859, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !861)
!859 = !DISubroutineType(cc: DW_CC_nocall, types: !860)
!860 = !{null, !72}
!861 = !{!862, !863, !870, !871, !873, !874}
!862 = !DILocalVariable(name: "program", arg: 1, scope: !858, file: !69, line: 836, type: !72)
!863 = !DILocalVariable(name: "infomap", scope: !858, file: !69, line: 838, type: !864)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !865, size: 896, elements: !52)
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !858, file: !69, line: 838, size: 128, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !866, file: !69, line: 838, baseType: !72, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !866, file: !69, line: 838, baseType: !72, size: 64, offset: 64)
!870 = !DILocalVariable(name: "node", scope: !858, file: !69, line: 848, type: !72)
!871 = !DILocalVariable(name: "map_prog", scope: !858, file: !69, line: 849, type: !872)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!873 = !DILocalVariable(name: "lc_messages", scope: !858, file: !69, line: 861, type: !72)
!874 = !DILocalVariable(name: "url_program", scope: !858, file: !69, line: 874, type: !72)
!875 = !DILocation(line: 0, scope: !858)
!876 = !DILocation(line: 857, column: 3, scope: !858)
!877 = !DILocation(line: 861, column: 29, scope: !858)
!878 = !DILocation(line: 862, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !858, file: !69, line: 862, column: 7)
!880 = !DILocation(line: 862, column: 19, scope: !879)
!881 = !DILocation(line: 862, column: 22, scope: !879)
!882 = !DILocation(line: 862, column: 7, scope: !858)
!883 = !DILocation(line: 868, column: 7, scope: !884)
!884 = distinct !DILexicalBlock(scope: !879, file: !69, line: 863, column: 5)
!885 = !DILocation(line: 870, column: 5, scope: !884)
!886 = !DILocation(line: 875, column: 3, scope: !858)
!887 = !DILocation(line: 877, column: 3, scope: !858)
!888 = !DILocation(line: 879, column: 1, scope: !858)
!889 = !DISubprogram(name: "exit", scope: !890, file: !890, line: 624, type: !718, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!890 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!891 = !DISubprogram(name: "setlocale", scope: !892, file: !892, line: 122, type: !893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!892 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!893 = !DISubroutineType(types: !894)
!894 = !{!93, !95, !72}
!895 = !DISubprogram(name: "strncmp", scope: !896, file: !896, line: 159, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!896 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!897 = !DISubroutineType(types: !898)
!898 = !{!95, !72, !72, !97}
!899 = !DISubprogram(name: "fputs_unlocked", scope: !324, file: !324, line: 691, type: !900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!900 = !DISubroutineType(types: !901)
!901 = !{!95, !742, !902}
!902 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !230)
!903 = !DISubprogram(name: "getenv", scope: !890, file: !890, line: 641, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!904 = !DISubroutineType(types: !905)
!905 = !{!93, !72}
!906 = !DISubprogram(name: "strcmp", scope: !896, file: !896, line: 156, type: !907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!907 = !DISubroutineType(types: !908)
!908 = !{!95, !72, !72}
!909 = !DISubprogram(name: "strspn", scope: !896, file: !896, line: 297, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!910 = !DISubroutineType(types: !911)
!911 = !{!99, !72, !72}
!912 = !DISubprogram(name: "strchr", scope: !896, file: !896, line: 246, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!913 = !DISubroutineType(types: !914)
!914 = !{!93, !72, !95}
!915 = !DISubprogram(name: "__ctype_b_loc", scope: !77, file: !77, line: 79, type: !916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!916 = !DISubroutineType(types: !917)
!917 = !{!918}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!921 = !DISubprogram(name: "strcspn", scope: !896, file: !896, line: 293, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!922 = !DISubprogram(name: "fwrite_unlocked", scope: !324, file: !324, line: 704, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!923 = !DISubroutineType(types: !924)
!924 = !{!97, !925, !97, !97, !902}
!925 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !926)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!928 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 55, type: !929, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !932)
!929 = !DISubroutineType(types: !930)
!930 = !{!95, !95, !931}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!932 = !{!933, !934}
!933 = !DILocalVariable(name: "argc", arg: 1, scope: !928, file: !2, line: 55, type: !95)
!934 = !DILocalVariable(name: "argv", arg: 2, scope: !928, file: !2, line: 55, type: !931)
!935 = !DILocation(line: 0, scope: !928)
!936 = !DILocation(line: 59, column: 12, scope: !937)
!937 = distinct !DILexicalBlock(scope: !928, file: !2, line: 59, column: 7)
!938 = !DILocation(line: 59, column: 7, scope: !928)
!939 = !DILocation(line: 62, column: 25, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !2, line: 60, column: 5)
!941 = !DILocation(line: 62, column: 7, scope: !940)
!942 = !DILocation(line: 63, column: 7, scope: !940)
!943 = !DILocation(line: 64, column: 7, scope: !940)
!944 = !DILocation(line: 65, column: 7, scope: !940)
!945 = !DILocation(line: 69, column: 7, scope: !940)
!946 = !DILocation(line: 71, column: 18, scope: !947)
!947 = distinct !DILexicalBlock(scope: !940, file: !2, line: 71, column: 11)
!948 = !DILocation(line: 0, scope: !757, inlinedAt: !949)
!949 = distinct !DILocation(line: 71, column: 11, scope: !947)
!950 = !DILocation(line: 1361, column: 11, scope: !757, inlinedAt: !949)
!951 = !DILocation(line: 1361, column: 10, scope: !757, inlinedAt: !949)
!952 = !DILocation(line: 71, column: 11, scope: !940)
!953 = !DILocation(line: 72, column: 9, scope: !947)
!954 = !DILocation(line: 0, scope: !757, inlinedAt: !955)
!955 = distinct !DILocation(line: 74, column: 11, scope: !956)
!956 = distinct !DILexicalBlock(scope: !940, file: !2, line: 74, column: 11)
!957 = !DILocation(line: 1361, column: 11, scope: !757, inlinedAt: !955)
!958 = !DILocation(line: 1361, column: 10, scope: !757, inlinedAt: !955)
!959 = !DILocation(line: 74, column: 11, scope: !940)
!960 = !DILocation(line: 75, column: 22, scope: !956)
!961 = !DILocation(line: 75, column: 58, scope: !956)
!962 = !DILocation(line: 75, column: 67, scope: !956)
!963 = !DILocation(line: 75, column: 9, scope: !956)
!964 = !DILocation(line: 79, column: 3, scope: !928)
!965 = !DISubprogram(name: "bindtextdomain", scope: !735, file: !735, line: 86, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!966 = !DISubroutineType(types: !967)
!967 = !{!93, !72, !72}
!968 = !DISubprogram(name: "textdomain", scope: !735, file: !735, line: 82, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!969 = !DISubprogram(name: "atexit", scope: !890, file: !890, line: 602, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!970 = !DISubroutineType(types: !971)
!971 = !{!95, !363}
!972 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !298, file: !298, line: 50, type: !973, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !974)
!973 = !DISubroutineType(types: !860)
!974 = !{!975}
!975 = !DILocalVariable(name: "file", arg: 1, scope: !972, file: !298, line: 50, type: !72)
!976 = !DILocation(line: 0, scope: !972)
!977 = !DILocation(line: 52, column: 13, scope: !972)
!978 = !DILocation(line: 53, column: 1, scope: !972)
!979 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !298, file: !298, line: 87, type: !980, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{null, !217}
!982 = !{!983}
!983 = !DILocalVariable(name: "ignore", arg: 1, scope: !979, file: !298, line: 87, type: !217)
!984 = !DILocation(line: 0, scope: !979)
!985 = !DILocation(line: 89, column: 16, scope: !979)
!986 = !{!987, !987, i64 0}
!987 = !{!"_Bool", !726, i64 0}
!988 = !DILocation(line: 90, column: 1, scope: !979)
!989 = distinct !DISubprogram(name: "close_stdout", scope: !298, file: !298, line: 116, type: !364, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !990)
!990 = !{!991}
!991 = !DILocalVariable(name: "write_error", scope: !992, file: !298, line: 121, type: !72)
!992 = distinct !DILexicalBlock(scope: !993, file: !298, line: 120, column: 5)
!993 = distinct !DILexicalBlock(scope: !989, file: !298, line: 118, column: 7)
!994 = !DILocation(line: 118, column: 21, scope: !993)
!995 = !DILocation(line: 118, column: 7, scope: !993)
!996 = !DILocation(line: 118, column: 29, scope: !993)
!997 = !DILocation(line: 119, column: 7, scope: !993)
!998 = !DILocation(line: 119, column: 12, scope: !993)
!999 = !{i8 0, i8 2}
!1000 = !DILocation(line: 119, column: 25, scope: !993)
!1001 = !DILocation(line: 119, column: 28, scope: !993)
!1002 = !DILocation(line: 119, column: 34, scope: !993)
!1003 = !DILocation(line: 118, column: 7, scope: !989)
!1004 = !DILocation(line: 121, column: 33, scope: !992)
!1005 = !DILocation(line: 0, scope: !992)
!1006 = !DILocation(line: 122, column: 11, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !992, file: !298, line: 122, column: 11)
!1008 = !DILocation(line: 0, scope: !1007)
!1009 = !DILocation(line: 122, column: 11, scope: !992)
!1010 = !DILocation(line: 123, column: 9, scope: !1007)
!1011 = !DILocation(line: 126, column: 9, scope: !1007)
!1012 = !DILocation(line: 128, column: 14, scope: !992)
!1013 = !DILocation(line: 128, column: 7, scope: !992)
!1014 = !DILocation(line: 133, column: 42, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !989, file: !298, line: 133, column: 7)
!1016 = !DILocation(line: 133, column: 28, scope: !1015)
!1017 = !DILocation(line: 133, column: 50, scope: !1015)
!1018 = !DILocation(line: 133, column: 7, scope: !989)
!1019 = !DILocation(line: 134, column: 12, scope: !1015)
!1020 = !DILocation(line: 134, column: 5, scope: !1015)
!1021 = !DILocation(line: 135, column: 1, scope: !989)
!1022 = !DISubprogram(name: "__errno_location", scope: !1023, file: !1023, line: 37, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1023 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!1027 = !DISubprogram(name: "_exit", scope: !1028, file: !1028, line: 624, type: !718, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1028 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1029 = distinct !DISubprogram(name: "verror", scope: !313, file: !313, line: 251, type: !1030, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !95, !95, !72, !323}
!1032 = !{!1033, !1034, !1035, !1036}
!1033 = !DILocalVariable(name: "status", arg: 1, scope: !1029, file: !313, line: 251, type: !95)
!1034 = !DILocalVariable(name: "errnum", arg: 2, scope: !1029, file: !313, line: 251, type: !95)
!1035 = !DILocalVariable(name: "message", arg: 3, scope: !1029, file: !313, line: 251, type: !72)
!1036 = !DILocalVariable(name: "args", arg: 4, scope: !1029, file: !313, line: 251, type: !323)
!1037 = !DILocation(line: 0, scope: !1029)
!1038 = !DILocation(line: 261, column: 3, scope: !1029)
!1039 = !DILocation(line: 265, column: 7, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1029, file: !313, line: 265, column: 7)
!1041 = !DILocation(line: 265, column: 7, scope: !1029)
!1042 = !DILocation(line: 266, column: 5, scope: !1040)
!1043 = !DILocation(line: 272, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !313, line: 268, column: 5)
!1045 = !DILocation(line: 276, column: 3, scope: !1029)
!1046 = !{i64 0, i64 8, !724, i64 8, i64 8, !724, i64 16, i64 8, !724, i64 24, i64 4, !745, i64 28, i64 4, !745}
!1047 = !DILocation(line: 282, column: 1, scope: !1029)
!1048 = distinct !DISubprogram(name: "flush_stdout", scope: !313, file: !313, line: 163, type: !364, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1049)
!1049 = !{!1050}
!1050 = !DILocalVariable(name: "stdout_fd", scope: !1048, file: !313, line: 166, type: !95)
!1051 = !DILocation(line: 0, scope: !1048)
!1052 = !DILocalVariable(name: "fd", arg: 1, scope: !1053, file: !313, line: 145, type: !95)
!1053 = distinct !DISubprogram(name: "is_open", scope: !313, file: !313, line: 145, type: !1054, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1056)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!95, !95}
!1056 = !{!1052}
!1057 = !DILocation(line: 0, scope: !1053, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 182, column: 25, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1048, file: !313, line: 182, column: 7)
!1060 = !DILocation(line: 157, column: 15, scope: !1053, inlinedAt: !1058)
!1061 = !DILocation(line: 157, column: 12, scope: !1053, inlinedAt: !1058)
!1062 = !DILocation(line: 182, column: 7, scope: !1048)
!1063 = !DILocation(line: 184, column: 5, scope: !1059)
!1064 = !DILocation(line: 185, column: 1, scope: !1048)
!1065 = !DISubprogram(name: "__fprintf_chk", scope: !739, file: !739, line: 93, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!95, !1068, !95, !742, null}
!1068 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1069)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !1071)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1071, file: !234, line: 51, baseType: !95, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1071, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1071, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1071, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1071, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1071, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1071, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1071, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1071, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1071, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1071, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1071, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1071, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1071, file: !234, line: 70, baseType: !1087, size: 64, offset: 832)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1071, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1071, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1071, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1071, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1071, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1071, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1071, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1071, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1071, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1071, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1071, file: !234, line: 93, baseType: !1087, size: 64, offset: 1344)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1071, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1071, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1071, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1071, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!1103 = distinct !DISubprogram(name: "error_tail", scope: !313, file: !313, line: 219, type: !1030, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1104)
!1104 = !{!1105, !1106, !1107, !1108}
!1105 = !DILocalVariable(name: "status", arg: 1, scope: !1103, file: !313, line: 219, type: !95)
!1106 = !DILocalVariable(name: "errnum", arg: 2, scope: !1103, file: !313, line: 219, type: !95)
!1107 = !DILocalVariable(name: "message", arg: 3, scope: !1103, file: !313, line: 219, type: !72)
!1108 = !DILocalVariable(name: "args", arg: 4, scope: !1103, file: !313, line: 219, type: !323)
!1109 = distinct !DIAssignID()
!1110 = !DILocation(line: 0, scope: !1103)
!1111 = !DILocation(line: 229, column: 13, scope: !1103)
!1112 = !DILocation(line: 135, column: 10, scope: !1113, inlinedAt: !1120)
!1113 = distinct !DISubprogram(name: "vfprintf", scope: !739, file: !739, line: 132, type: !1114, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1116)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!95, !1068, !742, !325}
!1116 = !{!1117, !1118, !1119}
!1117 = !DILocalVariable(name: "__stream", arg: 1, scope: !1113, file: !739, line: 132, type: !1068)
!1118 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1113, file: !739, line: 133, type: !742)
!1119 = !DILocalVariable(name: "__ap", arg: 3, scope: !1113, file: !739, line: 133, type: !325)
!1120 = distinct !DILocation(line: 229, column: 3, scope: !1103)
!1121 = !{!1122, !1124}
!1122 = distinct !{!1122, !1123, !"vfprintf.inline: argument 0"}
!1123 = distinct !{!1123, !"vfprintf.inline"}
!1124 = distinct !{!1124, !1123, !"vfprintf.inline: argument 1"}
!1125 = !DILocation(line: 229, column: 3, scope: !1103)
!1126 = !DILocation(line: 0, scope: !1113, inlinedAt: !1120)
!1127 = !DILocation(line: 232, column: 3, scope: !1103)
!1128 = !DILocation(line: 233, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1103, file: !313, line: 233, column: 7)
!1130 = !DILocation(line: 233, column: 7, scope: !1103)
!1131 = !DILocalVariable(name: "errbuf", scope: !1132, file: !313, line: 193, type: !1136)
!1132 = distinct !DISubprogram(name: "print_errno_message", scope: !313, file: !313, line: 188, type: !718, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1133)
!1133 = !{!1134, !1135, !1131}
!1134 = !DILocalVariable(name: "errnum", arg: 1, scope: !1132, file: !313, line: 188, type: !95)
!1135 = !DILocalVariable(name: "s", scope: !1132, file: !313, line: 190, type: !72)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1137)
!1137 = !{!1138}
!1138 = !DISubrange(count: 1024)
!1139 = !DILocation(line: 0, scope: !1132, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 234, column: 5, scope: !1129)
!1141 = !DILocation(line: 193, column: 3, scope: !1132, inlinedAt: !1140)
!1142 = !DILocation(line: 195, column: 7, scope: !1132, inlinedAt: !1140)
!1143 = !DILocation(line: 207, column: 9, scope: !1144, inlinedAt: !1140)
!1144 = distinct !DILexicalBlock(scope: !1132, file: !313, line: 207, column: 7)
!1145 = !DILocation(line: 207, column: 7, scope: !1132, inlinedAt: !1140)
!1146 = !DILocation(line: 208, column: 9, scope: !1144, inlinedAt: !1140)
!1147 = !DILocation(line: 208, column: 5, scope: !1144, inlinedAt: !1140)
!1148 = !DILocation(line: 214, column: 3, scope: !1132, inlinedAt: !1140)
!1149 = !DILocation(line: 216, column: 1, scope: !1132, inlinedAt: !1140)
!1150 = !DILocation(line: 234, column: 5, scope: !1129)
!1151 = !DILocation(line: 238, column: 3, scope: !1103)
!1152 = !DILocalVariable(name: "__c", arg: 1, scope: !1153, file: !1154, line: 101, type: !95)
!1153 = distinct !DISubprogram(name: "putc_unlocked", scope: !1154, file: !1154, line: 101, type: !1155, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1157)
!1154 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!95, !95, !1069}
!1157 = !{!1152, !1158}
!1158 = !DILocalVariable(name: "__stream", arg: 2, scope: !1153, file: !1154, line: 101, type: !1069)
!1159 = !DILocation(line: 0, scope: !1153, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 238, column: 3, scope: !1103)
!1161 = !DILocation(line: 103, column: 10, scope: !1153, inlinedAt: !1160)
!1162 = !{!1163, !725, i64 40}
!1163 = !{!"_IO_FILE", !746, i64 0, !725, i64 8, !725, i64 16, !725, i64 24, !725, i64 32, !725, i64 40, !725, i64 48, !725, i64 56, !725, i64 64, !725, i64 72, !725, i64 80, !725, i64 88, !725, i64 96, !725, i64 104, !746, i64 112, !746, i64 116, !1164, i64 120, !787, i64 128, !726, i64 130, !726, i64 131, !725, i64 136, !1164, i64 144, !725, i64 152, !725, i64 160, !725, i64 168, !725, i64 176, !1164, i64 184, !746, i64 192, !726, i64 196}
!1164 = !{!"long", !726, i64 0}
!1165 = !{!1163, !725, i64 48}
!1166 = !{!"branch_weights", i32 2000, i32 1}
!1167 = !DILocation(line: 240, column: 3, scope: !1103)
!1168 = !DILocation(line: 241, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1103, file: !313, line: 241, column: 7)
!1170 = !DILocation(line: 241, column: 7, scope: !1103)
!1171 = !DILocation(line: 242, column: 5, scope: !1169)
!1172 = !DILocation(line: 243, column: 1, scope: !1103)
!1173 = !DISubprogram(name: "__vfprintf_chk", scope: !739, file: !739, line: 96, type: !1174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!95, !1068, !95, !742, !325}
!1176 = !DISubprogram(name: "strerror_r", scope: !896, file: !896, line: 444, type: !1177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!93, !95, !93, !97}
!1179 = !DISubprogram(name: "__overflow", scope: !324, file: !324, line: 886, type: !1180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!95, !1069, !95}
!1182 = !DISubprogram(name: "fflush_unlocked", scope: !324, file: !324, line: 239, type: !1183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!95, !1069}
!1185 = !DISubprogram(name: "fcntl", scope: !1186, file: !1186, line: 149, type: !1187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1186 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!95, !95, !95, null}
!1189 = distinct !DISubprogram(name: "error", scope: !313, file: !313, line: 285, type: !1190, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1192)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{null, !95, !95, !72, null}
!1192 = !{!1193, !1194, !1195, !1196}
!1193 = !DILocalVariable(name: "status", arg: 1, scope: !1189, file: !313, line: 285, type: !95)
!1194 = !DILocalVariable(name: "errnum", arg: 2, scope: !1189, file: !313, line: 285, type: !95)
!1195 = !DILocalVariable(name: "message", arg: 3, scope: !1189, file: !313, line: 285, type: !72)
!1196 = !DILocalVariable(name: "ap", scope: !1189, file: !313, line: 287, type: !323)
!1197 = distinct !DIAssignID()
!1198 = !DILocation(line: 0, scope: !1189)
!1199 = !DILocation(line: 287, column: 3, scope: !1189)
!1200 = !DILocation(line: 288, column: 3, scope: !1189)
!1201 = !DILocation(line: 289, column: 3, scope: !1189)
!1202 = !DILocation(line: 290, column: 3, scope: !1189)
!1203 = !DILocation(line: 291, column: 1, scope: !1189)
!1204 = !DILocation(line: 0, scope: !320)
!1205 = !DILocation(line: 302, column: 7, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !320, file: !313, line: 302, column: 7)
!1207 = !DILocation(line: 302, column: 7, scope: !320)
!1208 = !DILocation(line: 307, column: 11, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !313, line: 307, column: 11)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !313, line: 303, column: 5)
!1211 = !DILocation(line: 307, column: 27, scope: !1209)
!1212 = !DILocation(line: 308, column: 11, scope: !1209)
!1213 = !DILocation(line: 308, column: 28, scope: !1209)
!1214 = !DILocation(line: 308, column: 25, scope: !1209)
!1215 = !DILocation(line: 309, column: 15, scope: !1209)
!1216 = !DILocation(line: 309, column: 33, scope: !1209)
!1217 = !DILocation(line: 310, column: 19, scope: !1209)
!1218 = !DILocation(line: 311, column: 22, scope: !1209)
!1219 = !DILocation(line: 311, column: 56, scope: !1209)
!1220 = !DILocation(line: 307, column: 11, scope: !1210)
!1221 = !DILocation(line: 316, column: 21, scope: !1210)
!1222 = !DILocation(line: 317, column: 23, scope: !1210)
!1223 = !DILocation(line: 318, column: 5, scope: !1210)
!1224 = !DILocation(line: 327, column: 3, scope: !320)
!1225 = !DILocation(line: 331, column: 7, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !320, file: !313, line: 331, column: 7)
!1227 = !DILocation(line: 331, column: 7, scope: !320)
!1228 = !DILocation(line: 332, column: 5, scope: !1226)
!1229 = !DILocation(line: 338, column: 7, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !313, line: 334, column: 5)
!1231 = !DILocation(line: 346, column: 3, scope: !320)
!1232 = !DILocation(line: 350, column: 3, scope: !320)
!1233 = !DILocation(line: 356, column: 1, scope: !320)
!1234 = distinct !DISubprogram(name: "error_at_line", scope: !313, file: !313, line: 359, type: !1235, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1237)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !95, !95, !72, !78, !72, null}
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1243}
!1238 = !DILocalVariable(name: "status", arg: 1, scope: !1234, file: !313, line: 359, type: !95)
!1239 = !DILocalVariable(name: "errnum", arg: 2, scope: !1234, file: !313, line: 359, type: !95)
!1240 = !DILocalVariable(name: "file_name", arg: 3, scope: !1234, file: !313, line: 359, type: !72)
!1241 = !DILocalVariable(name: "line_number", arg: 4, scope: !1234, file: !313, line: 360, type: !78)
!1242 = !DILocalVariable(name: "message", arg: 5, scope: !1234, file: !313, line: 360, type: !72)
!1243 = !DILocalVariable(name: "ap", scope: !1234, file: !313, line: 362, type: !323)
!1244 = distinct !DIAssignID()
!1245 = !DILocation(line: 0, scope: !1234)
!1246 = !DILocation(line: 362, column: 3, scope: !1234)
!1247 = !DILocation(line: 363, column: 3, scope: !1234)
!1248 = !DILocation(line: 364, column: 3, scope: !1234)
!1249 = !DILocation(line: 366, column: 3, scope: !1234)
!1250 = !DILocation(line: 367, column: 1, scope: !1234)
!1251 = distinct !DISubprogram(name: "getprogname", scope: !647, file: !647, line: 54, type: !1252, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !646)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!72}
!1254 = !DILocation(line: 58, column: 10, scope: !1251)
!1255 = !DILocation(line: 58, column: 3, scope: !1251)
!1256 = distinct !DISubprogram(name: "set_program_name", scope: !369, file: !369, line: 37, type: !973, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !1257)
!1257 = !{!1258, !1259, !1260}
!1258 = !DILocalVariable(name: "argv0", arg: 1, scope: !1256, file: !369, line: 37, type: !72)
!1259 = !DILocalVariable(name: "slash", scope: !1256, file: !369, line: 44, type: !72)
!1260 = !DILocalVariable(name: "base", scope: !1256, file: !369, line: 45, type: !72)
!1261 = !DILocation(line: 0, scope: !1256)
!1262 = !DILocation(line: 44, column: 23, scope: !1256)
!1263 = !DILocation(line: 45, column: 22, scope: !1256)
!1264 = !DILocation(line: 46, column: 17, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1256, file: !369, line: 46, column: 7)
!1266 = !DILocation(line: 46, column: 9, scope: !1265)
!1267 = !DILocation(line: 46, column: 25, scope: !1265)
!1268 = !DILocation(line: 46, column: 40, scope: !1265)
!1269 = !DILocalVariable(name: "__s1", arg: 1, scope: !1270, file: !758, line: 974, type: !926)
!1270 = distinct !DISubprogram(name: "memeq", scope: !758, file: !758, line: 974, type: !1271, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !1273)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!217, !926, !926, !97}
!1273 = !{!1269, !1274, !1275}
!1274 = !DILocalVariable(name: "__s2", arg: 2, scope: !1270, file: !758, line: 974, type: !926)
!1275 = !DILocalVariable(name: "__n", arg: 3, scope: !1270, file: !758, line: 974, type: !97)
!1276 = !DILocation(line: 0, scope: !1270, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 46, column: 28, scope: !1265)
!1278 = !DILocation(line: 976, column: 11, scope: !1270, inlinedAt: !1277)
!1279 = !DILocation(line: 976, column: 10, scope: !1270, inlinedAt: !1277)
!1280 = !DILocation(line: 46, column: 7, scope: !1256)
!1281 = !DILocation(line: 49, column: 11, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !369, line: 49, column: 11)
!1283 = distinct !DILexicalBlock(scope: !1265, file: !369, line: 47, column: 5)
!1284 = !DILocation(line: 49, column: 36, scope: !1282)
!1285 = !DILocation(line: 49, column: 11, scope: !1283)
!1286 = !DILocation(line: 65, column: 16, scope: !1256)
!1287 = !DILocation(line: 71, column: 27, scope: !1256)
!1288 = !DILocation(line: 74, column: 33, scope: !1256)
!1289 = !DILocation(line: 76, column: 1, scope: !1256)
!1290 = !DISubprogram(name: "strrchr", scope: !896, file: !896, line: 273, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1291 = distinct !DIAssignID()
!1292 = !DILocation(line: 0, scope: !378)
!1293 = distinct !DIAssignID()
!1294 = !DILocation(line: 40, column: 29, scope: !378)
!1295 = !DILocation(line: 41, column: 19, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !378, file: !379, line: 41, column: 7)
!1297 = !DILocation(line: 41, column: 7, scope: !378)
!1298 = !DILocation(line: 47, column: 3, scope: !378)
!1299 = !DILocation(line: 48, column: 3, scope: !378)
!1300 = !DILocalVariable(name: "ps", arg: 1, scope: !1301, file: !1302, line: 1135, type: !1305)
!1301 = distinct !DISubprogram(name: "mbszero", scope: !1302, file: !1302, line: 1135, type: !1303, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !1306)
!1302 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1303 = !DISubroutineType(types: !1304)
!1304 = !{null, !1305}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!1306 = !{!1300}
!1307 = !DILocation(line: 0, scope: !1301, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 48, column: 18, scope: !378)
!1309 = !DILocalVariable(name: "__dest", arg: 1, scope: !1310, file: !1311, line: 57, type: !94)
!1310 = distinct !DISubprogram(name: "memset", scope: !1311, file: !1311, line: 57, type: !1312, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !1314)
!1311 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!94, !94, !95, !97}
!1314 = !{!1309, !1315, !1316}
!1315 = !DILocalVariable(name: "__ch", arg: 2, scope: !1310, file: !1311, line: 57, type: !95)
!1316 = !DILocalVariable(name: "__len", arg: 3, scope: !1310, file: !1311, line: 57, type: !97)
!1317 = !DILocation(line: 0, scope: !1310, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 1137, column: 3, scope: !1301, inlinedAt: !1308)
!1319 = !DILocation(line: 59, column: 10, scope: !1310, inlinedAt: !1318)
!1320 = !DILocation(line: 49, column: 7, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !378, file: !379, line: 49, column: 7)
!1322 = !DILocation(line: 49, column: 39, scope: !1321)
!1323 = !DILocation(line: 49, column: 44, scope: !1321)
!1324 = !DILocation(line: 54, column: 1, scope: !378)
!1325 = !DISubprogram(name: "mbrtoc32", scope: !390, file: !390, line: 57, type: !1326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!97, !1328, !742, !97, !1330}
!1328 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1329)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1305)
!1331 = distinct !DISubprogram(name: "clone_quoting_options", scope: !409, file: !409, line: 113, type: !1332, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1335)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!1334, !1334}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!1335 = !{!1336, !1337, !1338}
!1336 = !DILocalVariable(name: "o", arg: 1, scope: !1331, file: !409, line: 113, type: !1334)
!1337 = !DILocalVariable(name: "saved_errno", scope: !1331, file: !409, line: 115, type: !95)
!1338 = !DILocalVariable(name: "p", scope: !1331, file: !409, line: 116, type: !1334)
!1339 = !DILocation(line: 0, scope: !1331)
!1340 = !DILocation(line: 115, column: 21, scope: !1331)
!1341 = !DILocation(line: 116, column: 40, scope: !1331)
!1342 = !DILocation(line: 116, column: 31, scope: !1331)
!1343 = !DILocation(line: 118, column: 9, scope: !1331)
!1344 = !DILocation(line: 119, column: 3, scope: !1331)
!1345 = distinct !DISubprogram(name: "get_quoting_style", scope: !409, file: !409, line: 124, type: !1346, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1350)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!432, !1348}
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!1350 = !{!1351}
!1351 = !DILocalVariable(name: "o", arg: 1, scope: !1345, file: !409, line: 124, type: !1348)
!1352 = !DILocation(line: 0, scope: !1345)
!1353 = !DILocation(line: 126, column: 11, scope: !1345)
!1354 = !DILocation(line: 126, column: 46, scope: !1345)
!1355 = !{!1356, !746, i64 0}
!1356 = !{!"quoting_options", !746, i64 0, !746, i64 4, !726, i64 8, !725, i64 40, !725, i64 48}
!1357 = !DILocation(line: 126, column: 3, scope: !1345)
!1358 = distinct !DISubprogram(name: "set_quoting_style", scope: !409, file: !409, line: 132, type: !1359, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1361)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{null, !1334, !432}
!1361 = !{!1362, !1363}
!1362 = !DILocalVariable(name: "o", arg: 1, scope: !1358, file: !409, line: 132, type: !1334)
!1363 = !DILocalVariable(name: "s", arg: 2, scope: !1358, file: !409, line: 132, type: !432)
!1364 = !DILocation(line: 0, scope: !1358)
!1365 = !DILocation(line: 134, column: 4, scope: !1358)
!1366 = !DILocation(line: 134, column: 45, scope: !1358)
!1367 = !DILocation(line: 135, column: 1, scope: !1358)
!1368 = distinct !DISubprogram(name: "set_char_quoting", scope: !409, file: !409, line: 143, type: !1369, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1371)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!95, !1334, !4, !95}
!1371 = !{!1372, !1373, !1374, !1375, !1376, !1378, !1379}
!1372 = !DILocalVariable(name: "o", arg: 1, scope: !1368, file: !409, line: 143, type: !1334)
!1373 = !DILocalVariable(name: "c", arg: 2, scope: !1368, file: !409, line: 143, type: !4)
!1374 = !DILocalVariable(name: "i", arg: 3, scope: !1368, file: !409, line: 143, type: !95)
!1375 = !DILocalVariable(name: "uc", scope: !1368, file: !409, line: 145, type: !100)
!1376 = !DILocalVariable(name: "p", scope: !1368, file: !409, line: 146, type: !1377)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!1378 = !DILocalVariable(name: "shift", scope: !1368, file: !409, line: 148, type: !95)
!1379 = !DILocalVariable(name: "r", scope: !1368, file: !409, line: 149, type: !78)
!1380 = !DILocation(line: 0, scope: !1368)
!1381 = !DILocation(line: 147, column: 6, scope: !1368)
!1382 = !DILocation(line: 147, column: 41, scope: !1368)
!1383 = !DILocation(line: 147, column: 62, scope: !1368)
!1384 = !DILocation(line: 147, column: 57, scope: !1368)
!1385 = !DILocation(line: 148, column: 15, scope: !1368)
!1386 = !DILocation(line: 149, column: 21, scope: !1368)
!1387 = !DILocation(line: 149, column: 24, scope: !1368)
!1388 = !DILocation(line: 149, column: 34, scope: !1368)
!1389 = !DILocation(line: 150, column: 19, scope: !1368)
!1390 = !DILocation(line: 150, column: 24, scope: !1368)
!1391 = !DILocation(line: 150, column: 6, scope: !1368)
!1392 = !DILocation(line: 151, column: 3, scope: !1368)
!1393 = distinct !DISubprogram(name: "set_quoting_flags", scope: !409, file: !409, line: 159, type: !1394, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1396)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!95, !1334, !95}
!1396 = !{!1397, !1398, !1399}
!1397 = !DILocalVariable(name: "o", arg: 1, scope: !1393, file: !409, line: 159, type: !1334)
!1398 = !DILocalVariable(name: "i", arg: 2, scope: !1393, file: !409, line: 159, type: !95)
!1399 = !DILocalVariable(name: "r", scope: !1393, file: !409, line: 163, type: !95)
!1400 = !DILocation(line: 0, scope: !1393)
!1401 = !DILocation(line: 161, column: 8, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1393, file: !409, line: 161, column: 7)
!1403 = !DILocation(line: 161, column: 7, scope: !1393)
!1404 = !DILocation(line: 163, column: 14, scope: !1393)
!1405 = !{!1356, !746, i64 4}
!1406 = !DILocation(line: 164, column: 12, scope: !1393)
!1407 = !DILocation(line: 165, column: 3, scope: !1393)
!1408 = distinct !DISubprogram(name: "set_custom_quoting", scope: !409, file: !409, line: 169, type: !1409, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1411)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{null, !1334, !72, !72}
!1411 = !{!1412, !1413, !1414}
!1412 = !DILocalVariable(name: "o", arg: 1, scope: !1408, file: !409, line: 169, type: !1334)
!1413 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1408, file: !409, line: 170, type: !72)
!1414 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1408, file: !409, line: 170, type: !72)
!1415 = !DILocation(line: 0, scope: !1408)
!1416 = !DILocation(line: 172, column: 8, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1408, file: !409, line: 172, column: 7)
!1418 = !DILocation(line: 172, column: 7, scope: !1408)
!1419 = !DILocation(line: 174, column: 12, scope: !1408)
!1420 = !DILocation(line: 175, column: 8, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1408, file: !409, line: 175, column: 7)
!1422 = !DILocation(line: 175, column: 19, scope: !1421)
!1423 = !DILocation(line: 176, column: 5, scope: !1421)
!1424 = !DILocation(line: 177, column: 6, scope: !1408)
!1425 = !DILocation(line: 177, column: 17, scope: !1408)
!1426 = !{!1356, !725, i64 40}
!1427 = !DILocation(line: 178, column: 6, scope: !1408)
!1428 = !DILocation(line: 178, column: 18, scope: !1408)
!1429 = !{!1356, !725, i64 48}
!1430 = !DILocation(line: 179, column: 1, scope: !1408)
!1431 = !DISubprogram(name: "abort", scope: !890, file: !890, line: 598, type: !364, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1432 = distinct !DISubprogram(name: "quotearg_buffer", scope: !409, file: !409, line: 774, type: !1433, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1435)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!97, !93, !97, !72, !97, !1348}
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443}
!1436 = !DILocalVariable(name: "buffer", arg: 1, scope: !1432, file: !409, line: 774, type: !93)
!1437 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1432, file: !409, line: 774, type: !97)
!1438 = !DILocalVariable(name: "arg", arg: 3, scope: !1432, file: !409, line: 775, type: !72)
!1439 = !DILocalVariable(name: "argsize", arg: 4, scope: !1432, file: !409, line: 775, type: !97)
!1440 = !DILocalVariable(name: "o", arg: 5, scope: !1432, file: !409, line: 776, type: !1348)
!1441 = !DILocalVariable(name: "p", scope: !1432, file: !409, line: 778, type: !1348)
!1442 = !DILocalVariable(name: "saved_errno", scope: !1432, file: !409, line: 779, type: !95)
!1443 = !DILocalVariable(name: "r", scope: !1432, file: !409, line: 780, type: !97)
!1444 = !DILocation(line: 0, scope: !1432)
!1445 = !DILocation(line: 778, column: 37, scope: !1432)
!1446 = !DILocation(line: 779, column: 21, scope: !1432)
!1447 = !DILocation(line: 781, column: 43, scope: !1432)
!1448 = !DILocation(line: 781, column: 53, scope: !1432)
!1449 = !DILocation(line: 781, column: 63, scope: !1432)
!1450 = !DILocation(line: 782, column: 43, scope: !1432)
!1451 = !DILocation(line: 782, column: 58, scope: !1432)
!1452 = !DILocation(line: 780, column: 14, scope: !1432)
!1453 = !DILocation(line: 783, column: 9, scope: !1432)
!1454 = !DILocation(line: 784, column: 3, scope: !1432)
!1455 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !409, file: !409, line: 251, type: !1456, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1460)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!97, !93, !97, !72, !97, !432, !95, !1458, !72, !72}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!1460 = !{!1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1486, !1488, !1491, !1492, !1493, !1494, !1497, !1498, !1500, !1501, !1504, !1508, !1509, !1517, !1520, !1521, !1522}
!1461 = !DILocalVariable(name: "buffer", arg: 1, scope: !1455, file: !409, line: 251, type: !93)
!1462 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1455, file: !409, line: 251, type: !97)
!1463 = !DILocalVariable(name: "arg", arg: 3, scope: !1455, file: !409, line: 252, type: !72)
!1464 = !DILocalVariable(name: "argsize", arg: 4, scope: !1455, file: !409, line: 252, type: !97)
!1465 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1455, file: !409, line: 253, type: !432)
!1466 = !DILocalVariable(name: "flags", arg: 6, scope: !1455, file: !409, line: 253, type: !95)
!1467 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1455, file: !409, line: 254, type: !1458)
!1468 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1455, file: !409, line: 255, type: !72)
!1469 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1455, file: !409, line: 256, type: !72)
!1470 = !DILocalVariable(name: "unibyte_locale", scope: !1455, file: !409, line: 258, type: !217)
!1471 = !DILocalVariable(name: "len", scope: !1455, file: !409, line: 260, type: !97)
!1472 = !DILocalVariable(name: "orig_buffersize", scope: !1455, file: !409, line: 261, type: !97)
!1473 = !DILocalVariable(name: "quote_string", scope: !1455, file: !409, line: 262, type: !72)
!1474 = !DILocalVariable(name: "quote_string_len", scope: !1455, file: !409, line: 263, type: !97)
!1475 = !DILocalVariable(name: "backslash_escapes", scope: !1455, file: !409, line: 264, type: !217)
!1476 = !DILocalVariable(name: "elide_outer_quotes", scope: !1455, file: !409, line: 265, type: !217)
!1477 = !DILocalVariable(name: "encountered_single_quote", scope: !1455, file: !409, line: 266, type: !217)
!1478 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1455, file: !409, line: 267, type: !217)
!1479 = !DILabel(scope: !1455, name: "process_input", file: !409, line: 308)
!1480 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1455, file: !409, line: 309, type: !217)
!1481 = !DILocalVariable(name: "lq", scope: !1482, file: !409, line: 361, type: !72)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !409, line: 361, column: 11)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !409, line: 360, column: 13)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !409, line: 333, column: 7)
!1485 = distinct !DILexicalBlock(scope: !1455, file: !409, line: 312, column: 5)
!1486 = !DILocalVariable(name: "i", scope: !1487, file: !409, line: 395, type: !97)
!1487 = distinct !DILexicalBlock(scope: !1455, file: !409, line: 395, column: 3)
!1488 = !DILocalVariable(name: "is_right_quote", scope: !1489, file: !409, line: 397, type: !217)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !409, line: 396, column: 5)
!1490 = distinct !DILexicalBlock(scope: !1487, file: !409, line: 395, column: 3)
!1491 = !DILocalVariable(name: "escaping", scope: !1489, file: !409, line: 398, type: !217)
!1492 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1489, file: !409, line: 399, type: !217)
!1493 = !DILocalVariable(name: "c", scope: !1489, file: !409, line: 417, type: !100)
!1494 = !DILabel(scope: !1495, name: "c_and_shell_escape", file: !409, line: 502)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !409, line: 478, column: 9)
!1496 = distinct !DILexicalBlock(scope: !1489, file: !409, line: 419, column: 9)
!1497 = !DILabel(scope: !1495, name: "c_escape", file: !409, line: 507)
!1498 = !DILocalVariable(name: "m", scope: !1499, file: !409, line: 598, type: !97)
!1499 = distinct !DILexicalBlock(scope: !1496, file: !409, line: 596, column: 11)
!1500 = !DILocalVariable(name: "printable", scope: !1499, file: !409, line: 600, type: !217)
!1501 = !DILocalVariable(name: "mbs", scope: !1502, file: !409, line: 609, type: !493)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !409, line: 608, column: 15)
!1503 = distinct !DILexicalBlock(scope: !1499, file: !409, line: 602, column: 17)
!1504 = !DILocalVariable(name: "w", scope: !1505, file: !409, line: 618, type: !389)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !409, line: 617, column: 19)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !409, line: 616, column: 17)
!1507 = distinct !DILexicalBlock(scope: !1502, file: !409, line: 616, column: 17)
!1508 = !DILocalVariable(name: "bytes", scope: !1505, file: !409, line: 619, type: !97)
!1509 = !DILocalVariable(name: "j", scope: !1510, file: !409, line: 648, type: !97)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !409, line: 648, column: 29)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !409, line: 647, column: 27)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !409, line: 645, column: 29)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !409, line: 636, column: 23)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !409, line: 628, column: 30)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !409, line: 623, column: 30)
!1516 = distinct !DILexicalBlock(scope: !1505, file: !409, line: 621, column: 25)
!1517 = !DILocalVariable(name: "ilim", scope: !1518, file: !409, line: 674, type: !97)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !409, line: 671, column: 15)
!1519 = distinct !DILexicalBlock(scope: !1499, file: !409, line: 670, column: 17)
!1520 = !DILabel(scope: !1489, name: "store_escape", file: !409, line: 709)
!1521 = !DILabel(scope: !1489, name: "store_c", file: !409, line: 712)
!1522 = !DILabel(scope: !1455, name: "force_outer_quoting_style", file: !409, line: 753)
!1523 = distinct !DIAssignID()
!1524 = distinct !DIAssignID()
!1525 = distinct !DIAssignID()
!1526 = distinct !DIAssignID()
!1527 = distinct !DIAssignID()
!1528 = !DILocation(line: 0, scope: !1502)
!1529 = distinct !DIAssignID()
!1530 = !DILocation(line: 0, scope: !1505)
!1531 = !DILocation(line: 0, scope: !1455)
!1532 = !DILocation(line: 258, column: 25, scope: !1455)
!1533 = !DILocation(line: 258, column: 36, scope: !1455)
!1534 = !DILocation(line: 267, column: 3, scope: !1455)
!1535 = !DILocation(line: 261, column: 10, scope: !1455)
!1536 = !DILocation(line: 262, column: 15, scope: !1455)
!1537 = !DILocation(line: 263, column: 10, scope: !1455)
!1538 = !DILocation(line: 308, column: 2, scope: !1455)
!1539 = !DILocation(line: 311, column: 3, scope: !1455)
!1540 = !DILocation(line: 318, column: 11, scope: !1485)
!1541 = !DILocation(line: 319, column: 9, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !409, line: 319, column: 9)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !409, line: 319, column: 9)
!1544 = distinct !DILexicalBlock(scope: !1485, file: !409, line: 318, column: 11)
!1545 = !DILocation(line: 319, column: 9, scope: !1543)
!1546 = !DILocation(line: 0, scope: !484, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 357, column: 26, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !409, line: 335, column: 11)
!1549 = distinct !DILexicalBlock(scope: !1484, file: !409, line: 334, column: 13)
!1550 = !DILocation(line: 199, column: 29, scope: !484, inlinedAt: !1547)
!1551 = !DILocation(line: 201, column: 19, scope: !1552, inlinedAt: !1547)
!1552 = distinct !DILexicalBlock(scope: !484, file: !409, line: 201, column: 7)
!1553 = !DILocation(line: 201, column: 7, scope: !484, inlinedAt: !1547)
!1554 = !DILocation(line: 229, column: 3, scope: !484, inlinedAt: !1547)
!1555 = !DILocation(line: 230, column: 3, scope: !484, inlinedAt: !1547)
!1556 = !DILocalVariable(name: "ps", arg: 1, scope: !1557, file: !1302, line: 1135, type: !1560)
!1557 = distinct !DISubprogram(name: "mbszero", scope: !1302, file: !1302, line: 1135, type: !1558, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1561)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{null, !1560}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!1561 = !{!1556}
!1562 = !DILocation(line: 0, scope: !1557, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 230, column: 18, scope: !484, inlinedAt: !1547)
!1564 = !DILocalVariable(name: "__dest", arg: 1, scope: !1565, file: !1311, line: 57, type: !94)
!1565 = distinct !DISubprogram(name: "memset", scope: !1311, file: !1311, line: 57, type: !1312, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1566)
!1566 = !{!1564, !1567, !1568}
!1567 = !DILocalVariable(name: "__ch", arg: 2, scope: !1565, file: !1311, line: 57, type: !95)
!1568 = !DILocalVariable(name: "__len", arg: 3, scope: !1565, file: !1311, line: 57, type: !97)
!1569 = !DILocation(line: 0, scope: !1565, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 1137, column: 3, scope: !1557, inlinedAt: !1563)
!1571 = !DILocation(line: 59, column: 10, scope: !1565, inlinedAt: !1570)
!1572 = !DILocation(line: 231, column: 7, scope: !1573, inlinedAt: !1547)
!1573 = distinct !DILexicalBlock(scope: !484, file: !409, line: 231, column: 7)
!1574 = !DILocation(line: 231, column: 40, scope: !1573, inlinedAt: !1547)
!1575 = !DILocation(line: 231, column: 45, scope: !1573, inlinedAt: !1547)
!1576 = !DILocation(line: 235, column: 1, scope: !484, inlinedAt: !1547)
!1577 = !DILocation(line: 0, scope: !484, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 358, column: 27, scope: !1548)
!1579 = !DILocation(line: 199, column: 29, scope: !484, inlinedAt: !1578)
!1580 = !DILocation(line: 201, column: 19, scope: !1552, inlinedAt: !1578)
!1581 = !DILocation(line: 201, column: 7, scope: !484, inlinedAt: !1578)
!1582 = !DILocation(line: 229, column: 3, scope: !484, inlinedAt: !1578)
!1583 = !DILocation(line: 230, column: 3, scope: !484, inlinedAt: !1578)
!1584 = !DILocation(line: 0, scope: !1557, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 230, column: 18, scope: !484, inlinedAt: !1578)
!1586 = !DILocation(line: 0, scope: !1565, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 1137, column: 3, scope: !1557, inlinedAt: !1585)
!1588 = !DILocation(line: 59, column: 10, scope: !1565, inlinedAt: !1587)
!1589 = !DILocation(line: 231, column: 7, scope: !1573, inlinedAt: !1578)
!1590 = !DILocation(line: 231, column: 40, scope: !1573, inlinedAt: !1578)
!1591 = !DILocation(line: 231, column: 45, scope: !1573, inlinedAt: !1578)
!1592 = !DILocation(line: 235, column: 1, scope: !484, inlinedAt: !1578)
!1593 = !DILocation(line: 360, column: 13, scope: !1484)
!1594 = !DILocation(line: 0, scope: !1482)
!1595 = !DILocation(line: 361, column: 45, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1482, file: !409, line: 361, column: 11)
!1597 = !DILocation(line: 361, column: 11, scope: !1482)
!1598 = !DILocation(line: 362, column: 13, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !409, line: 362, column: 13)
!1600 = distinct !DILexicalBlock(scope: !1596, file: !409, line: 362, column: 13)
!1601 = !DILocation(line: 362, column: 13, scope: !1600)
!1602 = !DILocation(line: 361, column: 52, scope: !1596)
!1603 = distinct !{!1603, !1597, !1604, !792}
!1604 = !DILocation(line: 362, column: 13, scope: !1482)
!1605 = !DILocation(line: 365, column: 28, scope: !1484)
!1606 = !DILocation(line: 260, column: 10, scope: !1455)
!1607 = !DILocation(line: 367, column: 7, scope: !1485)
!1608 = !DILocation(line: 373, column: 7, scope: !1485)
!1609 = !DILocation(line: 381, column: 11, scope: !1485)
!1610 = !DILocation(line: 376, column: 11, scope: !1485)
!1611 = !DILocation(line: 382, column: 9, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !409, line: 382, column: 9)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !409, line: 382, column: 9)
!1614 = distinct !DILexicalBlock(scope: !1485, file: !409, line: 381, column: 11)
!1615 = !DILocation(line: 382, column: 9, scope: !1613)
!1616 = !DILocation(line: 389, column: 7, scope: !1485)
!1617 = !DILocation(line: 392, column: 7, scope: !1485)
!1618 = !DILocation(line: 0, scope: !1487)
!1619 = !DILocation(line: 395, column: 8, scope: !1487)
!1620 = !DILocation(line: 395, scope: !1487)
!1621 = !DILocation(line: 395, column: 34, scope: !1490)
!1622 = !DILocation(line: 395, column: 26, scope: !1490)
!1623 = !DILocation(line: 395, column: 48, scope: !1490)
!1624 = !DILocation(line: 395, column: 55, scope: !1490)
!1625 = !DILocation(line: 395, column: 3, scope: !1487)
!1626 = !DILocation(line: 395, column: 67, scope: !1490)
!1627 = !DILocation(line: 0, scope: !1489)
!1628 = !DILocation(line: 402, column: 11, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1489, file: !409, line: 401, column: 11)
!1630 = !DILocation(line: 404, column: 17, scope: !1629)
!1631 = !DILocation(line: 405, column: 39, scope: !1629)
!1632 = !DILocation(line: 409, column: 32, scope: !1629)
!1633 = !DILocation(line: 405, column: 19, scope: !1629)
!1634 = !DILocation(line: 405, column: 15, scope: !1629)
!1635 = !DILocation(line: 410, column: 11, scope: !1629)
!1636 = !DILocation(line: 410, column: 25, scope: !1629)
!1637 = !DILocalVariable(name: "__s1", arg: 1, scope: !1638, file: !758, line: 974, type: !926)
!1638 = distinct !DISubprogram(name: "memeq", scope: !758, file: !758, line: 974, type: !1271, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1639)
!1639 = !{!1637, !1640, !1641}
!1640 = !DILocalVariable(name: "__s2", arg: 2, scope: !1638, file: !758, line: 974, type: !926)
!1641 = !DILocalVariable(name: "__n", arg: 3, scope: !1638, file: !758, line: 974, type: !97)
!1642 = !DILocation(line: 0, scope: !1638, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 410, column: 14, scope: !1629)
!1644 = !DILocation(line: 976, column: 11, scope: !1638, inlinedAt: !1643)
!1645 = !DILocation(line: 976, column: 10, scope: !1638, inlinedAt: !1643)
!1646 = !DILocation(line: 401, column: 11, scope: !1489)
!1647 = !DILocation(line: 417, column: 25, scope: !1489)
!1648 = !DILocation(line: 418, column: 7, scope: !1489)
!1649 = !DILocation(line: 421, column: 15, scope: !1496)
!1650 = !DILocation(line: 423, column: 15, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !409, line: 423, column: 15)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !409, line: 422, column: 13)
!1653 = distinct !DILexicalBlock(scope: !1496, file: !409, line: 421, column: 15)
!1654 = !DILocation(line: 423, column: 15, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1651, file: !409, line: 423, column: 15)
!1656 = !DILocation(line: 423, column: 15, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !409, line: 423, column: 15)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !409, line: 423, column: 15)
!1659 = distinct !DILexicalBlock(scope: !1655, file: !409, line: 423, column: 15)
!1660 = !DILocation(line: 423, column: 15, scope: !1658)
!1661 = !DILocation(line: 423, column: 15, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !409, line: 423, column: 15)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !409, line: 423, column: 15)
!1664 = !DILocation(line: 423, column: 15, scope: !1663)
!1665 = !DILocation(line: 423, column: 15, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !409, line: 423, column: 15)
!1667 = distinct !DILexicalBlock(scope: !1659, file: !409, line: 423, column: 15)
!1668 = !DILocation(line: 423, column: 15, scope: !1667)
!1669 = !DILocation(line: 423, column: 15, scope: !1659)
!1670 = !DILocation(line: 423, column: 15, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !409, line: 423, column: 15)
!1672 = distinct !DILexicalBlock(scope: !1651, file: !409, line: 423, column: 15)
!1673 = !DILocation(line: 423, column: 15, scope: !1672)
!1674 = !DILocation(line: 431, column: 19, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1652, file: !409, line: 430, column: 19)
!1676 = !DILocation(line: 431, column: 24, scope: !1675)
!1677 = !DILocation(line: 431, column: 28, scope: !1675)
!1678 = !DILocation(line: 431, column: 38, scope: !1675)
!1679 = !DILocation(line: 431, column: 48, scope: !1675)
!1680 = !DILocation(line: 431, column: 59, scope: !1675)
!1681 = !DILocation(line: 433, column: 19, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !409, line: 433, column: 19)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !409, line: 433, column: 19)
!1684 = distinct !DILexicalBlock(scope: !1675, file: !409, line: 432, column: 17)
!1685 = !DILocation(line: 433, column: 19, scope: !1683)
!1686 = !DILocation(line: 434, column: 19, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !409, line: 434, column: 19)
!1688 = distinct !DILexicalBlock(scope: !1684, file: !409, line: 434, column: 19)
!1689 = !DILocation(line: 434, column: 19, scope: !1688)
!1690 = !DILocation(line: 435, column: 17, scope: !1684)
!1691 = !DILocation(line: 442, column: 20, scope: !1653)
!1692 = !DILocation(line: 447, column: 11, scope: !1496)
!1693 = !DILocation(line: 450, column: 19, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1496, file: !409, line: 448, column: 13)
!1695 = !DILocation(line: 456, column: 19, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1694, file: !409, line: 455, column: 19)
!1697 = !DILocation(line: 456, column: 24, scope: !1696)
!1698 = !DILocation(line: 456, column: 28, scope: !1696)
!1699 = !DILocation(line: 456, column: 38, scope: !1696)
!1700 = !DILocation(line: 456, column: 41, scope: !1696)
!1701 = !DILocation(line: 456, column: 52, scope: !1696)
!1702 = !DILocation(line: 455, column: 19, scope: !1694)
!1703 = !DILocation(line: 457, column: 25, scope: !1696)
!1704 = !DILocation(line: 457, column: 17, scope: !1696)
!1705 = !DILocation(line: 464, column: 25, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1696, file: !409, line: 458, column: 19)
!1707 = !DILocation(line: 468, column: 21, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !409, line: 468, column: 21)
!1709 = distinct !DILexicalBlock(scope: !1706, file: !409, line: 468, column: 21)
!1710 = !DILocation(line: 468, column: 21, scope: !1709)
!1711 = !DILocation(line: 469, column: 21, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !409, line: 469, column: 21)
!1713 = distinct !DILexicalBlock(scope: !1706, file: !409, line: 469, column: 21)
!1714 = !DILocation(line: 469, column: 21, scope: !1713)
!1715 = !DILocation(line: 470, column: 21, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !409, line: 470, column: 21)
!1717 = distinct !DILexicalBlock(scope: !1706, file: !409, line: 470, column: 21)
!1718 = !DILocation(line: 470, column: 21, scope: !1717)
!1719 = !DILocation(line: 471, column: 21, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !409, line: 471, column: 21)
!1721 = distinct !DILexicalBlock(scope: !1706, file: !409, line: 471, column: 21)
!1722 = !DILocation(line: 471, column: 21, scope: !1721)
!1723 = !DILocation(line: 472, column: 21, scope: !1706)
!1724 = !DILocation(line: 482, column: 33, scope: !1495)
!1725 = !DILocation(line: 483, column: 33, scope: !1495)
!1726 = !DILocation(line: 485, column: 33, scope: !1495)
!1727 = !DILocation(line: 486, column: 33, scope: !1495)
!1728 = !DILocation(line: 487, column: 33, scope: !1495)
!1729 = !DILocation(line: 490, column: 17, scope: !1495)
!1730 = !DILocation(line: 492, column: 21, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !409, line: 491, column: 15)
!1732 = distinct !DILexicalBlock(scope: !1495, file: !409, line: 490, column: 17)
!1733 = !DILocation(line: 499, column: 35, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1495, file: !409, line: 499, column: 17)
!1735 = !DILocation(line: 0, scope: !1495)
!1736 = !DILocation(line: 502, column: 11, scope: !1495)
!1737 = !DILocation(line: 504, column: 17, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1495, file: !409, line: 503, column: 17)
!1739 = !DILocation(line: 507, column: 11, scope: !1495)
!1740 = !DILocation(line: 508, column: 17, scope: !1495)
!1741 = !DILocation(line: 517, column: 15, scope: !1496)
!1742 = !DILocation(line: 517, column: 40, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1496, file: !409, line: 517, column: 15)
!1744 = !DILocation(line: 517, column: 47, scope: !1743)
!1745 = !DILocation(line: 517, column: 18, scope: !1743)
!1746 = !DILocation(line: 521, column: 17, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1496, file: !409, line: 521, column: 15)
!1748 = !DILocation(line: 521, column: 15, scope: !1496)
!1749 = !DILocation(line: 525, column: 11, scope: !1496)
!1750 = !DILocation(line: 537, column: 15, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1496, file: !409, line: 536, column: 15)
!1752 = !DILocation(line: 536, column: 15, scope: !1496)
!1753 = !DILocation(line: 544, column: 15, scope: !1496)
!1754 = !DILocation(line: 546, column: 19, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !409, line: 545, column: 13)
!1756 = distinct !DILexicalBlock(scope: !1496, file: !409, line: 544, column: 15)
!1757 = !DILocation(line: 549, column: 19, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1755, file: !409, line: 549, column: 19)
!1759 = !DILocation(line: 549, column: 30, scope: !1758)
!1760 = !DILocation(line: 558, column: 15, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !409, line: 558, column: 15)
!1762 = distinct !DILexicalBlock(scope: !1755, file: !409, line: 558, column: 15)
!1763 = !DILocation(line: 558, column: 15, scope: !1762)
!1764 = !DILocation(line: 559, column: 15, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !409, line: 559, column: 15)
!1766 = distinct !DILexicalBlock(scope: !1755, file: !409, line: 559, column: 15)
!1767 = !DILocation(line: 559, column: 15, scope: !1766)
!1768 = !DILocation(line: 560, column: 15, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !409, line: 560, column: 15)
!1770 = distinct !DILexicalBlock(scope: !1755, file: !409, line: 560, column: 15)
!1771 = !DILocation(line: 560, column: 15, scope: !1770)
!1772 = !DILocation(line: 562, column: 13, scope: !1755)
!1773 = !DILocation(line: 602, column: 17, scope: !1499)
!1774 = !DILocation(line: 0, scope: !1499)
!1775 = !DILocation(line: 605, column: 29, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1503, file: !409, line: 603, column: 15)
!1777 = !DILocation(line: 605, column: 41, scope: !1776)
!1778 = !DILocation(line: 606, column: 15, scope: !1776)
!1779 = !DILocation(line: 609, column: 17, scope: !1502)
!1780 = !DILocation(line: 0, scope: !1557, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 609, column: 32, scope: !1502)
!1782 = !DILocation(line: 0, scope: !1565, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 1137, column: 3, scope: !1557, inlinedAt: !1781)
!1784 = !DILocation(line: 59, column: 10, scope: !1565, inlinedAt: !1783)
!1785 = !DILocation(line: 613, column: 29, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1502, file: !409, line: 613, column: 21)
!1787 = !DILocation(line: 613, column: 21, scope: !1502)
!1788 = !DILocation(line: 614, column: 29, scope: !1786)
!1789 = !DILocation(line: 614, column: 19, scope: !1786)
!1790 = !DILocation(line: 618, column: 21, scope: !1505)
!1791 = !DILocation(line: 620, column: 54, scope: !1505)
!1792 = !DILocation(line: 619, column: 36, scope: !1505)
!1793 = !DILocation(line: 621, column: 25, scope: !1505)
!1794 = !DILocation(line: 631, column: 38, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1514, file: !409, line: 629, column: 23)
!1796 = !DILocation(line: 631, column: 48, scope: !1795)
!1797 = !DILocation(line: 631, column: 25, scope: !1795)
!1798 = !DILocation(line: 626, column: 25, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1515, file: !409, line: 624, column: 23)
!1800 = !DILocation(line: 631, column: 51, scope: !1795)
!1801 = !DILocation(line: 632, column: 28, scope: !1795)
!1802 = !DILocation(line: 631, column: 34, scope: !1795)
!1803 = distinct !{!1803, !1797, !1801, !792}
!1804 = !DILocation(line: 0, scope: !1510)
!1805 = !DILocation(line: 646, column: 29, scope: !1512)
!1806 = !DILocation(line: 648, column: 29, scope: !1510)
!1807 = !DILocation(line: 649, column: 39, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1510, file: !409, line: 648, column: 29)
!1809 = !DILocation(line: 649, column: 31, scope: !1808)
!1810 = !DILocation(line: 648, column: 60, scope: !1808)
!1811 = !DILocation(line: 648, column: 50, scope: !1808)
!1812 = distinct !{!1812, !1806, !1813, !792}
!1813 = !DILocation(line: 654, column: 33, scope: !1510)
!1814 = !DILocation(line: 657, column: 43, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1513, file: !409, line: 657, column: 29)
!1816 = !DILocalVariable(name: "wc", arg: 1, scope: !1817, file: !1818, line: 865, type: !1821)
!1817 = distinct !DISubprogram(name: "c32isprint", scope: !1818, file: !1818, line: 865, type: !1819, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !1823)
!1818 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!95, !1821}
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1822, line: 20, baseType: !78)
!1822 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1823 = !{!1816}
!1824 = !DILocation(line: 0, scope: !1817, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 657, column: 31, scope: !1815)
!1826 = !DILocation(line: 871, column: 10, scope: !1817, inlinedAt: !1825)
!1827 = !DILocation(line: 657, column: 31, scope: !1815)
!1828 = !DILocation(line: 664, column: 23, scope: !1505)
!1829 = !DILocation(line: 665, column: 19, scope: !1506)
!1830 = !DILocation(line: 666, column: 15, scope: !1503)
!1831 = !DILocation(line: 753, column: 2, scope: !1455)
!1832 = !DILocation(line: 756, column: 51, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1455, file: !409, line: 756, column: 7)
!1834 = !DILocation(line: 0, scope: !1503)
!1835 = !DILocation(line: 670, column: 19, scope: !1519)
!1836 = !DILocation(line: 670, column: 23, scope: !1519)
!1837 = !DILocation(line: 674, column: 33, scope: !1518)
!1838 = !DILocation(line: 0, scope: !1518)
!1839 = !DILocation(line: 676, column: 17, scope: !1518)
!1840 = !DILocation(line: 678, column: 43, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !409, line: 678, column: 25)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !409, line: 677, column: 19)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !409, line: 676, column: 17)
!1844 = distinct !DILexicalBlock(scope: !1518, file: !409, line: 676, column: 17)
!1845 = !DILocation(line: 680, column: 25, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !409, line: 680, column: 25)
!1847 = distinct !DILexicalBlock(scope: !1841, file: !409, line: 679, column: 23)
!1848 = !DILocation(line: 680, column: 25, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1846, file: !409, line: 680, column: 25)
!1850 = !DILocation(line: 680, column: 25, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !409, line: 680, column: 25)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !409, line: 680, column: 25)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !409, line: 680, column: 25)
!1854 = !DILocation(line: 680, column: 25, scope: !1852)
!1855 = !DILocation(line: 680, column: 25, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !409, line: 680, column: 25)
!1857 = distinct !DILexicalBlock(scope: !1853, file: !409, line: 680, column: 25)
!1858 = !DILocation(line: 680, column: 25, scope: !1857)
!1859 = !DILocation(line: 680, column: 25, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !409, line: 680, column: 25)
!1861 = distinct !DILexicalBlock(scope: !1853, file: !409, line: 680, column: 25)
!1862 = !DILocation(line: 680, column: 25, scope: !1861)
!1863 = !DILocation(line: 680, column: 25, scope: !1853)
!1864 = !DILocation(line: 680, column: 25, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !409, line: 680, column: 25)
!1866 = distinct !DILexicalBlock(scope: !1846, file: !409, line: 680, column: 25)
!1867 = !DILocation(line: 680, column: 25, scope: !1866)
!1868 = !DILocation(line: 681, column: 25, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !409, line: 681, column: 25)
!1870 = distinct !DILexicalBlock(scope: !1847, file: !409, line: 681, column: 25)
!1871 = !DILocation(line: 681, column: 25, scope: !1870)
!1872 = !DILocation(line: 682, column: 25, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !409, line: 682, column: 25)
!1874 = distinct !DILexicalBlock(scope: !1847, file: !409, line: 682, column: 25)
!1875 = !DILocation(line: 682, column: 25, scope: !1874)
!1876 = !DILocation(line: 683, column: 38, scope: !1847)
!1877 = !DILocation(line: 683, column: 33, scope: !1847)
!1878 = !DILocation(line: 684, column: 23, scope: !1847)
!1879 = !DILocation(line: 685, column: 30, scope: !1841)
!1880 = !DILocation(line: 687, column: 25, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !409, line: 687, column: 25)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !409, line: 687, column: 25)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !409, line: 686, column: 23)
!1884 = distinct !DILexicalBlock(scope: !1841, file: !409, line: 685, column: 30)
!1885 = !DILocation(line: 687, column: 25, scope: !1882)
!1886 = !DILocation(line: 689, column: 23, scope: !1883)
!1887 = !DILocation(line: 690, column: 35, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1842, file: !409, line: 690, column: 25)
!1889 = !DILocation(line: 690, column: 30, scope: !1888)
!1890 = !DILocation(line: 690, column: 25, scope: !1842)
!1891 = !DILocation(line: 692, column: 21, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !409, line: 692, column: 21)
!1893 = distinct !DILexicalBlock(scope: !1842, file: !409, line: 692, column: 21)
!1894 = !DILocation(line: 692, column: 21, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !409, line: 692, column: 21)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !409, line: 692, column: 21)
!1897 = distinct !DILexicalBlock(scope: !1892, file: !409, line: 692, column: 21)
!1898 = !DILocation(line: 692, column: 21, scope: !1896)
!1899 = !DILocation(line: 692, column: 21, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !409, line: 692, column: 21)
!1901 = distinct !DILexicalBlock(scope: !1897, file: !409, line: 692, column: 21)
!1902 = !DILocation(line: 692, column: 21, scope: !1901)
!1903 = !DILocation(line: 692, column: 21, scope: !1897)
!1904 = !DILocation(line: 0, scope: !1842)
!1905 = !DILocation(line: 693, column: 21, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !409, line: 693, column: 21)
!1907 = distinct !DILexicalBlock(scope: !1842, file: !409, line: 693, column: 21)
!1908 = !DILocation(line: 693, column: 21, scope: !1907)
!1909 = !DILocation(line: 694, column: 25, scope: !1842)
!1910 = !DILocation(line: 676, column: 17, scope: !1843)
!1911 = distinct !{!1911, !1912, !1913}
!1912 = !DILocation(line: 676, column: 17, scope: !1844)
!1913 = !DILocation(line: 695, column: 19, scope: !1844)
!1914 = !DILocation(line: 409, column: 30, scope: !1629)
!1915 = !DILocation(line: 702, column: 34, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1489, file: !409, line: 702, column: 11)
!1917 = !DILocation(line: 704, column: 14, scope: !1916)
!1918 = !DILocation(line: 705, column: 14, scope: !1916)
!1919 = !DILocation(line: 705, column: 35, scope: !1916)
!1920 = !DILocation(line: 705, column: 17, scope: !1916)
!1921 = !DILocation(line: 705, column: 47, scope: !1916)
!1922 = !DILocation(line: 705, column: 65, scope: !1916)
!1923 = !DILocation(line: 706, column: 11, scope: !1916)
!1924 = !DILocation(line: 702, column: 11, scope: !1489)
!1925 = !DILocation(line: 395, column: 15, scope: !1487)
!1926 = !DILocation(line: 709, column: 5, scope: !1489)
!1927 = !DILocation(line: 710, column: 7, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1489, file: !409, line: 710, column: 7)
!1929 = !DILocation(line: 710, column: 7, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1928, file: !409, line: 710, column: 7)
!1931 = !DILocation(line: 710, column: 7, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !409, line: 710, column: 7)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !409, line: 710, column: 7)
!1934 = distinct !DILexicalBlock(scope: !1930, file: !409, line: 710, column: 7)
!1935 = !DILocation(line: 710, column: 7, scope: !1933)
!1936 = !DILocation(line: 710, column: 7, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !409, line: 710, column: 7)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !409, line: 710, column: 7)
!1939 = !DILocation(line: 710, column: 7, scope: !1938)
!1940 = !DILocation(line: 710, column: 7, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !409, line: 710, column: 7)
!1942 = distinct !DILexicalBlock(scope: !1934, file: !409, line: 710, column: 7)
!1943 = !DILocation(line: 710, column: 7, scope: !1942)
!1944 = !DILocation(line: 710, column: 7, scope: !1934)
!1945 = !DILocation(line: 710, column: 7, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !409, line: 710, column: 7)
!1947 = distinct !DILexicalBlock(scope: !1928, file: !409, line: 710, column: 7)
!1948 = !DILocation(line: 710, column: 7, scope: !1947)
!1949 = !DILocation(line: 712, column: 5, scope: !1489)
!1950 = !DILocation(line: 713, column: 7, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !409, line: 713, column: 7)
!1952 = distinct !DILexicalBlock(scope: !1489, file: !409, line: 713, column: 7)
!1953 = !DILocation(line: 417, column: 21, scope: !1489)
!1954 = !DILocation(line: 713, column: 7, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !409, line: 713, column: 7)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !409, line: 713, column: 7)
!1957 = distinct !DILexicalBlock(scope: !1951, file: !409, line: 713, column: 7)
!1958 = !DILocation(line: 713, column: 7, scope: !1956)
!1959 = !DILocation(line: 713, column: 7, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !409, line: 713, column: 7)
!1961 = distinct !DILexicalBlock(scope: !1957, file: !409, line: 713, column: 7)
!1962 = !DILocation(line: 713, column: 7, scope: !1961)
!1963 = !DILocation(line: 713, column: 7, scope: !1957)
!1964 = !DILocation(line: 714, column: 7, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !409, line: 714, column: 7)
!1966 = distinct !DILexicalBlock(scope: !1489, file: !409, line: 714, column: 7)
!1967 = !DILocation(line: 714, column: 7, scope: !1966)
!1968 = !DILocation(line: 716, column: 11, scope: !1489)
!1969 = !DILocation(line: 718, column: 5, scope: !1490)
!1970 = !DILocation(line: 395, column: 82, scope: !1490)
!1971 = !DILocation(line: 395, column: 3, scope: !1490)
!1972 = distinct !{!1972, !1625, !1973, !792}
!1973 = !DILocation(line: 718, column: 5, scope: !1487)
!1974 = !DILocation(line: 720, column: 11, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1455, file: !409, line: 720, column: 7)
!1976 = !DILocation(line: 720, column: 16, scope: !1975)
!1977 = !DILocation(line: 728, column: 51, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1455, file: !409, line: 728, column: 7)
!1979 = !DILocation(line: 731, column: 11, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1978, file: !409, line: 730, column: 5)
!1981 = !DILocation(line: 732, column: 16, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1980, file: !409, line: 731, column: 11)
!1983 = !DILocation(line: 732, column: 9, scope: !1982)
!1984 = !DILocation(line: 736, column: 18, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1982, file: !409, line: 736, column: 16)
!1986 = !DILocation(line: 736, column: 29, scope: !1985)
!1987 = !DILocation(line: 745, column: 7, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1455, file: !409, line: 745, column: 7)
!1989 = !DILocation(line: 745, column: 20, scope: !1988)
!1990 = !DILocation(line: 746, column: 12, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !409, line: 746, column: 5)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !409, line: 746, column: 5)
!1993 = !DILocation(line: 746, column: 5, scope: !1992)
!1994 = !DILocation(line: 747, column: 7, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !409, line: 747, column: 7)
!1996 = distinct !DILexicalBlock(scope: !1991, file: !409, line: 747, column: 7)
!1997 = !DILocation(line: 747, column: 7, scope: !1996)
!1998 = !DILocation(line: 746, column: 39, scope: !1991)
!1999 = distinct !{!1999, !1993, !2000, !792}
!2000 = !DILocation(line: 747, column: 7, scope: !1992)
!2001 = !DILocation(line: 749, column: 11, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1455, file: !409, line: 749, column: 7)
!2003 = !DILocation(line: 749, column: 7, scope: !1455)
!2004 = !DILocation(line: 750, column: 5, scope: !2002)
!2005 = !DILocation(line: 750, column: 17, scope: !2002)
!2006 = !DILocation(line: 756, column: 21, scope: !1833)
!2007 = !DILocation(line: 760, column: 42, scope: !1455)
!2008 = !DILocation(line: 758, column: 10, scope: !1455)
!2009 = !DILocation(line: 758, column: 3, scope: !1455)
!2010 = !DILocation(line: 762, column: 1, scope: !1455)
!2011 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !890, file: !890, line: 98, type: !2012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!97}
!2014 = !DISubprogram(name: "strlen", scope: !896, file: !896, line: 407, type: !2015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!99, !72}
!2017 = !DISubprogram(name: "iswprint", scope: !2018, file: !2018, line: 120, type: !1819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2018 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2019 = distinct !DISubprogram(name: "quotearg_alloc", scope: !409, file: !409, line: 788, type: !2020, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2022)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!93, !72, !97, !1348}
!2022 = !{!2023, !2024, !2025}
!2023 = !DILocalVariable(name: "arg", arg: 1, scope: !2019, file: !409, line: 788, type: !72)
!2024 = !DILocalVariable(name: "argsize", arg: 2, scope: !2019, file: !409, line: 788, type: !97)
!2025 = !DILocalVariable(name: "o", arg: 3, scope: !2019, file: !409, line: 789, type: !1348)
!2026 = !DILocation(line: 0, scope: !2019)
!2027 = !DILocalVariable(name: "arg", arg: 1, scope: !2028, file: !409, line: 801, type: !72)
!2028 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !409, file: !409, line: 801, type: !2029, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2031)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!93, !72, !97, !662, !1348}
!2031 = !{!2027, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039}
!2032 = !DILocalVariable(name: "argsize", arg: 2, scope: !2028, file: !409, line: 801, type: !97)
!2033 = !DILocalVariable(name: "size", arg: 3, scope: !2028, file: !409, line: 801, type: !662)
!2034 = !DILocalVariable(name: "o", arg: 4, scope: !2028, file: !409, line: 802, type: !1348)
!2035 = !DILocalVariable(name: "p", scope: !2028, file: !409, line: 804, type: !1348)
!2036 = !DILocalVariable(name: "saved_errno", scope: !2028, file: !409, line: 805, type: !95)
!2037 = !DILocalVariable(name: "flags", scope: !2028, file: !409, line: 807, type: !95)
!2038 = !DILocalVariable(name: "bufsize", scope: !2028, file: !409, line: 808, type: !97)
!2039 = !DILocalVariable(name: "buf", scope: !2028, file: !409, line: 812, type: !93)
!2040 = !DILocation(line: 0, scope: !2028, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 791, column: 10, scope: !2019)
!2042 = !DILocation(line: 804, column: 37, scope: !2028, inlinedAt: !2041)
!2043 = !DILocation(line: 805, column: 21, scope: !2028, inlinedAt: !2041)
!2044 = !DILocation(line: 807, column: 18, scope: !2028, inlinedAt: !2041)
!2045 = !DILocation(line: 807, column: 24, scope: !2028, inlinedAt: !2041)
!2046 = !DILocation(line: 808, column: 72, scope: !2028, inlinedAt: !2041)
!2047 = !DILocation(line: 809, column: 56, scope: !2028, inlinedAt: !2041)
!2048 = !DILocation(line: 810, column: 49, scope: !2028, inlinedAt: !2041)
!2049 = !DILocation(line: 811, column: 49, scope: !2028, inlinedAt: !2041)
!2050 = !DILocation(line: 808, column: 20, scope: !2028, inlinedAt: !2041)
!2051 = !DILocation(line: 811, column: 62, scope: !2028, inlinedAt: !2041)
!2052 = !DILocation(line: 812, column: 15, scope: !2028, inlinedAt: !2041)
!2053 = !DILocation(line: 813, column: 60, scope: !2028, inlinedAt: !2041)
!2054 = !DILocation(line: 815, column: 32, scope: !2028, inlinedAt: !2041)
!2055 = !DILocation(line: 815, column: 47, scope: !2028, inlinedAt: !2041)
!2056 = !DILocation(line: 813, column: 3, scope: !2028, inlinedAt: !2041)
!2057 = !DILocation(line: 816, column: 9, scope: !2028, inlinedAt: !2041)
!2058 = !DILocation(line: 791, column: 3, scope: !2019)
!2059 = !DILocation(line: 0, scope: !2028)
!2060 = !DILocation(line: 804, column: 37, scope: !2028)
!2061 = !DILocation(line: 805, column: 21, scope: !2028)
!2062 = !DILocation(line: 807, column: 18, scope: !2028)
!2063 = !DILocation(line: 807, column: 27, scope: !2028)
!2064 = !DILocation(line: 807, column: 24, scope: !2028)
!2065 = !DILocation(line: 808, column: 72, scope: !2028)
!2066 = !DILocation(line: 809, column: 56, scope: !2028)
!2067 = !DILocation(line: 810, column: 49, scope: !2028)
!2068 = !DILocation(line: 811, column: 49, scope: !2028)
!2069 = !DILocation(line: 808, column: 20, scope: !2028)
!2070 = !DILocation(line: 811, column: 62, scope: !2028)
!2071 = !DILocation(line: 812, column: 15, scope: !2028)
!2072 = !DILocation(line: 813, column: 60, scope: !2028)
!2073 = !DILocation(line: 815, column: 32, scope: !2028)
!2074 = !DILocation(line: 815, column: 47, scope: !2028)
!2075 = !DILocation(line: 813, column: 3, scope: !2028)
!2076 = !DILocation(line: 816, column: 9, scope: !2028)
!2077 = !DILocation(line: 817, column: 7, scope: !2028)
!2078 = !DILocation(line: 818, column: 11, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2028, file: !409, line: 817, column: 7)
!2080 = !{!1164, !1164, i64 0}
!2081 = !DILocation(line: 818, column: 5, scope: !2079)
!2082 = !DILocation(line: 819, column: 3, scope: !2028)
!2083 = distinct !DISubprogram(name: "quotearg_free", scope: !409, file: !409, line: 837, type: !364, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2084)
!2084 = !{!2085, !2086}
!2085 = !DILocalVariable(name: "sv", scope: !2083, file: !409, line: 839, type: !507)
!2086 = !DILocalVariable(name: "i", scope: !2087, file: !409, line: 840, type: !95)
!2087 = distinct !DILexicalBlock(scope: !2083, file: !409, line: 840, column: 3)
!2088 = !DILocation(line: 839, column: 24, scope: !2083)
!2089 = !DILocation(line: 0, scope: !2083)
!2090 = !DILocation(line: 0, scope: !2087)
!2091 = !DILocation(line: 840, column: 21, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2087, file: !409, line: 840, column: 3)
!2093 = !DILocation(line: 840, column: 3, scope: !2087)
!2094 = !DILocation(line: 842, column: 13, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2083, file: !409, line: 842, column: 7)
!2096 = !{!2097, !725, i64 8}
!2097 = !{!"slotvec", !1164, i64 0, !725, i64 8}
!2098 = !DILocation(line: 842, column: 17, scope: !2095)
!2099 = !DILocation(line: 842, column: 7, scope: !2083)
!2100 = !DILocation(line: 841, column: 17, scope: !2092)
!2101 = !DILocation(line: 841, column: 5, scope: !2092)
!2102 = !DILocation(line: 840, column: 32, scope: !2092)
!2103 = distinct !{!2103, !2093, !2104, !792}
!2104 = !DILocation(line: 841, column: 20, scope: !2087)
!2105 = !DILocation(line: 844, column: 7, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2095, file: !409, line: 843, column: 5)
!2107 = !DILocation(line: 845, column: 21, scope: !2106)
!2108 = !{!2097, !1164, i64 0}
!2109 = !DILocation(line: 846, column: 20, scope: !2106)
!2110 = !DILocation(line: 847, column: 5, scope: !2106)
!2111 = !DILocation(line: 848, column: 10, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2083, file: !409, line: 848, column: 7)
!2113 = !DILocation(line: 848, column: 7, scope: !2083)
!2114 = !DILocation(line: 850, column: 7, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2112, file: !409, line: 849, column: 5)
!2116 = !DILocation(line: 851, column: 15, scope: !2115)
!2117 = !DILocation(line: 852, column: 5, scope: !2115)
!2118 = !DILocation(line: 853, column: 10, scope: !2083)
!2119 = !DILocation(line: 854, column: 1, scope: !2083)
!2120 = !DISubprogram(name: "free", scope: !1302, file: !1302, line: 786, type: !2121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{null, !94}
!2123 = distinct !DISubprogram(name: "quotearg_n", scope: !409, file: !409, line: 919, type: !893, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2124)
!2124 = !{!2125, !2126}
!2125 = !DILocalVariable(name: "n", arg: 1, scope: !2123, file: !409, line: 919, type: !95)
!2126 = !DILocalVariable(name: "arg", arg: 2, scope: !2123, file: !409, line: 919, type: !72)
!2127 = !DILocation(line: 0, scope: !2123)
!2128 = !DILocation(line: 921, column: 10, scope: !2123)
!2129 = !DILocation(line: 921, column: 3, scope: !2123)
!2130 = distinct !DISubprogram(name: "quotearg_n_options", scope: !409, file: !409, line: 866, type: !2131, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!93, !95, !72, !97, !1348}
!2133 = !{!2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2144, !2145, !2147, !2148, !2149}
!2134 = !DILocalVariable(name: "n", arg: 1, scope: !2130, file: !409, line: 866, type: !95)
!2135 = !DILocalVariable(name: "arg", arg: 2, scope: !2130, file: !409, line: 866, type: !72)
!2136 = !DILocalVariable(name: "argsize", arg: 3, scope: !2130, file: !409, line: 866, type: !97)
!2137 = !DILocalVariable(name: "options", arg: 4, scope: !2130, file: !409, line: 867, type: !1348)
!2138 = !DILocalVariable(name: "saved_errno", scope: !2130, file: !409, line: 869, type: !95)
!2139 = !DILocalVariable(name: "sv", scope: !2130, file: !409, line: 871, type: !507)
!2140 = !DILocalVariable(name: "nslots_max", scope: !2130, file: !409, line: 873, type: !95)
!2141 = !DILocalVariable(name: "preallocated", scope: !2142, file: !409, line: 879, type: !217)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !409, line: 878, column: 5)
!2143 = distinct !DILexicalBlock(scope: !2130, file: !409, line: 877, column: 7)
!2144 = !DILocalVariable(name: "new_nslots", scope: !2142, file: !409, line: 880, type: !675)
!2145 = !DILocalVariable(name: "size", scope: !2146, file: !409, line: 891, type: !97)
!2146 = distinct !DILexicalBlock(scope: !2130, file: !409, line: 890, column: 3)
!2147 = !DILocalVariable(name: "val", scope: !2146, file: !409, line: 892, type: !93)
!2148 = !DILocalVariable(name: "flags", scope: !2146, file: !409, line: 894, type: !95)
!2149 = !DILocalVariable(name: "qsize", scope: !2146, file: !409, line: 895, type: !97)
!2150 = distinct !DIAssignID()
!2151 = !DILocation(line: 0, scope: !2142)
!2152 = !DILocation(line: 0, scope: !2130)
!2153 = !DILocation(line: 869, column: 21, scope: !2130)
!2154 = !DILocation(line: 871, column: 24, scope: !2130)
!2155 = !DILocation(line: 874, column: 17, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2130, file: !409, line: 874, column: 7)
!2157 = !DILocation(line: 875, column: 5, scope: !2156)
!2158 = !DILocation(line: 877, column: 7, scope: !2143)
!2159 = !DILocation(line: 877, column: 14, scope: !2143)
!2160 = !DILocation(line: 877, column: 7, scope: !2130)
!2161 = !DILocation(line: 879, column: 31, scope: !2142)
!2162 = !DILocation(line: 880, column: 7, scope: !2142)
!2163 = !DILocation(line: 880, column: 26, scope: !2142)
!2164 = !DILocation(line: 880, column: 13, scope: !2142)
!2165 = distinct !DIAssignID()
!2166 = !DILocation(line: 882, column: 31, scope: !2142)
!2167 = !DILocation(line: 883, column: 33, scope: !2142)
!2168 = !DILocation(line: 883, column: 42, scope: !2142)
!2169 = !DILocation(line: 883, column: 31, scope: !2142)
!2170 = !DILocation(line: 882, column: 22, scope: !2142)
!2171 = !DILocation(line: 882, column: 15, scope: !2142)
!2172 = !DILocation(line: 884, column: 11, scope: !2142)
!2173 = !DILocation(line: 885, column: 15, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2142, file: !409, line: 884, column: 11)
!2175 = !{i64 0, i64 8, !2080, i64 8, i64 8, !724}
!2176 = !DILocation(line: 885, column: 9, scope: !2174)
!2177 = !DILocation(line: 886, column: 20, scope: !2142)
!2178 = !DILocation(line: 886, column: 18, scope: !2142)
!2179 = !DILocation(line: 886, column: 32, scope: !2142)
!2180 = !DILocation(line: 886, column: 43, scope: !2142)
!2181 = !DILocation(line: 886, column: 53, scope: !2142)
!2182 = !DILocation(line: 0, scope: !1565, inlinedAt: !2183)
!2183 = distinct !DILocation(line: 886, column: 7, scope: !2142)
!2184 = !DILocation(line: 59, column: 10, scope: !1565, inlinedAt: !2183)
!2185 = !DILocation(line: 887, column: 16, scope: !2142)
!2186 = !DILocation(line: 887, column: 14, scope: !2142)
!2187 = !DILocation(line: 888, column: 5, scope: !2143)
!2188 = !DILocation(line: 888, column: 5, scope: !2142)
!2189 = !DILocation(line: 891, column: 19, scope: !2146)
!2190 = !DILocation(line: 891, column: 25, scope: !2146)
!2191 = !DILocation(line: 0, scope: !2146)
!2192 = !DILocation(line: 892, column: 23, scope: !2146)
!2193 = !DILocation(line: 894, column: 26, scope: !2146)
!2194 = !DILocation(line: 894, column: 32, scope: !2146)
!2195 = !DILocation(line: 896, column: 55, scope: !2146)
!2196 = !DILocation(line: 897, column: 55, scope: !2146)
!2197 = !DILocation(line: 898, column: 55, scope: !2146)
!2198 = !DILocation(line: 899, column: 55, scope: !2146)
!2199 = !DILocation(line: 895, column: 20, scope: !2146)
!2200 = !DILocation(line: 901, column: 14, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2146, file: !409, line: 901, column: 9)
!2202 = !DILocation(line: 901, column: 9, scope: !2146)
!2203 = !DILocation(line: 903, column: 35, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !409, line: 902, column: 7)
!2205 = !DILocation(line: 903, column: 20, scope: !2204)
!2206 = !DILocation(line: 904, column: 17, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2204, file: !409, line: 904, column: 13)
!2208 = !DILocation(line: 904, column: 13, scope: !2204)
!2209 = !DILocation(line: 905, column: 11, scope: !2207)
!2210 = !DILocation(line: 906, column: 27, scope: !2204)
!2211 = !DILocation(line: 906, column: 19, scope: !2204)
!2212 = !DILocation(line: 907, column: 69, scope: !2204)
!2213 = !DILocation(line: 909, column: 44, scope: !2204)
!2214 = !DILocation(line: 910, column: 44, scope: !2204)
!2215 = !DILocation(line: 907, column: 9, scope: !2204)
!2216 = !DILocation(line: 911, column: 7, scope: !2204)
!2217 = !DILocation(line: 913, column: 11, scope: !2146)
!2218 = !DILocation(line: 914, column: 5, scope: !2146)
!2219 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !409, file: !409, line: 925, type: !2220, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2222)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!93, !95, !72, !97}
!2222 = !{!2223, !2224, !2225}
!2223 = !DILocalVariable(name: "n", arg: 1, scope: !2219, file: !409, line: 925, type: !95)
!2224 = !DILocalVariable(name: "arg", arg: 2, scope: !2219, file: !409, line: 925, type: !72)
!2225 = !DILocalVariable(name: "argsize", arg: 3, scope: !2219, file: !409, line: 925, type: !97)
!2226 = !DILocation(line: 0, scope: !2219)
!2227 = !DILocation(line: 927, column: 10, scope: !2219)
!2228 = !DILocation(line: 927, column: 3, scope: !2219)
!2229 = distinct !DISubprogram(name: "quotearg", scope: !409, file: !409, line: 931, type: !904, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2230)
!2230 = !{!2231}
!2231 = !DILocalVariable(name: "arg", arg: 1, scope: !2229, file: !409, line: 931, type: !72)
!2232 = !DILocation(line: 0, scope: !2229)
!2233 = !DILocation(line: 0, scope: !2123, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 933, column: 10, scope: !2229)
!2235 = !DILocation(line: 921, column: 10, scope: !2123, inlinedAt: !2234)
!2236 = !DILocation(line: 933, column: 3, scope: !2229)
!2237 = distinct !DISubprogram(name: "quotearg_mem", scope: !409, file: !409, line: 937, type: !2238, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2240)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!93, !72, !97}
!2240 = !{!2241, !2242}
!2241 = !DILocalVariable(name: "arg", arg: 1, scope: !2237, file: !409, line: 937, type: !72)
!2242 = !DILocalVariable(name: "argsize", arg: 2, scope: !2237, file: !409, line: 937, type: !97)
!2243 = !DILocation(line: 0, scope: !2237)
!2244 = !DILocation(line: 0, scope: !2219, inlinedAt: !2245)
!2245 = distinct !DILocation(line: 939, column: 10, scope: !2237)
!2246 = !DILocation(line: 927, column: 10, scope: !2219, inlinedAt: !2245)
!2247 = !DILocation(line: 939, column: 3, scope: !2237)
!2248 = distinct !DISubprogram(name: "quotearg_n_style", scope: !409, file: !409, line: 943, type: !2249, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2251)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!93, !95, !432, !72}
!2251 = !{!2252, !2253, !2254, !2255}
!2252 = !DILocalVariable(name: "n", arg: 1, scope: !2248, file: !409, line: 943, type: !95)
!2253 = !DILocalVariable(name: "s", arg: 2, scope: !2248, file: !409, line: 943, type: !432)
!2254 = !DILocalVariable(name: "arg", arg: 3, scope: !2248, file: !409, line: 943, type: !72)
!2255 = !DILocalVariable(name: "o", scope: !2248, file: !409, line: 945, type: !1349)
!2256 = distinct !DIAssignID()
!2257 = !DILocation(line: 0, scope: !2248)
!2258 = !DILocation(line: 945, column: 3, scope: !2248)
!2259 = !{!2260}
!2260 = distinct !{!2260, !2261, !"quoting_options_from_style: argument 0"}
!2261 = distinct !{!2261, !"quoting_options_from_style"}
!2262 = !DILocation(line: 945, column: 36, scope: !2248)
!2263 = !DILocalVariable(name: "style", arg: 1, scope: !2264, file: !409, line: 183, type: !432)
!2264 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !409, file: !409, line: 183, type: !2265, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!459, !432}
!2267 = !{!2263, !2268}
!2268 = !DILocalVariable(name: "o", scope: !2264, file: !409, line: 185, type: !459)
!2269 = !DILocation(line: 0, scope: !2264, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 945, column: 36, scope: !2248)
!2271 = !DILocation(line: 185, column: 26, scope: !2264, inlinedAt: !2270)
!2272 = distinct !DIAssignID()
!2273 = !DILocation(line: 186, column: 13, scope: !2274, inlinedAt: !2270)
!2274 = distinct !DILexicalBlock(scope: !2264, file: !409, line: 186, column: 7)
!2275 = !DILocation(line: 186, column: 7, scope: !2264, inlinedAt: !2270)
!2276 = !DILocation(line: 187, column: 5, scope: !2274, inlinedAt: !2270)
!2277 = !DILocation(line: 188, column: 11, scope: !2264, inlinedAt: !2270)
!2278 = distinct !DIAssignID()
!2279 = !DILocation(line: 946, column: 10, scope: !2248)
!2280 = !DILocation(line: 947, column: 1, scope: !2248)
!2281 = !DILocation(line: 946, column: 3, scope: !2248)
!2282 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !409, file: !409, line: 950, type: !2283, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2285)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!93, !95, !432, !72, !97}
!2285 = !{!2286, !2287, !2288, !2289, !2290}
!2286 = !DILocalVariable(name: "n", arg: 1, scope: !2282, file: !409, line: 950, type: !95)
!2287 = !DILocalVariable(name: "s", arg: 2, scope: !2282, file: !409, line: 950, type: !432)
!2288 = !DILocalVariable(name: "arg", arg: 3, scope: !2282, file: !409, line: 951, type: !72)
!2289 = !DILocalVariable(name: "argsize", arg: 4, scope: !2282, file: !409, line: 951, type: !97)
!2290 = !DILocalVariable(name: "o", scope: !2282, file: !409, line: 953, type: !1349)
!2291 = distinct !DIAssignID()
!2292 = !DILocation(line: 0, scope: !2282)
!2293 = !DILocation(line: 953, column: 3, scope: !2282)
!2294 = !{!2295}
!2295 = distinct !{!2295, !2296, !"quoting_options_from_style: argument 0"}
!2296 = distinct !{!2296, !"quoting_options_from_style"}
!2297 = !DILocation(line: 953, column: 36, scope: !2282)
!2298 = !DILocation(line: 0, scope: !2264, inlinedAt: !2299)
!2299 = distinct !DILocation(line: 953, column: 36, scope: !2282)
!2300 = !DILocation(line: 185, column: 26, scope: !2264, inlinedAt: !2299)
!2301 = distinct !DIAssignID()
!2302 = !DILocation(line: 186, column: 13, scope: !2274, inlinedAt: !2299)
!2303 = !DILocation(line: 186, column: 7, scope: !2264, inlinedAt: !2299)
!2304 = !DILocation(line: 187, column: 5, scope: !2274, inlinedAt: !2299)
!2305 = !DILocation(line: 188, column: 11, scope: !2264, inlinedAt: !2299)
!2306 = distinct !DIAssignID()
!2307 = !DILocation(line: 954, column: 10, scope: !2282)
!2308 = !DILocation(line: 955, column: 1, scope: !2282)
!2309 = !DILocation(line: 954, column: 3, scope: !2282)
!2310 = distinct !DISubprogram(name: "quotearg_style", scope: !409, file: !409, line: 958, type: !2311, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2313)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!93, !432, !72}
!2313 = !{!2314, !2315}
!2314 = !DILocalVariable(name: "s", arg: 1, scope: !2310, file: !409, line: 958, type: !432)
!2315 = !DILocalVariable(name: "arg", arg: 2, scope: !2310, file: !409, line: 958, type: !72)
!2316 = distinct !DIAssignID()
!2317 = !DILocation(line: 0, scope: !2310)
!2318 = !DILocation(line: 0, scope: !2248, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 960, column: 10, scope: !2310)
!2320 = !DILocation(line: 945, column: 3, scope: !2248, inlinedAt: !2319)
!2321 = !{!2322}
!2322 = distinct !{!2322, !2323, !"quoting_options_from_style: argument 0"}
!2323 = distinct !{!2323, !"quoting_options_from_style"}
!2324 = !DILocation(line: 945, column: 36, scope: !2248, inlinedAt: !2319)
!2325 = !DILocation(line: 0, scope: !2264, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 945, column: 36, scope: !2248, inlinedAt: !2319)
!2327 = !DILocation(line: 185, column: 26, scope: !2264, inlinedAt: !2326)
!2328 = distinct !DIAssignID()
!2329 = !DILocation(line: 186, column: 13, scope: !2274, inlinedAt: !2326)
!2330 = !DILocation(line: 186, column: 7, scope: !2264, inlinedAt: !2326)
!2331 = !DILocation(line: 187, column: 5, scope: !2274, inlinedAt: !2326)
!2332 = !DILocation(line: 188, column: 11, scope: !2264, inlinedAt: !2326)
!2333 = distinct !DIAssignID()
!2334 = !DILocation(line: 946, column: 10, scope: !2248, inlinedAt: !2319)
!2335 = !DILocation(line: 947, column: 1, scope: !2248, inlinedAt: !2319)
!2336 = !DILocation(line: 960, column: 3, scope: !2310)
!2337 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !409, file: !409, line: 964, type: !2338, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!93, !432, !72, !97}
!2340 = !{!2341, !2342, !2343}
!2341 = !DILocalVariable(name: "s", arg: 1, scope: !2337, file: !409, line: 964, type: !432)
!2342 = !DILocalVariable(name: "arg", arg: 2, scope: !2337, file: !409, line: 964, type: !72)
!2343 = !DILocalVariable(name: "argsize", arg: 3, scope: !2337, file: !409, line: 964, type: !97)
!2344 = distinct !DIAssignID()
!2345 = !DILocation(line: 0, scope: !2337)
!2346 = !DILocation(line: 0, scope: !2282, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 966, column: 10, scope: !2337)
!2348 = !DILocation(line: 953, column: 3, scope: !2282, inlinedAt: !2347)
!2349 = !{!2350}
!2350 = distinct !{!2350, !2351, !"quoting_options_from_style: argument 0"}
!2351 = distinct !{!2351, !"quoting_options_from_style"}
!2352 = !DILocation(line: 953, column: 36, scope: !2282, inlinedAt: !2347)
!2353 = !DILocation(line: 0, scope: !2264, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 953, column: 36, scope: !2282, inlinedAt: !2347)
!2355 = !DILocation(line: 185, column: 26, scope: !2264, inlinedAt: !2354)
!2356 = distinct !DIAssignID()
!2357 = !DILocation(line: 186, column: 13, scope: !2274, inlinedAt: !2354)
!2358 = !DILocation(line: 186, column: 7, scope: !2264, inlinedAt: !2354)
!2359 = !DILocation(line: 187, column: 5, scope: !2274, inlinedAt: !2354)
!2360 = !DILocation(line: 188, column: 11, scope: !2264, inlinedAt: !2354)
!2361 = distinct !DIAssignID()
!2362 = !DILocation(line: 954, column: 10, scope: !2282, inlinedAt: !2347)
!2363 = !DILocation(line: 955, column: 1, scope: !2282, inlinedAt: !2347)
!2364 = !DILocation(line: 966, column: 3, scope: !2337)
!2365 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !409, file: !409, line: 970, type: !2366, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2368)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!93, !72, !97, !4}
!2368 = !{!2369, !2370, !2371, !2372}
!2369 = !DILocalVariable(name: "arg", arg: 1, scope: !2365, file: !409, line: 970, type: !72)
!2370 = !DILocalVariable(name: "argsize", arg: 2, scope: !2365, file: !409, line: 970, type: !97)
!2371 = !DILocalVariable(name: "ch", arg: 3, scope: !2365, file: !409, line: 970, type: !4)
!2372 = !DILocalVariable(name: "options", scope: !2365, file: !409, line: 972, type: !459)
!2373 = distinct !DIAssignID()
!2374 = !DILocation(line: 0, scope: !2365)
!2375 = !DILocation(line: 972, column: 3, scope: !2365)
!2376 = !DILocation(line: 973, column: 13, scope: !2365)
!2377 = !{i64 0, i64 4, !745, i64 4, i64 4, !745, i64 8, i64 32, !754, i64 40, i64 8, !724, i64 48, i64 8, !724}
!2378 = distinct !DIAssignID()
!2379 = !DILocation(line: 0, scope: !1368, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 974, column: 3, scope: !2365)
!2381 = !DILocation(line: 147, column: 41, scope: !1368, inlinedAt: !2380)
!2382 = !DILocation(line: 147, column: 62, scope: !1368, inlinedAt: !2380)
!2383 = !DILocation(line: 147, column: 57, scope: !1368, inlinedAt: !2380)
!2384 = !DILocation(line: 148, column: 15, scope: !1368, inlinedAt: !2380)
!2385 = !DILocation(line: 149, column: 21, scope: !1368, inlinedAt: !2380)
!2386 = !DILocation(line: 149, column: 24, scope: !1368, inlinedAt: !2380)
!2387 = !DILocation(line: 150, column: 19, scope: !1368, inlinedAt: !2380)
!2388 = !DILocation(line: 150, column: 24, scope: !1368, inlinedAt: !2380)
!2389 = !DILocation(line: 150, column: 6, scope: !1368, inlinedAt: !2380)
!2390 = !DILocation(line: 975, column: 10, scope: !2365)
!2391 = !DILocation(line: 976, column: 1, scope: !2365)
!2392 = !DILocation(line: 975, column: 3, scope: !2365)
!2393 = distinct !DISubprogram(name: "quotearg_char", scope: !409, file: !409, line: 979, type: !2394, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!93, !72, !4}
!2396 = !{!2397, !2398}
!2397 = !DILocalVariable(name: "arg", arg: 1, scope: !2393, file: !409, line: 979, type: !72)
!2398 = !DILocalVariable(name: "ch", arg: 2, scope: !2393, file: !409, line: 979, type: !4)
!2399 = distinct !DIAssignID()
!2400 = !DILocation(line: 0, scope: !2393)
!2401 = !DILocation(line: 0, scope: !2365, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 981, column: 10, scope: !2393)
!2403 = !DILocation(line: 972, column: 3, scope: !2365, inlinedAt: !2402)
!2404 = !DILocation(line: 973, column: 13, scope: !2365, inlinedAt: !2402)
!2405 = distinct !DIAssignID()
!2406 = !DILocation(line: 0, scope: !1368, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 974, column: 3, scope: !2365, inlinedAt: !2402)
!2408 = !DILocation(line: 147, column: 41, scope: !1368, inlinedAt: !2407)
!2409 = !DILocation(line: 147, column: 62, scope: !1368, inlinedAt: !2407)
!2410 = !DILocation(line: 147, column: 57, scope: !1368, inlinedAt: !2407)
!2411 = !DILocation(line: 148, column: 15, scope: !1368, inlinedAt: !2407)
!2412 = !DILocation(line: 149, column: 21, scope: !1368, inlinedAt: !2407)
!2413 = !DILocation(line: 149, column: 24, scope: !1368, inlinedAt: !2407)
!2414 = !DILocation(line: 150, column: 19, scope: !1368, inlinedAt: !2407)
!2415 = !DILocation(line: 150, column: 24, scope: !1368, inlinedAt: !2407)
!2416 = !DILocation(line: 150, column: 6, scope: !1368, inlinedAt: !2407)
!2417 = !DILocation(line: 975, column: 10, scope: !2365, inlinedAt: !2402)
!2418 = !DILocation(line: 976, column: 1, scope: !2365, inlinedAt: !2402)
!2419 = !DILocation(line: 981, column: 3, scope: !2393)
!2420 = distinct !DISubprogram(name: "quotearg_colon", scope: !409, file: !409, line: 985, type: !904, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2421)
!2421 = !{!2422}
!2422 = !DILocalVariable(name: "arg", arg: 1, scope: !2420, file: !409, line: 985, type: !72)
!2423 = distinct !DIAssignID()
!2424 = !DILocation(line: 0, scope: !2420)
!2425 = !DILocation(line: 0, scope: !2393, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 987, column: 10, scope: !2420)
!2427 = !DILocation(line: 0, scope: !2365, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 981, column: 10, scope: !2393, inlinedAt: !2426)
!2429 = !DILocation(line: 972, column: 3, scope: !2365, inlinedAt: !2428)
!2430 = !DILocation(line: 973, column: 13, scope: !2365, inlinedAt: !2428)
!2431 = distinct !DIAssignID()
!2432 = !DILocation(line: 0, scope: !1368, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 974, column: 3, scope: !2365, inlinedAt: !2428)
!2434 = !DILocation(line: 147, column: 57, scope: !1368, inlinedAt: !2433)
!2435 = !DILocation(line: 149, column: 21, scope: !1368, inlinedAt: !2433)
!2436 = !DILocation(line: 150, column: 6, scope: !1368, inlinedAt: !2433)
!2437 = !DILocation(line: 975, column: 10, scope: !2365, inlinedAt: !2428)
!2438 = !DILocation(line: 976, column: 1, scope: !2365, inlinedAt: !2428)
!2439 = !DILocation(line: 987, column: 3, scope: !2420)
!2440 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !409, file: !409, line: 991, type: !2238, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2441)
!2441 = !{!2442, !2443}
!2442 = !DILocalVariable(name: "arg", arg: 1, scope: !2440, file: !409, line: 991, type: !72)
!2443 = !DILocalVariable(name: "argsize", arg: 2, scope: !2440, file: !409, line: 991, type: !97)
!2444 = distinct !DIAssignID()
!2445 = !DILocation(line: 0, scope: !2440)
!2446 = !DILocation(line: 0, scope: !2365, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 993, column: 10, scope: !2440)
!2448 = !DILocation(line: 972, column: 3, scope: !2365, inlinedAt: !2447)
!2449 = !DILocation(line: 973, column: 13, scope: !2365, inlinedAt: !2447)
!2450 = distinct !DIAssignID()
!2451 = !DILocation(line: 0, scope: !1368, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 974, column: 3, scope: !2365, inlinedAt: !2447)
!2453 = !DILocation(line: 147, column: 57, scope: !1368, inlinedAt: !2452)
!2454 = !DILocation(line: 149, column: 21, scope: !1368, inlinedAt: !2452)
!2455 = !DILocation(line: 150, column: 6, scope: !1368, inlinedAt: !2452)
!2456 = !DILocation(line: 975, column: 10, scope: !2365, inlinedAt: !2447)
!2457 = !DILocation(line: 976, column: 1, scope: !2365, inlinedAt: !2447)
!2458 = !DILocation(line: 993, column: 3, scope: !2440)
!2459 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !409, file: !409, line: 997, type: !2249, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2460)
!2460 = !{!2461, !2462, !2463, !2464}
!2461 = !DILocalVariable(name: "n", arg: 1, scope: !2459, file: !409, line: 997, type: !95)
!2462 = !DILocalVariable(name: "s", arg: 2, scope: !2459, file: !409, line: 997, type: !432)
!2463 = !DILocalVariable(name: "arg", arg: 3, scope: !2459, file: !409, line: 997, type: !72)
!2464 = !DILocalVariable(name: "options", scope: !2459, file: !409, line: 999, type: !459)
!2465 = distinct !DIAssignID()
!2466 = !DILocation(line: 0, scope: !2459)
!2467 = !DILocation(line: 185, column: 26, scope: !2264, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 1000, column: 13, scope: !2459)
!2469 = !DILocation(line: 999, column: 3, scope: !2459)
!2470 = !DILocation(line: 0, scope: !2264, inlinedAt: !2468)
!2471 = !DILocation(line: 186, column: 13, scope: !2274, inlinedAt: !2468)
!2472 = !DILocation(line: 186, column: 7, scope: !2264, inlinedAt: !2468)
!2473 = !DILocation(line: 187, column: 5, scope: !2274, inlinedAt: !2468)
!2474 = !{!2475}
!2475 = distinct !{!2475, !2476, !"quoting_options_from_style: argument 0"}
!2476 = distinct !{!2476, !"quoting_options_from_style"}
!2477 = !DILocation(line: 1000, column: 13, scope: !2459)
!2478 = distinct !DIAssignID()
!2479 = distinct !DIAssignID()
!2480 = !DILocation(line: 0, scope: !1368, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 1001, column: 3, scope: !2459)
!2482 = !DILocation(line: 147, column: 57, scope: !1368, inlinedAt: !2481)
!2483 = !DILocation(line: 149, column: 21, scope: !1368, inlinedAt: !2481)
!2484 = !DILocation(line: 150, column: 6, scope: !1368, inlinedAt: !2481)
!2485 = distinct !DIAssignID()
!2486 = !DILocation(line: 1002, column: 10, scope: !2459)
!2487 = !DILocation(line: 1003, column: 1, scope: !2459)
!2488 = !DILocation(line: 1002, column: 3, scope: !2459)
!2489 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !409, file: !409, line: 1006, type: !2490, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2492)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!93, !95, !72, !72, !72}
!2492 = !{!2493, !2494, !2495, !2496}
!2493 = !DILocalVariable(name: "n", arg: 1, scope: !2489, file: !409, line: 1006, type: !95)
!2494 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2489, file: !409, line: 1006, type: !72)
!2495 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2489, file: !409, line: 1007, type: !72)
!2496 = !DILocalVariable(name: "arg", arg: 4, scope: !2489, file: !409, line: 1007, type: !72)
!2497 = distinct !DIAssignID()
!2498 = !DILocation(line: 0, scope: !2489)
!2499 = !DILocalVariable(name: "o", scope: !2500, file: !409, line: 1018, type: !459)
!2500 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !409, file: !409, line: 1014, type: !2501, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2503)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!93, !95, !72, !72, !72, !97}
!2503 = !{!2504, !2505, !2506, !2507, !2508, !2499}
!2504 = !DILocalVariable(name: "n", arg: 1, scope: !2500, file: !409, line: 1014, type: !95)
!2505 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2500, file: !409, line: 1014, type: !72)
!2506 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2500, file: !409, line: 1015, type: !72)
!2507 = !DILocalVariable(name: "arg", arg: 4, scope: !2500, file: !409, line: 1016, type: !72)
!2508 = !DILocalVariable(name: "argsize", arg: 5, scope: !2500, file: !409, line: 1016, type: !97)
!2509 = !DILocation(line: 0, scope: !2500, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 1009, column: 10, scope: !2489)
!2511 = !DILocation(line: 1018, column: 3, scope: !2500, inlinedAt: !2510)
!2512 = !DILocation(line: 1018, column: 30, scope: !2500, inlinedAt: !2510)
!2513 = distinct !DIAssignID()
!2514 = distinct !DIAssignID()
!2515 = !DILocation(line: 0, scope: !1408, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 1019, column: 3, scope: !2500, inlinedAt: !2510)
!2517 = !DILocation(line: 174, column: 12, scope: !1408, inlinedAt: !2516)
!2518 = distinct !DIAssignID()
!2519 = !DILocation(line: 175, column: 8, scope: !1421, inlinedAt: !2516)
!2520 = !DILocation(line: 175, column: 19, scope: !1421, inlinedAt: !2516)
!2521 = !DILocation(line: 176, column: 5, scope: !1421, inlinedAt: !2516)
!2522 = !DILocation(line: 177, column: 6, scope: !1408, inlinedAt: !2516)
!2523 = !DILocation(line: 177, column: 17, scope: !1408, inlinedAt: !2516)
!2524 = distinct !DIAssignID()
!2525 = !DILocation(line: 178, column: 6, scope: !1408, inlinedAt: !2516)
!2526 = !DILocation(line: 178, column: 18, scope: !1408, inlinedAt: !2516)
!2527 = distinct !DIAssignID()
!2528 = !DILocation(line: 1020, column: 10, scope: !2500, inlinedAt: !2510)
!2529 = !DILocation(line: 1021, column: 1, scope: !2500, inlinedAt: !2510)
!2530 = !DILocation(line: 1009, column: 3, scope: !2489)
!2531 = distinct !DIAssignID()
!2532 = !DILocation(line: 0, scope: !2500)
!2533 = !DILocation(line: 1018, column: 3, scope: !2500)
!2534 = !DILocation(line: 1018, column: 30, scope: !2500)
!2535 = distinct !DIAssignID()
!2536 = distinct !DIAssignID()
!2537 = !DILocation(line: 0, scope: !1408, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 1019, column: 3, scope: !2500)
!2539 = !DILocation(line: 174, column: 12, scope: !1408, inlinedAt: !2538)
!2540 = distinct !DIAssignID()
!2541 = !DILocation(line: 175, column: 8, scope: !1421, inlinedAt: !2538)
!2542 = !DILocation(line: 175, column: 19, scope: !1421, inlinedAt: !2538)
!2543 = !DILocation(line: 176, column: 5, scope: !1421, inlinedAt: !2538)
!2544 = !DILocation(line: 177, column: 6, scope: !1408, inlinedAt: !2538)
!2545 = !DILocation(line: 177, column: 17, scope: !1408, inlinedAt: !2538)
!2546 = distinct !DIAssignID()
!2547 = !DILocation(line: 178, column: 6, scope: !1408, inlinedAt: !2538)
!2548 = !DILocation(line: 178, column: 18, scope: !1408, inlinedAt: !2538)
!2549 = distinct !DIAssignID()
!2550 = !DILocation(line: 1020, column: 10, scope: !2500)
!2551 = !DILocation(line: 1021, column: 1, scope: !2500)
!2552 = !DILocation(line: 1020, column: 3, scope: !2500)
!2553 = distinct !DISubprogram(name: "quotearg_custom", scope: !409, file: !409, line: 1024, type: !2554, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2556)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!93, !72, !72, !72}
!2556 = !{!2557, !2558, !2559}
!2557 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2553, file: !409, line: 1024, type: !72)
!2558 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2553, file: !409, line: 1024, type: !72)
!2559 = !DILocalVariable(name: "arg", arg: 3, scope: !2553, file: !409, line: 1025, type: !72)
!2560 = distinct !DIAssignID()
!2561 = !DILocation(line: 0, scope: !2553)
!2562 = !DILocation(line: 0, scope: !2489, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 1027, column: 10, scope: !2553)
!2564 = !DILocation(line: 0, scope: !2500, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 1009, column: 10, scope: !2489, inlinedAt: !2563)
!2566 = !DILocation(line: 1018, column: 3, scope: !2500, inlinedAt: !2565)
!2567 = !DILocation(line: 1018, column: 30, scope: !2500, inlinedAt: !2565)
!2568 = distinct !DIAssignID()
!2569 = distinct !DIAssignID()
!2570 = !DILocation(line: 0, scope: !1408, inlinedAt: !2571)
!2571 = distinct !DILocation(line: 1019, column: 3, scope: !2500, inlinedAt: !2565)
!2572 = !DILocation(line: 174, column: 12, scope: !1408, inlinedAt: !2571)
!2573 = distinct !DIAssignID()
!2574 = !DILocation(line: 175, column: 8, scope: !1421, inlinedAt: !2571)
!2575 = !DILocation(line: 175, column: 19, scope: !1421, inlinedAt: !2571)
!2576 = !DILocation(line: 176, column: 5, scope: !1421, inlinedAt: !2571)
!2577 = !DILocation(line: 177, column: 6, scope: !1408, inlinedAt: !2571)
!2578 = !DILocation(line: 177, column: 17, scope: !1408, inlinedAt: !2571)
!2579 = distinct !DIAssignID()
!2580 = !DILocation(line: 178, column: 6, scope: !1408, inlinedAt: !2571)
!2581 = !DILocation(line: 178, column: 18, scope: !1408, inlinedAt: !2571)
!2582 = distinct !DIAssignID()
!2583 = !DILocation(line: 1020, column: 10, scope: !2500, inlinedAt: !2565)
!2584 = !DILocation(line: 1021, column: 1, scope: !2500, inlinedAt: !2565)
!2585 = !DILocation(line: 1027, column: 3, scope: !2553)
!2586 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !409, file: !409, line: 1031, type: !2587, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!93, !72, !72, !72, !97}
!2589 = !{!2590, !2591, !2592, !2593}
!2590 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2586, file: !409, line: 1031, type: !72)
!2591 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2586, file: !409, line: 1031, type: !72)
!2592 = !DILocalVariable(name: "arg", arg: 3, scope: !2586, file: !409, line: 1032, type: !72)
!2593 = !DILocalVariable(name: "argsize", arg: 4, scope: !2586, file: !409, line: 1032, type: !97)
!2594 = distinct !DIAssignID()
!2595 = !DILocation(line: 0, scope: !2586)
!2596 = !DILocation(line: 0, scope: !2500, inlinedAt: !2597)
!2597 = distinct !DILocation(line: 1034, column: 10, scope: !2586)
!2598 = !DILocation(line: 1018, column: 3, scope: !2500, inlinedAt: !2597)
!2599 = !DILocation(line: 1018, column: 30, scope: !2500, inlinedAt: !2597)
!2600 = distinct !DIAssignID()
!2601 = distinct !DIAssignID()
!2602 = !DILocation(line: 0, scope: !1408, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 1019, column: 3, scope: !2500, inlinedAt: !2597)
!2604 = !DILocation(line: 174, column: 12, scope: !1408, inlinedAt: !2603)
!2605 = distinct !DIAssignID()
!2606 = !DILocation(line: 175, column: 8, scope: !1421, inlinedAt: !2603)
!2607 = !DILocation(line: 175, column: 19, scope: !1421, inlinedAt: !2603)
!2608 = !DILocation(line: 176, column: 5, scope: !1421, inlinedAt: !2603)
!2609 = !DILocation(line: 177, column: 6, scope: !1408, inlinedAt: !2603)
!2610 = !DILocation(line: 177, column: 17, scope: !1408, inlinedAt: !2603)
!2611 = distinct !DIAssignID()
!2612 = !DILocation(line: 178, column: 6, scope: !1408, inlinedAt: !2603)
!2613 = !DILocation(line: 178, column: 18, scope: !1408, inlinedAt: !2603)
!2614 = distinct !DIAssignID()
!2615 = !DILocation(line: 1020, column: 10, scope: !2500, inlinedAt: !2597)
!2616 = !DILocation(line: 1021, column: 1, scope: !2500, inlinedAt: !2597)
!2617 = !DILocation(line: 1034, column: 3, scope: !2586)
!2618 = distinct !DISubprogram(name: "quote_n_mem", scope: !409, file: !409, line: 1049, type: !2619, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!72, !95, !72, !97}
!2621 = !{!2622, !2623, !2624}
!2622 = !DILocalVariable(name: "n", arg: 1, scope: !2618, file: !409, line: 1049, type: !95)
!2623 = !DILocalVariable(name: "arg", arg: 2, scope: !2618, file: !409, line: 1049, type: !72)
!2624 = !DILocalVariable(name: "argsize", arg: 3, scope: !2618, file: !409, line: 1049, type: !97)
!2625 = !DILocation(line: 0, scope: !2618)
!2626 = !DILocation(line: 1051, column: 10, scope: !2618)
!2627 = !DILocation(line: 1051, column: 3, scope: !2618)
!2628 = distinct !DISubprogram(name: "quote_mem", scope: !409, file: !409, line: 1055, type: !2629, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2631)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!72, !72, !97}
!2631 = !{!2632, !2633}
!2632 = !DILocalVariable(name: "arg", arg: 1, scope: !2628, file: !409, line: 1055, type: !72)
!2633 = !DILocalVariable(name: "argsize", arg: 2, scope: !2628, file: !409, line: 1055, type: !97)
!2634 = !DILocation(line: 0, scope: !2628)
!2635 = !DILocation(line: 0, scope: !2618, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 1057, column: 10, scope: !2628)
!2637 = !DILocation(line: 1051, column: 10, scope: !2618, inlinedAt: !2636)
!2638 = !DILocation(line: 1057, column: 3, scope: !2628)
!2639 = distinct !DISubprogram(name: "quote_n", scope: !409, file: !409, line: 1061, type: !2640, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2642)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!72, !95, !72}
!2642 = !{!2643, !2644}
!2643 = !DILocalVariable(name: "n", arg: 1, scope: !2639, file: !409, line: 1061, type: !95)
!2644 = !DILocalVariable(name: "arg", arg: 2, scope: !2639, file: !409, line: 1061, type: !72)
!2645 = !DILocation(line: 0, scope: !2639)
!2646 = !DILocation(line: 0, scope: !2618, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 1063, column: 10, scope: !2639)
!2648 = !DILocation(line: 1051, column: 10, scope: !2618, inlinedAt: !2647)
!2649 = !DILocation(line: 1063, column: 3, scope: !2639)
!2650 = distinct !DISubprogram(name: "quote", scope: !409, file: !409, line: 1067, type: !2651, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!72, !72}
!2653 = !{!2654}
!2654 = !DILocalVariable(name: "arg", arg: 1, scope: !2650, file: !409, line: 1067, type: !72)
!2655 = !DILocation(line: 0, scope: !2650)
!2656 = !DILocation(line: 0, scope: !2639, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 1069, column: 10, scope: !2650)
!2658 = !DILocation(line: 0, scope: !2618, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 1063, column: 10, scope: !2639, inlinedAt: !2657)
!2660 = !DILocation(line: 1051, column: 10, scope: !2618, inlinedAt: !2659)
!2661 = !DILocation(line: 1069, column: 3, scope: !2650)
!2662 = distinct !DISubprogram(name: "version_etc_arn", scope: !522, file: !522, line: 61, type: !2663, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2700)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{null, !2665, !72, !72, !72, !2699, !97}
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !2667)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !2668)
!2668 = !{!2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2667, file: !234, line: 51, baseType: !95, size: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2667, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2667, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2667, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2667, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2667, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2667, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2667, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2667, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2667, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2667, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2667, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2667, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2667, file: !234, line: 70, baseType: !2683, size: 64, offset: 832)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2667, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2667, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2667, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2667, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2667, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2667, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2667, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2667, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2667, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2667, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2667, file: !234, line: 93, baseType: !2683, size: 64, offset: 1344)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2667, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2667, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2667, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2667, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!2700 = !{!2701, !2702, !2703, !2704, !2705, !2706}
!2701 = !DILocalVariable(name: "stream", arg: 1, scope: !2662, file: !522, line: 61, type: !2665)
!2702 = !DILocalVariable(name: "command_name", arg: 2, scope: !2662, file: !522, line: 62, type: !72)
!2703 = !DILocalVariable(name: "package", arg: 3, scope: !2662, file: !522, line: 62, type: !72)
!2704 = !DILocalVariable(name: "version", arg: 4, scope: !2662, file: !522, line: 63, type: !72)
!2705 = !DILocalVariable(name: "authors", arg: 5, scope: !2662, file: !522, line: 64, type: !2699)
!2706 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2662, file: !522, line: 64, type: !97)
!2707 = !DILocation(line: 0, scope: !2662)
!2708 = !DILocation(line: 66, column: 7, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2662, file: !522, line: 66, column: 7)
!2710 = !DILocation(line: 66, column: 7, scope: !2662)
!2711 = !DILocation(line: 67, column: 5, scope: !2709)
!2712 = !DILocation(line: 69, column: 5, scope: !2709)
!2713 = !DILocation(line: 83, column: 3, scope: !2662)
!2714 = !DILocation(line: 85, column: 3, scope: !2662)
!2715 = !DILocation(line: 88, column: 3, scope: !2662)
!2716 = !DILocation(line: 95, column: 3, scope: !2662)
!2717 = !DILocation(line: 97, column: 3, scope: !2662)
!2718 = !DILocation(line: 105, column: 7, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2662, file: !522, line: 98, column: 5)
!2720 = !DILocation(line: 106, column: 7, scope: !2719)
!2721 = !DILocation(line: 109, column: 7, scope: !2719)
!2722 = !DILocation(line: 110, column: 7, scope: !2719)
!2723 = !DILocation(line: 113, column: 7, scope: !2719)
!2724 = !DILocation(line: 115, column: 7, scope: !2719)
!2725 = !DILocation(line: 120, column: 7, scope: !2719)
!2726 = !DILocation(line: 122, column: 7, scope: !2719)
!2727 = !DILocation(line: 127, column: 7, scope: !2719)
!2728 = !DILocation(line: 129, column: 7, scope: !2719)
!2729 = !DILocation(line: 134, column: 7, scope: !2719)
!2730 = !DILocation(line: 137, column: 7, scope: !2719)
!2731 = !DILocation(line: 142, column: 7, scope: !2719)
!2732 = !DILocation(line: 145, column: 7, scope: !2719)
!2733 = !DILocation(line: 150, column: 7, scope: !2719)
!2734 = !DILocation(line: 154, column: 7, scope: !2719)
!2735 = !DILocation(line: 159, column: 7, scope: !2719)
!2736 = !DILocation(line: 163, column: 7, scope: !2719)
!2737 = !DILocation(line: 170, column: 7, scope: !2719)
!2738 = !DILocation(line: 174, column: 7, scope: !2719)
!2739 = !DILocation(line: 176, column: 1, scope: !2662)
!2740 = distinct !DISubprogram(name: "version_etc_ar", scope: !522, file: !522, line: 183, type: !2741, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2743)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{null, !2665, !72, !72, !72, !2699}
!2743 = !{!2744, !2745, !2746, !2747, !2748, !2749}
!2744 = !DILocalVariable(name: "stream", arg: 1, scope: !2740, file: !522, line: 183, type: !2665)
!2745 = !DILocalVariable(name: "command_name", arg: 2, scope: !2740, file: !522, line: 184, type: !72)
!2746 = !DILocalVariable(name: "package", arg: 3, scope: !2740, file: !522, line: 184, type: !72)
!2747 = !DILocalVariable(name: "version", arg: 4, scope: !2740, file: !522, line: 185, type: !72)
!2748 = !DILocalVariable(name: "authors", arg: 5, scope: !2740, file: !522, line: 185, type: !2699)
!2749 = !DILocalVariable(name: "n_authors", scope: !2740, file: !522, line: 187, type: !97)
!2750 = !DILocation(line: 0, scope: !2740)
!2751 = !DILocation(line: 189, column: 8, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2740, file: !522, line: 189, column: 3)
!2753 = !DILocation(line: 189, scope: !2752)
!2754 = !DILocation(line: 189, column: 23, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2752, file: !522, line: 189, column: 3)
!2756 = !DILocation(line: 189, column: 3, scope: !2752)
!2757 = !DILocation(line: 189, column: 52, scope: !2755)
!2758 = distinct !{!2758, !2756, !2759, !792}
!2759 = !DILocation(line: 190, column: 5, scope: !2752)
!2760 = !DILocation(line: 191, column: 3, scope: !2740)
!2761 = !DILocation(line: 192, column: 1, scope: !2740)
!2762 = distinct !DISubprogram(name: "version_etc_va", scope: !522, file: !522, line: 199, type: !2763, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2775)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{null, !2665, !72, !72, !72, !2765}
!2765 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !324, line: 52, baseType: !2766)
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !326, line: 12, baseType: !2767)
!2767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !522, baseType: !2768)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2769)
!2769 = !{!2770, !2771, !2772, !2773, !2774}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2768, file: !522, line: 192, baseType: !94, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2768, file: !522, line: 192, baseType: !94, size: 64, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2768, file: !522, line: 192, baseType: !94, size: 64, offset: 128)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2768, file: !522, line: 192, baseType: !95, size: 32, offset: 192)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2768, file: !522, line: 192, baseType: !95, size: 32, offset: 224)
!2775 = !{!2776, !2777, !2778, !2779, !2780, !2781, !2782}
!2776 = !DILocalVariable(name: "stream", arg: 1, scope: !2762, file: !522, line: 199, type: !2665)
!2777 = !DILocalVariable(name: "command_name", arg: 2, scope: !2762, file: !522, line: 200, type: !72)
!2778 = !DILocalVariable(name: "package", arg: 3, scope: !2762, file: !522, line: 200, type: !72)
!2779 = !DILocalVariable(name: "version", arg: 4, scope: !2762, file: !522, line: 201, type: !72)
!2780 = !DILocalVariable(name: "authors", arg: 5, scope: !2762, file: !522, line: 201, type: !2765)
!2781 = !DILocalVariable(name: "n_authors", scope: !2762, file: !522, line: 203, type: !97)
!2782 = !DILocalVariable(name: "authtab", scope: !2762, file: !522, line: 204, type: !2783)
!2783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 640, elements: !42)
!2784 = distinct !DIAssignID()
!2785 = !DILocation(line: 0, scope: !2762)
!2786 = !DILocation(line: 204, column: 3, scope: !2762)
!2787 = !DILocation(line: 208, column: 35, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !522, line: 206, column: 3)
!2789 = distinct !DILexicalBlock(scope: !2762, file: !522, line: 206, column: 3)
!2790 = !DILocation(line: 208, column: 33, scope: !2788)
!2791 = !DILocation(line: 208, column: 67, scope: !2788)
!2792 = !DILocation(line: 206, column: 3, scope: !2789)
!2793 = !DILocation(line: 208, column: 14, scope: !2788)
!2794 = !DILocation(line: 0, scope: !2789)
!2795 = !DILocation(line: 211, column: 3, scope: !2762)
!2796 = !DILocation(line: 213, column: 1, scope: !2762)
!2797 = distinct !DISubprogram(name: "version_etc", scope: !522, file: !522, line: 230, type: !2798, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2800)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{null, !2665, !72, !72, !72, null}
!2800 = !{!2801, !2802, !2803, !2804, !2805}
!2801 = !DILocalVariable(name: "stream", arg: 1, scope: !2797, file: !522, line: 230, type: !2665)
!2802 = !DILocalVariable(name: "command_name", arg: 2, scope: !2797, file: !522, line: 231, type: !72)
!2803 = !DILocalVariable(name: "package", arg: 3, scope: !2797, file: !522, line: 231, type: !72)
!2804 = !DILocalVariable(name: "version", arg: 4, scope: !2797, file: !522, line: 232, type: !72)
!2805 = !DILocalVariable(name: "authors", scope: !2797, file: !522, line: 234, type: !2765)
!2806 = distinct !DIAssignID()
!2807 = !DILocation(line: 0, scope: !2797)
!2808 = !DILocation(line: 234, column: 3, scope: !2797)
!2809 = !DILocation(line: 235, column: 3, scope: !2797)
!2810 = !DILocation(line: 236, column: 3, scope: !2797)
!2811 = !DILocation(line: 237, column: 3, scope: !2797)
!2812 = !DILocation(line: 238, column: 1, scope: !2797)
!2813 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !522, file: !522, line: 241, type: !364, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648)
!2814 = !DILocation(line: 243, column: 3, scope: !2813)
!2815 = !DILocation(line: 248, column: 3, scope: !2813)
!2816 = !DILocation(line: 254, column: 3, scope: !2813)
!2817 = !DILocation(line: 259, column: 3, scope: !2813)
!2818 = !DILocation(line: 261, column: 1, scope: !2813)
!2819 = distinct !DISubprogram(name: "xnrealloc", scope: !2820, file: !2820, line: 147, type: !2821, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !2823)
!2820 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!94, !94, !97, !97}
!2823 = !{!2824, !2825, !2826}
!2824 = !DILocalVariable(name: "p", arg: 1, scope: !2819, file: !2820, line: 147, type: !94)
!2825 = !DILocalVariable(name: "n", arg: 2, scope: !2819, file: !2820, line: 147, type: !97)
!2826 = !DILocalVariable(name: "s", arg: 3, scope: !2819, file: !2820, line: 147, type: !97)
!2827 = !DILocation(line: 0, scope: !2819)
!2828 = !DILocalVariable(name: "p", arg: 1, scope: !2829, file: !656, line: 83, type: !94)
!2829 = distinct !DISubprogram(name: "xreallocarray", scope: !656, file: !656, line: 83, type: !2821, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !2830)
!2830 = !{!2828, !2831, !2832}
!2831 = !DILocalVariable(name: "n", arg: 2, scope: !2829, file: !656, line: 83, type: !97)
!2832 = !DILocalVariable(name: "s", arg: 3, scope: !2829, file: !656, line: 83, type: !97)
!2833 = !DILocation(line: 0, scope: !2829, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 149, column: 10, scope: !2819)
!2835 = !DILocation(line: 85, column: 25, scope: !2829, inlinedAt: !2834)
!2836 = !DILocalVariable(name: "p", arg: 1, scope: !2837, file: !656, line: 37, type: !94)
!2837 = distinct !DISubprogram(name: "check_nonnull", scope: !656, file: !656, line: 37, type: !2838, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !2840)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!94, !94}
!2840 = !{!2836}
!2841 = !DILocation(line: 0, scope: !2837, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 85, column: 10, scope: !2829, inlinedAt: !2834)
!2843 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !2842)
!2844 = distinct !DILexicalBlock(scope: !2837, file: !656, line: 39, column: 7)
!2845 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !2842)
!2846 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !2842)
!2847 = !DILocation(line: 149, column: 3, scope: !2819)
!2848 = !DILocation(line: 0, scope: !2829)
!2849 = !DILocation(line: 85, column: 25, scope: !2829)
!2850 = !DILocation(line: 0, scope: !2837, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 85, column: 10, scope: !2829)
!2852 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !2851)
!2853 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !2851)
!2854 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !2851)
!2855 = !DILocation(line: 85, column: 3, scope: !2829)
!2856 = distinct !DISubprogram(name: "xmalloc", scope: !656, file: !656, line: 47, type: !2857, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!94, !97}
!2859 = !{!2860}
!2860 = !DILocalVariable(name: "s", arg: 1, scope: !2856, file: !656, line: 47, type: !97)
!2861 = !DILocation(line: 0, scope: !2856)
!2862 = !DILocation(line: 49, column: 25, scope: !2856)
!2863 = !DILocation(line: 0, scope: !2837, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 49, column: 10, scope: !2856)
!2865 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !2864)
!2866 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !2864)
!2867 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !2864)
!2868 = !DILocation(line: 49, column: 3, scope: !2856)
!2869 = !DISubprogram(name: "malloc", scope: !890, file: !890, line: 540, type: !2857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2870 = distinct !DISubprogram(name: "ximalloc", scope: !656, file: !656, line: 53, type: !2871, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !2873)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!94, !675}
!2873 = !{!2874}
!2874 = !DILocalVariable(name: "s", arg: 1, scope: !2870, file: !656, line: 53, type: !675)
!2875 = !DILocation(line: 0, scope: !2870)
!2876 = !DILocalVariable(name: "s", arg: 1, scope: !2877, file: !2878, line: 55, type: !675)
!2877 = distinct !DISubprogram(name: "imalloc", scope: !2878, file: !2878, line: 55, type: !2871, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !2879)
!2878 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2879 = !{!2876}
!2880 = !DILocation(line: 0, scope: !2877, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 55, column: 25, scope: !2870)
!2882 = !DILocation(line: 57, column: 26, scope: !2877, inlinedAt: !2881)
!2883 = !DILocation(line: 0, scope: !2837, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 55, column: 10, scope: !2870)
!2885 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !2884)
!2886 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !2884)
!2887 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !2884)
!2888 = !DILocation(line: 55, column: 3, scope: !2870)
!2889 = distinct !DISubprogram(name: "xcharalloc", scope: !656, file: !656, line: 59, type: !2890, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!93, !97}
!2892 = !{!2893}
!2893 = !DILocalVariable(name: "n", arg: 1, scope: !2889, file: !656, line: 59, type: !97)
!2894 = !DILocation(line: 0, scope: !2889)
!2895 = !DILocation(line: 0, scope: !2856, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 61, column: 10, scope: !2889)
!2897 = !DILocation(line: 49, column: 25, scope: !2856, inlinedAt: !2896)
!2898 = !DILocation(line: 0, scope: !2837, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 49, column: 10, scope: !2856, inlinedAt: !2896)
!2900 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !2899)
!2901 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !2899)
!2902 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !2899)
!2903 = !DILocation(line: 61, column: 3, scope: !2889)
!2904 = distinct !DISubprogram(name: "xrealloc", scope: !656, file: !656, line: 68, type: !2905, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !2907)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!94, !94, !97}
!2907 = !{!2908, !2909}
!2908 = !DILocalVariable(name: "p", arg: 1, scope: !2904, file: !656, line: 68, type: !94)
!2909 = !DILocalVariable(name: "s", arg: 2, scope: !2904, file: !656, line: 68, type: !97)
!2910 = !DILocation(line: 0, scope: !2904)
!2911 = !DILocalVariable(name: "ptr", arg: 1, scope: !2912, file: !2913, line: 2057, type: !94)
!2912 = distinct !DISubprogram(name: "rpl_realloc", scope: !2913, file: !2913, line: 2057, type: !2905, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !2914)
!2913 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2914 = !{!2911, !2915}
!2915 = !DILocalVariable(name: "size", arg: 2, scope: !2912, file: !2913, line: 2057, type: !97)
!2916 = !DILocation(line: 0, scope: !2912, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 70, column: 25, scope: !2904)
!2918 = !DILocation(line: 2059, column: 24, scope: !2912, inlinedAt: !2917)
!2919 = !DILocation(line: 2059, column: 10, scope: !2912, inlinedAt: !2917)
!2920 = !DILocation(line: 0, scope: !2837, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 70, column: 10, scope: !2904)
!2922 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !2921)
!2923 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !2921)
!2924 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !2921)
!2925 = !DILocation(line: 70, column: 3, scope: !2904)
!2926 = !DISubprogram(name: "realloc", scope: !890, file: !890, line: 551, type: !2905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2927 = distinct !DISubprogram(name: "xirealloc", scope: !656, file: !656, line: 74, type: !2928, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !2930)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!94, !94, !675}
!2930 = !{!2931, !2932}
!2931 = !DILocalVariable(name: "p", arg: 1, scope: !2927, file: !656, line: 74, type: !94)
!2932 = !DILocalVariable(name: "s", arg: 2, scope: !2927, file: !656, line: 74, type: !675)
!2933 = !DILocation(line: 0, scope: !2927)
!2934 = !DILocalVariable(name: "p", arg: 1, scope: !2935, file: !2878, line: 66, type: !94)
!2935 = distinct !DISubprogram(name: "irealloc", scope: !2878, file: !2878, line: 66, type: !2928, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !2936)
!2936 = !{!2934, !2937}
!2937 = !DILocalVariable(name: "s", arg: 2, scope: !2935, file: !2878, line: 66, type: !675)
!2938 = !DILocation(line: 0, scope: !2935, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 76, column: 25, scope: !2927)
!2940 = !DILocation(line: 0, scope: !2912, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 68, column: 26, scope: !2935, inlinedAt: !2939)
!2942 = !DILocation(line: 2059, column: 24, scope: !2912, inlinedAt: !2941)
!2943 = !DILocation(line: 2059, column: 10, scope: !2912, inlinedAt: !2941)
!2944 = !DILocation(line: 0, scope: !2837, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 76, column: 10, scope: !2927)
!2946 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !2945)
!2947 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !2945)
!2948 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !2945)
!2949 = !DILocation(line: 76, column: 3, scope: !2927)
!2950 = distinct !DISubprogram(name: "xireallocarray", scope: !656, file: !656, line: 89, type: !2951, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!94, !94, !675, !675}
!2953 = !{!2954, !2955, !2956}
!2954 = !DILocalVariable(name: "p", arg: 1, scope: !2950, file: !656, line: 89, type: !94)
!2955 = !DILocalVariable(name: "n", arg: 2, scope: !2950, file: !656, line: 89, type: !675)
!2956 = !DILocalVariable(name: "s", arg: 3, scope: !2950, file: !656, line: 89, type: !675)
!2957 = !DILocation(line: 0, scope: !2950)
!2958 = !DILocalVariable(name: "p", arg: 1, scope: !2959, file: !2878, line: 98, type: !94)
!2959 = distinct !DISubprogram(name: "ireallocarray", scope: !2878, file: !2878, line: 98, type: !2951, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !2960)
!2960 = !{!2958, !2961, !2962}
!2961 = !DILocalVariable(name: "n", arg: 2, scope: !2959, file: !2878, line: 98, type: !675)
!2962 = !DILocalVariable(name: "s", arg: 3, scope: !2959, file: !2878, line: 98, type: !675)
!2963 = !DILocation(line: 0, scope: !2959, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 91, column: 25, scope: !2950)
!2965 = !DILocation(line: 101, column: 13, scope: !2959, inlinedAt: !2964)
!2966 = !DILocation(line: 0, scope: !2837, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 91, column: 10, scope: !2950)
!2968 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !2967)
!2969 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !2967)
!2970 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !2967)
!2971 = !DILocation(line: 91, column: 3, scope: !2950)
!2972 = distinct !DISubprogram(name: "xnmalloc", scope: !656, file: !656, line: 98, type: !2973, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !2975)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!94, !97, !97}
!2975 = !{!2976, !2977}
!2976 = !DILocalVariable(name: "n", arg: 1, scope: !2972, file: !656, line: 98, type: !97)
!2977 = !DILocalVariable(name: "s", arg: 2, scope: !2972, file: !656, line: 98, type: !97)
!2978 = !DILocation(line: 0, scope: !2972)
!2979 = !DILocation(line: 0, scope: !2829, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 100, column: 10, scope: !2972)
!2981 = !DILocation(line: 85, column: 25, scope: !2829, inlinedAt: !2980)
!2982 = !DILocation(line: 0, scope: !2837, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 85, column: 10, scope: !2829, inlinedAt: !2980)
!2984 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !2983)
!2985 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !2983)
!2986 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !2983)
!2987 = !DILocation(line: 100, column: 3, scope: !2972)
!2988 = distinct !DISubprogram(name: "xinmalloc", scope: !656, file: !656, line: 104, type: !2989, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!94, !675, !675}
!2991 = !{!2992, !2993}
!2992 = !DILocalVariable(name: "n", arg: 1, scope: !2988, file: !656, line: 104, type: !675)
!2993 = !DILocalVariable(name: "s", arg: 2, scope: !2988, file: !656, line: 104, type: !675)
!2994 = !DILocation(line: 0, scope: !2988)
!2995 = !DILocation(line: 0, scope: !2950, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 106, column: 10, scope: !2988)
!2997 = !DILocation(line: 0, scope: !2959, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 91, column: 25, scope: !2950, inlinedAt: !2996)
!2999 = !DILocation(line: 101, column: 13, scope: !2959, inlinedAt: !2998)
!3000 = !DILocation(line: 0, scope: !2837, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 91, column: 10, scope: !2950, inlinedAt: !2996)
!3002 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !3001)
!3003 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !3001)
!3004 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !3001)
!3005 = !DILocation(line: 106, column: 3, scope: !2988)
!3006 = distinct !DISubprogram(name: "x2realloc", scope: !656, file: !656, line: 116, type: !3007, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3009)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!94, !94, !662}
!3009 = !{!3010, !3011}
!3010 = !DILocalVariable(name: "p", arg: 1, scope: !3006, file: !656, line: 116, type: !94)
!3011 = !DILocalVariable(name: "ps", arg: 2, scope: !3006, file: !656, line: 116, type: !662)
!3012 = !DILocation(line: 0, scope: !3006)
!3013 = !DILocation(line: 0, scope: !659, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 118, column: 10, scope: !3006)
!3015 = !DILocation(line: 178, column: 14, scope: !659, inlinedAt: !3014)
!3016 = !DILocation(line: 180, column: 9, scope: !3017, inlinedAt: !3014)
!3017 = distinct !DILexicalBlock(scope: !659, file: !656, line: 180, column: 7)
!3018 = !DILocation(line: 180, column: 7, scope: !659, inlinedAt: !3014)
!3019 = !DILocation(line: 182, column: 13, scope: !3020, inlinedAt: !3014)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !656, line: 182, column: 11)
!3021 = distinct !DILexicalBlock(scope: !3017, file: !656, line: 181, column: 5)
!3022 = !DILocation(line: 182, column: 11, scope: !3021, inlinedAt: !3014)
!3023 = !DILocation(line: 197, column: 11, scope: !3024, inlinedAt: !3014)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !656, line: 197, column: 11)
!3025 = distinct !DILexicalBlock(scope: !3017, file: !656, line: 195, column: 5)
!3026 = !DILocation(line: 197, column: 11, scope: !3025, inlinedAt: !3014)
!3027 = !DILocation(line: 198, column: 9, scope: !3024, inlinedAt: !3014)
!3028 = !DILocation(line: 0, scope: !2829, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 201, column: 7, scope: !659, inlinedAt: !3014)
!3030 = !DILocation(line: 85, column: 25, scope: !2829, inlinedAt: !3029)
!3031 = !DILocation(line: 0, scope: !2837, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 85, column: 10, scope: !2829, inlinedAt: !3029)
!3033 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !3032)
!3034 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !3032)
!3035 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !3032)
!3036 = !DILocation(line: 202, column: 7, scope: !659, inlinedAt: !3014)
!3037 = !DILocation(line: 118, column: 3, scope: !3006)
!3038 = !DILocation(line: 0, scope: !659)
!3039 = !DILocation(line: 178, column: 14, scope: !659)
!3040 = !DILocation(line: 180, column: 9, scope: !3017)
!3041 = !DILocation(line: 180, column: 7, scope: !659)
!3042 = !DILocation(line: 182, column: 13, scope: !3020)
!3043 = !DILocation(line: 182, column: 11, scope: !3021)
!3044 = !DILocation(line: 190, column: 30, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3020, file: !656, line: 183, column: 9)
!3046 = !DILocation(line: 191, column: 16, scope: !3045)
!3047 = !DILocation(line: 191, column: 13, scope: !3045)
!3048 = !DILocation(line: 192, column: 9, scope: !3045)
!3049 = !DILocation(line: 197, column: 11, scope: !3024)
!3050 = !DILocation(line: 197, column: 11, scope: !3025)
!3051 = !DILocation(line: 198, column: 9, scope: !3024)
!3052 = !DILocation(line: 0, scope: !2829, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 201, column: 7, scope: !659)
!3054 = !DILocation(line: 85, column: 25, scope: !2829, inlinedAt: !3053)
!3055 = !DILocation(line: 0, scope: !2837, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 85, column: 10, scope: !2829, inlinedAt: !3053)
!3057 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !3056)
!3058 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !3056)
!3059 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !3056)
!3060 = !DILocation(line: 202, column: 7, scope: !659)
!3061 = !DILocation(line: 203, column: 3, scope: !659)
!3062 = !DILocation(line: 0, scope: !671)
!3063 = !DILocation(line: 230, column: 14, scope: !671)
!3064 = !DILocation(line: 238, column: 7, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !671, file: !656, line: 238, column: 7)
!3066 = !DILocation(line: 238, column: 7, scope: !671)
!3067 = !DILocation(line: 240, column: 9, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !671, file: !656, line: 240, column: 7)
!3069 = !DILocation(line: 240, column: 18, scope: !3068)
!3070 = !DILocation(line: 253, column: 8, scope: !671)
!3071 = !DILocation(line: 256, column: 7, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !671, file: !656, line: 256, column: 7)
!3073 = !DILocation(line: 256, column: 7, scope: !671)
!3074 = !DILocation(line: 258, column: 27, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3072, file: !656, line: 257, column: 5)
!3076 = !DILocation(line: 259, column: 32, scope: !3075)
!3077 = !DILocation(line: 260, column: 5, scope: !3075)
!3078 = !DILocation(line: 262, column: 9, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !671, file: !656, line: 262, column: 7)
!3080 = !DILocation(line: 262, column: 7, scope: !671)
!3081 = !DILocation(line: 263, column: 9, scope: !3079)
!3082 = !DILocation(line: 263, column: 5, scope: !3079)
!3083 = !DILocation(line: 264, column: 9, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !671, file: !656, line: 264, column: 7)
!3085 = !DILocation(line: 264, column: 14, scope: !3084)
!3086 = !DILocation(line: 265, column: 7, scope: !3084)
!3087 = !DILocation(line: 265, column: 11, scope: !3084)
!3088 = !DILocation(line: 266, column: 11, scope: !3084)
!3089 = !DILocation(line: 267, column: 14, scope: !3084)
!3090 = !DILocation(line: 264, column: 7, scope: !671)
!3091 = !DILocation(line: 268, column: 5, scope: !3084)
!3092 = !DILocation(line: 0, scope: !2904, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 269, column: 8, scope: !671)
!3094 = !DILocation(line: 0, scope: !2912, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 70, column: 25, scope: !2904, inlinedAt: !3093)
!3096 = !DILocation(line: 2059, column: 24, scope: !2912, inlinedAt: !3095)
!3097 = !DILocation(line: 2059, column: 10, scope: !2912, inlinedAt: !3095)
!3098 = !DILocation(line: 0, scope: !2837, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 70, column: 10, scope: !2904, inlinedAt: !3093)
!3100 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !3099)
!3101 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !3099)
!3102 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !3099)
!3103 = !DILocation(line: 270, column: 7, scope: !671)
!3104 = !DILocation(line: 271, column: 3, scope: !671)
!3105 = distinct !DISubprogram(name: "xzalloc", scope: !656, file: !656, line: 279, type: !2857, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3106)
!3106 = !{!3107}
!3107 = !DILocalVariable(name: "s", arg: 1, scope: !3105, file: !656, line: 279, type: !97)
!3108 = !DILocation(line: 0, scope: !3105)
!3109 = !DILocalVariable(name: "n", arg: 1, scope: !3110, file: !656, line: 294, type: !97)
!3110 = distinct !DISubprogram(name: "xcalloc", scope: !656, file: !656, line: 294, type: !2973, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3111)
!3111 = !{!3109, !3112}
!3112 = !DILocalVariable(name: "s", arg: 2, scope: !3110, file: !656, line: 294, type: !97)
!3113 = !DILocation(line: 0, scope: !3110, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 281, column: 10, scope: !3105)
!3115 = !DILocation(line: 296, column: 25, scope: !3110, inlinedAt: !3114)
!3116 = !DILocation(line: 0, scope: !2837, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 296, column: 10, scope: !3110, inlinedAt: !3114)
!3118 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !3117)
!3119 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !3117)
!3120 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !3117)
!3121 = !DILocation(line: 281, column: 3, scope: !3105)
!3122 = !DISubprogram(name: "calloc", scope: !890, file: !890, line: 543, type: !2973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3123 = !DILocation(line: 0, scope: !3110)
!3124 = !DILocation(line: 296, column: 25, scope: !3110)
!3125 = !DILocation(line: 0, scope: !2837, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 296, column: 10, scope: !3110)
!3127 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !3126)
!3128 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !3126)
!3129 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !3126)
!3130 = !DILocation(line: 296, column: 3, scope: !3110)
!3131 = distinct !DISubprogram(name: "xizalloc", scope: !656, file: !656, line: 285, type: !2871, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3132)
!3132 = !{!3133}
!3133 = !DILocalVariable(name: "s", arg: 1, scope: !3131, file: !656, line: 285, type: !675)
!3134 = !DILocation(line: 0, scope: !3131)
!3135 = !DILocalVariable(name: "n", arg: 1, scope: !3136, file: !656, line: 300, type: !675)
!3136 = distinct !DISubprogram(name: "xicalloc", scope: !656, file: !656, line: 300, type: !2989, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3137)
!3137 = !{!3135, !3138}
!3138 = !DILocalVariable(name: "s", arg: 2, scope: !3136, file: !656, line: 300, type: !675)
!3139 = !DILocation(line: 0, scope: !3136, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 287, column: 10, scope: !3131)
!3141 = !DILocalVariable(name: "n", arg: 1, scope: !3142, file: !2878, line: 77, type: !675)
!3142 = distinct !DISubprogram(name: "icalloc", scope: !2878, file: !2878, line: 77, type: !2989, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3143)
!3143 = !{!3141, !3144}
!3144 = !DILocalVariable(name: "s", arg: 2, scope: !3142, file: !2878, line: 77, type: !675)
!3145 = !DILocation(line: 0, scope: !3142, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 302, column: 25, scope: !3136, inlinedAt: !3140)
!3147 = !DILocation(line: 91, column: 10, scope: !3142, inlinedAt: !3146)
!3148 = !DILocation(line: 0, scope: !2837, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 302, column: 10, scope: !3136, inlinedAt: !3140)
!3150 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !3149)
!3151 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !3149)
!3152 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !3149)
!3153 = !DILocation(line: 287, column: 3, scope: !3131)
!3154 = !DILocation(line: 0, scope: !3136)
!3155 = !DILocation(line: 0, scope: !3142, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 302, column: 25, scope: !3136)
!3157 = !DILocation(line: 91, column: 10, scope: !3142, inlinedAt: !3156)
!3158 = !DILocation(line: 0, scope: !2837, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 302, column: 10, scope: !3136)
!3160 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !3159)
!3161 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !3159)
!3162 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !3159)
!3163 = !DILocation(line: 302, column: 3, scope: !3136)
!3164 = distinct !DISubprogram(name: "xmemdup", scope: !656, file: !656, line: 310, type: !3165, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3167)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!94, !926, !97}
!3167 = !{!3168, !3169}
!3168 = !DILocalVariable(name: "p", arg: 1, scope: !3164, file: !656, line: 310, type: !926)
!3169 = !DILocalVariable(name: "s", arg: 2, scope: !3164, file: !656, line: 310, type: !97)
!3170 = !DILocation(line: 0, scope: !3164)
!3171 = !DILocation(line: 0, scope: !2856, inlinedAt: !3172)
!3172 = distinct !DILocation(line: 312, column: 18, scope: !3164)
!3173 = !DILocation(line: 49, column: 25, scope: !2856, inlinedAt: !3172)
!3174 = !DILocation(line: 0, scope: !2837, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 49, column: 10, scope: !2856, inlinedAt: !3172)
!3176 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !3175)
!3177 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !3175)
!3178 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !3175)
!3179 = !DILocalVariable(name: "__dest", arg: 1, scope: !3180, file: !1311, line: 26, type: !3183)
!3180 = distinct !DISubprogram(name: "memcpy", scope: !1311, file: !1311, line: 26, type: !3181, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3184)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!94, !3183, !925, !97}
!3183 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!3184 = !{!3179, !3185, !3186}
!3185 = !DILocalVariable(name: "__src", arg: 2, scope: !3180, file: !1311, line: 26, type: !925)
!3186 = !DILocalVariable(name: "__len", arg: 3, scope: !3180, file: !1311, line: 26, type: !97)
!3187 = !DILocation(line: 0, scope: !3180, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 312, column: 10, scope: !3164)
!3189 = !DILocation(line: 29, column: 10, scope: !3180, inlinedAt: !3188)
!3190 = !DILocation(line: 312, column: 3, scope: !3164)
!3191 = distinct !DISubprogram(name: "ximemdup", scope: !656, file: !656, line: 316, type: !3192, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!94, !926, !675}
!3194 = !{!3195, !3196}
!3195 = !DILocalVariable(name: "p", arg: 1, scope: !3191, file: !656, line: 316, type: !926)
!3196 = !DILocalVariable(name: "s", arg: 2, scope: !3191, file: !656, line: 316, type: !675)
!3197 = !DILocation(line: 0, scope: !3191)
!3198 = !DILocation(line: 0, scope: !2870, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 318, column: 18, scope: !3191)
!3200 = !DILocation(line: 0, scope: !2877, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 55, column: 25, scope: !2870, inlinedAt: !3199)
!3202 = !DILocation(line: 57, column: 26, scope: !2877, inlinedAt: !3201)
!3203 = !DILocation(line: 0, scope: !2837, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 55, column: 10, scope: !2870, inlinedAt: !3199)
!3205 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !3204)
!3206 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !3204)
!3207 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !3204)
!3208 = !DILocation(line: 0, scope: !3180, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 318, column: 10, scope: !3191)
!3210 = !DILocation(line: 29, column: 10, scope: !3180, inlinedAt: !3209)
!3211 = !DILocation(line: 318, column: 3, scope: !3191)
!3212 = distinct !DISubprogram(name: "ximemdup0", scope: !656, file: !656, line: 325, type: !3213, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3215)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!93, !926, !675}
!3215 = !{!3216, !3217, !3218}
!3216 = !DILocalVariable(name: "p", arg: 1, scope: !3212, file: !656, line: 325, type: !926)
!3217 = !DILocalVariable(name: "s", arg: 2, scope: !3212, file: !656, line: 325, type: !675)
!3218 = !DILocalVariable(name: "result", scope: !3212, file: !656, line: 327, type: !93)
!3219 = !DILocation(line: 0, scope: !3212)
!3220 = !DILocation(line: 327, column: 30, scope: !3212)
!3221 = !DILocation(line: 0, scope: !2870, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 327, column: 18, scope: !3212)
!3223 = !DILocation(line: 0, scope: !2877, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 55, column: 25, scope: !2870, inlinedAt: !3222)
!3225 = !DILocation(line: 57, column: 26, scope: !2877, inlinedAt: !3224)
!3226 = !DILocation(line: 0, scope: !2837, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 55, column: 10, scope: !2870, inlinedAt: !3222)
!3228 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !3227)
!3229 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !3227)
!3230 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !3227)
!3231 = !DILocation(line: 328, column: 3, scope: !3212)
!3232 = !DILocation(line: 328, column: 13, scope: !3212)
!3233 = !DILocation(line: 0, scope: !3180, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 329, column: 10, scope: !3212)
!3235 = !DILocation(line: 29, column: 10, scope: !3180, inlinedAt: !3234)
!3236 = !DILocation(line: 329, column: 3, scope: !3212)
!3237 = distinct !DISubprogram(name: "xstrdup", scope: !656, file: !656, line: 335, type: !904, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3238)
!3238 = !{!3239}
!3239 = !DILocalVariable(name: "string", arg: 1, scope: !3237, file: !656, line: 335, type: !72)
!3240 = !DILocation(line: 0, scope: !3237)
!3241 = !DILocation(line: 337, column: 27, scope: !3237)
!3242 = !DILocation(line: 337, column: 43, scope: !3237)
!3243 = !DILocation(line: 0, scope: !3164, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 337, column: 10, scope: !3237)
!3245 = !DILocation(line: 0, scope: !2856, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 312, column: 18, scope: !3164, inlinedAt: !3244)
!3247 = !DILocation(line: 49, column: 25, scope: !2856, inlinedAt: !3246)
!3248 = !DILocation(line: 0, scope: !2837, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 49, column: 10, scope: !2856, inlinedAt: !3246)
!3250 = !DILocation(line: 39, column: 8, scope: !2844, inlinedAt: !3249)
!3251 = !DILocation(line: 39, column: 7, scope: !2837, inlinedAt: !3249)
!3252 = !DILocation(line: 40, column: 5, scope: !2844, inlinedAt: !3249)
!3253 = !DILocation(line: 0, scope: !3180, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 312, column: 10, scope: !3164, inlinedAt: !3244)
!3255 = !DILocation(line: 29, column: 10, scope: !3180, inlinedAt: !3254)
!3256 = !DILocation(line: 337, column: 3, scope: !3237)
!3257 = distinct !DISubprogram(name: "xalloc_die", scope: !618, file: !618, line: 32, type: !364, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !690, retainedNodes: !3258)
!3258 = !{!3259}
!3259 = !DILocalVariable(name: "__errstatus", scope: !3260, file: !618, line: 34, type: !3261)
!3260 = distinct !DILexicalBlock(scope: !3257, file: !618, line: 34, column: 3)
!3261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!3262 = !DILocation(line: 34, column: 3, scope: !3260)
!3263 = !DILocation(line: 0, scope: !3260)
!3264 = !DILocation(line: 40, column: 3, scope: !3257)
!3265 = distinct !DISubprogram(name: "close_stream", scope: !693, file: !693, line: 55, type: !3266, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3302)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!95, !3268}
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !3270)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !3271)
!3271 = !{!3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3270, file: !234, line: 51, baseType: !95, size: 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3270, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3270, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3270, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3270, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3270, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3270, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3270, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3270, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3270, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3270, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3270, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3270, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3270, file: !234, line: 70, baseType: !3286, size: 64, offset: 832)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3270, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3270, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3270, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3270, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3270, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3270, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3270, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3270, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3270, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3270, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3270, file: !234, line: 93, baseType: !3286, size: 64, offset: 1344)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3270, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3270, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3270, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3270, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!3302 = !{!3303, !3304, !3306, !3307}
!3303 = !DILocalVariable(name: "stream", arg: 1, scope: !3265, file: !693, line: 55, type: !3268)
!3304 = !DILocalVariable(name: "some_pending", scope: !3265, file: !693, line: 57, type: !3305)
!3305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!3306 = !DILocalVariable(name: "prev_fail", scope: !3265, file: !693, line: 58, type: !3305)
!3307 = !DILocalVariable(name: "fclose_fail", scope: !3265, file: !693, line: 59, type: !3305)
!3308 = !DILocation(line: 0, scope: !3265)
!3309 = !DILocation(line: 57, column: 30, scope: !3265)
!3310 = !DILocalVariable(name: "__stream", arg: 1, scope: !3311, file: !1154, line: 135, type: !3268)
!3311 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1154, file: !1154, line: 135, type: !3266, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3312)
!3312 = !{!3310}
!3313 = !DILocation(line: 0, scope: !3311, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 58, column: 27, scope: !3265)
!3315 = !DILocation(line: 137, column: 10, scope: !3311, inlinedAt: !3314)
!3316 = !{!1163, !746, i64 0}
!3317 = !DILocation(line: 58, column: 43, scope: !3265)
!3318 = !DILocation(line: 59, column: 29, scope: !3265)
!3319 = !DILocation(line: 59, column: 45, scope: !3265)
!3320 = !DILocation(line: 69, column: 17, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3265, file: !693, line: 69, column: 7)
!3322 = !DILocation(line: 57, column: 50, scope: !3265)
!3323 = !DILocation(line: 69, column: 33, scope: !3321)
!3324 = !DILocation(line: 69, column: 53, scope: !3321)
!3325 = !DILocation(line: 69, column: 59, scope: !3321)
!3326 = !DILocation(line: 69, column: 7, scope: !3265)
!3327 = !DILocation(line: 71, column: 11, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3321, file: !693, line: 70, column: 5)
!3329 = !DILocation(line: 72, column: 9, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3328, file: !693, line: 71, column: 11)
!3331 = !DILocation(line: 72, column: 15, scope: !3330)
!3332 = !DILocation(line: 77, column: 1, scope: !3265)
!3333 = !DISubprogram(name: "__fpending", scope: !3334, file: !3334, line: 75, type: !3335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3334 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!97, !3268}
!3337 = distinct !DISubprogram(name: "rpl_fclose", scope: !695, file: !695, line: 58, type: !3338, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !3374)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!95, !3340}
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !3342)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !3343)
!3343 = !{!3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3342, file: !234, line: 51, baseType: !95, size: 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3342, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3342, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3342, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3342, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3342, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3342, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3342, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3342, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3342, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3342, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3342, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3342, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3342, file: !234, line: 70, baseType: !3358, size: 64, offset: 832)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3342, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3342, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3342, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3342, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3342, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3342, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3342, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3342, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3342, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3342, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3342, file: !234, line: 93, baseType: !3358, size: 64, offset: 1344)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3342, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3342, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3342, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3342, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!3374 = !{!3375, !3376, !3377, !3378}
!3375 = !DILocalVariable(name: "fp", arg: 1, scope: !3337, file: !695, line: 58, type: !3340)
!3376 = !DILocalVariable(name: "saved_errno", scope: !3337, file: !695, line: 60, type: !95)
!3377 = !DILocalVariable(name: "fd", scope: !3337, file: !695, line: 63, type: !95)
!3378 = !DILocalVariable(name: "result", scope: !3337, file: !695, line: 74, type: !95)
!3379 = !DILocation(line: 0, scope: !3337)
!3380 = !DILocation(line: 63, column: 12, scope: !3337)
!3381 = !DILocation(line: 64, column: 10, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3337, file: !695, line: 64, column: 7)
!3383 = !DILocation(line: 64, column: 7, scope: !3337)
!3384 = !DILocation(line: 65, column: 12, scope: !3382)
!3385 = !DILocation(line: 65, column: 5, scope: !3382)
!3386 = !DILocation(line: 70, column: 9, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3337, file: !695, line: 70, column: 7)
!3388 = !DILocation(line: 70, column: 23, scope: !3387)
!3389 = !DILocation(line: 70, column: 33, scope: !3387)
!3390 = !DILocation(line: 70, column: 26, scope: !3387)
!3391 = !DILocation(line: 70, column: 59, scope: !3387)
!3392 = !DILocation(line: 71, column: 7, scope: !3387)
!3393 = !DILocation(line: 71, column: 10, scope: !3387)
!3394 = !DILocation(line: 70, column: 7, scope: !3337)
!3395 = !DILocation(line: 100, column: 12, scope: !3337)
!3396 = !DILocation(line: 105, column: 7, scope: !3337)
!3397 = !DILocation(line: 72, column: 19, scope: !3387)
!3398 = !DILocation(line: 105, column: 19, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3337, file: !695, line: 105, column: 7)
!3400 = !DILocation(line: 107, column: 13, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3399, file: !695, line: 106, column: 5)
!3402 = !DILocation(line: 109, column: 5, scope: !3401)
!3403 = !DILocation(line: 112, column: 1, scope: !3337)
!3404 = !DISubprogram(name: "fileno", scope: !324, file: !324, line: 809, type: !3338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3405 = !DISubprogram(name: "fclose", scope: !324, file: !324, line: 178, type: !3338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3406 = !DISubprogram(name: "__freading", scope: !3334, file: !3334, line: 51, type: !3338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3407 = !DISubprogram(name: "lseek", scope: !1028, file: !1028, line: 339, type: !3408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!256, !95, !256, !95}
!3410 = distinct !DISubprogram(name: "rpl_fflush", scope: !697, file: !697, line: 130, type: !3411, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3447)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!95, !3413}
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !3415)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !3416)
!3416 = !{!3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3415, file: !234, line: 51, baseType: !95, size: 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3415, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3415, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3415, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3415, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3415, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3415, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3415, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3415, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3415, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3415, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3415, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3415, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3415, file: !234, line: 70, baseType: !3431, size: 64, offset: 832)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3415, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3415, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3415, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3415, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3415, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3415, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3415, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3415, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3415, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3415, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3415, file: !234, line: 93, baseType: !3431, size: 64, offset: 1344)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3415, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3415, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3415, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3415, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!3447 = !{!3448}
!3448 = !DILocalVariable(name: "stream", arg: 1, scope: !3410, file: !697, line: 130, type: !3413)
!3449 = !DILocation(line: 0, scope: !3410)
!3450 = !DILocation(line: 151, column: 14, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3410, file: !697, line: 151, column: 7)
!3452 = !DILocation(line: 151, column: 22, scope: !3451)
!3453 = !DILocation(line: 151, column: 27, scope: !3451)
!3454 = !DILocation(line: 151, column: 7, scope: !3410)
!3455 = !DILocation(line: 152, column: 12, scope: !3451)
!3456 = !DILocation(line: 152, column: 5, scope: !3451)
!3457 = !DILocalVariable(name: "fp", arg: 1, scope: !3458, file: !697, line: 42, type: !3413)
!3458 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !697, file: !697, line: 42, type: !3459, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3461)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{null, !3413}
!3461 = !{!3457}
!3462 = !DILocation(line: 0, scope: !3458, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 157, column: 3, scope: !3410)
!3464 = !DILocation(line: 44, column: 12, scope: !3465, inlinedAt: !3463)
!3465 = distinct !DILexicalBlock(scope: !3458, file: !697, line: 44, column: 7)
!3466 = !DILocation(line: 44, column: 19, scope: !3465, inlinedAt: !3463)
!3467 = !DILocation(line: 44, column: 7, scope: !3458, inlinedAt: !3463)
!3468 = !DILocation(line: 46, column: 5, scope: !3465, inlinedAt: !3463)
!3469 = !DILocation(line: 159, column: 10, scope: !3410)
!3470 = !DILocation(line: 159, column: 3, scope: !3410)
!3471 = !DILocation(line: 236, column: 1, scope: !3410)
!3472 = !DISubprogram(name: "fflush", scope: !324, file: !324, line: 230, type: !3411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3473 = distinct !DISubprogram(name: "rpl_fseeko", scope: !699, file: !699, line: 28, type: !3474, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3511)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!95, !3476, !3510, !95}
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !3478)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !3479)
!3479 = !{!3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3478, file: !234, line: 51, baseType: !95, size: 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3478, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3478, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3478, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3478, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3478, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3478, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3478, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3478, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3478, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3478, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3478, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3478, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3478, file: !234, line: 70, baseType: !3494, size: 64, offset: 832)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3478, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3478, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3478, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3478, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3478, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3478, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3478, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3478, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3478, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3478, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3478, file: !234, line: 93, baseType: !3494, size: 64, offset: 1344)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3478, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3478, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3478, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3478, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!3510 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !324, line: 63, baseType: !256)
!3511 = !{!3512, !3513, !3514, !3515}
!3512 = !DILocalVariable(name: "fp", arg: 1, scope: !3473, file: !699, line: 28, type: !3476)
!3513 = !DILocalVariable(name: "offset", arg: 2, scope: !3473, file: !699, line: 28, type: !3510)
!3514 = !DILocalVariable(name: "whence", arg: 3, scope: !3473, file: !699, line: 28, type: !95)
!3515 = !DILocalVariable(name: "pos", scope: !3516, file: !699, line: 123, type: !3510)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !699, line: 119, column: 5)
!3517 = distinct !DILexicalBlock(scope: !3473, file: !699, line: 55, column: 7)
!3518 = !DILocation(line: 0, scope: !3473)
!3519 = !DILocation(line: 55, column: 12, scope: !3517)
!3520 = !{!1163, !725, i64 16}
!3521 = !DILocation(line: 55, column: 33, scope: !3517)
!3522 = !{!1163, !725, i64 8}
!3523 = !DILocation(line: 55, column: 25, scope: !3517)
!3524 = !DILocation(line: 56, column: 7, scope: !3517)
!3525 = !DILocation(line: 56, column: 15, scope: !3517)
!3526 = !DILocation(line: 56, column: 37, scope: !3517)
!3527 = !{!1163, !725, i64 32}
!3528 = !DILocation(line: 56, column: 29, scope: !3517)
!3529 = !DILocation(line: 57, column: 7, scope: !3517)
!3530 = !DILocation(line: 57, column: 15, scope: !3517)
!3531 = !{!1163, !725, i64 72}
!3532 = !DILocation(line: 57, column: 29, scope: !3517)
!3533 = !DILocation(line: 55, column: 7, scope: !3473)
!3534 = !DILocation(line: 123, column: 26, scope: !3516)
!3535 = !DILocation(line: 123, column: 19, scope: !3516)
!3536 = !DILocation(line: 0, scope: !3516)
!3537 = !DILocation(line: 124, column: 15, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3516, file: !699, line: 124, column: 11)
!3539 = !DILocation(line: 124, column: 11, scope: !3516)
!3540 = !DILocation(line: 135, column: 19, scope: !3516)
!3541 = !DILocation(line: 136, column: 12, scope: !3516)
!3542 = !DILocation(line: 136, column: 20, scope: !3516)
!3543 = !{!1163, !1164, i64 144}
!3544 = !DILocation(line: 167, column: 7, scope: !3516)
!3545 = !DILocation(line: 169, column: 10, scope: !3473)
!3546 = !DILocation(line: 169, column: 3, scope: !3473)
!3547 = !DILocation(line: 170, column: 1, scope: !3473)
!3548 = !DISubprogram(name: "fseeko", scope: !324, file: !324, line: 736, type: !3549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!95, !3476, !256, !95}
!3551 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !625, file: !625, line: 100, type: !3552, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3555)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!97, !1329, !72, !97, !3554}
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!3555 = !{!3556, !3557, !3558, !3559, !3560}
!3556 = !DILocalVariable(name: "pwc", arg: 1, scope: !3551, file: !625, line: 100, type: !1329)
!3557 = !DILocalVariable(name: "s", arg: 2, scope: !3551, file: !625, line: 100, type: !72)
!3558 = !DILocalVariable(name: "n", arg: 3, scope: !3551, file: !625, line: 100, type: !97)
!3559 = !DILocalVariable(name: "ps", arg: 4, scope: !3551, file: !625, line: 100, type: !3554)
!3560 = !DILocalVariable(name: "ret", scope: !3551, file: !625, line: 130, type: !97)
!3561 = !DILocation(line: 0, scope: !3551)
!3562 = !DILocation(line: 105, column: 9, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3551, file: !625, line: 105, column: 7)
!3564 = !DILocation(line: 105, column: 7, scope: !3551)
!3565 = !DILocation(line: 117, column: 10, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3551, file: !625, line: 117, column: 7)
!3567 = !DILocation(line: 117, column: 7, scope: !3551)
!3568 = !DILocation(line: 130, column: 16, scope: !3551)
!3569 = !DILocation(line: 135, column: 11, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3551, file: !625, line: 135, column: 7)
!3571 = !DILocation(line: 135, column: 25, scope: !3570)
!3572 = !DILocation(line: 135, column: 30, scope: !3570)
!3573 = !DILocation(line: 135, column: 7, scope: !3551)
!3574 = !DILocalVariable(name: "ps", arg: 1, scope: !3575, file: !1302, line: 1135, type: !3554)
!3575 = distinct !DISubprogram(name: "mbszero", scope: !1302, file: !1302, line: 1135, type: !3576, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3578)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{null, !3554}
!3578 = !{!3574}
!3579 = !DILocation(line: 0, scope: !3575, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 137, column: 5, scope: !3570)
!3581 = !DILocalVariable(name: "__dest", arg: 1, scope: !3582, file: !1311, line: 57, type: !94)
!3582 = distinct !DISubprogram(name: "memset", scope: !1311, file: !1311, line: 57, type: !1312, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3583)
!3583 = !{!3581, !3584, !3585}
!3584 = !DILocalVariable(name: "__ch", arg: 2, scope: !3582, file: !1311, line: 57, type: !95)
!3585 = !DILocalVariable(name: "__len", arg: 3, scope: !3582, file: !1311, line: 57, type: !97)
!3586 = !DILocation(line: 0, scope: !3582, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 1137, column: 3, scope: !3575, inlinedAt: !3580)
!3588 = !DILocation(line: 59, column: 10, scope: !3582, inlinedAt: !3587)
!3589 = !DILocation(line: 137, column: 5, scope: !3570)
!3590 = !DILocation(line: 138, column: 11, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3551, file: !625, line: 138, column: 7)
!3592 = !DILocation(line: 138, column: 7, scope: !3551)
!3593 = !DILocation(line: 139, column: 5, scope: !3591)
!3594 = !DILocation(line: 143, column: 26, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3551, file: !625, line: 143, column: 7)
!3596 = !DILocation(line: 143, column: 41, scope: !3595)
!3597 = !DILocation(line: 143, column: 7, scope: !3551)
!3598 = !DILocation(line: 145, column: 15, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !625, line: 145, column: 11)
!3600 = distinct !DILexicalBlock(scope: !3595, file: !625, line: 144, column: 5)
!3601 = !DILocation(line: 145, column: 11, scope: !3600)
!3602 = !DILocation(line: 146, column: 32, scope: !3599)
!3603 = !DILocation(line: 146, column: 16, scope: !3599)
!3604 = !DILocation(line: 146, column: 14, scope: !3599)
!3605 = !DILocation(line: 146, column: 9, scope: !3599)
!3606 = !DILocation(line: 286, column: 1, scope: !3551)
!3607 = !DISubprogram(name: "mbsinit", scope: !3608, file: !3608, line: 293, type: !3609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3608 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!95, !3611}
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!3613 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !701, file: !701, line: 27, type: !2821, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3614)
!3614 = !{!3615, !3616, !3617, !3618}
!3615 = !DILocalVariable(name: "ptr", arg: 1, scope: !3613, file: !701, line: 27, type: !94)
!3616 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3613, file: !701, line: 27, type: !97)
!3617 = !DILocalVariable(name: "size", arg: 3, scope: !3613, file: !701, line: 27, type: !97)
!3618 = !DILocalVariable(name: "nbytes", scope: !3613, file: !701, line: 29, type: !97)
!3619 = !DILocation(line: 0, scope: !3613)
!3620 = !DILocation(line: 30, column: 7, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3613, file: !701, line: 30, column: 7)
!3622 = !DILocation(line: 30, column: 7, scope: !3613)
!3623 = !DILocation(line: 32, column: 7, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3621, file: !701, line: 31, column: 5)
!3625 = !DILocation(line: 32, column: 13, scope: !3624)
!3626 = !DILocation(line: 33, column: 7, scope: !3624)
!3627 = !DILocalVariable(name: "ptr", arg: 1, scope: !3628, file: !2913, line: 2057, type: !94)
!3628 = distinct !DISubprogram(name: "rpl_realloc", scope: !2913, file: !2913, line: 2057, type: !2905, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3629)
!3629 = !{!3627, !3630}
!3630 = !DILocalVariable(name: "size", arg: 2, scope: !3628, file: !2913, line: 2057, type: !97)
!3631 = !DILocation(line: 0, scope: !3628, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 37, column: 10, scope: !3613)
!3633 = !DILocation(line: 2059, column: 24, scope: !3628, inlinedAt: !3632)
!3634 = !DILocation(line: 2059, column: 10, scope: !3628, inlinedAt: !3632)
!3635 = !DILocation(line: 37, column: 3, scope: !3613)
!3636 = !DILocation(line: 38, column: 1, scope: !3613)
!3637 = distinct !DISubprogram(name: "hard_locale", scope: !643, file: !643, line: 28, type: !3638, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3640)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!217, !95}
!3640 = !{!3641, !3642}
!3641 = !DILocalVariable(name: "category", arg: 1, scope: !3637, file: !643, line: 28, type: !95)
!3642 = !DILocalVariable(name: "locale", scope: !3637, file: !643, line: 30, type: !3643)
!3643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3644)
!3644 = !{!3645}
!3645 = !DISubrange(count: 257)
!3646 = distinct !DIAssignID()
!3647 = !DILocation(line: 0, scope: !3637)
!3648 = !DILocation(line: 30, column: 3, scope: !3637)
!3649 = !DILocation(line: 32, column: 7, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3637, file: !643, line: 32, column: 7)
!3651 = !DILocation(line: 32, column: 7, scope: !3637)
!3652 = !DILocalVariable(name: "__s1", arg: 1, scope: !3653, file: !758, line: 1359, type: !72)
!3653 = distinct !DISubprogram(name: "streq", scope: !758, file: !758, line: 1359, type: !759, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3654)
!3654 = !{!3652, !3655}
!3655 = !DILocalVariable(name: "__s2", arg: 2, scope: !3653, file: !758, line: 1359, type: !72)
!3656 = !DILocation(line: 0, scope: !3653, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 35, column: 9, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3637, file: !643, line: 35, column: 7)
!3659 = !DILocation(line: 1361, column: 11, scope: !3653, inlinedAt: !3657)
!3660 = !DILocation(line: 1361, column: 10, scope: !3653, inlinedAt: !3657)
!3661 = !DILocation(line: 35, column: 29, scope: !3658)
!3662 = !DILocation(line: 0, scope: !3653, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 35, column: 32, scope: !3658)
!3664 = !DILocation(line: 1361, column: 11, scope: !3653, inlinedAt: !3663)
!3665 = !DILocation(line: 1361, column: 10, scope: !3653, inlinedAt: !3663)
!3666 = !DILocation(line: 35, column: 7, scope: !3637)
!3667 = !DILocation(line: 46, column: 3, scope: !3637)
!3668 = !DILocation(line: 47, column: 1, scope: !3637)
!3669 = distinct !DISubprogram(name: "setlocale_null_r", scope: !705, file: !705, line: 154, type: !3670, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !3672)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!95, !95, !93, !97}
!3672 = !{!3673, !3674, !3675}
!3673 = !DILocalVariable(name: "category", arg: 1, scope: !3669, file: !705, line: 154, type: !95)
!3674 = !DILocalVariable(name: "buf", arg: 2, scope: !3669, file: !705, line: 154, type: !93)
!3675 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3669, file: !705, line: 154, type: !97)
!3676 = !DILocation(line: 0, scope: !3669)
!3677 = !DILocation(line: 159, column: 10, scope: !3669)
!3678 = !DILocation(line: 159, column: 3, scope: !3669)
!3679 = distinct !DISubprogram(name: "setlocale_null", scope: !705, file: !705, line: 186, type: !3680, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !3682)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!72, !95}
!3682 = !{!3683}
!3683 = !DILocalVariable(name: "category", arg: 1, scope: !3679, file: !705, line: 186, type: !95)
!3684 = !DILocation(line: 0, scope: !3679)
!3685 = !DILocation(line: 189, column: 10, scope: !3679)
!3686 = !DILocation(line: 189, column: 3, scope: !3679)
!3687 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !707, file: !707, line: 35, type: !3680, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3688)
!3688 = !{!3689, !3690}
!3689 = !DILocalVariable(name: "category", arg: 1, scope: !3687, file: !707, line: 35, type: !95)
!3690 = !DILocalVariable(name: "result", scope: !3687, file: !707, line: 37, type: !72)
!3691 = !DILocation(line: 0, scope: !3687)
!3692 = !DILocation(line: 37, column: 24, scope: !3687)
!3693 = !DILocation(line: 62, column: 3, scope: !3687)
!3694 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !707, file: !707, line: 66, type: !3670, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3695)
!3695 = !{!3696, !3697, !3698, !3699, !3700}
!3696 = !DILocalVariable(name: "category", arg: 1, scope: !3694, file: !707, line: 66, type: !95)
!3697 = !DILocalVariable(name: "buf", arg: 2, scope: !3694, file: !707, line: 66, type: !93)
!3698 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3694, file: !707, line: 66, type: !97)
!3699 = !DILocalVariable(name: "result", scope: !3694, file: !707, line: 111, type: !72)
!3700 = !DILocalVariable(name: "length", scope: !3701, file: !707, line: 125, type: !97)
!3701 = distinct !DILexicalBlock(scope: !3702, file: !707, line: 124, column: 5)
!3702 = distinct !DILexicalBlock(scope: !3694, file: !707, line: 113, column: 7)
!3703 = !DILocation(line: 0, scope: !3694)
!3704 = !DILocation(line: 0, scope: !3687, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 111, column: 24, scope: !3694)
!3706 = !DILocation(line: 37, column: 24, scope: !3687, inlinedAt: !3705)
!3707 = !DILocation(line: 113, column: 14, scope: !3702)
!3708 = !DILocation(line: 113, column: 7, scope: !3694)
!3709 = !DILocation(line: 116, column: 19, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3711, file: !707, line: 116, column: 11)
!3711 = distinct !DILexicalBlock(scope: !3702, file: !707, line: 114, column: 5)
!3712 = !DILocation(line: 116, column: 11, scope: !3711)
!3713 = !DILocation(line: 120, column: 16, scope: !3710)
!3714 = !DILocation(line: 120, column: 9, scope: !3710)
!3715 = !DILocation(line: 125, column: 23, scope: !3701)
!3716 = !DILocation(line: 0, scope: !3701)
!3717 = !DILocation(line: 126, column: 18, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3701, file: !707, line: 126, column: 11)
!3719 = !DILocation(line: 126, column: 11, scope: !3701)
!3720 = !DILocation(line: 128, column: 39, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3718, file: !707, line: 127, column: 9)
!3722 = !DILocalVariable(name: "__dest", arg: 1, scope: !3723, file: !1311, line: 26, type: !3183)
!3723 = distinct !DISubprogram(name: "memcpy", scope: !1311, file: !1311, line: 26, type: !3181, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3724)
!3724 = !{!3722, !3725, !3726}
!3725 = !DILocalVariable(name: "__src", arg: 2, scope: !3723, file: !1311, line: 26, type: !925)
!3726 = !DILocalVariable(name: "__len", arg: 3, scope: !3723, file: !1311, line: 26, type: !97)
!3727 = !DILocation(line: 0, scope: !3723, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 128, column: 11, scope: !3721)
!3729 = !DILocation(line: 29, column: 10, scope: !3723, inlinedAt: !3728)
!3730 = !DILocation(line: 129, column: 11, scope: !3721)
!3731 = !DILocation(line: 133, column: 23, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3733, file: !707, line: 133, column: 15)
!3733 = distinct !DILexicalBlock(scope: !3718, file: !707, line: 132, column: 9)
!3734 = !DILocation(line: 133, column: 15, scope: !3733)
!3735 = !DILocation(line: 138, column: 44, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3732, file: !707, line: 134, column: 13)
!3737 = !DILocation(line: 0, scope: !3723, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 138, column: 15, scope: !3736)
!3739 = !DILocation(line: 29, column: 10, scope: !3723, inlinedAt: !3738)
!3740 = !DILocation(line: 139, column: 15, scope: !3736)
!3741 = !DILocation(line: 139, column: 32, scope: !3736)
!3742 = !DILocation(line: 140, column: 13, scope: !3736)
!3743 = !DILocation(line: 0, scope: !3702)
!3744 = !DILocation(line: 145, column: 1, scope: !3694)
