; ModuleID = 'src/false.bc'
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
@.str.2 = private unnamed_addr constant [44 x i8] c"Exit with a status code indicating failure.\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !37
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !59
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !64
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !69
@.str.14 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !106
@.str.15 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !108
@.str.16 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !110
@.str.17 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !115
@.str.31 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !152
@.str.32 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !157
@.str.33 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !162
@.str.34 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !167
@.str.35 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !169
@.str.36 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !171
@.str.37 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !173
@.str.38 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !175
@.str.42 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !189
@.str.43 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !191
@.str.44 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !196
@.str.45 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !201
@.str.46 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !206
@.str.18 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !289
@Version = dso_local local_unnamed_addr global ptr @.str.18, align 8, !dbg !292
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !296
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !309
@.str.21 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !301
@.str.1.22 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !303
@.str.2.23 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !305
@.str.3.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !307
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !311
@stderr = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !317
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !354
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !319
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !344
@.str.1.31 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !346
@.str.2.33 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !348
@.str.3.32 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !350
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !352
@.str.4.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !356
@.str.5.27 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !358
@.str.6.28 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !363
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !368
@.str.47 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !374
@.str.1.48 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !376
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !378
@.str.51 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !409
@.str.1.52 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !412
@.str.2.53 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !414
@.str.3.54 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !416
@.str.4.55 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !418
@.str.5.56 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !420
@.str.6.57 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !422
@.str.7.58 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !424
@.str.8.59 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !426
@.str.9.60 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !428
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.51, ptr @.str.1.52, ptr @.str.2.53, ptr @.str.3.54, ptr @.str.4.55, ptr @.str.5.56, ptr @.str.6.57, ptr @.str.7.58, ptr @.str.8.59, ptr @.str.9.60, ptr null], align 8, !dbg !430
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !455
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !469
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !507
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !514
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !471
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !516
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !459
@.str.10.63 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !476
@.str.11.61 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !478
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !480
@.str.13.62 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !482
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !484
@.str.67 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !522
@.str.1.68 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !525
@.str.2.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !527
@.str.3.70 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !529
@.str.4.71 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !531
@.str.5.72 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !533
@.str.6.73 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !538
@.str.7.74 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !543
@.str.8.75 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !545
@.str.9.76 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !550
@.str.10.77 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !555
@.str.11.78 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !560
@.str.12.79 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !565
@.str.13.80 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !567
@.str.14.81 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !569
@.str.15.82 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !574
@.str.16.83 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !579
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.88 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !584
@.str.18.89 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !586
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !588
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !590
@.str.21.90 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !592
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !594
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !599
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !604
@exit_failure = dso_local global i32 1, align 4, !dbg !612
@.str.103 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !618
@.str.1.101 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !621
@.str.2.102 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !623
@.str.114 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !625
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !628
@.str.119 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !643
@.str.1.120 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !646

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !718 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !722, metadata !DIExpression()), !dbg !723
  %2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !724
  %3 = load ptr, ptr @program_name, align 8, !dbg !724, !tbaa !725
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %2, ptr noundef %3, ptr noundef %3) #36, !dbg !724
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !729
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %5) #36, !dbg !729
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !730
  tail call fastcc void @oputs_(ptr noundef %7), !dbg !730
  %8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !731
  tail call fastcc void @oputs_(ptr noundef %8), !dbg !731
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #36, !dbg !732
  %10 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef nonnull @.str.3) #36, !dbg !732
  tail call fastcc void @emit_ancillary_info(), !dbg !733
  tail call void @exit(i32 noundef %0) #37, !dbg !734
  unreachable, !dbg !734
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !735 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !740 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !71 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !212, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata ptr %0, metadata !213, metadata !DIExpression()), !dbg !745
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !746, !tbaa !747
  %3 = icmp eq i32 %2, -1, !dbg !749
  br i1 %3, label %4, label %16, !dbg !750

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.14) #36, !dbg !751
  call void @llvm.dbg.value(metadata ptr %5, metadata !214, metadata !DIExpression()), !dbg !752
  %6 = icmp eq ptr %5, null, !dbg !753
  br i1 %6, label %14, label %7, !dbg !754

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !755, !tbaa !756
  %9 = icmp eq i8 %8, 0, !dbg !755
  br i1 %9, label %14, label %10, !dbg !757

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !758, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !764, metadata !DIExpression()), !dbg !765
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.15) #38, !dbg !767
  %12 = icmp eq i32 %11, 0, !dbg !768
  %13 = zext i1 %12 to i32, !dbg !757
  br label %14, !dbg !757

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !769, !tbaa !747
  br label %16, !dbg !770

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !771
  %18 = icmp eq i32 %17, 0, !dbg !771
  br i1 %18, label %22, label %19, !dbg !773

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !774, !tbaa !725
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !774
  br label %122, !dbg !776

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !217, metadata !DIExpression()), !dbg !745
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.16) #38, !dbg !777
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !778
  call void @llvm.dbg.value(metadata ptr %24, metadata !219, metadata !DIExpression()), !dbg !745
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !779
  call void @llvm.dbg.value(metadata ptr %25, metadata !220, metadata !DIExpression()), !dbg !745
  %26 = icmp eq ptr %25, null, !dbg !780
  br i1 %26, label %54, label %27, !dbg !781

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !782
  br i1 %28, label %54, label %29, !dbg !783

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !221, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i64 0, metadata !225, metadata !DIExpression()), !dbg !784
  %30 = icmp ult ptr %24, %25, !dbg !785
  br i1 %30, label %31, label %52, !dbg !786

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !745
  %33 = load ptr, ptr %32, align 8, !tbaa !725
  br label %34, !dbg !786

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !221, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i64 %36, metadata !225, metadata !DIExpression()), !dbg !784
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !787
  call void @llvm.dbg.value(metadata ptr %37, metadata !221, metadata !DIExpression()), !dbg !784
  %38 = load i8, ptr %35, align 1, !dbg !787, !tbaa !756
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !787
  %41 = load i16, ptr %40, align 2, !dbg !787, !tbaa !788
  %42 = freeze i16 %41, !dbg !790
  %43 = lshr i16 %42, 13, !dbg !790
  %44 = and i16 %43, 1, !dbg !790
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !791
  call void @llvm.dbg.value(metadata i64 %46, metadata !225, metadata !DIExpression()), !dbg !784
  %47 = icmp ult ptr %37, %25, !dbg !785
  %48 = icmp ult i64 %46, 2, !dbg !792
  %49 = select i1 %47, i1 %48, i1 false, !dbg !792
  br i1 %49, label %34, label %50, !dbg !786, !llvm.loop !793

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !795
  br i1 %51, label %52, label %54, !dbg !797

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !797

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !745
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !217, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata ptr %55, metadata !220, metadata !DIExpression()), !dbg !745
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.17) #38, !dbg !798
  call void @llvm.dbg.value(metadata i64 %57, metadata !226, metadata !DIExpression()), !dbg !745
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !799
  call void @llvm.dbg.value(metadata ptr %58, metadata !227, metadata !DIExpression()), !dbg !745
  br label %59, !dbg !800

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !745
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !217, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata ptr %60, metadata !227, metadata !DIExpression()), !dbg !745
  %62 = load i8, ptr %60, align 1, !dbg !801, !tbaa !756
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !802

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !803
  %65 = load i8, ptr %64, align 1, !dbg !806, !tbaa !756
  %66 = icmp ne i8 %65, 45, !dbg !807
  %67 = select i1 %66, i1 %61, i1 false, !dbg !808
  br label %68, !dbg !808

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !217, metadata !DIExpression()), !dbg !745
  %70 = tail call ptr @__ctype_b_loc() #39, !dbg !809
  %71 = load ptr, ptr %70, align 8, !dbg !809, !tbaa !725
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !809
  %74 = load i16, ptr %73, align 2, !dbg !809, !tbaa !788
  %75 = and i16 %74, 8192, !dbg !809
  %76 = icmp eq i16 %75, 0, !dbg !809
  br i1 %76, label %90, label %77, !dbg !811

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !812
  br i1 %78, label %92, label %79, !dbg !815

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !816
  %81 = load i8, ptr %80, align 1, !dbg !816, !tbaa !756
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !816
  %84 = load i16, ptr %83, align 2, !dbg !816, !tbaa !788
  %85 = and i16 %84, 8192, !dbg !816
  %86 = icmp eq i16 %85, 0, !dbg !816
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !817
  br i1 %89, label %90, label %92, !dbg !817

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !818
  call void @llvm.dbg.value(metadata ptr %91, metadata !227, metadata !DIExpression()), !dbg !745
  br label %59, !dbg !800, !llvm.loop !819

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !821
  %94 = load ptr, ptr @stdout, align 8, !dbg !821, !tbaa !725
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !821
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !758, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !758, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !758, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !758, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !758, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !758, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !758, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !758, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !758, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !758, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !284, metadata !DIExpression()), !dbg !745
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.10, i64 noundef 6) #38, !dbg !842
  %97 = icmp eq i32 %96, 0, !dbg !842
  br i1 %97, label %101, label %98, !dbg !844

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.11, i64 noundef 9) #38, !dbg !845
  %100 = icmp eq i32 %99, 0, !dbg !845
  br i1 %100, label %101, label %104, !dbg !846

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !847
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #36, !dbg !847
  br label %107, !dbg !849

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !850
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #36, !dbg !850
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !852, !tbaa !725
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.35, ptr noundef %108), !dbg !852
  %110 = load ptr, ptr @stdout, align 8, !dbg !853, !tbaa !725
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %110), !dbg !853
  %112 = ptrtoint ptr %60 to i64, !dbg !854
  %113 = sub i64 %112, %93, !dbg !854
  %114 = load ptr, ptr @stdout, align 8, !dbg !854, !tbaa !725
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !854
  %116 = load ptr, ptr @stdout, align 8, !dbg !855, !tbaa !725
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %116), !dbg !855
  %118 = load ptr, ptr @stdout, align 8, !dbg !856, !tbaa !725
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %118), !dbg !856
  %120 = load ptr, ptr @stdout, align 8, !dbg !857, !tbaa !725
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !857
  br label %122, !dbg !858

122:                                              ; preds = %107, %19
  ret void, !dbg !858
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #4 !dbg !859 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !863, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !871, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata ptr poison, metadata !871, metadata !DIExpression()), !dbg !876
  tail call void @emit_bug_reporting_address() #36, !dbg !877
  %1 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !878
  call void @llvm.dbg.value(metadata ptr %1, metadata !874, metadata !DIExpression()), !dbg !876
  %2 = icmp eq ptr %1, null, !dbg !879
  br i1 %2, label %10, label %3, !dbg !881

3:                                                ; preds = %0
  %4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.42, i64 noundef 3) #38, !dbg !882
  %5 = icmp eq i32 %4, 0, !dbg !882
  br i1 %5, label %10, label %6, !dbg !883

6:                                                ; preds = %3
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #36, !dbg !884
  %8 = load ptr, ptr @stdout, align 8, !dbg !884, !tbaa !725
  %9 = tail call i32 @fputs_unlocked(ptr noundef %7, ptr noundef %8), !dbg !884
  br label %10, !dbg !886

10:                                               ; preds = %6, %3, %0
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !871, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !875, metadata !DIExpression()), !dbg !876
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #36, !dbg !887
  %12 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %11, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3) #36, !dbg !887
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #36, !dbg !888
  %14 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.46) #36, !dbg !888
  ret void, !dbg !889
}

; Function Attrs: noreturn nounwind
declare !dbg !890 void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !892 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !896 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !900 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !904 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !907 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !910 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !913 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !916 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !922 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !923 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !dbg !929 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !934, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata ptr %1, metadata !935, metadata !DIExpression()), !dbg !936
  %3 = icmp eq i32 %0, 2, !dbg !937
  br i1 %3, label %4, label %22, !dbg !939

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !dbg !940, !tbaa !725
  tail call void @set_program_name(ptr noundef %5) #36, !dbg !942
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.7) #36, !dbg !943
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #36, !dbg !944
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.8) #36, !dbg !945
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !946
  %10 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !947
  %11 = load ptr, ptr %10, align 8, !dbg !947, !tbaa !725
  call void @llvm.dbg.value(metadata ptr %11, metadata !758, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !764, metadata !DIExpression()), !dbg !949
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(7) @.str.10) #38, !dbg !951
  %13 = icmp eq i32 %12, 0, !dbg !952
  br i1 %13, label %14, label %15, !dbg !953

14:                                               ; preds = %4
  tail call void @usage(i32 noundef 1) #40, !dbg !954
  unreachable, !dbg !954

15:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr %11, metadata !758, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr @.str.11, metadata !764, metadata !DIExpression()), !dbg !955
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(10) @.str.11) #38, !dbg !958
  %17 = icmp eq i32 %16, 0, !dbg !959
  br i1 %17, label %18, label %22, !dbg !960

18:                                               ; preds = %15
  %19 = load ptr, ptr @stdout, align 8, !dbg !961, !tbaa !725
  %20 = load ptr, ptr @Version, align 8, !dbg !962, !tbaa !725
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #36, !dbg !963
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %20, ptr noundef %21, ptr noundef null) #36, !dbg !964
  br label %22, !dbg !964

22:                                               ; preds = %15, %18, %2
  ret i32 1, !dbg !965
}

; Function Attrs: nounwind
declare !dbg !966 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !969 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !970 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !973 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !976, metadata !DIExpression()), !dbg !977
  store ptr %0, ptr @file_name, align 8, !dbg !978, !tbaa !725
  ret void, !dbg !979
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !980 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !984, metadata !DIExpression()), !dbg !985
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !986, !tbaa !987
  ret void, !dbg !989
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !990 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !995, !tbaa !725
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !996
  %3 = icmp eq i32 %2, 0, !dbg !997
  br i1 %3, label %22, label %4, !dbg !998

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !999, !tbaa !987, !range !1000, !noundef !739
  %6 = icmp eq i8 %5, 0, !dbg !999
  br i1 %6, label %11, label %7, !dbg !1001

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1002
  %9 = load i32, ptr %8, align 4, !dbg !1002, !tbaa !747
  %10 = icmp eq i32 %9, 32, !dbg !1003
  br i1 %10, label %22, label %11, !dbg !1004

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1.22, i32 noundef 5) #36, !dbg !1005
  call void @llvm.dbg.value(metadata ptr %12, metadata !992, metadata !DIExpression()), !dbg !1006
  %13 = load ptr, ptr @file_name, align 8, !dbg !1007, !tbaa !725
  %14 = icmp eq ptr %13, null, !dbg !1007
  %15 = tail call ptr @__errno_location() #39, !dbg !1009
  %16 = load i32, ptr %15, align 4, !dbg !1009, !tbaa !747
  br i1 %14, label %19, label %17, !dbg !1010

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1011
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.23, ptr noundef %18, ptr noundef %12) #36, !dbg !1011
  br label %20, !dbg !1011

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.24, ptr noundef %12) #36, !dbg !1012
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1013, !tbaa !747
  tail call void @_exit(i32 noundef %21) #37, !dbg !1014
  unreachable, !dbg !1014

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1015, !tbaa !725
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1017
  %25 = icmp eq i32 %24, 0, !dbg !1018
  br i1 %25, label %28, label %26, !dbg !1019

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1020, !tbaa !747
  tail call void @_exit(i32 noundef %27) #37, !dbg !1021
  unreachable, !dbg !1021

28:                                               ; preds = %22
  ret void, !dbg !1022
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1023 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1028 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 !dbg !1030 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1034, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i32 %1, metadata !1035, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata ptr %2, metadata !1036, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1037, metadata !DIExpression()), !dbg !1039
  tail call fastcc void @flush_stdout(), !dbg !1040
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1041, !tbaa !725
  %7 = icmp eq ptr %6, null, !dbg !1041
  br i1 %7, label %9, label %8, !dbg !1043

8:                                                ; preds = %4
  tail call void %6() #36, !dbg !1044
  br label %13, !dbg !1044

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1045, !tbaa !725
  %11 = tail call ptr @getprogname() #38, !dbg !1045
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef %11) #36, !dbg !1045
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1047, !tbaa.struct !1048
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1047
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1047
  ret void, !dbg !1049
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1050 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1052, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i32 1, metadata !1054, metadata !DIExpression()), !dbg !1059
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1062
  %2 = icmp slt i32 %1, 0, !dbg !1063
  br i1 %2, label %6, label %3, !dbg !1064

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1065, !tbaa !725
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1065
  br label %6, !dbg !1065

6:                                                ; preds = %3, %0
  ret void, !dbg !1066
}

declare !dbg !1067 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1105 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1107, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i32 %1, metadata !1108, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata ptr %2, metadata !1109, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1110, metadata !DIExpression()), !dbg !1112
  %7 = load ptr, ptr @stderr, align 8, !dbg !1113, !tbaa !725
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1114, !noalias !1123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1127
  call void @llvm.dbg.value(metadata ptr %7, metadata !1119, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata ptr %2, metadata !1120, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1121, metadata !DIExpression()), !dbg !1129
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #36, !dbg !1114
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1114, !noalias !1123
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1130, !tbaa !747
  %10 = add i32 %9, 1, !dbg !1130
  store i32 %10, ptr @error_message_count, align 4, !dbg !1130, !tbaa !747
  %11 = icmp eq i32 %1, 0, !dbg !1131
  br i1 %11, label %21, label %12, !dbg !1133

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1134, metadata !DIExpression()), !dbg !1142
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1144
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1138, metadata !DIExpression()), !dbg !1145
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1146
  call void @llvm.dbg.value(metadata ptr %13, metadata !1137, metadata !DIExpression()), !dbg !1142
  %14 = icmp eq ptr %13, null, !dbg !1147
  br i1 %14, label %15, label %17, !dbg !1149

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.26, ptr noundef nonnull @.str.5.27, i32 noundef 5) #36, !dbg !1150
  call void @llvm.dbg.value(metadata ptr %16, metadata !1137, metadata !DIExpression()), !dbg !1142
  br label %17, !dbg !1151

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1142
  call void @llvm.dbg.value(metadata ptr %18, metadata !1137, metadata !DIExpression()), !dbg !1142
  %19 = load ptr, ptr @stderr, align 8, !dbg !1152, !tbaa !725
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.28, ptr noundef %18) #36, !dbg !1152
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1153
  br label %21, !dbg !1154

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1155, !tbaa !725
  call void @llvm.dbg.value(metadata i32 10, metadata !1156, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata ptr %22, metadata !1162, metadata !DIExpression()), !dbg !1163
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1165
  %24 = load ptr, ptr %23, align 8, !dbg !1165, !tbaa !1166
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1165
  %26 = load ptr, ptr %25, align 8, !dbg !1165, !tbaa !1169
  %27 = icmp ult ptr %24, %26, !dbg !1165
  br i1 %27, label %30, label %28, !dbg !1165, !prof !1170

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #36, !dbg !1165
  br label %32, !dbg !1165

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1165
  store ptr %31, ptr %23, align 8, !dbg !1165, !tbaa !1166
  store i8 10, ptr %24, align 1, !dbg !1165, !tbaa !756
  br label %32, !dbg !1165

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1171, !tbaa !725
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #36, !dbg !1171
  %35 = icmp eq i32 %0, 0, !dbg !1172
  br i1 %35, label %37, label %36, !dbg !1174

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #37, !dbg !1175
  unreachable, !dbg !1175

37:                                               ; preds = %32
  ret void, !dbg !1176
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1177 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1180 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1183 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1186 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1189 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1193 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1197, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i32 %1, metadata !1198, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata ptr %2, metadata !1199, metadata !DIExpression()), !dbg !1201
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #36, !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1200, metadata !DIExpression()), !dbg !1203
  call void @llvm.va_start(ptr nonnull %4), !dbg !1204
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1205, !tbaa.struct !1048
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #41, !dbg !1205
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1205
  call void @llvm.va_end(ptr nonnull %4), !dbg !1206
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #36, !dbg !1207
  ret void, !dbg !1207
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !321 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !338, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i32 %1, metadata !339, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata ptr %2, metadata !340, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i32 %3, metadata !341, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata ptr %4, metadata !342, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.declare(metadata ptr %5, metadata !343, metadata !DIExpression()), !dbg !1209
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1210, !tbaa !747
  %9 = icmp eq i32 %8, 0, !dbg !1210
  br i1 %9, label %24, label %10, !dbg !1212

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1213, !tbaa !747
  %12 = icmp eq i32 %11, %3, !dbg !1216
  br i1 %12, label %13, label %23, !dbg !1217

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1218, !tbaa !725
  %15 = icmp eq ptr %14, %2, !dbg !1219
  br i1 %15, label %37, label %16, !dbg !1220

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1221
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1222
  br i1 %19, label %20, label %23, !dbg !1222

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1223
  %22 = icmp eq i32 %21, 0, !dbg !1224
  br i1 %22, label %37, label %23, !dbg !1225

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1226, !tbaa !725
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1227, !tbaa !747
  br label %24, !dbg !1228

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1229
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1230, !tbaa !725
  %26 = icmp eq ptr %25, null, !dbg !1230
  br i1 %26, label %28, label %27, !dbg !1232

27:                                               ; preds = %24
  tail call void %25() #36, !dbg !1233
  br label %32, !dbg !1233

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1234, !tbaa !725
  %30 = tail call ptr @getprogname() #38, !dbg !1234
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.31, ptr noundef %30) #36, !dbg !1234
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1236, !tbaa !725
  %34 = icmp eq ptr %2, null, !dbg !1236
  %35 = select i1 %34, ptr @.str.3.32, ptr @.str.2.33, !dbg !1236
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #36, !dbg !1236
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1237, !tbaa.struct !1048
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1237
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1237
  br label %37, !dbg !1238

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1238
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1239 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1243, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i32 %1, metadata !1244, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata ptr %2, metadata !1245, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i32 %3, metadata !1246, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata ptr %4, metadata !1247, metadata !DIExpression()), !dbg !1249
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1250
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1248, metadata !DIExpression()), !dbg !1251
  call void @llvm.va_start(ptr nonnull %6), !dbg !1252
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1253, !tbaa.struct !1048
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #41, !dbg !1253
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1253
  call void @llvm.va_end(ptr nonnull %6), !dbg !1254
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1255
  ret void, !dbg !1255
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1256 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1259, !tbaa !725
  ret ptr %1, !dbg !1260
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1261 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1263, metadata !DIExpression()), !dbg !1266
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1267
  call void @llvm.dbg.value(metadata ptr %2, metadata !1264, metadata !DIExpression()), !dbg !1266
  %3 = icmp eq ptr %2, null, !dbg !1268
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1268
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1268
  call void @llvm.dbg.value(metadata ptr %5, metadata !1265, metadata !DIExpression()), !dbg !1266
  %6 = ptrtoint ptr %5 to i64, !dbg !1269
  %7 = ptrtoint ptr %0 to i64, !dbg !1269
  %8 = sub i64 %6, %7, !dbg !1269
  %9 = icmp sgt i64 %8, 6, !dbg !1271
  br i1 %9, label %10, label %19, !dbg !1272

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1273
  call void @llvm.dbg.value(metadata ptr %11, metadata !1274, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata ptr @.str.47, metadata !1279, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata i64 7, metadata !1280, metadata !DIExpression()), !dbg !1281
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.47, i64 7), !dbg !1283
  %13 = icmp eq i32 %12, 0, !dbg !1284
  br i1 %13, label %14, label %19, !dbg !1285

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1263, metadata !DIExpression()), !dbg !1266
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.48, i64 noundef 3) #38, !dbg !1286
  %16 = icmp eq i32 %15, 0, !dbg !1289
  %17 = select i1 %16, i64 3, i64 0, !dbg !1290
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1290
  br label %19, !dbg !1290

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1266
  call void @llvm.dbg.value(metadata ptr %21, metadata !1265, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %20, metadata !1263, metadata !DIExpression()), !dbg !1266
  store ptr %20, ptr @program_name, align 8, !dbg !1291, !tbaa !725
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1292, !tbaa !725
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1293, !tbaa !725
  ret void, !dbg !1294
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1295 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !380 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !387, metadata !DIExpression()), !dbg !1296
  call void @llvm.dbg.value(metadata ptr %1, metadata !388, metadata !DIExpression()), !dbg !1296
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1297
  call void @llvm.dbg.value(metadata ptr %5, metadata !389, metadata !DIExpression()), !dbg !1296
  %6 = icmp eq ptr %5, %0, !dbg !1298
  br i1 %6, label %7, label %14, !dbg !1300

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1301
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1302
  call void @llvm.dbg.declare(metadata ptr %4, metadata !395, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata ptr %4, metadata !1304, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata ptr %4, metadata !1313, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i32 0, metadata !1319, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i64 8, metadata !1320, metadata !DIExpression()), !dbg !1321
  store i64 0, ptr %4, align 8, !dbg !1323
  call void @llvm.dbg.value(metadata ptr %3, metadata !390, metadata !DIExpression(DW_OP_deref)), !dbg !1296
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1324
  %9 = icmp eq i64 %8, 2, !dbg !1326
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !390, metadata !DIExpression()), !dbg !1296
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1327
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1296
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1328
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1328
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1296
  ret ptr %15, !dbg !1328
}

; Function Attrs: nounwind
declare !dbg !1329 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1335 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1340, metadata !DIExpression()), !dbg !1343
  %2 = tail call ptr @__errno_location() #39, !dbg !1344
  %3 = load i32, ptr %2, align 4, !dbg !1344, !tbaa !747
  call void @llvm.dbg.value(metadata i32 %3, metadata !1341, metadata !DIExpression()), !dbg !1343
  %4 = icmp eq ptr %0, null, !dbg !1345
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1345
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1346
  call void @llvm.dbg.value(metadata ptr %6, metadata !1342, metadata !DIExpression()), !dbg !1343
  store i32 %3, ptr %2, align 4, !dbg !1347, !tbaa !747
  ret ptr %6, !dbg !1348
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1349 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1355, metadata !DIExpression()), !dbg !1356
  %2 = icmp eq ptr %0, null, !dbg !1357
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1357
  %4 = load i32, ptr %3, align 8, !dbg !1358, !tbaa !1359
  ret i32 %4, !dbg !1361
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1362 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1366, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 %1, metadata !1367, metadata !DIExpression()), !dbg !1368
  %3 = icmp eq ptr %0, null, !dbg !1369
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1369
  store i32 %1, ptr %4, align 8, !dbg !1370, !tbaa !1359
  ret void, !dbg !1371
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1372 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1376, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %1, metadata !1377, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i32 %2, metadata !1378, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %1, metadata !1379, metadata !DIExpression()), !dbg !1384
  %4 = icmp eq ptr %0, null, !dbg !1385
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1385
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1386
  %7 = lshr i8 %1, 5, !dbg !1387
  %8 = zext i8 %7 to i64, !dbg !1387
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1388
  call void @llvm.dbg.value(metadata ptr %9, metadata !1380, metadata !DIExpression()), !dbg !1384
  %10 = and i8 %1, 31, !dbg !1389
  %11 = zext i8 %10 to i32, !dbg !1389
  call void @llvm.dbg.value(metadata i32 %11, metadata !1382, metadata !DIExpression()), !dbg !1384
  %12 = load i32, ptr %9, align 4, !dbg !1390, !tbaa !747
  %13 = lshr i32 %12, %11, !dbg !1391
  %14 = and i32 %13, 1, !dbg !1392
  call void @llvm.dbg.value(metadata i32 %14, metadata !1383, metadata !DIExpression()), !dbg !1384
  %15 = xor i32 %13, %2, !dbg !1393
  %16 = and i32 %15, 1, !dbg !1393
  %17 = shl nuw i32 %16, %11, !dbg !1394
  %18 = xor i32 %17, %12, !dbg !1395
  store i32 %18, ptr %9, align 4, !dbg !1395, !tbaa !747
  ret i32 %14, !dbg !1396
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1397 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1401, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i32 %1, metadata !1402, metadata !DIExpression()), !dbg !1404
  %3 = icmp eq ptr %0, null, !dbg !1405
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1407
  call void @llvm.dbg.value(metadata ptr %4, metadata !1401, metadata !DIExpression()), !dbg !1404
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1408
  %6 = load i32, ptr %5, align 4, !dbg !1408, !tbaa !1409
  call void @llvm.dbg.value(metadata i32 %6, metadata !1403, metadata !DIExpression()), !dbg !1404
  store i32 %1, ptr %5, align 4, !dbg !1410, !tbaa !1409
  ret i32 %6, !dbg !1411
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1412 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1416, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata ptr %1, metadata !1417, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata ptr %2, metadata !1418, metadata !DIExpression()), !dbg !1419
  %4 = icmp eq ptr %0, null, !dbg !1420
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1422
  call void @llvm.dbg.value(metadata ptr %5, metadata !1416, metadata !DIExpression()), !dbg !1419
  store i32 10, ptr %5, align 8, !dbg !1423, !tbaa !1359
  %6 = icmp ne ptr %1, null, !dbg !1424
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1426
  br i1 %8, label %10, label %9, !dbg !1426

9:                                                ; preds = %3
  tail call void @abort() #37, !dbg !1427
  unreachable, !dbg !1427

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1428
  store ptr %1, ptr %11, align 8, !dbg !1429, !tbaa !1430
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1431
  store ptr %2, ptr %12, align 8, !dbg !1432, !tbaa !1433
  ret void, !dbg !1434
}

; Function Attrs: noreturn nounwind
declare !dbg !1435 void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1436 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1440, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %1, metadata !1441, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata ptr %2, metadata !1442, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %3, metadata !1443, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata ptr %4, metadata !1444, metadata !DIExpression()), !dbg !1448
  %6 = icmp eq ptr %4, null, !dbg !1449
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1449
  call void @llvm.dbg.value(metadata ptr %7, metadata !1445, metadata !DIExpression()), !dbg !1448
  %8 = tail call ptr @__errno_location() #39, !dbg !1450
  %9 = load i32, ptr %8, align 4, !dbg !1450, !tbaa !747
  call void @llvm.dbg.value(metadata i32 %9, metadata !1446, metadata !DIExpression()), !dbg !1448
  %10 = load i32, ptr %7, align 8, !dbg !1451, !tbaa !1359
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1452
  %12 = load i32, ptr %11, align 4, !dbg !1452, !tbaa !1409
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1453
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1454
  %15 = load ptr, ptr %14, align 8, !dbg !1454, !tbaa !1430
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1455
  %17 = load ptr, ptr %16, align 8, !dbg !1455, !tbaa !1433
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %18, metadata !1447, metadata !DIExpression()), !dbg !1448
  store i32 %9, ptr %8, align 4, !dbg !1457, !tbaa !747
  ret i64 %18, !dbg !1458
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1459 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1465, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %1, metadata !1466, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata ptr %2, metadata !1467, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %3, metadata !1468, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 %4, metadata !1469, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 %5, metadata !1470, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata ptr %6, metadata !1471, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata ptr %7, metadata !1472, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata ptr %8, metadata !1473, metadata !DIExpression()), !dbg !1527
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1528
  %17 = icmp eq i64 %16, 1, !dbg !1529
  call void @llvm.dbg.value(metadata i1 %17, metadata !1474, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1527
  call void @llvm.dbg.value(metadata i64 0, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 0, metadata !1476, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata ptr null, metadata !1477, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 0, metadata !1478, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 0, metadata !1479, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 %5, metadata !1480, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1527
  call void @llvm.dbg.value(metadata i8 0, metadata !1481, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 1, metadata !1482, metadata !DIExpression()), !dbg !1527
  %18 = and i32 %5, 2, !dbg !1530
  %19 = icmp ne i32 %18, 0, !dbg !1530
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1530

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !1531
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !1532
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !1533
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1466, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1479, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %34, metadata !1478, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata ptr %33, metadata !1477, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %32, metadata !1476, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 0, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %31, metadata !1468, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata ptr %30, metadata !1473, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata ptr %29, metadata !1472, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 %28, metadata !1469, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.label(metadata !1520), !dbg !1534
  call void @llvm.dbg.value(metadata i8 0, metadata !1483, metadata !DIExpression()), !dbg !1527
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
  ], !dbg !1535

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 5, metadata !1469, metadata !DIExpression()), !dbg !1527
  br label %102, !dbg !1536

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 5, metadata !1469, metadata !DIExpression()), !dbg !1527
  br i1 %36, label %102, label %42, !dbg !1536

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1537
  br i1 %43, label %102, label %44, !dbg !1541

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1537, !tbaa !756
  br label %102, !dbg !1537

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.61, metadata !490, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 %28, metadata !491, metadata !DIExpression()), !dbg !1542
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.62, ptr noundef nonnull @.str.11.61, i32 noundef 5) #36, !dbg !1546
  call void @llvm.dbg.value(metadata ptr %46, metadata !492, metadata !DIExpression()), !dbg !1542
  %47 = icmp eq ptr %46, @.str.11.61, !dbg !1547
  br i1 %47, label %48, label %57, !dbg !1549

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1550
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1551
  call void @llvm.dbg.declare(metadata ptr %13, metadata !494, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata ptr %13, metadata !1553, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata ptr %13, metadata !1561, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i32 0, metadata !1564, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 8, metadata !1565, metadata !DIExpression()), !dbg !1566
  store i64 0, ptr %13, align 8, !dbg !1568
  call void @llvm.dbg.value(metadata ptr %12, metadata !493, metadata !DIExpression(DW_OP_deref)), !dbg !1542
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1569
  %50 = icmp eq i64 %49, 3, !dbg !1571
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !493, metadata !DIExpression()), !dbg !1542
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1572
  %54 = icmp eq i32 %28, 9, !dbg !1572
  %55 = select i1 %54, ptr @.str.10.63, ptr @.str.12.64, !dbg !1572
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1572
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1573
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1573
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1542
  call void @llvm.dbg.value(metadata ptr %58, metadata !1472, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata ptr @.str.12.64, metadata !490, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i32 %28, metadata !491, metadata !DIExpression()), !dbg !1574
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.62, ptr noundef nonnull @.str.12.64, i32 noundef 5) #36, !dbg !1576
  call void @llvm.dbg.value(metadata ptr %59, metadata !492, metadata !DIExpression()), !dbg !1574
  %60 = icmp eq ptr %59, @.str.12.64, !dbg !1577
  br i1 %60, label %61, label %70, !dbg !1578

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1579
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1580
  call void @llvm.dbg.declare(metadata ptr %11, metadata !494, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata ptr %11, metadata !1553, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata ptr %11, metadata !1561, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i32 0, metadata !1564, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i64 8, metadata !1565, metadata !DIExpression()), !dbg !1584
  store i64 0, ptr %11, align 8, !dbg !1586
  call void @llvm.dbg.value(metadata ptr %10, metadata !493, metadata !DIExpression(DW_OP_deref)), !dbg !1574
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1587
  %63 = icmp eq i64 %62, 3, !dbg !1588
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !493, metadata !DIExpression()), !dbg !1574
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1589
  %67 = icmp eq i32 %28, 9, !dbg !1589
  %68 = select i1 %67, ptr @.str.10.63, ptr @.str.12.64, !dbg !1589
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1589
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1590
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1590
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1473, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata ptr %71, metadata !1472, metadata !DIExpression()), !dbg !1527
  br i1 %36, label %88, label %73, !dbg !1591

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1484, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 0, metadata !1475, metadata !DIExpression()), !dbg !1527
  %74 = load i8, ptr %71, align 1, !dbg !1593, !tbaa !756
  %75 = icmp eq i8 %74, 0, !dbg !1595
  br i1 %75, label %88, label %76, !dbg !1595

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1484, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %79, metadata !1475, metadata !DIExpression()), !dbg !1527
  %80 = icmp ult i64 %79, %39, !dbg !1596
  br i1 %80, label %81, label %83, !dbg !1599

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1596
  store i8 %77, ptr %82, align 1, !dbg !1596, !tbaa !756
  br label %83, !dbg !1596

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1599
  call void @llvm.dbg.value(metadata i64 %84, metadata !1475, metadata !DIExpression()), !dbg !1527
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1600
  call void @llvm.dbg.value(metadata ptr %85, metadata !1484, metadata !DIExpression()), !dbg !1592
  %86 = load i8, ptr %85, align 1, !dbg !1593, !tbaa !756
  %87 = icmp eq i8 %86, 0, !dbg !1595
  br i1 %87, label %88, label %76, !dbg !1595, !llvm.loop !1601

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !1603
  call void @llvm.dbg.value(metadata i64 %89, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 1, metadata !1479, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata ptr %72, metadata !1477, metadata !DIExpression()), !dbg !1527
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %90, metadata !1478, metadata !DIExpression()), !dbg !1527
  br label %102, !dbg !1605

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1479, metadata !DIExpression()), !dbg !1527
  br label %93, !dbg !1606

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1479, metadata !DIExpression()), !dbg !1527
  br i1 %36, label %102, label %96, !dbg !1607

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1479, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 2, metadata !1469, metadata !DIExpression()), !dbg !1527
  br label %102, !dbg !1608

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1479, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 2, metadata !1469, metadata !DIExpression()), !dbg !1527
  br i1 %36, label %102, label %96, !dbg !1608

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !1609
  br i1 %98, label %102, label %99, !dbg !1613

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !1609, !tbaa !756
  br label %102, !dbg !1609

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1480, metadata !DIExpression()), !dbg !1527
  br label %102, !dbg !1614

101:                                              ; preds = %27
  call void @abort() #37, !dbg !1615
  unreachable, !dbg !1615

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !1603
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.63, %42 ], [ @.str.10.63, %44 ], [ @.str.10.63, %41 ], [ %33, %27 ], [ @.str.12.64, %96 ], [ @.str.12.64, %99 ], [ @.str.12.64, %95 ], [ @.str.10.63, %40 ], [ @.str.12.64, %93 ], [ @.str.12.64, %92 ], !dbg !1527
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !1527
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1480, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1479, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %108, metadata !1478, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata ptr %107, metadata !1477, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %106, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata ptr %105, metadata !1473, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata ptr %104, metadata !1472, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 %103, metadata !1469, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 0, metadata !1489, metadata !DIExpression()), !dbg !1616
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
  br label %122, !dbg !1617

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !1603
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !1531
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !1618
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1466, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %129, metadata !1489, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i8 poison, metadata !1483, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %125, metadata !1476, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %124, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %123, metadata !1468, metadata !DIExpression()), !dbg !1527
  %131 = icmp eq i64 %123, -1, !dbg !1619
  br i1 %131, label %132, label %136, !dbg !1620

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1621
  %134 = load i8, ptr %133, align 1, !dbg !1621, !tbaa !756
  %135 = icmp eq i8 %134, 0, !dbg !1622
  br i1 %135, label %579, label %138, !dbg !1623

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !1624
  br i1 %137, label %579, label %138, !dbg !1623

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1491, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 0, metadata !1494, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 0, metadata !1495, metadata !DIExpression()), !dbg !1625
  br i1 %114, label %139, label %152, !dbg !1626

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !1628
  %141 = select i1 %131, i1 %115, i1 false, !dbg !1629
  br i1 %141, label %142, label %144, !dbg !1629

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %143, metadata !1468, metadata !DIExpression()), !dbg !1527
  br label %144, !dbg !1631

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !1631
  call void @llvm.dbg.value(metadata i64 %145, metadata !1468, metadata !DIExpression()), !dbg !1527
  %146 = icmp ugt i64 %140, %145, !dbg !1632
  br i1 %146, label %152, label %147, !dbg !1633

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1634
  call void @llvm.dbg.value(metadata ptr %148, metadata !1635, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %107, metadata !1638, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %108, metadata !1639, metadata !DIExpression()), !dbg !1640
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !1642
  %150 = icmp eq i32 %149, 0, !dbg !1643
  %151 = and i1 %150, %110, !dbg !1644
  br i1 %151, label %630, label %152, !dbg !1644

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1491, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %153, metadata !1468, metadata !DIExpression()), !dbg !1527
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1645
  %156 = load i8, ptr %155, align 1, !dbg !1645, !tbaa !756
  call void @llvm.dbg.value(metadata i8 %156, metadata !1496, metadata !DIExpression()), !dbg !1625
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
  ], !dbg !1646

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !1647

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !1648

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1494, metadata !DIExpression()), !dbg !1625
  %160 = select i1 %111, i1 true, i1 %128, !dbg !1652
  br i1 %160, label %177, label %161, !dbg !1652

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !1654
  br i1 %162, label %163, label %165, !dbg !1658

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1654
  store i8 39, ptr %164, align 1, !dbg !1654, !tbaa !756
  br label %165, !dbg !1654

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !1658
  call void @llvm.dbg.value(metadata i64 %166, metadata !1475, metadata !DIExpression()), !dbg !1527
  %167 = icmp ult i64 %166, %130, !dbg !1659
  br i1 %167, label %168, label %170, !dbg !1662

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !1659
  store i8 36, ptr %169, align 1, !dbg !1659, !tbaa !756
  br label %170, !dbg !1659

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %171, metadata !1475, metadata !DIExpression()), !dbg !1527
  %172 = icmp ult i64 %171, %130, !dbg !1663
  br i1 %172, label %173, label %175, !dbg !1666

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !1663
  store i8 39, ptr %174, align 1, !dbg !1663, !tbaa !756
  br label %175, !dbg !1663

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !1666
  call void @llvm.dbg.value(metadata i64 %176, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 1, metadata !1483, metadata !DIExpression()), !dbg !1527
  br label %177, !dbg !1667

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !1527
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1483, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %178, metadata !1475, metadata !DIExpression()), !dbg !1527
  %180 = icmp ult i64 %178, %130, !dbg !1668
  br i1 %180, label %181, label %183, !dbg !1671

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !1668
  store i8 92, ptr %182, align 1, !dbg !1668, !tbaa !756
  br label %183, !dbg !1668

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %184, metadata !1475, metadata !DIExpression()), !dbg !1527
  br i1 %111, label %185, label %482, !dbg !1672

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !1674
  %187 = icmp ult i64 %186, %153, !dbg !1675
  br i1 %187, label %188, label %439, !dbg !1676

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !1677
  %190 = load i8, ptr %189, align 1, !dbg !1677, !tbaa !756
  %191 = add i8 %190, -48, !dbg !1678
  %192 = icmp ult i8 %191, 10, !dbg !1678
  br i1 %192, label %193, label %439, !dbg !1678

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !1679
  br i1 %194, label %195, label %197, !dbg !1683

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !1679
  store i8 48, ptr %196, align 1, !dbg !1679, !tbaa !756
  br label %197, !dbg !1679

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %198, metadata !1475, metadata !DIExpression()), !dbg !1527
  %199 = icmp ult i64 %198, %130, !dbg !1684
  br i1 %199, label %200, label %202, !dbg !1687

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !1684
  store i8 48, ptr %201, align 1, !dbg !1684, !tbaa !756
  br label %202, !dbg !1684

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %203, metadata !1475, metadata !DIExpression()), !dbg !1527
  br label %439, !dbg !1688

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !1689

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !1690

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !1691

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !1693

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !1695
  %210 = icmp ult i64 %209, %153, !dbg !1696
  br i1 %210, label %211, label %439, !dbg !1697

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !1698
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !1699
  %214 = load i8, ptr %213, align 1, !dbg !1699, !tbaa !756
  %215 = icmp eq i8 %214, 63, !dbg !1700
  br i1 %215, label %216, label %439, !dbg !1701

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !1702
  %218 = load i8, ptr %217, align 1, !dbg !1702, !tbaa !756
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
  ], !dbg !1703

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !1704

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1496, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %209, metadata !1489, metadata !DIExpression()), !dbg !1616
  %221 = icmp ult i64 %124, %130, !dbg !1706
  br i1 %221, label %222, label %224, !dbg !1709

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1706
  store i8 63, ptr %223, align 1, !dbg !1706, !tbaa !756
  br label %224, !dbg !1706

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %225, metadata !1475, metadata !DIExpression()), !dbg !1527
  %226 = icmp ult i64 %225, %130, !dbg !1710
  br i1 %226, label %227, label %229, !dbg !1713

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !1710
  store i8 34, ptr %228, align 1, !dbg !1710, !tbaa !756
  br label %229, !dbg !1710

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %230, metadata !1475, metadata !DIExpression()), !dbg !1527
  %231 = icmp ult i64 %230, %130, !dbg !1714
  br i1 %231, label %232, label %234, !dbg !1717

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !1714
  store i8 34, ptr %233, align 1, !dbg !1714, !tbaa !756
  br label %234, !dbg !1714

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %235, metadata !1475, metadata !DIExpression()), !dbg !1527
  %236 = icmp ult i64 %235, %130, !dbg !1718
  br i1 %236, label %237, label %239, !dbg !1721

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !1718
  store i8 63, ptr %238, align 1, !dbg !1718, !tbaa !756
  br label %239, !dbg !1718

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %240, metadata !1475, metadata !DIExpression()), !dbg !1527
  br label %439, !dbg !1722

241:                                              ; preds = %152
  br label %251, !dbg !1723

242:                                              ; preds = %152
  br label %251, !dbg !1724

243:                                              ; preds = %152
  br label %249, !dbg !1725

244:                                              ; preds = %152
  br label %249, !dbg !1726

245:                                              ; preds = %152
  br label %251, !dbg !1727

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !1728

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !1729

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !1732

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !1734
  call void @llvm.dbg.label(metadata !1521), !dbg !1735
  br i1 %119, label %621, label %251, !dbg !1736

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !1734
  call void @llvm.dbg.label(metadata !1523), !dbg !1738
  br i1 %109, label %493, label %450, !dbg !1739

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !1740

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !1741, !tbaa !756
  %256 = icmp eq i8 %255, 0, !dbg !1743
  br i1 %256, label %257, label %439, !dbg !1744

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !1745
  br i1 %258, label %259, label %439, !dbg !1747

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1495, metadata !DIExpression()), !dbg !1625
  br label %260, !dbg !1748

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1495, metadata !DIExpression()), !dbg !1625
  br i1 %116, label %262, label %439, !dbg !1749

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !1751

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1481, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 1, metadata !1495, metadata !DIExpression()), !dbg !1625
  br i1 %116, label %264, label %439, !dbg !1752

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !1753

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !1756
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !1758
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !1758
  %270 = select i1 %268, i64 %130, i64 0, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %270, metadata !1466, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %269, metadata !1476, metadata !DIExpression()), !dbg !1527
  %271 = icmp ult i64 %124, %270, !dbg !1759
  br i1 %271, label %272, label %274, !dbg !1762

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1759
  store i8 39, ptr %273, align 1, !dbg !1759, !tbaa !756
  br label %274, !dbg !1759

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %275, metadata !1475, metadata !DIExpression()), !dbg !1527
  %276 = icmp ult i64 %275, %270, !dbg !1763
  br i1 %276, label %277, label %279, !dbg !1766

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !1763
  store i8 92, ptr %278, align 1, !dbg !1763, !tbaa !756
  br label %279, !dbg !1763

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %280, metadata !1475, metadata !DIExpression()), !dbg !1527
  %281 = icmp ult i64 %280, %270, !dbg !1767
  br i1 %281, label %282, label %284, !dbg !1770

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !1767
  store i8 39, ptr %283, align 1, !dbg !1767, !tbaa !756
  br label %284, !dbg !1767

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %285, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 0, metadata !1483, metadata !DIExpression()), !dbg !1527
  br label %439, !dbg !1771

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !1772

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1497, metadata !DIExpression()), !dbg !1773
  %288 = tail call ptr @__ctype_b_loc() #39, !dbg !1774
  %289 = load ptr, ptr %288, align 8, !dbg !1774, !tbaa !725
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !1774
  %292 = load i16, ptr %291, align 2, !dbg !1774, !tbaa !788
  %293 = and i16 %292, 16384, !dbg !1774
  %294 = icmp ne i16 %293, 0, !dbg !1776
  call void @llvm.dbg.value(metadata i1 %294, metadata !1500, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1773
  br label %337, !dbg !1777

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !1778
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1501, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata ptr %14, metadata !1553, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata ptr %14, metadata !1561, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i32 0, metadata !1564, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 8, metadata !1565, metadata !DIExpression()), !dbg !1782
  store i64 0, ptr %14, align 8, !dbg !1784
  call void @llvm.dbg.value(metadata i64 0, metadata !1497, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 1, metadata !1500, metadata !DIExpression()), !dbg !1773
  %296 = icmp eq i64 %153, -1, !dbg !1785
  br i1 %296, label %297, label %299, !dbg !1787

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1788
  call void @llvm.dbg.value(metadata i64 %298, metadata !1468, metadata !DIExpression()), !dbg !1527
  br label %299, !dbg !1789

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !1625
  call void @llvm.dbg.value(metadata i64 %300, metadata !1468, metadata !DIExpression()), !dbg !1527
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !1790
  %301 = sub i64 %300, %129, !dbg !1791
  call void @llvm.dbg.value(metadata ptr %15, metadata !1504, metadata !DIExpression(DW_OP_deref)), !dbg !1792
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #36, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %302, metadata !1508, metadata !DIExpression()), !dbg !1792
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !1794

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1497, metadata !DIExpression()), !dbg !1773
  %304 = icmp ugt i64 %300, %129, !dbg !1795
  br i1 %304, label %306, label %332, !dbg !1797

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1500, metadata !DIExpression()), !dbg !1773
  br label %332, !dbg !1798

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1497, metadata !DIExpression()), !dbg !1773
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !1800
  %310 = load i8, ptr %309, align 1, !dbg !1800, !tbaa !756
  %311 = icmp eq i8 %310, 0, !dbg !1797
  br i1 %311, label %332, label %312, !dbg !1801

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !1802
  call void @llvm.dbg.value(metadata i64 %313, metadata !1497, metadata !DIExpression()), !dbg !1773
  %314 = add i64 %313, %129, !dbg !1803
  %315 = icmp eq i64 %313, %301, !dbg !1795
  br i1 %315, label %332, label %306, !dbg !1797, !llvm.loop !1804

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !1805
  %319 = and i1 %318, %110, !dbg !1805
  call void @llvm.dbg.value(metadata i64 1, metadata !1509, metadata !DIExpression()), !dbg !1806
  br i1 %319, label %320, label %328, !dbg !1805

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1509, metadata !DIExpression()), !dbg !1806
  %322 = add i64 %321, %129, !dbg !1807
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !1809
  %324 = load i8, ptr %323, align 1, !dbg !1809, !tbaa !756
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !1810

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %326, metadata !1509, metadata !DIExpression()), !dbg !1806
  %327 = icmp eq i64 %326, %302, !dbg !1812
  br i1 %327, label %328, label %320, !dbg !1813, !llvm.loop !1814

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !1816, !tbaa !747
  call void @llvm.dbg.value(metadata i32 %329, metadata !1504, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i32 %329, metadata !1818, metadata !DIExpression()), !dbg !1826
  %330 = call i32 @iswprint(i32 noundef %329) #36, !dbg !1828
  %331 = icmp ne i32 %330, 0, !dbg !1829
  call void @llvm.dbg.value(metadata i8 poison, metadata !1500, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %302, metadata !1497, metadata !DIExpression()), !dbg !1773
  br label %332, !dbg !1830

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1500, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %333, metadata !1497, metadata !DIExpression()), !dbg !1773
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1831
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1832
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1500, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 0, metadata !1497, metadata !DIExpression()), !dbg !1773
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1831
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1832
  call void @llvm.dbg.label(metadata !1526), !dbg !1833
  %336 = select i1 %109, i32 4, i32 2, !dbg !1834
  br label %626, !dbg !1834

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !1625
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !1836
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1500, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %339, metadata !1497, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %338, metadata !1468, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i1 %340, metadata !1495, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1625
  %341 = icmp ult i64 %339, 2, !dbg !1837
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !1838
  br i1 %343, label %439, label %344, !dbg !1838

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %345, metadata !1517, metadata !DIExpression()), !dbg !1840
  br label %346, !dbg !1841

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !1527
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !1616
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !1842
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !1625
  call void @llvm.dbg.value(metadata i8 %352, metadata !1496, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 %351, metadata !1494, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 poison, metadata !1491, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %349, metadata !1489, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i8 poison, metadata !1483, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %347, metadata !1475, metadata !DIExpression()), !dbg !1527
  br i1 %342, label %397, label %353, !dbg !1843

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !1848

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1494, metadata !DIExpression()), !dbg !1625
  %355 = select i1 %111, i1 true, i1 %348, !dbg !1851
  br i1 %355, label %372, label %356, !dbg !1851

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !1853
  br i1 %357, label %358, label %360, !dbg !1857

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !1853
  store i8 39, ptr %359, align 1, !dbg !1853, !tbaa !756
  br label %360, !dbg !1853

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %361, metadata !1475, metadata !DIExpression()), !dbg !1527
  %362 = icmp ult i64 %361, %130, !dbg !1858
  br i1 %362, label %363, label %365, !dbg !1861

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !1858
  store i8 36, ptr %364, align 1, !dbg !1858, !tbaa !756
  br label %365, !dbg !1858

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %366, metadata !1475, metadata !DIExpression()), !dbg !1527
  %367 = icmp ult i64 %366, %130, !dbg !1862
  br i1 %367, label %368, label %370, !dbg !1865

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !1862
  store i8 39, ptr %369, align 1, !dbg !1862, !tbaa !756
  br label %370, !dbg !1862

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %371, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 1, metadata !1483, metadata !DIExpression()), !dbg !1527
  br label %372, !dbg !1866

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !1527
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1483, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %373, metadata !1475, metadata !DIExpression()), !dbg !1527
  %375 = icmp ult i64 %373, %130, !dbg !1867
  br i1 %375, label %376, label %378, !dbg !1870

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !1867
  store i8 92, ptr %377, align 1, !dbg !1867, !tbaa !756
  br label %378, !dbg !1867

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !1870
  call void @llvm.dbg.value(metadata i64 %379, metadata !1475, metadata !DIExpression()), !dbg !1527
  %380 = icmp ult i64 %379, %130, !dbg !1871
  br i1 %380, label %381, label %385, !dbg !1874

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !1871
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !1871
  store i8 %383, ptr %384, align 1, !dbg !1871, !tbaa !756
  br label %385, !dbg !1871

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %386, metadata !1475, metadata !DIExpression()), !dbg !1527
  %387 = icmp ult i64 %386, %130, !dbg !1875
  br i1 %387, label %388, label %393, !dbg !1878

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !1875
  %391 = or i8 %390, 48, !dbg !1875
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !1875
  store i8 %391, ptr %392, align 1, !dbg !1875, !tbaa !756
  br label %393, !dbg !1875

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !1878
  call void @llvm.dbg.value(metadata i64 %394, metadata !1475, metadata !DIExpression()), !dbg !1527
  %395 = and i8 %352, 7, !dbg !1879
  %396 = or i8 %395, 48, !dbg !1880
  call void @llvm.dbg.value(metadata i8 %396, metadata !1496, metadata !DIExpression()), !dbg !1625
  br label %404, !dbg !1881

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !1882

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !1883
  br i1 %399, label %400, label %402, !dbg !1888

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !1883
  store i8 92, ptr %401, align 1, !dbg !1883, !tbaa !756
  br label %402, !dbg !1883

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %403, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 0, metadata !1491, metadata !DIExpression()), !dbg !1625
  br label %404, !dbg !1889

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !1527
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !1625
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !1625
  call void @llvm.dbg.value(metadata i8 %409, metadata !1496, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 %408, metadata !1494, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 poison, metadata !1491, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 poison, metadata !1483, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %405, metadata !1475, metadata !DIExpression()), !dbg !1527
  %410 = add i64 %349, 1, !dbg !1890
  %411 = icmp ugt i64 %345, %410, !dbg !1892
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !1893

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !1894
  %415 = select i1 %406, i1 %414, i1 false, !dbg !1894
  br i1 %415, label %416, label %427, !dbg !1894

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !1897
  br i1 %417, label %418, label %420, !dbg !1901

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !1897
  store i8 39, ptr %419, align 1, !dbg !1897, !tbaa !756
  br label %420, !dbg !1897

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !1901
  call void @llvm.dbg.value(metadata i64 %421, metadata !1475, metadata !DIExpression()), !dbg !1527
  %422 = icmp ult i64 %421, %130, !dbg !1902
  br i1 %422, label %423, label %425, !dbg !1905

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !1902
  store i8 39, ptr %424, align 1, !dbg !1902, !tbaa !756
  br label %425, !dbg !1902

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !1905
  call void @llvm.dbg.value(metadata i64 %426, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 0, metadata !1483, metadata !DIExpression()), !dbg !1527
  br label %427, !dbg !1906

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !1907
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1483, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %428, metadata !1475, metadata !DIExpression()), !dbg !1527
  %430 = icmp ult i64 %428, %130, !dbg !1908
  br i1 %430, label %431, label %433, !dbg !1911

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !1908
  store i8 %409, ptr %432, align 1, !dbg !1908, !tbaa !756
  br label %433, !dbg !1908

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %434, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %410, metadata !1489, metadata !DIExpression()), !dbg !1616
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !1912
  %436 = load i8, ptr %435, align 1, !dbg !1912, !tbaa !756
  call void @llvm.dbg.value(metadata i8 %436, metadata !1496, metadata !DIExpression()), !dbg !1625
  br label %346, !dbg !1913, !llvm.loop !1914

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1496, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i1 %340, metadata !1495, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1625
  call void @llvm.dbg.value(metadata i8 %408, metadata !1494, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 poison, metadata !1491, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %349, metadata !1489, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i8 poison, metadata !1483, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %405, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %338, metadata !1468, metadata !DIExpression()), !dbg !1527
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !1917
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !1527
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !1531
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !1616
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !1625
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1466, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 %448, metadata !1496, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 poison, metadata !1495, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 poison, metadata !1494, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 poison, metadata !1491, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %445, metadata !1489, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i8 poison, metadata !1483, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %442, metadata !1476, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %441, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %440, metadata !1468, metadata !DIExpression()), !dbg !1527
  br i1 %112, label %461, label %450, !dbg !1918

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
  br i1 %121, label %462, label %482, !dbg !1920

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !1921

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
  %473 = lshr i8 %464, 5, !dbg !1922
  %474 = zext i8 %473 to i64, !dbg !1922
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !1923
  %476 = load i32, ptr %475, align 4, !dbg !1923, !tbaa !747
  %477 = and i8 %464, 31, !dbg !1924
  %478 = zext i8 %477 to i32, !dbg !1924
  %479 = shl nuw i32 1, %478, !dbg !1925
  %480 = and i32 %476, %479, !dbg !1925
  %481 = icmp eq i32 %480, 0, !dbg !1925
  br i1 %481, label %482, label %493, !dbg !1926

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
  br i1 %154, label %493, label %529, !dbg !1927

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !1917
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !1527
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !1531
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !1928
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !1625
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1466, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 %501, metadata !1496, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 poison, metadata !1495, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %499, metadata !1489, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i8 poison, metadata !1483, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %496, metadata !1476, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %495, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %494, metadata !1468, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.label(metadata !1524), !dbg !1929
  br i1 %110, label %621, label %503, !dbg !1930

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1494, metadata !DIExpression()), !dbg !1625
  %504 = select i1 %111, i1 true, i1 %498, !dbg !1932
  br i1 %504, label %521, label %505, !dbg !1932

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !1934
  br i1 %506, label %507, label %509, !dbg !1938

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !1934
  store i8 39, ptr %508, align 1, !dbg !1934, !tbaa !756
  br label %509, !dbg !1934

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %510, metadata !1475, metadata !DIExpression()), !dbg !1527
  %511 = icmp ult i64 %510, %502, !dbg !1939
  br i1 %511, label %512, label %514, !dbg !1942

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !1939
  store i8 36, ptr %513, align 1, !dbg !1939, !tbaa !756
  br label %514, !dbg !1939

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %515, metadata !1475, metadata !DIExpression()), !dbg !1527
  %516 = icmp ult i64 %515, %502, !dbg !1943
  br i1 %516, label %517, label %519, !dbg !1946

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !1943
  store i8 39, ptr %518, align 1, !dbg !1943, !tbaa !756
  br label %519, !dbg !1943

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !1946
  call void @llvm.dbg.value(metadata i64 %520, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 1, metadata !1483, metadata !DIExpression()), !dbg !1527
  br label %521, !dbg !1947

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !1625
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1483, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %522, metadata !1475, metadata !DIExpression()), !dbg !1527
  %524 = icmp ult i64 %522, %502, !dbg !1948
  br i1 %524, label %525, label %527, !dbg !1951

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !1948
  store i8 92, ptr %526, align 1, !dbg !1948, !tbaa !756
  br label %527, !dbg !1948

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %502, metadata !1466, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 %501, metadata !1496, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 poison, metadata !1495, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 poison, metadata !1494, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %499, metadata !1489, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i8 poison, metadata !1483, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %496, metadata !1476, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %528, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %494, metadata !1468, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.label(metadata !1525), !dbg !1952
  br label %553, !dbg !1953

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !1917
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !1527
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !1531
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !1928
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !1956
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1466, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 %538, metadata !1496, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 poison, metadata !1495, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 poison, metadata !1494, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %535, metadata !1489, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i8 poison, metadata !1483, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %532, metadata !1476, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %531, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %530, metadata !1468, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.label(metadata !1525), !dbg !1952
  %540 = xor i1 %534, true, !dbg !1953
  %541 = select i1 %540, i1 true, i1 %536, !dbg !1953
  br i1 %541, label %553, label %542, !dbg !1953

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !1957
  br i1 %543, label %544, label %546, !dbg !1961

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !1957
  store i8 39, ptr %545, align 1, !dbg !1957, !tbaa !756
  br label %546, !dbg !1957

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %547, metadata !1475, metadata !DIExpression()), !dbg !1527
  %548 = icmp ult i64 %547, %539, !dbg !1962
  br i1 %548, label %549, label %551, !dbg !1965

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !1962
  store i8 39, ptr %550, align 1, !dbg !1962, !tbaa !756
  br label %551, !dbg !1962

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %552, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 0, metadata !1483, metadata !DIExpression()), !dbg !1527
  br label %553, !dbg !1966

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !1625
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1483, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %561, metadata !1475, metadata !DIExpression()), !dbg !1527
  %563 = icmp ult i64 %561, %554, !dbg !1967
  br i1 %563, label %564, label %566, !dbg !1970

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !1967
  store i8 %555, ptr %565, align 1, !dbg !1967, !tbaa !756
  br label %566, !dbg !1967

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %567, metadata !1475, metadata !DIExpression()), !dbg !1527
  %568 = select i1 %556, i1 %127, i1 false, !dbg !1971
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1527
  br label %569, !dbg !1972

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !1917
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !1527
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !1531
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !1928
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1466, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %576, metadata !1489, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i8 poison, metadata !1483, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %572, metadata !1476, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %571, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %570, metadata !1468, metadata !DIExpression()), !dbg !1527
  %578 = add i64 %576, 1, !dbg !1973
  call void @llvm.dbg.value(metadata i64 %578, metadata !1489, metadata !DIExpression()), !dbg !1616
  br label %122, !dbg !1974, !llvm.loop !1975

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1466, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1482, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %125, metadata !1476, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %124, metadata !1475, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %123, metadata !1468, metadata !DIExpression()), !dbg !1527
  %580 = icmp ne i64 %124, 0, !dbg !1977
  %581 = xor i1 %110, true, !dbg !1979
  %582 = or i1 %580, %581, !dbg !1979
  %583 = or i1 %582, %111, !dbg !1979
  br i1 %583, label %584, label %621, !dbg !1979

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !1980
  %586 = xor i1 %126, true, !dbg !1980
  %587 = select i1 %585, i1 true, i1 %586, !dbg !1980
  br i1 %587, label %595, label %588, !dbg !1980

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !1982

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !1984
  br label %636, !dbg !1986

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !1987
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !1989
  br i1 %594, label %27, label %595, !dbg !1989

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !1990
  %598 = or i1 %597, %596, !dbg !1992
  br i1 %598, label %614, label %599, !dbg !1992

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1477, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %124, metadata !1475, metadata !DIExpression()), !dbg !1527
  %600 = load i8, ptr %107, align 1, !dbg !1993, !tbaa !756
  %601 = icmp eq i8 %600, 0, !dbg !1996
  br i1 %601, label %614, label %602, !dbg !1996

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1477, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %605, metadata !1475, metadata !DIExpression()), !dbg !1527
  %606 = icmp ult i64 %605, %130, !dbg !1997
  br i1 %606, label %607, label %609, !dbg !2000

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !1997
  store i8 %603, ptr %608, align 1, !dbg !1997, !tbaa !756
  br label %609, !dbg !1997

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %610, metadata !1475, metadata !DIExpression()), !dbg !1527
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2001
  call void @llvm.dbg.value(metadata ptr %611, metadata !1477, metadata !DIExpression()), !dbg !1527
  %612 = load i8, ptr %611, align 1, !dbg !1993, !tbaa !756
  %613 = icmp eq i8 %612, 0, !dbg !1996
  br i1 %613, label %614, label %602, !dbg !1996, !llvm.loop !2002

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !1603
  call void @llvm.dbg.value(metadata i64 %615, metadata !1475, metadata !DIExpression()), !dbg !1527
  %616 = icmp ult i64 %615, %130, !dbg !2004
  br i1 %616, label %617, label %636, !dbg !2006

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2007
  store i8 0, ptr %618, align 1, !dbg !2008, !tbaa !756
  br label %636, !dbg !2007

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !1526), !dbg !1833
  %620 = icmp eq i32 %103, 2, !dbg !2009
  br i1 %620, label %626, label %630, !dbg !1834

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !1526), !dbg !1833
  %624 = icmp eq i32 %103, 2, !dbg !2009
  %625 = select i1 %109, i32 4, i32 2, !dbg !1834
  br i1 %624, label %626, label %630, !dbg !1834

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !1834

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1469, metadata !DIExpression()), !dbg !1527
  %634 = and i32 %5, -3, !dbg !2010
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2011
  br label %636, !dbg !2012

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2013
}

; Function Attrs: nounwind
declare !dbg !2014 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2017 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2020 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2022 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2026, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %1, metadata !2027, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata ptr %2, metadata !2028, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata ptr %0, metadata !2030, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i64 %1, metadata !2035, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata ptr null, metadata !2036, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata ptr %2, metadata !2037, metadata !DIExpression()), !dbg !2043
  %4 = icmp eq ptr %2, null, !dbg !2045
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2045
  call void @llvm.dbg.value(metadata ptr %5, metadata !2038, metadata !DIExpression()), !dbg !2043
  %6 = tail call ptr @__errno_location() #39, !dbg !2046
  %7 = load i32, ptr %6, align 4, !dbg !2046, !tbaa !747
  call void @llvm.dbg.value(metadata i32 %7, metadata !2039, metadata !DIExpression()), !dbg !2043
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2047
  %9 = load i32, ptr %8, align 4, !dbg !2047, !tbaa !1409
  %10 = or i32 %9, 1, !dbg !2048
  call void @llvm.dbg.value(metadata i32 %10, metadata !2040, metadata !DIExpression()), !dbg !2043
  %11 = load i32, ptr %5, align 8, !dbg !2049, !tbaa !1359
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2050
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2051
  %14 = load ptr, ptr %13, align 8, !dbg !2051, !tbaa !1430
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2052
  %16 = load ptr, ptr %15, align 8, !dbg !2052, !tbaa !1433
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2053
  %18 = add i64 %17, 1, !dbg !2054
  call void @llvm.dbg.value(metadata i64 %18, metadata !2041, metadata !DIExpression()), !dbg !2043
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2055
  call void @llvm.dbg.value(metadata ptr %19, metadata !2042, metadata !DIExpression()), !dbg !2043
  %20 = load i32, ptr %5, align 8, !dbg !2056, !tbaa !1359
  %21 = load ptr, ptr %13, align 8, !dbg !2057, !tbaa !1430
  %22 = load ptr, ptr %15, align 8, !dbg !2058, !tbaa !1433
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2059
  store i32 %7, ptr %6, align 4, !dbg !2060, !tbaa !747
  ret ptr %19, !dbg !2061
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2031 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2030, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %1, metadata !2035, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata ptr %2, metadata !2036, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata ptr %3, metadata !2037, metadata !DIExpression()), !dbg !2062
  %5 = icmp eq ptr %3, null, !dbg !2063
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2063
  call void @llvm.dbg.value(metadata ptr %6, metadata !2038, metadata !DIExpression()), !dbg !2062
  %7 = tail call ptr @__errno_location() #39, !dbg !2064
  %8 = load i32, ptr %7, align 4, !dbg !2064, !tbaa !747
  call void @llvm.dbg.value(metadata i32 %8, metadata !2039, metadata !DIExpression()), !dbg !2062
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2065
  %10 = load i32, ptr %9, align 4, !dbg !2065, !tbaa !1409
  %11 = icmp eq ptr %2, null, !dbg !2066
  %12 = zext i1 %11 to i32, !dbg !2066
  %13 = or i32 %10, %12, !dbg !2067
  call void @llvm.dbg.value(metadata i32 %13, metadata !2040, metadata !DIExpression()), !dbg !2062
  %14 = load i32, ptr %6, align 8, !dbg !2068, !tbaa !1359
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2069
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2070
  %17 = load ptr, ptr %16, align 8, !dbg !2070, !tbaa !1430
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2071
  %19 = load ptr, ptr %18, align 8, !dbg !2071, !tbaa !1433
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2072
  %21 = add i64 %20, 1, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %21, metadata !2041, metadata !DIExpression()), !dbg !2062
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2074
  call void @llvm.dbg.value(metadata ptr %22, metadata !2042, metadata !DIExpression()), !dbg !2062
  %23 = load i32, ptr %6, align 8, !dbg !2075, !tbaa !1359
  %24 = load ptr, ptr %16, align 8, !dbg !2076, !tbaa !1430
  %25 = load ptr, ptr %18, align 8, !dbg !2077, !tbaa !1433
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2078
  store i32 %8, ptr %7, align 4, !dbg !2079, !tbaa !747
  br i1 %11, label %28, label %27, !dbg !2080

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2081, !tbaa !2083
  br label %28, !dbg !2084

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2085
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2086 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2091, !tbaa !725
  call void @llvm.dbg.value(metadata ptr %1, metadata !2088, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i32 1, metadata !2089, metadata !DIExpression()), !dbg !2093
  %2 = load i32, ptr @nslots, align 4, !tbaa !747
  call void @llvm.dbg.value(metadata i32 1, metadata !2089, metadata !DIExpression()), !dbg !2093
  %3 = icmp sgt i32 %2, 1, !dbg !2094
  br i1 %3, label %4, label %6, !dbg !2096

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2094
  br label %10, !dbg !2096

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2097
  %8 = load ptr, ptr %7, align 8, !dbg !2097, !tbaa !2099
  %9 = icmp eq ptr %8, @slot0, !dbg !2101
  br i1 %9, label %17, label %16, !dbg !2102

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2089, metadata !DIExpression()), !dbg !2093
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2103
  %13 = load ptr, ptr %12, align 8, !dbg !2103, !tbaa !2099
  tail call void @free(ptr noundef %13) #36, !dbg !2104
  %14 = add nuw nsw i64 %11, 1, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %14, metadata !2089, metadata !DIExpression()), !dbg !2093
  %15 = icmp eq i64 %14, %5, !dbg !2094
  br i1 %15, label %6, label %10, !dbg !2096, !llvm.loop !2106

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2108
  store i64 256, ptr @slotvec0, align 8, !dbg !2110, !tbaa !2111
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2112, !tbaa !2099
  br label %17, !dbg !2113

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2114
  br i1 %18, label %20, label %19, !dbg !2116

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2117
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2119, !tbaa !725
  br label %20, !dbg !2120

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2121, !tbaa !747
  ret void, !dbg !2122
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2123 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2126 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2128, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata ptr %1, metadata !2129, metadata !DIExpression()), !dbg !2130
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2131
  ret ptr %3, !dbg !2132
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2133 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2137, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata ptr %1, metadata !2138, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i64 %2, metadata !2139, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata ptr %3, metadata !2140, metadata !DIExpression()), !dbg !2153
  %6 = tail call ptr @__errno_location() #39, !dbg !2154
  %7 = load i32, ptr %6, align 4, !dbg !2154, !tbaa !747
  call void @llvm.dbg.value(metadata i32 %7, metadata !2141, metadata !DIExpression()), !dbg !2153
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2155, !tbaa !725
  call void @llvm.dbg.value(metadata ptr %8, metadata !2142, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2143, metadata !DIExpression()), !dbg !2153
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2156
  br i1 %9, label %10, label %11, !dbg !2156

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2158
  unreachable, !dbg !2158

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2159, !tbaa !747
  %13 = icmp sgt i32 %12, %0, !dbg !2160
  br i1 %13, label %32, label %14, !dbg !2161

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2162
  call void @llvm.dbg.value(metadata i1 %15, metadata !2144, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2163
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2164
  %16 = sext i32 %12 to i64, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %16, metadata !2147, metadata !DIExpression()), !dbg !2163
  store i64 %16, ptr %5, align 8, !dbg !2166, !tbaa !2083
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2167
  %18 = add nuw nsw i32 %0, 1, !dbg !2168
  %19 = sub i32 %18, %12, !dbg !2169
  %20 = sext i32 %19 to i64, !dbg !2170
  call void @llvm.dbg.value(metadata ptr %5, metadata !2147, metadata !DIExpression(DW_OP_deref)), !dbg !2163
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2171
  call void @llvm.dbg.value(metadata ptr %21, metadata !2142, metadata !DIExpression()), !dbg !2153
  store ptr %21, ptr @slotvec, align 8, !dbg !2172, !tbaa !725
  br i1 %15, label %22, label %23, !dbg !2173

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2174, !tbaa.struct !2176
  br label %23, !dbg !2177

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2178, !tbaa !747
  %25 = sext i32 %24 to i64, !dbg !2179
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2179
  %27 = load i64, ptr %5, align 8, !dbg !2180, !tbaa !2083
  call void @llvm.dbg.value(metadata i64 %27, metadata !2147, metadata !DIExpression()), !dbg !2163
  %28 = sub nsw i64 %27, %25, !dbg !2181
  %29 = shl i64 %28, 4, !dbg !2182
  call void @llvm.dbg.value(metadata ptr %26, metadata !1561, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i32 0, metadata !1564, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i64 %29, metadata !1565, metadata !DIExpression()), !dbg !2183
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2185
  %30 = load i64, ptr %5, align 8, !dbg !2186, !tbaa !2083
  call void @llvm.dbg.value(metadata i64 %30, metadata !2147, metadata !DIExpression()), !dbg !2163
  %31 = trunc i64 %30 to i32, !dbg !2186
  store i32 %31, ptr @nslots, align 4, !dbg !2187, !tbaa !747
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2188
  br label %32, !dbg !2189

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2153
  call void @llvm.dbg.value(metadata ptr %33, metadata !2142, metadata !DIExpression()), !dbg !2153
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2190
  %36 = load i64, ptr %35, align 8, !dbg !2191, !tbaa !2111
  call void @llvm.dbg.value(metadata i64 %36, metadata !2148, metadata !DIExpression()), !dbg !2192
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2193
  %38 = load ptr, ptr %37, align 8, !dbg !2193, !tbaa !2099
  call void @llvm.dbg.value(metadata ptr %38, metadata !2150, metadata !DIExpression()), !dbg !2192
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2194
  %40 = load i32, ptr %39, align 4, !dbg !2194, !tbaa !1409
  %41 = or i32 %40, 1, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %41, metadata !2151, metadata !DIExpression()), !dbg !2192
  %42 = load i32, ptr %3, align 8, !dbg !2196, !tbaa !1359
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2197
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2198
  %45 = load ptr, ptr %44, align 8, !dbg !2198, !tbaa !1430
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2199
  %47 = load ptr, ptr %46, align 8, !dbg !2199, !tbaa !1433
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2200
  call void @llvm.dbg.value(metadata i64 %48, metadata !2152, metadata !DIExpression()), !dbg !2192
  %49 = icmp ugt i64 %36, %48, !dbg !2201
  br i1 %49, label %60, label %50, !dbg !2203

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %51, metadata !2148, metadata !DIExpression()), !dbg !2192
  store i64 %51, ptr %35, align 8, !dbg !2206, !tbaa !2111
  %52 = icmp eq ptr %38, @slot0, !dbg !2207
  br i1 %52, label %54, label %53, !dbg !2209

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2210
  br label %54, !dbg !2210

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2211
  call void @llvm.dbg.value(metadata ptr %55, metadata !2150, metadata !DIExpression()), !dbg !2192
  store ptr %55, ptr %37, align 8, !dbg !2212, !tbaa !2099
  %56 = load i32, ptr %3, align 8, !dbg !2213, !tbaa !1359
  %57 = load ptr, ptr %44, align 8, !dbg !2214, !tbaa !1430
  %58 = load ptr, ptr %46, align 8, !dbg !2215, !tbaa !1433
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2216
  br label %60, !dbg !2217

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2192
  call void @llvm.dbg.value(metadata ptr %61, metadata !2150, metadata !DIExpression()), !dbg !2192
  store i32 %7, ptr %6, align 4, !dbg !2218, !tbaa !747
  ret ptr %61, !dbg !2219
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2220 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2224, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata ptr %1, metadata !2225, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i64 %2, metadata !2226, metadata !DIExpression()), !dbg !2227
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2228
  ret ptr %4, !dbg !2229
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2230 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2232, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i32 0, metadata !2128, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata ptr %0, metadata !2129, metadata !DIExpression()), !dbg !2234
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2236
  ret ptr %2, !dbg !2237
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2238 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2242, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %1, metadata !2243, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i32 0, metadata !2224, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata ptr %0, metadata !2225, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %1, metadata !2226, metadata !DIExpression()), !dbg !2245
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2247
  ret ptr %3, !dbg !2248
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2249 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2253, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i32 %1, metadata !2254, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata ptr %2, metadata !2255, metadata !DIExpression()), !dbg !2257
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2258
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2256, metadata !DIExpression()), !dbg !2259
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2260), !dbg !2263
  call void @llvm.dbg.value(metadata i32 %1, metadata !2264, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2269, metadata !DIExpression()), !dbg !2272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2272, !alias.scope !2260
  %5 = icmp eq i32 %1, 10, !dbg !2273
  br i1 %5, label %6, label %7, !dbg !2275

6:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2276, !noalias !2260
  unreachable, !dbg !2276

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2277, !tbaa !1359, !alias.scope !2260
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2278
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2279
  ret ptr %8, !dbg !2280
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2281 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2285, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i32 %1, metadata !2286, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata ptr %2, metadata !2287, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %3, metadata !2288, metadata !DIExpression()), !dbg !2290
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2291
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2289, metadata !DIExpression()), !dbg !2292
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2293), !dbg !2296
  call void @llvm.dbg.value(metadata i32 %1, metadata !2264, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2269, metadata !DIExpression()), !dbg !2299
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2299, !alias.scope !2293
  %6 = icmp eq i32 %1, 10, !dbg !2300
  br i1 %6, label %7, label %8, !dbg !2301

7:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2302, !noalias !2293
  unreachable, !dbg !2302

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2303, !tbaa !1359, !alias.scope !2293
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2304
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2305
  ret ptr %9, !dbg !2306
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2307 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2311, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata ptr %1, metadata !2312, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i32 0, metadata !2253, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i32 %0, metadata !2254, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata ptr %1, metadata !2255, metadata !DIExpression()), !dbg !2314
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2316
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2256, metadata !DIExpression()), !dbg !2317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2318), !dbg !2321
  call void @llvm.dbg.value(metadata i32 %0, metadata !2264, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2269, metadata !DIExpression()), !dbg !2324
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2324, !alias.scope !2318
  %4 = icmp eq i32 %0, 10, !dbg !2325
  br i1 %4, label %5, label %6, !dbg !2326

5:                                                ; preds = %2
  tail call void @abort() #37, !dbg !2327, !noalias !2318
  unreachable, !dbg !2327

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2328, !tbaa !1359, !alias.scope !2318
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2329
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2330
  ret ptr %7, !dbg !2331
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2332 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2336, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata ptr %1, metadata !2337, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i64 %2, metadata !2338, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i32 0, metadata !2285, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i32 %0, metadata !2286, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata ptr %1, metadata !2287, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i64 %2, metadata !2288, metadata !DIExpression()), !dbg !2340
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2342
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2289, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2344), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %0, metadata !2264, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2269, metadata !DIExpression()), !dbg !2350
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2350, !alias.scope !2344
  %5 = icmp eq i32 %0, 10, !dbg !2351
  br i1 %5, label %6, label %7, !dbg !2352

6:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2353, !noalias !2344
  unreachable, !dbg !2353

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2354, !tbaa !1359, !alias.scope !2344
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2355
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2356
  ret ptr %8, !dbg !2357
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2358 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2362, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i64 %1, metadata !2363, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i8 %2, metadata !2364, metadata !DIExpression()), !dbg !2366
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2367
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2365, metadata !DIExpression()), !dbg !2368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2369, !tbaa.struct !2370
  call void @llvm.dbg.value(metadata ptr %4, metadata !1376, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %2, metadata !1377, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 1, metadata !1378, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %2, metadata !1379, metadata !DIExpression()), !dbg !2371
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2373
  %6 = lshr i8 %2, 5, !dbg !2374
  %7 = zext i8 %6 to i64, !dbg !2374
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2375
  call void @llvm.dbg.value(metadata ptr %8, metadata !1380, metadata !DIExpression()), !dbg !2371
  %9 = and i8 %2, 31, !dbg !2376
  %10 = zext i8 %9 to i32, !dbg !2376
  call void @llvm.dbg.value(metadata i32 %10, metadata !1382, metadata !DIExpression()), !dbg !2371
  %11 = load i32, ptr %8, align 4, !dbg !2377, !tbaa !747
  %12 = lshr i32 %11, %10, !dbg !2378
  call void @llvm.dbg.value(metadata i32 %12, metadata !1383, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2371
  %13 = and i32 %12, 1, !dbg !2379
  %14 = xor i32 %13, 1, !dbg !2379
  %15 = shl nuw i32 %14, %10, !dbg !2380
  %16 = xor i32 %15, %11, !dbg !2381
  store i32 %16, ptr %8, align 4, !dbg !2381, !tbaa !747
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2382
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2383
  ret ptr %17, !dbg !2384
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2385 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2389, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 %1, metadata !2390, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata ptr %0, metadata !2362, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 -1, metadata !2363, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i8 %1, metadata !2364, metadata !DIExpression()), !dbg !2392
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2394
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2365, metadata !DIExpression()), !dbg !2395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2396, !tbaa.struct !2370
  call void @llvm.dbg.value(metadata ptr %3, metadata !1376, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i8 %1, metadata !1377, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i32 1, metadata !1378, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i8 %1, metadata !1379, metadata !DIExpression()), !dbg !2397
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2399
  %5 = lshr i8 %1, 5, !dbg !2400
  %6 = zext i8 %5 to i64, !dbg !2400
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2401
  call void @llvm.dbg.value(metadata ptr %7, metadata !1380, metadata !DIExpression()), !dbg !2397
  %8 = and i8 %1, 31, !dbg !2402
  %9 = zext i8 %8 to i32, !dbg !2402
  call void @llvm.dbg.value(metadata i32 %9, metadata !1382, metadata !DIExpression()), !dbg !2397
  %10 = load i32, ptr %7, align 4, !dbg !2403, !tbaa !747
  %11 = lshr i32 %10, %9, !dbg !2404
  call void @llvm.dbg.value(metadata i32 %11, metadata !1383, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2397
  %12 = and i32 %11, 1, !dbg !2405
  %13 = xor i32 %12, 1, !dbg !2405
  %14 = shl nuw i32 %13, %9, !dbg !2406
  %15 = xor i32 %14, %10, !dbg !2407
  store i32 %15, ptr %7, align 4, !dbg !2407, !tbaa !747
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2408
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2409
  ret ptr %16, !dbg !2410
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2411 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2413, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata ptr %0, metadata !2389, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i8 58, metadata !2390, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata ptr %0, metadata !2362, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i64 -1, metadata !2363, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8 58, metadata !2364, metadata !DIExpression()), !dbg !2417
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2419
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2365, metadata !DIExpression()), !dbg !2420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2421, !tbaa.struct !2370
  call void @llvm.dbg.value(metadata ptr %2, metadata !1376, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8 58, metadata !1377, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i32 1, metadata !1378, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8 58, metadata !1379, metadata !DIExpression()), !dbg !2422
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2424
  call void @llvm.dbg.value(metadata ptr %3, metadata !1380, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i32 26, metadata !1382, metadata !DIExpression()), !dbg !2422
  %4 = load i32, ptr %3, align 4, !dbg !2425, !tbaa !747
  call void @llvm.dbg.value(metadata i32 %4, metadata !1383, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2422
  %5 = or i32 %4, 67108864, !dbg !2426
  store i32 %5, ptr %3, align 4, !dbg !2426, !tbaa !747
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2427
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2428
  ret ptr %6, !dbg !2429
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2430 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2432, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i64 %1, metadata !2433, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata ptr %0, metadata !2362, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i64 %1, metadata !2363, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 58, metadata !2364, metadata !DIExpression()), !dbg !2435
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2437
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2365, metadata !DIExpression()), !dbg !2438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2439, !tbaa.struct !2370
  call void @llvm.dbg.value(metadata ptr %3, metadata !1376, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8 58, metadata !1377, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i32 1, metadata !1378, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8 58, metadata !1379, metadata !DIExpression()), !dbg !2440
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2442
  call void @llvm.dbg.value(metadata ptr %4, metadata !1380, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i32 26, metadata !1382, metadata !DIExpression()), !dbg !2440
  %5 = load i32, ptr %4, align 4, !dbg !2443, !tbaa !747
  call void @llvm.dbg.value(metadata i32 %5, metadata !1383, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2440
  %6 = or i32 %5, 67108864, !dbg !2444
  store i32 %6, ptr %4, align 4, !dbg !2444, !tbaa !747
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2445
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2446
  ret ptr %7, !dbg !2447
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2448 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2454
  call void @llvm.dbg.value(metadata i32 %0, metadata !2450, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i32 %1, metadata !2451, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata ptr %2, metadata !2452, metadata !DIExpression()), !dbg !2456
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2457
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2453, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i32 %1, metadata !2264, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i32 0, metadata !2269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2459
  %5 = icmp eq i32 %1, 10, !dbg !2460
  br i1 %5, label %6, label %7, !dbg !2461

6:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2462, !noalias !2463
  unreachable, !dbg !2462

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2459
  store i32 %1, ptr %4, align 8, !dbg !2466, !tbaa.struct !2370
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2466
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2466
  call void @llvm.dbg.value(metadata ptr %4, metadata !1376, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 58, metadata !1377, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 1, metadata !1378, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 58, metadata !1379, metadata !DIExpression()), !dbg !2467
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2469
  call void @llvm.dbg.value(metadata ptr %9, metadata !1380, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 26, metadata !1382, metadata !DIExpression()), !dbg !2467
  %10 = load i32, ptr %9, align 4, !dbg !2470, !tbaa !747
  call void @llvm.dbg.value(metadata i32 %10, metadata !1383, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2467
  %11 = or i32 %10, 67108864, !dbg !2471
  store i32 %11, ptr %9, align 4, !dbg !2471, !tbaa !747
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2472
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2473
  ret ptr %12, !dbg !2474
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2475 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2479, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata ptr %1, metadata !2480, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata ptr %2, metadata !2481, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata ptr %3, metadata !2482, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i32 %0, metadata !2484, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata ptr %1, metadata !2489, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata ptr %2, metadata !2490, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata ptr %3, metadata !2491, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i64 -1, metadata !2492, metadata !DIExpression()), !dbg !2494
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2496
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2493, metadata !DIExpression()), !dbg !2497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2498, !tbaa.struct !2370
  call void @llvm.dbg.value(metadata ptr %5, metadata !1416, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata ptr %1, metadata !1417, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata ptr %2, metadata !1418, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata ptr %5, metadata !1416, metadata !DIExpression()), !dbg !2499
  store i32 10, ptr %5, align 8, !dbg !2501, !tbaa !1359
  %6 = icmp ne ptr %1, null, !dbg !2502
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2503
  br i1 %8, label %10, label %9, !dbg !2503

9:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2504
  unreachable, !dbg !2504

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2505
  store ptr %1, ptr %11, align 8, !dbg !2506, !tbaa !1430
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2507
  store ptr %2, ptr %12, align 8, !dbg !2508, !tbaa !1433
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2509
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2510
  ret ptr %13, !dbg !2511
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2485 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2484, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata ptr %1, metadata !2489, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata ptr %2, metadata !2490, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata ptr %3, metadata !2491, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i64 %4, metadata !2492, metadata !DIExpression()), !dbg !2512
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2513
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2493, metadata !DIExpression()), !dbg !2514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2515, !tbaa.struct !2370
  call void @llvm.dbg.value(metadata ptr %6, metadata !1416, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata ptr %1, metadata !1417, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata ptr %2, metadata !1418, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata ptr %6, metadata !1416, metadata !DIExpression()), !dbg !2516
  store i32 10, ptr %6, align 8, !dbg !2518, !tbaa !1359
  %7 = icmp ne ptr %1, null, !dbg !2519
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2520
  br i1 %9, label %11, label %10, !dbg !2520

10:                                               ; preds = %5
  tail call void @abort() #37, !dbg !2521
  unreachable, !dbg !2521

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2522
  store ptr %1, ptr %12, align 8, !dbg !2523, !tbaa !1430
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2524
  store ptr %2, ptr %13, align 8, !dbg !2525, !tbaa !1433
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2526
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2527
  ret ptr %14, !dbg !2528
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2529 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2533, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata ptr %1, metadata !2534, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata ptr %2, metadata !2535, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 0, metadata !2479, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata ptr %0, metadata !2480, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata ptr %1, metadata !2481, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata ptr %2, metadata !2482, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i32 0, metadata !2484, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata ptr %0, metadata !2489, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata ptr %1, metadata !2490, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata ptr %2, metadata !2491, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 -1, metadata !2492, metadata !DIExpression()), !dbg !2539
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2541
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2493, metadata !DIExpression()), !dbg !2542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2543, !tbaa.struct !2370
  call void @llvm.dbg.value(metadata ptr %4, metadata !1416, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata ptr %0, metadata !1417, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata ptr %1, metadata !1418, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata ptr %4, metadata !1416, metadata !DIExpression()), !dbg !2544
  store i32 10, ptr %4, align 8, !dbg !2546, !tbaa !1359
  %5 = icmp ne ptr %0, null, !dbg !2547
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2548
  br i1 %7, label %9, label %8, !dbg !2548

8:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2549
  unreachable, !dbg !2549

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2550
  store ptr %0, ptr %10, align 8, !dbg !2551, !tbaa !1430
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2552
  store ptr %1, ptr %11, align 8, !dbg !2553, !tbaa !1433
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2554
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2555
  ret ptr %12, !dbg !2556
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2557 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2561, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata ptr %1, metadata !2562, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata ptr %2, metadata !2563, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i64 %3, metadata !2564, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 0, metadata !2484, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata ptr %0, metadata !2489, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata ptr %1, metadata !2490, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata ptr %2, metadata !2491, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %3, metadata !2492, metadata !DIExpression()), !dbg !2566
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2568
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2493, metadata !DIExpression()), !dbg !2569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2570, !tbaa.struct !2370
  call void @llvm.dbg.value(metadata ptr %5, metadata !1416, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %0, metadata !1417, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %1, metadata !1418, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %5, metadata !1416, metadata !DIExpression()), !dbg !2571
  store i32 10, ptr %5, align 8, !dbg !2573, !tbaa !1359
  %6 = icmp ne ptr %0, null, !dbg !2574
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2575
  br i1 %8, label %10, label %9, !dbg !2575

9:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2576
  unreachable, !dbg !2576

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2577
  store ptr %0, ptr %11, align 8, !dbg !2578, !tbaa !1430
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2579
  store ptr %1, ptr %12, align 8, !dbg !2580, !tbaa !1433
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2581
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2582
  ret ptr %13, !dbg !2583
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2584 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2588, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata ptr %1, metadata !2589, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i64 %2, metadata !2590, metadata !DIExpression()), !dbg !2591
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2592
  ret ptr %4, !dbg !2593
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2594 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2598, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i64 %1, metadata !2599, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i32 0, metadata !2588, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata ptr %0, metadata !2589, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i64 %1, metadata !2590, metadata !DIExpression()), !dbg !2601
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2603
  ret ptr %3, !dbg !2604
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2605 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2609, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata ptr %1, metadata !2610, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %0, metadata !2588, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %1, metadata !2589, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i64 -1, metadata !2590, metadata !DIExpression()), !dbg !2612
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2614
  ret ptr %3, !dbg !2615
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2616 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2620, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i32 0, metadata !2609, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata ptr %0, metadata !2610, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i32 0, metadata !2588, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata ptr %0, metadata !2589, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 -1, metadata !2590, metadata !DIExpression()), !dbg !2624
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2626
  ret ptr %2, !dbg !2627
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2628 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2667, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %1, metadata !2668, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %2, metadata !2669, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %3, metadata !2670, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %4, metadata !2671, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i64 %5, metadata !2672, metadata !DIExpression()), !dbg !2673
  %7 = icmp eq ptr %1, null, !dbg !2674
  br i1 %7, label %10, label %8, !dbg !2676

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.67, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !2677
  br label %12, !dbg !2677

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.68, ptr noundef %2, ptr noundef %3) #36, !dbg !2678
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.3.70, i32 noundef 5) #36, !dbg !2679
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !2679
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %0), !dbg !2680
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.5.72, i32 noundef 5) #36, !dbg !2681
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.73) #36, !dbg !2681
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %0), !dbg !2682
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
  ], !dbg !2683

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.7.74, i32 noundef 5) #36, !dbg !2684
  %21 = load ptr, ptr %4, align 8, !dbg !2684, !tbaa !725
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !2684
  br label %147, !dbg !2686

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.8.75, i32 noundef 5) #36, !dbg !2687
  %25 = load ptr, ptr %4, align 8, !dbg !2687, !tbaa !725
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2687
  %27 = load ptr, ptr %26, align 8, !dbg !2687, !tbaa !725
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !2687
  br label %147, !dbg !2688

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.9.76, i32 noundef 5) #36, !dbg !2689
  %31 = load ptr, ptr %4, align 8, !dbg !2689, !tbaa !725
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2689
  %33 = load ptr, ptr %32, align 8, !dbg !2689, !tbaa !725
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2689
  %35 = load ptr, ptr %34, align 8, !dbg !2689, !tbaa !725
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !2689
  br label %147, !dbg !2690

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.10.77, i32 noundef 5) #36, !dbg !2691
  %39 = load ptr, ptr %4, align 8, !dbg !2691, !tbaa !725
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2691
  %41 = load ptr, ptr %40, align 8, !dbg !2691, !tbaa !725
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2691
  %43 = load ptr, ptr %42, align 8, !dbg !2691, !tbaa !725
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2691
  %45 = load ptr, ptr %44, align 8, !dbg !2691, !tbaa !725
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !2691
  br label %147, !dbg !2692

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.11.78, i32 noundef 5) #36, !dbg !2693
  %49 = load ptr, ptr %4, align 8, !dbg !2693, !tbaa !725
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2693
  %51 = load ptr, ptr %50, align 8, !dbg !2693, !tbaa !725
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2693
  %53 = load ptr, ptr %52, align 8, !dbg !2693, !tbaa !725
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2693
  %55 = load ptr, ptr %54, align 8, !dbg !2693, !tbaa !725
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2693
  %57 = load ptr, ptr %56, align 8, !dbg !2693, !tbaa !725
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !2693
  br label %147, !dbg !2694

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.12.79, i32 noundef 5) #36, !dbg !2695
  %61 = load ptr, ptr %4, align 8, !dbg !2695, !tbaa !725
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2695
  %63 = load ptr, ptr %62, align 8, !dbg !2695, !tbaa !725
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2695
  %65 = load ptr, ptr %64, align 8, !dbg !2695, !tbaa !725
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2695
  %67 = load ptr, ptr %66, align 8, !dbg !2695, !tbaa !725
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2695
  %69 = load ptr, ptr %68, align 8, !dbg !2695, !tbaa !725
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2695
  %71 = load ptr, ptr %70, align 8, !dbg !2695, !tbaa !725
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !2695
  br label %147, !dbg !2696

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.13.80, i32 noundef 5) #36, !dbg !2697
  %75 = load ptr, ptr %4, align 8, !dbg !2697, !tbaa !725
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2697
  %77 = load ptr, ptr %76, align 8, !dbg !2697, !tbaa !725
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2697
  %79 = load ptr, ptr %78, align 8, !dbg !2697, !tbaa !725
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2697
  %81 = load ptr, ptr %80, align 8, !dbg !2697, !tbaa !725
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2697
  %83 = load ptr, ptr %82, align 8, !dbg !2697, !tbaa !725
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2697
  %85 = load ptr, ptr %84, align 8, !dbg !2697, !tbaa !725
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2697
  %87 = load ptr, ptr %86, align 8, !dbg !2697, !tbaa !725
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !2697
  br label %147, !dbg !2698

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.14.81, i32 noundef 5) #36, !dbg !2699
  %91 = load ptr, ptr %4, align 8, !dbg !2699, !tbaa !725
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2699
  %93 = load ptr, ptr %92, align 8, !dbg !2699, !tbaa !725
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2699
  %95 = load ptr, ptr %94, align 8, !dbg !2699, !tbaa !725
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2699
  %97 = load ptr, ptr %96, align 8, !dbg !2699, !tbaa !725
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2699
  %99 = load ptr, ptr %98, align 8, !dbg !2699, !tbaa !725
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2699
  %101 = load ptr, ptr %100, align 8, !dbg !2699, !tbaa !725
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2699
  %103 = load ptr, ptr %102, align 8, !dbg !2699, !tbaa !725
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2699
  %105 = load ptr, ptr %104, align 8, !dbg !2699, !tbaa !725
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !2699
  br label %147, !dbg !2700

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.15.82, i32 noundef 5) #36, !dbg !2701
  %109 = load ptr, ptr %4, align 8, !dbg !2701, !tbaa !725
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2701
  %111 = load ptr, ptr %110, align 8, !dbg !2701, !tbaa !725
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2701
  %113 = load ptr, ptr %112, align 8, !dbg !2701, !tbaa !725
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2701
  %115 = load ptr, ptr %114, align 8, !dbg !2701, !tbaa !725
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2701
  %117 = load ptr, ptr %116, align 8, !dbg !2701, !tbaa !725
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2701
  %119 = load ptr, ptr %118, align 8, !dbg !2701, !tbaa !725
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2701
  %121 = load ptr, ptr %120, align 8, !dbg !2701, !tbaa !725
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2701
  %123 = load ptr, ptr %122, align 8, !dbg !2701, !tbaa !725
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2701
  %125 = load ptr, ptr %124, align 8, !dbg !2701, !tbaa !725
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !2701
  br label %147, !dbg !2702

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.16.83, i32 noundef 5) #36, !dbg !2703
  %129 = load ptr, ptr %4, align 8, !dbg !2703, !tbaa !725
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2703
  %131 = load ptr, ptr %130, align 8, !dbg !2703, !tbaa !725
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2703
  %133 = load ptr, ptr %132, align 8, !dbg !2703, !tbaa !725
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2703
  %135 = load ptr, ptr %134, align 8, !dbg !2703, !tbaa !725
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2703
  %137 = load ptr, ptr %136, align 8, !dbg !2703, !tbaa !725
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2703
  %139 = load ptr, ptr %138, align 8, !dbg !2703, !tbaa !725
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2703
  %141 = load ptr, ptr %140, align 8, !dbg !2703, !tbaa !725
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2703
  %143 = load ptr, ptr %142, align 8, !dbg !2703, !tbaa !725
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2703
  %145 = load ptr, ptr %144, align 8, !dbg !2703, !tbaa !725
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !2703
  br label %147, !dbg !2704

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2705
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2706 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2710, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata ptr %1, metadata !2711, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata ptr %2, metadata !2712, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata ptr %3, metadata !2713, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata ptr %4, metadata !2714, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i64 0, metadata !2715, metadata !DIExpression()), !dbg !2716
  br label %6, !dbg !2717

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2719
  call void @llvm.dbg.value(metadata i64 %7, metadata !2715, metadata !DIExpression()), !dbg !2716
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2720
  %9 = load ptr, ptr %8, align 8, !dbg !2720, !tbaa !725
  %10 = icmp eq ptr %9, null, !dbg !2722
  %11 = add i64 %7, 1, !dbg !2723
  call void @llvm.dbg.value(metadata i64 %11, metadata !2715, metadata !DIExpression()), !dbg !2716
  br i1 %10, label %12, label %6, !dbg !2722, !llvm.loop !2724

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2726
  ret void, !dbg !2727
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2728 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2743, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata ptr %1, metadata !2744, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata ptr %2, metadata !2745, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata ptr %3, metadata !2746, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2747, metadata !DIExpression()), !dbg !2752
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !2753
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2749, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 0, metadata !2748, metadata !DIExpression()), !dbg !2751
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2748, metadata !DIExpression()), !dbg !2751
  %10 = icmp sgt i32 %9, -1, !dbg !2755
  br i1 %10, label %18, label %11, !dbg !2755

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2755
  store i32 %12, ptr %7, align 8, !dbg !2755
  %13 = icmp ult i32 %9, -7, !dbg !2755
  br i1 %13, label %14, label %18, !dbg !2755

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2755
  %16 = sext i32 %9 to i64, !dbg !2755
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2755
  br label %22, !dbg !2755

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2755
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2755
  store ptr %21, ptr %4, align 8, !dbg !2755
  br label %22, !dbg !2755

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2755
  %25 = load ptr, ptr %24, align 8, !dbg !2755
  store ptr %25, ptr %6, align 8, !dbg !2758, !tbaa !725
  %26 = icmp eq ptr %25, null, !dbg !2759
  br i1 %26, label %197, label %27, !dbg !2760

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 1, metadata !2748, metadata !DIExpression()), !dbg !2751
  %28 = icmp sgt i32 %23, -1, !dbg !2755
  br i1 %28, label %36, label %29, !dbg !2755

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2755
  store i32 %30, ptr %7, align 8, !dbg !2755
  %31 = icmp ult i32 %23, -7, !dbg !2755
  br i1 %31, label %32, label %36, !dbg !2755

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2755
  %34 = sext i32 %23 to i64, !dbg !2755
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2755
  br label %40, !dbg !2755

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2755
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2755
  store ptr %39, ptr %4, align 8, !dbg !2755
  br label %40, !dbg !2755

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2755
  %43 = load ptr, ptr %42, align 8, !dbg !2755
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2761
  store ptr %43, ptr %44, align 8, !dbg !2758, !tbaa !725
  %45 = icmp eq ptr %43, null, !dbg !2759
  br i1 %45, label %197, label %46, !dbg !2760

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 2, metadata !2748, metadata !DIExpression()), !dbg !2751
  %47 = icmp sgt i32 %41, -1, !dbg !2755
  br i1 %47, label %55, label %48, !dbg !2755

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2755
  store i32 %49, ptr %7, align 8, !dbg !2755
  %50 = icmp ult i32 %41, -7, !dbg !2755
  br i1 %50, label %51, label %55, !dbg !2755

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2755
  %53 = sext i32 %41 to i64, !dbg !2755
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2755
  br label %59, !dbg !2755

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2755
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2755
  store ptr %58, ptr %4, align 8, !dbg !2755
  br label %59, !dbg !2755

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2755
  %62 = load ptr, ptr %61, align 8, !dbg !2755
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2761
  store ptr %62, ptr %63, align 8, !dbg !2758, !tbaa !725
  %64 = icmp eq ptr %62, null, !dbg !2759
  br i1 %64, label %197, label %65, !dbg !2760

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 3, metadata !2748, metadata !DIExpression()), !dbg !2751
  %66 = icmp sgt i32 %60, -1, !dbg !2755
  br i1 %66, label %74, label %67, !dbg !2755

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2755
  store i32 %68, ptr %7, align 8, !dbg !2755
  %69 = icmp ult i32 %60, -7, !dbg !2755
  br i1 %69, label %70, label %74, !dbg !2755

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2755
  %72 = sext i32 %60 to i64, !dbg !2755
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2755
  br label %78, !dbg !2755

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2755
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2755
  store ptr %77, ptr %4, align 8, !dbg !2755
  br label %78, !dbg !2755

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2755
  %81 = load ptr, ptr %80, align 8, !dbg !2755
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2761
  store ptr %81, ptr %82, align 8, !dbg !2758, !tbaa !725
  %83 = icmp eq ptr %81, null, !dbg !2759
  br i1 %83, label %197, label %84, !dbg !2760

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 4, metadata !2748, metadata !DIExpression()), !dbg !2751
  %85 = icmp sgt i32 %79, -1, !dbg !2755
  br i1 %85, label %93, label %86, !dbg !2755

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2755
  store i32 %87, ptr %7, align 8, !dbg !2755
  %88 = icmp ult i32 %79, -7, !dbg !2755
  br i1 %88, label %89, label %93, !dbg !2755

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2755
  %91 = sext i32 %79 to i64, !dbg !2755
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2755
  br label %97, !dbg !2755

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2755
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2755
  store ptr %96, ptr %4, align 8, !dbg !2755
  br label %97, !dbg !2755

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2755
  %100 = load ptr, ptr %99, align 8, !dbg !2755
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2761
  store ptr %100, ptr %101, align 8, !dbg !2758, !tbaa !725
  %102 = icmp eq ptr %100, null, !dbg !2759
  br i1 %102, label %197, label %103, !dbg !2760

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 5, metadata !2748, metadata !DIExpression()), !dbg !2751
  %104 = icmp sgt i32 %98, -1, !dbg !2755
  br i1 %104, label %112, label %105, !dbg !2755

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2755
  store i32 %106, ptr %7, align 8, !dbg !2755
  %107 = icmp ult i32 %98, -7, !dbg !2755
  br i1 %107, label %108, label %112, !dbg !2755

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2755
  %110 = sext i32 %98 to i64, !dbg !2755
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2755
  br label %116, !dbg !2755

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2755
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2755
  store ptr %115, ptr %4, align 8, !dbg !2755
  br label %116, !dbg !2755

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2755
  %119 = load ptr, ptr %118, align 8, !dbg !2755
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2761
  store ptr %119, ptr %120, align 8, !dbg !2758, !tbaa !725
  %121 = icmp eq ptr %119, null, !dbg !2759
  br i1 %121, label %197, label %122, !dbg !2760

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 6, metadata !2748, metadata !DIExpression()), !dbg !2751
  %123 = icmp sgt i32 %117, -1, !dbg !2755
  br i1 %123, label %131, label %124, !dbg !2755

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2755
  store i32 %125, ptr %7, align 8, !dbg !2755
  %126 = icmp ult i32 %117, -7, !dbg !2755
  br i1 %126, label %127, label %131, !dbg !2755

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2755
  %129 = sext i32 %117 to i64, !dbg !2755
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2755
  br label %135, !dbg !2755

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2755
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2755
  store ptr %134, ptr %4, align 8, !dbg !2755
  br label %135, !dbg !2755

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2755
  %138 = load ptr, ptr %137, align 8, !dbg !2755
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2761
  store ptr %138, ptr %139, align 8, !dbg !2758, !tbaa !725
  %140 = icmp eq ptr %138, null, !dbg !2759
  br i1 %140, label %197, label %141, !dbg !2760

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 7, metadata !2748, metadata !DIExpression()), !dbg !2751
  %142 = icmp sgt i32 %136, -1, !dbg !2755
  br i1 %142, label %150, label %143, !dbg !2755

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2755
  store i32 %144, ptr %7, align 8, !dbg !2755
  %145 = icmp ult i32 %136, -7, !dbg !2755
  br i1 %145, label %146, label %150, !dbg !2755

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2755
  %148 = sext i32 %136 to i64, !dbg !2755
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2755
  br label %154, !dbg !2755

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2755
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2755
  store ptr %153, ptr %4, align 8, !dbg !2755
  br label %154, !dbg !2755

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2755
  %157 = load ptr, ptr %156, align 8, !dbg !2755
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2761
  store ptr %157, ptr %158, align 8, !dbg !2758, !tbaa !725
  %159 = icmp eq ptr %157, null, !dbg !2759
  br i1 %159, label %197, label %160, !dbg !2760

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 8, metadata !2748, metadata !DIExpression()), !dbg !2751
  %161 = icmp sgt i32 %155, -1, !dbg !2755
  br i1 %161, label %169, label %162, !dbg !2755

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2755
  store i32 %163, ptr %7, align 8, !dbg !2755
  %164 = icmp ult i32 %155, -7, !dbg !2755
  br i1 %164, label %165, label %169, !dbg !2755

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2755
  %167 = sext i32 %155 to i64, !dbg !2755
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2755
  br label %173, !dbg !2755

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2755
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2755
  store ptr %172, ptr %4, align 8, !dbg !2755
  br label %173, !dbg !2755

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2755
  %176 = load ptr, ptr %175, align 8, !dbg !2755
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2761
  store ptr %176, ptr %177, align 8, !dbg !2758, !tbaa !725
  %178 = icmp eq ptr %176, null, !dbg !2759
  br i1 %178, label %197, label %179, !dbg !2760

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 9, metadata !2748, metadata !DIExpression()), !dbg !2751
  %180 = icmp sgt i32 %174, -1, !dbg !2755
  br i1 %180, label %188, label %181, !dbg !2755

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2755
  store i32 %182, ptr %7, align 8, !dbg !2755
  %183 = icmp ult i32 %174, -7, !dbg !2755
  br i1 %183, label %184, label %188, !dbg !2755

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2755
  %186 = sext i32 %174 to i64, !dbg !2755
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2755
  br label %191, !dbg !2755

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2755
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2755
  store ptr %190, ptr %4, align 8, !dbg !2755
  br label %191, !dbg !2755

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2755
  %193 = load ptr, ptr %192, align 8, !dbg !2755
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2761
  store ptr %193, ptr %194, align 8, !dbg !2758, !tbaa !725
  %195 = icmp eq ptr %193, null, !dbg !2759
  %196 = select i1 %195, i64 9, i64 10, !dbg !2760
  br label %197, !dbg !2760

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2762
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2763
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !2764
  ret void, !dbg !2764
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2765 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2769, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata ptr %1, metadata !2770, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata ptr %2, metadata !2771, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata ptr %3, metadata !2772, metadata !DIExpression()), !dbg !2774
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !2775
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2773, metadata !DIExpression()), !dbg !2776
  call void @llvm.va_start(ptr nonnull %5), !dbg !2777
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !2778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2778, !tbaa.struct !1048
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2778
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !2778
  call void @llvm.va_end(ptr nonnull %5), !dbg !2779
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !2780
  ret void, !dbg !2780
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2781 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2782, !tbaa !725
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %1), !dbg !2782
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.17.88, i32 noundef 5) #36, !dbg !2783
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.89) #36, !dbg !2783
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.19, i32 noundef 5) #36, !dbg !2784
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21.90) #36, !dbg !2784
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !2785
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !2785
  ret void, !dbg !2786
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2787 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2792, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i64 %1, metadata !2793, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i64 %2, metadata !2794, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata ptr %0, metadata !2796, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i64 %1, metadata !2799, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i64 %2, metadata !2800, metadata !DIExpression()), !dbg !2801
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2803
  call void @llvm.dbg.value(metadata ptr %4, metadata !2804, metadata !DIExpression()), !dbg !2809
  %5 = icmp eq ptr %4, null, !dbg !2811
  br i1 %5, label %6, label %7, !dbg !2813

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !2814
  unreachable, !dbg !2814

7:                                                ; preds = %3
  ret ptr %4, !dbg !2815
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2797 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2796, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %1, metadata !2799, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %2, metadata !2800, metadata !DIExpression()), !dbg !2816
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2817
  call void @llvm.dbg.value(metadata ptr %4, metadata !2804, metadata !DIExpression()), !dbg !2818
  %5 = icmp eq ptr %4, null, !dbg !2820
  br i1 %5, label %6, label %7, !dbg !2821

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !2822
  unreachable, !dbg !2822

7:                                                ; preds = %3
  ret ptr %4, !dbg !2823
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2824 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2828, metadata !DIExpression()), !dbg !2829
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2830
  call void @llvm.dbg.value(metadata ptr %2, metadata !2804, metadata !DIExpression()), !dbg !2831
  %3 = icmp eq ptr %2, null, !dbg !2833
  br i1 %3, label %4, label %5, !dbg !2834

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !2835
  unreachable, !dbg !2835

5:                                                ; preds = %1
  ret ptr %2, !dbg !2836
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2837 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2838 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2842, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 %0, metadata !2844, metadata !DIExpression()), !dbg !2848
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2850
  call void @llvm.dbg.value(metadata ptr %2, metadata !2804, metadata !DIExpression()), !dbg !2851
  %3 = icmp eq ptr %2, null, !dbg !2853
  br i1 %3, label %4, label %5, !dbg !2854

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !2855
  unreachable, !dbg !2855

5:                                                ; preds = %1
  ret ptr %2, !dbg !2856
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2857 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2861, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i64 %0, metadata !2828, metadata !DIExpression()), !dbg !2863
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2865
  call void @llvm.dbg.value(metadata ptr %2, metadata !2804, metadata !DIExpression()), !dbg !2866
  %3 = icmp eq ptr %2, null, !dbg !2868
  br i1 %3, label %4, label %5, !dbg !2869

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !2870
  unreachable, !dbg !2870

5:                                                ; preds = %1
  ret ptr %2, !dbg !2871
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2872 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2876, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %1, metadata !2877, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata ptr %0, metadata !2879, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 %1, metadata !2883, metadata !DIExpression()), !dbg !2884
  %3 = icmp eq i64 %1, 0, !dbg !2886
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2886
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !2887
  call void @llvm.dbg.value(metadata ptr %5, metadata !2804, metadata !DIExpression()), !dbg !2888
  %6 = icmp eq ptr %5, null, !dbg !2890
  br i1 %6, label %7, label %8, !dbg !2891

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !2892
  unreachable, !dbg !2892

8:                                                ; preds = %2
  ret ptr %5, !dbg !2893
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2894 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2895 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2899, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i64 %1, metadata !2900, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata ptr %0, metadata !2902, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %1, metadata !2905, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %0, metadata !2879, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i64 %1, metadata !2883, metadata !DIExpression()), !dbg !2908
  %3 = icmp eq i64 %1, 0, !dbg !2910
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2910
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !2911
  call void @llvm.dbg.value(metadata ptr %5, metadata !2804, metadata !DIExpression()), !dbg !2912
  %6 = icmp eq ptr %5, null, !dbg !2914
  br i1 %6, label %7, label %8, !dbg !2915

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !2916
  unreachable, !dbg !2916

8:                                                ; preds = %2
  ret ptr %5, !dbg !2917
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2918 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2922, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i64 %1, metadata !2923, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i64 %2, metadata !2924, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata ptr %0, metadata !2926, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i64 %1, metadata !2929, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i64 %2, metadata !2930, metadata !DIExpression()), !dbg !2931
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2933
  call void @llvm.dbg.value(metadata ptr %4, metadata !2804, metadata !DIExpression()), !dbg !2934
  %5 = icmp eq ptr %4, null, !dbg !2936
  br i1 %5, label %6, label %7, !dbg !2937

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !2938
  unreachable, !dbg !2938

7:                                                ; preds = %3
  ret ptr %4, !dbg !2939
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !2940 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2944, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i64 %1, metadata !2945, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata ptr null, metadata !2796, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 %0, metadata !2799, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 %1, metadata !2800, metadata !DIExpression()), !dbg !2947
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !2949
  call void @llvm.dbg.value(metadata ptr %3, metadata !2804, metadata !DIExpression()), !dbg !2950
  %4 = icmp eq ptr %3, null, !dbg !2952
  br i1 %4, label %5, label %6, !dbg !2953

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !2954
  unreachable, !dbg !2954

6:                                                ; preds = %2
  ret ptr %3, !dbg !2955
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !2956 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2960, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i64 %1, metadata !2961, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata ptr null, metadata !2922, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %0, metadata !2923, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %1, metadata !2924, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata ptr null, metadata !2926, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %0, metadata !2929, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %1, metadata !2930, metadata !DIExpression()), !dbg !2965
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !2967
  call void @llvm.dbg.value(metadata ptr %3, metadata !2804, metadata !DIExpression()), !dbg !2968
  %4 = icmp eq ptr %3, null, !dbg !2970
  br i1 %4, label %5, label %6, !dbg !2971

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !2972
  unreachable, !dbg !2972

6:                                                ; preds = %2
  ret ptr %3, !dbg !2973
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !2974 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2978, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata ptr %1, metadata !2979, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata ptr %0, metadata !666, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata ptr %1, metadata !667, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 1, metadata !668, metadata !DIExpression()), !dbg !2981
  %3 = load i64, ptr %1, align 8, !dbg !2983, !tbaa !2083
  call void @llvm.dbg.value(metadata i64 %3, metadata !669, metadata !DIExpression()), !dbg !2981
  %4 = icmp eq ptr %0, null, !dbg !2984
  br i1 %4, label %5, label %8, !dbg !2986

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2987
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2990
  br label %15, !dbg !2990

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !2991
  %10 = add nuw i64 %9, 1, !dbg !2991
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !2991
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !2991
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %13, metadata !669, metadata !DIExpression()), !dbg !2981
  br i1 %12, label %14, label %15, !dbg !2994

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !2995
  unreachable, !dbg !2995

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2981
  call void @llvm.dbg.value(metadata i64 %16, metadata !669, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata ptr %0, metadata !2796, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i64 %16, metadata !2799, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i64 1, metadata !2800, metadata !DIExpression()), !dbg !2996
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !2998
  call void @llvm.dbg.value(metadata ptr %17, metadata !2804, metadata !DIExpression()), !dbg !2999
  %18 = icmp eq ptr %17, null, !dbg !3001
  br i1 %18, label %19, label %20, !dbg !3002

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !3003
  unreachable, !dbg !3003

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !666, metadata !DIExpression()), !dbg !2981
  store i64 %16, ptr %1, align 8, !dbg !3004, !tbaa !2083
  ret ptr %17, !dbg !3005
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !661 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !666, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata ptr %1, metadata !667, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 %2, metadata !668, metadata !DIExpression()), !dbg !3006
  %4 = load i64, ptr %1, align 8, !dbg !3007, !tbaa !2083
  call void @llvm.dbg.value(metadata i64 %4, metadata !669, metadata !DIExpression()), !dbg !3006
  %5 = icmp eq ptr %0, null, !dbg !3008
  br i1 %5, label %6, label %13, !dbg !3009

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3010
  br i1 %7, label %8, label %20, !dbg !3011

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3012
  call void @llvm.dbg.value(metadata i64 %9, metadata !669, metadata !DIExpression()), !dbg !3006
  %10 = icmp ugt i64 %2, 128, !dbg !3014
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3015
  call void @llvm.dbg.value(metadata i64 %12, metadata !669, metadata !DIExpression()), !dbg !3006
  br label %20, !dbg !3016

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3017
  %15 = add nuw i64 %14, 1, !dbg !3017
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3017
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3017
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %18, metadata !669, metadata !DIExpression()), !dbg !3006
  br i1 %17, label %19, label %20, !dbg !3018

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !3019
  unreachable, !dbg !3019

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3006
  call void @llvm.dbg.value(metadata i64 %21, metadata !669, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata ptr %0, metadata !2796, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 %21, metadata !2799, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 %2, metadata !2800, metadata !DIExpression()), !dbg !3020
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3022
  call void @llvm.dbg.value(metadata ptr %22, metadata !2804, metadata !DIExpression()), !dbg !3023
  %23 = icmp eq ptr %22, null, !dbg !3025
  br i1 %23, label %24, label %25, !dbg !3026

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !3027
  unreachable, !dbg !3027

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !666, metadata !DIExpression()), !dbg !3006
  store i64 %21, ptr %1, align 8, !dbg !3028, !tbaa !2083
  ret ptr %22, !dbg !3029
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !673 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !681, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata ptr %1, metadata !682, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %2, metadata !683, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %3, metadata !684, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %4, metadata !685, metadata !DIExpression()), !dbg !3030
  %6 = load i64, ptr %1, align 8, !dbg !3031, !tbaa !2083
  call void @llvm.dbg.value(metadata i64 %6, metadata !686, metadata !DIExpression()), !dbg !3030
  %7 = ashr i64 %6, 1, !dbg !3032
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3032
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3032
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3032
  call void @llvm.dbg.value(metadata i64 %10, metadata !687, metadata !DIExpression()), !dbg !3030
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3034
  call void @llvm.dbg.value(metadata i64 %11, metadata !687, metadata !DIExpression()), !dbg !3030
  %12 = icmp sgt i64 %3, -1, !dbg !3035
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3037
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3037
  call void @llvm.dbg.value(metadata i64 %15, metadata !687, metadata !DIExpression()), !dbg !3030
  %16 = icmp slt i64 %4, 0, !dbg !3038
  br i1 %16, label %17, label %30, !dbg !3038

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3038
  br i1 %18, label %19, label %24, !dbg !3038

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3038
  %21 = udiv i64 9223372036854775807, %20, !dbg !3038
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3038
  br i1 %23, label %46, label %43, !dbg !3038

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3038
  br i1 %25, label %43, label %26, !dbg !3038

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3038
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3038
  %29 = icmp ult i64 %28, %15, !dbg !3038
  br i1 %29, label %46, label %43, !dbg !3038

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3038
  br i1 %31, label %43, label %32, !dbg !3038

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3038
  br i1 %33, label %34, label %40, !dbg !3038

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3038
  br i1 %35, label %43, label %36, !dbg !3038

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3038
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3038
  %39 = icmp ult i64 %38, %4, !dbg !3038
  br i1 %39, label %46, label %43, !dbg !3038

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3038
  br i1 %42, label %46, label %43, !dbg !3038

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !688, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3030
  %44 = mul i64 %15, %4, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %44, metadata !688, metadata !DIExpression()), !dbg !3030
  %45 = icmp slt i64 %44, 128, !dbg !3038
  br i1 %45, label %46, label %52, !dbg !3038

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !689, metadata !DIExpression()), !dbg !3030
  %48 = sdiv i64 %47, %4, !dbg !3039
  call void @llvm.dbg.value(metadata i64 %48, metadata !687, metadata !DIExpression()), !dbg !3030
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3042
  call void @llvm.dbg.value(metadata i64 %51, metadata !688, metadata !DIExpression()), !dbg !3030
  br label %52, !dbg !3043

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3030
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3030
  call void @llvm.dbg.value(metadata i64 %54, metadata !688, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %53, metadata !687, metadata !DIExpression()), !dbg !3030
  %55 = icmp eq ptr %0, null, !dbg !3044
  br i1 %55, label %56, label %57, !dbg !3046

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3047, !tbaa !2083
  br label %57, !dbg !3048

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3049
  %59 = icmp slt i64 %58, %2, !dbg !3051
  br i1 %59, label %60, label %97, !dbg !3052

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3053
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3053
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3053
  call void @llvm.dbg.value(metadata i64 %63, metadata !687, metadata !DIExpression()), !dbg !3030
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3054
  br i1 %66, label %96, label %67, !dbg !3054

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3055

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3055
  br i1 %69, label %70, label %75, !dbg !3055

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3055
  %72 = udiv i64 9223372036854775807, %71, !dbg !3055
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3055
  br i1 %74, label %96, label %94, !dbg !3055

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3055
  br i1 %76, label %94, label %77, !dbg !3055

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3055
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3055
  %80 = icmp ult i64 %79, %63, !dbg !3055
  br i1 %80, label %96, label %94, !dbg !3055

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3055
  br i1 %82, label %94, label %83, !dbg !3055

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3055
  br i1 %84, label %85, label %91, !dbg !3055

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3055
  br i1 %86, label %94, label %87, !dbg !3055

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3055
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3055
  %90 = icmp ult i64 %89, %4, !dbg !3055
  br i1 %90, label %96, label %94, !dbg !3055

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3055
  br i1 %93, label %96, label %94, !dbg !3055

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !688, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3030
  %95 = mul i64 %63, %4, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %95, metadata !688, metadata !DIExpression()), !dbg !3030
  br label %97, !dbg !3056

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #37, !dbg !3057
  unreachable, !dbg !3057

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3030
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3030
  call void @llvm.dbg.value(metadata i64 %99, metadata !688, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %98, metadata !687, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata ptr %0, metadata !2876, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i64 %99, metadata !2877, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata ptr %0, metadata !2879, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i64 %99, metadata !2883, metadata !DIExpression()), !dbg !3060
  %100 = icmp eq i64 %99, 0, !dbg !3062
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3062
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #42, !dbg !3063
  call void @llvm.dbg.value(metadata ptr %102, metadata !2804, metadata !DIExpression()), !dbg !3064
  %103 = icmp eq ptr %102, null, !dbg !3066
  br i1 %103, label %104, label %105, !dbg !3067

104:                                              ; preds = %97
  tail call void @xalloc_die() #37, !dbg !3068
  unreachable, !dbg !3068

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !681, metadata !DIExpression()), !dbg !3030
  store i64 %98, ptr %1, align 8, !dbg !3069, !tbaa !2083
  ret ptr %102, !dbg !3070
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3071 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3073, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %0, metadata !3075, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i64 1, metadata !3078, metadata !DIExpression()), !dbg !3079
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3081
  call void @llvm.dbg.value(metadata ptr %2, metadata !2804, metadata !DIExpression()), !dbg !3082
  %3 = icmp eq ptr %2, null, !dbg !3084
  br i1 %3, label %4, label %5, !dbg !3085

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3086
  unreachable, !dbg !3086

5:                                                ; preds = %1
  ret ptr %2, !dbg !3087
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3088 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3076 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3075, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i64 %1, metadata !3078, metadata !DIExpression()), !dbg !3089
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3090
  call void @llvm.dbg.value(metadata ptr %3, metadata !2804, metadata !DIExpression()), !dbg !3091
  %4 = icmp eq ptr %3, null, !dbg !3093
  br i1 %4, label %5, label %6, !dbg !3094

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3095
  unreachable, !dbg !3095

6:                                                ; preds = %2
  ret ptr %3, !dbg !3096
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3097 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3099, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i64 %0, metadata !3101, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64 1, metadata !3104, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64 %0, metadata !3107, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 1, metadata !3110, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %0, metadata !3107, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 1, metadata !3110, metadata !DIExpression()), !dbg !3111
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3113
  call void @llvm.dbg.value(metadata ptr %2, metadata !2804, metadata !DIExpression()), !dbg !3114
  %3 = icmp eq ptr %2, null, !dbg !3116
  br i1 %3, label %4, label %5, !dbg !3117

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3118
  unreachable, !dbg !3118

5:                                                ; preds = %1
  ret ptr %2, !dbg !3119
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3102 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3101, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %1, metadata !3104, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %0, metadata !3107, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %1, metadata !3110, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %0, metadata !3107, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %1, metadata !3110, metadata !DIExpression()), !dbg !3121
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3123
  call void @llvm.dbg.value(metadata ptr %3, metadata !2804, metadata !DIExpression()), !dbg !3124
  %4 = icmp eq ptr %3, null, !dbg !3126
  br i1 %4, label %5, label %6, !dbg !3127

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3128
  unreachable, !dbg !3128

6:                                                ; preds = %2
  ret ptr %3, !dbg !3129
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3130 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3134, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64 %1, metadata !3135, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64 %1, metadata !2828, metadata !DIExpression()), !dbg !3137
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3139
  call void @llvm.dbg.value(metadata ptr %3, metadata !2804, metadata !DIExpression()), !dbg !3140
  %4 = icmp eq ptr %3, null, !dbg !3142
  br i1 %4, label %5, label %6, !dbg !3143

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3144
  unreachable, !dbg !3144

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3145, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %0, metadata !3151, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %1, metadata !3152, metadata !DIExpression()), !dbg !3153
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3155
  ret ptr %3, !dbg !3156
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3157 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3161, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %1, metadata !3162, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %1, metadata !2842, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i64 %1, metadata !2844, metadata !DIExpression()), !dbg !3166
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3168
  call void @llvm.dbg.value(metadata ptr %3, metadata !2804, metadata !DIExpression()), !dbg !3169
  %4 = icmp eq ptr %3, null, !dbg !3171
  br i1 %4, label %5, label %6, !dbg !3172

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3173
  unreachable, !dbg !3173

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3145, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata ptr %0, metadata !3151, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i64 %1, metadata !3152, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3176
  ret ptr %3, !dbg !3177
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3178 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3182, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %1, metadata !3183, metadata !DIExpression()), !dbg !3185
  %3 = add nsw i64 %1, 1, !dbg !3186
  call void @llvm.dbg.value(metadata i64 %3, metadata !2842, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 %3, metadata !2844, metadata !DIExpression()), !dbg !3189
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3191
  call void @llvm.dbg.value(metadata ptr %4, metadata !2804, metadata !DIExpression()), !dbg !3192
  %5 = icmp eq ptr %4, null, !dbg !3194
  br i1 %5, label %6, label %7, !dbg !3195

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3196
  unreachable, !dbg !3196

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3184, metadata !DIExpression()), !dbg !3185
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3197
  store i8 0, ptr %8, align 1, !dbg !3198, !tbaa !756
  call void @llvm.dbg.value(metadata ptr %4, metadata !3145, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata ptr %0, metadata !3151, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 %1, metadata !3152, metadata !DIExpression()), !dbg !3199
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3201
  ret ptr %4, !dbg !3202
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3203 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3205, metadata !DIExpression()), !dbg !3206
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3207
  %3 = add i64 %2, 1, !dbg !3208
  call void @llvm.dbg.value(metadata ptr %0, metadata !3134, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %3, metadata !3135, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %3, metadata !2828, metadata !DIExpression()), !dbg !3211
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3213
  call void @llvm.dbg.value(metadata ptr %4, metadata !2804, metadata !DIExpression()), !dbg !3214
  %5 = icmp eq ptr %4, null, !dbg !3216
  br i1 %5, label %6, label %7, !dbg !3217

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3218
  unreachable, !dbg !3218

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3145, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %0, metadata !3151, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %3, metadata !3152, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3221
  ret ptr %4, !dbg !3222
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3223 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3228, !tbaa !747
  call void @llvm.dbg.value(metadata i32 %1, metadata !3225, metadata !DIExpression()), !dbg !3229
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.101, ptr noundef nonnull @.str.2.102, i32 noundef 5) #36, !dbg !3228
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.103, ptr noundef %2) #36, !dbg !3228
  %3 = icmp eq i32 %1, 0, !dbg !3228
  tail call void @llvm.assume(i1 %3), !dbg !3228
  tail call void @abort() #37, !dbg !3230
  unreachable, !dbg !3230
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3231 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3269, metadata !DIExpression()), !dbg !3274
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3275
  call void @llvm.dbg.value(metadata i1 poison, metadata !3270, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3274
  call void @llvm.dbg.value(metadata ptr %0, metadata !3276, metadata !DIExpression()), !dbg !3279
  %3 = load i32, ptr %0, align 8, !dbg !3281, !tbaa !3282
  %4 = and i32 %3, 32, !dbg !3283
  %5 = icmp eq i32 %4, 0, !dbg !3283
  call void @llvm.dbg.value(metadata i1 %5, metadata !3272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3274
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3284
  %7 = icmp eq i32 %6, 0, !dbg !3285
  call void @llvm.dbg.value(metadata i1 %7, metadata !3273, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3274
  br i1 %5, label %8, label %18, !dbg !3286

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3288
  call void @llvm.dbg.value(metadata i1 %9, metadata !3270, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3274
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3289
  %11 = xor i1 %7, true, !dbg !3289
  %12 = sext i1 %11 to i32, !dbg !3289
  br i1 %10, label %21, label %13, !dbg !3289

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3290
  %15 = load i32, ptr %14, align 4, !dbg !3290, !tbaa !747
  %16 = icmp ne i32 %15, 9, !dbg !3291
  %17 = sext i1 %16 to i32, !dbg !3292
  br label %21, !dbg !3292

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3293

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3295
  store i32 0, ptr %20, align 4, !dbg !3297, !tbaa !747
  br label %21, !dbg !3295

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3274
  ret i32 %22, !dbg !3298
}

; Function Attrs: nounwind
declare !dbg !3299 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3303 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3341, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i32 0, metadata !3342, metadata !DIExpression()), !dbg !3345
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3346
  call void @llvm.dbg.value(metadata i32 %2, metadata !3343, metadata !DIExpression()), !dbg !3345
  %3 = icmp slt i32 %2, 0, !dbg !3347
  br i1 %3, label %4, label %6, !dbg !3349

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3350
  br label %24, !dbg !3351

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3352
  %8 = icmp eq i32 %7, 0, !dbg !3352
  br i1 %8, label %13, label %9, !dbg !3354

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3355
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3356
  %12 = icmp eq i64 %11, -1, !dbg !3357
  br i1 %12, label %16, label %13, !dbg !3358

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3359
  %15 = icmp eq i32 %14, 0, !dbg !3359
  br i1 %15, label %16, label %18, !dbg !3360

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3342, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i32 0, metadata !3344, metadata !DIExpression()), !dbg !3345
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %17, metadata !3344, metadata !DIExpression()), !dbg !3345
  br label %24, !dbg !3362

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3363
  %20 = load i32, ptr %19, align 4, !dbg !3363, !tbaa !747
  call void @llvm.dbg.value(metadata i32 %20, metadata !3342, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i32 0, metadata !3344, metadata !DIExpression()), !dbg !3345
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %21, metadata !3344, metadata !DIExpression()), !dbg !3345
  %22 = icmp eq i32 %20, 0, !dbg !3364
  br i1 %22, label %24, label %23, !dbg !3362

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3366, !tbaa !747
  call void @llvm.dbg.value(metadata i32 -1, metadata !3344, metadata !DIExpression()), !dbg !3345
  br label %24, !dbg !3368

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3345
  ret i32 %25, !dbg !3369
}

; Function Attrs: nofree nounwind
declare !dbg !3370 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !3371 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3372 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3373 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3376 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3414, metadata !DIExpression()), !dbg !3415
  %2 = icmp eq ptr %0, null, !dbg !3416
  br i1 %2, label %6, label %3, !dbg !3418

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3419
  %5 = icmp eq i32 %4, 0, !dbg !3419
  br i1 %5, label %6, label %8, !dbg !3420

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3421
  br label %16, !dbg !3422

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3423, metadata !DIExpression()), !dbg !3428
  %9 = load i32, ptr %0, align 8, !dbg !3430, !tbaa !3282
  %10 = and i32 %9, 256, !dbg !3432
  %11 = icmp eq i32 %10, 0, !dbg !3432
  br i1 %11, label %14, label %12, !dbg !3433

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3434
  br label %14, !dbg !3434

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3435
  br label %16, !dbg !3436

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3415
  ret i32 %17, !dbg !3437
}

; Function Attrs: nofree nounwind
declare !dbg !3438 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3439 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3478, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %1, metadata !3479, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i32 %2, metadata !3480, metadata !DIExpression()), !dbg !3484
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3485
  %5 = load ptr, ptr %4, align 8, !dbg !3485, !tbaa !3486
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3487
  %7 = load ptr, ptr %6, align 8, !dbg !3487, !tbaa !3488
  %8 = icmp eq ptr %5, %7, !dbg !3489
  br i1 %8, label %9, label %27, !dbg !3490

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3491
  %11 = load ptr, ptr %10, align 8, !dbg !3491, !tbaa !1166
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3492
  %13 = load ptr, ptr %12, align 8, !dbg !3492, !tbaa !3493
  %14 = icmp eq ptr %11, %13, !dbg !3494
  br i1 %14, label %15, label %27, !dbg !3495

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3496
  %17 = load ptr, ptr %16, align 8, !dbg !3496, !tbaa !3497
  %18 = icmp eq ptr %17, null, !dbg !3498
  br i1 %18, label %19, label %27, !dbg !3499

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3500
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3501
  call void @llvm.dbg.value(metadata i64 %21, metadata !3481, metadata !DIExpression()), !dbg !3502
  %22 = icmp eq i64 %21, -1, !dbg !3503
  br i1 %22, label %29, label %23, !dbg !3505

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3506, !tbaa !3282
  %25 = and i32 %24, -17, !dbg !3506
  store i32 %25, ptr %0, align 8, !dbg !3506, !tbaa !3282
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3507
  store i64 %21, ptr %26, align 8, !dbg !3508, !tbaa !3509
  br label %29, !dbg !3510

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3511
  br label %29, !dbg !3512

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3484
  ret i32 %30, !dbg !3513
}

; Function Attrs: nofree nounwind
declare !dbg !3514 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3517 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3522, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata ptr %1, metadata !3523, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %2, metadata !3524, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata ptr %3, metadata !3525, metadata !DIExpression()), !dbg !3527
  %5 = icmp eq ptr %1, null, !dbg !3528
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3530
  %7 = select i1 %5, ptr @.str.114, ptr %1, !dbg !3530
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3530
  call void @llvm.dbg.value(metadata i64 %8, metadata !3524, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata ptr %7, metadata !3523, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata ptr %6, metadata !3522, metadata !DIExpression()), !dbg !3527
  %9 = icmp eq ptr %3, null, !dbg !3531
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3533
  call void @llvm.dbg.value(metadata ptr %10, metadata !3525, metadata !DIExpression()), !dbg !3527
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3534
  call void @llvm.dbg.value(metadata i64 %11, metadata !3526, metadata !DIExpression()), !dbg !3527
  %12 = icmp ult i64 %11, -3, !dbg !3535
  br i1 %12, label %13, label %17, !dbg !3537

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #38, !dbg !3538
  %15 = icmp eq i32 %14, 0, !dbg !3538
  br i1 %15, label %16, label %29, !dbg !3539

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3540, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata ptr %10, metadata !3547, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i32 0, metadata !3550, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i64 8, metadata !3551, metadata !DIExpression()), !dbg !3552
  store i64 0, ptr %10, align 1, !dbg !3554
  br label %29, !dbg !3555

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3556
  br i1 %18, label %19, label %20, !dbg !3558

19:                                               ; preds = %17
  tail call void @abort() #37, !dbg !3559
  unreachable, !dbg !3559

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3560

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #36, !dbg !3562
  br i1 %23, label %29, label %24, !dbg !3563

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3564
  br i1 %25, label %29, label %26, !dbg !3567

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3568, !tbaa !756
  %28 = zext i8 %27 to i32, !dbg !3569
  store i32 %28, ptr %6, align 4, !dbg !3570, !tbaa !747
  br label %29, !dbg !3571

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3527
  ret i64 %30, !dbg !3572
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3573 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3579 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3581, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i64 %1, metadata !3582, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i64 %2, metadata !3583, metadata !DIExpression()), !dbg !3585
  %4 = icmp eq i64 %2, 0, !dbg !3586
  br i1 %4, label %8, label %5, !dbg !3586

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3586
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3586
  br i1 %7, label %13, label %8, !dbg !3586

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3584, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3585
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3584, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3585
  %9 = mul i64 %2, %1, !dbg !3586
  call void @llvm.dbg.value(metadata i64 %9, metadata !3584, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata ptr %0, metadata !3588, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i64 %9, metadata !3591, metadata !DIExpression()), !dbg !3592
  %10 = icmp eq i64 %9, 0, !dbg !3594
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3594
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3595
  br label %15, !dbg !3596

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3584, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3585
  %14 = tail call ptr @__errno_location() #39, !dbg !3597
  store i32 12, ptr %14, align 4, !dbg !3599, !tbaa !747
  br label %15, !dbg !3600

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3585
  ret ptr %16, !dbg !3601
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3602 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3606, metadata !DIExpression()), !dbg !3611
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !3612
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3607, metadata !DIExpression()), !dbg !3613
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !3614
  %4 = icmp eq i32 %3, 0, !dbg !3614
  br i1 %4, label %5, label %12, !dbg !3616

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3617, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata ptr @.str.119, metadata !3620, metadata !DIExpression()), !dbg !3621
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.119, i64 2), !dbg !3624
  %7 = icmp eq i32 %6, 0, !dbg !3625
  br i1 %7, label %11, label %8, !dbg !3626

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3617, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata ptr @.str.1.120, metadata !3620, metadata !DIExpression()), !dbg !3627
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.120, i64 6), !dbg !3629
  %10 = icmp eq i32 %9, 0, !dbg !3630
  br i1 %10, label %11, label %12, !dbg !3631

11:                                               ; preds = %8, %5
  br label %12, !dbg !3632

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3611
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !3633
  ret i1 %13, !dbg !3633
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3634 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3638, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata ptr %1, metadata !3639, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i64 %2, metadata !3640, metadata !DIExpression()), !dbg !3641
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !3642
  ret i32 %4, !dbg !3643
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3644 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3648, metadata !DIExpression()), !dbg !3649
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !3650
  ret ptr %2, !dbg !3651
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3652 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3654, metadata !DIExpression()), !dbg !3656
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3657
  call void @llvm.dbg.value(metadata ptr %2, metadata !3655, metadata !DIExpression()), !dbg !3656
  ret ptr %2, !dbg !3658
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3659 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3661, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata ptr %1, metadata !3662, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i64 %2, metadata !3663, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i32 %0, metadata !3654, metadata !DIExpression()), !dbg !3669
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3671
  call void @llvm.dbg.value(metadata ptr %4, metadata !3655, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %4, metadata !3664, metadata !DIExpression()), !dbg !3668
  %5 = icmp eq ptr %4, null, !dbg !3672
  br i1 %5, label %6, label %9, !dbg !3673

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3674
  br i1 %7, label %19, label %8, !dbg !3677

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3678, !tbaa !756
  br label %19, !dbg !3679

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3680
  call void @llvm.dbg.value(metadata i64 %10, metadata !3665, metadata !DIExpression()), !dbg !3681
  %11 = icmp ult i64 %10, %2, !dbg !3682
  br i1 %11, label %12, label %14, !dbg !3684

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3685
  call void @llvm.dbg.value(metadata ptr %1, metadata !3687, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata ptr %4, metadata !3690, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %13, metadata !3691, metadata !DIExpression()), !dbg !3692
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !3694
  br label %19, !dbg !3695

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3696
  br i1 %15, label %19, label %16, !dbg !3699

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3700
  call void @llvm.dbg.value(metadata ptr %1, metadata !3687, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata ptr %4, metadata !3690, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i64 %17, metadata !3691, metadata !DIExpression()), !dbg !3702
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !3704
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3705
  store i8 0, ptr %18, align 1, !dbg !3706, !tbaa !756
  br label %19, !dbg !3707

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3708
  ret i32 %20, !dbg !3709
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

!llvm.dbg.cu = !{!77, !294, !298, !313, !614, !648, !370, !384, !432, !650, !606, !657, !691, !693, !695, !697, !699, !630, !701, !704, !706, !708}
!llvm.ident = !{!710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710}
!llvm.module.flags = !{!711, !712, !713, !714, !715, !716, !717}

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
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 6)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 50)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 62)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1480, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 185)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 1)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 10)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 24)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 7)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !44, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 14)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 13)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !71, file: !72, line: 575, type: !99, isLocal: true, isDefinition: true)
!71 = distinct !DISubprogram(name: "oputs_", scope: !72, file: !72, line: 573, type: !73, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !211)
!72 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!73 = !DISubroutineType(cc: DW_CC_nocall, types: !74)
!74 = !{null, !75, !75}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!77 = distinct !DICompileUnit(language: DW_LANG_C11, file: !78, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !79, retainedTypes: !96, globals: !105, splitDebugInlining: false, nameTableKind: None)
!78 = !DIFile(filename: "src/false.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ed5d534ba214f45e03a0431e09453924")
!79 = !{!80}
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 46, baseType: !82, size: 32, elements: !83)
!81 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!82 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!84 = !DIEnumerator(name: "_ISupper", value: 256)
!85 = !DIEnumerator(name: "_ISlower", value: 512)
!86 = !DIEnumerator(name: "_ISalpha", value: 1024)
!87 = !DIEnumerator(name: "_ISdigit", value: 2048)
!88 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!89 = !DIEnumerator(name: "_ISspace", value: 8192)
!90 = !DIEnumerator(name: "_ISprint", value: 16384)
!91 = !DIEnumerator(name: "_ISgraph", value: 32768)
!92 = !DIEnumerator(name: "_ISblank", value: 1)
!93 = !DIEnumerator(name: "_IScntrl", value: 2)
!94 = !DIEnumerator(name: "_ISpunct", value: 4)
!95 = !DIEnumerator(name: "_ISalnum", value: 8)
!96 = !{!97, !98, !99, !100, !101, !75, !104}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!99 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!100 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 46, baseType: !103)
!102 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!103 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!104 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!105 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !59, !64, !69, !106, !108, !110, !115, !117, !122, !124, !126, !131, !133, !135, !137, !139, !144, !146, !148, !150, !152, !157, !162, !167, !169, !171, !173, !175, !177, !182, !187, !189, !191, !196, !201, !206}
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !72, line: 585, type: !9, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !72, line: 586, type: !9, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !72, line: 595, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 4)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !72, line: 620, type: !19, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !72, line: 648, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 2)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !72, line: 648, type: !9, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !72, line: 649, type: !112, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !72, line: 649, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 3)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !72, line: 650, type: !9, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !72, line: 651, type: !19, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !72, line: 651, type: !19, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !72, line: 652, type: !54, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !72, line: 653, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 8)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !72, line: 654, type: !44, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !72, line: 655, type: !44, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !72, line: 656, type: !44, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !72, line: 657, type: !44, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !72, line: 669, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 17)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !72, line: 669, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 40)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !72, line: 676, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 15)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !72, line: 676, type: !3, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !72, line: 679, type: !128, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !72, line: 683, type: !9, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !72, line: 688, type: !9, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !72, line: 691, type: !141, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !72, line: 839, type: !179, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 16)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !72, line: 840, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 22)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !72, line: 841, type: !164, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !72, line: 862, type: !112, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !72, line: 868, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 71)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !72, line: 875, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 27)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !72, line: 877, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 51)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !72, line: 877, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 12)
!211 = !{!212, !213, !214, !217, !219, !220, !221, !225, !226, !227, !228, !230, !283, !284, !285, !287, !288}
!212 = !DILocalVariable(name: "program", arg: 1, scope: !71, file: !72, line: 573, type: !75)
!213 = !DILocalVariable(name: "option", arg: 2, scope: !71, file: !72, line: 573, type: !75)
!214 = !DILocalVariable(name: "term", scope: !215, file: !72, line: 585, type: !75)
!215 = distinct !DILexicalBlock(scope: !216, file: !72, line: 582, column: 5)
!216 = distinct !DILexicalBlock(scope: !71, file: !72, line: 581, column: 7)
!217 = !DILocalVariable(name: "double_space", scope: !71, file: !72, line: 594, type: !218)
!218 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!219 = !DILocalVariable(name: "first_word", scope: !71, file: !72, line: 595, type: !75)
!220 = !DILocalVariable(name: "option_text", scope: !71, file: !72, line: 596, type: !75)
!221 = !DILocalVariable(name: "s", scope: !222, file: !72, line: 608, type: !75)
!222 = distinct !DILexicalBlock(scope: !223, file: !72, line: 605, column: 5)
!223 = distinct !DILexicalBlock(scope: !224, file: !72, line: 604, column: 12)
!224 = distinct !DILexicalBlock(scope: !71, file: !72, line: 597, column: 7)
!225 = !DILocalVariable(name: "spaces", scope: !222, file: !72, line: 609, type: !101)
!226 = !DILocalVariable(name: "anchor_len", scope: !71, file: !72, line: 620, type: !101)
!227 = !DILocalVariable(name: "desc_text", scope: !71, file: !72, line: 625, type: !75)
!228 = !DILocalVariable(name: "__ptr", scope: !229, file: !72, line: 644, type: !75)
!229 = distinct !DILexicalBlock(scope: !71, file: !72, line: 644, column: 3)
!230 = !DILocalVariable(name: "__stream", scope: !229, file: !72, line: 644, type: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !234)
!233 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !236)
!235 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !252, !254, !255, !256, !260, !261, !263, !264, !267, !269, !272, !275, !276, !277, !278, !279}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !234, file: !235, line: 51, baseType: !99, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !234, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !234, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !234, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !234, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !234, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !234, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !234, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !234, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !234, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !234, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !234, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !234, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !235, line: 36, flags: DIFlagFwdDecl)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !234, file: !235, line: 70, baseType: !253, size: 64, offset: 832)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !234, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !234, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !234, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !258, line: 152, baseType: !259)
!258 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!259 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !234, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !234, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!262 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !234, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !234, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !235, line: 43, baseType: null)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !234, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !258, line: 153, baseType: !259)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !234, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !235, line: 37, flags: DIFlagFwdDecl)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !234, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !235, line: 38, flags: DIFlagFwdDecl)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !234, file: !235, line: 93, baseType: !253, size: 64, offset: 1344)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !234, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !234, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !234, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !234, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 20)
!283 = !DILocalVariable(name: "__cnt", scope: !229, file: !72, line: 644, type: !101)
!284 = !DILocalVariable(name: "url_program", scope: !71, file: !72, line: 648, type: !75)
!285 = !DILocalVariable(name: "__ptr", scope: !286, file: !72, line: 686, type: !75)
!286 = distinct !DILexicalBlock(scope: !71, file: !72, line: 686, column: 3)
!287 = !DILocalVariable(name: "__stream", scope: !286, file: !72, line: 686, type: !231)
!288 = !DILocalVariable(name: "__cnt", scope: !286, file: !72, line: 686, type: !101)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !291, line: 3, type: !164, isLocal: true, isDefinition: true)
!291 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(name: "Version", scope: !294, file: !291, line: 3, type: !75, isLocal: false, isDefinition: true)
!294 = distinct !DICompileUnit(language: DW_LANG_C11, file: !291, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !295, splitDebugInlining: false, nameTableKind: None)
!295 = !{!289, !292}
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "file_name", scope: !298, file: !299, line: 45, type: !75, isLocal: true, isDefinition: true)
!298 = distinct !DICompileUnit(language: DW_LANG_C11, file: !299, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !300, splitDebugInlining: false, nameTableKind: None)
!299 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!300 = !{!301, !303, !305, !307, !296, !309}
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !299, line: 121, type: !54, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !299, line: 121, type: !208, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !299, line: 123, type: !54, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !299, line: 126, type: !128, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !298, file: !299, line: 55, type: !218, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !313, file: !314, line: 66, type: !365, isLocal: false, isDefinition: true)
!313 = distinct !DICompileUnit(language: DW_LANG_C11, file: !314, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !315, globals: !316, splitDebugInlining: false, nameTableKind: None)
!314 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!315 = !{!98, !104}
!316 = !{!317, !319, !344, !346, !348, !350, !311, !352, !354, !356, !358, !363}
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !314, line: 272, type: !9, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "old_file_name", scope: !321, file: !314, line: 304, type: !75, isLocal: true, isDefinition: true)
!321 = distinct !DISubprogram(name: "verror_at_line", scope: !314, file: !314, line: 298, type: !322, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !337)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !99, !99, !75, !82, !75, !324}
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !325, line: 52, baseType: !326)
!325 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !327, line: 14, baseType: !328)
!327 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !329, baseType: !330)
!329 = !DIFile(filename: "lib/error.c", directory: "/src")
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !331)
!331 = !{!332, !333, !334, !335, !336}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !330, file: !329, baseType: !98, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !330, file: !329, baseType: !98, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !330, file: !329, baseType: !98, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !330, file: !329, baseType: !99, size: 32, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !330, file: !329, baseType: !99, size: 32, offset: 224)
!337 = !{!338, !339, !340, !341, !342, !343}
!338 = !DILocalVariable(name: "status", arg: 1, scope: !321, file: !314, line: 298, type: !99)
!339 = !DILocalVariable(name: "errnum", arg: 2, scope: !321, file: !314, line: 298, type: !99)
!340 = !DILocalVariable(name: "file_name", arg: 3, scope: !321, file: !314, line: 298, type: !75)
!341 = !DILocalVariable(name: "line_number", arg: 4, scope: !321, file: !314, line: 298, type: !82)
!342 = !DILocalVariable(name: "message", arg: 5, scope: !321, file: !314, line: 298, type: !75)
!343 = !DILocalVariable(name: "args", arg: 6, scope: !321, file: !314, line: 298, type: !324)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "old_line_number", scope: !321, file: !314, line: 305, type: !82, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !314, line: 338, type: !112, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !314, line: 346, type: !141, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !314, line: 346, type: !119, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "error_message_count", scope: !313, file: !314, line: 69, type: !82, isLocal: false, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !313, file: !314, line: 295, type: !99, isLocal: false, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !314, line: 208, type: !54, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !314, line: 208, type: !360, isLocal: true, isDefinition: true)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 21)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !314, line: 214, type: !9, isLocal: true, isDefinition: true)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null}
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "program_name", scope: !370, file: !371, line: 31, type: !75, isLocal: false, isDefinition: true)
!370 = distinct !DICompileUnit(language: DW_LANG_C11, file: !371, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !372, globals: !373, splitDebugInlining: false, nameTableKind: None)
!371 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!372 = !{!97}
!373 = !{!368, !374, !376}
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !371, line: 46, type: !141, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !371, line: 49, type: !112, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "utf07FF", scope: !380, file: !381, line: 46, type: !408, isLocal: true, isDefinition: true)
!380 = distinct !DISubprogram(name: "proper_name_lite", scope: !381, file: !381, line: 38, type: !382, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !384, retainedNodes: !386)
!381 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!382 = !DISubroutineType(types: !383)
!383 = !{!75, !75, !75}
!384 = distinct !DICompileUnit(language: DW_LANG_C11, file: !381, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !385, splitDebugInlining: false, nameTableKind: None)
!385 = !{!378}
!386 = !{!387, !388, !389, !390, !395}
!387 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !380, file: !381, line: 38, type: !75)
!388 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !380, file: !381, line: 38, type: !75)
!389 = !DILocalVariable(name: "translation", scope: !380, file: !381, line: 40, type: !75)
!390 = !DILocalVariable(name: "w", scope: !380, file: !381, line: 47, type: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !392, line: 37, baseType: !393)
!392 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !258, line: 57, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !258, line: 42, baseType: !82)
!395 = !DILocalVariable(name: "mbs", scope: !380, file: !381, line: 48, type: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !397, line: 6, baseType: !398)
!397 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !399, line: 21, baseType: !400)
!399 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !399, line: 13, size: 64, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !400, file: !399, line: 15, baseType: !99, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !400, file: !399, line: 20, baseType: !404, size: 32, offset: 32)
!404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !399, line: 16, size: 32, elements: !405)
!405 = !{!406, !407}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !404, file: !399, line: 18, baseType: !82, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !404, file: !399, line: 19, baseType: !112, size: 32)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 16, elements: !120)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !411, line: 78, type: !141, isLocal: true, isDefinition: true)
!411 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !411, line: 79, type: !19, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !411, line: 80, type: !66, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !411, line: 81, type: !66, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !411, line: 82, type: !280, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !411, line: 83, type: !119, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !411, line: 84, type: !141, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !411, line: 85, type: !54, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !411, line: 86, type: !54, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !411, line: 87, type: !141, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !432, file: !411, line: 76, type: !518, isLocal: false, isDefinition: true)
!432 = distinct !DICompileUnit(language: DW_LANG_C11, file: !411, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !433, retainedTypes: !453, globals: !454, splitDebugInlining: false, nameTableKind: None)
!433 = !{!434, !448, !80}
!434 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !435, line: 42, baseType: !82, size: 32, elements: !436)
!435 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!436 = !{!437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447}
!437 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!438 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!439 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!440 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!441 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!442 = !DIEnumerator(name: "c_quoting_style", value: 5)
!443 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!444 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!445 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!446 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!447 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!448 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !435, line: 254, baseType: !82, size: 32, elements: !449)
!449 = !{!450, !451, !452}
!450 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!451 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!452 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!453 = !{!99, !100, !101}
!454 = !{!409, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !455, !459, !469, !471, !476, !478, !480, !482, !484, !507, !514, !516}
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !432, file: !411, line: 92, type: !457, isLocal: false, isDefinition: true)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 320, elements: !45)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !432, file: !411, line: 1040, type: !461, isLocal: false, isDefinition: true)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !411, line: 56, size: 448, elements: !462)
!462 = !{!463, !464, !465, !467, !468}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !461, file: !411, line: 59, baseType: !434, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !461, file: !411, line: 62, baseType: !99, size: 32, offset: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !461, file: !411, line: 66, baseType: !466, size: 256, offset: 64)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 256, elements: !142)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !461, file: !411, line: 69, baseType: !75, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !461, file: !411, line: 72, baseType: !75, size: 64, offset: 384)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !432, file: !411, line: 107, type: !461, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(name: "slot0", scope: !432, file: !411, line: 831, type: !473, isLocal: true, isDefinition: true)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 256)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !411, line: 321, type: !119, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !411, line: 357, type: !119, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !411, line: 358, type: !119, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !411, line: 199, type: !54, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(name: "quote", scope: !486, file: !411, line: 228, type: !505, isLocal: true, isDefinition: true)
!486 = distinct !DISubprogram(name: "gettext_quote", scope: !411, file: !411, line: 197, type: !487, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !489)
!487 = !DISubroutineType(types: !488)
!488 = !{!75, !75, !434}
!489 = !{!490, !491, !492, !493, !494}
!490 = !DILocalVariable(name: "msgid", arg: 1, scope: !486, file: !411, line: 197, type: !75)
!491 = !DILocalVariable(name: "s", arg: 2, scope: !486, file: !411, line: 197, type: !434)
!492 = !DILocalVariable(name: "translation", scope: !486, file: !411, line: 199, type: !75)
!493 = !DILocalVariable(name: "w", scope: !486, file: !411, line: 229, type: !391)
!494 = !DILocalVariable(name: "mbs", scope: !486, file: !411, line: 230, type: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !397, line: 6, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !399, line: 21, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !399, line: 13, size: 64, elements: !498)
!498 = !{!499, !500}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !497, file: !399, line: 15, baseType: !99, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !497, file: !399, line: 20, baseType: !501, size: 32, offset: 32)
!501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !497, file: !399, line: 16, size: 32, elements: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !501, file: !399, line: 18, baseType: !82, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !501, file: !399, line: 19, baseType: !112, size: 32)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 64, elements: !506)
!506 = !{!121, !114}
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "slotvec", scope: !432, file: !411, line: 834, type: !509, isLocal: true, isDefinition: true)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !411, line: 823, size: 128, elements: !511)
!511 = !{!512, !513}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !510, file: !411, line: 825, baseType: !101, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !510, file: !411, line: 826, baseType: !97, size: 64, offset: 64)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(name: "nslots", scope: !432, file: !411, line: 832, type: !99, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "slotvec0", scope: !432, file: !411, line: 833, type: !510, isLocal: true, isDefinition: true)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 704, elements: !520)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!520 = !{!521}
!521 = !DISubrange(count: 11)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !524, line: 67, type: !208, isLocal: true, isDefinition: true)
!524 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !524, line: 69, type: !54, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !524, line: 83, type: !54, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !524, line: 83, type: !112, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !524, line: 85, type: !119, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !524, line: 88, type: !535, isLocal: true, isDefinition: true)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 171)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !524, line: 88, type: !540, isLocal: true, isDefinition: true)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 34)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !524, line: 105, type: !179, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !524, line: 109, type: !547, isLocal: true, isDefinition: true)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 23)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !524, line: 113, type: !552, isLocal: true, isDefinition: true)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 28)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !524, line: 120, type: !557, isLocal: true, isDefinition: true)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 32)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !524, line: 127, type: !562, isLocal: true, isDefinition: true)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !563)
!563 = !{!564}
!564 = !DISubrange(count: 36)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !524, line: 134, type: !159, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !524, line: 142, type: !14, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !524, line: 150, type: !571, isLocal: true, isDefinition: true)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 48)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !524, line: 159, type: !576, isLocal: true, isDefinition: true)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 52)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !524, line: 170, type: !581, isLocal: true, isDefinition: true)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 60)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !524, line: 248, type: !280, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !524, line: 248, type: !184, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !524, line: 254, type: !280, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !524, line: 254, type: !61, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !524, line: 254, type: !159, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !524, line: 259, type: !596, isLocal: true, isDefinition: true)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 39)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !524, line: 259, type: !601, isLocal: true, isDefinition: true)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 29)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !606, file: !607, line: 26, type: !609, isLocal: false, isDefinition: true)
!606 = distinct !DICompileUnit(language: DW_LANG_C11, file: !607, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !608, splitDebugInlining: false, nameTableKind: None)
!607 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!608 = !{!604}
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 376, elements: !610)
!610 = !{!611}
!611 = !DISubrange(count: 47)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(name: "exit_failure", scope: !614, file: !615, line: 24, type: !617, isLocal: false, isDefinition: true)
!614 = distinct !DICompileUnit(language: DW_LANG_C11, file: !615, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !616, splitDebugInlining: false, nameTableKind: None)
!615 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!616 = !{!612}
!617 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !99)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !620, line: 34, type: !128, isLocal: true, isDefinition: true)
!620 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !620, line: 34, type: !54, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !620, line: 34, type: !154, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !627, line: 108, type: !39, isLocal: true, isDefinition: true)
!627 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(name: "internal_state", scope: !630, file: !627, line: 97, type: !633, isLocal: true, isDefinition: true)
!630 = distinct !DICompileUnit(language: DW_LANG_C11, file: !627, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !631, globals: !632, splitDebugInlining: false, nameTableKind: None)
!631 = !{!98, !101, !104}
!632 = !{!625, !628}
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !397, line: 6, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !399, line: 21, baseType: !635)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !399, line: 13, size: 64, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !635, file: !399, line: 15, baseType: !99, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !635, file: !399, line: 20, baseType: !639, size: 32, offset: 32)
!639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !635, file: !399, line: 16, size: 32, elements: !640)
!640 = !{!641, !642}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !639, file: !399, line: 18, baseType: !82, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !639, file: !399, line: 19, baseType: !112, size: 32)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !645, line: 35, type: !119, isLocal: true, isDefinition: true)
!645 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !645, line: 35, type: !19, isLocal: true, isDefinition: true)
!648 = distinct !DICompileUnit(language: DW_LANG_C11, file: !649, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!649 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!650 = distinct !DICompileUnit(language: DW_LANG_C11, file: !524, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !651, retainedTypes: !655, globals: !656, splitDebugInlining: false, nameTableKind: None)
!651 = !{!652}
!652 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !524, line: 40, baseType: !82, size: 32, elements: !653)
!653 = !{!654}
!654 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!655 = !{!98}
!656 = !{!522, !525, !527, !529, !531, !533, !538, !543, !545, !550, !555, !560, !565, !567, !569, !574, !579, !584, !586, !588, !590, !592, !594, !599}
!657 = distinct !DICompileUnit(language: DW_LANG_C11, file: !658, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !659, retainedTypes: !690, splitDebugInlining: false, nameTableKind: None)
!658 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!659 = !{!660, !672}
!660 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !661, file: !658, line: 188, baseType: !82, size: 32, elements: !670)
!661 = distinct !DISubprogram(name: "x2nrealloc", scope: !658, file: !658, line: 176, type: !662, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !665)
!662 = !DISubroutineType(types: !663)
!663 = !{!98, !98, !664, !101}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!665 = !{!666, !667, !668, !669}
!666 = !DILocalVariable(name: "p", arg: 1, scope: !661, file: !658, line: 176, type: !98)
!667 = !DILocalVariable(name: "pn", arg: 2, scope: !661, file: !658, line: 176, type: !664)
!668 = !DILocalVariable(name: "s", arg: 3, scope: !661, file: !658, line: 176, type: !101)
!669 = !DILocalVariable(name: "n", scope: !661, file: !658, line: 178, type: !101)
!670 = !{!671}
!671 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!672 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !673, file: !658, line: 228, baseType: !82, size: 32, elements: !670)
!673 = distinct !DISubprogram(name: "xpalloc", scope: !658, file: !658, line: 223, type: !674, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !680)
!674 = !DISubroutineType(types: !675)
!675 = !{!98, !98, !676, !677, !679, !677}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !678, line: 130, baseType: !679)
!678 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !102, line: 35, baseType: !259)
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !689}
!681 = !DILocalVariable(name: "pa", arg: 1, scope: !673, file: !658, line: 223, type: !98)
!682 = !DILocalVariable(name: "pn", arg: 2, scope: !673, file: !658, line: 223, type: !676)
!683 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !673, file: !658, line: 223, type: !677)
!684 = !DILocalVariable(name: "n_max", arg: 4, scope: !673, file: !658, line: 223, type: !679)
!685 = !DILocalVariable(name: "s", arg: 5, scope: !673, file: !658, line: 223, type: !677)
!686 = !DILocalVariable(name: "n0", scope: !673, file: !658, line: 230, type: !677)
!687 = !DILocalVariable(name: "n", scope: !673, file: !658, line: 237, type: !677)
!688 = !DILocalVariable(name: "nbytes", scope: !673, file: !658, line: 248, type: !677)
!689 = !DILocalVariable(name: "adjusted_nbytes", scope: !673, file: !658, line: 252, type: !677)
!690 = !{!97, !98, !218, !259, !103}
!691 = distinct !DICompileUnit(language: DW_LANG_C11, file: !620, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !692, splitDebugInlining: false, nameTableKind: None)
!692 = !{!618, !621, !623}
!693 = distinct !DICompileUnit(language: DW_LANG_C11, file: !694, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!694 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!695 = distinct !DICompileUnit(language: DW_LANG_C11, file: !696, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!696 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!697 = distinct !DICompileUnit(language: DW_LANG_C11, file: !698, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !655, splitDebugInlining: false, nameTableKind: None)
!698 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!699 = distinct !DICompileUnit(language: DW_LANG_C11, file: !700, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !655, splitDebugInlining: false, nameTableKind: None)
!700 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!701 = distinct !DICompileUnit(language: DW_LANG_C11, file: !702, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !703, splitDebugInlining: false, nameTableKind: None)
!702 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!703 = !{!218, !103, !98}
!704 = distinct !DICompileUnit(language: DW_LANG_C11, file: !645, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !705, splitDebugInlining: false, nameTableKind: None)
!705 = !{!643, !646}
!706 = distinct !DICompileUnit(language: DW_LANG_C11, file: !707, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!707 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!708 = distinct !DICompileUnit(language: DW_LANG_C11, file: !709, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !655, splitDebugInlining: false, nameTableKind: None)
!709 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!710 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!711 = !{i32 7, !"Dwarf Version", i32 5}
!712 = !{i32 2, !"Debug Info Version", i32 3}
!713 = !{i32 1, !"wchar_size", i32 4}
!714 = !{i32 8, !"PIC Level", i32 2}
!715 = !{i32 7, !"PIE Level", i32 2}
!716 = !{i32 7, !"uwtable", i32 2}
!717 = !{i32 7, !"frame-pointer", i32 1}
!718 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 36, type: !719, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !721)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !99}
!721 = !{!722}
!722 = !DILocalVariable(name: "status", arg: 1, scope: !718, file: !2, line: 36, type: !99)
!723 = !DILocation(line: 0, scope: !718)
!724 = !DILocation(line: 38, column: 3, scope: !718)
!725 = !{!726, !726, i64 0}
!726 = !{!"any pointer", !727, i64 0}
!727 = !{!"omnipotent char", !728, i64 0}
!728 = !{!"Simple C/C++ TBAA"}
!729 = !DILocation(line: 43, column: 3, scope: !718)
!730 = !DILocation(line: 47, column: 3, scope: !718)
!731 = !DILocation(line: 48, column: 3, scope: !718)
!732 = !DILocation(line: 49, column: 3, scope: !718)
!733 = !DILocation(line: 50, column: 3, scope: !718)
!734 = !DILocation(line: 51, column: 3, scope: !718)
!735 = !DISubprogram(name: "dcgettext", scope: !736, file: !736, line: 51, type: !737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!736 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!737 = !DISubroutineType(types: !738)
!738 = !{!97, !75, !75, !99}
!739 = !{}
!740 = !DISubprogram(name: "__printf_chk", scope: !741, file: !741, line: 95, type: !742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!741 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!742 = !DISubroutineType(types: !743)
!743 = !{!99, !99, !744, null}
!744 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!745 = !DILocation(line: 0, scope: !71)
!746 = !DILocation(line: 581, column: 7, scope: !216)
!747 = !{!748, !748, i64 0}
!748 = !{!"int", !727, i64 0}
!749 = !DILocation(line: 581, column: 19, scope: !216)
!750 = !DILocation(line: 581, column: 7, scope: !71)
!751 = !DILocation(line: 585, column: 26, scope: !215)
!752 = !DILocation(line: 0, scope: !215)
!753 = !DILocation(line: 586, column: 23, scope: !215)
!754 = !DILocation(line: 586, column: 28, scope: !215)
!755 = !DILocation(line: 586, column: 32, scope: !215)
!756 = !{!727, !727, i64 0}
!757 = !DILocation(line: 586, column: 38, scope: !215)
!758 = !DILocalVariable(name: "__s1", arg: 1, scope: !759, file: !760, line: 1359, type: !75)
!759 = distinct !DISubprogram(name: "streq", scope: !760, file: !760, line: 1359, type: !761, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !763)
!760 = !DIFile(filename: "./lib/string.h", directory: "/src")
!761 = !DISubroutineType(types: !762)
!762 = !{!218, !75, !75}
!763 = !{!758, !764}
!764 = !DILocalVariable(name: "__s2", arg: 2, scope: !759, file: !760, line: 1359, type: !75)
!765 = !DILocation(line: 0, scope: !759, inlinedAt: !766)
!766 = distinct !DILocation(line: 586, column: 41, scope: !215)
!767 = !DILocation(line: 1361, column: 11, scope: !759, inlinedAt: !766)
!768 = !DILocation(line: 1361, column: 10, scope: !759, inlinedAt: !766)
!769 = !DILocation(line: 586, column: 19, scope: !215)
!770 = !DILocation(line: 587, column: 5, scope: !215)
!771 = !DILocation(line: 588, column: 7, scope: !772)
!772 = distinct !DILexicalBlock(scope: !71, file: !72, line: 588, column: 7)
!773 = !DILocation(line: 588, column: 7, scope: !71)
!774 = !DILocation(line: 590, column: 7, scope: !775)
!775 = distinct !DILexicalBlock(scope: !772, file: !72, line: 589, column: 5)
!776 = !DILocation(line: 591, column: 7, scope: !775)
!777 = !DILocation(line: 595, column: 37, scope: !71)
!778 = !DILocation(line: 595, column: 35, scope: !71)
!779 = !DILocation(line: 596, column: 29, scope: !71)
!780 = !DILocation(line: 597, column: 8, scope: !224)
!781 = !DILocation(line: 597, column: 7, scope: !71)
!782 = !DILocation(line: 604, column: 24, scope: !223)
!783 = !DILocation(line: 604, column: 12, scope: !224)
!784 = !DILocation(line: 0, scope: !222)
!785 = !DILocation(line: 610, column: 16, scope: !222)
!786 = !DILocation(line: 610, column: 7, scope: !222)
!787 = !DILocation(line: 611, column: 21, scope: !222)
!788 = !{!789, !789, i64 0}
!789 = !{!"short", !727, i64 0}
!790 = !DILocation(line: 611, column: 19, scope: !222)
!791 = !DILocation(line: 611, column: 16, scope: !222)
!792 = !DILocation(line: 610, column: 30, scope: !222)
!793 = distinct !{!793, !786, !787, !794}
!794 = !{!"llvm.loop.mustprogress"}
!795 = !DILocation(line: 612, column: 18, scope: !796)
!796 = distinct !DILexicalBlock(scope: !222, file: !72, line: 612, column: 11)
!797 = !DILocation(line: 612, column: 11, scope: !222)
!798 = !DILocation(line: 620, column: 23, scope: !71)
!799 = !DILocation(line: 625, column: 39, scope: !71)
!800 = !DILocation(line: 626, column: 3, scope: !71)
!801 = !DILocation(line: 626, column: 10, scope: !71)
!802 = !DILocation(line: 626, column: 21, scope: !71)
!803 = !DILocation(line: 628, column: 44, scope: !804)
!804 = distinct !DILexicalBlock(scope: !805, file: !72, line: 628, column: 11)
!805 = distinct !DILexicalBlock(scope: !71, file: !72, line: 627, column: 5)
!806 = !DILocation(line: 628, column: 32, scope: !804)
!807 = !DILocation(line: 628, column: 49, scope: !804)
!808 = !DILocation(line: 628, column: 11, scope: !805)
!809 = !DILocation(line: 630, column: 11, scope: !810)
!810 = distinct !DILexicalBlock(scope: !805, file: !72, line: 630, column: 11)
!811 = !DILocation(line: 630, column: 11, scope: !805)
!812 = !DILocation(line: 632, column: 26, scope: !813)
!813 = distinct !DILexicalBlock(scope: !814, file: !72, line: 632, column: 15)
!814 = distinct !DILexicalBlock(scope: !810, file: !72, line: 631, column: 9)
!815 = !DILocation(line: 632, column: 34, scope: !813)
!816 = !DILocation(line: 632, column: 37, scope: !813)
!817 = !DILocation(line: 632, column: 15, scope: !814)
!818 = !DILocation(line: 640, column: 16, scope: !805)
!819 = distinct !{!819, !800, !820, !794}
!820 = !DILocation(line: 641, column: 5, scope: !71)
!821 = !DILocation(line: 644, column: 3, scope: !71)
!822 = !DILocation(line: 0, scope: !759, inlinedAt: !823)
!823 = distinct !DILocation(line: 648, column: 31, scope: !71)
!824 = !DILocation(line: 0, scope: !759, inlinedAt: !825)
!825 = distinct !DILocation(line: 649, column: 31, scope: !71)
!826 = !DILocation(line: 0, scope: !759, inlinedAt: !827)
!827 = distinct !DILocation(line: 650, column: 31, scope: !71)
!828 = !DILocation(line: 0, scope: !759, inlinedAt: !829)
!829 = distinct !DILocation(line: 651, column: 31, scope: !71)
!830 = !DILocation(line: 0, scope: !759, inlinedAt: !831)
!831 = distinct !DILocation(line: 652, column: 31, scope: !71)
!832 = !DILocation(line: 0, scope: !759, inlinedAt: !833)
!833 = distinct !DILocation(line: 653, column: 31, scope: !71)
!834 = !DILocation(line: 0, scope: !759, inlinedAt: !835)
!835 = distinct !DILocation(line: 654, column: 31, scope: !71)
!836 = !DILocation(line: 0, scope: !759, inlinedAt: !837)
!837 = distinct !DILocation(line: 655, column: 31, scope: !71)
!838 = !DILocation(line: 0, scope: !759, inlinedAt: !839)
!839 = distinct !DILocation(line: 656, column: 31, scope: !71)
!840 = !DILocation(line: 0, scope: !759, inlinedAt: !841)
!841 = distinct !DILocation(line: 657, column: 31, scope: !71)
!842 = !DILocation(line: 663, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !71, file: !72, line: 663, column: 7)
!844 = !DILocation(line: 664, column: 7, scope: !843)
!845 = !DILocation(line: 664, column: 10, scope: !843)
!846 = !DILocation(line: 663, column: 7, scope: !71)
!847 = !DILocation(line: 669, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !843, file: !72, line: 665, column: 5)
!849 = !DILocation(line: 671, column: 5, scope: !848)
!850 = !DILocation(line: 676, column: 7, scope: !851)
!851 = distinct !DILexicalBlock(scope: !843, file: !72, line: 673, column: 5)
!852 = !DILocation(line: 679, column: 3, scope: !71)
!853 = !DILocation(line: 683, column: 3, scope: !71)
!854 = !DILocation(line: 686, column: 3, scope: !71)
!855 = !DILocation(line: 688, column: 3, scope: !71)
!856 = !DILocation(line: 691, column: 3, scope: !71)
!857 = !DILocation(line: 695, column: 3, scope: !71)
!858 = !DILocation(line: 696, column: 1, scope: !71)
!859 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !72, file: !72, line: 836, type: !860, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !862)
!860 = !DISubroutineType(cc: DW_CC_nocall, types: !861)
!861 = !{null, !75}
!862 = !{!863, !864, !871, !872, !874, !875}
!863 = !DILocalVariable(name: "program", arg: 1, scope: !859, file: !72, line: 836, type: !75)
!864 = !DILocalVariable(name: "infomap", scope: !859, file: !72, line: 838, type: !865)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 896, elements: !55)
!866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !867)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !859, file: !72, line: 838, size: 128, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !867, file: !72, line: 838, baseType: !75, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !867, file: !72, line: 838, baseType: !75, size: 64, offset: 64)
!871 = !DILocalVariable(name: "node", scope: !859, file: !72, line: 848, type: !75)
!872 = !DILocalVariable(name: "map_prog", scope: !859, file: !72, line: 849, type: !873)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!874 = !DILocalVariable(name: "lc_messages", scope: !859, file: !72, line: 861, type: !75)
!875 = !DILocalVariable(name: "url_program", scope: !859, file: !72, line: 874, type: !75)
!876 = !DILocation(line: 0, scope: !859)
!877 = !DILocation(line: 857, column: 3, scope: !859)
!878 = !DILocation(line: 861, column: 29, scope: !859)
!879 = !DILocation(line: 862, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !859, file: !72, line: 862, column: 7)
!881 = !DILocation(line: 862, column: 19, scope: !880)
!882 = !DILocation(line: 862, column: 22, scope: !880)
!883 = !DILocation(line: 862, column: 7, scope: !859)
!884 = !DILocation(line: 868, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !880, file: !72, line: 863, column: 5)
!886 = !DILocation(line: 870, column: 5, scope: !885)
!887 = !DILocation(line: 875, column: 3, scope: !859)
!888 = !DILocation(line: 877, column: 3, scope: !859)
!889 = !DILocation(line: 879, column: 1, scope: !859)
!890 = !DISubprogram(name: "exit", scope: !891, file: !891, line: 624, type: !719, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !739)
!891 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!892 = !DISubprogram(name: "setlocale", scope: !893, file: !893, line: 122, type: !894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!893 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!894 = !DISubroutineType(types: !895)
!895 = !{!97, !99, !75}
!896 = !DISubprogram(name: "strncmp", scope: !897, file: !897, line: 159, type: !898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!897 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!898 = !DISubroutineType(types: !899)
!899 = !{!99, !75, !75, !101}
!900 = !DISubprogram(name: "fputs_unlocked", scope: !325, file: !325, line: 691, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!901 = !DISubroutineType(types: !902)
!902 = !{!99, !744, !903}
!903 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !231)
!904 = !DISubprogram(name: "getenv", scope: !891, file: !891, line: 641, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!905 = !DISubroutineType(types: !906)
!906 = !{!97, !75}
!907 = !DISubprogram(name: "strcmp", scope: !897, file: !897, line: 156, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!908 = !DISubroutineType(types: !909)
!909 = !{!99, !75, !75}
!910 = !DISubprogram(name: "strspn", scope: !897, file: !897, line: 297, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!911 = !DISubroutineType(types: !912)
!912 = !{!103, !75, !75}
!913 = !DISubprogram(name: "strchr", scope: !897, file: !897, line: 246, type: !914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!914 = !DISubroutineType(types: !915)
!915 = !{!97, !75, !99}
!916 = !DISubprogram(name: "__ctype_b_loc", scope: !81, file: !81, line: 79, type: !917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!917 = !DISubroutineType(types: !918)
!918 = !{!919}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!922 = !DISubprogram(name: "strcspn", scope: !897, file: !897, line: 293, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!923 = !DISubprogram(name: "fwrite_unlocked", scope: !325, file: !325, line: 704, type: !924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!924 = !DISubroutineType(types: !925)
!925 = !{!101, !926, !101, !101, !903}
!926 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !927)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!929 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 55, type: !930, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !933)
!930 = !DISubroutineType(types: !931)
!931 = !{!99, !99, !932}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!933 = !{!934, !935}
!934 = !DILocalVariable(name: "argc", arg: 1, scope: !929, file: !2, line: 55, type: !99)
!935 = !DILocalVariable(name: "argv", arg: 2, scope: !929, file: !2, line: 55, type: !932)
!936 = !DILocation(line: 0, scope: !929)
!937 = !DILocation(line: 59, column: 12, scope: !938)
!938 = distinct !DILexicalBlock(scope: !929, file: !2, line: 59, column: 7)
!939 = !DILocation(line: 59, column: 7, scope: !929)
!940 = !DILocation(line: 62, column: 25, scope: !941)
!941 = distinct !DILexicalBlock(scope: !938, file: !2, line: 60, column: 5)
!942 = !DILocation(line: 62, column: 7, scope: !941)
!943 = !DILocation(line: 63, column: 7, scope: !941)
!944 = !DILocation(line: 64, column: 7, scope: !941)
!945 = !DILocation(line: 65, column: 7, scope: !941)
!946 = !DILocation(line: 69, column: 7, scope: !941)
!947 = !DILocation(line: 71, column: 18, scope: !948)
!948 = distinct !DILexicalBlock(scope: !941, file: !2, line: 71, column: 11)
!949 = !DILocation(line: 0, scope: !759, inlinedAt: !950)
!950 = distinct !DILocation(line: 71, column: 11, scope: !948)
!951 = !DILocation(line: 1361, column: 11, scope: !759, inlinedAt: !950)
!952 = !DILocation(line: 1361, column: 10, scope: !759, inlinedAt: !950)
!953 = !DILocation(line: 71, column: 11, scope: !941)
!954 = !DILocation(line: 72, column: 9, scope: !948)
!955 = !DILocation(line: 0, scope: !759, inlinedAt: !956)
!956 = distinct !DILocation(line: 74, column: 11, scope: !957)
!957 = distinct !DILexicalBlock(scope: !941, file: !2, line: 74, column: 11)
!958 = !DILocation(line: 1361, column: 11, scope: !759, inlinedAt: !956)
!959 = !DILocation(line: 1361, column: 10, scope: !759, inlinedAt: !956)
!960 = !DILocation(line: 74, column: 11, scope: !941)
!961 = !DILocation(line: 75, column: 22, scope: !957)
!962 = !DILocation(line: 75, column: 58, scope: !957)
!963 = !DILocation(line: 75, column: 67, scope: !957)
!964 = !DILocation(line: 75, column: 9, scope: !957)
!965 = !DILocation(line: 79, column: 3, scope: !929)
!966 = !DISubprogram(name: "bindtextdomain", scope: !736, file: !736, line: 86, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!967 = !DISubroutineType(types: !968)
!968 = !{!97, !75, !75}
!969 = !DISubprogram(name: "textdomain", scope: !736, file: !736, line: 82, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!970 = !DISubprogram(name: "atexit", scope: !891, file: !891, line: 602, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!971 = !DISubroutineType(types: !972)
!972 = !{!99, !365}
!973 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !299, file: !299, line: 50, type: !974, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !298, retainedNodes: !975)
!974 = !DISubroutineType(types: !861)
!975 = !{!976}
!976 = !DILocalVariable(name: "file", arg: 1, scope: !973, file: !299, line: 50, type: !75)
!977 = !DILocation(line: 0, scope: !973)
!978 = !DILocation(line: 52, column: 13, scope: !973)
!979 = !DILocation(line: 53, column: 1, scope: !973)
!980 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !299, file: !299, line: 87, type: !981, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !298, retainedNodes: !983)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !218}
!983 = !{!984}
!984 = !DILocalVariable(name: "ignore", arg: 1, scope: !980, file: !299, line: 87, type: !218)
!985 = !DILocation(line: 0, scope: !980)
!986 = !DILocation(line: 89, column: 16, scope: !980)
!987 = !{!988, !988, i64 0}
!988 = !{!"_Bool", !727, i64 0}
!989 = !DILocation(line: 90, column: 1, scope: !980)
!990 = distinct !DISubprogram(name: "close_stdout", scope: !299, file: !299, line: 116, type: !366, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !298, retainedNodes: !991)
!991 = !{!992}
!992 = !DILocalVariable(name: "write_error", scope: !993, file: !299, line: 121, type: !75)
!993 = distinct !DILexicalBlock(scope: !994, file: !299, line: 120, column: 5)
!994 = distinct !DILexicalBlock(scope: !990, file: !299, line: 118, column: 7)
!995 = !DILocation(line: 118, column: 21, scope: !994)
!996 = !DILocation(line: 118, column: 7, scope: !994)
!997 = !DILocation(line: 118, column: 29, scope: !994)
!998 = !DILocation(line: 119, column: 7, scope: !994)
!999 = !DILocation(line: 119, column: 12, scope: !994)
!1000 = !{i8 0, i8 2}
!1001 = !DILocation(line: 119, column: 25, scope: !994)
!1002 = !DILocation(line: 119, column: 28, scope: !994)
!1003 = !DILocation(line: 119, column: 34, scope: !994)
!1004 = !DILocation(line: 118, column: 7, scope: !990)
!1005 = !DILocation(line: 121, column: 33, scope: !993)
!1006 = !DILocation(line: 0, scope: !993)
!1007 = !DILocation(line: 122, column: 11, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !993, file: !299, line: 122, column: 11)
!1009 = !DILocation(line: 0, scope: !1008)
!1010 = !DILocation(line: 122, column: 11, scope: !993)
!1011 = !DILocation(line: 123, column: 9, scope: !1008)
!1012 = !DILocation(line: 126, column: 9, scope: !1008)
!1013 = !DILocation(line: 128, column: 14, scope: !993)
!1014 = !DILocation(line: 128, column: 7, scope: !993)
!1015 = !DILocation(line: 133, column: 42, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !990, file: !299, line: 133, column: 7)
!1017 = !DILocation(line: 133, column: 28, scope: !1016)
!1018 = !DILocation(line: 133, column: 50, scope: !1016)
!1019 = !DILocation(line: 133, column: 7, scope: !990)
!1020 = !DILocation(line: 134, column: 12, scope: !1016)
!1021 = !DILocation(line: 134, column: 5, scope: !1016)
!1022 = !DILocation(line: 135, column: 1, scope: !990)
!1023 = !DISubprogram(name: "__errno_location", scope: !1024, file: !1024, line: 37, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!1024 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!1027}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!1028 = !DISubprogram(name: "_exit", scope: !1029, file: !1029, line: 624, type: !719, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !739)
!1029 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1030 = distinct !DISubprogram(name: "verror", scope: !314, file: !314, line: 251, type: !1031, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1033)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !99, !99, !75, !324}
!1033 = !{!1034, !1035, !1036, !1037}
!1034 = !DILocalVariable(name: "status", arg: 1, scope: !1030, file: !314, line: 251, type: !99)
!1035 = !DILocalVariable(name: "errnum", arg: 2, scope: !1030, file: !314, line: 251, type: !99)
!1036 = !DILocalVariable(name: "message", arg: 3, scope: !1030, file: !314, line: 251, type: !75)
!1037 = !DILocalVariable(name: "args", arg: 4, scope: !1030, file: !314, line: 251, type: !324)
!1038 = !DILocation(line: 0, scope: !1030)
!1039 = !DILocation(line: 251, column: 1, scope: !1030)
!1040 = !DILocation(line: 261, column: 3, scope: !1030)
!1041 = !DILocation(line: 265, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1030, file: !314, line: 265, column: 7)
!1043 = !DILocation(line: 265, column: 7, scope: !1030)
!1044 = !DILocation(line: 266, column: 5, scope: !1042)
!1045 = !DILocation(line: 272, column: 7, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1042, file: !314, line: 268, column: 5)
!1047 = !DILocation(line: 276, column: 3, scope: !1030)
!1048 = !{i64 0, i64 8, !725, i64 8, i64 8, !725, i64 16, i64 8, !725, i64 24, i64 4, !747, i64 28, i64 4, !747}
!1049 = !DILocation(line: 282, column: 1, scope: !1030)
!1050 = distinct !DISubprogram(name: "flush_stdout", scope: !314, file: !314, line: 163, type: !366, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1051)
!1051 = !{!1052}
!1052 = !DILocalVariable(name: "stdout_fd", scope: !1050, file: !314, line: 166, type: !99)
!1053 = !DILocation(line: 0, scope: !1050)
!1054 = !DILocalVariable(name: "fd", arg: 1, scope: !1055, file: !314, line: 145, type: !99)
!1055 = distinct !DISubprogram(name: "is_open", scope: !314, file: !314, line: 145, type: !1056, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1058)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!99, !99}
!1058 = !{!1054}
!1059 = !DILocation(line: 0, scope: !1055, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 182, column: 25, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1050, file: !314, line: 182, column: 7)
!1062 = !DILocation(line: 157, column: 15, scope: !1055, inlinedAt: !1060)
!1063 = !DILocation(line: 157, column: 12, scope: !1055, inlinedAt: !1060)
!1064 = !DILocation(line: 182, column: 7, scope: !1050)
!1065 = !DILocation(line: 184, column: 5, scope: !1061)
!1066 = !DILocation(line: 185, column: 1, scope: !1050)
!1067 = !DISubprogram(name: "__fprintf_chk", scope: !741, file: !741, line: 93, type: !1068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!99, !1070, !99, !744, null}
!1070 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1071)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !1073)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !1074)
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1073, file: !235, line: 51, baseType: !99, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1073, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1073, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1073, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1073, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1073, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1073, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1073, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1073, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1073, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1073, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1073, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1073, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1073, file: !235, line: 70, baseType: !1089, size: 64, offset: 832)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1073, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1073, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1073, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1073, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1073, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1073, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1073, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1073, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1073, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1073, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1073, file: !235, line: 93, baseType: !1089, size: 64, offset: 1344)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1073, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1073, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1073, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1073, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!1105 = distinct !DISubprogram(name: "error_tail", scope: !314, file: !314, line: 219, type: !1031, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1106)
!1106 = !{!1107, !1108, !1109, !1110}
!1107 = !DILocalVariable(name: "status", arg: 1, scope: !1105, file: !314, line: 219, type: !99)
!1108 = !DILocalVariable(name: "errnum", arg: 2, scope: !1105, file: !314, line: 219, type: !99)
!1109 = !DILocalVariable(name: "message", arg: 3, scope: !1105, file: !314, line: 219, type: !75)
!1110 = !DILocalVariable(name: "args", arg: 4, scope: !1105, file: !314, line: 219, type: !324)
!1111 = !DILocation(line: 0, scope: !1105)
!1112 = !DILocation(line: 219, column: 1, scope: !1105)
!1113 = !DILocation(line: 229, column: 13, scope: !1105)
!1114 = !DILocation(line: 135, column: 10, scope: !1115, inlinedAt: !1122)
!1115 = distinct !DISubprogram(name: "vfprintf", scope: !741, file: !741, line: 132, type: !1116, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1118)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!99, !1070, !744, !326}
!1118 = !{!1119, !1120, !1121}
!1119 = !DILocalVariable(name: "__stream", arg: 1, scope: !1115, file: !741, line: 132, type: !1070)
!1120 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1115, file: !741, line: 133, type: !744)
!1121 = !DILocalVariable(name: "__ap", arg: 3, scope: !1115, file: !741, line: 133, type: !326)
!1122 = distinct !DILocation(line: 229, column: 3, scope: !1105)
!1123 = !{!1124, !1126}
!1124 = distinct !{!1124, !1125, !"vfprintf.inline: argument 0"}
!1125 = distinct !{!1125, !"vfprintf.inline"}
!1126 = distinct !{!1126, !1125, !"vfprintf.inline: argument 1"}
!1127 = !DILocation(line: 229, column: 3, scope: !1105)
!1128 = !DILocation(line: 0, scope: !1115, inlinedAt: !1122)
!1129 = !DILocation(line: 133, column: 49, scope: !1115, inlinedAt: !1122)
!1130 = !DILocation(line: 232, column: 3, scope: !1105)
!1131 = !DILocation(line: 233, column: 7, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1105, file: !314, line: 233, column: 7)
!1133 = !DILocation(line: 233, column: 7, scope: !1105)
!1134 = !DILocalVariable(name: "errnum", arg: 1, scope: !1135, file: !314, line: 188, type: !99)
!1135 = distinct !DISubprogram(name: "print_errno_message", scope: !314, file: !314, line: 188, type: !719, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1136)
!1136 = !{!1134, !1137, !1138}
!1137 = !DILocalVariable(name: "s", scope: !1135, file: !314, line: 190, type: !75)
!1138 = !DILocalVariable(name: "errbuf", scope: !1135, file: !314, line: 193, type: !1139)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1140)
!1140 = !{!1141}
!1141 = !DISubrange(count: 1024)
!1142 = !DILocation(line: 0, scope: !1135, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 234, column: 5, scope: !1132)
!1144 = !DILocation(line: 193, column: 3, scope: !1135, inlinedAt: !1143)
!1145 = !DILocation(line: 193, column: 8, scope: !1135, inlinedAt: !1143)
!1146 = !DILocation(line: 195, column: 7, scope: !1135, inlinedAt: !1143)
!1147 = !DILocation(line: 207, column: 9, scope: !1148, inlinedAt: !1143)
!1148 = distinct !DILexicalBlock(scope: !1135, file: !314, line: 207, column: 7)
!1149 = !DILocation(line: 207, column: 7, scope: !1135, inlinedAt: !1143)
!1150 = !DILocation(line: 208, column: 9, scope: !1148, inlinedAt: !1143)
!1151 = !DILocation(line: 208, column: 5, scope: !1148, inlinedAt: !1143)
!1152 = !DILocation(line: 214, column: 3, scope: !1135, inlinedAt: !1143)
!1153 = !DILocation(line: 216, column: 1, scope: !1135, inlinedAt: !1143)
!1154 = !DILocation(line: 234, column: 5, scope: !1132)
!1155 = !DILocation(line: 238, column: 3, scope: !1105)
!1156 = !DILocalVariable(name: "__c", arg: 1, scope: !1157, file: !1158, line: 101, type: !99)
!1157 = distinct !DISubprogram(name: "putc_unlocked", scope: !1158, file: !1158, line: 101, type: !1159, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1161)
!1158 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!99, !99, !1071}
!1161 = !{!1156, !1162}
!1162 = !DILocalVariable(name: "__stream", arg: 2, scope: !1157, file: !1158, line: 101, type: !1071)
!1163 = !DILocation(line: 0, scope: !1157, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 238, column: 3, scope: !1105)
!1165 = !DILocation(line: 103, column: 10, scope: !1157, inlinedAt: !1164)
!1166 = !{!1167, !726, i64 40}
!1167 = !{!"_IO_FILE", !748, i64 0, !726, i64 8, !726, i64 16, !726, i64 24, !726, i64 32, !726, i64 40, !726, i64 48, !726, i64 56, !726, i64 64, !726, i64 72, !726, i64 80, !726, i64 88, !726, i64 96, !726, i64 104, !748, i64 112, !748, i64 116, !1168, i64 120, !789, i64 128, !727, i64 130, !727, i64 131, !726, i64 136, !1168, i64 144, !726, i64 152, !726, i64 160, !726, i64 168, !726, i64 176, !1168, i64 184, !748, i64 192, !727, i64 196}
!1168 = !{!"long", !727, i64 0}
!1169 = !{!1167, !726, i64 48}
!1170 = !{!"branch_weights", i32 2000, i32 1}
!1171 = !DILocation(line: 240, column: 3, scope: !1105)
!1172 = !DILocation(line: 241, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1105, file: !314, line: 241, column: 7)
!1174 = !DILocation(line: 241, column: 7, scope: !1105)
!1175 = !DILocation(line: 242, column: 5, scope: !1173)
!1176 = !DILocation(line: 243, column: 1, scope: !1105)
!1177 = !DISubprogram(name: "__vfprintf_chk", scope: !741, file: !741, line: 96, type: !1178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!99, !1070, !99, !744, !326}
!1180 = !DISubprogram(name: "strerror_r", scope: !897, file: !897, line: 444, type: !1181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!97, !99, !97, !101}
!1183 = !DISubprogram(name: "__overflow", scope: !325, file: !325, line: 886, type: !1184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!99, !1071, !99}
!1186 = !DISubprogram(name: "fflush_unlocked", scope: !325, file: !325, line: 239, type: !1187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!99, !1071}
!1189 = !DISubprogram(name: "fcntl", scope: !1190, file: !1190, line: 149, type: !1191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!1190 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!99, !99, !99, null}
!1193 = distinct !DISubprogram(name: "error", scope: !314, file: !314, line: 285, type: !1194, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !99, !99, !75, null}
!1196 = !{!1197, !1198, !1199, !1200}
!1197 = !DILocalVariable(name: "status", arg: 1, scope: !1193, file: !314, line: 285, type: !99)
!1198 = !DILocalVariable(name: "errnum", arg: 2, scope: !1193, file: !314, line: 285, type: !99)
!1199 = !DILocalVariable(name: "message", arg: 3, scope: !1193, file: !314, line: 285, type: !75)
!1200 = !DILocalVariable(name: "ap", scope: !1193, file: !314, line: 287, type: !324)
!1201 = !DILocation(line: 0, scope: !1193)
!1202 = !DILocation(line: 287, column: 3, scope: !1193)
!1203 = !DILocation(line: 287, column: 11, scope: !1193)
!1204 = !DILocation(line: 288, column: 3, scope: !1193)
!1205 = !DILocation(line: 289, column: 3, scope: !1193)
!1206 = !DILocation(line: 290, column: 3, scope: !1193)
!1207 = !DILocation(line: 291, column: 1, scope: !1193)
!1208 = !DILocation(line: 0, scope: !321)
!1209 = !DILocation(line: 298, column: 1, scope: !321)
!1210 = !DILocation(line: 302, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !321, file: !314, line: 302, column: 7)
!1212 = !DILocation(line: 302, column: 7, scope: !321)
!1213 = !DILocation(line: 307, column: 11, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !314, line: 307, column: 11)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !314, line: 303, column: 5)
!1216 = !DILocation(line: 307, column: 27, scope: !1214)
!1217 = !DILocation(line: 308, column: 11, scope: !1214)
!1218 = !DILocation(line: 308, column: 28, scope: !1214)
!1219 = !DILocation(line: 308, column: 25, scope: !1214)
!1220 = !DILocation(line: 309, column: 15, scope: !1214)
!1221 = !DILocation(line: 309, column: 33, scope: !1214)
!1222 = !DILocation(line: 310, column: 19, scope: !1214)
!1223 = !DILocation(line: 311, column: 22, scope: !1214)
!1224 = !DILocation(line: 311, column: 56, scope: !1214)
!1225 = !DILocation(line: 307, column: 11, scope: !1215)
!1226 = !DILocation(line: 316, column: 21, scope: !1215)
!1227 = !DILocation(line: 317, column: 23, scope: !1215)
!1228 = !DILocation(line: 318, column: 5, scope: !1215)
!1229 = !DILocation(line: 327, column: 3, scope: !321)
!1230 = !DILocation(line: 331, column: 7, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !321, file: !314, line: 331, column: 7)
!1232 = !DILocation(line: 331, column: 7, scope: !321)
!1233 = !DILocation(line: 332, column: 5, scope: !1231)
!1234 = !DILocation(line: 338, column: 7, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !314, line: 334, column: 5)
!1236 = !DILocation(line: 346, column: 3, scope: !321)
!1237 = !DILocation(line: 350, column: 3, scope: !321)
!1238 = !DILocation(line: 356, column: 1, scope: !321)
!1239 = distinct !DISubprogram(name: "error_at_line", scope: !314, file: !314, line: 359, type: !1240, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1242)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !99, !99, !75, !82, !75, null}
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248}
!1243 = !DILocalVariable(name: "status", arg: 1, scope: !1239, file: !314, line: 359, type: !99)
!1244 = !DILocalVariable(name: "errnum", arg: 2, scope: !1239, file: !314, line: 359, type: !99)
!1245 = !DILocalVariable(name: "file_name", arg: 3, scope: !1239, file: !314, line: 359, type: !75)
!1246 = !DILocalVariable(name: "line_number", arg: 4, scope: !1239, file: !314, line: 360, type: !82)
!1247 = !DILocalVariable(name: "message", arg: 5, scope: !1239, file: !314, line: 360, type: !75)
!1248 = !DILocalVariable(name: "ap", scope: !1239, file: !314, line: 362, type: !324)
!1249 = !DILocation(line: 0, scope: !1239)
!1250 = !DILocation(line: 362, column: 3, scope: !1239)
!1251 = !DILocation(line: 362, column: 11, scope: !1239)
!1252 = !DILocation(line: 363, column: 3, scope: !1239)
!1253 = !DILocation(line: 364, column: 3, scope: !1239)
!1254 = !DILocation(line: 366, column: 3, scope: !1239)
!1255 = !DILocation(line: 367, column: 1, scope: !1239)
!1256 = distinct !DISubprogram(name: "getprogname", scope: !649, file: !649, line: 54, type: !1257, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !739)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!75}
!1259 = !DILocation(line: 58, column: 10, scope: !1256)
!1260 = !DILocation(line: 58, column: 3, scope: !1256)
!1261 = distinct !DISubprogram(name: "set_program_name", scope: !371, file: !371, line: 37, type: !974, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1262)
!1262 = !{!1263, !1264, !1265}
!1263 = !DILocalVariable(name: "argv0", arg: 1, scope: !1261, file: !371, line: 37, type: !75)
!1264 = !DILocalVariable(name: "slash", scope: !1261, file: !371, line: 44, type: !75)
!1265 = !DILocalVariable(name: "base", scope: !1261, file: !371, line: 45, type: !75)
!1266 = !DILocation(line: 0, scope: !1261)
!1267 = !DILocation(line: 44, column: 23, scope: !1261)
!1268 = !DILocation(line: 45, column: 22, scope: !1261)
!1269 = !DILocation(line: 46, column: 17, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1261, file: !371, line: 46, column: 7)
!1271 = !DILocation(line: 46, column: 9, scope: !1270)
!1272 = !DILocation(line: 46, column: 25, scope: !1270)
!1273 = !DILocation(line: 46, column: 40, scope: !1270)
!1274 = !DILocalVariable(name: "__s1", arg: 1, scope: !1275, file: !760, line: 974, type: !927)
!1275 = distinct !DISubprogram(name: "memeq", scope: !760, file: !760, line: 974, type: !1276, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1278)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!218, !927, !927, !101}
!1278 = !{!1274, !1279, !1280}
!1279 = !DILocalVariable(name: "__s2", arg: 2, scope: !1275, file: !760, line: 974, type: !927)
!1280 = !DILocalVariable(name: "__n", arg: 3, scope: !1275, file: !760, line: 974, type: !101)
!1281 = !DILocation(line: 0, scope: !1275, inlinedAt: !1282)
!1282 = distinct !DILocation(line: 46, column: 28, scope: !1270)
!1283 = !DILocation(line: 976, column: 11, scope: !1275, inlinedAt: !1282)
!1284 = !DILocation(line: 976, column: 10, scope: !1275, inlinedAt: !1282)
!1285 = !DILocation(line: 46, column: 7, scope: !1261)
!1286 = !DILocation(line: 49, column: 11, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !371, line: 49, column: 11)
!1288 = distinct !DILexicalBlock(scope: !1270, file: !371, line: 47, column: 5)
!1289 = !DILocation(line: 49, column: 36, scope: !1287)
!1290 = !DILocation(line: 49, column: 11, scope: !1288)
!1291 = !DILocation(line: 65, column: 16, scope: !1261)
!1292 = !DILocation(line: 71, column: 27, scope: !1261)
!1293 = !DILocation(line: 74, column: 33, scope: !1261)
!1294 = !DILocation(line: 76, column: 1, scope: !1261)
!1295 = !DISubprogram(name: "strrchr", scope: !897, file: !897, line: 273, type: !914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!1296 = !DILocation(line: 0, scope: !380)
!1297 = !DILocation(line: 40, column: 29, scope: !380)
!1298 = !DILocation(line: 41, column: 19, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !380, file: !381, line: 41, column: 7)
!1300 = !DILocation(line: 41, column: 7, scope: !380)
!1301 = !DILocation(line: 47, column: 3, scope: !380)
!1302 = !DILocation(line: 48, column: 3, scope: !380)
!1303 = !DILocation(line: 48, column: 13, scope: !380)
!1304 = !DILocalVariable(name: "ps", arg: 1, scope: !1305, file: !1306, line: 1135, type: !1309)
!1305 = distinct !DISubprogram(name: "mbszero", scope: !1306, file: !1306, line: 1135, type: !1307, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !384, retainedNodes: !1310)
!1306 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !1309}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!1310 = !{!1304}
!1311 = !DILocation(line: 0, scope: !1305, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 48, column: 18, scope: !380)
!1313 = !DILocalVariable(name: "__dest", arg: 1, scope: !1314, file: !1315, line: 57, type: !98)
!1314 = distinct !DISubprogram(name: "memset", scope: !1315, file: !1315, line: 57, type: !1316, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !384, retainedNodes: !1318)
!1315 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!98, !98, !99, !101}
!1318 = !{!1313, !1319, !1320}
!1319 = !DILocalVariable(name: "__ch", arg: 2, scope: !1314, file: !1315, line: 57, type: !99)
!1320 = !DILocalVariable(name: "__len", arg: 3, scope: !1314, file: !1315, line: 57, type: !101)
!1321 = !DILocation(line: 0, scope: !1314, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 1137, column: 3, scope: !1305, inlinedAt: !1312)
!1323 = !DILocation(line: 59, column: 10, scope: !1314, inlinedAt: !1322)
!1324 = !DILocation(line: 49, column: 7, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !380, file: !381, line: 49, column: 7)
!1326 = !DILocation(line: 49, column: 39, scope: !1325)
!1327 = !DILocation(line: 49, column: 44, scope: !1325)
!1328 = !DILocation(line: 54, column: 1, scope: !380)
!1329 = !DISubprogram(name: "mbrtoc32", scope: !392, file: !392, line: 57, type: !1330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!101, !1332, !744, !101, !1334}
!1332 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1333)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1309)
!1335 = distinct !DISubprogram(name: "clone_quoting_options", scope: !411, file: !411, line: 113, type: !1336, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1339)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!1338, !1338}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!1339 = !{!1340, !1341, !1342}
!1340 = !DILocalVariable(name: "o", arg: 1, scope: !1335, file: !411, line: 113, type: !1338)
!1341 = !DILocalVariable(name: "saved_errno", scope: !1335, file: !411, line: 115, type: !99)
!1342 = !DILocalVariable(name: "p", scope: !1335, file: !411, line: 116, type: !1338)
!1343 = !DILocation(line: 0, scope: !1335)
!1344 = !DILocation(line: 115, column: 21, scope: !1335)
!1345 = !DILocation(line: 116, column: 40, scope: !1335)
!1346 = !DILocation(line: 116, column: 31, scope: !1335)
!1347 = !DILocation(line: 118, column: 9, scope: !1335)
!1348 = !DILocation(line: 119, column: 3, scope: !1335)
!1349 = distinct !DISubprogram(name: "get_quoting_style", scope: !411, file: !411, line: 124, type: !1350, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1354)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!434, !1352}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!1354 = !{!1355}
!1355 = !DILocalVariable(name: "o", arg: 1, scope: !1349, file: !411, line: 124, type: !1352)
!1356 = !DILocation(line: 0, scope: !1349)
!1357 = !DILocation(line: 126, column: 11, scope: !1349)
!1358 = !DILocation(line: 126, column: 46, scope: !1349)
!1359 = !{!1360, !727, i64 0}
!1360 = !{!"quoting_options", !727, i64 0, !748, i64 4, !727, i64 8, !726, i64 40, !726, i64 48}
!1361 = !DILocation(line: 126, column: 3, scope: !1349)
!1362 = distinct !DISubprogram(name: "set_quoting_style", scope: !411, file: !411, line: 132, type: !1363, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1365)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !1338, !434}
!1365 = !{!1366, !1367}
!1366 = !DILocalVariable(name: "o", arg: 1, scope: !1362, file: !411, line: 132, type: !1338)
!1367 = !DILocalVariable(name: "s", arg: 2, scope: !1362, file: !411, line: 132, type: !434)
!1368 = !DILocation(line: 0, scope: !1362)
!1369 = !DILocation(line: 134, column: 4, scope: !1362)
!1370 = !DILocation(line: 134, column: 45, scope: !1362)
!1371 = !DILocation(line: 135, column: 1, scope: !1362)
!1372 = distinct !DISubprogram(name: "set_char_quoting", scope: !411, file: !411, line: 143, type: !1373, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1375)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!99, !1338, !4, !99}
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1382, !1383}
!1376 = !DILocalVariable(name: "o", arg: 1, scope: !1372, file: !411, line: 143, type: !1338)
!1377 = !DILocalVariable(name: "c", arg: 2, scope: !1372, file: !411, line: 143, type: !4)
!1378 = !DILocalVariable(name: "i", arg: 3, scope: !1372, file: !411, line: 143, type: !99)
!1379 = !DILocalVariable(name: "uc", scope: !1372, file: !411, line: 145, type: !104)
!1380 = !DILocalVariable(name: "p", scope: !1372, file: !411, line: 146, type: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1382 = !DILocalVariable(name: "shift", scope: !1372, file: !411, line: 148, type: !99)
!1383 = !DILocalVariable(name: "r", scope: !1372, file: !411, line: 149, type: !82)
!1384 = !DILocation(line: 0, scope: !1372)
!1385 = !DILocation(line: 147, column: 6, scope: !1372)
!1386 = !DILocation(line: 147, column: 41, scope: !1372)
!1387 = !DILocation(line: 147, column: 62, scope: !1372)
!1388 = !DILocation(line: 147, column: 57, scope: !1372)
!1389 = !DILocation(line: 148, column: 15, scope: !1372)
!1390 = !DILocation(line: 149, column: 21, scope: !1372)
!1391 = !DILocation(line: 149, column: 24, scope: !1372)
!1392 = !DILocation(line: 149, column: 34, scope: !1372)
!1393 = !DILocation(line: 150, column: 19, scope: !1372)
!1394 = !DILocation(line: 150, column: 24, scope: !1372)
!1395 = !DILocation(line: 150, column: 6, scope: !1372)
!1396 = !DILocation(line: 151, column: 3, scope: !1372)
!1397 = distinct !DISubprogram(name: "set_quoting_flags", scope: !411, file: !411, line: 159, type: !1398, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1400)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!99, !1338, !99}
!1400 = !{!1401, !1402, !1403}
!1401 = !DILocalVariable(name: "o", arg: 1, scope: !1397, file: !411, line: 159, type: !1338)
!1402 = !DILocalVariable(name: "i", arg: 2, scope: !1397, file: !411, line: 159, type: !99)
!1403 = !DILocalVariable(name: "r", scope: !1397, file: !411, line: 163, type: !99)
!1404 = !DILocation(line: 0, scope: !1397)
!1405 = !DILocation(line: 161, column: 8, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1397, file: !411, line: 161, column: 7)
!1407 = !DILocation(line: 161, column: 7, scope: !1397)
!1408 = !DILocation(line: 163, column: 14, scope: !1397)
!1409 = !{!1360, !748, i64 4}
!1410 = !DILocation(line: 164, column: 12, scope: !1397)
!1411 = !DILocation(line: 165, column: 3, scope: !1397)
!1412 = distinct !DISubprogram(name: "set_custom_quoting", scope: !411, file: !411, line: 169, type: !1413, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1415)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{null, !1338, !75, !75}
!1415 = !{!1416, !1417, !1418}
!1416 = !DILocalVariable(name: "o", arg: 1, scope: !1412, file: !411, line: 169, type: !1338)
!1417 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1412, file: !411, line: 170, type: !75)
!1418 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1412, file: !411, line: 170, type: !75)
!1419 = !DILocation(line: 0, scope: !1412)
!1420 = !DILocation(line: 172, column: 8, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1412, file: !411, line: 172, column: 7)
!1422 = !DILocation(line: 172, column: 7, scope: !1412)
!1423 = !DILocation(line: 174, column: 12, scope: !1412)
!1424 = !DILocation(line: 175, column: 8, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1412, file: !411, line: 175, column: 7)
!1426 = !DILocation(line: 175, column: 19, scope: !1425)
!1427 = !DILocation(line: 176, column: 5, scope: !1425)
!1428 = !DILocation(line: 177, column: 6, scope: !1412)
!1429 = !DILocation(line: 177, column: 17, scope: !1412)
!1430 = !{!1360, !726, i64 40}
!1431 = !DILocation(line: 178, column: 6, scope: !1412)
!1432 = !DILocation(line: 178, column: 18, scope: !1412)
!1433 = !{!1360, !726, i64 48}
!1434 = !DILocation(line: 179, column: 1, scope: !1412)
!1435 = !DISubprogram(name: "abort", scope: !891, file: !891, line: 598, type: !366, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !739)
!1436 = distinct !DISubprogram(name: "quotearg_buffer", scope: !411, file: !411, line: 774, type: !1437, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1439)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!101, !97, !101, !75, !101, !1352}
!1439 = !{!1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447}
!1440 = !DILocalVariable(name: "buffer", arg: 1, scope: !1436, file: !411, line: 774, type: !97)
!1441 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1436, file: !411, line: 774, type: !101)
!1442 = !DILocalVariable(name: "arg", arg: 3, scope: !1436, file: !411, line: 775, type: !75)
!1443 = !DILocalVariable(name: "argsize", arg: 4, scope: !1436, file: !411, line: 775, type: !101)
!1444 = !DILocalVariable(name: "o", arg: 5, scope: !1436, file: !411, line: 776, type: !1352)
!1445 = !DILocalVariable(name: "p", scope: !1436, file: !411, line: 778, type: !1352)
!1446 = !DILocalVariable(name: "saved_errno", scope: !1436, file: !411, line: 779, type: !99)
!1447 = !DILocalVariable(name: "r", scope: !1436, file: !411, line: 780, type: !101)
!1448 = !DILocation(line: 0, scope: !1436)
!1449 = !DILocation(line: 778, column: 37, scope: !1436)
!1450 = !DILocation(line: 779, column: 21, scope: !1436)
!1451 = !DILocation(line: 781, column: 43, scope: !1436)
!1452 = !DILocation(line: 781, column: 53, scope: !1436)
!1453 = !DILocation(line: 781, column: 63, scope: !1436)
!1454 = !DILocation(line: 782, column: 43, scope: !1436)
!1455 = !DILocation(line: 782, column: 58, scope: !1436)
!1456 = !DILocation(line: 780, column: 14, scope: !1436)
!1457 = !DILocation(line: 783, column: 9, scope: !1436)
!1458 = !DILocation(line: 784, column: 3, scope: !1436)
!1459 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !411, file: !411, line: 251, type: !1460, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1464)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!101, !97, !101, !75, !101, !434, !99, !1462, !75, !75}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!1464 = !{!1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1489, !1491, !1494, !1495, !1496, !1497, !1500, !1501, !1504, !1508, !1509, !1517, !1520, !1521, !1523, !1524, !1525, !1526}
!1465 = !DILocalVariable(name: "buffer", arg: 1, scope: !1459, file: !411, line: 251, type: !97)
!1466 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1459, file: !411, line: 251, type: !101)
!1467 = !DILocalVariable(name: "arg", arg: 3, scope: !1459, file: !411, line: 252, type: !75)
!1468 = !DILocalVariable(name: "argsize", arg: 4, scope: !1459, file: !411, line: 252, type: !101)
!1469 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1459, file: !411, line: 253, type: !434)
!1470 = !DILocalVariable(name: "flags", arg: 6, scope: !1459, file: !411, line: 253, type: !99)
!1471 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1459, file: !411, line: 254, type: !1462)
!1472 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1459, file: !411, line: 255, type: !75)
!1473 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1459, file: !411, line: 256, type: !75)
!1474 = !DILocalVariable(name: "unibyte_locale", scope: !1459, file: !411, line: 258, type: !218)
!1475 = !DILocalVariable(name: "len", scope: !1459, file: !411, line: 260, type: !101)
!1476 = !DILocalVariable(name: "orig_buffersize", scope: !1459, file: !411, line: 261, type: !101)
!1477 = !DILocalVariable(name: "quote_string", scope: !1459, file: !411, line: 262, type: !75)
!1478 = !DILocalVariable(name: "quote_string_len", scope: !1459, file: !411, line: 263, type: !101)
!1479 = !DILocalVariable(name: "backslash_escapes", scope: !1459, file: !411, line: 264, type: !218)
!1480 = !DILocalVariable(name: "elide_outer_quotes", scope: !1459, file: !411, line: 265, type: !218)
!1481 = !DILocalVariable(name: "encountered_single_quote", scope: !1459, file: !411, line: 266, type: !218)
!1482 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1459, file: !411, line: 267, type: !218)
!1483 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1459, file: !411, line: 309, type: !218)
!1484 = !DILocalVariable(name: "lq", scope: !1485, file: !411, line: 361, type: !75)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !411, line: 361, column: 11)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !411, line: 360, column: 13)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !411, line: 333, column: 7)
!1488 = distinct !DILexicalBlock(scope: !1459, file: !411, line: 312, column: 5)
!1489 = !DILocalVariable(name: "i", scope: !1490, file: !411, line: 395, type: !101)
!1490 = distinct !DILexicalBlock(scope: !1459, file: !411, line: 395, column: 3)
!1491 = !DILocalVariable(name: "is_right_quote", scope: !1492, file: !411, line: 397, type: !218)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !411, line: 396, column: 5)
!1493 = distinct !DILexicalBlock(scope: !1490, file: !411, line: 395, column: 3)
!1494 = !DILocalVariable(name: "escaping", scope: !1492, file: !411, line: 398, type: !218)
!1495 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1492, file: !411, line: 399, type: !218)
!1496 = !DILocalVariable(name: "c", scope: !1492, file: !411, line: 417, type: !104)
!1497 = !DILocalVariable(name: "m", scope: !1498, file: !411, line: 598, type: !101)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !411, line: 596, column: 11)
!1499 = distinct !DILexicalBlock(scope: !1492, file: !411, line: 419, column: 9)
!1500 = !DILocalVariable(name: "printable", scope: !1498, file: !411, line: 600, type: !218)
!1501 = !DILocalVariable(name: "mbs", scope: !1502, file: !411, line: 609, type: !495)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !411, line: 608, column: 15)
!1503 = distinct !DILexicalBlock(scope: !1498, file: !411, line: 602, column: 17)
!1504 = !DILocalVariable(name: "w", scope: !1505, file: !411, line: 618, type: !391)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !411, line: 617, column: 19)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !411, line: 616, column: 17)
!1507 = distinct !DILexicalBlock(scope: !1502, file: !411, line: 616, column: 17)
!1508 = !DILocalVariable(name: "bytes", scope: !1505, file: !411, line: 619, type: !101)
!1509 = !DILocalVariable(name: "j", scope: !1510, file: !411, line: 648, type: !101)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !411, line: 648, column: 29)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !411, line: 647, column: 27)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !411, line: 645, column: 29)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !411, line: 636, column: 23)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !411, line: 628, column: 30)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !411, line: 623, column: 30)
!1516 = distinct !DILexicalBlock(scope: !1505, file: !411, line: 621, column: 25)
!1517 = !DILocalVariable(name: "ilim", scope: !1518, file: !411, line: 674, type: !101)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !411, line: 671, column: 15)
!1519 = distinct !DILexicalBlock(scope: !1498, file: !411, line: 670, column: 17)
!1520 = !DILabel(scope: !1459, name: "process_input", file: !411, line: 308)
!1521 = !DILabel(scope: !1522, name: "c_and_shell_escape", file: !411, line: 502)
!1522 = distinct !DILexicalBlock(scope: !1499, file: !411, line: 478, column: 9)
!1523 = !DILabel(scope: !1522, name: "c_escape", file: !411, line: 507)
!1524 = !DILabel(scope: !1492, name: "store_escape", file: !411, line: 709)
!1525 = !DILabel(scope: !1492, name: "store_c", file: !411, line: 712)
!1526 = !DILabel(scope: !1459, name: "force_outer_quoting_style", file: !411, line: 753)
!1527 = !DILocation(line: 0, scope: !1459)
!1528 = !DILocation(line: 258, column: 25, scope: !1459)
!1529 = !DILocation(line: 258, column: 36, scope: !1459)
!1530 = !DILocation(line: 267, column: 3, scope: !1459)
!1531 = !DILocation(line: 261, column: 10, scope: !1459)
!1532 = !DILocation(line: 262, column: 15, scope: !1459)
!1533 = !DILocation(line: 263, column: 10, scope: !1459)
!1534 = !DILocation(line: 308, column: 2, scope: !1459)
!1535 = !DILocation(line: 311, column: 3, scope: !1459)
!1536 = !DILocation(line: 318, column: 11, scope: !1488)
!1537 = !DILocation(line: 319, column: 9, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !411, line: 319, column: 9)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !411, line: 319, column: 9)
!1540 = distinct !DILexicalBlock(scope: !1488, file: !411, line: 318, column: 11)
!1541 = !DILocation(line: 319, column: 9, scope: !1539)
!1542 = !DILocation(line: 0, scope: !486, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 357, column: 26, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !411, line: 335, column: 11)
!1545 = distinct !DILexicalBlock(scope: !1487, file: !411, line: 334, column: 13)
!1546 = !DILocation(line: 199, column: 29, scope: !486, inlinedAt: !1543)
!1547 = !DILocation(line: 201, column: 19, scope: !1548, inlinedAt: !1543)
!1548 = distinct !DILexicalBlock(scope: !486, file: !411, line: 201, column: 7)
!1549 = !DILocation(line: 201, column: 7, scope: !486, inlinedAt: !1543)
!1550 = !DILocation(line: 229, column: 3, scope: !486, inlinedAt: !1543)
!1551 = !DILocation(line: 230, column: 3, scope: !486, inlinedAt: !1543)
!1552 = !DILocation(line: 230, column: 13, scope: !486, inlinedAt: !1543)
!1553 = !DILocalVariable(name: "ps", arg: 1, scope: !1554, file: !1306, line: 1135, type: !1557)
!1554 = distinct !DISubprogram(name: "mbszero", scope: !1306, file: !1306, line: 1135, type: !1555, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1558)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{null, !1557}
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!1558 = !{!1553}
!1559 = !DILocation(line: 0, scope: !1554, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 230, column: 18, scope: !486, inlinedAt: !1543)
!1561 = !DILocalVariable(name: "__dest", arg: 1, scope: !1562, file: !1315, line: 57, type: !98)
!1562 = distinct !DISubprogram(name: "memset", scope: !1315, file: !1315, line: 57, type: !1316, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1563)
!1563 = !{!1561, !1564, !1565}
!1564 = !DILocalVariable(name: "__ch", arg: 2, scope: !1562, file: !1315, line: 57, type: !99)
!1565 = !DILocalVariable(name: "__len", arg: 3, scope: !1562, file: !1315, line: 57, type: !101)
!1566 = !DILocation(line: 0, scope: !1562, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 1137, column: 3, scope: !1554, inlinedAt: !1560)
!1568 = !DILocation(line: 59, column: 10, scope: !1562, inlinedAt: !1567)
!1569 = !DILocation(line: 231, column: 7, scope: !1570, inlinedAt: !1543)
!1570 = distinct !DILexicalBlock(scope: !486, file: !411, line: 231, column: 7)
!1571 = !DILocation(line: 231, column: 40, scope: !1570, inlinedAt: !1543)
!1572 = !DILocation(line: 231, column: 45, scope: !1570, inlinedAt: !1543)
!1573 = !DILocation(line: 235, column: 1, scope: !486, inlinedAt: !1543)
!1574 = !DILocation(line: 0, scope: !486, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 358, column: 27, scope: !1544)
!1576 = !DILocation(line: 199, column: 29, scope: !486, inlinedAt: !1575)
!1577 = !DILocation(line: 201, column: 19, scope: !1548, inlinedAt: !1575)
!1578 = !DILocation(line: 201, column: 7, scope: !486, inlinedAt: !1575)
!1579 = !DILocation(line: 229, column: 3, scope: !486, inlinedAt: !1575)
!1580 = !DILocation(line: 230, column: 3, scope: !486, inlinedAt: !1575)
!1581 = !DILocation(line: 230, column: 13, scope: !486, inlinedAt: !1575)
!1582 = !DILocation(line: 0, scope: !1554, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 230, column: 18, scope: !486, inlinedAt: !1575)
!1584 = !DILocation(line: 0, scope: !1562, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 1137, column: 3, scope: !1554, inlinedAt: !1583)
!1586 = !DILocation(line: 59, column: 10, scope: !1562, inlinedAt: !1585)
!1587 = !DILocation(line: 231, column: 7, scope: !1570, inlinedAt: !1575)
!1588 = !DILocation(line: 231, column: 40, scope: !1570, inlinedAt: !1575)
!1589 = !DILocation(line: 231, column: 45, scope: !1570, inlinedAt: !1575)
!1590 = !DILocation(line: 235, column: 1, scope: !486, inlinedAt: !1575)
!1591 = !DILocation(line: 360, column: 13, scope: !1487)
!1592 = !DILocation(line: 0, scope: !1485)
!1593 = !DILocation(line: 361, column: 45, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1485, file: !411, line: 361, column: 11)
!1595 = !DILocation(line: 361, column: 11, scope: !1485)
!1596 = !DILocation(line: 362, column: 13, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !411, line: 362, column: 13)
!1598 = distinct !DILexicalBlock(scope: !1594, file: !411, line: 362, column: 13)
!1599 = !DILocation(line: 362, column: 13, scope: !1598)
!1600 = !DILocation(line: 361, column: 52, scope: !1594)
!1601 = distinct !{!1601, !1595, !1602, !794}
!1602 = !DILocation(line: 362, column: 13, scope: !1485)
!1603 = !DILocation(line: 260, column: 10, scope: !1459)
!1604 = !DILocation(line: 365, column: 28, scope: !1487)
!1605 = !DILocation(line: 367, column: 7, scope: !1488)
!1606 = !DILocation(line: 370, column: 7, scope: !1488)
!1607 = !DILocation(line: 376, column: 11, scope: !1488)
!1608 = !DILocation(line: 381, column: 11, scope: !1488)
!1609 = !DILocation(line: 382, column: 9, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !411, line: 382, column: 9)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !411, line: 382, column: 9)
!1612 = distinct !DILexicalBlock(scope: !1488, file: !411, line: 381, column: 11)
!1613 = !DILocation(line: 382, column: 9, scope: !1611)
!1614 = !DILocation(line: 389, column: 7, scope: !1488)
!1615 = !DILocation(line: 392, column: 7, scope: !1488)
!1616 = !DILocation(line: 0, scope: !1490)
!1617 = !DILocation(line: 395, column: 8, scope: !1490)
!1618 = !DILocation(line: 395, scope: !1490)
!1619 = !DILocation(line: 395, column: 34, scope: !1493)
!1620 = !DILocation(line: 395, column: 26, scope: !1493)
!1621 = !DILocation(line: 395, column: 48, scope: !1493)
!1622 = !DILocation(line: 395, column: 55, scope: !1493)
!1623 = !DILocation(line: 395, column: 3, scope: !1490)
!1624 = !DILocation(line: 395, column: 67, scope: !1493)
!1625 = !DILocation(line: 0, scope: !1492)
!1626 = !DILocation(line: 402, column: 11, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1492, file: !411, line: 401, column: 11)
!1628 = !DILocation(line: 404, column: 17, scope: !1627)
!1629 = !DILocation(line: 405, column: 39, scope: !1627)
!1630 = !DILocation(line: 409, column: 32, scope: !1627)
!1631 = !DILocation(line: 405, column: 19, scope: !1627)
!1632 = !DILocation(line: 405, column: 15, scope: !1627)
!1633 = !DILocation(line: 410, column: 11, scope: !1627)
!1634 = !DILocation(line: 410, column: 25, scope: !1627)
!1635 = !DILocalVariable(name: "__s1", arg: 1, scope: !1636, file: !760, line: 974, type: !927)
!1636 = distinct !DISubprogram(name: "memeq", scope: !760, file: !760, line: 974, type: !1276, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1637)
!1637 = !{!1635, !1638, !1639}
!1638 = !DILocalVariable(name: "__s2", arg: 2, scope: !1636, file: !760, line: 974, type: !927)
!1639 = !DILocalVariable(name: "__n", arg: 3, scope: !1636, file: !760, line: 974, type: !101)
!1640 = !DILocation(line: 0, scope: !1636, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 410, column: 14, scope: !1627)
!1642 = !DILocation(line: 976, column: 11, scope: !1636, inlinedAt: !1641)
!1643 = !DILocation(line: 976, column: 10, scope: !1636, inlinedAt: !1641)
!1644 = !DILocation(line: 401, column: 11, scope: !1492)
!1645 = !DILocation(line: 417, column: 25, scope: !1492)
!1646 = !DILocation(line: 418, column: 7, scope: !1492)
!1647 = !DILocation(line: 421, column: 15, scope: !1499)
!1648 = !DILocation(line: 423, column: 15, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !411, line: 423, column: 15)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !411, line: 422, column: 13)
!1651 = distinct !DILexicalBlock(scope: !1499, file: !411, line: 421, column: 15)
!1652 = !DILocation(line: 423, column: 15, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1649, file: !411, line: 423, column: 15)
!1654 = !DILocation(line: 423, column: 15, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !411, line: 423, column: 15)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !411, line: 423, column: 15)
!1657 = distinct !DILexicalBlock(scope: !1653, file: !411, line: 423, column: 15)
!1658 = !DILocation(line: 423, column: 15, scope: !1656)
!1659 = !DILocation(line: 423, column: 15, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !411, line: 423, column: 15)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !411, line: 423, column: 15)
!1662 = !DILocation(line: 423, column: 15, scope: !1661)
!1663 = !DILocation(line: 423, column: 15, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !411, line: 423, column: 15)
!1665 = distinct !DILexicalBlock(scope: !1657, file: !411, line: 423, column: 15)
!1666 = !DILocation(line: 423, column: 15, scope: !1665)
!1667 = !DILocation(line: 423, column: 15, scope: !1657)
!1668 = !DILocation(line: 423, column: 15, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !411, line: 423, column: 15)
!1670 = distinct !DILexicalBlock(scope: !1649, file: !411, line: 423, column: 15)
!1671 = !DILocation(line: 423, column: 15, scope: !1670)
!1672 = !DILocation(line: 431, column: 19, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1650, file: !411, line: 430, column: 19)
!1674 = !DILocation(line: 431, column: 24, scope: !1673)
!1675 = !DILocation(line: 431, column: 28, scope: !1673)
!1676 = !DILocation(line: 431, column: 38, scope: !1673)
!1677 = !DILocation(line: 431, column: 48, scope: !1673)
!1678 = !DILocation(line: 431, column: 59, scope: !1673)
!1679 = !DILocation(line: 433, column: 19, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !411, line: 433, column: 19)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !411, line: 433, column: 19)
!1682 = distinct !DILexicalBlock(scope: !1673, file: !411, line: 432, column: 17)
!1683 = !DILocation(line: 433, column: 19, scope: !1681)
!1684 = !DILocation(line: 434, column: 19, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !411, line: 434, column: 19)
!1686 = distinct !DILexicalBlock(scope: !1682, file: !411, line: 434, column: 19)
!1687 = !DILocation(line: 434, column: 19, scope: !1686)
!1688 = !DILocation(line: 435, column: 17, scope: !1682)
!1689 = !DILocation(line: 442, column: 20, scope: !1651)
!1690 = !DILocation(line: 447, column: 11, scope: !1499)
!1691 = !DILocation(line: 450, column: 19, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1499, file: !411, line: 448, column: 13)
!1693 = !DILocation(line: 456, column: 19, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1692, file: !411, line: 455, column: 19)
!1695 = !DILocation(line: 456, column: 24, scope: !1694)
!1696 = !DILocation(line: 456, column: 28, scope: !1694)
!1697 = !DILocation(line: 456, column: 38, scope: !1694)
!1698 = !DILocation(line: 456, column: 47, scope: !1694)
!1699 = !DILocation(line: 456, column: 41, scope: !1694)
!1700 = !DILocation(line: 456, column: 52, scope: !1694)
!1701 = !DILocation(line: 455, column: 19, scope: !1692)
!1702 = !DILocation(line: 457, column: 25, scope: !1694)
!1703 = !DILocation(line: 457, column: 17, scope: !1694)
!1704 = !DILocation(line: 464, column: 25, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1694, file: !411, line: 458, column: 19)
!1706 = !DILocation(line: 468, column: 21, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !411, line: 468, column: 21)
!1708 = distinct !DILexicalBlock(scope: !1705, file: !411, line: 468, column: 21)
!1709 = !DILocation(line: 468, column: 21, scope: !1708)
!1710 = !DILocation(line: 469, column: 21, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !411, line: 469, column: 21)
!1712 = distinct !DILexicalBlock(scope: !1705, file: !411, line: 469, column: 21)
!1713 = !DILocation(line: 469, column: 21, scope: !1712)
!1714 = !DILocation(line: 470, column: 21, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !411, line: 470, column: 21)
!1716 = distinct !DILexicalBlock(scope: !1705, file: !411, line: 470, column: 21)
!1717 = !DILocation(line: 470, column: 21, scope: !1716)
!1718 = !DILocation(line: 471, column: 21, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !411, line: 471, column: 21)
!1720 = distinct !DILexicalBlock(scope: !1705, file: !411, line: 471, column: 21)
!1721 = !DILocation(line: 471, column: 21, scope: !1720)
!1722 = !DILocation(line: 472, column: 21, scope: !1705)
!1723 = !DILocation(line: 482, column: 33, scope: !1522)
!1724 = !DILocation(line: 483, column: 33, scope: !1522)
!1725 = !DILocation(line: 485, column: 33, scope: !1522)
!1726 = !DILocation(line: 486, column: 33, scope: !1522)
!1727 = !DILocation(line: 487, column: 33, scope: !1522)
!1728 = !DILocation(line: 490, column: 17, scope: !1522)
!1729 = !DILocation(line: 492, column: 21, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !411, line: 491, column: 15)
!1731 = distinct !DILexicalBlock(scope: !1522, file: !411, line: 490, column: 17)
!1732 = !DILocation(line: 499, column: 35, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1522, file: !411, line: 499, column: 17)
!1734 = !DILocation(line: 0, scope: !1522)
!1735 = !DILocation(line: 502, column: 11, scope: !1522)
!1736 = !DILocation(line: 504, column: 17, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1522, file: !411, line: 503, column: 17)
!1738 = !DILocation(line: 507, column: 11, scope: !1522)
!1739 = !DILocation(line: 508, column: 17, scope: !1522)
!1740 = !DILocation(line: 517, column: 15, scope: !1499)
!1741 = !DILocation(line: 517, column: 40, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1499, file: !411, line: 517, column: 15)
!1743 = !DILocation(line: 517, column: 47, scope: !1742)
!1744 = !DILocation(line: 517, column: 18, scope: !1742)
!1745 = !DILocation(line: 521, column: 17, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1499, file: !411, line: 521, column: 15)
!1747 = !DILocation(line: 521, column: 15, scope: !1499)
!1748 = !DILocation(line: 525, column: 11, scope: !1499)
!1749 = !DILocation(line: 537, column: 15, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1499, file: !411, line: 536, column: 15)
!1751 = !DILocation(line: 536, column: 15, scope: !1499)
!1752 = !DILocation(line: 544, column: 15, scope: !1499)
!1753 = !DILocation(line: 546, column: 19, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !411, line: 545, column: 13)
!1755 = distinct !DILexicalBlock(scope: !1499, file: !411, line: 544, column: 15)
!1756 = !DILocation(line: 549, column: 19, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1754, file: !411, line: 549, column: 19)
!1758 = !DILocation(line: 549, column: 30, scope: !1757)
!1759 = !DILocation(line: 558, column: 15, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !411, line: 558, column: 15)
!1761 = distinct !DILexicalBlock(scope: !1754, file: !411, line: 558, column: 15)
!1762 = !DILocation(line: 558, column: 15, scope: !1761)
!1763 = !DILocation(line: 559, column: 15, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !411, line: 559, column: 15)
!1765 = distinct !DILexicalBlock(scope: !1754, file: !411, line: 559, column: 15)
!1766 = !DILocation(line: 559, column: 15, scope: !1765)
!1767 = !DILocation(line: 560, column: 15, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !411, line: 560, column: 15)
!1769 = distinct !DILexicalBlock(scope: !1754, file: !411, line: 560, column: 15)
!1770 = !DILocation(line: 560, column: 15, scope: !1769)
!1771 = !DILocation(line: 562, column: 13, scope: !1754)
!1772 = !DILocation(line: 602, column: 17, scope: !1498)
!1773 = !DILocation(line: 0, scope: !1498)
!1774 = !DILocation(line: 605, column: 29, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1503, file: !411, line: 603, column: 15)
!1776 = !DILocation(line: 605, column: 41, scope: !1775)
!1777 = !DILocation(line: 606, column: 15, scope: !1775)
!1778 = !DILocation(line: 609, column: 17, scope: !1502)
!1779 = !DILocation(line: 609, column: 27, scope: !1502)
!1780 = !DILocation(line: 0, scope: !1554, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 609, column: 32, scope: !1502)
!1782 = !DILocation(line: 0, scope: !1562, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 1137, column: 3, scope: !1554, inlinedAt: !1781)
!1784 = !DILocation(line: 59, column: 10, scope: !1562, inlinedAt: !1783)
!1785 = !DILocation(line: 613, column: 29, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1502, file: !411, line: 613, column: 21)
!1787 = !DILocation(line: 613, column: 21, scope: !1502)
!1788 = !DILocation(line: 614, column: 29, scope: !1786)
!1789 = !DILocation(line: 614, column: 19, scope: !1786)
!1790 = !DILocation(line: 618, column: 21, scope: !1505)
!1791 = !DILocation(line: 620, column: 54, scope: !1505)
!1792 = !DILocation(line: 0, scope: !1505)
!1793 = !DILocation(line: 619, column: 36, scope: !1505)
!1794 = !DILocation(line: 621, column: 25, scope: !1505)
!1795 = !DILocation(line: 631, column: 38, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1514, file: !411, line: 629, column: 23)
!1797 = !DILocation(line: 631, column: 48, scope: !1796)
!1798 = !DILocation(line: 626, column: 25, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1515, file: !411, line: 624, column: 23)
!1800 = !DILocation(line: 631, column: 51, scope: !1796)
!1801 = !DILocation(line: 631, column: 25, scope: !1796)
!1802 = !DILocation(line: 632, column: 28, scope: !1796)
!1803 = !DILocation(line: 631, column: 34, scope: !1796)
!1804 = distinct !{!1804, !1801, !1802, !794}
!1805 = !DILocation(line: 646, column: 29, scope: !1512)
!1806 = !DILocation(line: 0, scope: !1510)
!1807 = !DILocation(line: 649, column: 49, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1510, file: !411, line: 648, column: 29)
!1809 = !DILocation(line: 649, column: 39, scope: !1808)
!1810 = !DILocation(line: 649, column: 31, scope: !1808)
!1811 = !DILocation(line: 648, column: 60, scope: !1808)
!1812 = !DILocation(line: 648, column: 50, scope: !1808)
!1813 = !DILocation(line: 648, column: 29, scope: !1510)
!1814 = distinct !{!1814, !1813, !1815, !794}
!1815 = !DILocation(line: 654, column: 33, scope: !1510)
!1816 = !DILocation(line: 657, column: 43, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1513, file: !411, line: 657, column: 29)
!1818 = !DILocalVariable(name: "wc", arg: 1, scope: !1819, file: !1820, line: 865, type: !1823)
!1819 = distinct !DISubprogram(name: "c32isprint", scope: !1820, file: !1820, line: 865, type: !1821, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1825)
!1820 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!99, !1823}
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1824, line: 20, baseType: !82)
!1824 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1825 = !{!1818}
!1826 = !DILocation(line: 0, scope: !1819, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 657, column: 31, scope: !1817)
!1828 = !DILocation(line: 871, column: 10, scope: !1819, inlinedAt: !1827)
!1829 = !DILocation(line: 657, column: 31, scope: !1817)
!1830 = !DILocation(line: 664, column: 23, scope: !1505)
!1831 = !DILocation(line: 665, column: 19, scope: !1506)
!1832 = !DILocation(line: 666, column: 15, scope: !1503)
!1833 = !DILocation(line: 753, column: 2, scope: !1459)
!1834 = !DILocation(line: 756, column: 51, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1459, file: !411, line: 756, column: 7)
!1836 = !DILocation(line: 0, scope: !1503)
!1837 = !DILocation(line: 670, column: 19, scope: !1519)
!1838 = !DILocation(line: 670, column: 23, scope: !1519)
!1839 = !DILocation(line: 674, column: 33, scope: !1518)
!1840 = !DILocation(line: 0, scope: !1518)
!1841 = !DILocation(line: 676, column: 17, scope: !1518)
!1842 = !DILocation(line: 398, column: 12, scope: !1492)
!1843 = !DILocation(line: 678, column: 43, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !411, line: 678, column: 25)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !411, line: 677, column: 19)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !411, line: 676, column: 17)
!1847 = distinct !DILexicalBlock(scope: !1518, file: !411, line: 676, column: 17)
!1848 = !DILocation(line: 680, column: 25, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !411, line: 680, column: 25)
!1850 = distinct !DILexicalBlock(scope: !1844, file: !411, line: 679, column: 23)
!1851 = !DILocation(line: 680, column: 25, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1849, file: !411, line: 680, column: 25)
!1853 = !DILocation(line: 680, column: 25, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !411, line: 680, column: 25)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !411, line: 680, column: 25)
!1856 = distinct !DILexicalBlock(scope: !1852, file: !411, line: 680, column: 25)
!1857 = !DILocation(line: 680, column: 25, scope: !1855)
!1858 = !DILocation(line: 680, column: 25, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !411, line: 680, column: 25)
!1860 = distinct !DILexicalBlock(scope: !1856, file: !411, line: 680, column: 25)
!1861 = !DILocation(line: 680, column: 25, scope: !1860)
!1862 = !DILocation(line: 680, column: 25, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !411, line: 680, column: 25)
!1864 = distinct !DILexicalBlock(scope: !1856, file: !411, line: 680, column: 25)
!1865 = !DILocation(line: 680, column: 25, scope: !1864)
!1866 = !DILocation(line: 680, column: 25, scope: !1856)
!1867 = !DILocation(line: 680, column: 25, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !411, line: 680, column: 25)
!1869 = distinct !DILexicalBlock(scope: !1849, file: !411, line: 680, column: 25)
!1870 = !DILocation(line: 680, column: 25, scope: !1869)
!1871 = !DILocation(line: 681, column: 25, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !411, line: 681, column: 25)
!1873 = distinct !DILexicalBlock(scope: !1850, file: !411, line: 681, column: 25)
!1874 = !DILocation(line: 681, column: 25, scope: !1873)
!1875 = !DILocation(line: 682, column: 25, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !411, line: 682, column: 25)
!1877 = distinct !DILexicalBlock(scope: !1850, file: !411, line: 682, column: 25)
!1878 = !DILocation(line: 682, column: 25, scope: !1877)
!1879 = !DILocation(line: 683, column: 38, scope: !1850)
!1880 = !DILocation(line: 683, column: 33, scope: !1850)
!1881 = !DILocation(line: 684, column: 23, scope: !1850)
!1882 = !DILocation(line: 685, column: 30, scope: !1844)
!1883 = !DILocation(line: 687, column: 25, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !411, line: 687, column: 25)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !411, line: 687, column: 25)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !411, line: 686, column: 23)
!1887 = distinct !DILexicalBlock(scope: !1844, file: !411, line: 685, column: 30)
!1888 = !DILocation(line: 687, column: 25, scope: !1885)
!1889 = !DILocation(line: 689, column: 23, scope: !1886)
!1890 = !DILocation(line: 690, column: 35, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1845, file: !411, line: 690, column: 25)
!1892 = !DILocation(line: 690, column: 30, scope: !1891)
!1893 = !DILocation(line: 690, column: 25, scope: !1845)
!1894 = !DILocation(line: 692, column: 21, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !411, line: 692, column: 21)
!1896 = distinct !DILexicalBlock(scope: !1845, file: !411, line: 692, column: 21)
!1897 = !DILocation(line: 692, column: 21, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !411, line: 692, column: 21)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !411, line: 692, column: 21)
!1900 = distinct !DILexicalBlock(scope: !1895, file: !411, line: 692, column: 21)
!1901 = !DILocation(line: 692, column: 21, scope: !1899)
!1902 = !DILocation(line: 692, column: 21, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !411, line: 692, column: 21)
!1904 = distinct !DILexicalBlock(scope: !1900, file: !411, line: 692, column: 21)
!1905 = !DILocation(line: 692, column: 21, scope: !1904)
!1906 = !DILocation(line: 692, column: 21, scope: !1900)
!1907 = !DILocation(line: 0, scope: !1845)
!1908 = !DILocation(line: 693, column: 21, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !411, line: 693, column: 21)
!1910 = distinct !DILexicalBlock(scope: !1845, file: !411, line: 693, column: 21)
!1911 = !DILocation(line: 693, column: 21, scope: !1910)
!1912 = !DILocation(line: 694, column: 25, scope: !1845)
!1913 = !DILocation(line: 676, column: 17, scope: !1846)
!1914 = distinct !{!1914, !1915, !1916}
!1915 = !DILocation(line: 676, column: 17, scope: !1847)
!1916 = !DILocation(line: 695, column: 19, scope: !1847)
!1917 = !DILocation(line: 409, column: 30, scope: !1627)
!1918 = !DILocation(line: 702, column: 34, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1492, file: !411, line: 702, column: 11)
!1920 = !DILocation(line: 704, column: 14, scope: !1919)
!1921 = !DILocation(line: 705, column: 14, scope: !1919)
!1922 = !DILocation(line: 705, column: 35, scope: !1919)
!1923 = !DILocation(line: 705, column: 17, scope: !1919)
!1924 = !DILocation(line: 705, column: 47, scope: !1919)
!1925 = !DILocation(line: 705, column: 65, scope: !1919)
!1926 = !DILocation(line: 706, column: 11, scope: !1919)
!1927 = !DILocation(line: 702, column: 11, scope: !1492)
!1928 = !DILocation(line: 395, column: 15, scope: !1490)
!1929 = !DILocation(line: 709, column: 5, scope: !1492)
!1930 = !DILocation(line: 710, column: 7, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1492, file: !411, line: 710, column: 7)
!1932 = !DILocation(line: 710, column: 7, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1931, file: !411, line: 710, column: 7)
!1934 = !DILocation(line: 710, column: 7, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !411, line: 710, column: 7)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !411, line: 710, column: 7)
!1937 = distinct !DILexicalBlock(scope: !1933, file: !411, line: 710, column: 7)
!1938 = !DILocation(line: 710, column: 7, scope: !1936)
!1939 = !DILocation(line: 710, column: 7, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !411, line: 710, column: 7)
!1941 = distinct !DILexicalBlock(scope: !1937, file: !411, line: 710, column: 7)
!1942 = !DILocation(line: 710, column: 7, scope: !1941)
!1943 = !DILocation(line: 710, column: 7, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !411, line: 710, column: 7)
!1945 = distinct !DILexicalBlock(scope: !1937, file: !411, line: 710, column: 7)
!1946 = !DILocation(line: 710, column: 7, scope: !1945)
!1947 = !DILocation(line: 710, column: 7, scope: !1937)
!1948 = !DILocation(line: 710, column: 7, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !411, line: 710, column: 7)
!1950 = distinct !DILexicalBlock(scope: !1931, file: !411, line: 710, column: 7)
!1951 = !DILocation(line: 710, column: 7, scope: !1950)
!1952 = !DILocation(line: 712, column: 5, scope: !1492)
!1953 = !DILocation(line: 713, column: 7, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !411, line: 713, column: 7)
!1955 = distinct !DILexicalBlock(scope: !1492, file: !411, line: 713, column: 7)
!1956 = !DILocation(line: 417, column: 21, scope: !1492)
!1957 = !DILocation(line: 713, column: 7, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !411, line: 713, column: 7)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !411, line: 713, column: 7)
!1960 = distinct !DILexicalBlock(scope: !1954, file: !411, line: 713, column: 7)
!1961 = !DILocation(line: 713, column: 7, scope: !1959)
!1962 = !DILocation(line: 713, column: 7, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !411, line: 713, column: 7)
!1964 = distinct !DILexicalBlock(scope: !1960, file: !411, line: 713, column: 7)
!1965 = !DILocation(line: 713, column: 7, scope: !1964)
!1966 = !DILocation(line: 713, column: 7, scope: !1960)
!1967 = !DILocation(line: 714, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !411, line: 714, column: 7)
!1969 = distinct !DILexicalBlock(scope: !1492, file: !411, line: 714, column: 7)
!1970 = !DILocation(line: 714, column: 7, scope: !1969)
!1971 = !DILocation(line: 716, column: 11, scope: !1492)
!1972 = !DILocation(line: 718, column: 5, scope: !1493)
!1973 = !DILocation(line: 395, column: 82, scope: !1493)
!1974 = !DILocation(line: 395, column: 3, scope: !1493)
!1975 = distinct !{!1975, !1623, !1976, !794}
!1976 = !DILocation(line: 718, column: 5, scope: !1490)
!1977 = !DILocation(line: 720, column: 11, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1459, file: !411, line: 720, column: 7)
!1979 = !DILocation(line: 720, column: 16, scope: !1978)
!1980 = !DILocation(line: 728, column: 51, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1459, file: !411, line: 728, column: 7)
!1982 = !DILocation(line: 731, column: 11, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1981, file: !411, line: 730, column: 5)
!1984 = !DILocation(line: 732, column: 16, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1983, file: !411, line: 731, column: 11)
!1986 = !DILocation(line: 732, column: 9, scope: !1985)
!1987 = !DILocation(line: 736, column: 18, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1985, file: !411, line: 736, column: 16)
!1989 = !DILocation(line: 736, column: 29, scope: !1988)
!1990 = !DILocation(line: 745, column: 7, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1459, file: !411, line: 745, column: 7)
!1992 = !DILocation(line: 745, column: 20, scope: !1991)
!1993 = !DILocation(line: 746, column: 12, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !411, line: 746, column: 5)
!1995 = distinct !DILexicalBlock(scope: !1991, file: !411, line: 746, column: 5)
!1996 = !DILocation(line: 746, column: 5, scope: !1995)
!1997 = !DILocation(line: 747, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !411, line: 747, column: 7)
!1999 = distinct !DILexicalBlock(scope: !1994, file: !411, line: 747, column: 7)
!2000 = !DILocation(line: 747, column: 7, scope: !1999)
!2001 = !DILocation(line: 746, column: 39, scope: !1994)
!2002 = distinct !{!2002, !1996, !2003, !794}
!2003 = !DILocation(line: 747, column: 7, scope: !1995)
!2004 = !DILocation(line: 749, column: 11, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1459, file: !411, line: 749, column: 7)
!2006 = !DILocation(line: 749, column: 7, scope: !1459)
!2007 = !DILocation(line: 750, column: 5, scope: !2005)
!2008 = !DILocation(line: 750, column: 17, scope: !2005)
!2009 = !DILocation(line: 756, column: 21, scope: !1835)
!2010 = !DILocation(line: 760, column: 42, scope: !1459)
!2011 = !DILocation(line: 758, column: 10, scope: !1459)
!2012 = !DILocation(line: 758, column: 3, scope: !1459)
!2013 = !DILocation(line: 762, column: 1, scope: !1459)
!2014 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !891, file: !891, line: 98, type: !2015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!101}
!2017 = !DISubprogram(name: "strlen", scope: !897, file: !897, line: 407, type: !2018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!103, !75}
!2020 = !DISubprogram(name: "iswprint", scope: !2021, file: !2021, line: 120, type: !1821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!2021 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2022 = distinct !DISubprogram(name: "quotearg_alloc", scope: !411, file: !411, line: 788, type: !2023, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2025)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!97, !75, !101, !1352}
!2025 = !{!2026, !2027, !2028}
!2026 = !DILocalVariable(name: "arg", arg: 1, scope: !2022, file: !411, line: 788, type: !75)
!2027 = !DILocalVariable(name: "argsize", arg: 2, scope: !2022, file: !411, line: 788, type: !101)
!2028 = !DILocalVariable(name: "o", arg: 3, scope: !2022, file: !411, line: 789, type: !1352)
!2029 = !DILocation(line: 0, scope: !2022)
!2030 = !DILocalVariable(name: "arg", arg: 1, scope: !2031, file: !411, line: 801, type: !75)
!2031 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !411, file: !411, line: 801, type: !2032, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2034)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!97, !75, !101, !664, !1352}
!2034 = !{!2030, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042}
!2035 = !DILocalVariable(name: "argsize", arg: 2, scope: !2031, file: !411, line: 801, type: !101)
!2036 = !DILocalVariable(name: "size", arg: 3, scope: !2031, file: !411, line: 801, type: !664)
!2037 = !DILocalVariable(name: "o", arg: 4, scope: !2031, file: !411, line: 802, type: !1352)
!2038 = !DILocalVariable(name: "p", scope: !2031, file: !411, line: 804, type: !1352)
!2039 = !DILocalVariable(name: "saved_errno", scope: !2031, file: !411, line: 805, type: !99)
!2040 = !DILocalVariable(name: "flags", scope: !2031, file: !411, line: 807, type: !99)
!2041 = !DILocalVariable(name: "bufsize", scope: !2031, file: !411, line: 808, type: !101)
!2042 = !DILocalVariable(name: "buf", scope: !2031, file: !411, line: 812, type: !97)
!2043 = !DILocation(line: 0, scope: !2031, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 791, column: 10, scope: !2022)
!2045 = !DILocation(line: 804, column: 37, scope: !2031, inlinedAt: !2044)
!2046 = !DILocation(line: 805, column: 21, scope: !2031, inlinedAt: !2044)
!2047 = !DILocation(line: 807, column: 18, scope: !2031, inlinedAt: !2044)
!2048 = !DILocation(line: 807, column: 24, scope: !2031, inlinedAt: !2044)
!2049 = !DILocation(line: 808, column: 72, scope: !2031, inlinedAt: !2044)
!2050 = !DILocation(line: 809, column: 56, scope: !2031, inlinedAt: !2044)
!2051 = !DILocation(line: 810, column: 49, scope: !2031, inlinedAt: !2044)
!2052 = !DILocation(line: 811, column: 49, scope: !2031, inlinedAt: !2044)
!2053 = !DILocation(line: 808, column: 20, scope: !2031, inlinedAt: !2044)
!2054 = !DILocation(line: 811, column: 62, scope: !2031, inlinedAt: !2044)
!2055 = !DILocation(line: 812, column: 15, scope: !2031, inlinedAt: !2044)
!2056 = !DILocation(line: 813, column: 60, scope: !2031, inlinedAt: !2044)
!2057 = !DILocation(line: 815, column: 32, scope: !2031, inlinedAt: !2044)
!2058 = !DILocation(line: 815, column: 47, scope: !2031, inlinedAt: !2044)
!2059 = !DILocation(line: 813, column: 3, scope: !2031, inlinedAt: !2044)
!2060 = !DILocation(line: 816, column: 9, scope: !2031, inlinedAt: !2044)
!2061 = !DILocation(line: 791, column: 3, scope: !2022)
!2062 = !DILocation(line: 0, scope: !2031)
!2063 = !DILocation(line: 804, column: 37, scope: !2031)
!2064 = !DILocation(line: 805, column: 21, scope: !2031)
!2065 = !DILocation(line: 807, column: 18, scope: !2031)
!2066 = !DILocation(line: 807, column: 27, scope: !2031)
!2067 = !DILocation(line: 807, column: 24, scope: !2031)
!2068 = !DILocation(line: 808, column: 72, scope: !2031)
!2069 = !DILocation(line: 809, column: 56, scope: !2031)
!2070 = !DILocation(line: 810, column: 49, scope: !2031)
!2071 = !DILocation(line: 811, column: 49, scope: !2031)
!2072 = !DILocation(line: 808, column: 20, scope: !2031)
!2073 = !DILocation(line: 811, column: 62, scope: !2031)
!2074 = !DILocation(line: 812, column: 15, scope: !2031)
!2075 = !DILocation(line: 813, column: 60, scope: !2031)
!2076 = !DILocation(line: 815, column: 32, scope: !2031)
!2077 = !DILocation(line: 815, column: 47, scope: !2031)
!2078 = !DILocation(line: 813, column: 3, scope: !2031)
!2079 = !DILocation(line: 816, column: 9, scope: !2031)
!2080 = !DILocation(line: 817, column: 7, scope: !2031)
!2081 = !DILocation(line: 818, column: 11, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2031, file: !411, line: 817, column: 7)
!2083 = !{!1168, !1168, i64 0}
!2084 = !DILocation(line: 818, column: 5, scope: !2082)
!2085 = !DILocation(line: 819, column: 3, scope: !2031)
!2086 = distinct !DISubprogram(name: "quotearg_free", scope: !411, file: !411, line: 837, type: !366, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2087)
!2087 = !{!2088, !2089}
!2088 = !DILocalVariable(name: "sv", scope: !2086, file: !411, line: 839, type: !509)
!2089 = !DILocalVariable(name: "i", scope: !2090, file: !411, line: 840, type: !99)
!2090 = distinct !DILexicalBlock(scope: !2086, file: !411, line: 840, column: 3)
!2091 = !DILocation(line: 839, column: 24, scope: !2086)
!2092 = !DILocation(line: 0, scope: !2086)
!2093 = !DILocation(line: 0, scope: !2090)
!2094 = !DILocation(line: 840, column: 21, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2090, file: !411, line: 840, column: 3)
!2096 = !DILocation(line: 840, column: 3, scope: !2090)
!2097 = !DILocation(line: 842, column: 13, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2086, file: !411, line: 842, column: 7)
!2099 = !{!2100, !726, i64 8}
!2100 = !{!"slotvec", !1168, i64 0, !726, i64 8}
!2101 = !DILocation(line: 842, column: 17, scope: !2098)
!2102 = !DILocation(line: 842, column: 7, scope: !2086)
!2103 = !DILocation(line: 841, column: 17, scope: !2095)
!2104 = !DILocation(line: 841, column: 5, scope: !2095)
!2105 = !DILocation(line: 840, column: 32, scope: !2095)
!2106 = distinct !{!2106, !2096, !2107, !794}
!2107 = !DILocation(line: 841, column: 20, scope: !2090)
!2108 = !DILocation(line: 844, column: 7, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2098, file: !411, line: 843, column: 5)
!2110 = !DILocation(line: 845, column: 21, scope: !2109)
!2111 = !{!2100, !1168, i64 0}
!2112 = !DILocation(line: 846, column: 20, scope: !2109)
!2113 = !DILocation(line: 847, column: 5, scope: !2109)
!2114 = !DILocation(line: 848, column: 10, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2086, file: !411, line: 848, column: 7)
!2116 = !DILocation(line: 848, column: 7, scope: !2086)
!2117 = !DILocation(line: 850, column: 7, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2115, file: !411, line: 849, column: 5)
!2119 = !DILocation(line: 851, column: 15, scope: !2118)
!2120 = !DILocation(line: 852, column: 5, scope: !2118)
!2121 = !DILocation(line: 853, column: 10, scope: !2086)
!2122 = !DILocation(line: 854, column: 1, scope: !2086)
!2123 = !DISubprogram(name: "free", scope: !1306, file: !1306, line: 786, type: !2124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{null, !98}
!2126 = distinct !DISubprogram(name: "quotearg_n", scope: !411, file: !411, line: 919, type: !894, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2127)
!2127 = !{!2128, !2129}
!2128 = !DILocalVariable(name: "n", arg: 1, scope: !2126, file: !411, line: 919, type: !99)
!2129 = !DILocalVariable(name: "arg", arg: 2, scope: !2126, file: !411, line: 919, type: !75)
!2130 = !DILocation(line: 0, scope: !2126)
!2131 = !DILocation(line: 921, column: 10, scope: !2126)
!2132 = !DILocation(line: 921, column: 3, scope: !2126)
!2133 = distinct !DISubprogram(name: "quotearg_n_options", scope: !411, file: !411, line: 866, type: !2134, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2136)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!97, !99, !75, !101, !1352}
!2136 = !{!2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2147, !2148, !2150, !2151, !2152}
!2137 = !DILocalVariable(name: "n", arg: 1, scope: !2133, file: !411, line: 866, type: !99)
!2138 = !DILocalVariable(name: "arg", arg: 2, scope: !2133, file: !411, line: 866, type: !75)
!2139 = !DILocalVariable(name: "argsize", arg: 3, scope: !2133, file: !411, line: 866, type: !101)
!2140 = !DILocalVariable(name: "options", arg: 4, scope: !2133, file: !411, line: 867, type: !1352)
!2141 = !DILocalVariable(name: "saved_errno", scope: !2133, file: !411, line: 869, type: !99)
!2142 = !DILocalVariable(name: "sv", scope: !2133, file: !411, line: 871, type: !509)
!2143 = !DILocalVariable(name: "nslots_max", scope: !2133, file: !411, line: 873, type: !99)
!2144 = !DILocalVariable(name: "preallocated", scope: !2145, file: !411, line: 879, type: !218)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !411, line: 878, column: 5)
!2146 = distinct !DILexicalBlock(scope: !2133, file: !411, line: 877, column: 7)
!2147 = !DILocalVariable(name: "new_nslots", scope: !2145, file: !411, line: 880, type: !677)
!2148 = !DILocalVariable(name: "size", scope: !2149, file: !411, line: 891, type: !101)
!2149 = distinct !DILexicalBlock(scope: !2133, file: !411, line: 890, column: 3)
!2150 = !DILocalVariable(name: "val", scope: !2149, file: !411, line: 892, type: !97)
!2151 = !DILocalVariable(name: "flags", scope: !2149, file: !411, line: 894, type: !99)
!2152 = !DILocalVariable(name: "qsize", scope: !2149, file: !411, line: 895, type: !101)
!2153 = !DILocation(line: 0, scope: !2133)
!2154 = !DILocation(line: 869, column: 21, scope: !2133)
!2155 = !DILocation(line: 871, column: 24, scope: !2133)
!2156 = !DILocation(line: 874, column: 17, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2133, file: !411, line: 874, column: 7)
!2158 = !DILocation(line: 875, column: 5, scope: !2157)
!2159 = !DILocation(line: 877, column: 7, scope: !2146)
!2160 = !DILocation(line: 877, column: 14, scope: !2146)
!2161 = !DILocation(line: 877, column: 7, scope: !2133)
!2162 = !DILocation(line: 879, column: 31, scope: !2145)
!2163 = !DILocation(line: 0, scope: !2145)
!2164 = !DILocation(line: 880, column: 7, scope: !2145)
!2165 = !DILocation(line: 880, column: 26, scope: !2145)
!2166 = !DILocation(line: 880, column: 13, scope: !2145)
!2167 = !DILocation(line: 882, column: 31, scope: !2145)
!2168 = !DILocation(line: 883, column: 33, scope: !2145)
!2169 = !DILocation(line: 883, column: 42, scope: !2145)
!2170 = !DILocation(line: 883, column: 31, scope: !2145)
!2171 = !DILocation(line: 882, column: 22, scope: !2145)
!2172 = !DILocation(line: 882, column: 15, scope: !2145)
!2173 = !DILocation(line: 884, column: 11, scope: !2145)
!2174 = !DILocation(line: 885, column: 15, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2145, file: !411, line: 884, column: 11)
!2176 = !{i64 0, i64 8, !2083, i64 8, i64 8, !725}
!2177 = !DILocation(line: 885, column: 9, scope: !2175)
!2178 = !DILocation(line: 886, column: 20, scope: !2145)
!2179 = !DILocation(line: 886, column: 18, scope: !2145)
!2180 = !DILocation(line: 886, column: 32, scope: !2145)
!2181 = !DILocation(line: 886, column: 43, scope: !2145)
!2182 = !DILocation(line: 886, column: 53, scope: !2145)
!2183 = !DILocation(line: 0, scope: !1562, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 886, column: 7, scope: !2145)
!2185 = !DILocation(line: 59, column: 10, scope: !1562, inlinedAt: !2184)
!2186 = !DILocation(line: 887, column: 16, scope: !2145)
!2187 = !DILocation(line: 887, column: 14, scope: !2145)
!2188 = !DILocation(line: 888, column: 5, scope: !2146)
!2189 = !DILocation(line: 888, column: 5, scope: !2145)
!2190 = !DILocation(line: 891, column: 19, scope: !2149)
!2191 = !DILocation(line: 891, column: 25, scope: !2149)
!2192 = !DILocation(line: 0, scope: !2149)
!2193 = !DILocation(line: 892, column: 23, scope: !2149)
!2194 = !DILocation(line: 894, column: 26, scope: !2149)
!2195 = !DILocation(line: 894, column: 32, scope: !2149)
!2196 = !DILocation(line: 896, column: 55, scope: !2149)
!2197 = !DILocation(line: 897, column: 55, scope: !2149)
!2198 = !DILocation(line: 898, column: 55, scope: !2149)
!2199 = !DILocation(line: 899, column: 55, scope: !2149)
!2200 = !DILocation(line: 895, column: 20, scope: !2149)
!2201 = !DILocation(line: 901, column: 14, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2149, file: !411, line: 901, column: 9)
!2203 = !DILocation(line: 901, column: 9, scope: !2149)
!2204 = !DILocation(line: 903, column: 35, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2202, file: !411, line: 902, column: 7)
!2206 = !DILocation(line: 903, column: 20, scope: !2205)
!2207 = !DILocation(line: 904, column: 17, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2205, file: !411, line: 904, column: 13)
!2209 = !DILocation(line: 904, column: 13, scope: !2205)
!2210 = !DILocation(line: 905, column: 11, scope: !2208)
!2211 = !DILocation(line: 906, column: 27, scope: !2205)
!2212 = !DILocation(line: 906, column: 19, scope: !2205)
!2213 = !DILocation(line: 907, column: 69, scope: !2205)
!2214 = !DILocation(line: 909, column: 44, scope: !2205)
!2215 = !DILocation(line: 910, column: 44, scope: !2205)
!2216 = !DILocation(line: 907, column: 9, scope: !2205)
!2217 = !DILocation(line: 911, column: 7, scope: !2205)
!2218 = !DILocation(line: 913, column: 11, scope: !2149)
!2219 = !DILocation(line: 914, column: 5, scope: !2149)
!2220 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !411, file: !411, line: 925, type: !2221, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!97, !99, !75, !101}
!2223 = !{!2224, !2225, !2226}
!2224 = !DILocalVariable(name: "n", arg: 1, scope: !2220, file: !411, line: 925, type: !99)
!2225 = !DILocalVariable(name: "arg", arg: 2, scope: !2220, file: !411, line: 925, type: !75)
!2226 = !DILocalVariable(name: "argsize", arg: 3, scope: !2220, file: !411, line: 925, type: !101)
!2227 = !DILocation(line: 0, scope: !2220)
!2228 = !DILocation(line: 927, column: 10, scope: !2220)
!2229 = !DILocation(line: 927, column: 3, scope: !2220)
!2230 = distinct !DISubprogram(name: "quotearg", scope: !411, file: !411, line: 931, type: !905, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2231)
!2231 = !{!2232}
!2232 = !DILocalVariable(name: "arg", arg: 1, scope: !2230, file: !411, line: 931, type: !75)
!2233 = !DILocation(line: 0, scope: !2230)
!2234 = !DILocation(line: 0, scope: !2126, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 933, column: 10, scope: !2230)
!2236 = !DILocation(line: 921, column: 10, scope: !2126, inlinedAt: !2235)
!2237 = !DILocation(line: 933, column: 3, scope: !2230)
!2238 = distinct !DISubprogram(name: "quotearg_mem", scope: !411, file: !411, line: 937, type: !2239, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!97, !75, !101}
!2241 = !{!2242, !2243}
!2242 = !DILocalVariable(name: "arg", arg: 1, scope: !2238, file: !411, line: 937, type: !75)
!2243 = !DILocalVariable(name: "argsize", arg: 2, scope: !2238, file: !411, line: 937, type: !101)
!2244 = !DILocation(line: 0, scope: !2238)
!2245 = !DILocation(line: 0, scope: !2220, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 939, column: 10, scope: !2238)
!2247 = !DILocation(line: 927, column: 10, scope: !2220, inlinedAt: !2246)
!2248 = !DILocation(line: 939, column: 3, scope: !2238)
!2249 = distinct !DISubprogram(name: "quotearg_n_style", scope: !411, file: !411, line: 943, type: !2250, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2252)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!97, !99, !434, !75}
!2252 = !{!2253, !2254, !2255, !2256}
!2253 = !DILocalVariable(name: "n", arg: 1, scope: !2249, file: !411, line: 943, type: !99)
!2254 = !DILocalVariable(name: "s", arg: 2, scope: !2249, file: !411, line: 943, type: !434)
!2255 = !DILocalVariable(name: "arg", arg: 3, scope: !2249, file: !411, line: 943, type: !75)
!2256 = !DILocalVariable(name: "o", scope: !2249, file: !411, line: 945, type: !1353)
!2257 = !DILocation(line: 0, scope: !2249)
!2258 = !DILocation(line: 945, column: 3, scope: !2249)
!2259 = !DILocation(line: 945, column: 32, scope: !2249)
!2260 = !{!2261}
!2261 = distinct !{!2261, !2262, !"quoting_options_from_style: argument 0"}
!2262 = distinct !{!2262, !"quoting_options_from_style"}
!2263 = !DILocation(line: 945, column: 36, scope: !2249)
!2264 = !DILocalVariable(name: "style", arg: 1, scope: !2265, file: !411, line: 183, type: !434)
!2265 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !411, file: !411, line: 183, type: !2266, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!461, !434}
!2268 = !{!2264, !2269}
!2269 = !DILocalVariable(name: "o", scope: !2265, file: !411, line: 185, type: !461)
!2270 = !DILocation(line: 0, scope: !2265, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 945, column: 36, scope: !2249)
!2272 = !DILocation(line: 185, column: 26, scope: !2265, inlinedAt: !2271)
!2273 = !DILocation(line: 186, column: 13, scope: !2274, inlinedAt: !2271)
!2274 = distinct !DILexicalBlock(scope: !2265, file: !411, line: 186, column: 7)
!2275 = !DILocation(line: 186, column: 7, scope: !2265, inlinedAt: !2271)
!2276 = !DILocation(line: 187, column: 5, scope: !2274, inlinedAt: !2271)
!2277 = !DILocation(line: 188, column: 11, scope: !2265, inlinedAt: !2271)
!2278 = !DILocation(line: 946, column: 10, scope: !2249)
!2279 = !DILocation(line: 947, column: 1, scope: !2249)
!2280 = !DILocation(line: 946, column: 3, scope: !2249)
!2281 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !411, file: !411, line: 950, type: !2282, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2284)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!97, !99, !434, !75, !101}
!2284 = !{!2285, !2286, !2287, !2288, !2289}
!2285 = !DILocalVariable(name: "n", arg: 1, scope: !2281, file: !411, line: 950, type: !99)
!2286 = !DILocalVariable(name: "s", arg: 2, scope: !2281, file: !411, line: 950, type: !434)
!2287 = !DILocalVariable(name: "arg", arg: 3, scope: !2281, file: !411, line: 951, type: !75)
!2288 = !DILocalVariable(name: "argsize", arg: 4, scope: !2281, file: !411, line: 951, type: !101)
!2289 = !DILocalVariable(name: "o", scope: !2281, file: !411, line: 953, type: !1353)
!2290 = !DILocation(line: 0, scope: !2281)
!2291 = !DILocation(line: 953, column: 3, scope: !2281)
!2292 = !DILocation(line: 953, column: 32, scope: !2281)
!2293 = !{!2294}
!2294 = distinct !{!2294, !2295, !"quoting_options_from_style: argument 0"}
!2295 = distinct !{!2295, !"quoting_options_from_style"}
!2296 = !DILocation(line: 953, column: 36, scope: !2281)
!2297 = !DILocation(line: 0, scope: !2265, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 953, column: 36, scope: !2281)
!2299 = !DILocation(line: 185, column: 26, scope: !2265, inlinedAt: !2298)
!2300 = !DILocation(line: 186, column: 13, scope: !2274, inlinedAt: !2298)
!2301 = !DILocation(line: 186, column: 7, scope: !2265, inlinedAt: !2298)
!2302 = !DILocation(line: 187, column: 5, scope: !2274, inlinedAt: !2298)
!2303 = !DILocation(line: 188, column: 11, scope: !2265, inlinedAt: !2298)
!2304 = !DILocation(line: 954, column: 10, scope: !2281)
!2305 = !DILocation(line: 955, column: 1, scope: !2281)
!2306 = !DILocation(line: 954, column: 3, scope: !2281)
!2307 = distinct !DISubprogram(name: "quotearg_style", scope: !411, file: !411, line: 958, type: !2308, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2310)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!97, !434, !75}
!2310 = !{!2311, !2312}
!2311 = !DILocalVariable(name: "s", arg: 1, scope: !2307, file: !411, line: 958, type: !434)
!2312 = !DILocalVariable(name: "arg", arg: 2, scope: !2307, file: !411, line: 958, type: !75)
!2313 = !DILocation(line: 0, scope: !2307)
!2314 = !DILocation(line: 0, scope: !2249, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 960, column: 10, scope: !2307)
!2316 = !DILocation(line: 945, column: 3, scope: !2249, inlinedAt: !2315)
!2317 = !DILocation(line: 945, column: 32, scope: !2249, inlinedAt: !2315)
!2318 = !{!2319}
!2319 = distinct !{!2319, !2320, !"quoting_options_from_style: argument 0"}
!2320 = distinct !{!2320, !"quoting_options_from_style"}
!2321 = !DILocation(line: 945, column: 36, scope: !2249, inlinedAt: !2315)
!2322 = !DILocation(line: 0, scope: !2265, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 945, column: 36, scope: !2249, inlinedAt: !2315)
!2324 = !DILocation(line: 185, column: 26, scope: !2265, inlinedAt: !2323)
!2325 = !DILocation(line: 186, column: 13, scope: !2274, inlinedAt: !2323)
!2326 = !DILocation(line: 186, column: 7, scope: !2265, inlinedAt: !2323)
!2327 = !DILocation(line: 187, column: 5, scope: !2274, inlinedAt: !2323)
!2328 = !DILocation(line: 188, column: 11, scope: !2265, inlinedAt: !2323)
!2329 = !DILocation(line: 946, column: 10, scope: !2249, inlinedAt: !2315)
!2330 = !DILocation(line: 947, column: 1, scope: !2249, inlinedAt: !2315)
!2331 = !DILocation(line: 960, column: 3, scope: !2307)
!2332 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !411, file: !411, line: 964, type: !2333, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!97, !434, !75, !101}
!2335 = !{!2336, !2337, !2338}
!2336 = !DILocalVariable(name: "s", arg: 1, scope: !2332, file: !411, line: 964, type: !434)
!2337 = !DILocalVariable(name: "arg", arg: 2, scope: !2332, file: !411, line: 964, type: !75)
!2338 = !DILocalVariable(name: "argsize", arg: 3, scope: !2332, file: !411, line: 964, type: !101)
!2339 = !DILocation(line: 0, scope: !2332)
!2340 = !DILocation(line: 0, scope: !2281, inlinedAt: !2341)
!2341 = distinct !DILocation(line: 966, column: 10, scope: !2332)
!2342 = !DILocation(line: 953, column: 3, scope: !2281, inlinedAt: !2341)
!2343 = !DILocation(line: 953, column: 32, scope: !2281, inlinedAt: !2341)
!2344 = !{!2345}
!2345 = distinct !{!2345, !2346, !"quoting_options_from_style: argument 0"}
!2346 = distinct !{!2346, !"quoting_options_from_style"}
!2347 = !DILocation(line: 953, column: 36, scope: !2281, inlinedAt: !2341)
!2348 = !DILocation(line: 0, scope: !2265, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 953, column: 36, scope: !2281, inlinedAt: !2341)
!2350 = !DILocation(line: 185, column: 26, scope: !2265, inlinedAt: !2349)
!2351 = !DILocation(line: 186, column: 13, scope: !2274, inlinedAt: !2349)
!2352 = !DILocation(line: 186, column: 7, scope: !2265, inlinedAt: !2349)
!2353 = !DILocation(line: 187, column: 5, scope: !2274, inlinedAt: !2349)
!2354 = !DILocation(line: 188, column: 11, scope: !2265, inlinedAt: !2349)
!2355 = !DILocation(line: 954, column: 10, scope: !2281, inlinedAt: !2341)
!2356 = !DILocation(line: 955, column: 1, scope: !2281, inlinedAt: !2341)
!2357 = !DILocation(line: 966, column: 3, scope: !2332)
!2358 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !411, file: !411, line: 970, type: !2359, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!97, !75, !101, !4}
!2361 = !{!2362, !2363, !2364, !2365}
!2362 = !DILocalVariable(name: "arg", arg: 1, scope: !2358, file: !411, line: 970, type: !75)
!2363 = !DILocalVariable(name: "argsize", arg: 2, scope: !2358, file: !411, line: 970, type: !101)
!2364 = !DILocalVariable(name: "ch", arg: 3, scope: !2358, file: !411, line: 970, type: !4)
!2365 = !DILocalVariable(name: "options", scope: !2358, file: !411, line: 972, type: !461)
!2366 = !DILocation(line: 0, scope: !2358)
!2367 = !DILocation(line: 972, column: 3, scope: !2358)
!2368 = !DILocation(line: 972, column: 26, scope: !2358)
!2369 = !DILocation(line: 973, column: 13, scope: !2358)
!2370 = !{i64 0, i64 4, !756, i64 4, i64 4, !747, i64 8, i64 32, !756, i64 40, i64 8, !725, i64 48, i64 8, !725}
!2371 = !DILocation(line: 0, scope: !1372, inlinedAt: !2372)
!2372 = distinct !DILocation(line: 974, column: 3, scope: !2358)
!2373 = !DILocation(line: 147, column: 41, scope: !1372, inlinedAt: !2372)
!2374 = !DILocation(line: 147, column: 62, scope: !1372, inlinedAt: !2372)
!2375 = !DILocation(line: 147, column: 57, scope: !1372, inlinedAt: !2372)
!2376 = !DILocation(line: 148, column: 15, scope: !1372, inlinedAt: !2372)
!2377 = !DILocation(line: 149, column: 21, scope: !1372, inlinedAt: !2372)
!2378 = !DILocation(line: 149, column: 24, scope: !1372, inlinedAt: !2372)
!2379 = !DILocation(line: 150, column: 19, scope: !1372, inlinedAt: !2372)
!2380 = !DILocation(line: 150, column: 24, scope: !1372, inlinedAt: !2372)
!2381 = !DILocation(line: 150, column: 6, scope: !1372, inlinedAt: !2372)
!2382 = !DILocation(line: 975, column: 10, scope: !2358)
!2383 = !DILocation(line: 976, column: 1, scope: !2358)
!2384 = !DILocation(line: 975, column: 3, scope: !2358)
!2385 = distinct !DISubprogram(name: "quotearg_char", scope: !411, file: !411, line: 979, type: !2386, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2388)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!97, !75, !4}
!2388 = !{!2389, !2390}
!2389 = !DILocalVariable(name: "arg", arg: 1, scope: !2385, file: !411, line: 979, type: !75)
!2390 = !DILocalVariable(name: "ch", arg: 2, scope: !2385, file: !411, line: 979, type: !4)
!2391 = !DILocation(line: 0, scope: !2385)
!2392 = !DILocation(line: 0, scope: !2358, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 981, column: 10, scope: !2385)
!2394 = !DILocation(line: 972, column: 3, scope: !2358, inlinedAt: !2393)
!2395 = !DILocation(line: 972, column: 26, scope: !2358, inlinedAt: !2393)
!2396 = !DILocation(line: 973, column: 13, scope: !2358, inlinedAt: !2393)
!2397 = !DILocation(line: 0, scope: !1372, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 974, column: 3, scope: !2358, inlinedAt: !2393)
!2399 = !DILocation(line: 147, column: 41, scope: !1372, inlinedAt: !2398)
!2400 = !DILocation(line: 147, column: 62, scope: !1372, inlinedAt: !2398)
!2401 = !DILocation(line: 147, column: 57, scope: !1372, inlinedAt: !2398)
!2402 = !DILocation(line: 148, column: 15, scope: !1372, inlinedAt: !2398)
!2403 = !DILocation(line: 149, column: 21, scope: !1372, inlinedAt: !2398)
!2404 = !DILocation(line: 149, column: 24, scope: !1372, inlinedAt: !2398)
!2405 = !DILocation(line: 150, column: 19, scope: !1372, inlinedAt: !2398)
!2406 = !DILocation(line: 150, column: 24, scope: !1372, inlinedAt: !2398)
!2407 = !DILocation(line: 150, column: 6, scope: !1372, inlinedAt: !2398)
!2408 = !DILocation(line: 975, column: 10, scope: !2358, inlinedAt: !2393)
!2409 = !DILocation(line: 976, column: 1, scope: !2358, inlinedAt: !2393)
!2410 = !DILocation(line: 981, column: 3, scope: !2385)
!2411 = distinct !DISubprogram(name: "quotearg_colon", scope: !411, file: !411, line: 985, type: !905, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2412)
!2412 = !{!2413}
!2413 = !DILocalVariable(name: "arg", arg: 1, scope: !2411, file: !411, line: 985, type: !75)
!2414 = !DILocation(line: 0, scope: !2411)
!2415 = !DILocation(line: 0, scope: !2385, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 987, column: 10, scope: !2411)
!2417 = !DILocation(line: 0, scope: !2358, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 981, column: 10, scope: !2385, inlinedAt: !2416)
!2419 = !DILocation(line: 972, column: 3, scope: !2358, inlinedAt: !2418)
!2420 = !DILocation(line: 972, column: 26, scope: !2358, inlinedAt: !2418)
!2421 = !DILocation(line: 973, column: 13, scope: !2358, inlinedAt: !2418)
!2422 = !DILocation(line: 0, scope: !1372, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 974, column: 3, scope: !2358, inlinedAt: !2418)
!2424 = !DILocation(line: 147, column: 57, scope: !1372, inlinedAt: !2423)
!2425 = !DILocation(line: 149, column: 21, scope: !1372, inlinedAt: !2423)
!2426 = !DILocation(line: 150, column: 6, scope: !1372, inlinedAt: !2423)
!2427 = !DILocation(line: 975, column: 10, scope: !2358, inlinedAt: !2418)
!2428 = !DILocation(line: 976, column: 1, scope: !2358, inlinedAt: !2418)
!2429 = !DILocation(line: 987, column: 3, scope: !2411)
!2430 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !411, file: !411, line: 991, type: !2239, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2431)
!2431 = !{!2432, !2433}
!2432 = !DILocalVariable(name: "arg", arg: 1, scope: !2430, file: !411, line: 991, type: !75)
!2433 = !DILocalVariable(name: "argsize", arg: 2, scope: !2430, file: !411, line: 991, type: !101)
!2434 = !DILocation(line: 0, scope: !2430)
!2435 = !DILocation(line: 0, scope: !2358, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 993, column: 10, scope: !2430)
!2437 = !DILocation(line: 972, column: 3, scope: !2358, inlinedAt: !2436)
!2438 = !DILocation(line: 972, column: 26, scope: !2358, inlinedAt: !2436)
!2439 = !DILocation(line: 973, column: 13, scope: !2358, inlinedAt: !2436)
!2440 = !DILocation(line: 0, scope: !1372, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 974, column: 3, scope: !2358, inlinedAt: !2436)
!2442 = !DILocation(line: 147, column: 57, scope: !1372, inlinedAt: !2441)
!2443 = !DILocation(line: 149, column: 21, scope: !1372, inlinedAt: !2441)
!2444 = !DILocation(line: 150, column: 6, scope: !1372, inlinedAt: !2441)
!2445 = !DILocation(line: 975, column: 10, scope: !2358, inlinedAt: !2436)
!2446 = !DILocation(line: 976, column: 1, scope: !2358, inlinedAt: !2436)
!2447 = !DILocation(line: 993, column: 3, scope: !2430)
!2448 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !411, file: !411, line: 997, type: !2250, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2449)
!2449 = !{!2450, !2451, !2452, !2453}
!2450 = !DILocalVariable(name: "n", arg: 1, scope: !2448, file: !411, line: 997, type: !99)
!2451 = !DILocalVariable(name: "s", arg: 2, scope: !2448, file: !411, line: 997, type: !434)
!2452 = !DILocalVariable(name: "arg", arg: 3, scope: !2448, file: !411, line: 997, type: !75)
!2453 = !DILocalVariable(name: "options", scope: !2448, file: !411, line: 999, type: !461)
!2454 = !DILocation(line: 185, column: 26, scope: !2265, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 1000, column: 13, scope: !2448)
!2456 = !DILocation(line: 0, scope: !2448)
!2457 = !DILocation(line: 999, column: 3, scope: !2448)
!2458 = !DILocation(line: 999, column: 26, scope: !2448)
!2459 = !DILocation(line: 0, scope: !2265, inlinedAt: !2455)
!2460 = !DILocation(line: 186, column: 13, scope: !2274, inlinedAt: !2455)
!2461 = !DILocation(line: 186, column: 7, scope: !2265, inlinedAt: !2455)
!2462 = !DILocation(line: 187, column: 5, scope: !2274, inlinedAt: !2455)
!2463 = !{!2464}
!2464 = distinct !{!2464, !2465, !"quoting_options_from_style: argument 0"}
!2465 = distinct !{!2465, !"quoting_options_from_style"}
!2466 = !DILocation(line: 1000, column: 13, scope: !2448)
!2467 = !DILocation(line: 0, scope: !1372, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 1001, column: 3, scope: !2448)
!2469 = !DILocation(line: 147, column: 57, scope: !1372, inlinedAt: !2468)
!2470 = !DILocation(line: 149, column: 21, scope: !1372, inlinedAt: !2468)
!2471 = !DILocation(line: 150, column: 6, scope: !1372, inlinedAt: !2468)
!2472 = !DILocation(line: 1002, column: 10, scope: !2448)
!2473 = !DILocation(line: 1003, column: 1, scope: !2448)
!2474 = !DILocation(line: 1002, column: 3, scope: !2448)
!2475 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !411, file: !411, line: 1006, type: !2476, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2478)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!97, !99, !75, !75, !75}
!2478 = !{!2479, !2480, !2481, !2482}
!2479 = !DILocalVariable(name: "n", arg: 1, scope: !2475, file: !411, line: 1006, type: !99)
!2480 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2475, file: !411, line: 1006, type: !75)
!2481 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2475, file: !411, line: 1007, type: !75)
!2482 = !DILocalVariable(name: "arg", arg: 4, scope: !2475, file: !411, line: 1007, type: !75)
!2483 = !DILocation(line: 0, scope: !2475)
!2484 = !DILocalVariable(name: "n", arg: 1, scope: !2485, file: !411, line: 1014, type: !99)
!2485 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !411, file: !411, line: 1014, type: !2486, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!97, !99, !75, !75, !75, !101}
!2488 = !{!2484, !2489, !2490, !2491, !2492, !2493}
!2489 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2485, file: !411, line: 1014, type: !75)
!2490 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2485, file: !411, line: 1015, type: !75)
!2491 = !DILocalVariable(name: "arg", arg: 4, scope: !2485, file: !411, line: 1016, type: !75)
!2492 = !DILocalVariable(name: "argsize", arg: 5, scope: !2485, file: !411, line: 1016, type: !101)
!2493 = !DILocalVariable(name: "o", scope: !2485, file: !411, line: 1018, type: !461)
!2494 = !DILocation(line: 0, scope: !2485, inlinedAt: !2495)
!2495 = distinct !DILocation(line: 1009, column: 10, scope: !2475)
!2496 = !DILocation(line: 1018, column: 3, scope: !2485, inlinedAt: !2495)
!2497 = !DILocation(line: 1018, column: 26, scope: !2485, inlinedAt: !2495)
!2498 = !DILocation(line: 1018, column: 30, scope: !2485, inlinedAt: !2495)
!2499 = !DILocation(line: 0, scope: !1412, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 1019, column: 3, scope: !2485, inlinedAt: !2495)
!2501 = !DILocation(line: 174, column: 12, scope: !1412, inlinedAt: !2500)
!2502 = !DILocation(line: 175, column: 8, scope: !1425, inlinedAt: !2500)
!2503 = !DILocation(line: 175, column: 19, scope: !1425, inlinedAt: !2500)
!2504 = !DILocation(line: 176, column: 5, scope: !1425, inlinedAt: !2500)
!2505 = !DILocation(line: 177, column: 6, scope: !1412, inlinedAt: !2500)
!2506 = !DILocation(line: 177, column: 17, scope: !1412, inlinedAt: !2500)
!2507 = !DILocation(line: 178, column: 6, scope: !1412, inlinedAt: !2500)
!2508 = !DILocation(line: 178, column: 18, scope: !1412, inlinedAt: !2500)
!2509 = !DILocation(line: 1020, column: 10, scope: !2485, inlinedAt: !2495)
!2510 = !DILocation(line: 1021, column: 1, scope: !2485, inlinedAt: !2495)
!2511 = !DILocation(line: 1009, column: 3, scope: !2475)
!2512 = !DILocation(line: 0, scope: !2485)
!2513 = !DILocation(line: 1018, column: 3, scope: !2485)
!2514 = !DILocation(line: 1018, column: 26, scope: !2485)
!2515 = !DILocation(line: 1018, column: 30, scope: !2485)
!2516 = !DILocation(line: 0, scope: !1412, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 1019, column: 3, scope: !2485)
!2518 = !DILocation(line: 174, column: 12, scope: !1412, inlinedAt: !2517)
!2519 = !DILocation(line: 175, column: 8, scope: !1425, inlinedAt: !2517)
!2520 = !DILocation(line: 175, column: 19, scope: !1425, inlinedAt: !2517)
!2521 = !DILocation(line: 176, column: 5, scope: !1425, inlinedAt: !2517)
!2522 = !DILocation(line: 177, column: 6, scope: !1412, inlinedAt: !2517)
!2523 = !DILocation(line: 177, column: 17, scope: !1412, inlinedAt: !2517)
!2524 = !DILocation(line: 178, column: 6, scope: !1412, inlinedAt: !2517)
!2525 = !DILocation(line: 178, column: 18, scope: !1412, inlinedAt: !2517)
!2526 = !DILocation(line: 1020, column: 10, scope: !2485)
!2527 = !DILocation(line: 1021, column: 1, scope: !2485)
!2528 = !DILocation(line: 1020, column: 3, scope: !2485)
!2529 = distinct !DISubprogram(name: "quotearg_custom", scope: !411, file: !411, line: 1024, type: !2530, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!97, !75, !75, !75}
!2532 = !{!2533, !2534, !2535}
!2533 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2529, file: !411, line: 1024, type: !75)
!2534 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2529, file: !411, line: 1024, type: !75)
!2535 = !DILocalVariable(name: "arg", arg: 3, scope: !2529, file: !411, line: 1025, type: !75)
!2536 = !DILocation(line: 0, scope: !2529)
!2537 = !DILocation(line: 0, scope: !2475, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 1027, column: 10, scope: !2529)
!2539 = !DILocation(line: 0, scope: !2485, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 1009, column: 10, scope: !2475, inlinedAt: !2538)
!2541 = !DILocation(line: 1018, column: 3, scope: !2485, inlinedAt: !2540)
!2542 = !DILocation(line: 1018, column: 26, scope: !2485, inlinedAt: !2540)
!2543 = !DILocation(line: 1018, column: 30, scope: !2485, inlinedAt: !2540)
!2544 = !DILocation(line: 0, scope: !1412, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 1019, column: 3, scope: !2485, inlinedAt: !2540)
!2546 = !DILocation(line: 174, column: 12, scope: !1412, inlinedAt: !2545)
!2547 = !DILocation(line: 175, column: 8, scope: !1425, inlinedAt: !2545)
!2548 = !DILocation(line: 175, column: 19, scope: !1425, inlinedAt: !2545)
!2549 = !DILocation(line: 176, column: 5, scope: !1425, inlinedAt: !2545)
!2550 = !DILocation(line: 177, column: 6, scope: !1412, inlinedAt: !2545)
!2551 = !DILocation(line: 177, column: 17, scope: !1412, inlinedAt: !2545)
!2552 = !DILocation(line: 178, column: 6, scope: !1412, inlinedAt: !2545)
!2553 = !DILocation(line: 178, column: 18, scope: !1412, inlinedAt: !2545)
!2554 = !DILocation(line: 1020, column: 10, scope: !2485, inlinedAt: !2540)
!2555 = !DILocation(line: 1021, column: 1, scope: !2485, inlinedAt: !2540)
!2556 = !DILocation(line: 1027, column: 3, scope: !2529)
!2557 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !411, file: !411, line: 1031, type: !2558, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2560)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!97, !75, !75, !75, !101}
!2560 = !{!2561, !2562, !2563, !2564}
!2561 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2557, file: !411, line: 1031, type: !75)
!2562 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2557, file: !411, line: 1031, type: !75)
!2563 = !DILocalVariable(name: "arg", arg: 3, scope: !2557, file: !411, line: 1032, type: !75)
!2564 = !DILocalVariable(name: "argsize", arg: 4, scope: !2557, file: !411, line: 1032, type: !101)
!2565 = !DILocation(line: 0, scope: !2557)
!2566 = !DILocation(line: 0, scope: !2485, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 1034, column: 10, scope: !2557)
!2568 = !DILocation(line: 1018, column: 3, scope: !2485, inlinedAt: !2567)
!2569 = !DILocation(line: 1018, column: 26, scope: !2485, inlinedAt: !2567)
!2570 = !DILocation(line: 1018, column: 30, scope: !2485, inlinedAt: !2567)
!2571 = !DILocation(line: 0, scope: !1412, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 1019, column: 3, scope: !2485, inlinedAt: !2567)
!2573 = !DILocation(line: 174, column: 12, scope: !1412, inlinedAt: !2572)
!2574 = !DILocation(line: 175, column: 8, scope: !1425, inlinedAt: !2572)
!2575 = !DILocation(line: 175, column: 19, scope: !1425, inlinedAt: !2572)
!2576 = !DILocation(line: 176, column: 5, scope: !1425, inlinedAt: !2572)
!2577 = !DILocation(line: 177, column: 6, scope: !1412, inlinedAt: !2572)
!2578 = !DILocation(line: 177, column: 17, scope: !1412, inlinedAt: !2572)
!2579 = !DILocation(line: 178, column: 6, scope: !1412, inlinedAt: !2572)
!2580 = !DILocation(line: 178, column: 18, scope: !1412, inlinedAt: !2572)
!2581 = !DILocation(line: 1020, column: 10, scope: !2485, inlinedAt: !2567)
!2582 = !DILocation(line: 1021, column: 1, scope: !2485, inlinedAt: !2567)
!2583 = !DILocation(line: 1034, column: 3, scope: !2557)
!2584 = distinct !DISubprogram(name: "quote_n_mem", scope: !411, file: !411, line: 1049, type: !2585, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2587)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!75, !99, !75, !101}
!2587 = !{!2588, !2589, !2590}
!2588 = !DILocalVariable(name: "n", arg: 1, scope: !2584, file: !411, line: 1049, type: !99)
!2589 = !DILocalVariable(name: "arg", arg: 2, scope: !2584, file: !411, line: 1049, type: !75)
!2590 = !DILocalVariable(name: "argsize", arg: 3, scope: !2584, file: !411, line: 1049, type: !101)
!2591 = !DILocation(line: 0, scope: !2584)
!2592 = !DILocation(line: 1051, column: 10, scope: !2584)
!2593 = !DILocation(line: 1051, column: 3, scope: !2584)
!2594 = distinct !DISubprogram(name: "quote_mem", scope: !411, file: !411, line: 1055, type: !2595, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2597)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!75, !75, !101}
!2597 = !{!2598, !2599}
!2598 = !DILocalVariable(name: "arg", arg: 1, scope: !2594, file: !411, line: 1055, type: !75)
!2599 = !DILocalVariable(name: "argsize", arg: 2, scope: !2594, file: !411, line: 1055, type: !101)
!2600 = !DILocation(line: 0, scope: !2594)
!2601 = !DILocation(line: 0, scope: !2584, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 1057, column: 10, scope: !2594)
!2603 = !DILocation(line: 1051, column: 10, scope: !2584, inlinedAt: !2602)
!2604 = !DILocation(line: 1057, column: 3, scope: !2594)
!2605 = distinct !DISubprogram(name: "quote_n", scope: !411, file: !411, line: 1061, type: !2606, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!75, !99, !75}
!2608 = !{!2609, !2610}
!2609 = !DILocalVariable(name: "n", arg: 1, scope: !2605, file: !411, line: 1061, type: !99)
!2610 = !DILocalVariable(name: "arg", arg: 2, scope: !2605, file: !411, line: 1061, type: !75)
!2611 = !DILocation(line: 0, scope: !2605)
!2612 = !DILocation(line: 0, scope: !2584, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 1063, column: 10, scope: !2605)
!2614 = !DILocation(line: 1051, column: 10, scope: !2584, inlinedAt: !2613)
!2615 = !DILocation(line: 1063, column: 3, scope: !2605)
!2616 = distinct !DISubprogram(name: "quote", scope: !411, file: !411, line: 1067, type: !2617, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2619)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!75, !75}
!2619 = !{!2620}
!2620 = !DILocalVariable(name: "arg", arg: 1, scope: !2616, file: !411, line: 1067, type: !75)
!2621 = !DILocation(line: 0, scope: !2616)
!2622 = !DILocation(line: 0, scope: !2605, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 1069, column: 10, scope: !2616)
!2624 = !DILocation(line: 0, scope: !2584, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 1063, column: 10, scope: !2605, inlinedAt: !2623)
!2626 = !DILocation(line: 1051, column: 10, scope: !2584, inlinedAt: !2625)
!2627 = !DILocation(line: 1069, column: 3, scope: !2616)
!2628 = distinct !DISubprogram(name: "version_etc_arn", scope: !524, file: !524, line: 61, type: !2629, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2666)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{null, !2631, !75, !75, !75, !2665, !101}
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !2633)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !2634)
!2634 = !{!2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2633, file: !235, line: 51, baseType: !99, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2633, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2633, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2633, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2633, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2633, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2633, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2633, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2633, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2633, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2633, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2633, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2633, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2633, file: !235, line: 70, baseType: !2649, size: 64, offset: 832)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2633, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2633, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2633, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2633, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2633, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2633, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2633, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2633, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2633, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2633, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2633, file: !235, line: 93, baseType: !2649, size: 64, offset: 1344)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2633, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2633, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2633, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2633, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!2666 = !{!2667, !2668, !2669, !2670, !2671, !2672}
!2667 = !DILocalVariable(name: "stream", arg: 1, scope: !2628, file: !524, line: 61, type: !2631)
!2668 = !DILocalVariable(name: "command_name", arg: 2, scope: !2628, file: !524, line: 62, type: !75)
!2669 = !DILocalVariable(name: "package", arg: 3, scope: !2628, file: !524, line: 62, type: !75)
!2670 = !DILocalVariable(name: "version", arg: 4, scope: !2628, file: !524, line: 63, type: !75)
!2671 = !DILocalVariable(name: "authors", arg: 5, scope: !2628, file: !524, line: 64, type: !2665)
!2672 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2628, file: !524, line: 64, type: !101)
!2673 = !DILocation(line: 0, scope: !2628)
!2674 = !DILocation(line: 66, column: 7, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2628, file: !524, line: 66, column: 7)
!2676 = !DILocation(line: 66, column: 7, scope: !2628)
!2677 = !DILocation(line: 67, column: 5, scope: !2675)
!2678 = !DILocation(line: 69, column: 5, scope: !2675)
!2679 = !DILocation(line: 83, column: 3, scope: !2628)
!2680 = !DILocation(line: 85, column: 3, scope: !2628)
!2681 = !DILocation(line: 88, column: 3, scope: !2628)
!2682 = !DILocation(line: 95, column: 3, scope: !2628)
!2683 = !DILocation(line: 97, column: 3, scope: !2628)
!2684 = !DILocation(line: 105, column: 7, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2628, file: !524, line: 98, column: 5)
!2686 = !DILocation(line: 106, column: 7, scope: !2685)
!2687 = !DILocation(line: 109, column: 7, scope: !2685)
!2688 = !DILocation(line: 110, column: 7, scope: !2685)
!2689 = !DILocation(line: 113, column: 7, scope: !2685)
!2690 = !DILocation(line: 115, column: 7, scope: !2685)
!2691 = !DILocation(line: 120, column: 7, scope: !2685)
!2692 = !DILocation(line: 122, column: 7, scope: !2685)
!2693 = !DILocation(line: 127, column: 7, scope: !2685)
!2694 = !DILocation(line: 129, column: 7, scope: !2685)
!2695 = !DILocation(line: 134, column: 7, scope: !2685)
!2696 = !DILocation(line: 137, column: 7, scope: !2685)
!2697 = !DILocation(line: 142, column: 7, scope: !2685)
!2698 = !DILocation(line: 145, column: 7, scope: !2685)
!2699 = !DILocation(line: 150, column: 7, scope: !2685)
!2700 = !DILocation(line: 154, column: 7, scope: !2685)
!2701 = !DILocation(line: 159, column: 7, scope: !2685)
!2702 = !DILocation(line: 163, column: 7, scope: !2685)
!2703 = !DILocation(line: 170, column: 7, scope: !2685)
!2704 = !DILocation(line: 174, column: 7, scope: !2685)
!2705 = !DILocation(line: 176, column: 1, scope: !2628)
!2706 = distinct !DISubprogram(name: "version_etc_ar", scope: !524, file: !524, line: 183, type: !2707, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2709)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{null, !2631, !75, !75, !75, !2665}
!2709 = !{!2710, !2711, !2712, !2713, !2714, !2715}
!2710 = !DILocalVariable(name: "stream", arg: 1, scope: !2706, file: !524, line: 183, type: !2631)
!2711 = !DILocalVariable(name: "command_name", arg: 2, scope: !2706, file: !524, line: 184, type: !75)
!2712 = !DILocalVariable(name: "package", arg: 3, scope: !2706, file: !524, line: 184, type: !75)
!2713 = !DILocalVariable(name: "version", arg: 4, scope: !2706, file: !524, line: 185, type: !75)
!2714 = !DILocalVariable(name: "authors", arg: 5, scope: !2706, file: !524, line: 185, type: !2665)
!2715 = !DILocalVariable(name: "n_authors", scope: !2706, file: !524, line: 187, type: !101)
!2716 = !DILocation(line: 0, scope: !2706)
!2717 = !DILocation(line: 189, column: 8, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2706, file: !524, line: 189, column: 3)
!2719 = !DILocation(line: 189, scope: !2718)
!2720 = !DILocation(line: 189, column: 23, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2718, file: !524, line: 189, column: 3)
!2722 = !DILocation(line: 189, column: 3, scope: !2718)
!2723 = !DILocation(line: 189, column: 52, scope: !2721)
!2724 = distinct !{!2724, !2722, !2725, !794}
!2725 = !DILocation(line: 190, column: 5, scope: !2718)
!2726 = !DILocation(line: 191, column: 3, scope: !2706)
!2727 = !DILocation(line: 192, column: 1, scope: !2706)
!2728 = distinct !DISubprogram(name: "version_etc_va", scope: !524, file: !524, line: 199, type: !2729, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2742)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{null, !2631, !75, !75, !75, !2731}
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !325, line: 52, baseType: !2732)
!2732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !327, line: 14, baseType: !2733)
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2734, baseType: !2735)
!2734 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2736)
!2736 = !{!2737, !2738, !2739, !2740, !2741}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2735, file: !2734, line: 192, baseType: !98, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2735, file: !2734, line: 192, baseType: !98, size: 64, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2735, file: !2734, line: 192, baseType: !98, size: 64, offset: 128)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2735, file: !2734, line: 192, baseType: !99, size: 32, offset: 192)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2735, file: !2734, line: 192, baseType: !99, size: 32, offset: 224)
!2742 = !{!2743, !2744, !2745, !2746, !2747, !2748, !2749}
!2743 = !DILocalVariable(name: "stream", arg: 1, scope: !2728, file: !524, line: 199, type: !2631)
!2744 = !DILocalVariable(name: "command_name", arg: 2, scope: !2728, file: !524, line: 200, type: !75)
!2745 = !DILocalVariable(name: "package", arg: 3, scope: !2728, file: !524, line: 200, type: !75)
!2746 = !DILocalVariable(name: "version", arg: 4, scope: !2728, file: !524, line: 201, type: !75)
!2747 = !DILocalVariable(name: "authors", arg: 5, scope: !2728, file: !524, line: 201, type: !2731)
!2748 = !DILocalVariable(name: "n_authors", scope: !2728, file: !524, line: 203, type: !101)
!2749 = !DILocalVariable(name: "authtab", scope: !2728, file: !524, line: 204, type: !2750)
!2750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 640, elements: !45)
!2751 = !DILocation(line: 0, scope: !2728)
!2752 = !DILocation(line: 201, column: 46, scope: !2728)
!2753 = !DILocation(line: 204, column: 3, scope: !2728)
!2754 = !DILocation(line: 204, column: 15, scope: !2728)
!2755 = !DILocation(line: 208, column: 35, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !524, line: 206, column: 3)
!2757 = distinct !DILexicalBlock(scope: !2728, file: !524, line: 206, column: 3)
!2758 = !DILocation(line: 208, column: 33, scope: !2756)
!2759 = !DILocation(line: 208, column: 67, scope: !2756)
!2760 = !DILocation(line: 206, column: 3, scope: !2757)
!2761 = !DILocation(line: 208, column: 14, scope: !2756)
!2762 = !DILocation(line: 0, scope: !2757)
!2763 = !DILocation(line: 211, column: 3, scope: !2728)
!2764 = !DILocation(line: 213, column: 1, scope: !2728)
!2765 = distinct !DISubprogram(name: "version_etc", scope: !524, file: !524, line: 230, type: !2766, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{null, !2631, !75, !75, !75, null}
!2768 = !{!2769, !2770, !2771, !2772, !2773}
!2769 = !DILocalVariable(name: "stream", arg: 1, scope: !2765, file: !524, line: 230, type: !2631)
!2770 = !DILocalVariable(name: "command_name", arg: 2, scope: !2765, file: !524, line: 231, type: !75)
!2771 = !DILocalVariable(name: "package", arg: 3, scope: !2765, file: !524, line: 231, type: !75)
!2772 = !DILocalVariable(name: "version", arg: 4, scope: !2765, file: !524, line: 232, type: !75)
!2773 = !DILocalVariable(name: "authors", scope: !2765, file: !524, line: 234, type: !2731)
!2774 = !DILocation(line: 0, scope: !2765)
!2775 = !DILocation(line: 234, column: 3, scope: !2765)
!2776 = !DILocation(line: 234, column: 11, scope: !2765)
!2777 = !DILocation(line: 235, column: 3, scope: !2765)
!2778 = !DILocation(line: 236, column: 3, scope: !2765)
!2779 = !DILocation(line: 237, column: 3, scope: !2765)
!2780 = !DILocation(line: 238, column: 1, scope: !2765)
!2781 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !524, file: !524, line: 241, type: !366, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !739)
!2782 = !DILocation(line: 243, column: 3, scope: !2781)
!2783 = !DILocation(line: 248, column: 3, scope: !2781)
!2784 = !DILocation(line: 254, column: 3, scope: !2781)
!2785 = !DILocation(line: 259, column: 3, scope: !2781)
!2786 = !DILocation(line: 261, column: 1, scope: !2781)
!2787 = distinct !DISubprogram(name: "xnrealloc", scope: !2788, file: !2788, line: 147, type: !2789, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !2791)
!2788 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!98, !98, !101, !101}
!2791 = !{!2792, !2793, !2794}
!2792 = !DILocalVariable(name: "p", arg: 1, scope: !2787, file: !2788, line: 147, type: !98)
!2793 = !DILocalVariable(name: "n", arg: 2, scope: !2787, file: !2788, line: 147, type: !101)
!2794 = !DILocalVariable(name: "s", arg: 3, scope: !2787, file: !2788, line: 147, type: !101)
!2795 = !DILocation(line: 0, scope: !2787)
!2796 = !DILocalVariable(name: "p", arg: 1, scope: !2797, file: !658, line: 83, type: !98)
!2797 = distinct !DISubprogram(name: "xreallocarray", scope: !658, file: !658, line: 83, type: !2789, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !2798)
!2798 = !{!2796, !2799, !2800}
!2799 = !DILocalVariable(name: "n", arg: 2, scope: !2797, file: !658, line: 83, type: !101)
!2800 = !DILocalVariable(name: "s", arg: 3, scope: !2797, file: !658, line: 83, type: !101)
!2801 = !DILocation(line: 0, scope: !2797, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 149, column: 10, scope: !2787)
!2803 = !DILocation(line: 85, column: 25, scope: !2797, inlinedAt: !2802)
!2804 = !DILocalVariable(name: "p", arg: 1, scope: !2805, file: !658, line: 37, type: !98)
!2805 = distinct !DISubprogram(name: "check_nonnull", scope: !658, file: !658, line: 37, type: !2806, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !2808)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!98, !98}
!2808 = !{!2804}
!2809 = !DILocation(line: 0, scope: !2805, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 85, column: 10, scope: !2797, inlinedAt: !2802)
!2811 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !2810)
!2812 = distinct !DILexicalBlock(scope: !2805, file: !658, line: 39, column: 7)
!2813 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !2810)
!2814 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !2810)
!2815 = !DILocation(line: 149, column: 3, scope: !2787)
!2816 = !DILocation(line: 0, scope: !2797)
!2817 = !DILocation(line: 85, column: 25, scope: !2797)
!2818 = !DILocation(line: 0, scope: !2805, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 85, column: 10, scope: !2797)
!2820 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !2819)
!2821 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !2819)
!2822 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !2819)
!2823 = !DILocation(line: 85, column: 3, scope: !2797)
!2824 = distinct !DISubprogram(name: "xmalloc", scope: !658, file: !658, line: 47, type: !2825, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!98, !101}
!2827 = !{!2828}
!2828 = !DILocalVariable(name: "s", arg: 1, scope: !2824, file: !658, line: 47, type: !101)
!2829 = !DILocation(line: 0, scope: !2824)
!2830 = !DILocation(line: 49, column: 25, scope: !2824)
!2831 = !DILocation(line: 0, scope: !2805, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 49, column: 10, scope: !2824)
!2833 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !2832)
!2834 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !2832)
!2835 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !2832)
!2836 = !DILocation(line: 49, column: 3, scope: !2824)
!2837 = !DISubprogram(name: "malloc", scope: !891, file: !891, line: 540, type: !2825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!2838 = distinct !DISubprogram(name: "ximalloc", scope: !658, file: !658, line: 53, type: !2839, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !2841)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!98, !677}
!2841 = !{!2842}
!2842 = !DILocalVariable(name: "s", arg: 1, scope: !2838, file: !658, line: 53, type: !677)
!2843 = !DILocation(line: 0, scope: !2838)
!2844 = !DILocalVariable(name: "s", arg: 1, scope: !2845, file: !2846, line: 55, type: !677)
!2845 = distinct !DISubprogram(name: "imalloc", scope: !2846, file: !2846, line: 55, type: !2839, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !2847)
!2846 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2847 = !{!2844}
!2848 = !DILocation(line: 0, scope: !2845, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 55, column: 25, scope: !2838)
!2850 = !DILocation(line: 57, column: 26, scope: !2845, inlinedAt: !2849)
!2851 = !DILocation(line: 0, scope: !2805, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 55, column: 10, scope: !2838)
!2853 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !2852)
!2854 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !2852)
!2855 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !2852)
!2856 = !DILocation(line: 55, column: 3, scope: !2838)
!2857 = distinct !DISubprogram(name: "xcharalloc", scope: !658, file: !658, line: 59, type: !2858, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !2860)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!97, !101}
!2860 = !{!2861}
!2861 = !DILocalVariable(name: "n", arg: 1, scope: !2857, file: !658, line: 59, type: !101)
!2862 = !DILocation(line: 0, scope: !2857)
!2863 = !DILocation(line: 0, scope: !2824, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 61, column: 10, scope: !2857)
!2865 = !DILocation(line: 49, column: 25, scope: !2824, inlinedAt: !2864)
!2866 = !DILocation(line: 0, scope: !2805, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 49, column: 10, scope: !2824, inlinedAt: !2864)
!2868 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !2867)
!2869 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !2867)
!2870 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !2867)
!2871 = !DILocation(line: 61, column: 3, scope: !2857)
!2872 = distinct !DISubprogram(name: "xrealloc", scope: !658, file: !658, line: 68, type: !2873, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !2875)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!98, !98, !101}
!2875 = !{!2876, !2877}
!2876 = !DILocalVariable(name: "p", arg: 1, scope: !2872, file: !658, line: 68, type: !98)
!2877 = !DILocalVariable(name: "s", arg: 2, scope: !2872, file: !658, line: 68, type: !101)
!2878 = !DILocation(line: 0, scope: !2872)
!2879 = !DILocalVariable(name: "ptr", arg: 1, scope: !2880, file: !2881, line: 2057, type: !98)
!2880 = distinct !DISubprogram(name: "rpl_realloc", scope: !2881, file: !2881, line: 2057, type: !2873, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !2882)
!2881 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2882 = !{!2879, !2883}
!2883 = !DILocalVariable(name: "size", arg: 2, scope: !2880, file: !2881, line: 2057, type: !101)
!2884 = !DILocation(line: 0, scope: !2880, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 70, column: 25, scope: !2872)
!2886 = !DILocation(line: 2059, column: 24, scope: !2880, inlinedAt: !2885)
!2887 = !DILocation(line: 2059, column: 10, scope: !2880, inlinedAt: !2885)
!2888 = !DILocation(line: 0, scope: !2805, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 70, column: 10, scope: !2872)
!2890 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !2889)
!2891 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !2889)
!2892 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !2889)
!2893 = !DILocation(line: 70, column: 3, scope: !2872)
!2894 = !DISubprogram(name: "realloc", scope: !891, file: !891, line: 551, type: !2873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!2895 = distinct !DISubprogram(name: "xirealloc", scope: !658, file: !658, line: 74, type: !2896, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !2898)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!98, !98, !677}
!2898 = !{!2899, !2900}
!2899 = !DILocalVariable(name: "p", arg: 1, scope: !2895, file: !658, line: 74, type: !98)
!2900 = !DILocalVariable(name: "s", arg: 2, scope: !2895, file: !658, line: 74, type: !677)
!2901 = !DILocation(line: 0, scope: !2895)
!2902 = !DILocalVariable(name: "p", arg: 1, scope: !2903, file: !2846, line: 66, type: !98)
!2903 = distinct !DISubprogram(name: "irealloc", scope: !2846, file: !2846, line: 66, type: !2896, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !2904)
!2904 = !{!2902, !2905}
!2905 = !DILocalVariable(name: "s", arg: 2, scope: !2903, file: !2846, line: 66, type: !677)
!2906 = !DILocation(line: 0, scope: !2903, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 76, column: 25, scope: !2895)
!2908 = !DILocation(line: 0, scope: !2880, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 68, column: 26, scope: !2903, inlinedAt: !2907)
!2910 = !DILocation(line: 2059, column: 24, scope: !2880, inlinedAt: !2909)
!2911 = !DILocation(line: 2059, column: 10, scope: !2880, inlinedAt: !2909)
!2912 = !DILocation(line: 0, scope: !2805, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 76, column: 10, scope: !2895)
!2914 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !2913)
!2915 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !2913)
!2916 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !2913)
!2917 = !DILocation(line: 76, column: 3, scope: !2895)
!2918 = distinct !DISubprogram(name: "xireallocarray", scope: !658, file: !658, line: 89, type: !2919, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!98, !98, !677, !677}
!2921 = !{!2922, !2923, !2924}
!2922 = !DILocalVariable(name: "p", arg: 1, scope: !2918, file: !658, line: 89, type: !98)
!2923 = !DILocalVariable(name: "n", arg: 2, scope: !2918, file: !658, line: 89, type: !677)
!2924 = !DILocalVariable(name: "s", arg: 3, scope: !2918, file: !658, line: 89, type: !677)
!2925 = !DILocation(line: 0, scope: !2918)
!2926 = !DILocalVariable(name: "p", arg: 1, scope: !2927, file: !2846, line: 98, type: !98)
!2927 = distinct !DISubprogram(name: "ireallocarray", scope: !2846, file: !2846, line: 98, type: !2919, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !2928)
!2928 = !{!2926, !2929, !2930}
!2929 = !DILocalVariable(name: "n", arg: 2, scope: !2927, file: !2846, line: 98, type: !677)
!2930 = !DILocalVariable(name: "s", arg: 3, scope: !2927, file: !2846, line: 98, type: !677)
!2931 = !DILocation(line: 0, scope: !2927, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 91, column: 25, scope: !2918)
!2933 = !DILocation(line: 101, column: 13, scope: !2927, inlinedAt: !2932)
!2934 = !DILocation(line: 0, scope: !2805, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 91, column: 10, scope: !2918)
!2936 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !2935)
!2937 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !2935)
!2938 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !2935)
!2939 = !DILocation(line: 91, column: 3, scope: !2918)
!2940 = distinct !DISubprogram(name: "xnmalloc", scope: !658, file: !658, line: 98, type: !2941, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !2943)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!98, !101, !101}
!2943 = !{!2944, !2945}
!2944 = !DILocalVariable(name: "n", arg: 1, scope: !2940, file: !658, line: 98, type: !101)
!2945 = !DILocalVariable(name: "s", arg: 2, scope: !2940, file: !658, line: 98, type: !101)
!2946 = !DILocation(line: 0, scope: !2940)
!2947 = !DILocation(line: 0, scope: !2797, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 100, column: 10, scope: !2940)
!2949 = !DILocation(line: 85, column: 25, scope: !2797, inlinedAt: !2948)
!2950 = !DILocation(line: 0, scope: !2805, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 85, column: 10, scope: !2797, inlinedAt: !2948)
!2952 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !2951)
!2953 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !2951)
!2954 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !2951)
!2955 = !DILocation(line: 100, column: 3, scope: !2940)
!2956 = distinct !DISubprogram(name: "xinmalloc", scope: !658, file: !658, line: 104, type: !2957, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !2959)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!98, !677, !677}
!2959 = !{!2960, !2961}
!2960 = !DILocalVariable(name: "n", arg: 1, scope: !2956, file: !658, line: 104, type: !677)
!2961 = !DILocalVariable(name: "s", arg: 2, scope: !2956, file: !658, line: 104, type: !677)
!2962 = !DILocation(line: 0, scope: !2956)
!2963 = !DILocation(line: 0, scope: !2918, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 106, column: 10, scope: !2956)
!2965 = !DILocation(line: 0, scope: !2927, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 91, column: 25, scope: !2918, inlinedAt: !2964)
!2967 = !DILocation(line: 101, column: 13, scope: !2927, inlinedAt: !2966)
!2968 = !DILocation(line: 0, scope: !2805, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 91, column: 10, scope: !2918, inlinedAt: !2964)
!2970 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !2969)
!2971 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !2969)
!2972 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !2969)
!2973 = !DILocation(line: 106, column: 3, scope: !2956)
!2974 = distinct !DISubprogram(name: "x2realloc", scope: !658, file: !658, line: 116, type: !2975, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !2977)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!98, !98, !664}
!2977 = !{!2978, !2979}
!2978 = !DILocalVariable(name: "p", arg: 1, scope: !2974, file: !658, line: 116, type: !98)
!2979 = !DILocalVariable(name: "ps", arg: 2, scope: !2974, file: !658, line: 116, type: !664)
!2980 = !DILocation(line: 0, scope: !2974)
!2981 = !DILocation(line: 0, scope: !661, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 118, column: 10, scope: !2974)
!2983 = !DILocation(line: 178, column: 14, scope: !661, inlinedAt: !2982)
!2984 = !DILocation(line: 180, column: 9, scope: !2985, inlinedAt: !2982)
!2985 = distinct !DILexicalBlock(scope: !661, file: !658, line: 180, column: 7)
!2986 = !DILocation(line: 180, column: 7, scope: !661, inlinedAt: !2982)
!2987 = !DILocation(line: 182, column: 13, scope: !2988, inlinedAt: !2982)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !658, line: 182, column: 11)
!2989 = distinct !DILexicalBlock(scope: !2985, file: !658, line: 181, column: 5)
!2990 = !DILocation(line: 182, column: 11, scope: !2989, inlinedAt: !2982)
!2991 = !DILocation(line: 197, column: 11, scope: !2992, inlinedAt: !2982)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !658, line: 197, column: 11)
!2993 = distinct !DILexicalBlock(scope: !2985, file: !658, line: 195, column: 5)
!2994 = !DILocation(line: 197, column: 11, scope: !2993, inlinedAt: !2982)
!2995 = !DILocation(line: 198, column: 9, scope: !2992, inlinedAt: !2982)
!2996 = !DILocation(line: 0, scope: !2797, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 201, column: 7, scope: !661, inlinedAt: !2982)
!2998 = !DILocation(line: 85, column: 25, scope: !2797, inlinedAt: !2997)
!2999 = !DILocation(line: 0, scope: !2805, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 85, column: 10, scope: !2797, inlinedAt: !2997)
!3001 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !3000)
!3002 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !3000)
!3003 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !3000)
!3004 = !DILocation(line: 202, column: 7, scope: !661, inlinedAt: !2982)
!3005 = !DILocation(line: 118, column: 3, scope: !2974)
!3006 = !DILocation(line: 0, scope: !661)
!3007 = !DILocation(line: 178, column: 14, scope: !661)
!3008 = !DILocation(line: 180, column: 9, scope: !2985)
!3009 = !DILocation(line: 180, column: 7, scope: !661)
!3010 = !DILocation(line: 182, column: 13, scope: !2988)
!3011 = !DILocation(line: 182, column: 11, scope: !2989)
!3012 = !DILocation(line: 190, column: 30, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2988, file: !658, line: 183, column: 9)
!3014 = !DILocation(line: 191, column: 16, scope: !3013)
!3015 = !DILocation(line: 191, column: 13, scope: !3013)
!3016 = !DILocation(line: 192, column: 9, scope: !3013)
!3017 = !DILocation(line: 197, column: 11, scope: !2992)
!3018 = !DILocation(line: 197, column: 11, scope: !2993)
!3019 = !DILocation(line: 198, column: 9, scope: !2992)
!3020 = !DILocation(line: 0, scope: !2797, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 201, column: 7, scope: !661)
!3022 = !DILocation(line: 85, column: 25, scope: !2797, inlinedAt: !3021)
!3023 = !DILocation(line: 0, scope: !2805, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 85, column: 10, scope: !2797, inlinedAt: !3021)
!3025 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !3024)
!3026 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !3024)
!3027 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !3024)
!3028 = !DILocation(line: 202, column: 7, scope: !661)
!3029 = !DILocation(line: 203, column: 3, scope: !661)
!3030 = !DILocation(line: 0, scope: !673)
!3031 = !DILocation(line: 230, column: 14, scope: !673)
!3032 = !DILocation(line: 238, column: 7, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !673, file: !658, line: 238, column: 7)
!3034 = !DILocation(line: 238, column: 7, scope: !673)
!3035 = !DILocation(line: 240, column: 9, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !673, file: !658, line: 240, column: 7)
!3037 = !DILocation(line: 240, column: 18, scope: !3036)
!3038 = !DILocation(line: 253, column: 8, scope: !673)
!3039 = !DILocation(line: 258, column: 27, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !658, line: 257, column: 5)
!3041 = distinct !DILexicalBlock(scope: !673, file: !658, line: 256, column: 7)
!3042 = !DILocation(line: 259, column: 32, scope: !3040)
!3043 = !DILocation(line: 260, column: 5, scope: !3040)
!3044 = !DILocation(line: 262, column: 9, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !673, file: !658, line: 262, column: 7)
!3046 = !DILocation(line: 262, column: 7, scope: !673)
!3047 = !DILocation(line: 263, column: 9, scope: !3045)
!3048 = !DILocation(line: 263, column: 5, scope: !3045)
!3049 = !DILocation(line: 264, column: 9, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !673, file: !658, line: 264, column: 7)
!3051 = !DILocation(line: 264, column: 14, scope: !3050)
!3052 = !DILocation(line: 265, column: 7, scope: !3050)
!3053 = !DILocation(line: 265, column: 11, scope: !3050)
!3054 = !DILocation(line: 266, column: 11, scope: !3050)
!3055 = !DILocation(line: 267, column: 14, scope: !3050)
!3056 = !DILocation(line: 264, column: 7, scope: !673)
!3057 = !DILocation(line: 268, column: 5, scope: !3050)
!3058 = !DILocation(line: 0, scope: !2872, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 269, column: 8, scope: !673)
!3060 = !DILocation(line: 0, scope: !2880, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 70, column: 25, scope: !2872, inlinedAt: !3059)
!3062 = !DILocation(line: 2059, column: 24, scope: !2880, inlinedAt: !3061)
!3063 = !DILocation(line: 2059, column: 10, scope: !2880, inlinedAt: !3061)
!3064 = !DILocation(line: 0, scope: !2805, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 70, column: 10, scope: !2872, inlinedAt: !3059)
!3066 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !3065)
!3067 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !3065)
!3068 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !3065)
!3069 = !DILocation(line: 270, column: 7, scope: !673)
!3070 = !DILocation(line: 271, column: 3, scope: !673)
!3071 = distinct !DISubprogram(name: "xzalloc", scope: !658, file: !658, line: 279, type: !2825, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !3072)
!3072 = !{!3073}
!3073 = !DILocalVariable(name: "s", arg: 1, scope: !3071, file: !658, line: 279, type: !101)
!3074 = !DILocation(line: 0, scope: !3071)
!3075 = !DILocalVariable(name: "n", arg: 1, scope: !3076, file: !658, line: 294, type: !101)
!3076 = distinct !DISubprogram(name: "xcalloc", scope: !658, file: !658, line: 294, type: !2941, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !3077)
!3077 = !{!3075, !3078}
!3078 = !DILocalVariable(name: "s", arg: 2, scope: !3076, file: !658, line: 294, type: !101)
!3079 = !DILocation(line: 0, scope: !3076, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 281, column: 10, scope: !3071)
!3081 = !DILocation(line: 296, column: 25, scope: !3076, inlinedAt: !3080)
!3082 = !DILocation(line: 0, scope: !2805, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 296, column: 10, scope: !3076, inlinedAt: !3080)
!3084 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !3083)
!3085 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !3083)
!3086 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !3083)
!3087 = !DILocation(line: 281, column: 3, scope: !3071)
!3088 = !DISubprogram(name: "calloc", scope: !891, file: !891, line: 543, type: !2941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!3089 = !DILocation(line: 0, scope: !3076)
!3090 = !DILocation(line: 296, column: 25, scope: !3076)
!3091 = !DILocation(line: 0, scope: !2805, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 296, column: 10, scope: !3076)
!3093 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !3092)
!3094 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !3092)
!3095 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !3092)
!3096 = !DILocation(line: 296, column: 3, scope: !3076)
!3097 = distinct !DISubprogram(name: "xizalloc", scope: !658, file: !658, line: 285, type: !2839, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !3098)
!3098 = !{!3099}
!3099 = !DILocalVariable(name: "s", arg: 1, scope: !3097, file: !658, line: 285, type: !677)
!3100 = !DILocation(line: 0, scope: !3097)
!3101 = !DILocalVariable(name: "n", arg: 1, scope: !3102, file: !658, line: 300, type: !677)
!3102 = distinct !DISubprogram(name: "xicalloc", scope: !658, file: !658, line: 300, type: !2957, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !3103)
!3103 = !{!3101, !3104}
!3104 = !DILocalVariable(name: "s", arg: 2, scope: !3102, file: !658, line: 300, type: !677)
!3105 = !DILocation(line: 0, scope: !3102, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 287, column: 10, scope: !3097)
!3107 = !DILocalVariable(name: "n", arg: 1, scope: !3108, file: !2846, line: 77, type: !677)
!3108 = distinct !DISubprogram(name: "icalloc", scope: !2846, file: !2846, line: 77, type: !2957, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !3109)
!3109 = !{!3107, !3110}
!3110 = !DILocalVariable(name: "s", arg: 2, scope: !3108, file: !2846, line: 77, type: !677)
!3111 = !DILocation(line: 0, scope: !3108, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 302, column: 25, scope: !3102, inlinedAt: !3106)
!3113 = !DILocation(line: 91, column: 10, scope: !3108, inlinedAt: !3112)
!3114 = !DILocation(line: 0, scope: !2805, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 302, column: 10, scope: !3102, inlinedAt: !3106)
!3116 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !3115)
!3117 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !3115)
!3118 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !3115)
!3119 = !DILocation(line: 287, column: 3, scope: !3097)
!3120 = !DILocation(line: 0, scope: !3102)
!3121 = !DILocation(line: 0, scope: !3108, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 302, column: 25, scope: !3102)
!3123 = !DILocation(line: 91, column: 10, scope: !3108, inlinedAt: !3122)
!3124 = !DILocation(line: 0, scope: !2805, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 302, column: 10, scope: !3102)
!3126 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !3125)
!3127 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !3125)
!3128 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !3125)
!3129 = !DILocation(line: 302, column: 3, scope: !3102)
!3130 = distinct !DISubprogram(name: "xmemdup", scope: !658, file: !658, line: 310, type: !3131, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !3133)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!98, !927, !101}
!3133 = !{!3134, !3135}
!3134 = !DILocalVariable(name: "p", arg: 1, scope: !3130, file: !658, line: 310, type: !927)
!3135 = !DILocalVariable(name: "s", arg: 2, scope: !3130, file: !658, line: 310, type: !101)
!3136 = !DILocation(line: 0, scope: !3130)
!3137 = !DILocation(line: 0, scope: !2824, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 312, column: 18, scope: !3130)
!3139 = !DILocation(line: 49, column: 25, scope: !2824, inlinedAt: !3138)
!3140 = !DILocation(line: 0, scope: !2805, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 49, column: 10, scope: !2824, inlinedAt: !3138)
!3142 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !3141)
!3143 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !3141)
!3144 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !3141)
!3145 = !DILocalVariable(name: "__dest", arg: 1, scope: !3146, file: !1315, line: 26, type: !3149)
!3146 = distinct !DISubprogram(name: "memcpy", scope: !1315, file: !1315, line: 26, type: !3147, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !3150)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!98, !3149, !926, !101}
!3149 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!3150 = !{!3145, !3151, !3152}
!3151 = !DILocalVariable(name: "__src", arg: 2, scope: !3146, file: !1315, line: 26, type: !926)
!3152 = !DILocalVariable(name: "__len", arg: 3, scope: !3146, file: !1315, line: 26, type: !101)
!3153 = !DILocation(line: 0, scope: !3146, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 312, column: 10, scope: !3130)
!3155 = !DILocation(line: 29, column: 10, scope: !3146, inlinedAt: !3154)
!3156 = !DILocation(line: 312, column: 3, scope: !3130)
!3157 = distinct !DISubprogram(name: "ximemdup", scope: !658, file: !658, line: 316, type: !3158, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !3160)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!98, !927, !677}
!3160 = !{!3161, !3162}
!3161 = !DILocalVariable(name: "p", arg: 1, scope: !3157, file: !658, line: 316, type: !927)
!3162 = !DILocalVariable(name: "s", arg: 2, scope: !3157, file: !658, line: 316, type: !677)
!3163 = !DILocation(line: 0, scope: !3157)
!3164 = !DILocation(line: 0, scope: !2838, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 318, column: 18, scope: !3157)
!3166 = !DILocation(line: 0, scope: !2845, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 55, column: 25, scope: !2838, inlinedAt: !3165)
!3168 = !DILocation(line: 57, column: 26, scope: !2845, inlinedAt: !3167)
!3169 = !DILocation(line: 0, scope: !2805, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 55, column: 10, scope: !2838, inlinedAt: !3165)
!3171 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !3170)
!3172 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !3170)
!3173 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !3170)
!3174 = !DILocation(line: 0, scope: !3146, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 318, column: 10, scope: !3157)
!3176 = !DILocation(line: 29, column: 10, scope: !3146, inlinedAt: !3175)
!3177 = !DILocation(line: 318, column: 3, scope: !3157)
!3178 = distinct !DISubprogram(name: "ximemdup0", scope: !658, file: !658, line: 325, type: !3179, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !3181)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!97, !927, !677}
!3181 = !{!3182, !3183, !3184}
!3182 = !DILocalVariable(name: "p", arg: 1, scope: !3178, file: !658, line: 325, type: !927)
!3183 = !DILocalVariable(name: "s", arg: 2, scope: !3178, file: !658, line: 325, type: !677)
!3184 = !DILocalVariable(name: "result", scope: !3178, file: !658, line: 327, type: !97)
!3185 = !DILocation(line: 0, scope: !3178)
!3186 = !DILocation(line: 327, column: 30, scope: !3178)
!3187 = !DILocation(line: 0, scope: !2838, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 327, column: 18, scope: !3178)
!3189 = !DILocation(line: 0, scope: !2845, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 55, column: 25, scope: !2838, inlinedAt: !3188)
!3191 = !DILocation(line: 57, column: 26, scope: !2845, inlinedAt: !3190)
!3192 = !DILocation(line: 0, scope: !2805, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 55, column: 10, scope: !2838, inlinedAt: !3188)
!3194 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !3193)
!3195 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !3193)
!3196 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !3193)
!3197 = !DILocation(line: 328, column: 3, scope: !3178)
!3198 = !DILocation(line: 328, column: 13, scope: !3178)
!3199 = !DILocation(line: 0, scope: !3146, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 329, column: 10, scope: !3178)
!3201 = !DILocation(line: 29, column: 10, scope: !3146, inlinedAt: !3200)
!3202 = !DILocation(line: 329, column: 3, scope: !3178)
!3203 = distinct !DISubprogram(name: "xstrdup", scope: !658, file: !658, line: 335, type: !905, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !3204)
!3204 = !{!3205}
!3205 = !DILocalVariable(name: "string", arg: 1, scope: !3203, file: !658, line: 335, type: !75)
!3206 = !DILocation(line: 0, scope: !3203)
!3207 = !DILocation(line: 337, column: 27, scope: !3203)
!3208 = !DILocation(line: 337, column: 43, scope: !3203)
!3209 = !DILocation(line: 0, scope: !3130, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 337, column: 10, scope: !3203)
!3211 = !DILocation(line: 0, scope: !2824, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 312, column: 18, scope: !3130, inlinedAt: !3210)
!3213 = !DILocation(line: 49, column: 25, scope: !2824, inlinedAt: !3212)
!3214 = !DILocation(line: 0, scope: !2805, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 49, column: 10, scope: !2824, inlinedAt: !3212)
!3216 = !DILocation(line: 39, column: 8, scope: !2812, inlinedAt: !3215)
!3217 = !DILocation(line: 39, column: 7, scope: !2805, inlinedAt: !3215)
!3218 = !DILocation(line: 40, column: 5, scope: !2812, inlinedAt: !3215)
!3219 = !DILocation(line: 0, scope: !3146, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 312, column: 10, scope: !3130, inlinedAt: !3210)
!3221 = !DILocation(line: 29, column: 10, scope: !3146, inlinedAt: !3220)
!3222 = !DILocation(line: 337, column: 3, scope: !3203)
!3223 = distinct !DISubprogram(name: "xalloc_die", scope: !620, file: !620, line: 32, type: !366, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !3224)
!3224 = !{!3225}
!3225 = !DILocalVariable(name: "__errstatus", scope: !3226, file: !620, line: 34, type: !3227)
!3226 = distinct !DILexicalBlock(scope: !3223, file: !620, line: 34, column: 3)
!3227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!3228 = !DILocation(line: 34, column: 3, scope: !3226)
!3229 = !DILocation(line: 0, scope: !3226)
!3230 = !DILocation(line: 40, column: 3, scope: !3223)
!3231 = distinct !DISubprogram(name: "close_stream", scope: !694, file: !694, line: 55, type: !3232, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3268)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!99, !3234}
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3236)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3237)
!3237 = !{!3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3236, file: !235, line: 51, baseType: !99, size: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3236, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3236, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3236, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3236, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3236, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3236, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3236, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3236, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3236, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3236, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3236, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3236, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3236, file: !235, line: 70, baseType: !3252, size: 64, offset: 832)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3236, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3236, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3236, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3236, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3236, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3236, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3236, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3236, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3236, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3236, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3236, file: !235, line: 93, baseType: !3252, size: 64, offset: 1344)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3236, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3236, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3236, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3236, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!3268 = !{!3269, !3270, !3272, !3273}
!3269 = !DILocalVariable(name: "stream", arg: 1, scope: !3231, file: !694, line: 55, type: !3234)
!3270 = !DILocalVariable(name: "some_pending", scope: !3231, file: !694, line: 57, type: !3271)
!3271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!3272 = !DILocalVariable(name: "prev_fail", scope: !3231, file: !694, line: 58, type: !3271)
!3273 = !DILocalVariable(name: "fclose_fail", scope: !3231, file: !694, line: 59, type: !3271)
!3274 = !DILocation(line: 0, scope: !3231)
!3275 = !DILocation(line: 57, column: 30, scope: !3231)
!3276 = !DILocalVariable(name: "__stream", arg: 1, scope: !3277, file: !1158, line: 135, type: !3234)
!3277 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1158, file: !1158, line: 135, type: !3232, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3278)
!3278 = !{!3276}
!3279 = !DILocation(line: 0, scope: !3277, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 58, column: 27, scope: !3231)
!3281 = !DILocation(line: 137, column: 10, scope: !3277, inlinedAt: !3280)
!3282 = !{!1167, !748, i64 0}
!3283 = !DILocation(line: 58, column: 43, scope: !3231)
!3284 = !DILocation(line: 59, column: 29, scope: !3231)
!3285 = !DILocation(line: 59, column: 45, scope: !3231)
!3286 = !DILocation(line: 69, column: 17, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3231, file: !694, line: 69, column: 7)
!3288 = !DILocation(line: 57, column: 50, scope: !3231)
!3289 = !DILocation(line: 69, column: 33, scope: !3287)
!3290 = !DILocation(line: 69, column: 53, scope: !3287)
!3291 = !DILocation(line: 69, column: 59, scope: !3287)
!3292 = !DILocation(line: 69, column: 7, scope: !3231)
!3293 = !DILocation(line: 71, column: 11, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3287, file: !694, line: 70, column: 5)
!3295 = !DILocation(line: 72, column: 9, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3294, file: !694, line: 71, column: 11)
!3297 = !DILocation(line: 72, column: 15, scope: !3296)
!3298 = !DILocation(line: 77, column: 1, scope: !3231)
!3299 = !DISubprogram(name: "__fpending", scope: !3300, file: !3300, line: 75, type: !3301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!3300 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!101, !3234}
!3303 = distinct !DISubprogram(name: "rpl_fclose", scope: !696, file: !696, line: 58, type: !3304, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3340)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!99, !3306}
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3308)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3309)
!3309 = !{!3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3308, file: !235, line: 51, baseType: !99, size: 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3308, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3308, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3308, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3308, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3308, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3308, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3308, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3308, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3308, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3308, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3308, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3308, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3308, file: !235, line: 70, baseType: !3324, size: 64, offset: 832)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3308, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3308, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3308, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3308, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3308, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3308, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3308, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3308, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3308, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3308, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3308, file: !235, line: 93, baseType: !3324, size: 64, offset: 1344)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3308, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3308, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3308, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3308, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!3340 = !{!3341, !3342, !3343, !3344}
!3341 = !DILocalVariable(name: "fp", arg: 1, scope: !3303, file: !696, line: 58, type: !3306)
!3342 = !DILocalVariable(name: "saved_errno", scope: !3303, file: !696, line: 60, type: !99)
!3343 = !DILocalVariable(name: "fd", scope: !3303, file: !696, line: 63, type: !99)
!3344 = !DILocalVariable(name: "result", scope: !3303, file: !696, line: 74, type: !99)
!3345 = !DILocation(line: 0, scope: !3303)
!3346 = !DILocation(line: 63, column: 12, scope: !3303)
!3347 = !DILocation(line: 64, column: 10, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3303, file: !696, line: 64, column: 7)
!3349 = !DILocation(line: 64, column: 7, scope: !3303)
!3350 = !DILocation(line: 65, column: 12, scope: !3348)
!3351 = !DILocation(line: 65, column: 5, scope: !3348)
!3352 = !DILocation(line: 70, column: 9, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3303, file: !696, line: 70, column: 7)
!3354 = !DILocation(line: 70, column: 23, scope: !3353)
!3355 = !DILocation(line: 70, column: 33, scope: !3353)
!3356 = !DILocation(line: 70, column: 26, scope: !3353)
!3357 = !DILocation(line: 70, column: 59, scope: !3353)
!3358 = !DILocation(line: 71, column: 7, scope: !3353)
!3359 = !DILocation(line: 71, column: 10, scope: !3353)
!3360 = !DILocation(line: 70, column: 7, scope: !3303)
!3361 = !DILocation(line: 100, column: 12, scope: !3303)
!3362 = !DILocation(line: 105, column: 7, scope: !3303)
!3363 = !DILocation(line: 72, column: 19, scope: !3353)
!3364 = !DILocation(line: 105, column: 19, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3303, file: !696, line: 105, column: 7)
!3366 = !DILocation(line: 107, column: 13, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3365, file: !696, line: 106, column: 5)
!3368 = !DILocation(line: 109, column: 5, scope: !3367)
!3369 = !DILocation(line: 112, column: 1, scope: !3303)
!3370 = !DISubprogram(name: "fileno", scope: !325, file: !325, line: 809, type: !3304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!3371 = !DISubprogram(name: "fclose", scope: !325, file: !325, line: 178, type: !3304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!3372 = !DISubprogram(name: "__freading", scope: !3300, file: !3300, line: 51, type: !3304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!3373 = !DISubprogram(name: "lseek", scope: !1029, file: !1029, line: 339, type: !3374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!257, !99, !257, !99}
!3376 = distinct !DISubprogram(name: "rpl_fflush", scope: !698, file: !698, line: 130, type: !3377, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !3413)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!99, !3379}
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3381)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3382)
!3382 = !{!3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3381, file: !235, line: 51, baseType: !99, size: 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3381, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3381, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3381, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3381, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3381, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3381, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3381, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3381, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3381, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3381, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3381, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3381, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3381, file: !235, line: 70, baseType: !3397, size: 64, offset: 832)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3381, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3381, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3381, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3381, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3381, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3381, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3381, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3381, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3381, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3381, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3381, file: !235, line: 93, baseType: !3397, size: 64, offset: 1344)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3381, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3381, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3381, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3381, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!3413 = !{!3414}
!3414 = !DILocalVariable(name: "stream", arg: 1, scope: !3376, file: !698, line: 130, type: !3379)
!3415 = !DILocation(line: 0, scope: !3376)
!3416 = !DILocation(line: 151, column: 14, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3376, file: !698, line: 151, column: 7)
!3418 = !DILocation(line: 151, column: 22, scope: !3417)
!3419 = !DILocation(line: 151, column: 27, scope: !3417)
!3420 = !DILocation(line: 151, column: 7, scope: !3376)
!3421 = !DILocation(line: 152, column: 12, scope: !3417)
!3422 = !DILocation(line: 152, column: 5, scope: !3417)
!3423 = !DILocalVariable(name: "fp", arg: 1, scope: !3424, file: !698, line: 42, type: !3379)
!3424 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !698, file: !698, line: 42, type: !3425, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !3427)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{null, !3379}
!3427 = !{!3423}
!3428 = !DILocation(line: 0, scope: !3424, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 157, column: 3, scope: !3376)
!3430 = !DILocation(line: 44, column: 12, scope: !3431, inlinedAt: !3429)
!3431 = distinct !DILexicalBlock(scope: !3424, file: !698, line: 44, column: 7)
!3432 = !DILocation(line: 44, column: 19, scope: !3431, inlinedAt: !3429)
!3433 = !DILocation(line: 44, column: 7, scope: !3424, inlinedAt: !3429)
!3434 = !DILocation(line: 46, column: 5, scope: !3431, inlinedAt: !3429)
!3435 = !DILocation(line: 159, column: 10, scope: !3376)
!3436 = !DILocation(line: 159, column: 3, scope: !3376)
!3437 = !DILocation(line: 236, column: 1, scope: !3376)
!3438 = !DISubprogram(name: "fflush", scope: !325, file: !325, line: 230, type: !3377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!3439 = distinct !DISubprogram(name: "rpl_fseeko", scope: !700, file: !700, line: 28, type: !3440, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3477)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!99, !3442, !3476, !99}
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3444)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3445)
!3445 = !{!3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3444, file: !235, line: 51, baseType: !99, size: 32)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3444, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3444, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3444, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3444, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3444, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3444, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3444, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3444, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3444, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3444, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3444, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3444, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3444, file: !235, line: 70, baseType: !3460, size: 64, offset: 832)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3444, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3444, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3444, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3444, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3444, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3444, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3444, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3444, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3444, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3444, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3444, file: !235, line: 93, baseType: !3460, size: 64, offset: 1344)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3444, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3444, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3444, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3444, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!3476 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !325, line: 63, baseType: !257)
!3477 = !{!3478, !3479, !3480, !3481}
!3478 = !DILocalVariable(name: "fp", arg: 1, scope: !3439, file: !700, line: 28, type: !3442)
!3479 = !DILocalVariable(name: "offset", arg: 2, scope: !3439, file: !700, line: 28, type: !3476)
!3480 = !DILocalVariable(name: "whence", arg: 3, scope: !3439, file: !700, line: 28, type: !99)
!3481 = !DILocalVariable(name: "pos", scope: !3482, file: !700, line: 123, type: !3476)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !700, line: 119, column: 5)
!3483 = distinct !DILexicalBlock(scope: !3439, file: !700, line: 55, column: 7)
!3484 = !DILocation(line: 0, scope: !3439)
!3485 = !DILocation(line: 55, column: 12, scope: !3483)
!3486 = !{!1167, !726, i64 16}
!3487 = !DILocation(line: 55, column: 33, scope: !3483)
!3488 = !{!1167, !726, i64 8}
!3489 = !DILocation(line: 55, column: 25, scope: !3483)
!3490 = !DILocation(line: 56, column: 7, scope: !3483)
!3491 = !DILocation(line: 56, column: 15, scope: !3483)
!3492 = !DILocation(line: 56, column: 37, scope: !3483)
!3493 = !{!1167, !726, i64 32}
!3494 = !DILocation(line: 56, column: 29, scope: !3483)
!3495 = !DILocation(line: 57, column: 7, scope: !3483)
!3496 = !DILocation(line: 57, column: 15, scope: !3483)
!3497 = !{!1167, !726, i64 72}
!3498 = !DILocation(line: 57, column: 29, scope: !3483)
!3499 = !DILocation(line: 55, column: 7, scope: !3439)
!3500 = !DILocation(line: 123, column: 26, scope: !3482)
!3501 = !DILocation(line: 123, column: 19, scope: !3482)
!3502 = !DILocation(line: 0, scope: !3482)
!3503 = !DILocation(line: 124, column: 15, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3482, file: !700, line: 124, column: 11)
!3505 = !DILocation(line: 124, column: 11, scope: !3482)
!3506 = !DILocation(line: 135, column: 19, scope: !3482)
!3507 = !DILocation(line: 136, column: 12, scope: !3482)
!3508 = !DILocation(line: 136, column: 20, scope: !3482)
!3509 = !{!1167, !1168, i64 144}
!3510 = !DILocation(line: 167, column: 7, scope: !3482)
!3511 = !DILocation(line: 169, column: 10, scope: !3439)
!3512 = !DILocation(line: 169, column: 3, scope: !3439)
!3513 = !DILocation(line: 170, column: 1, scope: !3439)
!3514 = !DISubprogram(name: "fseeko", scope: !325, file: !325, line: 736, type: !3515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!99, !3442, !257, !99}
!3517 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !627, file: !627, line: 100, type: !3518, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !3521)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!101, !1333, !75, !101, !3520}
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!3521 = !{!3522, !3523, !3524, !3525, !3526}
!3522 = !DILocalVariable(name: "pwc", arg: 1, scope: !3517, file: !627, line: 100, type: !1333)
!3523 = !DILocalVariable(name: "s", arg: 2, scope: !3517, file: !627, line: 100, type: !75)
!3524 = !DILocalVariable(name: "n", arg: 3, scope: !3517, file: !627, line: 100, type: !101)
!3525 = !DILocalVariable(name: "ps", arg: 4, scope: !3517, file: !627, line: 100, type: !3520)
!3526 = !DILocalVariable(name: "ret", scope: !3517, file: !627, line: 130, type: !101)
!3527 = !DILocation(line: 0, scope: !3517)
!3528 = !DILocation(line: 105, column: 9, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3517, file: !627, line: 105, column: 7)
!3530 = !DILocation(line: 105, column: 7, scope: !3517)
!3531 = !DILocation(line: 117, column: 10, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3517, file: !627, line: 117, column: 7)
!3533 = !DILocation(line: 117, column: 7, scope: !3517)
!3534 = !DILocation(line: 130, column: 16, scope: !3517)
!3535 = !DILocation(line: 135, column: 11, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3517, file: !627, line: 135, column: 7)
!3537 = !DILocation(line: 135, column: 25, scope: !3536)
!3538 = !DILocation(line: 135, column: 30, scope: !3536)
!3539 = !DILocation(line: 135, column: 7, scope: !3517)
!3540 = !DILocalVariable(name: "ps", arg: 1, scope: !3541, file: !1306, line: 1135, type: !3520)
!3541 = distinct !DISubprogram(name: "mbszero", scope: !1306, file: !1306, line: 1135, type: !3542, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !3544)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{null, !3520}
!3544 = !{!3540}
!3545 = !DILocation(line: 0, scope: !3541, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 137, column: 5, scope: !3536)
!3547 = !DILocalVariable(name: "__dest", arg: 1, scope: !3548, file: !1315, line: 57, type: !98)
!3548 = distinct !DISubprogram(name: "memset", scope: !1315, file: !1315, line: 57, type: !1316, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !3549)
!3549 = !{!3547, !3550, !3551}
!3550 = !DILocalVariable(name: "__ch", arg: 2, scope: !3548, file: !1315, line: 57, type: !99)
!3551 = !DILocalVariable(name: "__len", arg: 3, scope: !3548, file: !1315, line: 57, type: !101)
!3552 = !DILocation(line: 0, scope: !3548, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 1137, column: 3, scope: !3541, inlinedAt: !3546)
!3554 = !DILocation(line: 59, column: 10, scope: !3548, inlinedAt: !3553)
!3555 = !DILocation(line: 137, column: 5, scope: !3536)
!3556 = !DILocation(line: 138, column: 11, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3517, file: !627, line: 138, column: 7)
!3558 = !DILocation(line: 138, column: 7, scope: !3517)
!3559 = !DILocation(line: 139, column: 5, scope: !3557)
!3560 = !DILocation(line: 143, column: 26, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3517, file: !627, line: 143, column: 7)
!3562 = !DILocation(line: 143, column: 41, scope: !3561)
!3563 = !DILocation(line: 143, column: 7, scope: !3517)
!3564 = !DILocation(line: 145, column: 15, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !627, line: 145, column: 11)
!3566 = distinct !DILexicalBlock(scope: !3561, file: !627, line: 144, column: 5)
!3567 = !DILocation(line: 145, column: 11, scope: !3566)
!3568 = !DILocation(line: 146, column: 32, scope: !3565)
!3569 = !DILocation(line: 146, column: 16, scope: !3565)
!3570 = !DILocation(line: 146, column: 14, scope: !3565)
!3571 = !DILocation(line: 146, column: 9, scope: !3565)
!3572 = !DILocation(line: 286, column: 1, scope: !3517)
!3573 = !DISubprogram(name: "mbsinit", scope: !3574, file: !3574, line: 293, type: !3575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!3574 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!99, !3577}
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!3579 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !702, file: !702, line: 27, type: !2789, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3580)
!3580 = !{!3581, !3582, !3583, !3584}
!3581 = !DILocalVariable(name: "ptr", arg: 1, scope: !3579, file: !702, line: 27, type: !98)
!3582 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3579, file: !702, line: 27, type: !101)
!3583 = !DILocalVariable(name: "size", arg: 3, scope: !3579, file: !702, line: 27, type: !101)
!3584 = !DILocalVariable(name: "nbytes", scope: !3579, file: !702, line: 29, type: !101)
!3585 = !DILocation(line: 0, scope: !3579)
!3586 = !DILocation(line: 30, column: 7, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3579, file: !702, line: 30, column: 7)
!3588 = !DILocalVariable(name: "ptr", arg: 1, scope: !3589, file: !2881, line: 2057, type: !98)
!3589 = distinct !DISubprogram(name: "rpl_realloc", scope: !2881, file: !2881, line: 2057, type: !2873, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3590)
!3590 = !{!3588, !3591}
!3591 = !DILocalVariable(name: "size", arg: 2, scope: !3589, file: !2881, line: 2057, type: !101)
!3592 = !DILocation(line: 0, scope: !3589, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 37, column: 10, scope: !3579)
!3594 = !DILocation(line: 2059, column: 24, scope: !3589, inlinedAt: !3593)
!3595 = !DILocation(line: 2059, column: 10, scope: !3589, inlinedAt: !3593)
!3596 = !DILocation(line: 37, column: 3, scope: !3579)
!3597 = !DILocation(line: 32, column: 7, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3587, file: !702, line: 31, column: 5)
!3599 = !DILocation(line: 32, column: 13, scope: !3598)
!3600 = !DILocation(line: 33, column: 7, scope: !3598)
!3601 = !DILocation(line: 38, column: 1, scope: !3579)
!3602 = distinct !DISubprogram(name: "hard_locale", scope: !645, file: !645, line: 28, type: !3603, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !3605)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!218, !99}
!3605 = !{!3606, !3607}
!3606 = !DILocalVariable(name: "category", arg: 1, scope: !3602, file: !645, line: 28, type: !99)
!3607 = !DILocalVariable(name: "locale", scope: !3602, file: !645, line: 30, type: !3608)
!3608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3609)
!3609 = !{!3610}
!3610 = !DISubrange(count: 257)
!3611 = !DILocation(line: 0, scope: !3602)
!3612 = !DILocation(line: 30, column: 3, scope: !3602)
!3613 = !DILocation(line: 30, column: 8, scope: !3602)
!3614 = !DILocation(line: 32, column: 7, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3602, file: !645, line: 32, column: 7)
!3616 = !DILocation(line: 32, column: 7, scope: !3602)
!3617 = !DILocalVariable(name: "__s1", arg: 1, scope: !3618, file: !760, line: 1359, type: !75)
!3618 = distinct !DISubprogram(name: "streq", scope: !760, file: !760, line: 1359, type: !761, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !3619)
!3619 = !{!3617, !3620}
!3620 = !DILocalVariable(name: "__s2", arg: 2, scope: !3618, file: !760, line: 1359, type: !75)
!3621 = !DILocation(line: 0, scope: !3618, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 35, column: 9, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3602, file: !645, line: 35, column: 7)
!3624 = !DILocation(line: 1361, column: 11, scope: !3618, inlinedAt: !3622)
!3625 = !DILocation(line: 1361, column: 10, scope: !3618, inlinedAt: !3622)
!3626 = !DILocation(line: 35, column: 29, scope: !3623)
!3627 = !DILocation(line: 0, scope: !3618, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 35, column: 32, scope: !3623)
!3629 = !DILocation(line: 1361, column: 11, scope: !3618, inlinedAt: !3628)
!3630 = !DILocation(line: 1361, column: 10, scope: !3618, inlinedAt: !3628)
!3631 = !DILocation(line: 35, column: 7, scope: !3602)
!3632 = !DILocation(line: 46, column: 3, scope: !3602)
!3633 = !DILocation(line: 47, column: 1, scope: !3602)
!3634 = distinct !DISubprogram(name: "setlocale_null_r", scope: !707, file: !707, line: 154, type: !3635, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3637)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!99, !99, !97, !101}
!3637 = !{!3638, !3639, !3640}
!3638 = !DILocalVariable(name: "category", arg: 1, scope: !3634, file: !707, line: 154, type: !99)
!3639 = !DILocalVariable(name: "buf", arg: 2, scope: !3634, file: !707, line: 154, type: !97)
!3640 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3634, file: !707, line: 154, type: !101)
!3641 = !DILocation(line: 0, scope: !3634)
!3642 = !DILocation(line: 159, column: 10, scope: !3634)
!3643 = !DILocation(line: 159, column: 3, scope: !3634)
!3644 = distinct !DISubprogram(name: "setlocale_null", scope: !707, file: !707, line: 186, type: !3645, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3647)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!75, !99}
!3647 = !{!3648}
!3648 = !DILocalVariable(name: "category", arg: 1, scope: !3644, file: !707, line: 186, type: !99)
!3649 = !DILocation(line: 0, scope: !3644)
!3650 = !DILocation(line: 189, column: 10, scope: !3644)
!3651 = !DILocation(line: 189, column: 3, scope: !3644)
!3652 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !709, file: !709, line: 35, type: !3645, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3653)
!3653 = !{!3654, !3655}
!3654 = !DILocalVariable(name: "category", arg: 1, scope: !3652, file: !709, line: 35, type: !99)
!3655 = !DILocalVariable(name: "result", scope: !3652, file: !709, line: 37, type: !75)
!3656 = !DILocation(line: 0, scope: !3652)
!3657 = !DILocation(line: 37, column: 24, scope: !3652)
!3658 = !DILocation(line: 62, column: 3, scope: !3652)
!3659 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !709, file: !709, line: 66, type: !3635, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3660)
!3660 = !{!3661, !3662, !3663, !3664, !3665}
!3661 = !DILocalVariable(name: "category", arg: 1, scope: !3659, file: !709, line: 66, type: !99)
!3662 = !DILocalVariable(name: "buf", arg: 2, scope: !3659, file: !709, line: 66, type: !97)
!3663 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3659, file: !709, line: 66, type: !101)
!3664 = !DILocalVariable(name: "result", scope: !3659, file: !709, line: 111, type: !75)
!3665 = !DILocalVariable(name: "length", scope: !3666, file: !709, line: 125, type: !101)
!3666 = distinct !DILexicalBlock(scope: !3667, file: !709, line: 124, column: 5)
!3667 = distinct !DILexicalBlock(scope: !3659, file: !709, line: 113, column: 7)
!3668 = !DILocation(line: 0, scope: !3659)
!3669 = !DILocation(line: 0, scope: !3652, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 111, column: 24, scope: !3659)
!3671 = !DILocation(line: 37, column: 24, scope: !3652, inlinedAt: !3670)
!3672 = !DILocation(line: 113, column: 14, scope: !3667)
!3673 = !DILocation(line: 113, column: 7, scope: !3659)
!3674 = !DILocation(line: 116, column: 19, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !709, line: 116, column: 11)
!3676 = distinct !DILexicalBlock(scope: !3667, file: !709, line: 114, column: 5)
!3677 = !DILocation(line: 116, column: 11, scope: !3676)
!3678 = !DILocation(line: 120, column: 16, scope: !3675)
!3679 = !DILocation(line: 120, column: 9, scope: !3675)
!3680 = !DILocation(line: 125, column: 23, scope: !3666)
!3681 = !DILocation(line: 0, scope: !3666)
!3682 = !DILocation(line: 126, column: 18, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3666, file: !709, line: 126, column: 11)
!3684 = !DILocation(line: 126, column: 11, scope: !3666)
!3685 = !DILocation(line: 128, column: 39, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3683, file: !709, line: 127, column: 9)
!3687 = !DILocalVariable(name: "__dest", arg: 1, scope: !3688, file: !1315, line: 26, type: !3149)
!3688 = distinct !DISubprogram(name: "memcpy", scope: !1315, file: !1315, line: 26, type: !3147, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3689)
!3689 = !{!3687, !3690, !3691}
!3690 = !DILocalVariable(name: "__src", arg: 2, scope: !3688, file: !1315, line: 26, type: !926)
!3691 = !DILocalVariable(name: "__len", arg: 3, scope: !3688, file: !1315, line: 26, type: !101)
!3692 = !DILocation(line: 0, scope: !3688, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 128, column: 11, scope: !3686)
!3694 = !DILocation(line: 29, column: 10, scope: !3688, inlinedAt: !3693)
!3695 = !DILocation(line: 129, column: 11, scope: !3686)
!3696 = !DILocation(line: 133, column: 23, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3698, file: !709, line: 133, column: 15)
!3698 = distinct !DILexicalBlock(scope: !3683, file: !709, line: 132, column: 9)
!3699 = !DILocation(line: 133, column: 15, scope: !3698)
!3700 = !DILocation(line: 138, column: 44, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3697, file: !709, line: 134, column: 13)
!3702 = !DILocation(line: 0, scope: !3688, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 138, column: 15, scope: !3701)
!3704 = !DILocation(line: 29, column: 10, scope: !3688, inlinedAt: !3703)
!3705 = !DILocation(line: 139, column: 15, scope: !3701)
!3706 = !DILocation(line: 139, column: 32, scope: !3701)
!3707 = !DILocation(line: 140, column: 13, scope: !3701)
!3708 = !DILocation(line: 0, scope: !3667)
!3709 = !DILocation(line: 145, column: 1, scope: !3659)
