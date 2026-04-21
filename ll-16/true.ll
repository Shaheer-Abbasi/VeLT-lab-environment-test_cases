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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !353
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !318
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !343
@.str.1.31 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !345
@.str.2.33 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !347
@.str.3.32 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !349
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !351
@.str.4.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !355
@.str.5.27 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !357
@.str.6.28 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !362
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !367
@.str.47 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !373
@.str.1.48 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !375
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !377
@.str.51 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !408
@.str.1.52 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !411
@.str.2.53 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !413
@.str.3.54 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !415
@.str.4.55 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !417
@.str.5.56 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !419
@.str.6.57 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !421
@.str.7.58 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !423
@.str.8.59 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !425
@.str.9.60 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !427
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.51, ptr @.str.1.52, ptr @.str.2.53, ptr @.str.3.54, ptr @.str.4.55, ptr @.str.5.56, ptr @.str.6.57, ptr @.str.7.58, ptr @.str.8.59, ptr @.str.9.60, ptr null], align 8, !dbg !429
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !454
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !468
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !506
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !513
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !470
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !515
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !458
@.str.10.63 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !475
@.str.11.61 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !477
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !479
@.str.13.62 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !481
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !483
@.str.67 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !521
@.str.1.68 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !524
@.str.2.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !526
@.str.3.70 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !528
@.str.4.71 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !530
@.str.5.72 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !532
@.str.6.73 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !537
@.str.7.74 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !542
@.str.8.75 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !544
@.str.9.76 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !549
@.str.10.77 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !554
@.str.11.78 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !559
@.str.12.79 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !564
@.str.13.80 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !566
@.str.14.81 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !568
@.str.15.82 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !573
@.str.16.83 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !578
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.88 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !583
@.str.18.89 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !585
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !587
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !589
@.str.21.90 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !591
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !593
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !598
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !603
@exit_failure = dso_local global i32 1, align 4, !dbg !611
@.str.103 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !617
@.str.1.101 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !620
@.str.2.102 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !622
@.str.114 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !624
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !627
@.str.119 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !642
@.str.1.120 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !645

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !717 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !721, metadata !DIExpression()), !dbg !722
  %2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !723
  %3 = load ptr, ptr @program_name, align 8, !dbg !723, !tbaa !724
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %2, ptr noundef %3, ptr noundef %3) #36, !dbg !723
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !728
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %5) #36, !dbg !728
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !729
  tail call fastcc void @oputs_(ptr noundef %7), !dbg !729
  %8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !730
  tail call fastcc void @oputs_(ptr noundef %8), !dbg !730
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #36, !dbg !731
  %10 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef nonnull @.str.3) #36, !dbg !731
  tail call fastcc void @emit_ancillary_info(), !dbg !732
  tail call void @exit(i32 noundef %0) #37, !dbg !733
  unreachable, !dbg !733
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !734 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !739 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !68 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !211, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata ptr %0, metadata !212, metadata !DIExpression()), !dbg !744
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !745, !tbaa !746
  %3 = icmp eq i32 %2, -1, !dbg !748
  br i1 %3, label %4, label %16, !dbg !749

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.14) #36, !dbg !750
  call void @llvm.dbg.value(metadata ptr %5, metadata !213, metadata !DIExpression()), !dbg !751
  %6 = icmp eq ptr %5, null, !dbg !752
  br i1 %6, label %14, label %7, !dbg !753

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !754, !tbaa !755
  %9 = icmp eq i8 %8, 0, !dbg !754
  br i1 %9, label %14, label %10, !dbg !756

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !757, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !763, metadata !DIExpression()), !dbg !764
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.15) #38, !dbg !766
  %12 = icmp eq i32 %11, 0, !dbg !767
  %13 = zext i1 %12 to i32, !dbg !756
  br label %14, !dbg !756

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !768, !tbaa !746
  br label %16, !dbg !769

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !770
  %18 = icmp eq i32 %17, 0, !dbg !770
  br i1 %18, label %22, label %19, !dbg !772

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !773, !tbaa !724
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !773
  br label %122, !dbg !775

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !216, metadata !DIExpression()), !dbg !744
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.16) #38, !dbg !776
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !777
  call void @llvm.dbg.value(metadata ptr %24, metadata !218, metadata !DIExpression()), !dbg !744
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !778
  call void @llvm.dbg.value(metadata ptr %25, metadata !219, metadata !DIExpression()), !dbg !744
  %26 = icmp eq ptr %25, null, !dbg !779
  br i1 %26, label %54, label %27, !dbg !780

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !781
  br i1 %28, label %54, label %29, !dbg !782

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !220, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata i64 0, metadata !224, metadata !DIExpression()), !dbg !783
  %30 = icmp ult ptr %24, %25, !dbg !784
  br i1 %30, label %31, label %52, !dbg !785

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !744
  %33 = load ptr, ptr %32, align 8, !tbaa !724
  br label %34, !dbg !785

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !220, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata i64 %36, metadata !224, metadata !DIExpression()), !dbg !783
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !786
  call void @llvm.dbg.value(metadata ptr %37, metadata !220, metadata !DIExpression()), !dbg !783
  %38 = load i8, ptr %35, align 1, !dbg !786, !tbaa !755
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !786
  %41 = load i16, ptr %40, align 2, !dbg !786, !tbaa !787
  %42 = freeze i16 %41, !dbg !789
  %43 = lshr i16 %42, 13, !dbg !789
  %44 = and i16 %43, 1, !dbg !789
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !790
  call void @llvm.dbg.value(metadata i64 %46, metadata !224, metadata !DIExpression()), !dbg !783
  %47 = icmp ult ptr %37, %25, !dbg !784
  %48 = icmp ult i64 %46, 2, !dbg !791
  %49 = select i1 %47, i1 %48, i1 false, !dbg !791
  br i1 %49, label %34, label %50, !dbg !785, !llvm.loop !792

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !794
  br i1 %51, label %52, label %54, !dbg !796

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !796

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !744
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !216, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata ptr %55, metadata !219, metadata !DIExpression()), !dbg !744
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.17) #38, !dbg !797
  call void @llvm.dbg.value(metadata i64 %57, metadata !225, metadata !DIExpression()), !dbg !744
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !798
  call void @llvm.dbg.value(metadata ptr %58, metadata !226, metadata !DIExpression()), !dbg !744
  br label %59, !dbg !799

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !744
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !216, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata ptr %60, metadata !226, metadata !DIExpression()), !dbg !744
  %62 = load i8, ptr %60, align 1, !dbg !800, !tbaa !755
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !801

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !802
  %65 = load i8, ptr %64, align 1, !dbg !805, !tbaa !755
  %66 = icmp ne i8 %65, 45, !dbg !806
  %67 = select i1 %66, i1 %61, i1 false, !dbg !807
  br label %68, !dbg !807

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !216, metadata !DIExpression()), !dbg !744
  %70 = tail call ptr @__ctype_b_loc() #39, !dbg !808
  %71 = load ptr, ptr %70, align 8, !dbg !808, !tbaa !724
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !808
  %74 = load i16, ptr %73, align 2, !dbg !808, !tbaa !787
  %75 = and i16 %74, 8192, !dbg !808
  %76 = icmp eq i16 %75, 0, !dbg !808
  br i1 %76, label %90, label %77, !dbg !810

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !811
  br i1 %78, label %92, label %79, !dbg !814

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !815
  %81 = load i8, ptr %80, align 1, !dbg !815, !tbaa !755
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !815
  %84 = load i16, ptr %83, align 2, !dbg !815, !tbaa !787
  %85 = and i16 %84, 8192, !dbg !815
  %86 = icmp eq i16 %85, 0, !dbg !815
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !816
  br i1 %89, label %90, label %92, !dbg !816

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !817
  call void @llvm.dbg.value(metadata ptr %91, metadata !226, metadata !DIExpression()), !dbg !744
  br label %59, !dbg !799, !llvm.loop !818

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !820
  %94 = load ptr, ptr @stdout, align 8, !dbg !820, !tbaa !724
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !820
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !283, metadata !DIExpression()), !dbg !744
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.10, i64 noundef 6) #38, !dbg !841
  %97 = icmp eq i32 %96, 0, !dbg !841
  br i1 %97, label %101, label %98, !dbg !843

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.11, i64 noundef 9) #38, !dbg !844
  %100 = icmp eq i32 %99, 0, !dbg !844
  br i1 %100, label %101, label %104, !dbg !845

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !846
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #36, !dbg !846
  br label %107, !dbg !848

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !849
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #36, !dbg !849
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !851, !tbaa !724
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.35, ptr noundef %108), !dbg !851
  %110 = load ptr, ptr @stdout, align 8, !dbg !852, !tbaa !724
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %110), !dbg !852
  %112 = ptrtoint ptr %60 to i64, !dbg !853
  %113 = sub i64 %112, %93, !dbg !853
  %114 = load ptr, ptr @stdout, align 8, !dbg !853, !tbaa !724
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !853
  %116 = load ptr, ptr @stdout, align 8, !dbg !854, !tbaa !724
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %116), !dbg !854
  %118 = load ptr, ptr @stdout, align 8, !dbg !855, !tbaa !724
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %118), !dbg !855
  %120 = load ptr, ptr @stdout, align 8, !dbg !856, !tbaa !724
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !856
  br label %122, !dbg !857

122:                                              ; preds = %107, %19
  ret void, !dbg !857
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #4 !dbg !858 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !862, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !870, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata ptr poison, metadata !870, metadata !DIExpression()), !dbg !875
  tail call void @emit_bug_reporting_address() #36, !dbg !876
  %1 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !877
  call void @llvm.dbg.value(metadata ptr %1, metadata !873, metadata !DIExpression()), !dbg !875
  %2 = icmp eq ptr %1, null, !dbg !878
  br i1 %2, label %10, label %3, !dbg !880

3:                                                ; preds = %0
  %4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.42, i64 noundef 3) #38, !dbg !881
  %5 = icmp eq i32 %4, 0, !dbg !881
  br i1 %5, label %10, label %6, !dbg !882

6:                                                ; preds = %3
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #36, !dbg !883
  %8 = load ptr, ptr @stdout, align 8, !dbg !883, !tbaa !724
  %9 = tail call i32 @fputs_unlocked(ptr noundef %7, ptr noundef %8), !dbg !883
  br label %10, !dbg !885

10:                                               ; preds = %6, %3, %0
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !870, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !875
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #36, !dbg !886
  %12 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %11, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3) #36, !dbg !886
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #36, !dbg !887
  %14 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.46) #36, !dbg !887
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
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !dbg !928 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !933, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata ptr %1, metadata !934, metadata !DIExpression()), !dbg !935
  %3 = icmp eq i32 %0, 2, !dbg !936
  br i1 %3, label %4, label %22, !dbg !938

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !dbg !939, !tbaa !724
  tail call void @set_program_name(ptr noundef %5) #36, !dbg !941
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.7) #36, !dbg !942
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #36, !dbg !943
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.8) #36, !dbg !944
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !945
  %10 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !946
  %11 = load ptr, ptr %10, align 8, !dbg !946, !tbaa !724
  call void @llvm.dbg.value(metadata ptr %11, metadata !757, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !763, metadata !DIExpression()), !dbg !948
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(7) @.str.10) #38, !dbg !950
  %13 = icmp eq i32 %12, 0, !dbg !951
  br i1 %13, label %14, label %15, !dbg !952

14:                                               ; preds = %4
  tail call void @usage(i32 noundef 0) #40, !dbg !953
  unreachable, !dbg !953

15:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr %11, metadata !757, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata ptr @.str.11, metadata !763, metadata !DIExpression()), !dbg !954
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(10) @.str.11) #38, !dbg !957
  %17 = icmp eq i32 %16, 0, !dbg !958
  br i1 %17, label %18, label %22, !dbg !959

18:                                               ; preds = %15
  %19 = load ptr, ptr @stdout, align 8, !dbg !960, !tbaa !724
  %20 = load ptr, ptr @Version, align 8, !dbg !961, !tbaa !724
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #36, !dbg !962
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %20, ptr noundef %21, ptr noundef null) #36, !dbg !963
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
  call void @llvm.dbg.value(metadata ptr %0, metadata !975, metadata !DIExpression()), !dbg !976
  store ptr %0, ptr @file_name, align 8, !dbg !977, !tbaa !724
  ret void, !dbg !978
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !979 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !983, metadata !DIExpression()), !dbg !984
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !985, !tbaa !986
  ret void, !dbg !988
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !989 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !994, !tbaa !724
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !995
  %3 = icmp eq i32 %2, 0, !dbg !996
  br i1 %3, label %22, label %4, !dbg !997

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !998, !tbaa !986, !range !999, !noundef !738
  %6 = icmp eq i8 %5, 0, !dbg !998
  br i1 %6, label %11, label %7, !dbg !1000

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1001
  %9 = load i32, ptr %8, align 4, !dbg !1001, !tbaa !746
  %10 = icmp eq i32 %9, 32, !dbg !1002
  br i1 %10, label %22, label %11, !dbg !1003

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1.22, i32 noundef 5) #36, !dbg !1004
  call void @llvm.dbg.value(metadata ptr %12, metadata !991, metadata !DIExpression()), !dbg !1005
  %13 = load ptr, ptr @file_name, align 8, !dbg !1006, !tbaa !724
  %14 = icmp eq ptr %13, null, !dbg !1006
  %15 = tail call ptr @__errno_location() #39, !dbg !1008
  %16 = load i32, ptr %15, align 4, !dbg !1008, !tbaa !746
  br i1 %14, label %19, label %17, !dbg !1009

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1010
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.23, ptr noundef %18, ptr noundef %12) #36, !dbg !1010
  br label %20, !dbg !1010

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.24, ptr noundef %12) #36, !dbg !1011
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1012, !tbaa !746
  tail call void @_exit(i32 noundef %21) #37, !dbg !1013
  unreachable, !dbg !1013

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1014, !tbaa !724
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1016
  %25 = icmp eq i32 %24, 0, !dbg !1017
  br i1 %25, label %28, label %26, !dbg !1018

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1019, !tbaa !746
  tail call void @_exit(i32 noundef %27) #37, !dbg !1020
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !1033, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i32 %1, metadata !1034, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata ptr %2, metadata !1035, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1036, metadata !DIExpression()), !dbg !1038
  tail call fastcc void @flush_stdout(), !dbg !1039
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1040, !tbaa !724
  %7 = icmp eq ptr %6, null, !dbg !1040
  br i1 %7, label %9, label %8, !dbg !1042

8:                                                ; preds = %4
  tail call void %6() #36, !dbg !1043
  br label %13, !dbg !1043

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1044, !tbaa !724
  %11 = tail call ptr @getprogname() #38, !dbg !1044
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef %11) #36, !dbg !1044
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1046
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1046, !tbaa.struct !1047
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1046
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1046
  ret void, !dbg !1048
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1049 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1051, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata i32 1, metadata !1053, metadata !DIExpression()), !dbg !1058
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1061
  %2 = icmp slt i32 %1, 0, !dbg !1062
  br i1 %2, label %6, label %3, !dbg !1063

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1064, !tbaa !724
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1064
  br label %6, !dbg !1064

6:                                                ; preds = %3, %0
  ret void, !dbg !1065
}

declare !dbg !1066 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1104 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1106, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i32 %1, metadata !1107, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata ptr %2, metadata !1108, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1109, metadata !DIExpression()), !dbg !1111
  %7 = load ptr, ptr @stderr, align 8, !dbg !1112, !tbaa !724
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1113, !noalias !1122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1126
  call void @llvm.dbg.value(metadata ptr %7, metadata !1118, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata ptr %2, metadata !1119, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1120, metadata !DIExpression()), !dbg !1128
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #36, !dbg !1113
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1113, !noalias !1122
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1129, !tbaa !746
  %10 = add i32 %9, 1, !dbg !1129
  store i32 %10, ptr @error_message_count, align 4, !dbg !1129, !tbaa !746
  %11 = icmp eq i32 %1, 0, !dbg !1130
  br i1 %11, label %21, label %12, !dbg !1132

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1133, metadata !DIExpression()), !dbg !1141
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1143
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1137, metadata !DIExpression()), !dbg !1144
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1145
  call void @llvm.dbg.value(metadata ptr %13, metadata !1136, metadata !DIExpression()), !dbg !1141
  %14 = icmp eq ptr %13, null, !dbg !1146
  br i1 %14, label %15, label %17, !dbg !1148

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.26, ptr noundef nonnull @.str.5.27, i32 noundef 5) #36, !dbg !1149
  call void @llvm.dbg.value(metadata ptr %16, metadata !1136, metadata !DIExpression()), !dbg !1141
  br label %17, !dbg !1150

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1141
  call void @llvm.dbg.value(metadata ptr %18, metadata !1136, metadata !DIExpression()), !dbg !1141
  %19 = load ptr, ptr @stderr, align 8, !dbg !1151, !tbaa !724
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.28, ptr noundef %18) #36, !dbg !1151
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1152
  br label %21, !dbg !1153

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1154, !tbaa !724
  call void @llvm.dbg.value(metadata i32 10, metadata !1155, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata ptr %22, metadata !1161, metadata !DIExpression()), !dbg !1162
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1164
  %24 = load ptr, ptr %23, align 8, !dbg !1164, !tbaa !1165
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1164
  %26 = load ptr, ptr %25, align 8, !dbg !1164, !tbaa !1168
  %27 = icmp ult ptr %24, %26, !dbg !1164
  br i1 %27, label %30, label %28, !dbg !1164, !prof !1169

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #36, !dbg !1164
  br label %32, !dbg !1164

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1164
  store ptr %31, ptr %23, align 8, !dbg !1164, !tbaa !1165
  store i8 10, ptr %24, align 1, !dbg !1164, !tbaa !755
  br label %32, !dbg !1164

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1170, !tbaa !724
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #36, !dbg !1170
  %35 = icmp eq i32 %0, 0, !dbg !1171
  br i1 %35, label %37, label %36, !dbg !1173

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #37, !dbg !1174
  unreachable, !dbg !1174

37:                                               ; preds = %32
  ret void, !dbg !1175
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1176 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1179 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1182 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1185 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1188 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1192 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1196, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i32 %1, metadata !1197, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata ptr %2, metadata !1198, metadata !DIExpression()), !dbg !1200
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #36, !dbg !1201
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1199, metadata !DIExpression()), !dbg !1202
  call void @llvm.va_start(ptr nonnull %4), !dbg !1203
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1204, !tbaa.struct !1047
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #41, !dbg !1204
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1204
  call void @llvm.va_end(ptr nonnull %4), !dbg !1205
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #36, !dbg !1206
  ret void, !dbg !1206
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !320 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !337, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i32 %1, metadata !338, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata ptr %2, metadata !339, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i32 %3, metadata !340, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata ptr %4, metadata !341, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.declare(metadata ptr %5, metadata !342, metadata !DIExpression()), !dbg !1208
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1209, !tbaa !746
  %9 = icmp eq i32 %8, 0, !dbg !1209
  br i1 %9, label %24, label %10, !dbg !1211

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1212, !tbaa !746
  %12 = icmp eq i32 %11, %3, !dbg !1215
  br i1 %12, label %13, label %23, !dbg !1216

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1217, !tbaa !724
  %15 = icmp eq ptr %14, %2, !dbg !1218
  br i1 %15, label %37, label %16, !dbg !1219

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1220
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1221
  br i1 %19, label %20, label %23, !dbg !1221

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1222
  %22 = icmp eq i32 %21, 0, !dbg !1223
  br i1 %22, label %37, label %23, !dbg !1224

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1225, !tbaa !724
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1226, !tbaa !746
  br label %24, !dbg !1227

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1228
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1229, !tbaa !724
  %26 = icmp eq ptr %25, null, !dbg !1229
  br i1 %26, label %28, label %27, !dbg !1231

27:                                               ; preds = %24
  tail call void %25() #36, !dbg !1232
  br label %32, !dbg !1232

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1233, !tbaa !724
  %30 = tail call ptr @getprogname() #38, !dbg !1233
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.31, ptr noundef %30) #36, !dbg !1233
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1235, !tbaa !724
  %34 = icmp eq ptr %2, null, !dbg !1235
  %35 = select i1 %34, ptr @.str.3.32, ptr @.str.2.33, !dbg !1235
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #36, !dbg !1235
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1236, !tbaa.struct !1047
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1236
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1236
  br label %37, !dbg !1237

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1237
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1238 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1242, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i32 %1, metadata !1243, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata ptr %2, metadata !1244, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i32 %3, metadata !1245, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata ptr %4, metadata !1246, metadata !DIExpression()), !dbg !1248
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1249
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1247, metadata !DIExpression()), !dbg !1250
  call void @llvm.va_start(ptr nonnull %6), !dbg !1251
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1252, !tbaa.struct !1047
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #41, !dbg !1252
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1252
  call void @llvm.va_end(ptr nonnull %6), !dbg !1253
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1254
  ret void, !dbg !1254
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1255 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1258, !tbaa !724
  ret ptr %1, !dbg !1259
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1260 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1262, metadata !DIExpression()), !dbg !1265
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1266
  call void @llvm.dbg.value(metadata ptr %2, metadata !1263, metadata !DIExpression()), !dbg !1265
  %3 = icmp eq ptr %2, null, !dbg !1267
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1267
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1267
  call void @llvm.dbg.value(metadata ptr %5, metadata !1264, metadata !DIExpression()), !dbg !1265
  %6 = ptrtoint ptr %5 to i64, !dbg !1268
  %7 = ptrtoint ptr %0 to i64, !dbg !1268
  %8 = sub i64 %6, %7, !dbg !1268
  %9 = icmp sgt i64 %8, 6, !dbg !1270
  br i1 %9, label %10, label %19, !dbg !1271

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1272
  call void @llvm.dbg.value(metadata ptr %11, metadata !1273, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata ptr @.str.47, metadata !1278, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i64 7, metadata !1279, metadata !DIExpression()), !dbg !1280
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.47, i64 7), !dbg !1282
  %13 = icmp eq i32 %12, 0, !dbg !1283
  br i1 %13, label %14, label %19, !dbg !1284

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1262, metadata !DIExpression()), !dbg !1265
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.48, i64 noundef 3) #38, !dbg !1285
  %16 = icmp eq i32 %15, 0, !dbg !1288
  %17 = select i1 %16, i64 3, i64 0, !dbg !1289
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1289
  br label %19, !dbg !1289

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1265
  call void @llvm.dbg.value(metadata ptr %21, metadata !1264, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata ptr %20, metadata !1262, metadata !DIExpression()), !dbg !1265
  store ptr %20, ptr @program_name, align 8, !dbg !1290, !tbaa !724
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1291, !tbaa !724
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1292, !tbaa !724
  ret void, !dbg !1293
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1294 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !379 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !386, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata ptr %1, metadata !387, metadata !DIExpression()), !dbg !1295
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1296
  call void @llvm.dbg.value(metadata ptr %5, metadata !388, metadata !DIExpression()), !dbg !1295
  %6 = icmp eq ptr %5, %0, !dbg !1297
  br i1 %6, label %7, label %14, !dbg !1299

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1300
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1301
  call void @llvm.dbg.declare(metadata ptr %4, metadata !394, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata ptr %4, metadata !1303, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata ptr %4, metadata !1312, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i32 0, metadata !1318, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 8, metadata !1319, metadata !DIExpression()), !dbg !1320
  store i64 0, ptr %4, align 8, !dbg !1322
  call void @llvm.dbg.value(metadata ptr %3, metadata !389, metadata !DIExpression(DW_OP_deref)), !dbg !1295
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1323
  %9 = icmp eq i64 %8, 2, !dbg !1325
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !389, metadata !DIExpression()), !dbg !1295
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1326
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1295
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1327
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1327
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1295
  ret ptr %15, !dbg !1327
}

; Function Attrs: nounwind
declare !dbg !1328 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1334 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1339, metadata !DIExpression()), !dbg !1342
  %2 = tail call ptr @__errno_location() #39, !dbg !1343
  %3 = load i32, ptr %2, align 4, !dbg !1343, !tbaa !746
  call void @llvm.dbg.value(metadata i32 %3, metadata !1340, metadata !DIExpression()), !dbg !1342
  %4 = icmp eq ptr %0, null, !dbg !1344
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1344
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %6, metadata !1341, metadata !DIExpression()), !dbg !1342
  store i32 %3, ptr %2, align 4, !dbg !1346, !tbaa !746
  ret ptr %6, !dbg !1347
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1348 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1354, metadata !DIExpression()), !dbg !1355
  %2 = icmp eq ptr %0, null, !dbg !1356
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1356
  %4 = load i32, ptr %3, align 8, !dbg !1357, !tbaa !1358
  ret i32 %4, !dbg !1360
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1361 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1365, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i32 %1, metadata !1366, metadata !DIExpression()), !dbg !1367
  %3 = icmp eq ptr %0, null, !dbg !1368
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1368
  store i32 %1, ptr %4, align 8, !dbg !1369, !tbaa !1358
  ret void, !dbg !1370
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1371 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1375, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i8 %1, metadata !1376, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i32 %2, metadata !1377, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i8 %1, metadata !1378, metadata !DIExpression()), !dbg !1383
  %4 = icmp eq ptr %0, null, !dbg !1384
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1384
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1385
  %7 = lshr i8 %1, 5, !dbg !1386
  %8 = zext i8 %7 to i64, !dbg !1386
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1387
  call void @llvm.dbg.value(metadata ptr %9, metadata !1379, metadata !DIExpression()), !dbg !1383
  %10 = and i8 %1, 31, !dbg !1388
  %11 = zext i8 %10 to i32, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %11, metadata !1381, metadata !DIExpression()), !dbg !1383
  %12 = load i32, ptr %9, align 4, !dbg !1389, !tbaa !746
  %13 = lshr i32 %12, %11, !dbg !1390
  %14 = and i32 %13, 1, !dbg !1391
  call void @llvm.dbg.value(metadata i32 %14, metadata !1382, metadata !DIExpression()), !dbg !1383
  %15 = xor i32 %13, %2, !dbg !1392
  %16 = and i32 %15, 1, !dbg !1392
  %17 = shl nuw i32 %16, %11, !dbg !1393
  %18 = xor i32 %17, %12, !dbg !1394
  store i32 %18, ptr %9, align 4, !dbg !1394, !tbaa !746
  ret i32 %14, !dbg !1395
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1396 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1400, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i32 %1, metadata !1401, metadata !DIExpression()), !dbg !1403
  %3 = icmp eq ptr %0, null, !dbg !1404
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1406
  call void @llvm.dbg.value(metadata ptr %4, metadata !1400, metadata !DIExpression()), !dbg !1403
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1407
  %6 = load i32, ptr %5, align 4, !dbg !1407, !tbaa !1408
  call void @llvm.dbg.value(metadata i32 %6, metadata !1402, metadata !DIExpression()), !dbg !1403
  store i32 %1, ptr %5, align 4, !dbg !1409, !tbaa !1408
  ret i32 %6, !dbg !1410
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1411 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1415, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata ptr %1, metadata !1416, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata ptr %2, metadata !1417, metadata !DIExpression()), !dbg !1418
  %4 = icmp eq ptr %0, null, !dbg !1419
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1421
  call void @llvm.dbg.value(metadata ptr %5, metadata !1415, metadata !DIExpression()), !dbg !1418
  store i32 10, ptr %5, align 8, !dbg !1422, !tbaa !1358
  %6 = icmp ne ptr %1, null, !dbg !1423
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1425
  br i1 %8, label %10, label %9, !dbg !1425

9:                                                ; preds = %3
  tail call void @abort() #37, !dbg !1426
  unreachable, !dbg !1426

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1427
  store ptr %1, ptr %11, align 8, !dbg !1428, !tbaa !1429
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1430
  store ptr %2, ptr %12, align 8, !dbg !1431, !tbaa !1432
  ret void, !dbg !1433
}

; Function Attrs: noreturn nounwind
declare !dbg !1434 void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1435 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1439, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %1, metadata !1440, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata ptr %2, metadata !1441, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %3, metadata !1442, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata ptr %4, metadata !1443, metadata !DIExpression()), !dbg !1447
  %6 = icmp eq ptr %4, null, !dbg !1448
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1448
  call void @llvm.dbg.value(metadata ptr %7, metadata !1444, metadata !DIExpression()), !dbg !1447
  %8 = tail call ptr @__errno_location() #39, !dbg !1449
  %9 = load i32, ptr %8, align 4, !dbg !1449, !tbaa !746
  call void @llvm.dbg.value(metadata i32 %9, metadata !1445, metadata !DIExpression()), !dbg !1447
  %10 = load i32, ptr %7, align 8, !dbg !1450, !tbaa !1358
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1451
  %12 = load i32, ptr %11, align 4, !dbg !1451, !tbaa !1408
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1452
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1453
  %15 = load ptr, ptr %14, align 8, !dbg !1453, !tbaa !1429
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1454
  %17 = load ptr, ptr %16, align 8, !dbg !1454, !tbaa !1432
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1455
  call void @llvm.dbg.value(metadata i64 %18, metadata !1446, metadata !DIExpression()), !dbg !1447
  store i32 %9, ptr %8, align 4, !dbg !1456, !tbaa !746
  ret i64 %18, !dbg !1457
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1458 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1464, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %1, metadata !1465, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %2, metadata !1466, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %3, metadata !1467, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 %4, metadata !1468, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 %5, metadata !1469, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %6, metadata !1470, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %7, metadata !1471, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %8, metadata !1472, metadata !DIExpression()), !dbg !1526
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1527
  %17 = icmp eq i64 %16, 1, !dbg !1528
  call void @llvm.dbg.value(metadata i1 %17, metadata !1473, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1526
  call void @llvm.dbg.value(metadata i64 0, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 0, metadata !1475, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr null, metadata !1476, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 0, metadata !1477, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 0, metadata !1478, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 %5, metadata !1479, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1526
  call void @llvm.dbg.value(metadata i8 0, metadata !1480, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 1, metadata !1481, metadata !DIExpression()), !dbg !1526
  %18 = and i32 %5, 2, !dbg !1529
  %19 = icmp ne i32 %18, 0, !dbg !1529
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1529

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !1530
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !1531
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !1532
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1465, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 poison, metadata !1479, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %34, metadata !1477, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %33, metadata !1476, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %32, metadata !1475, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 0, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %31, metadata !1467, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %30, metadata !1472, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %29, metadata !1471, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 %28, metadata !1468, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.label(metadata !1519), !dbg !1533
  call void @llvm.dbg.value(metadata i8 0, metadata !1482, metadata !DIExpression()), !dbg !1526
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
  ], !dbg !1534

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1479, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 5, metadata !1468, metadata !DIExpression()), !dbg !1526
  br label %102, !dbg !1535

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1479, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 5, metadata !1468, metadata !DIExpression()), !dbg !1526
  br i1 %36, label %102, label %42, !dbg !1535

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1536
  br i1 %43, label %102, label %44, !dbg !1540

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1536, !tbaa !755
  br label %102, !dbg !1536

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.61, metadata !489, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i32 %28, metadata !490, metadata !DIExpression()), !dbg !1541
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.62, ptr noundef nonnull @.str.11.61, i32 noundef 5) #36, !dbg !1545
  call void @llvm.dbg.value(metadata ptr %46, metadata !491, metadata !DIExpression()), !dbg !1541
  %47 = icmp eq ptr %46, @.str.11.61, !dbg !1546
  br i1 %47, label %48, label %57, !dbg !1548

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1549
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1550
  call void @llvm.dbg.declare(metadata ptr %13, metadata !493, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata ptr %13, metadata !1552, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata ptr %13, metadata !1560, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i32 0, metadata !1563, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 8, metadata !1564, metadata !DIExpression()), !dbg !1565
  store i64 0, ptr %13, align 8, !dbg !1567
  call void @llvm.dbg.value(metadata ptr %12, metadata !492, metadata !DIExpression(DW_OP_deref)), !dbg !1541
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1568
  %50 = icmp eq i64 %49, 3, !dbg !1570
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !492, metadata !DIExpression()), !dbg !1541
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1571
  %54 = icmp eq i32 %28, 9, !dbg !1571
  %55 = select i1 %54, ptr @.str.10.63, ptr @.str.12.64, !dbg !1571
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1572
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1572
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1541
  call void @llvm.dbg.value(metadata ptr %58, metadata !1471, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr @.str.12.64, metadata !489, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i32 %28, metadata !490, metadata !DIExpression()), !dbg !1573
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.62, ptr noundef nonnull @.str.12.64, i32 noundef 5) #36, !dbg !1575
  call void @llvm.dbg.value(metadata ptr %59, metadata !491, metadata !DIExpression()), !dbg !1573
  %60 = icmp eq ptr %59, @.str.12.64, !dbg !1576
  br i1 %60, label %61, label %70, !dbg !1577

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1578
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1579
  call void @llvm.dbg.declare(metadata ptr %11, metadata !493, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata ptr %11, metadata !1552, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata ptr %11, metadata !1560, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 0, metadata !1563, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i64 8, metadata !1564, metadata !DIExpression()), !dbg !1583
  store i64 0, ptr %11, align 8, !dbg !1585
  call void @llvm.dbg.value(metadata ptr %10, metadata !492, metadata !DIExpression(DW_OP_deref)), !dbg !1573
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1586
  %63 = icmp eq i64 %62, 3, !dbg !1587
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !492, metadata !DIExpression()), !dbg !1573
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1588
  %67 = icmp eq i32 %28, 9, !dbg !1588
  %68 = select i1 %67, ptr @.str.10.63, ptr @.str.12.64, !dbg !1588
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1588
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1589
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1589
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1472, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %71, metadata !1471, metadata !DIExpression()), !dbg !1526
  br i1 %36, label %88, label %73, !dbg !1590

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1483, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i64 0, metadata !1474, metadata !DIExpression()), !dbg !1526
  %74 = load i8, ptr %71, align 1, !dbg !1592, !tbaa !755
  %75 = icmp eq i8 %74, 0, !dbg !1594
  br i1 %75, label %88, label %76, !dbg !1594

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1483, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i64 %79, metadata !1474, metadata !DIExpression()), !dbg !1526
  %80 = icmp ult i64 %79, %39, !dbg !1595
  br i1 %80, label %81, label %83, !dbg !1598

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1595
  store i8 %77, ptr %82, align 1, !dbg !1595, !tbaa !755
  br label %83, !dbg !1595

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1598
  call void @llvm.dbg.value(metadata i64 %84, metadata !1474, metadata !DIExpression()), !dbg !1526
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1599
  call void @llvm.dbg.value(metadata ptr %85, metadata !1483, metadata !DIExpression()), !dbg !1591
  %86 = load i8, ptr %85, align 1, !dbg !1592, !tbaa !755
  %87 = icmp eq i8 %86, 0, !dbg !1594
  br i1 %87, label %88, label %76, !dbg !1594, !llvm.loop !1600

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !1602
  call void @llvm.dbg.value(metadata i64 %89, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 1, metadata !1478, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %72, metadata !1476, metadata !DIExpression()), !dbg !1526
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %90, metadata !1477, metadata !DIExpression()), !dbg !1526
  br label %102, !dbg !1604

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1478, metadata !DIExpression()), !dbg !1526
  br label %93, !dbg !1605

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1479, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1526
  br i1 %36, label %102, label %96, !dbg !1606

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1479, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 2, metadata !1468, metadata !DIExpression()), !dbg !1526
  br label %102, !dbg !1607

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1479, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 2, metadata !1468, metadata !DIExpression()), !dbg !1526
  br i1 %36, label %102, label %96, !dbg !1607

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !1608
  br i1 %98, label %102, label %99, !dbg !1612

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !1608, !tbaa !755
  br label %102, !dbg !1608

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1479, metadata !DIExpression()), !dbg !1526
  br label %102, !dbg !1613

101:                                              ; preds = %27
  call void @abort() #37, !dbg !1614
  unreachable, !dbg !1614

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !1602
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.63, %42 ], [ @.str.10.63, %44 ], [ @.str.10.63, %41 ], [ %33, %27 ], [ @.str.12.64, %96 ], [ @.str.12.64, %99 ], [ @.str.12.64, %95 ], [ @.str.10.63, %40 ], [ @.str.12.64, %93 ], [ @.str.12.64, %92 ], !dbg !1526
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !1526
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1479, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %108, metadata !1477, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %107, metadata !1476, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %106, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %105, metadata !1472, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %104, metadata !1471, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 %103, metadata !1468, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 0, metadata !1488, metadata !DIExpression()), !dbg !1615
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
  br label %122, !dbg !1616

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !1602
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !1530
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !1617
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1465, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %129, metadata !1488, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %125, metadata !1475, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %124, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %123, metadata !1467, metadata !DIExpression()), !dbg !1526
  %131 = icmp eq i64 %123, -1, !dbg !1618
  br i1 %131, label %132, label %136, !dbg !1619

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1620
  %134 = load i8, ptr %133, align 1, !dbg !1620, !tbaa !755
  %135 = icmp eq i8 %134, 0, !dbg !1621
  br i1 %135, label %579, label %138, !dbg !1622

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !1623
  br i1 %137, label %579, label %138, !dbg !1622

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1490, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 0, metadata !1493, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 0, metadata !1494, metadata !DIExpression()), !dbg !1624
  br i1 %114, label %139, label %152, !dbg !1625

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !1627
  %141 = select i1 %131, i1 %115, i1 false, !dbg !1628
  br i1 %141, label %142, label %144, !dbg !1628

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1629
  call void @llvm.dbg.value(metadata i64 %143, metadata !1467, metadata !DIExpression()), !dbg !1526
  br label %144, !dbg !1630

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !1630
  call void @llvm.dbg.value(metadata i64 %145, metadata !1467, metadata !DIExpression()), !dbg !1526
  %146 = icmp ugt i64 %140, %145, !dbg !1631
  br i1 %146, label %152, label %147, !dbg !1632

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1633
  call void @llvm.dbg.value(metadata ptr %148, metadata !1634, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %107, metadata !1637, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %108, metadata !1638, metadata !DIExpression()), !dbg !1639
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !1641
  %150 = icmp eq i32 %149, 0, !dbg !1642
  %151 = and i1 %150, %110, !dbg !1643
  br i1 %151, label %630, label %152, !dbg !1643

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1490, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i64 %153, metadata !1467, metadata !DIExpression()), !dbg !1526
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1644
  %156 = load i8, ptr %155, align 1, !dbg !1644, !tbaa !755
  call void @llvm.dbg.value(metadata i8 %156, metadata !1495, metadata !DIExpression()), !dbg !1624
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
  ], !dbg !1645

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !1646

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !1647

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1493, metadata !DIExpression()), !dbg !1624
  %160 = select i1 %111, i1 true, i1 %128, !dbg !1651
  br i1 %160, label %177, label %161, !dbg !1651

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !1653
  br i1 %162, label %163, label %165, !dbg !1657

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1653
  store i8 39, ptr %164, align 1, !dbg !1653, !tbaa !755
  br label %165, !dbg !1653

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !1657
  call void @llvm.dbg.value(metadata i64 %166, metadata !1474, metadata !DIExpression()), !dbg !1526
  %167 = icmp ult i64 %166, %130, !dbg !1658
  br i1 %167, label %168, label %170, !dbg !1661

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !1658
  store i8 36, ptr %169, align 1, !dbg !1658, !tbaa !755
  br label %170, !dbg !1658

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !1661
  call void @llvm.dbg.value(metadata i64 %171, metadata !1474, metadata !DIExpression()), !dbg !1526
  %172 = icmp ult i64 %171, %130, !dbg !1662
  br i1 %172, label %173, label %175, !dbg !1665

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !1662
  store i8 39, ptr %174, align 1, !dbg !1662, !tbaa !755
  br label %175, !dbg !1662

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !1665
  call void @llvm.dbg.value(metadata i64 %176, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 1, metadata !1482, metadata !DIExpression()), !dbg !1526
  br label %177, !dbg !1666

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !1526
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %178, metadata !1474, metadata !DIExpression()), !dbg !1526
  %180 = icmp ult i64 %178, %130, !dbg !1667
  br i1 %180, label %181, label %183, !dbg !1670

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !1667
  store i8 92, ptr %182, align 1, !dbg !1667, !tbaa !755
  br label %183, !dbg !1667

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %184, metadata !1474, metadata !DIExpression()), !dbg !1526
  br i1 %111, label %185, label %482, !dbg !1671

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !1673
  %187 = icmp ult i64 %186, %153, !dbg !1674
  br i1 %187, label %188, label %439, !dbg !1675

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !1676
  %190 = load i8, ptr %189, align 1, !dbg !1676, !tbaa !755
  %191 = add i8 %190, -48, !dbg !1677
  %192 = icmp ult i8 %191, 10, !dbg !1677
  br i1 %192, label %193, label %439, !dbg !1677

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !1678
  br i1 %194, label %195, label %197, !dbg !1682

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !1678
  store i8 48, ptr %196, align 1, !dbg !1678, !tbaa !755
  br label %197, !dbg !1678

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !1682
  call void @llvm.dbg.value(metadata i64 %198, metadata !1474, metadata !DIExpression()), !dbg !1526
  %199 = icmp ult i64 %198, %130, !dbg !1683
  br i1 %199, label %200, label %202, !dbg !1686

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !1683
  store i8 48, ptr %201, align 1, !dbg !1683, !tbaa !755
  br label %202, !dbg !1683

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %203, metadata !1474, metadata !DIExpression()), !dbg !1526
  br label %439, !dbg !1687

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !1688

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !1689

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !1690

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !1692

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !1694
  %210 = icmp ult i64 %209, %153, !dbg !1695
  br i1 %210, label %211, label %439, !dbg !1696

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !1697
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !1698
  %214 = load i8, ptr %213, align 1, !dbg !1698, !tbaa !755
  %215 = icmp eq i8 %214, 63, !dbg !1699
  br i1 %215, label %216, label %439, !dbg !1700

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !1701
  %218 = load i8, ptr %217, align 1, !dbg !1701, !tbaa !755
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
  ], !dbg !1702

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !1703

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1495, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i64 %209, metadata !1488, metadata !DIExpression()), !dbg !1615
  %221 = icmp ult i64 %124, %130, !dbg !1705
  br i1 %221, label %222, label %224, !dbg !1708

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1705
  store i8 63, ptr %223, align 1, !dbg !1705, !tbaa !755
  br label %224, !dbg !1705

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %225, metadata !1474, metadata !DIExpression()), !dbg !1526
  %226 = icmp ult i64 %225, %130, !dbg !1709
  br i1 %226, label %227, label %229, !dbg !1712

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !1709
  store i8 34, ptr %228, align 1, !dbg !1709, !tbaa !755
  br label %229, !dbg !1709

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %230, metadata !1474, metadata !DIExpression()), !dbg !1526
  %231 = icmp ult i64 %230, %130, !dbg !1713
  br i1 %231, label %232, label %234, !dbg !1716

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !1713
  store i8 34, ptr %233, align 1, !dbg !1713, !tbaa !755
  br label %234, !dbg !1713

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %235, metadata !1474, metadata !DIExpression()), !dbg !1526
  %236 = icmp ult i64 %235, %130, !dbg !1717
  br i1 %236, label %237, label %239, !dbg !1720

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !1717
  store i8 63, ptr %238, align 1, !dbg !1717, !tbaa !755
  br label %239, !dbg !1717

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !1720
  call void @llvm.dbg.value(metadata i64 %240, metadata !1474, metadata !DIExpression()), !dbg !1526
  br label %439, !dbg !1721

241:                                              ; preds = %152
  br label %251, !dbg !1722

242:                                              ; preds = %152
  br label %251, !dbg !1723

243:                                              ; preds = %152
  br label %249, !dbg !1724

244:                                              ; preds = %152
  br label %249, !dbg !1725

245:                                              ; preds = %152
  br label %251, !dbg !1726

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !1727

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !1728

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !1731

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !1733
  call void @llvm.dbg.label(metadata !1520), !dbg !1734
  br i1 %119, label %621, label %251, !dbg !1735

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !1733
  call void @llvm.dbg.label(metadata !1522), !dbg !1737
  br i1 %109, label %493, label %450, !dbg !1738

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !1739

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !1740, !tbaa !755
  %256 = icmp eq i8 %255, 0, !dbg !1742
  br i1 %256, label %257, label %439, !dbg !1743

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !1744
  br i1 %258, label %259, label %439, !dbg !1746

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1494, metadata !DIExpression()), !dbg !1624
  br label %260, !dbg !1747

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1494, metadata !DIExpression()), !dbg !1624
  br i1 %116, label %262, label %439, !dbg !1748

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !1750

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1480, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 1, metadata !1494, metadata !DIExpression()), !dbg !1624
  br i1 %116, label %264, label %439, !dbg !1751

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !1752

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !1755
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !1757
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !1757
  %270 = select i1 %268, i64 %130, i64 0, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %270, metadata !1465, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %269, metadata !1475, metadata !DIExpression()), !dbg !1526
  %271 = icmp ult i64 %124, %270, !dbg !1758
  br i1 %271, label %272, label %274, !dbg !1761

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1758
  store i8 39, ptr %273, align 1, !dbg !1758, !tbaa !755
  br label %274, !dbg !1758

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %275, metadata !1474, metadata !DIExpression()), !dbg !1526
  %276 = icmp ult i64 %275, %270, !dbg !1762
  br i1 %276, label %277, label %279, !dbg !1765

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !1762
  store i8 92, ptr %278, align 1, !dbg !1762, !tbaa !755
  br label %279, !dbg !1762

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %280, metadata !1474, metadata !DIExpression()), !dbg !1526
  %281 = icmp ult i64 %280, %270, !dbg !1766
  br i1 %281, label %282, label %284, !dbg !1769

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !1766
  store i8 39, ptr %283, align 1, !dbg !1766, !tbaa !755
  br label %284, !dbg !1766

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !1769
  call void @llvm.dbg.value(metadata i64 %285, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 0, metadata !1482, metadata !DIExpression()), !dbg !1526
  br label %439, !dbg !1770

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !1771

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1496, metadata !DIExpression()), !dbg !1772
  %288 = tail call ptr @__ctype_b_loc() #39, !dbg !1773
  %289 = load ptr, ptr %288, align 8, !dbg !1773, !tbaa !724
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !1773
  %292 = load i16, ptr %291, align 2, !dbg !1773, !tbaa !787
  %293 = and i16 %292, 16384, !dbg !1773
  %294 = icmp ne i16 %293, 0, !dbg !1775
  call void @llvm.dbg.value(metadata i1 %294, metadata !1499, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1772
  br label %337, !dbg !1776

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !1777
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1500, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata ptr %14, metadata !1552, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata ptr %14, metadata !1560, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 0, metadata !1563, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64 8, metadata !1564, metadata !DIExpression()), !dbg !1781
  store i64 0, ptr %14, align 8, !dbg !1783
  call void @llvm.dbg.value(metadata i64 0, metadata !1496, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 1, metadata !1499, metadata !DIExpression()), !dbg !1772
  %296 = icmp eq i64 %153, -1, !dbg !1784
  br i1 %296, label %297, label %299, !dbg !1786

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %298, metadata !1467, metadata !DIExpression()), !dbg !1526
  br label %299, !dbg !1788

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !1624
  call void @llvm.dbg.value(metadata i64 %300, metadata !1467, metadata !DIExpression()), !dbg !1526
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !1789
  %301 = sub i64 %300, %129, !dbg !1790
  call void @llvm.dbg.value(metadata ptr %15, metadata !1503, metadata !DIExpression(DW_OP_deref)), !dbg !1791
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #36, !dbg !1792
  call void @llvm.dbg.value(metadata i64 %302, metadata !1507, metadata !DIExpression()), !dbg !1791
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !1793

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1496, metadata !DIExpression()), !dbg !1772
  %304 = icmp ugt i64 %300, %129, !dbg !1794
  br i1 %304, label %306, label %332, !dbg !1796

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1499, metadata !DIExpression()), !dbg !1772
  br label %332, !dbg !1797

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1496, metadata !DIExpression()), !dbg !1772
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !1799
  %310 = load i8, ptr %309, align 1, !dbg !1799, !tbaa !755
  %311 = icmp eq i8 %310, 0, !dbg !1796
  br i1 %311, label %332, label %312, !dbg !1800

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !1801
  call void @llvm.dbg.value(metadata i64 %313, metadata !1496, metadata !DIExpression()), !dbg !1772
  %314 = add i64 %313, %129, !dbg !1802
  %315 = icmp eq i64 %313, %301, !dbg !1794
  br i1 %315, label %332, label %306, !dbg !1796, !llvm.loop !1803

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !1804
  %319 = and i1 %318, %110, !dbg !1804
  call void @llvm.dbg.value(metadata i64 1, metadata !1508, metadata !DIExpression()), !dbg !1805
  br i1 %319, label %320, label %328, !dbg !1804

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1508, metadata !DIExpression()), !dbg !1805
  %322 = add i64 %321, %129, !dbg !1806
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !1808
  %324 = load i8, ptr %323, align 1, !dbg !1808, !tbaa !755
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !1809

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %326, metadata !1508, metadata !DIExpression()), !dbg !1805
  %327 = icmp eq i64 %326, %302, !dbg !1811
  br i1 %327, label %328, label %320, !dbg !1812, !llvm.loop !1813

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !1815, !tbaa !746
  call void @llvm.dbg.value(metadata i32 %329, metadata !1503, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i32 %329, metadata !1817, metadata !DIExpression()), !dbg !1825
  %330 = call i32 @iswprint(i32 noundef %329) #36, !dbg !1827
  %331 = icmp ne i32 %330, 0, !dbg !1828
  call void @llvm.dbg.value(metadata i8 poison, metadata !1499, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 %302, metadata !1496, metadata !DIExpression()), !dbg !1772
  br label %332, !dbg !1829

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1499, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 %333, metadata !1496, metadata !DIExpression()), !dbg !1772
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1831
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1499, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 0, metadata !1496, metadata !DIExpression()), !dbg !1772
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1831
  call void @llvm.dbg.label(metadata !1525), !dbg !1832
  %336 = select i1 %109, i32 4, i32 2, !dbg !1833
  br label %626, !dbg !1833

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !1624
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !1835
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1499, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 %339, metadata !1496, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 %338, metadata !1467, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i1 %340, metadata !1494, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1624
  %341 = icmp ult i64 %339, 2, !dbg !1836
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !1837
  br i1 %343, label %439, label %344, !dbg !1837

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !1838
  call void @llvm.dbg.value(metadata i64 %345, metadata !1516, metadata !DIExpression()), !dbg !1839
  br label %346, !dbg !1840

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !1526
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !1615
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !1841
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !1624
  call void @llvm.dbg.value(metadata i8 %352, metadata !1495, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 %351, metadata !1493, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 poison, metadata !1490, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i64 %349, metadata !1488, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %347, metadata !1474, metadata !DIExpression()), !dbg !1526
  br i1 %342, label %397, label %353, !dbg !1842

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !1847

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1493, metadata !DIExpression()), !dbg !1624
  %355 = select i1 %111, i1 true, i1 %348, !dbg !1850
  br i1 %355, label %372, label %356, !dbg !1850

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !1852
  br i1 %357, label %358, label %360, !dbg !1856

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !1852
  store i8 39, ptr %359, align 1, !dbg !1852, !tbaa !755
  br label %360, !dbg !1852

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !1856
  call void @llvm.dbg.value(metadata i64 %361, metadata !1474, metadata !DIExpression()), !dbg !1526
  %362 = icmp ult i64 %361, %130, !dbg !1857
  br i1 %362, label %363, label %365, !dbg !1860

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !1857
  store i8 36, ptr %364, align 1, !dbg !1857, !tbaa !755
  br label %365, !dbg !1857

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !1860
  call void @llvm.dbg.value(metadata i64 %366, metadata !1474, metadata !DIExpression()), !dbg !1526
  %367 = icmp ult i64 %366, %130, !dbg !1861
  br i1 %367, label %368, label %370, !dbg !1864

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !1861
  store i8 39, ptr %369, align 1, !dbg !1861, !tbaa !755
  br label %370, !dbg !1861

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %371, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 1, metadata !1482, metadata !DIExpression()), !dbg !1526
  br label %372, !dbg !1865

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !1526
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %373, metadata !1474, metadata !DIExpression()), !dbg !1526
  %375 = icmp ult i64 %373, %130, !dbg !1866
  br i1 %375, label %376, label %378, !dbg !1869

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !1866
  store i8 92, ptr %377, align 1, !dbg !1866, !tbaa !755
  br label %378, !dbg !1866

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %379, metadata !1474, metadata !DIExpression()), !dbg !1526
  %380 = icmp ult i64 %379, %130, !dbg !1870
  br i1 %380, label %381, label %385, !dbg !1873

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !1870
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !1870
  store i8 %383, ptr %384, align 1, !dbg !1870, !tbaa !755
  br label %385, !dbg !1870

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %386, metadata !1474, metadata !DIExpression()), !dbg !1526
  %387 = icmp ult i64 %386, %130, !dbg !1874
  br i1 %387, label %388, label %393, !dbg !1877

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !1874
  %391 = or i8 %390, 48, !dbg !1874
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !1874
  store i8 %391, ptr %392, align 1, !dbg !1874, !tbaa !755
  br label %393, !dbg !1874

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %394, metadata !1474, metadata !DIExpression()), !dbg !1526
  %395 = and i8 %352, 7, !dbg !1878
  %396 = or i8 %395, 48, !dbg !1879
  call void @llvm.dbg.value(metadata i8 %396, metadata !1495, metadata !DIExpression()), !dbg !1624
  br label %404, !dbg !1880

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !1881

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !1882
  br i1 %399, label %400, label %402, !dbg !1887

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !1882
  store i8 92, ptr %401, align 1, !dbg !1882, !tbaa !755
  br label %402, !dbg !1882

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %403, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 0, metadata !1490, metadata !DIExpression()), !dbg !1624
  br label %404, !dbg !1888

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !1526
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !1624
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !1624
  call void @llvm.dbg.value(metadata i8 %409, metadata !1495, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 %408, metadata !1493, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 poison, metadata !1490, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %405, metadata !1474, metadata !DIExpression()), !dbg !1526
  %410 = add i64 %349, 1, !dbg !1889
  %411 = icmp ugt i64 %345, %410, !dbg !1891
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !1892

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !1893
  %415 = select i1 %406, i1 %414, i1 false, !dbg !1893
  br i1 %415, label %416, label %427, !dbg !1893

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !1896
  br i1 %417, label %418, label %420, !dbg !1900

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !1896
  store i8 39, ptr %419, align 1, !dbg !1896, !tbaa !755
  br label %420, !dbg !1896

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %421, metadata !1474, metadata !DIExpression()), !dbg !1526
  %422 = icmp ult i64 %421, %130, !dbg !1901
  br i1 %422, label %423, label %425, !dbg !1904

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !1901
  store i8 39, ptr %424, align 1, !dbg !1901, !tbaa !755
  br label %425, !dbg !1901

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %426, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 0, metadata !1482, metadata !DIExpression()), !dbg !1526
  br label %427, !dbg !1905

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !1906
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %428, metadata !1474, metadata !DIExpression()), !dbg !1526
  %430 = icmp ult i64 %428, %130, !dbg !1907
  br i1 %430, label %431, label %433, !dbg !1910

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !1907
  store i8 %409, ptr %432, align 1, !dbg !1907, !tbaa !755
  br label %433, !dbg !1907

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %434, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %410, metadata !1488, metadata !DIExpression()), !dbg !1615
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !1911
  %436 = load i8, ptr %435, align 1, !dbg !1911, !tbaa !755
  call void @llvm.dbg.value(metadata i8 %436, metadata !1495, metadata !DIExpression()), !dbg !1624
  br label %346, !dbg !1912, !llvm.loop !1913

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1495, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i1 %340, metadata !1494, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1624
  call void @llvm.dbg.value(metadata i8 %408, metadata !1493, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 poison, metadata !1490, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i64 %349, metadata !1488, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %405, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %338, metadata !1467, metadata !DIExpression()), !dbg !1526
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !1916
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !1526
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !1530
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !1615
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !1624
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1465, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 %448, metadata !1495, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 poison, metadata !1494, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 poison, metadata !1493, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 poison, metadata !1490, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i64 %445, metadata !1488, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %442, metadata !1475, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %441, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %440, metadata !1467, metadata !DIExpression()), !dbg !1526
  br i1 %112, label %461, label %450, !dbg !1917

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
  br i1 %121, label %462, label %482, !dbg !1919

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !1920

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
  %473 = lshr i8 %464, 5, !dbg !1921
  %474 = zext i8 %473 to i64, !dbg !1921
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !1922
  %476 = load i32, ptr %475, align 4, !dbg !1922, !tbaa !746
  %477 = and i8 %464, 31, !dbg !1923
  %478 = zext i8 %477 to i32, !dbg !1923
  %479 = shl nuw i32 1, %478, !dbg !1924
  %480 = and i32 %476, %479, !dbg !1924
  %481 = icmp eq i32 %480, 0, !dbg !1924
  br i1 %481, label %482, label %493, !dbg !1925

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
  br i1 %154, label %493, label %529, !dbg !1926

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !1916
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !1526
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !1530
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !1927
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !1624
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1465, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 %501, metadata !1495, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 poison, metadata !1494, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i64 %499, metadata !1488, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %496, metadata !1475, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %495, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %494, metadata !1467, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.label(metadata !1523), !dbg !1928
  br i1 %110, label %621, label %503, !dbg !1929

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1493, metadata !DIExpression()), !dbg !1624
  %504 = select i1 %111, i1 true, i1 %498, !dbg !1931
  br i1 %504, label %521, label %505, !dbg !1931

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !1933
  br i1 %506, label %507, label %509, !dbg !1937

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !1933
  store i8 39, ptr %508, align 1, !dbg !1933, !tbaa !755
  br label %509, !dbg !1933

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %510, metadata !1474, metadata !DIExpression()), !dbg !1526
  %511 = icmp ult i64 %510, %502, !dbg !1938
  br i1 %511, label %512, label %514, !dbg !1941

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !1938
  store i8 36, ptr %513, align 1, !dbg !1938, !tbaa !755
  br label %514, !dbg !1938

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %515, metadata !1474, metadata !DIExpression()), !dbg !1526
  %516 = icmp ult i64 %515, %502, !dbg !1942
  br i1 %516, label %517, label %519, !dbg !1945

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !1942
  store i8 39, ptr %518, align 1, !dbg !1942, !tbaa !755
  br label %519, !dbg !1942

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %520, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 1, metadata !1482, metadata !DIExpression()), !dbg !1526
  br label %521, !dbg !1946

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !1624
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %522, metadata !1474, metadata !DIExpression()), !dbg !1526
  %524 = icmp ult i64 %522, %502, !dbg !1947
  br i1 %524, label %525, label %527, !dbg !1950

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !1947
  store i8 92, ptr %526, align 1, !dbg !1947, !tbaa !755
  br label %527, !dbg !1947

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !1950
  call void @llvm.dbg.value(metadata i64 %502, metadata !1465, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 %501, metadata !1495, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 poison, metadata !1494, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 poison, metadata !1493, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i64 %499, metadata !1488, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %496, metadata !1475, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %528, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %494, metadata !1467, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.label(metadata !1524), !dbg !1951
  br label %553, !dbg !1952

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !1916
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !1526
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !1530
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !1927
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !1955
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1465, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 %538, metadata !1495, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 poison, metadata !1494, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 poison, metadata !1493, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i64 %535, metadata !1488, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %532, metadata !1475, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %531, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %530, metadata !1467, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.label(metadata !1524), !dbg !1951
  %540 = xor i1 %534, true, !dbg !1952
  %541 = select i1 %540, i1 true, i1 %536, !dbg !1952
  br i1 %541, label %553, label %542, !dbg !1952

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !1956
  br i1 %543, label %544, label %546, !dbg !1960

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !1956
  store i8 39, ptr %545, align 1, !dbg !1956, !tbaa !755
  br label %546, !dbg !1956

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %547, metadata !1474, metadata !DIExpression()), !dbg !1526
  %548 = icmp ult i64 %547, %539, !dbg !1961
  br i1 %548, label %549, label %551, !dbg !1964

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !1961
  store i8 39, ptr %550, align 1, !dbg !1961, !tbaa !755
  br label %551, !dbg !1961

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !1964
  call void @llvm.dbg.value(metadata i64 %552, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 0, metadata !1482, metadata !DIExpression()), !dbg !1526
  br label %553, !dbg !1965

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !1624
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %561, metadata !1474, metadata !DIExpression()), !dbg !1526
  %563 = icmp ult i64 %561, %554, !dbg !1966
  br i1 %563, label %564, label %566, !dbg !1969

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !1966
  store i8 %555, ptr %565, align 1, !dbg !1966, !tbaa !755
  br label %566, !dbg !1966

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !1969
  call void @llvm.dbg.value(metadata i64 %567, metadata !1474, metadata !DIExpression()), !dbg !1526
  %568 = select i1 %556, i1 %127, i1 false, !dbg !1970
  call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1526
  br label %569, !dbg !1971

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !1916
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !1526
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !1530
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !1927
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1465, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %576, metadata !1488, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %572, metadata !1475, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %571, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %570, metadata !1467, metadata !DIExpression()), !dbg !1526
  %578 = add i64 %576, 1, !dbg !1972
  call void @llvm.dbg.value(metadata i64 %578, metadata !1488, metadata !DIExpression()), !dbg !1615
  br label %122, !dbg !1973, !llvm.loop !1974

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1465, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %125, metadata !1475, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %124, metadata !1474, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %123, metadata !1467, metadata !DIExpression()), !dbg !1526
  %580 = icmp ne i64 %124, 0, !dbg !1976
  %581 = xor i1 %110, true, !dbg !1978
  %582 = or i1 %580, %581, !dbg !1978
  %583 = or i1 %582, %111, !dbg !1978
  br i1 %583, label %584, label %621, !dbg !1978

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !1979
  %586 = xor i1 %126, true, !dbg !1979
  %587 = select i1 %585, i1 true, i1 %586, !dbg !1979
  br i1 %587, label %595, label %588, !dbg !1979

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !1981

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !1983
  br label %636, !dbg !1985

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !1986
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !1988
  br i1 %594, label %27, label %595, !dbg !1988

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !1989
  %598 = or i1 %597, %596, !dbg !1991
  br i1 %598, label %614, label %599, !dbg !1991

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1476, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %124, metadata !1474, metadata !DIExpression()), !dbg !1526
  %600 = load i8, ptr %107, align 1, !dbg !1992, !tbaa !755
  %601 = icmp eq i8 %600, 0, !dbg !1995
  br i1 %601, label %614, label %602, !dbg !1995

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1476, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 %605, metadata !1474, metadata !DIExpression()), !dbg !1526
  %606 = icmp ult i64 %605, %130, !dbg !1996
  br i1 %606, label %607, label %609, !dbg !1999

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !1996
  store i8 %603, ptr %608, align 1, !dbg !1996, !tbaa !755
  br label %609, !dbg !1996

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %610, metadata !1474, metadata !DIExpression()), !dbg !1526
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2000
  call void @llvm.dbg.value(metadata ptr %611, metadata !1476, metadata !DIExpression()), !dbg !1526
  %612 = load i8, ptr %611, align 1, !dbg !1992, !tbaa !755
  %613 = icmp eq i8 %612, 0, !dbg !1995
  br i1 %613, label %614, label %602, !dbg !1995, !llvm.loop !2001

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !1602
  call void @llvm.dbg.value(metadata i64 %615, metadata !1474, metadata !DIExpression()), !dbg !1526
  %616 = icmp ult i64 %615, %130, !dbg !2003
  br i1 %616, label %617, label %636, !dbg !2005

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2006
  store i8 0, ptr %618, align 1, !dbg !2007, !tbaa !755
  br label %636, !dbg !2006

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !1525), !dbg !1832
  %620 = icmp eq i32 %103, 2, !dbg !2008
  br i1 %620, label %626, label %630, !dbg !1833

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !1525), !dbg !1832
  %624 = icmp eq i32 %103, 2, !dbg !2008
  %625 = select i1 %109, i32 4, i32 2, !dbg !1833
  br i1 %624, label %626, label %630, !dbg !1833

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !1833

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1468, metadata !DIExpression()), !dbg !1526
  %634 = and i32 %5, -3, !dbg !2009
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2010
  br label %636, !dbg !2011

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2012
}

; Function Attrs: nounwind
declare !dbg !2013 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2016 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2019 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2021 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2025, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i64 %1, metadata !2026, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata ptr %2, metadata !2027, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata ptr %0, metadata !2029, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i64 %1, metadata !2034, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata ptr null, metadata !2035, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata ptr %2, metadata !2036, metadata !DIExpression()), !dbg !2042
  %4 = icmp eq ptr %2, null, !dbg !2044
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2044
  call void @llvm.dbg.value(metadata ptr %5, metadata !2037, metadata !DIExpression()), !dbg !2042
  %6 = tail call ptr @__errno_location() #39, !dbg !2045
  %7 = load i32, ptr %6, align 4, !dbg !2045, !tbaa !746
  call void @llvm.dbg.value(metadata i32 %7, metadata !2038, metadata !DIExpression()), !dbg !2042
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2046
  %9 = load i32, ptr %8, align 4, !dbg !2046, !tbaa !1408
  %10 = or i32 %9, 1, !dbg !2047
  call void @llvm.dbg.value(metadata i32 %10, metadata !2039, metadata !DIExpression()), !dbg !2042
  %11 = load i32, ptr %5, align 8, !dbg !2048, !tbaa !1358
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2049
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2050
  %14 = load ptr, ptr %13, align 8, !dbg !2050, !tbaa !1429
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2051
  %16 = load ptr, ptr %15, align 8, !dbg !2051, !tbaa !1432
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2052
  %18 = add i64 %17, 1, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %18, metadata !2040, metadata !DIExpression()), !dbg !2042
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2054
  call void @llvm.dbg.value(metadata ptr %19, metadata !2041, metadata !DIExpression()), !dbg !2042
  %20 = load i32, ptr %5, align 8, !dbg !2055, !tbaa !1358
  %21 = load ptr, ptr %13, align 8, !dbg !2056, !tbaa !1429
  %22 = load ptr, ptr %15, align 8, !dbg !2057, !tbaa !1432
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2058
  store i32 %7, ptr %6, align 4, !dbg !2059, !tbaa !746
  ret ptr %19, !dbg !2060
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2030 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2029, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i64 %1, metadata !2034, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata ptr %2, metadata !2035, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata ptr %3, metadata !2036, metadata !DIExpression()), !dbg !2061
  %5 = icmp eq ptr %3, null, !dbg !2062
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2062
  call void @llvm.dbg.value(metadata ptr %6, metadata !2037, metadata !DIExpression()), !dbg !2061
  %7 = tail call ptr @__errno_location() #39, !dbg !2063
  %8 = load i32, ptr %7, align 4, !dbg !2063, !tbaa !746
  call void @llvm.dbg.value(metadata i32 %8, metadata !2038, metadata !DIExpression()), !dbg !2061
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2064
  %10 = load i32, ptr %9, align 4, !dbg !2064, !tbaa !1408
  %11 = icmp eq ptr %2, null, !dbg !2065
  %12 = zext i1 %11 to i32, !dbg !2065
  %13 = or i32 %10, %12, !dbg !2066
  call void @llvm.dbg.value(metadata i32 %13, metadata !2039, metadata !DIExpression()), !dbg !2061
  %14 = load i32, ptr %6, align 8, !dbg !2067, !tbaa !1358
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2068
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2069
  %17 = load ptr, ptr %16, align 8, !dbg !2069, !tbaa !1429
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2070
  %19 = load ptr, ptr %18, align 8, !dbg !2070, !tbaa !1432
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2071
  %21 = add i64 %20, 1, !dbg !2072
  call void @llvm.dbg.value(metadata i64 %21, metadata !2040, metadata !DIExpression()), !dbg !2061
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2073
  call void @llvm.dbg.value(metadata ptr %22, metadata !2041, metadata !DIExpression()), !dbg !2061
  %23 = load i32, ptr %6, align 8, !dbg !2074, !tbaa !1358
  %24 = load ptr, ptr %16, align 8, !dbg !2075, !tbaa !1429
  %25 = load ptr, ptr %18, align 8, !dbg !2076, !tbaa !1432
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2077
  store i32 %8, ptr %7, align 4, !dbg !2078, !tbaa !746
  br i1 %11, label %28, label %27, !dbg !2079

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2080, !tbaa !2082
  br label %28, !dbg !2083

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2084
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2085 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2090, !tbaa !724
  call void @llvm.dbg.value(metadata ptr %1, metadata !2087, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i32 1, metadata !2088, metadata !DIExpression()), !dbg !2092
  %2 = load i32, ptr @nslots, align 4, !tbaa !746
  call void @llvm.dbg.value(metadata i32 1, metadata !2088, metadata !DIExpression()), !dbg !2092
  %3 = icmp sgt i32 %2, 1, !dbg !2093
  br i1 %3, label %4, label %6, !dbg !2095

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2093
  br label %10, !dbg !2095

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2096
  %8 = load ptr, ptr %7, align 8, !dbg !2096, !tbaa !2098
  %9 = icmp eq ptr %8, @slot0, !dbg !2100
  br i1 %9, label %17, label %16, !dbg !2101

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2088, metadata !DIExpression()), !dbg !2092
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2102
  %13 = load ptr, ptr %12, align 8, !dbg !2102, !tbaa !2098
  tail call void @free(ptr noundef %13) #36, !dbg !2103
  %14 = add nuw nsw i64 %11, 1, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %14, metadata !2088, metadata !DIExpression()), !dbg !2092
  %15 = icmp eq i64 %14, %5, !dbg !2093
  br i1 %15, label %6, label %10, !dbg !2095, !llvm.loop !2105

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2107
  store i64 256, ptr @slotvec0, align 8, !dbg !2109, !tbaa !2110
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2111, !tbaa !2098
  br label %17, !dbg !2112

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2113
  br i1 %18, label %20, label %19, !dbg !2115

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2116
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2118, !tbaa !724
  br label %20, !dbg !2119

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2120, !tbaa !746
  ret void, !dbg !2121
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2122 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2125 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2127, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata ptr %1, metadata !2128, metadata !DIExpression()), !dbg !2129
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2130
  ret ptr %3, !dbg !2131
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2132 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2136, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata ptr %1, metadata !2137, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64 %2, metadata !2138, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata ptr %3, metadata !2139, metadata !DIExpression()), !dbg !2152
  %6 = tail call ptr @__errno_location() #39, !dbg !2153
  %7 = load i32, ptr %6, align 4, !dbg !2153, !tbaa !746
  call void @llvm.dbg.value(metadata i32 %7, metadata !2140, metadata !DIExpression()), !dbg !2152
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2154, !tbaa !724
  call void @llvm.dbg.value(metadata ptr %8, metadata !2141, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2142, metadata !DIExpression()), !dbg !2152
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2155
  br i1 %9, label %10, label %11, !dbg !2155

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2157
  unreachable, !dbg !2157

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2158, !tbaa !746
  %13 = icmp sgt i32 %12, %0, !dbg !2159
  br i1 %13, label %32, label %14, !dbg !2160

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2161
  call void @llvm.dbg.value(metadata i1 %15, metadata !2143, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2162
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2163
  %16 = sext i32 %12 to i64, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %16, metadata !2146, metadata !DIExpression()), !dbg !2162
  store i64 %16, ptr %5, align 8, !dbg !2165, !tbaa !2082
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2166
  %18 = add nuw nsw i32 %0, 1, !dbg !2167
  %19 = sub i32 %18, %12, !dbg !2168
  %20 = sext i32 %19 to i64, !dbg !2169
  call void @llvm.dbg.value(metadata ptr %5, metadata !2146, metadata !DIExpression(DW_OP_deref)), !dbg !2162
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2170
  call void @llvm.dbg.value(metadata ptr %21, metadata !2141, metadata !DIExpression()), !dbg !2152
  store ptr %21, ptr @slotvec, align 8, !dbg !2171, !tbaa !724
  br i1 %15, label %22, label %23, !dbg !2172

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2173, !tbaa.struct !2175
  br label %23, !dbg !2176

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2177, !tbaa !746
  %25 = sext i32 %24 to i64, !dbg !2178
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2178
  %27 = load i64, ptr %5, align 8, !dbg !2179, !tbaa !2082
  call void @llvm.dbg.value(metadata i64 %27, metadata !2146, metadata !DIExpression()), !dbg !2162
  %28 = sub nsw i64 %27, %25, !dbg !2180
  %29 = shl i64 %28, 4, !dbg !2181
  call void @llvm.dbg.value(metadata ptr %26, metadata !1560, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i32 0, metadata !1563, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i64 %29, metadata !1564, metadata !DIExpression()), !dbg !2182
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2184
  %30 = load i64, ptr %5, align 8, !dbg !2185, !tbaa !2082
  call void @llvm.dbg.value(metadata i64 %30, metadata !2146, metadata !DIExpression()), !dbg !2162
  %31 = trunc i64 %30 to i32, !dbg !2185
  store i32 %31, ptr @nslots, align 4, !dbg !2186, !tbaa !746
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2187
  br label %32, !dbg !2188

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2152
  call void @llvm.dbg.value(metadata ptr %33, metadata !2141, metadata !DIExpression()), !dbg !2152
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2189
  %36 = load i64, ptr %35, align 8, !dbg !2190, !tbaa !2110
  call void @llvm.dbg.value(metadata i64 %36, metadata !2147, metadata !DIExpression()), !dbg !2191
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2192
  %38 = load ptr, ptr %37, align 8, !dbg !2192, !tbaa !2098
  call void @llvm.dbg.value(metadata ptr %38, metadata !2149, metadata !DIExpression()), !dbg !2191
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2193
  %40 = load i32, ptr %39, align 4, !dbg !2193, !tbaa !1408
  %41 = or i32 %40, 1, !dbg !2194
  call void @llvm.dbg.value(metadata i32 %41, metadata !2150, metadata !DIExpression()), !dbg !2191
  %42 = load i32, ptr %3, align 8, !dbg !2195, !tbaa !1358
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2196
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2197
  %45 = load ptr, ptr %44, align 8, !dbg !2197, !tbaa !1429
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2198
  %47 = load ptr, ptr %46, align 8, !dbg !2198, !tbaa !1432
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %48, metadata !2151, metadata !DIExpression()), !dbg !2191
  %49 = icmp ugt i64 %36, %48, !dbg !2200
  br i1 %49, label %60, label %50, !dbg !2202

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2203
  call void @llvm.dbg.value(metadata i64 %51, metadata !2147, metadata !DIExpression()), !dbg !2191
  store i64 %51, ptr %35, align 8, !dbg !2205, !tbaa !2110
  %52 = icmp eq ptr %38, @slot0, !dbg !2206
  br i1 %52, label %54, label %53, !dbg !2208

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2209
  br label %54, !dbg !2209

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2210
  call void @llvm.dbg.value(metadata ptr %55, metadata !2149, metadata !DIExpression()), !dbg !2191
  store ptr %55, ptr %37, align 8, !dbg !2211, !tbaa !2098
  %56 = load i32, ptr %3, align 8, !dbg !2212, !tbaa !1358
  %57 = load ptr, ptr %44, align 8, !dbg !2213, !tbaa !1429
  %58 = load ptr, ptr %46, align 8, !dbg !2214, !tbaa !1432
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2215
  br label %60, !dbg !2216

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2191
  call void @llvm.dbg.value(metadata ptr %61, metadata !2149, metadata !DIExpression()), !dbg !2191
  store i32 %7, ptr %6, align 4, !dbg !2217, !tbaa !746
  ret ptr %61, !dbg !2218
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2219 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2223, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata ptr %1, metadata !2224, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i64 %2, metadata !2225, metadata !DIExpression()), !dbg !2226
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2227
  ret ptr %4, !dbg !2228
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2229 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2231, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i32 0, metadata !2127, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata ptr %0, metadata !2128, metadata !DIExpression()), !dbg !2233
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2235
  ret ptr %2, !dbg !2236
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2237 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2241, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 %1, metadata !2242, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i32 0, metadata !2223, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata ptr %0, metadata !2224, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %1, metadata !2225, metadata !DIExpression()), !dbg !2244
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2246
  ret ptr %3, !dbg !2247
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2248 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2252, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i32 %1, metadata !2253, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata ptr %2, metadata !2254, metadata !DIExpression()), !dbg !2256
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2257
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2255, metadata !DIExpression()), !dbg !2258
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2259), !dbg !2262
  call void @llvm.dbg.value(metadata i32 %1, metadata !2263, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2268, metadata !DIExpression()), !dbg !2271
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2271, !alias.scope !2259
  %5 = icmp eq i32 %1, 10, !dbg !2272
  br i1 %5, label %6, label %7, !dbg !2274

6:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2275, !noalias !2259
  unreachable, !dbg !2275

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2276, !tbaa !1358, !alias.scope !2259
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2277
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2278
  ret ptr %8, !dbg !2279
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2280 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2284, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 %1, metadata !2285, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata ptr %2, metadata !2286, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i64 %3, metadata !2287, metadata !DIExpression()), !dbg !2289
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2290
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2288, metadata !DIExpression()), !dbg !2291
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2292), !dbg !2295
  call void @llvm.dbg.value(metadata i32 %1, metadata !2263, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2268, metadata !DIExpression()), !dbg !2298
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2298, !alias.scope !2292
  %6 = icmp eq i32 %1, 10, !dbg !2299
  br i1 %6, label %7, label %8, !dbg !2300

7:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2301, !noalias !2292
  unreachable, !dbg !2301

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2302, !tbaa !1358, !alias.scope !2292
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2303
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2304
  ret ptr %9, !dbg !2305
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2306 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2310, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata ptr %1, metadata !2311, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 0, metadata !2252, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i32 %0, metadata !2253, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata ptr %1, metadata !2254, metadata !DIExpression()), !dbg !2313
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2315
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2255, metadata !DIExpression()), !dbg !2316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2317), !dbg !2320
  call void @llvm.dbg.value(metadata i32 %0, metadata !2263, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2268, metadata !DIExpression()), !dbg !2323
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2323, !alias.scope !2317
  %4 = icmp eq i32 %0, 10, !dbg !2324
  br i1 %4, label %5, label %6, !dbg !2325

5:                                                ; preds = %2
  tail call void @abort() #37, !dbg !2326, !noalias !2317
  unreachable, !dbg !2326

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2327, !tbaa !1358, !alias.scope !2317
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2328
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2329
  ret ptr %7, !dbg !2330
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2331 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2335, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata ptr %1, metadata !2336, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %2, metadata !2337, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 0, metadata !2284, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i32 %0, metadata !2285, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata ptr %1, metadata !2286, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i64 %2, metadata !2287, metadata !DIExpression()), !dbg !2339
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2341
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2288, metadata !DIExpression()), !dbg !2342
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2343), !dbg !2346
  call void @llvm.dbg.value(metadata i32 %0, metadata !2263, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2268, metadata !DIExpression()), !dbg !2349
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2349, !alias.scope !2343
  %5 = icmp eq i32 %0, 10, !dbg !2350
  br i1 %5, label %6, label %7, !dbg !2351

6:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2352, !noalias !2343
  unreachable, !dbg !2352

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2353, !tbaa !1358, !alias.scope !2343
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2354
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2355
  ret ptr %8, !dbg !2356
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2357 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2361, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %1, metadata !2362, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 %2, metadata !2363, metadata !DIExpression()), !dbg !2365
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2366
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2364, metadata !DIExpression()), !dbg !2367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2368, !tbaa.struct !2369
  call void @llvm.dbg.value(metadata ptr %4, metadata !1375, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i8 %2, metadata !1376, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i32 1, metadata !1377, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i8 %2, metadata !1378, metadata !DIExpression()), !dbg !2370
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2372
  %6 = lshr i8 %2, 5, !dbg !2373
  %7 = zext i8 %6 to i64, !dbg !2373
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2374
  call void @llvm.dbg.value(metadata ptr %8, metadata !1379, metadata !DIExpression()), !dbg !2370
  %9 = and i8 %2, 31, !dbg !2375
  %10 = zext i8 %9 to i32, !dbg !2375
  call void @llvm.dbg.value(metadata i32 %10, metadata !1381, metadata !DIExpression()), !dbg !2370
  %11 = load i32, ptr %8, align 4, !dbg !2376, !tbaa !746
  %12 = lshr i32 %11, %10, !dbg !2377
  call void @llvm.dbg.value(metadata i32 %12, metadata !1382, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2370
  %13 = and i32 %12, 1, !dbg !2378
  %14 = xor i32 %13, 1, !dbg !2378
  %15 = shl nuw i32 %14, %10, !dbg !2379
  %16 = xor i32 %15, %11, !dbg !2380
  store i32 %16, ptr %8, align 4, !dbg !2380, !tbaa !746
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2381
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2382
  ret ptr %17, !dbg !2383
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2384 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2388, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 %1, metadata !2389, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata ptr %0, metadata !2361, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i64 -1, metadata !2362, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 %1, metadata !2363, metadata !DIExpression()), !dbg !2391
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2393
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2364, metadata !DIExpression()), !dbg !2394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2395, !tbaa.struct !2369
  call void @llvm.dbg.value(metadata ptr %3, metadata !1375, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i8 %1, metadata !1376, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i32 1, metadata !1377, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i8 %1, metadata !1378, metadata !DIExpression()), !dbg !2396
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2398
  %5 = lshr i8 %1, 5, !dbg !2399
  %6 = zext i8 %5 to i64, !dbg !2399
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2400
  call void @llvm.dbg.value(metadata ptr %7, metadata !1379, metadata !DIExpression()), !dbg !2396
  %8 = and i8 %1, 31, !dbg !2401
  %9 = zext i8 %8 to i32, !dbg !2401
  call void @llvm.dbg.value(metadata i32 %9, metadata !1381, metadata !DIExpression()), !dbg !2396
  %10 = load i32, ptr %7, align 4, !dbg !2402, !tbaa !746
  %11 = lshr i32 %10, %9, !dbg !2403
  call void @llvm.dbg.value(metadata i32 %11, metadata !1382, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2396
  %12 = and i32 %11, 1, !dbg !2404
  %13 = xor i32 %12, 1, !dbg !2404
  %14 = shl nuw i32 %13, %9, !dbg !2405
  %15 = xor i32 %14, %10, !dbg !2406
  store i32 %15, ptr %7, align 4, !dbg !2406, !tbaa !746
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2407
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2408
  ret ptr %16, !dbg !2409
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2410 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2412, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %0, metadata !2388, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 58, metadata !2389, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata ptr %0, metadata !2361, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i64 -1, metadata !2362, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i8 58, metadata !2363, metadata !DIExpression()), !dbg !2416
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2418
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2364, metadata !DIExpression()), !dbg !2419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2420, !tbaa.struct !2369
  call void @llvm.dbg.value(metadata ptr %2, metadata !1375, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i8 58, metadata !1376, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i32 1, metadata !1377, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i8 58, metadata !1378, metadata !DIExpression()), !dbg !2421
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2423
  call void @llvm.dbg.value(metadata ptr %3, metadata !1379, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i32 26, metadata !1381, metadata !DIExpression()), !dbg !2421
  %4 = load i32, ptr %3, align 4, !dbg !2424, !tbaa !746
  call void @llvm.dbg.value(metadata i32 %4, metadata !1382, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2421
  %5 = or i32 %4, 67108864, !dbg !2425
  store i32 %5, ptr %3, align 4, !dbg !2425, !tbaa !746
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2426
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2427
  ret ptr %6, !dbg !2428
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2429 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2431, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i64 %1, metadata !2432, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata ptr %0, metadata !2361, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i64 %1, metadata !2362, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i8 58, metadata !2363, metadata !DIExpression()), !dbg !2434
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2436
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2364, metadata !DIExpression()), !dbg !2437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2438, !tbaa.struct !2369
  call void @llvm.dbg.value(metadata ptr %3, metadata !1375, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 58, metadata !1376, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i32 1, metadata !1377, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 58, metadata !1378, metadata !DIExpression()), !dbg !2439
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2441
  call void @llvm.dbg.value(metadata ptr %4, metadata !1379, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i32 26, metadata !1381, metadata !DIExpression()), !dbg !2439
  %5 = load i32, ptr %4, align 4, !dbg !2442, !tbaa !746
  call void @llvm.dbg.value(metadata i32 %5, metadata !1382, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2439
  %6 = or i32 %5, 67108864, !dbg !2443
  store i32 %6, ptr %4, align 4, !dbg !2443, !tbaa !746
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2444
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2445
  ret ptr %7, !dbg !2446
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2447 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2268, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2453
  call void @llvm.dbg.value(metadata i32 %0, metadata !2449, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i32 %1, metadata !2450, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata ptr %2, metadata !2451, metadata !DIExpression()), !dbg !2455
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2456
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2452, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 %1, metadata !2263, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i32 0, metadata !2268, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2458
  %5 = icmp eq i32 %1, 10, !dbg !2459
  br i1 %5, label %6, label %7, !dbg !2460

6:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2461, !noalias !2462
  unreachable, !dbg !2461

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2268, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2458
  store i32 %1, ptr %4, align 8, !dbg !2465, !tbaa.struct !2369
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2465
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2465
  call void @llvm.dbg.value(metadata ptr %4, metadata !1375, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i8 58, metadata !1376, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i32 1, metadata !1377, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i8 58, metadata !1378, metadata !DIExpression()), !dbg !2466
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2468
  call void @llvm.dbg.value(metadata ptr %9, metadata !1379, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i32 26, metadata !1381, metadata !DIExpression()), !dbg !2466
  %10 = load i32, ptr %9, align 4, !dbg !2469, !tbaa !746
  call void @llvm.dbg.value(metadata i32 %10, metadata !1382, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2466
  %11 = or i32 %10, 67108864, !dbg !2470
  store i32 %11, ptr %9, align 4, !dbg !2470, !tbaa !746
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2471
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2472
  ret ptr %12, !dbg !2473
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2474 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2478, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata ptr %1, metadata !2479, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata ptr %2, metadata !2480, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata ptr %3, metadata !2481, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i32 %0, metadata !2483, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata ptr %1, metadata !2488, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata ptr %2, metadata !2489, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata ptr %3, metadata !2490, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i64 -1, metadata !2491, metadata !DIExpression()), !dbg !2493
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2495
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2492, metadata !DIExpression()), !dbg !2496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2497, !tbaa.struct !2369
  call void @llvm.dbg.value(metadata ptr %5, metadata !1415, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata ptr %1, metadata !1416, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata ptr %2, metadata !1417, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata ptr %5, metadata !1415, metadata !DIExpression()), !dbg !2498
  store i32 10, ptr %5, align 8, !dbg !2500, !tbaa !1358
  %6 = icmp ne ptr %1, null, !dbg !2501
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2502
  br i1 %8, label %10, label %9, !dbg !2502

9:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2503
  unreachable, !dbg !2503

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2504
  store ptr %1, ptr %11, align 8, !dbg !2505, !tbaa !1429
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2506
  store ptr %2, ptr %12, align 8, !dbg !2507, !tbaa !1432
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2508
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2509
  ret ptr %13, !dbg !2510
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2484 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2483, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata ptr %1, metadata !2488, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata ptr %2, metadata !2489, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata ptr %3, metadata !2490, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i64 %4, metadata !2491, metadata !DIExpression()), !dbg !2511
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2512
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2492, metadata !DIExpression()), !dbg !2513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2514, !tbaa.struct !2369
  call void @llvm.dbg.value(metadata ptr %6, metadata !1415, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata ptr %1, metadata !1416, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata ptr %2, metadata !1417, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata ptr %6, metadata !1415, metadata !DIExpression()), !dbg !2515
  store i32 10, ptr %6, align 8, !dbg !2517, !tbaa !1358
  %7 = icmp ne ptr %1, null, !dbg !2518
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2519
  br i1 %9, label %11, label %10, !dbg !2519

10:                                               ; preds = %5
  tail call void @abort() #37, !dbg !2520
  unreachable, !dbg !2520

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2521
  store ptr %1, ptr %12, align 8, !dbg !2522, !tbaa !1429
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2523
  store ptr %2, ptr %13, align 8, !dbg !2524, !tbaa !1432
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2525
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2526
  ret ptr %14, !dbg !2527
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2528 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2532, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata ptr %1, metadata !2533, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata ptr %2, metadata !2534, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32 0, metadata !2478, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata ptr %0, metadata !2479, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata ptr %1, metadata !2480, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata ptr %2, metadata !2481, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 0, metadata !2483, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata ptr %0, metadata !2488, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata ptr %1, metadata !2489, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata ptr %2, metadata !2490, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i64 -1, metadata !2491, metadata !DIExpression()), !dbg !2538
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2540
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2492, metadata !DIExpression()), !dbg !2541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2542, !tbaa.struct !2369
  call void @llvm.dbg.value(metadata ptr %4, metadata !1415, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata ptr %0, metadata !1416, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata ptr %1, metadata !1417, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata ptr %4, metadata !1415, metadata !DIExpression()), !dbg !2543
  store i32 10, ptr %4, align 8, !dbg !2545, !tbaa !1358
  %5 = icmp ne ptr %0, null, !dbg !2546
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2547
  br i1 %7, label %9, label %8, !dbg !2547

8:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2548
  unreachable, !dbg !2548

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2549
  store ptr %0, ptr %10, align 8, !dbg !2550, !tbaa !1429
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2551
  store ptr %1, ptr %11, align 8, !dbg !2552, !tbaa !1432
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2553
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2554
  ret ptr %12, !dbg !2555
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2556 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2560, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata ptr %1, metadata !2561, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata ptr %2, metadata !2562, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i64 %3, metadata !2563, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i32 0, metadata !2483, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata ptr %0, metadata !2488, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata ptr %1, metadata !2489, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata ptr %2, metadata !2490, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i64 %3, metadata !2491, metadata !DIExpression()), !dbg !2565
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2567
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2492, metadata !DIExpression()), !dbg !2568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2569, !tbaa.struct !2369
  call void @llvm.dbg.value(metadata ptr %5, metadata !1415, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata ptr %0, metadata !1416, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata ptr %1, metadata !1417, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata ptr %5, metadata !1415, metadata !DIExpression()), !dbg !2570
  store i32 10, ptr %5, align 8, !dbg !2572, !tbaa !1358
  %6 = icmp ne ptr %0, null, !dbg !2573
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2574
  br i1 %8, label %10, label %9, !dbg !2574

9:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2575
  unreachable, !dbg !2575

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2576
  store ptr %0, ptr %11, align 8, !dbg !2577, !tbaa !1429
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2578
  store ptr %1, ptr %12, align 8, !dbg !2579, !tbaa !1432
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2580
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2581
  ret ptr %13, !dbg !2582
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2583 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2587, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata ptr %1, metadata !2588, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i64 %2, metadata !2589, metadata !DIExpression()), !dbg !2590
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2591
  ret ptr %4, !dbg !2592
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2593 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2597, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i64 %1, metadata !2598, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i32 0, metadata !2587, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata ptr %0, metadata !2588, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i64 %1, metadata !2589, metadata !DIExpression()), !dbg !2600
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2602
  ret ptr %3, !dbg !2603
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2604 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2608, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %1, metadata !2609, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 %0, metadata !2587, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata ptr %1, metadata !2588, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i64 -1, metadata !2589, metadata !DIExpression()), !dbg !2611
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2613
  ret ptr %3, !dbg !2614
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2615 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2619, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 0, metadata !2608, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata ptr %0, metadata !2609, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i32 0, metadata !2587, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata ptr %0, metadata !2588, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 -1, metadata !2589, metadata !DIExpression()), !dbg !2623
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2625
  ret ptr %2, !dbg !2626
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2627 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2666, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %1, metadata !2667, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %2, metadata !2668, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %3, metadata !2669, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %4, metadata !2670, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i64 %5, metadata !2671, metadata !DIExpression()), !dbg !2672
  %7 = icmp eq ptr %1, null, !dbg !2673
  br i1 %7, label %10, label %8, !dbg !2675

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.67, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !2676
  br label %12, !dbg !2676

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.68, ptr noundef %2, ptr noundef %3) #36, !dbg !2677
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.3.70, i32 noundef 5) #36, !dbg !2678
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !2678
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %0), !dbg !2679
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.5.72, i32 noundef 5) #36, !dbg !2680
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.73) #36, !dbg !2680
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %0), !dbg !2681
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
  ], !dbg !2682

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.7.74, i32 noundef 5) #36, !dbg !2683
  %21 = load ptr, ptr %4, align 8, !dbg !2683, !tbaa !724
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !2683
  br label %147, !dbg !2685

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.8.75, i32 noundef 5) #36, !dbg !2686
  %25 = load ptr, ptr %4, align 8, !dbg !2686, !tbaa !724
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2686
  %27 = load ptr, ptr %26, align 8, !dbg !2686, !tbaa !724
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !2686
  br label %147, !dbg !2687

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.9.76, i32 noundef 5) #36, !dbg !2688
  %31 = load ptr, ptr %4, align 8, !dbg !2688, !tbaa !724
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2688
  %33 = load ptr, ptr %32, align 8, !dbg !2688, !tbaa !724
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2688
  %35 = load ptr, ptr %34, align 8, !dbg !2688, !tbaa !724
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !2688
  br label %147, !dbg !2689

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.10.77, i32 noundef 5) #36, !dbg !2690
  %39 = load ptr, ptr %4, align 8, !dbg !2690, !tbaa !724
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2690
  %41 = load ptr, ptr %40, align 8, !dbg !2690, !tbaa !724
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2690
  %43 = load ptr, ptr %42, align 8, !dbg !2690, !tbaa !724
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2690
  %45 = load ptr, ptr %44, align 8, !dbg !2690, !tbaa !724
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !2690
  br label %147, !dbg !2691

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.11.78, i32 noundef 5) #36, !dbg !2692
  %49 = load ptr, ptr %4, align 8, !dbg !2692, !tbaa !724
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2692
  %51 = load ptr, ptr %50, align 8, !dbg !2692, !tbaa !724
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2692
  %53 = load ptr, ptr %52, align 8, !dbg !2692, !tbaa !724
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2692
  %55 = load ptr, ptr %54, align 8, !dbg !2692, !tbaa !724
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2692
  %57 = load ptr, ptr %56, align 8, !dbg !2692, !tbaa !724
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !2692
  br label %147, !dbg !2693

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.12.79, i32 noundef 5) #36, !dbg !2694
  %61 = load ptr, ptr %4, align 8, !dbg !2694, !tbaa !724
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2694
  %63 = load ptr, ptr %62, align 8, !dbg !2694, !tbaa !724
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2694
  %65 = load ptr, ptr %64, align 8, !dbg !2694, !tbaa !724
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2694
  %67 = load ptr, ptr %66, align 8, !dbg !2694, !tbaa !724
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2694
  %69 = load ptr, ptr %68, align 8, !dbg !2694, !tbaa !724
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2694
  %71 = load ptr, ptr %70, align 8, !dbg !2694, !tbaa !724
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !2694
  br label %147, !dbg !2695

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.13.80, i32 noundef 5) #36, !dbg !2696
  %75 = load ptr, ptr %4, align 8, !dbg !2696, !tbaa !724
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2696
  %77 = load ptr, ptr %76, align 8, !dbg !2696, !tbaa !724
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2696
  %79 = load ptr, ptr %78, align 8, !dbg !2696, !tbaa !724
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2696
  %81 = load ptr, ptr %80, align 8, !dbg !2696, !tbaa !724
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2696
  %83 = load ptr, ptr %82, align 8, !dbg !2696, !tbaa !724
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2696
  %85 = load ptr, ptr %84, align 8, !dbg !2696, !tbaa !724
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2696
  %87 = load ptr, ptr %86, align 8, !dbg !2696, !tbaa !724
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !2696
  br label %147, !dbg !2697

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.14.81, i32 noundef 5) #36, !dbg !2698
  %91 = load ptr, ptr %4, align 8, !dbg !2698, !tbaa !724
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2698
  %93 = load ptr, ptr %92, align 8, !dbg !2698, !tbaa !724
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2698
  %95 = load ptr, ptr %94, align 8, !dbg !2698, !tbaa !724
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2698
  %97 = load ptr, ptr %96, align 8, !dbg !2698, !tbaa !724
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2698
  %99 = load ptr, ptr %98, align 8, !dbg !2698, !tbaa !724
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2698
  %101 = load ptr, ptr %100, align 8, !dbg !2698, !tbaa !724
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2698
  %103 = load ptr, ptr %102, align 8, !dbg !2698, !tbaa !724
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2698
  %105 = load ptr, ptr %104, align 8, !dbg !2698, !tbaa !724
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !2698
  br label %147, !dbg !2699

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.15.82, i32 noundef 5) #36, !dbg !2700
  %109 = load ptr, ptr %4, align 8, !dbg !2700, !tbaa !724
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2700
  %111 = load ptr, ptr %110, align 8, !dbg !2700, !tbaa !724
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2700
  %113 = load ptr, ptr %112, align 8, !dbg !2700, !tbaa !724
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2700
  %115 = load ptr, ptr %114, align 8, !dbg !2700, !tbaa !724
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2700
  %117 = load ptr, ptr %116, align 8, !dbg !2700, !tbaa !724
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2700
  %119 = load ptr, ptr %118, align 8, !dbg !2700, !tbaa !724
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2700
  %121 = load ptr, ptr %120, align 8, !dbg !2700, !tbaa !724
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2700
  %123 = load ptr, ptr %122, align 8, !dbg !2700, !tbaa !724
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2700
  %125 = load ptr, ptr %124, align 8, !dbg !2700, !tbaa !724
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !2700
  br label %147, !dbg !2701

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.16.83, i32 noundef 5) #36, !dbg !2702
  %129 = load ptr, ptr %4, align 8, !dbg !2702, !tbaa !724
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2702
  %131 = load ptr, ptr %130, align 8, !dbg !2702, !tbaa !724
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2702
  %133 = load ptr, ptr %132, align 8, !dbg !2702, !tbaa !724
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2702
  %135 = load ptr, ptr %134, align 8, !dbg !2702, !tbaa !724
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2702
  %137 = load ptr, ptr %136, align 8, !dbg !2702, !tbaa !724
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2702
  %139 = load ptr, ptr %138, align 8, !dbg !2702, !tbaa !724
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2702
  %141 = load ptr, ptr %140, align 8, !dbg !2702, !tbaa !724
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2702
  %143 = load ptr, ptr %142, align 8, !dbg !2702, !tbaa !724
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2702
  %145 = load ptr, ptr %144, align 8, !dbg !2702, !tbaa !724
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !2702
  br label %147, !dbg !2703

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2704
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2705 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2709, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata ptr %1, metadata !2710, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata ptr %2, metadata !2711, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata ptr %3, metadata !2712, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata ptr %4, metadata !2713, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i64 0, metadata !2714, metadata !DIExpression()), !dbg !2715
  br label %6, !dbg !2716

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2718
  call void @llvm.dbg.value(metadata i64 %7, metadata !2714, metadata !DIExpression()), !dbg !2715
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2719
  %9 = load ptr, ptr %8, align 8, !dbg !2719, !tbaa !724
  %10 = icmp eq ptr %9, null, !dbg !2721
  %11 = add i64 %7, 1, !dbg !2722
  call void @llvm.dbg.value(metadata i64 %11, metadata !2714, metadata !DIExpression()), !dbg !2715
  br i1 %10, label %12, label %6, !dbg !2721, !llvm.loop !2723

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2725
  ret void, !dbg !2726
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2727 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2742, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata ptr %1, metadata !2743, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata ptr %2, metadata !2744, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata ptr %3, metadata !2745, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2746, metadata !DIExpression()), !dbg !2751
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !2752
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2748, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i64 0, metadata !2747, metadata !DIExpression()), !dbg !2750
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2747, metadata !DIExpression()), !dbg !2750
  %10 = icmp sgt i32 %9, -1, !dbg !2754
  br i1 %10, label %18, label %11, !dbg !2754

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2754
  store i32 %12, ptr %7, align 8, !dbg !2754
  %13 = icmp ult i32 %9, -7, !dbg !2754
  br i1 %13, label %14, label %18, !dbg !2754

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2754
  %16 = sext i32 %9 to i64, !dbg !2754
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2754
  br label %22, !dbg !2754

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2754
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2754
  store ptr %21, ptr %4, align 8, !dbg !2754
  br label %22, !dbg !2754

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2754
  %25 = load ptr, ptr %24, align 8, !dbg !2754
  store ptr %25, ptr %6, align 8, !dbg !2757, !tbaa !724
  %26 = icmp eq ptr %25, null, !dbg !2758
  br i1 %26, label %197, label %27, !dbg !2759

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !2747, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i64 1, metadata !2747, metadata !DIExpression()), !dbg !2750
  %28 = icmp sgt i32 %23, -1, !dbg !2754
  br i1 %28, label %36, label %29, !dbg !2754

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2754
  store i32 %30, ptr %7, align 8, !dbg !2754
  %31 = icmp ult i32 %23, -7, !dbg !2754
  br i1 %31, label %32, label %36, !dbg !2754

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2754
  %34 = sext i32 %23 to i64, !dbg !2754
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2754
  br label %40, !dbg !2754

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2754
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2754
  store ptr %39, ptr %4, align 8, !dbg !2754
  br label %40, !dbg !2754

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2754
  %43 = load ptr, ptr %42, align 8, !dbg !2754
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2760
  store ptr %43, ptr %44, align 8, !dbg !2757, !tbaa !724
  %45 = icmp eq ptr %43, null, !dbg !2758
  br i1 %45, label %197, label %46, !dbg !2759

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2747, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i64 2, metadata !2747, metadata !DIExpression()), !dbg !2750
  %47 = icmp sgt i32 %41, -1, !dbg !2754
  br i1 %47, label %55, label %48, !dbg !2754

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2754
  store i32 %49, ptr %7, align 8, !dbg !2754
  %50 = icmp ult i32 %41, -7, !dbg !2754
  br i1 %50, label %51, label %55, !dbg !2754

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2754
  %53 = sext i32 %41 to i64, !dbg !2754
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2754
  br label %59, !dbg !2754

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2754
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2754
  store ptr %58, ptr %4, align 8, !dbg !2754
  br label %59, !dbg !2754

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2754
  %62 = load ptr, ptr %61, align 8, !dbg !2754
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2760
  store ptr %62, ptr %63, align 8, !dbg !2757, !tbaa !724
  %64 = icmp eq ptr %62, null, !dbg !2758
  br i1 %64, label %197, label %65, !dbg !2759

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !2747, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i64 3, metadata !2747, metadata !DIExpression()), !dbg !2750
  %66 = icmp sgt i32 %60, -1, !dbg !2754
  br i1 %66, label %74, label %67, !dbg !2754

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2754
  store i32 %68, ptr %7, align 8, !dbg !2754
  %69 = icmp ult i32 %60, -7, !dbg !2754
  br i1 %69, label %70, label %74, !dbg !2754

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2754
  %72 = sext i32 %60 to i64, !dbg !2754
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2754
  br label %78, !dbg !2754

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2754
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2754
  store ptr %77, ptr %4, align 8, !dbg !2754
  br label %78, !dbg !2754

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2754
  %81 = load ptr, ptr %80, align 8, !dbg !2754
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2760
  store ptr %81, ptr %82, align 8, !dbg !2757, !tbaa !724
  %83 = icmp eq ptr %81, null, !dbg !2758
  br i1 %83, label %197, label %84, !dbg !2759

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !2747, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i64 4, metadata !2747, metadata !DIExpression()), !dbg !2750
  %85 = icmp sgt i32 %79, -1, !dbg !2754
  br i1 %85, label %93, label %86, !dbg !2754

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2754
  store i32 %87, ptr %7, align 8, !dbg !2754
  %88 = icmp ult i32 %79, -7, !dbg !2754
  br i1 %88, label %89, label %93, !dbg !2754

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2754
  %91 = sext i32 %79 to i64, !dbg !2754
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2754
  br label %97, !dbg !2754

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2754
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2754
  store ptr %96, ptr %4, align 8, !dbg !2754
  br label %97, !dbg !2754

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2754
  %100 = load ptr, ptr %99, align 8, !dbg !2754
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2760
  store ptr %100, ptr %101, align 8, !dbg !2757, !tbaa !724
  %102 = icmp eq ptr %100, null, !dbg !2758
  br i1 %102, label %197, label %103, !dbg !2759

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !2747, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i64 5, metadata !2747, metadata !DIExpression()), !dbg !2750
  %104 = icmp sgt i32 %98, -1, !dbg !2754
  br i1 %104, label %112, label %105, !dbg !2754

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2754
  store i32 %106, ptr %7, align 8, !dbg !2754
  %107 = icmp ult i32 %98, -7, !dbg !2754
  br i1 %107, label %108, label %112, !dbg !2754

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2754
  %110 = sext i32 %98 to i64, !dbg !2754
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2754
  br label %116, !dbg !2754

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2754
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2754
  store ptr %115, ptr %4, align 8, !dbg !2754
  br label %116, !dbg !2754

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2754
  %119 = load ptr, ptr %118, align 8, !dbg !2754
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2760
  store ptr %119, ptr %120, align 8, !dbg !2757, !tbaa !724
  %121 = icmp eq ptr %119, null, !dbg !2758
  br i1 %121, label %197, label %122, !dbg !2759

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !2747, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i64 6, metadata !2747, metadata !DIExpression()), !dbg !2750
  %123 = icmp sgt i32 %117, -1, !dbg !2754
  br i1 %123, label %131, label %124, !dbg !2754

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2754
  store i32 %125, ptr %7, align 8, !dbg !2754
  %126 = icmp ult i32 %117, -7, !dbg !2754
  br i1 %126, label %127, label %131, !dbg !2754

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2754
  %129 = sext i32 %117 to i64, !dbg !2754
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2754
  br label %135, !dbg !2754

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2754
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2754
  store ptr %134, ptr %4, align 8, !dbg !2754
  br label %135, !dbg !2754

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2754
  %138 = load ptr, ptr %137, align 8, !dbg !2754
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2760
  store ptr %138, ptr %139, align 8, !dbg !2757, !tbaa !724
  %140 = icmp eq ptr %138, null, !dbg !2758
  br i1 %140, label %197, label %141, !dbg !2759

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !2747, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i64 7, metadata !2747, metadata !DIExpression()), !dbg !2750
  %142 = icmp sgt i32 %136, -1, !dbg !2754
  br i1 %142, label %150, label %143, !dbg !2754

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2754
  store i32 %144, ptr %7, align 8, !dbg !2754
  %145 = icmp ult i32 %136, -7, !dbg !2754
  br i1 %145, label %146, label %150, !dbg !2754

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2754
  %148 = sext i32 %136 to i64, !dbg !2754
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2754
  br label %154, !dbg !2754

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2754
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2754
  store ptr %153, ptr %4, align 8, !dbg !2754
  br label %154, !dbg !2754

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2754
  %157 = load ptr, ptr %156, align 8, !dbg !2754
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2760
  store ptr %157, ptr %158, align 8, !dbg !2757, !tbaa !724
  %159 = icmp eq ptr %157, null, !dbg !2758
  br i1 %159, label %197, label %160, !dbg !2759

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !2747, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i64 8, metadata !2747, metadata !DIExpression()), !dbg !2750
  %161 = icmp sgt i32 %155, -1, !dbg !2754
  br i1 %161, label %169, label %162, !dbg !2754

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2754
  store i32 %163, ptr %7, align 8, !dbg !2754
  %164 = icmp ult i32 %155, -7, !dbg !2754
  br i1 %164, label %165, label %169, !dbg !2754

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2754
  %167 = sext i32 %155 to i64, !dbg !2754
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2754
  br label %173, !dbg !2754

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2754
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2754
  store ptr %172, ptr %4, align 8, !dbg !2754
  br label %173, !dbg !2754

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2754
  %176 = load ptr, ptr %175, align 8, !dbg !2754
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2760
  store ptr %176, ptr %177, align 8, !dbg !2757, !tbaa !724
  %178 = icmp eq ptr %176, null, !dbg !2758
  br i1 %178, label %197, label %179, !dbg !2759

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !2747, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i64 9, metadata !2747, metadata !DIExpression()), !dbg !2750
  %180 = icmp sgt i32 %174, -1, !dbg !2754
  br i1 %180, label %188, label %181, !dbg !2754

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2754
  store i32 %182, ptr %7, align 8, !dbg !2754
  %183 = icmp ult i32 %174, -7, !dbg !2754
  br i1 %183, label %184, label %188, !dbg !2754

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2754
  %186 = sext i32 %174 to i64, !dbg !2754
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2754
  br label %191, !dbg !2754

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2754
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2754
  store ptr %190, ptr %4, align 8, !dbg !2754
  br label %191, !dbg !2754

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2754
  %193 = load ptr, ptr %192, align 8, !dbg !2754
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2760
  store ptr %193, ptr %194, align 8, !dbg !2757, !tbaa !724
  %195 = icmp eq ptr %193, null, !dbg !2758
  %196 = select i1 %195, i64 9, i64 10, !dbg !2759
  br label %197, !dbg !2759

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2761
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2762
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !2763
  ret void, !dbg !2763
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2764 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2768, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata ptr %1, metadata !2769, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata ptr %2, metadata !2770, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata ptr %3, metadata !2771, metadata !DIExpression()), !dbg !2773
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !2774
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2772, metadata !DIExpression()), !dbg !2775
  call void @llvm.va_start(ptr nonnull %5), !dbg !2776
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !2777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2777, !tbaa.struct !1047
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2777
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !2777
  call void @llvm.va_end(ptr nonnull %5), !dbg !2778
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !2779
  ret void, !dbg !2779
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2780 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2781, !tbaa !724
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %1), !dbg !2781
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.17.88, i32 noundef 5) #36, !dbg !2782
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.89) #36, !dbg !2782
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.19, i32 noundef 5) #36, !dbg !2783
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21.90) #36, !dbg !2783
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !2784
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !2784
  ret void, !dbg !2785
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2786 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2791, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i64 %1, metadata !2792, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i64 %2, metadata !2793, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %0, metadata !2795, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %1, metadata !2798, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %2, metadata !2799, metadata !DIExpression()), !dbg !2800
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2802
  call void @llvm.dbg.value(metadata ptr %4, metadata !2803, metadata !DIExpression()), !dbg !2808
  %5 = icmp eq ptr %4, null, !dbg !2810
  br i1 %5, label %6, label %7, !dbg !2812

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !2813
  unreachable, !dbg !2813

7:                                                ; preds = %3
  ret ptr %4, !dbg !2814
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2796 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2795, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i64 %1, metadata !2798, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i64 %2, metadata !2799, metadata !DIExpression()), !dbg !2815
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2816
  call void @llvm.dbg.value(metadata ptr %4, metadata !2803, metadata !DIExpression()), !dbg !2817
  %5 = icmp eq ptr %4, null, !dbg !2819
  br i1 %5, label %6, label %7, !dbg !2820

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !2821
  unreachable, !dbg !2821

7:                                                ; preds = %3
  ret ptr %4, !dbg !2822
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2823 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2827, metadata !DIExpression()), !dbg !2828
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2829
  call void @llvm.dbg.value(metadata ptr %2, metadata !2803, metadata !DIExpression()), !dbg !2830
  %3 = icmp eq ptr %2, null, !dbg !2832
  br i1 %3, label %4, label %5, !dbg !2833

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !2834
  unreachable, !dbg !2834

5:                                                ; preds = %1
  ret ptr %2, !dbg !2835
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2836 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2837 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2841, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 %0, metadata !2843, metadata !DIExpression()), !dbg !2847
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2849
  call void @llvm.dbg.value(metadata ptr %2, metadata !2803, metadata !DIExpression()), !dbg !2850
  %3 = icmp eq ptr %2, null, !dbg !2852
  br i1 %3, label %4, label %5, !dbg !2853

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !2854
  unreachable, !dbg !2854

5:                                                ; preds = %1
  ret ptr %2, !dbg !2855
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2856 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2860, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 %0, metadata !2827, metadata !DIExpression()), !dbg !2862
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2864
  call void @llvm.dbg.value(metadata ptr %2, metadata !2803, metadata !DIExpression()), !dbg !2865
  %3 = icmp eq ptr %2, null, !dbg !2867
  br i1 %3, label %4, label %5, !dbg !2868

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !2869
  unreachable, !dbg !2869

5:                                                ; preds = %1
  ret ptr %2, !dbg !2870
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2871 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2875, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %1, metadata !2876, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata ptr %0, metadata !2878, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 %1, metadata !2882, metadata !DIExpression()), !dbg !2883
  %3 = icmp eq i64 %1, 0, !dbg !2885
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2885
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !2886
  call void @llvm.dbg.value(metadata ptr %5, metadata !2803, metadata !DIExpression()), !dbg !2887
  %6 = icmp eq ptr %5, null, !dbg !2889
  br i1 %6, label %7, label %8, !dbg !2890

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !2891
  unreachable, !dbg !2891

8:                                                ; preds = %2
  ret ptr %5, !dbg !2892
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2893 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2894 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2898, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %1, metadata !2899, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata ptr %0, metadata !2901, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i64 %1, metadata !2904, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata ptr %0, metadata !2878, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i64 %1, metadata !2882, metadata !DIExpression()), !dbg !2907
  %3 = icmp eq i64 %1, 0, !dbg !2909
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2909
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !2910
  call void @llvm.dbg.value(metadata ptr %5, metadata !2803, metadata !DIExpression()), !dbg !2911
  %6 = icmp eq ptr %5, null, !dbg !2913
  br i1 %6, label %7, label %8, !dbg !2914

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !2915
  unreachable, !dbg !2915

8:                                                ; preds = %2
  ret ptr %5, !dbg !2916
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2917 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2921, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i64 %1, metadata !2922, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i64 %2, metadata !2923, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata ptr %0, metadata !2925, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %1, metadata !2928, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %2, metadata !2929, metadata !DIExpression()), !dbg !2930
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2932
  call void @llvm.dbg.value(metadata ptr %4, metadata !2803, metadata !DIExpression()), !dbg !2933
  %5 = icmp eq ptr %4, null, !dbg !2935
  br i1 %5, label %6, label %7, !dbg !2936

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !2937
  unreachable, !dbg !2937

7:                                                ; preds = %3
  ret ptr %4, !dbg !2938
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !2939 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2943, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i64 %1, metadata !2944, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata ptr null, metadata !2795, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i64 %0, metadata !2798, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i64 %1, metadata !2799, metadata !DIExpression()), !dbg !2946
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !2948
  call void @llvm.dbg.value(metadata ptr %3, metadata !2803, metadata !DIExpression()), !dbg !2949
  %4 = icmp eq ptr %3, null, !dbg !2951
  br i1 %4, label %5, label %6, !dbg !2952

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !2953
  unreachable, !dbg !2953

6:                                                ; preds = %2
  ret ptr %3, !dbg !2954
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !2955 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2959, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i64 %1, metadata !2960, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata ptr null, metadata !2921, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i64 %0, metadata !2922, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i64 %1, metadata !2923, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata ptr null, metadata !2925, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %0, metadata !2928, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %1, metadata !2929, metadata !DIExpression()), !dbg !2964
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !2966
  call void @llvm.dbg.value(metadata ptr %3, metadata !2803, metadata !DIExpression()), !dbg !2967
  %4 = icmp eq ptr %3, null, !dbg !2969
  br i1 %4, label %5, label %6, !dbg !2970

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !2971
  unreachable, !dbg !2971

6:                                                ; preds = %2
  ret ptr %3, !dbg !2972
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !2973 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2977, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata ptr %1, metadata !2978, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata ptr %0, metadata !665, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata ptr %1, metadata !666, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i64 1, metadata !667, metadata !DIExpression()), !dbg !2980
  %3 = load i64, ptr %1, align 8, !dbg !2982, !tbaa !2082
  call void @llvm.dbg.value(metadata i64 %3, metadata !668, metadata !DIExpression()), !dbg !2980
  %4 = icmp eq ptr %0, null, !dbg !2983
  br i1 %4, label %5, label %8, !dbg !2985

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2986
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2989
  br label %15, !dbg !2989

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !2990
  %10 = add nuw i64 %9, 1, !dbg !2990
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !2990
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !2990
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !2990
  call void @llvm.dbg.value(metadata i64 %13, metadata !668, metadata !DIExpression()), !dbg !2980
  br i1 %12, label %14, label %15, !dbg !2993

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !2994
  unreachable, !dbg !2994

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2980
  call void @llvm.dbg.value(metadata i64 %16, metadata !668, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata ptr %0, metadata !2795, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i64 %16, metadata !2798, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i64 1, metadata !2799, metadata !DIExpression()), !dbg !2995
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !2997
  call void @llvm.dbg.value(metadata ptr %17, metadata !2803, metadata !DIExpression()), !dbg !2998
  %18 = icmp eq ptr %17, null, !dbg !3000
  br i1 %18, label %19, label %20, !dbg !3001

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !3002
  unreachable, !dbg !3002

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !665, metadata !DIExpression()), !dbg !2980
  store i64 %16, ptr %1, align 8, !dbg !3003, !tbaa !2082
  ret ptr %17, !dbg !3004
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !660 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !665, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata ptr %1, metadata !666, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i64 %2, metadata !667, metadata !DIExpression()), !dbg !3005
  %4 = load i64, ptr %1, align 8, !dbg !3006, !tbaa !2082
  call void @llvm.dbg.value(metadata i64 %4, metadata !668, metadata !DIExpression()), !dbg !3005
  %5 = icmp eq ptr %0, null, !dbg !3007
  br i1 %5, label %6, label %13, !dbg !3008

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3009
  br i1 %7, label %8, label %20, !dbg !3010

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3011
  call void @llvm.dbg.value(metadata i64 %9, metadata !668, metadata !DIExpression()), !dbg !3005
  %10 = icmp ugt i64 %2, 128, !dbg !3013
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %12, metadata !668, metadata !DIExpression()), !dbg !3005
  br label %20, !dbg !3015

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3016
  %15 = add nuw i64 %14, 1, !dbg !3016
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3016
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3016
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3016
  call void @llvm.dbg.value(metadata i64 %18, metadata !668, metadata !DIExpression()), !dbg !3005
  br i1 %17, label %19, label %20, !dbg !3017

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !3018
  unreachable, !dbg !3018

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3005
  call void @llvm.dbg.value(metadata i64 %21, metadata !668, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata ptr %0, metadata !2795, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i64 %21, metadata !2798, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i64 %2, metadata !2799, metadata !DIExpression()), !dbg !3019
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3021
  call void @llvm.dbg.value(metadata ptr %22, metadata !2803, metadata !DIExpression()), !dbg !3022
  %23 = icmp eq ptr %22, null, !dbg !3024
  br i1 %23, label %24, label %25, !dbg !3025

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !3026
  unreachable, !dbg !3026

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !665, metadata !DIExpression()), !dbg !3005
  store i64 %21, ptr %1, align 8, !dbg !3027, !tbaa !2082
  ret ptr %22, !dbg !3028
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !672 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !680, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata ptr %1, metadata !681, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %2, metadata !682, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %3, metadata !683, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %4, metadata !684, metadata !DIExpression()), !dbg !3029
  %6 = load i64, ptr %1, align 8, !dbg !3030, !tbaa !2082
  call void @llvm.dbg.value(metadata i64 %6, metadata !685, metadata !DIExpression()), !dbg !3029
  %7 = ashr i64 %6, 1, !dbg !3031
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3031
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3031
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3031
  call void @llvm.dbg.value(metadata i64 %10, metadata !686, metadata !DIExpression()), !dbg !3029
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3033
  call void @llvm.dbg.value(metadata i64 %11, metadata !686, metadata !DIExpression()), !dbg !3029
  %12 = icmp sgt i64 %3, -1, !dbg !3034
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3036
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3036
  call void @llvm.dbg.value(metadata i64 %15, metadata !686, metadata !DIExpression()), !dbg !3029
  %16 = icmp slt i64 %4, 0, !dbg !3037
  br i1 %16, label %17, label %30, !dbg !3037

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3037
  br i1 %18, label %19, label %24, !dbg !3037

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3037
  %21 = udiv i64 9223372036854775807, %20, !dbg !3037
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3037
  br i1 %23, label %46, label %43, !dbg !3037

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3037
  br i1 %25, label %43, label %26, !dbg !3037

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3037
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3037
  %29 = icmp ult i64 %28, %15, !dbg !3037
  br i1 %29, label %46, label %43, !dbg !3037

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3037
  br i1 %31, label %43, label %32, !dbg !3037

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3037
  br i1 %33, label %34, label %40, !dbg !3037

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3037
  br i1 %35, label %43, label %36, !dbg !3037

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3037
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3037
  %39 = icmp ult i64 %38, %4, !dbg !3037
  br i1 %39, label %46, label %43, !dbg !3037

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3037
  br i1 %42, label %46, label %43, !dbg !3037

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !687, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3029
  %44 = mul i64 %15, %4, !dbg !3037
  call void @llvm.dbg.value(metadata i64 %44, metadata !687, metadata !DIExpression()), !dbg !3029
  %45 = icmp slt i64 %44, 128, !dbg !3037
  br i1 %45, label %46, label %52, !dbg !3037

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !688, metadata !DIExpression()), !dbg !3029
  %48 = sdiv i64 %47, %4, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %48, metadata !686, metadata !DIExpression()), !dbg !3029
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3041
  call void @llvm.dbg.value(metadata i64 %51, metadata !687, metadata !DIExpression()), !dbg !3029
  br label %52, !dbg !3042

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3029
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3029
  call void @llvm.dbg.value(metadata i64 %54, metadata !687, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %53, metadata !686, metadata !DIExpression()), !dbg !3029
  %55 = icmp eq ptr %0, null, !dbg !3043
  br i1 %55, label %56, label %57, !dbg !3045

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3046, !tbaa !2082
  br label %57, !dbg !3047

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3048
  %59 = icmp slt i64 %58, %2, !dbg !3050
  br i1 %59, label %60, label %97, !dbg !3051

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3052
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3052
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3052
  call void @llvm.dbg.value(metadata i64 %63, metadata !686, metadata !DIExpression()), !dbg !3029
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3053
  br i1 %66, label %96, label %67, !dbg !3053

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3054

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3054
  br i1 %69, label %70, label %75, !dbg !3054

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3054
  %72 = udiv i64 9223372036854775807, %71, !dbg !3054
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3054
  br i1 %74, label %96, label %94, !dbg !3054

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3054
  br i1 %76, label %94, label %77, !dbg !3054

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3054
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3054
  %80 = icmp ult i64 %79, %63, !dbg !3054
  br i1 %80, label %96, label %94, !dbg !3054

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3054
  br i1 %82, label %94, label %83, !dbg !3054

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3054
  br i1 %84, label %85, label %91, !dbg !3054

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3054
  br i1 %86, label %94, label %87, !dbg !3054

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3054
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3054
  %90 = icmp ult i64 %89, %4, !dbg !3054
  br i1 %90, label %96, label %94, !dbg !3054

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3054
  br i1 %93, label %96, label %94, !dbg !3054

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !687, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3029
  %95 = mul i64 %63, %4, !dbg !3054
  call void @llvm.dbg.value(metadata i64 %95, metadata !687, metadata !DIExpression()), !dbg !3029
  br label %97, !dbg !3055

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #37, !dbg !3056
  unreachable, !dbg !3056

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3029
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3029
  call void @llvm.dbg.value(metadata i64 %99, metadata !687, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %98, metadata !686, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata ptr %0, metadata !2875, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i64 %99, metadata !2876, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata ptr %0, metadata !2878, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %99, metadata !2882, metadata !DIExpression()), !dbg !3059
  %100 = icmp eq i64 %99, 0, !dbg !3061
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3061
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #42, !dbg !3062
  call void @llvm.dbg.value(metadata ptr %102, metadata !2803, metadata !DIExpression()), !dbg !3063
  %103 = icmp eq ptr %102, null, !dbg !3065
  br i1 %103, label %104, label %105, !dbg !3066

104:                                              ; preds = %97
  tail call void @xalloc_die() #37, !dbg !3067
  unreachable, !dbg !3067

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !680, metadata !DIExpression()), !dbg !3029
  store i64 %98, ptr %1, align 8, !dbg !3068, !tbaa !2082
  ret ptr %102, !dbg !3069
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3070 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3072, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %0, metadata !3074, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i64 1, metadata !3077, metadata !DIExpression()), !dbg !3078
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3080
  call void @llvm.dbg.value(metadata ptr %2, metadata !2803, metadata !DIExpression()), !dbg !3081
  %3 = icmp eq ptr %2, null, !dbg !3083
  br i1 %3, label %4, label %5, !dbg !3084

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3085
  unreachable, !dbg !3085

5:                                                ; preds = %1
  ret ptr %2, !dbg !3086
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3087 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3075 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3074, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i64 %1, metadata !3077, metadata !DIExpression()), !dbg !3088
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3089
  call void @llvm.dbg.value(metadata ptr %3, metadata !2803, metadata !DIExpression()), !dbg !3090
  %4 = icmp eq ptr %3, null, !dbg !3092
  br i1 %4, label %5, label %6, !dbg !3093

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3094
  unreachable, !dbg !3094

6:                                                ; preds = %2
  ret ptr %3, !dbg !3095
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3096 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3098, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %0, metadata !3100, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 1, metadata !3103, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 %0, metadata !3106, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 1, metadata !3109, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %0, metadata !3106, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 1, metadata !3109, metadata !DIExpression()), !dbg !3110
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3112
  call void @llvm.dbg.value(metadata ptr %2, metadata !2803, metadata !DIExpression()), !dbg !3113
  %3 = icmp eq ptr %2, null, !dbg !3115
  br i1 %3, label %4, label %5, !dbg !3116

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3117
  unreachable, !dbg !3117

5:                                                ; preds = %1
  ret ptr %2, !dbg !3118
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3101 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3100, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %1, metadata !3103, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %0, metadata !3106, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %1, metadata !3109, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %0, metadata !3106, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %1, metadata !3109, metadata !DIExpression()), !dbg !3120
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3122
  call void @llvm.dbg.value(metadata ptr %3, metadata !2803, metadata !DIExpression()), !dbg !3123
  %4 = icmp eq ptr %3, null, !dbg !3125
  br i1 %4, label %5, label %6, !dbg !3126

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3127
  unreachable, !dbg !3127

6:                                                ; preds = %2
  ret ptr %3, !dbg !3128
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3129 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3133, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i64 %1, metadata !3134, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i64 %1, metadata !2827, metadata !DIExpression()), !dbg !3136
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3138
  call void @llvm.dbg.value(metadata ptr %3, metadata !2803, metadata !DIExpression()), !dbg !3139
  %4 = icmp eq ptr %3, null, !dbg !3141
  br i1 %4, label %5, label %6, !dbg !3142

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3143
  unreachable, !dbg !3143

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3144, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata ptr %0, metadata !3150, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata i64 %1, metadata !3151, metadata !DIExpression()), !dbg !3152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3154
  ret ptr %3, !dbg !3155
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3156 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3160, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %1, metadata !3161, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %1, metadata !2841, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %1, metadata !2843, metadata !DIExpression()), !dbg !3165
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3167
  call void @llvm.dbg.value(metadata ptr %3, metadata !2803, metadata !DIExpression()), !dbg !3168
  %4 = icmp eq ptr %3, null, !dbg !3170
  br i1 %4, label %5, label %6, !dbg !3171

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3172
  unreachable, !dbg !3172

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3144, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata ptr %0, metadata !3150, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %1, metadata !3151, metadata !DIExpression()), !dbg !3173
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3175
  ret ptr %3, !dbg !3176
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3177 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3181, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i64 %1, metadata !3182, metadata !DIExpression()), !dbg !3184
  %3 = add nsw i64 %1, 1, !dbg !3185
  call void @llvm.dbg.value(metadata i64 %3, metadata !2841, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i64 %3, metadata !2843, metadata !DIExpression()), !dbg !3188
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3190
  call void @llvm.dbg.value(metadata ptr %4, metadata !2803, metadata !DIExpression()), !dbg !3191
  %5 = icmp eq ptr %4, null, !dbg !3193
  br i1 %5, label %6, label %7, !dbg !3194

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3195
  unreachable, !dbg !3195

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3183, metadata !DIExpression()), !dbg !3184
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3196
  store i8 0, ptr %8, align 1, !dbg !3197, !tbaa !755
  call void @llvm.dbg.value(metadata ptr %4, metadata !3144, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata ptr %0, metadata !3150, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %1, metadata !3151, metadata !DIExpression()), !dbg !3198
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3200
  ret ptr %4, !dbg !3201
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3202 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3204, metadata !DIExpression()), !dbg !3205
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3206
  %3 = add i64 %2, 1, !dbg !3207
  call void @llvm.dbg.value(metadata ptr %0, metadata !3133, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i64 %3, metadata !3134, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i64 %3, metadata !2827, metadata !DIExpression()), !dbg !3210
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3212
  call void @llvm.dbg.value(metadata ptr %4, metadata !2803, metadata !DIExpression()), !dbg !3213
  %5 = icmp eq ptr %4, null, !dbg !3215
  br i1 %5, label %6, label %7, !dbg !3216

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3217
  unreachable, !dbg !3217

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3144, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata ptr %0, metadata !3150, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 %3, metadata !3151, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3220
  ret ptr %4, !dbg !3221
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3222 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3227, !tbaa !746
  call void @llvm.dbg.value(metadata i32 %1, metadata !3224, metadata !DIExpression()), !dbg !3228
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.101, ptr noundef nonnull @.str.2.102, i32 noundef 5) #36, !dbg !3227
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.103, ptr noundef %2) #36, !dbg !3227
  %3 = icmp eq i32 %1, 0, !dbg !3227
  tail call void @llvm.assume(i1 %3), !dbg !3227
  tail call void @abort() #37, !dbg !3229
  unreachable, !dbg !3229
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3230 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3268, metadata !DIExpression()), !dbg !3273
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3274
  call void @llvm.dbg.value(metadata i1 poison, metadata !3269, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3273
  call void @llvm.dbg.value(metadata ptr %0, metadata !3275, metadata !DIExpression()), !dbg !3278
  %3 = load i32, ptr %0, align 8, !dbg !3280, !tbaa !3281
  %4 = and i32 %3, 32, !dbg !3282
  %5 = icmp eq i32 %4, 0, !dbg !3282
  call void @llvm.dbg.value(metadata i1 %5, metadata !3271, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3273
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3283
  %7 = icmp eq i32 %6, 0, !dbg !3284
  call void @llvm.dbg.value(metadata i1 %7, metadata !3272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3273
  br i1 %5, label %8, label %18, !dbg !3285

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3287
  call void @llvm.dbg.value(metadata i1 %9, metadata !3269, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3273
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3288
  %11 = xor i1 %7, true, !dbg !3288
  %12 = sext i1 %11 to i32, !dbg !3288
  br i1 %10, label %21, label %13, !dbg !3288

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3289
  %15 = load i32, ptr %14, align 4, !dbg !3289, !tbaa !746
  %16 = icmp ne i32 %15, 9, !dbg !3290
  %17 = sext i1 %16 to i32, !dbg !3291
  br label %21, !dbg !3291

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3292

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3294
  store i32 0, ptr %20, align 4, !dbg !3296, !tbaa !746
  br label %21, !dbg !3294

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3273
  ret i32 %22, !dbg !3297
}

; Function Attrs: nounwind
declare !dbg !3298 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3302 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3340, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i32 0, metadata !3341, metadata !DIExpression()), !dbg !3344
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3345
  call void @llvm.dbg.value(metadata i32 %2, metadata !3342, metadata !DIExpression()), !dbg !3344
  %3 = icmp slt i32 %2, 0, !dbg !3346
  br i1 %3, label %4, label %6, !dbg !3348

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3349
  br label %24, !dbg !3350

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3351
  %8 = icmp eq i32 %7, 0, !dbg !3351
  br i1 %8, label %13, label %9, !dbg !3353

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3354
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3355
  %12 = icmp eq i64 %11, -1, !dbg !3356
  br i1 %12, label %16, label %13, !dbg !3357

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3358
  %15 = icmp eq i32 %14, 0, !dbg !3358
  br i1 %15, label %16, label %18, !dbg !3359

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3341, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i32 0, metadata !3343, metadata !DIExpression()), !dbg !3344
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %17, metadata !3343, metadata !DIExpression()), !dbg !3344
  br label %24, !dbg !3361

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3362
  %20 = load i32, ptr %19, align 4, !dbg !3362, !tbaa !746
  call void @llvm.dbg.value(metadata i32 %20, metadata !3341, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i32 0, metadata !3343, metadata !DIExpression()), !dbg !3344
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %21, metadata !3343, metadata !DIExpression()), !dbg !3344
  %22 = icmp eq i32 %20, 0, !dbg !3363
  br i1 %22, label %24, label %23, !dbg !3361

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3365, !tbaa !746
  call void @llvm.dbg.value(metadata i32 -1, metadata !3343, metadata !DIExpression()), !dbg !3344
  br label %24, !dbg !3367

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3344
  ret i32 %25, !dbg !3368
}

; Function Attrs: nofree nounwind
declare !dbg !3369 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !3370 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3371 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3372 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3375 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3413, metadata !DIExpression()), !dbg !3414
  %2 = icmp eq ptr %0, null, !dbg !3415
  br i1 %2, label %6, label %3, !dbg !3417

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3418
  %5 = icmp eq i32 %4, 0, !dbg !3418
  br i1 %5, label %6, label %8, !dbg !3419

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3420
  br label %16, !dbg !3421

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3422, metadata !DIExpression()), !dbg !3427
  %9 = load i32, ptr %0, align 8, !dbg !3429, !tbaa !3281
  %10 = and i32 %9, 256, !dbg !3431
  %11 = icmp eq i32 %10, 0, !dbg !3431
  br i1 %11, label %14, label %12, !dbg !3432

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3433
  br label %14, !dbg !3433

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3434
  br label %16, !dbg !3435

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3414
  ret i32 %17, !dbg !3436
}

; Function Attrs: nofree nounwind
declare !dbg !3437 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3438 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3477, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i64 %1, metadata !3478, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i32 %2, metadata !3479, metadata !DIExpression()), !dbg !3483
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3484
  %5 = load ptr, ptr %4, align 8, !dbg !3484, !tbaa !3485
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3486
  %7 = load ptr, ptr %6, align 8, !dbg !3486, !tbaa !3487
  %8 = icmp eq ptr %5, %7, !dbg !3488
  br i1 %8, label %9, label %27, !dbg !3489

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3490
  %11 = load ptr, ptr %10, align 8, !dbg !3490, !tbaa !1165
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3491
  %13 = load ptr, ptr %12, align 8, !dbg !3491, !tbaa !3492
  %14 = icmp eq ptr %11, %13, !dbg !3493
  br i1 %14, label %15, label %27, !dbg !3494

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3495
  %17 = load ptr, ptr %16, align 8, !dbg !3495, !tbaa !3496
  %18 = icmp eq ptr %17, null, !dbg !3497
  br i1 %18, label %19, label %27, !dbg !3498

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3499
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3500
  call void @llvm.dbg.value(metadata i64 %21, metadata !3480, metadata !DIExpression()), !dbg !3501
  %22 = icmp eq i64 %21, -1, !dbg !3502
  br i1 %22, label %29, label %23, !dbg !3504

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3505, !tbaa !3281
  %25 = and i32 %24, -17, !dbg !3505
  store i32 %25, ptr %0, align 8, !dbg !3505, !tbaa !3281
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3506
  store i64 %21, ptr %26, align 8, !dbg !3507, !tbaa !3508
  br label %29, !dbg !3509

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3510
  br label %29, !dbg !3511

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3483
  ret i32 %30, !dbg !3512
}

; Function Attrs: nofree nounwind
declare !dbg !3513 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3516 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3521, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata ptr %1, metadata !3522, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i64 %2, metadata !3523, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata ptr %3, metadata !3524, metadata !DIExpression()), !dbg !3526
  %5 = icmp eq ptr %1, null, !dbg !3527
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3529
  %7 = select i1 %5, ptr @.str.114, ptr %1, !dbg !3529
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3529
  call void @llvm.dbg.value(metadata i64 %8, metadata !3523, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata ptr %7, metadata !3522, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata ptr %6, metadata !3521, metadata !DIExpression()), !dbg !3526
  %9 = icmp eq ptr %3, null, !dbg !3530
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3532
  call void @llvm.dbg.value(metadata ptr %10, metadata !3524, metadata !DIExpression()), !dbg !3526
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3533
  call void @llvm.dbg.value(metadata i64 %11, metadata !3525, metadata !DIExpression()), !dbg !3526
  %12 = icmp ult i64 %11, -3, !dbg !3534
  br i1 %12, label %13, label %17, !dbg !3536

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #38, !dbg !3537
  %15 = icmp eq i32 %14, 0, !dbg !3537
  br i1 %15, label %16, label %29, !dbg !3538

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3539, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata ptr %10, metadata !3546, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i32 0, metadata !3549, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i64 8, metadata !3550, metadata !DIExpression()), !dbg !3551
  store i64 0, ptr %10, align 1, !dbg !3553
  br label %29, !dbg !3554

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3555
  br i1 %18, label %19, label %20, !dbg !3557

19:                                               ; preds = %17
  tail call void @abort() #37, !dbg !3558
  unreachable, !dbg !3558

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3559

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #36, !dbg !3561
  br i1 %23, label %29, label %24, !dbg !3562

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3563
  br i1 %25, label %29, label %26, !dbg !3566

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3567, !tbaa !755
  %28 = zext i8 %27 to i32, !dbg !3568
  store i32 %28, ptr %6, align 4, !dbg !3569, !tbaa !746
  br label %29, !dbg !3570

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3526
  ret i64 %30, !dbg !3571
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3572 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3578 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3580, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i64 %1, metadata !3581, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i64 %2, metadata !3582, metadata !DIExpression()), !dbg !3584
  %4 = icmp eq i64 %2, 0, !dbg !3585
  br i1 %4, label %8, label %5, !dbg !3585

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3585
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3585
  br i1 %7, label %13, label %8, !dbg !3585

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3583, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3584
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3583, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3584
  %9 = mul i64 %2, %1, !dbg !3585
  call void @llvm.dbg.value(metadata i64 %9, metadata !3583, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata ptr %0, metadata !3587, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i64 %9, metadata !3590, metadata !DIExpression()), !dbg !3591
  %10 = icmp eq i64 %9, 0, !dbg !3593
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3593
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3594
  br label %15, !dbg !3595

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3583, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3584
  %14 = tail call ptr @__errno_location() #39, !dbg !3596
  store i32 12, ptr %14, align 4, !dbg !3598, !tbaa !746
  br label %15, !dbg !3599

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3584
  ret ptr %16, !dbg !3600
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3601 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3605, metadata !DIExpression()), !dbg !3610
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !3611
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3606, metadata !DIExpression()), !dbg !3612
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !3613
  %4 = icmp eq i32 %3, 0, !dbg !3613
  br i1 %4, label %5, label %12, !dbg !3615

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3616, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata ptr @.str.119, metadata !3619, metadata !DIExpression()), !dbg !3620
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.119, i64 2), !dbg !3623
  %7 = icmp eq i32 %6, 0, !dbg !3624
  br i1 %7, label %11, label %8, !dbg !3625

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3616, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata ptr @.str.1.120, metadata !3619, metadata !DIExpression()), !dbg !3626
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.120, i64 6), !dbg !3628
  %10 = icmp eq i32 %9, 0, !dbg !3629
  br i1 %10, label %11, label %12, !dbg !3630

11:                                               ; preds = %8, %5
  br label %12, !dbg !3631

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3610
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !3632
  ret i1 %13, !dbg !3632
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3633 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3637, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata ptr %1, metadata !3638, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 %2, metadata !3639, metadata !DIExpression()), !dbg !3640
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !3641
  ret i32 %4, !dbg !3642
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3643 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3647, metadata !DIExpression()), !dbg !3648
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !3649
  ret ptr %2, !dbg !3650
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3651 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3653, metadata !DIExpression()), !dbg !3655
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3656
  call void @llvm.dbg.value(metadata ptr %2, metadata !3654, metadata !DIExpression()), !dbg !3655
  ret ptr %2, !dbg !3657
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3658 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3660, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata ptr %1, metadata !3661, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 %2, metadata !3662, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i32 %0, metadata !3653, metadata !DIExpression()), !dbg !3668
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3670
  call void @llvm.dbg.value(metadata ptr %4, metadata !3654, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata ptr %4, metadata !3663, metadata !DIExpression()), !dbg !3667
  %5 = icmp eq ptr %4, null, !dbg !3671
  br i1 %5, label %6, label %9, !dbg !3672

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3673
  br i1 %7, label %19, label %8, !dbg !3676

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3677, !tbaa !755
  br label %19, !dbg !3678

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3679
  call void @llvm.dbg.value(metadata i64 %10, metadata !3664, metadata !DIExpression()), !dbg !3680
  %11 = icmp ult i64 %10, %2, !dbg !3681
  br i1 %11, label %12, label %14, !dbg !3683

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3684
  call void @llvm.dbg.value(metadata ptr %1, metadata !3686, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata ptr %4, metadata !3689, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i64 %13, metadata !3690, metadata !DIExpression()), !dbg !3691
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !3693
  br label %19, !dbg !3694

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3695
  br i1 %15, label %19, label %16, !dbg !3698

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3699
  call void @llvm.dbg.value(metadata ptr %1, metadata !3686, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata ptr %4, metadata !3689, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %17, metadata !3690, metadata !DIExpression()), !dbg !3701
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !3703
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3704
  store i8 0, ptr %18, align 1, !dbg !3705, !tbaa !755
  br label %19, !dbg !3706

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3707
  ret i32 %20, !dbg !3708
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
attributes #34 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nounwind }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { noreturn }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!74, !293, !297, !312, !613, !647, !369, !383, !431, !649, !605, !656, !690, !692, !694, !696, !698, !629, !700, !703, !705, !707}
!llvm.ident = !{!709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709}
!llvm.module.flags = !{!710, !711, !712, !713, !714, !715, !716}

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
!74 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !92, globals: !101, splitDebugInlining: false, nameTableKind: None)
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
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 46, baseType: !99)
!98 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!293 = distinct !DICompileUnit(language: DW_LANG_C11, file: !290, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !294, splitDebugInlining: false, nameTableKind: None)
!294 = !{!288, !291}
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "file_name", scope: !297, file: !298, line: 45, type: !72, isLocal: true, isDefinition: true)
!297 = distinct !DICompileUnit(language: DW_LANG_C11, file: !298, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !299, splitDebugInlining: false, nameTableKind: None)
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
!311 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !312, file: !313, line: 66, type: !364, isLocal: false, isDefinition: true)
!312 = distinct !DICompileUnit(language: DW_LANG_C11, file: !313, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !314, globals: !315, splitDebugInlining: false, nameTableKind: None)
!313 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!314 = !{!94, !100}
!315 = !{!316, !318, !343, !345, !347, !349, !310, !351, !353, !355, !357, !362}
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !313, line: 272, type: !9, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "old_file_name", scope: !320, file: !313, line: 304, type: !72, isLocal: true, isDefinition: true)
!320 = distinct !DISubprogram(name: "verror_at_line", scope: !313, file: !313, line: 298, type: !321, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !336)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !95, !95, !72, !78, !72, !323}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !324, line: 52, baseType: !325)
!324 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !326, line: 14, baseType: !327)
!326 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !328, baseType: !329)
!328 = !DIFile(filename: "lib/error.c", directory: "/src")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !330)
!330 = !{!331, !332, !333, !334, !335}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !329, file: !328, baseType: !94, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !329, file: !328, baseType: !94, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !329, file: !328, baseType: !94, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !329, file: !328, baseType: !95, size: 32, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !329, file: !328, baseType: !95, size: 32, offset: 224)
!336 = !{!337, !338, !339, !340, !341, !342}
!337 = !DILocalVariable(name: "status", arg: 1, scope: !320, file: !313, line: 298, type: !95)
!338 = !DILocalVariable(name: "errnum", arg: 2, scope: !320, file: !313, line: 298, type: !95)
!339 = !DILocalVariable(name: "file_name", arg: 3, scope: !320, file: !313, line: 298, type: !72)
!340 = !DILocalVariable(name: "line_number", arg: 4, scope: !320, file: !313, line: 298, type: !78)
!341 = !DILocalVariable(name: "message", arg: 5, scope: !320, file: !313, line: 298, type: !72)
!342 = !DILocalVariable(name: "args", arg: 6, scope: !320, file: !313, line: 298, type: !323)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(name: "old_line_number", scope: !320, file: !313, line: 305, type: !78, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !313, line: 338, type: !108, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !313, line: 346, type: !140, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !313, line: 346, type: !118, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(name: "error_message_count", scope: !312, file: !313, line: 69, type: !78, isLocal: false, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !312, file: !313, line: 295, type: !95, isLocal: false, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !313, line: 208, type: !51, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !313, line: 208, type: !359, isLocal: true, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 21)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !313, line: 214, type: !9, isLocal: true, isDefinition: true)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null}
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "program_name", scope: !369, file: !370, line: 31, type: !72, isLocal: false, isDefinition: true)
!369 = distinct !DICompileUnit(language: DW_LANG_C11, file: !370, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !371, globals: !372, splitDebugInlining: false, nameTableKind: None)
!370 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!371 = !{!93}
!372 = !{!367, !373, !375}
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !370, line: 46, type: !140, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !370, line: 49, type: !108, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "utf07FF", scope: !379, file: !380, line: 46, type: !407, isLocal: true, isDefinition: true)
!379 = distinct !DISubprogram(name: "proper_name_lite", scope: !380, file: !380, line: 38, type: !381, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !383, retainedNodes: !385)
!380 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!381 = !DISubroutineType(types: !382)
!382 = !{!72, !72, !72}
!383 = distinct !DICompileUnit(language: DW_LANG_C11, file: !380, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !384, splitDebugInlining: false, nameTableKind: None)
!384 = !{!377}
!385 = !{!386, !387, !388, !389, !394}
!386 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !379, file: !380, line: 38, type: !72)
!387 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !379, file: !380, line: 38, type: !72)
!388 = !DILocalVariable(name: "translation", scope: !379, file: !380, line: 40, type: !72)
!389 = !DILocalVariable(name: "w", scope: !379, file: !380, line: 47, type: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !391, line: 37, baseType: !392)
!391 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !257, line: 57, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !257, line: 42, baseType: !78)
!394 = !DILocalVariable(name: "mbs", scope: !379, file: !380, line: 48, type: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !396, line: 6, baseType: !397)
!396 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !398, line: 21, baseType: !399)
!398 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 13, size: 64, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !399, file: !398, line: 15, baseType: !95, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !399, file: !398, line: 20, baseType: !403, size: 32, offset: 32)
!403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !398, line: 16, size: 32, elements: !404)
!404 = !{!405, !406}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !403, file: !398, line: 18, baseType: !78, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !403, file: !398, line: 19, baseType: !108, size: 32)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 16, elements: !119)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !410, line: 78, type: !140, isLocal: true, isDefinition: true)
!410 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !410, line: 79, type: !113, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !410, line: 80, type: !63, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !410, line: 81, type: !63, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !410, line: 82, type: !279, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !410, line: 83, type: !118, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !410, line: 84, type: !140, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !410, line: 85, type: !51, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !410, line: 86, type: !51, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !410, line: 87, type: !140, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !431, file: !410, line: 76, type: !517, isLocal: false, isDefinition: true)
!431 = distinct !DICompileUnit(language: DW_LANG_C11, file: !410, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !432, retainedTypes: !452, globals: !453, splitDebugInlining: false, nameTableKind: None)
!432 = !{!433, !447, !76}
!433 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !434, line: 42, baseType: !78, size: 32, elements: !435)
!434 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446}
!436 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!437 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!438 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!439 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!440 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!441 = !DIEnumerator(name: "c_quoting_style", value: 5)
!442 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!443 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!444 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!445 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!446 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!447 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !434, line: 254, baseType: !78, size: 32, elements: !448)
!448 = !{!449, !450, !451}
!449 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!450 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!451 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!452 = !{!95, !96, !97}
!453 = !{!408, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !454, !458, !468, !470, !475, !477, !479, !481, !483, !506, !513, !515}
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !431, file: !410, line: 92, type: !456, isLocal: false, isDefinition: true)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 320, elements: !42)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !431, file: !410, line: 1040, type: !460, isLocal: false, isDefinition: true)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !410, line: 56, size: 448, elements: !461)
!461 = !{!462, !463, !464, !466, !467}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !460, file: !410, line: 59, baseType: !433, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !460, file: !410, line: 62, baseType: !95, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !460, file: !410, line: 66, baseType: !465, size: 256, offset: 64)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !141)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !460, file: !410, line: 69, baseType: !72, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !460, file: !410, line: 72, baseType: !72, size: 64, offset: 384)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !431, file: !410, line: 107, type: !460, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(name: "slot0", scope: !431, file: !410, line: 831, type: !472, isLocal: true, isDefinition: true)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 256)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !410, line: 321, type: !118, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !410, line: 357, type: !118, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !410, line: 358, type: !118, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !410, line: 199, type: !51, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "quote", scope: !485, file: !410, line: 228, type: !504, isLocal: true, isDefinition: true)
!485 = distinct !DISubprogram(name: "gettext_quote", scope: !410, file: !410, line: 197, type: !486, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{!72, !72, !433}
!488 = !{!489, !490, !491, !492, !493}
!489 = !DILocalVariable(name: "msgid", arg: 1, scope: !485, file: !410, line: 197, type: !72)
!490 = !DILocalVariable(name: "s", arg: 2, scope: !485, file: !410, line: 197, type: !433)
!491 = !DILocalVariable(name: "translation", scope: !485, file: !410, line: 199, type: !72)
!492 = !DILocalVariable(name: "w", scope: !485, file: !410, line: 229, type: !390)
!493 = !DILocalVariable(name: "mbs", scope: !485, file: !410, line: 230, type: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !396, line: 6, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !398, line: 21, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 13, size: 64, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !496, file: !398, line: 15, baseType: !95, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !496, file: !398, line: 20, baseType: !500, size: 32, offset: 32)
!500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !496, file: !398, line: 16, size: 32, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !500, file: !398, line: 18, baseType: !78, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !500, file: !398, line: 19, baseType: !108, size: 32)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !505)
!505 = !{!120, !110}
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(name: "slotvec", scope: !431, file: !410, line: 834, type: !508, isLocal: true, isDefinition: true)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !410, line: 823, size: 128, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !509, file: !410, line: 825, baseType: !97, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !509, file: !410, line: 826, baseType: !93, size: 64, offset: 64)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "nslots", scope: !431, file: !410, line: 832, type: !95, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(name: "slotvec0", scope: !431, file: !410, line: 833, type: !509, isLocal: true, isDefinition: true)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 704, elements: !519)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!519 = !{!520}
!520 = !DISubrange(count: 11)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !523, line: 67, type: !207, isLocal: true, isDefinition: true)
!523 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !523, line: 69, type: !51, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !523, line: 83, type: !51, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !523, line: 83, type: !108, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !523, line: 85, type: !118, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !523, line: 88, type: !534, isLocal: true, isDefinition: true)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 171)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !523, line: 88, type: !539, isLocal: true, isDefinition: true)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 34)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !523, line: 105, type: !178, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !523, line: 109, type: !546, isLocal: true, isDefinition: true)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 23)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !523, line: 113, type: !551, isLocal: true, isDefinition: true)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 28)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !523, line: 120, type: !556, isLocal: true, isDefinition: true)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 32)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !523, line: 127, type: !561, isLocal: true, isDefinition: true)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !562)
!562 = !{!563}
!563 = !DISubrange(count: 36)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !523, line: 134, type: !158, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !523, line: 142, type: !14, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !523, line: 150, type: !570, isLocal: true, isDefinition: true)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 48)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !523, line: 159, type: !575, isLocal: true, isDefinition: true)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 52)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !523, line: 170, type: !580, isLocal: true, isDefinition: true)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 60)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !523, line: 248, type: !279, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !523, line: 248, type: !183, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !523, line: 254, type: !279, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !523, line: 254, type: !58, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !523, line: 254, type: !158, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !523, line: 259, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 39)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !523, line: 259, type: !600, isLocal: true, isDefinition: true)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 29)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !605, file: !606, line: 26, type: !608, isLocal: false, isDefinition: true)
!605 = distinct !DICompileUnit(language: DW_LANG_C11, file: !606, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !607, splitDebugInlining: false, nameTableKind: None)
!606 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!607 = !{!603}
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 376, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 47)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(name: "exit_failure", scope: !613, file: !614, line: 24, type: !616, isLocal: false, isDefinition: true)
!613 = distinct !DICompileUnit(language: DW_LANG_C11, file: !614, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !615, splitDebugInlining: false, nameTableKind: None)
!614 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!615 = !{!611}
!616 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !95)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !619, line: 34, type: !127, isLocal: true, isDefinition: true)
!619 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !619, line: 34, type: !51, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !619, line: 34, type: !153, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !626, line: 108, type: !36, isLocal: true, isDefinition: true)
!626 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(name: "internal_state", scope: !629, file: !626, line: 97, type: !632, isLocal: true, isDefinition: true)
!629 = distinct !DICompileUnit(language: DW_LANG_C11, file: !626, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !630, globals: !631, splitDebugInlining: false, nameTableKind: None)
!630 = !{!94, !97, !100}
!631 = !{!624, !627}
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !396, line: 6, baseType: !633)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !398, line: 21, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 13, size: 64, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !634, file: !398, line: 15, baseType: !95, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !634, file: !398, line: 20, baseType: !638, size: 32, offset: 32)
!638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !634, file: !398, line: 16, size: 32, elements: !639)
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !638, file: !398, line: 18, baseType: !78, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !638, file: !398, line: 19, baseType: !108, size: 32)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !644, line: 35, type: !118, isLocal: true, isDefinition: true)
!644 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !644, line: 35, type: !113, isLocal: true, isDefinition: true)
!647 = distinct !DICompileUnit(language: DW_LANG_C11, file: !648, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!648 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!649 = distinct !DICompileUnit(language: DW_LANG_C11, file: !523, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !650, retainedTypes: !654, globals: !655, splitDebugInlining: false, nameTableKind: None)
!650 = !{!651}
!651 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !523, line: 40, baseType: !78, size: 32, elements: !652)
!652 = !{!653}
!653 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!654 = !{!94}
!655 = !{!521, !524, !526, !528, !530, !532, !537, !542, !544, !549, !554, !559, !564, !566, !568, !573, !578, !583, !585, !587, !589, !591, !593, !598}
!656 = distinct !DICompileUnit(language: DW_LANG_C11, file: !657, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !658, retainedTypes: !689, splitDebugInlining: false, nameTableKind: None)
!657 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!658 = !{!659, !671}
!659 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !660, file: !657, line: 188, baseType: !78, size: 32, elements: !669)
!660 = distinct !DISubprogram(name: "x2nrealloc", scope: !657, file: !657, line: 176, type: !661, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !664)
!661 = !DISubroutineType(types: !662)
!662 = !{!94, !94, !663, !97}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!664 = !{!665, !666, !667, !668}
!665 = !DILocalVariable(name: "p", arg: 1, scope: !660, file: !657, line: 176, type: !94)
!666 = !DILocalVariable(name: "pn", arg: 2, scope: !660, file: !657, line: 176, type: !663)
!667 = !DILocalVariable(name: "s", arg: 3, scope: !660, file: !657, line: 176, type: !97)
!668 = !DILocalVariable(name: "n", scope: !660, file: !657, line: 178, type: !97)
!669 = !{!670}
!670 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!671 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !672, file: !657, line: 228, baseType: !78, size: 32, elements: !669)
!672 = distinct !DISubprogram(name: "xpalloc", scope: !657, file: !657, line: 223, type: !673, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !679)
!673 = !DISubroutineType(types: !674)
!674 = !{!94, !94, !675, !676, !678, !676}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !677, line: 130, baseType: !678)
!677 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !98, line: 35, baseType: !258)
!679 = !{!680, !681, !682, !683, !684, !685, !686, !687, !688}
!680 = !DILocalVariable(name: "pa", arg: 1, scope: !672, file: !657, line: 223, type: !94)
!681 = !DILocalVariable(name: "pn", arg: 2, scope: !672, file: !657, line: 223, type: !675)
!682 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !672, file: !657, line: 223, type: !676)
!683 = !DILocalVariable(name: "n_max", arg: 4, scope: !672, file: !657, line: 223, type: !678)
!684 = !DILocalVariable(name: "s", arg: 5, scope: !672, file: !657, line: 223, type: !676)
!685 = !DILocalVariable(name: "n0", scope: !672, file: !657, line: 230, type: !676)
!686 = !DILocalVariable(name: "n", scope: !672, file: !657, line: 237, type: !676)
!687 = !DILocalVariable(name: "nbytes", scope: !672, file: !657, line: 248, type: !676)
!688 = !DILocalVariable(name: "adjusted_nbytes", scope: !672, file: !657, line: 252, type: !676)
!689 = !{!93, !94, !217, !258, !99}
!690 = distinct !DICompileUnit(language: DW_LANG_C11, file: !619, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !691, splitDebugInlining: false, nameTableKind: None)
!691 = !{!617, !620, !622}
!692 = distinct !DICompileUnit(language: DW_LANG_C11, file: !693, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!693 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!694 = distinct !DICompileUnit(language: DW_LANG_C11, file: !695, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!695 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!696 = distinct !DICompileUnit(language: DW_LANG_C11, file: !697, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !654, splitDebugInlining: false, nameTableKind: None)
!697 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!698 = distinct !DICompileUnit(language: DW_LANG_C11, file: !699, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !654, splitDebugInlining: false, nameTableKind: None)
!699 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!700 = distinct !DICompileUnit(language: DW_LANG_C11, file: !701, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !702, splitDebugInlining: false, nameTableKind: None)
!701 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!702 = !{!217, !99, !94}
!703 = distinct !DICompileUnit(language: DW_LANG_C11, file: !644, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !704, splitDebugInlining: false, nameTableKind: None)
!704 = !{!642, !645}
!705 = distinct !DICompileUnit(language: DW_LANG_C11, file: !706, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!706 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!707 = distinct !DICompileUnit(language: DW_LANG_C11, file: !708, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !654, splitDebugInlining: false, nameTableKind: None)
!708 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!709 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!710 = !{i32 7, !"Dwarf Version", i32 5}
!711 = !{i32 2, !"Debug Info Version", i32 3}
!712 = !{i32 1, !"wchar_size", i32 4}
!713 = !{i32 8, !"PIC Level", i32 2}
!714 = !{i32 7, !"PIE Level", i32 2}
!715 = !{i32 7, !"uwtable", i32 2}
!716 = !{i32 7, !"frame-pointer", i32 1}
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
!734 = !DISubprogram(name: "dcgettext", scope: !735, file: !735, line: 51, type: !736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!735 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!736 = !DISubroutineType(types: !737)
!737 = !{!93, !72, !72, !95}
!738 = !{}
!739 = !DISubprogram(name: "__printf_chk", scope: !740, file: !740, line: 95, type: !741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!740 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!741 = !DISubroutineType(types: !742)
!742 = !{!95, !95, !743, null}
!743 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !72)
!744 = !DILocation(line: 0, scope: !68)
!745 = !DILocation(line: 581, column: 7, scope: !215)
!746 = !{!747, !747, i64 0}
!747 = !{!"int", !726, i64 0}
!748 = !DILocation(line: 581, column: 19, scope: !215)
!749 = !DILocation(line: 581, column: 7, scope: !68)
!750 = !DILocation(line: 585, column: 26, scope: !214)
!751 = !DILocation(line: 0, scope: !214)
!752 = !DILocation(line: 586, column: 23, scope: !214)
!753 = !DILocation(line: 586, column: 28, scope: !214)
!754 = !DILocation(line: 586, column: 32, scope: !214)
!755 = !{!726, !726, i64 0}
!756 = !DILocation(line: 586, column: 38, scope: !214)
!757 = !DILocalVariable(name: "__s1", arg: 1, scope: !758, file: !759, line: 1359, type: !72)
!758 = distinct !DISubprogram(name: "streq", scope: !759, file: !759, line: 1359, type: !760, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !762)
!759 = !DIFile(filename: "./lib/string.h", directory: "/src")
!760 = !DISubroutineType(types: !761)
!761 = !{!217, !72, !72}
!762 = !{!757, !763}
!763 = !DILocalVariable(name: "__s2", arg: 2, scope: !758, file: !759, line: 1359, type: !72)
!764 = !DILocation(line: 0, scope: !758, inlinedAt: !765)
!765 = distinct !DILocation(line: 586, column: 41, scope: !214)
!766 = !DILocation(line: 1361, column: 11, scope: !758, inlinedAt: !765)
!767 = !DILocation(line: 1361, column: 10, scope: !758, inlinedAt: !765)
!768 = !DILocation(line: 586, column: 19, scope: !214)
!769 = !DILocation(line: 587, column: 5, scope: !214)
!770 = !DILocation(line: 588, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !68, file: !69, line: 588, column: 7)
!772 = !DILocation(line: 588, column: 7, scope: !68)
!773 = !DILocation(line: 590, column: 7, scope: !774)
!774 = distinct !DILexicalBlock(scope: !771, file: !69, line: 589, column: 5)
!775 = !DILocation(line: 591, column: 7, scope: !774)
!776 = !DILocation(line: 595, column: 37, scope: !68)
!777 = !DILocation(line: 595, column: 35, scope: !68)
!778 = !DILocation(line: 596, column: 29, scope: !68)
!779 = !DILocation(line: 597, column: 8, scope: !223)
!780 = !DILocation(line: 597, column: 7, scope: !68)
!781 = !DILocation(line: 604, column: 24, scope: !222)
!782 = !DILocation(line: 604, column: 12, scope: !223)
!783 = !DILocation(line: 0, scope: !221)
!784 = !DILocation(line: 610, column: 16, scope: !221)
!785 = !DILocation(line: 610, column: 7, scope: !221)
!786 = !DILocation(line: 611, column: 21, scope: !221)
!787 = !{!788, !788, i64 0}
!788 = !{!"short", !726, i64 0}
!789 = !DILocation(line: 611, column: 19, scope: !221)
!790 = !DILocation(line: 611, column: 16, scope: !221)
!791 = !DILocation(line: 610, column: 30, scope: !221)
!792 = distinct !{!792, !785, !786, !793}
!793 = !{!"llvm.loop.mustprogress"}
!794 = !DILocation(line: 612, column: 18, scope: !795)
!795 = distinct !DILexicalBlock(scope: !221, file: !69, line: 612, column: 11)
!796 = !DILocation(line: 612, column: 11, scope: !221)
!797 = !DILocation(line: 620, column: 23, scope: !68)
!798 = !DILocation(line: 625, column: 39, scope: !68)
!799 = !DILocation(line: 626, column: 3, scope: !68)
!800 = !DILocation(line: 626, column: 10, scope: !68)
!801 = !DILocation(line: 626, column: 21, scope: !68)
!802 = !DILocation(line: 628, column: 44, scope: !803)
!803 = distinct !DILexicalBlock(scope: !804, file: !69, line: 628, column: 11)
!804 = distinct !DILexicalBlock(scope: !68, file: !69, line: 627, column: 5)
!805 = !DILocation(line: 628, column: 32, scope: !803)
!806 = !DILocation(line: 628, column: 49, scope: !803)
!807 = !DILocation(line: 628, column: 11, scope: !804)
!808 = !DILocation(line: 630, column: 11, scope: !809)
!809 = distinct !DILexicalBlock(scope: !804, file: !69, line: 630, column: 11)
!810 = !DILocation(line: 630, column: 11, scope: !804)
!811 = !DILocation(line: 632, column: 26, scope: !812)
!812 = distinct !DILexicalBlock(scope: !813, file: !69, line: 632, column: 15)
!813 = distinct !DILexicalBlock(scope: !809, file: !69, line: 631, column: 9)
!814 = !DILocation(line: 632, column: 34, scope: !812)
!815 = !DILocation(line: 632, column: 37, scope: !812)
!816 = !DILocation(line: 632, column: 15, scope: !813)
!817 = !DILocation(line: 640, column: 16, scope: !804)
!818 = distinct !{!818, !799, !819, !793}
!819 = !DILocation(line: 641, column: 5, scope: !68)
!820 = !DILocation(line: 644, column: 3, scope: !68)
!821 = !DILocation(line: 0, scope: !758, inlinedAt: !822)
!822 = distinct !DILocation(line: 648, column: 31, scope: !68)
!823 = !DILocation(line: 0, scope: !758, inlinedAt: !824)
!824 = distinct !DILocation(line: 649, column: 31, scope: !68)
!825 = !DILocation(line: 0, scope: !758, inlinedAt: !826)
!826 = distinct !DILocation(line: 650, column: 31, scope: !68)
!827 = !DILocation(line: 0, scope: !758, inlinedAt: !828)
!828 = distinct !DILocation(line: 651, column: 31, scope: !68)
!829 = !DILocation(line: 0, scope: !758, inlinedAt: !830)
!830 = distinct !DILocation(line: 652, column: 31, scope: !68)
!831 = !DILocation(line: 0, scope: !758, inlinedAt: !832)
!832 = distinct !DILocation(line: 653, column: 31, scope: !68)
!833 = !DILocation(line: 0, scope: !758, inlinedAt: !834)
!834 = distinct !DILocation(line: 654, column: 31, scope: !68)
!835 = !DILocation(line: 0, scope: !758, inlinedAt: !836)
!836 = distinct !DILocation(line: 655, column: 31, scope: !68)
!837 = !DILocation(line: 0, scope: !758, inlinedAt: !838)
!838 = distinct !DILocation(line: 656, column: 31, scope: !68)
!839 = !DILocation(line: 0, scope: !758, inlinedAt: !840)
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
!889 = !DISubprogram(name: "exit", scope: !890, file: !890, line: 624, type: !718, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !738)
!890 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!891 = !DISubprogram(name: "setlocale", scope: !892, file: !892, line: 122, type: !893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!892 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!893 = !DISubroutineType(types: !894)
!894 = !{!93, !95, !72}
!895 = !DISubprogram(name: "strncmp", scope: !896, file: !896, line: 159, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!896 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!897 = !DISubroutineType(types: !898)
!898 = !{!95, !72, !72, !97}
!899 = !DISubprogram(name: "fputs_unlocked", scope: !324, file: !324, line: 691, type: !900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!900 = !DISubroutineType(types: !901)
!901 = !{!95, !743, !902}
!902 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !230)
!903 = !DISubprogram(name: "getenv", scope: !890, file: !890, line: 641, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!904 = !DISubroutineType(types: !905)
!905 = !{!93, !72}
!906 = !DISubprogram(name: "strcmp", scope: !896, file: !896, line: 156, type: !907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!907 = !DISubroutineType(types: !908)
!908 = !{!95, !72, !72}
!909 = !DISubprogram(name: "strspn", scope: !896, file: !896, line: 297, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!910 = !DISubroutineType(types: !911)
!911 = !{!99, !72, !72}
!912 = !DISubprogram(name: "strchr", scope: !896, file: !896, line: 246, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!913 = !DISubroutineType(types: !914)
!914 = !{!93, !72, !95}
!915 = !DISubprogram(name: "__ctype_b_loc", scope: !77, file: !77, line: 79, type: !916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!916 = !DISubroutineType(types: !917)
!917 = !{!918}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!921 = !DISubprogram(name: "strcspn", scope: !896, file: !896, line: 293, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!922 = !DISubprogram(name: "fwrite_unlocked", scope: !324, file: !324, line: 704, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
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
!948 = !DILocation(line: 0, scope: !758, inlinedAt: !949)
!949 = distinct !DILocation(line: 71, column: 11, scope: !947)
!950 = !DILocation(line: 1361, column: 11, scope: !758, inlinedAt: !949)
!951 = !DILocation(line: 1361, column: 10, scope: !758, inlinedAt: !949)
!952 = !DILocation(line: 71, column: 11, scope: !940)
!953 = !DILocation(line: 72, column: 9, scope: !947)
!954 = !DILocation(line: 0, scope: !758, inlinedAt: !955)
!955 = distinct !DILocation(line: 74, column: 11, scope: !956)
!956 = distinct !DILexicalBlock(scope: !940, file: !2, line: 74, column: 11)
!957 = !DILocation(line: 1361, column: 11, scope: !758, inlinedAt: !955)
!958 = !DILocation(line: 1361, column: 10, scope: !758, inlinedAt: !955)
!959 = !DILocation(line: 74, column: 11, scope: !940)
!960 = !DILocation(line: 75, column: 22, scope: !956)
!961 = !DILocation(line: 75, column: 58, scope: !956)
!962 = !DILocation(line: 75, column: 67, scope: !956)
!963 = !DILocation(line: 75, column: 9, scope: !956)
!964 = !DILocation(line: 79, column: 3, scope: !928)
!965 = !DISubprogram(name: "bindtextdomain", scope: !735, file: !735, line: 86, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!966 = !DISubroutineType(types: !967)
!967 = !{!93, !72, !72}
!968 = !DISubprogram(name: "textdomain", scope: !735, file: !735, line: 82, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!969 = !DISubprogram(name: "atexit", scope: !890, file: !890, line: 602, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!970 = !DISubroutineType(types: !971)
!971 = !{!95, !364}
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
!989 = distinct !DISubprogram(name: "close_stdout", scope: !298, file: !298, line: 116, type: !365, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !990)
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
!1022 = !DISubprogram(name: "__errno_location", scope: !1023, file: !1023, line: 37, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!1023 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!1027 = !DISubprogram(name: "_exit", scope: !1028, file: !1028, line: 624, type: !718, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !738)
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
!1038 = !DILocation(line: 251, column: 1, scope: !1029)
!1039 = !DILocation(line: 261, column: 3, scope: !1029)
!1040 = !DILocation(line: 265, column: 7, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1029, file: !313, line: 265, column: 7)
!1042 = !DILocation(line: 265, column: 7, scope: !1029)
!1043 = !DILocation(line: 266, column: 5, scope: !1041)
!1044 = !DILocation(line: 272, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1041, file: !313, line: 268, column: 5)
!1046 = !DILocation(line: 276, column: 3, scope: !1029)
!1047 = !{i64 0, i64 8, !724, i64 8, i64 8, !724, i64 16, i64 8, !724, i64 24, i64 4, !746, i64 28, i64 4, !746}
!1048 = !DILocation(line: 282, column: 1, scope: !1029)
!1049 = distinct !DISubprogram(name: "flush_stdout", scope: !313, file: !313, line: 163, type: !365, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1050)
!1050 = !{!1051}
!1051 = !DILocalVariable(name: "stdout_fd", scope: !1049, file: !313, line: 166, type: !95)
!1052 = !DILocation(line: 0, scope: !1049)
!1053 = !DILocalVariable(name: "fd", arg: 1, scope: !1054, file: !313, line: 145, type: !95)
!1054 = distinct !DISubprogram(name: "is_open", scope: !313, file: !313, line: 145, type: !1055, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1057)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!95, !95}
!1057 = !{!1053}
!1058 = !DILocation(line: 0, scope: !1054, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 182, column: 25, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1049, file: !313, line: 182, column: 7)
!1061 = !DILocation(line: 157, column: 15, scope: !1054, inlinedAt: !1059)
!1062 = !DILocation(line: 157, column: 12, scope: !1054, inlinedAt: !1059)
!1063 = !DILocation(line: 182, column: 7, scope: !1049)
!1064 = !DILocation(line: 184, column: 5, scope: !1060)
!1065 = !DILocation(line: 185, column: 1, scope: !1049)
!1066 = !DISubprogram(name: "__fprintf_chk", scope: !740, file: !740, line: 93, type: !1067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!95, !1069, !95, !743, null}
!1069 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !1072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1072, file: !234, line: 51, baseType: !95, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1072, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1072, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1072, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1072, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1072, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1072, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1072, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1072, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1072, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1072, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1072, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1072, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1072, file: !234, line: 70, baseType: !1088, size: 64, offset: 832)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1072, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1072, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1072, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1072, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1072, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1072, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1072, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1072, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1072, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1072, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1072, file: !234, line: 93, baseType: !1088, size: 64, offset: 1344)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1072, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1072, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1072, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1072, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!1104 = distinct !DISubprogram(name: "error_tail", scope: !313, file: !313, line: 219, type: !1030, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1105)
!1105 = !{!1106, !1107, !1108, !1109}
!1106 = !DILocalVariable(name: "status", arg: 1, scope: !1104, file: !313, line: 219, type: !95)
!1107 = !DILocalVariable(name: "errnum", arg: 2, scope: !1104, file: !313, line: 219, type: !95)
!1108 = !DILocalVariable(name: "message", arg: 3, scope: !1104, file: !313, line: 219, type: !72)
!1109 = !DILocalVariable(name: "args", arg: 4, scope: !1104, file: !313, line: 219, type: !323)
!1110 = !DILocation(line: 0, scope: !1104)
!1111 = !DILocation(line: 219, column: 1, scope: !1104)
!1112 = !DILocation(line: 229, column: 13, scope: !1104)
!1113 = !DILocation(line: 135, column: 10, scope: !1114, inlinedAt: !1121)
!1114 = distinct !DISubprogram(name: "vfprintf", scope: !740, file: !740, line: 132, type: !1115, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1117)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!95, !1069, !743, !325}
!1117 = !{!1118, !1119, !1120}
!1118 = !DILocalVariable(name: "__stream", arg: 1, scope: !1114, file: !740, line: 132, type: !1069)
!1119 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1114, file: !740, line: 133, type: !743)
!1120 = !DILocalVariable(name: "__ap", arg: 3, scope: !1114, file: !740, line: 133, type: !325)
!1121 = distinct !DILocation(line: 229, column: 3, scope: !1104)
!1122 = !{!1123, !1125}
!1123 = distinct !{!1123, !1124, !"vfprintf.inline: argument 0"}
!1124 = distinct !{!1124, !"vfprintf.inline"}
!1125 = distinct !{!1125, !1124, !"vfprintf.inline: argument 1"}
!1126 = !DILocation(line: 229, column: 3, scope: !1104)
!1127 = !DILocation(line: 0, scope: !1114, inlinedAt: !1121)
!1128 = !DILocation(line: 133, column: 49, scope: !1114, inlinedAt: !1121)
!1129 = !DILocation(line: 232, column: 3, scope: !1104)
!1130 = !DILocation(line: 233, column: 7, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1104, file: !313, line: 233, column: 7)
!1132 = !DILocation(line: 233, column: 7, scope: !1104)
!1133 = !DILocalVariable(name: "errnum", arg: 1, scope: !1134, file: !313, line: 188, type: !95)
!1134 = distinct !DISubprogram(name: "print_errno_message", scope: !313, file: !313, line: 188, type: !718, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1135)
!1135 = !{!1133, !1136, !1137}
!1136 = !DILocalVariable(name: "s", scope: !1134, file: !313, line: 190, type: !72)
!1137 = !DILocalVariable(name: "errbuf", scope: !1134, file: !313, line: 193, type: !1138)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1139)
!1139 = !{!1140}
!1140 = !DISubrange(count: 1024)
!1141 = !DILocation(line: 0, scope: !1134, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 234, column: 5, scope: !1131)
!1143 = !DILocation(line: 193, column: 3, scope: !1134, inlinedAt: !1142)
!1144 = !DILocation(line: 193, column: 8, scope: !1134, inlinedAt: !1142)
!1145 = !DILocation(line: 195, column: 7, scope: !1134, inlinedAt: !1142)
!1146 = !DILocation(line: 207, column: 9, scope: !1147, inlinedAt: !1142)
!1147 = distinct !DILexicalBlock(scope: !1134, file: !313, line: 207, column: 7)
!1148 = !DILocation(line: 207, column: 7, scope: !1134, inlinedAt: !1142)
!1149 = !DILocation(line: 208, column: 9, scope: !1147, inlinedAt: !1142)
!1150 = !DILocation(line: 208, column: 5, scope: !1147, inlinedAt: !1142)
!1151 = !DILocation(line: 214, column: 3, scope: !1134, inlinedAt: !1142)
!1152 = !DILocation(line: 216, column: 1, scope: !1134, inlinedAt: !1142)
!1153 = !DILocation(line: 234, column: 5, scope: !1131)
!1154 = !DILocation(line: 238, column: 3, scope: !1104)
!1155 = !DILocalVariable(name: "__c", arg: 1, scope: !1156, file: !1157, line: 101, type: !95)
!1156 = distinct !DISubprogram(name: "putc_unlocked", scope: !1157, file: !1157, line: 101, type: !1158, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1160)
!1157 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!95, !95, !1070}
!1160 = !{!1155, !1161}
!1161 = !DILocalVariable(name: "__stream", arg: 2, scope: !1156, file: !1157, line: 101, type: !1070)
!1162 = !DILocation(line: 0, scope: !1156, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 238, column: 3, scope: !1104)
!1164 = !DILocation(line: 103, column: 10, scope: !1156, inlinedAt: !1163)
!1165 = !{!1166, !725, i64 40}
!1166 = !{!"_IO_FILE", !747, i64 0, !725, i64 8, !725, i64 16, !725, i64 24, !725, i64 32, !725, i64 40, !725, i64 48, !725, i64 56, !725, i64 64, !725, i64 72, !725, i64 80, !725, i64 88, !725, i64 96, !725, i64 104, !747, i64 112, !747, i64 116, !1167, i64 120, !788, i64 128, !726, i64 130, !726, i64 131, !725, i64 136, !1167, i64 144, !725, i64 152, !725, i64 160, !725, i64 168, !725, i64 176, !1167, i64 184, !747, i64 192, !726, i64 196}
!1167 = !{!"long", !726, i64 0}
!1168 = !{!1166, !725, i64 48}
!1169 = !{!"branch_weights", i32 2000, i32 1}
!1170 = !DILocation(line: 240, column: 3, scope: !1104)
!1171 = !DILocation(line: 241, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1104, file: !313, line: 241, column: 7)
!1173 = !DILocation(line: 241, column: 7, scope: !1104)
!1174 = !DILocation(line: 242, column: 5, scope: !1172)
!1175 = !DILocation(line: 243, column: 1, scope: !1104)
!1176 = !DISubprogram(name: "__vfprintf_chk", scope: !740, file: !740, line: 96, type: !1177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!95, !1069, !95, !743, !325}
!1179 = !DISubprogram(name: "strerror_r", scope: !896, file: !896, line: 444, type: !1180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!93, !95, !93, !97}
!1182 = !DISubprogram(name: "__overflow", scope: !324, file: !324, line: 886, type: !1183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!95, !1070, !95}
!1185 = !DISubprogram(name: "fflush_unlocked", scope: !324, file: !324, line: 239, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!95, !1070}
!1188 = !DISubprogram(name: "fcntl", scope: !1189, file: !1189, line: 149, type: !1190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!1189 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!95, !95, !95, null}
!1192 = distinct !DISubprogram(name: "error", scope: !313, file: !313, line: 285, type: !1193, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1195)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !95, !95, !72, null}
!1195 = !{!1196, !1197, !1198, !1199}
!1196 = !DILocalVariable(name: "status", arg: 1, scope: !1192, file: !313, line: 285, type: !95)
!1197 = !DILocalVariable(name: "errnum", arg: 2, scope: !1192, file: !313, line: 285, type: !95)
!1198 = !DILocalVariable(name: "message", arg: 3, scope: !1192, file: !313, line: 285, type: !72)
!1199 = !DILocalVariable(name: "ap", scope: !1192, file: !313, line: 287, type: !323)
!1200 = !DILocation(line: 0, scope: !1192)
!1201 = !DILocation(line: 287, column: 3, scope: !1192)
!1202 = !DILocation(line: 287, column: 11, scope: !1192)
!1203 = !DILocation(line: 288, column: 3, scope: !1192)
!1204 = !DILocation(line: 289, column: 3, scope: !1192)
!1205 = !DILocation(line: 290, column: 3, scope: !1192)
!1206 = !DILocation(line: 291, column: 1, scope: !1192)
!1207 = !DILocation(line: 0, scope: !320)
!1208 = !DILocation(line: 298, column: 1, scope: !320)
!1209 = !DILocation(line: 302, column: 7, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !320, file: !313, line: 302, column: 7)
!1211 = !DILocation(line: 302, column: 7, scope: !320)
!1212 = !DILocation(line: 307, column: 11, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !313, line: 307, column: 11)
!1214 = distinct !DILexicalBlock(scope: !1210, file: !313, line: 303, column: 5)
!1215 = !DILocation(line: 307, column: 27, scope: !1213)
!1216 = !DILocation(line: 308, column: 11, scope: !1213)
!1217 = !DILocation(line: 308, column: 28, scope: !1213)
!1218 = !DILocation(line: 308, column: 25, scope: !1213)
!1219 = !DILocation(line: 309, column: 15, scope: !1213)
!1220 = !DILocation(line: 309, column: 33, scope: !1213)
!1221 = !DILocation(line: 310, column: 19, scope: !1213)
!1222 = !DILocation(line: 311, column: 22, scope: !1213)
!1223 = !DILocation(line: 311, column: 56, scope: !1213)
!1224 = !DILocation(line: 307, column: 11, scope: !1214)
!1225 = !DILocation(line: 316, column: 21, scope: !1214)
!1226 = !DILocation(line: 317, column: 23, scope: !1214)
!1227 = !DILocation(line: 318, column: 5, scope: !1214)
!1228 = !DILocation(line: 327, column: 3, scope: !320)
!1229 = !DILocation(line: 331, column: 7, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !320, file: !313, line: 331, column: 7)
!1231 = !DILocation(line: 331, column: 7, scope: !320)
!1232 = !DILocation(line: 332, column: 5, scope: !1230)
!1233 = !DILocation(line: 338, column: 7, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1230, file: !313, line: 334, column: 5)
!1235 = !DILocation(line: 346, column: 3, scope: !320)
!1236 = !DILocation(line: 350, column: 3, scope: !320)
!1237 = !DILocation(line: 356, column: 1, scope: !320)
!1238 = distinct !DISubprogram(name: "error_at_line", scope: !313, file: !313, line: 359, type: !1239, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1241)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{null, !95, !95, !72, !78, !72, null}
!1241 = !{!1242, !1243, !1244, !1245, !1246, !1247}
!1242 = !DILocalVariable(name: "status", arg: 1, scope: !1238, file: !313, line: 359, type: !95)
!1243 = !DILocalVariable(name: "errnum", arg: 2, scope: !1238, file: !313, line: 359, type: !95)
!1244 = !DILocalVariable(name: "file_name", arg: 3, scope: !1238, file: !313, line: 359, type: !72)
!1245 = !DILocalVariable(name: "line_number", arg: 4, scope: !1238, file: !313, line: 360, type: !78)
!1246 = !DILocalVariable(name: "message", arg: 5, scope: !1238, file: !313, line: 360, type: !72)
!1247 = !DILocalVariable(name: "ap", scope: !1238, file: !313, line: 362, type: !323)
!1248 = !DILocation(line: 0, scope: !1238)
!1249 = !DILocation(line: 362, column: 3, scope: !1238)
!1250 = !DILocation(line: 362, column: 11, scope: !1238)
!1251 = !DILocation(line: 363, column: 3, scope: !1238)
!1252 = !DILocation(line: 364, column: 3, scope: !1238)
!1253 = !DILocation(line: 366, column: 3, scope: !1238)
!1254 = !DILocation(line: 367, column: 1, scope: !1238)
!1255 = distinct !DISubprogram(name: "getprogname", scope: !648, file: !648, line: 54, type: !1256, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !738)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!72}
!1258 = !DILocation(line: 58, column: 10, scope: !1255)
!1259 = !DILocation(line: 58, column: 3, scope: !1255)
!1260 = distinct !DISubprogram(name: "set_program_name", scope: !370, file: !370, line: 37, type: !973, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !1261)
!1261 = !{!1262, !1263, !1264}
!1262 = !DILocalVariable(name: "argv0", arg: 1, scope: !1260, file: !370, line: 37, type: !72)
!1263 = !DILocalVariable(name: "slash", scope: !1260, file: !370, line: 44, type: !72)
!1264 = !DILocalVariable(name: "base", scope: !1260, file: !370, line: 45, type: !72)
!1265 = !DILocation(line: 0, scope: !1260)
!1266 = !DILocation(line: 44, column: 23, scope: !1260)
!1267 = !DILocation(line: 45, column: 22, scope: !1260)
!1268 = !DILocation(line: 46, column: 17, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1260, file: !370, line: 46, column: 7)
!1270 = !DILocation(line: 46, column: 9, scope: !1269)
!1271 = !DILocation(line: 46, column: 25, scope: !1269)
!1272 = !DILocation(line: 46, column: 40, scope: !1269)
!1273 = !DILocalVariable(name: "__s1", arg: 1, scope: !1274, file: !759, line: 974, type: !926)
!1274 = distinct !DISubprogram(name: "memeq", scope: !759, file: !759, line: 974, type: !1275, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !1277)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!217, !926, !926, !97}
!1277 = !{!1273, !1278, !1279}
!1278 = !DILocalVariable(name: "__s2", arg: 2, scope: !1274, file: !759, line: 974, type: !926)
!1279 = !DILocalVariable(name: "__n", arg: 3, scope: !1274, file: !759, line: 974, type: !97)
!1280 = !DILocation(line: 0, scope: !1274, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 46, column: 28, scope: !1269)
!1282 = !DILocation(line: 976, column: 11, scope: !1274, inlinedAt: !1281)
!1283 = !DILocation(line: 976, column: 10, scope: !1274, inlinedAt: !1281)
!1284 = !DILocation(line: 46, column: 7, scope: !1260)
!1285 = !DILocation(line: 49, column: 11, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !370, line: 49, column: 11)
!1287 = distinct !DILexicalBlock(scope: !1269, file: !370, line: 47, column: 5)
!1288 = !DILocation(line: 49, column: 36, scope: !1286)
!1289 = !DILocation(line: 49, column: 11, scope: !1287)
!1290 = !DILocation(line: 65, column: 16, scope: !1260)
!1291 = !DILocation(line: 71, column: 27, scope: !1260)
!1292 = !DILocation(line: 74, column: 33, scope: !1260)
!1293 = !DILocation(line: 76, column: 1, scope: !1260)
!1294 = !DISubprogram(name: "strrchr", scope: !896, file: !896, line: 273, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!1295 = !DILocation(line: 0, scope: !379)
!1296 = !DILocation(line: 40, column: 29, scope: !379)
!1297 = !DILocation(line: 41, column: 19, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !379, file: !380, line: 41, column: 7)
!1299 = !DILocation(line: 41, column: 7, scope: !379)
!1300 = !DILocation(line: 47, column: 3, scope: !379)
!1301 = !DILocation(line: 48, column: 3, scope: !379)
!1302 = !DILocation(line: 48, column: 13, scope: !379)
!1303 = !DILocalVariable(name: "ps", arg: 1, scope: !1304, file: !1305, line: 1135, type: !1308)
!1304 = distinct !DISubprogram(name: "mbszero", scope: !1305, file: !1305, line: 1135, type: !1306, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !383, retainedNodes: !1309)
!1305 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1306 = !DISubroutineType(types: !1307)
!1307 = !{null, !1308}
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!1309 = !{!1303}
!1310 = !DILocation(line: 0, scope: !1304, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 48, column: 18, scope: !379)
!1312 = !DILocalVariable(name: "__dest", arg: 1, scope: !1313, file: !1314, line: 57, type: !94)
!1313 = distinct !DISubprogram(name: "memset", scope: !1314, file: !1314, line: 57, type: !1315, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !383, retainedNodes: !1317)
!1314 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!94, !94, !95, !97}
!1317 = !{!1312, !1318, !1319}
!1318 = !DILocalVariable(name: "__ch", arg: 2, scope: !1313, file: !1314, line: 57, type: !95)
!1319 = !DILocalVariable(name: "__len", arg: 3, scope: !1313, file: !1314, line: 57, type: !97)
!1320 = !DILocation(line: 0, scope: !1313, inlinedAt: !1321)
!1321 = distinct !DILocation(line: 1137, column: 3, scope: !1304, inlinedAt: !1311)
!1322 = !DILocation(line: 59, column: 10, scope: !1313, inlinedAt: !1321)
!1323 = !DILocation(line: 49, column: 7, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !379, file: !380, line: 49, column: 7)
!1325 = !DILocation(line: 49, column: 39, scope: !1324)
!1326 = !DILocation(line: 49, column: 44, scope: !1324)
!1327 = !DILocation(line: 54, column: 1, scope: !379)
!1328 = !DISubprogram(name: "mbrtoc32", scope: !391, file: !391, line: 57, type: !1329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!97, !1331, !743, !97, !1333}
!1331 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1332)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1308)
!1334 = distinct !DISubprogram(name: "clone_quoting_options", scope: !410, file: !410, line: 113, type: !1335, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1338)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!1337, !1337}
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!1338 = !{!1339, !1340, !1341}
!1339 = !DILocalVariable(name: "o", arg: 1, scope: !1334, file: !410, line: 113, type: !1337)
!1340 = !DILocalVariable(name: "saved_errno", scope: !1334, file: !410, line: 115, type: !95)
!1341 = !DILocalVariable(name: "p", scope: !1334, file: !410, line: 116, type: !1337)
!1342 = !DILocation(line: 0, scope: !1334)
!1343 = !DILocation(line: 115, column: 21, scope: !1334)
!1344 = !DILocation(line: 116, column: 40, scope: !1334)
!1345 = !DILocation(line: 116, column: 31, scope: !1334)
!1346 = !DILocation(line: 118, column: 9, scope: !1334)
!1347 = !DILocation(line: 119, column: 3, scope: !1334)
!1348 = distinct !DISubprogram(name: "get_quoting_style", scope: !410, file: !410, line: 124, type: !1349, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1353)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!433, !1351}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!1353 = !{!1354}
!1354 = !DILocalVariable(name: "o", arg: 1, scope: !1348, file: !410, line: 124, type: !1351)
!1355 = !DILocation(line: 0, scope: !1348)
!1356 = !DILocation(line: 126, column: 11, scope: !1348)
!1357 = !DILocation(line: 126, column: 46, scope: !1348)
!1358 = !{!1359, !726, i64 0}
!1359 = !{!"quoting_options", !726, i64 0, !747, i64 4, !726, i64 8, !725, i64 40, !725, i64 48}
!1360 = !DILocation(line: 126, column: 3, scope: !1348)
!1361 = distinct !DISubprogram(name: "set_quoting_style", scope: !410, file: !410, line: 132, type: !1362, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1364)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{null, !1337, !433}
!1364 = !{!1365, !1366}
!1365 = !DILocalVariable(name: "o", arg: 1, scope: !1361, file: !410, line: 132, type: !1337)
!1366 = !DILocalVariable(name: "s", arg: 2, scope: !1361, file: !410, line: 132, type: !433)
!1367 = !DILocation(line: 0, scope: !1361)
!1368 = !DILocation(line: 134, column: 4, scope: !1361)
!1369 = !DILocation(line: 134, column: 45, scope: !1361)
!1370 = !DILocation(line: 135, column: 1, scope: !1361)
!1371 = distinct !DISubprogram(name: "set_char_quoting", scope: !410, file: !410, line: 143, type: !1372, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1374)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!95, !1337, !4, !95}
!1374 = !{!1375, !1376, !1377, !1378, !1379, !1381, !1382}
!1375 = !DILocalVariable(name: "o", arg: 1, scope: !1371, file: !410, line: 143, type: !1337)
!1376 = !DILocalVariable(name: "c", arg: 2, scope: !1371, file: !410, line: 143, type: !4)
!1377 = !DILocalVariable(name: "i", arg: 3, scope: !1371, file: !410, line: 143, type: !95)
!1378 = !DILocalVariable(name: "uc", scope: !1371, file: !410, line: 145, type: !100)
!1379 = !DILocalVariable(name: "p", scope: !1371, file: !410, line: 146, type: !1380)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!1381 = !DILocalVariable(name: "shift", scope: !1371, file: !410, line: 148, type: !95)
!1382 = !DILocalVariable(name: "r", scope: !1371, file: !410, line: 149, type: !78)
!1383 = !DILocation(line: 0, scope: !1371)
!1384 = !DILocation(line: 147, column: 6, scope: !1371)
!1385 = !DILocation(line: 147, column: 41, scope: !1371)
!1386 = !DILocation(line: 147, column: 62, scope: !1371)
!1387 = !DILocation(line: 147, column: 57, scope: !1371)
!1388 = !DILocation(line: 148, column: 15, scope: !1371)
!1389 = !DILocation(line: 149, column: 21, scope: !1371)
!1390 = !DILocation(line: 149, column: 24, scope: !1371)
!1391 = !DILocation(line: 149, column: 34, scope: !1371)
!1392 = !DILocation(line: 150, column: 19, scope: !1371)
!1393 = !DILocation(line: 150, column: 24, scope: !1371)
!1394 = !DILocation(line: 150, column: 6, scope: !1371)
!1395 = !DILocation(line: 151, column: 3, scope: !1371)
!1396 = distinct !DISubprogram(name: "set_quoting_flags", scope: !410, file: !410, line: 159, type: !1397, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1399)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!95, !1337, !95}
!1399 = !{!1400, !1401, !1402}
!1400 = !DILocalVariable(name: "o", arg: 1, scope: !1396, file: !410, line: 159, type: !1337)
!1401 = !DILocalVariable(name: "i", arg: 2, scope: !1396, file: !410, line: 159, type: !95)
!1402 = !DILocalVariable(name: "r", scope: !1396, file: !410, line: 163, type: !95)
!1403 = !DILocation(line: 0, scope: !1396)
!1404 = !DILocation(line: 161, column: 8, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1396, file: !410, line: 161, column: 7)
!1406 = !DILocation(line: 161, column: 7, scope: !1396)
!1407 = !DILocation(line: 163, column: 14, scope: !1396)
!1408 = !{!1359, !747, i64 4}
!1409 = !DILocation(line: 164, column: 12, scope: !1396)
!1410 = !DILocation(line: 165, column: 3, scope: !1396)
!1411 = distinct !DISubprogram(name: "set_custom_quoting", scope: !410, file: !410, line: 169, type: !1412, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1414)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{null, !1337, !72, !72}
!1414 = !{!1415, !1416, !1417}
!1415 = !DILocalVariable(name: "o", arg: 1, scope: !1411, file: !410, line: 169, type: !1337)
!1416 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1411, file: !410, line: 170, type: !72)
!1417 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1411, file: !410, line: 170, type: !72)
!1418 = !DILocation(line: 0, scope: !1411)
!1419 = !DILocation(line: 172, column: 8, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1411, file: !410, line: 172, column: 7)
!1421 = !DILocation(line: 172, column: 7, scope: !1411)
!1422 = !DILocation(line: 174, column: 12, scope: !1411)
!1423 = !DILocation(line: 175, column: 8, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1411, file: !410, line: 175, column: 7)
!1425 = !DILocation(line: 175, column: 19, scope: !1424)
!1426 = !DILocation(line: 176, column: 5, scope: !1424)
!1427 = !DILocation(line: 177, column: 6, scope: !1411)
!1428 = !DILocation(line: 177, column: 17, scope: !1411)
!1429 = !{!1359, !725, i64 40}
!1430 = !DILocation(line: 178, column: 6, scope: !1411)
!1431 = !DILocation(line: 178, column: 18, scope: !1411)
!1432 = !{!1359, !725, i64 48}
!1433 = !DILocation(line: 179, column: 1, scope: !1411)
!1434 = !DISubprogram(name: "abort", scope: !890, file: !890, line: 598, type: !365, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !738)
!1435 = distinct !DISubprogram(name: "quotearg_buffer", scope: !410, file: !410, line: 774, type: !1436, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1438)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!97, !93, !97, !72, !97, !1351}
!1438 = !{!1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446}
!1439 = !DILocalVariable(name: "buffer", arg: 1, scope: !1435, file: !410, line: 774, type: !93)
!1440 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1435, file: !410, line: 774, type: !97)
!1441 = !DILocalVariable(name: "arg", arg: 3, scope: !1435, file: !410, line: 775, type: !72)
!1442 = !DILocalVariable(name: "argsize", arg: 4, scope: !1435, file: !410, line: 775, type: !97)
!1443 = !DILocalVariable(name: "o", arg: 5, scope: !1435, file: !410, line: 776, type: !1351)
!1444 = !DILocalVariable(name: "p", scope: !1435, file: !410, line: 778, type: !1351)
!1445 = !DILocalVariable(name: "saved_errno", scope: !1435, file: !410, line: 779, type: !95)
!1446 = !DILocalVariable(name: "r", scope: !1435, file: !410, line: 780, type: !97)
!1447 = !DILocation(line: 0, scope: !1435)
!1448 = !DILocation(line: 778, column: 37, scope: !1435)
!1449 = !DILocation(line: 779, column: 21, scope: !1435)
!1450 = !DILocation(line: 781, column: 43, scope: !1435)
!1451 = !DILocation(line: 781, column: 53, scope: !1435)
!1452 = !DILocation(line: 781, column: 63, scope: !1435)
!1453 = !DILocation(line: 782, column: 43, scope: !1435)
!1454 = !DILocation(line: 782, column: 58, scope: !1435)
!1455 = !DILocation(line: 780, column: 14, scope: !1435)
!1456 = !DILocation(line: 783, column: 9, scope: !1435)
!1457 = !DILocation(line: 784, column: 3, scope: !1435)
!1458 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !410, file: !410, line: 251, type: !1459, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1463)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!97, !93, !97, !72, !97, !433, !95, !1461, !72, !72}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!1463 = !{!1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1488, !1490, !1493, !1494, !1495, !1496, !1499, !1500, !1503, !1507, !1508, !1516, !1519, !1520, !1522, !1523, !1524, !1525}
!1464 = !DILocalVariable(name: "buffer", arg: 1, scope: !1458, file: !410, line: 251, type: !93)
!1465 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1458, file: !410, line: 251, type: !97)
!1466 = !DILocalVariable(name: "arg", arg: 3, scope: !1458, file: !410, line: 252, type: !72)
!1467 = !DILocalVariable(name: "argsize", arg: 4, scope: !1458, file: !410, line: 252, type: !97)
!1468 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1458, file: !410, line: 253, type: !433)
!1469 = !DILocalVariable(name: "flags", arg: 6, scope: !1458, file: !410, line: 253, type: !95)
!1470 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1458, file: !410, line: 254, type: !1461)
!1471 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1458, file: !410, line: 255, type: !72)
!1472 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1458, file: !410, line: 256, type: !72)
!1473 = !DILocalVariable(name: "unibyte_locale", scope: !1458, file: !410, line: 258, type: !217)
!1474 = !DILocalVariable(name: "len", scope: !1458, file: !410, line: 260, type: !97)
!1475 = !DILocalVariable(name: "orig_buffersize", scope: !1458, file: !410, line: 261, type: !97)
!1476 = !DILocalVariable(name: "quote_string", scope: !1458, file: !410, line: 262, type: !72)
!1477 = !DILocalVariable(name: "quote_string_len", scope: !1458, file: !410, line: 263, type: !97)
!1478 = !DILocalVariable(name: "backslash_escapes", scope: !1458, file: !410, line: 264, type: !217)
!1479 = !DILocalVariable(name: "elide_outer_quotes", scope: !1458, file: !410, line: 265, type: !217)
!1480 = !DILocalVariable(name: "encountered_single_quote", scope: !1458, file: !410, line: 266, type: !217)
!1481 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1458, file: !410, line: 267, type: !217)
!1482 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1458, file: !410, line: 309, type: !217)
!1483 = !DILocalVariable(name: "lq", scope: !1484, file: !410, line: 361, type: !72)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !410, line: 361, column: 11)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !410, line: 360, column: 13)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !410, line: 333, column: 7)
!1487 = distinct !DILexicalBlock(scope: !1458, file: !410, line: 312, column: 5)
!1488 = !DILocalVariable(name: "i", scope: !1489, file: !410, line: 395, type: !97)
!1489 = distinct !DILexicalBlock(scope: !1458, file: !410, line: 395, column: 3)
!1490 = !DILocalVariable(name: "is_right_quote", scope: !1491, file: !410, line: 397, type: !217)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !410, line: 396, column: 5)
!1492 = distinct !DILexicalBlock(scope: !1489, file: !410, line: 395, column: 3)
!1493 = !DILocalVariable(name: "escaping", scope: !1491, file: !410, line: 398, type: !217)
!1494 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1491, file: !410, line: 399, type: !217)
!1495 = !DILocalVariable(name: "c", scope: !1491, file: !410, line: 417, type: !100)
!1496 = !DILocalVariable(name: "m", scope: !1497, file: !410, line: 598, type: !97)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !410, line: 596, column: 11)
!1498 = distinct !DILexicalBlock(scope: !1491, file: !410, line: 419, column: 9)
!1499 = !DILocalVariable(name: "printable", scope: !1497, file: !410, line: 600, type: !217)
!1500 = !DILocalVariable(name: "mbs", scope: !1501, file: !410, line: 609, type: !494)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !410, line: 608, column: 15)
!1502 = distinct !DILexicalBlock(scope: !1497, file: !410, line: 602, column: 17)
!1503 = !DILocalVariable(name: "w", scope: !1504, file: !410, line: 618, type: !390)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !410, line: 617, column: 19)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !410, line: 616, column: 17)
!1506 = distinct !DILexicalBlock(scope: !1501, file: !410, line: 616, column: 17)
!1507 = !DILocalVariable(name: "bytes", scope: !1504, file: !410, line: 619, type: !97)
!1508 = !DILocalVariable(name: "j", scope: !1509, file: !410, line: 648, type: !97)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !410, line: 648, column: 29)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !410, line: 647, column: 27)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !410, line: 645, column: 29)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !410, line: 636, column: 23)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !410, line: 628, column: 30)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !410, line: 623, column: 30)
!1515 = distinct !DILexicalBlock(scope: !1504, file: !410, line: 621, column: 25)
!1516 = !DILocalVariable(name: "ilim", scope: !1517, file: !410, line: 674, type: !97)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !410, line: 671, column: 15)
!1518 = distinct !DILexicalBlock(scope: !1497, file: !410, line: 670, column: 17)
!1519 = !DILabel(scope: !1458, name: "process_input", file: !410, line: 308)
!1520 = !DILabel(scope: !1521, name: "c_and_shell_escape", file: !410, line: 502)
!1521 = distinct !DILexicalBlock(scope: !1498, file: !410, line: 478, column: 9)
!1522 = !DILabel(scope: !1521, name: "c_escape", file: !410, line: 507)
!1523 = !DILabel(scope: !1491, name: "store_escape", file: !410, line: 709)
!1524 = !DILabel(scope: !1491, name: "store_c", file: !410, line: 712)
!1525 = !DILabel(scope: !1458, name: "force_outer_quoting_style", file: !410, line: 753)
!1526 = !DILocation(line: 0, scope: !1458)
!1527 = !DILocation(line: 258, column: 25, scope: !1458)
!1528 = !DILocation(line: 258, column: 36, scope: !1458)
!1529 = !DILocation(line: 267, column: 3, scope: !1458)
!1530 = !DILocation(line: 261, column: 10, scope: !1458)
!1531 = !DILocation(line: 262, column: 15, scope: !1458)
!1532 = !DILocation(line: 263, column: 10, scope: !1458)
!1533 = !DILocation(line: 308, column: 2, scope: !1458)
!1534 = !DILocation(line: 311, column: 3, scope: !1458)
!1535 = !DILocation(line: 318, column: 11, scope: !1487)
!1536 = !DILocation(line: 319, column: 9, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !410, line: 319, column: 9)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !410, line: 319, column: 9)
!1539 = distinct !DILexicalBlock(scope: !1487, file: !410, line: 318, column: 11)
!1540 = !DILocation(line: 319, column: 9, scope: !1538)
!1541 = !DILocation(line: 0, scope: !485, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 357, column: 26, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !410, line: 335, column: 11)
!1544 = distinct !DILexicalBlock(scope: !1486, file: !410, line: 334, column: 13)
!1545 = !DILocation(line: 199, column: 29, scope: !485, inlinedAt: !1542)
!1546 = !DILocation(line: 201, column: 19, scope: !1547, inlinedAt: !1542)
!1547 = distinct !DILexicalBlock(scope: !485, file: !410, line: 201, column: 7)
!1548 = !DILocation(line: 201, column: 7, scope: !485, inlinedAt: !1542)
!1549 = !DILocation(line: 229, column: 3, scope: !485, inlinedAt: !1542)
!1550 = !DILocation(line: 230, column: 3, scope: !485, inlinedAt: !1542)
!1551 = !DILocation(line: 230, column: 13, scope: !485, inlinedAt: !1542)
!1552 = !DILocalVariable(name: "ps", arg: 1, scope: !1553, file: !1305, line: 1135, type: !1556)
!1553 = distinct !DISubprogram(name: "mbszero", scope: !1305, file: !1305, line: 1135, type: !1554, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1557)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{null, !1556}
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!1557 = !{!1552}
!1558 = !DILocation(line: 0, scope: !1553, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 230, column: 18, scope: !485, inlinedAt: !1542)
!1560 = !DILocalVariable(name: "__dest", arg: 1, scope: !1561, file: !1314, line: 57, type: !94)
!1561 = distinct !DISubprogram(name: "memset", scope: !1314, file: !1314, line: 57, type: !1315, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1562)
!1562 = !{!1560, !1563, !1564}
!1563 = !DILocalVariable(name: "__ch", arg: 2, scope: !1561, file: !1314, line: 57, type: !95)
!1564 = !DILocalVariable(name: "__len", arg: 3, scope: !1561, file: !1314, line: 57, type: !97)
!1565 = !DILocation(line: 0, scope: !1561, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 1137, column: 3, scope: !1553, inlinedAt: !1559)
!1567 = !DILocation(line: 59, column: 10, scope: !1561, inlinedAt: !1566)
!1568 = !DILocation(line: 231, column: 7, scope: !1569, inlinedAt: !1542)
!1569 = distinct !DILexicalBlock(scope: !485, file: !410, line: 231, column: 7)
!1570 = !DILocation(line: 231, column: 40, scope: !1569, inlinedAt: !1542)
!1571 = !DILocation(line: 231, column: 45, scope: !1569, inlinedAt: !1542)
!1572 = !DILocation(line: 235, column: 1, scope: !485, inlinedAt: !1542)
!1573 = !DILocation(line: 0, scope: !485, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 358, column: 27, scope: !1543)
!1575 = !DILocation(line: 199, column: 29, scope: !485, inlinedAt: !1574)
!1576 = !DILocation(line: 201, column: 19, scope: !1547, inlinedAt: !1574)
!1577 = !DILocation(line: 201, column: 7, scope: !485, inlinedAt: !1574)
!1578 = !DILocation(line: 229, column: 3, scope: !485, inlinedAt: !1574)
!1579 = !DILocation(line: 230, column: 3, scope: !485, inlinedAt: !1574)
!1580 = !DILocation(line: 230, column: 13, scope: !485, inlinedAt: !1574)
!1581 = !DILocation(line: 0, scope: !1553, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 230, column: 18, scope: !485, inlinedAt: !1574)
!1583 = !DILocation(line: 0, scope: !1561, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 1137, column: 3, scope: !1553, inlinedAt: !1582)
!1585 = !DILocation(line: 59, column: 10, scope: !1561, inlinedAt: !1584)
!1586 = !DILocation(line: 231, column: 7, scope: !1569, inlinedAt: !1574)
!1587 = !DILocation(line: 231, column: 40, scope: !1569, inlinedAt: !1574)
!1588 = !DILocation(line: 231, column: 45, scope: !1569, inlinedAt: !1574)
!1589 = !DILocation(line: 235, column: 1, scope: !485, inlinedAt: !1574)
!1590 = !DILocation(line: 360, column: 13, scope: !1486)
!1591 = !DILocation(line: 0, scope: !1484)
!1592 = !DILocation(line: 361, column: 45, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1484, file: !410, line: 361, column: 11)
!1594 = !DILocation(line: 361, column: 11, scope: !1484)
!1595 = !DILocation(line: 362, column: 13, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !410, line: 362, column: 13)
!1597 = distinct !DILexicalBlock(scope: !1593, file: !410, line: 362, column: 13)
!1598 = !DILocation(line: 362, column: 13, scope: !1597)
!1599 = !DILocation(line: 361, column: 52, scope: !1593)
!1600 = distinct !{!1600, !1594, !1601, !793}
!1601 = !DILocation(line: 362, column: 13, scope: !1484)
!1602 = !DILocation(line: 260, column: 10, scope: !1458)
!1603 = !DILocation(line: 365, column: 28, scope: !1486)
!1604 = !DILocation(line: 367, column: 7, scope: !1487)
!1605 = !DILocation(line: 370, column: 7, scope: !1487)
!1606 = !DILocation(line: 376, column: 11, scope: !1487)
!1607 = !DILocation(line: 381, column: 11, scope: !1487)
!1608 = !DILocation(line: 382, column: 9, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !410, line: 382, column: 9)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !410, line: 382, column: 9)
!1611 = distinct !DILexicalBlock(scope: !1487, file: !410, line: 381, column: 11)
!1612 = !DILocation(line: 382, column: 9, scope: !1610)
!1613 = !DILocation(line: 389, column: 7, scope: !1487)
!1614 = !DILocation(line: 392, column: 7, scope: !1487)
!1615 = !DILocation(line: 0, scope: !1489)
!1616 = !DILocation(line: 395, column: 8, scope: !1489)
!1617 = !DILocation(line: 395, scope: !1489)
!1618 = !DILocation(line: 395, column: 34, scope: !1492)
!1619 = !DILocation(line: 395, column: 26, scope: !1492)
!1620 = !DILocation(line: 395, column: 48, scope: !1492)
!1621 = !DILocation(line: 395, column: 55, scope: !1492)
!1622 = !DILocation(line: 395, column: 3, scope: !1489)
!1623 = !DILocation(line: 395, column: 67, scope: !1492)
!1624 = !DILocation(line: 0, scope: !1491)
!1625 = !DILocation(line: 402, column: 11, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1491, file: !410, line: 401, column: 11)
!1627 = !DILocation(line: 404, column: 17, scope: !1626)
!1628 = !DILocation(line: 405, column: 39, scope: !1626)
!1629 = !DILocation(line: 409, column: 32, scope: !1626)
!1630 = !DILocation(line: 405, column: 19, scope: !1626)
!1631 = !DILocation(line: 405, column: 15, scope: !1626)
!1632 = !DILocation(line: 410, column: 11, scope: !1626)
!1633 = !DILocation(line: 410, column: 25, scope: !1626)
!1634 = !DILocalVariable(name: "__s1", arg: 1, scope: !1635, file: !759, line: 974, type: !926)
!1635 = distinct !DISubprogram(name: "memeq", scope: !759, file: !759, line: 974, type: !1275, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1636)
!1636 = !{!1634, !1637, !1638}
!1637 = !DILocalVariable(name: "__s2", arg: 2, scope: !1635, file: !759, line: 974, type: !926)
!1638 = !DILocalVariable(name: "__n", arg: 3, scope: !1635, file: !759, line: 974, type: !97)
!1639 = !DILocation(line: 0, scope: !1635, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 410, column: 14, scope: !1626)
!1641 = !DILocation(line: 976, column: 11, scope: !1635, inlinedAt: !1640)
!1642 = !DILocation(line: 976, column: 10, scope: !1635, inlinedAt: !1640)
!1643 = !DILocation(line: 401, column: 11, scope: !1491)
!1644 = !DILocation(line: 417, column: 25, scope: !1491)
!1645 = !DILocation(line: 418, column: 7, scope: !1491)
!1646 = !DILocation(line: 421, column: 15, scope: !1498)
!1647 = !DILocation(line: 423, column: 15, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !410, line: 423, column: 15)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !410, line: 422, column: 13)
!1650 = distinct !DILexicalBlock(scope: !1498, file: !410, line: 421, column: 15)
!1651 = !DILocation(line: 423, column: 15, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1648, file: !410, line: 423, column: 15)
!1653 = !DILocation(line: 423, column: 15, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !410, line: 423, column: 15)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !410, line: 423, column: 15)
!1656 = distinct !DILexicalBlock(scope: !1652, file: !410, line: 423, column: 15)
!1657 = !DILocation(line: 423, column: 15, scope: !1655)
!1658 = !DILocation(line: 423, column: 15, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !410, line: 423, column: 15)
!1660 = distinct !DILexicalBlock(scope: !1656, file: !410, line: 423, column: 15)
!1661 = !DILocation(line: 423, column: 15, scope: !1660)
!1662 = !DILocation(line: 423, column: 15, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !410, line: 423, column: 15)
!1664 = distinct !DILexicalBlock(scope: !1656, file: !410, line: 423, column: 15)
!1665 = !DILocation(line: 423, column: 15, scope: !1664)
!1666 = !DILocation(line: 423, column: 15, scope: !1656)
!1667 = !DILocation(line: 423, column: 15, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !410, line: 423, column: 15)
!1669 = distinct !DILexicalBlock(scope: !1648, file: !410, line: 423, column: 15)
!1670 = !DILocation(line: 423, column: 15, scope: !1669)
!1671 = !DILocation(line: 431, column: 19, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1649, file: !410, line: 430, column: 19)
!1673 = !DILocation(line: 431, column: 24, scope: !1672)
!1674 = !DILocation(line: 431, column: 28, scope: !1672)
!1675 = !DILocation(line: 431, column: 38, scope: !1672)
!1676 = !DILocation(line: 431, column: 48, scope: !1672)
!1677 = !DILocation(line: 431, column: 59, scope: !1672)
!1678 = !DILocation(line: 433, column: 19, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !410, line: 433, column: 19)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !410, line: 433, column: 19)
!1681 = distinct !DILexicalBlock(scope: !1672, file: !410, line: 432, column: 17)
!1682 = !DILocation(line: 433, column: 19, scope: !1680)
!1683 = !DILocation(line: 434, column: 19, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !410, line: 434, column: 19)
!1685 = distinct !DILexicalBlock(scope: !1681, file: !410, line: 434, column: 19)
!1686 = !DILocation(line: 434, column: 19, scope: !1685)
!1687 = !DILocation(line: 435, column: 17, scope: !1681)
!1688 = !DILocation(line: 442, column: 20, scope: !1650)
!1689 = !DILocation(line: 447, column: 11, scope: !1498)
!1690 = !DILocation(line: 450, column: 19, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1498, file: !410, line: 448, column: 13)
!1692 = !DILocation(line: 456, column: 19, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1691, file: !410, line: 455, column: 19)
!1694 = !DILocation(line: 456, column: 24, scope: !1693)
!1695 = !DILocation(line: 456, column: 28, scope: !1693)
!1696 = !DILocation(line: 456, column: 38, scope: !1693)
!1697 = !DILocation(line: 456, column: 47, scope: !1693)
!1698 = !DILocation(line: 456, column: 41, scope: !1693)
!1699 = !DILocation(line: 456, column: 52, scope: !1693)
!1700 = !DILocation(line: 455, column: 19, scope: !1691)
!1701 = !DILocation(line: 457, column: 25, scope: !1693)
!1702 = !DILocation(line: 457, column: 17, scope: !1693)
!1703 = !DILocation(line: 464, column: 25, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1693, file: !410, line: 458, column: 19)
!1705 = !DILocation(line: 468, column: 21, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !410, line: 468, column: 21)
!1707 = distinct !DILexicalBlock(scope: !1704, file: !410, line: 468, column: 21)
!1708 = !DILocation(line: 468, column: 21, scope: !1707)
!1709 = !DILocation(line: 469, column: 21, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !410, line: 469, column: 21)
!1711 = distinct !DILexicalBlock(scope: !1704, file: !410, line: 469, column: 21)
!1712 = !DILocation(line: 469, column: 21, scope: !1711)
!1713 = !DILocation(line: 470, column: 21, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !410, line: 470, column: 21)
!1715 = distinct !DILexicalBlock(scope: !1704, file: !410, line: 470, column: 21)
!1716 = !DILocation(line: 470, column: 21, scope: !1715)
!1717 = !DILocation(line: 471, column: 21, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !410, line: 471, column: 21)
!1719 = distinct !DILexicalBlock(scope: !1704, file: !410, line: 471, column: 21)
!1720 = !DILocation(line: 471, column: 21, scope: !1719)
!1721 = !DILocation(line: 472, column: 21, scope: !1704)
!1722 = !DILocation(line: 482, column: 33, scope: !1521)
!1723 = !DILocation(line: 483, column: 33, scope: !1521)
!1724 = !DILocation(line: 485, column: 33, scope: !1521)
!1725 = !DILocation(line: 486, column: 33, scope: !1521)
!1726 = !DILocation(line: 487, column: 33, scope: !1521)
!1727 = !DILocation(line: 490, column: 17, scope: !1521)
!1728 = !DILocation(line: 492, column: 21, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !410, line: 491, column: 15)
!1730 = distinct !DILexicalBlock(scope: !1521, file: !410, line: 490, column: 17)
!1731 = !DILocation(line: 499, column: 35, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1521, file: !410, line: 499, column: 17)
!1733 = !DILocation(line: 0, scope: !1521)
!1734 = !DILocation(line: 502, column: 11, scope: !1521)
!1735 = !DILocation(line: 504, column: 17, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1521, file: !410, line: 503, column: 17)
!1737 = !DILocation(line: 507, column: 11, scope: !1521)
!1738 = !DILocation(line: 508, column: 17, scope: !1521)
!1739 = !DILocation(line: 517, column: 15, scope: !1498)
!1740 = !DILocation(line: 517, column: 40, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1498, file: !410, line: 517, column: 15)
!1742 = !DILocation(line: 517, column: 47, scope: !1741)
!1743 = !DILocation(line: 517, column: 18, scope: !1741)
!1744 = !DILocation(line: 521, column: 17, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1498, file: !410, line: 521, column: 15)
!1746 = !DILocation(line: 521, column: 15, scope: !1498)
!1747 = !DILocation(line: 525, column: 11, scope: !1498)
!1748 = !DILocation(line: 537, column: 15, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1498, file: !410, line: 536, column: 15)
!1750 = !DILocation(line: 536, column: 15, scope: !1498)
!1751 = !DILocation(line: 544, column: 15, scope: !1498)
!1752 = !DILocation(line: 546, column: 19, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !410, line: 545, column: 13)
!1754 = distinct !DILexicalBlock(scope: !1498, file: !410, line: 544, column: 15)
!1755 = !DILocation(line: 549, column: 19, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1753, file: !410, line: 549, column: 19)
!1757 = !DILocation(line: 549, column: 30, scope: !1756)
!1758 = !DILocation(line: 558, column: 15, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !410, line: 558, column: 15)
!1760 = distinct !DILexicalBlock(scope: !1753, file: !410, line: 558, column: 15)
!1761 = !DILocation(line: 558, column: 15, scope: !1760)
!1762 = !DILocation(line: 559, column: 15, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !410, line: 559, column: 15)
!1764 = distinct !DILexicalBlock(scope: !1753, file: !410, line: 559, column: 15)
!1765 = !DILocation(line: 559, column: 15, scope: !1764)
!1766 = !DILocation(line: 560, column: 15, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !410, line: 560, column: 15)
!1768 = distinct !DILexicalBlock(scope: !1753, file: !410, line: 560, column: 15)
!1769 = !DILocation(line: 560, column: 15, scope: !1768)
!1770 = !DILocation(line: 562, column: 13, scope: !1753)
!1771 = !DILocation(line: 602, column: 17, scope: !1497)
!1772 = !DILocation(line: 0, scope: !1497)
!1773 = !DILocation(line: 605, column: 29, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1502, file: !410, line: 603, column: 15)
!1775 = !DILocation(line: 605, column: 41, scope: !1774)
!1776 = !DILocation(line: 606, column: 15, scope: !1774)
!1777 = !DILocation(line: 609, column: 17, scope: !1501)
!1778 = !DILocation(line: 609, column: 27, scope: !1501)
!1779 = !DILocation(line: 0, scope: !1553, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 609, column: 32, scope: !1501)
!1781 = !DILocation(line: 0, scope: !1561, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 1137, column: 3, scope: !1553, inlinedAt: !1780)
!1783 = !DILocation(line: 59, column: 10, scope: !1561, inlinedAt: !1782)
!1784 = !DILocation(line: 613, column: 29, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1501, file: !410, line: 613, column: 21)
!1786 = !DILocation(line: 613, column: 21, scope: !1501)
!1787 = !DILocation(line: 614, column: 29, scope: !1785)
!1788 = !DILocation(line: 614, column: 19, scope: !1785)
!1789 = !DILocation(line: 618, column: 21, scope: !1504)
!1790 = !DILocation(line: 620, column: 54, scope: !1504)
!1791 = !DILocation(line: 0, scope: !1504)
!1792 = !DILocation(line: 619, column: 36, scope: !1504)
!1793 = !DILocation(line: 621, column: 25, scope: !1504)
!1794 = !DILocation(line: 631, column: 38, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1513, file: !410, line: 629, column: 23)
!1796 = !DILocation(line: 631, column: 48, scope: !1795)
!1797 = !DILocation(line: 626, column: 25, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1514, file: !410, line: 624, column: 23)
!1799 = !DILocation(line: 631, column: 51, scope: !1795)
!1800 = !DILocation(line: 631, column: 25, scope: !1795)
!1801 = !DILocation(line: 632, column: 28, scope: !1795)
!1802 = !DILocation(line: 631, column: 34, scope: !1795)
!1803 = distinct !{!1803, !1800, !1801, !793}
!1804 = !DILocation(line: 646, column: 29, scope: !1511)
!1805 = !DILocation(line: 0, scope: !1509)
!1806 = !DILocation(line: 649, column: 49, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1509, file: !410, line: 648, column: 29)
!1808 = !DILocation(line: 649, column: 39, scope: !1807)
!1809 = !DILocation(line: 649, column: 31, scope: !1807)
!1810 = !DILocation(line: 648, column: 60, scope: !1807)
!1811 = !DILocation(line: 648, column: 50, scope: !1807)
!1812 = !DILocation(line: 648, column: 29, scope: !1509)
!1813 = distinct !{!1813, !1812, !1814, !793}
!1814 = !DILocation(line: 654, column: 33, scope: !1509)
!1815 = !DILocation(line: 657, column: 43, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1512, file: !410, line: 657, column: 29)
!1817 = !DILocalVariable(name: "wc", arg: 1, scope: !1818, file: !1819, line: 865, type: !1822)
!1818 = distinct !DISubprogram(name: "c32isprint", scope: !1819, file: !1819, line: 865, type: !1820, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1824)
!1819 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!95, !1822}
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1823, line: 20, baseType: !78)
!1823 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1824 = !{!1817}
!1825 = !DILocation(line: 0, scope: !1818, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 657, column: 31, scope: !1816)
!1827 = !DILocation(line: 871, column: 10, scope: !1818, inlinedAt: !1826)
!1828 = !DILocation(line: 657, column: 31, scope: !1816)
!1829 = !DILocation(line: 664, column: 23, scope: !1504)
!1830 = !DILocation(line: 665, column: 19, scope: !1505)
!1831 = !DILocation(line: 666, column: 15, scope: !1502)
!1832 = !DILocation(line: 753, column: 2, scope: !1458)
!1833 = !DILocation(line: 756, column: 51, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1458, file: !410, line: 756, column: 7)
!1835 = !DILocation(line: 0, scope: !1502)
!1836 = !DILocation(line: 670, column: 19, scope: !1518)
!1837 = !DILocation(line: 670, column: 23, scope: !1518)
!1838 = !DILocation(line: 674, column: 33, scope: !1517)
!1839 = !DILocation(line: 0, scope: !1517)
!1840 = !DILocation(line: 676, column: 17, scope: !1517)
!1841 = !DILocation(line: 398, column: 12, scope: !1491)
!1842 = !DILocation(line: 678, column: 43, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !410, line: 678, column: 25)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !410, line: 677, column: 19)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !410, line: 676, column: 17)
!1846 = distinct !DILexicalBlock(scope: !1517, file: !410, line: 676, column: 17)
!1847 = !DILocation(line: 680, column: 25, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !410, line: 680, column: 25)
!1849 = distinct !DILexicalBlock(scope: !1843, file: !410, line: 679, column: 23)
!1850 = !DILocation(line: 680, column: 25, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1848, file: !410, line: 680, column: 25)
!1852 = !DILocation(line: 680, column: 25, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !410, line: 680, column: 25)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !410, line: 680, column: 25)
!1855 = distinct !DILexicalBlock(scope: !1851, file: !410, line: 680, column: 25)
!1856 = !DILocation(line: 680, column: 25, scope: !1854)
!1857 = !DILocation(line: 680, column: 25, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !410, line: 680, column: 25)
!1859 = distinct !DILexicalBlock(scope: !1855, file: !410, line: 680, column: 25)
!1860 = !DILocation(line: 680, column: 25, scope: !1859)
!1861 = !DILocation(line: 680, column: 25, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !410, line: 680, column: 25)
!1863 = distinct !DILexicalBlock(scope: !1855, file: !410, line: 680, column: 25)
!1864 = !DILocation(line: 680, column: 25, scope: !1863)
!1865 = !DILocation(line: 680, column: 25, scope: !1855)
!1866 = !DILocation(line: 680, column: 25, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !410, line: 680, column: 25)
!1868 = distinct !DILexicalBlock(scope: !1848, file: !410, line: 680, column: 25)
!1869 = !DILocation(line: 680, column: 25, scope: !1868)
!1870 = !DILocation(line: 681, column: 25, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !410, line: 681, column: 25)
!1872 = distinct !DILexicalBlock(scope: !1849, file: !410, line: 681, column: 25)
!1873 = !DILocation(line: 681, column: 25, scope: !1872)
!1874 = !DILocation(line: 682, column: 25, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !410, line: 682, column: 25)
!1876 = distinct !DILexicalBlock(scope: !1849, file: !410, line: 682, column: 25)
!1877 = !DILocation(line: 682, column: 25, scope: !1876)
!1878 = !DILocation(line: 683, column: 38, scope: !1849)
!1879 = !DILocation(line: 683, column: 33, scope: !1849)
!1880 = !DILocation(line: 684, column: 23, scope: !1849)
!1881 = !DILocation(line: 685, column: 30, scope: !1843)
!1882 = !DILocation(line: 687, column: 25, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !410, line: 687, column: 25)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !410, line: 687, column: 25)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !410, line: 686, column: 23)
!1886 = distinct !DILexicalBlock(scope: !1843, file: !410, line: 685, column: 30)
!1887 = !DILocation(line: 687, column: 25, scope: !1884)
!1888 = !DILocation(line: 689, column: 23, scope: !1885)
!1889 = !DILocation(line: 690, column: 35, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1844, file: !410, line: 690, column: 25)
!1891 = !DILocation(line: 690, column: 30, scope: !1890)
!1892 = !DILocation(line: 690, column: 25, scope: !1844)
!1893 = !DILocation(line: 692, column: 21, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !410, line: 692, column: 21)
!1895 = distinct !DILexicalBlock(scope: !1844, file: !410, line: 692, column: 21)
!1896 = !DILocation(line: 692, column: 21, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !410, line: 692, column: 21)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !410, line: 692, column: 21)
!1899 = distinct !DILexicalBlock(scope: !1894, file: !410, line: 692, column: 21)
!1900 = !DILocation(line: 692, column: 21, scope: !1898)
!1901 = !DILocation(line: 692, column: 21, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !410, line: 692, column: 21)
!1903 = distinct !DILexicalBlock(scope: !1899, file: !410, line: 692, column: 21)
!1904 = !DILocation(line: 692, column: 21, scope: !1903)
!1905 = !DILocation(line: 692, column: 21, scope: !1899)
!1906 = !DILocation(line: 0, scope: !1844)
!1907 = !DILocation(line: 693, column: 21, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !410, line: 693, column: 21)
!1909 = distinct !DILexicalBlock(scope: !1844, file: !410, line: 693, column: 21)
!1910 = !DILocation(line: 693, column: 21, scope: !1909)
!1911 = !DILocation(line: 694, column: 25, scope: !1844)
!1912 = !DILocation(line: 676, column: 17, scope: !1845)
!1913 = distinct !{!1913, !1914, !1915}
!1914 = !DILocation(line: 676, column: 17, scope: !1846)
!1915 = !DILocation(line: 695, column: 19, scope: !1846)
!1916 = !DILocation(line: 409, column: 30, scope: !1626)
!1917 = !DILocation(line: 702, column: 34, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1491, file: !410, line: 702, column: 11)
!1919 = !DILocation(line: 704, column: 14, scope: !1918)
!1920 = !DILocation(line: 705, column: 14, scope: !1918)
!1921 = !DILocation(line: 705, column: 35, scope: !1918)
!1922 = !DILocation(line: 705, column: 17, scope: !1918)
!1923 = !DILocation(line: 705, column: 47, scope: !1918)
!1924 = !DILocation(line: 705, column: 65, scope: !1918)
!1925 = !DILocation(line: 706, column: 11, scope: !1918)
!1926 = !DILocation(line: 702, column: 11, scope: !1491)
!1927 = !DILocation(line: 395, column: 15, scope: !1489)
!1928 = !DILocation(line: 709, column: 5, scope: !1491)
!1929 = !DILocation(line: 710, column: 7, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1491, file: !410, line: 710, column: 7)
!1931 = !DILocation(line: 710, column: 7, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1930, file: !410, line: 710, column: 7)
!1933 = !DILocation(line: 710, column: 7, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !410, line: 710, column: 7)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !410, line: 710, column: 7)
!1936 = distinct !DILexicalBlock(scope: !1932, file: !410, line: 710, column: 7)
!1937 = !DILocation(line: 710, column: 7, scope: !1935)
!1938 = !DILocation(line: 710, column: 7, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !410, line: 710, column: 7)
!1940 = distinct !DILexicalBlock(scope: !1936, file: !410, line: 710, column: 7)
!1941 = !DILocation(line: 710, column: 7, scope: !1940)
!1942 = !DILocation(line: 710, column: 7, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !410, line: 710, column: 7)
!1944 = distinct !DILexicalBlock(scope: !1936, file: !410, line: 710, column: 7)
!1945 = !DILocation(line: 710, column: 7, scope: !1944)
!1946 = !DILocation(line: 710, column: 7, scope: !1936)
!1947 = !DILocation(line: 710, column: 7, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !410, line: 710, column: 7)
!1949 = distinct !DILexicalBlock(scope: !1930, file: !410, line: 710, column: 7)
!1950 = !DILocation(line: 710, column: 7, scope: !1949)
!1951 = !DILocation(line: 712, column: 5, scope: !1491)
!1952 = !DILocation(line: 713, column: 7, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !410, line: 713, column: 7)
!1954 = distinct !DILexicalBlock(scope: !1491, file: !410, line: 713, column: 7)
!1955 = !DILocation(line: 417, column: 21, scope: !1491)
!1956 = !DILocation(line: 713, column: 7, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !410, line: 713, column: 7)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !410, line: 713, column: 7)
!1959 = distinct !DILexicalBlock(scope: !1953, file: !410, line: 713, column: 7)
!1960 = !DILocation(line: 713, column: 7, scope: !1958)
!1961 = !DILocation(line: 713, column: 7, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !410, line: 713, column: 7)
!1963 = distinct !DILexicalBlock(scope: !1959, file: !410, line: 713, column: 7)
!1964 = !DILocation(line: 713, column: 7, scope: !1963)
!1965 = !DILocation(line: 713, column: 7, scope: !1959)
!1966 = !DILocation(line: 714, column: 7, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !410, line: 714, column: 7)
!1968 = distinct !DILexicalBlock(scope: !1491, file: !410, line: 714, column: 7)
!1969 = !DILocation(line: 714, column: 7, scope: !1968)
!1970 = !DILocation(line: 716, column: 11, scope: !1491)
!1971 = !DILocation(line: 718, column: 5, scope: !1492)
!1972 = !DILocation(line: 395, column: 82, scope: !1492)
!1973 = !DILocation(line: 395, column: 3, scope: !1492)
!1974 = distinct !{!1974, !1622, !1975, !793}
!1975 = !DILocation(line: 718, column: 5, scope: !1489)
!1976 = !DILocation(line: 720, column: 11, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1458, file: !410, line: 720, column: 7)
!1978 = !DILocation(line: 720, column: 16, scope: !1977)
!1979 = !DILocation(line: 728, column: 51, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1458, file: !410, line: 728, column: 7)
!1981 = !DILocation(line: 731, column: 11, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1980, file: !410, line: 730, column: 5)
!1983 = !DILocation(line: 732, column: 16, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1982, file: !410, line: 731, column: 11)
!1985 = !DILocation(line: 732, column: 9, scope: !1984)
!1986 = !DILocation(line: 736, column: 18, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1984, file: !410, line: 736, column: 16)
!1988 = !DILocation(line: 736, column: 29, scope: !1987)
!1989 = !DILocation(line: 745, column: 7, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1458, file: !410, line: 745, column: 7)
!1991 = !DILocation(line: 745, column: 20, scope: !1990)
!1992 = !DILocation(line: 746, column: 12, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !410, line: 746, column: 5)
!1994 = distinct !DILexicalBlock(scope: !1990, file: !410, line: 746, column: 5)
!1995 = !DILocation(line: 746, column: 5, scope: !1994)
!1996 = !DILocation(line: 747, column: 7, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !410, line: 747, column: 7)
!1998 = distinct !DILexicalBlock(scope: !1993, file: !410, line: 747, column: 7)
!1999 = !DILocation(line: 747, column: 7, scope: !1998)
!2000 = !DILocation(line: 746, column: 39, scope: !1993)
!2001 = distinct !{!2001, !1995, !2002, !793}
!2002 = !DILocation(line: 747, column: 7, scope: !1994)
!2003 = !DILocation(line: 749, column: 11, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1458, file: !410, line: 749, column: 7)
!2005 = !DILocation(line: 749, column: 7, scope: !1458)
!2006 = !DILocation(line: 750, column: 5, scope: !2004)
!2007 = !DILocation(line: 750, column: 17, scope: !2004)
!2008 = !DILocation(line: 756, column: 21, scope: !1834)
!2009 = !DILocation(line: 760, column: 42, scope: !1458)
!2010 = !DILocation(line: 758, column: 10, scope: !1458)
!2011 = !DILocation(line: 758, column: 3, scope: !1458)
!2012 = !DILocation(line: 762, column: 1, scope: !1458)
!2013 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !890, file: !890, line: 98, type: !2014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!97}
!2016 = !DISubprogram(name: "strlen", scope: !896, file: !896, line: 407, type: !2017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!99, !72}
!2019 = !DISubprogram(name: "iswprint", scope: !2020, file: !2020, line: 120, type: !1820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!2020 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2021 = distinct !DISubprogram(name: "quotearg_alloc", scope: !410, file: !410, line: 788, type: !2022, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2024)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!93, !72, !97, !1351}
!2024 = !{!2025, !2026, !2027}
!2025 = !DILocalVariable(name: "arg", arg: 1, scope: !2021, file: !410, line: 788, type: !72)
!2026 = !DILocalVariable(name: "argsize", arg: 2, scope: !2021, file: !410, line: 788, type: !97)
!2027 = !DILocalVariable(name: "o", arg: 3, scope: !2021, file: !410, line: 789, type: !1351)
!2028 = !DILocation(line: 0, scope: !2021)
!2029 = !DILocalVariable(name: "arg", arg: 1, scope: !2030, file: !410, line: 801, type: !72)
!2030 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !410, file: !410, line: 801, type: !2031, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2033)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!93, !72, !97, !663, !1351}
!2033 = !{!2029, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041}
!2034 = !DILocalVariable(name: "argsize", arg: 2, scope: !2030, file: !410, line: 801, type: !97)
!2035 = !DILocalVariable(name: "size", arg: 3, scope: !2030, file: !410, line: 801, type: !663)
!2036 = !DILocalVariable(name: "o", arg: 4, scope: !2030, file: !410, line: 802, type: !1351)
!2037 = !DILocalVariable(name: "p", scope: !2030, file: !410, line: 804, type: !1351)
!2038 = !DILocalVariable(name: "saved_errno", scope: !2030, file: !410, line: 805, type: !95)
!2039 = !DILocalVariable(name: "flags", scope: !2030, file: !410, line: 807, type: !95)
!2040 = !DILocalVariable(name: "bufsize", scope: !2030, file: !410, line: 808, type: !97)
!2041 = !DILocalVariable(name: "buf", scope: !2030, file: !410, line: 812, type: !93)
!2042 = !DILocation(line: 0, scope: !2030, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 791, column: 10, scope: !2021)
!2044 = !DILocation(line: 804, column: 37, scope: !2030, inlinedAt: !2043)
!2045 = !DILocation(line: 805, column: 21, scope: !2030, inlinedAt: !2043)
!2046 = !DILocation(line: 807, column: 18, scope: !2030, inlinedAt: !2043)
!2047 = !DILocation(line: 807, column: 24, scope: !2030, inlinedAt: !2043)
!2048 = !DILocation(line: 808, column: 72, scope: !2030, inlinedAt: !2043)
!2049 = !DILocation(line: 809, column: 56, scope: !2030, inlinedAt: !2043)
!2050 = !DILocation(line: 810, column: 49, scope: !2030, inlinedAt: !2043)
!2051 = !DILocation(line: 811, column: 49, scope: !2030, inlinedAt: !2043)
!2052 = !DILocation(line: 808, column: 20, scope: !2030, inlinedAt: !2043)
!2053 = !DILocation(line: 811, column: 62, scope: !2030, inlinedAt: !2043)
!2054 = !DILocation(line: 812, column: 15, scope: !2030, inlinedAt: !2043)
!2055 = !DILocation(line: 813, column: 60, scope: !2030, inlinedAt: !2043)
!2056 = !DILocation(line: 815, column: 32, scope: !2030, inlinedAt: !2043)
!2057 = !DILocation(line: 815, column: 47, scope: !2030, inlinedAt: !2043)
!2058 = !DILocation(line: 813, column: 3, scope: !2030, inlinedAt: !2043)
!2059 = !DILocation(line: 816, column: 9, scope: !2030, inlinedAt: !2043)
!2060 = !DILocation(line: 791, column: 3, scope: !2021)
!2061 = !DILocation(line: 0, scope: !2030)
!2062 = !DILocation(line: 804, column: 37, scope: !2030)
!2063 = !DILocation(line: 805, column: 21, scope: !2030)
!2064 = !DILocation(line: 807, column: 18, scope: !2030)
!2065 = !DILocation(line: 807, column: 27, scope: !2030)
!2066 = !DILocation(line: 807, column: 24, scope: !2030)
!2067 = !DILocation(line: 808, column: 72, scope: !2030)
!2068 = !DILocation(line: 809, column: 56, scope: !2030)
!2069 = !DILocation(line: 810, column: 49, scope: !2030)
!2070 = !DILocation(line: 811, column: 49, scope: !2030)
!2071 = !DILocation(line: 808, column: 20, scope: !2030)
!2072 = !DILocation(line: 811, column: 62, scope: !2030)
!2073 = !DILocation(line: 812, column: 15, scope: !2030)
!2074 = !DILocation(line: 813, column: 60, scope: !2030)
!2075 = !DILocation(line: 815, column: 32, scope: !2030)
!2076 = !DILocation(line: 815, column: 47, scope: !2030)
!2077 = !DILocation(line: 813, column: 3, scope: !2030)
!2078 = !DILocation(line: 816, column: 9, scope: !2030)
!2079 = !DILocation(line: 817, column: 7, scope: !2030)
!2080 = !DILocation(line: 818, column: 11, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2030, file: !410, line: 817, column: 7)
!2082 = !{!1167, !1167, i64 0}
!2083 = !DILocation(line: 818, column: 5, scope: !2081)
!2084 = !DILocation(line: 819, column: 3, scope: !2030)
!2085 = distinct !DISubprogram(name: "quotearg_free", scope: !410, file: !410, line: 837, type: !365, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2086)
!2086 = !{!2087, !2088}
!2087 = !DILocalVariable(name: "sv", scope: !2085, file: !410, line: 839, type: !508)
!2088 = !DILocalVariable(name: "i", scope: !2089, file: !410, line: 840, type: !95)
!2089 = distinct !DILexicalBlock(scope: !2085, file: !410, line: 840, column: 3)
!2090 = !DILocation(line: 839, column: 24, scope: !2085)
!2091 = !DILocation(line: 0, scope: !2085)
!2092 = !DILocation(line: 0, scope: !2089)
!2093 = !DILocation(line: 840, column: 21, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2089, file: !410, line: 840, column: 3)
!2095 = !DILocation(line: 840, column: 3, scope: !2089)
!2096 = !DILocation(line: 842, column: 13, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2085, file: !410, line: 842, column: 7)
!2098 = !{!2099, !725, i64 8}
!2099 = !{!"slotvec", !1167, i64 0, !725, i64 8}
!2100 = !DILocation(line: 842, column: 17, scope: !2097)
!2101 = !DILocation(line: 842, column: 7, scope: !2085)
!2102 = !DILocation(line: 841, column: 17, scope: !2094)
!2103 = !DILocation(line: 841, column: 5, scope: !2094)
!2104 = !DILocation(line: 840, column: 32, scope: !2094)
!2105 = distinct !{!2105, !2095, !2106, !793}
!2106 = !DILocation(line: 841, column: 20, scope: !2089)
!2107 = !DILocation(line: 844, column: 7, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2097, file: !410, line: 843, column: 5)
!2109 = !DILocation(line: 845, column: 21, scope: !2108)
!2110 = !{!2099, !1167, i64 0}
!2111 = !DILocation(line: 846, column: 20, scope: !2108)
!2112 = !DILocation(line: 847, column: 5, scope: !2108)
!2113 = !DILocation(line: 848, column: 10, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2085, file: !410, line: 848, column: 7)
!2115 = !DILocation(line: 848, column: 7, scope: !2085)
!2116 = !DILocation(line: 850, column: 7, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2114, file: !410, line: 849, column: 5)
!2118 = !DILocation(line: 851, column: 15, scope: !2117)
!2119 = !DILocation(line: 852, column: 5, scope: !2117)
!2120 = !DILocation(line: 853, column: 10, scope: !2085)
!2121 = !DILocation(line: 854, column: 1, scope: !2085)
!2122 = !DISubprogram(name: "free", scope: !1305, file: !1305, line: 786, type: !2123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{null, !94}
!2125 = distinct !DISubprogram(name: "quotearg_n", scope: !410, file: !410, line: 919, type: !893, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2126)
!2126 = !{!2127, !2128}
!2127 = !DILocalVariable(name: "n", arg: 1, scope: !2125, file: !410, line: 919, type: !95)
!2128 = !DILocalVariable(name: "arg", arg: 2, scope: !2125, file: !410, line: 919, type: !72)
!2129 = !DILocation(line: 0, scope: !2125)
!2130 = !DILocation(line: 921, column: 10, scope: !2125)
!2131 = !DILocation(line: 921, column: 3, scope: !2125)
!2132 = distinct !DISubprogram(name: "quotearg_n_options", scope: !410, file: !410, line: 866, type: !2133, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!93, !95, !72, !97, !1351}
!2135 = !{!2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2146, !2147, !2149, !2150, !2151}
!2136 = !DILocalVariable(name: "n", arg: 1, scope: !2132, file: !410, line: 866, type: !95)
!2137 = !DILocalVariable(name: "arg", arg: 2, scope: !2132, file: !410, line: 866, type: !72)
!2138 = !DILocalVariable(name: "argsize", arg: 3, scope: !2132, file: !410, line: 866, type: !97)
!2139 = !DILocalVariable(name: "options", arg: 4, scope: !2132, file: !410, line: 867, type: !1351)
!2140 = !DILocalVariable(name: "saved_errno", scope: !2132, file: !410, line: 869, type: !95)
!2141 = !DILocalVariable(name: "sv", scope: !2132, file: !410, line: 871, type: !508)
!2142 = !DILocalVariable(name: "nslots_max", scope: !2132, file: !410, line: 873, type: !95)
!2143 = !DILocalVariable(name: "preallocated", scope: !2144, file: !410, line: 879, type: !217)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !410, line: 878, column: 5)
!2145 = distinct !DILexicalBlock(scope: !2132, file: !410, line: 877, column: 7)
!2146 = !DILocalVariable(name: "new_nslots", scope: !2144, file: !410, line: 880, type: !676)
!2147 = !DILocalVariable(name: "size", scope: !2148, file: !410, line: 891, type: !97)
!2148 = distinct !DILexicalBlock(scope: !2132, file: !410, line: 890, column: 3)
!2149 = !DILocalVariable(name: "val", scope: !2148, file: !410, line: 892, type: !93)
!2150 = !DILocalVariable(name: "flags", scope: !2148, file: !410, line: 894, type: !95)
!2151 = !DILocalVariable(name: "qsize", scope: !2148, file: !410, line: 895, type: !97)
!2152 = !DILocation(line: 0, scope: !2132)
!2153 = !DILocation(line: 869, column: 21, scope: !2132)
!2154 = !DILocation(line: 871, column: 24, scope: !2132)
!2155 = !DILocation(line: 874, column: 17, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2132, file: !410, line: 874, column: 7)
!2157 = !DILocation(line: 875, column: 5, scope: !2156)
!2158 = !DILocation(line: 877, column: 7, scope: !2145)
!2159 = !DILocation(line: 877, column: 14, scope: !2145)
!2160 = !DILocation(line: 877, column: 7, scope: !2132)
!2161 = !DILocation(line: 879, column: 31, scope: !2144)
!2162 = !DILocation(line: 0, scope: !2144)
!2163 = !DILocation(line: 880, column: 7, scope: !2144)
!2164 = !DILocation(line: 880, column: 26, scope: !2144)
!2165 = !DILocation(line: 880, column: 13, scope: !2144)
!2166 = !DILocation(line: 882, column: 31, scope: !2144)
!2167 = !DILocation(line: 883, column: 33, scope: !2144)
!2168 = !DILocation(line: 883, column: 42, scope: !2144)
!2169 = !DILocation(line: 883, column: 31, scope: !2144)
!2170 = !DILocation(line: 882, column: 22, scope: !2144)
!2171 = !DILocation(line: 882, column: 15, scope: !2144)
!2172 = !DILocation(line: 884, column: 11, scope: !2144)
!2173 = !DILocation(line: 885, column: 15, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2144, file: !410, line: 884, column: 11)
!2175 = !{i64 0, i64 8, !2082, i64 8, i64 8, !724}
!2176 = !DILocation(line: 885, column: 9, scope: !2174)
!2177 = !DILocation(line: 886, column: 20, scope: !2144)
!2178 = !DILocation(line: 886, column: 18, scope: !2144)
!2179 = !DILocation(line: 886, column: 32, scope: !2144)
!2180 = !DILocation(line: 886, column: 43, scope: !2144)
!2181 = !DILocation(line: 886, column: 53, scope: !2144)
!2182 = !DILocation(line: 0, scope: !1561, inlinedAt: !2183)
!2183 = distinct !DILocation(line: 886, column: 7, scope: !2144)
!2184 = !DILocation(line: 59, column: 10, scope: !1561, inlinedAt: !2183)
!2185 = !DILocation(line: 887, column: 16, scope: !2144)
!2186 = !DILocation(line: 887, column: 14, scope: !2144)
!2187 = !DILocation(line: 888, column: 5, scope: !2145)
!2188 = !DILocation(line: 888, column: 5, scope: !2144)
!2189 = !DILocation(line: 891, column: 19, scope: !2148)
!2190 = !DILocation(line: 891, column: 25, scope: !2148)
!2191 = !DILocation(line: 0, scope: !2148)
!2192 = !DILocation(line: 892, column: 23, scope: !2148)
!2193 = !DILocation(line: 894, column: 26, scope: !2148)
!2194 = !DILocation(line: 894, column: 32, scope: !2148)
!2195 = !DILocation(line: 896, column: 55, scope: !2148)
!2196 = !DILocation(line: 897, column: 55, scope: !2148)
!2197 = !DILocation(line: 898, column: 55, scope: !2148)
!2198 = !DILocation(line: 899, column: 55, scope: !2148)
!2199 = !DILocation(line: 895, column: 20, scope: !2148)
!2200 = !DILocation(line: 901, column: 14, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2148, file: !410, line: 901, column: 9)
!2202 = !DILocation(line: 901, column: 9, scope: !2148)
!2203 = !DILocation(line: 903, column: 35, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !410, line: 902, column: 7)
!2205 = !DILocation(line: 903, column: 20, scope: !2204)
!2206 = !DILocation(line: 904, column: 17, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2204, file: !410, line: 904, column: 13)
!2208 = !DILocation(line: 904, column: 13, scope: !2204)
!2209 = !DILocation(line: 905, column: 11, scope: !2207)
!2210 = !DILocation(line: 906, column: 27, scope: !2204)
!2211 = !DILocation(line: 906, column: 19, scope: !2204)
!2212 = !DILocation(line: 907, column: 69, scope: !2204)
!2213 = !DILocation(line: 909, column: 44, scope: !2204)
!2214 = !DILocation(line: 910, column: 44, scope: !2204)
!2215 = !DILocation(line: 907, column: 9, scope: !2204)
!2216 = !DILocation(line: 911, column: 7, scope: !2204)
!2217 = !DILocation(line: 913, column: 11, scope: !2148)
!2218 = !DILocation(line: 914, column: 5, scope: !2148)
!2219 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !410, file: !410, line: 925, type: !2220, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2222)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!93, !95, !72, !97}
!2222 = !{!2223, !2224, !2225}
!2223 = !DILocalVariable(name: "n", arg: 1, scope: !2219, file: !410, line: 925, type: !95)
!2224 = !DILocalVariable(name: "arg", arg: 2, scope: !2219, file: !410, line: 925, type: !72)
!2225 = !DILocalVariable(name: "argsize", arg: 3, scope: !2219, file: !410, line: 925, type: !97)
!2226 = !DILocation(line: 0, scope: !2219)
!2227 = !DILocation(line: 927, column: 10, scope: !2219)
!2228 = !DILocation(line: 927, column: 3, scope: !2219)
!2229 = distinct !DISubprogram(name: "quotearg", scope: !410, file: !410, line: 931, type: !904, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2230)
!2230 = !{!2231}
!2231 = !DILocalVariable(name: "arg", arg: 1, scope: !2229, file: !410, line: 931, type: !72)
!2232 = !DILocation(line: 0, scope: !2229)
!2233 = !DILocation(line: 0, scope: !2125, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 933, column: 10, scope: !2229)
!2235 = !DILocation(line: 921, column: 10, scope: !2125, inlinedAt: !2234)
!2236 = !DILocation(line: 933, column: 3, scope: !2229)
!2237 = distinct !DISubprogram(name: "quotearg_mem", scope: !410, file: !410, line: 937, type: !2238, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2240)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!93, !72, !97}
!2240 = !{!2241, !2242}
!2241 = !DILocalVariable(name: "arg", arg: 1, scope: !2237, file: !410, line: 937, type: !72)
!2242 = !DILocalVariable(name: "argsize", arg: 2, scope: !2237, file: !410, line: 937, type: !97)
!2243 = !DILocation(line: 0, scope: !2237)
!2244 = !DILocation(line: 0, scope: !2219, inlinedAt: !2245)
!2245 = distinct !DILocation(line: 939, column: 10, scope: !2237)
!2246 = !DILocation(line: 927, column: 10, scope: !2219, inlinedAt: !2245)
!2247 = !DILocation(line: 939, column: 3, scope: !2237)
!2248 = distinct !DISubprogram(name: "quotearg_n_style", scope: !410, file: !410, line: 943, type: !2249, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2251)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!93, !95, !433, !72}
!2251 = !{!2252, !2253, !2254, !2255}
!2252 = !DILocalVariable(name: "n", arg: 1, scope: !2248, file: !410, line: 943, type: !95)
!2253 = !DILocalVariable(name: "s", arg: 2, scope: !2248, file: !410, line: 943, type: !433)
!2254 = !DILocalVariable(name: "arg", arg: 3, scope: !2248, file: !410, line: 943, type: !72)
!2255 = !DILocalVariable(name: "o", scope: !2248, file: !410, line: 945, type: !1352)
!2256 = !DILocation(line: 0, scope: !2248)
!2257 = !DILocation(line: 945, column: 3, scope: !2248)
!2258 = !DILocation(line: 945, column: 32, scope: !2248)
!2259 = !{!2260}
!2260 = distinct !{!2260, !2261, !"quoting_options_from_style: argument 0"}
!2261 = distinct !{!2261, !"quoting_options_from_style"}
!2262 = !DILocation(line: 945, column: 36, scope: !2248)
!2263 = !DILocalVariable(name: "style", arg: 1, scope: !2264, file: !410, line: 183, type: !433)
!2264 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !410, file: !410, line: 183, type: !2265, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!460, !433}
!2267 = !{!2263, !2268}
!2268 = !DILocalVariable(name: "o", scope: !2264, file: !410, line: 185, type: !460)
!2269 = !DILocation(line: 0, scope: !2264, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 945, column: 36, scope: !2248)
!2271 = !DILocation(line: 185, column: 26, scope: !2264, inlinedAt: !2270)
!2272 = !DILocation(line: 186, column: 13, scope: !2273, inlinedAt: !2270)
!2273 = distinct !DILexicalBlock(scope: !2264, file: !410, line: 186, column: 7)
!2274 = !DILocation(line: 186, column: 7, scope: !2264, inlinedAt: !2270)
!2275 = !DILocation(line: 187, column: 5, scope: !2273, inlinedAt: !2270)
!2276 = !DILocation(line: 188, column: 11, scope: !2264, inlinedAt: !2270)
!2277 = !DILocation(line: 946, column: 10, scope: !2248)
!2278 = !DILocation(line: 947, column: 1, scope: !2248)
!2279 = !DILocation(line: 946, column: 3, scope: !2248)
!2280 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !410, file: !410, line: 950, type: !2281, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2283)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!93, !95, !433, !72, !97}
!2283 = !{!2284, !2285, !2286, !2287, !2288}
!2284 = !DILocalVariable(name: "n", arg: 1, scope: !2280, file: !410, line: 950, type: !95)
!2285 = !DILocalVariable(name: "s", arg: 2, scope: !2280, file: !410, line: 950, type: !433)
!2286 = !DILocalVariable(name: "arg", arg: 3, scope: !2280, file: !410, line: 951, type: !72)
!2287 = !DILocalVariable(name: "argsize", arg: 4, scope: !2280, file: !410, line: 951, type: !97)
!2288 = !DILocalVariable(name: "o", scope: !2280, file: !410, line: 953, type: !1352)
!2289 = !DILocation(line: 0, scope: !2280)
!2290 = !DILocation(line: 953, column: 3, scope: !2280)
!2291 = !DILocation(line: 953, column: 32, scope: !2280)
!2292 = !{!2293}
!2293 = distinct !{!2293, !2294, !"quoting_options_from_style: argument 0"}
!2294 = distinct !{!2294, !"quoting_options_from_style"}
!2295 = !DILocation(line: 953, column: 36, scope: !2280)
!2296 = !DILocation(line: 0, scope: !2264, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 953, column: 36, scope: !2280)
!2298 = !DILocation(line: 185, column: 26, scope: !2264, inlinedAt: !2297)
!2299 = !DILocation(line: 186, column: 13, scope: !2273, inlinedAt: !2297)
!2300 = !DILocation(line: 186, column: 7, scope: !2264, inlinedAt: !2297)
!2301 = !DILocation(line: 187, column: 5, scope: !2273, inlinedAt: !2297)
!2302 = !DILocation(line: 188, column: 11, scope: !2264, inlinedAt: !2297)
!2303 = !DILocation(line: 954, column: 10, scope: !2280)
!2304 = !DILocation(line: 955, column: 1, scope: !2280)
!2305 = !DILocation(line: 954, column: 3, scope: !2280)
!2306 = distinct !DISubprogram(name: "quotearg_style", scope: !410, file: !410, line: 958, type: !2307, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2309)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!93, !433, !72}
!2309 = !{!2310, !2311}
!2310 = !DILocalVariable(name: "s", arg: 1, scope: !2306, file: !410, line: 958, type: !433)
!2311 = !DILocalVariable(name: "arg", arg: 2, scope: !2306, file: !410, line: 958, type: !72)
!2312 = !DILocation(line: 0, scope: !2306)
!2313 = !DILocation(line: 0, scope: !2248, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 960, column: 10, scope: !2306)
!2315 = !DILocation(line: 945, column: 3, scope: !2248, inlinedAt: !2314)
!2316 = !DILocation(line: 945, column: 32, scope: !2248, inlinedAt: !2314)
!2317 = !{!2318}
!2318 = distinct !{!2318, !2319, !"quoting_options_from_style: argument 0"}
!2319 = distinct !{!2319, !"quoting_options_from_style"}
!2320 = !DILocation(line: 945, column: 36, scope: !2248, inlinedAt: !2314)
!2321 = !DILocation(line: 0, scope: !2264, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 945, column: 36, scope: !2248, inlinedAt: !2314)
!2323 = !DILocation(line: 185, column: 26, scope: !2264, inlinedAt: !2322)
!2324 = !DILocation(line: 186, column: 13, scope: !2273, inlinedAt: !2322)
!2325 = !DILocation(line: 186, column: 7, scope: !2264, inlinedAt: !2322)
!2326 = !DILocation(line: 187, column: 5, scope: !2273, inlinedAt: !2322)
!2327 = !DILocation(line: 188, column: 11, scope: !2264, inlinedAt: !2322)
!2328 = !DILocation(line: 946, column: 10, scope: !2248, inlinedAt: !2314)
!2329 = !DILocation(line: 947, column: 1, scope: !2248, inlinedAt: !2314)
!2330 = !DILocation(line: 960, column: 3, scope: !2306)
!2331 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !410, file: !410, line: 964, type: !2332, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2334)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!93, !433, !72, !97}
!2334 = !{!2335, !2336, !2337}
!2335 = !DILocalVariable(name: "s", arg: 1, scope: !2331, file: !410, line: 964, type: !433)
!2336 = !DILocalVariable(name: "arg", arg: 2, scope: !2331, file: !410, line: 964, type: !72)
!2337 = !DILocalVariable(name: "argsize", arg: 3, scope: !2331, file: !410, line: 964, type: !97)
!2338 = !DILocation(line: 0, scope: !2331)
!2339 = !DILocation(line: 0, scope: !2280, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 966, column: 10, scope: !2331)
!2341 = !DILocation(line: 953, column: 3, scope: !2280, inlinedAt: !2340)
!2342 = !DILocation(line: 953, column: 32, scope: !2280, inlinedAt: !2340)
!2343 = !{!2344}
!2344 = distinct !{!2344, !2345, !"quoting_options_from_style: argument 0"}
!2345 = distinct !{!2345, !"quoting_options_from_style"}
!2346 = !DILocation(line: 953, column: 36, scope: !2280, inlinedAt: !2340)
!2347 = !DILocation(line: 0, scope: !2264, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 953, column: 36, scope: !2280, inlinedAt: !2340)
!2349 = !DILocation(line: 185, column: 26, scope: !2264, inlinedAt: !2348)
!2350 = !DILocation(line: 186, column: 13, scope: !2273, inlinedAt: !2348)
!2351 = !DILocation(line: 186, column: 7, scope: !2264, inlinedAt: !2348)
!2352 = !DILocation(line: 187, column: 5, scope: !2273, inlinedAt: !2348)
!2353 = !DILocation(line: 188, column: 11, scope: !2264, inlinedAt: !2348)
!2354 = !DILocation(line: 954, column: 10, scope: !2280, inlinedAt: !2340)
!2355 = !DILocation(line: 955, column: 1, scope: !2280, inlinedAt: !2340)
!2356 = !DILocation(line: 966, column: 3, scope: !2331)
!2357 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !410, file: !410, line: 970, type: !2358, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!93, !72, !97, !4}
!2360 = !{!2361, !2362, !2363, !2364}
!2361 = !DILocalVariable(name: "arg", arg: 1, scope: !2357, file: !410, line: 970, type: !72)
!2362 = !DILocalVariable(name: "argsize", arg: 2, scope: !2357, file: !410, line: 970, type: !97)
!2363 = !DILocalVariable(name: "ch", arg: 3, scope: !2357, file: !410, line: 970, type: !4)
!2364 = !DILocalVariable(name: "options", scope: !2357, file: !410, line: 972, type: !460)
!2365 = !DILocation(line: 0, scope: !2357)
!2366 = !DILocation(line: 972, column: 3, scope: !2357)
!2367 = !DILocation(line: 972, column: 26, scope: !2357)
!2368 = !DILocation(line: 973, column: 13, scope: !2357)
!2369 = !{i64 0, i64 4, !755, i64 4, i64 4, !746, i64 8, i64 32, !755, i64 40, i64 8, !724, i64 48, i64 8, !724}
!2370 = !DILocation(line: 0, scope: !1371, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 974, column: 3, scope: !2357)
!2372 = !DILocation(line: 147, column: 41, scope: !1371, inlinedAt: !2371)
!2373 = !DILocation(line: 147, column: 62, scope: !1371, inlinedAt: !2371)
!2374 = !DILocation(line: 147, column: 57, scope: !1371, inlinedAt: !2371)
!2375 = !DILocation(line: 148, column: 15, scope: !1371, inlinedAt: !2371)
!2376 = !DILocation(line: 149, column: 21, scope: !1371, inlinedAt: !2371)
!2377 = !DILocation(line: 149, column: 24, scope: !1371, inlinedAt: !2371)
!2378 = !DILocation(line: 150, column: 19, scope: !1371, inlinedAt: !2371)
!2379 = !DILocation(line: 150, column: 24, scope: !1371, inlinedAt: !2371)
!2380 = !DILocation(line: 150, column: 6, scope: !1371, inlinedAt: !2371)
!2381 = !DILocation(line: 975, column: 10, scope: !2357)
!2382 = !DILocation(line: 976, column: 1, scope: !2357)
!2383 = !DILocation(line: 975, column: 3, scope: !2357)
!2384 = distinct !DISubprogram(name: "quotearg_char", scope: !410, file: !410, line: 979, type: !2385, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!93, !72, !4}
!2387 = !{!2388, !2389}
!2388 = !DILocalVariable(name: "arg", arg: 1, scope: !2384, file: !410, line: 979, type: !72)
!2389 = !DILocalVariable(name: "ch", arg: 2, scope: !2384, file: !410, line: 979, type: !4)
!2390 = !DILocation(line: 0, scope: !2384)
!2391 = !DILocation(line: 0, scope: !2357, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 981, column: 10, scope: !2384)
!2393 = !DILocation(line: 972, column: 3, scope: !2357, inlinedAt: !2392)
!2394 = !DILocation(line: 972, column: 26, scope: !2357, inlinedAt: !2392)
!2395 = !DILocation(line: 973, column: 13, scope: !2357, inlinedAt: !2392)
!2396 = !DILocation(line: 0, scope: !1371, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 974, column: 3, scope: !2357, inlinedAt: !2392)
!2398 = !DILocation(line: 147, column: 41, scope: !1371, inlinedAt: !2397)
!2399 = !DILocation(line: 147, column: 62, scope: !1371, inlinedAt: !2397)
!2400 = !DILocation(line: 147, column: 57, scope: !1371, inlinedAt: !2397)
!2401 = !DILocation(line: 148, column: 15, scope: !1371, inlinedAt: !2397)
!2402 = !DILocation(line: 149, column: 21, scope: !1371, inlinedAt: !2397)
!2403 = !DILocation(line: 149, column: 24, scope: !1371, inlinedAt: !2397)
!2404 = !DILocation(line: 150, column: 19, scope: !1371, inlinedAt: !2397)
!2405 = !DILocation(line: 150, column: 24, scope: !1371, inlinedAt: !2397)
!2406 = !DILocation(line: 150, column: 6, scope: !1371, inlinedAt: !2397)
!2407 = !DILocation(line: 975, column: 10, scope: !2357, inlinedAt: !2392)
!2408 = !DILocation(line: 976, column: 1, scope: !2357, inlinedAt: !2392)
!2409 = !DILocation(line: 981, column: 3, scope: !2384)
!2410 = distinct !DISubprogram(name: "quotearg_colon", scope: !410, file: !410, line: 985, type: !904, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2411)
!2411 = !{!2412}
!2412 = !DILocalVariable(name: "arg", arg: 1, scope: !2410, file: !410, line: 985, type: !72)
!2413 = !DILocation(line: 0, scope: !2410)
!2414 = !DILocation(line: 0, scope: !2384, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 987, column: 10, scope: !2410)
!2416 = !DILocation(line: 0, scope: !2357, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 981, column: 10, scope: !2384, inlinedAt: !2415)
!2418 = !DILocation(line: 972, column: 3, scope: !2357, inlinedAt: !2417)
!2419 = !DILocation(line: 972, column: 26, scope: !2357, inlinedAt: !2417)
!2420 = !DILocation(line: 973, column: 13, scope: !2357, inlinedAt: !2417)
!2421 = !DILocation(line: 0, scope: !1371, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 974, column: 3, scope: !2357, inlinedAt: !2417)
!2423 = !DILocation(line: 147, column: 57, scope: !1371, inlinedAt: !2422)
!2424 = !DILocation(line: 149, column: 21, scope: !1371, inlinedAt: !2422)
!2425 = !DILocation(line: 150, column: 6, scope: !1371, inlinedAt: !2422)
!2426 = !DILocation(line: 975, column: 10, scope: !2357, inlinedAt: !2417)
!2427 = !DILocation(line: 976, column: 1, scope: !2357, inlinedAt: !2417)
!2428 = !DILocation(line: 987, column: 3, scope: !2410)
!2429 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !410, file: !410, line: 991, type: !2238, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2430)
!2430 = !{!2431, !2432}
!2431 = !DILocalVariable(name: "arg", arg: 1, scope: !2429, file: !410, line: 991, type: !72)
!2432 = !DILocalVariable(name: "argsize", arg: 2, scope: !2429, file: !410, line: 991, type: !97)
!2433 = !DILocation(line: 0, scope: !2429)
!2434 = !DILocation(line: 0, scope: !2357, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 993, column: 10, scope: !2429)
!2436 = !DILocation(line: 972, column: 3, scope: !2357, inlinedAt: !2435)
!2437 = !DILocation(line: 972, column: 26, scope: !2357, inlinedAt: !2435)
!2438 = !DILocation(line: 973, column: 13, scope: !2357, inlinedAt: !2435)
!2439 = !DILocation(line: 0, scope: !1371, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 974, column: 3, scope: !2357, inlinedAt: !2435)
!2441 = !DILocation(line: 147, column: 57, scope: !1371, inlinedAt: !2440)
!2442 = !DILocation(line: 149, column: 21, scope: !1371, inlinedAt: !2440)
!2443 = !DILocation(line: 150, column: 6, scope: !1371, inlinedAt: !2440)
!2444 = !DILocation(line: 975, column: 10, scope: !2357, inlinedAt: !2435)
!2445 = !DILocation(line: 976, column: 1, scope: !2357, inlinedAt: !2435)
!2446 = !DILocation(line: 993, column: 3, scope: !2429)
!2447 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !410, file: !410, line: 997, type: !2249, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2448)
!2448 = !{!2449, !2450, !2451, !2452}
!2449 = !DILocalVariable(name: "n", arg: 1, scope: !2447, file: !410, line: 997, type: !95)
!2450 = !DILocalVariable(name: "s", arg: 2, scope: !2447, file: !410, line: 997, type: !433)
!2451 = !DILocalVariable(name: "arg", arg: 3, scope: !2447, file: !410, line: 997, type: !72)
!2452 = !DILocalVariable(name: "options", scope: !2447, file: !410, line: 999, type: !460)
!2453 = !DILocation(line: 185, column: 26, scope: !2264, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 1000, column: 13, scope: !2447)
!2455 = !DILocation(line: 0, scope: !2447)
!2456 = !DILocation(line: 999, column: 3, scope: !2447)
!2457 = !DILocation(line: 999, column: 26, scope: !2447)
!2458 = !DILocation(line: 0, scope: !2264, inlinedAt: !2454)
!2459 = !DILocation(line: 186, column: 13, scope: !2273, inlinedAt: !2454)
!2460 = !DILocation(line: 186, column: 7, scope: !2264, inlinedAt: !2454)
!2461 = !DILocation(line: 187, column: 5, scope: !2273, inlinedAt: !2454)
!2462 = !{!2463}
!2463 = distinct !{!2463, !2464, !"quoting_options_from_style: argument 0"}
!2464 = distinct !{!2464, !"quoting_options_from_style"}
!2465 = !DILocation(line: 1000, column: 13, scope: !2447)
!2466 = !DILocation(line: 0, scope: !1371, inlinedAt: !2467)
!2467 = distinct !DILocation(line: 1001, column: 3, scope: !2447)
!2468 = !DILocation(line: 147, column: 57, scope: !1371, inlinedAt: !2467)
!2469 = !DILocation(line: 149, column: 21, scope: !1371, inlinedAt: !2467)
!2470 = !DILocation(line: 150, column: 6, scope: !1371, inlinedAt: !2467)
!2471 = !DILocation(line: 1002, column: 10, scope: !2447)
!2472 = !DILocation(line: 1003, column: 1, scope: !2447)
!2473 = !DILocation(line: 1002, column: 3, scope: !2447)
!2474 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !410, file: !410, line: 1006, type: !2475, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2477)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!93, !95, !72, !72, !72}
!2477 = !{!2478, !2479, !2480, !2481}
!2478 = !DILocalVariable(name: "n", arg: 1, scope: !2474, file: !410, line: 1006, type: !95)
!2479 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2474, file: !410, line: 1006, type: !72)
!2480 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2474, file: !410, line: 1007, type: !72)
!2481 = !DILocalVariable(name: "arg", arg: 4, scope: !2474, file: !410, line: 1007, type: !72)
!2482 = !DILocation(line: 0, scope: !2474)
!2483 = !DILocalVariable(name: "n", arg: 1, scope: !2484, file: !410, line: 1014, type: !95)
!2484 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !410, file: !410, line: 1014, type: !2485, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2487)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!93, !95, !72, !72, !72, !97}
!2487 = !{!2483, !2488, !2489, !2490, !2491, !2492}
!2488 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2484, file: !410, line: 1014, type: !72)
!2489 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2484, file: !410, line: 1015, type: !72)
!2490 = !DILocalVariable(name: "arg", arg: 4, scope: !2484, file: !410, line: 1016, type: !72)
!2491 = !DILocalVariable(name: "argsize", arg: 5, scope: !2484, file: !410, line: 1016, type: !97)
!2492 = !DILocalVariable(name: "o", scope: !2484, file: !410, line: 1018, type: !460)
!2493 = !DILocation(line: 0, scope: !2484, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 1009, column: 10, scope: !2474)
!2495 = !DILocation(line: 1018, column: 3, scope: !2484, inlinedAt: !2494)
!2496 = !DILocation(line: 1018, column: 26, scope: !2484, inlinedAt: !2494)
!2497 = !DILocation(line: 1018, column: 30, scope: !2484, inlinedAt: !2494)
!2498 = !DILocation(line: 0, scope: !1411, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 1019, column: 3, scope: !2484, inlinedAt: !2494)
!2500 = !DILocation(line: 174, column: 12, scope: !1411, inlinedAt: !2499)
!2501 = !DILocation(line: 175, column: 8, scope: !1424, inlinedAt: !2499)
!2502 = !DILocation(line: 175, column: 19, scope: !1424, inlinedAt: !2499)
!2503 = !DILocation(line: 176, column: 5, scope: !1424, inlinedAt: !2499)
!2504 = !DILocation(line: 177, column: 6, scope: !1411, inlinedAt: !2499)
!2505 = !DILocation(line: 177, column: 17, scope: !1411, inlinedAt: !2499)
!2506 = !DILocation(line: 178, column: 6, scope: !1411, inlinedAt: !2499)
!2507 = !DILocation(line: 178, column: 18, scope: !1411, inlinedAt: !2499)
!2508 = !DILocation(line: 1020, column: 10, scope: !2484, inlinedAt: !2494)
!2509 = !DILocation(line: 1021, column: 1, scope: !2484, inlinedAt: !2494)
!2510 = !DILocation(line: 1009, column: 3, scope: !2474)
!2511 = !DILocation(line: 0, scope: !2484)
!2512 = !DILocation(line: 1018, column: 3, scope: !2484)
!2513 = !DILocation(line: 1018, column: 26, scope: !2484)
!2514 = !DILocation(line: 1018, column: 30, scope: !2484)
!2515 = !DILocation(line: 0, scope: !1411, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 1019, column: 3, scope: !2484)
!2517 = !DILocation(line: 174, column: 12, scope: !1411, inlinedAt: !2516)
!2518 = !DILocation(line: 175, column: 8, scope: !1424, inlinedAt: !2516)
!2519 = !DILocation(line: 175, column: 19, scope: !1424, inlinedAt: !2516)
!2520 = !DILocation(line: 176, column: 5, scope: !1424, inlinedAt: !2516)
!2521 = !DILocation(line: 177, column: 6, scope: !1411, inlinedAt: !2516)
!2522 = !DILocation(line: 177, column: 17, scope: !1411, inlinedAt: !2516)
!2523 = !DILocation(line: 178, column: 6, scope: !1411, inlinedAt: !2516)
!2524 = !DILocation(line: 178, column: 18, scope: !1411, inlinedAt: !2516)
!2525 = !DILocation(line: 1020, column: 10, scope: !2484)
!2526 = !DILocation(line: 1021, column: 1, scope: !2484)
!2527 = !DILocation(line: 1020, column: 3, scope: !2484)
!2528 = distinct !DISubprogram(name: "quotearg_custom", scope: !410, file: !410, line: 1024, type: !2529, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2531)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!93, !72, !72, !72}
!2531 = !{!2532, !2533, !2534}
!2532 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2528, file: !410, line: 1024, type: !72)
!2533 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2528, file: !410, line: 1024, type: !72)
!2534 = !DILocalVariable(name: "arg", arg: 3, scope: !2528, file: !410, line: 1025, type: !72)
!2535 = !DILocation(line: 0, scope: !2528)
!2536 = !DILocation(line: 0, scope: !2474, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 1027, column: 10, scope: !2528)
!2538 = !DILocation(line: 0, scope: !2484, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 1009, column: 10, scope: !2474, inlinedAt: !2537)
!2540 = !DILocation(line: 1018, column: 3, scope: !2484, inlinedAt: !2539)
!2541 = !DILocation(line: 1018, column: 26, scope: !2484, inlinedAt: !2539)
!2542 = !DILocation(line: 1018, column: 30, scope: !2484, inlinedAt: !2539)
!2543 = !DILocation(line: 0, scope: !1411, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 1019, column: 3, scope: !2484, inlinedAt: !2539)
!2545 = !DILocation(line: 174, column: 12, scope: !1411, inlinedAt: !2544)
!2546 = !DILocation(line: 175, column: 8, scope: !1424, inlinedAt: !2544)
!2547 = !DILocation(line: 175, column: 19, scope: !1424, inlinedAt: !2544)
!2548 = !DILocation(line: 176, column: 5, scope: !1424, inlinedAt: !2544)
!2549 = !DILocation(line: 177, column: 6, scope: !1411, inlinedAt: !2544)
!2550 = !DILocation(line: 177, column: 17, scope: !1411, inlinedAt: !2544)
!2551 = !DILocation(line: 178, column: 6, scope: !1411, inlinedAt: !2544)
!2552 = !DILocation(line: 178, column: 18, scope: !1411, inlinedAt: !2544)
!2553 = !DILocation(line: 1020, column: 10, scope: !2484, inlinedAt: !2539)
!2554 = !DILocation(line: 1021, column: 1, scope: !2484, inlinedAt: !2539)
!2555 = !DILocation(line: 1027, column: 3, scope: !2528)
!2556 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !410, file: !410, line: 1031, type: !2557, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!93, !72, !72, !72, !97}
!2559 = !{!2560, !2561, !2562, !2563}
!2560 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2556, file: !410, line: 1031, type: !72)
!2561 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2556, file: !410, line: 1031, type: !72)
!2562 = !DILocalVariable(name: "arg", arg: 3, scope: !2556, file: !410, line: 1032, type: !72)
!2563 = !DILocalVariable(name: "argsize", arg: 4, scope: !2556, file: !410, line: 1032, type: !97)
!2564 = !DILocation(line: 0, scope: !2556)
!2565 = !DILocation(line: 0, scope: !2484, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 1034, column: 10, scope: !2556)
!2567 = !DILocation(line: 1018, column: 3, scope: !2484, inlinedAt: !2566)
!2568 = !DILocation(line: 1018, column: 26, scope: !2484, inlinedAt: !2566)
!2569 = !DILocation(line: 1018, column: 30, scope: !2484, inlinedAt: !2566)
!2570 = !DILocation(line: 0, scope: !1411, inlinedAt: !2571)
!2571 = distinct !DILocation(line: 1019, column: 3, scope: !2484, inlinedAt: !2566)
!2572 = !DILocation(line: 174, column: 12, scope: !1411, inlinedAt: !2571)
!2573 = !DILocation(line: 175, column: 8, scope: !1424, inlinedAt: !2571)
!2574 = !DILocation(line: 175, column: 19, scope: !1424, inlinedAt: !2571)
!2575 = !DILocation(line: 176, column: 5, scope: !1424, inlinedAt: !2571)
!2576 = !DILocation(line: 177, column: 6, scope: !1411, inlinedAt: !2571)
!2577 = !DILocation(line: 177, column: 17, scope: !1411, inlinedAt: !2571)
!2578 = !DILocation(line: 178, column: 6, scope: !1411, inlinedAt: !2571)
!2579 = !DILocation(line: 178, column: 18, scope: !1411, inlinedAt: !2571)
!2580 = !DILocation(line: 1020, column: 10, scope: !2484, inlinedAt: !2566)
!2581 = !DILocation(line: 1021, column: 1, scope: !2484, inlinedAt: !2566)
!2582 = !DILocation(line: 1034, column: 3, scope: !2556)
!2583 = distinct !DISubprogram(name: "quote_n_mem", scope: !410, file: !410, line: 1049, type: !2584, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2586)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!72, !95, !72, !97}
!2586 = !{!2587, !2588, !2589}
!2587 = !DILocalVariable(name: "n", arg: 1, scope: !2583, file: !410, line: 1049, type: !95)
!2588 = !DILocalVariable(name: "arg", arg: 2, scope: !2583, file: !410, line: 1049, type: !72)
!2589 = !DILocalVariable(name: "argsize", arg: 3, scope: !2583, file: !410, line: 1049, type: !97)
!2590 = !DILocation(line: 0, scope: !2583)
!2591 = !DILocation(line: 1051, column: 10, scope: !2583)
!2592 = !DILocation(line: 1051, column: 3, scope: !2583)
!2593 = distinct !DISubprogram(name: "quote_mem", scope: !410, file: !410, line: 1055, type: !2594, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!72, !72, !97}
!2596 = !{!2597, !2598}
!2597 = !DILocalVariable(name: "arg", arg: 1, scope: !2593, file: !410, line: 1055, type: !72)
!2598 = !DILocalVariable(name: "argsize", arg: 2, scope: !2593, file: !410, line: 1055, type: !97)
!2599 = !DILocation(line: 0, scope: !2593)
!2600 = !DILocation(line: 0, scope: !2583, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 1057, column: 10, scope: !2593)
!2602 = !DILocation(line: 1051, column: 10, scope: !2583, inlinedAt: !2601)
!2603 = !DILocation(line: 1057, column: 3, scope: !2593)
!2604 = distinct !DISubprogram(name: "quote_n", scope: !410, file: !410, line: 1061, type: !2605, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!72, !95, !72}
!2607 = !{!2608, !2609}
!2608 = !DILocalVariable(name: "n", arg: 1, scope: !2604, file: !410, line: 1061, type: !95)
!2609 = !DILocalVariable(name: "arg", arg: 2, scope: !2604, file: !410, line: 1061, type: !72)
!2610 = !DILocation(line: 0, scope: !2604)
!2611 = !DILocation(line: 0, scope: !2583, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 1063, column: 10, scope: !2604)
!2613 = !DILocation(line: 1051, column: 10, scope: !2583, inlinedAt: !2612)
!2614 = !DILocation(line: 1063, column: 3, scope: !2604)
!2615 = distinct !DISubprogram(name: "quote", scope: !410, file: !410, line: 1067, type: !2616, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!72, !72}
!2618 = !{!2619}
!2619 = !DILocalVariable(name: "arg", arg: 1, scope: !2615, file: !410, line: 1067, type: !72)
!2620 = !DILocation(line: 0, scope: !2615)
!2621 = !DILocation(line: 0, scope: !2604, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 1069, column: 10, scope: !2615)
!2623 = !DILocation(line: 0, scope: !2583, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 1063, column: 10, scope: !2604, inlinedAt: !2622)
!2625 = !DILocation(line: 1051, column: 10, scope: !2583, inlinedAt: !2624)
!2626 = !DILocation(line: 1069, column: 3, scope: !2615)
!2627 = distinct !DISubprogram(name: "version_etc_arn", scope: !523, file: !523, line: 61, type: !2628, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2665)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{null, !2630, !72, !72, !72, !2664, !97}
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !2632)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !2633)
!2633 = !{!2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2632, file: !234, line: 51, baseType: !95, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2632, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2632, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2632, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2632, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2632, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2632, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2632, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2632, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2632, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2632, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2632, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2632, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2632, file: !234, line: 70, baseType: !2648, size: 64, offset: 832)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2632, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2632, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2632, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2632, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2632, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2632, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2632, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2632, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2632, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2632, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2632, file: !234, line: 93, baseType: !2648, size: 64, offset: 1344)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2632, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2632, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2632, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2632, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!2665 = !{!2666, !2667, !2668, !2669, !2670, !2671}
!2666 = !DILocalVariable(name: "stream", arg: 1, scope: !2627, file: !523, line: 61, type: !2630)
!2667 = !DILocalVariable(name: "command_name", arg: 2, scope: !2627, file: !523, line: 62, type: !72)
!2668 = !DILocalVariable(name: "package", arg: 3, scope: !2627, file: !523, line: 62, type: !72)
!2669 = !DILocalVariable(name: "version", arg: 4, scope: !2627, file: !523, line: 63, type: !72)
!2670 = !DILocalVariable(name: "authors", arg: 5, scope: !2627, file: !523, line: 64, type: !2664)
!2671 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2627, file: !523, line: 64, type: !97)
!2672 = !DILocation(line: 0, scope: !2627)
!2673 = !DILocation(line: 66, column: 7, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2627, file: !523, line: 66, column: 7)
!2675 = !DILocation(line: 66, column: 7, scope: !2627)
!2676 = !DILocation(line: 67, column: 5, scope: !2674)
!2677 = !DILocation(line: 69, column: 5, scope: !2674)
!2678 = !DILocation(line: 83, column: 3, scope: !2627)
!2679 = !DILocation(line: 85, column: 3, scope: !2627)
!2680 = !DILocation(line: 88, column: 3, scope: !2627)
!2681 = !DILocation(line: 95, column: 3, scope: !2627)
!2682 = !DILocation(line: 97, column: 3, scope: !2627)
!2683 = !DILocation(line: 105, column: 7, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2627, file: !523, line: 98, column: 5)
!2685 = !DILocation(line: 106, column: 7, scope: !2684)
!2686 = !DILocation(line: 109, column: 7, scope: !2684)
!2687 = !DILocation(line: 110, column: 7, scope: !2684)
!2688 = !DILocation(line: 113, column: 7, scope: !2684)
!2689 = !DILocation(line: 115, column: 7, scope: !2684)
!2690 = !DILocation(line: 120, column: 7, scope: !2684)
!2691 = !DILocation(line: 122, column: 7, scope: !2684)
!2692 = !DILocation(line: 127, column: 7, scope: !2684)
!2693 = !DILocation(line: 129, column: 7, scope: !2684)
!2694 = !DILocation(line: 134, column: 7, scope: !2684)
!2695 = !DILocation(line: 137, column: 7, scope: !2684)
!2696 = !DILocation(line: 142, column: 7, scope: !2684)
!2697 = !DILocation(line: 145, column: 7, scope: !2684)
!2698 = !DILocation(line: 150, column: 7, scope: !2684)
!2699 = !DILocation(line: 154, column: 7, scope: !2684)
!2700 = !DILocation(line: 159, column: 7, scope: !2684)
!2701 = !DILocation(line: 163, column: 7, scope: !2684)
!2702 = !DILocation(line: 170, column: 7, scope: !2684)
!2703 = !DILocation(line: 174, column: 7, scope: !2684)
!2704 = !DILocation(line: 176, column: 1, scope: !2627)
!2705 = distinct !DISubprogram(name: "version_etc_ar", scope: !523, file: !523, line: 183, type: !2706, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2708)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{null, !2630, !72, !72, !72, !2664}
!2708 = !{!2709, !2710, !2711, !2712, !2713, !2714}
!2709 = !DILocalVariable(name: "stream", arg: 1, scope: !2705, file: !523, line: 183, type: !2630)
!2710 = !DILocalVariable(name: "command_name", arg: 2, scope: !2705, file: !523, line: 184, type: !72)
!2711 = !DILocalVariable(name: "package", arg: 3, scope: !2705, file: !523, line: 184, type: !72)
!2712 = !DILocalVariable(name: "version", arg: 4, scope: !2705, file: !523, line: 185, type: !72)
!2713 = !DILocalVariable(name: "authors", arg: 5, scope: !2705, file: !523, line: 185, type: !2664)
!2714 = !DILocalVariable(name: "n_authors", scope: !2705, file: !523, line: 187, type: !97)
!2715 = !DILocation(line: 0, scope: !2705)
!2716 = !DILocation(line: 189, column: 8, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2705, file: !523, line: 189, column: 3)
!2718 = !DILocation(line: 189, scope: !2717)
!2719 = !DILocation(line: 189, column: 23, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2717, file: !523, line: 189, column: 3)
!2721 = !DILocation(line: 189, column: 3, scope: !2717)
!2722 = !DILocation(line: 189, column: 52, scope: !2720)
!2723 = distinct !{!2723, !2721, !2724, !793}
!2724 = !DILocation(line: 190, column: 5, scope: !2717)
!2725 = !DILocation(line: 191, column: 3, scope: !2705)
!2726 = !DILocation(line: 192, column: 1, scope: !2705)
!2727 = distinct !DISubprogram(name: "version_etc_va", scope: !523, file: !523, line: 199, type: !2728, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2741)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{null, !2630, !72, !72, !72, !2730}
!2730 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !324, line: 52, baseType: !2731)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !326, line: 14, baseType: !2732)
!2732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2733, baseType: !2734)
!2733 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2735)
!2735 = !{!2736, !2737, !2738, !2739, !2740}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2734, file: !2733, line: 192, baseType: !94, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2734, file: !2733, line: 192, baseType: !94, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2734, file: !2733, line: 192, baseType: !94, size: 64, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2734, file: !2733, line: 192, baseType: !95, size: 32, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2734, file: !2733, line: 192, baseType: !95, size: 32, offset: 224)
!2741 = !{!2742, !2743, !2744, !2745, !2746, !2747, !2748}
!2742 = !DILocalVariable(name: "stream", arg: 1, scope: !2727, file: !523, line: 199, type: !2630)
!2743 = !DILocalVariable(name: "command_name", arg: 2, scope: !2727, file: !523, line: 200, type: !72)
!2744 = !DILocalVariable(name: "package", arg: 3, scope: !2727, file: !523, line: 200, type: !72)
!2745 = !DILocalVariable(name: "version", arg: 4, scope: !2727, file: !523, line: 201, type: !72)
!2746 = !DILocalVariable(name: "authors", arg: 5, scope: !2727, file: !523, line: 201, type: !2730)
!2747 = !DILocalVariable(name: "n_authors", scope: !2727, file: !523, line: 203, type: !97)
!2748 = !DILocalVariable(name: "authtab", scope: !2727, file: !523, line: 204, type: !2749)
!2749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 640, elements: !42)
!2750 = !DILocation(line: 0, scope: !2727)
!2751 = !DILocation(line: 201, column: 46, scope: !2727)
!2752 = !DILocation(line: 204, column: 3, scope: !2727)
!2753 = !DILocation(line: 204, column: 15, scope: !2727)
!2754 = !DILocation(line: 208, column: 35, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !523, line: 206, column: 3)
!2756 = distinct !DILexicalBlock(scope: !2727, file: !523, line: 206, column: 3)
!2757 = !DILocation(line: 208, column: 33, scope: !2755)
!2758 = !DILocation(line: 208, column: 67, scope: !2755)
!2759 = !DILocation(line: 206, column: 3, scope: !2756)
!2760 = !DILocation(line: 208, column: 14, scope: !2755)
!2761 = !DILocation(line: 0, scope: !2756)
!2762 = !DILocation(line: 211, column: 3, scope: !2727)
!2763 = !DILocation(line: 213, column: 1, scope: !2727)
!2764 = distinct !DISubprogram(name: "version_etc", scope: !523, file: !523, line: 230, type: !2765, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{null, !2630, !72, !72, !72, null}
!2767 = !{!2768, !2769, !2770, !2771, !2772}
!2768 = !DILocalVariable(name: "stream", arg: 1, scope: !2764, file: !523, line: 230, type: !2630)
!2769 = !DILocalVariable(name: "command_name", arg: 2, scope: !2764, file: !523, line: 231, type: !72)
!2770 = !DILocalVariable(name: "package", arg: 3, scope: !2764, file: !523, line: 231, type: !72)
!2771 = !DILocalVariable(name: "version", arg: 4, scope: !2764, file: !523, line: 232, type: !72)
!2772 = !DILocalVariable(name: "authors", scope: !2764, file: !523, line: 234, type: !2730)
!2773 = !DILocation(line: 0, scope: !2764)
!2774 = !DILocation(line: 234, column: 3, scope: !2764)
!2775 = !DILocation(line: 234, column: 11, scope: !2764)
!2776 = !DILocation(line: 235, column: 3, scope: !2764)
!2777 = !DILocation(line: 236, column: 3, scope: !2764)
!2778 = !DILocation(line: 237, column: 3, scope: !2764)
!2779 = !DILocation(line: 238, column: 1, scope: !2764)
!2780 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !523, file: !523, line: 241, type: !365, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !738)
!2781 = !DILocation(line: 243, column: 3, scope: !2780)
!2782 = !DILocation(line: 248, column: 3, scope: !2780)
!2783 = !DILocation(line: 254, column: 3, scope: !2780)
!2784 = !DILocation(line: 259, column: 3, scope: !2780)
!2785 = !DILocation(line: 261, column: 1, scope: !2780)
!2786 = distinct !DISubprogram(name: "xnrealloc", scope: !2787, file: !2787, line: 147, type: !2788, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2790)
!2787 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!94, !94, !97, !97}
!2790 = !{!2791, !2792, !2793}
!2791 = !DILocalVariable(name: "p", arg: 1, scope: !2786, file: !2787, line: 147, type: !94)
!2792 = !DILocalVariable(name: "n", arg: 2, scope: !2786, file: !2787, line: 147, type: !97)
!2793 = !DILocalVariable(name: "s", arg: 3, scope: !2786, file: !2787, line: 147, type: !97)
!2794 = !DILocation(line: 0, scope: !2786)
!2795 = !DILocalVariable(name: "p", arg: 1, scope: !2796, file: !657, line: 83, type: !94)
!2796 = distinct !DISubprogram(name: "xreallocarray", scope: !657, file: !657, line: 83, type: !2788, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2797)
!2797 = !{!2795, !2798, !2799}
!2798 = !DILocalVariable(name: "n", arg: 2, scope: !2796, file: !657, line: 83, type: !97)
!2799 = !DILocalVariable(name: "s", arg: 3, scope: !2796, file: !657, line: 83, type: !97)
!2800 = !DILocation(line: 0, scope: !2796, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 149, column: 10, scope: !2786)
!2802 = !DILocation(line: 85, column: 25, scope: !2796, inlinedAt: !2801)
!2803 = !DILocalVariable(name: "p", arg: 1, scope: !2804, file: !657, line: 37, type: !94)
!2804 = distinct !DISubprogram(name: "check_nonnull", scope: !657, file: !657, line: 37, type: !2805, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2807)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!94, !94}
!2807 = !{!2803}
!2808 = !DILocation(line: 0, scope: !2804, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 85, column: 10, scope: !2796, inlinedAt: !2801)
!2810 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !2809)
!2811 = distinct !DILexicalBlock(scope: !2804, file: !657, line: 39, column: 7)
!2812 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !2809)
!2813 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !2809)
!2814 = !DILocation(line: 149, column: 3, scope: !2786)
!2815 = !DILocation(line: 0, scope: !2796)
!2816 = !DILocation(line: 85, column: 25, scope: !2796)
!2817 = !DILocation(line: 0, scope: !2804, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 85, column: 10, scope: !2796)
!2819 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !2818)
!2820 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !2818)
!2821 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !2818)
!2822 = !DILocation(line: 85, column: 3, scope: !2796)
!2823 = distinct !DISubprogram(name: "xmalloc", scope: !657, file: !657, line: 47, type: !2824, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2826)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!94, !97}
!2826 = !{!2827}
!2827 = !DILocalVariable(name: "s", arg: 1, scope: !2823, file: !657, line: 47, type: !97)
!2828 = !DILocation(line: 0, scope: !2823)
!2829 = !DILocation(line: 49, column: 25, scope: !2823)
!2830 = !DILocation(line: 0, scope: !2804, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 49, column: 10, scope: !2823)
!2832 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !2831)
!2833 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !2831)
!2834 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !2831)
!2835 = !DILocation(line: 49, column: 3, scope: !2823)
!2836 = !DISubprogram(name: "malloc", scope: !890, file: !890, line: 540, type: !2824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!2837 = distinct !DISubprogram(name: "ximalloc", scope: !657, file: !657, line: 53, type: !2838, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2840)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!94, !676}
!2840 = !{!2841}
!2841 = !DILocalVariable(name: "s", arg: 1, scope: !2837, file: !657, line: 53, type: !676)
!2842 = !DILocation(line: 0, scope: !2837)
!2843 = !DILocalVariable(name: "s", arg: 1, scope: !2844, file: !2845, line: 55, type: !676)
!2844 = distinct !DISubprogram(name: "imalloc", scope: !2845, file: !2845, line: 55, type: !2838, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2846)
!2845 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2846 = !{!2843}
!2847 = !DILocation(line: 0, scope: !2844, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 55, column: 25, scope: !2837)
!2849 = !DILocation(line: 57, column: 26, scope: !2844, inlinedAt: !2848)
!2850 = !DILocation(line: 0, scope: !2804, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 55, column: 10, scope: !2837)
!2852 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !2851)
!2853 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !2851)
!2854 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !2851)
!2855 = !DILocation(line: 55, column: 3, scope: !2837)
!2856 = distinct !DISubprogram(name: "xcharalloc", scope: !657, file: !657, line: 59, type: !2857, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!93, !97}
!2859 = !{!2860}
!2860 = !DILocalVariable(name: "n", arg: 1, scope: !2856, file: !657, line: 59, type: !97)
!2861 = !DILocation(line: 0, scope: !2856)
!2862 = !DILocation(line: 0, scope: !2823, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 61, column: 10, scope: !2856)
!2864 = !DILocation(line: 49, column: 25, scope: !2823, inlinedAt: !2863)
!2865 = !DILocation(line: 0, scope: !2804, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 49, column: 10, scope: !2823, inlinedAt: !2863)
!2867 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !2866)
!2868 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !2866)
!2869 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !2866)
!2870 = !DILocation(line: 61, column: 3, scope: !2856)
!2871 = distinct !DISubprogram(name: "xrealloc", scope: !657, file: !657, line: 68, type: !2872, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!94, !94, !97}
!2874 = !{!2875, !2876}
!2875 = !DILocalVariable(name: "p", arg: 1, scope: !2871, file: !657, line: 68, type: !94)
!2876 = !DILocalVariable(name: "s", arg: 2, scope: !2871, file: !657, line: 68, type: !97)
!2877 = !DILocation(line: 0, scope: !2871)
!2878 = !DILocalVariable(name: "ptr", arg: 1, scope: !2879, file: !2880, line: 2057, type: !94)
!2879 = distinct !DISubprogram(name: "rpl_realloc", scope: !2880, file: !2880, line: 2057, type: !2872, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2881)
!2880 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2881 = !{!2878, !2882}
!2882 = !DILocalVariable(name: "size", arg: 2, scope: !2879, file: !2880, line: 2057, type: !97)
!2883 = !DILocation(line: 0, scope: !2879, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 70, column: 25, scope: !2871)
!2885 = !DILocation(line: 2059, column: 24, scope: !2879, inlinedAt: !2884)
!2886 = !DILocation(line: 2059, column: 10, scope: !2879, inlinedAt: !2884)
!2887 = !DILocation(line: 0, scope: !2804, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 70, column: 10, scope: !2871)
!2889 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !2888)
!2890 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !2888)
!2891 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !2888)
!2892 = !DILocation(line: 70, column: 3, scope: !2871)
!2893 = !DISubprogram(name: "realloc", scope: !890, file: !890, line: 551, type: !2872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!2894 = distinct !DISubprogram(name: "xirealloc", scope: !657, file: !657, line: 74, type: !2895, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!94, !94, !676}
!2897 = !{!2898, !2899}
!2898 = !DILocalVariable(name: "p", arg: 1, scope: !2894, file: !657, line: 74, type: !94)
!2899 = !DILocalVariable(name: "s", arg: 2, scope: !2894, file: !657, line: 74, type: !676)
!2900 = !DILocation(line: 0, scope: !2894)
!2901 = !DILocalVariable(name: "p", arg: 1, scope: !2902, file: !2845, line: 66, type: !94)
!2902 = distinct !DISubprogram(name: "irealloc", scope: !2845, file: !2845, line: 66, type: !2895, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2903)
!2903 = !{!2901, !2904}
!2904 = !DILocalVariable(name: "s", arg: 2, scope: !2902, file: !2845, line: 66, type: !676)
!2905 = !DILocation(line: 0, scope: !2902, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 76, column: 25, scope: !2894)
!2907 = !DILocation(line: 0, scope: !2879, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 68, column: 26, scope: !2902, inlinedAt: !2906)
!2909 = !DILocation(line: 2059, column: 24, scope: !2879, inlinedAt: !2908)
!2910 = !DILocation(line: 2059, column: 10, scope: !2879, inlinedAt: !2908)
!2911 = !DILocation(line: 0, scope: !2804, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 76, column: 10, scope: !2894)
!2913 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !2912)
!2914 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !2912)
!2915 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !2912)
!2916 = !DILocation(line: 76, column: 3, scope: !2894)
!2917 = distinct !DISubprogram(name: "xireallocarray", scope: !657, file: !657, line: 89, type: !2918, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2920)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!94, !94, !676, !676}
!2920 = !{!2921, !2922, !2923}
!2921 = !DILocalVariable(name: "p", arg: 1, scope: !2917, file: !657, line: 89, type: !94)
!2922 = !DILocalVariable(name: "n", arg: 2, scope: !2917, file: !657, line: 89, type: !676)
!2923 = !DILocalVariable(name: "s", arg: 3, scope: !2917, file: !657, line: 89, type: !676)
!2924 = !DILocation(line: 0, scope: !2917)
!2925 = !DILocalVariable(name: "p", arg: 1, scope: !2926, file: !2845, line: 98, type: !94)
!2926 = distinct !DISubprogram(name: "ireallocarray", scope: !2845, file: !2845, line: 98, type: !2918, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2927)
!2927 = !{!2925, !2928, !2929}
!2928 = !DILocalVariable(name: "n", arg: 2, scope: !2926, file: !2845, line: 98, type: !676)
!2929 = !DILocalVariable(name: "s", arg: 3, scope: !2926, file: !2845, line: 98, type: !676)
!2930 = !DILocation(line: 0, scope: !2926, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 91, column: 25, scope: !2917)
!2932 = !DILocation(line: 101, column: 13, scope: !2926, inlinedAt: !2931)
!2933 = !DILocation(line: 0, scope: !2804, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 91, column: 10, scope: !2917)
!2935 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !2934)
!2936 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !2934)
!2937 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !2934)
!2938 = !DILocation(line: 91, column: 3, scope: !2917)
!2939 = distinct !DISubprogram(name: "xnmalloc", scope: !657, file: !657, line: 98, type: !2940, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!94, !97, !97}
!2942 = !{!2943, !2944}
!2943 = !DILocalVariable(name: "n", arg: 1, scope: !2939, file: !657, line: 98, type: !97)
!2944 = !DILocalVariable(name: "s", arg: 2, scope: !2939, file: !657, line: 98, type: !97)
!2945 = !DILocation(line: 0, scope: !2939)
!2946 = !DILocation(line: 0, scope: !2796, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 100, column: 10, scope: !2939)
!2948 = !DILocation(line: 85, column: 25, scope: !2796, inlinedAt: !2947)
!2949 = !DILocation(line: 0, scope: !2804, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 85, column: 10, scope: !2796, inlinedAt: !2947)
!2951 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !2950)
!2952 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !2950)
!2953 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !2950)
!2954 = !DILocation(line: 100, column: 3, scope: !2939)
!2955 = distinct !DISubprogram(name: "xinmalloc", scope: !657, file: !657, line: 104, type: !2956, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2958)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!94, !676, !676}
!2958 = !{!2959, !2960}
!2959 = !DILocalVariable(name: "n", arg: 1, scope: !2955, file: !657, line: 104, type: !676)
!2960 = !DILocalVariable(name: "s", arg: 2, scope: !2955, file: !657, line: 104, type: !676)
!2961 = !DILocation(line: 0, scope: !2955)
!2962 = !DILocation(line: 0, scope: !2917, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 106, column: 10, scope: !2955)
!2964 = !DILocation(line: 0, scope: !2926, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 91, column: 25, scope: !2917, inlinedAt: !2963)
!2966 = !DILocation(line: 101, column: 13, scope: !2926, inlinedAt: !2965)
!2967 = !DILocation(line: 0, scope: !2804, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 91, column: 10, scope: !2917, inlinedAt: !2963)
!2969 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !2968)
!2970 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !2968)
!2971 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !2968)
!2972 = !DILocation(line: 106, column: 3, scope: !2955)
!2973 = distinct !DISubprogram(name: "x2realloc", scope: !657, file: !657, line: 116, type: !2974, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!94, !94, !663}
!2976 = !{!2977, !2978}
!2977 = !DILocalVariable(name: "p", arg: 1, scope: !2973, file: !657, line: 116, type: !94)
!2978 = !DILocalVariable(name: "ps", arg: 2, scope: !2973, file: !657, line: 116, type: !663)
!2979 = !DILocation(line: 0, scope: !2973)
!2980 = !DILocation(line: 0, scope: !660, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 118, column: 10, scope: !2973)
!2982 = !DILocation(line: 178, column: 14, scope: !660, inlinedAt: !2981)
!2983 = !DILocation(line: 180, column: 9, scope: !2984, inlinedAt: !2981)
!2984 = distinct !DILexicalBlock(scope: !660, file: !657, line: 180, column: 7)
!2985 = !DILocation(line: 180, column: 7, scope: !660, inlinedAt: !2981)
!2986 = !DILocation(line: 182, column: 13, scope: !2987, inlinedAt: !2981)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !657, line: 182, column: 11)
!2988 = distinct !DILexicalBlock(scope: !2984, file: !657, line: 181, column: 5)
!2989 = !DILocation(line: 182, column: 11, scope: !2988, inlinedAt: !2981)
!2990 = !DILocation(line: 197, column: 11, scope: !2991, inlinedAt: !2981)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !657, line: 197, column: 11)
!2992 = distinct !DILexicalBlock(scope: !2984, file: !657, line: 195, column: 5)
!2993 = !DILocation(line: 197, column: 11, scope: !2992, inlinedAt: !2981)
!2994 = !DILocation(line: 198, column: 9, scope: !2991, inlinedAt: !2981)
!2995 = !DILocation(line: 0, scope: !2796, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 201, column: 7, scope: !660, inlinedAt: !2981)
!2997 = !DILocation(line: 85, column: 25, scope: !2796, inlinedAt: !2996)
!2998 = !DILocation(line: 0, scope: !2804, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 85, column: 10, scope: !2796, inlinedAt: !2996)
!3000 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !2999)
!3001 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !2999)
!3002 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !2999)
!3003 = !DILocation(line: 202, column: 7, scope: !660, inlinedAt: !2981)
!3004 = !DILocation(line: 118, column: 3, scope: !2973)
!3005 = !DILocation(line: 0, scope: !660)
!3006 = !DILocation(line: 178, column: 14, scope: !660)
!3007 = !DILocation(line: 180, column: 9, scope: !2984)
!3008 = !DILocation(line: 180, column: 7, scope: !660)
!3009 = !DILocation(line: 182, column: 13, scope: !2987)
!3010 = !DILocation(line: 182, column: 11, scope: !2988)
!3011 = !DILocation(line: 190, column: 30, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2987, file: !657, line: 183, column: 9)
!3013 = !DILocation(line: 191, column: 16, scope: !3012)
!3014 = !DILocation(line: 191, column: 13, scope: !3012)
!3015 = !DILocation(line: 192, column: 9, scope: !3012)
!3016 = !DILocation(line: 197, column: 11, scope: !2991)
!3017 = !DILocation(line: 197, column: 11, scope: !2992)
!3018 = !DILocation(line: 198, column: 9, scope: !2991)
!3019 = !DILocation(line: 0, scope: !2796, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 201, column: 7, scope: !660)
!3021 = !DILocation(line: 85, column: 25, scope: !2796, inlinedAt: !3020)
!3022 = !DILocation(line: 0, scope: !2804, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 85, column: 10, scope: !2796, inlinedAt: !3020)
!3024 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !3023)
!3025 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !3023)
!3026 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !3023)
!3027 = !DILocation(line: 202, column: 7, scope: !660)
!3028 = !DILocation(line: 203, column: 3, scope: !660)
!3029 = !DILocation(line: 0, scope: !672)
!3030 = !DILocation(line: 230, column: 14, scope: !672)
!3031 = !DILocation(line: 238, column: 7, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !672, file: !657, line: 238, column: 7)
!3033 = !DILocation(line: 238, column: 7, scope: !672)
!3034 = !DILocation(line: 240, column: 9, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !672, file: !657, line: 240, column: 7)
!3036 = !DILocation(line: 240, column: 18, scope: !3035)
!3037 = !DILocation(line: 253, column: 8, scope: !672)
!3038 = !DILocation(line: 258, column: 27, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !657, line: 257, column: 5)
!3040 = distinct !DILexicalBlock(scope: !672, file: !657, line: 256, column: 7)
!3041 = !DILocation(line: 259, column: 32, scope: !3039)
!3042 = !DILocation(line: 260, column: 5, scope: !3039)
!3043 = !DILocation(line: 262, column: 9, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !672, file: !657, line: 262, column: 7)
!3045 = !DILocation(line: 262, column: 7, scope: !672)
!3046 = !DILocation(line: 263, column: 9, scope: !3044)
!3047 = !DILocation(line: 263, column: 5, scope: !3044)
!3048 = !DILocation(line: 264, column: 9, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !672, file: !657, line: 264, column: 7)
!3050 = !DILocation(line: 264, column: 14, scope: !3049)
!3051 = !DILocation(line: 265, column: 7, scope: !3049)
!3052 = !DILocation(line: 265, column: 11, scope: !3049)
!3053 = !DILocation(line: 266, column: 11, scope: !3049)
!3054 = !DILocation(line: 267, column: 14, scope: !3049)
!3055 = !DILocation(line: 264, column: 7, scope: !672)
!3056 = !DILocation(line: 268, column: 5, scope: !3049)
!3057 = !DILocation(line: 0, scope: !2871, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 269, column: 8, scope: !672)
!3059 = !DILocation(line: 0, scope: !2879, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 70, column: 25, scope: !2871, inlinedAt: !3058)
!3061 = !DILocation(line: 2059, column: 24, scope: !2879, inlinedAt: !3060)
!3062 = !DILocation(line: 2059, column: 10, scope: !2879, inlinedAt: !3060)
!3063 = !DILocation(line: 0, scope: !2804, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 70, column: 10, scope: !2871, inlinedAt: !3058)
!3065 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !3064)
!3066 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !3064)
!3067 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !3064)
!3068 = !DILocation(line: 270, column: 7, scope: !672)
!3069 = !DILocation(line: 271, column: 3, scope: !672)
!3070 = distinct !DISubprogram(name: "xzalloc", scope: !657, file: !657, line: 279, type: !2824, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3071)
!3071 = !{!3072}
!3072 = !DILocalVariable(name: "s", arg: 1, scope: !3070, file: !657, line: 279, type: !97)
!3073 = !DILocation(line: 0, scope: !3070)
!3074 = !DILocalVariable(name: "n", arg: 1, scope: !3075, file: !657, line: 294, type: !97)
!3075 = distinct !DISubprogram(name: "xcalloc", scope: !657, file: !657, line: 294, type: !2940, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3076)
!3076 = !{!3074, !3077}
!3077 = !DILocalVariable(name: "s", arg: 2, scope: !3075, file: !657, line: 294, type: !97)
!3078 = !DILocation(line: 0, scope: !3075, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 281, column: 10, scope: !3070)
!3080 = !DILocation(line: 296, column: 25, scope: !3075, inlinedAt: !3079)
!3081 = !DILocation(line: 0, scope: !2804, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 296, column: 10, scope: !3075, inlinedAt: !3079)
!3083 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !3082)
!3084 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !3082)
!3085 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !3082)
!3086 = !DILocation(line: 281, column: 3, scope: !3070)
!3087 = !DISubprogram(name: "calloc", scope: !890, file: !890, line: 543, type: !2940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!3088 = !DILocation(line: 0, scope: !3075)
!3089 = !DILocation(line: 296, column: 25, scope: !3075)
!3090 = !DILocation(line: 0, scope: !2804, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 296, column: 10, scope: !3075)
!3092 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !3091)
!3093 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !3091)
!3094 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !3091)
!3095 = !DILocation(line: 296, column: 3, scope: !3075)
!3096 = distinct !DISubprogram(name: "xizalloc", scope: !657, file: !657, line: 285, type: !2838, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3097)
!3097 = !{!3098}
!3098 = !DILocalVariable(name: "s", arg: 1, scope: !3096, file: !657, line: 285, type: !676)
!3099 = !DILocation(line: 0, scope: !3096)
!3100 = !DILocalVariable(name: "n", arg: 1, scope: !3101, file: !657, line: 300, type: !676)
!3101 = distinct !DISubprogram(name: "xicalloc", scope: !657, file: !657, line: 300, type: !2956, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3102)
!3102 = !{!3100, !3103}
!3103 = !DILocalVariable(name: "s", arg: 2, scope: !3101, file: !657, line: 300, type: !676)
!3104 = !DILocation(line: 0, scope: !3101, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 287, column: 10, scope: !3096)
!3106 = !DILocalVariable(name: "n", arg: 1, scope: !3107, file: !2845, line: 77, type: !676)
!3107 = distinct !DISubprogram(name: "icalloc", scope: !2845, file: !2845, line: 77, type: !2956, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3108)
!3108 = !{!3106, !3109}
!3109 = !DILocalVariable(name: "s", arg: 2, scope: !3107, file: !2845, line: 77, type: !676)
!3110 = !DILocation(line: 0, scope: !3107, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 302, column: 25, scope: !3101, inlinedAt: !3105)
!3112 = !DILocation(line: 91, column: 10, scope: !3107, inlinedAt: !3111)
!3113 = !DILocation(line: 0, scope: !2804, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 302, column: 10, scope: !3101, inlinedAt: !3105)
!3115 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !3114)
!3116 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !3114)
!3117 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !3114)
!3118 = !DILocation(line: 287, column: 3, scope: !3096)
!3119 = !DILocation(line: 0, scope: !3101)
!3120 = !DILocation(line: 0, scope: !3107, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 302, column: 25, scope: !3101)
!3122 = !DILocation(line: 91, column: 10, scope: !3107, inlinedAt: !3121)
!3123 = !DILocation(line: 0, scope: !2804, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 302, column: 10, scope: !3101)
!3125 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !3124)
!3126 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !3124)
!3127 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !3124)
!3128 = !DILocation(line: 302, column: 3, scope: !3101)
!3129 = distinct !DISubprogram(name: "xmemdup", scope: !657, file: !657, line: 310, type: !3130, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3132)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!94, !926, !97}
!3132 = !{!3133, !3134}
!3133 = !DILocalVariable(name: "p", arg: 1, scope: !3129, file: !657, line: 310, type: !926)
!3134 = !DILocalVariable(name: "s", arg: 2, scope: !3129, file: !657, line: 310, type: !97)
!3135 = !DILocation(line: 0, scope: !3129)
!3136 = !DILocation(line: 0, scope: !2823, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 312, column: 18, scope: !3129)
!3138 = !DILocation(line: 49, column: 25, scope: !2823, inlinedAt: !3137)
!3139 = !DILocation(line: 0, scope: !2804, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 49, column: 10, scope: !2823, inlinedAt: !3137)
!3141 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !3140)
!3142 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !3140)
!3143 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !3140)
!3144 = !DILocalVariable(name: "__dest", arg: 1, scope: !3145, file: !1314, line: 26, type: !3148)
!3145 = distinct !DISubprogram(name: "memcpy", scope: !1314, file: !1314, line: 26, type: !3146, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3149)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!94, !3148, !925, !97}
!3148 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!3149 = !{!3144, !3150, !3151}
!3150 = !DILocalVariable(name: "__src", arg: 2, scope: !3145, file: !1314, line: 26, type: !925)
!3151 = !DILocalVariable(name: "__len", arg: 3, scope: !3145, file: !1314, line: 26, type: !97)
!3152 = !DILocation(line: 0, scope: !3145, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 312, column: 10, scope: !3129)
!3154 = !DILocation(line: 29, column: 10, scope: !3145, inlinedAt: !3153)
!3155 = !DILocation(line: 312, column: 3, scope: !3129)
!3156 = distinct !DISubprogram(name: "ximemdup", scope: !657, file: !657, line: 316, type: !3157, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3159)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!94, !926, !676}
!3159 = !{!3160, !3161}
!3160 = !DILocalVariable(name: "p", arg: 1, scope: !3156, file: !657, line: 316, type: !926)
!3161 = !DILocalVariable(name: "s", arg: 2, scope: !3156, file: !657, line: 316, type: !676)
!3162 = !DILocation(line: 0, scope: !3156)
!3163 = !DILocation(line: 0, scope: !2837, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 318, column: 18, scope: !3156)
!3165 = !DILocation(line: 0, scope: !2844, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 55, column: 25, scope: !2837, inlinedAt: !3164)
!3167 = !DILocation(line: 57, column: 26, scope: !2844, inlinedAt: !3166)
!3168 = !DILocation(line: 0, scope: !2804, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 55, column: 10, scope: !2837, inlinedAt: !3164)
!3170 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !3169)
!3171 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !3169)
!3172 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !3169)
!3173 = !DILocation(line: 0, scope: !3145, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 318, column: 10, scope: !3156)
!3175 = !DILocation(line: 29, column: 10, scope: !3145, inlinedAt: !3174)
!3176 = !DILocation(line: 318, column: 3, scope: !3156)
!3177 = distinct !DISubprogram(name: "ximemdup0", scope: !657, file: !657, line: 325, type: !3178, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3180)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!93, !926, !676}
!3180 = !{!3181, !3182, !3183}
!3181 = !DILocalVariable(name: "p", arg: 1, scope: !3177, file: !657, line: 325, type: !926)
!3182 = !DILocalVariable(name: "s", arg: 2, scope: !3177, file: !657, line: 325, type: !676)
!3183 = !DILocalVariable(name: "result", scope: !3177, file: !657, line: 327, type: !93)
!3184 = !DILocation(line: 0, scope: !3177)
!3185 = !DILocation(line: 327, column: 30, scope: !3177)
!3186 = !DILocation(line: 0, scope: !2837, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 327, column: 18, scope: !3177)
!3188 = !DILocation(line: 0, scope: !2844, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 55, column: 25, scope: !2837, inlinedAt: !3187)
!3190 = !DILocation(line: 57, column: 26, scope: !2844, inlinedAt: !3189)
!3191 = !DILocation(line: 0, scope: !2804, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 55, column: 10, scope: !2837, inlinedAt: !3187)
!3193 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !3192)
!3194 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !3192)
!3195 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !3192)
!3196 = !DILocation(line: 328, column: 3, scope: !3177)
!3197 = !DILocation(line: 328, column: 13, scope: !3177)
!3198 = !DILocation(line: 0, scope: !3145, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 329, column: 10, scope: !3177)
!3200 = !DILocation(line: 29, column: 10, scope: !3145, inlinedAt: !3199)
!3201 = !DILocation(line: 329, column: 3, scope: !3177)
!3202 = distinct !DISubprogram(name: "xstrdup", scope: !657, file: !657, line: 335, type: !904, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3203)
!3203 = !{!3204}
!3204 = !DILocalVariable(name: "string", arg: 1, scope: !3202, file: !657, line: 335, type: !72)
!3205 = !DILocation(line: 0, scope: !3202)
!3206 = !DILocation(line: 337, column: 27, scope: !3202)
!3207 = !DILocation(line: 337, column: 43, scope: !3202)
!3208 = !DILocation(line: 0, scope: !3129, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 337, column: 10, scope: !3202)
!3210 = !DILocation(line: 0, scope: !2823, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 312, column: 18, scope: !3129, inlinedAt: !3209)
!3212 = !DILocation(line: 49, column: 25, scope: !2823, inlinedAt: !3211)
!3213 = !DILocation(line: 0, scope: !2804, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 49, column: 10, scope: !2823, inlinedAt: !3211)
!3215 = !DILocation(line: 39, column: 8, scope: !2811, inlinedAt: !3214)
!3216 = !DILocation(line: 39, column: 7, scope: !2804, inlinedAt: !3214)
!3217 = !DILocation(line: 40, column: 5, scope: !2811, inlinedAt: !3214)
!3218 = !DILocation(line: 0, scope: !3145, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 312, column: 10, scope: !3129, inlinedAt: !3209)
!3220 = !DILocation(line: 29, column: 10, scope: !3145, inlinedAt: !3219)
!3221 = !DILocation(line: 337, column: 3, scope: !3202)
!3222 = distinct !DISubprogram(name: "xalloc_die", scope: !619, file: !619, line: 32, type: !365, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !690, retainedNodes: !3223)
!3223 = !{!3224}
!3224 = !DILocalVariable(name: "__errstatus", scope: !3225, file: !619, line: 34, type: !3226)
!3225 = distinct !DILexicalBlock(scope: !3222, file: !619, line: 34, column: 3)
!3226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!3227 = !DILocation(line: 34, column: 3, scope: !3225)
!3228 = !DILocation(line: 0, scope: !3225)
!3229 = !DILocation(line: 40, column: 3, scope: !3222)
!3230 = distinct !DISubprogram(name: "close_stream", scope: !693, file: !693, line: 55, type: !3231, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3267)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!95, !3233}
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !3235)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !3236)
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3235, file: !234, line: 51, baseType: !95, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3235, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3235, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3235, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3235, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3235, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3235, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3235, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3235, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3235, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3235, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3235, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3235, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3235, file: !234, line: 70, baseType: !3251, size: 64, offset: 832)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3235, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3235, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3235, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3235, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3235, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3235, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3235, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3235, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3235, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3235, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3235, file: !234, line: 93, baseType: !3251, size: 64, offset: 1344)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3235, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3235, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3235, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3235, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!3267 = !{!3268, !3269, !3271, !3272}
!3268 = !DILocalVariable(name: "stream", arg: 1, scope: !3230, file: !693, line: 55, type: !3233)
!3269 = !DILocalVariable(name: "some_pending", scope: !3230, file: !693, line: 57, type: !3270)
!3270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!3271 = !DILocalVariable(name: "prev_fail", scope: !3230, file: !693, line: 58, type: !3270)
!3272 = !DILocalVariable(name: "fclose_fail", scope: !3230, file: !693, line: 59, type: !3270)
!3273 = !DILocation(line: 0, scope: !3230)
!3274 = !DILocation(line: 57, column: 30, scope: !3230)
!3275 = !DILocalVariable(name: "__stream", arg: 1, scope: !3276, file: !1157, line: 135, type: !3233)
!3276 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1157, file: !1157, line: 135, type: !3231, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3277)
!3277 = !{!3275}
!3278 = !DILocation(line: 0, scope: !3276, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 58, column: 27, scope: !3230)
!3280 = !DILocation(line: 137, column: 10, scope: !3276, inlinedAt: !3279)
!3281 = !{!1166, !747, i64 0}
!3282 = !DILocation(line: 58, column: 43, scope: !3230)
!3283 = !DILocation(line: 59, column: 29, scope: !3230)
!3284 = !DILocation(line: 59, column: 45, scope: !3230)
!3285 = !DILocation(line: 69, column: 17, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3230, file: !693, line: 69, column: 7)
!3287 = !DILocation(line: 57, column: 50, scope: !3230)
!3288 = !DILocation(line: 69, column: 33, scope: !3286)
!3289 = !DILocation(line: 69, column: 53, scope: !3286)
!3290 = !DILocation(line: 69, column: 59, scope: !3286)
!3291 = !DILocation(line: 69, column: 7, scope: !3230)
!3292 = !DILocation(line: 71, column: 11, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3286, file: !693, line: 70, column: 5)
!3294 = !DILocation(line: 72, column: 9, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3293, file: !693, line: 71, column: 11)
!3296 = !DILocation(line: 72, column: 15, scope: !3295)
!3297 = !DILocation(line: 77, column: 1, scope: !3230)
!3298 = !DISubprogram(name: "__fpending", scope: !3299, file: !3299, line: 75, type: !3300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!3299 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!97, !3233}
!3302 = distinct !DISubprogram(name: "rpl_fclose", scope: !695, file: !695, line: 58, type: !3303, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !3339)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!95, !3305}
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !3307)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3307, file: !234, line: 51, baseType: !95, size: 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3307, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3307, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3307, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3307, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3307, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3307, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3307, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3307, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3307, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3307, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3307, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3307, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3307, file: !234, line: 70, baseType: !3323, size: 64, offset: 832)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3307, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3307, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3307, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3307, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3307, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3307, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3307, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3307, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3307, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3307, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3307, file: !234, line: 93, baseType: !3323, size: 64, offset: 1344)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3307, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3307, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3307, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3307, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!3339 = !{!3340, !3341, !3342, !3343}
!3340 = !DILocalVariable(name: "fp", arg: 1, scope: !3302, file: !695, line: 58, type: !3305)
!3341 = !DILocalVariable(name: "saved_errno", scope: !3302, file: !695, line: 60, type: !95)
!3342 = !DILocalVariable(name: "fd", scope: !3302, file: !695, line: 63, type: !95)
!3343 = !DILocalVariable(name: "result", scope: !3302, file: !695, line: 74, type: !95)
!3344 = !DILocation(line: 0, scope: !3302)
!3345 = !DILocation(line: 63, column: 12, scope: !3302)
!3346 = !DILocation(line: 64, column: 10, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3302, file: !695, line: 64, column: 7)
!3348 = !DILocation(line: 64, column: 7, scope: !3302)
!3349 = !DILocation(line: 65, column: 12, scope: !3347)
!3350 = !DILocation(line: 65, column: 5, scope: !3347)
!3351 = !DILocation(line: 70, column: 9, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3302, file: !695, line: 70, column: 7)
!3353 = !DILocation(line: 70, column: 23, scope: !3352)
!3354 = !DILocation(line: 70, column: 33, scope: !3352)
!3355 = !DILocation(line: 70, column: 26, scope: !3352)
!3356 = !DILocation(line: 70, column: 59, scope: !3352)
!3357 = !DILocation(line: 71, column: 7, scope: !3352)
!3358 = !DILocation(line: 71, column: 10, scope: !3352)
!3359 = !DILocation(line: 70, column: 7, scope: !3302)
!3360 = !DILocation(line: 100, column: 12, scope: !3302)
!3361 = !DILocation(line: 105, column: 7, scope: !3302)
!3362 = !DILocation(line: 72, column: 19, scope: !3352)
!3363 = !DILocation(line: 105, column: 19, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3302, file: !695, line: 105, column: 7)
!3365 = !DILocation(line: 107, column: 13, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3364, file: !695, line: 106, column: 5)
!3367 = !DILocation(line: 109, column: 5, scope: !3366)
!3368 = !DILocation(line: 112, column: 1, scope: !3302)
!3369 = !DISubprogram(name: "fileno", scope: !324, file: !324, line: 809, type: !3303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!3370 = !DISubprogram(name: "fclose", scope: !324, file: !324, line: 178, type: !3303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!3371 = !DISubprogram(name: "__freading", scope: !3299, file: !3299, line: 51, type: !3303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!3372 = !DISubprogram(name: "lseek", scope: !1028, file: !1028, line: 339, type: !3373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!256, !95, !256, !95}
!3375 = distinct !DISubprogram(name: "rpl_fflush", scope: !697, file: !697, line: 130, type: !3376, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3412)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!95, !3378}
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !3380)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !3381)
!3381 = !{!3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3380, file: !234, line: 51, baseType: !95, size: 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3380, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3380, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3380, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3380, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3380, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3380, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3380, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3380, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3380, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3380, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3380, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3380, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3380, file: !234, line: 70, baseType: !3396, size: 64, offset: 832)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3380, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3380, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3380, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3380, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3380, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3380, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3380, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3380, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3380, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3380, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3380, file: !234, line: 93, baseType: !3396, size: 64, offset: 1344)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3380, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3380, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3380, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3380, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!3412 = !{!3413}
!3413 = !DILocalVariable(name: "stream", arg: 1, scope: !3375, file: !697, line: 130, type: !3378)
!3414 = !DILocation(line: 0, scope: !3375)
!3415 = !DILocation(line: 151, column: 14, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3375, file: !697, line: 151, column: 7)
!3417 = !DILocation(line: 151, column: 22, scope: !3416)
!3418 = !DILocation(line: 151, column: 27, scope: !3416)
!3419 = !DILocation(line: 151, column: 7, scope: !3375)
!3420 = !DILocation(line: 152, column: 12, scope: !3416)
!3421 = !DILocation(line: 152, column: 5, scope: !3416)
!3422 = !DILocalVariable(name: "fp", arg: 1, scope: !3423, file: !697, line: 42, type: !3378)
!3423 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !697, file: !697, line: 42, type: !3424, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3426)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{null, !3378}
!3426 = !{!3422}
!3427 = !DILocation(line: 0, scope: !3423, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 157, column: 3, scope: !3375)
!3429 = !DILocation(line: 44, column: 12, scope: !3430, inlinedAt: !3428)
!3430 = distinct !DILexicalBlock(scope: !3423, file: !697, line: 44, column: 7)
!3431 = !DILocation(line: 44, column: 19, scope: !3430, inlinedAt: !3428)
!3432 = !DILocation(line: 44, column: 7, scope: !3423, inlinedAt: !3428)
!3433 = !DILocation(line: 46, column: 5, scope: !3430, inlinedAt: !3428)
!3434 = !DILocation(line: 159, column: 10, scope: !3375)
!3435 = !DILocation(line: 159, column: 3, scope: !3375)
!3436 = !DILocation(line: 236, column: 1, scope: !3375)
!3437 = !DISubprogram(name: "fflush", scope: !324, file: !324, line: 230, type: !3376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!3438 = distinct !DISubprogram(name: "rpl_fseeko", scope: !699, file: !699, line: 28, type: !3439, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !3476)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!95, !3441, !3475, !95}
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !3443)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !3444)
!3444 = !{!3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3443, file: !234, line: 51, baseType: !95, size: 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3443, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3443, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3443, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3443, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3443, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3443, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3443, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3443, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3443, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3443, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3443, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3443, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3443, file: !234, line: 70, baseType: !3459, size: 64, offset: 832)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3443, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3443, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3443, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3443, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3443, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3443, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3443, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3443, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3443, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3443, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3443, file: !234, line: 93, baseType: !3459, size: 64, offset: 1344)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3443, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3443, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3443, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3443, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!3475 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !324, line: 63, baseType: !256)
!3476 = !{!3477, !3478, !3479, !3480}
!3477 = !DILocalVariable(name: "fp", arg: 1, scope: !3438, file: !699, line: 28, type: !3441)
!3478 = !DILocalVariable(name: "offset", arg: 2, scope: !3438, file: !699, line: 28, type: !3475)
!3479 = !DILocalVariable(name: "whence", arg: 3, scope: !3438, file: !699, line: 28, type: !95)
!3480 = !DILocalVariable(name: "pos", scope: !3481, file: !699, line: 123, type: !3475)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !699, line: 119, column: 5)
!3482 = distinct !DILexicalBlock(scope: !3438, file: !699, line: 55, column: 7)
!3483 = !DILocation(line: 0, scope: !3438)
!3484 = !DILocation(line: 55, column: 12, scope: !3482)
!3485 = !{!1166, !725, i64 16}
!3486 = !DILocation(line: 55, column: 33, scope: !3482)
!3487 = !{!1166, !725, i64 8}
!3488 = !DILocation(line: 55, column: 25, scope: !3482)
!3489 = !DILocation(line: 56, column: 7, scope: !3482)
!3490 = !DILocation(line: 56, column: 15, scope: !3482)
!3491 = !DILocation(line: 56, column: 37, scope: !3482)
!3492 = !{!1166, !725, i64 32}
!3493 = !DILocation(line: 56, column: 29, scope: !3482)
!3494 = !DILocation(line: 57, column: 7, scope: !3482)
!3495 = !DILocation(line: 57, column: 15, scope: !3482)
!3496 = !{!1166, !725, i64 72}
!3497 = !DILocation(line: 57, column: 29, scope: !3482)
!3498 = !DILocation(line: 55, column: 7, scope: !3438)
!3499 = !DILocation(line: 123, column: 26, scope: !3481)
!3500 = !DILocation(line: 123, column: 19, scope: !3481)
!3501 = !DILocation(line: 0, scope: !3481)
!3502 = !DILocation(line: 124, column: 15, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3481, file: !699, line: 124, column: 11)
!3504 = !DILocation(line: 124, column: 11, scope: !3481)
!3505 = !DILocation(line: 135, column: 19, scope: !3481)
!3506 = !DILocation(line: 136, column: 12, scope: !3481)
!3507 = !DILocation(line: 136, column: 20, scope: !3481)
!3508 = !{!1166, !1167, i64 144}
!3509 = !DILocation(line: 167, column: 7, scope: !3481)
!3510 = !DILocation(line: 169, column: 10, scope: !3438)
!3511 = !DILocation(line: 169, column: 3, scope: !3438)
!3512 = !DILocation(line: 170, column: 1, scope: !3438)
!3513 = !DISubprogram(name: "fseeko", scope: !324, file: !324, line: 736, type: !3514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!95, !3441, !256, !95}
!3516 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !626, file: !626, line: 100, type: !3517, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !629, retainedNodes: !3520)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!97, !1332, !72, !97, !3519}
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!3520 = !{!3521, !3522, !3523, !3524, !3525}
!3521 = !DILocalVariable(name: "pwc", arg: 1, scope: !3516, file: !626, line: 100, type: !1332)
!3522 = !DILocalVariable(name: "s", arg: 2, scope: !3516, file: !626, line: 100, type: !72)
!3523 = !DILocalVariable(name: "n", arg: 3, scope: !3516, file: !626, line: 100, type: !97)
!3524 = !DILocalVariable(name: "ps", arg: 4, scope: !3516, file: !626, line: 100, type: !3519)
!3525 = !DILocalVariable(name: "ret", scope: !3516, file: !626, line: 130, type: !97)
!3526 = !DILocation(line: 0, scope: !3516)
!3527 = !DILocation(line: 105, column: 9, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3516, file: !626, line: 105, column: 7)
!3529 = !DILocation(line: 105, column: 7, scope: !3516)
!3530 = !DILocation(line: 117, column: 10, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3516, file: !626, line: 117, column: 7)
!3532 = !DILocation(line: 117, column: 7, scope: !3516)
!3533 = !DILocation(line: 130, column: 16, scope: !3516)
!3534 = !DILocation(line: 135, column: 11, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3516, file: !626, line: 135, column: 7)
!3536 = !DILocation(line: 135, column: 25, scope: !3535)
!3537 = !DILocation(line: 135, column: 30, scope: !3535)
!3538 = !DILocation(line: 135, column: 7, scope: !3516)
!3539 = !DILocalVariable(name: "ps", arg: 1, scope: !3540, file: !1305, line: 1135, type: !3519)
!3540 = distinct !DISubprogram(name: "mbszero", scope: !1305, file: !1305, line: 1135, type: !3541, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !629, retainedNodes: !3543)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{null, !3519}
!3543 = !{!3539}
!3544 = !DILocation(line: 0, scope: !3540, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 137, column: 5, scope: !3535)
!3546 = !DILocalVariable(name: "__dest", arg: 1, scope: !3547, file: !1314, line: 57, type: !94)
!3547 = distinct !DISubprogram(name: "memset", scope: !1314, file: !1314, line: 57, type: !1315, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !629, retainedNodes: !3548)
!3548 = !{!3546, !3549, !3550}
!3549 = !DILocalVariable(name: "__ch", arg: 2, scope: !3547, file: !1314, line: 57, type: !95)
!3550 = !DILocalVariable(name: "__len", arg: 3, scope: !3547, file: !1314, line: 57, type: !97)
!3551 = !DILocation(line: 0, scope: !3547, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 1137, column: 3, scope: !3540, inlinedAt: !3545)
!3553 = !DILocation(line: 59, column: 10, scope: !3547, inlinedAt: !3552)
!3554 = !DILocation(line: 137, column: 5, scope: !3535)
!3555 = !DILocation(line: 138, column: 11, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3516, file: !626, line: 138, column: 7)
!3557 = !DILocation(line: 138, column: 7, scope: !3516)
!3558 = !DILocation(line: 139, column: 5, scope: !3556)
!3559 = !DILocation(line: 143, column: 26, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3516, file: !626, line: 143, column: 7)
!3561 = !DILocation(line: 143, column: 41, scope: !3560)
!3562 = !DILocation(line: 143, column: 7, scope: !3516)
!3563 = !DILocation(line: 145, column: 15, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !626, line: 145, column: 11)
!3565 = distinct !DILexicalBlock(scope: !3560, file: !626, line: 144, column: 5)
!3566 = !DILocation(line: 145, column: 11, scope: !3565)
!3567 = !DILocation(line: 146, column: 32, scope: !3564)
!3568 = !DILocation(line: 146, column: 16, scope: !3564)
!3569 = !DILocation(line: 146, column: 14, scope: !3564)
!3570 = !DILocation(line: 146, column: 9, scope: !3564)
!3571 = !DILocation(line: 286, column: 1, scope: !3516)
!3572 = !DISubprogram(name: "mbsinit", scope: !3573, file: !3573, line: 293, type: !3574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !738)
!3573 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!95, !3576}
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!3578 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !701, file: !701, line: 27, type: !2788, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3579)
!3579 = !{!3580, !3581, !3582, !3583}
!3580 = !DILocalVariable(name: "ptr", arg: 1, scope: !3578, file: !701, line: 27, type: !94)
!3581 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3578, file: !701, line: 27, type: !97)
!3582 = !DILocalVariable(name: "size", arg: 3, scope: !3578, file: !701, line: 27, type: !97)
!3583 = !DILocalVariable(name: "nbytes", scope: !3578, file: !701, line: 29, type: !97)
!3584 = !DILocation(line: 0, scope: !3578)
!3585 = !DILocation(line: 30, column: 7, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3578, file: !701, line: 30, column: 7)
!3587 = !DILocalVariable(name: "ptr", arg: 1, scope: !3588, file: !2880, line: 2057, type: !94)
!3588 = distinct !DISubprogram(name: "rpl_realloc", scope: !2880, file: !2880, line: 2057, type: !2872, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3589)
!3589 = !{!3587, !3590}
!3590 = !DILocalVariable(name: "size", arg: 2, scope: !3588, file: !2880, line: 2057, type: !97)
!3591 = !DILocation(line: 0, scope: !3588, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 37, column: 10, scope: !3578)
!3593 = !DILocation(line: 2059, column: 24, scope: !3588, inlinedAt: !3592)
!3594 = !DILocation(line: 2059, column: 10, scope: !3588, inlinedAt: !3592)
!3595 = !DILocation(line: 37, column: 3, scope: !3578)
!3596 = !DILocation(line: 32, column: 7, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3586, file: !701, line: 31, column: 5)
!3598 = !DILocation(line: 32, column: 13, scope: !3597)
!3599 = !DILocation(line: 33, column: 7, scope: !3597)
!3600 = !DILocation(line: 38, column: 1, scope: !3578)
!3601 = distinct !DISubprogram(name: "hard_locale", scope: !644, file: !644, line: 28, type: !3602, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3604)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!217, !95}
!3604 = !{!3605, !3606}
!3605 = !DILocalVariable(name: "category", arg: 1, scope: !3601, file: !644, line: 28, type: !95)
!3606 = !DILocalVariable(name: "locale", scope: !3601, file: !644, line: 30, type: !3607)
!3607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3608)
!3608 = !{!3609}
!3609 = !DISubrange(count: 257)
!3610 = !DILocation(line: 0, scope: !3601)
!3611 = !DILocation(line: 30, column: 3, scope: !3601)
!3612 = !DILocation(line: 30, column: 8, scope: !3601)
!3613 = !DILocation(line: 32, column: 7, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3601, file: !644, line: 32, column: 7)
!3615 = !DILocation(line: 32, column: 7, scope: !3601)
!3616 = !DILocalVariable(name: "__s1", arg: 1, scope: !3617, file: !759, line: 1359, type: !72)
!3617 = distinct !DISubprogram(name: "streq", scope: !759, file: !759, line: 1359, type: !760, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3618)
!3618 = !{!3616, !3619}
!3619 = !DILocalVariable(name: "__s2", arg: 2, scope: !3617, file: !759, line: 1359, type: !72)
!3620 = !DILocation(line: 0, scope: !3617, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 35, column: 9, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3601, file: !644, line: 35, column: 7)
!3623 = !DILocation(line: 1361, column: 11, scope: !3617, inlinedAt: !3621)
!3624 = !DILocation(line: 1361, column: 10, scope: !3617, inlinedAt: !3621)
!3625 = !DILocation(line: 35, column: 29, scope: !3622)
!3626 = !DILocation(line: 0, scope: !3617, inlinedAt: !3627)
!3627 = distinct !DILocation(line: 35, column: 32, scope: !3622)
!3628 = !DILocation(line: 1361, column: 11, scope: !3617, inlinedAt: !3627)
!3629 = !DILocation(line: 1361, column: 10, scope: !3617, inlinedAt: !3627)
!3630 = !DILocation(line: 35, column: 7, scope: !3601)
!3631 = !DILocation(line: 46, column: 3, scope: !3601)
!3632 = !DILocation(line: 47, column: 1, scope: !3601)
!3633 = distinct !DISubprogram(name: "setlocale_null_r", scope: !706, file: !706, line: 154, type: !3634, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !3636)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!95, !95, !93, !97}
!3636 = !{!3637, !3638, !3639}
!3637 = !DILocalVariable(name: "category", arg: 1, scope: !3633, file: !706, line: 154, type: !95)
!3638 = !DILocalVariable(name: "buf", arg: 2, scope: !3633, file: !706, line: 154, type: !93)
!3639 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3633, file: !706, line: 154, type: !97)
!3640 = !DILocation(line: 0, scope: !3633)
!3641 = !DILocation(line: 159, column: 10, scope: !3633)
!3642 = !DILocation(line: 159, column: 3, scope: !3633)
!3643 = distinct !DISubprogram(name: "setlocale_null", scope: !706, file: !706, line: 186, type: !3644, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !3646)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!72, !95}
!3646 = !{!3647}
!3647 = !DILocalVariable(name: "category", arg: 1, scope: !3643, file: !706, line: 186, type: !95)
!3648 = !DILocation(line: 0, scope: !3643)
!3649 = !DILocation(line: 189, column: 10, scope: !3643)
!3650 = !DILocation(line: 189, column: 3, scope: !3643)
!3651 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !708, file: !708, line: 35, type: !3644, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3652)
!3652 = !{!3653, !3654}
!3653 = !DILocalVariable(name: "category", arg: 1, scope: !3651, file: !708, line: 35, type: !95)
!3654 = !DILocalVariable(name: "result", scope: !3651, file: !708, line: 37, type: !72)
!3655 = !DILocation(line: 0, scope: !3651)
!3656 = !DILocation(line: 37, column: 24, scope: !3651)
!3657 = !DILocation(line: 62, column: 3, scope: !3651)
!3658 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !708, file: !708, line: 66, type: !3634, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3659)
!3659 = !{!3660, !3661, !3662, !3663, !3664}
!3660 = !DILocalVariable(name: "category", arg: 1, scope: !3658, file: !708, line: 66, type: !95)
!3661 = !DILocalVariable(name: "buf", arg: 2, scope: !3658, file: !708, line: 66, type: !93)
!3662 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3658, file: !708, line: 66, type: !97)
!3663 = !DILocalVariable(name: "result", scope: !3658, file: !708, line: 111, type: !72)
!3664 = !DILocalVariable(name: "length", scope: !3665, file: !708, line: 125, type: !97)
!3665 = distinct !DILexicalBlock(scope: !3666, file: !708, line: 124, column: 5)
!3666 = distinct !DILexicalBlock(scope: !3658, file: !708, line: 113, column: 7)
!3667 = !DILocation(line: 0, scope: !3658)
!3668 = !DILocation(line: 0, scope: !3651, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 111, column: 24, scope: !3658)
!3670 = !DILocation(line: 37, column: 24, scope: !3651, inlinedAt: !3669)
!3671 = !DILocation(line: 113, column: 14, scope: !3666)
!3672 = !DILocation(line: 113, column: 7, scope: !3658)
!3673 = !DILocation(line: 116, column: 19, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !708, line: 116, column: 11)
!3675 = distinct !DILexicalBlock(scope: !3666, file: !708, line: 114, column: 5)
!3676 = !DILocation(line: 116, column: 11, scope: !3675)
!3677 = !DILocation(line: 120, column: 16, scope: !3674)
!3678 = !DILocation(line: 120, column: 9, scope: !3674)
!3679 = !DILocation(line: 125, column: 23, scope: !3665)
!3680 = !DILocation(line: 0, scope: !3665)
!3681 = !DILocation(line: 126, column: 18, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3665, file: !708, line: 126, column: 11)
!3683 = !DILocation(line: 126, column: 11, scope: !3665)
!3684 = !DILocation(line: 128, column: 39, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3682, file: !708, line: 127, column: 9)
!3686 = !DILocalVariable(name: "__dest", arg: 1, scope: !3687, file: !1314, line: 26, type: !3148)
!3687 = distinct !DISubprogram(name: "memcpy", scope: !1314, file: !1314, line: 26, type: !3146, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3688)
!3688 = !{!3686, !3689, !3690}
!3689 = !DILocalVariable(name: "__src", arg: 2, scope: !3687, file: !1314, line: 26, type: !925)
!3690 = !DILocalVariable(name: "__len", arg: 3, scope: !3687, file: !1314, line: 26, type: !97)
!3691 = !DILocation(line: 0, scope: !3687, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 128, column: 11, scope: !3685)
!3693 = !DILocation(line: 29, column: 10, scope: !3687, inlinedAt: !3692)
!3694 = !DILocation(line: 129, column: 11, scope: !3685)
!3695 = !DILocation(line: 133, column: 23, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3697, file: !708, line: 133, column: 15)
!3697 = distinct !DILexicalBlock(scope: !3682, file: !708, line: 132, column: 9)
!3698 = !DILocation(line: 133, column: 15, scope: !3697)
!3699 = !DILocation(line: 138, column: 44, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3696, file: !708, line: 134, column: 13)
!3701 = !DILocation(line: 0, scope: !3687, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 138, column: 15, scope: !3700)
!3703 = !DILocation(line: 29, column: 10, scope: !3687, inlinedAt: !3702)
!3704 = !DILocation(line: 139, column: 15, scope: !3700)
!3705 = !DILocation(line: 139, column: 32, scope: !3700)
!3706 = !DILocation(line: 140, column: 13, scope: !3700)
!3707 = !DILocation(line: 0, scope: !3666)
!3708 = !DILocation(line: 145, column: 1, scope: !3658)
