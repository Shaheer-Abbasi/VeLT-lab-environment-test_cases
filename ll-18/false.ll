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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !353
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !319
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
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !718 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !722, metadata !DIExpression()), !dbg !723
  %2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !724
  %3 = load ptr, ptr @program_name, align 8, !dbg !724, !tbaa !725
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %2, ptr noundef %3, ptr noundef %3) #37, !dbg !724
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !729
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %5) #37, !dbg !729
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !730
  tail call fastcc void @oputs_(ptr noundef %7), !dbg !730
  %8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !731
  tail call fastcc void @oputs_(ptr noundef %8), !dbg !731
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !732
  %10 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef nonnull @.str.3) #37, !dbg !732
  tail call fastcc void @emit_ancillary_info(), !dbg !733
  tail call void @exit(i32 noundef %0) #38, !dbg !734
  unreachable, !dbg !734
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !735 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !739 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !71 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !212, metadata !DIExpression()), !dbg !744
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !213, metadata !DIExpression()), !dbg !744
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !745, !tbaa !746
  %3 = icmp eq i32 %2, -1, !dbg !748
  br i1 %3, label %4, label %16, !dbg !749

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.14) #37, !dbg !750
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !214, metadata !DIExpression()), !dbg !751
  %6 = icmp eq ptr %5, null, !dbg !752
  br i1 %6, label %14, label %7, !dbg !753

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !754, !tbaa !755
  %9 = icmp eq i8 %8, 0, !dbg !754
  br i1 %9, label %14, label %10, !dbg !756

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !757, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !763, metadata !DIExpression()), !dbg !764
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.15) #39, !dbg !766
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
  %20 = load ptr, ptr @stdout, align 8, !dbg !773, !tbaa !725
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !773
  br label %121, !dbg !775

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !217, metadata !DIExpression()), !dbg !744
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.16) #39, !dbg !776
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !777
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !219, metadata !DIExpression()), !dbg !744
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !778
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !220, metadata !DIExpression()), !dbg !744
  %26 = icmp eq ptr %25, null, !dbg !779
  br i1 %26, label %53, label %27, !dbg !780

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !781
  br i1 %28, label %53, label %29, !dbg !782

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !221, metadata !DIExpression()), !dbg !783
  tail call void @llvm.dbg.value(metadata i64 0, metadata !225, metadata !DIExpression()), !dbg !783
  %30 = icmp ult ptr %24, %25, !dbg !784
  br i1 %30, label %31, label %53, !dbg !785

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !744
  %33 = load ptr, ptr %32, align 8, !tbaa !725
  br label %34, !dbg !785

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !221, metadata !DIExpression()), !dbg !783
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !225, metadata !DIExpression()), !dbg !783
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !786
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !221, metadata !DIExpression()), !dbg !783
  %38 = load i8, ptr %35, align 1, !dbg !786, !tbaa !755
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !786
  %41 = load i16, ptr %40, align 2, !dbg !786, !tbaa !787
  %42 = freeze i16 %41, !dbg !789
  %43 = lshr i16 %42, 13, !dbg !789
  %44 = and i16 %43, 1, !dbg !789
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !790
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !225, metadata !DIExpression()), !dbg !783
  %47 = icmp ult ptr %37, %25, !dbg !784
  %48 = icmp ult i64 %46, 2, !dbg !791
  %49 = select i1 %47, i1 %48, i1 false, !dbg !791
  br i1 %49, label %34, label %50, !dbg !785, !llvm.loop !792

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !790
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !794
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !796
  br label %53, !dbg !796

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !744
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !217, metadata !DIExpression()), !dbg !744
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !220, metadata !DIExpression()), !dbg !744
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.17) #39, !dbg !797
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !226, metadata !DIExpression()), !dbg !744
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !798
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !227, metadata !DIExpression()), !dbg !744
  br label %58, !dbg !799

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !744
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !217, metadata !DIExpression()), !dbg !744
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !227, metadata !DIExpression()), !dbg !744
  %61 = load i8, ptr %59, align 1, !dbg !800, !tbaa !755
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !801

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !802
  %64 = load i8, ptr %63, align 1, !dbg !805, !tbaa !755
  %65 = icmp ne i8 %64, 45, !dbg !806
  %66 = select i1 %65, i1 %60, i1 false, !dbg !807
  br label %67, !dbg !807

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !217, metadata !DIExpression()), !dbg !744
  %69 = tail call ptr @__ctype_b_loc() #40, !dbg !808
  %70 = load ptr, ptr %69, align 8, !dbg !808, !tbaa !725
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !808
  %73 = load i16, ptr %72, align 2, !dbg !808, !tbaa !787
  %74 = and i16 %73, 8192, !dbg !808
  %75 = icmp eq i16 %74, 0, !dbg !808
  br i1 %75, label %89, label %76, !dbg !810

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !811
  br i1 %77, label %91, label %78, !dbg !814

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !815
  %80 = load i8, ptr %79, align 1, !dbg !815, !tbaa !755
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !815
  %83 = load i16, ptr %82, align 2, !dbg !815, !tbaa !787
  %84 = and i16 %83, 8192, !dbg !815
  %85 = icmp eq i16 %84, 0, !dbg !815
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !816
  br i1 %88, label %89, label %91, !dbg !816

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !817
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !227, metadata !DIExpression()), !dbg !744
  br label %58, !dbg !799, !llvm.loop !818

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !744
  %92 = ptrtoint ptr %24 to i64, !dbg !820
  %93 = load ptr, ptr @stdout, align 8, !dbg !820, !tbaa !725
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !820
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata !823, metadata !763, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata !823, metadata !763, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata !823, metadata !763, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata !823, metadata !763, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata !823, metadata !763, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata !823, metadata !763, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata !823, metadata !763, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata !823, metadata !763, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata !823, metadata !763, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !757, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata !823, metadata !763, metadata !DIExpression()), !dbg !840
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !284, metadata !DIExpression()), !dbg !744
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.10, i64 noundef 6) #39, !dbg !842
  %96 = icmp eq i32 %95, 0, !dbg !842
  br i1 %96, label %100, label %97, !dbg !844

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.11, i64 noundef 9) #39, !dbg !845
  %99 = icmp eq i32 %98, 0, !dbg !845
  br i1 %99, label %100, label %103, !dbg !846

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !847
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #37, !dbg !847
  br label %106, !dbg !849

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !850
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #37, !dbg !850
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !852, !tbaa !725
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.35, ptr noundef %107), !dbg !852
  %109 = load ptr, ptr @stdout, align 8, !dbg !853, !tbaa !725
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %109), !dbg !853
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !854
  %112 = sub i64 %111, %92, !dbg !854
  %113 = load ptr, ptr @stdout, align 8, !dbg !854, !tbaa !725
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !854
  %115 = load ptr, ptr @stdout, align 8, !dbg !855, !tbaa !725
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %115), !dbg !855
  %117 = load ptr, ptr @stdout, align 8, !dbg !856, !tbaa !725
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %117), !dbg !856
  %119 = load ptr, ptr @stdout, align 8, !dbg !857, !tbaa !725
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !857
  br label %121, !dbg !858

121:                                              ; preds = %106, %19
  ret void, !dbg !858
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #4 !dbg !859 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !863, metadata !DIExpression()), !dbg !876
  tail call void @llvm.dbg.value(metadata !823, metadata !872, metadata !DIExpression()), !dbg !876
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !871, metadata !DIExpression()), !dbg !876
  tail call void @emit_bug_reporting_address() #37, !dbg !877
  %1 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !878
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !874, metadata !DIExpression()), !dbg !876
  %2 = icmp eq ptr %1, null, !dbg !879
  br i1 %2, label %10, label %3, !dbg !881

3:                                                ; preds = %0
  %4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.42, i64 noundef 3) #39, !dbg !882
  %5 = icmp eq i32 %4, 0, !dbg !882
  br i1 %5, label %10, label %6, !dbg !883

6:                                                ; preds = %3
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #37, !dbg !884
  %8 = load ptr, ptr @stdout, align 8, !dbg !884, !tbaa !725
  %9 = tail call i32 @fputs_unlocked(ptr noundef %7, ptr noundef %8), !dbg !884
  br label %10, !dbg !886

10:                                               ; preds = %6, %3, %0
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !871, metadata !DIExpression()), !dbg !876
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !875, metadata !DIExpression()), !dbg !876
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #37, !dbg !887
  %12 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %11, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3) #37, !dbg !887
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #37, !dbg !888
  %14 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.46) #37, !dbg !888
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
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !dbg !929 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !934, metadata !DIExpression()), !dbg !936
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !935, metadata !DIExpression()), !dbg !936
  %3 = icmp eq i32 %0, 2, !dbg !937
  br i1 %3, label %4, label %22, !dbg !939

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !dbg !940, !tbaa !725
  tail call void @set_program_name(ptr noundef %5) #37, !dbg !942
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.7) #37, !dbg !943
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #37, !dbg !944
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.8) #37, !dbg !945
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !946
  %10 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !947
  %11 = load ptr, ptr %10, align 8, !dbg !947, !tbaa !725
  call void @llvm.dbg.value(metadata ptr %11, metadata !757, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !763, metadata !DIExpression()), !dbg !949
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(7) @.str.10) #39, !dbg !951
  %13 = icmp eq i32 %12, 0, !dbg !952
  br i1 %13, label %14, label %15, !dbg !953

14:                                               ; preds = %4
  tail call void @usage(i32 noundef 1) #41, !dbg !954
  unreachable, !dbg !954

15:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr %11, metadata !757, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr @.str.11, metadata !763, metadata !DIExpression()), !dbg !955
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(10) @.str.11) #39, !dbg !958
  %17 = icmp eq i32 %16, 0, !dbg !959
  br i1 %17, label %18, label %22, !dbg !960

18:                                               ; preds = %15
  %19 = load ptr, ptr @stdout, align 8, !dbg !961, !tbaa !725
  %20 = load ptr, ptr @Version, align 8, !dbg !962, !tbaa !725
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #37, !dbg !963
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %20, ptr noundef %21, ptr noundef null) #37, !dbg !964
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
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !976, metadata !DIExpression()), !dbg !977
  store ptr %0, ptr @file_name, align 8, !dbg !978, !tbaa !725
  ret void, !dbg !979
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !980 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !984, metadata !DIExpression()), !dbg !985
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !986, !tbaa !987
  ret void, !dbg !989
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !990 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !995, !tbaa !725
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !996
  %3 = icmp eq i32 %2, 0, !dbg !997
  br i1 %3, label %22, label %4, !dbg !998

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !999, !tbaa !987, !range !1000, !noundef !823
  %6 = icmp eq i8 %5, 0, !dbg !999
  br i1 %6, label %11, label %7, !dbg !1001

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1002
  %9 = load i32, ptr %8, align 4, !dbg !1002, !tbaa !746
  %10 = icmp eq i32 %9, 32, !dbg !1003
  br i1 %10, label %22, label %11, !dbg !1004

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1.22, i32 noundef 5) #37, !dbg !1005
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !992, metadata !DIExpression()), !dbg !1006
  %13 = load ptr, ptr @file_name, align 8, !dbg !1007, !tbaa !725
  %14 = icmp eq ptr %13, null, !dbg !1007
  %15 = tail call ptr @__errno_location() #40, !dbg !1009
  %16 = load i32, ptr %15, align 4, !dbg !1009, !tbaa !746
  br i1 %14, label %19, label %17, !dbg !1010

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1011
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.23, ptr noundef %18, ptr noundef %12) #37, !dbg !1011
  br label %20, !dbg !1011

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.24, ptr noundef %12) #37, !dbg !1012
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1013, !tbaa !746
  tail call void @_exit(i32 noundef %21) #38, !dbg !1014
  unreachable, !dbg !1014

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1015, !tbaa !725
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1017
  %25 = icmp eq i32 %24, 0, !dbg !1018
  br i1 %25, label %28, label %26, !dbg !1019

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1020, !tbaa !746
  tail call void @_exit(i32 noundef %27) #38, !dbg !1021
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
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1034, metadata !DIExpression()), !dbg !1038
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1035, metadata !DIExpression()), !dbg !1038
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1036, metadata !DIExpression()), !dbg !1038
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1037, metadata !DIExpression(DW_OP_deref)), !dbg !1038
  tail call fastcc void @flush_stdout(), !dbg !1039
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1040, !tbaa !725
  %7 = icmp eq ptr %6, null, !dbg !1040
  br i1 %7, label %9, label %8, !dbg !1042

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1043
  br label %13, !dbg !1043

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1044, !tbaa !725
  %11 = tail call ptr @getprogname() #39, !dbg !1044
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef %11) #37, !dbg !1044
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1046
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1046, !tbaa.struct !1047
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1046
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1046
  ret void, !dbg !1048
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1049 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1051, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata i32 1, metadata !1053, metadata !DIExpression()), !dbg !1058
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1061
  %2 = icmp slt i32 %1, 0, !dbg !1062
  br i1 %2, label %6, label %3, !dbg !1063

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1064, !tbaa !725
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1064
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
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1110
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1106, metadata !DIExpression()), !dbg !1111
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1107, metadata !DIExpression()), !dbg !1111
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1108, metadata !DIExpression()), !dbg !1111
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1109, metadata !DIExpression(DW_OP_deref)), !dbg !1111
  %7 = load ptr, ptr @stderr, align 8, !dbg !1112, !tbaa !725
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1113, !noalias !1122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1126
  call void @llvm.dbg.value(metadata ptr %7, metadata !1118, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata ptr %2, metadata !1119, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata ptr poison, metadata !1120, metadata !DIExpression(DW_OP_deref)), !dbg !1127
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !1113
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1113, !noalias !1122
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1128, !tbaa !746
  %10 = add i32 %9, 1, !dbg !1128
  store i32 %10, ptr @error_message_count, align 4, !dbg !1128, !tbaa !746
  %11 = icmp eq i32 %1, 0, !dbg !1129
  br i1 %11, label %21, label %12, !dbg !1131

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1132, metadata !DIExpression(), metadata !1110, metadata ptr %5, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i32 %1, metadata !1135, metadata !DIExpression()), !dbg !1140
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1142
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1143
  call void @llvm.dbg.value(metadata ptr %13, metadata !1136, metadata !DIExpression()), !dbg !1140
  %14 = icmp eq ptr %13, null, !dbg !1144
  br i1 %14, label %15, label %17, !dbg !1146

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.26, ptr noundef nonnull @.str.5.27, i32 noundef 5) #37, !dbg !1147
  call void @llvm.dbg.value(metadata ptr %16, metadata !1136, metadata !DIExpression()), !dbg !1140
  br label %17, !dbg !1148

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1140
  call void @llvm.dbg.value(metadata ptr %18, metadata !1136, metadata !DIExpression()), !dbg !1140
  %19 = load ptr, ptr @stderr, align 8, !dbg !1149, !tbaa !725
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.28, ptr noundef %18) #37, !dbg !1149
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1150
  br label %21, !dbg !1151

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1152, !tbaa !725
  call void @llvm.dbg.value(metadata i32 10, metadata !1153, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata ptr %22, metadata !1159, metadata !DIExpression()), !dbg !1160
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1162
  %24 = load ptr, ptr %23, align 8, !dbg !1162, !tbaa !1163
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1162
  %26 = load ptr, ptr %25, align 8, !dbg !1162, !tbaa !1166
  %27 = icmp ult ptr %24, %26, !dbg !1162
  br i1 %27, label %30, label %28, !dbg !1162, !prof !1167

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !1162
  br label %32, !dbg !1162

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1162
  store ptr %31, ptr %23, align 8, !dbg !1162, !tbaa !1163
  store i8 10, ptr %24, align 1, !dbg !1162, !tbaa !755
  br label %32, !dbg !1162

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1168, !tbaa !725
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !1168
  %35 = icmp eq i32 %0, 0, !dbg !1169
  br i1 %35, label %37, label %36, !dbg !1171

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #38, !dbg !1172
  unreachable, !dbg !1172

37:                                               ; preds = %32
  ret void, !dbg !1173
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1174 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1177 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1180 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1183 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1186 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1190 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1198
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1197, metadata !DIExpression(), metadata !1198, metadata ptr %4, metadata !DIExpression()), !dbg !1199
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1194, metadata !DIExpression()), !dbg !1199
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1195, metadata !DIExpression()), !dbg !1199
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1196, metadata !DIExpression()), !dbg !1199
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !1200
  call void @llvm.va_start(ptr nonnull %4), !dbg !1201
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1202, !tbaa.struct !1047
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #42, !dbg !1202
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1202
  call void @llvm.va_end(ptr nonnull %4), !dbg !1203
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !1204
  ret void, !dbg !1204
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !321 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !337, metadata !DIExpression()), !dbg !1205
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !338, metadata !DIExpression()), !dbg !1205
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !339, metadata !DIExpression()), !dbg !1205
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !340, metadata !DIExpression()), !dbg !1205
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !341, metadata !DIExpression()), !dbg !1205
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !342, metadata !DIExpression(DW_OP_deref)), !dbg !1205
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1206, !tbaa !746
  %9 = icmp eq i32 %8, 0, !dbg !1206
  br i1 %9, label %24, label %10, !dbg !1208

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1209, !tbaa !746
  %12 = icmp eq i32 %11, %3, !dbg !1212
  br i1 %12, label %13, label %23, !dbg !1213

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1214, !tbaa !725
  %15 = icmp eq ptr %14, %2, !dbg !1215
  br i1 %15, label %37, label %16, !dbg !1216

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1217
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1218
  br i1 %19, label %20, label %23, !dbg !1218

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1219
  %22 = icmp eq i32 %21, 0, !dbg !1220
  br i1 %22, label %37, label %23, !dbg !1221

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1222, !tbaa !725
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1223, !tbaa !746
  br label %24, !dbg !1224

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1225
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1226, !tbaa !725
  %26 = icmp eq ptr %25, null, !dbg !1226
  br i1 %26, label %28, label %27, !dbg !1228

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !1229
  br label %32, !dbg !1229

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1230, !tbaa !725
  %30 = tail call ptr @getprogname() #39, !dbg !1230
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.31, ptr noundef %30) #37, !dbg !1230
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1232, !tbaa !725
  %34 = icmp eq ptr %2, null, !dbg !1232
  %35 = select i1 %34, ptr @.str.3.32, ptr @.str.2.33, !dbg !1232
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !1232
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1233, !tbaa.struct !1047
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1233
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1233
  br label %37, !dbg !1234

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1234
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1235 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1245
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1244, metadata !DIExpression(), metadata !1245, metadata ptr %6, metadata !DIExpression()), !dbg !1246
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1239, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1240, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1241, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1242, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1243, metadata !DIExpression()), !dbg !1246
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1247
  call void @llvm.va_start(ptr nonnull %6), !dbg !1248
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1249, !tbaa.struct !1047
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #42, !dbg !1249
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1249
  call void @llvm.va_end(ptr nonnull %6), !dbg !1250
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1251
  ret void, !dbg !1251
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1252 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1255, !tbaa !725
  ret ptr %1, !dbg !1256
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1257 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1259, metadata !DIExpression()), !dbg !1262
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1263
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1260, metadata !DIExpression()), !dbg !1262
  %3 = icmp eq ptr %2, null, !dbg !1264
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1264
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1264
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1261, metadata !DIExpression()), !dbg !1262
  %6 = ptrtoint ptr %5 to i64, !dbg !1265
  %7 = ptrtoint ptr %0 to i64, !dbg !1265
  %8 = sub i64 %6, %7, !dbg !1265
  %9 = icmp sgt i64 %8, 6, !dbg !1267
  br i1 %9, label %10, label %19, !dbg !1268

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1269
  call void @llvm.dbg.value(metadata ptr %11, metadata !1270, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata ptr @.str.47, metadata !1275, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 7, metadata !1276, metadata !DIExpression()), !dbg !1277
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.47, i64 7), !dbg !1279
  %13 = icmp eq i32 %12, 0, !dbg !1280
  br i1 %13, label %14, label %19, !dbg !1281

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1259, metadata !DIExpression()), !dbg !1262
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.48, i64 noundef 3) #39, !dbg !1282
  %16 = icmp eq i32 %15, 0, !dbg !1285
  %17 = select i1 %16, i64 3, i64 0, !dbg !1286
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1286
  br label %19, !dbg !1286

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1262
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1261, metadata !DIExpression()), !dbg !1262
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1259, metadata !DIExpression()), !dbg !1262
  store ptr %20, ptr @program_name, align 8, !dbg !1287, !tbaa !725
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1288, !tbaa !725
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1289, !tbaa !725
  ret void, !dbg !1290
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1291 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !379 {
  %3 = alloca i32, align 4, !DIAssignID !1292
  call void @llvm.dbg.assign(metadata i1 undef, metadata !389, metadata !DIExpression(), metadata !1292, metadata ptr %3, metadata !DIExpression()), !dbg !1293
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1294
  call void @llvm.dbg.assign(metadata i1 undef, metadata !394, metadata !DIExpression(), metadata !1294, metadata ptr %4, metadata !DIExpression()), !dbg !1293
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !386, metadata !DIExpression()), !dbg !1293
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !387, metadata !DIExpression()), !dbg !1293
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1295
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !388, metadata !DIExpression()), !dbg !1293
  %6 = icmp eq ptr %5, %0, !dbg !1296
  br i1 %6, label %7, label %14, !dbg !1298

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1299
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1300
  call void @llvm.dbg.value(metadata ptr %4, metadata !1301, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata ptr %4, metadata !1310, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i32 0, metadata !1316, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i64 8, metadata !1317, metadata !DIExpression()), !dbg !1318
  store i64 0, ptr %4, align 8, !dbg !1320
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1321
  %9 = icmp eq i64 %8, 2, !dbg !1323
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1324
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1293
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1325
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1325
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1293
  ret ptr %15, !dbg !1325
}

; Function Attrs: nounwind
declare !dbg !1326 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1332 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1337, metadata !DIExpression()), !dbg !1340
  %2 = tail call ptr @__errno_location() #40, !dbg !1341
  %3 = load i32, ptr %2, align 4, !dbg !1341, !tbaa !746
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1338, metadata !DIExpression()), !dbg !1340
  %4 = icmp eq ptr %0, null, !dbg !1342
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1342
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1343
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1339, metadata !DIExpression()), !dbg !1340
  store i32 %3, ptr %2, align 4, !dbg !1344, !tbaa !746
  ret ptr %6, !dbg !1345
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1346 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1352, metadata !DIExpression()), !dbg !1353
  %2 = icmp eq ptr %0, null, !dbg !1354
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1354
  %4 = load i32, ptr %3, align 8, !dbg !1355, !tbaa !1356
  ret i32 %4, !dbg !1358
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1359 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1363, metadata !DIExpression()), !dbg !1365
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1364, metadata !DIExpression()), !dbg !1365
  %3 = icmp eq ptr %0, null, !dbg !1366
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1366
  store i32 %1, ptr %4, align 8, !dbg !1367, !tbaa !1356
  ret void, !dbg !1368
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1369 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1373, metadata !DIExpression()), !dbg !1381
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1374, metadata !DIExpression()), !dbg !1381
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1375, metadata !DIExpression()), !dbg !1381
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1376, metadata !DIExpression()), !dbg !1381
  %4 = icmp eq ptr %0, null, !dbg !1382
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1382
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1383
  %7 = lshr i8 %1, 5, !dbg !1384
  %8 = zext nneg i8 %7 to i64, !dbg !1384
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1385
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1377, metadata !DIExpression()), !dbg !1381
  %10 = and i8 %1, 31, !dbg !1386
  %11 = zext nneg i8 %10 to i32, !dbg !1386
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1379, metadata !DIExpression()), !dbg !1381
  %12 = load i32, ptr %9, align 4, !dbg !1387, !tbaa !746
  %13 = lshr i32 %12, %11, !dbg !1388
  %14 = and i32 %13, 1, !dbg !1389
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1380, metadata !DIExpression()), !dbg !1381
  %15 = xor i32 %13, %2, !dbg !1390
  %16 = and i32 %15, 1, !dbg !1390
  %17 = shl nuw i32 %16, %11, !dbg !1391
  %18 = xor i32 %17, %12, !dbg !1392
  store i32 %18, ptr %9, align 4, !dbg !1392, !tbaa !746
  ret i32 %14, !dbg !1393
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1394 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1398, metadata !DIExpression()), !dbg !1401
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1399, metadata !DIExpression()), !dbg !1401
  %3 = icmp eq ptr %0, null, !dbg !1402
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1404
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1398, metadata !DIExpression()), !dbg !1401
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1405
  %6 = load i32, ptr %5, align 4, !dbg !1405, !tbaa !1406
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1400, metadata !DIExpression()), !dbg !1401
  store i32 %1, ptr %5, align 4, !dbg !1407, !tbaa !1406
  ret i32 %6, !dbg !1408
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1409 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1413, metadata !DIExpression()), !dbg !1416
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1414, metadata !DIExpression()), !dbg !1416
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1415, metadata !DIExpression()), !dbg !1416
  %4 = icmp eq ptr %0, null, !dbg !1417
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1419
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1413, metadata !DIExpression()), !dbg !1416
  store i32 10, ptr %5, align 8, !dbg !1420, !tbaa !1356
  %6 = icmp ne ptr %1, null, !dbg !1421
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1423
  br i1 %8, label %10, label %9, !dbg !1423

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1424
  unreachable, !dbg !1424

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1425
  store ptr %1, ptr %11, align 8, !dbg !1426, !tbaa !1427
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1428
  store ptr %2, ptr %12, align 8, !dbg !1429, !tbaa !1430
  ret void, !dbg !1431
}

; Function Attrs: noreturn nounwind
declare !dbg !1432 void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1433 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1437, metadata !DIExpression()), !dbg !1445
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1438, metadata !DIExpression()), !dbg !1445
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1439, metadata !DIExpression()), !dbg !1445
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1440, metadata !DIExpression()), !dbg !1445
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1441, metadata !DIExpression()), !dbg !1445
  %6 = icmp eq ptr %4, null, !dbg !1446
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1446
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1442, metadata !DIExpression()), !dbg !1445
  %8 = tail call ptr @__errno_location() #40, !dbg !1447
  %9 = load i32, ptr %8, align 4, !dbg !1447, !tbaa !746
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1443, metadata !DIExpression()), !dbg !1445
  %10 = load i32, ptr %7, align 8, !dbg !1448, !tbaa !1356
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1449
  %12 = load i32, ptr %11, align 4, !dbg !1449, !tbaa !1406
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1450
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1451
  %15 = load ptr, ptr %14, align 8, !dbg !1451, !tbaa !1427
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1452
  %17 = load ptr, ptr %16, align 8, !dbg !1452, !tbaa !1430
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1453
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1444, metadata !DIExpression()), !dbg !1445
  store i32 %9, ptr %8, align 4, !dbg !1454, !tbaa !746
  ret i64 %18, !dbg !1455
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1456 {
  %10 = alloca i32, align 4, !DIAssignID !1524
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1525
  %12 = alloca i32, align 4, !DIAssignID !1526
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1527
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1528
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1502, metadata !DIExpression(), metadata !1528, metadata ptr %14, metadata !DIExpression()), !dbg !1529
  %15 = alloca i32, align 4, !DIAssignID !1530
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1505, metadata !DIExpression(), metadata !1530, metadata ptr %15, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1462, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1463, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1464, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1465, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1466, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1467, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1468, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1469, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1470, metadata !DIExpression()), !dbg !1532
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1533
  %17 = icmp eq i64 %16, 1, !dbg !1534
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1471, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1472, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1473, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1474, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1475, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1476, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1477, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1478, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1479, metadata !DIExpression()), !dbg !1532
  %18 = and i32 %5, 2, !dbg !1535
  %19 = icmp ne i32 %18, 0, !dbg !1535
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1535

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !1536
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !1537
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !1538
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1463, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1479, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1477, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1476, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1475, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1474, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1473, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1472, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1465, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1470, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1469, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1466, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.label(metadata !1480), !dbg !1539
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1481, metadata !DIExpression()), !dbg !1532
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
  ], !dbg !1540

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1477, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1466, metadata !DIExpression()), !dbg !1532
  br label %101, !dbg !1541

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1477, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1466, metadata !DIExpression()), !dbg !1532
  br i1 %36, label %101, label %42, !dbg !1541

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1542
  br i1 %43, label %101, label %44, !dbg !1546

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1542, !tbaa !755
  br label %101, !dbg !1542

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !492, metadata !DIExpression(), metadata !1526, metadata ptr %12, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.assign(metadata i1 undef, metadata !493, metadata !DIExpression(), metadata !1527, metadata ptr %13, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata ptr @.str.11.61, metadata !489, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 %28, metadata !490, metadata !DIExpression()), !dbg !1547
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.62, ptr noundef nonnull @.str.11.61, i32 noundef 5) #37, !dbg !1551
  call void @llvm.dbg.value(metadata ptr %46, metadata !491, metadata !DIExpression()), !dbg !1547
  %47 = icmp eq ptr %46, @.str.11.61, !dbg !1552
  br i1 %47, label %48, label %57, !dbg !1554

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1555
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1556
  call void @llvm.dbg.value(metadata ptr %13, metadata !1557, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata ptr %13, metadata !1565, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i32 0, metadata !1568, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i64 8, metadata !1569, metadata !DIExpression()), !dbg !1570
  store i64 0, ptr %13, align 8, !dbg !1572
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1573
  %50 = icmp eq i64 %49, 3, !dbg !1575
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1576
  %54 = icmp eq i32 %28, 9, !dbg !1576
  %55 = select i1 %54, ptr @.str.10.63, ptr @.str.12.64, !dbg !1576
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1576
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1577
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1577
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1547
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1469, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.assign(metadata i1 undef, metadata !492, metadata !DIExpression(), metadata !1524, metadata ptr %10, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.assign(metadata i1 undef, metadata !493, metadata !DIExpression(), metadata !1525, metadata ptr %11, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata ptr @.str.12.64, metadata !489, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata i32 %28, metadata !490, metadata !DIExpression()), !dbg !1578
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.62, ptr noundef nonnull @.str.12.64, i32 noundef 5) #37, !dbg !1580
  call void @llvm.dbg.value(metadata ptr %59, metadata !491, metadata !DIExpression()), !dbg !1578
  %60 = icmp eq ptr %59, @.str.12.64, !dbg !1581
  br i1 %60, label %61, label %70, !dbg !1582

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1583
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1584
  call void @llvm.dbg.value(metadata ptr %11, metadata !1557, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata ptr %11, metadata !1565, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 0, metadata !1568, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 8, metadata !1569, metadata !DIExpression()), !dbg !1587
  store i64 0, ptr %11, align 8, !dbg !1589
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1590
  %63 = icmp eq i64 %62, 3, !dbg !1591
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1592
  %67 = icmp eq i32 %28, 9, !dbg !1592
  %68 = select i1 %67, ptr @.str.10.63, ptr @.str.12.64, !dbg !1592
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1592
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1593
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1593
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1470, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1469, metadata !DIExpression()), !dbg !1532
  br i1 %36, label %88, label %73, !dbg !1594

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1482, metadata !DIExpression()), !dbg !1595
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1472, metadata !DIExpression()), !dbg !1532
  %74 = load i8, ptr %71, align 1, !dbg !1596, !tbaa !755
  %75 = icmp eq i8 %74, 0, !dbg !1598
  br i1 %75, label %88, label %.preheader11, !dbg !1598

.preheader11:                                     ; preds = %73
  br label %76, !dbg !1598

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1482, metadata !DIExpression()), !dbg !1595
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1472, metadata !DIExpression()), !dbg !1532
  %80 = icmp ult i64 %79, %39, !dbg !1599
  br i1 %80, label %81, label %83, !dbg !1602

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1599
  store i8 %77, ptr %82, align 1, !dbg !1599, !tbaa !755
  br label %83, !dbg !1599

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1602
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1472, metadata !DIExpression()), !dbg !1532
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1603
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1482, metadata !DIExpression()), !dbg !1595
  %86 = load i8, ptr %85, align 1, !dbg !1596, !tbaa !755
  %87 = icmp eq i8 %86, 0, !dbg !1598
  br i1 %87, label %.loopexit12, label %76, !dbg !1598, !llvm.loop !1604

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !1602
  br label %88, !dbg !1606

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !1607
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1472, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1476, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1474, metadata !DIExpression()), !dbg !1532
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #39, !dbg !1606
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1475, metadata !DIExpression()), !dbg !1532
  br label %101, !dbg !1608

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1476, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1477, metadata !DIExpression()), !dbg !1532
  br label %101, !dbg !1609

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1477, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1476, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1466, metadata !DIExpression()), !dbg !1532
  br label %101, !dbg !1610

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1477, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1476, metadata !DIExpression()), !dbg !1532
  br i1 %36, label %101, label %95, !dbg !1611

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1477, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1476, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1466, metadata !DIExpression()), !dbg !1532
  br i1 %36, label %101, label %95, !dbg !1610

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !1612
  br i1 %97, label %101, label %98, !dbg !1616

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !1612, !tbaa !755
  br label %101, !dbg !1612

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1477, metadata !DIExpression()), !dbg !1532
  br label %101, !dbg !1617

100:                                              ; preds = %27
  call void @abort() #38, !dbg !1618
  unreachable, !dbg !1618

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !1607
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.63, %42 ], [ @.str.10.63, %44 ], [ @.str.10.63, %41 ], [ %33, %27 ], [ @.str.12.64, %95 ], [ @.str.12.64, %98 ], [ @.str.12.64, %94 ], [ @.str.10.63, %40 ], [ @.str.12.64, %91 ], [ @.str.12.64, %92 ], [ @.str.12.64, %93 ], !dbg !1532
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !1532
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1477, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1476, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1475, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1474, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1472, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1470, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1469, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1466, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1487, metadata !DIExpression()), !dbg !1619
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
  br label %121, !dbg !1620

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !1607
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !1536
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !1621
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1463, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1487, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1479, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1473, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1472, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1465, metadata !DIExpression()), !dbg !1532
  %130 = icmp eq i64 %122, -1, !dbg !1622
  br i1 %130, label %131, label %135, !dbg !1623

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1624
  %133 = load i8, ptr %132, align 1, !dbg !1624, !tbaa !755
  %134 = icmp eq i8 %133, 0, !dbg !1625
  br i1 %134, label %573, label %137, !dbg !1626

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !1627
  br i1 %136, label %573, label %137, !dbg !1626

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1489, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1492, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1493, metadata !DIExpression()), !dbg !1628
  br i1 %113, label %138, label %151, !dbg !1629

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !1631
  %140 = select i1 %130, i1 %114, i1 false, !dbg !1632
  br i1 %140, label %141, label %143, !dbg !1632

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1633
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1465, metadata !DIExpression()), !dbg !1532
  br label %143, !dbg !1634

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !1634
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1465, metadata !DIExpression()), !dbg !1532
  %145 = icmp ugt i64 %139, %144, !dbg !1635
  br i1 %145, label %151, label %146, !dbg !1636

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1637
  call void @llvm.dbg.value(metadata ptr %147, metadata !1638, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata ptr %106, metadata !1641, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i64 %107, metadata !1642, metadata !DIExpression()), !dbg !1643
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !1645
  %149 = icmp eq i32 %148, 0, !dbg !1646
  %150 = and i1 %149, %109, !dbg !1647
  br i1 %150, label %.loopexit7, label %151, !dbg !1647

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1489, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1465, metadata !DIExpression()), !dbg !1532
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1648
  %155 = load i8, ptr %154, align 1, !dbg !1648, !tbaa !755
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1494, metadata !DIExpression()), !dbg !1628
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
  ], !dbg !1649

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !1650

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !1651

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1492, metadata !DIExpression()), !dbg !1628
  %159 = select i1 %110, i1 true, i1 %127, !dbg !1655
  br i1 %159, label %176, label %160, !dbg !1655

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !1657
  br i1 %161, label %162, label %164, !dbg !1661

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1657
  store i8 39, ptr %163, align 1, !dbg !1657, !tbaa !755
  br label %164, !dbg !1657

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !1661
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1472, metadata !DIExpression()), !dbg !1532
  %166 = icmp ult i64 %165, %129, !dbg !1662
  br i1 %166, label %167, label %169, !dbg !1665

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !1662
  store i8 36, ptr %168, align 1, !dbg !1662, !tbaa !755
  br label %169, !dbg !1662

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !1665
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1472, metadata !DIExpression()), !dbg !1532
  %171 = icmp ult i64 %170, %129, !dbg !1666
  br i1 %171, label %172, label %174, !dbg !1669

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !1666
  store i8 39, ptr %173, align 1, !dbg !1666, !tbaa !755
  br label %174, !dbg !1666

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !1669
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1472, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1481, metadata !DIExpression()), !dbg !1532
  br label %176, !dbg !1670

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !1532
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1472, metadata !DIExpression()), !dbg !1532
  %179 = icmp ult i64 %177, %129, !dbg !1671
  br i1 %179, label %180, label %182, !dbg !1674

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !1671
  store i8 92, ptr %181, align 1, !dbg !1671, !tbaa !755
  br label %182, !dbg !1671

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !1674
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1472, metadata !DIExpression()), !dbg !1532
  br i1 %110, label %184, label %476, !dbg !1675

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !1677
  %186 = icmp ult i64 %185, %152, !dbg !1678
  br i1 %186, label %187, label %433, !dbg !1679

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !1680
  %189 = load i8, ptr %188, align 1, !dbg !1680, !tbaa !755
  %190 = add i8 %189, -48, !dbg !1681
  %191 = icmp ult i8 %190, 10, !dbg !1681
  br i1 %191, label %192, label %433, !dbg !1681

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !1682
  br i1 %193, label %194, label %196, !dbg !1686

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !1682
  store i8 48, ptr %195, align 1, !dbg !1682, !tbaa !755
  br label %196, !dbg !1682

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !1686
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1472, metadata !DIExpression()), !dbg !1532
  %198 = icmp ult i64 %197, %129, !dbg !1687
  br i1 %198, label %199, label %201, !dbg !1690

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !1687
  store i8 48, ptr %200, align 1, !dbg !1687, !tbaa !755
  br label %201, !dbg !1687

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !1690
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1472, metadata !DIExpression()), !dbg !1532
  br label %433, !dbg !1691

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !1692

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !1693

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !1694

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !1696

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !1698
  %209 = icmp ult i64 %208, %152, !dbg !1699
  br i1 %209, label %210, label %433, !dbg !1700

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !1701
  %212 = load i8, ptr %211, align 1, !dbg !1701, !tbaa !755
  %213 = icmp eq i8 %212, 63, !dbg !1702
  br i1 %213, label %214, label %433, !dbg !1703

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !1704
  %216 = load i8, ptr %215, align 1, !dbg !1704, !tbaa !755
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
  ], !dbg !1705

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !1706

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1494, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1487, metadata !DIExpression()), !dbg !1619
  %219 = icmp ult i64 %123, %129, !dbg !1708
  br i1 %219, label %220, label %222, !dbg !1711

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1708
  store i8 63, ptr %221, align 1, !dbg !1708, !tbaa !755
  br label %222, !dbg !1708

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !1711
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1472, metadata !DIExpression()), !dbg !1532
  %224 = icmp ult i64 %223, %129, !dbg !1712
  br i1 %224, label %225, label %227, !dbg !1715

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !1712
  store i8 34, ptr %226, align 1, !dbg !1712, !tbaa !755
  br label %227, !dbg !1712

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !1715
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1472, metadata !DIExpression()), !dbg !1532
  %229 = icmp ult i64 %228, %129, !dbg !1716
  br i1 %229, label %230, label %232, !dbg !1719

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !1716
  store i8 34, ptr %231, align 1, !dbg !1716, !tbaa !755
  br label %232, !dbg !1716

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !1719
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1472, metadata !DIExpression()), !dbg !1532
  %234 = icmp ult i64 %233, %129, !dbg !1720
  br i1 %234, label %235, label %237, !dbg !1723

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !1720
  store i8 63, ptr %236, align 1, !dbg !1720, !tbaa !755
  br label %237, !dbg !1720

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !1723
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1472, metadata !DIExpression()), !dbg !1532
  br label %433, !dbg !1724

239:                                              ; preds = %151
  br label %249, !dbg !1725

240:                                              ; preds = %151
  br label %249, !dbg !1726

241:                                              ; preds = %151
  br label %247, !dbg !1727

242:                                              ; preds = %151
  br label %247, !dbg !1728

243:                                              ; preds = %151
  br label %249, !dbg !1729

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !1730

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !1731

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !1734

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !1736
  call void @llvm.dbg.label(metadata !1495), !dbg !1737
  br i1 %118, label %.loopexit8, label %249, !dbg !1738

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !1736
  call void @llvm.dbg.label(metadata !1498), !dbg !1740
  br i1 %108, label %487, label %444, !dbg !1741

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !1742

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !1743, !tbaa !755
  %254 = icmp eq i8 %253, 0, !dbg !1745
  br i1 %254, label %255, label %433, !dbg !1746

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !1747
  br i1 %256, label %257, label %433, !dbg !1749

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1493, metadata !DIExpression()), !dbg !1628
  br label %258, !dbg !1750

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1493, metadata !DIExpression()), !dbg !1628
  br i1 %115, label %260, label %433, !dbg !1751

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !1753

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1478, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1493, metadata !DIExpression()), !dbg !1628
  br i1 %115, label %262, label %433, !dbg !1754

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !1755

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !1758
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !1760
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !1760
  %268 = select i1 %266, i64 %129, i64 0, !dbg !1760
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1463, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1473, metadata !DIExpression()), !dbg !1532
  %269 = icmp ult i64 %123, %268, !dbg !1761
  br i1 %269, label %270, label %272, !dbg !1764

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1761
  store i8 39, ptr %271, align 1, !dbg !1761, !tbaa !755
  br label %272, !dbg !1761

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !1764
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1472, metadata !DIExpression()), !dbg !1532
  %274 = icmp ult i64 %273, %268, !dbg !1765
  br i1 %274, label %275, label %277, !dbg !1768

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !1765
  store i8 92, ptr %276, align 1, !dbg !1765, !tbaa !755
  br label %277, !dbg !1765

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !1768
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1472, metadata !DIExpression()), !dbg !1532
  %279 = icmp ult i64 %278, %268, !dbg !1769
  br i1 %279, label %280, label %282, !dbg !1772

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !1769
  store i8 39, ptr %281, align 1, !dbg !1769, !tbaa !755
  br label %282, !dbg !1769

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1472, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1481, metadata !DIExpression()), !dbg !1532
  br label %433, !dbg !1773

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !1774

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1499, metadata !DIExpression()), !dbg !1775
  %286 = tail call ptr @__ctype_b_loc() #40, !dbg !1776
  %287 = load ptr, ptr %286, align 8, !dbg !1776, !tbaa !725
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !1776
  %290 = load i16, ptr %289, align 2, !dbg !1776, !tbaa !787
  %291 = and i16 %290, 16384, !dbg !1776
  %292 = icmp ne i16 %291, 0, !dbg !1778
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !1501, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1775
  br label %334, !dbg !1779

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !1780
  call void @llvm.dbg.value(metadata ptr %14, metadata !1557, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata ptr %14, metadata !1565, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i32 0, metadata !1568, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i64 8, metadata !1569, metadata !DIExpression()), !dbg !1783
  store i64 0, ptr %14, align 8, !dbg !1785
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1499, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1501, metadata !DIExpression()), !dbg !1775
  %294 = icmp eq i64 %152, -1, !dbg !1786
  br i1 %294, label %295, label %297, !dbg !1788

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1789
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1465, metadata !DIExpression()), !dbg !1532
  br label %297, !dbg !1790

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !1628
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1465, metadata !DIExpression()), !dbg !1532
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !1791
  %299 = sub i64 %298, %128, !dbg !1792
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #37, !dbg !1793
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1509, metadata !DIExpression()), !dbg !1531
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !1794

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1499, metadata !DIExpression()), !dbg !1775
  %302 = icmp ult i64 %128, %298, !dbg !1795
  br i1 %302, label %.preheader5, label %329, !dbg !1797

.preheader5:                                      ; preds = %301
  br label %304, !dbg !1798

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1501, metadata !DIExpression()), !dbg !1775
  br label %329, !dbg !1799

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !1499, metadata !DIExpression()), !dbg !1775
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !1801
  %308 = load i8, ptr %307, align 1, !dbg !1801, !tbaa !755
  %309 = icmp eq i8 %308, 0, !dbg !1797
  br i1 %309, label %.loopexit6, label %310, !dbg !1798

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !1802
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !1499, metadata !DIExpression()), !dbg !1775
  %312 = add i64 %311, %128, !dbg !1803
  %313 = icmp eq i64 %311, %299, !dbg !1795
  br i1 %313, label %.loopexit6, label %304, !dbg !1797, !llvm.loop !1804

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1510, metadata !DIExpression()), !dbg !1805
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !1806
  %317 = and i1 %316, %109, !dbg !1806
  br i1 %317, label %.preheader3, label %325, !dbg !1806

.preheader3:                                      ; preds = %314
  br label %318, !dbg !1807

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !1510, metadata !DIExpression()), !dbg !1805
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !1808
  %321 = load i8, ptr %320, align 1, !dbg !1808, !tbaa !755
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !1810

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !1811
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1510, metadata !DIExpression()), !dbg !1805
  %324 = icmp eq i64 %323, %300, !dbg !1812
  br i1 %324, label %.loopexit4, label %318, !dbg !1807, !llvm.loop !1813

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !1815

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !1815, !tbaa !746
  call void @llvm.dbg.value(metadata i32 %326, metadata !1817, metadata !DIExpression()), !dbg !1825
  %327 = call i32 @iswprint(i32 noundef %326) #37, !dbg !1827
  %328 = icmp ne i32 %327, 0, !dbg !1828
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1501, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1499, metadata !DIExpression()), !dbg !1775
  br label %329, !dbg !1829

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !1830

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1501, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !1499, metadata !DIExpression()), !dbg !1775
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1831
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1501, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1499, metadata !DIExpression()), !dbg !1775
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1830
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1831
  call void @llvm.dbg.label(metadata !1523), !dbg !1832
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !1833
  br label %624, !dbg !1833

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !1628
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !1835
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1501, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !1499, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1465, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1493, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1628
  %338 = icmp ult i64 %336, 2, !dbg !1836
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !1837
  br i1 %340, label %433, label %341, !dbg !1837

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !1838
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !1518, metadata !DIExpression()), !dbg !1839
  br label %343, !dbg !1840

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !1532
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !1619
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1494, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1492, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1489, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1487, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1472, metadata !DIExpression()), !dbg !1532
  br i1 %339, label %394, label %350, !dbg !1841

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !1846

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1492, metadata !DIExpression()), !dbg !1628
  %352 = select i1 %110, i1 true, i1 %345, !dbg !1849
  br i1 %352, label %369, label %353, !dbg !1849

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !1851
  br i1 %354, label %355, label %357, !dbg !1855

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !1851
  store i8 39, ptr %356, align 1, !dbg !1851, !tbaa !755
  br label %357, !dbg !1851

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !1855
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1472, metadata !DIExpression()), !dbg !1532
  %359 = icmp ult i64 %358, %129, !dbg !1856
  br i1 %359, label %360, label %362, !dbg !1859

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !1856
  store i8 36, ptr %361, align 1, !dbg !1856, !tbaa !755
  br label %362, !dbg !1856

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !1859
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1472, metadata !DIExpression()), !dbg !1532
  %364 = icmp ult i64 %363, %129, !dbg !1860
  br i1 %364, label %365, label %367, !dbg !1863

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !1860
  store i8 39, ptr %366, align 1, !dbg !1860, !tbaa !755
  br label %367, !dbg !1860

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !1863
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1472, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1481, metadata !DIExpression()), !dbg !1532
  br label %369, !dbg !1864

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !1532
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1472, metadata !DIExpression()), !dbg !1532
  %372 = icmp ult i64 %370, %129, !dbg !1865
  br i1 %372, label %373, label %375, !dbg !1868

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !1865
  store i8 92, ptr %374, align 1, !dbg !1865, !tbaa !755
  br label %375, !dbg !1865

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !1868
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1472, metadata !DIExpression()), !dbg !1532
  %377 = icmp ult i64 %376, %129, !dbg !1869
  br i1 %377, label %378, label %382, !dbg !1872

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !1869
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !1869
  store i8 %380, ptr %381, align 1, !dbg !1869, !tbaa !755
  br label %382, !dbg !1869

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !1872
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1472, metadata !DIExpression()), !dbg !1532
  %384 = icmp ult i64 %383, %129, !dbg !1873
  br i1 %384, label %385, label %390, !dbg !1876

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !1873
  %388 = or disjoint i8 %387, 48, !dbg !1873
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !1873
  store i8 %388, ptr %389, align 1, !dbg !1873, !tbaa !755
  br label %390, !dbg !1873

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !1876
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1472, metadata !DIExpression()), !dbg !1532
  %392 = and i8 %349, 7, !dbg !1877
  %393 = or disjoint i8 %392, 48, !dbg !1878
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1494, metadata !DIExpression()), !dbg !1628
  br label %401, !dbg !1879

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !1880

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !1881
  br i1 %396, label %397, label %399, !dbg !1886

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !1881
  store i8 92, ptr %398, align 1, !dbg !1881, !tbaa !755
  br label %399, !dbg !1881

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !1886
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1472, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1489, metadata !DIExpression()), !dbg !1628
  br label %401, !dbg !1887

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !1532
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1494, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1492, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1489, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1472, metadata !DIExpression()), !dbg !1532
  %407 = add i64 %346, 1, !dbg !1888
  %408 = icmp ugt i64 %342, %407, !dbg !1890
  br i1 %408, label %409, label %.loopexit2, !dbg !1891

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !1892
  %411 = select i1 %410, i1 true, i1 %405, !dbg !1892
  br i1 %411, label %423, label %412, !dbg !1892

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !1895
  br i1 %413, label %414, label %416, !dbg !1899

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !1895
  store i8 39, ptr %415, align 1, !dbg !1895, !tbaa !755
  br label %416, !dbg !1895

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !1899
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1472, metadata !DIExpression()), !dbg !1532
  %418 = icmp ult i64 %417, %129, !dbg !1900
  br i1 %418, label %419, label %421, !dbg !1903

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !1900
  store i8 39, ptr %420, align 1, !dbg !1900, !tbaa !755
  br label %421, !dbg !1900

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !1903
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1472, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1481, metadata !DIExpression()), !dbg !1532
  br label %423, !dbg !1904

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !1905
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1472, metadata !DIExpression()), !dbg !1532
  %426 = icmp ult i64 %424, %129, !dbg !1906
  br i1 %426, label %427, label %429, !dbg !1909

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !1906
  store i8 %406, ptr %428, align 1, !dbg !1906, !tbaa !755
  br label %429, !dbg !1906

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !1909
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1472, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1487, metadata !DIExpression()), !dbg !1619
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !1910
  %432 = load i8, ptr %431, align 1, !dbg !1910, !tbaa !755
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1494, metadata !DIExpression()), !dbg !1628
  br label %343, !dbg !1911, !llvm.loop !1912

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !1915
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !1532
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !1536
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !1619
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !1628
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1463, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1494, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1493, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1492, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1489, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1487, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1473, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1472, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1465, metadata !DIExpression()), !dbg !1532
  br i1 %111, label %455, label %444, !dbg !1916

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
  br i1 %120, label %456, label %476, !dbg !1918

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !1919

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
  %467 = lshr i8 %458, 5, !dbg !1920
  %468 = zext nneg i8 %467 to i64, !dbg !1920
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !1921
  %470 = load i32, ptr %469, align 4, !dbg !1921, !tbaa !746
  %471 = and i8 %458, 31, !dbg !1922
  %472 = zext nneg i8 %471 to i32, !dbg !1922
  %473 = shl nuw i32 1, %472, !dbg !1923
  %474 = and i32 %470, %473, !dbg !1923
  %475 = icmp eq i32 %474, 0, !dbg !1923
  br i1 %475, label %476, label %487, !dbg !1924

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
  br i1 %153, label %487, label %523, !dbg !1925

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !1915
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !1532
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !1536
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !1926
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !1628
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1463, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1494, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1493, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1487, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1473, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1472, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1465, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.label(metadata !1521), !dbg !1927
  br i1 %109, label %.loopexit8, label %497, !dbg !1928

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1492, metadata !DIExpression()), !dbg !1628
  %498 = select i1 %110, i1 true, i1 %492, !dbg !1930
  br i1 %498, label %515, label %499, !dbg !1930

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !1932
  br i1 %500, label %501, label %503, !dbg !1936

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !1932
  store i8 39, ptr %502, align 1, !dbg !1932, !tbaa !755
  br label %503, !dbg !1932

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !1936
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1472, metadata !DIExpression()), !dbg !1532
  %505 = icmp ult i64 %504, %496, !dbg !1937
  br i1 %505, label %506, label %508, !dbg !1940

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !1937
  store i8 36, ptr %507, align 1, !dbg !1937, !tbaa !755
  br label %508, !dbg !1937

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !1940
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1472, metadata !DIExpression()), !dbg !1532
  %510 = icmp ult i64 %509, %496, !dbg !1941
  br i1 %510, label %511, label %513, !dbg !1944

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !1941
  store i8 39, ptr %512, align 1, !dbg !1941, !tbaa !755
  br label %513, !dbg !1941

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !1944
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1472, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1481, metadata !DIExpression()), !dbg !1532
  br label %515, !dbg !1945

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !1628
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1472, metadata !DIExpression()), !dbg !1532
  %518 = icmp ult i64 %516, %496, !dbg !1946
  br i1 %518, label %519, label %521, !dbg !1949

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !1946
  store i8 92, ptr %520, align 1, !dbg !1946, !tbaa !755
  br label %521, !dbg !1946

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !1949
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1463, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1494, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1493, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1492, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1487, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1473, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1472, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1465, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.label(metadata !1522), !dbg !1950
  br label %547, !dbg !1951

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !1532
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !1628
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !1619
  br label %523, !dbg !1951

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !1915
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !1532
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !1536
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !1926
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !1954
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1463, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1494, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1493, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1492, metadata !DIExpression()), !dbg !1628
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1487, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1473, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1472, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1465, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.label(metadata !1522), !dbg !1950
  %534 = xor i1 %528, true, !dbg !1951
  %535 = select i1 %534, i1 true, i1 %530, !dbg !1951
  br i1 %535, label %547, label %536, !dbg !1951

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !1955
  br i1 %537, label %538, label %540, !dbg !1959

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !1955
  store i8 39, ptr %539, align 1, !dbg !1955, !tbaa !755
  br label %540, !dbg !1955

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !1959
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1472, metadata !DIExpression()), !dbg !1532
  %542 = icmp ult i64 %541, %533, !dbg !1960
  br i1 %542, label %543, label %545, !dbg !1963

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !1960
  store i8 39, ptr %544, align 1, !dbg !1960, !tbaa !755
  br label %545, !dbg !1960

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !1963
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1472, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1481, metadata !DIExpression()), !dbg !1532
  br label %547, !dbg !1964

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !1628
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1472, metadata !DIExpression()), !dbg !1532
  %557 = icmp ult i64 %555, %548, !dbg !1965
  br i1 %557, label %558, label %560, !dbg !1968

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !1965
  store i8 %549, ptr %559, align 1, !dbg !1965, !tbaa !755
  br label %560, !dbg !1965

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !1968
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1472, metadata !DIExpression()), !dbg !1532
  %562 = select i1 %550, i1 %126, i1 false, !dbg !1969
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1479, metadata !DIExpression()), !dbg !1532
  br label %563, !dbg !1970

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !1915
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !1532
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !1536
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !1926
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1463, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1487, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1481, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1479, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1473, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1472, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1465, metadata !DIExpression()), !dbg !1532
  %572 = add i64 %570, 1, !dbg !1971
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1487, metadata !DIExpression()), !dbg !1619
  br label %121, !dbg !1972, !llvm.loop !1973

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !1607
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !1536
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1463, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1479, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1478, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1473, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1472, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1465, metadata !DIExpression()), !dbg !1532
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !1975
  %575 = xor i1 %109, true, !dbg !1977
  %576 = or i1 %574, %575, !dbg !1977
  %577 = or i1 %576, %110, !dbg !1977
  br i1 %577, label %578, label %.loopexit13, !dbg !1977

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !1978
  %580 = xor i1 %.lcssa38, true, !dbg !1978
  %581 = select i1 %579, i1 true, i1 %580, !dbg !1978
  br i1 %581, label %589, label %582, !dbg !1978

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !1980

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !1536
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !1982
  br label %638, !dbg !1984

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !1985
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !1987
  br i1 %588, label %27, label %589, !dbg !1987

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !1532
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !1607
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !1988
  %592 = or i1 %591, %590, !dbg !1990
  br i1 %592, label %608, label %593, !dbg !1990

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1474, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1472, metadata !DIExpression()), !dbg !1532
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !1991, !tbaa !755
  %595 = icmp eq i8 %594, 0, !dbg !1994
  br i1 %595, label %608, label %.preheader, !dbg !1994

.preheader:                                       ; preds = %593
  br label %596, !dbg !1994

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1474, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1472, metadata !DIExpression()), !dbg !1532
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !1995
  br i1 %600, label %601, label %603, !dbg !1998

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !1995
  store i8 %597, ptr %602, align 1, !dbg !1995, !tbaa !755
  br label %603, !dbg !1995

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !1998
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1472, metadata !DIExpression()), !dbg !1532
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !1999
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1474, metadata !DIExpression()), !dbg !1532
  %606 = load i8, ptr %605, align 1, !dbg !1991, !tbaa !755
  %607 = icmp eq i8 %606, 0, !dbg !1994
  br i1 %607, label %.loopexit, label %596, !dbg !1994, !llvm.loop !2000

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !1998
  br label %608, !dbg !2002

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !1607
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1472, metadata !DIExpression()), !dbg !1532
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2002
  br i1 %610, label %611, label %638, !dbg !2004

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2005
  store i8 0, ptr %612, align 1, !dbg !2006, !tbaa !755
  br label %638, !dbg !2005

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !1523), !dbg !1832
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2007
  br i1 %614, label %624, label %630, !dbg !1833

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !1628
  br label %615, !dbg !2007

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2007

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2007

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !1523), !dbg !1832
  %622 = icmp eq i32 %616, 2, !dbg !2007
  %623 = select i1 %619, i32 4, i32 2, !dbg !1833
  br i1 %622, label %624, label %630, !dbg !1833

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !1833

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !1634
  br label %630, !dbg !2008

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1466, metadata !DIExpression()), !dbg !1532
  %636 = and i32 %5, -3, !dbg !2008
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2009
  br label %638, !dbg !2010

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2011
}

; Function Attrs: nounwind
declare !dbg !2012 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2015 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2018 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2020 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2024, metadata !DIExpression()), !dbg !2027
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2025, metadata !DIExpression()), !dbg !2027
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2026, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata ptr %0, metadata !2028, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i64 %1, metadata !2033, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata ptr null, metadata !2034, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata ptr %2, metadata !2035, metadata !DIExpression()), !dbg !2041
  %4 = icmp eq ptr %2, null, !dbg !2043
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2043
  call void @llvm.dbg.value(metadata ptr %5, metadata !2036, metadata !DIExpression()), !dbg !2041
  %6 = tail call ptr @__errno_location() #40, !dbg !2044
  %7 = load i32, ptr %6, align 4, !dbg !2044, !tbaa !746
  call void @llvm.dbg.value(metadata i32 %7, metadata !2037, metadata !DIExpression()), !dbg !2041
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2045
  %9 = load i32, ptr %8, align 4, !dbg !2045, !tbaa !1406
  %10 = or i32 %9, 1, !dbg !2046
  call void @llvm.dbg.value(metadata i32 %10, metadata !2038, metadata !DIExpression()), !dbg !2041
  %11 = load i32, ptr %5, align 8, !dbg !2047, !tbaa !1356
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2048
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2049
  %14 = load ptr, ptr %13, align 8, !dbg !2049, !tbaa !1427
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2050
  %16 = load ptr, ptr %15, align 8, !dbg !2050, !tbaa !1430
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2051
  %18 = add i64 %17, 1, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %18, metadata !2039, metadata !DIExpression()), !dbg !2041
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2053
  call void @llvm.dbg.value(metadata ptr %19, metadata !2040, metadata !DIExpression()), !dbg !2041
  %20 = load i32, ptr %5, align 8, !dbg !2054, !tbaa !1356
  %21 = load ptr, ptr %13, align 8, !dbg !2055, !tbaa !1427
  %22 = load ptr, ptr %15, align 8, !dbg !2056, !tbaa !1430
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2057
  store i32 %7, ptr %6, align 4, !dbg !2058, !tbaa !746
  ret ptr %19, !dbg !2059
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2029 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2028, metadata !DIExpression()), !dbg !2060
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2033, metadata !DIExpression()), !dbg !2060
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2034, metadata !DIExpression()), !dbg !2060
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2035, metadata !DIExpression()), !dbg !2060
  %5 = icmp eq ptr %3, null, !dbg !2061
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2061
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2036, metadata !DIExpression()), !dbg !2060
  %7 = tail call ptr @__errno_location() #40, !dbg !2062
  %8 = load i32, ptr %7, align 4, !dbg !2062, !tbaa !746
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2037, metadata !DIExpression()), !dbg !2060
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2063
  %10 = load i32, ptr %9, align 4, !dbg !2063, !tbaa !1406
  %11 = icmp eq ptr %2, null, !dbg !2064
  %12 = zext i1 %11 to i32, !dbg !2064
  %13 = or i32 %10, %12, !dbg !2065
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2038, metadata !DIExpression()), !dbg !2060
  %14 = load i32, ptr %6, align 8, !dbg !2066, !tbaa !1356
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2067
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2068
  %17 = load ptr, ptr %16, align 8, !dbg !2068, !tbaa !1427
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2069
  %19 = load ptr, ptr %18, align 8, !dbg !2069, !tbaa !1430
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2070
  %21 = add i64 %20, 1, !dbg !2071
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2039, metadata !DIExpression()), !dbg !2060
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2072
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2040, metadata !DIExpression()), !dbg !2060
  %23 = load i32, ptr %6, align 8, !dbg !2073, !tbaa !1356
  %24 = load ptr, ptr %16, align 8, !dbg !2074, !tbaa !1427
  %25 = load ptr, ptr %18, align 8, !dbg !2075, !tbaa !1430
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2076
  store i32 %8, ptr %7, align 4, !dbg !2077, !tbaa !746
  br i1 %11, label %28, label %27, !dbg !2078

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2079, !tbaa !2081
  br label %28, !dbg !2082

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2083
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2084 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2089, !tbaa !725
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2086, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2087, metadata !DIExpression()), !dbg !2091
  %2 = load i32, ptr @nslots, align 4, !tbaa !746
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2087, metadata !DIExpression()), !dbg !2091
  %3 = icmp sgt i32 %2, 1, !dbg !2092
  br i1 %3, label %4, label %6, !dbg !2094

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2092
  br label %10, !dbg !2094

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2095

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2095
  %8 = load ptr, ptr %7, align 8, !dbg !2095, !tbaa !2097
  %9 = icmp eq ptr %8, @slot0, !dbg !2099
  br i1 %9, label %17, label %16, !dbg !2100

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2087, metadata !DIExpression()), !dbg !2091
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2101
  %13 = load ptr, ptr %12, align 8, !dbg !2101, !tbaa !2097
  tail call void @free(ptr noundef %13) #37, !dbg !2102
  %14 = add nuw nsw i64 %11, 1, !dbg !2103
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2087, metadata !DIExpression()), !dbg !2091
  %15 = icmp eq i64 %14, %5, !dbg !2092
  br i1 %15, label %.loopexit, label %10, !dbg !2094, !llvm.loop !2104

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2106
  store i64 256, ptr @slotvec0, align 8, !dbg !2108, !tbaa !2109
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2110, !tbaa !2097
  br label %17, !dbg !2111

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2112
  br i1 %18, label %20, label %19, !dbg !2114

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2115
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2117, !tbaa !725
  br label %20, !dbg !2118

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2119, !tbaa !746
  ret void, !dbg !2120
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2121 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2124 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2126, metadata !DIExpression()), !dbg !2128
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2127, metadata !DIExpression()), !dbg !2128
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2129
  ret ptr %3, !dbg !2130
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2131 {
  %5 = alloca i64, align 8, !DIAssignID !2151
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2145, metadata !DIExpression(), metadata !2151, metadata ptr %5, metadata !DIExpression()), !dbg !2152
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2135, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2136, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2137, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2138, metadata !DIExpression()), !dbg !2153
  %6 = tail call ptr @__errno_location() #40, !dbg !2154
  %7 = load i32, ptr %6, align 4, !dbg !2154, !tbaa !746
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2139, metadata !DIExpression()), !dbg !2153
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2155, !tbaa !725
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2140, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2141, metadata !DIExpression()), !dbg !2153
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2156
  br i1 %9, label %10, label %11, !dbg !2156

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2158
  unreachable, !dbg !2158

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2159, !tbaa !746
  %13 = icmp sgt i32 %12, %0, !dbg !2160
  br i1 %13, label %32, label %14, !dbg !2161

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2162
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2142, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2152
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2163
  %16 = sext i32 %12 to i64, !dbg !2164
  store i64 %16, ptr %5, align 8, !dbg !2165, !tbaa !2081, !DIAssignID !2166
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2145, metadata !DIExpression(), metadata !2166, metadata ptr %5, metadata !DIExpression()), !dbg !2152
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2167
  %18 = add nuw nsw i32 %0, 1, !dbg !2168
  %19 = sub i32 %18, %12, !dbg !2169
  %20 = sext i32 %19 to i64, !dbg !2170
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2171
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2140, metadata !DIExpression()), !dbg !2153
  store ptr %21, ptr @slotvec, align 8, !dbg !2172, !tbaa !725
  br i1 %15, label %22, label %23, !dbg !2173

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2174, !tbaa.struct !2176
  br label %23, !dbg !2177

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2178, !tbaa !746
  %25 = sext i32 %24 to i64, !dbg !2179
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2179
  %27 = load i64, ptr %5, align 8, !dbg !2180, !tbaa !2081
  %28 = sub nsw i64 %27, %25, !dbg !2181
  %29 = shl i64 %28, 4, !dbg !2182
  call void @llvm.dbg.value(metadata ptr %26, metadata !1565, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i32 0, metadata !1568, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i64 %29, metadata !1569, metadata !DIExpression()), !dbg !2183
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2185
  %30 = load i64, ptr %5, align 8, !dbg !2186, !tbaa !2081
  %31 = trunc i64 %30 to i32, !dbg !2186
  store i32 %31, ptr @nslots, align 4, !dbg !2187, !tbaa !746
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2188
  br label %32, !dbg !2189

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2153
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2140, metadata !DIExpression()), !dbg !2153
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2190
  %36 = load i64, ptr %35, align 8, !dbg !2191, !tbaa !2109
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2146, metadata !DIExpression()), !dbg !2192
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2193
  %38 = load ptr, ptr %37, align 8, !dbg !2193, !tbaa !2097
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2148, metadata !DIExpression()), !dbg !2192
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2194
  %40 = load i32, ptr %39, align 4, !dbg !2194, !tbaa !1406
  %41 = or i32 %40, 1, !dbg !2195
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2149, metadata !DIExpression()), !dbg !2192
  %42 = load i32, ptr %3, align 8, !dbg !2196, !tbaa !1356
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2197
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2198
  %45 = load ptr, ptr %44, align 8, !dbg !2198, !tbaa !1427
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2199
  %47 = load ptr, ptr %46, align 8, !dbg !2199, !tbaa !1430
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2200
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2150, metadata !DIExpression()), !dbg !2192
  %49 = icmp ugt i64 %36, %48, !dbg !2201
  br i1 %49, label %60, label %50, !dbg !2203

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2204
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2146, metadata !DIExpression()), !dbg !2192
  store i64 %51, ptr %35, align 8, !dbg !2206, !tbaa !2109
  %52 = icmp eq ptr %38, @slot0, !dbg !2207
  br i1 %52, label %54, label %53, !dbg !2209

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2210
  br label %54, !dbg !2210

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2211
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2148, metadata !DIExpression()), !dbg !2192
  store ptr %55, ptr %37, align 8, !dbg !2212, !tbaa !2097
  %56 = load i32, ptr %3, align 8, !dbg !2213, !tbaa !1356
  %57 = load ptr, ptr %44, align 8, !dbg !2214, !tbaa !1427
  %58 = load ptr, ptr %46, align 8, !dbg !2215, !tbaa !1430
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2216
  br label %60, !dbg !2217

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2192
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2148, metadata !DIExpression()), !dbg !2192
  store i32 %7, ptr %6, align 4, !dbg !2218, !tbaa !746
  ret ptr %61, !dbg !2219
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2220 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2224, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2225, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2226, metadata !DIExpression()), !dbg !2227
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2228
  ret ptr %4, !dbg !2229
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2230 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2232, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i32 0, metadata !2126, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata ptr %0, metadata !2127, metadata !DIExpression()), !dbg !2234
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2236
  ret ptr %2, !dbg !2237
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2238 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2242, metadata !DIExpression()), !dbg !2244
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2243, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i32 0, metadata !2224, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata ptr %0, metadata !2225, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %1, metadata !2226, metadata !DIExpression()), !dbg !2245
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2247
  ret ptr %3, !dbg !2248
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2249 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2257
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2256, metadata !DIExpression(), metadata !2257, metadata ptr %4, metadata !DIExpression()), !dbg !2258
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2253, metadata !DIExpression()), !dbg !2258
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2254, metadata !DIExpression()), !dbg !2258
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2255, metadata !DIExpression()), !dbg !2258
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2259
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2260), !dbg !2263
  call void @llvm.dbg.value(metadata i32 %1, metadata !2264, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2269, metadata !DIExpression()), !dbg !2272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2272, !alias.scope !2260, !DIAssignID !2273
  call void @llvm.dbg.assign(metadata i8 0, metadata !2256, metadata !DIExpression(), metadata !2273, metadata ptr %4, metadata !DIExpression()), !dbg !2258
  %5 = icmp eq i32 %1, 10, !dbg !2274
  br i1 %5, label %6, label %7, !dbg !2276

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2277, !noalias !2260
  unreachable, !dbg !2277

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2278, !tbaa !1356, !alias.scope !2260, !DIAssignID !2279
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2256, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2279, metadata ptr %4, metadata !DIExpression()), !dbg !2258
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2280
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2281
  ret ptr %8, !dbg !2282
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2283 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2292
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2291, metadata !DIExpression(), metadata !2292, metadata ptr %5, metadata !DIExpression()), !dbg !2293
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2287, metadata !DIExpression()), !dbg !2293
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2288, metadata !DIExpression()), !dbg !2293
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2289, metadata !DIExpression()), !dbg !2293
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2290, metadata !DIExpression()), !dbg !2293
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2294
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2295), !dbg !2298
  call void @llvm.dbg.value(metadata i32 %1, metadata !2264, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2269, metadata !DIExpression()), !dbg !2301
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2301, !alias.scope !2295, !DIAssignID !2302
  call void @llvm.dbg.assign(metadata i8 0, metadata !2291, metadata !DIExpression(), metadata !2302, metadata ptr %5, metadata !DIExpression()), !dbg !2293
  %6 = icmp eq i32 %1, 10, !dbg !2303
  br i1 %6, label %7, label %8, !dbg !2304

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2305, !noalias !2295
  unreachable, !dbg !2305

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2306, !tbaa !1356, !alias.scope !2295, !DIAssignID !2307
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2291, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2307, metadata ptr %5, metadata !DIExpression()), !dbg !2293
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2308
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2309
  ret ptr %9, !dbg !2310
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2311 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2317
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2315, metadata !DIExpression()), !dbg !2318
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2316, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2256, metadata !DIExpression(), metadata !2317, metadata ptr %3, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 0, metadata !2253, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 %0, metadata !2254, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata ptr %1, metadata !2255, metadata !DIExpression()), !dbg !2319
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2321
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2322), !dbg !2325
  call void @llvm.dbg.value(metadata i32 %0, metadata !2264, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2269, metadata !DIExpression()), !dbg !2328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2328, !alias.scope !2322, !DIAssignID !2329
  call void @llvm.dbg.assign(metadata i8 0, metadata !2256, metadata !DIExpression(), metadata !2329, metadata ptr %3, metadata !DIExpression()), !dbg !2319
  %4 = icmp eq i32 %0, 10, !dbg !2330
  br i1 %4, label %5, label %6, !dbg !2331

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2332, !noalias !2322
  unreachable, !dbg !2332

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2333, !tbaa !1356, !alias.scope !2322, !DIAssignID !2334
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2256, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2334, metadata ptr %3, metadata !DIExpression()), !dbg !2319
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2335
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2336
  ret ptr %7, !dbg !2337
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2338 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2345
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2342, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2343, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2344, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2291, metadata !DIExpression(), metadata !2345, metadata ptr %4, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 0, metadata !2287, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %0, metadata !2288, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %1, metadata !2289, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %2, metadata !2290, metadata !DIExpression()), !dbg !2347
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2349
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2350), !dbg !2353
  call void @llvm.dbg.value(metadata i32 %0, metadata !2264, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2269, metadata !DIExpression()), !dbg !2356
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2356, !alias.scope !2350, !DIAssignID !2357
  call void @llvm.dbg.assign(metadata i8 0, metadata !2291, metadata !DIExpression(), metadata !2357, metadata ptr %4, metadata !DIExpression()), !dbg !2347
  %5 = icmp eq i32 %0, 10, !dbg !2358
  br i1 %5, label %6, label %7, !dbg !2359

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2360, !noalias !2350
  unreachable, !dbg !2360

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2361, !tbaa !1356, !alias.scope !2350, !DIAssignID !2362
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2291, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2362, metadata ptr %4, metadata !DIExpression()), !dbg !2347
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2363
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2364
  ret ptr %8, !dbg !2365
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2366 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2374
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2373, metadata !DIExpression(), metadata !2374, metadata ptr %4, metadata !DIExpression()), !dbg !2375
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2370, metadata !DIExpression()), !dbg !2375
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2371, metadata !DIExpression()), !dbg !2375
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2372, metadata !DIExpression()), !dbg !2375
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2377, !tbaa.struct !2378, !DIAssignID !2379
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2373, metadata !DIExpression(), metadata !2379, metadata ptr %4, metadata !DIExpression()), !dbg !2375
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1373, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1374, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1375, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1376, metadata !DIExpression()), !dbg !2380
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2382
  %6 = lshr i8 %2, 5, !dbg !2383
  %7 = zext nneg i8 %6 to i64, !dbg !2383
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2384
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1377, metadata !DIExpression()), !dbg !2380
  %9 = and i8 %2, 31, !dbg !2385
  %10 = zext nneg i8 %9 to i32, !dbg !2385
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1379, metadata !DIExpression()), !dbg !2380
  %11 = load i32, ptr %8, align 4, !dbg !2386, !tbaa !746
  %12 = lshr i32 %11, %10, !dbg !2387
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1380, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2380
  %13 = and i32 %12, 1, !dbg !2388
  %14 = xor i32 %13, 1, !dbg !2388
  %15 = shl nuw i32 %14, %10, !dbg !2389
  %16 = xor i32 %15, %11, !dbg !2390
  store i32 %16, ptr %8, align 4, !dbg !2390, !tbaa !746
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2391
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2392
  ret ptr %17, !dbg !2393
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2394 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2400
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2398, metadata !DIExpression()), !dbg !2401
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2399, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2373, metadata !DIExpression(), metadata !2400, metadata ptr %3, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata ptr %0, metadata !2370, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i64 -1, metadata !2371, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i8 %1, metadata !2372, metadata !DIExpression()), !dbg !2402
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2405, !tbaa.struct !2378, !DIAssignID !2406
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2373, metadata !DIExpression(), metadata !2406, metadata ptr %3, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata ptr %3, metadata !1373, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 %1, metadata !1374, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i32 1, metadata !1375, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 %1, metadata !1376, metadata !DIExpression()), !dbg !2407
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2409
  %5 = lshr i8 %1, 5, !dbg !2410
  %6 = zext nneg i8 %5 to i64, !dbg !2410
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2411
  call void @llvm.dbg.value(metadata ptr %7, metadata !1377, metadata !DIExpression()), !dbg !2407
  %8 = and i8 %1, 31, !dbg !2412
  %9 = zext nneg i8 %8 to i32, !dbg !2412
  call void @llvm.dbg.value(metadata i32 %9, metadata !1379, metadata !DIExpression()), !dbg !2407
  %10 = load i32, ptr %7, align 4, !dbg !2413, !tbaa !746
  %11 = lshr i32 %10, %9, !dbg !2414
  call void @llvm.dbg.value(metadata i32 %11, metadata !1380, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2407
  %12 = and i32 %11, 1, !dbg !2415
  %13 = xor i32 %12, 1, !dbg !2415
  %14 = shl nuw i32 %13, %9, !dbg !2416
  %15 = xor i32 %14, %10, !dbg !2417
  store i32 %15, ptr %7, align 4, !dbg !2417, !tbaa !746
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2418
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2419
  ret ptr %16, !dbg !2420
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2421 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2424
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2423, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata ptr %0, metadata !2398, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i8 58, metadata !2399, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2373, metadata !DIExpression(), metadata !2424, metadata ptr %2, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata ptr %0, metadata !2370, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i64 -1, metadata !2371, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8 58, metadata !2372, metadata !DIExpression()), !dbg !2428
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2431, !tbaa.struct !2378, !DIAssignID !2432
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2373, metadata !DIExpression(), metadata !2432, metadata ptr %2, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata ptr %2, metadata !1373, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8 58, metadata !1374, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 1, metadata !1375, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8 58, metadata !1376, metadata !DIExpression()), !dbg !2433
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2435
  call void @llvm.dbg.value(metadata ptr %3, metadata !1377, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 26, metadata !1379, metadata !DIExpression()), !dbg !2433
  %4 = load i32, ptr %3, align 4, !dbg !2436, !tbaa !746
  call void @llvm.dbg.value(metadata i32 %4, metadata !1380, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2433
  %5 = or i32 %4, 67108864, !dbg !2437
  store i32 %5, ptr %3, align 4, !dbg !2437, !tbaa !746
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2438
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2439
  ret ptr %6, !dbg !2440
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2441 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2445
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2443, metadata !DIExpression()), !dbg !2446
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2444, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2373, metadata !DIExpression(), metadata !2445, metadata ptr %3, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata ptr %0, metadata !2370, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i64 %1, metadata !2371, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i8 58, metadata !2372, metadata !DIExpression()), !dbg !2447
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2450, !tbaa.struct !2378, !DIAssignID !2451
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2373, metadata !DIExpression(), metadata !2451, metadata ptr %3, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata ptr %3, metadata !1373, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 58, metadata !1374, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i32 1, metadata !1375, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 58, metadata !1376, metadata !DIExpression()), !dbg !2452
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2454
  call void @llvm.dbg.value(metadata ptr %4, metadata !1377, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i32 26, metadata !1379, metadata !DIExpression()), !dbg !2452
  %5 = load i32, ptr %4, align 4, !dbg !2455, !tbaa !746
  call void @llvm.dbg.value(metadata i32 %5, metadata !1380, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2452
  %6 = or i32 %5, 67108864, !dbg !2456
  store i32 %6, ptr %4, align 4, !dbg !2456, !tbaa !746
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2457
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2458
  ret ptr %7, !dbg !2459
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2460 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2466
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2465, metadata !DIExpression(), metadata !2466, metadata ptr %4, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2468
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2462, metadata !DIExpression()), !dbg !2467
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2463, metadata !DIExpression()), !dbg !2467
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2464, metadata !DIExpression()), !dbg !2467
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2470
  call void @llvm.dbg.value(metadata i32 %1, metadata !2264, metadata !DIExpression()), !dbg !2471
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2471
  %5 = icmp eq i32 %1, 10, !dbg !2472
  br i1 %5, label %6, label %7, !dbg !2473

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2474, !noalias !2475
  unreachable, !dbg !2474

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2471
  store i32 %1, ptr %4, align 8, !dbg !2478, !tbaa.struct !2378, !DIAssignID !2479
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2478
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2478
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2465, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2479, metadata ptr %4, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2465, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2480, metadata ptr %8, metadata !DIExpression()), !dbg !2467
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1373, metadata !DIExpression()), !dbg !2481
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1374, metadata !DIExpression()), !dbg !2481
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1375, metadata !DIExpression()), !dbg !2481
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1376, metadata !DIExpression()), !dbg !2481
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2483
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1377, metadata !DIExpression()), !dbg !2481
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1379, metadata !DIExpression()), !dbg !2481
  %10 = load i32, ptr %9, align 4, !dbg !2484, !tbaa !746
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1380, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2481
  %11 = or i32 %10, 67108864, !dbg !2485
  store i32 %11, ptr %9, align 4, !dbg !2485, !tbaa !746, !DIAssignID !2486
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2465, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2486, metadata ptr %9, metadata !DIExpression()), !dbg !2467
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2487
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2488
  ret ptr %12, !dbg !2489
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2490 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2498
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2494, metadata !DIExpression()), !dbg !2499
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2495, metadata !DIExpression()), !dbg !2499
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2496, metadata !DIExpression()), !dbg !2499
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2497, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2500, metadata !DIExpression(), metadata !2498, metadata ptr %5, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i32 %0, metadata !2505, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata ptr %1, metadata !2506, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata ptr %2, metadata !2507, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata ptr %3, metadata !2508, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i64 -1, metadata !2509, metadata !DIExpression()), !dbg !2510
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2513, !tbaa.struct !2378, !DIAssignID !2514
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2500, metadata !DIExpression(), metadata !2514, metadata ptr %5, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2500, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2515, metadata ptr undef, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata ptr %5, metadata !1413, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata ptr %1, metadata !1414, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata ptr %2, metadata !1415, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata ptr %5, metadata !1413, metadata !DIExpression()), !dbg !2516
  store i32 10, ptr %5, align 8, !dbg !2518, !tbaa !1356, !DIAssignID !2519
  call void @llvm.dbg.assign(metadata i32 10, metadata !2500, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2519, metadata ptr %5, metadata !DIExpression()), !dbg !2510
  %6 = icmp ne ptr %1, null, !dbg !2520
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2521
  br i1 %8, label %10, label %9, !dbg !2521

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2522
  unreachable, !dbg !2522

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2523
  store ptr %1, ptr %11, align 8, !dbg !2524, !tbaa !1427, !DIAssignID !2525
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2500, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2525, metadata ptr %11, metadata !DIExpression()), !dbg !2510
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2526
  store ptr %2, ptr %12, align 8, !dbg !2527, !tbaa !1430, !DIAssignID !2528
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2500, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2528, metadata ptr %12, metadata !DIExpression()), !dbg !2510
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2529
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2530
  ret ptr %13, !dbg !2531
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2501 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2532
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2500, metadata !DIExpression(), metadata !2532, metadata ptr %6, metadata !DIExpression()), !dbg !2533
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2505, metadata !DIExpression()), !dbg !2533
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2506, metadata !DIExpression()), !dbg !2533
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2507, metadata !DIExpression()), !dbg !2533
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2508, metadata !DIExpression()), !dbg !2533
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2535, !tbaa.struct !2378, !DIAssignID !2536
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2500, metadata !DIExpression(), metadata !2536, metadata ptr %6, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2500, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2537, metadata ptr undef, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata ptr %6, metadata !1413, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata ptr %1, metadata !1414, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata ptr %2, metadata !1415, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata ptr %6, metadata !1413, metadata !DIExpression()), !dbg !2538
  store i32 10, ptr %6, align 8, !dbg !2540, !tbaa !1356, !DIAssignID !2541
  call void @llvm.dbg.assign(metadata i32 10, metadata !2500, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2541, metadata ptr %6, metadata !DIExpression()), !dbg !2533
  %7 = icmp ne ptr %1, null, !dbg !2542
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2543
  br i1 %9, label %11, label %10, !dbg !2543

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2544
  unreachable, !dbg !2544

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2545
  store ptr %1, ptr %12, align 8, !dbg !2546, !tbaa !1427, !DIAssignID !2547
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2500, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2547, metadata ptr %12, metadata !DIExpression()), !dbg !2533
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2548
  store ptr %2, ptr %13, align 8, !dbg !2549, !tbaa !1430, !DIAssignID !2550
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2500, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2550, metadata ptr %13, metadata !DIExpression()), !dbg !2533
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2551
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2552
  ret ptr %14, !dbg !2553
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2554 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2561
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2558, metadata !DIExpression()), !dbg !2562
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2559, metadata !DIExpression()), !dbg !2562
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2560, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 0, metadata !2494, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata ptr %0, metadata !2495, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata ptr %1, metadata !2496, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata ptr %2, metadata !2497, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2500, metadata !DIExpression(), metadata !2561, metadata ptr %4, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 0, metadata !2505, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata ptr %0, metadata !2506, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata ptr %1, metadata !2507, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata ptr %2, metadata !2508, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i64 -1, metadata !2509, metadata !DIExpression()), !dbg !2565
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2568, !tbaa.struct !2378, !DIAssignID !2569
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2500, metadata !DIExpression(), metadata !2569, metadata ptr %4, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2500, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2570, metadata ptr undef, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata ptr %4, metadata !1413, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %0, metadata !1414, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %1, metadata !1415, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %4, metadata !1413, metadata !DIExpression()), !dbg !2571
  store i32 10, ptr %4, align 8, !dbg !2573, !tbaa !1356, !DIAssignID !2574
  call void @llvm.dbg.assign(metadata i32 10, metadata !2500, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2574, metadata ptr %4, metadata !DIExpression()), !dbg !2565
  %5 = icmp ne ptr %0, null, !dbg !2575
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2576
  br i1 %7, label %9, label %8, !dbg !2576

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2577
  unreachable, !dbg !2577

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2578
  store ptr %0, ptr %10, align 8, !dbg !2579, !tbaa !1427, !DIAssignID !2580
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2500, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2580, metadata ptr %10, metadata !DIExpression()), !dbg !2565
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2581
  store ptr %1, ptr %11, align 8, !dbg !2582, !tbaa !1430, !DIAssignID !2583
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2500, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2583, metadata ptr %11, metadata !DIExpression()), !dbg !2565
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2584
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2585
  ret ptr %12, !dbg !2586
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2587 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2595
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2591, metadata !DIExpression()), !dbg !2596
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2592, metadata !DIExpression()), !dbg !2596
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2593, metadata !DIExpression()), !dbg !2596
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2594, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2500, metadata !DIExpression(), metadata !2595, metadata ptr %5, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i32 0, metadata !2505, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata ptr %0, metadata !2506, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata ptr %1, metadata !2507, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata ptr %2, metadata !2508, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i64 %3, metadata !2509, metadata !DIExpression()), !dbg !2597
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2600, !tbaa.struct !2378, !DIAssignID !2601
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2500, metadata !DIExpression(), metadata !2601, metadata ptr %5, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2500, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2602, metadata ptr undef, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata ptr %5, metadata !1413, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata ptr %0, metadata !1414, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata ptr %1, metadata !1415, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata ptr %5, metadata !1413, metadata !DIExpression()), !dbg !2603
  store i32 10, ptr %5, align 8, !dbg !2605, !tbaa !1356, !DIAssignID !2606
  call void @llvm.dbg.assign(metadata i32 10, metadata !2500, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2606, metadata ptr %5, metadata !DIExpression()), !dbg !2597
  %6 = icmp ne ptr %0, null, !dbg !2607
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2608
  br i1 %8, label %10, label %9, !dbg !2608

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2609
  unreachable, !dbg !2609

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2610
  store ptr %0, ptr %11, align 8, !dbg !2611, !tbaa !1427, !DIAssignID !2612
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2500, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2612, metadata ptr %11, metadata !DIExpression()), !dbg !2597
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2613
  store ptr %1, ptr %12, align 8, !dbg !2614, !tbaa !1430, !DIAssignID !2615
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2500, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2615, metadata ptr %12, metadata !DIExpression()), !dbg !2597
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2616
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2617
  ret ptr %13, !dbg !2618
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2619 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2623, metadata !DIExpression()), !dbg !2626
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2624, metadata !DIExpression()), !dbg !2626
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2625, metadata !DIExpression()), !dbg !2626
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2627
  ret ptr %4, !dbg !2628
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2629 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2633, metadata !DIExpression()), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2634, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 0, metadata !2623, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata ptr %0, metadata !2624, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i64 %1, metadata !2625, metadata !DIExpression()), !dbg !2636
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2638
  ret ptr %3, !dbg !2639
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2640 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2644, metadata !DIExpression()), !dbg !2646
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2645, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i32 %0, metadata !2623, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata ptr %1, metadata !2624, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i64 -1, metadata !2625, metadata !DIExpression()), !dbg !2647
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2649
  ret ptr %3, !dbg !2650
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2651 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2655, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i32 0, metadata !2644, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata ptr %0, metadata !2645, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i32 0, metadata !2623, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata ptr %0, metadata !2624, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i64 -1, metadata !2625, metadata !DIExpression()), !dbg !2659
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2661
  ret ptr %2, !dbg !2662
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2663 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2702, metadata !DIExpression()), !dbg !2708
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2703, metadata !DIExpression()), !dbg !2708
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2704, metadata !DIExpression()), !dbg !2708
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2705, metadata !DIExpression()), !dbg !2708
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2706, metadata !DIExpression()), !dbg !2708
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2707, metadata !DIExpression()), !dbg !2708
  %7 = icmp eq ptr %1, null, !dbg !2709
  br i1 %7, label %10, label %8, !dbg !2711

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.67, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2712
  br label %12, !dbg !2712

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.68, ptr noundef %2, ptr noundef %3) #37, !dbg !2713
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.3.70, i32 noundef 5) #37, !dbg !2714
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2714
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %0), !dbg !2715
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.5.72, i32 noundef 5) #37, !dbg !2716
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.73) #37, !dbg !2716
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %0), !dbg !2717
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
  ], !dbg !2718

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.7.74, i32 noundef 5) #37, !dbg !2719
  %21 = load ptr, ptr %4, align 8, !dbg !2719, !tbaa !725
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2719
  br label %147, !dbg !2721

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.8.75, i32 noundef 5) #37, !dbg !2722
  %25 = load ptr, ptr %4, align 8, !dbg !2722, !tbaa !725
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2722
  %27 = load ptr, ptr %26, align 8, !dbg !2722, !tbaa !725
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2722
  br label %147, !dbg !2723

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.9.76, i32 noundef 5) #37, !dbg !2724
  %31 = load ptr, ptr %4, align 8, !dbg !2724, !tbaa !725
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2724
  %33 = load ptr, ptr %32, align 8, !dbg !2724, !tbaa !725
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2724
  %35 = load ptr, ptr %34, align 8, !dbg !2724, !tbaa !725
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2724
  br label %147, !dbg !2725

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.10.77, i32 noundef 5) #37, !dbg !2726
  %39 = load ptr, ptr %4, align 8, !dbg !2726, !tbaa !725
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2726
  %41 = load ptr, ptr %40, align 8, !dbg !2726, !tbaa !725
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2726
  %43 = load ptr, ptr %42, align 8, !dbg !2726, !tbaa !725
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2726
  %45 = load ptr, ptr %44, align 8, !dbg !2726, !tbaa !725
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2726
  br label %147, !dbg !2727

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.11.78, i32 noundef 5) #37, !dbg !2728
  %49 = load ptr, ptr %4, align 8, !dbg !2728, !tbaa !725
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2728
  %51 = load ptr, ptr %50, align 8, !dbg !2728, !tbaa !725
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2728
  %53 = load ptr, ptr %52, align 8, !dbg !2728, !tbaa !725
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2728
  %55 = load ptr, ptr %54, align 8, !dbg !2728, !tbaa !725
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2728
  %57 = load ptr, ptr %56, align 8, !dbg !2728, !tbaa !725
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2728
  br label %147, !dbg !2729

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.12.79, i32 noundef 5) #37, !dbg !2730
  %61 = load ptr, ptr %4, align 8, !dbg !2730, !tbaa !725
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2730
  %63 = load ptr, ptr %62, align 8, !dbg !2730, !tbaa !725
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2730
  %65 = load ptr, ptr %64, align 8, !dbg !2730, !tbaa !725
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2730
  %67 = load ptr, ptr %66, align 8, !dbg !2730, !tbaa !725
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2730
  %69 = load ptr, ptr %68, align 8, !dbg !2730, !tbaa !725
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2730
  %71 = load ptr, ptr %70, align 8, !dbg !2730, !tbaa !725
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2730
  br label %147, !dbg !2731

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.13.80, i32 noundef 5) #37, !dbg !2732
  %75 = load ptr, ptr %4, align 8, !dbg !2732, !tbaa !725
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2732
  %77 = load ptr, ptr %76, align 8, !dbg !2732, !tbaa !725
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2732
  %79 = load ptr, ptr %78, align 8, !dbg !2732, !tbaa !725
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2732
  %81 = load ptr, ptr %80, align 8, !dbg !2732, !tbaa !725
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2732
  %83 = load ptr, ptr %82, align 8, !dbg !2732, !tbaa !725
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2732
  %85 = load ptr, ptr %84, align 8, !dbg !2732, !tbaa !725
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2732
  %87 = load ptr, ptr %86, align 8, !dbg !2732, !tbaa !725
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2732
  br label %147, !dbg !2733

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.14.81, i32 noundef 5) #37, !dbg !2734
  %91 = load ptr, ptr %4, align 8, !dbg !2734, !tbaa !725
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2734
  %93 = load ptr, ptr %92, align 8, !dbg !2734, !tbaa !725
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2734
  %95 = load ptr, ptr %94, align 8, !dbg !2734, !tbaa !725
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2734
  %97 = load ptr, ptr %96, align 8, !dbg !2734, !tbaa !725
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2734
  %99 = load ptr, ptr %98, align 8, !dbg !2734, !tbaa !725
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2734
  %101 = load ptr, ptr %100, align 8, !dbg !2734, !tbaa !725
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2734
  %103 = load ptr, ptr %102, align 8, !dbg !2734, !tbaa !725
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2734
  %105 = load ptr, ptr %104, align 8, !dbg !2734, !tbaa !725
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2734
  br label %147, !dbg !2735

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.15.82, i32 noundef 5) #37, !dbg !2736
  %109 = load ptr, ptr %4, align 8, !dbg !2736, !tbaa !725
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2736
  %111 = load ptr, ptr %110, align 8, !dbg !2736, !tbaa !725
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2736
  %113 = load ptr, ptr %112, align 8, !dbg !2736, !tbaa !725
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2736
  %115 = load ptr, ptr %114, align 8, !dbg !2736, !tbaa !725
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2736
  %117 = load ptr, ptr %116, align 8, !dbg !2736, !tbaa !725
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2736
  %119 = load ptr, ptr %118, align 8, !dbg !2736, !tbaa !725
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2736
  %121 = load ptr, ptr %120, align 8, !dbg !2736, !tbaa !725
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2736
  %123 = load ptr, ptr %122, align 8, !dbg !2736, !tbaa !725
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2736
  %125 = load ptr, ptr %124, align 8, !dbg !2736, !tbaa !725
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2736
  br label %147, !dbg !2737

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.16.83, i32 noundef 5) #37, !dbg !2738
  %129 = load ptr, ptr %4, align 8, !dbg !2738, !tbaa !725
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2738
  %131 = load ptr, ptr %130, align 8, !dbg !2738, !tbaa !725
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2738
  %133 = load ptr, ptr %132, align 8, !dbg !2738, !tbaa !725
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2738
  %135 = load ptr, ptr %134, align 8, !dbg !2738, !tbaa !725
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2738
  %137 = load ptr, ptr %136, align 8, !dbg !2738, !tbaa !725
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2738
  %139 = load ptr, ptr %138, align 8, !dbg !2738, !tbaa !725
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2738
  %141 = load ptr, ptr %140, align 8, !dbg !2738, !tbaa !725
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2738
  %143 = load ptr, ptr %142, align 8, !dbg !2738, !tbaa !725
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2738
  %145 = load ptr, ptr %144, align 8, !dbg !2738, !tbaa !725
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2738
  br label %147, !dbg !2739

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2740
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2741 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2745, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2746, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2747, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2748, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2749, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2750, metadata !DIExpression()), !dbg !2751
  br label %6, !dbg !2752

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2754
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2750, metadata !DIExpression()), !dbg !2751
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2755
  %9 = load ptr, ptr %8, align 8, !dbg !2755, !tbaa !725
  %10 = icmp eq ptr %9, null, !dbg !2757
  %11 = add i64 %7, 1, !dbg !2758
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2750, metadata !DIExpression()), !dbg !2751
  br i1 %10, label %12, label %6, !dbg !2757, !llvm.loop !2759

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !2754
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !2761
  ret void, !dbg !2762
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2763 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !2785
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2783, metadata !DIExpression(), metadata !2785, metadata ptr %6, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2777, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2778, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2779, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2780, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2781, metadata !DIExpression(DW_OP_deref)), !dbg !2786
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !2787
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2782, metadata !DIExpression()), !dbg !2786
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2782, metadata !DIExpression()), !dbg !2786
  %10 = icmp sgt i32 %9, -1, !dbg !2788
  br i1 %10, label %18, label %11, !dbg !2788

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2788
  store i32 %12, ptr %7, align 8, !dbg !2788
  %13 = icmp ult i32 %9, -7, !dbg !2788
  br i1 %13, label %14, label %18, !dbg !2788

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2788
  %16 = sext i32 %9 to i64, !dbg !2788
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2788
  br label %22, !dbg !2788

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2788
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2788
  store ptr %21, ptr %4, align 8, !dbg !2788
  br label %22, !dbg !2788

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2788
  %25 = load ptr, ptr %24, align 8, !dbg !2788
  store ptr %25, ptr %6, align 8, !dbg !2791, !tbaa !725
  %26 = icmp eq ptr %25, null, !dbg !2792
  br i1 %26, label %197, label %27, !dbg !2793

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2782, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2782, metadata !DIExpression()), !dbg !2786
  %28 = icmp sgt i32 %23, -1, !dbg !2788
  br i1 %28, label %36, label %29, !dbg !2788

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2788
  store i32 %30, ptr %7, align 8, !dbg !2788
  %31 = icmp ult i32 %23, -7, !dbg !2788
  br i1 %31, label %32, label %36, !dbg !2788

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2788
  %34 = sext i32 %23 to i64, !dbg !2788
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2788
  br label %40, !dbg !2788

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2788
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2788
  store ptr %39, ptr %4, align 8, !dbg !2788
  br label %40, !dbg !2788

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2788
  %43 = load ptr, ptr %42, align 8, !dbg !2788
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2794
  store ptr %43, ptr %44, align 8, !dbg !2791, !tbaa !725
  %45 = icmp eq ptr %43, null, !dbg !2792
  br i1 %45, label %197, label %46, !dbg !2793

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2782, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2782, metadata !DIExpression()), !dbg !2786
  %47 = icmp sgt i32 %41, -1, !dbg !2788
  br i1 %47, label %55, label %48, !dbg !2788

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2788
  store i32 %49, ptr %7, align 8, !dbg !2788
  %50 = icmp ult i32 %41, -7, !dbg !2788
  br i1 %50, label %51, label %55, !dbg !2788

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2788
  %53 = sext i32 %41 to i64, !dbg !2788
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2788
  br label %59, !dbg !2788

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2788
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2788
  store ptr %58, ptr %4, align 8, !dbg !2788
  br label %59, !dbg !2788

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2788
  %62 = load ptr, ptr %61, align 8, !dbg !2788
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2794
  store ptr %62, ptr %63, align 8, !dbg !2791, !tbaa !725
  %64 = icmp eq ptr %62, null, !dbg !2792
  br i1 %64, label %197, label %65, !dbg !2793

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2782, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2782, metadata !DIExpression()), !dbg !2786
  %66 = icmp sgt i32 %60, -1, !dbg !2788
  br i1 %66, label %74, label %67, !dbg !2788

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2788
  store i32 %68, ptr %7, align 8, !dbg !2788
  %69 = icmp ult i32 %60, -7, !dbg !2788
  br i1 %69, label %70, label %74, !dbg !2788

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2788
  %72 = sext i32 %60 to i64, !dbg !2788
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2788
  br label %78, !dbg !2788

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2788
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2788
  store ptr %77, ptr %4, align 8, !dbg !2788
  br label %78, !dbg !2788

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2788
  %81 = load ptr, ptr %80, align 8, !dbg !2788
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2794
  store ptr %81, ptr %82, align 8, !dbg !2791, !tbaa !725
  %83 = icmp eq ptr %81, null, !dbg !2792
  br i1 %83, label %197, label %84, !dbg !2793

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2782, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2782, metadata !DIExpression()), !dbg !2786
  %85 = icmp sgt i32 %79, -1, !dbg !2788
  br i1 %85, label %93, label %86, !dbg !2788

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2788
  store i32 %87, ptr %7, align 8, !dbg !2788
  %88 = icmp ult i32 %79, -7, !dbg !2788
  br i1 %88, label %89, label %93, !dbg !2788

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2788
  %91 = sext i32 %79 to i64, !dbg !2788
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2788
  br label %97, !dbg !2788

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2788
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2788
  store ptr %96, ptr %4, align 8, !dbg !2788
  br label %97, !dbg !2788

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2788
  %100 = load ptr, ptr %99, align 8, !dbg !2788
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2794
  store ptr %100, ptr %101, align 8, !dbg !2791, !tbaa !725
  %102 = icmp eq ptr %100, null, !dbg !2792
  br i1 %102, label %197, label %103, !dbg !2793

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2782, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2782, metadata !DIExpression()), !dbg !2786
  %104 = icmp sgt i32 %98, -1, !dbg !2788
  br i1 %104, label %112, label %105, !dbg !2788

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2788
  store i32 %106, ptr %7, align 8, !dbg !2788
  %107 = icmp ult i32 %98, -7, !dbg !2788
  br i1 %107, label %108, label %112, !dbg !2788

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2788
  %110 = sext i32 %98 to i64, !dbg !2788
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2788
  br label %116, !dbg !2788

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2788
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2788
  store ptr %115, ptr %4, align 8, !dbg !2788
  br label %116, !dbg !2788

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2788
  %119 = load ptr, ptr %118, align 8, !dbg !2788
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2794
  store ptr %119, ptr %120, align 8, !dbg !2791, !tbaa !725
  %121 = icmp eq ptr %119, null, !dbg !2792
  br i1 %121, label %197, label %122, !dbg !2793

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2782, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2782, metadata !DIExpression()), !dbg !2786
  %123 = icmp sgt i32 %117, -1, !dbg !2788
  br i1 %123, label %131, label %124, !dbg !2788

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2788
  store i32 %125, ptr %7, align 8, !dbg !2788
  %126 = icmp ult i32 %117, -7, !dbg !2788
  br i1 %126, label %127, label %131, !dbg !2788

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2788
  %129 = sext i32 %117 to i64, !dbg !2788
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2788
  br label %135, !dbg !2788

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2788
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2788
  store ptr %134, ptr %4, align 8, !dbg !2788
  br label %135, !dbg !2788

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2788
  %138 = load ptr, ptr %137, align 8, !dbg !2788
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2794
  store ptr %138, ptr %139, align 8, !dbg !2791, !tbaa !725
  %140 = icmp eq ptr %138, null, !dbg !2792
  br i1 %140, label %197, label %141, !dbg !2793

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2782, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2782, metadata !DIExpression()), !dbg !2786
  %142 = icmp sgt i32 %136, -1, !dbg !2788
  br i1 %142, label %150, label %143, !dbg !2788

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2788
  store i32 %144, ptr %7, align 8, !dbg !2788
  %145 = icmp ult i32 %136, -7, !dbg !2788
  br i1 %145, label %146, label %150, !dbg !2788

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2788
  %148 = sext i32 %136 to i64, !dbg !2788
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2788
  br label %154, !dbg !2788

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2788
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2788
  store ptr %153, ptr %4, align 8, !dbg !2788
  br label %154, !dbg !2788

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2788
  %157 = load ptr, ptr %156, align 8, !dbg !2788
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2794
  store ptr %157, ptr %158, align 8, !dbg !2791, !tbaa !725
  %159 = icmp eq ptr %157, null, !dbg !2792
  br i1 %159, label %197, label %160, !dbg !2793

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2782, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2782, metadata !DIExpression()), !dbg !2786
  %161 = icmp sgt i32 %155, -1, !dbg !2788
  br i1 %161, label %169, label %162, !dbg !2788

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2788
  store i32 %163, ptr %7, align 8, !dbg !2788
  %164 = icmp ult i32 %155, -7, !dbg !2788
  br i1 %164, label %165, label %169, !dbg !2788

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2788
  %167 = sext i32 %155 to i64, !dbg !2788
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2788
  br label %173, !dbg !2788

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2788
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2788
  store ptr %172, ptr %4, align 8, !dbg !2788
  br label %173, !dbg !2788

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2788
  %176 = load ptr, ptr %175, align 8, !dbg !2788
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2794
  store ptr %176, ptr %177, align 8, !dbg !2791, !tbaa !725
  %178 = icmp eq ptr %176, null, !dbg !2792
  br i1 %178, label %197, label %179, !dbg !2793

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2782, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2782, metadata !DIExpression()), !dbg !2786
  %180 = icmp sgt i32 %174, -1, !dbg !2788
  br i1 %180, label %188, label %181, !dbg !2788

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2788
  store i32 %182, ptr %7, align 8, !dbg !2788
  %183 = icmp ult i32 %174, -7, !dbg !2788
  br i1 %183, label %184, label %188, !dbg !2788

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2788
  %186 = sext i32 %174 to i64, !dbg !2788
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2788
  br label %191, !dbg !2788

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2788
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2788
  store ptr %190, ptr %4, align 8, !dbg !2788
  br label %191, !dbg !2788

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2788
  %193 = load ptr, ptr %192, align 8, !dbg !2788
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2794
  store ptr %193, ptr %194, align 8, !dbg !2791, !tbaa !725
  %195 = icmp eq ptr %193, null, !dbg !2792
  %196 = select i1 %195, i64 9, i64 10, !dbg !2793
  br label %197, !dbg !2793

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2795
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2796
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !2797
  ret void, !dbg !2797
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2798 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !2807
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2806, metadata !DIExpression(), metadata !2807, metadata ptr %5, metadata !DIExpression()), !dbg !2808
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2802, metadata !DIExpression()), !dbg !2808
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2803, metadata !DIExpression()), !dbg !2808
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2804, metadata !DIExpression()), !dbg !2808
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2805, metadata !DIExpression()), !dbg !2808
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !2809
  call void @llvm.va_start(ptr nonnull %5), !dbg !2810
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !2811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2811, !tbaa.struct !1047
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2811
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !2811
  call void @llvm.va_end(ptr nonnull %5), !dbg !2812
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !2813
  ret void, !dbg !2813
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2814 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2815, !tbaa !725
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %1), !dbg !2815
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.17.88, i32 noundef 5) #37, !dbg !2816
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.89) #37, !dbg !2816
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.19, i32 noundef 5) #37, !dbg !2817
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21.90) #37, !dbg !2817
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !2818
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !2818
  ret void, !dbg !2819
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2820 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2825, metadata !DIExpression()), !dbg !2828
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2826, metadata !DIExpression()), !dbg !2828
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2827, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata ptr %0, metadata !2829, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64 %1, metadata !2832, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64 %2, metadata !2833, metadata !DIExpression()), !dbg !2834
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2836
  call void @llvm.dbg.value(metadata ptr %4, metadata !2837, metadata !DIExpression()), !dbg !2842
  %5 = icmp eq ptr %4, null, !dbg !2844
  br i1 %5, label %6, label %7, !dbg !2846

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2847
  unreachable, !dbg !2847

7:                                                ; preds = %3
  ret ptr %4, !dbg !2848
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2830 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2829, metadata !DIExpression()), !dbg !2849
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2832, metadata !DIExpression()), !dbg !2849
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2833, metadata !DIExpression()), !dbg !2849
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2850
  call void @llvm.dbg.value(metadata ptr %4, metadata !2837, metadata !DIExpression()), !dbg !2851
  %5 = icmp eq ptr %4, null, !dbg !2853
  br i1 %5, label %6, label %7, !dbg !2854

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2855
  unreachable, !dbg !2855

7:                                                ; preds = %3
  ret ptr %4, !dbg !2856
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2857 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2861, metadata !DIExpression()), !dbg !2862
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2863
  call void @llvm.dbg.value(metadata ptr %2, metadata !2837, metadata !DIExpression()), !dbg !2864
  %3 = icmp eq ptr %2, null, !dbg !2866
  br i1 %3, label %4, label %5, !dbg !2867

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2868
  unreachable, !dbg !2868

5:                                                ; preds = %1
  ret ptr %2, !dbg !2869
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2870 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2871 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2875, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %0, metadata !2877, metadata !DIExpression()), !dbg !2881
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2883
  call void @llvm.dbg.value(metadata ptr %2, metadata !2837, metadata !DIExpression()), !dbg !2884
  %3 = icmp eq ptr %2, null, !dbg !2886
  br i1 %3, label %4, label %5, !dbg !2887

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2888
  unreachable, !dbg !2888

5:                                                ; preds = %1
  ret ptr %2, !dbg !2889
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2890 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2894, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 %0, metadata !2861, metadata !DIExpression()), !dbg !2896
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2898
  call void @llvm.dbg.value(metadata ptr %2, metadata !2837, metadata !DIExpression()), !dbg !2899
  %3 = icmp eq ptr %2, null, !dbg !2901
  br i1 %3, label %4, label %5, !dbg !2902

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2903
  unreachable, !dbg !2903

5:                                                ; preds = %1
  ret ptr %2, !dbg !2904
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2905 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2909, metadata !DIExpression()), !dbg !2911
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2910, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata ptr %0, metadata !2912, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i64 %1, metadata !2916, metadata !DIExpression()), !dbg !2917
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !2919
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !2920
  call void @llvm.dbg.value(metadata ptr %4, metadata !2837, metadata !DIExpression()), !dbg !2921
  %5 = icmp eq ptr %4, null, !dbg !2923
  br i1 %5, label %6, label %7, !dbg !2924

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !2925
  unreachable, !dbg !2925

7:                                                ; preds = %2
  ret ptr %4, !dbg !2926
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2927 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2928 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2932, metadata !DIExpression()), !dbg !2934
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2933, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata ptr %0, metadata !2935, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i64 %1, metadata !2938, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata ptr %0, metadata !2912, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i64 %1, metadata !2916, metadata !DIExpression()), !dbg !2941
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !2943
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !2944
  call void @llvm.dbg.value(metadata ptr %4, metadata !2837, metadata !DIExpression()), !dbg !2945
  %5 = icmp eq ptr %4, null, !dbg !2947
  br i1 %5, label %6, label %7, !dbg !2948

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !2949
  unreachable, !dbg !2949

7:                                                ; preds = %2
  ret ptr %4, !dbg !2950
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2951 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2955, metadata !DIExpression()), !dbg !2958
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2956, metadata !DIExpression()), !dbg !2958
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2957, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata ptr %0, metadata !2959, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %1, metadata !2962, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %2, metadata !2963, metadata !DIExpression()), !dbg !2964
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2966
  call void @llvm.dbg.value(metadata ptr %4, metadata !2837, metadata !DIExpression()), !dbg !2967
  %5 = icmp eq ptr %4, null, !dbg !2969
  br i1 %5, label %6, label %7, !dbg !2970

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2971
  unreachable, !dbg !2971

7:                                                ; preds = %3
  ret ptr %4, !dbg !2972
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !2973 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2977, metadata !DIExpression()), !dbg !2979
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2978, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata ptr null, metadata !2829, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i64 %0, metadata !2832, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i64 %1, metadata !2833, metadata !DIExpression()), !dbg !2980
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !2982
  call void @llvm.dbg.value(metadata ptr %3, metadata !2837, metadata !DIExpression()), !dbg !2983
  %4 = icmp eq ptr %3, null, !dbg !2985
  br i1 %4, label %5, label %6, !dbg !2986

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !2987
  unreachable, !dbg !2987

6:                                                ; preds = %2
  ret ptr %3, !dbg !2988
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !2989 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2993, metadata !DIExpression()), !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2994, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata ptr null, metadata !2955, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i64 %0, metadata !2956, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i64 %1, metadata !2957, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata ptr null, metadata !2959, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %0, metadata !2962, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %1, metadata !2963, metadata !DIExpression()), !dbg !2998
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3000
  call void @llvm.dbg.value(metadata ptr %3, metadata !2837, metadata !DIExpression()), !dbg !3001
  %4 = icmp eq ptr %3, null, !dbg !3003
  br i1 %4, label %5, label %6, !dbg !3004

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3005
  unreachable, !dbg !3005

6:                                                ; preds = %2
  ret ptr %3, !dbg !3006
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3007 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3011, metadata !DIExpression()), !dbg !3013
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3012, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata ptr %0, metadata !665, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %1, metadata !666, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i64 1, metadata !667, metadata !DIExpression()), !dbg !3014
  %3 = load i64, ptr %1, align 8, !dbg !3016, !tbaa !2081
  call void @llvm.dbg.value(metadata i64 %3, metadata !668, metadata !DIExpression()), !dbg !3014
  %4 = icmp eq ptr %0, null, !dbg !3017
  br i1 %4, label %5, label %8, !dbg !3019

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3020
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3023
  br label %15, !dbg !3023

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3024
  %10 = add nuw i64 %9, 1, !dbg !3024
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3024
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3024
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3024
  call void @llvm.dbg.value(metadata i64 %13, metadata !668, metadata !DIExpression()), !dbg !3014
  br i1 %12, label %14, label %15, !dbg !3027

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3028
  unreachable, !dbg !3028

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3014
  call void @llvm.dbg.value(metadata i64 %16, metadata !668, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %0, metadata !2829, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %16, metadata !2832, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 1, metadata !2833, metadata !DIExpression()), !dbg !3029
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3031
  call void @llvm.dbg.value(metadata ptr %17, metadata !2837, metadata !DIExpression()), !dbg !3032
  %18 = icmp eq ptr %17, null, !dbg !3034
  br i1 %18, label %19, label %20, !dbg !3035

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3036
  unreachable, !dbg !3036

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !665, metadata !DIExpression()), !dbg !3014
  store i64 %16, ptr %1, align 8, !dbg !3037, !tbaa !2081
  ret ptr %17, !dbg !3038
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !660 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !665, metadata !DIExpression()), !dbg !3039
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !666, metadata !DIExpression()), !dbg !3039
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !667, metadata !DIExpression()), !dbg !3039
  %4 = load i64, ptr %1, align 8, !dbg !3040, !tbaa !2081
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !668, metadata !DIExpression()), !dbg !3039
  %5 = icmp eq ptr %0, null, !dbg !3041
  br i1 %5, label %6, label %13, !dbg !3042

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3043
  br i1 %7, label %8, label %20, !dbg !3044

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !668, metadata !DIExpression()), !dbg !3039
  %10 = icmp ugt i64 %2, 128, !dbg !3047
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3048
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !668, metadata !DIExpression()), !dbg !3039
  br label %20, !dbg !3049

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3050
  %15 = add nuw i64 %14, 1, !dbg !3050
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3050
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3050
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3050
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !668, metadata !DIExpression()), !dbg !3039
  br i1 %17, label %19, label %20, !dbg !3051

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3052
  unreachable, !dbg !3052

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3039
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !668, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata ptr %0, metadata !2829, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %21, metadata !2832, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %2, metadata !2833, metadata !DIExpression()), !dbg !3053
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3055
  call void @llvm.dbg.value(metadata ptr %22, metadata !2837, metadata !DIExpression()), !dbg !3056
  %23 = icmp eq ptr %22, null, !dbg !3058
  br i1 %23, label %24, label %25, !dbg !3059

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3060
  unreachable, !dbg !3060

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !665, metadata !DIExpression()), !dbg !3039
  store i64 %21, ptr %1, align 8, !dbg !3061, !tbaa !2081
  ret ptr %22, !dbg !3062
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !672 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !681, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !682, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !683, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !684, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !685, metadata !DIExpression()), !dbg !3063
  %6 = load i64, ptr %1, align 8, !dbg !3064, !tbaa !2081
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !686, metadata !DIExpression()), !dbg !3063
  %7 = ashr i64 %6, 1, !dbg !3065
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3065
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3065
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3065
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !687, metadata !DIExpression()), !dbg !3063
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3067
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !687, metadata !DIExpression()), !dbg !3063
  %12 = icmp sgt i64 %3, -1, !dbg !3068
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3070
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3070
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !687, metadata !DIExpression()), !dbg !3063
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3071
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3071
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !688, metadata !DIExpression()), !dbg !3063
  %18 = icmp slt i64 %17, 128, !dbg !3071
  %19 = select i1 %18, i64 128, i64 0, !dbg !3071
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !689, metadata !DIExpression()), !dbg !3063
  %21 = icmp eq i64 %20, 0, !dbg !3072
  br i1 %21, label %28, label %22, !dbg !3074

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3075
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !687, metadata !DIExpression()), !dbg !3063
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !688, metadata !DIExpression()), !dbg !3063
  br label %28, !dbg !3078

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3063
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !688, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !687, metadata !DIExpression()), !dbg !3063
  %31 = icmp eq ptr %0, null, !dbg !3079
  br i1 %31, label %32, label %33, !dbg !3081

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3082, !tbaa !2081
  br label %33, !dbg !3083

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3084
  %35 = icmp slt i64 %34, %2, !dbg !3086
  br i1 %35, label %36, label %48, !dbg !3087

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3088
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3088
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3088
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !687, metadata !DIExpression()), !dbg !3063
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3089
  br i1 %42, label %47, label %43, !dbg !3089

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3090
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3090
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3090
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !688, metadata !DIExpression()), !dbg !3063
  br i1 %45, label %47, label %48, !dbg !3091

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #38, !dbg !3092
  unreachable, !dbg !3092

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3063
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !688, metadata !DIExpression()), !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !687, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr %0, metadata !2909, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %50, metadata !2910, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata ptr %0, metadata !2912, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 %50, metadata !2916, metadata !DIExpression()), !dbg !3095
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3097
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #43, !dbg !3098
  call void @llvm.dbg.value(metadata ptr %52, metadata !2837, metadata !DIExpression()), !dbg !3099
  %53 = icmp eq ptr %52, null, !dbg !3101
  br i1 %53, label %54, label %55, !dbg !3102

54:                                               ; preds = %48
  tail call void @xalloc_die() #38, !dbg !3103
  unreachable, !dbg !3103

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !681, metadata !DIExpression()), !dbg !3063
  store i64 %49, ptr %1, align 8, !dbg !3104, !tbaa !2081
  ret ptr %52, !dbg !3105
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3106 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3108, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 %0, metadata !3110, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 1, metadata !3113, metadata !DIExpression()), !dbg !3114
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3116
  call void @llvm.dbg.value(metadata ptr %2, metadata !2837, metadata !DIExpression()), !dbg !3117
  %3 = icmp eq ptr %2, null, !dbg !3119
  br i1 %3, label %4, label %5, !dbg !3120

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3121
  unreachable, !dbg !3121

5:                                                ; preds = %1
  ret ptr %2, !dbg !3122
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3123 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3111 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3110, metadata !DIExpression()), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3113, metadata !DIExpression()), !dbg !3124
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3125
  call void @llvm.dbg.value(metadata ptr %3, metadata !2837, metadata !DIExpression()), !dbg !3126
  %4 = icmp eq ptr %3, null, !dbg !3128
  br i1 %4, label %5, label %6, !dbg !3129

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3130
  unreachable, !dbg !3130

6:                                                ; preds = %2
  ret ptr %3, !dbg !3131
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3132 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3134, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i64 %0, metadata !3136, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 1, metadata !3139, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %0, metadata !3142, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i64 1, metadata !3145, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i64 %0, metadata !3142, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i64 1, metadata !3145, metadata !DIExpression()), !dbg !3146
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3148
  call void @llvm.dbg.value(metadata ptr %2, metadata !2837, metadata !DIExpression()), !dbg !3149
  %3 = icmp eq ptr %2, null, !dbg !3151
  br i1 %3, label %4, label %5, !dbg !3152

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3153
  unreachable, !dbg !3153

5:                                                ; preds = %1
  ret ptr %2, !dbg !3154
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3137 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3136, metadata !DIExpression()), !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3139, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 %0, metadata !3142, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %1, metadata !3145, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %0, metadata !3142, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %1, metadata !3145, metadata !DIExpression()), !dbg !3156
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3158
  call void @llvm.dbg.value(metadata ptr %3, metadata !2837, metadata !DIExpression()), !dbg !3159
  %4 = icmp eq ptr %3, null, !dbg !3161
  br i1 %4, label %5, label %6, !dbg !3162

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3163
  unreachable, !dbg !3163

6:                                                ; preds = %2
  ret ptr %3, !dbg !3164
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3165 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3169, metadata !DIExpression()), !dbg !3171
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3170, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i64 %1, metadata !2861, metadata !DIExpression()), !dbg !3172
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3174
  call void @llvm.dbg.value(metadata ptr %3, metadata !2837, metadata !DIExpression()), !dbg !3175
  %4 = icmp eq ptr %3, null, !dbg !3177
  br i1 %4, label %5, label %6, !dbg !3178

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3179
  unreachable, !dbg !3179

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3180, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata ptr %0, metadata !3186, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i64 %1, metadata !3187, metadata !DIExpression()), !dbg !3188
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3190
  ret ptr %3, !dbg !3191
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3192 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3196, metadata !DIExpression()), !dbg !3198
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3197, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %1, metadata !2875, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 %1, metadata !2877, metadata !DIExpression()), !dbg !3201
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3203
  call void @llvm.dbg.value(metadata ptr %3, metadata !2837, metadata !DIExpression()), !dbg !3204
  %4 = icmp eq ptr %3, null, !dbg !3206
  br i1 %4, label %5, label %6, !dbg !3207

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3208
  unreachable, !dbg !3208

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3180, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata ptr %0, metadata !3186, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %1, metadata !3187, metadata !DIExpression()), !dbg !3209
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3211
  ret ptr %3, !dbg !3212
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3213 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3217, metadata !DIExpression()), !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3218, metadata !DIExpression()), !dbg !3220
  %3 = add nsw i64 %1, 1, !dbg !3221
  call void @llvm.dbg.value(metadata i64 %3, metadata !2875, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i64 %3, metadata !2877, metadata !DIExpression()), !dbg !3224
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3226
  call void @llvm.dbg.value(metadata ptr %4, metadata !2837, metadata !DIExpression()), !dbg !3227
  %5 = icmp eq ptr %4, null, !dbg !3229
  br i1 %5, label %6, label %7, !dbg !3230

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3231
  unreachable, !dbg !3231

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3219, metadata !DIExpression()), !dbg !3220
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3232
  store i8 0, ptr %8, align 1, !dbg !3233, !tbaa !755
  call void @llvm.dbg.value(metadata ptr %4, metadata !3180, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata ptr %0, metadata !3186, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 %1, metadata !3187, metadata !DIExpression()), !dbg !3234
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3236
  ret ptr %4, !dbg !3237
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3238 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3240, metadata !DIExpression()), !dbg !3241
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3242
  %3 = add i64 %2, 1, !dbg !3243
  call void @llvm.dbg.value(metadata ptr %0, metadata !3169, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %3, metadata !3170, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %3, metadata !2861, metadata !DIExpression()), !dbg !3246
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3248
  call void @llvm.dbg.value(metadata ptr %4, metadata !2837, metadata !DIExpression()), !dbg !3249
  %5 = icmp eq ptr %4, null, !dbg !3251
  br i1 %5, label %6, label %7, !dbg !3252

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3253
  unreachable, !dbg !3253

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3180, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata ptr %0, metadata !3186, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %3, metadata !3187, metadata !DIExpression()), !dbg !3254
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3256
  ret ptr %4, !dbg !3257
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3258 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3263, !tbaa !746
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3260, metadata !DIExpression()), !dbg !3264
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.101, ptr noundef nonnull @.str.2.102, i32 noundef 5) #37, !dbg !3263
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.103, ptr noundef %2) #37, !dbg !3263
  %3 = icmp eq i32 %1, 0, !dbg !3263
  tail call void @llvm.assume(i1 %3), !dbg !3263
  tail call void @abort() #38, !dbg !3265
  unreachable, !dbg !3265
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3266 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3304, metadata !DIExpression()), !dbg !3309
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3310
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3305, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3309
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3311, metadata !DIExpression()), !dbg !3314
  %3 = load i32, ptr %0, align 8, !dbg !3316, !tbaa !3317
  %4 = and i32 %3, 32, !dbg !3318
  %5 = icmp eq i32 %4, 0, !dbg !3318
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3307, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3309
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3319
  %7 = icmp eq i32 %6, 0, !dbg !3320
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3308, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3309
  br i1 %5, label %8, label %18, !dbg !3321

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3323
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3305, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3309
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3324
  %11 = xor i1 %7, true, !dbg !3324
  %12 = sext i1 %11 to i32, !dbg !3324
  br i1 %10, label %21, label %13, !dbg !3324

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3325
  %15 = load i32, ptr %14, align 4, !dbg !3325, !tbaa !746
  %16 = icmp ne i32 %15, 9, !dbg !3326
  %17 = sext i1 %16 to i32, !dbg !3327
  br label %21, !dbg !3327

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3328

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3330
  store i32 0, ptr %20, align 4, !dbg !3332, !tbaa !746
  br label %21, !dbg !3330

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3309
  ret i32 %22, !dbg !3333
}

; Function Attrs: nounwind
declare !dbg !3334 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3338 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3376, metadata !DIExpression()), !dbg !3380
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3377, metadata !DIExpression()), !dbg !3380
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3381
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3378, metadata !DIExpression()), !dbg !3380
  %3 = icmp slt i32 %2, 0, !dbg !3382
  br i1 %3, label %4, label %6, !dbg !3384

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3385
  br label %24, !dbg !3386

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3387
  %8 = icmp eq i32 %7, 0, !dbg !3387
  br i1 %8, label %13, label %9, !dbg !3389

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3390
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3391
  %12 = icmp eq i64 %11, -1, !dbg !3392
  br i1 %12, label %16, label %13, !dbg !3393

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3394
  %15 = icmp eq i32 %14, 0, !dbg !3394
  br i1 %15, label %16, label %18, !dbg !3395

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3377, metadata !DIExpression()), !dbg !3380
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3379, metadata !DIExpression()), !dbg !3380
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3396
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3379, metadata !DIExpression()), !dbg !3380
  br label %24, !dbg !3397

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3398
  %20 = load i32, ptr %19, align 4, !dbg !3398, !tbaa !746
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3377, metadata !DIExpression()), !dbg !3380
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3379, metadata !DIExpression()), !dbg !3380
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3396
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3379, metadata !DIExpression()), !dbg !3380
  %22 = icmp eq i32 %20, 0, !dbg !3399
  br i1 %22, label %24, label %23, !dbg !3397

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3401, !tbaa !746
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3379, metadata !DIExpression()), !dbg !3380
  br label %24, !dbg !3403

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3380
  ret i32 %25, !dbg !3404
}

; Function Attrs: nofree nounwind
declare !dbg !3405 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !3406 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3407 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3408 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3411 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3449, metadata !DIExpression()), !dbg !3450
  %2 = icmp eq ptr %0, null, !dbg !3451
  br i1 %2, label %6, label %3, !dbg !3453

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3454
  %5 = icmp eq i32 %4, 0, !dbg !3454
  br i1 %5, label %6, label %8, !dbg !3455

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3456
  br label %16, !dbg !3457

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3458, metadata !DIExpression()), !dbg !3463
  %9 = load i32, ptr %0, align 8, !dbg !3465, !tbaa !3317
  %10 = and i32 %9, 256, !dbg !3467
  %11 = icmp eq i32 %10, 0, !dbg !3467
  br i1 %11, label %14, label %12, !dbg !3468

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3469
  br label %14, !dbg !3469

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3470
  br label %16, !dbg !3471

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3450
  ret i32 %17, !dbg !3472
}

; Function Attrs: nofree nounwind
declare !dbg !3473 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3474 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3513, metadata !DIExpression()), !dbg !3519
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3514, metadata !DIExpression()), !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3515, metadata !DIExpression()), !dbg !3519
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3520
  %5 = load ptr, ptr %4, align 8, !dbg !3520, !tbaa !3521
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3522
  %7 = load ptr, ptr %6, align 8, !dbg !3522, !tbaa !3523
  %8 = icmp eq ptr %5, %7, !dbg !3524
  br i1 %8, label %9, label %27, !dbg !3525

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3526
  %11 = load ptr, ptr %10, align 8, !dbg !3526, !tbaa !1163
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3527
  %13 = load ptr, ptr %12, align 8, !dbg !3527, !tbaa !3528
  %14 = icmp eq ptr %11, %13, !dbg !3529
  br i1 %14, label %15, label %27, !dbg !3530

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3531
  %17 = load ptr, ptr %16, align 8, !dbg !3531, !tbaa !3532
  %18 = icmp eq ptr %17, null, !dbg !3533
  br i1 %18, label %19, label %27, !dbg !3534

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3535
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3536
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3516, metadata !DIExpression()), !dbg !3537
  %22 = icmp eq i64 %21, -1, !dbg !3538
  br i1 %22, label %29, label %23, !dbg !3540

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3541, !tbaa !3317
  %25 = and i32 %24, -17, !dbg !3541
  store i32 %25, ptr %0, align 8, !dbg !3541, !tbaa !3317
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3542
  store i64 %21, ptr %26, align 8, !dbg !3543, !tbaa !3544
  br label %29, !dbg !3545

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3546
  br label %29, !dbg !3547

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3519
  ret i32 %30, !dbg !3548
}

; Function Attrs: nofree nounwind
declare !dbg !3549 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3552 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3557, metadata !DIExpression()), !dbg !3562
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3558, metadata !DIExpression()), !dbg !3562
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3559, metadata !DIExpression()), !dbg !3562
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3560, metadata !DIExpression()), !dbg !3562
  %5 = icmp eq ptr %1, null, !dbg !3563
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3565
  %7 = select i1 %5, ptr @.str.114, ptr %1, !dbg !3565
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3565
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3559, metadata !DIExpression()), !dbg !3562
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3558, metadata !DIExpression()), !dbg !3562
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3557, metadata !DIExpression()), !dbg !3562
  %9 = icmp eq ptr %3, null, !dbg !3566
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3568
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3560, metadata !DIExpression()), !dbg !3562
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3569
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3561, metadata !DIExpression()), !dbg !3562
  %12 = icmp ult i64 %11, -3, !dbg !3570
  br i1 %12, label %13, label %17, !dbg !3572

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #39, !dbg !3573
  %15 = icmp eq i32 %14, 0, !dbg !3573
  br i1 %15, label %16, label %29, !dbg !3574

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3575, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata ptr %10, metadata !3582, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 0, metadata !3585, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i64 8, metadata !3586, metadata !DIExpression()), !dbg !3587
  store i64 0, ptr %10, align 1, !dbg !3589
  br label %29, !dbg !3590

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3591
  br i1 %18, label %19, label %20, !dbg !3593

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3594
  unreachable, !dbg !3594

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3595

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !3597
  br i1 %23, label %29, label %24, !dbg !3598

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3599
  br i1 %25, label %29, label %26, !dbg !3602

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3603, !tbaa !755
  %28 = zext i8 %27 to i32, !dbg !3604
  store i32 %28, ptr %6, align 4, !dbg !3605, !tbaa !746
  br label %29, !dbg !3606

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3562
  ret i64 %30, !dbg !3607
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3608 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3614 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3616, metadata !DIExpression()), !dbg !3620
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3617, metadata !DIExpression()), !dbg !3620
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3618, metadata !DIExpression()), !dbg !3620
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3621
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3621
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3619, metadata !DIExpression()), !dbg !3620
  br i1 %5, label %6, label %8, !dbg !3623

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3624
  store i32 12, ptr %7, align 4, !dbg !3626, !tbaa !746
  br label %12, !dbg !3627

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3621
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3619, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata ptr %0, metadata !3628, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 %9, metadata !3631, metadata !DIExpression()), !dbg !3632
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3634
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3635
  br label %12, !dbg !3636

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3620
  ret ptr %13, !dbg !3637
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3638 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !3647
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3643, metadata !DIExpression(), metadata !3647, metadata ptr %2, metadata !DIExpression()), !dbg !3648
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3642, metadata !DIExpression()), !dbg !3648
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3649
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3650
  %4 = icmp eq i32 %3, 0, !dbg !3650
  br i1 %4, label %5, label %12, !dbg !3652

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3653, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata ptr @.str.119, metadata !3656, metadata !DIExpression()), !dbg !3657
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.119, i64 2), !dbg !3660
  %7 = icmp eq i32 %6, 0, !dbg !3661
  br i1 %7, label %11, label %8, !dbg !3662

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3653, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr @.str.1.120, metadata !3656, metadata !DIExpression()), !dbg !3663
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.120, i64 6), !dbg !3665
  %10 = icmp eq i32 %9, 0, !dbg !3666
  br i1 %10, label %11, label %12, !dbg !3667

11:                                               ; preds = %8, %5
  br label %12, !dbg !3668

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3648
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3669
  ret i1 %13, !dbg !3669
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3670 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3674, metadata !DIExpression()), !dbg !3677
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3675, metadata !DIExpression()), !dbg !3677
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3676, metadata !DIExpression()), !dbg !3677
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3678
  ret i32 %4, !dbg !3679
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3680 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3684, metadata !DIExpression()), !dbg !3685
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3686
  ret ptr %2, !dbg !3687
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3688 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3690, metadata !DIExpression()), !dbg !3692
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3693
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3691, metadata !DIExpression()), !dbg !3692
  ret ptr %2, !dbg !3694
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3695 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3697, metadata !DIExpression()), !dbg !3704
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3698, metadata !DIExpression()), !dbg !3704
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3699, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 %0, metadata !3690, metadata !DIExpression()), !dbg !3705
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3707
  call void @llvm.dbg.value(metadata ptr %4, metadata !3691, metadata !DIExpression()), !dbg !3705
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3700, metadata !DIExpression()), !dbg !3704
  %5 = icmp eq ptr %4, null, !dbg !3708
  br i1 %5, label %6, label %9, !dbg !3709

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3710
  br i1 %7, label %19, label %8, !dbg !3713

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3714, !tbaa !755
  br label %19, !dbg !3715

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !3716
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3701, metadata !DIExpression()), !dbg !3717
  %11 = icmp ult i64 %10, %2, !dbg !3718
  br i1 %11, label %12, label %14, !dbg !3720

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3721
  call void @llvm.dbg.value(metadata ptr %1, metadata !3723, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata ptr %4, metadata !3726, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata i64 %13, metadata !3727, metadata !DIExpression()), !dbg !3728
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !3730
  br label %19, !dbg !3731

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3732
  br i1 %15, label %19, label %16, !dbg !3735

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3736
  call void @llvm.dbg.value(metadata ptr %1, metadata !3723, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata ptr %4, metadata !3726, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 %17, metadata !3727, metadata !DIExpression()), !dbg !3738
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3740
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3741
  store i8 0, ptr %18, align 1, !dbg !3742, !tbaa !755
  br label %19, !dbg !3743

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3744
  ret i32 %20, !dbg !3745
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

!llvm.dbg.cu = !{!77, !294, !298, !313, !613, !647, !369, !383, !431, !649, !605, !656, !691, !693, !695, !697, !699, !629, !701, !703, !705, !707}
!llvm.ident = !{!709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709, !709}
!llvm.module.flags = !{!710, !711, !712, !713, !714, !715, !716, !717}

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
!77 = distinct !DICompileUnit(language: DW_LANG_C11, file: !78, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/false.o -MD -MP -MF src/.deps/false.Tpo -c src/false.c -o src/.false.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !79, retainedTypes: !96, globals: !105, splitDebugInlining: false, nameTableKind: None)
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
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 18, baseType: !103)
!102 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
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
!294 = distinct !DICompileUnit(language: DW_LANG_C11, file: !291, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !295, splitDebugInlining: false, nameTableKind: None)
!295 = !{!289, !292}
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "file_name", scope: !298, file: !299, line: 45, type: !75, isLocal: true, isDefinition: true)
!298 = distinct !DICompileUnit(language: DW_LANG_C11, file: !299, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !300, splitDebugInlining: false, nameTableKind: None)
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
!312 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !313, file: !314, line: 66, type: !364, isLocal: false, isDefinition: true)
!313 = distinct !DICompileUnit(language: DW_LANG_C11, file: !314, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !315, globals: !316, splitDebugInlining: false, nameTableKind: None)
!314 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!315 = !{!98, !104}
!316 = !{!317, !319, !343, !345, !347, !349, !311, !351, !353, !355, !357, !362}
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !314, line: 272, type: !9, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "old_file_name", scope: !321, file: !314, line: 304, type: !75, isLocal: true, isDefinition: true)
!321 = distinct !DISubprogram(name: "verror_at_line", scope: !314, file: !314, line: 298, type: !322, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !336)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !99, !99, !75, !82, !75, !324}
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !325, line: 52, baseType: !326)
!325 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !327, line: 12, baseType: !328)
!327 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !314, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !330)
!330 = !{!331, !332, !333, !334, !335}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !329, file: !314, baseType: !98, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !329, file: !314, baseType: !98, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !329, file: !314, baseType: !98, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !329, file: !314, baseType: !99, size: 32, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !329, file: !314, baseType: !99, size: 32, offset: 224)
!336 = !{!337, !338, !339, !340, !341, !342}
!337 = !DILocalVariable(name: "status", arg: 1, scope: !321, file: !314, line: 298, type: !99)
!338 = !DILocalVariable(name: "errnum", arg: 2, scope: !321, file: !314, line: 298, type: !99)
!339 = !DILocalVariable(name: "file_name", arg: 3, scope: !321, file: !314, line: 298, type: !75)
!340 = !DILocalVariable(name: "line_number", arg: 4, scope: !321, file: !314, line: 298, type: !82)
!341 = !DILocalVariable(name: "message", arg: 5, scope: !321, file: !314, line: 298, type: !75)
!342 = !DILocalVariable(name: "args", arg: 6, scope: !321, file: !314, line: 298, type: !324)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(name: "old_line_number", scope: !321, file: !314, line: 305, type: !82, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !314, line: 338, type: !112, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !314, line: 346, type: !141, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !314, line: 346, type: !119, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(name: "error_message_count", scope: !313, file: !314, line: 69, type: !82, isLocal: false, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !313, file: !314, line: 295, type: !99, isLocal: false, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !314, line: 208, type: !54, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !314, line: 208, type: !359, isLocal: true, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 21)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !314, line: 214, type: !9, isLocal: true, isDefinition: true)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null}
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "program_name", scope: !369, file: !370, line: 31, type: !75, isLocal: false, isDefinition: true)
!369 = distinct !DICompileUnit(language: DW_LANG_C11, file: !370, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !371, globals: !372, splitDebugInlining: false, nameTableKind: None)
!370 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!371 = !{!98, !97}
!372 = !{!367, !373, !375}
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !370, line: 46, type: !141, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !370, line: 49, type: !112, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "utf07FF", scope: !379, file: !380, line: 46, type: !407, isLocal: true, isDefinition: true)
!379 = distinct !DISubprogram(name: "proper_name_lite", scope: !380, file: !380, line: 38, type: !381, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !383, retainedNodes: !385)
!380 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!381 = !DISubroutineType(types: !382)
!382 = !{!75, !75, !75}
!383 = distinct !DICompileUnit(language: DW_LANG_C11, file: !380, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !384, splitDebugInlining: false, nameTableKind: None)
!384 = !{!377}
!385 = !{!386, !387, !388, !389, !394}
!386 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !379, file: !380, line: 38, type: !75)
!387 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !379, file: !380, line: 38, type: !75)
!388 = !DILocalVariable(name: "translation", scope: !379, file: !380, line: 40, type: !75)
!389 = !DILocalVariable(name: "w", scope: !379, file: !380, line: 47, type: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !391, line: 37, baseType: !392)
!391 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !258, line: 57, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !258, line: 42, baseType: !82)
!394 = !DILocalVariable(name: "mbs", scope: !379, file: !380, line: 48, type: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !396, line: 6, baseType: !397)
!396 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !398, line: 21, baseType: !399)
!398 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 13, size: 64, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !399, file: !398, line: 15, baseType: !99, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !399, file: !398, line: 20, baseType: !403, size: 32, offset: 32)
!403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !398, line: 16, size: 32, elements: !404)
!404 = !{!405, !406}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !403, file: !398, line: 18, baseType: !82, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !403, file: !398, line: 19, baseType: !112, size: 32)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 16, elements: !120)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !410, line: 78, type: !141, isLocal: true, isDefinition: true)
!410 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !410, line: 79, type: !19, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !410, line: 80, type: !66, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !410, line: 81, type: !66, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !410, line: 82, type: !280, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !410, line: 83, type: !119, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !410, line: 84, type: !141, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !410, line: 85, type: !54, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !410, line: 86, type: !54, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !410, line: 87, type: !141, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !431, file: !410, line: 76, type: !517, isLocal: false, isDefinition: true)
!431 = distinct !DICompileUnit(language: DW_LANG_C11, file: !410, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !432, retainedTypes: !452, globals: !453, splitDebugInlining: false, nameTableKind: None)
!432 = !{!433, !447, !80}
!433 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !434, line: 42, baseType: !82, size: 32, elements: !435)
!434 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
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
!447 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !434, line: 254, baseType: !82, size: 32, elements: !448)
!448 = !{!449, !450, !451}
!449 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!450 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!451 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!452 = !{!98, !99, !100, !101}
!453 = !{!408, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !454, !458, !468, !470, !475, !477, !479, !481, !483, !506, !513, !515}
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !431, file: !410, line: 92, type: !456, isLocal: false, isDefinition: true)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 320, elements: !45)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !431, file: !410, line: 1040, type: !460, isLocal: false, isDefinition: true)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !410, line: 56, size: 448, elements: !461)
!461 = !{!462, !463, !464, !466, !467}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !460, file: !410, line: 59, baseType: !433, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !460, file: !410, line: 62, baseType: !99, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !460, file: !410, line: 66, baseType: !465, size: 256, offset: 64)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 256, elements: !142)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !460, file: !410, line: 69, baseType: !75, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !460, file: !410, line: 72, baseType: !75, size: 64, offset: 384)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !431, file: !410, line: 107, type: !460, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(name: "slot0", scope: !431, file: !410, line: 831, type: !472, isLocal: true, isDefinition: true)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 256)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !410, line: 321, type: !119, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !410, line: 357, type: !119, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !410, line: 358, type: !119, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !410, line: 199, type: !54, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "quote", scope: !485, file: !410, line: 228, type: !504, isLocal: true, isDefinition: true)
!485 = distinct !DISubprogram(name: "gettext_quote", scope: !410, file: !410, line: 197, type: !486, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{!75, !75, !433}
!488 = !{!489, !490, !491, !492, !493}
!489 = !DILocalVariable(name: "msgid", arg: 1, scope: !485, file: !410, line: 197, type: !75)
!490 = !DILocalVariable(name: "s", arg: 2, scope: !485, file: !410, line: 197, type: !433)
!491 = !DILocalVariable(name: "translation", scope: !485, file: !410, line: 199, type: !75)
!492 = !DILocalVariable(name: "w", scope: !485, file: !410, line: 229, type: !390)
!493 = !DILocalVariable(name: "mbs", scope: !485, file: !410, line: 230, type: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !396, line: 6, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !398, line: 21, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 13, size: 64, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !496, file: !398, line: 15, baseType: !99, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !496, file: !398, line: 20, baseType: !500, size: 32, offset: 32)
!500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !496, file: !398, line: 16, size: 32, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !500, file: !398, line: 18, baseType: !82, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !500, file: !398, line: 19, baseType: !112, size: 32)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 64, elements: !505)
!505 = !{!121, !114}
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(name: "slotvec", scope: !431, file: !410, line: 834, type: !508, isLocal: true, isDefinition: true)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !410, line: 823, size: 128, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !509, file: !410, line: 825, baseType: !101, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !509, file: !410, line: 826, baseType: !97, size: 64, offset: 64)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "nslots", scope: !431, file: !410, line: 832, type: !99, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(name: "slotvec0", scope: !431, file: !410, line: 833, type: !509, isLocal: true, isDefinition: true)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 704, elements: !519)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!519 = !{!520}
!520 = !DISubrange(count: 11)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !523, line: 67, type: !208, isLocal: true, isDefinition: true)
!523 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !523, line: 69, type: !54, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !523, line: 83, type: !54, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !523, line: 83, type: !112, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !523, line: 85, type: !119, isLocal: true, isDefinition: true)
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
!543 = distinct !DIGlobalVariable(scope: null, file: !523, line: 105, type: !179, isLocal: true, isDefinition: true)
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
!565 = distinct !DIGlobalVariable(scope: null, file: !523, line: 134, type: !159, isLocal: true, isDefinition: true)
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
!584 = distinct !DIGlobalVariable(scope: null, file: !523, line: 248, type: !280, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !523, line: 248, type: !184, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !523, line: 254, type: !280, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !523, line: 254, type: !61, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !523, line: 254, type: !159, isLocal: true, isDefinition: true)
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
!605 = distinct !DICompileUnit(language: DW_LANG_C11, file: !606, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !607, splitDebugInlining: false, nameTableKind: None)
!606 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!607 = !{!603}
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 376, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 47)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(name: "exit_failure", scope: !613, file: !614, line: 24, type: !616, isLocal: false, isDefinition: true)
!613 = distinct !DICompileUnit(language: DW_LANG_C11, file: !614, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !615, splitDebugInlining: false, nameTableKind: None)
!614 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!615 = !{!611}
!616 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !99)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !619, line: 34, type: !128, isLocal: true, isDefinition: true)
!619 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !619, line: 34, type: !54, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !619, line: 34, type: !154, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !626, line: 108, type: !39, isLocal: true, isDefinition: true)
!626 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(name: "internal_state", scope: !629, file: !626, line: 97, type: !632, isLocal: true, isDefinition: true)
!629 = distinct !DICompileUnit(language: DW_LANG_C11, file: !626, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !630, globals: !631, splitDebugInlining: false, nameTableKind: None)
!630 = !{!98, !101, !104}
!631 = !{!624, !627}
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !396, line: 6, baseType: !633)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !398, line: 21, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 13, size: 64, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !634, file: !398, line: 15, baseType: !99, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !634, file: !398, line: 20, baseType: !638, size: 32, offset: 32)
!638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !634, file: !398, line: 16, size: 32, elements: !639)
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !638, file: !398, line: 18, baseType: !82, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !638, file: !398, line: 19, baseType: !112, size: 32)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !644, line: 35, type: !119, isLocal: true, isDefinition: true)
!644 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !644, line: 35, type: !19, isLocal: true, isDefinition: true)
!647 = distinct !DICompileUnit(language: DW_LANG_C11, file: !648, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!648 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!649 = distinct !DICompileUnit(language: DW_LANG_C11, file: !523, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !650, retainedTypes: !654, globals: !655, splitDebugInlining: false, nameTableKind: None)
!650 = !{!651}
!651 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !523, line: 40, baseType: !82, size: 32, elements: !652)
!652 = !{!653}
!653 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!654 = !{!98}
!655 = !{!521, !524, !526, !528, !530, !532, !537, !542, !544, !549, !554, !559, !564, !566, !568, !573, !578, !583, !585, !587, !589, !591, !593, !598}
!656 = distinct !DICompileUnit(language: DW_LANG_C11, file: !657, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !658, retainedTypes: !690, splitDebugInlining: false, nameTableKind: None)
!657 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!658 = !{!659, !671}
!659 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !660, file: !657, line: 188, baseType: !82, size: 32, elements: !669)
!660 = distinct !DISubprogram(name: "x2nrealloc", scope: !657, file: !657, line: 176, type: !661, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !664)
!661 = !DISubroutineType(types: !662)
!662 = !{!98, !98, !663, !101}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!664 = !{!665, !666, !667, !668}
!665 = !DILocalVariable(name: "p", arg: 1, scope: !660, file: !657, line: 176, type: !98)
!666 = !DILocalVariable(name: "pn", arg: 2, scope: !660, file: !657, line: 176, type: !663)
!667 = !DILocalVariable(name: "s", arg: 3, scope: !660, file: !657, line: 176, type: !101)
!668 = !DILocalVariable(name: "n", scope: !660, file: !657, line: 178, type: !101)
!669 = !{!670}
!670 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!671 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !672, file: !657, line: 228, baseType: !82, size: 32, elements: !669)
!672 = distinct !DISubprogram(name: "xpalloc", scope: !657, file: !657, line: 223, type: !673, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !680)
!673 = !DISubroutineType(types: !674)
!674 = !{!98, !98, !675, !676, !678, !676}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !677, line: 130, baseType: !678)
!677 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !679, line: 18, baseType: !259)
!679 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !689}
!681 = !DILocalVariable(name: "pa", arg: 1, scope: !672, file: !657, line: 223, type: !98)
!682 = !DILocalVariable(name: "pn", arg: 2, scope: !672, file: !657, line: 223, type: !675)
!683 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !672, file: !657, line: 223, type: !676)
!684 = !DILocalVariable(name: "n_max", arg: 4, scope: !672, file: !657, line: 223, type: !678)
!685 = !DILocalVariable(name: "s", arg: 5, scope: !672, file: !657, line: 223, type: !676)
!686 = !DILocalVariable(name: "n0", scope: !672, file: !657, line: 230, type: !676)
!687 = !DILocalVariable(name: "n", scope: !672, file: !657, line: 237, type: !676)
!688 = !DILocalVariable(name: "nbytes", scope: !672, file: !657, line: 248, type: !676)
!689 = !DILocalVariable(name: "adjusted_nbytes", scope: !672, file: !657, line: 252, type: !676)
!690 = !{!97, !98}
!691 = distinct !DICompileUnit(language: DW_LANG_C11, file: !619, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !692, splitDebugInlining: false, nameTableKind: None)
!692 = !{!617, !620, !622}
!693 = distinct !DICompileUnit(language: DW_LANG_C11, file: !694, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!694 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!695 = distinct !DICompileUnit(language: DW_LANG_C11, file: !696, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!696 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!697 = distinct !DICompileUnit(language: DW_LANG_C11, file: !698, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !654, splitDebugInlining: false, nameTableKind: None)
!698 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!699 = distinct !DICompileUnit(language: DW_LANG_C11, file: !700, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !654, splitDebugInlining: false, nameTableKind: None)
!700 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!701 = distinct !DICompileUnit(language: DW_LANG_C11, file: !702, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !654, splitDebugInlining: false, nameTableKind: None)
!702 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!703 = distinct !DICompileUnit(language: DW_LANG_C11, file: !644, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !704, splitDebugInlining: false, nameTableKind: None)
!704 = !{!642, !645}
!705 = distinct !DICompileUnit(language: DW_LANG_C11, file: !706, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!706 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!707 = distinct !DICompileUnit(language: DW_LANG_C11, file: !708, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !654, splitDebugInlining: false, nameTableKind: None)
!708 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!709 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!710 = !{i32 7, !"Dwarf Version", i32 5}
!711 = !{i32 2, !"Debug Info Version", i32 3}
!712 = !{i32 1, !"wchar_size", i32 4}
!713 = !{i32 8, !"PIC Level", i32 2}
!714 = !{i32 7, !"PIE Level", i32 2}
!715 = !{i32 7, !"uwtable", i32 2}
!716 = !{i32 7, !"frame-pointer", i32 1}
!717 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
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
!735 = !DISubprogram(name: "dcgettext", scope: !736, file: !736, line: 51, type: !737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!736 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!737 = !DISubroutineType(types: !738)
!738 = !{!97, !75, !75, !99}
!739 = !DISubprogram(name: "__printf_chk", scope: !740, file: !740, line: 95, type: !741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!740 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!741 = !DISubroutineType(types: !742)
!742 = !{!99, !99, !743, null}
!743 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!744 = !DILocation(line: 0, scope: !71)
!745 = !DILocation(line: 581, column: 7, scope: !216)
!746 = !{!747, !747, i64 0}
!747 = !{!"int", !727, i64 0}
!748 = !DILocation(line: 581, column: 19, scope: !216)
!749 = !DILocation(line: 581, column: 7, scope: !71)
!750 = !DILocation(line: 585, column: 26, scope: !215)
!751 = !DILocation(line: 0, scope: !215)
!752 = !DILocation(line: 586, column: 23, scope: !215)
!753 = !DILocation(line: 586, column: 28, scope: !215)
!754 = !DILocation(line: 586, column: 32, scope: !215)
!755 = !{!727, !727, i64 0}
!756 = !DILocation(line: 586, column: 38, scope: !215)
!757 = !DILocalVariable(name: "__s1", arg: 1, scope: !758, file: !759, line: 1359, type: !75)
!758 = distinct !DISubprogram(name: "streq", scope: !759, file: !759, line: 1359, type: !760, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !762)
!759 = !DIFile(filename: "./lib/string.h", directory: "/src")
!760 = !DISubroutineType(types: !761)
!761 = !{!218, !75, !75}
!762 = !{!757, !763}
!763 = !DILocalVariable(name: "__s2", arg: 2, scope: !758, file: !759, line: 1359, type: !75)
!764 = !DILocation(line: 0, scope: !758, inlinedAt: !765)
!765 = distinct !DILocation(line: 586, column: 41, scope: !215)
!766 = !DILocation(line: 1361, column: 11, scope: !758, inlinedAt: !765)
!767 = !DILocation(line: 1361, column: 10, scope: !758, inlinedAt: !765)
!768 = !DILocation(line: 586, column: 19, scope: !215)
!769 = !DILocation(line: 587, column: 5, scope: !215)
!770 = !DILocation(line: 588, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !71, file: !72, line: 588, column: 7)
!772 = !DILocation(line: 588, column: 7, scope: !71)
!773 = !DILocation(line: 590, column: 7, scope: !774)
!774 = distinct !DILexicalBlock(scope: !771, file: !72, line: 589, column: 5)
!775 = !DILocation(line: 591, column: 7, scope: !774)
!776 = !DILocation(line: 595, column: 37, scope: !71)
!777 = !DILocation(line: 595, column: 35, scope: !71)
!778 = !DILocation(line: 596, column: 29, scope: !71)
!779 = !DILocation(line: 597, column: 8, scope: !224)
!780 = !DILocation(line: 597, column: 7, scope: !71)
!781 = !DILocation(line: 604, column: 24, scope: !223)
!782 = !DILocation(line: 604, column: 12, scope: !224)
!783 = !DILocation(line: 0, scope: !222)
!784 = !DILocation(line: 610, column: 16, scope: !222)
!785 = !DILocation(line: 610, column: 7, scope: !222)
!786 = !DILocation(line: 611, column: 21, scope: !222)
!787 = !{!788, !788, i64 0}
!788 = !{!"short", !727, i64 0}
!789 = !DILocation(line: 611, column: 19, scope: !222)
!790 = !DILocation(line: 611, column: 16, scope: !222)
!791 = !DILocation(line: 610, column: 30, scope: !222)
!792 = distinct !{!792, !785, !786, !793}
!793 = !{!"llvm.loop.mustprogress"}
!794 = !DILocation(line: 612, column: 18, scope: !795)
!795 = distinct !DILexicalBlock(scope: !222, file: !72, line: 612, column: 11)
!796 = !DILocation(line: 612, column: 11, scope: !222)
!797 = !DILocation(line: 620, column: 23, scope: !71)
!798 = !DILocation(line: 625, column: 39, scope: !71)
!799 = !DILocation(line: 626, column: 3, scope: !71)
!800 = !DILocation(line: 626, column: 10, scope: !71)
!801 = !DILocation(line: 626, column: 21, scope: !71)
!802 = !DILocation(line: 628, column: 44, scope: !803)
!803 = distinct !DILexicalBlock(scope: !804, file: !72, line: 628, column: 11)
!804 = distinct !DILexicalBlock(scope: !71, file: !72, line: 627, column: 5)
!805 = !DILocation(line: 628, column: 32, scope: !803)
!806 = !DILocation(line: 628, column: 49, scope: !803)
!807 = !DILocation(line: 628, column: 11, scope: !804)
!808 = !DILocation(line: 630, column: 11, scope: !809)
!809 = distinct !DILexicalBlock(scope: !804, file: !72, line: 630, column: 11)
!810 = !DILocation(line: 630, column: 11, scope: !804)
!811 = !DILocation(line: 632, column: 26, scope: !812)
!812 = distinct !DILexicalBlock(scope: !813, file: !72, line: 632, column: 15)
!813 = distinct !DILexicalBlock(scope: !809, file: !72, line: 631, column: 9)
!814 = !DILocation(line: 632, column: 34, scope: !812)
!815 = !DILocation(line: 632, column: 37, scope: !812)
!816 = !DILocation(line: 632, column: 15, scope: !813)
!817 = !DILocation(line: 640, column: 16, scope: !804)
!818 = distinct !{!818, !799, !819, !793}
!819 = !DILocation(line: 641, column: 5, scope: !71)
!820 = !DILocation(line: 644, column: 3, scope: !71)
!821 = !DILocation(line: 0, scope: !758, inlinedAt: !822)
!822 = distinct !DILocation(line: 648, column: 31, scope: !71)
!823 = !{}
!824 = !DILocation(line: 0, scope: !758, inlinedAt: !825)
!825 = distinct !DILocation(line: 649, column: 31, scope: !71)
!826 = !DILocation(line: 0, scope: !758, inlinedAt: !827)
!827 = distinct !DILocation(line: 650, column: 31, scope: !71)
!828 = !DILocation(line: 0, scope: !758, inlinedAt: !829)
!829 = distinct !DILocation(line: 651, column: 31, scope: !71)
!830 = !DILocation(line: 0, scope: !758, inlinedAt: !831)
!831 = distinct !DILocation(line: 652, column: 31, scope: !71)
!832 = !DILocation(line: 0, scope: !758, inlinedAt: !833)
!833 = distinct !DILocation(line: 653, column: 31, scope: !71)
!834 = !DILocation(line: 0, scope: !758, inlinedAt: !835)
!835 = distinct !DILocation(line: 654, column: 31, scope: !71)
!836 = !DILocation(line: 0, scope: !758, inlinedAt: !837)
!837 = distinct !DILocation(line: 655, column: 31, scope: !71)
!838 = !DILocation(line: 0, scope: !758, inlinedAt: !839)
!839 = distinct !DILocation(line: 656, column: 31, scope: !71)
!840 = !DILocation(line: 0, scope: !758, inlinedAt: !841)
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
!890 = !DISubprogram(name: "exit", scope: !891, file: !891, line: 624, type: !719, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!891 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!892 = !DISubprogram(name: "setlocale", scope: !893, file: !893, line: 122, type: !894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!893 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!894 = !DISubroutineType(types: !895)
!895 = !{!97, !99, !75}
!896 = !DISubprogram(name: "strncmp", scope: !897, file: !897, line: 159, type: !898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!897 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!898 = !DISubroutineType(types: !899)
!899 = !{!99, !75, !75, !101}
!900 = !DISubprogram(name: "fputs_unlocked", scope: !325, file: !325, line: 691, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!901 = !DISubroutineType(types: !902)
!902 = !{!99, !743, !903}
!903 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !231)
!904 = !DISubprogram(name: "getenv", scope: !891, file: !891, line: 641, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!905 = !DISubroutineType(types: !906)
!906 = !{!97, !75}
!907 = !DISubprogram(name: "strcmp", scope: !897, file: !897, line: 156, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!908 = !DISubroutineType(types: !909)
!909 = !{!99, !75, !75}
!910 = !DISubprogram(name: "strspn", scope: !897, file: !897, line: 297, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!911 = !DISubroutineType(types: !912)
!912 = !{!103, !75, !75}
!913 = !DISubprogram(name: "strchr", scope: !897, file: !897, line: 246, type: !914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!914 = !DISubroutineType(types: !915)
!915 = !{!97, !75, !99}
!916 = !DISubprogram(name: "__ctype_b_loc", scope: !81, file: !81, line: 79, type: !917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!917 = !DISubroutineType(types: !918)
!918 = !{!919}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!922 = !DISubprogram(name: "strcspn", scope: !897, file: !897, line: 293, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!923 = !DISubprogram(name: "fwrite_unlocked", scope: !325, file: !325, line: 704, type: !924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!949 = !DILocation(line: 0, scope: !758, inlinedAt: !950)
!950 = distinct !DILocation(line: 71, column: 11, scope: !948)
!951 = !DILocation(line: 1361, column: 11, scope: !758, inlinedAt: !950)
!952 = !DILocation(line: 1361, column: 10, scope: !758, inlinedAt: !950)
!953 = !DILocation(line: 71, column: 11, scope: !941)
!954 = !DILocation(line: 72, column: 9, scope: !948)
!955 = !DILocation(line: 0, scope: !758, inlinedAt: !956)
!956 = distinct !DILocation(line: 74, column: 11, scope: !957)
!957 = distinct !DILexicalBlock(scope: !941, file: !2, line: 74, column: 11)
!958 = !DILocation(line: 1361, column: 11, scope: !758, inlinedAt: !956)
!959 = !DILocation(line: 1361, column: 10, scope: !758, inlinedAt: !956)
!960 = !DILocation(line: 74, column: 11, scope: !941)
!961 = !DILocation(line: 75, column: 22, scope: !957)
!962 = !DILocation(line: 75, column: 58, scope: !957)
!963 = !DILocation(line: 75, column: 67, scope: !957)
!964 = !DILocation(line: 75, column: 9, scope: !957)
!965 = !DILocation(line: 79, column: 3, scope: !929)
!966 = !DISubprogram(name: "bindtextdomain", scope: !736, file: !736, line: 86, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!967 = !DISubroutineType(types: !968)
!968 = !{!97, !75, !75}
!969 = !DISubprogram(name: "textdomain", scope: !736, file: !736, line: 82, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!970 = !DISubprogram(name: "atexit", scope: !891, file: !891, line: 602, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!971 = !DISubroutineType(types: !972)
!972 = !{!99, !364}
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
!990 = distinct !DISubprogram(name: "close_stdout", scope: !299, file: !299, line: 116, type: !365, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !298, retainedNodes: !991)
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
!1023 = !DISubprogram(name: "__errno_location", scope: !1024, file: !1024, line: 37, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1024 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!1027}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!1028 = !DISubprogram(name: "_exit", scope: !1029, file: !1029, line: 624, type: !719, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
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
!1039 = !DILocation(line: 261, column: 3, scope: !1030)
!1040 = !DILocation(line: 265, column: 7, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1030, file: !314, line: 265, column: 7)
!1042 = !DILocation(line: 265, column: 7, scope: !1030)
!1043 = !DILocation(line: 266, column: 5, scope: !1041)
!1044 = !DILocation(line: 272, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1041, file: !314, line: 268, column: 5)
!1046 = !DILocation(line: 276, column: 3, scope: !1030)
!1047 = !{i64 0, i64 8, !725, i64 8, i64 8, !725, i64 16, i64 8, !725, i64 24, i64 4, !746, i64 28, i64 4, !746}
!1048 = !DILocation(line: 282, column: 1, scope: !1030)
!1049 = distinct !DISubprogram(name: "flush_stdout", scope: !314, file: !314, line: 163, type: !365, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1050)
!1050 = !{!1051}
!1051 = !DILocalVariable(name: "stdout_fd", scope: !1049, file: !314, line: 166, type: !99)
!1052 = !DILocation(line: 0, scope: !1049)
!1053 = !DILocalVariable(name: "fd", arg: 1, scope: !1054, file: !314, line: 145, type: !99)
!1054 = distinct !DISubprogram(name: "is_open", scope: !314, file: !314, line: 145, type: !1055, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1057)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!99, !99}
!1057 = !{!1053}
!1058 = !DILocation(line: 0, scope: !1054, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 182, column: 25, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1049, file: !314, line: 182, column: 7)
!1061 = !DILocation(line: 157, column: 15, scope: !1054, inlinedAt: !1059)
!1062 = !DILocation(line: 157, column: 12, scope: !1054, inlinedAt: !1059)
!1063 = !DILocation(line: 182, column: 7, scope: !1049)
!1064 = !DILocation(line: 184, column: 5, scope: !1060)
!1065 = !DILocation(line: 185, column: 1, scope: !1049)
!1066 = !DISubprogram(name: "__fprintf_chk", scope: !740, file: !740, line: 93, type: !1067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!99, !1069, !99, !743, null}
!1069 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !1072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1072, file: !235, line: 51, baseType: !99, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1072, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1072, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1072, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1072, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1072, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1072, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1072, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1072, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1072, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1072, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1072, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1072, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1072, file: !235, line: 70, baseType: !1088, size: 64, offset: 832)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1072, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1072, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1072, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1072, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1072, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1072, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1072, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1072, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1072, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1072, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1072, file: !235, line: 93, baseType: !1088, size: 64, offset: 1344)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1072, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1072, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1072, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1072, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!1104 = distinct !DISubprogram(name: "error_tail", scope: !314, file: !314, line: 219, type: !1031, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1105)
!1105 = !{!1106, !1107, !1108, !1109}
!1106 = !DILocalVariable(name: "status", arg: 1, scope: !1104, file: !314, line: 219, type: !99)
!1107 = !DILocalVariable(name: "errnum", arg: 2, scope: !1104, file: !314, line: 219, type: !99)
!1108 = !DILocalVariable(name: "message", arg: 3, scope: !1104, file: !314, line: 219, type: !75)
!1109 = !DILocalVariable(name: "args", arg: 4, scope: !1104, file: !314, line: 219, type: !324)
!1110 = distinct !DIAssignID()
!1111 = !DILocation(line: 0, scope: !1104)
!1112 = !DILocation(line: 229, column: 13, scope: !1104)
!1113 = !DILocation(line: 135, column: 10, scope: !1114, inlinedAt: !1121)
!1114 = distinct !DISubprogram(name: "vfprintf", scope: !740, file: !740, line: 132, type: !1115, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1117)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!99, !1069, !743, !326}
!1117 = !{!1118, !1119, !1120}
!1118 = !DILocalVariable(name: "__stream", arg: 1, scope: !1114, file: !740, line: 132, type: !1069)
!1119 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1114, file: !740, line: 133, type: !743)
!1120 = !DILocalVariable(name: "__ap", arg: 3, scope: !1114, file: !740, line: 133, type: !326)
!1121 = distinct !DILocation(line: 229, column: 3, scope: !1104)
!1122 = !{!1123, !1125}
!1123 = distinct !{!1123, !1124, !"vfprintf.inline: argument 0"}
!1124 = distinct !{!1124, !"vfprintf.inline"}
!1125 = distinct !{!1125, !1124, !"vfprintf.inline: argument 1"}
!1126 = !DILocation(line: 229, column: 3, scope: !1104)
!1127 = !DILocation(line: 0, scope: !1114, inlinedAt: !1121)
!1128 = !DILocation(line: 232, column: 3, scope: !1104)
!1129 = !DILocation(line: 233, column: 7, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1104, file: !314, line: 233, column: 7)
!1131 = !DILocation(line: 233, column: 7, scope: !1104)
!1132 = !DILocalVariable(name: "errbuf", scope: !1133, file: !314, line: 193, type: !1137)
!1133 = distinct !DISubprogram(name: "print_errno_message", scope: !314, file: !314, line: 188, type: !719, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1134)
!1134 = !{!1135, !1136, !1132}
!1135 = !DILocalVariable(name: "errnum", arg: 1, scope: !1133, file: !314, line: 188, type: !99)
!1136 = !DILocalVariable(name: "s", scope: !1133, file: !314, line: 190, type: !75)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1138)
!1138 = !{!1139}
!1139 = !DISubrange(count: 1024)
!1140 = !DILocation(line: 0, scope: !1133, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 234, column: 5, scope: !1130)
!1142 = !DILocation(line: 193, column: 3, scope: !1133, inlinedAt: !1141)
!1143 = !DILocation(line: 195, column: 7, scope: !1133, inlinedAt: !1141)
!1144 = !DILocation(line: 207, column: 9, scope: !1145, inlinedAt: !1141)
!1145 = distinct !DILexicalBlock(scope: !1133, file: !314, line: 207, column: 7)
!1146 = !DILocation(line: 207, column: 7, scope: !1133, inlinedAt: !1141)
!1147 = !DILocation(line: 208, column: 9, scope: !1145, inlinedAt: !1141)
!1148 = !DILocation(line: 208, column: 5, scope: !1145, inlinedAt: !1141)
!1149 = !DILocation(line: 214, column: 3, scope: !1133, inlinedAt: !1141)
!1150 = !DILocation(line: 216, column: 1, scope: !1133, inlinedAt: !1141)
!1151 = !DILocation(line: 234, column: 5, scope: !1130)
!1152 = !DILocation(line: 238, column: 3, scope: !1104)
!1153 = !DILocalVariable(name: "__c", arg: 1, scope: !1154, file: !1155, line: 101, type: !99)
!1154 = distinct !DISubprogram(name: "putc_unlocked", scope: !1155, file: !1155, line: 101, type: !1156, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1158)
!1155 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!99, !99, !1070}
!1158 = !{!1153, !1159}
!1159 = !DILocalVariable(name: "__stream", arg: 2, scope: !1154, file: !1155, line: 101, type: !1070)
!1160 = !DILocation(line: 0, scope: !1154, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 238, column: 3, scope: !1104)
!1162 = !DILocation(line: 103, column: 10, scope: !1154, inlinedAt: !1161)
!1163 = !{!1164, !726, i64 40}
!1164 = !{!"_IO_FILE", !747, i64 0, !726, i64 8, !726, i64 16, !726, i64 24, !726, i64 32, !726, i64 40, !726, i64 48, !726, i64 56, !726, i64 64, !726, i64 72, !726, i64 80, !726, i64 88, !726, i64 96, !726, i64 104, !747, i64 112, !747, i64 116, !1165, i64 120, !788, i64 128, !727, i64 130, !727, i64 131, !726, i64 136, !1165, i64 144, !726, i64 152, !726, i64 160, !726, i64 168, !726, i64 176, !1165, i64 184, !747, i64 192, !727, i64 196}
!1165 = !{!"long", !727, i64 0}
!1166 = !{!1164, !726, i64 48}
!1167 = !{!"branch_weights", i32 2000, i32 1}
!1168 = !DILocation(line: 240, column: 3, scope: !1104)
!1169 = !DILocation(line: 241, column: 7, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1104, file: !314, line: 241, column: 7)
!1171 = !DILocation(line: 241, column: 7, scope: !1104)
!1172 = !DILocation(line: 242, column: 5, scope: !1170)
!1173 = !DILocation(line: 243, column: 1, scope: !1104)
!1174 = !DISubprogram(name: "__vfprintf_chk", scope: !740, file: !740, line: 96, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!99, !1069, !99, !743, !326}
!1177 = !DISubprogram(name: "strerror_r", scope: !897, file: !897, line: 444, type: !1178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!97, !99, !97, !101}
!1180 = !DISubprogram(name: "__overflow", scope: !325, file: !325, line: 886, type: !1181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!99, !1070, !99}
!1183 = !DISubprogram(name: "fflush_unlocked", scope: !325, file: !325, line: 239, type: !1184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!99, !1070}
!1186 = !DISubprogram(name: "fcntl", scope: !1187, file: !1187, line: 149, type: !1188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1187 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!99, !99, !99, null}
!1190 = distinct !DISubprogram(name: "error", scope: !314, file: !314, line: 285, type: !1191, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1193)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !99, !99, !75, null}
!1193 = !{!1194, !1195, !1196, !1197}
!1194 = !DILocalVariable(name: "status", arg: 1, scope: !1190, file: !314, line: 285, type: !99)
!1195 = !DILocalVariable(name: "errnum", arg: 2, scope: !1190, file: !314, line: 285, type: !99)
!1196 = !DILocalVariable(name: "message", arg: 3, scope: !1190, file: !314, line: 285, type: !75)
!1197 = !DILocalVariable(name: "ap", scope: !1190, file: !314, line: 287, type: !324)
!1198 = distinct !DIAssignID()
!1199 = !DILocation(line: 0, scope: !1190)
!1200 = !DILocation(line: 287, column: 3, scope: !1190)
!1201 = !DILocation(line: 288, column: 3, scope: !1190)
!1202 = !DILocation(line: 289, column: 3, scope: !1190)
!1203 = !DILocation(line: 290, column: 3, scope: !1190)
!1204 = !DILocation(line: 291, column: 1, scope: !1190)
!1205 = !DILocation(line: 0, scope: !321)
!1206 = !DILocation(line: 302, column: 7, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !321, file: !314, line: 302, column: 7)
!1208 = !DILocation(line: 302, column: 7, scope: !321)
!1209 = !DILocation(line: 307, column: 11, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !314, line: 307, column: 11)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !314, line: 303, column: 5)
!1212 = !DILocation(line: 307, column: 27, scope: !1210)
!1213 = !DILocation(line: 308, column: 11, scope: !1210)
!1214 = !DILocation(line: 308, column: 28, scope: !1210)
!1215 = !DILocation(line: 308, column: 25, scope: !1210)
!1216 = !DILocation(line: 309, column: 15, scope: !1210)
!1217 = !DILocation(line: 309, column: 33, scope: !1210)
!1218 = !DILocation(line: 310, column: 19, scope: !1210)
!1219 = !DILocation(line: 311, column: 22, scope: !1210)
!1220 = !DILocation(line: 311, column: 56, scope: !1210)
!1221 = !DILocation(line: 307, column: 11, scope: !1211)
!1222 = !DILocation(line: 316, column: 21, scope: !1211)
!1223 = !DILocation(line: 317, column: 23, scope: !1211)
!1224 = !DILocation(line: 318, column: 5, scope: !1211)
!1225 = !DILocation(line: 327, column: 3, scope: !321)
!1226 = !DILocation(line: 331, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !321, file: !314, line: 331, column: 7)
!1228 = !DILocation(line: 331, column: 7, scope: !321)
!1229 = !DILocation(line: 332, column: 5, scope: !1227)
!1230 = !DILocation(line: 338, column: 7, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1227, file: !314, line: 334, column: 5)
!1232 = !DILocation(line: 346, column: 3, scope: !321)
!1233 = !DILocation(line: 350, column: 3, scope: !321)
!1234 = !DILocation(line: 356, column: 1, scope: !321)
!1235 = distinct !DISubprogram(name: "error_at_line", scope: !314, file: !314, line: 359, type: !1236, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1238)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !99, !99, !75, !82, !75, null}
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244}
!1239 = !DILocalVariable(name: "status", arg: 1, scope: !1235, file: !314, line: 359, type: !99)
!1240 = !DILocalVariable(name: "errnum", arg: 2, scope: !1235, file: !314, line: 359, type: !99)
!1241 = !DILocalVariable(name: "file_name", arg: 3, scope: !1235, file: !314, line: 359, type: !75)
!1242 = !DILocalVariable(name: "line_number", arg: 4, scope: !1235, file: !314, line: 360, type: !82)
!1243 = !DILocalVariable(name: "message", arg: 5, scope: !1235, file: !314, line: 360, type: !75)
!1244 = !DILocalVariable(name: "ap", scope: !1235, file: !314, line: 362, type: !324)
!1245 = distinct !DIAssignID()
!1246 = !DILocation(line: 0, scope: !1235)
!1247 = !DILocation(line: 362, column: 3, scope: !1235)
!1248 = !DILocation(line: 363, column: 3, scope: !1235)
!1249 = !DILocation(line: 364, column: 3, scope: !1235)
!1250 = !DILocation(line: 366, column: 3, scope: !1235)
!1251 = !DILocation(line: 367, column: 1, scope: !1235)
!1252 = distinct !DISubprogram(name: "getprogname", scope: !648, file: !648, line: 54, type: !1253, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!75}
!1255 = !DILocation(line: 58, column: 10, scope: !1252)
!1256 = !DILocation(line: 58, column: 3, scope: !1252)
!1257 = distinct !DISubprogram(name: "set_program_name", scope: !370, file: !370, line: 37, type: !974, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !1258)
!1258 = !{!1259, !1260, !1261}
!1259 = !DILocalVariable(name: "argv0", arg: 1, scope: !1257, file: !370, line: 37, type: !75)
!1260 = !DILocalVariable(name: "slash", scope: !1257, file: !370, line: 44, type: !75)
!1261 = !DILocalVariable(name: "base", scope: !1257, file: !370, line: 45, type: !75)
!1262 = !DILocation(line: 0, scope: !1257)
!1263 = !DILocation(line: 44, column: 23, scope: !1257)
!1264 = !DILocation(line: 45, column: 22, scope: !1257)
!1265 = !DILocation(line: 46, column: 17, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1257, file: !370, line: 46, column: 7)
!1267 = !DILocation(line: 46, column: 9, scope: !1266)
!1268 = !DILocation(line: 46, column: 25, scope: !1266)
!1269 = !DILocation(line: 46, column: 40, scope: !1266)
!1270 = !DILocalVariable(name: "__s1", arg: 1, scope: !1271, file: !759, line: 974, type: !927)
!1271 = distinct !DISubprogram(name: "memeq", scope: !759, file: !759, line: 974, type: !1272, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !1274)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!218, !927, !927, !101}
!1274 = !{!1270, !1275, !1276}
!1275 = !DILocalVariable(name: "__s2", arg: 2, scope: !1271, file: !759, line: 974, type: !927)
!1276 = !DILocalVariable(name: "__n", arg: 3, scope: !1271, file: !759, line: 974, type: !101)
!1277 = !DILocation(line: 0, scope: !1271, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 46, column: 28, scope: !1266)
!1279 = !DILocation(line: 976, column: 11, scope: !1271, inlinedAt: !1278)
!1280 = !DILocation(line: 976, column: 10, scope: !1271, inlinedAt: !1278)
!1281 = !DILocation(line: 46, column: 7, scope: !1257)
!1282 = !DILocation(line: 49, column: 11, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !370, line: 49, column: 11)
!1284 = distinct !DILexicalBlock(scope: !1266, file: !370, line: 47, column: 5)
!1285 = !DILocation(line: 49, column: 36, scope: !1283)
!1286 = !DILocation(line: 49, column: 11, scope: !1284)
!1287 = !DILocation(line: 65, column: 16, scope: !1257)
!1288 = !DILocation(line: 71, column: 27, scope: !1257)
!1289 = !DILocation(line: 74, column: 33, scope: !1257)
!1290 = !DILocation(line: 76, column: 1, scope: !1257)
!1291 = !DISubprogram(name: "strrchr", scope: !897, file: !897, line: 273, type: !914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1292 = distinct !DIAssignID()
!1293 = !DILocation(line: 0, scope: !379)
!1294 = distinct !DIAssignID()
!1295 = !DILocation(line: 40, column: 29, scope: !379)
!1296 = !DILocation(line: 41, column: 19, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !379, file: !380, line: 41, column: 7)
!1298 = !DILocation(line: 41, column: 7, scope: !379)
!1299 = !DILocation(line: 47, column: 3, scope: !379)
!1300 = !DILocation(line: 48, column: 3, scope: !379)
!1301 = !DILocalVariable(name: "ps", arg: 1, scope: !1302, file: !1303, line: 1135, type: !1306)
!1302 = distinct !DISubprogram(name: "mbszero", scope: !1303, file: !1303, line: 1135, type: !1304, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !383, retainedNodes: !1307)
!1303 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1304 = !DISubroutineType(types: !1305)
!1305 = !{null, !1306}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!1307 = !{!1301}
!1308 = !DILocation(line: 0, scope: !1302, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 48, column: 18, scope: !379)
!1310 = !DILocalVariable(name: "__dest", arg: 1, scope: !1311, file: !1312, line: 57, type: !98)
!1311 = distinct !DISubprogram(name: "memset", scope: !1312, file: !1312, line: 57, type: !1313, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !383, retainedNodes: !1315)
!1312 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!98, !98, !99, !101}
!1315 = !{!1310, !1316, !1317}
!1316 = !DILocalVariable(name: "__ch", arg: 2, scope: !1311, file: !1312, line: 57, type: !99)
!1317 = !DILocalVariable(name: "__len", arg: 3, scope: !1311, file: !1312, line: 57, type: !101)
!1318 = !DILocation(line: 0, scope: !1311, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 1137, column: 3, scope: !1302, inlinedAt: !1309)
!1320 = !DILocation(line: 59, column: 10, scope: !1311, inlinedAt: !1319)
!1321 = !DILocation(line: 49, column: 7, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !379, file: !380, line: 49, column: 7)
!1323 = !DILocation(line: 49, column: 39, scope: !1322)
!1324 = !DILocation(line: 49, column: 44, scope: !1322)
!1325 = !DILocation(line: 54, column: 1, scope: !379)
!1326 = !DISubprogram(name: "mbrtoc32", scope: !391, file: !391, line: 57, type: !1327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!101, !1329, !743, !101, !1331}
!1329 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1330)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1306)
!1332 = distinct !DISubprogram(name: "clone_quoting_options", scope: !410, file: !410, line: 113, type: !1333, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1336)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!1335, !1335}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!1336 = !{!1337, !1338, !1339}
!1337 = !DILocalVariable(name: "o", arg: 1, scope: !1332, file: !410, line: 113, type: !1335)
!1338 = !DILocalVariable(name: "saved_errno", scope: !1332, file: !410, line: 115, type: !99)
!1339 = !DILocalVariable(name: "p", scope: !1332, file: !410, line: 116, type: !1335)
!1340 = !DILocation(line: 0, scope: !1332)
!1341 = !DILocation(line: 115, column: 21, scope: !1332)
!1342 = !DILocation(line: 116, column: 40, scope: !1332)
!1343 = !DILocation(line: 116, column: 31, scope: !1332)
!1344 = !DILocation(line: 118, column: 9, scope: !1332)
!1345 = !DILocation(line: 119, column: 3, scope: !1332)
!1346 = distinct !DISubprogram(name: "get_quoting_style", scope: !410, file: !410, line: 124, type: !1347, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1351)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!433, !1349}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!1351 = !{!1352}
!1352 = !DILocalVariable(name: "o", arg: 1, scope: !1346, file: !410, line: 124, type: !1349)
!1353 = !DILocation(line: 0, scope: !1346)
!1354 = !DILocation(line: 126, column: 11, scope: !1346)
!1355 = !DILocation(line: 126, column: 46, scope: !1346)
!1356 = !{!1357, !747, i64 0}
!1357 = !{!"quoting_options", !747, i64 0, !747, i64 4, !727, i64 8, !726, i64 40, !726, i64 48}
!1358 = !DILocation(line: 126, column: 3, scope: !1346)
!1359 = distinct !DISubprogram(name: "set_quoting_style", scope: !410, file: !410, line: 132, type: !1360, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1362)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !1335, !433}
!1362 = !{!1363, !1364}
!1363 = !DILocalVariable(name: "o", arg: 1, scope: !1359, file: !410, line: 132, type: !1335)
!1364 = !DILocalVariable(name: "s", arg: 2, scope: !1359, file: !410, line: 132, type: !433)
!1365 = !DILocation(line: 0, scope: !1359)
!1366 = !DILocation(line: 134, column: 4, scope: !1359)
!1367 = !DILocation(line: 134, column: 45, scope: !1359)
!1368 = !DILocation(line: 135, column: 1, scope: !1359)
!1369 = distinct !DISubprogram(name: "set_char_quoting", scope: !410, file: !410, line: 143, type: !1370, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1372)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!99, !1335, !4, !99}
!1372 = !{!1373, !1374, !1375, !1376, !1377, !1379, !1380}
!1373 = !DILocalVariable(name: "o", arg: 1, scope: !1369, file: !410, line: 143, type: !1335)
!1374 = !DILocalVariable(name: "c", arg: 2, scope: !1369, file: !410, line: 143, type: !4)
!1375 = !DILocalVariable(name: "i", arg: 3, scope: !1369, file: !410, line: 143, type: !99)
!1376 = !DILocalVariable(name: "uc", scope: !1369, file: !410, line: 145, type: !104)
!1377 = !DILocalVariable(name: "p", scope: !1369, file: !410, line: 146, type: !1378)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1379 = !DILocalVariable(name: "shift", scope: !1369, file: !410, line: 148, type: !99)
!1380 = !DILocalVariable(name: "r", scope: !1369, file: !410, line: 149, type: !82)
!1381 = !DILocation(line: 0, scope: !1369)
!1382 = !DILocation(line: 147, column: 6, scope: !1369)
!1383 = !DILocation(line: 147, column: 41, scope: !1369)
!1384 = !DILocation(line: 147, column: 62, scope: !1369)
!1385 = !DILocation(line: 147, column: 57, scope: !1369)
!1386 = !DILocation(line: 148, column: 15, scope: !1369)
!1387 = !DILocation(line: 149, column: 21, scope: !1369)
!1388 = !DILocation(line: 149, column: 24, scope: !1369)
!1389 = !DILocation(line: 149, column: 34, scope: !1369)
!1390 = !DILocation(line: 150, column: 19, scope: !1369)
!1391 = !DILocation(line: 150, column: 24, scope: !1369)
!1392 = !DILocation(line: 150, column: 6, scope: !1369)
!1393 = !DILocation(line: 151, column: 3, scope: !1369)
!1394 = distinct !DISubprogram(name: "set_quoting_flags", scope: !410, file: !410, line: 159, type: !1395, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1397)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!99, !1335, !99}
!1397 = !{!1398, !1399, !1400}
!1398 = !DILocalVariable(name: "o", arg: 1, scope: !1394, file: !410, line: 159, type: !1335)
!1399 = !DILocalVariable(name: "i", arg: 2, scope: !1394, file: !410, line: 159, type: !99)
!1400 = !DILocalVariable(name: "r", scope: !1394, file: !410, line: 163, type: !99)
!1401 = !DILocation(line: 0, scope: !1394)
!1402 = !DILocation(line: 161, column: 8, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1394, file: !410, line: 161, column: 7)
!1404 = !DILocation(line: 161, column: 7, scope: !1394)
!1405 = !DILocation(line: 163, column: 14, scope: !1394)
!1406 = !{!1357, !747, i64 4}
!1407 = !DILocation(line: 164, column: 12, scope: !1394)
!1408 = !DILocation(line: 165, column: 3, scope: !1394)
!1409 = distinct !DISubprogram(name: "set_custom_quoting", scope: !410, file: !410, line: 169, type: !1410, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1412)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !1335, !75, !75}
!1412 = !{!1413, !1414, !1415}
!1413 = !DILocalVariable(name: "o", arg: 1, scope: !1409, file: !410, line: 169, type: !1335)
!1414 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1409, file: !410, line: 170, type: !75)
!1415 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1409, file: !410, line: 170, type: !75)
!1416 = !DILocation(line: 0, scope: !1409)
!1417 = !DILocation(line: 172, column: 8, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1409, file: !410, line: 172, column: 7)
!1419 = !DILocation(line: 172, column: 7, scope: !1409)
!1420 = !DILocation(line: 174, column: 12, scope: !1409)
!1421 = !DILocation(line: 175, column: 8, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1409, file: !410, line: 175, column: 7)
!1423 = !DILocation(line: 175, column: 19, scope: !1422)
!1424 = !DILocation(line: 176, column: 5, scope: !1422)
!1425 = !DILocation(line: 177, column: 6, scope: !1409)
!1426 = !DILocation(line: 177, column: 17, scope: !1409)
!1427 = !{!1357, !726, i64 40}
!1428 = !DILocation(line: 178, column: 6, scope: !1409)
!1429 = !DILocation(line: 178, column: 18, scope: !1409)
!1430 = !{!1357, !726, i64 48}
!1431 = !DILocation(line: 179, column: 1, scope: !1409)
!1432 = !DISubprogram(name: "abort", scope: !891, file: !891, line: 598, type: !365, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1433 = distinct !DISubprogram(name: "quotearg_buffer", scope: !410, file: !410, line: 774, type: !1434, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1436)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!101, !97, !101, !75, !101, !1349}
!1436 = !{!1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444}
!1437 = !DILocalVariable(name: "buffer", arg: 1, scope: !1433, file: !410, line: 774, type: !97)
!1438 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1433, file: !410, line: 774, type: !101)
!1439 = !DILocalVariable(name: "arg", arg: 3, scope: !1433, file: !410, line: 775, type: !75)
!1440 = !DILocalVariable(name: "argsize", arg: 4, scope: !1433, file: !410, line: 775, type: !101)
!1441 = !DILocalVariable(name: "o", arg: 5, scope: !1433, file: !410, line: 776, type: !1349)
!1442 = !DILocalVariable(name: "p", scope: !1433, file: !410, line: 778, type: !1349)
!1443 = !DILocalVariable(name: "saved_errno", scope: !1433, file: !410, line: 779, type: !99)
!1444 = !DILocalVariable(name: "r", scope: !1433, file: !410, line: 780, type: !101)
!1445 = !DILocation(line: 0, scope: !1433)
!1446 = !DILocation(line: 778, column: 37, scope: !1433)
!1447 = !DILocation(line: 779, column: 21, scope: !1433)
!1448 = !DILocation(line: 781, column: 43, scope: !1433)
!1449 = !DILocation(line: 781, column: 53, scope: !1433)
!1450 = !DILocation(line: 781, column: 63, scope: !1433)
!1451 = !DILocation(line: 782, column: 43, scope: !1433)
!1452 = !DILocation(line: 782, column: 58, scope: !1433)
!1453 = !DILocation(line: 780, column: 14, scope: !1433)
!1454 = !DILocation(line: 783, column: 9, scope: !1433)
!1455 = !DILocation(line: 784, column: 3, scope: !1433)
!1456 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !410, file: !410, line: 251, type: !1457, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1461)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!101, !97, !101, !75, !101, !433, !99, !1459, !75, !75}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1487, !1489, !1492, !1493, !1494, !1495, !1498, !1499, !1501, !1502, !1505, !1509, !1510, !1518, !1521, !1522, !1523}
!1462 = !DILocalVariable(name: "buffer", arg: 1, scope: !1456, file: !410, line: 251, type: !97)
!1463 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1456, file: !410, line: 251, type: !101)
!1464 = !DILocalVariable(name: "arg", arg: 3, scope: !1456, file: !410, line: 252, type: !75)
!1465 = !DILocalVariable(name: "argsize", arg: 4, scope: !1456, file: !410, line: 252, type: !101)
!1466 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1456, file: !410, line: 253, type: !433)
!1467 = !DILocalVariable(name: "flags", arg: 6, scope: !1456, file: !410, line: 253, type: !99)
!1468 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1456, file: !410, line: 254, type: !1459)
!1469 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1456, file: !410, line: 255, type: !75)
!1470 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1456, file: !410, line: 256, type: !75)
!1471 = !DILocalVariable(name: "unibyte_locale", scope: !1456, file: !410, line: 258, type: !218)
!1472 = !DILocalVariable(name: "len", scope: !1456, file: !410, line: 260, type: !101)
!1473 = !DILocalVariable(name: "orig_buffersize", scope: !1456, file: !410, line: 261, type: !101)
!1474 = !DILocalVariable(name: "quote_string", scope: !1456, file: !410, line: 262, type: !75)
!1475 = !DILocalVariable(name: "quote_string_len", scope: !1456, file: !410, line: 263, type: !101)
!1476 = !DILocalVariable(name: "backslash_escapes", scope: !1456, file: !410, line: 264, type: !218)
!1477 = !DILocalVariable(name: "elide_outer_quotes", scope: !1456, file: !410, line: 265, type: !218)
!1478 = !DILocalVariable(name: "encountered_single_quote", scope: !1456, file: !410, line: 266, type: !218)
!1479 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1456, file: !410, line: 267, type: !218)
!1480 = !DILabel(scope: !1456, name: "process_input", file: !410, line: 308)
!1481 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1456, file: !410, line: 309, type: !218)
!1482 = !DILocalVariable(name: "lq", scope: !1483, file: !410, line: 361, type: !75)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !410, line: 361, column: 11)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !410, line: 360, column: 13)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !410, line: 333, column: 7)
!1486 = distinct !DILexicalBlock(scope: !1456, file: !410, line: 312, column: 5)
!1487 = !DILocalVariable(name: "i", scope: !1488, file: !410, line: 395, type: !101)
!1488 = distinct !DILexicalBlock(scope: !1456, file: !410, line: 395, column: 3)
!1489 = !DILocalVariable(name: "is_right_quote", scope: !1490, file: !410, line: 397, type: !218)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !410, line: 396, column: 5)
!1491 = distinct !DILexicalBlock(scope: !1488, file: !410, line: 395, column: 3)
!1492 = !DILocalVariable(name: "escaping", scope: !1490, file: !410, line: 398, type: !218)
!1493 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1490, file: !410, line: 399, type: !218)
!1494 = !DILocalVariable(name: "c", scope: !1490, file: !410, line: 417, type: !104)
!1495 = !DILabel(scope: !1496, name: "c_and_shell_escape", file: !410, line: 502)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !410, line: 478, column: 9)
!1497 = distinct !DILexicalBlock(scope: !1490, file: !410, line: 419, column: 9)
!1498 = !DILabel(scope: !1496, name: "c_escape", file: !410, line: 507)
!1499 = !DILocalVariable(name: "m", scope: !1500, file: !410, line: 598, type: !101)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !410, line: 596, column: 11)
!1501 = !DILocalVariable(name: "printable", scope: !1500, file: !410, line: 600, type: !218)
!1502 = !DILocalVariable(name: "mbs", scope: !1503, file: !410, line: 609, type: !494)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !410, line: 608, column: 15)
!1504 = distinct !DILexicalBlock(scope: !1500, file: !410, line: 602, column: 17)
!1505 = !DILocalVariable(name: "w", scope: !1506, file: !410, line: 618, type: !390)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !410, line: 617, column: 19)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !410, line: 616, column: 17)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !410, line: 616, column: 17)
!1509 = !DILocalVariable(name: "bytes", scope: !1506, file: !410, line: 619, type: !101)
!1510 = !DILocalVariable(name: "j", scope: !1511, file: !410, line: 648, type: !101)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !410, line: 648, column: 29)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !410, line: 647, column: 27)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !410, line: 645, column: 29)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !410, line: 636, column: 23)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !410, line: 628, column: 30)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !410, line: 623, column: 30)
!1517 = distinct !DILexicalBlock(scope: !1506, file: !410, line: 621, column: 25)
!1518 = !DILocalVariable(name: "ilim", scope: !1519, file: !410, line: 674, type: !101)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !410, line: 671, column: 15)
!1520 = distinct !DILexicalBlock(scope: !1500, file: !410, line: 670, column: 17)
!1521 = !DILabel(scope: !1490, name: "store_escape", file: !410, line: 709)
!1522 = !DILabel(scope: !1490, name: "store_c", file: !410, line: 712)
!1523 = !DILabel(scope: !1456, name: "force_outer_quoting_style", file: !410, line: 753)
!1524 = distinct !DIAssignID()
!1525 = distinct !DIAssignID()
!1526 = distinct !DIAssignID()
!1527 = distinct !DIAssignID()
!1528 = distinct !DIAssignID()
!1529 = !DILocation(line: 0, scope: !1503)
!1530 = distinct !DIAssignID()
!1531 = !DILocation(line: 0, scope: !1506)
!1532 = !DILocation(line: 0, scope: !1456)
!1533 = !DILocation(line: 258, column: 25, scope: !1456)
!1534 = !DILocation(line: 258, column: 36, scope: !1456)
!1535 = !DILocation(line: 267, column: 3, scope: !1456)
!1536 = !DILocation(line: 261, column: 10, scope: !1456)
!1537 = !DILocation(line: 262, column: 15, scope: !1456)
!1538 = !DILocation(line: 263, column: 10, scope: !1456)
!1539 = !DILocation(line: 308, column: 2, scope: !1456)
!1540 = !DILocation(line: 311, column: 3, scope: !1456)
!1541 = !DILocation(line: 318, column: 11, scope: !1486)
!1542 = !DILocation(line: 319, column: 9, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !410, line: 319, column: 9)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !410, line: 319, column: 9)
!1545 = distinct !DILexicalBlock(scope: !1486, file: !410, line: 318, column: 11)
!1546 = !DILocation(line: 319, column: 9, scope: !1544)
!1547 = !DILocation(line: 0, scope: !485, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 357, column: 26, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !410, line: 335, column: 11)
!1550 = distinct !DILexicalBlock(scope: !1485, file: !410, line: 334, column: 13)
!1551 = !DILocation(line: 199, column: 29, scope: !485, inlinedAt: !1548)
!1552 = !DILocation(line: 201, column: 19, scope: !1553, inlinedAt: !1548)
!1553 = distinct !DILexicalBlock(scope: !485, file: !410, line: 201, column: 7)
!1554 = !DILocation(line: 201, column: 7, scope: !485, inlinedAt: !1548)
!1555 = !DILocation(line: 229, column: 3, scope: !485, inlinedAt: !1548)
!1556 = !DILocation(line: 230, column: 3, scope: !485, inlinedAt: !1548)
!1557 = !DILocalVariable(name: "ps", arg: 1, scope: !1558, file: !1303, line: 1135, type: !1561)
!1558 = distinct !DISubprogram(name: "mbszero", scope: !1303, file: !1303, line: 1135, type: !1559, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1562)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{null, !1561}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!1562 = !{!1557}
!1563 = !DILocation(line: 0, scope: !1558, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 230, column: 18, scope: !485, inlinedAt: !1548)
!1565 = !DILocalVariable(name: "__dest", arg: 1, scope: !1566, file: !1312, line: 57, type: !98)
!1566 = distinct !DISubprogram(name: "memset", scope: !1312, file: !1312, line: 57, type: !1313, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1567)
!1567 = !{!1565, !1568, !1569}
!1568 = !DILocalVariable(name: "__ch", arg: 2, scope: !1566, file: !1312, line: 57, type: !99)
!1569 = !DILocalVariable(name: "__len", arg: 3, scope: !1566, file: !1312, line: 57, type: !101)
!1570 = !DILocation(line: 0, scope: !1566, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 1137, column: 3, scope: !1558, inlinedAt: !1564)
!1572 = !DILocation(line: 59, column: 10, scope: !1566, inlinedAt: !1571)
!1573 = !DILocation(line: 231, column: 7, scope: !1574, inlinedAt: !1548)
!1574 = distinct !DILexicalBlock(scope: !485, file: !410, line: 231, column: 7)
!1575 = !DILocation(line: 231, column: 40, scope: !1574, inlinedAt: !1548)
!1576 = !DILocation(line: 231, column: 45, scope: !1574, inlinedAt: !1548)
!1577 = !DILocation(line: 235, column: 1, scope: !485, inlinedAt: !1548)
!1578 = !DILocation(line: 0, scope: !485, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 358, column: 27, scope: !1549)
!1580 = !DILocation(line: 199, column: 29, scope: !485, inlinedAt: !1579)
!1581 = !DILocation(line: 201, column: 19, scope: !1553, inlinedAt: !1579)
!1582 = !DILocation(line: 201, column: 7, scope: !485, inlinedAt: !1579)
!1583 = !DILocation(line: 229, column: 3, scope: !485, inlinedAt: !1579)
!1584 = !DILocation(line: 230, column: 3, scope: !485, inlinedAt: !1579)
!1585 = !DILocation(line: 0, scope: !1558, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 230, column: 18, scope: !485, inlinedAt: !1579)
!1587 = !DILocation(line: 0, scope: !1566, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 1137, column: 3, scope: !1558, inlinedAt: !1586)
!1589 = !DILocation(line: 59, column: 10, scope: !1566, inlinedAt: !1588)
!1590 = !DILocation(line: 231, column: 7, scope: !1574, inlinedAt: !1579)
!1591 = !DILocation(line: 231, column: 40, scope: !1574, inlinedAt: !1579)
!1592 = !DILocation(line: 231, column: 45, scope: !1574, inlinedAt: !1579)
!1593 = !DILocation(line: 235, column: 1, scope: !485, inlinedAt: !1579)
!1594 = !DILocation(line: 360, column: 13, scope: !1485)
!1595 = !DILocation(line: 0, scope: !1483)
!1596 = !DILocation(line: 361, column: 45, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1483, file: !410, line: 361, column: 11)
!1598 = !DILocation(line: 361, column: 11, scope: !1483)
!1599 = !DILocation(line: 362, column: 13, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !410, line: 362, column: 13)
!1601 = distinct !DILexicalBlock(scope: !1597, file: !410, line: 362, column: 13)
!1602 = !DILocation(line: 362, column: 13, scope: !1601)
!1603 = !DILocation(line: 361, column: 52, scope: !1597)
!1604 = distinct !{!1604, !1598, !1605, !793}
!1605 = !DILocation(line: 362, column: 13, scope: !1483)
!1606 = !DILocation(line: 365, column: 28, scope: !1485)
!1607 = !DILocation(line: 260, column: 10, scope: !1456)
!1608 = !DILocation(line: 367, column: 7, scope: !1486)
!1609 = !DILocation(line: 373, column: 7, scope: !1486)
!1610 = !DILocation(line: 381, column: 11, scope: !1486)
!1611 = !DILocation(line: 376, column: 11, scope: !1486)
!1612 = !DILocation(line: 382, column: 9, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !410, line: 382, column: 9)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !410, line: 382, column: 9)
!1615 = distinct !DILexicalBlock(scope: !1486, file: !410, line: 381, column: 11)
!1616 = !DILocation(line: 382, column: 9, scope: !1614)
!1617 = !DILocation(line: 389, column: 7, scope: !1486)
!1618 = !DILocation(line: 392, column: 7, scope: !1486)
!1619 = !DILocation(line: 0, scope: !1488)
!1620 = !DILocation(line: 395, column: 8, scope: !1488)
!1621 = !DILocation(line: 395, scope: !1488)
!1622 = !DILocation(line: 395, column: 34, scope: !1491)
!1623 = !DILocation(line: 395, column: 26, scope: !1491)
!1624 = !DILocation(line: 395, column: 48, scope: !1491)
!1625 = !DILocation(line: 395, column: 55, scope: !1491)
!1626 = !DILocation(line: 395, column: 3, scope: !1488)
!1627 = !DILocation(line: 395, column: 67, scope: !1491)
!1628 = !DILocation(line: 0, scope: !1490)
!1629 = !DILocation(line: 402, column: 11, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1490, file: !410, line: 401, column: 11)
!1631 = !DILocation(line: 404, column: 17, scope: !1630)
!1632 = !DILocation(line: 405, column: 39, scope: !1630)
!1633 = !DILocation(line: 409, column: 32, scope: !1630)
!1634 = !DILocation(line: 405, column: 19, scope: !1630)
!1635 = !DILocation(line: 405, column: 15, scope: !1630)
!1636 = !DILocation(line: 410, column: 11, scope: !1630)
!1637 = !DILocation(line: 410, column: 25, scope: !1630)
!1638 = !DILocalVariable(name: "__s1", arg: 1, scope: !1639, file: !759, line: 974, type: !927)
!1639 = distinct !DISubprogram(name: "memeq", scope: !759, file: !759, line: 974, type: !1272, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1640)
!1640 = !{!1638, !1641, !1642}
!1641 = !DILocalVariable(name: "__s2", arg: 2, scope: !1639, file: !759, line: 974, type: !927)
!1642 = !DILocalVariable(name: "__n", arg: 3, scope: !1639, file: !759, line: 974, type: !101)
!1643 = !DILocation(line: 0, scope: !1639, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 410, column: 14, scope: !1630)
!1645 = !DILocation(line: 976, column: 11, scope: !1639, inlinedAt: !1644)
!1646 = !DILocation(line: 976, column: 10, scope: !1639, inlinedAt: !1644)
!1647 = !DILocation(line: 401, column: 11, scope: !1490)
!1648 = !DILocation(line: 417, column: 25, scope: !1490)
!1649 = !DILocation(line: 418, column: 7, scope: !1490)
!1650 = !DILocation(line: 421, column: 15, scope: !1497)
!1651 = !DILocation(line: 423, column: 15, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !410, line: 423, column: 15)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !410, line: 422, column: 13)
!1654 = distinct !DILexicalBlock(scope: !1497, file: !410, line: 421, column: 15)
!1655 = !DILocation(line: 423, column: 15, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1652, file: !410, line: 423, column: 15)
!1657 = !DILocation(line: 423, column: 15, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !410, line: 423, column: 15)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !410, line: 423, column: 15)
!1660 = distinct !DILexicalBlock(scope: !1656, file: !410, line: 423, column: 15)
!1661 = !DILocation(line: 423, column: 15, scope: !1659)
!1662 = !DILocation(line: 423, column: 15, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !410, line: 423, column: 15)
!1664 = distinct !DILexicalBlock(scope: !1660, file: !410, line: 423, column: 15)
!1665 = !DILocation(line: 423, column: 15, scope: !1664)
!1666 = !DILocation(line: 423, column: 15, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !410, line: 423, column: 15)
!1668 = distinct !DILexicalBlock(scope: !1660, file: !410, line: 423, column: 15)
!1669 = !DILocation(line: 423, column: 15, scope: !1668)
!1670 = !DILocation(line: 423, column: 15, scope: !1660)
!1671 = !DILocation(line: 423, column: 15, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !410, line: 423, column: 15)
!1673 = distinct !DILexicalBlock(scope: !1652, file: !410, line: 423, column: 15)
!1674 = !DILocation(line: 423, column: 15, scope: !1673)
!1675 = !DILocation(line: 431, column: 19, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1653, file: !410, line: 430, column: 19)
!1677 = !DILocation(line: 431, column: 24, scope: !1676)
!1678 = !DILocation(line: 431, column: 28, scope: !1676)
!1679 = !DILocation(line: 431, column: 38, scope: !1676)
!1680 = !DILocation(line: 431, column: 48, scope: !1676)
!1681 = !DILocation(line: 431, column: 59, scope: !1676)
!1682 = !DILocation(line: 433, column: 19, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !410, line: 433, column: 19)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !410, line: 433, column: 19)
!1685 = distinct !DILexicalBlock(scope: !1676, file: !410, line: 432, column: 17)
!1686 = !DILocation(line: 433, column: 19, scope: !1684)
!1687 = !DILocation(line: 434, column: 19, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !410, line: 434, column: 19)
!1689 = distinct !DILexicalBlock(scope: !1685, file: !410, line: 434, column: 19)
!1690 = !DILocation(line: 434, column: 19, scope: !1689)
!1691 = !DILocation(line: 435, column: 17, scope: !1685)
!1692 = !DILocation(line: 442, column: 20, scope: !1654)
!1693 = !DILocation(line: 447, column: 11, scope: !1497)
!1694 = !DILocation(line: 450, column: 19, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1497, file: !410, line: 448, column: 13)
!1696 = !DILocation(line: 456, column: 19, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1695, file: !410, line: 455, column: 19)
!1698 = !DILocation(line: 456, column: 24, scope: !1697)
!1699 = !DILocation(line: 456, column: 28, scope: !1697)
!1700 = !DILocation(line: 456, column: 38, scope: !1697)
!1701 = !DILocation(line: 456, column: 41, scope: !1697)
!1702 = !DILocation(line: 456, column: 52, scope: !1697)
!1703 = !DILocation(line: 455, column: 19, scope: !1695)
!1704 = !DILocation(line: 457, column: 25, scope: !1697)
!1705 = !DILocation(line: 457, column: 17, scope: !1697)
!1706 = !DILocation(line: 464, column: 25, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1697, file: !410, line: 458, column: 19)
!1708 = !DILocation(line: 468, column: 21, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !410, line: 468, column: 21)
!1710 = distinct !DILexicalBlock(scope: !1707, file: !410, line: 468, column: 21)
!1711 = !DILocation(line: 468, column: 21, scope: !1710)
!1712 = !DILocation(line: 469, column: 21, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !410, line: 469, column: 21)
!1714 = distinct !DILexicalBlock(scope: !1707, file: !410, line: 469, column: 21)
!1715 = !DILocation(line: 469, column: 21, scope: !1714)
!1716 = !DILocation(line: 470, column: 21, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !410, line: 470, column: 21)
!1718 = distinct !DILexicalBlock(scope: !1707, file: !410, line: 470, column: 21)
!1719 = !DILocation(line: 470, column: 21, scope: !1718)
!1720 = !DILocation(line: 471, column: 21, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !410, line: 471, column: 21)
!1722 = distinct !DILexicalBlock(scope: !1707, file: !410, line: 471, column: 21)
!1723 = !DILocation(line: 471, column: 21, scope: !1722)
!1724 = !DILocation(line: 472, column: 21, scope: !1707)
!1725 = !DILocation(line: 482, column: 33, scope: !1496)
!1726 = !DILocation(line: 483, column: 33, scope: !1496)
!1727 = !DILocation(line: 485, column: 33, scope: !1496)
!1728 = !DILocation(line: 486, column: 33, scope: !1496)
!1729 = !DILocation(line: 487, column: 33, scope: !1496)
!1730 = !DILocation(line: 490, column: 17, scope: !1496)
!1731 = !DILocation(line: 492, column: 21, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !410, line: 491, column: 15)
!1733 = distinct !DILexicalBlock(scope: !1496, file: !410, line: 490, column: 17)
!1734 = !DILocation(line: 499, column: 35, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1496, file: !410, line: 499, column: 17)
!1736 = !DILocation(line: 0, scope: !1496)
!1737 = !DILocation(line: 502, column: 11, scope: !1496)
!1738 = !DILocation(line: 504, column: 17, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1496, file: !410, line: 503, column: 17)
!1740 = !DILocation(line: 507, column: 11, scope: !1496)
!1741 = !DILocation(line: 508, column: 17, scope: !1496)
!1742 = !DILocation(line: 517, column: 15, scope: !1497)
!1743 = !DILocation(line: 517, column: 40, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1497, file: !410, line: 517, column: 15)
!1745 = !DILocation(line: 517, column: 47, scope: !1744)
!1746 = !DILocation(line: 517, column: 18, scope: !1744)
!1747 = !DILocation(line: 521, column: 17, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1497, file: !410, line: 521, column: 15)
!1749 = !DILocation(line: 521, column: 15, scope: !1497)
!1750 = !DILocation(line: 525, column: 11, scope: !1497)
!1751 = !DILocation(line: 537, column: 15, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1497, file: !410, line: 536, column: 15)
!1753 = !DILocation(line: 536, column: 15, scope: !1497)
!1754 = !DILocation(line: 544, column: 15, scope: !1497)
!1755 = !DILocation(line: 546, column: 19, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !410, line: 545, column: 13)
!1757 = distinct !DILexicalBlock(scope: !1497, file: !410, line: 544, column: 15)
!1758 = !DILocation(line: 549, column: 19, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1756, file: !410, line: 549, column: 19)
!1760 = !DILocation(line: 549, column: 30, scope: !1759)
!1761 = !DILocation(line: 558, column: 15, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !410, line: 558, column: 15)
!1763 = distinct !DILexicalBlock(scope: !1756, file: !410, line: 558, column: 15)
!1764 = !DILocation(line: 558, column: 15, scope: !1763)
!1765 = !DILocation(line: 559, column: 15, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !410, line: 559, column: 15)
!1767 = distinct !DILexicalBlock(scope: !1756, file: !410, line: 559, column: 15)
!1768 = !DILocation(line: 559, column: 15, scope: !1767)
!1769 = !DILocation(line: 560, column: 15, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !410, line: 560, column: 15)
!1771 = distinct !DILexicalBlock(scope: !1756, file: !410, line: 560, column: 15)
!1772 = !DILocation(line: 560, column: 15, scope: !1771)
!1773 = !DILocation(line: 562, column: 13, scope: !1756)
!1774 = !DILocation(line: 602, column: 17, scope: !1500)
!1775 = !DILocation(line: 0, scope: !1500)
!1776 = !DILocation(line: 605, column: 29, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1504, file: !410, line: 603, column: 15)
!1778 = !DILocation(line: 605, column: 41, scope: !1777)
!1779 = !DILocation(line: 606, column: 15, scope: !1777)
!1780 = !DILocation(line: 609, column: 17, scope: !1503)
!1781 = !DILocation(line: 0, scope: !1558, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 609, column: 32, scope: !1503)
!1783 = !DILocation(line: 0, scope: !1566, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 1137, column: 3, scope: !1558, inlinedAt: !1782)
!1785 = !DILocation(line: 59, column: 10, scope: !1566, inlinedAt: !1784)
!1786 = !DILocation(line: 613, column: 29, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1503, file: !410, line: 613, column: 21)
!1788 = !DILocation(line: 613, column: 21, scope: !1503)
!1789 = !DILocation(line: 614, column: 29, scope: !1787)
!1790 = !DILocation(line: 614, column: 19, scope: !1787)
!1791 = !DILocation(line: 618, column: 21, scope: !1506)
!1792 = !DILocation(line: 620, column: 54, scope: !1506)
!1793 = !DILocation(line: 619, column: 36, scope: !1506)
!1794 = !DILocation(line: 621, column: 25, scope: !1506)
!1795 = !DILocation(line: 631, column: 38, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1515, file: !410, line: 629, column: 23)
!1797 = !DILocation(line: 631, column: 48, scope: !1796)
!1798 = !DILocation(line: 631, column: 25, scope: !1796)
!1799 = !DILocation(line: 626, column: 25, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1516, file: !410, line: 624, column: 23)
!1801 = !DILocation(line: 631, column: 51, scope: !1796)
!1802 = !DILocation(line: 632, column: 28, scope: !1796)
!1803 = !DILocation(line: 631, column: 34, scope: !1796)
!1804 = distinct !{!1804, !1798, !1802, !793}
!1805 = !DILocation(line: 0, scope: !1511)
!1806 = !DILocation(line: 646, column: 29, scope: !1513)
!1807 = !DILocation(line: 648, column: 29, scope: !1511)
!1808 = !DILocation(line: 649, column: 39, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1511, file: !410, line: 648, column: 29)
!1810 = !DILocation(line: 649, column: 31, scope: !1809)
!1811 = !DILocation(line: 648, column: 60, scope: !1809)
!1812 = !DILocation(line: 648, column: 50, scope: !1809)
!1813 = distinct !{!1813, !1807, !1814, !793}
!1814 = !DILocation(line: 654, column: 33, scope: !1511)
!1815 = !DILocation(line: 657, column: 43, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1514, file: !410, line: 657, column: 29)
!1817 = !DILocalVariable(name: "wc", arg: 1, scope: !1818, file: !1819, line: 865, type: !1822)
!1818 = distinct !DISubprogram(name: "c32isprint", scope: !1819, file: !1819, line: 865, type: !1820, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1824)
!1819 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!99, !1822}
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1823, line: 20, baseType: !82)
!1823 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1824 = !{!1817}
!1825 = !DILocation(line: 0, scope: !1818, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 657, column: 31, scope: !1816)
!1827 = !DILocation(line: 871, column: 10, scope: !1818, inlinedAt: !1826)
!1828 = !DILocation(line: 657, column: 31, scope: !1816)
!1829 = !DILocation(line: 664, column: 23, scope: !1506)
!1830 = !DILocation(line: 665, column: 19, scope: !1507)
!1831 = !DILocation(line: 666, column: 15, scope: !1504)
!1832 = !DILocation(line: 753, column: 2, scope: !1456)
!1833 = !DILocation(line: 756, column: 51, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1456, file: !410, line: 756, column: 7)
!1835 = !DILocation(line: 0, scope: !1504)
!1836 = !DILocation(line: 670, column: 19, scope: !1520)
!1837 = !DILocation(line: 670, column: 23, scope: !1520)
!1838 = !DILocation(line: 674, column: 33, scope: !1519)
!1839 = !DILocation(line: 0, scope: !1519)
!1840 = !DILocation(line: 676, column: 17, scope: !1519)
!1841 = !DILocation(line: 678, column: 43, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !410, line: 678, column: 25)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !410, line: 677, column: 19)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !410, line: 676, column: 17)
!1845 = distinct !DILexicalBlock(scope: !1519, file: !410, line: 676, column: 17)
!1846 = !DILocation(line: 680, column: 25, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !410, line: 680, column: 25)
!1848 = distinct !DILexicalBlock(scope: !1842, file: !410, line: 679, column: 23)
!1849 = !DILocation(line: 680, column: 25, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1847, file: !410, line: 680, column: 25)
!1851 = !DILocation(line: 680, column: 25, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !410, line: 680, column: 25)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !410, line: 680, column: 25)
!1854 = distinct !DILexicalBlock(scope: !1850, file: !410, line: 680, column: 25)
!1855 = !DILocation(line: 680, column: 25, scope: !1853)
!1856 = !DILocation(line: 680, column: 25, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !410, line: 680, column: 25)
!1858 = distinct !DILexicalBlock(scope: !1854, file: !410, line: 680, column: 25)
!1859 = !DILocation(line: 680, column: 25, scope: !1858)
!1860 = !DILocation(line: 680, column: 25, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !410, line: 680, column: 25)
!1862 = distinct !DILexicalBlock(scope: !1854, file: !410, line: 680, column: 25)
!1863 = !DILocation(line: 680, column: 25, scope: !1862)
!1864 = !DILocation(line: 680, column: 25, scope: !1854)
!1865 = !DILocation(line: 680, column: 25, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !410, line: 680, column: 25)
!1867 = distinct !DILexicalBlock(scope: !1847, file: !410, line: 680, column: 25)
!1868 = !DILocation(line: 680, column: 25, scope: !1867)
!1869 = !DILocation(line: 681, column: 25, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !410, line: 681, column: 25)
!1871 = distinct !DILexicalBlock(scope: !1848, file: !410, line: 681, column: 25)
!1872 = !DILocation(line: 681, column: 25, scope: !1871)
!1873 = !DILocation(line: 682, column: 25, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !410, line: 682, column: 25)
!1875 = distinct !DILexicalBlock(scope: !1848, file: !410, line: 682, column: 25)
!1876 = !DILocation(line: 682, column: 25, scope: !1875)
!1877 = !DILocation(line: 683, column: 38, scope: !1848)
!1878 = !DILocation(line: 683, column: 33, scope: !1848)
!1879 = !DILocation(line: 684, column: 23, scope: !1848)
!1880 = !DILocation(line: 685, column: 30, scope: !1842)
!1881 = !DILocation(line: 687, column: 25, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !410, line: 687, column: 25)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !410, line: 687, column: 25)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !410, line: 686, column: 23)
!1885 = distinct !DILexicalBlock(scope: !1842, file: !410, line: 685, column: 30)
!1886 = !DILocation(line: 687, column: 25, scope: !1883)
!1887 = !DILocation(line: 689, column: 23, scope: !1884)
!1888 = !DILocation(line: 690, column: 35, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1843, file: !410, line: 690, column: 25)
!1890 = !DILocation(line: 690, column: 30, scope: !1889)
!1891 = !DILocation(line: 690, column: 25, scope: !1843)
!1892 = !DILocation(line: 692, column: 21, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !410, line: 692, column: 21)
!1894 = distinct !DILexicalBlock(scope: !1843, file: !410, line: 692, column: 21)
!1895 = !DILocation(line: 692, column: 21, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !410, line: 692, column: 21)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !410, line: 692, column: 21)
!1898 = distinct !DILexicalBlock(scope: !1893, file: !410, line: 692, column: 21)
!1899 = !DILocation(line: 692, column: 21, scope: !1897)
!1900 = !DILocation(line: 692, column: 21, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !410, line: 692, column: 21)
!1902 = distinct !DILexicalBlock(scope: !1898, file: !410, line: 692, column: 21)
!1903 = !DILocation(line: 692, column: 21, scope: !1902)
!1904 = !DILocation(line: 692, column: 21, scope: !1898)
!1905 = !DILocation(line: 0, scope: !1843)
!1906 = !DILocation(line: 693, column: 21, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !410, line: 693, column: 21)
!1908 = distinct !DILexicalBlock(scope: !1843, file: !410, line: 693, column: 21)
!1909 = !DILocation(line: 693, column: 21, scope: !1908)
!1910 = !DILocation(line: 694, column: 25, scope: !1843)
!1911 = !DILocation(line: 676, column: 17, scope: !1844)
!1912 = distinct !{!1912, !1913, !1914}
!1913 = !DILocation(line: 676, column: 17, scope: !1845)
!1914 = !DILocation(line: 695, column: 19, scope: !1845)
!1915 = !DILocation(line: 409, column: 30, scope: !1630)
!1916 = !DILocation(line: 702, column: 34, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1490, file: !410, line: 702, column: 11)
!1918 = !DILocation(line: 704, column: 14, scope: !1917)
!1919 = !DILocation(line: 705, column: 14, scope: !1917)
!1920 = !DILocation(line: 705, column: 35, scope: !1917)
!1921 = !DILocation(line: 705, column: 17, scope: !1917)
!1922 = !DILocation(line: 705, column: 47, scope: !1917)
!1923 = !DILocation(line: 705, column: 65, scope: !1917)
!1924 = !DILocation(line: 706, column: 11, scope: !1917)
!1925 = !DILocation(line: 702, column: 11, scope: !1490)
!1926 = !DILocation(line: 395, column: 15, scope: !1488)
!1927 = !DILocation(line: 709, column: 5, scope: !1490)
!1928 = !DILocation(line: 710, column: 7, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1490, file: !410, line: 710, column: 7)
!1930 = !DILocation(line: 710, column: 7, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1929, file: !410, line: 710, column: 7)
!1932 = !DILocation(line: 710, column: 7, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !410, line: 710, column: 7)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !410, line: 710, column: 7)
!1935 = distinct !DILexicalBlock(scope: !1931, file: !410, line: 710, column: 7)
!1936 = !DILocation(line: 710, column: 7, scope: !1934)
!1937 = !DILocation(line: 710, column: 7, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !410, line: 710, column: 7)
!1939 = distinct !DILexicalBlock(scope: !1935, file: !410, line: 710, column: 7)
!1940 = !DILocation(line: 710, column: 7, scope: !1939)
!1941 = !DILocation(line: 710, column: 7, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !410, line: 710, column: 7)
!1943 = distinct !DILexicalBlock(scope: !1935, file: !410, line: 710, column: 7)
!1944 = !DILocation(line: 710, column: 7, scope: !1943)
!1945 = !DILocation(line: 710, column: 7, scope: !1935)
!1946 = !DILocation(line: 710, column: 7, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !410, line: 710, column: 7)
!1948 = distinct !DILexicalBlock(scope: !1929, file: !410, line: 710, column: 7)
!1949 = !DILocation(line: 710, column: 7, scope: !1948)
!1950 = !DILocation(line: 712, column: 5, scope: !1490)
!1951 = !DILocation(line: 713, column: 7, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !410, line: 713, column: 7)
!1953 = distinct !DILexicalBlock(scope: !1490, file: !410, line: 713, column: 7)
!1954 = !DILocation(line: 417, column: 21, scope: !1490)
!1955 = !DILocation(line: 713, column: 7, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !410, line: 713, column: 7)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !410, line: 713, column: 7)
!1958 = distinct !DILexicalBlock(scope: !1952, file: !410, line: 713, column: 7)
!1959 = !DILocation(line: 713, column: 7, scope: !1957)
!1960 = !DILocation(line: 713, column: 7, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !410, line: 713, column: 7)
!1962 = distinct !DILexicalBlock(scope: !1958, file: !410, line: 713, column: 7)
!1963 = !DILocation(line: 713, column: 7, scope: !1962)
!1964 = !DILocation(line: 713, column: 7, scope: !1958)
!1965 = !DILocation(line: 714, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !410, line: 714, column: 7)
!1967 = distinct !DILexicalBlock(scope: !1490, file: !410, line: 714, column: 7)
!1968 = !DILocation(line: 714, column: 7, scope: !1967)
!1969 = !DILocation(line: 716, column: 11, scope: !1490)
!1970 = !DILocation(line: 718, column: 5, scope: !1491)
!1971 = !DILocation(line: 395, column: 82, scope: !1491)
!1972 = !DILocation(line: 395, column: 3, scope: !1491)
!1973 = distinct !{!1973, !1626, !1974, !793}
!1974 = !DILocation(line: 718, column: 5, scope: !1488)
!1975 = !DILocation(line: 720, column: 11, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1456, file: !410, line: 720, column: 7)
!1977 = !DILocation(line: 720, column: 16, scope: !1976)
!1978 = !DILocation(line: 728, column: 51, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1456, file: !410, line: 728, column: 7)
!1980 = !DILocation(line: 731, column: 11, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1979, file: !410, line: 730, column: 5)
!1982 = !DILocation(line: 732, column: 16, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1981, file: !410, line: 731, column: 11)
!1984 = !DILocation(line: 732, column: 9, scope: !1983)
!1985 = !DILocation(line: 736, column: 18, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1983, file: !410, line: 736, column: 16)
!1987 = !DILocation(line: 736, column: 29, scope: !1986)
!1988 = !DILocation(line: 745, column: 7, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1456, file: !410, line: 745, column: 7)
!1990 = !DILocation(line: 745, column: 20, scope: !1989)
!1991 = !DILocation(line: 746, column: 12, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !410, line: 746, column: 5)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !410, line: 746, column: 5)
!1994 = !DILocation(line: 746, column: 5, scope: !1993)
!1995 = !DILocation(line: 747, column: 7, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !410, line: 747, column: 7)
!1997 = distinct !DILexicalBlock(scope: !1992, file: !410, line: 747, column: 7)
!1998 = !DILocation(line: 747, column: 7, scope: !1997)
!1999 = !DILocation(line: 746, column: 39, scope: !1992)
!2000 = distinct !{!2000, !1994, !2001, !793}
!2001 = !DILocation(line: 747, column: 7, scope: !1993)
!2002 = !DILocation(line: 749, column: 11, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1456, file: !410, line: 749, column: 7)
!2004 = !DILocation(line: 749, column: 7, scope: !1456)
!2005 = !DILocation(line: 750, column: 5, scope: !2003)
!2006 = !DILocation(line: 750, column: 17, scope: !2003)
!2007 = !DILocation(line: 756, column: 21, scope: !1834)
!2008 = !DILocation(line: 760, column: 42, scope: !1456)
!2009 = !DILocation(line: 758, column: 10, scope: !1456)
!2010 = !DILocation(line: 758, column: 3, scope: !1456)
!2011 = !DILocation(line: 762, column: 1, scope: !1456)
!2012 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !891, file: !891, line: 98, type: !2013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!101}
!2015 = !DISubprogram(name: "strlen", scope: !897, file: !897, line: 407, type: !2016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!103, !75}
!2018 = !DISubprogram(name: "iswprint", scope: !2019, file: !2019, line: 120, type: !1820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2019 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2020 = distinct !DISubprogram(name: "quotearg_alloc", scope: !410, file: !410, line: 788, type: !2021, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2023)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!97, !75, !101, !1349}
!2023 = !{!2024, !2025, !2026}
!2024 = !DILocalVariable(name: "arg", arg: 1, scope: !2020, file: !410, line: 788, type: !75)
!2025 = !DILocalVariable(name: "argsize", arg: 2, scope: !2020, file: !410, line: 788, type: !101)
!2026 = !DILocalVariable(name: "o", arg: 3, scope: !2020, file: !410, line: 789, type: !1349)
!2027 = !DILocation(line: 0, scope: !2020)
!2028 = !DILocalVariable(name: "arg", arg: 1, scope: !2029, file: !410, line: 801, type: !75)
!2029 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !410, file: !410, line: 801, type: !2030, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2032)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!97, !75, !101, !663, !1349}
!2032 = !{!2028, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040}
!2033 = !DILocalVariable(name: "argsize", arg: 2, scope: !2029, file: !410, line: 801, type: !101)
!2034 = !DILocalVariable(name: "size", arg: 3, scope: !2029, file: !410, line: 801, type: !663)
!2035 = !DILocalVariable(name: "o", arg: 4, scope: !2029, file: !410, line: 802, type: !1349)
!2036 = !DILocalVariable(name: "p", scope: !2029, file: !410, line: 804, type: !1349)
!2037 = !DILocalVariable(name: "saved_errno", scope: !2029, file: !410, line: 805, type: !99)
!2038 = !DILocalVariable(name: "flags", scope: !2029, file: !410, line: 807, type: !99)
!2039 = !DILocalVariable(name: "bufsize", scope: !2029, file: !410, line: 808, type: !101)
!2040 = !DILocalVariable(name: "buf", scope: !2029, file: !410, line: 812, type: !97)
!2041 = !DILocation(line: 0, scope: !2029, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 791, column: 10, scope: !2020)
!2043 = !DILocation(line: 804, column: 37, scope: !2029, inlinedAt: !2042)
!2044 = !DILocation(line: 805, column: 21, scope: !2029, inlinedAt: !2042)
!2045 = !DILocation(line: 807, column: 18, scope: !2029, inlinedAt: !2042)
!2046 = !DILocation(line: 807, column: 24, scope: !2029, inlinedAt: !2042)
!2047 = !DILocation(line: 808, column: 72, scope: !2029, inlinedAt: !2042)
!2048 = !DILocation(line: 809, column: 56, scope: !2029, inlinedAt: !2042)
!2049 = !DILocation(line: 810, column: 49, scope: !2029, inlinedAt: !2042)
!2050 = !DILocation(line: 811, column: 49, scope: !2029, inlinedAt: !2042)
!2051 = !DILocation(line: 808, column: 20, scope: !2029, inlinedAt: !2042)
!2052 = !DILocation(line: 811, column: 62, scope: !2029, inlinedAt: !2042)
!2053 = !DILocation(line: 812, column: 15, scope: !2029, inlinedAt: !2042)
!2054 = !DILocation(line: 813, column: 60, scope: !2029, inlinedAt: !2042)
!2055 = !DILocation(line: 815, column: 32, scope: !2029, inlinedAt: !2042)
!2056 = !DILocation(line: 815, column: 47, scope: !2029, inlinedAt: !2042)
!2057 = !DILocation(line: 813, column: 3, scope: !2029, inlinedAt: !2042)
!2058 = !DILocation(line: 816, column: 9, scope: !2029, inlinedAt: !2042)
!2059 = !DILocation(line: 791, column: 3, scope: !2020)
!2060 = !DILocation(line: 0, scope: !2029)
!2061 = !DILocation(line: 804, column: 37, scope: !2029)
!2062 = !DILocation(line: 805, column: 21, scope: !2029)
!2063 = !DILocation(line: 807, column: 18, scope: !2029)
!2064 = !DILocation(line: 807, column: 27, scope: !2029)
!2065 = !DILocation(line: 807, column: 24, scope: !2029)
!2066 = !DILocation(line: 808, column: 72, scope: !2029)
!2067 = !DILocation(line: 809, column: 56, scope: !2029)
!2068 = !DILocation(line: 810, column: 49, scope: !2029)
!2069 = !DILocation(line: 811, column: 49, scope: !2029)
!2070 = !DILocation(line: 808, column: 20, scope: !2029)
!2071 = !DILocation(line: 811, column: 62, scope: !2029)
!2072 = !DILocation(line: 812, column: 15, scope: !2029)
!2073 = !DILocation(line: 813, column: 60, scope: !2029)
!2074 = !DILocation(line: 815, column: 32, scope: !2029)
!2075 = !DILocation(line: 815, column: 47, scope: !2029)
!2076 = !DILocation(line: 813, column: 3, scope: !2029)
!2077 = !DILocation(line: 816, column: 9, scope: !2029)
!2078 = !DILocation(line: 817, column: 7, scope: !2029)
!2079 = !DILocation(line: 818, column: 11, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2029, file: !410, line: 817, column: 7)
!2081 = !{!1165, !1165, i64 0}
!2082 = !DILocation(line: 818, column: 5, scope: !2080)
!2083 = !DILocation(line: 819, column: 3, scope: !2029)
!2084 = distinct !DISubprogram(name: "quotearg_free", scope: !410, file: !410, line: 837, type: !365, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2085)
!2085 = !{!2086, !2087}
!2086 = !DILocalVariable(name: "sv", scope: !2084, file: !410, line: 839, type: !508)
!2087 = !DILocalVariable(name: "i", scope: !2088, file: !410, line: 840, type: !99)
!2088 = distinct !DILexicalBlock(scope: !2084, file: !410, line: 840, column: 3)
!2089 = !DILocation(line: 839, column: 24, scope: !2084)
!2090 = !DILocation(line: 0, scope: !2084)
!2091 = !DILocation(line: 0, scope: !2088)
!2092 = !DILocation(line: 840, column: 21, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2088, file: !410, line: 840, column: 3)
!2094 = !DILocation(line: 840, column: 3, scope: !2088)
!2095 = !DILocation(line: 842, column: 13, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2084, file: !410, line: 842, column: 7)
!2097 = !{!2098, !726, i64 8}
!2098 = !{!"slotvec", !1165, i64 0, !726, i64 8}
!2099 = !DILocation(line: 842, column: 17, scope: !2096)
!2100 = !DILocation(line: 842, column: 7, scope: !2084)
!2101 = !DILocation(line: 841, column: 17, scope: !2093)
!2102 = !DILocation(line: 841, column: 5, scope: !2093)
!2103 = !DILocation(line: 840, column: 32, scope: !2093)
!2104 = distinct !{!2104, !2094, !2105, !793}
!2105 = !DILocation(line: 841, column: 20, scope: !2088)
!2106 = !DILocation(line: 844, column: 7, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2096, file: !410, line: 843, column: 5)
!2108 = !DILocation(line: 845, column: 21, scope: !2107)
!2109 = !{!2098, !1165, i64 0}
!2110 = !DILocation(line: 846, column: 20, scope: !2107)
!2111 = !DILocation(line: 847, column: 5, scope: !2107)
!2112 = !DILocation(line: 848, column: 10, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2084, file: !410, line: 848, column: 7)
!2114 = !DILocation(line: 848, column: 7, scope: !2084)
!2115 = !DILocation(line: 850, column: 7, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2113, file: !410, line: 849, column: 5)
!2117 = !DILocation(line: 851, column: 15, scope: !2116)
!2118 = !DILocation(line: 852, column: 5, scope: !2116)
!2119 = !DILocation(line: 853, column: 10, scope: !2084)
!2120 = !DILocation(line: 854, column: 1, scope: !2084)
!2121 = !DISubprogram(name: "free", scope: !1303, file: !1303, line: 786, type: !2122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{null, !98}
!2124 = distinct !DISubprogram(name: "quotearg_n", scope: !410, file: !410, line: 919, type: !894, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2125)
!2125 = !{!2126, !2127}
!2126 = !DILocalVariable(name: "n", arg: 1, scope: !2124, file: !410, line: 919, type: !99)
!2127 = !DILocalVariable(name: "arg", arg: 2, scope: !2124, file: !410, line: 919, type: !75)
!2128 = !DILocation(line: 0, scope: !2124)
!2129 = !DILocation(line: 921, column: 10, scope: !2124)
!2130 = !DILocation(line: 921, column: 3, scope: !2124)
!2131 = distinct !DISubprogram(name: "quotearg_n_options", scope: !410, file: !410, line: 866, type: !2132, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!97, !99, !75, !101, !1349}
!2134 = !{!2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2145, !2146, !2148, !2149, !2150}
!2135 = !DILocalVariable(name: "n", arg: 1, scope: !2131, file: !410, line: 866, type: !99)
!2136 = !DILocalVariable(name: "arg", arg: 2, scope: !2131, file: !410, line: 866, type: !75)
!2137 = !DILocalVariable(name: "argsize", arg: 3, scope: !2131, file: !410, line: 866, type: !101)
!2138 = !DILocalVariable(name: "options", arg: 4, scope: !2131, file: !410, line: 867, type: !1349)
!2139 = !DILocalVariable(name: "saved_errno", scope: !2131, file: !410, line: 869, type: !99)
!2140 = !DILocalVariable(name: "sv", scope: !2131, file: !410, line: 871, type: !508)
!2141 = !DILocalVariable(name: "nslots_max", scope: !2131, file: !410, line: 873, type: !99)
!2142 = !DILocalVariable(name: "preallocated", scope: !2143, file: !410, line: 879, type: !218)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !410, line: 878, column: 5)
!2144 = distinct !DILexicalBlock(scope: !2131, file: !410, line: 877, column: 7)
!2145 = !DILocalVariable(name: "new_nslots", scope: !2143, file: !410, line: 880, type: !676)
!2146 = !DILocalVariable(name: "size", scope: !2147, file: !410, line: 891, type: !101)
!2147 = distinct !DILexicalBlock(scope: !2131, file: !410, line: 890, column: 3)
!2148 = !DILocalVariable(name: "val", scope: !2147, file: !410, line: 892, type: !97)
!2149 = !DILocalVariable(name: "flags", scope: !2147, file: !410, line: 894, type: !99)
!2150 = !DILocalVariable(name: "qsize", scope: !2147, file: !410, line: 895, type: !101)
!2151 = distinct !DIAssignID()
!2152 = !DILocation(line: 0, scope: !2143)
!2153 = !DILocation(line: 0, scope: !2131)
!2154 = !DILocation(line: 869, column: 21, scope: !2131)
!2155 = !DILocation(line: 871, column: 24, scope: !2131)
!2156 = !DILocation(line: 874, column: 17, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2131, file: !410, line: 874, column: 7)
!2158 = !DILocation(line: 875, column: 5, scope: !2157)
!2159 = !DILocation(line: 877, column: 7, scope: !2144)
!2160 = !DILocation(line: 877, column: 14, scope: !2144)
!2161 = !DILocation(line: 877, column: 7, scope: !2131)
!2162 = !DILocation(line: 879, column: 31, scope: !2143)
!2163 = !DILocation(line: 880, column: 7, scope: !2143)
!2164 = !DILocation(line: 880, column: 26, scope: !2143)
!2165 = !DILocation(line: 880, column: 13, scope: !2143)
!2166 = distinct !DIAssignID()
!2167 = !DILocation(line: 882, column: 31, scope: !2143)
!2168 = !DILocation(line: 883, column: 33, scope: !2143)
!2169 = !DILocation(line: 883, column: 42, scope: !2143)
!2170 = !DILocation(line: 883, column: 31, scope: !2143)
!2171 = !DILocation(line: 882, column: 22, scope: !2143)
!2172 = !DILocation(line: 882, column: 15, scope: !2143)
!2173 = !DILocation(line: 884, column: 11, scope: !2143)
!2174 = !DILocation(line: 885, column: 15, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2143, file: !410, line: 884, column: 11)
!2176 = !{i64 0, i64 8, !2081, i64 8, i64 8, !725}
!2177 = !DILocation(line: 885, column: 9, scope: !2175)
!2178 = !DILocation(line: 886, column: 20, scope: !2143)
!2179 = !DILocation(line: 886, column: 18, scope: !2143)
!2180 = !DILocation(line: 886, column: 32, scope: !2143)
!2181 = !DILocation(line: 886, column: 43, scope: !2143)
!2182 = !DILocation(line: 886, column: 53, scope: !2143)
!2183 = !DILocation(line: 0, scope: !1566, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 886, column: 7, scope: !2143)
!2185 = !DILocation(line: 59, column: 10, scope: !1566, inlinedAt: !2184)
!2186 = !DILocation(line: 887, column: 16, scope: !2143)
!2187 = !DILocation(line: 887, column: 14, scope: !2143)
!2188 = !DILocation(line: 888, column: 5, scope: !2144)
!2189 = !DILocation(line: 888, column: 5, scope: !2143)
!2190 = !DILocation(line: 891, column: 19, scope: !2147)
!2191 = !DILocation(line: 891, column: 25, scope: !2147)
!2192 = !DILocation(line: 0, scope: !2147)
!2193 = !DILocation(line: 892, column: 23, scope: !2147)
!2194 = !DILocation(line: 894, column: 26, scope: !2147)
!2195 = !DILocation(line: 894, column: 32, scope: !2147)
!2196 = !DILocation(line: 896, column: 55, scope: !2147)
!2197 = !DILocation(line: 897, column: 55, scope: !2147)
!2198 = !DILocation(line: 898, column: 55, scope: !2147)
!2199 = !DILocation(line: 899, column: 55, scope: !2147)
!2200 = !DILocation(line: 895, column: 20, scope: !2147)
!2201 = !DILocation(line: 901, column: 14, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2147, file: !410, line: 901, column: 9)
!2203 = !DILocation(line: 901, column: 9, scope: !2147)
!2204 = !DILocation(line: 903, column: 35, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2202, file: !410, line: 902, column: 7)
!2206 = !DILocation(line: 903, column: 20, scope: !2205)
!2207 = !DILocation(line: 904, column: 17, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2205, file: !410, line: 904, column: 13)
!2209 = !DILocation(line: 904, column: 13, scope: !2205)
!2210 = !DILocation(line: 905, column: 11, scope: !2208)
!2211 = !DILocation(line: 906, column: 27, scope: !2205)
!2212 = !DILocation(line: 906, column: 19, scope: !2205)
!2213 = !DILocation(line: 907, column: 69, scope: !2205)
!2214 = !DILocation(line: 909, column: 44, scope: !2205)
!2215 = !DILocation(line: 910, column: 44, scope: !2205)
!2216 = !DILocation(line: 907, column: 9, scope: !2205)
!2217 = !DILocation(line: 911, column: 7, scope: !2205)
!2218 = !DILocation(line: 913, column: 11, scope: !2147)
!2219 = !DILocation(line: 914, column: 5, scope: !2147)
!2220 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !410, file: !410, line: 925, type: !2221, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!97, !99, !75, !101}
!2223 = !{!2224, !2225, !2226}
!2224 = !DILocalVariable(name: "n", arg: 1, scope: !2220, file: !410, line: 925, type: !99)
!2225 = !DILocalVariable(name: "arg", arg: 2, scope: !2220, file: !410, line: 925, type: !75)
!2226 = !DILocalVariable(name: "argsize", arg: 3, scope: !2220, file: !410, line: 925, type: !101)
!2227 = !DILocation(line: 0, scope: !2220)
!2228 = !DILocation(line: 927, column: 10, scope: !2220)
!2229 = !DILocation(line: 927, column: 3, scope: !2220)
!2230 = distinct !DISubprogram(name: "quotearg", scope: !410, file: !410, line: 931, type: !905, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2231)
!2231 = !{!2232}
!2232 = !DILocalVariable(name: "arg", arg: 1, scope: !2230, file: !410, line: 931, type: !75)
!2233 = !DILocation(line: 0, scope: !2230)
!2234 = !DILocation(line: 0, scope: !2124, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 933, column: 10, scope: !2230)
!2236 = !DILocation(line: 921, column: 10, scope: !2124, inlinedAt: !2235)
!2237 = !DILocation(line: 933, column: 3, scope: !2230)
!2238 = distinct !DISubprogram(name: "quotearg_mem", scope: !410, file: !410, line: 937, type: !2239, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!97, !75, !101}
!2241 = !{!2242, !2243}
!2242 = !DILocalVariable(name: "arg", arg: 1, scope: !2238, file: !410, line: 937, type: !75)
!2243 = !DILocalVariable(name: "argsize", arg: 2, scope: !2238, file: !410, line: 937, type: !101)
!2244 = !DILocation(line: 0, scope: !2238)
!2245 = !DILocation(line: 0, scope: !2220, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 939, column: 10, scope: !2238)
!2247 = !DILocation(line: 927, column: 10, scope: !2220, inlinedAt: !2246)
!2248 = !DILocation(line: 939, column: 3, scope: !2238)
!2249 = distinct !DISubprogram(name: "quotearg_n_style", scope: !410, file: !410, line: 943, type: !2250, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2252)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!97, !99, !433, !75}
!2252 = !{!2253, !2254, !2255, !2256}
!2253 = !DILocalVariable(name: "n", arg: 1, scope: !2249, file: !410, line: 943, type: !99)
!2254 = !DILocalVariable(name: "s", arg: 2, scope: !2249, file: !410, line: 943, type: !433)
!2255 = !DILocalVariable(name: "arg", arg: 3, scope: !2249, file: !410, line: 943, type: !75)
!2256 = !DILocalVariable(name: "o", scope: !2249, file: !410, line: 945, type: !1350)
!2257 = distinct !DIAssignID()
!2258 = !DILocation(line: 0, scope: !2249)
!2259 = !DILocation(line: 945, column: 3, scope: !2249)
!2260 = !{!2261}
!2261 = distinct !{!2261, !2262, !"quoting_options_from_style: argument 0"}
!2262 = distinct !{!2262, !"quoting_options_from_style"}
!2263 = !DILocation(line: 945, column: 36, scope: !2249)
!2264 = !DILocalVariable(name: "style", arg: 1, scope: !2265, file: !410, line: 183, type: !433)
!2265 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !410, file: !410, line: 183, type: !2266, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!460, !433}
!2268 = !{!2264, !2269}
!2269 = !DILocalVariable(name: "o", scope: !2265, file: !410, line: 185, type: !460)
!2270 = !DILocation(line: 0, scope: !2265, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 945, column: 36, scope: !2249)
!2272 = !DILocation(line: 185, column: 26, scope: !2265, inlinedAt: !2271)
!2273 = distinct !DIAssignID()
!2274 = !DILocation(line: 186, column: 13, scope: !2275, inlinedAt: !2271)
!2275 = distinct !DILexicalBlock(scope: !2265, file: !410, line: 186, column: 7)
!2276 = !DILocation(line: 186, column: 7, scope: !2265, inlinedAt: !2271)
!2277 = !DILocation(line: 187, column: 5, scope: !2275, inlinedAt: !2271)
!2278 = !DILocation(line: 188, column: 11, scope: !2265, inlinedAt: !2271)
!2279 = distinct !DIAssignID()
!2280 = !DILocation(line: 946, column: 10, scope: !2249)
!2281 = !DILocation(line: 947, column: 1, scope: !2249)
!2282 = !DILocation(line: 946, column: 3, scope: !2249)
!2283 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !410, file: !410, line: 950, type: !2284, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2286)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!97, !99, !433, !75, !101}
!2286 = !{!2287, !2288, !2289, !2290, !2291}
!2287 = !DILocalVariable(name: "n", arg: 1, scope: !2283, file: !410, line: 950, type: !99)
!2288 = !DILocalVariable(name: "s", arg: 2, scope: !2283, file: !410, line: 950, type: !433)
!2289 = !DILocalVariable(name: "arg", arg: 3, scope: !2283, file: !410, line: 951, type: !75)
!2290 = !DILocalVariable(name: "argsize", arg: 4, scope: !2283, file: !410, line: 951, type: !101)
!2291 = !DILocalVariable(name: "o", scope: !2283, file: !410, line: 953, type: !1350)
!2292 = distinct !DIAssignID()
!2293 = !DILocation(line: 0, scope: !2283)
!2294 = !DILocation(line: 953, column: 3, scope: !2283)
!2295 = !{!2296}
!2296 = distinct !{!2296, !2297, !"quoting_options_from_style: argument 0"}
!2297 = distinct !{!2297, !"quoting_options_from_style"}
!2298 = !DILocation(line: 953, column: 36, scope: !2283)
!2299 = !DILocation(line: 0, scope: !2265, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 953, column: 36, scope: !2283)
!2301 = !DILocation(line: 185, column: 26, scope: !2265, inlinedAt: !2300)
!2302 = distinct !DIAssignID()
!2303 = !DILocation(line: 186, column: 13, scope: !2275, inlinedAt: !2300)
!2304 = !DILocation(line: 186, column: 7, scope: !2265, inlinedAt: !2300)
!2305 = !DILocation(line: 187, column: 5, scope: !2275, inlinedAt: !2300)
!2306 = !DILocation(line: 188, column: 11, scope: !2265, inlinedAt: !2300)
!2307 = distinct !DIAssignID()
!2308 = !DILocation(line: 954, column: 10, scope: !2283)
!2309 = !DILocation(line: 955, column: 1, scope: !2283)
!2310 = !DILocation(line: 954, column: 3, scope: !2283)
!2311 = distinct !DISubprogram(name: "quotearg_style", scope: !410, file: !410, line: 958, type: !2312, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2314)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!97, !433, !75}
!2314 = !{!2315, !2316}
!2315 = !DILocalVariable(name: "s", arg: 1, scope: !2311, file: !410, line: 958, type: !433)
!2316 = !DILocalVariable(name: "arg", arg: 2, scope: !2311, file: !410, line: 958, type: !75)
!2317 = distinct !DIAssignID()
!2318 = !DILocation(line: 0, scope: !2311)
!2319 = !DILocation(line: 0, scope: !2249, inlinedAt: !2320)
!2320 = distinct !DILocation(line: 960, column: 10, scope: !2311)
!2321 = !DILocation(line: 945, column: 3, scope: !2249, inlinedAt: !2320)
!2322 = !{!2323}
!2323 = distinct !{!2323, !2324, !"quoting_options_from_style: argument 0"}
!2324 = distinct !{!2324, !"quoting_options_from_style"}
!2325 = !DILocation(line: 945, column: 36, scope: !2249, inlinedAt: !2320)
!2326 = !DILocation(line: 0, scope: !2265, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 945, column: 36, scope: !2249, inlinedAt: !2320)
!2328 = !DILocation(line: 185, column: 26, scope: !2265, inlinedAt: !2327)
!2329 = distinct !DIAssignID()
!2330 = !DILocation(line: 186, column: 13, scope: !2275, inlinedAt: !2327)
!2331 = !DILocation(line: 186, column: 7, scope: !2265, inlinedAt: !2327)
!2332 = !DILocation(line: 187, column: 5, scope: !2275, inlinedAt: !2327)
!2333 = !DILocation(line: 188, column: 11, scope: !2265, inlinedAt: !2327)
!2334 = distinct !DIAssignID()
!2335 = !DILocation(line: 946, column: 10, scope: !2249, inlinedAt: !2320)
!2336 = !DILocation(line: 947, column: 1, scope: !2249, inlinedAt: !2320)
!2337 = !DILocation(line: 960, column: 3, scope: !2311)
!2338 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !410, file: !410, line: 964, type: !2339, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!97, !433, !75, !101}
!2341 = !{!2342, !2343, !2344}
!2342 = !DILocalVariable(name: "s", arg: 1, scope: !2338, file: !410, line: 964, type: !433)
!2343 = !DILocalVariable(name: "arg", arg: 2, scope: !2338, file: !410, line: 964, type: !75)
!2344 = !DILocalVariable(name: "argsize", arg: 3, scope: !2338, file: !410, line: 964, type: !101)
!2345 = distinct !DIAssignID()
!2346 = !DILocation(line: 0, scope: !2338)
!2347 = !DILocation(line: 0, scope: !2283, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 966, column: 10, scope: !2338)
!2349 = !DILocation(line: 953, column: 3, scope: !2283, inlinedAt: !2348)
!2350 = !{!2351}
!2351 = distinct !{!2351, !2352, !"quoting_options_from_style: argument 0"}
!2352 = distinct !{!2352, !"quoting_options_from_style"}
!2353 = !DILocation(line: 953, column: 36, scope: !2283, inlinedAt: !2348)
!2354 = !DILocation(line: 0, scope: !2265, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 953, column: 36, scope: !2283, inlinedAt: !2348)
!2356 = !DILocation(line: 185, column: 26, scope: !2265, inlinedAt: !2355)
!2357 = distinct !DIAssignID()
!2358 = !DILocation(line: 186, column: 13, scope: !2275, inlinedAt: !2355)
!2359 = !DILocation(line: 186, column: 7, scope: !2265, inlinedAt: !2355)
!2360 = !DILocation(line: 187, column: 5, scope: !2275, inlinedAt: !2355)
!2361 = !DILocation(line: 188, column: 11, scope: !2265, inlinedAt: !2355)
!2362 = distinct !DIAssignID()
!2363 = !DILocation(line: 954, column: 10, scope: !2283, inlinedAt: !2348)
!2364 = !DILocation(line: 955, column: 1, scope: !2283, inlinedAt: !2348)
!2365 = !DILocation(line: 966, column: 3, scope: !2338)
!2366 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !410, file: !410, line: 970, type: !2367, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2369)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!97, !75, !101, !4}
!2369 = !{!2370, !2371, !2372, !2373}
!2370 = !DILocalVariable(name: "arg", arg: 1, scope: !2366, file: !410, line: 970, type: !75)
!2371 = !DILocalVariable(name: "argsize", arg: 2, scope: !2366, file: !410, line: 970, type: !101)
!2372 = !DILocalVariable(name: "ch", arg: 3, scope: !2366, file: !410, line: 970, type: !4)
!2373 = !DILocalVariable(name: "options", scope: !2366, file: !410, line: 972, type: !460)
!2374 = distinct !DIAssignID()
!2375 = !DILocation(line: 0, scope: !2366)
!2376 = !DILocation(line: 972, column: 3, scope: !2366)
!2377 = !DILocation(line: 973, column: 13, scope: !2366)
!2378 = !{i64 0, i64 4, !746, i64 4, i64 4, !746, i64 8, i64 32, !755, i64 40, i64 8, !725, i64 48, i64 8, !725}
!2379 = distinct !DIAssignID()
!2380 = !DILocation(line: 0, scope: !1369, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 974, column: 3, scope: !2366)
!2382 = !DILocation(line: 147, column: 41, scope: !1369, inlinedAt: !2381)
!2383 = !DILocation(line: 147, column: 62, scope: !1369, inlinedAt: !2381)
!2384 = !DILocation(line: 147, column: 57, scope: !1369, inlinedAt: !2381)
!2385 = !DILocation(line: 148, column: 15, scope: !1369, inlinedAt: !2381)
!2386 = !DILocation(line: 149, column: 21, scope: !1369, inlinedAt: !2381)
!2387 = !DILocation(line: 149, column: 24, scope: !1369, inlinedAt: !2381)
!2388 = !DILocation(line: 150, column: 19, scope: !1369, inlinedAt: !2381)
!2389 = !DILocation(line: 150, column: 24, scope: !1369, inlinedAt: !2381)
!2390 = !DILocation(line: 150, column: 6, scope: !1369, inlinedAt: !2381)
!2391 = !DILocation(line: 975, column: 10, scope: !2366)
!2392 = !DILocation(line: 976, column: 1, scope: !2366)
!2393 = !DILocation(line: 975, column: 3, scope: !2366)
!2394 = distinct !DISubprogram(name: "quotearg_char", scope: !410, file: !410, line: 979, type: !2395, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!97, !75, !4}
!2397 = !{!2398, !2399}
!2398 = !DILocalVariable(name: "arg", arg: 1, scope: !2394, file: !410, line: 979, type: !75)
!2399 = !DILocalVariable(name: "ch", arg: 2, scope: !2394, file: !410, line: 979, type: !4)
!2400 = distinct !DIAssignID()
!2401 = !DILocation(line: 0, scope: !2394)
!2402 = !DILocation(line: 0, scope: !2366, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 981, column: 10, scope: !2394)
!2404 = !DILocation(line: 972, column: 3, scope: !2366, inlinedAt: !2403)
!2405 = !DILocation(line: 973, column: 13, scope: !2366, inlinedAt: !2403)
!2406 = distinct !DIAssignID()
!2407 = !DILocation(line: 0, scope: !1369, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 974, column: 3, scope: !2366, inlinedAt: !2403)
!2409 = !DILocation(line: 147, column: 41, scope: !1369, inlinedAt: !2408)
!2410 = !DILocation(line: 147, column: 62, scope: !1369, inlinedAt: !2408)
!2411 = !DILocation(line: 147, column: 57, scope: !1369, inlinedAt: !2408)
!2412 = !DILocation(line: 148, column: 15, scope: !1369, inlinedAt: !2408)
!2413 = !DILocation(line: 149, column: 21, scope: !1369, inlinedAt: !2408)
!2414 = !DILocation(line: 149, column: 24, scope: !1369, inlinedAt: !2408)
!2415 = !DILocation(line: 150, column: 19, scope: !1369, inlinedAt: !2408)
!2416 = !DILocation(line: 150, column: 24, scope: !1369, inlinedAt: !2408)
!2417 = !DILocation(line: 150, column: 6, scope: !1369, inlinedAt: !2408)
!2418 = !DILocation(line: 975, column: 10, scope: !2366, inlinedAt: !2403)
!2419 = !DILocation(line: 976, column: 1, scope: !2366, inlinedAt: !2403)
!2420 = !DILocation(line: 981, column: 3, scope: !2394)
!2421 = distinct !DISubprogram(name: "quotearg_colon", scope: !410, file: !410, line: 985, type: !905, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2422)
!2422 = !{!2423}
!2423 = !DILocalVariable(name: "arg", arg: 1, scope: !2421, file: !410, line: 985, type: !75)
!2424 = distinct !DIAssignID()
!2425 = !DILocation(line: 0, scope: !2421)
!2426 = !DILocation(line: 0, scope: !2394, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 987, column: 10, scope: !2421)
!2428 = !DILocation(line: 0, scope: !2366, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 981, column: 10, scope: !2394, inlinedAt: !2427)
!2430 = !DILocation(line: 972, column: 3, scope: !2366, inlinedAt: !2429)
!2431 = !DILocation(line: 973, column: 13, scope: !2366, inlinedAt: !2429)
!2432 = distinct !DIAssignID()
!2433 = !DILocation(line: 0, scope: !1369, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 974, column: 3, scope: !2366, inlinedAt: !2429)
!2435 = !DILocation(line: 147, column: 57, scope: !1369, inlinedAt: !2434)
!2436 = !DILocation(line: 149, column: 21, scope: !1369, inlinedAt: !2434)
!2437 = !DILocation(line: 150, column: 6, scope: !1369, inlinedAt: !2434)
!2438 = !DILocation(line: 975, column: 10, scope: !2366, inlinedAt: !2429)
!2439 = !DILocation(line: 976, column: 1, scope: !2366, inlinedAt: !2429)
!2440 = !DILocation(line: 987, column: 3, scope: !2421)
!2441 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !410, file: !410, line: 991, type: !2239, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2442)
!2442 = !{!2443, !2444}
!2443 = !DILocalVariable(name: "arg", arg: 1, scope: !2441, file: !410, line: 991, type: !75)
!2444 = !DILocalVariable(name: "argsize", arg: 2, scope: !2441, file: !410, line: 991, type: !101)
!2445 = distinct !DIAssignID()
!2446 = !DILocation(line: 0, scope: !2441)
!2447 = !DILocation(line: 0, scope: !2366, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 993, column: 10, scope: !2441)
!2449 = !DILocation(line: 972, column: 3, scope: !2366, inlinedAt: !2448)
!2450 = !DILocation(line: 973, column: 13, scope: !2366, inlinedAt: !2448)
!2451 = distinct !DIAssignID()
!2452 = !DILocation(line: 0, scope: !1369, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 974, column: 3, scope: !2366, inlinedAt: !2448)
!2454 = !DILocation(line: 147, column: 57, scope: !1369, inlinedAt: !2453)
!2455 = !DILocation(line: 149, column: 21, scope: !1369, inlinedAt: !2453)
!2456 = !DILocation(line: 150, column: 6, scope: !1369, inlinedAt: !2453)
!2457 = !DILocation(line: 975, column: 10, scope: !2366, inlinedAt: !2448)
!2458 = !DILocation(line: 976, column: 1, scope: !2366, inlinedAt: !2448)
!2459 = !DILocation(line: 993, column: 3, scope: !2441)
!2460 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !410, file: !410, line: 997, type: !2250, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2461)
!2461 = !{!2462, !2463, !2464, !2465}
!2462 = !DILocalVariable(name: "n", arg: 1, scope: !2460, file: !410, line: 997, type: !99)
!2463 = !DILocalVariable(name: "s", arg: 2, scope: !2460, file: !410, line: 997, type: !433)
!2464 = !DILocalVariable(name: "arg", arg: 3, scope: !2460, file: !410, line: 997, type: !75)
!2465 = !DILocalVariable(name: "options", scope: !2460, file: !410, line: 999, type: !460)
!2466 = distinct !DIAssignID()
!2467 = !DILocation(line: 0, scope: !2460)
!2468 = !DILocation(line: 185, column: 26, scope: !2265, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 1000, column: 13, scope: !2460)
!2470 = !DILocation(line: 999, column: 3, scope: !2460)
!2471 = !DILocation(line: 0, scope: !2265, inlinedAt: !2469)
!2472 = !DILocation(line: 186, column: 13, scope: !2275, inlinedAt: !2469)
!2473 = !DILocation(line: 186, column: 7, scope: !2265, inlinedAt: !2469)
!2474 = !DILocation(line: 187, column: 5, scope: !2275, inlinedAt: !2469)
!2475 = !{!2476}
!2476 = distinct !{!2476, !2477, !"quoting_options_from_style: argument 0"}
!2477 = distinct !{!2477, !"quoting_options_from_style"}
!2478 = !DILocation(line: 1000, column: 13, scope: !2460)
!2479 = distinct !DIAssignID()
!2480 = distinct !DIAssignID()
!2481 = !DILocation(line: 0, scope: !1369, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 1001, column: 3, scope: !2460)
!2483 = !DILocation(line: 147, column: 57, scope: !1369, inlinedAt: !2482)
!2484 = !DILocation(line: 149, column: 21, scope: !1369, inlinedAt: !2482)
!2485 = !DILocation(line: 150, column: 6, scope: !1369, inlinedAt: !2482)
!2486 = distinct !DIAssignID()
!2487 = !DILocation(line: 1002, column: 10, scope: !2460)
!2488 = !DILocation(line: 1003, column: 1, scope: !2460)
!2489 = !DILocation(line: 1002, column: 3, scope: !2460)
!2490 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !410, file: !410, line: 1006, type: !2491, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2493)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!97, !99, !75, !75, !75}
!2493 = !{!2494, !2495, !2496, !2497}
!2494 = !DILocalVariable(name: "n", arg: 1, scope: !2490, file: !410, line: 1006, type: !99)
!2495 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2490, file: !410, line: 1006, type: !75)
!2496 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2490, file: !410, line: 1007, type: !75)
!2497 = !DILocalVariable(name: "arg", arg: 4, scope: !2490, file: !410, line: 1007, type: !75)
!2498 = distinct !DIAssignID()
!2499 = !DILocation(line: 0, scope: !2490)
!2500 = !DILocalVariable(name: "o", scope: !2501, file: !410, line: 1018, type: !460)
!2501 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !410, file: !410, line: 1014, type: !2502, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!97, !99, !75, !75, !75, !101}
!2504 = !{!2505, !2506, !2507, !2508, !2509, !2500}
!2505 = !DILocalVariable(name: "n", arg: 1, scope: !2501, file: !410, line: 1014, type: !99)
!2506 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2501, file: !410, line: 1014, type: !75)
!2507 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2501, file: !410, line: 1015, type: !75)
!2508 = !DILocalVariable(name: "arg", arg: 4, scope: !2501, file: !410, line: 1016, type: !75)
!2509 = !DILocalVariable(name: "argsize", arg: 5, scope: !2501, file: !410, line: 1016, type: !101)
!2510 = !DILocation(line: 0, scope: !2501, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 1009, column: 10, scope: !2490)
!2512 = !DILocation(line: 1018, column: 3, scope: !2501, inlinedAt: !2511)
!2513 = !DILocation(line: 1018, column: 30, scope: !2501, inlinedAt: !2511)
!2514 = distinct !DIAssignID()
!2515 = distinct !DIAssignID()
!2516 = !DILocation(line: 0, scope: !1409, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 1019, column: 3, scope: !2501, inlinedAt: !2511)
!2518 = !DILocation(line: 174, column: 12, scope: !1409, inlinedAt: !2517)
!2519 = distinct !DIAssignID()
!2520 = !DILocation(line: 175, column: 8, scope: !1422, inlinedAt: !2517)
!2521 = !DILocation(line: 175, column: 19, scope: !1422, inlinedAt: !2517)
!2522 = !DILocation(line: 176, column: 5, scope: !1422, inlinedAt: !2517)
!2523 = !DILocation(line: 177, column: 6, scope: !1409, inlinedAt: !2517)
!2524 = !DILocation(line: 177, column: 17, scope: !1409, inlinedAt: !2517)
!2525 = distinct !DIAssignID()
!2526 = !DILocation(line: 178, column: 6, scope: !1409, inlinedAt: !2517)
!2527 = !DILocation(line: 178, column: 18, scope: !1409, inlinedAt: !2517)
!2528 = distinct !DIAssignID()
!2529 = !DILocation(line: 1020, column: 10, scope: !2501, inlinedAt: !2511)
!2530 = !DILocation(line: 1021, column: 1, scope: !2501, inlinedAt: !2511)
!2531 = !DILocation(line: 1009, column: 3, scope: !2490)
!2532 = distinct !DIAssignID()
!2533 = !DILocation(line: 0, scope: !2501)
!2534 = !DILocation(line: 1018, column: 3, scope: !2501)
!2535 = !DILocation(line: 1018, column: 30, scope: !2501)
!2536 = distinct !DIAssignID()
!2537 = distinct !DIAssignID()
!2538 = !DILocation(line: 0, scope: !1409, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 1019, column: 3, scope: !2501)
!2540 = !DILocation(line: 174, column: 12, scope: !1409, inlinedAt: !2539)
!2541 = distinct !DIAssignID()
!2542 = !DILocation(line: 175, column: 8, scope: !1422, inlinedAt: !2539)
!2543 = !DILocation(line: 175, column: 19, scope: !1422, inlinedAt: !2539)
!2544 = !DILocation(line: 176, column: 5, scope: !1422, inlinedAt: !2539)
!2545 = !DILocation(line: 177, column: 6, scope: !1409, inlinedAt: !2539)
!2546 = !DILocation(line: 177, column: 17, scope: !1409, inlinedAt: !2539)
!2547 = distinct !DIAssignID()
!2548 = !DILocation(line: 178, column: 6, scope: !1409, inlinedAt: !2539)
!2549 = !DILocation(line: 178, column: 18, scope: !1409, inlinedAt: !2539)
!2550 = distinct !DIAssignID()
!2551 = !DILocation(line: 1020, column: 10, scope: !2501)
!2552 = !DILocation(line: 1021, column: 1, scope: !2501)
!2553 = !DILocation(line: 1020, column: 3, scope: !2501)
!2554 = distinct !DISubprogram(name: "quotearg_custom", scope: !410, file: !410, line: 1024, type: !2555, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2557)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!97, !75, !75, !75}
!2557 = !{!2558, !2559, !2560}
!2558 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2554, file: !410, line: 1024, type: !75)
!2559 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2554, file: !410, line: 1024, type: !75)
!2560 = !DILocalVariable(name: "arg", arg: 3, scope: !2554, file: !410, line: 1025, type: !75)
!2561 = distinct !DIAssignID()
!2562 = !DILocation(line: 0, scope: !2554)
!2563 = !DILocation(line: 0, scope: !2490, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 1027, column: 10, scope: !2554)
!2565 = !DILocation(line: 0, scope: !2501, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 1009, column: 10, scope: !2490, inlinedAt: !2564)
!2567 = !DILocation(line: 1018, column: 3, scope: !2501, inlinedAt: !2566)
!2568 = !DILocation(line: 1018, column: 30, scope: !2501, inlinedAt: !2566)
!2569 = distinct !DIAssignID()
!2570 = distinct !DIAssignID()
!2571 = !DILocation(line: 0, scope: !1409, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 1019, column: 3, scope: !2501, inlinedAt: !2566)
!2573 = !DILocation(line: 174, column: 12, scope: !1409, inlinedAt: !2572)
!2574 = distinct !DIAssignID()
!2575 = !DILocation(line: 175, column: 8, scope: !1422, inlinedAt: !2572)
!2576 = !DILocation(line: 175, column: 19, scope: !1422, inlinedAt: !2572)
!2577 = !DILocation(line: 176, column: 5, scope: !1422, inlinedAt: !2572)
!2578 = !DILocation(line: 177, column: 6, scope: !1409, inlinedAt: !2572)
!2579 = !DILocation(line: 177, column: 17, scope: !1409, inlinedAt: !2572)
!2580 = distinct !DIAssignID()
!2581 = !DILocation(line: 178, column: 6, scope: !1409, inlinedAt: !2572)
!2582 = !DILocation(line: 178, column: 18, scope: !1409, inlinedAt: !2572)
!2583 = distinct !DIAssignID()
!2584 = !DILocation(line: 1020, column: 10, scope: !2501, inlinedAt: !2566)
!2585 = !DILocation(line: 1021, column: 1, scope: !2501, inlinedAt: !2566)
!2586 = !DILocation(line: 1027, column: 3, scope: !2554)
!2587 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !410, file: !410, line: 1031, type: !2588, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2590)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!97, !75, !75, !75, !101}
!2590 = !{!2591, !2592, !2593, !2594}
!2591 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2587, file: !410, line: 1031, type: !75)
!2592 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2587, file: !410, line: 1031, type: !75)
!2593 = !DILocalVariable(name: "arg", arg: 3, scope: !2587, file: !410, line: 1032, type: !75)
!2594 = !DILocalVariable(name: "argsize", arg: 4, scope: !2587, file: !410, line: 1032, type: !101)
!2595 = distinct !DIAssignID()
!2596 = !DILocation(line: 0, scope: !2587)
!2597 = !DILocation(line: 0, scope: !2501, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 1034, column: 10, scope: !2587)
!2599 = !DILocation(line: 1018, column: 3, scope: !2501, inlinedAt: !2598)
!2600 = !DILocation(line: 1018, column: 30, scope: !2501, inlinedAt: !2598)
!2601 = distinct !DIAssignID()
!2602 = distinct !DIAssignID()
!2603 = !DILocation(line: 0, scope: !1409, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 1019, column: 3, scope: !2501, inlinedAt: !2598)
!2605 = !DILocation(line: 174, column: 12, scope: !1409, inlinedAt: !2604)
!2606 = distinct !DIAssignID()
!2607 = !DILocation(line: 175, column: 8, scope: !1422, inlinedAt: !2604)
!2608 = !DILocation(line: 175, column: 19, scope: !1422, inlinedAt: !2604)
!2609 = !DILocation(line: 176, column: 5, scope: !1422, inlinedAt: !2604)
!2610 = !DILocation(line: 177, column: 6, scope: !1409, inlinedAt: !2604)
!2611 = !DILocation(line: 177, column: 17, scope: !1409, inlinedAt: !2604)
!2612 = distinct !DIAssignID()
!2613 = !DILocation(line: 178, column: 6, scope: !1409, inlinedAt: !2604)
!2614 = !DILocation(line: 178, column: 18, scope: !1409, inlinedAt: !2604)
!2615 = distinct !DIAssignID()
!2616 = !DILocation(line: 1020, column: 10, scope: !2501, inlinedAt: !2598)
!2617 = !DILocation(line: 1021, column: 1, scope: !2501, inlinedAt: !2598)
!2618 = !DILocation(line: 1034, column: 3, scope: !2587)
!2619 = distinct !DISubprogram(name: "quote_n_mem", scope: !410, file: !410, line: 1049, type: !2620, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2622)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!75, !99, !75, !101}
!2622 = !{!2623, !2624, !2625}
!2623 = !DILocalVariable(name: "n", arg: 1, scope: !2619, file: !410, line: 1049, type: !99)
!2624 = !DILocalVariable(name: "arg", arg: 2, scope: !2619, file: !410, line: 1049, type: !75)
!2625 = !DILocalVariable(name: "argsize", arg: 3, scope: !2619, file: !410, line: 1049, type: !101)
!2626 = !DILocation(line: 0, scope: !2619)
!2627 = !DILocation(line: 1051, column: 10, scope: !2619)
!2628 = !DILocation(line: 1051, column: 3, scope: !2619)
!2629 = distinct !DISubprogram(name: "quote_mem", scope: !410, file: !410, line: 1055, type: !2630, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2632)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!75, !75, !101}
!2632 = !{!2633, !2634}
!2633 = !DILocalVariable(name: "arg", arg: 1, scope: !2629, file: !410, line: 1055, type: !75)
!2634 = !DILocalVariable(name: "argsize", arg: 2, scope: !2629, file: !410, line: 1055, type: !101)
!2635 = !DILocation(line: 0, scope: !2629)
!2636 = !DILocation(line: 0, scope: !2619, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 1057, column: 10, scope: !2629)
!2638 = !DILocation(line: 1051, column: 10, scope: !2619, inlinedAt: !2637)
!2639 = !DILocation(line: 1057, column: 3, scope: !2629)
!2640 = distinct !DISubprogram(name: "quote_n", scope: !410, file: !410, line: 1061, type: !2641, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2643)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!75, !99, !75}
!2643 = !{!2644, !2645}
!2644 = !DILocalVariable(name: "n", arg: 1, scope: !2640, file: !410, line: 1061, type: !99)
!2645 = !DILocalVariable(name: "arg", arg: 2, scope: !2640, file: !410, line: 1061, type: !75)
!2646 = !DILocation(line: 0, scope: !2640)
!2647 = !DILocation(line: 0, scope: !2619, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 1063, column: 10, scope: !2640)
!2649 = !DILocation(line: 1051, column: 10, scope: !2619, inlinedAt: !2648)
!2650 = !DILocation(line: 1063, column: 3, scope: !2640)
!2651 = distinct !DISubprogram(name: "quote", scope: !410, file: !410, line: 1067, type: !2652, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2654)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!75, !75}
!2654 = !{!2655}
!2655 = !DILocalVariable(name: "arg", arg: 1, scope: !2651, file: !410, line: 1067, type: !75)
!2656 = !DILocation(line: 0, scope: !2651)
!2657 = !DILocation(line: 0, scope: !2640, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 1069, column: 10, scope: !2651)
!2659 = !DILocation(line: 0, scope: !2619, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 1063, column: 10, scope: !2640, inlinedAt: !2658)
!2661 = !DILocation(line: 1051, column: 10, scope: !2619, inlinedAt: !2660)
!2662 = !DILocation(line: 1069, column: 3, scope: !2651)
!2663 = distinct !DISubprogram(name: "version_etc_arn", scope: !523, file: !523, line: 61, type: !2664, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2701)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{null, !2666, !75, !75, !75, !2700, !101}
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !2668)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !2669)
!2669 = !{!2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2668, file: !235, line: 51, baseType: !99, size: 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2668, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2668, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2668, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2668, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2668, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2668, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2668, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2668, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2668, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2668, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2668, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2668, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2668, file: !235, line: 70, baseType: !2684, size: 64, offset: 832)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2668, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2668, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2668, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2668, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2668, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2668, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2668, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2668, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2668, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2668, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2668, file: !235, line: 93, baseType: !2684, size: 64, offset: 1344)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2668, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2668, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2668, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2668, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!2701 = !{!2702, !2703, !2704, !2705, !2706, !2707}
!2702 = !DILocalVariable(name: "stream", arg: 1, scope: !2663, file: !523, line: 61, type: !2666)
!2703 = !DILocalVariable(name: "command_name", arg: 2, scope: !2663, file: !523, line: 62, type: !75)
!2704 = !DILocalVariable(name: "package", arg: 3, scope: !2663, file: !523, line: 62, type: !75)
!2705 = !DILocalVariable(name: "version", arg: 4, scope: !2663, file: !523, line: 63, type: !75)
!2706 = !DILocalVariable(name: "authors", arg: 5, scope: !2663, file: !523, line: 64, type: !2700)
!2707 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2663, file: !523, line: 64, type: !101)
!2708 = !DILocation(line: 0, scope: !2663)
!2709 = !DILocation(line: 66, column: 7, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2663, file: !523, line: 66, column: 7)
!2711 = !DILocation(line: 66, column: 7, scope: !2663)
!2712 = !DILocation(line: 67, column: 5, scope: !2710)
!2713 = !DILocation(line: 69, column: 5, scope: !2710)
!2714 = !DILocation(line: 83, column: 3, scope: !2663)
!2715 = !DILocation(line: 85, column: 3, scope: !2663)
!2716 = !DILocation(line: 88, column: 3, scope: !2663)
!2717 = !DILocation(line: 95, column: 3, scope: !2663)
!2718 = !DILocation(line: 97, column: 3, scope: !2663)
!2719 = !DILocation(line: 105, column: 7, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2663, file: !523, line: 98, column: 5)
!2721 = !DILocation(line: 106, column: 7, scope: !2720)
!2722 = !DILocation(line: 109, column: 7, scope: !2720)
!2723 = !DILocation(line: 110, column: 7, scope: !2720)
!2724 = !DILocation(line: 113, column: 7, scope: !2720)
!2725 = !DILocation(line: 115, column: 7, scope: !2720)
!2726 = !DILocation(line: 120, column: 7, scope: !2720)
!2727 = !DILocation(line: 122, column: 7, scope: !2720)
!2728 = !DILocation(line: 127, column: 7, scope: !2720)
!2729 = !DILocation(line: 129, column: 7, scope: !2720)
!2730 = !DILocation(line: 134, column: 7, scope: !2720)
!2731 = !DILocation(line: 137, column: 7, scope: !2720)
!2732 = !DILocation(line: 142, column: 7, scope: !2720)
!2733 = !DILocation(line: 145, column: 7, scope: !2720)
!2734 = !DILocation(line: 150, column: 7, scope: !2720)
!2735 = !DILocation(line: 154, column: 7, scope: !2720)
!2736 = !DILocation(line: 159, column: 7, scope: !2720)
!2737 = !DILocation(line: 163, column: 7, scope: !2720)
!2738 = !DILocation(line: 170, column: 7, scope: !2720)
!2739 = !DILocation(line: 174, column: 7, scope: !2720)
!2740 = !DILocation(line: 176, column: 1, scope: !2663)
!2741 = distinct !DISubprogram(name: "version_etc_ar", scope: !523, file: !523, line: 183, type: !2742, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2744)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{null, !2666, !75, !75, !75, !2700}
!2744 = !{!2745, !2746, !2747, !2748, !2749, !2750}
!2745 = !DILocalVariable(name: "stream", arg: 1, scope: !2741, file: !523, line: 183, type: !2666)
!2746 = !DILocalVariable(name: "command_name", arg: 2, scope: !2741, file: !523, line: 184, type: !75)
!2747 = !DILocalVariable(name: "package", arg: 3, scope: !2741, file: !523, line: 184, type: !75)
!2748 = !DILocalVariable(name: "version", arg: 4, scope: !2741, file: !523, line: 185, type: !75)
!2749 = !DILocalVariable(name: "authors", arg: 5, scope: !2741, file: !523, line: 185, type: !2700)
!2750 = !DILocalVariable(name: "n_authors", scope: !2741, file: !523, line: 187, type: !101)
!2751 = !DILocation(line: 0, scope: !2741)
!2752 = !DILocation(line: 189, column: 8, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2741, file: !523, line: 189, column: 3)
!2754 = !DILocation(line: 189, scope: !2753)
!2755 = !DILocation(line: 189, column: 23, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2753, file: !523, line: 189, column: 3)
!2757 = !DILocation(line: 189, column: 3, scope: !2753)
!2758 = !DILocation(line: 189, column: 52, scope: !2756)
!2759 = distinct !{!2759, !2757, !2760, !793}
!2760 = !DILocation(line: 190, column: 5, scope: !2753)
!2761 = !DILocation(line: 191, column: 3, scope: !2741)
!2762 = !DILocation(line: 192, column: 1, scope: !2741)
!2763 = distinct !DISubprogram(name: "version_etc_va", scope: !523, file: !523, line: 199, type: !2764, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2776)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{null, !2666, !75, !75, !75, !2766}
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !325, line: 52, baseType: !2767)
!2767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !327, line: 12, baseType: !2768)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !523, baseType: !2769)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2770)
!2770 = !{!2771, !2772, !2773, !2774, !2775}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2769, file: !523, line: 192, baseType: !98, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2769, file: !523, line: 192, baseType: !98, size: 64, offset: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2769, file: !523, line: 192, baseType: !98, size: 64, offset: 128)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2769, file: !523, line: 192, baseType: !99, size: 32, offset: 192)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2769, file: !523, line: 192, baseType: !99, size: 32, offset: 224)
!2776 = !{!2777, !2778, !2779, !2780, !2781, !2782, !2783}
!2777 = !DILocalVariable(name: "stream", arg: 1, scope: !2763, file: !523, line: 199, type: !2666)
!2778 = !DILocalVariable(name: "command_name", arg: 2, scope: !2763, file: !523, line: 200, type: !75)
!2779 = !DILocalVariable(name: "package", arg: 3, scope: !2763, file: !523, line: 200, type: !75)
!2780 = !DILocalVariable(name: "version", arg: 4, scope: !2763, file: !523, line: 201, type: !75)
!2781 = !DILocalVariable(name: "authors", arg: 5, scope: !2763, file: !523, line: 201, type: !2766)
!2782 = !DILocalVariable(name: "n_authors", scope: !2763, file: !523, line: 203, type: !101)
!2783 = !DILocalVariable(name: "authtab", scope: !2763, file: !523, line: 204, type: !2784)
!2784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 640, elements: !45)
!2785 = distinct !DIAssignID()
!2786 = !DILocation(line: 0, scope: !2763)
!2787 = !DILocation(line: 204, column: 3, scope: !2763)
!2788 = !DILocation(line: 208, column: 35, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !523, line: 206, column: 3)
!2790 = distinct !DILexicalBlock(scope: !2763, file: !523, line: 206, column: 3)
!2791 = !DILocation(line: 208, column: 33, scope: !2789)
!2792 = !DILocation(line: 208, column: 67, scope: !2789)
!2793 = !DILocation(line: 206, column: 3, scope: !2790)
!2794 = !DILocation(line: 208, column: 14, scope: !2789)
!2795 = !DILocation(line: 0, scope: !2790)
!2796 = !DILocation(line: 211, column: 3, scope: !2763)
!2797 = !DILocation(line: 213, column: 1, scope: !2763)
!2798 = distinct !DISubprogram(name: "version_etc", scope: !523, file: !523, line: 230, type: !2799, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2801)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{null, !2666, !75, !75, !75, null}
!2801 = !{!2802, !2803, !2804, !2805, !2806}
!2802 = !DILocalVariable(name: "stream", arg: 1, scope: !2798, file: !523, line: 230, type: !2666)
!2803 = !DILocalVariable(name: "command_name", arg: 2, scope: !2798, file: !523, line: 231, type: !75)
!2804 = !DILocalVariable(name: "package", arg: 3, scope: !2798, file: !523, line: 231, type: !75)
!2805 = !DILocalVariable(name: "version", arg: 4, scope: !2798, file: !523, line: 232, type: !75)
!2806 = !DILocalVariable(name: "authors", scope: !2798, file: !523, line: 234, type: !2766)
!2807 = distinct !DIAssignID()
!2808 = !DILocation(line: 0, scope: !2798)
!2809 = !DILocation(line: 234, column: 3, scope: !2798)
!2810 = !DILocation(line: 235, column: 3, scope: !2798)
!2811 = !DILocation(line: 236, column: 3, scope: !2798)
!2812 = !DILocation(line: 237, column: 3, scope: !2798)
!2813 = !DILocation(line: 238, column: 1, scope: !2798)
!2814 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !523, file: !523, line: 241, type: !365, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649)
!2815 = !DILocation(line: 243, column: 3, scope: !2814)
!2816 = !DILocation(line: 248, column: 3, scope: !2814)
!2817 = !DILocation(line: 254, column: 3, scope: !2814)
!2818 = !DILocation(line: 259, column: 3, scope: !2814)
!2819 = !DILocation(line: 261, column: 1, scope: !2814)
!2820 = distinct !DISubprogram(name: "xnrealloc", scope: !2821, file: !2821, line: 147, type: !2822, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2824)
!2821 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!98, !98, !101, !101}
!2824 = !{!2825, !2826, !2827}
!2825 = !DILocalVariable(name: "p", arg: 1, scope: !2820, file: !2821, line: 147, type: !98)
!2826 = !DILocalVariable(name: "n", arg: 2, scope: !2820, file: !2821, line: 147, type: !101)
!2827 = !DILocalVariable(name: "s", arg: 3, scope: !2820, file: !2821, line: 147, type: !101)
!2828 = !DILocation(line: 0, scope: !2820)
!2829 = !DILocalVariable(name: "p", arg: 1, scope: !2830, file: !657, line: 83, type: !98)
!2830 = distinct !DISubprogram(name: "xreallocarray", scope: !657, file: !657, line: 83, type: !2822, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2831)
!2831 = !{!2829, !2832, !2833}
!2832 = !DILocalVariable(name: "n", arg: 2, scope: !2830, file: !657, line: 83, type: !101)
!2833 = !DILocalVariable(name: "s", arg: 3, scope: !2830, file: !657, line: 83, type: !101)
!2834 = !DILocation(line: 0, scope: !2830, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 149, column: 10, scope: !2820)
!2836 = !DILocation(line: 85, column: 25, scope: !2830, inlinedAt: !2835)
!2837 = !DILocalVariable(name: "p", arg: 1, scope: !2838, file: !657, line: 37, type: !98)
!2838 = distinct !DISubprogram(name: "check_nonnull", scope: !657, file: !657, line: 37, type: !2839, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2841)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!98, !98}
!2841 = !{!2837}
!2842 = !DILocation(line: 0, scope: !2838, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 85, column: 10, scope: !2830, inlinedAt: !2835)
!2844 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !2843)
!2845 = distinct !DILexicalBlock(scope: !2838, file: !657, line: 39, column: 7)
!2846 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !2843)
!2847 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !2843)
!2848 = !DILocation(line: 149, column: 3, scope: !2820)
!2849 = !DILocation(line: 0, scope: !2830)
!2850 = !DILocation(line: 85, column: 25, scope: !2830)
!2851 = !DILocation(line: 0, scope: !2838, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 85, column: 10, scope: !2830)
!2853 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !2852)
!2854 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !2852)
!2855 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !2852)
!2856 = !DILocation(line: 85, column: 3, scope: !2830)
!2857 = distinct !DISubprogram(name: "xmalloc", scope: !657, file: !657, line: 47, type: !2858, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2860)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!98, !101}
!2860 = !{!2861}
!2861 = !DILocalVariable(name: "s", arg: 1, scope: !2857, file: !657, line: 47, type: !101)
!2862 = !DILocation(line: 0, scope: !2857)
!2863 = !DILocation(line: 49, column: 25, scope: !2857)
!2864 = !DILocation(line: 0, scope: !2838, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 49, column: 10, scope: !2857)
!2866 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !2865)
!2867 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !2865)
!2868 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !2865)
!2869 = !DILocation(line: 49, column: 3, scope: !2857)
!2870 = !DISubprogram(name: "malloc", scope: !891, file: !891, line: 540, type: !2858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2871 = distinct !DISubprogram(name: "ximalloc", scope: !657, file: !657, line: 53, type: !2872, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!98, !676}
!2874 = !{!2875}
!2875 = !DILocalVariable(name: "s", arg: 1, scope: !2871, file: !657, line: 53, type: !676)
!2876 = !DILocation(line: 0, scope: !2871)
!2877 = !DILocalVariable(name: "s", arg: 1, scope: !2878, file: !2879, line: 55, type: !676)
!2878 = distinct !DISubprogram(name: "imalloc", scope: !2879, file: !2879, line: 55, type: !2872, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2880)
!2879 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2880 = !{!2877}
!2881 = !DILocation(line: 0, scope: !2878, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 55, column: 25, scope: !2871)
!2883 = !DILocation(line: 57, column: 26, scope: !2878, inlinedAt: !2882)
!2884 = !DILocation(line: 0, scope: !2838, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 55, column: 10, scope: !2871)
!2886 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !2885)
!2887 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !2885)
!2888 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !2885)
!2889 = !DILocation(line: 55, column: 3, scope: !2871)
!2890 = distinct !DISubprogram(name: "xcharalloc", scope: !657, file: !657, line: 59, type: !2891, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2893)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!97, !101}
!2893 = !{!2894}
!2894 = !DILocalVariable(name: "n", arg: 1, scope: !2890, file: !657, line: 59, type: !101)
!2895 = !DILocation(line: 0, scope: !2890)
!2896 = !DILocation(line: 0, scope: !2857, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 61, column: 10, scope: !2890)
!2898 = !DILocation(line: 49, column: 25, scope: !2857, inlinedAt: !2897)
!2899 = !DILocation(line: 0, scope: !2838, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 49, column: 10, scope: !2857, inlinedAt: !2897)
!2901 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !2900)
!2902 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !2900)
!2903 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !2900)
!2904 = !DILocation(line: 61, column: 3, scope: !2890)
!2905 = distinct !DISubprogram(name: "xrealloc", scope: !657, file: !657, line: 68, type: !2906, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2908)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!98, !98, !101}
!2908 = !{!2909, !2910}
!2909 = !DILocalVariable(name: "p", arg: 1, scope: !2905, file: !657, line: 68, type: !98)
!2910 = !DILocalVariable(name: "s", arg: 2, scope: !2905, file: !657, line: 68, type: !101)
!2911 = !DILocation(line: 0, scope: !2905)
!2912 = !DILocalVariable(name: "ptr", arg: 1, scope: !2913, file: !2914, line: 2057, type: !98)
!2913 = distinct !DISubprogram(name: "rpl_realloc", scope: !2914, file: !2914, line: 2057, type: !2906, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2915)
!2914 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2915 = !{!2912, !2916}
!2916 = !DILocalVariable(name: "size", arg: 2, scope: !2913, file: !2914, line: 2057, type: !101)
!2917 = !DILocation(line: 0, scope: !2913, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 70, column: 25, scope: !2905)
!2919 = !DILocation(line: 2059, column: 24, scope: !2913, inlinedAt: !2918)
!2920 = !DILocation(line: 2059, column: 10, scope: !2913, inlinedAt: !2918)
!2921 = !DILocation(line: 0, scope: !2838, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 70, column: 10, scope: !2905)
!2923 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !2922)
!2924 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !2922)
!2925 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !2922)
!2926 = !DILocation(line: 70, column: 3, scope: !2905)
!2927 = !DISubprogram(name: "realloc", scope: !891, file: !891, line: 551, type: !2906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2928 = distinct !DISubprogram(name: "xirealloc", scope: !657, file: !657, line: 74, type: !2929, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!98, !98, !676}
!2931 = !{!2932, !2933}
!2932 = !DILocalVariable(name: "p", arg: 1, scope: !2928, file: !657, line: 74, type: !98)
!2933 = !DILocalVariable(name: "s", arg: 2, scope: !2928, file: !657, line: 74, type: !676)
!2934 = !DILocation(line: 0, scope: !2928)
!2935 = !DILocalVariable(name: "p", arg: 1, scope: !2936, file: !2879, line: 66, type: !98)
!2936 = distinct !DISubprogram(name: "irealloc", scope: !2879, file: !2879, line: 66, type: !2929, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2937)
!2937 = !{!2935, !2938}
!2938 = !DILocalVariable(name: "s", arg: 2, scope: !2936, file: !2879, line: 66, type: !676)
!2939 = !DILocation(line: 0, scope: !2936, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 76, column: 25, scope: !2928)
!2941 = !DILocation(line: 0, scope: !2913, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 68, column: 26, scope: !2936, inlinedAt: !2940)
!2943 = !DILocation(line: 2059, column: 24, scope: !2913, inlinedAt: !2942)
!2944 = !DILocation(line: 2059, column: 10, scope: !2913, inlinedAt: !2942)
!2945 = !DILocation(line: 0, scope: !2838, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 76, column: 10, scope: !2928)
!2947 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !2946)
!2948 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !2946)
!2949 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !2946)
!2950 = !DILocation(line: 76, column: 3, scope: !2928)
!2951 = distinct !DISubprogram(name: "xireallocarray", scope: !657, file: !657, line: 89, type: !2952, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2954)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!98, !98, !676, !676}
!2954 = !{!2955, !2956, !2957}
!2955 = !DILocalVariable(name: "p", arg: 1, scope: !2951, file: !657, line: 89, type: !98)
!2956 = !DILocalVariable(name: "n", arg: 2, scope: !2951, file: !657, line: 89, type: !676)
!2957 = !DILocalVariable(name: "s", arg: 3, scope: !2951, file: !657, line: 89, type: !676)
!2958 = !DILocation(line: 0, scope: !2951)
!2959 = !DILocalVariable(name: "p", arg: 1, scope: !2960, file: !2879, line: 98, type: !98)
!2960 = distinct !DISubprogram(name: "ireallocarray", scope: !2879, file: !2879, line: 98, type: !2952, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2961)
!2961 = !{!2959, !2962, !2963}
!2962 = !DILocalVariable(name: "n", arg: 2, scope: !2960, file: !2879, line: 98, type: !676)
!2963 = !DILocalVariable(name: "s", arg: 3, scope: !2960, file: !2879, line: 98, type: !676)
!2964 = !DILocation(line: 0, scope: !2960, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 91, column: 25, scope: !2951)
!2966 = !DILocation(line: 101, column: 13, scope: !2960, inlinedAt: !2965)
!2967 = !DILocation(line: 0, scope: !2838, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 91, column: 10, scope: !2951)
!2969 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !2968)
!2970 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !2968)
!2971 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !2968)
!2972 = !DILocation(line: 91, column: 3, scope: !2951)
!2973 = distinct !DISubprogram(name: "xnmalloc", scope: !657, file: !657, line: 98, type: !2974, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!98, !101, !101}
!2976 = !{!2977, !2978}
!2977 = !DILocalVariable(name: "n", arg: 1, scope: !2973, file: !657, line: 98, type: !101)
!2978 = !DILocalVariable(name: "s", arg: 2, scope: !2973, file: !657, line: 98, type: !101)
!2979 = !DILocation(line: 0, scope: !2973)
!2980 = !DILocation(line: 0, scope: !2830, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 100, column: 10, scope: !2973)
!2982 = !DILocation(line: 85, column: 25, scope: !2830, inlinedAt: !2981)
!2983 = !DILocation(line: 0, scope: !2838, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 85, column: 10, scope: !2830, inlinedAt: !2981)
!2985 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !2984)
!2986 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !2984)
!2987 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !2984)
!2988 = !DILocation(line: 100, column: 3, scope: !2973)
!2989 = distinct !DISubprogram(name: "xinmalloc", scope: !657, file: !657, line: 104, type: !2990, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!98, !676, !676}
!2992 = !{!2993, !2994}
!2993 = !DILocalVariable(name: "n", arg: 1, scope: !2989, file: !657, line: 104, type: !676)
!2994 = !DILocalVariable(name: "s", arg: 2, scope: !2989, file: !657, line: 104, type: !676)
!2995 = !DILocation(line: 0, scope: !2989)
!2996 = !DILocation(line: 0, scope: !2951, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 106, column: 10, scope: !2989)
!2998 = !DILocation(line: 0, scope: !2960, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 91, column: 25, scope: !2951, inlinedAt: !2997)
!3000 = !DILocation(line: 101, column: 13, scope: !2960, inlinedAt: !2999)
!3001 = !DILocation(line: 0, scope: !2838, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 91, column: 10, scope: !2951, inlinedAt: !2997)
!3003 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !3002)
!3004 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !3002)
!3005 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !3002)
!3006 = !DILocation(line: 106, column: 3, scope: !2989)
!3007 = distinct !DISubprogram(name: "x2realloc", scope: !657, file: !657, line: 116, type: !3008, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3010)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!98, !98, !663}
!3010 = !{!3011, !3012}
!3011 = !DILocalVariable(name: "p", arg: 1, scope: !3007, file: !657, line: 116, type: !98)
!3012 = !DILocalVariable(name: "ps", arg: 2, scope: !3007, file: !657, line: 116, type: !663)
!3013 = !DILocation(line: 0, scope: !3007)
!3014 = !DILocation(line: 0, scope: !660, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 118, column: 10, scope: !3007)
!3016 = !DILocation(line: 178, column: 14, scope: !660, inlinedAt: !3015)
!3017 = !DILocation(line: 180, column: 9, scope: !3018, inlinedAt: !3015)
!3018 = distinct !DILexicalBlock(scope: !660, file: !657, line: 180, column: 7)
!3019 = !DILocation(line: 180, column: 7, scope: !660, inlinedAt: !3015)
!3020 = !DILocation(line: 182, column: 13, scope: !3021, inlinedAt: !3015)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !657, line: 182, column: 11)
!3022 = distinct !DILexicalBlock(scope: !3018, file: !657, line: 181, column: 5)
!3023 = !DILocation(line: 182, column: 11, scope: !3022, inlinedAt: !3015)
!3024 = !DILocation(line: 197, column: 11, scope: !3025, inlinedAt: !3015)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !657, line: 197, column: 11)
!3026 = distinct !DILexicalBlock(scope: !3018, file: !657, line: 195, column: 5)
!3027 = !DILocation(line: 197, column: 11, scope: !3026, inlinedAt: !3015)
!3028 = !DILocation(line: 198, column: 9, scope: !3025, inlinedAt: !3015)
!3029 = !DILocation(line: 0, scope: !2830, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 201, column: 7, scope: !660, inlinedAt: !3015)
!3031 = !DILocation(line: 85, column: 25, scope: !2830, inlinedAt: !3030)
!3032 = !DILocation(line: 0, scope: !2838, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 85, column: 10, scope: !2830, inlinedAt: !3030)
!3034 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !3033)
!3035 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !3033)
!3036 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !3033)
!3037 = !DILocation(line: 202, column: 7, scope: !660, inlinedAt: !3015)
!3038 = !DILocation(line: 118, column: 3, scope: !3007)
!3039 = !DILocation(line: 0, scope: !660)
!3040 = !DILocation(line: 178, column: 14, scope: !660)
!3041 = !DILocation(line: 180, column: 9, scope: !3018)
!3042 = !DILocation(line: 180, column: 7, scope: !660)
!3043 = !DILocation(line: 182, column: 13, scope: !3021)
!3044 = !DILocation(line: 182, column: 11, scope: !3022)
!3045 = !DILocation(line: 190, column: 30, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3021, file: !657, line: 183, column: 9)
!3047 = !DILocation(line: 191, column: 16, scope: !3046)
!3048 = !DILocation(line: 191, column: 13, scope: !3046)
!3049 = !DILocation(line: 192, column: 9, scope: !3046)
!3050 = !DILocation(line: 197, column: 11, scope: !3025)
!3051 = !DILocation(line: 197, column: 11, scope: !3026)
!3052 = !DILocation(line: 198, column: 9, scope: !3025)
!3053 = !DILocation(line: 0, scope: !2830, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 201, column: 7, scope: !660)
!3055 = !DILocation(line: 85, column: 25, scope: !2830, inlinedAt: !3054)
!3056 = !DILocation(line: 0, scope: !2838, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 85, column: 10, scope: !2830, inlinedAt: !3054)
!3058 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !3057)
!3059 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !3057)
!3060 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !3057)
!3061 = !DILocation(line: 202, column: 7, scope: !660)
!3062 = !DILocation(line: 203, column: 3, scope: !660)
!3063 = !DILocation(line: 0, scope: !672)
!3064 = !DILocation(line: 230, column: 14, scope: !672)
!3065 = !DILocation(line: 238, column: 7, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !672, file: !657, line: 238, column: 7)
!3067 = !DILocation(line: 238, column: 7, scope: !672)
!3068 = !DILocation(line: 240, column: 9, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !672, file: !657, line: 240, column: 7)
!3070 = !DILocation(line: 240, column: 18, scope: !3069)
!3071 = !DILocation(line: 253, column: 8, scope: !672)
!3072 = !DILocation(line: 256, column: 7, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !672, file: !657, line: 256, column: 7)
!3074 = !DILocation(line: 256, column: 7, scope: !672)
!3075 = !DILocation(line: 258, column: 27, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3073, file: !657, line: 257, column: 5)
!3077 = !DILocation(line: 259, column: 32, scope: !3076)
!3078 = !DILocation(line: 260, column: 5, scope: !3076)
!3079 = !DILocation(line: 262, column: 9, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !672, file: !657, line: 262, column: 7)
!3081 = !DILocation(line: 262, column: 7, scope: !672)
!3082 = !DILocation(line: 263, column: 9, scope: !3080)
!3083 = !DILocation(line: 263, column: 5, scope: !3080)
!3084 = !DILocation(line: 264, column: 9, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !672, file: !657, line: 264, column: 7)
!3086 = !DILocation(line: 264, column: 14, scope: !3085)
!3087 = !DILocation(line: 265, column: 7, scope: !3085)
!3088 = !DILocation(line: 265, column: 11, scope: !3085)
!3089 = !DILocation(line: 266, column: 11, scope: !3085)
!3090 = !DILocation(line: 267, column: 14, scope: !3085)
!3091 = !DILocation(line: 264, column: 7, scope: !672)
!3092 = !DILocation(line: 268, column: 5, scope: !3085)
!3093 = !DILocation(line: 0, scope: !2905, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 269, column: 8, scope: !672)
!3095 = !DILocation(line: 0, scope: !2913, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 70, column: 25, scope: !2905, inlinedAt: !3094)
!3097 = !DILocation(line: 2059, column: 24, scope: !2913, inlinedAt: !3096)
!3098 = !DILocation(line: 2059, column: 10, scope: !2913, inlinedAt: !3096)
!3099 = !DILocation(line: 0, scope: !2838, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 70, column: 10, scope: !2905, inlinedAt: !3094)
!3101 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !3100)
!3102 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !3100)
!3103 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !3100)
!3104 = !DILocation(line: 270, column: 7, scope: !672)
!3105 = !DILocation(line: 271, column: 3, scope: !672)
!3106 = distinct !DISubprogram(name: "xzalloc", scope: !657, file: !657, line: 279, type: !2858, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3107)
!3107 = !{!3108}
!3108 = !DILocalVariable(name: "s", arg: 1, scope: !3106, file: !657, line: 279, type: !101)
!3109 = !DILocation(line: 0, scope: !3106)
!3110 = !DILocalVariable(name: "n", arg: 1, scope: !3111, file: !657, line: 294, type: !101)
!3111 = distinct !DISubprogram(name: "xcalloc", scope: !657, file: !657, line: 294, type: !2974, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3112)
!3112 = !{!3110, !3113}
!3113 = !DILocalVariable(name: "s", arg: 2, scope: !3111, file: !657, line: 294, type: !101)
!3114 = !DILocation(line: 0, scope: !3111, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 281, column: 10, scope: !3106)
!3116 = !DILocation(line: 296, column: 25, scope: !3111, inlinedAt: !3115)
!3117 = !DILocation(line: 0, scope: !2838, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 296, column: 10, scope: !3111, inlinedAt: !3115)
!3119 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !3118)
!3120 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !3118)
!3121 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !3118)
!3122 = !DILocation(line: 281, column: 3, scope: !3106)
!3123 = !DISubprogram(name: "calloc", scope: !891, file: !891, line: 543, type: !2974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3124 = !DILocation(line: 0, scope: !3111)
!3125 = !DILocation(line: 296, column: 25, scope: !3111)
!3126 = !DILocation(line: 0, scope: !2838, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 296, column: 10, scope: !3111)
!3128 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !3127)
!3129 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !3127)
!3130 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !3127)
!3131 = !DILocation(line: 296, column: 3, scope: !3111)
!3132 = distinct !DISubprogram(name: "xizalloc", scope: !657, file: !657, line: 285, type: !2872, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3133)
!3133 = !{!3134}
!3134 = !DILocalVariable(name: "s", arg: 1, scope: !3132, file: !657, line: 285, type: !676)
!3135 = !DILocation(line: 0, scope: !3132)
!3136 = !DILocalVariable(name: "n", arg: 1, scope: !3137, file: !657, line: 300, type: !676)
!3137 = distinct !DISubprogram(name: "xicalloc", scope: !657, file: !657, line: 300, type: !2990, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3138)
!3138 = !{!3136, !3139}
!3139 = !DILocalVariable(name: "s", arg: 2, scope: !3137, file: !657, line: 300, type: !676)
!3140 = !DILocation(line: 0, scope: !3137, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 287, column: 10, scope: !3132)
!3142 = !DILocalVariable(name: "n", arg: 1, scope: !3143, file: !2879, line: 77, type: !676)
!3143 = distinct !DISubprogram(name: "icalloc", scope: !2879, file: !2879, line: 77, type: !2990, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3144)
!3144 = !{!3142, !3145}
!3145 = !DILocalVariable(name: "s", arg: 2, scope: !3143, file: !2879, line: 77, type: !676)
!3146 = !DILocation(line: 0, scope: !3143, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 302, column: 25, scope: !3137, inlinedAt: !3141)
!3148 = !DILocation(line: 91, column: 10, scope: !3143, inlinedAt: !3147)
!3149 = !DILocation(line: 0, scope: !2838, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 302, column: 10, scope: !3137, inlinedAt: !3141)
!3151 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !3150)
!3152 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !3150)
!3153 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !3150)
!3154 = !DILocation(line: 287, column: 3, scope: !3132)
!3155 = !DILocation(line: 0, scope: !3137)
!3156 = !DILocation(line: 0, scope: !3143, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 302, column: 25, scope: !3137)
!3158 = !DILocation(line: 91, column: 10, scope: !3143, inlinedAt: !3157)
!3159 = !DILocation(line: 0, scope: !2838, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 302, column: 10, scope: !3137)
!3161 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !3160)
!3162 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !3160)
!3163 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !3160)
!3164 = !DILocation(line: 302, column: 3, scope: !3137)
!3165 = distinct !DISubprogram(name: "xmemdup", scope: !657, file: !657, line: 310, type: !3166, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!98, !927, !101}
!3168 = !{!3169, !3170}
!3169 = !DILocalVariable(name: "p", arg: 1, scope: !3165, file: !657, line: 310, type: !927)
!3170 = !DILocalVariable(name: "s", arg: 2, scope: !3165, file: !657, line: 310, type: !101)
!3171 = !DILocation(line: 0, scope: !3165)
!3172 = !DILocation(line: 0, scope: !2857, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 312, column: 18, scope: !3165)
!3174 = !DILocation(line: 49, column: 25, scope: !2857, inlinedAt: !3173)
!3175 = !DILocation(line: 0, scope: !2838, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 49, column: 10, scope: !2857, inlinedAt: !3173)
!3177 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !3176)
!3178 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !3176)
!3179 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !3176)
!3180 = !DILocalVariable(name: "__dest", arg: 1, scope: !3181, file: !1312, line: 26, type: !3184)
!3181 = distinct !DISubprogram(name: "memcpy", scope: !1312, file: !1312, line: 26, type: !3182, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3185)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!98, !3184, !926, !101}
!3184 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!3185 = !{!3180, !3186, !3187}
!3186 = !DILocalVariable(name: "__src", arg: 2, scope: !3181, file: !1312, line: 26, type: !926)
!3187 = !DILocalVariable(name: "__len", arg: 3, scope: !3181, file: !1312, line: 26, type: !101)
!3188 = !DILocation(line: 0, scope: !3181, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 312, column: 10, scope: !3165)
!3190 = !DILocation(line: 29, column: 10, scope: !3181, inlinedAt: !3189)
!3191 = !DILocation(line: 312, column: 3, scope: !3165)
!3192 = distinct !DISubprogram(name: "ximemdup", scope: !657, file: !657, line: 316, type: !3193, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3195)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!98, !927, !676}
!3195 = !{!3196, !3197}
!3196 = !DILocalVariable(name: "p", arg: 1, scope: !3192, file: !657, line: 316, type: !927)
!3197 = !DILocalVariable(name: "s", arg: 2, scope: !3192, file: !657, line: 316, type: !676)
!3198 = !DILocation(line: 0, scope: !3192)
!3199 = !DILocation(line: 0, scope: !2871, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 318, column: 18, scope: !3192)
!3201 = !DILocation(line: 0, scope: !2878, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 55, column: 25, scope: !2871, inlinedAt: !3200)
!3203 = !DILocation(line: 57, column: 26, scope: !2878, inlinedAt: !3202)
!3204 = !DILocation(line: 0, scope: !2838, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 55, column: 10, scope: !2871, inlinedAt: !3200)
!3206 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !3205)
!3207 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !3205)
!3208 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !3205)
!3209 = !DILocation(line: 0, scope: !3181, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 318, column: 10, scope: !3192)
!3211 = !DILocation(line: 29, column: 10, scope: !3181, inlinedAt: !3210)
!3212 = !DILocation(line: 318, column: 3, scope: !3192)
!3213 = distinct !DISubprogram(name: "ximemdup0", scope: !657, file: !657, line: 325, type: !3214, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!97, !927, !676}
!3216 = !{!3217, !3218, !3219}
!3217 = !DILocalVariable(name: "p", arg: 1, scope: !3213, file: !657, line: 325, type: !927)
!3218 = !DILocalVariable(name: "s", arg: 2, scope: !3213, file: !657, line: 325, type: !676)
!3219 = !DILocalVariable(name: "result", scope: !3213, file: !657, line: 327, type: !97)
!3220 = !DILocation(line: 0, scope: !3213)
!3221 = !DILocation(line: 327, column: 30, scope: !3213)
!3222 = !DILocation(line: 0, scope: !2871, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 327, column: 18, scope: !3213)
!3224 = !DILocation(line: 0, scope: !2878, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 55, column: 25, scope: !2871, inlinedAt: !3223)
!3226 = !DILocation(line: 57, column: 26, scope: !2878, inlinedAt: !3225)
!3227 = !DILocation(line: 0, scope: !2838, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 55, column: 10, scope: !2871, inlinedAt: !3223)
!3229 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !3228)
!3230 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !3228)
!3231 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !3228)
!3232 = !DILocation(line: 328, column: 3, scope: !3213)
!3233 = !DILocation(line: 328, column: 13, scope: !3213)
!3234 = !DILocation(line: 0, scope: !3181, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 329, column: 10, scope: !3213)
!3236 = !DILocation(line: 29, column: 10, scope: !3181, inlinedAt: !3235)
!3237 = !DILocation(line: 329, column: 3, scope: !3213)
!3238 = distinct !DISubprogram(name: "xstrdup", scope: !657, file: !657, line: 335, type: !905, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3239)
!3239 = !{!3240}
!3240 = !DILocalVariable(name: "string", arg: 1, scope: !3238, file: !657, line: 335, type: !75)
!3241 = !DILocation(line: 0, scope: !3238)
!3242 = !DILocation(line: 337, column: 27, scope: !3238)
!3243 = !DILocation(line: 337, column: 43, scope: !3238)
!3244 = !DILocation(line: 0, scope: !3165, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 337, column: 10, scope: !3238)
!3246 = !DILocation(line: 0, scope: !2857, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 312, column: 18, scope: !3165, inlinedAt: !3245)
!3248 = !DILocation(line: 49, column: 25, scope: !2857, inlinedAt: !3247)
!3249 = !DILocation(line: 0, scope: !2838, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 49, column: 10, scope: !2857, inlinedAt: !3247)
!3251 = !DILocation(line: 39, column: 8, scope: !2845, inlinedAt: !3250)
!3252 = !DILocation(line: 39, column: 7, scope: !2838, inlinedAt: !3250)
!3253 = !DILocation(line: 40, column: 5, scope: !2845, inlinedAt: !3250)
!3254 = !DILocation(line: 0, scope: !3181, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 312, column: 10, scope: !3165, inlinedAt: !3245)
!3256 = !DILocation(line: 29, column: 10, scope: !3181, inlinedAt: !3255)
!3257 = !DILocation(line: 337, column: 3, scope: !3238)
!3258 = distinct !DISubprogram(name: "xalloc_die", scope: !619, file: !619, line: 32, type: !365, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !3259)
!3259 = !{!3260}
!3260 = !DILocalVariable(name: "__errstatus", scope: !3261, file: !619, line: 34, type: !3262)
!3261 = distinct !DILexicalBlock(scope: !3258, file: !619, line: 34, column: 3)
!3262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!3263 = !DILocation(line: 34, column: 3, scope: !3261)
!3264 = !DILocation(line: 0, scope: !3261)
!3265 = !DILocation(line: 40, column: 3, scope: !3258)
!3266 = distinct !DISubprogram(name: "close_stream", scope: !694, file: !694, line: 55, type: !3267, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3303)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!99, !3269}
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3271)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3272)
!3272 = !{!3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3271, file: !235, line: 51, baseType: !99, size: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3271, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3271, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3271, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3271, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3271, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3271, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3271, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3271, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3271, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3271, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3271, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3271, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3271, file: !235, line: 70, baseType: !3287, size: 64, offset: 832)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3271, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3271, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3271, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3271, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3271, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3271, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3271, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3271, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3271, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3271, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3271, file: !235, line: 93, baseType: !3287, size: 64, offset: 1344)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3271, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3271, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3271, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3271, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!3303 = !{!3304, !3305, !3307, !3308}
!3304 = !DILocalVariable(name: "stream", arg: 1, scope: !3266, file: !694, line: 55, type: !3269)
!3305 = !DILocalVariable(name: "some_pending", scope: !3266, file: !694, line: 57, type: !3306)
!3306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!3307 = !DILocalVariable(name: "prev_fail", scope: !3266, file: !694, line: 58, type: !3306)
!3308 = !DILocalVariable(name: "fclose_fail", scope: !3266, file: !694, line: 59, type: !3306)
!3309 = !DILocation(line: 0, scope: !3266)
!3310 = !DILocation(line: 57, column: 30, scope: !3266)
!3311 = !DILocalVariable(name: "__stream", arg: 1, scope: !3312, file: !1155, line: 135, type: !3269)
!3312 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1155, file: !1155, line: 135, type: !3267, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3313)
!3313 = !{!3311}
!3314 = !DILocation(line: 0, scope: !3312, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 58, column: 27, scope: !3266)
!3316 = !DILocation(line: 137, column: 10, scope: !3312, inlinedAt: !3315)
!3317 = !{!1164, !747, i64 0}
!3318 = !DILocation(line: 58, column: 43, scope: !3266)
!3319 = !DILocation(line: 59, column: 29, scope: !3266)
!3320 = !DILocation(line: 59, column: 45, scope: !3266)
!3321 = !DILocation(line: 69, column: 17, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3266, file: !694, line: 69, column: 7)
!3323 = !DILocation(line: 57, column: 50, scope: !3266)
!3324 = !DILocation(line: 69, column: 33, scope: !3322)
!3325 = !DILocation(line: 69, column: 53, scope: !3322)
!3326 = !DILocation(line: 69, column: 59, scope: !3322)
!3327 = !DILocation(line: 69, column: 7, scope: !3266)
!3328 = !DILocation(line: 71, column: 11, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3322, file: !694, line: 70, column: 5)
!3330 = !DILocation(line: 72, column: 9, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3329, file: !694, line: 71, column: 11)
!3332 = !DILocation(line: 72, column: 15, scope: !3331)
!3333 = !DILocation(line: 77, column: 1, scope: !3266)
!3334 = !DISubprogram(name: "__fpending", scope: !3335, file: !3335, line: 75, type: !3336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3335 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!101, !3269}
!3338 = distinct !DISubprogram(name: "rpl_fclose", scope: !696, file: !696, line: 58, type: !3339, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3375)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!99, !3341}
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3343)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3344)
!3344 = !{!3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3343, file: !235, line: 51, baseType: !99, size: 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3343, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3343, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3343, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3343, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3343, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3343, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3343, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3343, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3343, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3343, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3343, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3343, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3343, file: !235, line: 70, baseType: !3359, size: 64, offset: 832)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3343, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3343, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3343, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3343, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3343, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3343, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3343, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3343, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3343, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3343, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3343, file: !235, line: 93, baseType: !3359, size: 64, offset: 1344)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3343, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3343, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3343, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3343, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!3375 = !{!3376, !3377, !3378, !3379}
!3376 = !DILocalVariable(name: "fp", arg: 1, scope: !3338, file: !696, line: 58, type: !3341)
!3377 = !DILocalVariable(name: "saved_errno", scope: !3338, file: !696, line: 60, type: !99)
!3378 = !DILocalVariable(name: "fd", scope: !3338, file: !696, line: 63, type: !99)
!3379 = !DILocalVariable(name: "result", scope: !3338, file: !696, line: 74, type: !99)
!3380 = !DILocation(line: 0, scope: !3338)
!3381 = !DILocation(line: 63, column: 12, scope: !3338)
!3382 = !DILocation(line: 64, column: 10, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3338, file: !696, line: 64, column: 7)
!3384 = !DILocation(line: 64, column: 7, scope: !3338)
!3385 = !DILocation(line: 65, column: 12, scope: !3383)
!3386 = !DILocation(line: 65, column: 5, scope: !3383)
!3387 = !DILocation(line: 70, column: 9, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3338, file: !696, line: 70, column: 7)
!3389 = !DILocation(line: 70, column: 23, scope: !3388)
!3390 = !DILocation(line: 70, column: 33, scope: !3388)
!3391 = !DILocation(line: 70, column: 26, scope: !3388)
!3392 = !DILocation(line: 70, column: 59, scope: !3388)
!3393 = !DILocation(line: 71, column: 7, scope: !3388)
!3394 = !DILocation(line: 71, column: 10, scope: !3388)
!3395 = !DILocation(line: 70, column: 7, scope: !3338)
!3396 = !DILocation(line: 100, column: 12, scope: !3338)
!3397 = !DILocation(line: 105, column: 7, scope: !3338)
!3398 = !DILocation(line: 72, column: 19, scope: !3388)
!3399 = !DILocation(line: 105, column: 19, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3338, file: !696, line: 105, column: 7)
!3401 = !DILocation(line: 107, column: 13, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3400, file: !696, line: 106, column: 5)
!3403 = !DILocation(line: 109, column: 5, scope: !3402)
!3404 = !DILocation(line: 112, column: 1, scope: !3338)
!3405 = !DISubprogram(name: "fileno", scope: !325, file: !325, line: 809, type: !3339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3406 = !DISubprogram(name: "fclose", scope: !325, file: !325, line: 178, type: !3339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3407 = !DISubprogram(name: "__freading", scope: !3335, file: !3335, line: 51, type: !3339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3408 = !DISubprogram(name: "lseek", scope: !1029, file: !1029, line: 339, type: !3409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!257, !99, !257, !99}
!3411 = distinct !DISubprogram(name: "rpl_fflush", scope: !698, file: !698, line: 130, type: !3412, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !3448)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!99, !3414}
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3416)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3417)
!3417 = !{!3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3416, file: !235, line: 51, baseType: !99, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3416, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3416, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3416, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3416, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3416, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3416, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3416, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3416, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3416, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3416, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3416, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3416, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3416, file: !235, line: 70, baseType: !3432, size: 64, offset: 832)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3416, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3416, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3416, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3416, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3416, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3416, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3416, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3416, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3416, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3416, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3416, file: !235, line: 93, baseType: !3432, size: 64, offset: 1344)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3416, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3416, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3416, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3416, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!3448 = !{!3449}
!3449 = !DILocalVariable(name: "stream", arg: 1, scope: !3411, file: !698, line: 130, type: !3414)
!3450 = !DILocation(line: 0, scope: !3411)
!3451 = !DILocation(line: 151, column: 14, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3411, file: !698, line: 151, column: 7)
!3453 = !DILocation(line: 151, column: 22, scope: !3452)
!3454 = !DILocation(line: 151, column: 27, scope: !3452)
!3455 = !DILocation(line: 151, column: 7, scope: !3411)
!3456 = !DILocation(line: 152, column: 12, scope: !3452)
!3457 = !DILocation(line: 152, column: 5, scope: !3452)
!3458 = !DILocalVariable(name: "fp", arg: 1, scope: !3459, file: !698, line: 42, type: !3414)
!3459 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !698, file: !698, line: 42, type: !3460, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !3462)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{null, !3414}
!3462 = !{!3458}
!3463 = !DILocation(line: 0, scope: !3459, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 157, column: 3, scope: !3411)
!3465 = !DILocation(line: 44, column: 12, scope: !3466, inlinedAt: !3464)
!3466 = distinct !DILexicalBlock(scope: !3459, file: !698, line: 44, column: 7)
!3467 = !DILocation(line: 44, column: 19, scope: !3466, inlinedAt: !3464)
!3468 = !DILocation(line: 44, column: 7, scope: !3459, inlinedAt: !3464)
!3469 = !DILocation(line: 46, column: 5, scope: !3466, inlinedAt: !3464)
!3470 = !DILocation(line: 159, column: 10, scope: !3411)
!3471 = !DILocation(line: 159, column: 3, scope: !3411)
!3472 = !DILocation(line: 236, column: 1, scope: !3411)
!3473 = !DISubprogram(name: "fflush", scope: !325, file: !325, line: 230, type: !3412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3474 = distinct !DISubprogram(name: "rpl_fseeko", scope: !700, file: !700, line: 28, type: !3475, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3512)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!99, !3477, !3511, !99}
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3479)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3480)
!3480 = !{!3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3479, file: !235, line: 51, baseType: !99, size: 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3479, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3479, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3479, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3479, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3479, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3479, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3479, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3479, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3479, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3479, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3479, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3479, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3479, file: !235, line: 70, baseType: !3495, size: 64, offset: 832)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3479, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3479, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3479, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3479, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3479, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3479, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3479, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3479, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3479, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3479, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3479, file: !235, line: 93, baseType: !3495, size: 64, offset: 1344)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3479, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3479, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3479, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3479, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!3511 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !325, line: 63, baseType: !257)
!3512 = !{!3513, !3514, !3515, !3516}
!3513 = !DILocalVariable(name: "fp", arg: 1, scope: !3474, file: !700, line: 28, type: !3477)
!3514 = !DILocalVariable(name: "offset", arg: 2, scope: !3474, file: !700, line: 28, type: !3511)
!3515 = !DILocalVariable(name: "whence", arg: 3, scope: !3474, file: !700, line: 28, type: !99)
!3516 = !DILocalVariable(name: "pos", scope: !3517, file: !700, line: 123, type: !3511)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !700, line: 119, column: 5)
!3518 = distinct !DILexicalBlock(scope: !3474, file: !700, line: 55, column: 7)
!3519 = !DILocation(line: 0, scope: !3474)
!3520 = !DILocation(line: 55, column: 12, scope: !3518)
!3521 = !{!1164, !726, i64 16}
!3522 = !DILocation(line: 55, column: 33, scope: !3518)
!3523 = !{!1164, !726, i64 8}
!3524 = !DILocation(line: 55, column: 25, scope: !3518)
!3525 = !DILocation(line: 56, column: 7, scope: !3518)
!3526 = !DILocation(line: 56, column: 15, scope: !3518)
!3527 = !DILocation(line: 56, column: 37, scope: !3518)
!3528 = !{!1164, !726, i64 32}
!3529 = !DILocation(line: 56, column: 29, scope: !3518)
!3530 = !DILocation(line: 57, column: 7, scope: !3518)
!3531 = !DILocation(line: 57, column: 15, scope: !3518)
!3532 = !{!1164, !726, i64 72}
!3533 = !DILocation(line: 57, column: 29, scope: !3518)
!3534 = !DILocation(line: 55, column: 7, scope: !3474)
!3535 = !DILocation(line: 123, column: 26, scope: !3517)
!3536 = !DILocation(line: 123, column: 19, scope: !3517)
!3537 = !DILocation(line: 0, scope: !3517)
!3538 = !DILocation(line: 124, column: 15, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3517, file: !700, line: 124, column: 11)
!3540 = !DILocation(line: 124, column: 11, scope: !3517)
!3541 = !DILocation(line: 135, column: 19, scope: !3517)
!3542 = !DILocation(line: 136, column: 12, scope: !3517)
!3543 = !DILocation(line: 136, column: 20, scope: !3517)
!3544 = !{!1164, !1165, i64 144}
!3545 = !DILocation(line: 167, column: 7, scope: !3517)
!3546 = !DILocation(line: 169, column: 10, scope: !3474)
!3547 = !DILocation(line: 169, column: 3, scope: !3474)
!3548 = !DILocation(line: 170, column: 1, scope: !3474)
!3549 = !DISubprogram(name: "fseeko", scope: !325, file: !325, line: 736, type: !3550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!99, !3477, !257, !99}
!3552 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !626, file: !626, line: 100, type: !3553, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !629, retainedNodes: !3556)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!101, !1330, !75, !101, !3555}
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!3556 = !{!3557, !3558, !3559, !3560, !3561}
!3557 = !DILocalVariable(name: "pwc", arg: 1, scope: !3552, file: !626, line: 100, type: !1330)
!3558 = !DILocalVariable(name: "s", arg: 2, scope: !3552, file: !626, line: 100, type: !75)
!3559 = !DILocalVariable(name: "n", arg: 3, scope: !3552, file: !626, line: 100, type: !101)
!3560 = !DILocalVariable(name: "ps", arg: 4, scope: !3552, file: !626, line: 100, type: !3555)
!3561 = !DILocalVariable(name: "ret", scope: !3552, file: !626, line: 130, type: !101)
!3562 = !DILocation(line: 0, scope: !3552)
!3563 = !DILocation(line: 105, column: 9, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3552, file: !626, line: 105, column: 7)
!3565 = !DILocation(line: 105, column: 7, scope: !3552)
!3566 = !DILocation(line: 117, column: 10, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3552, file: !626, line: 117, column: 7)
!3568 = !DILocation(line: 117, column: 7, scope: !3552)
!3569 = !DILocation(line: 130, column: 16, scope: !3552)
!3570 = !DILocation(line: 135, column: 11, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3552, file: !626, line: 135, column: 7)
!3572 = !DILocation(line: 135, column: 25, scope: !3571)
!3573 = !DILocation(line: 135, column: 30, scope: !3571)
!3574 = !DILocation(line: 135, column: 7, scope: !3552)
!3575 = !DILocalVariable(name: "ps", arg: 1, scope: !3576, file: !1303, line: 1135, type: !3555)
!3576 = distinct !DISubprogram(name: "mbszero", scope: !1303, file: !1303, line: 1135, type: !3577, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !629, retainedNodes: !3579)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{null, !3555}
!3579 = !{!3575}
!3580 = !DILocation(line: 0, scope: !3576, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 137, column: 5, scope: !3571)
!3582 = !DILocalVariable(name: "__dest", arg: 1, scope: !3583, file: !1312, line: 57, type: !98)
!3583 = distinct !DISubprogram(name: "memset", scope: !1312, file: !1312, line: 57, type: !1313, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !629, retainedNodes: !3584)
!3584 = !{!3582, !3585, !3586}
!3585 = !DILocalVariable(name: "__ch", arg: 2, scope: !3583, file: !1312, line: 57, type: !99)
!3586 = !DILocalVariable(name: "__len", arg: 3, scope: !3583, file: !1312, line: 57, type: !101)
!3587 = !DILocation(line: 0, scope: !3583, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 1137, column: 3, scope: !3576, inlinedAt: !3581)
!3589 = !DILocation(line: 59, column: 10, scope: !3583, inlinedAt: !3588)
!3590 = !DILocation(line: 137, column: 5, scope: !3571)
!3591 = !DILocation(line: 138, column: 11, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3552, file: !626, line: 138, column: 7)
!3593 = !DILocation(line: 138, column: 7, scope: !3552)
!3594 = !DILocation(line: 139, column: 5, scope: !3592)
!3595 = !DILocation(line: 143, column: 26, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3552, file: !626, line: 143, column: 7)
!3597 = !DILocation(line: 143, column: 41, scope: !3596)
!3598 = !DILocation(line: 143, column: 7, scope: !3552)
!3599 = !DILocation(line: 145, column: 15, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !626, line: 145, column: 11)
!3601 = distinct !DILexicalBlock(scope: !3596, file: !626, line: 144, column: 5)
!3602 = !DILocation(line: 145, column: 11, scope: !3601)
!3603 = !DILocation(line: 146, column: 32, scope: !3600)
!3604 = !DILocation(line: 146, column: 16, scope: !3600)
!3605 = !DILocation(line: 146, column: 14, scope: !3600)
!3606 = !DILocation(line: 146, column: 9, scope: !3600)
!3607 = !DILocation(line: 286, column: 1, scope: !3552)
!3608 = !DISubprogram(name: "mbsinit", scope: !3609, file: !3609, line: 293, type: !3610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3609 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!99, !3612}
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!3614 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !702, file: !702, line: 27, type: !2822, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3615)
!3615 = !{!3616, !3617, !3618, !3619}
!3616 = !DILocalVariable(name: "ptr", arg: 1, scope: !3614, file: !702, line: 27, type: !98)
!3617 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3614, file: !702, line: 27, type: !101)
!3618 = !DILocalVariable(name: "size", arg: 3, scope: !3614, file: !702, line: 27, type: !101)
!3619 = !DILocalVariable(name: "nbytes", scope: !3614, file: !702, line: 29, type: !101)
!3620 = !DILocation(line: 0, scope: !3614)
!3621 = !DILocation(line: 30, column: 7, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3614, file: !702, line: 30, column: 7)
!3623 = !DILocation(line: 30, column: 7, scope: !3614)
!3624 = !DILocation(line: 32, column: 7, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3622, file: !702, line: 31, column: 5)
!3626 = !DILocation(line: 32, column: 13, scope: !3625)
!3627 = !DILocation(line: 33, column: 7, scope: !3625)
!3628 = !DILocalVariable(name: "ptr", arg: 1, scope: !3629, file: !2914, line: 2057, type: !98)
!3629 = distinct !DISubprogram(name: "rpl_realloc", scope: !2914, file: !2914, line: 2057, type: !2906, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3630)
!3630 = !{!3628, !3631}
!3631 = !DILocalVariable(name: "size", arg: 2, scope: !3629, file: !2914, line: 2057, type: !101)
!3632 = !DILocation(line: 0, scope: !3629, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 37, column: 10, scope: !3614)
!3634 = !DILocation(line: 2059, column: 24, scope: !3629, inlinedAt: !3633)
!3635 = !DILocation(line: 2059, column: 10, scope: !3629, inlinedAt: !3633)
!3636 = !DILocation(line: 37, column: 3, scope: !3614)
!3637 = !DILocation(line: 38, column: 1, scope: !3614)
!3638 = distinct !DISubprogram(name: "hard_locale", scope: !644, file: !644, line: 28, type: !3639, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3641)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!218, !99}
!3641 = !{!3642, !3643}
!3642 = !DILocalVariable(name: "category", arg: 1, scope: !3638, file: !644, line: 28, type: !99)
!3643 = !DILocalVariable(name: "locale", scope: !3638, file: !644, line: 30, type: !3644)
!3644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3645)
!3645 = !{!3646}
!3646 = !DISubrange(count: 257)
!3647 = distinct !DIAssignID()
!3648 = !DILocation(line: 0, scope: !3638)
!3649 = !DILocation(line: 30, column: 3, scope: !3638)
!3650 = !DILocation(line: 32, column: 7, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3638, file: !644, line: 32, column: 7)
!3652 = !DILocation(line: 32, column: 7, scope: !3638)
!3653 = !DILocalVariable(name: "__s1", arg: 1, scope: !3654, file: !759, line: 1359, type: !75)
!3654 = distinct !DISubprogram(name: "streq", scope: !759, file: !759, line: 1359, type: !760, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3655)
!3655 = !{!3653, !3656}
!3656 = !DILocalVariable(name: "__s2", arg: 2, scope: !3654, file: !759, line: 1359, type: !75)
!3657 = !DILocation(line: 0, scope: !3654, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 35, column: 9, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3638, file: !644, line: 35, column: 7)
!3660 = !DILocation(line: 1361, column: 11, scope: !3654, inlinedAt: !3658)
!3661 = !DILocation(line: 1361, column: 10, scope: !3654, inlinedAt: !3658)
!3662 = !DILocation(line: 35, column: 29, scope: !3659)
!3663 = !DILocation(line: 0, scope: !3654, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 35, column: 32, scope: !3659)
!3665 = !DILocation(line: 1361, column: 11, scope: !3654, inlinedAt: !3664)
!3666 = !DILocation(line: 1361, column: 10, scope: !3654, inlinedAt: !3664)
!3667 = !DILocation(line: 35, column: 7, scope: !3638)
!3668 = !DILocation(line: 46, column: 3, scope: !3638)
!3669 = !DILocation(line: 47, column: 1, scope: !3638)
!3670 = distinct !DISubprogram(name: "setlocale_null_r", scope: !706, file: !706, line: 154, type: !3671, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !3673)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!99, !99, !97, !101}
!3673 = !{!3674, !3675, !3676}
!3674 = !DILocalVariable(name: "category", arg: 1, scope: !3670, file: !706, line: 154, type: !99)
!3675 = !DILocalVariable(name: "buf", arg: 2, scope: !3670, file: !706, line: 154, type: !97)
!3676 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3670, file: !706, line: 154, type: !101)
!3677 = !DILocation(line: 0, scope: !3670)
!3678 = !DILocation(line: 159, column: 10, scope: !3670)
!3679 = !DILocation(line: 159, column: 3, scope: !3670)
!3680 = distinct !DISubprogram(name: "setlocale_null", scope: !706, file: !706, line: 186, type: !3681, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !3683)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!75, !99}
!3683 = !{!3684}
!3684 = !DILocalVariable(name: "category", arg: 1, scope: !3680, file: !706, line: 186, type: !99)
!3685 = !DILocation(line: 0, scope: !3680)
!3686 = !DILocation(line: 189, column: 10, scope: !3680)
!3687 = !DILocation(line: 189, column: 3, scope: !3680)
!3688 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !708, file: !708, line: 35, type: !3681, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3689)
!3689 = !{!3690, !3691}
!3690 = !DILocalVariable(name: "category", arg: 1, scope: !3688, file: !708, line: 35, type: !99)
!3691 = !DILocalVariable(name: "result", scope: !3688, file: !708, line: 37, type: !75)
!3692 = !DILocation(line: 0, scope: !3688)
!3693 = !DILocation(line: 37, column: 24, scope: !3688)
!3694 = !DILocation(line: 62, column: 3, scope: !3688)
!3695 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !708, file: !708, line: 66, type: !3671, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3696)
!3696 = !{!3697, !3698, !3699, !3700, !3701}
!3697 = !DILocalVariable(name: "category", arg: 1, scope: !3695, file: !708, line: 66, type: !99)
!3698 = !DILocalVariable(name: "buf", arg: 2, scope: !3695, file: !708, line: 66, type: !97)
!3699 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3695, file: !708, line: 66, type: !101)
!3700 = !DILocalVariable(name: "result", scope: !3695, file: !708, line: 111, type: !75)
!3701 = !DILocalVariable(name: "length", scope: !3702, file: !708, line: 125, type: !101)
!3702 = distinct !DILexicalBlock(scope: !3703, file: !708, line: 124, column: 5)
!3703 = distinct !DILexicalBlock(scope: !3695, file: !708, line: 113, column: 7)
!3704 = !DILocation(line: 0, scope: !3695)
!3705 = !DILocation(line: 0, scope: !3688, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 111, column: 24, scope: !3695)
!3707 = !DILocation(line: 37, column: 24, scope: !3688, inlinedAt: !3706)
!3708 = !DILocation(line: 113, column: 14, scope: !3703)
!3709 = !DILocation(line: 113, column: 7, scope: !3695)
!3710 = !DILocation(line: 116, column: 19, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3712, file: !708, line: 116, column: 11)
!3712 = distinct !DILexicalBlock(scope: !3703, file: !708, line: 114, column: 5)
!3713 = !DILocation(line: 116, column: 11, scope: !3712)
!3714 = !DILocation(line: 120, column: 16, scope: !3711)
!3715 = !DILocation(line: 120, column: 9, scope: !3711)
!3716 = !DILocation(line: 125, column: 23, scope: !3702)
!3717 = !DILocation(line: 0, scope: !3702)
!3718 = !DILocation(line: 126, column: 18, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3702, file: !708, line: 126, column: 11)
!3720 = !DILocation(line: 126, column: 11, scope: !3702)
!3721 = !DILocation(line: 128, column: 39, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3719, file: !708, line: 127, column: 9)
!3723 = !DILocalVariable(name: "__dest", arg: 1, scope: !3724, file: !1312, line: 26, type: !3184)
!3724 = distinct !DISubprogram(name: "memcpy", scope: !1312, file: !1312, line: 26, type: !3182, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3725)
!3725 = !{!3723, !3726, !3727}
!3726 = !DILocalVariable(name: "__src", arg: 2, scope: !3724, file: !1312, line: 26, type: !926)
!3727 = !DILocalVariable(name: "__len", arg: 3, scope: !3724, file: !1312, line: 26, type: !101)
!3728 = !DILocation(line: 0, scope: !3724, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 128, column: 11, scope: !3722)
!3730 = !DILocation(line: 29, column: 10, scope: !3724, inlinedAt: !3729)
!3731 = !DILocation(line: 129, column: 11, scope: !3722)
!3732 = !DILocation(line: 133, column: 23, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3734, file: !708, line: 133, column: 15)
!3734 = distinct !DILexicalBlock(scope: !3719, file: !708, line: 132, column: 9)
!3735 = !DILocation(line: 133, column: 15, scope: !3734)
!3736 = !DILocation(line: 138, column: 44, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3733, file: !708, line: 134, column: 13)
!3738 = !DILocation(line: 0, scope: !3724, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 138, column: 15, scope: !3737)
!3740 = !DILocation(line: 29, column: 10, scope: !3724, inlinedAt: !3739)
!3741 = !DILocation(line: 139, column: 15, scope: !3737)
!3742 = !DILocation(line: 139, column: 32, scope: !3737)
!3743 = !DILocation(line: 140, column: 13, scope: !3737)
!3744 = !DILocation(line: 0, scope: !3703)
!3745 = !DILocation(line: 145, column: 1, scope: !3695)
