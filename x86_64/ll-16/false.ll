; ModuleID = 'src/false.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !309
@.str.21 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !301
@.str.1.22 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !303
@.str.2.23 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !305
@.str.3.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !307
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !311
@stderr = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !317
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !349
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !319
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !339
@.str.1.31 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !341
@.str.2.33 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !343
@.str.3.32 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !345
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !347
@.str.4.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !351
@.str.5.27 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !353
@.str.6.28 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !358
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !363
@.str.47 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !369
@.str.1.48 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !371
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !373
@.str.51 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !404
@.str.1.52 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !407
@.str.2.53 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !409
@.str.3.54 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !411
@.str.4.55 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !413
@.str.5.56 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !415
@.str.6.57 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !417
@.str.7.58 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !419
@.str.8.59 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !421
@.str.9.60 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !423
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.51, ptr @.str.1.52, ptr @.str.2.53, ptr @.str.3.54, ptr @.str.4.55, ptr @.str.5.56, ptr @.str.6.57, ptr @.str.7.58, ptr @.str.8.59, ptr @.str.9.60, ptr null], align 16, !dbg !425
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !450
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !464
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !502
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !509
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !466
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !511
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !454
@.str.10.63 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !471
@.str.11.61 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !473
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !475
@.str.13.62 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !477
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !479
@.str.67 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !517
@.str.1.68 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !520
@.str.2.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !522
@.str.3.70 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !524
@.str.4.71 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !526
@.str.5.72 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !528
@.str.6.73 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !533
@.str.7.74 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !538
@.str.8.75 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !540
@.str.9.76 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !545
@.str.10.77 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !550
@.str.11.78 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !555
@.str.12.79 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !560
@.str.13.80 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !562
@.str.14.81 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !564
@.str.15.82 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !569
@.str.16.83 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !574
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.88 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !579
@.str.18.89 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !581
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !583
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !585
@.str.21.90 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !587
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !589
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !594
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !599
@exit_failure = dso_local global i32 1, align 4, !dbg !607
@.str.103 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !613
@.str.1.101 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !616
@.str.2.102 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !618
@.str.114 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !620
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !623
@.str.1.119 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !638

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !712 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !716, metadata !DIExpression()), !dbg !717
  %2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !718
  %3 = load ptr, ptr @program_name, align 8, !dbg !718, !tbaa !719
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %2, ptr noundef %3, ptr noundef %3) #36, !dbg !718
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !723
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %5) #36, !dbg !723
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !724
  tail call fastcc void @oputs_(ptr noundef %7), !dbg !724
  %8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !725
  tail call fastcc void @oputs_(ptr noundef %8), !dbg !725
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #36, !dbg !726
  %10 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef nonnull @.str.3) #36, !dbg !726
  tail call fastcc void @emit_ancillary_info(), !dbg !727
  tail call void @exit(i32 noundef %0) #37, !dbg !728
  unreachable, !dbg !728
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !729 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !734 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !71 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !212, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata ptr %0, metadata !213, metadata !DIExpression()), !dbg !739
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !740, !tbaa !741
  %3 = icmp eq i32 %2, -1, !dbg !743
  br i1 %3, label %4, label %16, !dbg !744

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.14) #36, !dbg !745
  call void @llvm.dbg.value(metadata ptr %5, metadata !214, metadata !DIExpression()), !dbg !746
  %6 = icmp eq ptr %5, null, !dbg !747
  br i1 %6, label %14, label %7, !dbg !748

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !749, !tbaa !750
  %9 = icmp eq i8 %8, 0, !dbg !749
  br i1 %9, label %14, label %10, !dbg !751

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !752, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !758, metadata !DIExpression()), !dbg !759
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.15) #38, !dbg !761
  %12 = icmp eq i32 %11, 0, !dbg !762
  %13 = zext i1 %12 to i32, !dbg !751
  br label %14, !dbg !751

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !763, !tbaa !741
  br label %16, !dbg !764

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !765
  %18 = icmp eq i32 %17, 0, !dbg !765
  br i1 %18, label %22, label %19, !dbg !767

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !768, !tbaa !719
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !768
  br label %128, !dbg !770

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !217, metadata !DIExpression()), !dbg !739
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.16) #38, !dbg !771
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !772
  call void @llvm.dbg.value(metadata ptr %24, metadata !219, metadata !DIExpression()), !dbg !739
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !773
  call void @llvm.dbg.value(metadata ptr %25, metadata !220, metadata !DIExpression()), !dbg !739
  %26 = icmp eq ptr %25, null, !dbg !774
  br i1 %26, label %58, label %27, !dbg !775

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !776
  br i1 %28, label %58, label %29, !dbg !777

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !221, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 0, metadata !225, metadata !DIExpression()), !dbg !778
  %30 = icmp ult ptr %24, %25, !dbg !779
  br i1 %30, label %31, label %52, !dbg !780

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !739
  %33 = load ptr, ptr %32, align 8, !tbaa !719
  br label %34, !dbg !780

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !221, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 %36, metadata !225, metadata !DIExpression()), !dbg !778
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !781
  call void @llvm.dbg.value(metadata ptr %37, metadata !221, metadata !DIExpression()), !dbg !778
  %38 = load i8, ptr %35, align 1, !dbg !781, !tbaa !750
  %39 = sext i8 %38 to i64, !dbg !781
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !781
  %41 = load i16, ptr %40, align 2, !dbg !781, !tbaa !782
  %42 = freeze i16 %41, !dbg !784
  %43 = lshr i16 %42, 13, !dbg !784
  %44 = and i16 %43, 1, !dbg !784
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !785
  call void @llvm.dbg.value(metadata i64 %46, metadata !225, metadata !DIExpression()), !dbg !778
  %47 = icmp ult ptr %37, %25, !dbg !779
  %48 = icmp ult i64 %46, 2, !dbg !786
  %49 = select i1 %47, i1 %48, i1 false, !dbg !786
  br i1 %49, label %34, label %50, !dbg !780, !llvm.loop !787

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !789
  br i1 %51, label %52, label %54, !dbg !791

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !791

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !791
  call void @llvm.dbg.value(metadata i8 %57, metadata !217, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata ptr %56, metadata !220, metadata !DIExpression()), !dbg !739
  br label %58, !dbg !792

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !739
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !739
  call void @llvm.dbg.value(metadata i8 %60, metadata !217, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata ptr %59, metadata !220, metadata !DIExpression()), !dbg !739
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.17) #38, !dbg !793
  call void @llvm.dbg.value(metadata i64 %61, metadata !226, metadata !DIExpression()), !dbg !739
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !794
  call void @llvm.dbg.value(metadata ptr %62, metadata !227, metadata !DIExpression()), !dbg !739
  br label %63, !dbg !795

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !739
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !739
  call void @llvm.dbg.value(metadata i8 %65, metadata !217, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata ptr %64, metadata !227, metadata !DIExpression()), !dbg !739
  %66 = load i8, ptr %64, align 1, !dbg !796, !tbaa !750
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !797

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !798
  %69 = load i8, ptr %68, align 1, !dbg !801, !tbaa !750
  %70 = icmp eq i8 %69, 45, !dbg !802
  %71 = select i1 %70, i8 0, i8 %65, !dbg !803
  br label %72, !dbg !803

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !739
  call void @llvm.dbg.value(metadata i8 %73, metadata !217, metadata !DIExpression()), !dbg !739
  %74 = tail call ptr @__ctype_b_loc() #39, !dbg !804
  %75 = load ptr, ptr %74, align 8, !dbg !804, !tbaa !719
  %76 = sext i8 %66 to i64, !dbg !804
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !804
  %78 = load i16, ptr %77, align 2, !dbg !804, !tbaa !782
  %79 = and i16 %78, 8192, !dbg !804
  %80 = icmp eq i16 %79, 0, !dbg !804
  br i1 %80, label %96, label %81, !dbg !806

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !807
  br i1 %82, label %98, label %83, !dbg !810

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !811
  %85 = load i8, ptr %84, align 1, !dbg !811, !tbaa !750
  %86 = sext i8 %85 to i64, !dbg !811
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !811
  %88 = load i16, ptr %87, align 2, !dbg !811, !tbaa !782
  %89 = and i16 %88, 8192, !dbg !811
  %90 = icmp eq i16 %89, 0, !dbg !811
  br i1 %90, label %91, label %98, !dbg !812

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !813
  %93 = icmp ne i8 %92, 0, !dbg !813
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !815
  br i1 %95, label %96, label %98, !dbg !815

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !816
  call void @llvm.dbg.value(metadata ptr %97, metadata !227, metadata !DIExpression()), !dbg !739
  br label %63, !dbg !795, !llvm.loop !817

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !819
  %100 = load ptr, ptr @stdout, align 8, !dbg !819, !tbaa !719
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !819
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !752, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !752, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !752, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !752, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !752, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !752, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !752, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !752, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !752, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !752, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !284, metadata !DIExpression()), !dbg !739
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.10, i64 noundef 6) #38, !dbg !840
  %103 = icmp eq i32 %102, 0, !dbg !840
  br i1 %103, label %107, label %104, !dbg !842

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.11, i64 noundef 9) #38, !dbg !843
  %106 = icmp eq i32 %105, 0, !dbg !843
  br i1 %106, label %107, label %110, !dbg !844

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !845
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #36, !dbg !845
  br label %113, !dbg !847

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !848
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #36, !dbg !848
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !850, !tbaa !719
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.35, ptr noundef %114), !dbg !850
  %116 = load ptr, ptr @stdout, align 8, !dbg !851, !tbaa !719
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %116), !dbg !851
  %118 = ptrtoint ptr %64 to i64, !dbg !852
  %119 = sub i64 %118, %99, !dbg !852
  %120 = load ptr, ptr @stdout, align 8, !dbg !852, !tbaa !719
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !852
  %122 = load ptr, ptr @stdout, align 8, !dbg !853, !tbaa !719
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %122), !dbg !853
  %124 = load ptr, ptr @stdout, align 8, !dbg !854, !tbaa !719
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %124), !dbg !854
  %126 = load ptr, ptr @stdout, align 8, !dbg !855, !tbaa !719
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !855
  br label %128, !dbg !856

128:                                              ; preds = %113, %19
  ret void, !dbg !856
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #4 !dbg !857 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !861, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !869, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata ptr poison, metadata !869, metadata !DIExpression()), !dbg !874
  tail call void @emit_bug_reporting_address() #36, !dbg !875
  %1 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !876
  call void @llvm.dbg.value(metadata ptr %1, metadata !872, metadata !DIExpression()), !dbg !874
  %2 = icmp eq ptr %1, null, !dbg !877
  br i1 %2, label %10, label %3, !dbg !879

3:                                                ; preds = %0
  %4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.42, i64 noundef 3) #38, !dbg !880
  %5 = icmp eq i32 %4, 0, !dbg !880
  br i1 %5, label %10, label %6, !dbg !881

6:                                                ; preds = %3
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #36, !dbg !882
  %8 = load ptr, ptr @stdout, align 8, !dbg !882, !tbaa !719
  %9 = tail call i32 @fputs_unlocked(ptr noundef %7, ptr noundef %8), !dbg !882
  br label %10, !dbg !884

10:                                               ; preds = %6, %3, %0
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !869, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !873, metadata !DIExpression()), !dbg !874
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #36, !dbg !885
  %12 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %11, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3) #36, !dbg !885
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #36, !dbg !886
  %14 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.46) #36, !dbg !886
  ret void, !dbg !887
}

; Function Attrs: noreturn nounwind
declare !dbg !888 void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !890 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !894 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !898 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

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
  %5 = load ptr, ptr %1, align 8, !dbg !939, !tbaa !719
  tail call void @set_program_name(ptr noundef %5) #36, !dbg !941
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.7) #36, !dbg !942
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #36, !dbg !943
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.8) #36, !dbg !944
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !945
  %10 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !946
  %11 = load ptr, ptr %10, align 8, !dbg !946, !tbaa !719
  call void @llvm.dbg.value(metadata ptr %11, metadata !752, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !758, metadata !DIExpression()), !dbg !948
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(7) @.str.10) #38, !dbg !950
  %13 = icmp eq i32 %12, 0, !dbg !951
  br i1 %13, label %14, label %15, !dbg !952

14:                                               ; preds = %4
  tail call void @usage(i32 noundef 1) #40, !dbg !953
  unreachable, !dbg !953

15:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr %11, metadata !752, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata ptr @.str.11, metadata !758, metadata !DIExpression()), !dbg !954
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(10) @.str.11) #38, !dbg !957
  %17 = icmp eq i32 %16, 0, !dbg !958
  br i1 %17, label %18, label %22, !dbg !959

18:                                               ; preds = %15
  %19 = load ptr, ptr @stdout, align 8, !dbg !960, !tbaa !719
  %20 = load ptr, ptr @Version, align 8, !dbg !961, !tbaa !719
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #36, !dbg !962
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %20, ptr noundef %21, ptr noundef null) #36, !dbg !963
  br label %22, !dbg !963

22:                                               ; preds = %15, %18, %2
  ret i32 1, !dbg !964
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
  store ptr %0, ptr @file_name, align 8, !dbg !977, !tbaa !719
  ret void, !dbg !978
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !979 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !983, metadata !DIExpression()), !dbg !984
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !985, !tbaa !986
  ret void, !dbg !988
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !989 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !994, !tbaa !719
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !995
  %3 = icmp eq i32 %2, 0, !dbg !996
  br i1 %3, label %22, label %4, !dbg !997

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !998, !tbaa !986, !range !999, !noundef !733
  %6 = icmp eq i8 %5, 0, !dbg !998
  br i1 %6, label %11, label %7, !dbg !1000

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1001
  %9 = load i32, ptr %8, align 4, !dbg !1001, !tbaa !741
  %10 = icmp eq i32 %9, 32, !dbg !1002
  br i1 %10, label %22, label %11, !dbg !1003

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1.22, i32 noundef 5) #36, !dbg !1004
  call void @llvm.dbg.value(metadata ptr %12, metadata !991, metadata !DIExpression()), !dbg !1005
  %13 = load ptr, ptr @file_name, align 8, !dbg !1006, !tbaa !719
  %14 = icmp eq ptr %13, null, !dbg !1006
  %15 = tail call ptr @__errno_location() #39, !dbg !1008
  %16 = load i32, ptr %15, align 4, !dbg !1008, !tbaa !741
  br i1 %14, label %19, label %17, !dbg !1009

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1010
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.23, ptr noundef %18, ptr noundef %12) #36, !dbg !1010
  br label %20, !dbg !1010

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.24, ptr noundef %12) #36, !dbg !1011
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1012, !tbaa !741
  tail call void @_exit(i32 noundef %21) #37, !dbg !1013
  unreachable, !dbg !1013

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1014, !tbaa !719
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1016
  %25 = icmp eq i32 %24, 0, !dbg !1017
  br i1 %25, label %28, label %26, !dbg !1018

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1019, !tbaa !741
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
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !dbg !1029 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1033, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i32 %1, metadata !1034, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata ptr %2, metadata !1035, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata ptr %3, metadata !1036, metadata !DIExpression()), !dbg !1037
  tail call fastcc void @flush_stdout(), !dbg !1038
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1039, !tbaa !719
  %6 = icmp eq ptr %5, null, !dbg !1039
  br i1 %6, label %8, label %7, !dbg !1041

7:                                                ; preds = %4
  tail call void %5() #36, !dbg !1042
  br label %12, !dbg !1042

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1043, !tbaa !719
  %10 = tail call ptr @getprogname() #38, !dbg !1043
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef %10) #36, !dbg !1043
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1045
  ret void, !dbg !1046
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1047 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1049, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i32 1, metadata !1051, metadata !DIExpression()), !dbg !1056
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1059
  %2 = icmp slt i32 %1, 0, !dbg !1060
  br i1 %2, label %6, label %3, !dbg !1061

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1062, !tbaa !719
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1062
  br label %6, !dbg !1062

6:                                                ; preds = %3, %0
  ret void, !dbg !1063
}

declare !dbg !1064 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1102 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1104, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i32 %1, metadata !1105, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr %2, metadata !1106, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr %3, metadata !1107, metadata !DIExpression()), !dbg !1108
  %6 = load ptr, ptr @stderr, align 8, !dbg !1109, !tbaa !719
  call void @llvm.dbg.value(metadata ptr %6, metadata !1110, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata ptr %2, metadata !1115, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata ptr %3, metadata !1116, metadata !DIExpression()), !dbg !1117
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #36, !dbg !1119
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1120, !tbaa !741
  %9 = add i32 %8, 1, !dbg !1120
  store i32 %9, ptr @error_message_count, align 4, !dbg !1120, !tbaa !741
  %10 = icmp eq i32 %1, 0, !dbg !1121
  br i1 %10, label %20, label %11, !dbg !1123

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1124, metadata !DIExpression()), !dbg !1132
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1134
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1128, metadata !DIExpression()), !dbg !1135
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1136
  call void @llvm.dbg.value(metadata ptr %12, metadata !1127, metadata !DIExpression()), !dbg !1132
  %13 = icmp eq ptr %12, null, !dbg !1137
  br i1 %13, label %14, label %16, !dbg !1139

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.26, ptr noundef nonnull @.str.5.27, i32 noundef 5) #36, !dbg !1140
  call void @llvm.dbg.value(metadata ptr %15, metadata !1127, metadata !DIExpression()), !dbg !1132
  br label %16, !dbg !1141

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1132
  call void @llvm.dbg.value(metadata ptr %17, metadata !1127, metadata !DIExpression()), !dbg !1132
  %18 = load ptr, ptr @stderr, align 8, !dbg !1142, !tbaa !719
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.28, ptr noundef %17) #36, !dbg !1142
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1143
  br label %20, !dbg !1144

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1145, !tbaa !719
  call void @llvm.dbg.value(metadata i32 10, metadata !1146, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata ptr %21, metadata !1152, metadata !DIExpression()), !dbg !1153
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1155
  %23 = load ptr, ptr %22, align 8, !dbg !1155, !tbaa !1156
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1155
  %25 = load ptr, ptr %24, align 8, !dbg !1155, !tbaa !1159
  %26 = icmp ult ptr %23, %25, !dbg !1155
  br i1 %26, label %29, label %27, !dbg !1155, !prof !1160

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #36, !dbg !1155
  br label %31, !dbg !1155

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1155
  store ptr %30, ptr %22, align 8, !dbg !1155, !tbaa !1156
  store i8 10, ptr %23, align 1, !dbg !1155, !tbaa !750
  br label %31, !dbg !1155

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1161, !tbaa !719
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #36, !dbg !1161
  %34 = icmp eq i32 %0, 0, !dbg !1162
  br i1 %34, label %36, label %35, !dbg !1164

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #37, !dbg !1165
  unreachable, !dbg !1165

36:                                               ; preds = %31
  ret void, !dbg !1166
}

declare !dbg !1167 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1170 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1173 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1176 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1179 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1183 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1187, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i32 %1, metadata !1188, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata ptr %2, metadata !1189, metadata !DIExpression()), !dbg !1196
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #36, !dbg !1197
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1190, metadata !DIExpression()), !dbg !1198
  call void @llvm.va_start(ptr nonnull %4), !dbg !1199
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #41, !dbg !1200
  call void @llvm.va_end(ptr nonnull %4), !dbg !1201
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #36, !dbg !1202
  ret void, !dbg !1202
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !321 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !333, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata i32 %1, metadata !334, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata ptr %2, metadata !335, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata i32 %3, metadata !336, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata ptr %4, metadata !337, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata ptr %5, metadata !338, metadata !DIExpression()), !dbg !1203
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1204, !tbaa !741
  %8 = icmp eq i32 %7, 0, !dbg !1204
  br i1 %8, label %23, label %9, !dbg !1206

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1207, !tbaa !741
  %11 = icmp eq i32 %10, %3, !dbg !1210
  br i1 %11, label %12, label %22, !dbg !1211

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1212, !tbaa !719
  %14 = icmp eq ptr %13, %2, !dbg !1213
  br i1 %14, label %36, label %15, !dbg !1214

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1215
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1216
  br i1 %18, label %19, label %22, !dbg !1216

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1217
  %21 = icmp eq i32 %20, 0, !dbg !1218
  br i1 %21, label %36, label %22, !dbg !1219

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1220, !tbaa !719
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1221, !tbaa !741
  br label %23, !dbg !1222

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1223
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1224, !tbaa !719
  %25 = icmp eq ptr %24, null, !dbg !1224
  br i1 %25, label %27, label %26, !dbg !1226

26:                                               ; preds = %23
  tail call void %24() #36, !dbg !1227
  br label %31, !dbg !1227

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1228, !tbaa !719
  %29 = tail call ptr @getprogname() #38, !dbg !1228
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.31, ptr noundef %29) #36, !dbg !1228
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1230, !tbaa !719
  %33 = icmp eq ptr %2, null, !dbg !1230
  %34 = select i1 %33, ptr @.str.3.32, ptr @.str.2.33, !dbg !1230
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #36, !dbg !1230
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1231
  br label %36, !dbg !1232

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1232
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1233 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1237, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i32 %1, metadata !1238, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata ptr %2, metadata !1239, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i32 %3, metadata !1240, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata ptr %4, metadata !1241, metadata !DIExpression()), !dbg !1243
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #36, !dbg !1244
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1242, metadata !DIExpression()), !dbg !1245
  call void @llvm.va_start(ptr nonnull %6), !dbg !1246
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #41, !dbg !1247
  call void @llvm.va_end(ptr nonnull %6), !dbg !1248
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #36, !dbg !1249
  ret void, !dbg !1249
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1250 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1253, !tbaa !719
  ret ptr %1, !dbg !1254
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1255 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1257, metadata !DIExpression()), !dbg !1260
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1261
  call void @llvm.dbg.value(metadata ptr %2, metadata !1258, metadata !DIExpression()), !dbg !1260
  %3 = icmp eq ptr %2, null, !dbg !1262
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1262
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1262
  call void @llvm.dbg.value(metadata ptr %5, metadata !1259, metadata !DIExpression()), !dbg !1260
  %6 = ptrtoint ptr %5 to i64, !dbg !1263
  %7 = ptrtoint ptr %0 to i64, !dbg !1263
  %8 = sub i64 %6, %7, !dbg !1263
  %9 = icmp sgt i64 %8, 6, !dbg !1265
  br i1 %9, label %10, label %19, !dbg !1266

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1267
  call void @llvm.dbg.value(metadata ptr %11, metadata !1268, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata ptr @.str.47, metadata !1273, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i64 7, metadata !1274, metadata !DIExpression()), !dbg !1275
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.47, i64 7), !dbg !1277
  %13 = icmp eq i32 %12, 0, !dbg !1278
  br i1 %13, label %14, label %19, !dbg !1279

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1257, metadata !DIExpression()), !dbg !1260
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.48, i64 noundef 3) #38, !dbg !1280
  %16 = icmp eq i32 %15, 0, !dbg !1283
  %17 = select i1 %16, i64 3, i64 0, !dbg !1284
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1284
  br label %19, !dbg !1284

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1260
  call void @llvm.dbg.value(metadata ptr %21, metadata !1259, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata ptr %20, metadata !1257, metadata !DIExpression()), !dbg !1260
  store ptr %20, ptr @program_name, align 8, !dbg !1285, !tbaa !719
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1286, !tbaa !719
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1287, !tbaa !719
  ret void, !dbg !1288
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1289 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !375 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !382, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata ptr %1, metadata !383, metadata !DIExpression()), !dbg !1290
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1291
  call void @llvm.dbg.value(metadata ptr %5, metadata !384, metadata !DIExpression()), !dbg !1290
  %6 = icmp eq ptr %5, %0, !dbg !1292
  br i1 %6, label %7, label %14, !dbg !1294

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1295
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1296
  call void @llvm.dbg.declare(metadata ptr %4, metadata !390, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata ptr %4, metadata !1298, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata ptr %4, metadata !1307, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i32 0, metadata !1313, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i64 8, metadata !1314, metadata !DIExpression()), !dbg !1315
  store i64 0, ptr %4, align 8, !dbg !1317
  call void @llvm.dbg.value(metadata ptr %3, metadata !385, metadata !DIExpression(DW_OP_deref)), !dbg !1290
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1318
  %9 = icmp eq i64 %8, 2, !dbg !1320
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !385, metadata !DIExpression()), !dbg !1290
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1321
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1290
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1322
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1322
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1290
  ret ptr %15, !dbg !1322
}

; Function Attrs: nounwind
declare !dbg !1323 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1329 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1334, metadata !DIExpression()), !dbg !1337
  %2 = tail call ptr @__errno_location() #39, !dbg !1338
  %3 = load i32, ptr %2, align 4, !dbg !1338, !tbaa !741
  call void @llvm.dbg.value(metadata i32 %3, metadata !1335, metadata !DIExpression()), !dbg !1337
  %4 = icmp eq ptr %0, null, !dbg !1339
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1339
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1340
  call void @llvm.dbg.value(metadata ptr %6, metadata !1336, metadata !DIExpression()), !dbg !1337
  store i32 %3, ptr %2, align 4, !dbg !1341, !tbaa !741
  ret ptr %6, !dbg !1342
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1343 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1349, metadata !DIExpression()), !dbg !1350
  %2 = icmp eq ptr %0, null, !dbg !1351
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1351
  %4 = load i32, ptr %3, align 8, !dbg !1352, !tbaa !1353
  ret i32 %4, !dbg !1355
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1356 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1360, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i32 %1, metadata !1361, metadata !DIExpression()), !dbg !1362
  %3 = icmp eq ptr %0, null, !dbg !1363
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1363
  store i32 %1, ptr %4, align 8, !dbg !1364, !tbaa !1353
  ret void, !dbg !1365
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1366 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1370, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i8 %1, metadata !1371, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i32 %2, metadata !1372, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i8 %1, metadata !1373, metadata !DIExpression()), !dbg !1378
  %4 = icmp eq ptr %0, null, !dbg !1379
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1379
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1380
  %7 = lshr i8 %1, 5, !dbg !1381
  %8 = zext i8 %7 to i64, !dbg !1381
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1382
  call void @llvm.dbg.value(metadata ptr %9, metadata !1374, metadata !DIExpression()), !dbg !1378
  %10 = and i8 %1, 31, !dbg !1383
  %11 = zext i8 %10 to i32, !dbg !1383
  call void @llvm.dbg.value(metadata i32 %11, metadata !1376, metadata !DIExpression()), !dbg !1378
  %12 = load i32, ptr %9, align 4, !dbg !1384, !tbaa !741
  %13 = lshr i32 %12, %11, !dbg !1385
  %14 = and i32 %13, 1, !dbg !1386
  call void @llvm.dbg.value(metadata i32 %14, metadata !1377, metadata !DIExpression()), !dbg !1378
  %15 = xor i32 %13, %2, !dbg !1387
  %16 = and i32 %15, 1, !dbg !1387
  %17 = shl nuw i32 %16, %11, !dbg !1388
  %18 = xor i32 %17, %12, !dbg !1389
  store i32 %18, ptr %9, align 4, !dbg !1389, !tbaa !741
  ret i32 %14, !dbg !1390
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1391 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1395, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 %1, metadata !1396, metadata !DIExpression()), !dbg !1398
  %3 = icmp eq ptr %0, null, !dbg !1399
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1401
  call void @llvm.dbg.value(metadata ptr %4, metadata !1395, metadata !DIExpression()), !dbg !1398
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1402
  %6 = load i32, ptr %5, align 4, !dbg !1402, !tbaa !1403
  call void @llvm.dbg.value(metadata i32 %6, metadata !1397, metadata !DIExpression()), !dbg !1398
  store i32 %1, ptr %5, align 4, !dbg !1404, !tbaa !1403
  ret i32 %6, !dbg !1405
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1406 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1410, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata ptr %1, metadata !1411, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata ptr %2, metadata !1412, metadata !DIExpression()), !dbg !1413
  %4 = icmp eq ptr %0, null, !dbg !1414
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1416
  call void @llvm.dbg.value(metadata ptr %5, metadata !1410, metadata !DIExpression()), !dbg !1413
  store i32 10, ptr %5, align 8, !dbg !1417, !tbaa !1353
  %6 = icmp ne ptr %1, null, !dbg !1418
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1420
  br i1 %8, label %10, label %9, !dbg !1420

9:                                                ; preds = %3
  tail call void @abort() #37, !dbg !1421
  unreachable, !dbg !1421

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1422
  store ptr %1, ptr %11, align 8, !dbg !1423, !tbaa !1424
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1425
  store ptr %2, ptr %12, align 8, !dbg !1426, !tbaa !1427
  ret void, !dbg !1428
}

; Function Attrs: noreturn nounwind
declare !dbg !1429 void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1430 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1434, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %1, metadata !1435, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata ptr %2, metadata !1436, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %3, metadata !1437, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata ptr %4, metadata !1438, metadata !DIExpression()), !dbg !1442
  %6 = icmp eq ptr %4, null, !dbg !1443
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1443
  call void @llvm.dbg.value(metadata ptr %7, metadata !1439, metadata !DIExpression()), !dbg !1442
  %8 = tail call ptr @__errno_location() #39, !dbg !1444
  %9 = load i32, ptr %8, align 4, !dbg !1444, !tbaa !741
  call void @llvm.dbg.value(metadata i32 %9, metadata !1440, metadata !DIExpression()), !dbg !1442
  %10 = load i32, ptr %7, align 8, !dbg !1445, !tbaa !1353
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1446
  %12 = load i32, ptr %11, align 4, !dbg !1446, !tbaa !1403
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1447
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1448
  %15 = load ptr, ptr %14, align 8, !dbg !1448, !tbaa !1424
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1449
  %17 = load ptr, ptr %16, align 8, !dbg !1449, !tbaa !1427
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1450
  call void @llvm.dbg.value(metadata i64 %18, metadata !1441, metadata !DIExpression()), !dbg !1442
  store i32 %9, ptr %8, align 4, !dbg !1451, !tbaa !741
  ret i64 %18, !dbg !1452
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1453 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1459, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %1, metadata !1460, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata ptr %2, metadata !1461, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %3, metadata !1462, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i32 %4, metadata !1463, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i32 %5, metadata !1464, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata ptr %6, metadata !1465, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata ptr %7, metadata !1466, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata ptr %8, metadata !1467, metadata !DIExpression()), !dbg !1521
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1522
  %17 = icmp eq i64 %16, 1, !dbg !1523
  call void @llvm.dbg.value(metadata i1 %17, metadata !1468, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1521
  call void @llvm.dbg.value(metadata i64 0, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 0, metadata !1470, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata ptr null, metadata !1471, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 0, metadata !1472, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 0, metadata !1473, metadata !DIExpression()), !dbg !1521
  %18 = trunc i32 %5 to i8, !dbg !1524
  %19 = lshr i8 %18, 1, !dbg !1524
  %20 = and i8 %19, 1, !dbg !1524
  call void @llvm.dbg.value(metadata i8 %20, metadata !1474, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 0, metadata !1475, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 1, metadata !1476, metadata !DIExpression()), !dbg !1521
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1525

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !1526
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !1527
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !1528
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !1529
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !1521
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !1530
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !1531
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1460, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %39, metadata !1476, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %38, metadata !1475, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %37, metadata !1474, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %36, metadata !1473, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %35, metadata !1472, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata ptr %34, metadata !1471, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %33, metadata !1470, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 0, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %32, metadata !1462, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata ptr %31, metadata !1467, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata ptr %30, metadata !1466, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i32 %29, metadata !1463, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.label(metadata !1514), !dbg !1532
  call void @llvm.dbg.value(metadata i8 0, metadata !1477, metadata !DIExpression()), !dbg !1521
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
  ], !dbg !1533

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1474, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i32 5, metadata !1463, metadata !DIExpression()), !dbg !1521
  br label %115, !dbg !1534

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1474, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i32 5, metadata !1463, metadata !DIExpression()), !dbg !1521
  %43 = and i8 %37, 1, !dbg !1535
  %44 = icmp eq i8 %43, 0, !dbg !1535
  br i1 %44, label %45, label %115, !dbg !1534

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1537
  br i1 %46, label %115, label %47, !dbg !1540

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1537, !tbaa !750
  br label %115, !dbg !1537

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.61, metadata !485, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i32 %29, metadata !486, metadata !DIExpression()), !dbg !1541
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.62, ptr noundef nonnull @.str.11.61, i32 noundef 5) #36, !dbg !1545
  call void @llvm.dbg.value(metadata ptr %49, metadata !487, metadata !DIExpression()), !dbg !1541
  %50 = icmp eq ptr %49, @.str.11.61, !dbg !1546
  br i1 %50, label %51, label %60, !dbg !1548

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1549
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1550
  call void @llvm.dbg.declare(metadata ptr %13, metadata !489, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata ptr %13, metadata !1552, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata ptr %13, metadata !1560, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i32 0, metadata !1563, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 8, metadata !1564, metadata !DIExpression()), !dbg !1565
  store i64 0, ptr %13, align 8, !dbg !1567
  call void @llvm.dbg.value(metadata ptr %12, metadata !488, metadata !DIExpression(DW_OP_deref)), !dbg !1541
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1568
  %53 = icmp eq i64 %52, 3, !dbg !1570
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !488, metadata !DIExpression()), !dbg !1541
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1571
  %57 = icmp eq i32 %29, 9, !dbg !1571
  %58 = select i1 %57, ptr @.str.10.63, ptr @.str.12.64, !dbg !1571
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1572
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1572
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1541
  call void @llvm.dbg.value(metadata ptr %61, metadata !1466, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata ptr @.str.12.64, metadata !485, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i32 %29, metadata !486, metadata !DIExpression()), !dbg !1573
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.62, ptr noundef nonnull @.str.12.64, i32 noundef 5) #36, !dbg !1575
  call void @llvm.dbg.value(metadata ptr %62, metadata !487, metadata !DIExpression()), !dbg !1573
  %63 = icmp eq ptr %62, @.str.12.64, !dbg !1576
  br i1 %63, label %64, label %73, !dbg !1577

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1578
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1579
  call void @llvm.dbg.declare(metadata ptr %11, metadata !489, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata ptr %11, metadata !1552, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata ptr %11, metadata !1560, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 0, metadata !1563, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i64 8, metadata !1564, metadata !DIExpression()), !dbg !1583
  store i64 0, ptr %11, align 8, !dbg !1585
  call void @llvm.dbg.value(metadata ptr %10, metadata !488, metadata !DIExpression(DW_OP_deref)), !dbg !1573
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1586
  %66 = icmp eq i64 %65, 3, !dbg !1587
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !488, metadata !DIExpression()), !dbg !1573
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1588
  %70 = icmp eq i32 %29, 9, !dbg !1588
  %71 = select i1 %70, ptr @.str.10.63, ptr @.str.12.64, !dbg !1588
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1588
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1589
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1589
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1467, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata ptr %74, metadata !1466, metadata !DIExpression()), !dbg !1521
  %76 = and i8 %37, 1, !dbg !1590
  %77 = icmp eq i8 %76, 0, !dbg !1590
  br i1 %77, label %78, label %93, !dbg !1591

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1478, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 0, metadata !1469, metadata !DIExpression()), !dbg !1521
  %79 = load i8, ptr %74, align 1, !dbg !1593, !tbaa !750
  %80 = icmp eq i8 %79, 0, !dbg !1595
  br i1 %80, label %93, label %81, !dbg !1595

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1478, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %84, metadata !1469, metadata !DIExpression()), !dbg !1521
  %85 = icmp ult i64 %84, %40, !dbg !1596
  br i1 %85, label %86, label %88, !dbg !1599

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1596
  store i8 %82, ptr %87, align 1, !dbg !1596, !tbaa !750
  br label %88, !dbg !1596

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1599
  call void @llvm.dbg.value(metadata i64 %89, metadata !1469, metadata !DIExpression()), !dbg !1521
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1600
  call void @llvm.dbg.value(metadata ptr %90, metadata !1478, metadata !DIExpression()), !dbg !1592
  %91 = load i8, ptr %90, align 1, !dbg !1593, !tbaa !750
  %92 = icmp eq i8 %91, 0, !dbg !1595
  br i1 %92, label %93, label %81, !dbg !1595, !llvm.loop !1601

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1603
  call void @llvm.dbg.value(metadata i64 %94, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 1, metadata !1473, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata ptr %75, metadata !1471, metadata !DIExpression()), !dbg !1521
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %95, metadata !1472, metadata !DIExpression()), !dbg !1521
  br label %115, !dbg !1605

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1473, metadata !DIExpression()), !dbg !1521
  br label %97, !dbg !1606

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !1521
  call void @llvm.dbg.value(metadata i8 %98, metadata !1473, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 1, metadata !1474, metadata !DIExpression()), !dbg !1521
  br label %99, !dbg !1607

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !1529
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !1521
  call void @llvm.dbg.value(metadata i8 %101, metadata !1474, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %100, metadata !1473, metadata !DIExpression()), !dbg !1521
  %102 = and i8 %101, 1, !dbg !1608
  %103 = icmp eq i8 %102, 0, !dbg !1608
  %104 = select i1 %103, i8 1, i8 %100, !dbg !1610
  br label %105, !dbg !1610

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !1521
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !1524
  call void @llvm.dbg.value(metadata i8 %107, metadata !1474, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %106, metadata !1473, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i32 2, metadata !1463, metadata !DIExpression()), !dbg !1521
  %108 = and i8 %107, 1, !dbg !1611
  %109 = icmp eq i8 %108, 0, !dbg !1611
  br i1 %109, label %110, label %115, !dbg !1613

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !1614
  br i1 %111, label %115, label %112, !dbg !1617

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !1614, !tbaa !750
  br label %115, !dbg !1614

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1474, metadata !DIExpression()), !dbg !1521
  br label %115, !dbg !1618

114:                                              ; preds = %28
  call void @abort() #37, !dbg !1619
  unreachable, !dbg !1619

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !1603
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.63, %45 ], [ @.str.10.63, %47 ], [ @.str.10.63, %42 ], [ %34, %28 ], [ @.str.12.64, %110 ], [ @.str.12.64, %112 ], [ @.str.12.64, %105 ], [ @.str.10.63, %41 ], !dbg !1521
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !1521
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !1521
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !1521
  call void @llvm.dbg.value(metadata i8 %123, metadata !1474, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %122, metadata !1473, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %121, metadata !1472, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata ptr %120, metadata !1471, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %119, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata ptr %118, metadata !1467, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata ptr %117, metadata !1466, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i32 %116, metadata !1463, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 0, metadata !1483, metadata !DIExpression()), !dbg !1620
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
  br label %138, !dbg !1621

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !1603
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !1526
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !1530
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !1531
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !1622
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !1623
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1460, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %145, metadata !1483, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8 %144, metadata !1477, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %143, metadata !1476, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %142, metadata !1475, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %141, metadata !1470, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %140, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %139, metadata !1462, metadata !DIExpression()), !dbg !1521
  %147 = icmp eq i64 %139, -1, !dbg !1624
  br i1 %147, label %148, label %152, !dbg !1625

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1626
  %150 = load i8, ptr %149, align 1, !dbg !1626, !tbaa !750
  %151 = icmp eq i8 %150, 0, !dbg !1627
  br i1 %151, label %627, label %154, !dbg !1628

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1629
  br i1 %153, label %627, label %154, !dbg !1628

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1485, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 0, metadata !1488, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 0, metadata !1489, metadata !DIExpression()), !dbg !1630
  br i1 %129, label %155, label %170, !dbg !1631

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !1633
  %157 = select i1 %147, i1 %130, i1 false, !dbg !1634
  br i1 %157, label %158, label %160, !dbg !1634

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %159, metadata !1462, metadata !DIExpression()), !dbg !1521
  br label %160, !dbg !1636

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1636
  call void @llvm.dbg.value(metadata i64 %161, metadata !1462, metadata !DIExpression()), !dbg !1521
  %162 = icmp ugt i64 %156, %161, !dbg !1637
  br i1 %162, label %170, label %163, !dbg !1638

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1639
  call void @llvm.dbg.value(metadata ptr %164, metadata !1640, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr %120, metadata !1643, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %121, metadata !1644, metadata !DIExpression()), !dbg !1645
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !1647
  %166 = icmp ne i32 %165, 0, !dbg !1648
  %167 = select i1 %166, i1 true, i1 %132, !dbg !1649
  %168 = xor i1 %166, true, !dbg !1649
  %169 = zext i1 %168 to i8, !dbg !1649
  br i1 %167, label %170, label %688, !dbg !1649

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1630
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1630
  call void @llvm.dbg.value(metadata i8 %173, metadata !1485, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %171, metadata !1462, metadata !DIExpression()), !dbg !1521
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1650
  %175 = load i8, ptr %174, align 1, !dbg !1650, !tbaa !750
  call void @llvm.dbg.value(metadata i8 %175, metadata !1490, metadata !DIExpression()), !dbg !1630
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
  ], !dbg !1651

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !1652

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !1653

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1488, metadata !DIExpression()), !dbg !1630
  %179 = and i8 %144, 1, !dbg !1657
  %180 = icmp eq i8 %179, 0, !dbg !1657
  %181 = select i1 %133, i1 %180, i1 false, !dbg !1657
  br i1 %181, label %182, label %198, !dbg !1657

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1659
  br i1 %183, label %184, label %186, !dbg !1663

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1659
  store i8 39, ptr %185, align 1, !dbg !1659, !tbaa !750
  br label %186, !dbg !1659

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %187, metadata !1469, metadata !DIExpression()), !dbg !1521
  %188 = icmp ult i64 %187, %146, !dbg !1664
  br i1 %188, label %189, label %191, !dbg !1667

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1664
  store i8 36, ptr %190, align 1, !dbg !1664, !tbaa !750
  br label %191, !dbg !1664

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %192, metadata !1469, metadata !DIExpression()), !dbg !1521
  %193 = icmp ult i64 %192, %146, !dbg !1668
  br i1 %193, label %194, label %196, !dbg !1671

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1668
  store i8 39, ptr %195, align 1, !dbg !1668, !tbaa !750
  br label %196, !dbg !1668

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %197, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 1, metadata !1477, metadata !DIExpression()), !dbg !1521
  br label %198, !dbg !1672

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1521
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1521
  call void @llvm.dbg.value(metadata i8 %200, metadata !1477, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %199, metadata !1469, metadata !DIExpression()), !dbg !1521
  %201 = icmp ult i64 %199, %146, !dbg !1673
  br i1 %201, label %202, label %204, !dbg !1676

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1673
  store i8 92, ptr %203, align 1, !dbg !1673, !tbaa !750
  br label %204, !dbg !1673

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %205, metadata !1469, metadata !DIExpression()), !dbg !1521
  br i1 %126, label %206, label %491, !dbg !1677

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1679
  %208 = icmp ult i64 %207, %171, !dbg !1680
  br i1 %208, label %209, label %480, !dbg !1681

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1682
  %211 = load i8, ptr %210, align 1, !dbg !1682, !tbaa !750
  %212 = add i8 %211, -48, !dbg !1683
  %213 = icmp ult i8 %212, 10, !dbg !1683
  br i1 %213, label %214, label %480, !dbg !1683

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1684
  br i1 %215, label %216, label %218, !dbg !1688

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1684
  store i8 48, ptr %217, align 1, !dbg !1684, !tbaa !750
  br label %218, !dbg !1684

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1688
  call void @llvm.dbg.value(metadata i64 %219, metadata !1469, metadata !DIExpression()), !dbg !1521
  %220 = icmp ult i64 %219, %146, !dbg !1689
  br i1 %220, label %221, label %223, !dbg !1692

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1689
  store i8 48, ptr %222, align 1, !dbg !1689, !tbaa !750
  br label %223, !dbg !1689

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %224, metadata !1469, metadata !DIExpression()), !dbg !1521
  br label %480, !dbg !1693

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !1694

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1695

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !1696

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !1698

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1700
  %231 = icmp ult i64 %230, %171, !dbg !1701
  br i1 %231, label %232, label %480, !dbg !1702

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !1703
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !1704
  %235 = load i8, ptr %234, align 1, !dbg !1704, !tbaa !750
  %236 = icmp eq i8 %235, 63, !dbg !1705
  br i1 %236, label %237, label %480, !dbg !1706

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1707
  %239 = load i8, ptr %238, align 1, !dbg !1707, !tbaa !750
  %240 = sext i8 %239 to i32, !dbg !1707
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
  ], !dbg !1708

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !1709

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1490, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %230, metadata !1483, metadata !DIExpression()), !dbg !1620
  %243 = icmp ult i64 %140, %146, !dbg !1711
  br i1 %243, label %244, label %246, !dbg !1714

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1711
  store i8 63, ptr %245, align 1, !dbg !1711, !tbaa !750
  br label %246, !dbg !1711

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !1714
  call void @llvm.dbg.value(metadata i64 %247, metadata !1469, metadata !DIExpression()), !dbg !1521
  %248 = icmp ult i64 %247, %146, !dbg !1715
  br i1 %248, label %249, label %251, !dbg !1718

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !1715
  store i8 34, ptr %250, align 1, !dbg !1715, !tbaa !750
  br label %251, !dbg !1715

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !1718
  call void @llvm.dbg.value(metadata i64 %252, metadata !1469, metadata !DIExpression()), !dbg !1521
  %253 = icmp ult i64 %252, %146, !dbg !1719
  br i1 %253, label %254, label %256, !dbg !1722

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !1719
  store i8 34, ptr %255, align 1, !dbg !1719, !tbaa !750
  br label %256, !dbg !1719

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %257, metadata !1469, metadata !DIExpression()), !dbg !1521
  %258 = icmp ult i64 %257, %146, !dbg !1723
  br i1 %258, label %259, label %261, !dbg !1726

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !1723
  store i8 63, ptr %260, align 1, !dbg !1723, !tbaa !750
  br label %261, !dbg !1723

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %262, metadata !1469, metadata !DIExpression()), !dbg !1521
  br label %480, !dbg !1727

263:                                              ; preds = %170
  br label %274, !dbg !1728

264:                                              ; preds = %170
  br label %274, !dbg !1729

265:                                              ; preds = %170
  br label %272, !dbg !1730

266:                                              ; preds = %170
  br label %272, !dbg !1731

267:                                              ; preds = %170
  br label %274, !dbg !1732

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !1733

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !1734

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !1737

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !1739

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !1740
  call void @llvm.dbg.label(metadata !1515), !dbg !1741
  br i1 %134, label %274, label %670, !dbg !1742

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !1740
  call void @llvm.dbg.label(metadata !1517), !dbg !1744
  br i1 %125, label %535, label %491, !dbg !1745

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !1746

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !1747, !tbaa !750
  %279 = icmp eq i8 %278, 0, !dbg !1749
  br i1 %279, label %280, label %480, !dbg !1750

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !1751
  br i1 %281, label %282, label %480, !dbg !1753

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1489, metadata !DIExpression()), !dbg !1630
  br label %283, !dbg !1754

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !1630
  call void @llvm.dbg.value(metadata i8 %284, metadata !1489, metadata !DIExpression()), !dbg !1630
  br i1 %134, label %480, label %670, !dbg !1755

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1475, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 1, metadata !1489, metadata !DIExpression()), !dbg !1630
  br i1 %133, label %286, label %480, !dbg !1757

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !1758

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !1761
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !1763
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !1763
  %292 = select i1 %290, i64 %146, i64 0, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %292, metadata !1460, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %291, metadata !1470, metadata !DIExpression()), !dbg !1521
  %293 = icmp ult i64 %140, %292, !dbg !1764
  br i1 %293, label %294, label %296, !dbg !1767

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1764
  store i8 39, ptr %295, align 1, !dbg !1764, !tbaa !750
  br label %296, !dbg !1764

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %297, metadata !1469, metadata !DIExpression()), !dbg !1521
  %298 = icmp ult i64 %297, %292, !dbg !1768
  br i1 %298, label %299, label %301, !dbg !1771

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !1768
  store i8 92, ptr %300, align 1, !dbg !1768, !tbaa !750
  br label %301, !dbg !1768

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %302, metadata !1469, metadata !DIExpression()), !dbg !1521
  %303 = icmp ult i64 %302, %292, !dbg !1772
  br i1 %303, label %304, label %306, !dbg !1775

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !1772
  store i8 39, ptr %305, align 1, !dbg !1772, !tbaa !750
  br label %306, !dbg !1772

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %307, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 0, metadata !1477, metadata !DIExpression()), !dbg !1521
  br label %480, !dbg !1776

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !1777

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1491, metadata !DIExpression()), !dbg !1778
  %310 = tail call ptr @__ctype_b_loc() #39, !dbg !1779
  %311 = load ptr, ptr %310, align 8, !dbg !1779, !tbaa !719
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !1779
  %314 = load i16, ptr %313, align 2, !dbg !1779, !tbaa !782
  %315 = lshr i16 %314, 14, !dbg !1781
  %316 = trunc i16 %315 to i8, !dbg !1781
  %317 = and i8 %316, 1, !dbg !1781
  call void @llvm.dbg.value(metadata i8 %317, metadata !1494, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %171, metadata !1462, metadata !DIExpression()), !dbg !1521
  %318 = icmp eq i8 %317, 0, !dbg !1782
  call void @llvm.dbg.value(metadata i1 %318, metadata !1489, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1630
  br label %368, !dbg !1783

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !1784
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1495, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata ptr %14, metadata !1552, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata ptr %14, metadata !1560, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 0, metadata !1563, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i64 8, metadata !1564, metadata !DIExpression()), !dbg !1788
  store i64 0, ptr %14, align 8, !dbg !1790
  call void @llvm.dbg.value(metadata i64 0, metadata !1491, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 1, metadata !1494, metadata !DIExpression()), !dbg !1778
  %320 = icmp eq i64 %171, -1, !dbg !1791
  br i1 %320, label %321, label %323, !dbg !1793

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %322, metadata !1462, metadata !DIExpression()), !dbg !1521
  br label %323, !dbg !1795

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !1630
  call void @llvm.dbg.value(metadata i64 %324, metadata !1462, metadata !DIExpression()), !dbg !1521
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !1796
  %325 = sub i64 %324, %145, !dbg !1797
  call void @llvm.dbg.value(metadata ptr %15, metadata !1498, metadata !DIExpression(DW_OP_deref)), !dbg !1798
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #36, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %326, metadata !1502, metadata !DIExpression()), !dbg !1798
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !1800

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1491, metadata !DIExpression()), !dbg !1778
  %328 = icmp ugt i64 %324, %145, !dbg !1801
  br i1 %328, label %331, label %329, !dbg !1803

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1494, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 0, metadata !1491, metadata !DIExpression()), !dbg !1778
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1804
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1805
  call void @llvm.dbg.value(metadata i64 %324, metadata !1462, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i1 true, metadata !1489, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1630
  br label %368, !dbg !1783

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1494, metadata !DIExpression()), !dbg !1778
  br label %360, !dbg !1806

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1491, metadata !DIExpression()), !dbg !1778
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !1808
  %335 = load i8, ptr %334, align 1, !dbg !1808, !tbaa !750
  %336 = icmp eq i8 %335, 0, !dbg !1803
  br i1 %336, label %363, label %337, !dbg !1809

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %338, metadata !1491, metadata !DIExpression()), !dbg !1778
  %339 = add i64 %338, %145, !dbg !1811
  %340 = icmp eq i64 %338, %325, !dbg !1801
  br i1 %340, label %363, label %331, !dbg !1803, !llvm.loop !1812

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !1813
  %344 = and i1 %343, %133, !dbg !1813
  call void @llvm.dbg.value(metadata i64 1, metadata !1503, metadata !DIExpression()), !dbg !1814
  br i1 %344, label %345, label %354, !dbg !1813

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1503, metadata !DIExpression()), !dbg !1814
  %347 = add i64 %346, %145, !dbg !1815
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !1817
  %349 = load i8, ptr %348, align 1, !dbg !1817, !tbaa !750
  %350 = sext i8 %349 to i32, !dbg !1817
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !1818

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %352, metadata !1503, metadata !DIExpression()), !dbg !1814
  %353 = icmp eq i64 %352, %326, !dbg !1820
  br i1 %353, label %354, label %345, !dbg !1821, !llvm.loop !1822

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !1824, !tbaa !741
  call void @llvm.dbg.value(metadata i32 %355, metadata !1498, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 %355, metadata !1826, metadata !DIExpression()), !dbg !1834
  %356 = call i32 @iswprint(i32 noundef %355) #36, !dbg !1836
  %357 = icmp ne i32 %356, 0, !dbg !1837
  %358 = zext i1 %357 to i8, !dbg !1838
  call void @llvm.dbg.value(metadata i8 %358, metadata !1494, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %326, metadata !1491, metadata !DIExpression()), !dbg !1778
  br label %363, !dbg !1839

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1494, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 0, metadata !1491, metadata !DIExpression()), !dbg !1778
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1804
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1805
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1494, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 0, metadata !1491, metadata !DIExpression()), !dbg !1778
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1804
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1805
  call void @llvm.dbg.value(metadata i64 %324, metadata !1462, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i1 %361, metadata !1489, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1630
  br label %368, !dbg !1783

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1494, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %364, metadata !1491, metadata !DIExpression()), !dbg !1778
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1804
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1805
  call void @llvm.dbg.value(metadata i64 %324, metadata !1462, metadata !DIExpression()), !dbg !1521
  %366 = icmp eq i8 %365, 0, !dbg !1782
  call void @llvm.dbg.value(metadata i1 %366, metadata !1489, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1630
  %367 = icmp ugt i64 %364, 1, !dbg !1840
  br i1 %367, label %374, label %368, !dbg !1783

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !1841
  br i1 %373, label %374, label %480, !dbg !1841

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !1842
  call void @llvm.dbg.value(metadata i64 %379, metadata !1511, metadata !DIExpression()), !dbg !1843
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !1844

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !1521
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !1622
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !1620
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !1630
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !1845
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !1630
  call void @llvm.dbg.value(metadata i8 %387, metadata !1490, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %386, metadata !1488, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %385, metadata !1485, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %384, metadata !1483, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8 %383, metadata !1477, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %382, metadata !1469, metadata !DIExpression()), !dbg !1521
  br i1 %380, label %388, label %434, !dbg !1846

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !1851

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1488, metadata !DIExpression()), !dbg !1630
  %390 = and i8 %383, 1, !dbg !1854
  %391 = icmp eq i8 %390, 0, !dbg !1854
  %392 = select i1 %133, i1 %391, i1 false, !dbg !1854
  br i1 %392, label %393, label %409, !dbg !1854

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !1856
  br i1 %394, label %395, label %397, !dbg !1860

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !1856
  store i8 39, ptr %396, align 1, !dbg !1856, !tbaa !750
  br label %397, !dbg !1856

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !1860
  call void @llvm.dbg.value(metadata i64 %398, metadata !1469, metadata !DIExpression()), !dbg !1521
  %399 = icmp ult i64 %398, %146, !dbg !1861
  br i1 %399, label %400, label %402, !dbg !1864

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !1861
  store i8 36, ptr %401, align 1, !dbg !1861, !tbaa !750
  br label %402, !dbg !1861

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %403, metadata !1469, metadata !DIExpression()), !dbg !1521
  %404 = icmp ult i64 %403, %146, !dbg !1865
  br i1 %404, label %405, label %407, !dbg !1868

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !1865
  store i8 39, ptr %406, align 1, !dbg !1865, !tbaa !750
  br label %407, !dbg !1865

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !1868
  call void @llvm.dbg.value(metadata i64 %408, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 1, metadata !1477, metadata !DIExpression()), !dbg !1521
  br label %409, !dbg !1869

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !1521
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !1521
  call void @llvm.dbg.value(metadata i8 %411, metadata !1477, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %410, metadata !1469, metadata !DIExpression()), !dbg !1521
  %412 = icmp ult i64 %410, %146, !dbg !1870
  br i1 %412, label %413, label %415, !dbg !1873

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !1870
  store i8 92, ptr %414, align 1, !dbg !1870, !tbaa !750
  br label %415, !dbg !1870

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %416, metadata !1469, metadata !DIExpression()), !dbg !1521
  %417 = icmp ult i64 %416, %146, !dbg !1874
  br i1 %417, label %418, label %422, !dbg !1877

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !1874
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !1874
  store i8 %420, ptr %421, align 1, !dbg !1874, !tbaa !750
  br label %422, !dbg !1874

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %423, metadata !1469, metadata !DIExpression()), !dbg !1521
  %424 = icmp ult i64 %423, %146, !dbg !1878
  br i1 %424, label %425, label %430, !dbg !1881

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !1878
  %428 = or i8 %427, 48, !dbg !1878
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !1878
  store i8 %428, ptr %429, align 1, !dbg !1878, !tbaa !750
  br label %430, !dbg !1878

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %431, metadata !1469, metadata !DIExpression()), !dbg !1521
  %432 = and i8 %387, 7, !dbg !1882
  %433 = or i8 %432, 48, !dbg !1883
  call void @llvm.dbg.value(metadata i8 %433, metadata !1490, metadata !DIExpression()), !dbg !1630
  br label %443, !dbg !1884

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !1885
  %436 = icmp eq i8 %435, 0, !dbg !1885
  br i1 %436, label %443, label %437, !dbg !1887

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !1888
  br i1 %438, label %439, label %441, !dbg !1892

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !1888
  store i8 92, ptr %440, align 1, !dbg !1888, !tbaa !750
  br label %441, !dbg !1888

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %442, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 0, metadata !1485, metadata !DIExpression()), !dbg !1630
  br label %443, !dbg !1893

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !1521
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !1622
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !1630
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !1630
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !1630
  call void @llvm.dbg.value(metadata i8 %448, metadata !1490, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %447, metadata !1488, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %446, metadata !1485, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %445, metadata !1477, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %444, metadata !1469, metadata !DIExpression()), !dbg !1521
  %449 = add i64 %384, 1, !dbg !1894
  %450 = icmp ugt i64 %379, %449, !dbg !1896
  br i1 %450, label %451, label %478, !dbg !1897

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !1898
  %453 = icmp ne i8 %452, 0, !dbg !1898
  %454 = and i8 %447, 1, !dbg !1898
  %455 = icmp eq i8 %454, 0, !dbg !1898
  %456 = select i1 %453, i1 %455, i1 false, !dbg !1898
  br i1 %456, label %457, label %468, !dbg !1898

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !1901
  br i1 %458, label %459, label %461, !dbg !1905

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !1901
  store i8 39, ptr %460, align 1, !dbg !1901, !tbaa !750
  br label %461, !dbg !1901

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !1905
  call void @llvm.dbg.value(metadata i64 %462, metadata !1469, metadata !DIExpression()), !dbg !1521
  %463 = icmp ult i64 %462, %146, !dbg !1906
  br i1 %463, label %464, label %466, !dbg !1909

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !1906
  store i8 39, ptr %465, align 1, !dbg !1906, !tbaa !750
  br label %466, !dbg !1906

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !1909
  call void @llvm.dbg.value(metadata i64 %467, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 0, metadata !1477, metadata !DIExpression()), !dbg !1521
  br label %468, !dbg !1910

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !1911
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !1521
  call void @llvm.dbg.value(metadata i8 %470, metadata !1477, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %469, metadata !1469, metadata !DIExpression()), !dbg !1521
  %471 = icmp ult i64 %469, %146, !dbg !1912
  br i1 %471, label %472, label %474, !dbg !1915

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !1912
  store i8 %448, ptr %473, align 1, !dbg !1912, !tbaa !750
  br label %474, !dbg !1912

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !1915
  call void @llvm.dbg.value(metadata i64 %475, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %449, metadata !1483, metadata !DIExpression()), !dbg !1620
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !1916
  %477 = load i8, ptr %476, align 1, !dbg !1916, !tbaa !750
  call void @llvm.dbg.value(metadata i8 %477, metadata !1490, metadata !DIExpression()), !dbg !1630
  br label %381, !dbg !1917, !llvm.loop !1918

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !1630
  call void @llvm.dbg.value(metadata i8 %448, metadata !1490, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %479, metadata !1489, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %447, metadata !1488, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %446, metadata !1485, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %384, metadata !1483, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8 %445, metadata !1477, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %444, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %378, metadata !1462, metadata !DIExpression()), !dbg !1521
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !1921
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !1521
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !1526
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !1521
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !1521
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !1620
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !1630
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !1630
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !1630
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1460, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %489, metadata !1490, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %488, metadata !1489, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %487, metadata !1488, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %173, metadata !1485, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %486, metadata !1483, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8 %485, metadata !1477, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %484, metadata !1475, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %483, metadata !1470, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %482, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %481, metadata !1462, metadata !DIExpression()), !dbg !1521
  br i1 %127, label %502, label %491, !dbg !1922

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
  br i1 %137, label %503, label %524, !dbg !1924

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !1925

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
  %514 = lshr i8 %505, 5, !dbg !1926
  %515 = zext i8 %514 to i64, !dbg !1926
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !1927
  %517 = load i32, ptr %516, align 4, !dbg !1927, !tbaa !741
  %518 = and i8 %505, 31, !dbg !1928
  %519 = zext i8 %518 to i32, !dbg !1928
  %520 = shl nuw i32 1, %519, !dbg !1929
  %521 = and i32 %517, %520, !dbg !1929
  %522 = icmp eq i32 %521, 0, !dbg !1929
  %523 = and i1 %172, %522, !dbg !1930
  br i1 %523, label %573, label %535, !dbg !1930

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
  br i1 %172, label %573, label %535, !dbg !1931

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !1921
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !1521
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !1526
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !1530
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !1622
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !1932
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !1630
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !1630
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1460, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %543, metadata !1490, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %542, metadata !1489, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %541, metadata !1483, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8 %540, metadata !1477, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %539, metadata !1475, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %538, metadata !1470, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %537, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %536, metadata !1462, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.label(metadata !1518), !dbg !1933
  br i1 %132, label %545, label %674, !dbg !1934

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1488, metadata !DIExpression()), !dbg !1630
  %546 = and i8 %540, 1, !dbg !1936
  %547 = icmp eq i8 %546, 0, !dbg !1936
  %548 = select i1 %133, i1 %547, i1 false, !dbg !1936
  br i1 %548, label %549, label %565, !dbg !1936

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !1938
  br i1 %550, label %551, label %553, !dbg !1942

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !1938
  store i8 39, ptr %552, align 1, !dbg !1938, !tbaa !750
  br label %553, !dbg !1938

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %554, metadata !1469, metadata !DIExpression()), !dbg !1521
  %555 = icmp ult i64 %554, %544, !dbg !1943
  br i1 %555, label %556, label %558, !dbg !1946

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !1943
  store i8 36, ptr %557, align 1, !dbg !1943, !tbaa !750
  br label %558, !dbg !1943

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !1946
  call void @llvm.dbg.value(metadata i64 %559, metadata !1469, metadata !DIExpression()), !dbg !1521
  %560 = icmp ult i64 %559, %544, !dbg !1947
  br i1 %560, label %561, label %563, !dbg !1950

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !1947
  store i8 39, ptr %562, align 1, !dbg !1947, !tbaa !750
  br label %563, !dbg !1947

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !1950
  call void @llvm.dbg.value(metadata i64 %564, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 1, metadata !1477, metadata !DIExpression()), !dbg !1521
  br label %565, !dbg !1951

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !1630
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !1521
  call void @llvm.dbg.value(metadata i8 %567, metadata !1477, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %566, metadata !1469, metadata !DIExpression()), !dbg !1521
  %568 = icmp ult i64 %566, %544, !dbg !1952
  br i1 %568, label %569, label %571, !dbg !1955

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !1952
  store i8 92, ptr %570, align 1, !dbg !1952, !tbaa !750
  br label %571, !dbg !1952

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !1955
  call void @llvm.dbg.value(metadata i64 %544, metadata !1460, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %543, metadata !1490, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %542, metadata !1489, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 1, metadata !1488, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %541, metadata !1483, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8 %567, metadata !1477, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %539, metadata !1475, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %538, metadata !1470, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %572, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %536, metadata !1462, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.label(metadata !1519), !dbg !1956
  br label %600, !dbg !1957

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !1921
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !1521
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !1526
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !1530
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !1622
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !1932
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !1630
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !1630
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !1960
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1460, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %582, metadata !1490, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %581, metadata !1489, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %580, metadata !1488, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %579, metadata !1483, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8 %578, metadata !1477, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %577, metadata !1475, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %576, metadata !1470, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %575, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %574, metadata !1462, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.label(metadata !1519), !dbg !1956
  %584 = and i8 %578, 1, !dbg !1957
  %585 = icmp ne i8 %584, 0, !dbg !1957
  %586 = and i8 %580, 1, !dbg !1957
  %587 = icmp eq i8 %586, 0, !dbg !1957
  %588 = select i1 %585, i1 %587, i1 false, !dbg !1957
  br i1 %588, label %589, label %600, !dbg !1957

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !1961
  br i1 %590, label %591, label %593, !dbg !1965

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !1961
  store i8 39, ptr %592, align 1, !dbg !1961, !tbaa !750
  br label %593, !dbg !1961

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %594, metadata !1469, metadata !DIExpression()), !dbg !1521
  %595 = icmp ult i64 %594, %583, !dbg !1966
  br i1 %595, label %596, label %598, !dbg !1969

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !1966
  store i8 39, ptr %597, align 1, !dbg !1966, !tbaa !750
  br label %598, !dbg !1966

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !1969
  call void @llvm.dbg.value(metadata i64 %599, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 0, metadata !1477, metadata !DIExpression()), !dbg !1521
  br label %600, !dbg !1970

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !1630
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !1521
  call void @llvm.dbg.value(metadata i8 %609, metadata !1477, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %608, metadata !1469, metadata !DIExpression()), !dbg !1521
  %610 = icmp ult i64 %608, %601, !dbg !1971
  br i1 %610, label %611, label %613, !dbg !1974

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !1971
  store i8 %602, ptr %612, align 1, !dbg !1971, !tbaa !750
  br label %613, !dbg !1971

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %614, metadata !1469, metadata !DIExpression()), !dbg !1521
  %615 = icmp eq i8 %603, 0, !dbg !1975
  %616 = select i1 %615, i8 0, i8 %143, !dbg !1977
  call void @llvm.dbg.value(metadata i8 %616, metadata !1476, metadata !DIExpression()), !dbg !1521
  br label %617, !dbg !1978

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !1921
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !1521
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !1526
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !1530
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !1531
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !1622
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !1932
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1460, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %624, metadata !1483, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8 %623, metadata !1477, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %622, metadata !1476, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %621, metadata !1475, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %620, metadata !1470, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %619, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %618, metadata !1462, metadata !DIExpression()), !dbg !1521
  %626 = add i64 %624, 1, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %626, metadata !1483, metadata !DIExpression()), !dbg !1620
  br label %138, !dbg !1980, !llvm.loop !1981

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1460, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %143, metadata !1476, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i8 %142, metadata !1475, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %141, metadata !1470, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %140, metadata !1469, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %139, metadata !1462, metadata !DIExpression()), !dbg !1521
  %628 = icmp eq i64 %140, 0, !dbg !1983
  %629 = and i1 %133, %628, !dbg !1985
  %630 = xor i1 %629, true, !dbg !1985
  %631 = select i1 %630, i1 true, i1 %132, !dbg !1985
  br i1 %631, label %632, label %670, !dbg !1985

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !1986
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !1986
  br i1 %636, label %637, label %646, !dbg !1986

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !1988
  %639 = icmp eq i8 %638, 0, !dbg !1988
  br i1 %639, label %642, label %640, !dbg !1991

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !1992
  br label %694, !dbg !1993

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !1994
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !1996
  br i1 %645, label %28, label %646, !dbg !1996

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !1997
  %649 = select i1 %648, i1 %647, i1 false, !dbg !1999
  br i1 %649, label %650, label %665, !dbg !1999

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1471, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %140, metadata !1469, metadata !DIExpression()), !dbg !1521
  %651 = load i8, ptr %120, align 1, !dbg !2000, !tbaa !750
  %652 = icmp eq i8 %651, 0, !dbg !2003
  br i1 %652, label %665, label %653, !dbg !2003

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1471, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i64 %656, metadata !1469, metadata !DIExpression()), !dbg !1521
  %657 = icmp ult i64 %656, %146, !dbg !2004
  br i1 %657, label %658, label %660, !dbg !2007

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2004
  store i8 %654, ptr %659, align 1, !dbg !2004, !tbaa !750
  br label %660, !dbg !2004

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %661, metadata !1469, metadata !DIExpression()), !dbg !1521
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2008
  call void @llvm.dbg.value(metadata ptr %662, metadata !1471, metadata !DIExpression()), !dbg !1521
  %663 = load i8, ptr %662, align 1, !dbg !2000, !tbaa !750
  %664 = icmp eq i8 %663, 0, !dbg !2003
  br i1 %664, label %665, label %653, !dbg !2003, !llvm.loop !2009

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !1603
  call void @llvm.dbg.value(metadata i64 %666, metadata !1469, metadata !DIExpression()), !dbg !1521
  %667 = icmp ult i64 %666, %146, !dbg !2011
  br i1 %667, label %668, label %694, !dbg !2013

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2014
  store i8 0, ptr %669, align 1, !dbg !2015, !tbaa !750
  br label %694, !dbg !2014

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !1520), !dbg !2016
  %672 = icmp eq i8 %124, 0, !dbg !2017
  %673 = select i1 %672, i32 2, i32 4, !dbg !2017
  br label %684, !dbg !2017

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2017
  %678 = select i1 %677, i32 2, i32 4, !dbg !2017
  br label %679, !dbg !2019

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !1520), !dbg !2016
  %683 = icmp eq i32 %116, 2, !dbg !2019
  br i1 %683, label %684, label %688, !dbg !2017

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2017

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1463, metadata !DIExpression()), !dbg !1521
  %692 = and i32 %5, -3, !dbg !2020
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2021
  br label %694, !dbg !2022

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2023
}

; Function Attrs: nounwind
declare !dbg !2024 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2027 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2030 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2032 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2036, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %1, metadata !2037, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata ptr %2, metadata !2038, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata ptr %0, metadata !2040, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %1, metadata !2045, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata ptr null, metadata !2046, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata ptr %2, metadata !2047, metadata !DIExpression()), !dbg !2053
  %4 = icmp eq ptr %2, null, !dbg !2055
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2055
  call void @llvm.dbg.value(metadata ptr %5, metadata !2048, metadata !DIExpression()), !dbg !2053
  %6 = tail call ptr @__errno_location() #39, !dbg !2056
  %7 = load i32, ptr %6, align 4, !dbg !2056, !tbaa !741
  call void @llvm.dbg.value(metadata i32 %7, metadata !2049, metadata !DIExpression()), !dbg !2053
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2057
  %9 = load i32, ptr %8, align 4, !dbg !2057, !tbaa !1403
  %10 = or i32 %9, 1, !dbg !2058
  call void @llvm.dbg.value(metadata i32 %10, metadata !2050, metadata !DIExpression()), !dbg !2053
  %11 = load i32, ptr %5, align 8, !dbg !2059, !tbaa !1353
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2060
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2061
  %14 = load ptr, ptr %13, align 8, !dbg !2061, !tbaa !1424
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2062
  %16 = load ptr, ptr %15, align 8, !dbg !2062, !tbaa !1427
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2063
  %18 = add i64 %17, 1, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %18, metadata !2051, metadata !DIExpression()), !dbg !2053
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2065
  call void @llvm.dbg.value(metadata ptr %19, metadata !2052, metadata !DIExpression()), !dbg !2053
  %20 = load i32, ptr %5, align 8, !dbg !2066, !tbaa !1353
  %21 = load ptr, ptr %13, align 8, !dbg !2067, !tbaa !1424
  %22 = load ptr, ptr %15, align 8, !dbg !2068, !tbaa !1427
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2069
  store i32 %7, ptr %6, align 4, !dbg !2070, !tbaa !741
  ret ptr %19, !dbg !2071
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2041 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2040, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %1, metadata !2045, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata ptr %2, metadata !2046, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata ptr %3, metadata !2047, metadata !DIExpression()), !dbg !2072
  %5 = icmp eq ptr %3, null, !dbg !2073
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2073
  call void @llvm.dbg.value(metadata ptr %6, metadata !2048, metadata !DIExpression()), !dbg !2072
  %7 = tail call ptr @__errno_location() #39, !dbg !2074
  %8 = load i32, ptr %7, align 4, !dbg !2074, !tbaa !741
  call void @llvm.dbg.value(metadata i32 %8, metadata !2049, metadata !DIExpression()), !dbg !2072
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2075
  %10 = load i32, ptr %9, align 4, !dbg !2075, !tbaa !1403
  %11 = icmp eq ptr %2, null, !dbg !2076
  %12 = zext i1 %11 to i32, !dbg !2076
  %13 = or i32 %10, %12, !dbg !2077
  call void @llvm.dbg.value(metadata i32 %13, metadata !2050, metadata !DIExpression()), !dbg !2072
  %14 = load i32, ptr %6, align 8, !dbg !2078, !tbaa !1353
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2079
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2080
  %17 = load ptr, ptr %16, align 8, !dbg !2080, !tbaa !1424
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2081
  %19 = load ptr, ptr %18, align 8, !dbg !2081, !tbaa !1427
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2082
  %21 = add i64 %20, 1, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %21, metadata !2051, metadata !DIExpression()), !dbg !2072
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2084
  call void @llvm.dbg.value(metadata ptr %22, metadata !2052, metadata !DIExpression()), !dbg !2072
  %23 = load i32, ptr %6, align 8, !dbg !2085, !tbaa !1353
  %24 = load ptr, ptr %16, align 8, !dbg !2086, !tbaa !1424
  %25 = load ptr, ptr %18, align 8, !dbg !2087, !tbaa !1427
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2088
  store i32 %8, ptr %7, align 4, !dbg !2089, !tbaa !741
  br i1 %11, label %28, label %27, !dbg !2090

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2091, !tbaa !2093
  br label %28, !dbg !2094

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2095
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2096 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2101, !tbaa !719
  call void @llvm.dbg.value(metadata ptr %1, metadata !2098, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 1, metadata !2099, metadata !DIExpression()), !dbg !2103
  %2 = load i32, ptr @nslots, align 4, !tbaa !741
  call void @llvm.dbg.value(metadata i32 1, metadata !2099, metadata !DIExpression()), !dbg !2103
  %3 = icmp sgt i32 %2, 1, !dbg !2104
  br i1 %3, label %4, label %6, !dbg !2106

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2104
  br label %10, !dbg !2106

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2107
  %8 = load ptr, ptr %7, align 8, !dbg !2107, !tbaa !2109
  %9 = icmp eq ptr %8, @slot0, !dbg !2111
  br i1 %9, label %17, label %16, !dbg !2112

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2099, metadata !DIExpression()), !dbg !2103
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2113
  %13 = load ptr, ptr %12, align 8, !dbg !2113, !tbaa !2109
  tail call void @free(ptr noundef %13) #36, !dbg !2114
  %14 = add nuw nsw i64 %11, 1, !dbg !2115
  call void @llvm.dbg.value(metadata i64 %14, metadata !2099, metadata !DIExpression()), !dbg !2103
  %15 = icmp eq i64 %14, %5, !dbg !2104
  br i1 %15, label %6, label %10, !dbg !2106, !llvm.loop !2116

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2118
  store i64 256, ptr @slotvec0, align 8, !dbg !2120, !tbaa !2121
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2122, !tbaa !2109
  br label %17, !dbg !2123

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2124
  br i1 %18, label %20, label %19, !dbg !2126

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2127
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2129, !tbaa !719
  br label %20, !dbg !2130

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2131, !tbaa !741
  ret void, !dbg !2132
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2133 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2136 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2138, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata ptr %1, metadata !2139, metadata !DIExpression()), !dbg !2140
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2141
  ret ptr %3, !dbg !2142
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2143 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2147, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata ptr %1, metadata !2148, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i64 %2, metadata !2149, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata ptr %3, metadata !2150, metadata !DIExpression()), !dbg !2163
  %6 = tail call ptr @__errno_location() #39, !dbg !2164
  %7 = load i32, ptr %6, align 4, !dbg !2164, !tbaa !741
  call void @llvm.dbg.value(metadata i32 %7, metadata !2151, metadata !DIExpression()), !dbg !2163
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2165, !tbaa !719
  call void @llvm.dbg.value(metadata ptr %8, metadata !2152, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2153, metadata !DIExpression()), !dbg !2163
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2166
  br i1 %9, label %10, label %11, !dbg !2166

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2168
  unreachable, !dbg !2168

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2169, !tbaa !741
  %13 = icmp sgt i32 %12, %0, !dbg !2170
  br i1 %13, label %32, label %14, !dbg !2171

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2172
  call void @llvm.dbg.value(metadata i1 %15, metadata !2154, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2173
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2174
  %16 = sext i32 %12 to i64, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %16, metadata !2157, metadata !DIExpression()), !dbg !2173
  store i64 %16, ptr %5, align 8, !dbg !2176, !tbaa !2093
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2177
  %18 = add nuw nsw i32 %0, 1, !dbg !2178
  %19 = sub i32 %18, %12, !dbg !2179
  %20 = sext i32 %19 to i64, !dbg !2180
  call void @llvm.dbg.value(metadata ptr %5, metadata !2157, metadata !DIExpression(DW_OP_deref)), !dbg !2173
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2181
  call void @llvm.dbg.value(metadata ptr %21, metadata !2152, metadata !DIExpression()), !dbg !2163
  store ptr %21, ptr @slotvec, align 8, !dbg !2182, !tbaa !719
  br i1 %15, label %22, label %23, !dbg !2183

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2184, !tbaa.struct !2186
  br label %23, !dbg !2187

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2188, !tbaa !741
  %25 = sext i32 %24 to i64, !dbg !2189
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2189
  %27 = load i64, ptr %5, align 8, !dbg !2190, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 %27, metadata !2157, metadata !DIExpression()), !dbg !2173
  %28 = sub nsw i64 %27, %25, !dbg !2191
  %29 = shl i64 %28, 4, !dbg !2192
  call void @llvm.dbg.value(metadata ptr %26, metadata !1560, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 0, metadata !1563, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %29, metadata !1564, metadata !DIExpression()), !dbg !2193
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2195
  %30 = load i64, ptr %5, align 8, !dbg !2196, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 %30, metadata !2157, metadata !DIExpression()), !dbg !2173
  %31 = trunc i64 %30 to i32, !dbg !2196
  store i32 %31, ptr @nslots, align 4, !dbg !2197, !tbaa !741
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2198
  br label %32, !dbg !2199

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2163
  call void @llvm.dbg.value(metadata ptr %33, metadata !2152, metadata !DIExpression()), !dbg !2163
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2200
  %36 = load i64, ptr %35, align 8, !dbg !2201, !tbaa !2121
  call void @llvm.dbg.value(metadata i64 %36, metadata !2158, metadata !DIExpression()), !dbg !2202
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2203
  %38 = load ptr, ptr %37, align 8, !dbg !2203, !tbaa !2109
  call void @llvm.dbg.value(metadata ptr %38, metadata !2160, metadata !DIExpression()), !dbg !2202
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2204
  %40 = load i32, ptr %39, align 4, !dbg !2204, !tbaa !1403
  %41 = or i32 %40, 1, !dbg !2205
  call void @llvm.dbg.value(metadata i32 %41, metadata !2161, metadata !DIExpression()), !dbg !2202
  %42 = load i32, ptr %3, align 8, !dbg !2206, !tbaa !1353
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2207
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2208
  %45 = load ptr, ptr %44, align 8, !dbg !2208, !tbaa !1424
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2209
  %47 = load ptr, ptr %46, align 8, !dbg !2209, !tbaa !1427
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %48, metadata !2162, metadata !DIExpression()), !dbg !2202
  %49 = icmp ugt i64 %36, %48, !dbg !2211
  br i1 %49, label %60, label %50, !dbg !2213

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %51, metadata !2158, metadata !DIExpression()), !dbg !2202
  store i64 %51, ptr %35, align 8, !dbg !2216, !tbaa !2121
  %52 = icmp eq ptr %38, @slot0, !dbg !2217
  br i1 %52, label %54, label %53, !dbg !2219

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2220
  br label %54, !dbg !2220

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2221
  call void @llvm.dbg.value(metadata ptr %55, metadata !2160, metadata !DIExpression()), !dbg !2202
  store ptr %55, ptr %37, align 8, !dbg !2222, !tbaa !2109
  %56 = load i32, ptr %3, align 8, !dbg !2223, !tbaa !1353
  %57 = load ptr, ptr %44, align 8, !dbg !2224, !tbaa !1424
  %58 = load ptr, ptr %46, align 8, !dbg !2225, !tbaa !1427
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2226
  br label %60, !dbg !2227

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2202
  call void @llvm.dbg.value(metadata ptr %61, metadata !2160, metadata !DIExpression()), !dbg !2202
  store i32 %7, ptr %6, align 4, !dbg !2228, !tbaa !741
  ret ptr %61, !dbg !2229
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2230 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2234, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata ptr %1, metadata !2235, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i64 %2, metadata !2236, metadata !DIExpression()), !dbg !2237
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2238
  ret ptr %4, !dbg !2239
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2240 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2242, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i32 0, metadata !2138, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata ptr %0, metadata !2139, metadata !DIExpression()), !dbg !2244
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2246
  ret ptr %2, !dbg !2247
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2248 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2252, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i64 %1, metadata !2253, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 0, metadata !2234, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata ptr %0, metadata !2235, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i64 %1, metadata !2236, metadata !DIExpression()), !dbg !2255
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2257
  ret ptr %3, !dbg !2258
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2259 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2263, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %1, metadata !2264, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata ptr %2, metadata !2265, metadata !DIExpression()), !dbg !2267
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2268
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2266, metadata !DIExpression()), !dbg !2269
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2270), !dbg !2273
  call void @llvm.dbg.value(metadata i32 %1, metadata !2274, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2279, metadata !DIExpression()), !dbg !2282
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2282, !alias.scope !2270
  %5 = icmp eq i32 %1, 10, !dbg !2283
  br i1 %5, label %6, label %7, !dbg !2285

6:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2286, !noalias !2270
  unreachable, !dbg !2286

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2287, !tbaa !1353, !alias.scope !2270
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2288
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2289
  ret ptr %8, !dbg !2290
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2291 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2295, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i32 %1, metadata !2296, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata ptr %2, metadata !2297, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i64 %3, metadata !2298, metadata !DIExpression()), !dbg !2300
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2301
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2299, metadata !DIExpression()), !dbg !2302
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2303), !dbg !2306
  call void @llvm.dbg.value(metadata i32 %1, metadata !2274, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2279, metadata !DIExpression()), !dbg !2309
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2309, !alias.scope !2303
  %6 = icmp eq i32 %1, 10, !dbg !2310
  br i1 %6, label %7, label %8, !dbg !2311

7:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2312, !noalias !2303
  unreachable, !dbg !2312

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2313, !tbaa !1353, !alias.scope !2303
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2314
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2315
  ret ptr %9, !dbg !2316
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2317 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2321, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata ptr %1, metadata !2322, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i32 0, metadata !2263, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i32 %0, metadata !2264, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata ptr %1, metadata !2265, metadata !DIExpression()), !dbg !2324
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2326
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2266, metadata !DIExpression()), !dbg !2327
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2328), !dbg !2331
  call void @llvm.dbg.value(metadata i32 %0, metadata !2274, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2279, metadata !DIExpression()), !dbg !2334
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2334, !alias.scope !2328
  %4 = icmp eq i32 %0, 10, !dbg !2335
  br i1 %4, label %5, label %6, !dbg !2336

5:                                                ; preds = %2
  tail call void @abort() #37, !dbg !2337, !noalias !2328
  unreachable, !dbg !2337

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2338, !tbaa !1353, !alias.scope !2328
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2339
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2340
  ret ptr %7, !dbg !2341
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2342 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2346, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata ptr %1, metadata !2347, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %2, metadata !2348, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 0, metadata !2295, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i32 %0, metadata !2296, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata ptr %1, metadata !2297, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i64 %2, metadata !2298, metadata !DIExpression()), !dbg !2350
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2352
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2299, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2354), !dbg !2357
  call void @llvm.dbg.value(metadata i32 %0, metadata !2274, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2279, metadata !DIExpression()), !dbg !2360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2360, !alias.scope !2354
  %5 = icmp eq i32 %0, 10, !dbg !2361
  br i1 %5, label %6, label %7, !dbg !2362

6:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2363, !noalias !2354
  unreachable, !dbg !2363

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2364, !tbaa !1353, !alias.scope !2354
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2365
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2366
  ret ptr %8, !dbg !2367
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2368 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2372, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %1, metadata !2373, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 %2, metadata !2374, metadata !DIExpression()), !dbg !2376
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2377
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2375, metadata !DIExpression()), !dbg !2378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2379, !tbaa.struct !2380
  call void @llvm.dbg.value(metadata ptr %4, metadata !1370, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8 %2, metadata !1371, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8 %2, metadata !1373, metadata !DIExpression()), !dbg !2381
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2383
  %6 = lshr i8 %2, 5, !dbg !2384
  %7 = zext i8 %6 to i64, !dbg !2384
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2385
  call void @llvm.dbg.value(metadata ptr %8, metadata !1374, metadata !DIExpression()), !dbg !2381
  %9 = and i8 %2, 31, !dbg !2386
  %10 = zext i8 %9 to i32, !dbg !2386
  call void @llvm.dbg.value(metadata i32 %10, metadata !1376, metadata !DIExpression()), !dbg !2381
  %11 = load i32, ptr %8, align 4, !dbg !2387, !tbaa !741
  %12 = lshr i32 %11, %10, !dbg !2388
  call void @llvm.dbg.value(metadata i32 %12, metadata !1377, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2381
  %13 = and i32 %12, 1, !dbg !2389
  %14 = xor i32 %13, 1, !dbg !2389
  %15 = shl nuw i32 %14, %10, !dbg !2390
  %16 = xor i32 %15, %11, !dbg !2391
  store i32 %16, ptr %8, align 4, !dbg !2391, !tbaa !741
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2392
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2393
  ret ptr %17, !dbg !2394
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2395 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2399, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 %1, metadata !2400, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata ptr %0, metadata !2372, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i64 -1, metadata !2373, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i8 %1, metadata !2374, metadata !DIExpression()), !dbg !2402
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2404
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2375, metadata !DIExpression()), !dbg !2405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2406, !tbaa.struct !2380
  call void @llvm.dbg.value(metadata ptr %3, metadata !1370, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 %1, metadata !1371, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 %1, metadata !1373, metadata !DIExpression()), !dbg !2407
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2409
  %5 = lshr i8 %1, 5, !dbg !2410
  %6 = zext i8 %5 to i64, !dbg !2410
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2411
  call void @llvm.dbg.value(metadata ptr %7, metadata !1374, metadata !DIExpression()), !dbg !2407
  %8 = and i8 %1, 31, !dbg !2412
  %9 = zext i8 %8 to i32, !dbg !2412
  call void @llvm.dbg.value(metadata i32 %9, metadata !1376, metadata !DIExpression()), !dbg !2407
  %10 = load i32, ptr %7, align 4, !dbg !2413, !tbaa !741
  %11 = lshr i32 %10, %9, !dbg !2414
  call void @llvm.dbg.value(metadata i32 %11, metadata !1377, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2407
  %12 = and i32 %11, 1, !dbg !2415
  %13 = xor i32 %12, 1, !dbg !2415
  %14 = shl nuw i32 %13, %9, !dbg !2416
  %15 = xor i32 %14, %10, !dbg !2417
  store i32 %15, ptr %7, align 4, !dbg !2417, !tbaa !741
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2418
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2419
  ret ptr %16, !dbg !2420
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2421 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2423, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata ptr %0, metadata !2399, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8 58, metadata !2400, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata ptr %0, metadata !2372, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i64 -1, metadata !2373, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 58, metadata !2374, metadata !DIExpression()), !dbg !2427
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2429
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2375, metadata !DIExpression()), !dbg !2430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2431, !tbaa.struct !2380
  call void @llvm.dbg.value(metadata ptr %2, metadata !1370, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 58, metadata !1371, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 58, metadata !1373, metadata !DIExpression()), !dbg !2432
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2434
  call void @llvm.dbg.value(metadata ptr %3, metadata !1374, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 26, metadata !1376, metadata !DIExpression()), !dbg !2432
  %4 = load i32, ptr %3, align 4, !dbg !2435, !tbaa !741
  call void @llvm.dbg.value(metadata i32 %4, metadata !1377, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2432
  %5 = or i32 %4, 67108864, !dbg !2436
  store i32 %5, ptr %3, align 4, !dbg !2436, !tbaa !741
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2437
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2438
  ret ptr %6, !dbg !2439
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2440 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2442, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i64 %1, metadata !2443, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata ptr %0, metadata !2372, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i64 %1, metadata !2373, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 58, metadata !2374, metadata !DIExpression()), !dbg !2445
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2447
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2375, metadata !DIExpression()), !dbg !2448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2449, !tbaa.struct !2380
  call void @llvm.dbg.value(metadata ptr %3, metadata !1370, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 58, metadata !1371, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 58, metadata !1373, metadata !DIExpression()), !dbg !2450
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2452
  call void @llvm.dbg.value(metadata ptr %4, metadata !1374, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i32 26, metadata !1376, metadata !DIExpression()), !dbg !2450
  %5 = load i32, ptr %4, align 4, !dbg !2453, !tbaa !741
  call void @llvm.dbg.value(metadata i32 %5, metadata !1377, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2450
  %6 = or i32 %5, 67108864, !dbg !2454
  store i32 %6, ptr %4, align 4, !dbg !2454, !tbaa !741
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2455
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2456
  ret ptr %7, !dbg !2457
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2458 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2279, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2464
  call void @llvm.dbg.value(metadata i32 %0, metadata !2460, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i32 %1, metadata !2461, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata ptr %2, metadata !2462, metadata !DIExpression()), !dbg !2466
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2467
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2463, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i32 %1, metadata !2274, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 0, metadata !2279, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2469
  %5 = icmp eq i32 %1, 10, !dbg !2470
  br i1 %5, label %6, label %7, !dbg !2471

6:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2472, !noalias !2473
  unreachable, !dbg !2472

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2279, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2469
  store i32 %1, ptr %4, align 8, !dbg !2476, !tbaa.struct !2380
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2476
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2476
  call void @llvm.dbg.value(metadata ptr %4, metadata !1370, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8 58, metadata !1371, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8 58, metadata !1373, metadata !DIExpression()), !dbg !2477
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2479
  call void @llvm.dbg.value(metadata ptr %9, metadata !1374, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 26, metadata !1376, metadata !DIExpression()), !dbg !2477
  %10 = load i32, ptr %9, align 4, !dbg !2480, !tbaa !741
  call void @llvm.dbg.value(metadata i32 %10, metadata !1377, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2477
  %11 = or i32 %10, 67108864, !dbg !2481
  store i32 %11, ptr %9, align 4, !dbg !2481, !tbaa !741
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2482
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2483
  ret ptr %12, !dbg !2484
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2485 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2489, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata ptr %1, metadata !2490, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata ptr %2, metadata !2491, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata ptr %3, metadata !2492, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 %0, metadata !2494, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata ptr %1, metadata !2499, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata ptr %2, metadata !2500, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata ptr %3, metadata !2501, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i64 -1, metadata !2502, metadata !DIExpression()), !dbg !2504
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2506
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2503, metadata !DIExpression()), !dbg !2507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2508, !tbaa.struct !2380
  call void @llvm.dbg.value(metadata ptr %5, metadata !1410, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata ptr %1, metadata !1411, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata ptr %2, metadata !1412, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata ptr %5, metadata !1410, metadata !DIExpression()), !dbg !2509
  store i32 10, ptr %5, align 8, !dbg !2511, !tbaa !1353
  %6 = icmp ne ptr %1, null, !dbg !2512
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2513
  br i1 %8, label %10, label %9, !dbg !2513

9:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2514
  unreachable, !dbg !2514

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2515
  store ptr %1, ptr %11, align 8, !dbg !2516, !tbaa !1424
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2517
  store ptr %2, ptr %12, align 8, !dbg !2518, !tbaa !1427
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2519
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2520
  ret ptr %13, !dbg !2521
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2495 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2494, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata ptr %1, metadata !2499, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata ptr %2, metadata !2500, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata ptr %3, metadata !2501, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i64 %4, metadata !2502, metadata !DIExpression()), !dbg !2522
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2523
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2503, metadata !DIExpression()), !dbg !2524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2525, !tbaa.struct !2380
  call void @llvm.dbg.value(metadata ptr %6, metadata !1410, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata ptr %1, metadata !1411, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata ptr %2, metadata !1412, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata ptr %6, metadata !1410, metadata !DIExpression()), !dbg !2526
  store i32 10, ptr %6, align 8, !dbg !2528, !tbaa !1353
  %7 = icmp ne ptr %1, null, !dbg !2529
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2530
  br i1 %9, label %11, label %10, !dbg !2530

10:                                               ; preds = %5
  tail call void @abort() #37, !dbg !2531
  unreachable, !dbg !2531

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2532
  store ptr %1, ptr %12, align 8, !dbg !2533, !tbaa !1424
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2534
  store ptr %2, ptr %13, align 8, !dbg !2535, !tbaa !1427
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2536
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2537
  ret ptr %14, !dbg !2538
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2539 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2543, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr %1, metadata !2544, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr %2, metadata !2545, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i32 0, metadata !2489, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata ptr %0, metadata !2490, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata ptr %1, metadata !2491, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata ptr %2, metadata !2492, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i32 0, metadata !2494, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata ptr %0, metadata !2499, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata ptr %1, metadata !2500, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata ptr %2, metadata !2501, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 -1, metadata !2502, metadata !DIExpression()), !dbg !2549
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2551
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2503, metadata !DIExpression()), !dbg !2552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2553, !tbaa.struct !2380
  call void @llvm.dbg.value(metadata ptr %4, metadata !1410, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata ptr %0, metadata !1411, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata ptr %1, metadata !1412, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata ptr %4, metadata !1410, metadata !DIExpression()), !dbg !2554
  store i32 10, ptr %4, align 8, !dbg !2556, !tbaa !1353
  %5 = icmp ne ptr %0, null, !dbg !2557
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2558
  br i1 %7, label %9, label %8, !dbg !2558

8:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2559
  unreachable, !dbg !2559

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2560
  store ptr %0, ptr %10, align 8, !dbg !2561, !tbaa !1424
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2562
  store ptr %1, ptr %11, align 8, !dbg !2563, !tbaa !1427
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2564
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2565
  ret ptr %12, !dbg !2566
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2567 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2571, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata ptr %1, metadata !2572, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata ptr %2, metadata !2573, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i64 %3, metadata !2574, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 0, metadata !2494, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata ptr %0, metadata !2499, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata ptr %1, metadata !2500, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata ptr %2, metadata !2501, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %3, metadata !2502, metadata !DIExpression()), !dbg !2576
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2578
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2503, metadata !DIExpression()), !dbg !2579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2580, !tbaa.struct !2380
  call void @llvm.dbg.value(metadata ptr %5, metadata !1410, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata ptr %0, metadata !1411, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata ptr %1, metadata !1412, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata ptr %5, metadata !1410, metadata !DIExpression()), !dbg !2581
  store i32 10, ptr %5, align 8, !dbg !2583, !tbaa !1353
  %6 = icmp ne ptr %0, null, !dbg !2584
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2585
  br i1 %8, label %10, label %9, !dbg !2585

9:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2586
  unreachable, !dbg !2586

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2587
  store ptr %0, ptr %11, align 8, !dbg !2588, !tbaa !1424
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2589
  store ptr %1, ptr %12, align 8, !dbg !2590, !tbaa !1427
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2591
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2592
  ret ptr %13, !dbg !2593
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2594 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2598, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata ptr %1, metadata !2599, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i64 %2, metadata !2600, metadata !DIExpression()), !dbg !2601
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2602
  ret ptr %4, !dbg !2603
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2604 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2608, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %1, metadata !2609, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 0, metadata !2598, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata ptr %0, metadata !2599, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i64 %1, metadata !2600, metadata !DIExpression()), !dbg !2611
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2613
  ret ptr %3, !dbg !2614
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2615 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2619, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata ptr %1, metadata !2620, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i32 %0, metadata !2598, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata ptr %1, metadata !2599, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i64 -1, metadata !2600, metadata !DIExpression()), !dbg !2622
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2624
  ret ptr %3, !dbg !2625
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2626 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2630, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i32 0, metadata !2619, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata ptr %0, metadata !2620, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i32 0, metadata !2598, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata ptr %0, metadata !2599, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i64 -1, metadata !2600, metadata !DIExpression()), !dbg !2634
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2636
  ret ptr %2, !dbg !2637
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2638 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2677, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata ptr %1, metadata !2678, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata ptr %2, metadata !2679, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata ptr %3, metadata !2680, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata ptr %4, metadata !2681, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i64 %5, metadata !2682, metadata !DIExpression()), !dbg !2683
  %7 = icmp eq ptr %1, null, !dbg !2684
  br i1 %7, label %10, label %8, !dbg !2686

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.67, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !2687
  br label %12, !dbg !2687

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.68, ptr noundef %2, ptr noundef %3) #36, !dbg !2688
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.3.70, i32 noundef 5) #36, !dbg !2689
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !2689
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %0), !dbg !2690
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.5.72, i32 noundef 5) #36, !dbg !2691
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.73) #36, !dbg !2691
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %0), !dbg !2692
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
  ], !dbg !2693

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.7.74, i32 noundef 5) #36, !dbg !2694
  %21 = load ptr, ptr %4, align 8, !dbg !2694, !tbaa !719
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !2694
  br label %147, !dbg !2696

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.8.75, i32 noundef 5) #36, !dbg !2697
  %25 = load ptr, ptr %4, align 8, !dbg !2697, !tbaa !719
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2697
  %27 = load ptr, ptr %26, align 8, !dbg !2697, !tbaa !719
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !2697
  br label %147, !dbg !2698

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.9.76, i32 noundef 5) #36, !dbg !2699
  %31 = load ptr, ptr %4, align 8, !dbg !2699, !tbaa !719
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2699
  %33 = load ptr, ptr %32, align 8, !dbg !2699, !tbaa !719
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2699
  %35 = load ptr, ptr %34, align 8, !dbg !2699, !tbaa !719
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !2699
  br label %147, !dbg !2700

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.10.77, i32 noundef 5) #36, !dbg !2701
  %39 = load ptr, ptr %4, align 8, !dbg !2701, !tbaa !719
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2701
  %41 = load ptr, ptr %40, align 8, !dbg !2701, !tbaa !719
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2701
  %43 = load ptr, ptr %42, align 8, !dbg !2701, !tbaa !719
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2701
  %45 = load ptr, ptr %44, align 8, !dbg !2701, !tbaa !719
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !2701
  br label %147, !dbg !2702

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.11.78, i32 noundef 5) #36, !dbg !2703
  %49 = load ptr, ptr %4, align 8, !dbg !2703, !tbaa !719
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2703
  %51 = load ptr, ptr %50, align 8, !dbg !2703, !tbaa !719
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2703
  %53 = load ptr, ptr %52, align 8, !dbg !2703, !tbaa !719
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2703
  %55 = load ptr, ptr %54, align 8, !dbg !2703, !tbaa !719
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2703
  %57 = load ptr, ptr %56, align 8, !dbg !2703, !tbaa !719
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !2703
  br label %147, !dbg !2704

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.12.79, i32 noundef 5) #36, !dbg !2705
  %61 = load ptr, ptr %4, align 8, !dbg !2705, !tbaa !719
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2705
  %63 = load ptr, ptr %62, align 8, !dbg !2705, !tbaa !719
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2705
  %65 = load ptr, ptr %64, align 8, !dbg !2705, !tbaa !719
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2705
  %67 = load ptr, ptr %66, align 8, !dbg !2705, !tbaa !719
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2705
  %69 = load ptr, ptr %68, align 8, !dbg !2705, !tbaa !719
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2705
  %71 = load ptr, ptr %70, align 8, !dbg !2705, !tbaa !719
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !2705
  br label %147, !dbg !2706

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.13.80, i32 noundef 5) #36, !dbg !2707
  %75 = load ptr, ptr %4, align 8, !dbg !2707, !tbaa !719
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2707
  %77 = load ptr, ptr %76, align 8, !dbg !2707, !tbaa !719
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2707
  %79 = load ptr, ptr %78, align 8, !dbg !2707, !tbaa !719
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2707
  %81 = load ptr, ptr %80, align 8, !dbg !2707, !tbaa !719
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2707
  %83 = load ptr, ptr %82, align 8, !dbg !2707, !tbaa !719
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2707
  %85 = load ptr, ptr %84, align 8, !dbg !2707, !tbaa !719
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2707
  %87 = load ptr, ptr %86, align 8, !dbg !2707, !tbaa !719
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !2707
  br label %147, !dbg !2708

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.14.81, i32 noundef 5) #36, !dbg !2709
  %91 = load ptr, ptr %4, align 8, !dbg !2709, !tbaa !719
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2709
  %93 = load ptr, ptr %92, align 8, !dbg !2709, !tbaa !719
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2709
  %95 = load ptr, ptr %94, align 8, !dbg !2709, !tbaa !719
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2709
  %97 = load ptr, ptr %96, align 8, !dbg !2709, !tbaa !719
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2709
  %99 = load ptr, ptr %98, align 8, !dbg !2709, !tbaa !719
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2709
  %101 = load ptr, ptr %100, align 8, !dbg !2709, !tbaa !719
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2709
  %103 = load ptr, ptr %102, align 8, !dbg !2709, !tbaa !719
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2709
  %105 = load ptr, ptr %104, align 8, !dbg !2709, !tbaa !719
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !2709
  br label %147, !dbg !2710

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.15.82, i32 noundef 5) #36, !dbg !2711
  %109 = load ptr, ptr %4, align 8, !dbg !2711, !tbaa !719
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2711
  %111 = load ptr, ptr %110, align 8, !dbg !2711, !tbaa !719
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2711
  %113 = load ptr, ptr %112, align 8, !dbg !2711, !tbaa !719
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2711
  %115 = load ptr, ptr %114, align 8, !dbg !2711, !tbaa !719
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2711
  %117 = load ptr, ptr %116, align 8, !dbg !2711, !tbaa !719
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2711
  %119 = load ptr, ptr %118, align 8, !dbg !2711, !tbaa !719
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2711
  %121 = load ptr, ptr %120, align 8, !dbg !2711, !tbaa !719
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2711
  %123 = load ptr, ptr %122, align 8, !dbg !2711, !tbaa !719
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2711
  %125 = load ptr, ptr %124, align 8, !dbg !2711, !tbaa !719
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !2711
  br label %147, !dbg !2712

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.16.83, i32 noundef 5) #36, !dbg !2713
  %129 = load ptr, ptr %4, align 8, !dbg !2713, !tbaa !719
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2713
  %131 = load ptr, ptr %130, align 8, !dbg !2713, !tbaa !719
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2713
  %133 = load ptr, ptr %132, align 8, !dbg !2713, !tbaa !719
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2713
  %135 = load ptr, ptr %134, align 8, !dbg !2713, !tbaa !719
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2713
  %137 = load ptr, ptr %136, align 8, !dbg !2713, !tbaa !719
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2713
  %139 = load ptr, ptr %138, align 8, !dbg !2713, !tbaa !719
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2713
  %141 = load ptr, ptr %140, align 8, !dbg !2713, !tbaa !719
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2713
  %143 = load ptr, ptr %142, align 8, !dbg !2713, !tbaa !719
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2713
  %145 = load ptr, ptr %144, align 8, !dbg !2713, !tbaa !719
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !2713
  br label %147, !dbg !2714

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2715
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2716 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2720, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %1, metadata !2721, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %2, metadata !2722, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %3, metadata !2723, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %4, metadata !2724, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i64 0, metadata !2725, metadata !DIExpression()), !dbg !2726
  br label %6, !dbg !2727

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2729
  call void @llvm.dbg.value(metadata i64 %7, metadata !2725, metadata !DIExpression()), !dbg !2726
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2730
  %9 = load ptr, ptr %8, align 8, !dbg !2730, !tbaa !719
  %10 = icmp eq ptr %9, null, !dbg !2732
  %11 = add i64 %7, 1, !dbg !2733
  call void @llvm.dbg.value(metadata i64 %11, metadata !2725, metadata !DIExpression()), !dbg !2726
  br i1 %10, label %12, label %6, !dbg !2732, !llvm.loop !2734

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2736
  ret void, !dbg !2737
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2738 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2750, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata ptr %1, metadata !2751, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata ptr %2, metadata !2752, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata ptr %3, metadata !2753, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata ptr %4, metadata !2754, metadata !DIExpression()), !dbg !2758
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !2759
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2756, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 0, metadata !2755, metadata !DIExpression()), !dbg !2758
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2755, metadata !DIExpression()), !dbg !2758
  %10 = icmp ult i32 %9, 41, !dbg !2761
  br i1 %10, label %11, label %16, !dbg !2761

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2761
  %13 = zext i32 %9 to i64, !dbg !2761
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2761
  %15 = add nuw nsw i32 %9, 8, !dbg !2761
  store i32 %15, ptr %4, align 8, !dbg !2761
  br label %19, !dbg !2761

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2761
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2761
  store ptr %18, ptr %7, align 8, !dbg !2761
  br label %19, !dbg !2761

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2761
  %22 = load ptr, ptr %21, align 8, !dbg !2761
  store ptr %22, ptr %6, align 16, !dbg !2764, !tbaa !719
  %23 = icmp eq ptr %22, null, !dbg !2765
  br i1 %23, label %128, label %24, !dbg !2766

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !2755, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 1, metadata !2755, metadata !DIExpression()), !dbg !2758
  %25 = icmp ult i32 %20, 41, !dbg !2761
  br i1 %25, label %29, label %26, !dbg !2761

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2761
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2761
  store ptr %28, ptr %7, align 8, !dbg !2761
  br label %34, !dbg !2761

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2761
  %31 = zext i32 %20 to i64, !dbg !2761
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2761
  %33 = add nuw nsw i32 %20, 8, !dbg !2761
  store i32 %33, ptr %4, align 8, !dbg !2761
  br label %34, !dbg !2761

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2761
  %37 = load ptr, ptr %36, align 8, !dbg !2761
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2767
  store ptr %37, ptr %38, align 8, !dbg !2764, !tbaa !719
  %39 = icmp eq ptr %37, null, !dbg !2765
  br i1 %39, label %128, label %40, !dbg !2766

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !2755, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 2, metadata !2755, metadata !DIExpression()), !dbg !2758
  %41 = icmp ult i32 %35, 41, !dbg !2761
  br i1 %41, label %45, label %42, !dbg !2761

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2761
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2761
  store ptr %44, ptr %7, align 8, !dbg !2761
  br label %50, !dbg !2761

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2761
  %47 = zext i32 %35 to i64, !dbg !2761
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2761
  %49 = add nuw nsw i32 %35, 8, !dbg !2761
  store i32 %49, ptr %4, align 8, !dbg !2761
  br label %50, !dbg !2761

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2761
  %53 = load ptr, ptr %52, align 8, !dbg !2761
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2767
  store ptr %53, ptr %54, align 16, !dbg !2764, !tbaa !719
  %55 = icmp eq ptr %53, null, !dbg !2765
  br i1 %55, label %128, label %56, !dbg !2766

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !2755, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 3, metadata !2755, metadata !DIExpression()), !dbg !2758
  %57 = icmp ult i32 %51, 41, !dbg !2761
  br i1 %57, label %61, label %58, !dbg !2761

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2761
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2761
  store ptr %60, ptr %7, align 8, !dbg !2761
  br label %66, !dbg !2761

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2761
  %63 = zext i32 %51 to i64, !dbg !2761
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2761
  %65 = add nuw nsw i32 %51, 8, !dbg !2761
  store i32 %65, ptr %4, align 8, !dbg !2761
  br label %66, !dbg !2761

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2761
  %69 = load ptr, ptr %68, align 8, !dbg !2761
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2767
  store ptr %69, ptr %70, align 8, !dbg !2764, !tbaa !719
  %71 = icmp eq ptr %69, null, !dbg !2765
  br i1 %71, label %128, label %72, !dbg !2766

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !2755, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 4, metadata !2755, metadata !DIExpression()), !dbg !2758
  %73 = icmp ult i32 %67, 41, !dbg !2761
  br i1 %73, label %77, label %74, !dbg !2761

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2761
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2761
  store ptr %76, ptr %7, align 8, !dbg !2761
  br label %82, !dbg !2761

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2761
  %79 = zext i32 %67 to i64, !dbg !2761
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2761
  %81 = add nuw nsw i32 %67, 8, !dbg !2761
  store i32 %81, ptr %4, align 8, !dbg !2761
  br label %82, !dbg !2761

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2761
  %85 = load ptr, ptr %84, align 8, !dbg !2761
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2767
  store ptr %85, ptr %86, align 16, !dbg !2764, !tbaa !719
  %87 = icmp eq ptr %85, null, !dbg !2765
  br i1 %87, label %128, label %88, !dbg !2766

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !2755, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 5, metadata !2755, metadata !DIExpression()), !dbg !2758
  %89 = icmp ult i32 %83, 41, !dbg !2761
  br i1 %89, label %93, label %90, !dbg !2761

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2761
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2761
  store ptr %92, ptr %7, align 8, !dbg !2761
  br label %98, !dbg !2761

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2761
  %95 = zext i32 %83 to i64, !dbg !2761
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2761
  %97 = add nuw nsw i32 %83, 8, !dbg !2761
  store i32 %97, ptr %4, align 8, !dbg !2761
  br label %98, !dbg !2761

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2761
  %100 = load ptr, ptr %99, align 8, !dbg !2761
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2767
  store ptr %100, ptr %101, align 8, !dbg !2764, !tbaa !719
  %102 = icmp eq ptr %100, null, !dbg !2765
  br i1 %102, label %128, label %103, !dbg !2766

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !2755, metadata !DIExpression()), !dbg !2758
  %104 = load ptr, ptr %7, align 8, !dbg !2761
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2761
  store ptr %105, ptr %7, align 8, !dbg !2761
  %106 = load ptr, ptr %104, align 8, !dbg !2761
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2767
  store ptr %106, ptr %107, align 16, !dbg !2764, !tbaa !719
  %108 = icmp eq ptr %106, null, !dbg !2765
  br i1 %108, label %128, label %109, !dbg !2766

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !2755, metadata !DIExpression()), !dbg !2758
  %110 = load ptr, ptr %7, align 8, !dbg !2761
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2761
  store ptr %111, ptr %7, align 8, !dbg !2761
  %112 = load ptr, ptr %110, align 8, !dbg !2761
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2767
  store ptr %112, ptr %113, align 8, !dbg !2764, !tbaa !719
  %114 = icmp eq ptr %112, null, !dbg !2765
  br i1 %114, label %128, label %115, !dbg !2766

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !2755, metadata !DIExpression()), !dbg !2758
  %116 = load ptr, ptr %7, align 8, !dbg !2761
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2761
  store ptr %117, ptr %7, align 8, !dbg !2761
  %118 = load ptr, ptr %116, align 8, !dbg !2761
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2767
  store ptr %118, ptr %119, align 16, !dbg !2764, !tbaa !719
  %120 = icmp eq ptr %118, null, !dbg !2765
  br i1 %120, label %128, label %121, !dbg !2766

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !2755, metadata !DIExpression()), !dbg !2758
  %122 = load ptr, ptr %7, align 8, !dbg !2761
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2761
  store ptr %123, ptr %7, align 8, !dbg !2761
  %124 = load ptr, ptr %122, align 8, !dbg !2761
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2767
  store ptr %124, ptr %125, align 8, !dbg !2764, !tbaa !719
  %126 = icmp eq ptr %124, null, !dbg !2765
  %127 = select i1 %126, i64 9, i64 10, !dbg !2766
  br label %128, !dbg !2766

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2768
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2769
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !2770
  ret void, !dbg !2770
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2771 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2775, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata ptr %1, metadata !2776, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata ptr %2, metadata !2777, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata ptr %3, metadata !2778, metadata !DIExpression()), !dbg !2784
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #36, !dbg !2785
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2779, metadata !DIExpression()), !dbg !2786
  call void @llvm.va_start(ptr nonnull %5), !dbg !2787
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2788
  call void @llvm.va_end(ptr nonnull %5), !dbg !2789
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #36, !dbg !2790
  ret void, !dbg !2790
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2791 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2792, !tbaa !719
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %1), !dbg !2792
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.17.88, i32 noundef 5) #36, !dbg !2793
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.89) #36, !dbg !2793
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.19, i32 noundef 5) #36, !dbg !2794
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21.90) #36, !dbg !2794
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !2795
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !2795
  ret void, !dbg !2796
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2797 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2802, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i64 %1, metadata !2803, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i64 %2, metadata !2804, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata ptr %0, metadata !2806, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i64 %1, metadata !2809, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i64 %2, metadata !2810, metadata !DIExpression()), !dbg !2811
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2813
  call void @llvm.dbg.value(metadata ptr %4, metadata !2814, metadata !DIExpression()), !dbg !2819
  %5 = icmp eq ptr %4, null, !dbg !2821
  br i1 %5, label %6, label %7, !dbg !2823

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !2824
  unreachable, !dbg !2824

7:                                                ; preds = %3
  ret ptr %4, !dbg !2825
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2807 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2806, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 %1, metadata !2809, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 %2, metadata !2810, metadata !DIExpression()), !dbg !2826
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2827
  call void @llvm.dbg.value(metadata ptr %4, metadata !2814, metadata !DIExpression()), !dbg !2828
  %5 = icmp eq ptr %4, null, !dbg !2830
  br i1 %5, label %6, label %7, !dbg !2831

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !2832
  unreachable, !dbg !2832

7:                                                ; preds = %3
  ret ptr %4, !dbg !2833
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2834 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2838, metadata !DIExpression()), !dbg !2839
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2840
  call void @llvm.dbg.value(metadata ptr %2, metadata !2814, metadata !DIExpression()), !dbg !2841
  %3 = icmp eq ptr %2, null, !dbg !2843
  br i1 %3, label %4, label %5, !dbg !2844

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !2845
  unreachable, !dbg !2845

5:                                                ; preds = %1
  ret ptr %2, !dbg !2846
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2847 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2848 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2852, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 %0, metadata !2854, metadata !DIExpression()), !dbg !2858
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2860
  call void @llvm.dbg.value(metadata ptr %2, metadata !2814, metadata !DIExpression()), !dbg !2861
  %3 = icmp eq ptr %2, null, !dbg !2863
  br i1 %3, label %4, label %5, !dbg !2864

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !2865
  unreachable, !dbg !2865

5:                                                ; preds = %1
  ret ptr %2, !dbg !2866
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2867 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2871, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i64 %0, metadata !2838, metadata !DIExpression()), !dbg !2873
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2875
  call void @llvm.dbg.value(metadata ptr %2, metadata !2814, metadata !DIExpression()), !dbg !2876
  %3 = icmp eq ptr %2, null, !dbg !2878
  br i1 %3, label %4, label %5, !dbg !2879

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !2880
  unreachable, !dbg !2880

5:                                                ; preds = %1
  ret ptr %2, !dbg !2881
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2882 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2886, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %1, metadata !2887, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata ptr %0, metadata !2889, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i64 %1, metadata !2893, metadata !DIExpression()), !dbg !2894
  %3 = icmp eq i64 %1, 0, !dbg !2896
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2896
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !2897
  call void @llvm.dbg.value(metadata ptr %5, metadata !2814, metadata !DIExpression()), !dbg !2898
  %6 = icmp eq ptr %5, null, !dbg !2900
  br i1 %6, label %7, label %8, !dbg !2901

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !2902
  unreachable, !dbg !2902

8:                                                ; preds = %2
  ret ptr %5, !dbg !2903
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2904 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2905 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2909, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i64 %1, metadata !2910, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata ptr %0, metadata !2912, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i64 %1, metadata !2915, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata ptr %0, metadata !2889, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 %1, metadata !2893, metadata !DIExpression()), !dbg !2918
  %3 = icmp eq i64 %1, 0, !dbg !2920
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2920
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !2921
  call void @llvm.dbg.value(metadata ptr %5, metadata !2814, metadata !DIExpression()), !dbg !2922
  %6 = icmp eq ptr %5, null, !dbg !2924
  br i1 %6, label %7, label %8, !dbg !2925

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !2926
  unreachable, !dbg !2926

8:                                                ; preds = %2
  ret ptr %5, !dbg !2927
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2928 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2932, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 %1, metadata !2933, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 %2, metadata !2934, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata ptr %0, metadata !2936, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i64 %1, metadata !2939, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i64 %2, metadata !2940, metadata !DIExpression()), !dbg !2941
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2943
  call void @llvm.dbg.value(metadata ptr %4, metadata !2814, metadata !DIExpression()), !dbg !2944
  %5 = icmp eq ptr %4, null, !dbg !2946
  br i1 %5, label %6, label %7, !dbg !2947

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !2948
  unreachable, !dbg !2948

7:                                                ; preds = %3
  ret ptr %4, !dbg !2949
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !2950 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2954, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64 %1, metadata !2955, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata ptr null, metadata !2806, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i64 %0, metadata !2809, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i64 %1, metadata !2810, metadata !DIExpression()), !dbg !2957
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !2959
  call void @llvm.dbg.value(metadata ptr %3, metadata !2814, metadata !DIExpression()), !dbg !2960
  %4 = icmp eq ptr %3, null, !dbg !2962
  br i1 %4, label %5, label %6, !dbg !2963

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !2964
  unreachable, !dbg !2964

6:                                                ; preds = %2
  ret ptr %3, !dbg !2965
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !2966 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2970, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i64 %1, metadata !2971, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata ptr null, metadata !2932, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %0, metadata !2933, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %1, metadata !2934, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata ptr null, metadata !2936, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %0, metadata !2939, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %1, metadata !2940, metadata !DIExpression()), !dbg !2975
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !2977
  call void @llvm.dbg.value(metadata ptr %3, metadata !2814, metadata !DIExpression()), !dbg !2978
  %4 = icmp eq ptr %3, null, !dbg !2980
  br i1 %4, label %5, label %6, !dbg !2981

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !2982
  unreachable, !dbg !2982

6:                                                ; preds = %2
  ret ptr %3, !dbg !2983
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !2984 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2988, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata ptr %1, metadata !2989, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata ptr %0, metadata !659, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %1, metadata !660, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 1, metadata !661, metadata !DIExpression()), !dbg !2991
  %3 = load i64, ptr %1, align 8, !dbg !2993, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 %3, metadata !662, metadata !DIExpression()), !dbg !2991
  %4 = icmp eq ptr %0, null, !dbg !2994
  br i1 %4, label %5, label %8, !dbg !2996

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2997
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3000
  br label %15, !dbg !3000

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3001
  %10 = add nuw i64 %9, 1, !dbg !3001
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3001
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3001
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3001
  call void @llvm.dbg.value(metadata i64 %13, metadata !662, metadata !DIExpression()), !dbg !2991
  br i1 %12, label %14, label %15, !dbg !3004

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !3005
  unreachable, !dbg !3005

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2991
  call void @llvm.dbg.value(metadata i64 %16, metadata !662, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %0, metadata !2806, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 %16, metadata !2809, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 1, metadata !2810, metadata !DIExpression()), !dbg !3006
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3008
  call void @llvm.dbg.value(metadata ptr %17, metadata !2814, metadata !DIExpression()), !dbg !3009
  %18 = icmp eq ptr %17, null, !dbg !3011
  br i1 %18, label %19, label %20, !dbg !3012

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !3013
  unreachable, !dbg !3013

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !659, metadata !DIExpression()), !dbg !2991
  store i64 %16, ptr %1, align 8, !dbg !3014, !tbaa !2093
  ret ptr %17, !dbg !3015
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !654 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !659, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata ptr %1, metadata !660, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %2, metadata !661, metadata !DIExpression()), !dbg !3016
  %4 = load i64, ptr %1, align 8, !dbg !3017, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 %4, metadata !662, metadata !DIExpression()), !dbg !3016
  %5 = icmp eq ptr %0, null, !dbg !3018
  br i1 %5, label %6, label %13, !dbg !3019

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3020
  br i1 %7, label %8, label %20, !dbg !3021

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3022
  call void @llvm.dbg.value(metadata i64 %9, metadata !662, metadata !DIExpression()), !dbg !3016
  %10 = icmp ugt i64 %2, 128, !dbg !3024
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3025
  call void @llvm.dbg.value(metadata i64 %12, metadata !662, metadata !DIExpression()), !dbg !3016
  br label %20, !dbg !3026

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3027
  %15 = add nuw i64 %14, 1, !dbg !3027
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3027
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3027
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3027
  call void @llvm.dbg.value(metadata i64 %18, metadata !662, metadata !DIExpression()), !dbg !3016
  br i1 %17, label %19, label %20, !dbg !3028

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !3029
  unreachable, !dbg !3029

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3016
  call void @llvm.dbg.value(metadata i64 %21, metadata !662, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata ptr %0, metadata !2806, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %21, metadata !2809, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %2, metadata !2810, metadata !DIExpression()), !dbg !3030
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3032
  call void @llvm.dbg.value(metadata ptr %22, metadata !2814, metadata !DIExpression()), !dbg !3033
  %23 = icmp eq ptr %22, null, !dbg !3035
  br i1 %23, label %24, label %25, !dbg !3036

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !3037
  unreachable, !dbg !3037

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !659, metadata !DIExpression()), !dbg !3016
  store i64 %21, ptr %1, align 8, !dbg !3038, !tbaa !2093
  ret ptr %22, !dbg !3039
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !666 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !674, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata ptr %1, metadata !675, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64 %2, metadata !676, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64 %3, metadata !677, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64 %4, metadata !678, metadata !DIExpression()), !dbg !3040
  %6 = load i64, ptr %1, align 8, !dbg !3041, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 %6, metadata !679, metadata !DIExpression()), !dbg !3040
  %7 = ashr i64 %6, 1, !dbg !3042
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3042
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3042
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3042
  call void @llvm.dbg.value(metadata i64 %10, metadata !680, metadata !DIExpression()), !dbg !3040
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3044
  call void @llvm.dbg.value(metadata i64 %11, metadata !680, metadata !DIExpression()), !dbg !3040
  %12 = icmp sgt i64 %3, -1, !dbg !3045
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3047
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3047
  call void @llvm.dbg.value(metadata i64 %15, metadata !680, metadata !DIExpression()), !dbg !3040
  %16 = icmp slt i64 %4, 0, !dbg !3048
  br i1 %16, label %17, label %30, !dbg !3048

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3048
  br i1 %18, label %19, label %24, !dbg !3048

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3048
  %21 = udiv i64 9223372036854775807, %20, !dbg !3048
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3048
  br i1 %23, label %46, label %43, !dbg !3048

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3048
  br i1 %25, label %43, label %26, !dbg !3048

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3048
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3048
  %29 = icmp ult i64 %28, %15, !dbg !3048
  br i1 %29, label %46, label %43, !dbg !3048

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3048
  br i1 %31, label %43, label %32, !dbg !3048

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3048
  br i1 %33, label %34, label %40, !dbg !3048

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3048
  br i1 %35, label %43, label %36, !dbg !3048

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3048
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3048
  %39 = icmp ult i64 %38, %4, !dbg !3048
  br i1 %39, label %46, label %43, !dbg !3048

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3048
  br i1 %42, label %46, label %43, !dbg !3048

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !681, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3040
  %44 = mul i64 %15, %4, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %44, metadata !681, metadata !DIExpression()), !dbg !3040
  %45 = icmp slt i64 %44, 128, !dbg !3048
  br i1 %45, label %46, label %51, !dbg !3048

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !682, metadata !DIExpression()), !dbg !3040
  %48 = sdiv i64 %47, %4, !dbg !3049
  call void @llvm.dbg.value(metadata i64 %48, metadata !680, metadata !DIExpression()), !dbg !3040
  %49 = srem i64 %47, %4, !dbg !3052
  %50 = sub nsw i64 %47, %49, !dbg !3053
  call void @llvm.dbg.value(metadata i64 %50, metadata !681, metadata !DIExpression()), !dbg !3040
  br label %51, !dbg !3054

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3040
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3040
  call void @llvm.dbg.value(metadata i64 %53, metadata !681, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64 %52, metadata !680, metadata !DIExpression()), !dbg !3040
  %54 = icmp eq ptr %0, null, !dbg !3055
  br i1 %54, label %55, label %56, !dbg !3057

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3058, !tbaa !2093
  br label %56, !dbg !3059

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3060
  %58 = icmp slt i64 %57, %2, !dbg !3062
  br i1 %58, label %59, label %96, !dbg !3063

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3064
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3064
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3064
  call void @llvm.dbg.value(metadata i64 %62, metadata !680, metadata !DIExpression()), !dbg !3040
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3065
  br i1 %65, label %95, label %66, !dbg !3065

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3066

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3066
  br i1 %68, label %69, label %74, !dbg !3066

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3066
  %71 = udiv i64 9223372036854775807, %70, !dbg !3066
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3066
  br i1 %73, label %95, label %93, !dbg !3066

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3066
  br i1 %75, label %93, label %76, !dbg !3066

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3066
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3066
  %79 = icmp ult i64 %78, %62, !dbg !3066
  br i1 %79, label %95, label %93, !dbg !3066

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3066
  br i1 %81, label %93, label %82, !dbg !3066

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3066
  br i1 %83, label %84, label %90, !dbg !3066

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3066
  br i1 %85, label %93, label %86, !dbg !3066

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3066
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3066
  %89 = icmp ult i64 %88, %4, !dbg !3066
  br i1 %89, label %95, label %93, !dbg !3066

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3066
  br i1 %92, label %95, label %93, !dbg !3066

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !681, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3040
  %94 = mul i64 %62, %4, !dbg !3066
  call void @llvm.dbg.value(metadata i64 %94, metadata !681, metadata !DIExpression()), !dbg !3040
  br label %96, !dbg !3067

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #37, !dbg !3068
  unreachable, !dbg !3068

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3040
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3040
  call void @llvm.dbg.value(metadata i64 %98, metadata !681, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64 %97, metadata !680, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata ptr %0, metadata !2886, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i64 %98, metadata !2887, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata ptr %0, metadata !2889, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %98, metadata !2893, metadata !DIExpression()), !dbg !3071
  %99 = icmp eq i64 %98, 0, !dbg !3073
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3073
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #42, !dbg !3074
  call void @llvm.dbg.value(metadata ptr %101, metadata !2814, metadata !DIExpression()), !dbg !3075
  %102 = icmp eq ptr %101, null, !dbg !3077
  br i1 %102, label %103, label %104, !dbg !3078

103:                                              ; preds = %96
  tail call void @xalloc_die() #37, !dbg !3079
  unreachable, !dbg !3079

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !674, metadata !DIExpression()), !dbg !3040
  store i64 %97, ptr %1, align 8, !dbg !3080, !tbaa !2093
  ret ptr %101, !dbg !3081
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3082 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3084, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i64 %0, metadata !3086, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 1, metadata !3089, metadata !DIExpression()), !dbg !3090
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3092
  call void @llvm.dbg.value(metadata ptr %2, metadata !2814, metadata !DIExpression()), !dbg !3093
  %3 = icmp eq ptr %2, null, !dbg !3095
  br i1 %3, label %4, label %5, !dbg !3096

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3097
  unreachable, !dbg !3097

5:                                                ; preds = %1
  ret ptr %2, !dbg !3098
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3099 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3087 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3086, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i64 %1, metadata !3089, metadata !DIExpression()), !dbg !3100
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3101
  call void @llvm.dbg.value(metadata ptr %3, metadata !2814, metadata !DIExpression()), !dbg !3102
  %4 = icmp eq ptr %3, null, !dbg !3104
  br i1 %4, label %5, label %6, !dbg !3105

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3106
  unreachable, !dbg !3106

6:                                                ; preds = %2
  ret ptr %3, !dbg !3107
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3108 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3110, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %0, metadata !3112, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i64 1, metadata !3115, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i64 %0, metadata !3118, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 1, metadata !3121, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %0, metadata !3118, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 1, metadata !3121, metadata !DIExpression()), !dbg !3122
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3124
  call void @llvm.dbg.value(metadata ptr %2, metadata !2814, metadata !DIExpression()), !dbg !3125
  %3 = icmp eq ptr %2, null, !dbg !3127
  br i1 %3, label %4, label %5, !dbg !3128

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3129
  unreachable, !dbg !3129

5:                                                ; preds = %1
  ret ptr %2, !dbg !3130
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3113 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3112, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %1, metadata !3115, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %0, metadata !3118, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i64 %1, metadata !3121, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i64 %0, metadata !3118, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i64 %1, metadata !3121, metadata !DIExpression()), !dbg !3132
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3134
  call void @llvm.dbg.value(metadata ptr %3, metadata !2814, metadata !DIExpression()), !dbg !3135
  %4 = icmp eq ptr %3, null, !dbg !3137
  br i1 %4, label %5, label %6, !dbg !3138

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3139
  unreachable, !dbg !3139

6:                                                ; preds = %2
  ret ptr %3, !dbg !3140
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3141 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3145, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 %1, metadata !3146, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 %1, metadata !2838, metadata !DIExpression()), !dbg !3148
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3150
  call void @llvm.dbg.value(metadata ptr %3, metadata !2814, metadata !DIExpression()), !dbg !3151
  %4 = icmp eq ptr %3, null, !dbg !3153
  br i1 %4, label %5, label %6, !dbg !3154

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3155
  unreachable, !dbg !3155

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3156, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata ptr %0, metadata !3162, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i64 %1, metadata !3163, metadata !DIExpression()), !dbg !3164
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3166
  ret ptr %3, !dbg !3167
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3168 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3172, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i64 %1, metadata !3173, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i64 %1, metadata !2852, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %1, metadata !2854, metadata !DIExpression()), !dbg !3177
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3179
  call void @llvm.dbg.value(metadata ptr %3, metadata !2814, metadata !DIExpression()), !dbg !3180
  %4 = icmp eq ptr %3, null, !dbg !3182
  br i1 %4, label %5, label %6, !dbg !3183

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3184
  unreachable, !dbg !3184

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3156, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata ptr %0, metadata !3162, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %1, metadata !3163, metadata !DIExpression()), !dbg !3185
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3187
  ret ptr %3, !dbg !3188
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3189 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3193, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 %1, metadata !3194, metadata !DIExpression()), !dbg !3196
  %3 = add nsw i64 %1, 1, !dbg !3197
  call void @llvm.dbg.value(metadata i64 %3, metadata !2852, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %3, metadata !2854, metadata !DIExpression()), !dbg !3200
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3202
  call void @llvm.dbg.value(metadata ptr %4, metadata !2814, metadata !DIExpression()), !dbg !3203
  %5 = icmp eq ptr %4, null, !dbg !3205
  br i1 %5, label %6, label %7, !dbg !3206

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3207
  unreachable, !dbg !3207

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3195, metadata !DIExpression()), !dbg !3196
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3208
  store i8 0, ptr %8, align 1, !dbg !3209, !tbaa !750
  call void @llvm.dbg.value(metadata ptr %4, metadata !3156, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata ptr %0, metadata !3162, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i64 %1, metadata !3163, metadata !DIExpression()), !dbg !3210
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3212
  ret ptr %4, !dbg !3213
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3214 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3216, metadata !DIExpression()), !dbg !3217
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3218
  %3 = add i64 %2, 1, !dbg !3219
  call void @llvm.dbg.value(metadata ptr %0, metadata !3145, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 %3, metadata !3146, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 %3, metadata !2838, metadata !DIExpression()), !dbg !3222
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3224
  call void @llvm.dbg.value(metadata ptr %4, metadata !2814, metadata !DIExpression()), !dbg !3225
  %5 = icmp eq ptr %4, null, !dbg !3227
  br i1 %5, label %6, label %7, !dbg !3228

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3229
  unreachable, !dbg !3229

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3156, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %0, metadata !3162, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %3, metadata !3163, metadata !DIExpression()), !dbg !3230
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3232
  ret ptr %4, !dbg !3233
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3234 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3239, !tbaa !741
  call void @llvm.dbg.value(metadata i32 %1, metadata !3236, metadata !DIExpression()), !dbg !3240
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.101, ptr noundef nonnull @.str.2.102, i32 noundef 5) #36, !dbg !3239
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.103, ptr noundef %2) #36, !dbg !3239
  %3 = icmp eq i32 %1, 0, !dbg !3239
  tail call void @llvm.assume(i1 %3), !dbg !3239
  tail call void @abort() #37, !dbg !3241
  unreachable, !dbg !3241
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3242 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3280, metadata !DIExpression()), !dbg !3285
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3286
  call void @llvm.dbg.value(metadata i1 poison, metadata !3281, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3285
  call void @llvm.dbg.value(metadata ptr %0, metadata !3287, metadata !DIExpression()), !dbg !3290
  %3 = load i32, ptr %0, align 8, !dbg !3292, !tbaa !3293
  %4 = and i32 %3, 32, !dbg !3294
  %5 = icmp eq i32 %4, 0, !dbg !3294
  call void @llvm.dbg.value(metadata i1 %5, metadata !3283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3285
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3295
  %7 = icmp eq i32 %6, 0, !dbg !3296
  call void @llvm.dbg.value(metadata i1 %7, metadata !3284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3285
  br i1 %5, label %8, label %18, !dbg !3297

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3299
  call void @llvm.dbg.value(metadata i1 %9, metadata !3281, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3285
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3300
  %11 = xor i1 %7, true, !dbg !3300
  %12 = sext i1 %11 to i32, !dbg !3300
  br i1 %10, label %21, label %13, !dbg !3300

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3301
  %15 = load i32, ptr %14, align 4, !dbg !3301, !tbaa !741
  %16 = icmp ne i32 %15, 9, !dbg !3302
  %17 = sext i1 %16 to i32, !dbg !3303
  br label %21, !dbg !3303

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3304

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3306
  store i32 0, ptr %20, align 4, !dbg !3308, !tbaa !741
  br label %21, !dbg !3306

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3285
  ret i32 %22, !dbg !3309
}

; Function Attrs: nounwind
declare !dbg !3310 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3314 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3352, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i32 0, metadata !3353, metadata !DIExpression()), !dbg !3356
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3357
  call void @llvm.dbg.value(metadata i32 %2, metadata !3354, metadata !DIExpression()), !dbg !3356
  %3 = icmp slt i32 %2, 0, !dbg !3358
  br i1 %3, label %4, label %6, !dbg !3360

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3361
  br label %24, !dbg !3362

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3363
  %8 = icmp eq i32 %7, 0, !dbg !3363
  br i1 %8, label %13, label %9, !dbg !3365

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3366
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3367
  %12 = icmp eq i64 %11, -1, !dbg !3368
  br i1 %12, label %16, label %13, !dbg !3369

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3370
  %15 = icmp eq i32 %14, 0, !dbg !3370
  br i1 %15, label %16, label %18, !dbg !3371

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3353, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i32 0, metadata !3355, metadata !DIExpression()), !dbg !3356
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3372
  call void @llvm.dbg.value(metadata i32 %17, metadata !3355, metadata !DIExpression()), !dbg !3356
  br label %24, !dbg !3373

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3374
  %20 = load i32, ptr %19, align 4, !dbg !3374, !tbaa !741
  call void @llvm.dbg.value(metadata i32 %20, metadata !3353, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i32 0, metadata !3355, metadata !DIExpression()), !dbg !3356
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3372
  call void @llvm.dbg.value(metadata i32 %21, metadata !3355, metadata !DIExpression()), !dbg !3356
  %22 = icmp eq i32 %20, 0, !dbg !3375
  br i1 %22, label %24, label %23, !dbg !3373

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3377, !tbaa !741
  call void @llvm.dbg.value(metadata i32 -1, metadata !3355, metadata !DIExpression()), !dbg !3356
  br label %24, !dbg !3379

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3356
  ret i32 %25, !dbg !3380
}

; Function Attrs: nofree nounwind
declare !dbg !3381 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !3382 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3383 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3384 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3387 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3425, metadata !DIExpression()), !dbg !3426
  %2 = icmp eq ptr %0, null, !dbg !3427
  br i1 %2, label %6, label %3, !dbg !3429

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3430
  %5 = icmp eq i32 %4, 0, !dbg !3430
  br i1 %5, label %6, label %8, !dbg !3431

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3432
  br label %16, !dbg !3433

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3434, metadata !DIExpression()), !dbg !3439
  %9 = load i32, ptr %0, align 8, !dbg !3441, !tbaa !3293
  %10 = and i32 %9, 256, !dbg !3443
  %11 = icmp eq i32 %10, 0, !dbg !3443
  br i1 %11, label %14, label %12, !dbg !3444

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3445
  br label %14, !dbg !3445

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3446
  br label %16, !dbg !3447

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3426
  ret i32 %17, !dbg !3448
}

; Function Attrs: nofree nounwind
declare !dbg !3449 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3450 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3489, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64 %1, metadata !3490, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 %2, metadata !3491, metadata !DIExpression()), !dbg !3495
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3496
  %5 = load ptr, ptr %4, align 8, !dbg !3496, !tbaa !3497
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3498
  %7 = load ptr, ptr %6, align 8, !dbg !3498, !tbaa !3499
  %8 = icmp eq ptr %5, %7, !dbg !3500
  br i1 %8, label %9, label %27, !dbg !3501

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3502
  %11 = load ptr, ptr %10, align 8, !dbg !3502, !tbaa !1156
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3503
  %13 = load ptr, ptr %12, align 8, !dbg !3503, !tbaa !3504
  %14 = icmp eq ptr %11, %13, !dbg !3505
  br i1 %14, label %15, label %27, !dbg !3506

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3507
  %17 = load ptr, ptr %16, align 8, !dbg !3507, !tbaa !3508
  %18 = icmp eq ptr %17, null, !dbg !3509
  br i1 %18, label %19, label %27, !dbg !3510

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3511
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3512
  call void @llvm.dbg.value(metadata i64 %21, metadata !3492, metadata !DIExpression()), !dbg !3513
  %22 = icmp eq i64 %21, -1, !dbg !3514
  br i1 %22, label %29, label %23, !dbg !3516

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3517, !tbaa !3293
  %25 = and i32 %24, -17, !dbg !3517
  store i32 %25, ptr %0, align 8, !dbg !3517, !tbaa !3293
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3518
  store i64 %21, ptr %26, align 8, !dbg !3519, !tbaa !3520
  br label %29, !dbg !3521

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3522
  br label %29, !dbg !3523

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3495
  ret i32 %30, !dbg !3524
}

; Function Attrs: nofree nounwind
declare !dbg !3525 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3528 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3533, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata ptr %1, metadata !3534, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i64 %2, metadata !3535, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata ptr %3, metadata !3536, metadata !DIExpression()), !dbg !3538
  %5 = icmp eq ptr %1, null, !dbg !3539
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3541
  %7 = select i1 %5, ptr @.str.114, ptr %1, !dbg !3541
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3541
  call void @llvm.dbg.value(metadata i64 %8, metadata !3535, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata ptr %7, metadata !3534, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata ptr %6, metadata !3533, metadata !DIExpression()), !dbg !3538
  %9 = icmp eq ptr %3, null, !dbg !3542
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3544
  call void @llvm.dbg.value(metadata ptr %10, metadata !3536, metadata !DIExpression()), !dbg !3538
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3545
  call void @llvm.dbg.value(metadata i64 %11, metadata !3537, metadata !DIExpression()), !dbg !3538
  %12 = icmp ult i64 %11, -3, !dbg !3546
  br i1 %12, label %13, label %17, !dbg !3548

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #38, !dbg !3549
  %15 = icmp eq i32 %14, 0, !dbg !3549
  br i1 %15, label %16, label %29, !dbg !3550

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3551, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata ptr %10, metadata !3558, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i32 0, metadata !3561, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i64 8, metadata !3562, metadata !DIExpression()), !dbg !3563
  store i64 0, ptr %10, align 1, !dbg !3565
  br label %29, !dbg !3566

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3567
  br i1 %18, label %19, label %20, !dbg !3569

19:                                               ; preds = %17
  tail call void @abort() #37, !dbg !3570
  unreachable, !dbg !3570

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3571

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #36, !dbg !3573
  br i1 %23, label %29, label %24, !dbg !3574

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3575
  br i1 %25, label %29, label %26, !dbg !3578

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3579, !tbaa !750
  %28 = zext i8 %27 to i32, !dbg !3580
  store i32 %28, ptr %6, align 4, !dbg !3581, !tbaa !741
  br label %29, !dbg !3582

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3538
  ret i64 %30, !dbg !3583
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3584 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3590 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3592, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 %1, metadata !3593, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 %2, metadata !3594, metadata !DIExpression()), !dbg !3596
  %4 = icmp eq i64 %2, 0, !dbg !3597
  br i1 %4, label %8, label %5, !dbg !3597

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3597
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3597
  br i1 %7, label %13, label %8, !dbg !3597

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3595, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3596
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3595, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3596
  %9 = mul i64 %2, %1, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %9, metadata !3595, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %0, metadata !3599, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i64 %9, metadata !3602, metadata !DIExpression()), !dbg !3603
  %10 = icmp eq i64 %9, 0, !dbg !3605
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3605
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3606
  br label %15, !dbg !3607

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3595, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3596
  %14 = tail call ptr @__errno_location() #39, !dbg !3608
  store i32 12, ptr %14, align 4, !dbg !3610, !tbaa !741
  br label %15, !dbg !3611

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3596
  ret ptr %16, !dbg !3612
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3613 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3617, metadata !DIExpression()), !dbg !3622
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !3623
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3618, metadata !DIExpression()), !dbg !3624
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !3625
  %4 = icmp eq i32 %3, 0, !dbg !3625
  br i1 %4, label %5, label %12, !dbg !3627

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3628, metadata !DIExpression()), !dbg !3632
  %6 = load i16, ptr %2, align 16, !dbg !3635
  %7 = icmp eq i16 %6, 67, !dbg !3635
  br i1 %7, label %11, label %8, !dbg !3636

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3628, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata ptr @.str.1.119, metadata !3631, metadata !DIExpression()), !dbg !3637
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.119, i64 6), !dbg !3639
  %10 = icmp eq i32 %9, 0, !dbg !3640
  br i1 %10, label %11, label %12, !dbg !3641

11:                                               ; preds = %8, %5
  br label %12, !dbg !3642

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3622
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !3643
  ret i1 %13, !dbg !3643
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3644 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3648, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr %1, metadata !3649, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i64 %2, metadata !3650, metadata !DIExpression()), !dbg !3651
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !3652
  ret i32 %4, !dbg !3653
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3654 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3658, metadata !DIExpression()), !dbg !3659
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !3660
  ret ptr %2, !dbg !3661
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3662 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3664, metadata !DIExpression()), !dbg !3666
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3667
  call void @llvm.dbg.value(metadata ptr %2, metadata !3665, metadata !DIExpression()), !dbg !3666
  ret ptr %2, !dbg !3668
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3669 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3671, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata ptr %1, metadata !3672, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i64 %2, metadata !3673, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i32 %0, metadata !3664, metadata !DIExpression()), !dbg !3679
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3681
  call void @llvm.dbg.value(metadata ptr %4, metadata !3665, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata ptr %4, metadata !3674, metadata !DIExpression()), !dbg !3678
  %5 = icmp eq ptr %4, null, !dbg !3682
  br i1 %5, label %6, label %9, !dbg !3683

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3684
  br i1 %7, label %19, label %8, !dbg !3687

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3688, !tbaa !750
  br label %19, !dbg !3689

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3690
  call void @llvm.dbg.value(metadata i64 %10, metadata !3675, metadata !DIExpression()), !dbg !3691
  %11 = icmp ult i64 %10, %2, !dbg !3692
  br i1 %11, label %12, label %14, !dbg !3694

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3695
  call void @llvm.dbg.value(metadata ptr %1, metadata !3697, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata ptr %4, metadata !3700, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i64 %13, metadata !3701, metadata !DIExpression()), !dbg !3702
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !3704
  br label %19, !dbg !3705

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3706
  br i1 %15, label %19, label %16, !dbg !3709

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3710
  call void @llvm.dbg.value(metadata ptr %1, metadata !3697, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata ptr %4, metadata !3700, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i64 %17, metadata !3701, metadata !DIExpression()), !dbg !3712
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !3714
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3715
  store i8 0, ptr %18, align 1, !dbg !3716, !tbaa !750
  br label %19, !dbg !3717

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3718
  ret i32 %20, !dbg !3719
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { noreturn }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!77, !294, !298, !313, !609, !641, !365, !379, !427, !643, !601, !650, !684, !686, !688, !690, !692, !625, !694, !697, !701, !703}
!llvm.ident = !{!705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705, !705}
!llvm.module.flags = !{!706, !707, !708, !709, !710, !711}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/true.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ce7e4fa94fdaa872b3d469aaea1081c9")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!233 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !236)
!235 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!258 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!312 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !313, file: !314, line: 66, type: !360, isLocal: false, isDefinition: true)
!313 = distinct !DICompileUnit(language: DW_LANG_C11, file: !314, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !315, globals: !316, splitDebugInlining: false, nameTableKind: None)
!314 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!315 = !{!98, !104}
!316 = !{!317, !319, !339, !341, !343, !345, !311, !347, !349, !351, !353, !358}
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !314, line: 272, type: !9, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "old_file_name", scope: !321, file: !314, line: 304, type: !75, isLocal: true, isDefinition: true)
!321 = distinct !DISubprogram(name: "verror_at_line", scope: !314, file: !314, line: 298, type: !322, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !332)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !99, !99, !75, !82, !75, !324}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !326)
!326 = !{!327, !329, !330, !331}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !325, file: !328, baseType: !82, size: 32)
!328 = !DIFile(filename: "lib/error.c", directory: "/src")
!329 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !325, file: !328, baseType: !82, size: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !325, file: !328, baseType: !98, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !325, file: !328, baseType: !98, size: 64, offset: 128)
!332 = !{!333, !334, !335, !336, !337, !338}
!333 = !DILocalVariable(name: "status", arg: 1, scope: !321, file: !314, line: 298, type: !99)
!334 = !DILocalVariable(name: "errnum", arg: 2, scope: !321, file: !314, line: 298, type: !99)
!335 = !DILocalVariable(name: "file_name", arg: 3, scope: !321, file: !314, line: 298, type: !75)
!336 = !DILocalVariable(name: "line_number", arg: 4, scope: !321, file: !314, line: 298, type: !82)
!337 = !DILocalVariable(name: "message", arg: 5, scope: !321, file: !314, line: 298, type: !75)
!338 = !DILocalVariable(name: "args", arg: 6, scope: !321, file: !314, line: 298, type: !324)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(name: "old_line_number", scope: !321, file: !314, line: 305, type: !82, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !314, line: 338, type: !112, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !314, line: 346, type: !141, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !314, line: 346, type: !119, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "error_message_count", scope: !313, file: !314, line: 69, type: !82, isLocal: false, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !313, file: !314, line: 295, type: !99, isLocal: false, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !314, line: 208, type: !54, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !314, line: 208, type: !355, isLocal: true, isDefinition: true)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 21)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !314, line: 214, type: !9, isLocal: true, isDefinition: true)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{null}
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "program_name", scope: !365, file: !366, line: 31, type: !75, isLocal: false, isDefinition: true)
!365 = distinct !DICompileUnit(language: DW_LANG_C11, file: !366, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !367, globals: !368, splitDebugInlining: false, nameTableKind: None)
!366 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!367 = !{!97}
!368 = !{!363, !369, !371}
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !366, line: 46, type: !141, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !366, line: 49, type: !112, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "utf07FF", scope: !375, file: !376, line: 46, type: !403, isLocal: true, isDefinition: true)
!375 = distinct !DISubprogram(name: "proper_name_lite", scope: !376, file: !376, line: 38, type: !377, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !381)
!376 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!377 = !DISubroutineType(types: !378)
!378 = !{!75, !75, !75}
!379 = distinct !DICompileUnit(language: DW_LANG_C11, file: !376, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !380, splitDebugInlining: false, nameTableKind: None)
!380 = !{!373}
!381 = !{!382, !383, !384, !385, !390}
!382 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !375, file: !376, line: 38, type: !75)
!383 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !375, file: !376, line: 38, type: !75)
!384 = !DILocalVariable(name: "translation", scope: !375, file: !376, line: 40, type: !75)
!385 = !DILocalVariable(name: "w", scope: !375, file: !376, line: 47, type: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !387, line: 37, baseType: !388)
!387 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !258, line: 57, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !258, line: 42, baseType: !82)
!390 = !DILocalVariable(name: "mbs", scope: !375, file: !376, line: 48, type: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !392, line: 6, baseType: !393)
!392 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !394, line: 21, baseType: !395)
!394 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 13, size: 64, elements: !396)
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !395, file: !394, line: 15, baseType: !99, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !395, file: !394, line: 20, baseType: !399, size: 32, offset: 32)
!399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !395, file: !394, line: 16, size: 32, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !399, file: !394, line: 18, baseType: !82, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !399, file: !394, line: 19, baseType: !112, size: 32)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 16, elements: !120)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !406, line: 78, type: !141, isLocal: true, isDefinition: true)
!406 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !406, line: 79, type: !19, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !406, line: 80, type: !66, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !406, line: 81, type: !66, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !406, line: 82, type: !280, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !406, line: 83, type: !119, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !406, line: 84, type: !141, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !406, line: 85, type: !54, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !406, line: 86, type: !54, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !406, line: 87, type: !141, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !427, file: !406, line: 76, type: !513, isLocal: false, isDefinition: true)
!427 = distinct !DICompileUnit(language: DW_LANG_C11, file: !406, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !428, retainedTypes: !448, globals: !449, splitDebugInlining: false, nameTableKind: None)
!428 = !{!429, !443, !80}
!429 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !430, line: 42, baseType: !82, size: 32, elements: !431)
!430 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442}
!432 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!433 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!434 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!435 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!436 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!437 = !DIEnumerator(name: "c_quoting_style", value: 5)
!438 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!439 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!440 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!441 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!442 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!443 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !430, line: 254, baseType: !82, size: 32, elements: !444)
!444 = !{!445, !446, !447}
!445 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!446 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!447 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!448 = !{!99, !100, !101}
!449 = !{!404, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !450, !454, !464, !466, !471, !473, !475, !477, !479, !502, !509, !511}
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !427, file: !406, line: 92, type: !452, isLocal: false, isDefinition: true)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 320, elements: !45)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !427, file: !406, line: 1040, type: !456, isLocal: false, isDefinition: true)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !406, line: 56, size: 448, elements: !457)
!457 = !{!458, !459, !460, !462, !463}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !456, file: !406, line: 59, baseType: !429, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !406, line: 62, baseType: !99, size: 32, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !456, file: !406, line: 66, baseType: !461, size: 256, offset: 64)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 256, elements: !142)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !456, file: !406, line: 69, baseType: !75, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !456, file: !406, line: 72, baseType: !75, size: 64, offset: 384)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !427, file: !406, line: 107, type: !456, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(name: "slot0", scope: !427, file: !406, line: 831, type: !468, isLocal: true, isDefinition: true)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 256)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !406, line: 321, type: !119, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !406, line: 357, type: !119, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !406, line: 358, type: !119, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !406, line: 199, type: !54, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(name: "quote", scope: !481, file: !406, line: 228, type: !500, isLocal: true, isDefinition: true)
!481 = distinct !DISubprogram(name: "gettext_quote", scope: !406, file: !406, line: 197, type: !482, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !484)
!482 = !DISubroutineType(types: !483)
!483 = !{!75, !75, !429}
!484 = !{!485, !486, !487, !488, !489}
!485 = !DILocalVariable(name: "msgid", arg: 1, scope: !481, file: !406, line: 197, type: !75)
!486 = !DILocalVariable(name: "s", arg: 2, scope: !481, file: !406, line: 197, type: !429)
!487 = !DILocalVariable(name: "translation", scope: !481, file: !406, line: 199, type: !75)
!488 = !DILocalVariable(name: "w", scope: !481, file: !406, line: 229, type: !386)
!489 = !DILocalVariable(name: "mbs", scope: !481, file: !406, line: 230, type: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !392, line: 6, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !394, line: 21, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 13, size: 64, elements: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !492, file: !394, line: 15, baseType: !99, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !492, file: !394, line: 20, baseType: !496, size: 32, offset: 32)
!496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !492, file: !394, line: 16, size: 32, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !496, file: !394, line: 18, baseType: !82, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !496, file: !394, line: 19, baseType: !112, size: 32)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 64, elements: !501)
!501 = !{!121, !114}
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(name: "slotvec", scope: !427, file: !406, line: 834, type: !504, isLocal: true, isDefinition: true)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !406, line: 823, size: 128, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !505, file: !406, line: 825, baseType: !101, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !505, file: !406, line: 826, baseType: !97, size: 64, offset: 64)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "nslots", scope: !427, file: !406, line: 832, type: !99, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(name: "slotvec0", scope: !427, file: !406, line: 833, type: !505, isLocal: true, isDefinition: true)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 704, elements: !515)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!515 = !{!516}
!516 = !DISubrange(count: 11)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !519, line: 67, type: !208, isLocal: true, isDefinition: true)
!519 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !519, line: 69, type: !54, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !519, line: 83, type: !54, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !519, line: 83, type: !112, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !519, line: 85, type: !119, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !519, line: 88, type: !530, isLocal: true, isDefinition: true)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 171)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !519, line: 88, type: !535, isLocal: true, isDefinition: true)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 34)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !519, line: 105, type: !179, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !519, line: 109, type: !542, isLocal: true, isDefinition: true)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 23)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !519, line: 113, type: !547, isLocal: true, isDefinition: true)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 28)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !519, line: 120, type: !552, isLocal: true, isDefinition: true)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 32)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !519, line: 127, type: !557, isLocal: true, isDefinition: true)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 36)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !519, line: 134, type: !159, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !519, line: 142, type: !14, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !519, line: 150, type: !566, isLocal: true, isDefinition: true)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 48)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !519, line: 159, type: !571, isLocal: true, isDefinition: true)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 52)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !519, line: 170, type: !576, isLocal: true, isDefinition: true)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 60)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !519, line: 248, type: !280, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !519, line: 248, type: !184, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !519, line: 254, type: !280, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !519, line: 254, type: !61, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !519, line: 254, type: !159, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !519, line: 259, type: !591, isLocal: true, isDefinition: true)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 39)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !519, line: 259, type: !596, isLocal: true, isDefinition: true)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 29)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !601, file: !602, line: 26, type: !604, isLocal: false, isDefinition: true)
!601 = distinct !DICompileUnit(language: DW_LANG_C11, file: !602, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !603, splitDebugInlining: false, nameTableKind: None)
!602 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!603 = !{!599}
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 376, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 47)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(name: "exit_failure", scope: !609, file: !610, line: 24, type: !612, isLocal: false, isDefinition: true)
!609 = distinct !DICompileUnit(language: DW_LANG_C11, file: !610, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !611, splitDebugInlining: false, nameTableKind: None)
!610 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!611 = !{!607}
!612 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !99)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !615, line: 34, type: !128, isLocal: true, isDefinition: true)
!615 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !615, line: 34, type: !54, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !615, line: 34, type: !154, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !622, line: 108, type: !39, isLocal: true, isDefinition: true)
!622 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(name: "internal_state", scope: !625, file: !622, line: 97, type: !628, isLocal: true, isDefinition: true)
!625 = distinct !DICompileUnit(language: DW_LANG_C11, file: !622, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !626, globals: !627, splitDebugInlining: false, nameTableKind: None)
!626 = !{!98, !101, !104}
!627 = !{!620, !623}
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !392, line: 6, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !394, line: 21, baseType: !630)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 13, size: 64, elements: !631)
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !630, file: !394, line: 15, baseType: !99, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !630, file: !394, line: 20, baseType: !634, size: 32, offset: 32)
!634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !630, file: !394, line: 16, size: 32, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !634, file: !394, line: 18, baseType: !82, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !634, file: !394, line: 19, baseType: !112, size: 32)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !640, line: 35, type: !19, isLocal: true, isDefinition: true)
!640 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!641 = distinct !DICompileUnit(language: DW_LANG_C11, file: !642, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!642 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!643 = distinct !DICompileUnit(language: DW_LANG_C11, file: !519, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !644, retainedTypes: !648, globals: !649, splitDebugInlining: false, nameTableKind: None)
!644 = !{!645}
!645 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !519, line: 40, baseType: !82, size: 32, elements: !646)
!646 = !{!647}
!647 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!648 = !{!98}
!649 = !{!517, !520, !522, !524, !526, !528, !533, !538, !540, !545, !550, !555, !560, !562, !564, !569, !574, !579, !581, !583, !585, !587, !589, !594}
!650 = distinct !DICompileUnit(language: DW_LANG_C11, file: !651, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !652, retainedTypes: !683, splitDebugInlining: false, nameTableKind: None)
!651 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!652 = !{!653, !665}
!653 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !654, file: !651, line: 188, baseType: !82, size: 32, elements: !663)
!654 = distinct !DISubprogram(name: "x2nrealloc", scope: !651, file: !651, line: 176, type: !655, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !658)
!655 = !DISubroutineType(types: !656)
!656 = !{!98, !98, !657, !101}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!658 = !{!659, !660, !661, !662}
!659 = !DILocalVariable(name: "p", arg: 1, scope: !654, file: !651, line: 176, type: !98)
!660 = !DILocalVariable(name: "pn", arg: 2, scope: !654, file: !651, line: 176, type: !657)
!661 = !DILocalVariable(name: "s", arg: 3, scope: !654, file: !651, line: 176, type: !101)
!662 = !DILocalVariable(name: "n", scope: !654, file: !651, line: 178, type: !101)
!663 = !{!664}
!664 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!665 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !666, file: !651, line: 228, baseType: !82, size: 32, elements: !663)
!666 = distinct !DISubprogram(name: "xpalloc", scope: !651, file: !651, line: 223, type: !667, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !673)
!667 = !DISubroutineType(types: !668)
!668 = !{!98, !98, !669, !670, !672, !670}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !671, line: 130, baseType: !672)
!671 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !102, line: 35, baseType: !259)
!673 = !{!674, !675, !676, !677, !678, !679, !680, !681, !682}
!674 = !DILocalVariable(name: "pa", arg: 1, scope: !666, file: !651, line: 223, type: !98)
!675 = !DILocalVariable(name: "pn", arg: 2, scope: !666, file: !651, line: 223, type: !669)
!676 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !666, file: !651, line: 223, type: !670)
!677 = !DILocalVariable(name: "n_max", arg: 4, scope: !666, file: !651, line: 223, type: !672)
!678 = !DILocalVariable(name: "s", arg: 5, scope: !666, file: !651, line: 223, type: !670)
!679 = !DILocalVariable(name: "n0", scope: !666, file: !651, line: 230, type: !670)
!680 = !DILocalVariable(name: "n", scope: !666, file: !651, line: 237, type: !670)
!681 = !DILocalVariable(name: "nbytes", scope: !666, file: !651, line: 248, type: !670)
!682 = !DILocalVariable(name: "adjusted_nbytes", scope: !666, file: !651, line: 252, type: !670)
!683 = !{!97, !98, !218, !259, !103}
!684 = distinct !DICompileUnit(language: DW_LANG_C11, file: !615, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !685, splitDebugInlining: false, nameTableKind: None)
!685 = !{!613, !616, !618}
!686 = distinct !DICompileUnit(language: DW_LANG_C11, file: !687, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!687 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!688 = distinct !DICompileUnit(language: DW_LANG_C11, file: !689, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!689 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!690 = distinct !DICompileUnit(language: DW_LANG_C11, file: !691, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !648, splitDebugInlining: false, nameTableKind: None)
!691 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!692 = distinct !DICompileUnit(language: DW_LANG_C11, file: !693, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !648, splitDebugInlining: false, nameTableKind: None)
!693 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!694 = distinct !DICompileUnit(language: DW_LANG_C11, file: !695, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !696, splitDebugInlining: false, nameTableKind: None)
!695 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!696 = !{!218, !103, !98}
!697 = distinct !DICompileUnit(language: DW_LANG_C11, file: !640, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !698, splitDebugInlining: false, nameTableKind: None)
!698 = !{!699, !638}
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !640, line: 35, type: !119, isLocal: true, isDefinition: true)
!701 = distinct !DICompileUnit(language: DW_LANG_C11, file: !702, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!702 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!703 = distinct !DICompileUnit(language: DW_LANG_C11, file: !704, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !648, splitDebugInlining: false, nameTableKind: None)
!704 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!705 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!706 = !{i32 7, !"Dwarf Version", i32 5}
!707 = !{i32 2, !"Debug Info Version", i32 3}
!708 = !{i32 1, !"wchar_size", i32 4}
!709 = !{i32 8, !"PIC Level", i32 2}
!710 = !{i32 7, !"PIE Level", i32 2}
!711 = !{i32 7, !"uwtable", i32 2}
!712 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 36, type: !713, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !715)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !99}
!715 = !{!716}
!716 = !DILocalVariable(name: "status", arg: 1, scope: !712, file: !2, line: 36, type: !99)
!717 = !DILocation(line: 0, scope: !712)
!718 = !DILocation(line: 38, column: 3, scope: !712)
!719 = !{!720, !720, i64 0}
!720 = !{!"any pointer", !721, i64 0}
!721 = !{!"omnipotent char", !722, i64 0}
!722 = !{!"Simple C/C++ TBAA"}
!723 = !DILocation(line: 43, column: 3, scope: !712)
!724 = !DILocation(line: 47, column: 3, scope: !712)
!725 = !DILocation(line: 48, column: 3, scope: !712)
!726 = !DILocation(line: 49, column: 3, scope: !712)
!727 = !DILocation(line: 50, column: 3, scope: !712)
!728 = !DILocation(line: 51, column: 3, scope: !712)
!729 = !DISubprogram(name: "dcgettext", scope: !730, file: !730, line: 51, type: !731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!730 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!731 = !DISubroutineType(types: !732)
!732 = !{!97, !75, !75, !99}
!733 = !{}
!734 = !DISubprogram(name: "__printf_chk", scope: !735, file: !735, line: 95, type: !736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!735 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!736 = !DISubroutineType(types: !737)
!737 = !{!99, !99, !738, null}
!738 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!739 = !DILocation(line: 0, scope: !71)
!740 = !DILocation(line: 581, column: 7, scope: !216)
!741 = !{!742, !742, i64 0}
!742 = !{!"int", !721, i64 0}
!743 = !DILocation(line: 581, column: 19, scope: !216)
!744 = !DILocation(line: 581, column: 7, scope: !71)
!745 = !DILocation(line: 585, column: 26, scope: !215)
!746 = !DILocation(line: 0, scope: !215)
!747 = !DILocation(line: 586, column: 23, scope: !215)
!748 = !DILocation(line: 586, column: 28, scope: !215)
!749 = !DILocation(line: 586, column: 32, scope: !215)
!750 = !{!721, !721, i64 0}
!751 = !DILocation(line: 586, column: 38, scope: !215)
!752 = !DILocalVariable(name: "__s1", arg: 1, scope: !753, file: !754, line: 1359, type: !75)
!753 = distinct !DISubprogram(name: "streq", scope: !754, file: !754, line: 1359, type: !755, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !757)
!754 = !DIFile(filename: "./lib/string.h", directory: "/src")
!755 = !DISubroutineType(types: !756)
!756 = !{!218, !75, !75}
!757 = !{!752, !758}
!758 = !DILocalVariable(name: "__s2", arg: 2, scope: !753, file: !754, line: 1359, type: !75)
!759 = !DILocation(line: 0, scope: !753, inlinedAt: !760)
!760 = distinct !DILocation(line: 586, column: 41, scope: !215)
!761 = !DILocation(line: 1361, column: 11, scope: !753, inlinedAt: !760)
!762 = !DILocation(line: 1361, column: 10, scope: !753, inlinedAt: !760)
!763 = !DILocation(line: 586, column: 19, scope: !215)
!764 = !DILocation(line: 587, column: 5, scope: !215)
!765 = !DILocation(line: 588, column: 7, scope: !766)
!766 = distinct !DILexicalBlock(scope: !71, file: !72, line: 588, column: 7)
!767 = !DILocation(line: 588, column: 7, scope: !71)
!768 = !DILocation(line: 590, column: 7, scope: !769)
!769 = distinct !DILexicalBlock(scope: !766, file: !72, line: 589, column: 5)
!770 = !DILocation(line: 591, column: 7, scope: !769)
!771 = !DILocation(line: 595, column: 37, scope: !71)
!772 = !DILocation(line: 595, column: 35, scope: !71)
!773 = !DILocation(line: 596, column: 29, scope: !71)
!774 = !DILocation(line: 597, column: 8, scope: !224)
!775 = !DILocation(line: 597, column: 7, scope: !71)
!776 = !DILocation(line: 604, column: 24, scope: !223)
!777 = !DILocation(line: 604, column: 12, scope: !224)
!778 = !DILocation(line: 0, scope: !222)
!779 = !DILocation(line: 610, column: 16, scope: !222)
!780 = !DILocation(line: 610, column: 7, scope: !222)
!781 = !DILocation(line: 611, column: 21, scope: !222)
!782 = !{!783, !783, i64 0}
!783 = !{!"short", !721, i64 0}
!784 = !DILocation(line: 611, column: 19, scope: !222)
!785 = !DILocation(line: 611, column: 16, scope: !222)
!786 = !DILocation(line: 610, column: 30, scope: !222)
!787 = distinct !{!787, !780, !781, !788}
!788 = !{!"llvm.loop.mustprogress"}
!789 = !DILocation(line: 612, column: 18, scope: !790)
!790 = distinct !DILexicalBlock(scope: !222, file: !72, line: 612, column: 11)
!791 = !DILocation(line: 612, column: 11, scope: !222)
!792 = !DILocation(line: 618, column: 5, scope: !222)
!793 = !DILocation(line: 620, column: 23, scope: !71)
!794 = !DILocation(line: 625, column: 39, scope: !71)
!795 = !DILocation(line: 626, column: 3, scope: !71)
!796 = !DILocation(line: 626, column: 10, scope: !71)
!797 = !DILocation(line: 626, column: 21, scope: !71)
!798 = !DILocation(line: 628, column: 44, scope: !799)
!799 = distinct !DILexicalBlock(scope: !800, file: !72, line: 628, column: 11)
!800 = distinct !DILexicalBlock(scope: !71, file: !72, line: 627, column: 5)
!801 = !DILocation(line: 628, column: 32, scope: !799)
!802 = !DILocation(line: 628, column: 49, scope: !799)
!803 = !DILocation(line: 628, column: 11, scope: !800)
!804 = !DILocation(line: 630, column: 11, scope: !805)
!805 = distinct !DILexicalBlock(scope: !800, file: !72, line: 630, column: 11)
!806 = !DILocation(line: 630, column: 11, scope: !800)
!807 = !DILocation(line: 632, column: 26, scope: !808)
!808 = distinct !DILexicalBlock(scope: !809, file: !72, line: 632, column: 15)
!809 = distinct !DILexicalBlock(scope: !805, file: !72, line: 631, column: 9)
!810 = !DILocation(line: 632, column: 34, scope: !808)
!811 = !DILocation(line: 632, column: 37, scope: !808)
!812 = !DILocation(line: 632, column: 15, scope: !809)
!813 = !DILocation(line: 636, column: 16, scope: !814)
!814 = distinct !DILexicalBlock(scope: !809, file: !72, line: 636, column: 15)
!815 = !DILocation(line: 636, column: 29, scope: !814)
!816 = !DILocation(line: 640, column: 16, scope: !800)
!817 = distinct !{!817, !795, !818, !788}
!818 = !DILocation(line: 641, column: 5, scope: !71)
!819 = !DILocation(line: 644, column: 3, scope: !71)
!820 = !DILocation(line: 0, scope: !753, inlinedAt: !821)
!821 = distinct !DILocation(line: 648, column: 31, scope: !71)
!822 = !DILocation(line: 0, scope: !753, inlinedAt: !823)
!823 = distinct !DILocation(line: 649, column: 31, scope: !71)
!824 = !DILocation(line: 0, scope: !753, inlinedAt: !825)
!825 = distinct !DILocation(line: 650, column: 31, scope: !71)
!826 = !DILocation(line: 0, scope: !753, inlinedAt: !827)
!827 = distinct !DILocation(line: 651, column: 31, scope: !71)
!828 = !DILocation(line: 0, scope: !753, inlinedAt: !829)
!829 = distinct !DILocation(line: 652, column: 31, scope: !71)
!830 = !DILocation(line: 0, scope: !753, inlinedAt: !831)
!831 = distinct !DILocation(line: 653, column: 31, scope: !71)
!832 = !DILocation(line: 0, scope: !753, inlinedAt: !833)
!833 = distinct !DILocation(line: 654, column: 31, scope: !71)
!834 = !DILocation(line: 0, scope: !753, inlinedAt: !835)
!835 = distinct !DILocation(line: 655, column: 31, scope: !71)
!836 = !DILocation(line: 0, scope: !753, inlinedAt: !837)
!837 = distinct !DILocation(line: 656, column: 31, scope: !71)
!838 = !DILocation(line: 0, scope: !753, inlinedAt: !839)
!839 = distinct !DILocation(line: 657, column: 31, scope: !71)
!840 = !DILocation(line: 663, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !71, file: !72, line: 663, column: 7)
!842 = !DILocation(line: 664, column: 7, scope: !841)
!843 = !DILocation(line: 664, column: 10, scope: !841)
!844 = !DILocation(line: 663, column: 7, scope: !71)
!845 = !DILocation(line: 669, column: 7, scope: !846)
!846 = distinct !DILexicalBlock(scope: !841, file: !72, line: 665, column: 5)
!847 = !DILocation(line: 671, column: 5, scope: !846)
!848 = !DILocation(line: 676, column: 7, scope: !849)
!849 = distinct !DILexicalBlock(scope: !841, file: !72, line: 673, column: 5)
!850 = !DILocation(line: 679, column: 3, scope: !71)
!851 = !DILocation(line: 683, column: 3, scope: !71)
!852 = !DILocation(line: 686, column: 3, scope: !71)
!853 = !DILocation(line: 688, column: 3, scope: !71)
!854 = !DILocation(line: 691, column: 3, scope: !71)
!855 = !DILocation(line: 695, column: 3, scope: !71)
!856 = !DILocation(line: 696, column: 1, scope: !71)
!857 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !72, file: !72, line: 836, type: !858, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !860)
!858 = !DISubroutineType(cc: DW_CC_nocall, types: !859)
!859 = !{null, !75}
!860 = !{!861, !862, !869, !870, !872, !873}
!861 = !DILocalVariable(name: "program", arg: 1, scope: !857, file: !72, line: 836, type: !75)
!862 = !DILocalVariable(name: "infomap", scope: !857, file: !72, line: 838, type: !863)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 896, elements: !55)
!864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !865)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !857, file: !72, line: 838, size: 128, elements: !866)
!866 = !{!867, !868}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !865, file: !72, line: 838, baseType: !75, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !865, file: !72, line: 838, baseType: !75, size: 64, offset: 64)
!869 = !DILocalVariable(name: "node", scope: !857, file: !72, line: 848, type: !75)
!870 = !DILocalVariable(name: "map_prog", scope: !857, file: !72, line: 849, type: !871)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!872 = !DILocalVariable(name: "lc_messages", scope: !857, file: !72, line: 861, type: !75)
!873 = !DILocalVariable(name: "url_program", scope: !857, file: !72, line: 874, type: !75)
!874 = !DILocation(line: 0, scope: !857)
!875 = !DILocation(line: 857, column: 3, scope: !857)
!876 = !DILocation(line: 861, column: 29, scope: !857)
!877 = !DILocation(line: 862, column: 7, scope: !878)
!878 = distinct !DILexicalBlock(scope: !857, file: !72, line: 862, column: 7)
!879 = !DILocation(line: 862, column: 19, scope: !878)
!880 = !DILocation(line: 862, column: 22, scope: !878)
!881 = !DILocation(line: 862, column: 7, scope: !857)
!882 = !DILocation(line: 868, column: 7, scope: !883)
!883 = distinct !DILexicalBlock(scope: !878, file: !72, line: 863, column: 5)
!884 = !DILocation(line: 870, column: 5, scope: !883)
!885 = !DILocation(line: 875, column: 3, scope: !857)
!886 = !DILocation(line: 877, column: 3, scope: !857)
!887 = !DILocation(line: 879, column: 1, scope: !857)
!888 = !DISubprogram(name: "exit", scope: !889, file: !889, line: 624, type: !713, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !733)
!889 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!890 = !DISubprogram(name: "setlocale", scope: !891, file: !891, line: 122, type: !892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!891 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!892 = !DISubroutineType(types: !893)
!893 = !{!97, !99, !75}
!894 = !DISubprogram(name: "strncmp", scope: !895, file: !895, line: 159, type: !896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!895 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!896 = !DISubroutineType(types: !897)
!897 = !{!99, !75, !75, !101}
!898 = !DISubprogram(name: "fputs_unlocked", scope: !899, file: !899, line: 691, type: !900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!899 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!900 = !DISubroutineType(types: !901)
!901 = !{!99, !738, !902}
!902 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !231)
!903 = !DISubprogram(name: "getenv", scope: !889, file: !889, line: 641, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!904 = !DISubroutineType(types: !905)
!905 = !{!97, !75}
!906 = !DISubprogram(name: "strcmp", scope: !895, file: !895, line: 156, type: !907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!907 = !DISubroutineType(types: !908)
!908 = !{!99, !75, !75}
!909 = !DISubprogram(name: "strspn", scope: !895, file: !895, line: 297, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!910 = !DISubroutineType(types: !911)
!911 = !{!103, !75, !75}
!912 = !DISubprogram(name: "strchr", scope: !895, file: !895, line: 246, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!913 = !DISubroutineType(types: !914)
!914 = !{!97, !75, !99}
!915 = !DISubprogram(name: "__ctype_b_loc", scope: !81, file: !81, line: 79, type: !916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!916 = !DISubroutineType(types: !917)
!917 = !{!918}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!921 = !DISubprogram(name: "strcspn", scope: !895, file: !895, line: 293, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!922 = !DISubprogram(name: "fwrite_unlocked", scope: !899, file: !899, line: 704, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!923 = !DISubroutineType(types: !924)
!924 = !{!101, !925, !101, !101, !902}
!925 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !926)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!928 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 55, type: !929, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !932)
!929 = !DISubroutineType(types: !930)
!930 = !{!99, !99, !931}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!932 = !{!933, !934}
!933 = !DILocalVariable(name: "argc", arg: 1, scope: !928, file: !2, line: 55, type: !99)
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
!948 = !DILocation(line: 0, scope: !753, inlinedAt: !949)
!949 = distinct !DILocation(line: 71, column: 11, scope: !947)
!950 = !DILocation(line: 1361, column: 11, scope: !753, inlinedAt: !949)
!951 = !DILocation(line: 1361, column: 10, scope: !753, inlinedAt: !949)
!952 = !DILocation(line: 71, column: 11, scope: !940)
!953 = !DILocation(line: 72, column: 9, scope: !947)
!954 = !DILocation(line: 0, scope: !753, inlinedAt: !955)
!955 = distinct !DILocation(line: 74, column: 11, scope: !956)
!956 = distinct !DILexicalBlock(scope: !940, file: !2, line: 74, column: 11)
!957 = !DILocation(line: 1361, column: 11, scope: !753, inlinedAt: !955)
!958 = !DILocation(line: 1361, column: 10, scope: !753, inlinedAt: !955)
!959 = !DILocation(line: 74, column: 11, scope: !940)
!960 = !DILocation(line: 75, column: 22, scope: !956)
!961 = !DILocation(line: 75, column: 58, scope: !956)
!962 = !DILocation(line: 75, column: 67, scope: !956)
!963 = !DILocation(line: 75, column: 9, scope: !956)
!964 = !DILocation(line: 79, column: 3, scope: !928)
!965 = !DISubprogram(name: "bindtextdomain", scope: !730, file: !730, line: 86, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!966 = !DISubroutineType(types: !967)
!967 = !{!97, !75, !75}
!968 = !DISubprogram(name: "textdomain", scope: !730, file: !730, line: 82, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!969 = !DISubprogram(name: "atexit", scope: !889, file: !889, line: 602, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!970 = !DISubroutineType(types: !971)
!971 = !{!99, !360}
!972 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !299, file: !299, line: 50, type: !973, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !298, retainedNodes: !974)
!973 = !DISubroutineType(types: !859)
!974 = !{!975}
!975 = !DILocalVariable(name: "file", arg: 1, scope: !972, file: !299, line: 50, type: !75)
!976 = !DILocation(line: 0, scope: !972)
!977 = !DILocation(line: 52, column: 13, scope: !972)
!978 = !DILocation(line: 53, column: 1, scope: !972)
!979 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !299, file: !299, line: 87, type: !980, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !298, retainedNodes: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{null, !218}
!982 = !{!983}
!983 = !DILocalVariable(name: "ignore", arg: 1, scope: !979, file: !299, line: 87, type: !218)
!984 = !DILocation(line: 0, scope: !979)
!985 = !DILocation(line: 89, column: 16, scope: !979)
!986 = !{!987, !987, i64 0}
!987 = !{!"_Bool", !721, i64 0}
!988 = !DILocation(line: 90, column: 1, scope: !979)
!989 = distinct !DISubprogram(name: "close_stdout", scope: !299, file: !299, line: 116, type: !361, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !298, retainedNodes: !990)
!990 = !{!991}
!991 = !DILocalVariable(name: "write_error", scope: !992, file: !299, line: 121, type: !75)
!992 = distinct !DILexicalBlock(scope: !993, file: !299, line: 120, column: 5)
!993 = distinct !DILexicalBlock(scope: !989, file: !299, line: 118, column: 7)
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
!1007 = distinct !DILexicalBlock(scope: !992, file: !299, line: 122, column: 11)
!1008 = !DILocation(line: 0, scope: !1007)
!1009 = !DILocation(line: 122, column: 11, scope: !992)
!1010 = !DILocation(line: 123, column: 9, scope: !1007)
!1011 = !DILocation(line: 126, column: 9, scope: !1007)
!1012 = !DILocation(line: 128, column: 14, scope: !992)
!1013 = !DILocation(line: 128, column: 7, scope: !992)
!1014 = !DILocation(line: 133, column: 42, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !989, file: !299, line: 133, column: 7)
!1016 = !DILocation(line: 133, column: 28, scope: !1015)
!1017 = !DILocation(line: 133, column: 50, scope: !1015)
!1018 = !DILocation(line: 133, column: 7, scope: !989)
!1019 = !DILocation(line: 134, column: 12, scope: !1015)
!1020 = !DILocation(line: 134, column: 5, scope: !1015)
!1021 = !DILocation(line: 135, column: 1, scope: !989)
!1022 = !DISubprogram(name: "__errno_location", scope: !1023, file: !1023, line: 37, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!1023 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!1027 = !DISubprogram(name: "_exit", scope: !1028, file: !1028, line: 624, type: !713, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !733)
!1028 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1029 = distinct !DISubprogram(name: "verror", scope: !314, file: !314, line: 251, type: !1030, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !99, !99, !75, !324}
!1032 = !{!1033, !1034, !1035, !1036}
!1033 = !DILocalVariable(name: "status", arg: 1, scope: !1029, file: !314, line: 251, type: !99)
!1034 = !DILocalVariable(name: "errnum", arg: 2, scope: !1029, file: !314, line: 251, type: !99)
!1035 = !DILocalVariable(name: "message", arg: 3, scope: !1029, file: !314, line: 251, type: !75)
!1036 = !DILocalVariable(name: "args", arg: 4, scope: !1029, file: !314, line: 251, type: !324)
!1037 = !DILocation(line: 0, scope: !1029)
!1038 = !DILocation(line: 261, column: 3, scope: !1029)
!1039 = !DILocation(line: 265, column: 7, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1029, file: !314, line: 265, column: 7)
!1041 = !DILocation(line: 265, column: 7, scope: !1029)
!1042 = !DILocation(line: 266, column: 5, scope: !1040)
!1043 = !DILocation(line: 272, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !314, line: 268, column: 5)
!1045 = !DILocation(line: 276, column: 3, scope: !1029)
!1046 = !DILocation(line: 282, column: 1, scope: !1029)
!1047 = distinct !DISubprogram(name: "flush_stdout", scope: !314, file: !314, line: 163, type: !361, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1048)
!1048 = !{!1049}
!1049 = !DILocalVariable(name: "stdout_fd", scope: !1047, file: !314, line: 166, type: !99)
!1050 = !DILocation(line: 0, scope: !1047)
!1051 = !DILocalVariable(name: "fd", arg: 1, scope: !1052, file: !314, line: 145, type: !99)
!1052 = distinct !DISubprogram(name: "is_open", scope: !314, file: !314, line: 145, type: !1053, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!99, !99}
!1055 = !{!1051}
!1056 = !DILocation(line: 0, scope: !1052, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 182, column: 25, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1047, file: !314, line: 182, column: 7)
!1059 = !DILocation(line: 157, column: 15, scope: !1052, inlinedAt: !1057)
!1060 = !DILocation(line: 157, column: 12, scope: !1052, inlinedAt: !1057)
!1061 = !DILocation(line: 182, column: 7, scope: !1047)
!1062 = !DILocation(line: 184, column: 5, scope: !1058)
!1063 = !DILocation(line: 185, column: 1, scope: !1047)
!1064 = !DISubprogram(name: "__fprintf_chk", scope: !735, file: !735, line: 93, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!99, !1067, !99, !738, null}
!1067 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1068)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !1070)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1070, file: !235, line: 51, baseType: !99, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1070, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1070, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1070, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1070, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1070, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1070, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1070, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1070, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1070, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1070, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1070, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1070, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1070, file: !235, line: 70, baseType: !1086, size: 64, offset: 832)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1070, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1070, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1070, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1070, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1070, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1070, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1070, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1070, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1070, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1070, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1070, file: !235, line: 93, baseType: !1086, size: 64, offset: 1344)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1070, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1070, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1070, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1070, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!1102 = distinct !DISubprogram(name: "error_tail", scope: !314, file: !314, line: 219, type: !1030, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1103)
!1103 = !{!1104, !1105, !1106, !1107}
!1104 = !DILocalVariable(name: "status", arg: 1, scope: !1102, file: !314, line: 219, type: !99)
!1105 = !DILocalVariable(name: "errnum", arg: 2, scope: !1102, file: !314, line: 219, type: !99)
!1106 = !DILocalVariable(name: "message", arg: 3, scope: !1102, file: !314, line: 219, type: !75)
!1107 = !DILocalVariable(name: "args", arg: 4, scope: !1102, file: !314, line: 219, type: !324)
!1108 = !DILocation(line: 0, scope: !1102)
!1109 = !DILocation(line: 229, column: 13, scope: !1102)
!1110 = !DILocalVariable(name: "__stream", arg: 1, scope: !1111, file: !735, line: 132, type: !1067)
!1111 = distinct !DISubprogram(name: "vfprintf", scope: !735, file: !735, line: 132, type: !1112, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1114)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!99, !1067, !738, !324}
!1114 = !{!1110, !1115, !1116}
!1115 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1111, file: !735, line: 133, type: !738)
!1116 = !DILocalVariable(name: "__ap", arg: 3, scope: !1111, file: !735, line: 133, type: !324)
!1117 = !DILocation(line: 0, scope: !1111, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 229, column: 3, scope: !1102)
!1119 = !DILocation(line: 135, column: 10, scope: !1111, inlinedAt: !1118)
!1120 = !DILocation(line: 232, column: 3, scope: !1102)
!1121 = !DILocation(line: 233, column: 7, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1102, file: !314, line: 233, column: 7)
!1123 = !DILocation(line: 233, column: 7, scope: !1102)
!1124 = !DILocalVariable(name: "errnum", arg: 1, scope: !1125, file: !314, line: 188, type: !99)
!1125 = distinct !DISubprogram(name: "print_errno_message", scope: !314, file: !314, line: 188, type: !713, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1126)
!1126 = !{!1124, !1127, !1128}
!1127 = !DILocalVariable(name: "s", scope: !1125, file: !314, line: 190, type: !75)
!1128 = !DILocalVariable(name: "errbuf", scope: !1125, file: !314, line: 193, type: !1129)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1130)
!1130 = !{!1131}
!1131 = !DISubrange(count: 1024)
!1132 = !DILocation(line: 0, scope: !1125, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 234, column: 5, scope: !1122)
!1134 = !DILocation(line: 193, column: 3, scope: !1125, inlinedAt: !1133)
!1135 = !DILocation(line: 193, column: 8, scope: !1125, inlinedAt: !1133)
!1136 = !DILocation(line: 195, column: 7, scope: !1125, inlinedAt: !1133)
!1137 = !DILocation(line: 207, column: 9, scope: !1138, inlinedAt: !1133)
!1138 = distinct !DILexicalBlock(scope: !1125, file: !314, line: 207, column: 7)
!1139 = !DILocation(line: 207, column: 7, scope: !1125, inlinedAt: !1133)
!1140 = !DILocation(line: 208, column: 9, scope: !1138, inlinedAt: !1133)
!1141 = !DILocation(line: 208, column: 5, scope: !1138, inlinedAt: !1133)
!1142 = !DILocation(line: 214, column: 3, scope: !1125, inlinedAt: !1133)
!1143 = !DILocation(line: 216, column: 1, scope: !1125, inlinedAt: !1133)
!1144 = !DILocation(line: 234, column: 5, scope: !1122)
!1145 = !DILocation(line: 238, column: 3, scope: !1102)
!1146 = !DILocalVariable(name: "__c", arg: 1, scope: !1147, file: !1148, line: 101, type: !99)
!1147 = distinct !DISubprogram(name: "putc_unlocked", scope: !1148, file: !1148, line: 101, type: !1149, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1151)
!1148 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!99, !99, !1068}
!1151 = !{!1146, !1152}
!1152 = !DILocalVariable(name: "__stream", arg: 2, scope: !1147, file: !1148, line: 101, type: !1068)
!1153 = !DILocation(line: 0, scope: !1147, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 238, column: 3, scope: !1102)
!1155 = !DILocation(line: 103, column: 10, scope: !1147, inlinedAt: !1154)
!1156 = !{!1157, !720, i64 40}
!1157 = !{!"_IO_FILE", !742, i64 0, !720, i64 8, !720, i64 16, !720, i64 24, !720, i64 32, !720, i64 40, !720, i64 48, !720, i64 56, !720, i64 64, !720, i64 72, !720, i64 80, !720, i64 88, !720, i64 96, !720, i64 104, !742, i64 112, !742, i64 116, !1158, i64 120, !783, i64 128, !721, i64 130, !721, i64 131, !720, i64 136, !1158, i64 144, !720, i64 152, !720, i64 160, !720, i64 168, !720, i64 176, !1158, i64 184, !742, i64 192, !721, i64 196}
!1158 = !{!"long", !721, i64 0}
!1159 = !{!1157, !720, i64 48}
!1160 = !{!"branch_weights", i32 2000, i32 1}
!1161 = !DILocation(line: 240, column: 3, scope: !1102)
!1162 = !DILocation(line: 241, column: 7, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1102, file: !314, line: 241, column: 7)
!1164 = !DILocation(line: 241, column: 7, scope: !1102)
!1165 = !DILocation(line: 242, column: 5, scope: !1163)
!1166 = !DILocation(line: 243, column: 1, scope: !1102)
!1167 = !DISubprogram(name: "__vfprintf_chk", scope: !735, file: !735, line: 96, type: !1168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!99, !1067, !99, !738, !324}
!1170 = !DISubprogram(name: "strerror_r", scope: !895, file: !895, line: 444, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!97, !99, !97, !101}
!1173 = !DISubprogram(name: "__overflow", scope: !899, file: !899, line: 886, type: !1174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!99, !1068, !99}
!1176 = !DISubprogram(name: "fflush_unlocked", scope: !899, file: !899, line: 239, type: !1177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!99, !1068}
!1179 = !DISubprogram(name: "fcntl", scope: !1180, file: !1180, line: 149, type: !1181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!1180 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!99, !99, !99, null}
!1183 = distinct !DISubprogram(name: "error", scope: !314, file: !314, line: 285, type: !1184, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1186)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !99, !99, !75, null}
!1186 = !{!1187, !1188, !1189, !1190}
!1187 = !DILocalVariable(name: "status", arg: 1, scope: !1183, file: !314, line: 285, type: !99)
!1188 = !DILocalVariable(name: "errnum", arg: 2, scope: !1183, file: !314, line: 285, type: !99)
!1189 = !DILocalVariable(name: "message", arg: 3, scope: !1183, file: !314, line: 285, type: !75)
!1190 = !DILocalVariable(name: "ap", scope: !1183, file: !314, line: 287, type: !1191)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !899, line: 52, baseType: !1192)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1193, line: 14, baseType: !1194)
!1193 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !328, baseType: !1195)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 192, elements: !40)
!1196 = !DILocation(line: 0, scope: !1183)
!1197 = !DILocation(line: 287, column: 3, scope: !1183)
!1198 = !DILocation(line: 287, column: 11, scope: !1183)
!1199 = !DILocation(line: 288, column: 3, scope: !1183)
!1200 = !DILocation(line: 289, column: 3, scope: !1183)
!1201 = !DILocation(line: 290, column: 3, scope: !1183)
!1202 = !DILocation(line: 291, column: 1, scope: !1183)
!1203 = !DILocation(line: 0, scope: !321)
!1204 = !DILocation(line: 302, column: 7, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !321, file: !314, line: 302, column: 7)
!1206 = !DILocation(line: 302, column: 7, scope: !321)
!1207 = !DILocation(line: 307, column: 11, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !314, line: 307, column: 11)
!1209 = distinct !DILexicalBlock(scope: !1205, file: !314, line: 303, column: 5)
!1210 = !DILocation(line: 307, column: 27, scope: !1208)
!1211 = !DILocation(line: 308, column: 11, scope: !1208)
!1212 = !DILocation(line: 308, column: 28, scope: !1208)
!1213 = !DILocation(line: 308, column: 25, scope: !1208)
!1214 = !DILocation(line: 309, column: 15, scope: !1208)
!1215 = !DILocation(line: 309, column: 33, scope: !1208)
!1216 = !DILocation(line: 310, column: 19, scope: !1208)
!1217 = !DILocation(line: 311, column: 22, scope: !1208)
!1218 = !DILocation(line: 311, column: 56, scope: !1208)
!1219 = !DILocation(line: 307, column: 11, scope: !1209)
!1220 = !DILocation(line: 316, column: 21, scope: !1209)
!1221 = !DILocation(line: 317, column: 23, scope: !1209)
!1222 = !DILocation(line: 318, column: 5, scope: !1209)
!1223 = !DILocation(line: 327, column: 3, scope: !321)
!1224 = !DILocation(line: 331, column: 7, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !321, file: !314, line: 331, column: 7)
!1226 = !DILocation(line: 331, column: 7, scope: !321)
!1227 = !DILocation(line: 332, column: 5, scope: !1225)
!1228 = !DILocation(line: 338, column: 7, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1225, file: !314, line: 334, column: 5)
!1230 = !DILocation(line: 346, column: 3, scope: !321)
!1231 = !DILocation(line: 350, column: 3, scope: !321)
!1232 = !DILocation(line: 356, column: 1, scope: !321)
!1233 = distinct !DISubprogram(name: "error_at_line", scope: !314, file: !314, line: 359, type: !1234, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1236)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !99, !99, !75, !82, !75, null}
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1242}
!1237 = !DILocalVariable(name: "status", arg: 1, scope: !1233, file: !314, line: 359, type: !99)
!1238 = !DILocalVariable(name: "errnum", arg: 2, scope: !1233, file: !314, line: 359, type: !99)
!1239 = !DILocalVariable(name: "file_name", arg: 3, scope: !1233, file: !314, line: 359, type: !75)
!1240 = !DILocalVariable(name: "line_number", arg: 4, scope: !1233, file: !314, line: 360, type: !82)
!1241 = !DILocalVariable(name: "message", arg: 5, scope: !1233, file: !314, line: 360, type: !75)
!1242 = !DILocalVariable(name: "ap", scope: !1233, file: !314, line: 362, type: !1191)
!1243 = !DILocation(line: 0, scope: !1233)
!1244 = !DILocation(line: 362, column: 3, scope: !1233)
!1245 = !DILocation(line: 362, column: 11, scope: !1233)
!1246 = !DILocation(line: 363, column: 3, scope: !1233)
!1247 = !DILocation(line: 364, column: 3, scope: !1233)
!1248 = !DILocation(line: 366, column: 3, scope: !1233)
!1249 = !DILocation(line: 367, column: 1, scope: !1233)
!1250 = distinct !DISubprogram(name: "getprogname", scope: !642, file: !642, line: 54, type: !1251, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !641, retainedNodes: !733)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!75}
!1253 = !DILocation(line: 58, column: 10, scope: !1250)
!1254 = !DILocation(line: 58, column: 3, scope: !1250)
!1255 = distinct !DISubprogram(name: "set_program_name", scope: !366, file: !366, line: 37, type: !973, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !1256)
!1256 = !{!1257, !1258, !1259}
!1257 = !DILocalVariable(name: "argv0", arg: 1, scope: !1255, file: !366, line: 37, type: !75)
!1258 = !DILocalVariable(name: "slash", scope: !1255, file: !366, line: 44, type: !75)
!1259 = !DILocalVariable(name: "base", scope: !1255, file: !366, line: 45, type: !75)
!1260 = !DILocation(line: 0, scope: !1255)
!1261 = !DILocation(line: 44, column: 23, scope: !1255)
!1262 = !DILocation(line: 45, column: 22, scope: !1255)
!1263 = !DILocation(line: 46, column: 17, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1255, file: !366, line: 46, column: 7)
!1265 = !DILocation(line: 46, column: 9, scope: !1264)
!1266 = !DILocation(line: 46, column: 25, scope: !1264)
!1267 = !DILocation(line: 46, column: 40, scope: !1264)
!1268 = !DILocalVariable(name: "__s1", arg: 1, scope: !1269, file: !754, line: 974, type: !926)
!1269 = distinct !DISubprogram(name: "memeq", scope: !754, file: !754, line: 974, type: !1270, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !1272)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!218, !926, !926, !101}
!1272 = !{!1268, !1273, !1274}
!1273 = !DILocalVariable(name: "__s2", arg: 2, scope: !1269, file: !754, line: 974, type: !926)
!1274 = !DILocalVariable(name: "__n", arg: 3, scope: !1269, file: !754, line: 974, type: !101)
!1275 = !DILocation(line: 0, scope: !1269, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 46, column: 28, scope: !1264)
!1277 = !DILocation(line: 976, column: 11, scope: !1269, inlinedAt: !1276)
!1278 = !DILocation(line: 976, column: 10, scope: !1269, inlinedAt: !1276)
!1279 = !DILocation(line: 46, column: 7, scope: !1255)
!1280 = !DILocation(line: 49, column: 11, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !366, line: 49, column: 11)
!1282 = distinct !DILexicalBlock(scope: !1264, file: !366, line: 47, column: 5)
!1283 = !DILocation(line: 49, column: 36, scope: !1281)
!1284 = !DILocation(line: 49, column: 11, scope: !1282)
!1285 = !DILocation(line: 65, column: 16, scope: !1255)
!1286 = !DILocation(line: 71, column: 27, scope: !1255)
!1287 = !DILocation(line: 74, column: 33, scope: !1255)
!1288 = !DILocation(line: 76, column: 1, scope: !1255)
!1289 = !DISubprogram(name: "strrchr", scope: !895, file: !895, line: 273, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!1290 = !DILocation(line: 0, scope: !375)
!1291 = !DILocation(line: 40, column: 29, scope: !375)
!1292 = !DILocation(line: 41, column: 19, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !375, file: !376, line: 41, column: 7)
!1294 = !DILocation(line: 41, column: 7, scope: !375)
!1295 = !DILocation(line: 47, column: 3, scope: !375)
!1296 = !DILocation(line: 48, column: 3, scope: !375)
!1297 = !DILocation(line: 48, column: 13, scope: !375)
!1298 = !DILocalVariable(name: "ps", arg: 1, scope: !1299, file: !1300, line: 1135, type: !1303)
!1299 = distinct !DISubprogram(name: "mbszero", scope: !1300, file: !1300, line: 1135, type: !1301, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !1304)
!1300 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !1303}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!1304 = !{!1298}
!1305 = !DILocation(line: 0, scope: !1299, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 48, column: 18, scope: !375)
!1307 = !DILocalVariable(name: "__dest", arg: 1, scope: !1308, file: !1309, line: 57, type: !98)
!1308 = distinct !DISubprogram(name: "memset", scope: !1309, file: !1309, line: 57, type: !1310, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !1312)
!1309 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!98, !98, !99, !101}
!1312 = !{!1307, !1313, !1314}
!1313 = !DILocalVariable(name: "__ch", arg: 2, scope: !1308, file: !1309, line: 57, type: !99)
!1314 = !DILocalVariable(name: "__len", arg: 3, scope: !1308, file: !1309, line: 57, type: !101)
!1315 = !DILocation(line: 0, scope: !1308, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 1137, column: 3, scope: !1299, inlinedAt: !1306)
!1317 = !DILocation(line: 59, column: 10, scope: !1308, inlinedAt: !1316)
!1318 = !DILocation(line: 49, column: 7, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !375, file: !376, line: 49, column: 7)
!1320 = !DILocation(line: 49, column: 39, scope: !1319)
!1321 = !DILocation(line: 49, column: 44, scope: !1319)
!1322 = !DILocation(line: 54, column: 1, scope: !375)
!1323 = !DISubprogram(name: "mbrtoc32", scope: !387, file: !387, line: 57, type: !1324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!101, !1326, !738, !101, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1327)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1303)
!1329 = distinct !DISubprogram(name: "clone_quoting_options", scope: !406, file: !406, line: 113, type: !1330, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1333)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!1332, !1332}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!1333 = !{!1334, !1335, !1336}
!1334 = !DILocalVariable(name: "o", arg: 1, scope: !1329, file: !406, line: 113, type: !1332)
!1335 = !DILocalVariable(name: "saved_errno", scope: !1329, file: !406, line: 115, type: !99)
!1336 = !DILocalVariable(name: "p", scope: !1329, file: !406, line: 116, type: !1332)
!1337 = !DILocation(line: 0, scope: !1329)
!1338 = !DILocation(line: 115, column: 21, scope: !1329)
!1339 = !DILocation(line: 116, column: 40, scope: !1329)
!1340 = !DILocation(line: 116, column: 31, scope: !1329)
!1341 = !DILocation(line: 118, column: 9, scope: !1329)
!1342 = !DILocation(line: 119, column: 3, scope: !1329)
!1343 = distinct !DISubprogram(name: "get_quoting_style", scope: !406, file: !406, line: 124, type: !1344, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1348)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!429, !1346}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!1348 = !{!1349}
!1349 = !DILocalVariable(name: "o", arg: 1, scope: !1343, file: !406, line: 124, type: !1346)
!1350 = !DILocation(line: 0, scope: !1343)
!1351 = !DILocation(line: 126, column: 11, scope: !1343)
!1352 = !DILocation(line: 126, column: 46, scope: !1343)
!1353 = !{!1354, !721, i64 0}
!1354 = !{!"quoting_options", !721, i64 0, !742, i64 4, !721, i64 8, !720, i64 40, !720, i64 48}
!1355 = !DILocation(line: 126, column: 3, scope: !1343)
!1356 = distinct !DISubprogram(name: "set_quoting_style", scope: !406, file: !406, line: 132, type: !1357, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1359)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !1332, !429}
!1359 = !{!1360, !1361}
!1360 = !DILocalVariable(name: "o", arg: 1, scope: !1356, file: !406, line: 132, type: !1332)
!1361 = !DILocalVariable(name: "s", arg: 2, scope: !1356, file: !406, line: 132, type: !429)
!1362 = !DILocation(line: 0, scope: !1356)
!1363 = !DILocation(line: 134, column: 4, scope: !1356)
!1364 = !DILocation(line: 134, column: 45, scope: !1356)
!1365 = !DILocation(line: 135, column: 1, scope: !1356)
!1366 = distinct !DISubprogram(name: "set_char_quoting", scope: !406, file: !406, line: 143, type: !1367, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1369)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!99, !1332, !4, !99}
!1369 = !{!1370, !1371, !1372, !1373, !1374, !1376, !1377}
!1370 = !DILocalVariable(name: "o", arg: 1, scope: !1366, file: !406, line: 143, type: !1332)
!1371 = !DILocalVariable(name: "c", arg: 2, scope: !1366, file: !406, line: 143, type: !4)
!1372 = !DILocalVariable(name: "i", arg: 3, scope: !1366, file: !406, line: 143, type: !99)
!1373 = !DILocalVariable(name: "uc", scope: !1366, file: !406, line: 145, type: !104)
!1374 = !DILocalVariable(name: "p", scope: !1366, file: !406, line: 146, type: !1375)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1376 = !DILocalVariable(name: "shift", scope: !1366, file: !406, line: 148, type: !99)
!1377 = !DILocalVariable(name: "r", scope: !1366, file: !406, line: 149, type: !82)
!1378 = !DILocation(line: 0, scope: !1366)
!1379 = !DILocation(line: 147, column: 6, scope: !1366)
!1380 = !DILocation(line: 147, column: 41, scope: !1366)
!1381 = !DILocation(line: 147, column: 62, scope: !1366)
!1382 = !DILocation(line: 147, column: 57, scope: !1366)
!1383 = !DILocation(line: 148, column: 15, scope: !1366)
!1384 = !DILocation(line: 149, column: 21, scope: !1366)
!1385 = !DILocation(line: 149, column: 24, scope: !1366)
!1386 = !DILocation(line: 149, column: 34, scope: !1366)
!1387 = !DILocation(line: 150, column: 19, scope: !1366)
!1388 = !DILocation(line: 150, column: 24, scope: !1366)
!1389 = !DILocation(line: 150, column: 6, scope: !1366)
!1390 = !DILocation(line: 151, column: 3, scope: !1366)
!1391 = distinct !DISubprogram(name: "set_quoting_flags", scope: !406, file: !406, line: 159, type: !1392, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1394)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!99, !1332, !99}
!1394 = !{!1395, !1396, !1397}
!1395 = !DILocalVariable(name: "o", arg: 1, scope: !1391, file: !406, line: 159, type: !1332)
!1396 = !DILocalVariable(name: "i", arg: 2, scope: !1391, file: !406, line: 159, type: !99)
!1397 = !DILocalVariable(name: "r", scope: !1391, file: !406, line: 163, type: !99)
!1398 = !DILocation(line: 0, scope: !1391)
!1399 = !DILocation(line: 161, column: 8, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1391, file: !406, line: 161, column: 7)
!1401 = !DILocation(line: 161, column: 7, scope: !1391)
!1402 = !DILocation(line: 163, column: 14, scope: !1391)
!1403 = !{!1354, !742, i64 4}
!1404 = !DILocation(line: 164, column: 12, scope: !1391)
!1405 = !DILocation(line: 165, column: 3, scope: !1391)
!1406 = distinct !DISubprogram(name: "set_custom_quoting", scope: !406, file: !406, line: 169, type: !1407, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1409)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !1332, !75, !75}
!1409 = !{!1410, !1411, !1412}
!1410 = !DILocalVariable(name: "o", arg: 1, scope: !1406, file: !406, line: 169, type: !1332)
!1411 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1406, file: !406, line: 170, type: !75)
!1412 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1406, file: !406, line: 170, type: !75)
!1413 = !DILocation(line: 0, scope: !1406)
!1414 = !DILocation(line: 172, column: 8, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1406, file: !406, line: 172, column: 7)
!1416 = !DILocation(line: 172, column: 7, scope: !1406)
!1417 = !DILocation(line: 174, column: 12, scope: !1406)
!1418 = !DILocation(line: 175, column: 8, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1406, file: !406, line: 175, column: 7)
!1420 = !DILocation(line: 175, column: 19, scope: !1419)
!1421 = !DILocation(line: 176, column: 5, scope: !1419)
!1422 = !DILocation(line: 177, column: 6, scope: !1406)
!1423 = !DILocation(line: 177, column: 17, scope: !1406)
!1424 = !{!1354, !720, i64 40}
!1425 = !DILocation(line: 178, column: 6, scope: !1406)
!1426 = !DILocation(line: 178, column: 18, scope: !1406)
!1427 = !{!1354, !720, i64 48}
!1428 = !DILocation(line: 179, column: 1, scope: !1406)
!1429 = !DISubprogram(name: "abort", scope: !889, file: !889, line: 598, type: !361, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !733)
!1430 = distinct !DISubprogram(name: "quotearg_buffer", scope: !406, file: !406, line: 774, type: !1431, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1433)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!101, !97, !101, !75, !101, !1346}
!1433 = !{!1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441}
!1434 = !DILocalVariable(name: "buffer", arg: 1, scope: !1430, file: !406, line: 774, type: !97)
!1435 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1430, file: !406, line: 774, type: !101)
!1436 = !DILocalVariable(name: "arg", arg: 3, scope: !1430, file: !406, line: 775, type: !75)
!1437 = !DILocalVariable(name: "argsize", arg: 4, scope: !1430, file: !406, line: 775, type: !101)
!1438 = !DILocalVariable(name: "o", arg: 5, scope: !1430, file: !406, line: 776, type: !1346)
!1439 = !DILocalVariable(name: "p", scope: !1430, file: !406, line: 778, type: !1346)
!1440 = !DILocalVariable(name: "saved_errno", scope: !1430, file: !406, line: 779, type: !99)
!1441 = !DILocalVariable(name: "r", scope: !1430, file: !406, line: 780, type: !101)
!1442 = !DILocation(line: 0, scope: !1430)
!1443 = !DILocation(line: 778, column: 37, scope: !1430)
!1444 = !DILocation(line: 779, column: 21, scope: !1430)
!1445 = !DILocation(line: 781, column: 43, scope: !1430)
!1446 = !DILocation(line: 781, column: 53, scope: !1430)
!1447 = !DILocation(line: 781, column: 63, scope: !1430)
!1448 = !DILocation(line: 782, column: 43, scope: !1430)
!1449 = !DILocation(line: 782, column: 58, scope: !1430)
!1450 = !DILocation(line: 780, column: 14, scope: !1430)
!1451 = !DILocation(line: 783, column: 9, scope: !1430)
!1452 = !DILocation(line: 784, column: 3, scope: !1430)
!1453 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !406, file: !406, line: 251, type: !1454, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1458)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!101, !97, !101, !75, !101, !429, !99, !1456, !75, !75}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!1458 = !{!1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1483, !1485, !1488, !1489, !1490, !1491, !1494, !1495, !1498, !1502, !1503, !1511, !1514, !1515, !1517, !1518, !1519, !1520}
!1459 = !DILocalVariable(name: "buffer", arg: 1, scope: !1453, file: !406, line: 251, type: !97)
!1460 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1453, file: !406, line: 251, type: !101)
!1461 = !DILocalVariable(name: "arg", arg: 3, scope: !1453, file: !406, line: 252, type: !75)
!1462 = !DILocalVariable(name: "argsize", arg: 4, scope: !1453, file: !406, line: 252, type: !101)
!1463 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1453, file: !406, line: 253, type: !429)
!1464 = !DILocalVariable(name: "flags", arg: 6, scope: !1453, file: !406, line: 253, type: !99)
!1465 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1453, file: !406, line: 254, type: !1456)
!1466 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1453, file: !406, line: 255, type: !75)
!1467 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1453, file: !406, line: 256, type: !75)
!1468 = !DILocalVariable(name: "unibyte_locale", scope: !1453, file: !406, line: 258, type: !218)
!1469 = !DILocalVariable(name: "len", scope: !1453, file: !406, line: 260, type: !101)
!1470 = !DILocalVariable(name: "orig_buffersize", scope: !1453, file: !406, line: 261, type: !101)
!1471 = !DILocalVariable(name: "quote_string", scope: !1453, file: !406, line: 262, type: !75)
!1472 = !DILocalVariable(name: "quote_string_len", scope: !1453, file: !406, line: 263, type: !101)
!1473 = !DILocalVariable(name: "backslash_escapes", scope: !1453, file: !406, line: 264, type: !218)
!1474 = !DILocalVariable(name: "elide_outer_quotes", scope: !1453, file: !406, line: 265, type: !218)
!1475 = !DILocalVariable(name: "encountered_single_quote", scope: !1453, file: !406, line: 266, type: !218)
!1476 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1453, file: !406, line: 267, type: !218)
!1477 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1453, file: !406, line: 309, type: !218)
!1478 = !DILocalVariable(name: "lq", scope: !1479, file: !406, line: 361, type: !75)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !406, line: 361, column: 11)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !406, line: 360, column: 13)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !406, line: 333, column: 7)
!1482 = distinct !DILexicalBlock(scope: !1453, file: !406, line: 312, column: 5)
!1483 = !DILocalVariable(name: "i", scope: !1484, file: !406, line: 395, type: !101)
!1484 = distinct !DILexicalBlock(scope: !1453, file: !406, line: 395, column: 3)
!1485 = !DILocalVariable(name: "is_right_quote", scope: !1486, file: !406, line: 397, type: !218)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !406, line: 396, column: 5)
!1487 = distinct !DILexicalBlock(scope: !1484, file: !406, line: 395, column: 3)
!1488 = !DILocalVariable(name: "escaping", scope: !1486, file: !406, line: 398, type: !218)
!1489 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1486, file: !406, line: 399, type: !218)
!1490 = !DILocalVariable(name: "c", scope: !1486, file: !406, line: 417, type: !104)
!1491 = !DILocalVariable(name: "m", scope: !1492, file: !406, line: 598, type: !101)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !406, line: 596, column: 11)
!1493 = distinct !DILexicalBlock(scope: !1486, file: !406, line: 419, column: 9)
!1494 = !DILocalVariable(name: "printable", scope: !1492, file: !406, line: 600, type: !218)
!1495 = !DILocalVariable(name: "mbs", scope: !1496, file: !406, line: 609, type: !490)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !406, line: 608, column: 15)
!1497 = distinct !DILexicalBlock(scope: !1492, file: !406, line: 602, column: 17)
!1498 = !DILocalVariable(name: "w", scope: !1499, file: !406, line: 618, type: !386)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !406, line: 617, column: 19)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !406, line: 616, column: 17)
!1501 = distinct !DILexicalBlock(scope: !1496, file: !406, line: 616, column: 17)
!1502 = !DILocalVariable(name: "bytes", scope: !1499, file: !406, line: 619, type: !101)
!1503 = !DILocalVariable(name: "j", scope: !1504, file: !406, line: 648, type: !101)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !406, line: 648, column: 29)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !406, line: 647, column: 27)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !406, line: 645, column: 29)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !406, line: 636, column: 23)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !406, line: 628, column: 30)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !406, line: 623, column: 30)
!1510 = distinct !DILexicalBlock(scope: !1499, file: !406, line: 621, column: 25)
!1511 = !DILocalVariable(name: "ilim", scope: !1512, file: !406, line: 674, type: !101)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !406, line: 671, column: 15)
!1513 = distinct !DILexicalBlock(scope: !1492, file: !406, line: 670, column: 17)
!1514 = !DILabel(scope: !1453, name: "process_input", file: !406, line: 308)
!1515 = !DILabel(scope: !1516, name: "c_and_shell_escape", file: !406, line: 502)
!1516 = distinct !DILexicalBlock(scope: !1493, file: !406, line: 478, column: 9)
!1517 = !DILabel(scope: !1516, name: "c_escape", file: !406, line: 507)
!1518 = !DILabel(scope: !1486, name: "store_escape", file: !406, line: 709)
!1519 = !DILabel(scope: !1486, name: "store_c", file: !406, line: 712)
!1520 = !DILabel(scope: !1453, name: "force_outer_quoting_style", file: !406, line: 753)
!1521 = !DILocation(line: 0, scope: !1453)
!1522 = !DILocation(line: 258, column: 25, scope: !1453)
!1523 = !DILocation(line: 258, column: 36, scope: !1453)
!1524 = !DILocation(line: 265, column: 8, scope: !1453)
!1525 = !DILocation(line: 267, column: 3, scope: !1453)
!1526 = !DILocation(line: 261, column: 10, scope: !1453)
!1527 = !DILocation(line: 262, column: 15, scope: !1453)
!1528 = !DILocation(line: 263, column: 10, scope: !1453)
!1529 = !DILocation(line: 264, column: 8, scope: !1453)
!1530 = !DILocation(line: 266, column: 8, scope: !1453)
!1531 = !DILocation(line: 267, column: 8, scope: !1453)
!1532 = !DILocation(line: 308, column: 2, scope: !1453)
!1533 = !DILocation(line: 311, column: 3, scope: !1453)
!1534 = !DILocation(line: 318, column: 11, scope: !1482)
!1535 = !DILocation(line: 318, column: 12, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1482, file: !406, line: 318, column: 11)
!1537 = !DILocation(line: 319, column: 9, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !406, line: 319, column: 9)
!1539 = distinct !DILexicalBlock(scope: !1536, file: !406, line: 319, column: 9)
!1540 = !DILocation(line: 319, column: 9, scope: !1539)
!1541 = !DILocation(line: 0, scope: !481, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 357, column: 26, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !406, line: 335, column: 11)
!1544 = distinct !DILexicalBlock(scope: !1481, file: !406, line: 334, column: 13)
!1545 = !DILocation(line: 199, column: 29, scope: !481, inlinedAt: !1542)
!1546 = !DILocation(line: 201, column: 19, scope: !1547, inlinedAt: !1542)
!1547 = distinct !DILexicalBlock(scope: !481, file: !406, line: 201, column: 7)
!1548 = !DILocation(line: 201, column: 7, scope: !481, inlinedAt: !1542)
!1549 = !DILocation(line: 229, column: 3, scope: !481, inlinedAt: !1542)
!1550 = !DILocation(line: 230, column: 3, scope: !481, inlinedAt: !1542)
!1551 = !DILocation(line: 230, column: 13, scope: !481, inlinedAt: !1542)
!1552 = !DILocalVariable(name: "ps", arg: 1, scope: !1553, file: !1300, line: 1135, type: !1556)
!1553 = distinct !DISubprogram(name: "mbszero", scope: !1300, file: !1300, line: 1135, type: !1554, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1557)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{null, !1556}
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!1557 = !{!1552}
!1558 = !DILocation(line: 0, scope: !1553, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 230, column: 18, scope: !481, inlinedAt: !1542)
!1560 = !DILocalVariable(name: "__dest", arg: 1, scope: !1561, file: !1309, line: 57, type: !98)
!1561 = distinct !DISubprogram(name: "memset", scope: !1309, file: !1309, line: 57, type: !1310, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1562)
!1562 = !{!1560, !1563, !1564}
!1563 = !DILocalVariable(name: "__ch", arg: 2, scope: !1561, file: !1309, line: 57, type: !99)
!1564 = !DILocalVariable(name: "__len", arg: 3, scope: !1561, file: !1309, line: 57, type: !101)
!1565 = !DILocation(line: 0, scope: !1561, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 1137, column: 3, scope: !1553, inlinedAt: !1559)
!1567 = !DILocation(line: 59, column: 10, scope: !1561, inlinedAt: !1566)
!1568 = !DILocation(line: 231, column: 7, scope: !1569, inlinedAt: !1542)
!1569 = distinct !DILexicalBlock(scope: !481, file: !406, line: 231, column: 7)
!1570 = !DILocation(line: 231, column: 40, scope: !1569, inlinedAt: !1542)
!1571 = !DILocation(line: 231, column: 45, scope: !1569, inlinedAt: !1542)
!1572 = !DILocation(line: 235, column: 1, scope: !481, inlinedAt: !1542)
!1573 = !DILocation(line: 0, scope: !481, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 358, column: 27, scope: !1543)
!1575 = !DILocation(line: 199, column: 29, scope: !481, inlinedAt: !1574)
!1576 = !DILocation(line: 201, column: 19, scope: !1547, inlinedAt: !1574)
!1577 = !DILocation(line: 201, column: 7, scope: !481, inlinedAt: !1574)
!1578 = !DILocation(line: 229, column: 3, scope: !481, inlinedAt: !1574)
!1579 = !DILocation(line: 230, column: 3, scope: !481, inlinedAt: !1574)
!1580 = !DILocation(line: 230, column: 13, scope: !481, inlinedAt: !1574)
!1581 = !DILocation(line: 0, scope: !1553, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 230, column: 18, scope: !481, inlinedAt: !1574)
!1583 = !DILocation(line: 0, scope: !1561, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 1137, column: 3, scope: !1553, inlinedAt: !1582)
!1585 = !DILocation(line: 59, column: 10, scope: !1561, inlinedAt: !1584)
!1586 = !DILocation(line: 231, column: 7, scope: !1569, inlinedAt: !1574)
!1587 = !DILocation(line: 231, column: 40, scope: !1569, inlinedAt: !1574)
!1588 = !DILocation(line: 231, column: 45, scope: !1569, inlinedAt: !1574)
!1589 = !DILocation(line: 235, column: 1, scope: !481, inlinedAt: !1574)
!1590 = !DILocation(line: 360, column: 14, scope: !1480)
!1591 = !DILocation(line: 360, column: 13, scope: !1481)
!1592 = !DILocation(line: 0, scope: !1479)
!1593 = !DILocation(line: 361, column: 45, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1479, file: !406, line: 361, column: 11)
!1595 = !DILocation(line: 361, column: 11, scope: !1479)
!1596 = !DILocation(line: 362, column: 13, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !406, line: 362, column: 13)
!1598 = distinct !DILexicalBlock(scope: !1594, file: !406, line: 362, column: 13)
!1599 = !DILocation(line: 362, column: 13, scope: !1598)
!1600 = !DILocation(line: 361, column: 52, scope: !1594)
!1601 = distinct !{!1601, !1595, !1602, !788}
!1602 = !DILocation(line: 362, column: 13, scope: !1479)
!1603 = !DILocation(line: 260, column: 10, scope: !1453)
!1604 = !DILocation(line: 365, column: 28, scope: !1481)
!1605 = !DILocation(line: 367, column: 7, scope: !1482)
!1606 = !DILocation(line: 370, column: 7, scope: !1482)
!1607 = !DILocation(line: 373, column: 7, scope: !1482)
!1608 = !DILocation(line: 376, column: 12, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1482, file: !406, line: 376, column: 11)
!1610 = !DILocation(line: 376, column: 11, scope: !1482)
!1611 = !DILocation(line: 381, column: 12, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1482, file: !406, line: 381, column: 11)
!1613 = !DILocation(line: 381, column: 11, scope: !1482)
!1614 = !DILocation(line: 382, column: 9, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !406, line: 382, column: 9)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !406, line: 382, column: 9)
!1617 = !DILocation(line: 382, column: 9, scope: !1616)
!1618 = !DILocation(line: 389, column: 7, scope: !1482)
!1619 = !DILocation(line: 392, column: 7, scope: !1482)
!1620 = !DILocation(line: 0, scope: !1484)
!1621 = !DILocation(line: 395, column: 8, scope: !1484)
!1622 = !DILocation(line: 309, column: 8, scope: !1453)
!1623 = !DILocation(line: 395, scope: !1484)
!1624 = !DILocation(line: 395, column: 34, scope: !1487)
!1625 = !DILocation(line: 395, column: 26, scope: !1487)
!1626 = !DILocation(line: 395, column: 48, scope: !1487)
!1627 = !DILocation(line: 395, column: 55, scope: !1487)
!1628 = !DILocation(line: 395, column: 3, scope: !1484)
!1629 = !DILocation(line: 395, column: 67, scope: !1487)
!1630 = !DILocation(line: 0, scope: !1486)
!1631 = !DILocation(line: 402, column: 11, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1486, file: !406, line: 401, column: 11)
!1633 = !DILocation(line: 404, column: 17, scope: !1632)
!1634 = !DILocation(line: 405, column: 39, scope: !1632)
!1635 = !DILocation(line: 409, column: 32, scope: !1632)
!1636 = !DILocation(line: 405, column: 19, scope: !1632)
!1637 = !DILocation(line: 405, column: 15, scope: !1632)
!1638 = !DILocation(line: 410, column: 11, scope: !1632)
!1639 = !DILocation(line: 410, column: 25, scope: !1632)
!1640 = !DILocalVariable(name: "__s1", arg: 1, scope: !1641, file: !754, line: 974, type: !926)
!1641 = distinct !DISubprogram(name: "memeq", scope: !754, file: !754, line: 974, type: !1270, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1642)
!1642 = !{!1640, !1643, !1644}
!1643 = !DILocalVariable(name: "__s2", arg: 2, scope: !1641, file: !754, line: 974, type: !926)
!1644 = !DILocalVariable(name: "__n", arg: 3, scope: !1641, file: !754, line: 974, type: !101)
!1645 = !DILocation(line: 0, scope: !1641, inlinedAt: !1646)
!1646 = distinct !DILocation(line: 410, column: 14, scope: !1632)
!1647 = !DILocation(line: 976, column: 11, scope: !1641, inlinedAt: !1646)
!1648 = !DILocation(line: 976, column: 10, scope: !1641, inlinedAt: !1646)
!1649 = !DILocation(line: 401, column: 11, scope: !1486)
!1650 = !DILocation(line: 417, column: 25, scope: !1486)
!1651 = !DILocation(line: 418, column: 7, scope: !1486)
!1652 = !DILocation(line: 421, column: 15, scope: !1493)
!1653 = !DILocation(line: 423, column: 15, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !406, line: 423, column: 15)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !406, line: 422, column: 13)
!1656 = distinct !DILexicalBlock(scope: !1493, file: !406, line: 421, column: 15)
!1657 = !DILocation(line: 423, column: 15, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1654, file: !406, line: 423, column: 15)
!1659 = !DILocation(line: 423, column: 15, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !406, line: 423, column: 15)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !406, line: 423, column: 15)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !406, line: 423, column: 15)
!1663 = !DILocation(line: 423, column: 15, scope: !1661)
!1664 = !DILocation(line: 423, column: 15, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !406, line: 423, column: 15)
!1666 = distinct !DILexicalBlock(scope: !1662, file: !406, line: 423, column: 15)
!1667 = !DILocation(line: 423, column: 15, scope: !1666)
!1668 = !DILocation(line: 423, column: 15, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !406, line: 423, column: 15)
!1670 = distinct !DILexicalBlock(scope: !1662, file: !406, line: 423, column: 15)
!1671 = !DILocation(line: 423, column: 15, scope: !1670)
!1672 = !DILocation(line: 423, column: 15, scope: !1662)
!1673 = !DILocation(line: 423, column: 15, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !406, line: 423, column: 15)
!1675 = distinct !DILexicalBlock(scope: !1654, file: !406, line: 423, column: 15)
!1676 = !DILocation(line: 423, column: 15, scope: !1675)
!1677 = !DILocation(line: 431, column: 19, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1655, file: !406, line: 430, column: 19)
!1679 = !DILocation(line: 431, column: 24, scope: !1678)
!1680 = !DILocation(line: 431, column: 28, scope: !1678)
!1681 = !DILocation(line: 431, column: 38, scope: !1678)
!1682 = !DILocation(line: 431, column: 48, scope: !1678)
!1683 = !DILocation(line: 431, column: 59, scope: !1678)
!1684 = !DILocation(line: 433, column: 19, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !406, line: 433, column: 19)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !406, line: 433, column: 19)
!1687 = distinct !DILexicalBlock(scope: !1678, file: !406, line: 432, column: 17)
!1688 = !DILocation(line: 433, column: 19, scope: !1686)
!1689 = !DILocation(line: 434, column: 19, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !406, line: 434, column: 19)
!1691 = distinct !DILexicalBlock(scope: !1687, file: !406, line: 434, column: 19)
!1692 = !DILocation(line: 434, column: 19, scope: !1691)
!1693 = !DILocation(line: 435, column: 17, scope: !1687)
!1694 = !DILocation(line: 442, column: 20, scope: !1656)
!1695 = !DILocation(line: 447, column: 11, scope: !1493)
!1696 = !DILocation(line: 450, column: 19, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1493, file: !406, line: 448, column: 13)
!1698 = !DILocation(line: 456, column: 19, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1697, file: !406, line: 455, column: 19)
!1700 = !DILocation(line: 456, column: 24, scope: !1699)
!1701 = !DILocation(line: 456, column: 28, scope: !1699)
!1702 = !DILocation(line: 456, column: 38, scope: !1699)
!1703 = !DILocation(line: 456, column: 47, scope: !1699)
!1704 = !DILocation(line: 456, column: 41, scope: !1699)
!1705 = !DILocation(line: 456, column: 52, scope: !1699)
!1706 = !DILocation(line: 455, column: 19, scope: !1697)
!1707 = !DILocation(line: 457, column: 25, scope: !1699)
!1708 = !DILocation(line: 457, column: 17, scope: !1699)
!1709 = !DILocation(line: 464, column: 25, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1699, file: !406, line: 458, column: 19)
!1711 = !DILocation(line: 468, column: 21, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !406, line: 468, column: 21)
!1713 = distinct !DILexicalBlock(scope: !1710, file: !406, line: 468, column: 21)
!1714 = !DILocation(line: 468, column: 21, scope: !1713)
!1715 = !DILocation(line: 469, column: 21, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !406, line: 469, column: 21)
!1717 = distinct !DILexicalBlock(scope: !1710, file: !406, line: 469, column: 21)
!1718 = !DILocation(line: 469, column: 21, scope: !1717)
!1719 = !DILocation(line: 470, column: 21, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !406, line: 470, column: 21)
!1721 = distinct !DILexicalBlock(scope: !1710, file: !406, line: 470, column: 21)
!1722 = !DILocation(line: 470, column: 21, scope: !1721)
!1723 = !DILocation(line: 471, column: 21, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !406, line: 471, column: 21)
!1725 = distinct !DILexicalBlock(scope: !1710, file: !406, line: 471, column: 21)
!1726 = !DILocation(line: 471, column: 21, scope: !1725)
!1727 = !DILocation(line: 472, column: 21, scope: !1710)
!1728 = !DILocation(line: 482, column: 33, scope: !1516)
!1729 = !DILocation(line: 483, column: 33, scope: !1516)
!1730 = !DILocation(line: 485, column: 33, scope: !1516)
!1731 = !DILocation(line: 486, column: 33, scope: !1516)
!1732 = !DILocation(line: 487, column: 33, scope: !1516)
!1733 = !DILocation(line: 490, column: 17, scope: !1516)
!1734 = !DILocation(line: 492, column: 21, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !406, line: 491, column: 15)
!1736 = distinct !DILexicalBlock(scope: !1516, file: !406, line: 490, column: 17)
!1737 = !DILocation(line: 499, column: 35, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1516, file: !406, line: 499, column: 17)
!1739 = !DILocation(line: 499, column: 57, scope: !1738)
!1740 = !DILocation(line: 0, scope: !1516)
!1741 = !DILocation(line: 502, column: 11, scope: !1516)
!1742 = !DILocation(line: 504, column: 17, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1516, file: !406, line: 503, column: 17)
!1744 = !DILocation(line: 507, column: 11, scope: !1516)
!1745 = !DILocation(line: 508, column: 17, scope: !1516)
!1746 = !DILocation(line: 517, column: 15, scope: !1493)
!1747 = !DILocation(line: 517, column: 40, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1493, file: !406, line: 517, column: 15)
!1749 = !DILocation(line: 517, column: 47, scope: !1748)
!1750 = !DILocation(line: 517, column: 18, scope: !1748)
!1751 = !DILocation(line: 521, column: 17, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1493, file: !406, line: 521, column: 15)
!1753 = !DILocation(line: 521, column: 15, scope: !1493)
!1754 = !DILocation(line: 525, column: 11, scope: !1493)
!1755 = !DILocation(line: 537, column: 15, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1493, file: !406, line: 536, column: 15)
!1757 = !DILocation(line: 544, column: 15, scope: !1493)
!1758 = !DILocation(line: 546, column: 19, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !406, line: 545, column: 13)
!1760 = distinct !DILexicalBlock(scope: !1493, file: !406, line: 544, column: 15)
!1761 = !DILocation(line: 549, column: 19, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1759, file: !406, line: 549, column: 19)
!1763 = !DILocation(line: 549, column: 30, scope: !1762)
!1764 = !DILocation(line: 558, column: 15, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !406, line: 558, column: 15)
!1766 = distinct !DILexicalBlock(scope: !1759, file: !406, line: 558, column: 15)
!1767 = !DILocation(line: 558, column: 15, scope: !1766)
!1768 = !DILocation(line: 559, column: 15, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !406, line: 559, column: 15)
!1770 = distinct !DILexicalBlock(scope: !1759, file: !406, line: 559, column: 15)
!1771 = !DILocation(line: 559, column: 15, scope: !1770)
!1772 = !DILocation(line: 560, column: 15, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !406, line: 560, column: 15)
!1774 = distinct !DILexicalBlock(scope: !1759, file: !406, line: 560, column: 15)
!1775 = !DILocation(line: 560, column: 15, scope: !1774)
!1776 = !DILocation(line: 562, column: 13, scope: !1759)
!1777 = !DILocation(line: 602, column: 17, scope: !1492)
!1778 = !DILocation(line: 0, scope: !1492)
!1779 = !DILocation(line: 605, column: 29, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1497, file: !406, line: 603, column: 15)
!1781 = !DILocation(line: 605, column: 27, scope: !1780)
!1782 = !DILocation(line: 668, column: 40, scope: !1492)
!1783 = !DILocation(line: 670, column: 23, scope: !1513)
!1784 = !DILocation(line: 609, column: 17, scope: !1496)
!1785 = !DILocation(line: 609, column: 27, scope: !1496)
!1786 = !DILocation(line: 0, scope: !1553, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 609, column: 32, scope: !1496)
!1788 = !DILocation(line: 0, scope: !1561, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 1137, column: 3, scope: !1553, inlinedAt: !1787)
!1790 = !DILocation(line: 59, column: 10, scope: !1561, inlinedAt: !1789)
!1791 = !DILocation(line: 613, column: 29, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1496, file: !406, line: 613, column: 21)
!1793 = !DILocation(line: 613, column: 21, scope: !1496)
!1794 = !DILocation(line: 614, column: 29, scope: !1792)
!1795 = !DILocation(line: 614, column: 19, scope: !1792)
!1796 = !DILocation(line: 618, column: 21, scope: !1499)
!1797 = !DILocation(line: 620, column: 54, scope: !1499)
!1798 = !DILocation(line: 0, scope: !1499)
!1799 = !DILocation(line: 619, column: 36, scope: !1499)
!1800 = !DILocation(line: 621, column: 25, scope: !1499)
!1801 = !DILocation(line: 631, column: 38, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1508, file: !406, line: 629, column: 23)
!1803 = !DILocation(line: 631, column: 48, scope: !1802)
!1804 = !DILocation(line: 665, column: 19, scope: !1500)
!1805 = !DILocation(line: 666, column: 15, scope: !1497)
!1806 = !DILocation(line: 626, column: 25, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1509, file: !406, line: 624, column: 23)
!1808 = !DILocation(line: 631, column: 51, scope: !1802)
!1809 = !DILocation(line: 631, column: 25, scope: !1802)
!1810 = !DILocation(line: 632, column: 28, scope: !1802)
!1811 = !DILocation(line: 631, column: 34, scope: !1802)
!1812 = distinct !{!1812, !1809, !1810, !788}
!1813 = !DILocation(line: 646, column: 29, scope: !1506)
!1814 = !DILocation(line: 0, scope: !1504)
!1815 = !DILocation(line: 649, column: 49, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1504, file: !406, line: 648, column: 29)
!1817 = !DILocation(line: 649, column: 39, scope: !1816)
!1818 = !DILocation(line: 649, column: 31, scope: !1816)
!1819 = !DILocation(line: 648, column: 60, scope: !1816)
!1820 = !DILocation(line: 648, column: 50, scope: !1816)
!1821 = !DILocation(line: 648, column: 29, scope: !1504)
!1822 = distinct !{!1822, !1821, !1823, !788}
!1823 = !DILocation(line: 654, column: 33, scope: !1504)
!1824 = !DILocation(line: 657, column: 43, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1507, file: !406, line: 657, column: 29)
!1826 = !DILocalVariable(name: "wc", arg: 1, scope: !1827, file: !1828, line: 865, type: !1831)
!1827 = distinct !DISubprogram(name: "c32isprint", scope: !1828, file: !1828, line: 865, type: !1829, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !1833)
!1828 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!99, !1831}
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1832, line: 20, baseType: !82)
!1832 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1833 = !{!1826}
!1834 = !DILocation(line: 0, scope: !1827, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 657, column: 31, scope: !1825)
!1836 = !DILocation(line: 871, column: 10, scope: !1827, inlinedAt: !1835)
!1837 = !DILocation(line: 657, column: 31, scope: !1825)
!1838 = !DILocation(line: 657, column: 29, scope: !1507)
!1839 = !DILocation(line: 664, column: 23, scope: !1499)
!1840 = !DILocation(line: 670, column: 19, scope: !1513)
!1841 = !DILocation(line: 670, column: 45, scope: !1513)
!1842 = !DILocation(line: 674, column: 33, scope: !1512)
!1843 = !DILocation(line: 0, scope: !1512)
!1844 = !DILocation(line: 676, column: 17, scope: !1512)
!1845 = !DILocation(line: 398, column: 12, scope: !1486)
!1846 = !DILocation(line: 678, column: 43, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !406, line: 678, column: 25)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !406, line: 677, column: 19)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !406, line: 676, column: 17)
!1850 = distinct !DILexicalBlock(scope: !1512, file: !406, line: 676, column: 17)
!1851 = !DILocation(line: 680, column: 25, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !406, line: 680, column: 25)
!1853 = distinct !DILexicalBlock(scope: !1847, file: !406, line: 679, column: 23)
!1854 = !DILocation(line: 680, column: 25, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1852, file: !406, line: 680, column: 25)
!1856 = !DILocation(line: 680, column: 25, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !406, line: 680, column: 25)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !406, line: 680, column: 25)
!1859 = distinct !DILexicalBlock(scope: !1855, file: !406, line: 680, column: 25)
!1860 = !DILocation(line: 680, column: 25, scope: !1858)
!1861 = !DILocation(line: 680, column: 25, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !406, line: 680, column: 25)
!1863 = distinct !DILexicalBlock(scope: !1859, file: !406, line: 680, column: 25)
!1864 = !DILocation(line: 680, column: 25, scope: !1863)
!1865 = !DILocation(line: 680, column: 25, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !406, line: 680, column: 25)
!1867 = distinct !DILexicalBlock(scope: !1859, file: !406, line: 680, column: 25)
!1868 = !DILocation(line: 680, column: 25, scope: !1867)
!1869 = !DILocation(line: 680, column: 25, scope: !1859)
!1870 = !DILocation(line: 680, column: 25, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !406, line: 680, column: 25)
!1872 = distinct !DILexicalBlock(scope: !1852, file: !406, line: 680, column: 25)
!1873 = !DILocation(line: 680, column: 25, scope: !1872)
!1874 = !DILocation(line: 681, column: 25, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !406, line: 681, column: 25)
!1876 = distinct !DILexicalBlock(scope: !1853, file: !406, line: 681, column: 25)
!1877 = !DILocation(line: 681, column: 25, scope: !1876)
!1878 = !DILocation(line: 682, column: 25, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !406, line: 682, column: 25)
!1880 = distinct !DILexicalBlock(scope: !1853, file: !406, line: 682, column: 25)
!1881 = !DILocation(line: 682, column: 25, scope: !1880)
!1882 = !DILocation(line: 683, column: 38, scope: !1853)
!1883 = !DILocation(line: 683, column: 33, scope: !1853)
!1884 = !DILocation(line: 684, column: 23, scope: !1853)
!1885 = !DILocation(line: 685, column: 30, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1847, file: !406, line: 685, column: 30)
!1887 = !DILocation(line: 685, column: 30, scope: !1847)
!1888 = !DILocation(line: 687, column: 25, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !406, line: 687, column: 25)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !406, line: 687, column: 25)
!1891 = distinct !DILexicalBlock(scope: !1886, file: !406, line: 686, column: 23)
!1892 = !DILocation(line: 687, column: 25, scope: !1890)
!1893 = !DILocation(line: 689, column: 23, scope: !1891)
!1894 = !DILocation(line: 690, column: 35, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1848, file: !406, line: 690, column: 25)
!1896 = !DILocation(line: 690, column: 30, scope: !1895)
!1897 = !DILocation(line: 690, column: 25, scope: !1848)
!1898 = !DILocation(line: 692, column: 21, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !406, line: 692, column: 21)
!1900 = distinct !DILexicalBlock(scope: !1848, file: !406, line: 692, column: 21)
!1901 = !DILocation(line: 692, column: 21, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !406, line: 692, column: 21)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !406, line: 692, column: 21)
!1904 = distinct !DILexicalBlock(scope: !1899, file: !406, line: 692, column: 21)
!1905 = !DILocation(line: 692, column: 21, scope: !1903)
!1906 = !DILocation(line: 692, column: 21, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !406, line: 692, column: 21)
!1908 = distinct !DILexicalBlock(scope: !1904, file: !406, line: 692, column: 21)
!1909 = !DILocation(line: 692, column: 21, scope: !1908)
!1910 = !DILocation(line: 692, column: 21, scope: !1904)
!1911 = !DILocation(line: 0, scope: !1848)
!1912 = !DILocation(line: 693, column: 21, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !406, line: 693, column: 21)
!1914 = distinct !DILexicalBlock(scope: !1848, file: !406, line: 693, column: 21)
!1915 = !DILocation(line: 693, column: 21, scope: !1914)
!1916 = !DILocation(line: 694, column: 25, scope: !1848)
!1917 = !DILocation(line: 676, column: 17, scope: !1849)
!1918 = distinct !{!1918, !1919, !1920}
!1919 = !DILocation(line: 676, column: 17, scope: !1850)
!1920 = !DILocation(line: 695, column: 19, scope: !1850)
!1921 = !DILocation(line: 409, column: 30, scope: !1632)
!1922 = !DILocation(line: 702, column: 34, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1486, file: !406, line: 702, column: 11)
!1924 = !DILocation(line: 704, column: 14, scope: !1923)
!1925 = !DILocation(line: 705, column: 14, scope: !1923)
!1926 = !DILocation(line: 705, column: 35, scope: !1923)
!1927 = !DILocation(line: 705, column: 17, scope: !1923)
!1928 = !DILocation(line: 705, column: 47, scope: !1923)
!1929 = !DILocation(line: 705, column: 65, scope: !1923)
!1930 = !DILocation(line: 706, column: 11, scope: !1923)
!1931 = !DILocation(line: 702, column: 11, scope: !1486)
!1932 = !DILocation(line: 395, column: 15, scope: !1484)
!1933 = !DILocation(line: 709, column: 5, scope: !1486)
!1934 = !DILocation(line: 710, column: 7, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1486, file: !406, line: 710, column: 7)
!1936 = !DILocation(line: 710, column: 7, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1935, file: !406, line: 710, column: 7)
!1938 = !DILocation(line: 710, column: 7, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !406, line: 710, column: 7)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !406, line: 710, column: 7)
!1941 = distinct !DILexicalBlock(scope: !1937, file: !406, line: 710, column: 7)
!1942 = !DILocation(line: 710, column: 7, scope: !1940)
!1943 = !DILocation(line: 710, column: 7, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !406, line: 710, column: 7)
!1945 = distinct !DILexicalBlock(scope: !1941, file: !406, line: 710, column: 7)
!1946 = !DILocation(line: 710, column: 7, scope: !1945)
!1947 = !DILocation(line: 710, column: 7, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !406, line: 710, column: 7)
!1949 = distinct !DILexicalBlock(scope: !1941, file: !406, line: 710, column: 7)
!1950 = !DILocation(line: 710, column: 7, scope: !1949)
!1951 = !DILocation(line: 710, column: 7, scope: !1941)
!1952 = !DILocation(line: 710, column: 7, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !406, line: 710, column: 7)
!1954 = distinct !DILexicalBlock(scope: !1935, file: !406, line: 710, column: 7)
!1955 = !DILocation(line: 710, column: 7, scope: !1954)
!1956 = !DILocation(line: 712, column: 5, scope: !1486)
!1957 = !DILocation(line: 713, column: 7, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !406, line: 713, column: 7)
!1959 = distinct !DILexicalBlock(scope: !1486, file: !406, line: 713, column: 7)
!1960 = !DILocation(line: 417, column: 21, scope: !1486)
!1961 = !DILocation(line: 713, column: 7, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !406, line: 713, column: 7)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !406, line: 713, column: 7)
!1964 = distinct !DILexicalBlock(scope: !1958, file: !406, line: 713, column: 7)
!1965 = !DILocation(line: 713, column: 7, scope: !1963)
!1966 = !DILocation(line: 713, column: 7, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !406, line: 713, column: 7)
!1968 = distinct !DILexicalBlock(scope: !1964, file: !406, line: 713, column: 7)
!1969 = !DILocation(line: 713, column: 7, scope: !1968)
!1970 = !DILocation(line: 713, column: 7, scope: !1964)
!1971 = !DILocation(line: 714, column: 7, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !406, line: 714, column: 7)
!1973 = distinct !DILexicalBlock(scope: !1486, file: !406, line: 714, column: 7)
!1974 = !DILocation(line: 714, column: 7, scope: !1973)
!1975 = !DILocation(line: 716, column: 13, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1486, file: !406, line: 716, column: 11)
!1977 = !DILocation(line: 716, column: 11, scope: !1486)
!1978 = !DILocation(line: 718, column: 5, scope: !1487)
!1979 = !DILocation(line: 395, column: 82, scope: !1487)
!1980 = !DILocation(line: 395, column: 3, scope: !1487)
!1981 = distinct !{!1981, !1628, !1982, !788}
!1982 = !DILocation(line: 718, column: 5, scope: !1484)
!1983 = !DILocation(line: 720, column: 11, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1453, file: !406, line: 720, column: 7)
!1985 = !DILocation(line: 720, column: 16, scope: !1984)
!1986 = !DILocation(line: 728, column: 51, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1453, file: !406, line: 728, column: 7)
!1988 = !DILocation(line: 731, column: 11, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !406, line: 731, column: 11)
!1990 = distinct !DILexicalBlock(scope: !1987, file: !406, line: 730, column: 5)
!1991 = !DILocation(line: 731, column: 11, scope: !1990)
!1992 = !DILocation(line: 732, column: 16, scope: !1989)
!1993 = !DILocation(line: 732, column: 9, scope: !1989)
!1994 = !DILocation(line: 736, column: 18, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1989, file: !406, line: 736, column: 16)
!1996 = !DILocation(line: 736, column: 29, scope: !1995)
!1997 = !DILocation(line: 745, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1453, file: !406, line: 745, column: 7)
!1999 = !DILocation(line: 745, column: 20, scope: !1998)
!2000 = !DILocation(line: 746, column: 12, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !406, line: 746, column: 5)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !406, line: 746, column: 5)
!2003 = !DILocation(line: 746, column: 5, scope: !2002)
!2004 = !DILocation(line: 747, column: 7, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !406, line: 747, column: 7)
!2006 = distinct !DILexicalBlock(scope: !2001, file: !406, line: 747, column: 7)
!2007 = !DILocation(line: 747, column: 7, scope: !2006)
!2008 = !DILocation(line: 746, column: 39, scope: !2001)
!2009 = distinct !{!2009, !2003, !2010, !788}
!2010 = !DILocation(line: 747, column: 7, scope: !2002)
!2011 = !DILocation(line: 749, column: 11, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1453, file: !406, line: 749, column: 7)
!2013 = !DILocation(line: 749, column: 7, scope: !1453)
!2014 = !DILocation(line: 750, column: 5, scope: !2012)
!2015 = !DILocation(line: 750, column: 17, scope: !2012)
!2016 = !DILocation(line: 753, column: 2, scope: !1453)
!2017 = !DILocation(line: 756, column: 51, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1453, file: !406, line: 756, column: 7)
!2019 = !DILocation(line: 756, column: 21, scope: !2018)
!2020 = !DILocation(line: 760, column: 42, scope: !1453)
!2021 = !DILocation(line: 758, column: 10, scope: !1453)
!2022 = !DILocation(line: 758, column: 3, scope: !1453)
!2023 = !DILocation(line: 762, column: 1, scope: !1453)
!2024 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !889, file: !889, line: 98, type: !2025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!101}
!2027 = !DISubprogram(name: "strlen", scope: !895, file: !895, line: 407, type: !2028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!103, !75}
!2030 = !DISubprogram(name: "iswprint", scope: !2031, file: !2031, line: 120, type: !1829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!2031 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2032 = distinct !DISubprogram(name: "quotearg_alloc", scope: !406, file: !406, line: 788, type: !2033, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2035)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!97, !75, !101, !1346}
!2035 = !{!2036, !2037, !2038}
!2036 = !DILocalVariable(name: "arg", arg: 1, scope: !2032, file: !406, line: 788, type: !75)
!2037 = !DILocalVariable(name: "argsize", arg: 2, scope: !2032, file: !406, line: 788, type: !101)
!2038 = !DILocalVariable(name: "o", arg: 3, scope: !2032, file: !406, line: 789, type: !1346)
!2039 = !DILocation(line: 0, scope: !2032)
!2040 = !DILocalVariable(name: "arg", arg: 1, scope: !2041, file: !406, line: 801, type: !75)
!2041 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !406, file: !406, line: 801, type: !2042, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!97, !75, !101, !657, !1346}
!2044 = !{!2040, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052}
!2045 = !DILocalVariable(name: "argsize", arg: 2, scope: !2041, file: !406, line: 801, type: !101)
!2046 = !DILocalVariable(name: "size", arg: 3, scope: !2041, file: !406, line: 801, type: !657)
!2047 = !DILocalVariable(name: "o", arg: 4, scope: !2041, file: !406, line: 802, type: !1346)
!2048 = !DILocalVariable(name: "p", scope: !2041, file: !406, line: 804, type: !1346)
!2049 = !DILocalVariable(name: "saved_errno", scope: !2041, file: !406, line: 805, type: !99)
!2050 = !DILocalVariable(name: "flags", scope: !2041, file: !406, line: 807, type: !99)
!2051 = !DILocalVariable(name: "bufsize", scope: !2041, file: !406, line: 808, type: !101)
!2052 = !DILocalVariable(name: "buf", scope: !2041, file: !406, line: 812, type: !97)
!2053 = !DILocation(line: 0, scope: !2041, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 791, column: 10, scope: !2032)
!2055 = !DILocation(line: 804, column: 37, scope: !2041, inlinedAt: !2054)
!2056 = !DILocation(line: 805, column: 21, scope: !2041, inlinedAt: !2054)
!2057 = !DILocation(line: 807, column: 18, scope: !2041, inlinedAt: !2054)
!2058 = !DILocation(line: 807, column: 24, scope: !2041, inlinedAt: !2054)
!2059 = !DILocation(line: 808, column: 72, scope: !2041, inlinedAt: !2054)
!2060 = !DILocation(line: 809, column: 56, scope: !2041, inlinedAt: !2054)
!2061 = !DILocation(line: 810, column: 49, scope: !2041, inlinedAt: !2054)
!2062 = !DILocation(line: 811, column: 49, scope: !2041, inlinedAt: !2054)
!2063 = !DILocation(line: 808, column: 20, scope: !2041, inlinedAt: !2054)
!2064 = !DILocation(line: 811, column: 62, scope: !2041, inlinedAt: !2054)
!2065 = !DILocation(line: 812, column: 15, scope: !2041, inlinedAt: !2054)
!2066 = !DILocation(line: 813, column: 60, scope: !2041, inlinedAt: !2054)
!2067 = !DILocation(line: 815, column: 32, scope: !2041, inlinedAt: !2054)
!2068 = !DILocation(line: 815, column: 47, scope: !2041, inlinedAt: !2054)
!2069 = !DILocation(line: 813, column: 3, scope: !2041, inlinedAt: !2054)
!2070 = !DILocation(line: 816, column: 9, scope: !2041, inlinedAt: !2054)
!2071 = !DILocation(line: 791, column: 3, scope: !2032)
!2072 = !DILocation(line: 0, scope: !2041)
!2073 = !DILocation(line: 804, column: 37, scope: !2041)
!2074 = !DILocation(line: 805, column: 21, scope: !2041)
!2075 = !DILocation(line: 807, column: 18, scope: !2041)
!2076 = !DILocation(line: 807, column: 27, scope: !2041)
!2077 = !DILocation(line: 807, column: 24, scope: !2041)
!2078 = !DILocation(line: 808, column: 72, scope: !2041)
!2079 = !DILocation(line: 809, column: 56, scope: !2041)
!2080 = !DILocation(line: 810, column: 49, scope: !2041)
!2081 = !DILocation(line: 811, column: 49, scope: !2041)
!2082 = !DILocation(line: 808, column: 20, scope: !2041)
!2083 = !DILocation(line: 811, column: 62, scope: !2041)
!2084 = !DILocation(line: 812, column: 15, scope: !2041)
!2085 = !DILocation(line: 813, column: 60, scope: !2041)
!2086 = !DILocation(line: 815, column: 32, scope: !2041)
!2087 = !DILocation(line: 815, column: 47, scope: !2041)
!2088 = !DILocation(line: 813, column: 3, scope: !2041)
!2089 = !DILocation(line: 816, column: 9, scope: !2041)
!2090 = !DILocation(line: 817, column: 7, scope: !2041)
!2091 = !DILocation(line: 818, column: 11, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2041, file: !406, line: 817, column: 7)
!2093 = !{!1158, !1158, i64 0}
!2094 = !DILocation(line: 818, column: 5, scope: !2092)
!2095 = !DILocation(line: 819, column: 3, scope: !2041)
!2096 = distinct !DISubprogram(name: "quotearg_free", scope: !406, file: !406, line: 837, type: !361, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2097)
!2097 = !{!2098, !2099}
!2098 = !DILocalVariable(name: "sv", scope: !2096, file: !406, line: 839, type: !504)
!2099 = !DILocalVariable(name: "i", scope: !2100, file: !406, line: 840, type: !99)
!2100 = distinct !DILexicalBlock(scope: !2096, file: !406, line: 840, column: 3)
!2101 = !DILocation(line: 839, column: 24, scope: !2096)
!2102 = !DILocation(line: 0, scope: !2096)
!2103 = !DILocation(line: 0, scope: !2100)
!2104 = !DILocation(line: 840, column: 21, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2100, file: !406, line: 840, column: 3)
!2106 = !DILocation(line: 840, column: 3, scope: !2100)
!2107 = !DILocation(line: 842, column: 13, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2096, file: !406, line: 842, column: 7)
!2109 = !{!2110, !720, i64 8}
!2110 = !{!"slotvec", !1158, i64 0, !720, i64 8}
!2111 = !DILocation(line: 842, column: 17, scope: !2108)
!2112 = !DILocation(line: 842, column: 7, scope: !2096)
!2113 = !DILocation(line: 841, column: 17, scope: !2105)
!2114 = !DILocation(line: 841, column: 5, scope: !2105)
!2115 = !DILocation(line: 840, column: 32, scope: !2105)
!2116 = distinct !{!2116, !2106, !2117, !788}
!2117 = !DILocation(line: 841, column: 20, scope: !2100)
!2118 = !DILocation(line: 844, column: 7, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2108, file: !406, line: 843, column: 5)
!2120 = !DILocation(line: 845, column: 21, scope: !2119)
!2121 = !{!2110, !1158, i64 0}
!2122 = !DILocation(line: 846, column: 20, scope: !2119)
!2123 = !DILocation(line: 847, column: 5, scope: !2119)
!2124 = !DILocation(line: 848, column: 10, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2096, file: !406, line: 848, column: 7)
!2126 = !DILocation(line: 848, column: 7, scope: !2096)
!2127 = !DILocation(line: 850, column: 7, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2125, file: !406, line: 849, column: 5)
!2129 = !DILocation(line: 851, column: 15, scope: !2128)
!2130 = !DILocation(line: 852, column: 5, scope: !2128)
!2131 = !DILocation(line: 853, column: 10, scope: !2096)
!2132 = !DILocation(line: 854, column: 1, scope: !2096)
!2133 = !DISubprogram(name: "free", scope: !1300, file: !1300, line: 786, type: !2134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{null, !98}
!2136 = distinct !DISubprogram(name: "quotearg_n", scope: !406, file: !406, line: 919, type: !892, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2137)
!2137 = !{!2138, !2139}
!2138 = !DILocalVariable(name: "n", arg: 1, scope: !2136, file: !406, line: 919, type: !99)
!2139 = !DILocalVariable(name: "arg", arg: 2, scope: !2136, file: !406, line: 919, type: !75)
!2140 = !DILocation(line: 0, scope: !2136)
!2141 = !DILocation(line: 921, column: 10, scope: !2136)
!2142 = !DILocation(line: 921, column: 3, scope: !2136)
!2143 = distinct !DISubprogram(name: "quotearg_n_options", scope: !406, file: !406, line: 866, type: !2144, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2146)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!97, !99, !75, !101, !1346}
!2146 = !{!2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2157, !2158, !2160, !2161, !2162}
!2147 = !DILocalVariable(name: "n", arg: 1, scope: !2143, file: !406, line: 866, type: !99)
!2148 = !DILocalVariable(name: "arg", arg: 2, scope: !2143, file: !406, line: 866, type: !75)
!2149 = !DILocalVariable(name: "argsize", arg: 3, scope: !2143, file: !406, line: 866, type: !101)
!2150 = !DILocalVariable(name: "options", arg: 4, scope: !2143, file: !406, line: 867, type: !1346)
!2151 = !DILocalVariable(name: "saved_errno", scope: !2143, file: !406, line: 869, type: !99)
!2152 = !DILocalVariable(name: "sv", scope: !2143, file: !406, line: 871, type: !504)
!2153 = !DILocalVariable(name: "nslots_max", scope: !2143, file: !406, line: 873, type: !99)
!2154 = !DILocalVariable(name: "preallocated", scope: !2155, file: !406, line: 879, type: !218)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !406, line: 878, column: 5)
!2156 = distinct !DILexicalBlock(scope: !2143, file: !406, line: 877, column: 7)
!2157 = !DILocalVariable(name: "new_nslots", scope: !2155, file: !406, line: 880, type: !670)
!2158 = !DILocalVariable(name: "size", scope: !2159, file: !406, line: 891, type: !101)
!2159 = distinct !DILexicalBlock(scope: !2143, file: !406, line: 890, column: 3)
!2160 = !DILocalVariable(name: "val", scope: !2159, file: !406, line: 892, type: !97)
!2161 = !DILocalVariable(name: "flags", scope: !2159, file: !406, line: 894, type: !99)
!2162 = !DILocalVariable(name: "qsize", scope: !2159, file: !406, line: 895, type: !101)
!2163 = !DILocation(line: 0, scope: !2143)
!2164 = !DILocation(line: 869, column: 21, scope: !2143)
!2165 = !DILocation(line: 871, column: 24, scope: !2143)
!2166 = !DILocation(line: 874, column: 17, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2143, file: !406, line: 874, column: 7)
!2168 = !DILocation(line: 875, column: 5, scope: !2167)
!2169 = !DILocation(line: 877, column: 7, scope: !2156)
!2170 = !DILocation(line: 877, column: 14, scope: !2156)
!2171 = !DILocation(line: 877, column: 7, scope: !2143)
!2172 = !DILocation(line: 879, column: 31, scope: !2155)
!2173 = !DILocation(line: 0, scope: !2155)
!2174 = !DILocation(line: 880, column: 7, scope: !2155)
!2175 = !DILocation(line: 880, column: 26, scope: !2155)
!2176 = !DILocation(line: 880, column: 13, scope: !2155)
!2177 = !DILocation(line: 882, column: 31, scope: !2155)
!2178 = !DILocation(line: 883, column: 33, scope: !2155)
!2179 = !DILocation(line: 883, column: 42, scope: !2155)
!2180 = !DILocation(line: 883, column: 31, scope: !2155)
!2181 = !DILocation(line: 882, column: 22, scope: !2155)
!2182 = !DILocation(line: 882, column: 15, scope: !2155)
!2183 = !DILocation(line: 884, column: 11, scope: !2155)
!2184 = !DILocation(line: 885, column: 15, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2155, file: !406, line: 884, column: 11)
!2186 = !{i64 0, i64 8, !2093, i64 8, i64 8, !719}
!2187 = !DILocation(line: 885, column: 9, scope: !2185)
!2188 = !DILocation(line: 886, column: 20, scope: !2155)
!2189 = !DILocation(line: 886, column: 18, scope: !2155)
!2190 = !DILocation(line: 886, column: 32, scope: !2155)
!2191 = !DILocation(line: 886, column: 43, scope: !2155)
!2192 = !DILocation(line: 886, column: 53, scope: !2155)
!2193 = !DILocation(line: 0, scope: !1561, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 886, column: 7, scope: !2155)
!2195 = !DILocation(line: 59, column: 10, scope: !1561, inlinedAt: !2194)
!2196 = !DILocation(line: 887, column: 16, scope: !2155)
!2197 = !DILocation(line: 887, column: 14, scope: !2155)
!2198 = !DILocation(line: 888, column: 5, scope: !2156)
!2199 = !DILocation(line: 888, column: 5, scope: !2155)
!2200 = !DILocation(line: 891, column: 19, scope: !2159)
!2201 = !DILocation(line: 891, column: 25, scope: !2159)
!2202 = !DILocation(line: 0, scope: !2159)
!2203 = !DILocation(line: 892, column: 23, scope: !2159)
!2204 = !DILocation(line: 894, column: 26, scope: !2159)
!2205 = !DILocation(line: 894, column: 32, scope: !2159)
!2206 = !DILocation(line: 896, column: 55, scope: !2159)
!2207 = !DILocation(line: 897, column: 55, scope: !2159)
!2208 = !DILocation(line: 898, column: 55, scope: !2159)
!2209 = !DILocation(line: 899, column: 55, scope: !2159)
!2210 = !DILocation(line: 895, column: 20, scope: !2159)
!2211 = !DILocation(line: 901, column: 14, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2159, file: !406, line: 901, column: 9)
!2213 = !DILocation(line: 901, column: 9, scope: !2159)
!2214 = !DILocation(line: 903, column: 35, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2212, file: !406, line: 902, column: 7)
!2216 = !DILocation(line: 903, column: 20, scope: !2215)
!2217 = !DILocation(line: 904, column: 17, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2215, file: !406, line: 904, column: 13)
!2219 = !DILocation(line: 904, column: 13, scope: !2215)
!2220 = !DILocation(line: 905, column: 11, scope: !2218)
!2221 = !DILocation(line: 906, column: 27, scope: !2215)
!2222 = !DILocation(line: 906, column: 19, scope: !2215)
!2223 = !DILocation(line: 907, column: 69, scope: !2215)
!2224 = !DILocation(line: 909, column: 44, scope: !2215)
!2225 = !DILocation(line: 910, column: 44, scope: !2215)
!2226 = !DILocation(line: 907, column: 9, scope: !2215)
!2227 = !DILocation(line: 911, column: 7, scope: !2215)
!2228 = !DILocation(line: 913, column: 11, scope: !2159)
!2229 = !DILocation(line: 914, column: 5, scope: !2159)
!2230 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !406, file: !406, line: 925, type: !2231, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2233)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!97, !99, !75, !101}
!2233 = !{!2234, !2235, !2236}
!2234 = !DILocalVariable(name: "n", arg: 1, scope: !2230, file: !406, line: 925, type: !99)
!2235 = !DILocalVariable(name: "arg", arg: 2, scope: !2230, file: !406, line: 925, type: !75)
!2236 = !DILocalVariable(name: "argsize", arg: 3, scope: !2230, file: !406, line: 925, type: !101)
!2237 = !DILocation(line: 0, scope: !2230)
!2238 = !DILocation(line: 927, column: 10, scope: !2230)
!2239 = !DILocation(line: 927, column: 3, scope: !2230)
!2240 = distinct !DISubprogram(name: "quotearg", scope: !406, file: !406, line: 931, type: !904, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2241)
!2241 = !{!2242}
!2242 = !DILocalVariable(name: "arg", arg: 1, scope: !2240, file: !406, line: 931, type: !75)
!2243 = !DILocation(line: 0, scope: !2240)
!2244 = !DILocation(line: 0, scope: !2136, inlinedAt: !2245)
!2245 = distinct !DILocation(line: 933, column: 10, scope: !2240)
!2246 = !DILocation(line: 921, column: 10, scope: !2136, inlinedAt: !2245)
!2247 = !DILocation(line: 933, column: 3, scope: !2240)
!2248 = distinct !DISubprogram(name: "quotearg_mem", scope: !406, file: !406, line: 937, type: !2249, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2251)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!97, !75, !101}
!2251 = !{!2252, !2253}
!2252 = !DILocalVariable(name: "arg", arg: 1, scope: !2248, file: !406, line: 937, type: !75)
!2253 = !DILocalVariable(name: "argsize", arg: 2, scope: !2248, file: !406, line: 937, type: !101)
!2254 = !DILocation(line: 0, scope: !2248)
!2255 = !DILocation(line: 0, scope: !2230, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 939, column: 10, scope: !2248)
!2257 = !DILocation(line: 927, column: 10, scope: !2230, inlinedAt: !2256)
!2258 = !DILocation(line: 939, column: 3, scope: !2248)
!2259 = distinct !DISubprogram(name: "quotearg_n_style", scope: !406, file: !406, line: 943, type: !2260, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2262)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!97, !99, !429, !75}
!2262 = !{!2263, !2264, !2265, !2266}
!2263 = !DILocalVariable(name: "n", arg: 1, scope: !2259, file: !406, line: 943, type: !99)
!2264 = !DILocalVariable(name: "s", arg: 2, scope: !2259, file: !406, line: 943, type: !429)
!2265 = !DILocalVariable(name: "arg", arg: 3, scope: !2259, file: !406, line: 943, type: !75)
!2266 = !DILocalVariable(name: "o", scope: !2259, file: !406, line: 945, type: !1347)
!2267 = !DILocation(line: 0, scope: !2259)
!2268 = !DILocation(line: 945, column: 3, scope: !2259)
!2269 = !DILocation(line: 945, column: 32, scope: !2259)
!2270 = !{!2271}
!2271 = distinct !{!2271, !2272, !"quoting_options_from_style: argument 0"}
!2272 = distinct !{!2272, !"quoting_options_from_style"}
!2273 = !DILocation(line: 945, column: 36, scope: !2259)
!2274 = !DILocalVariable(name: "style", arg: 1, scope: !2275, file: !406, line: 183, type: !429)
!2275 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !406, file: !406, line: 183, type: !2276, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2278)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!456, !429}
!2278 = !{!2274, !2279}
!2279 = !DILocalVariable(name: "o", scope: !2275, file: !406, line: 185, type: !456)
!2280 = !DILocation(line: 0, scope: !2275, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 945, column: 36, scope: !2259)
!2282 = !DILocation(line: 185, column: 26, scope: !2275, inlinedAt: !2281)
!2283 = !DILocation(line: 186, column: 13, scope: !2284, inlinedAt: !2281)
!2284 = distinct !DILexicalBlock(scope: !2275, file: !406, line: 186, column: 7)
!2285 = !DILocation(line: 186, column: 7, scope: !2275, inlinedAt: !2281)
!2286 = !DILocation(line: 187, column: 5, scope: !2284, inlinedAt: !2281)
!2287 = !DILocation(line: 188, column: 11, scope: !2275, inlinedAt: !2281)
!2288 = !DILocation(line: 946, column: 10, scope: !2259)
!2289 = !DILocation(line: 947, column: 1, scope: !2259)
!2290 = !DILocation(line: 946, column: 3, scope: !2259)
!2291 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !406, file: !406, line: 950, type: !2292, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2294)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!97, !99, !429, !75, !101}
!2294 = !{!2295, !2296, !2297, !2298, !2299}
!2295 = !DILocalVariable(name: "n", arg: 1, scope: !2291, file: !406, line: 950, type: !99)
!2296 = !DILocalVariable(name: "s", arg: 2, scope: !2291, file: !406, line: 950, type: !429)
!2297 = !DILocalVariable(name: "arg", arg: 3, scope: !2291, file: !406, line: 951, type: !75)
!2298 = !DILocalVariable(name: "argsize", arg: 4, scope: !2291, file: !406, line: 951, type: !101)
!2299 = !DILocalVariable(name: "o", scope: !2291, file: !406, line: 953, type: !1347)
!2300 = !DILocation(line: 0, scope: !2291)
!2301 = !DILocation(line: 953, column: 3, scope: !2291)
!2302 = !DILocation(line: 953, column: 32, scope: !2291)
!2303 = !{!2304}
!2304 = distinct !{!2304, !2305, !"quoting_options_from_style: argument 0"}
!2305 = distinct !{!2305, !"quoting_options_from_style"}
!2306 = !DILocation(line: 953, column: 36, scope: !2291)
!2307 = !DILocation(line: 0, scope: !2275, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 953, column: 36, scope: !2291)
!2309 = !DILocation(line: 185, column: 26, scope: !2275, inlinedAt: !2308)
!2310 = !DILocation(line: 186, column: 13, scope: !2284, inlinedAt: !2308)
!2311 = !DILocation(line: 186, column: 7, scope: !2275, inlinedAt: !2308)
!2312 = !DILocation(line: 187, column: 5, scope: !2284, inlinedAt: !2308)
!2313 = !DILocation(line: 188, column: 11, scope: !2275, inlinedAt: !2308)
!2314 = !DILocation(line: 954, column: 10, scope: !2291)
!2315 = !DILocation(line: 955, column: 1, scope: !2291)
!2316 = !DILocation(line: 954, column: 3, scope: !2291)
!2317 = distinct !DISubprogram(name: "quotearg_style", scope: !406, file: !406, line: 958, type: !2318, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2320)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!97, !429, !75}
!2320 = !{!2321, !2322}
!2321 = !DILocalVariable(name: "s", arg: 1, scope: !2317, file: !406, line: 958, type: !429)
!2322 = !DILocalVariable(name: "arg", arg: 2, scope: !2317, file: !406, line: 958, type: !75)
!2323 = !DILocation(line: 0, scope: !2317)
!2324 = !DILocation(line: 0, scope: !2259, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 960, column: 10, scope: !2317)
!2326 = !DILocation(line: 945, column: 3, scope: !2259, inlinedAt: !2325)
!2327 = !DILocation(line: 945, column: 32, scope: !2259, inlinedAt: !2325)
!2328 = !{!2329}
!2329 = distinct !{!2329, !2330, !"quoting_options_from_style: argument 0"}
!2330 = distinct !{!2330, !"quoting_options_from_style"}
!2331 = !DILocation(line: 945, column: 36, scope: !2259, inlinedAt: !2325)
!2332 = !DILocation(line: 0, scope: !2275, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 945, column: 36, scope: !2259, inlinedAt: !2325)
!2334 = !DILocation(line: 185, column: 26, scope: !2275, inlinedAt: !2333)
!2335 = !DILocation(line: 186, column: 13, scope: !2284, inlinedAt: !2333)
!2336 = !DILocation(line: 186, column: 7, scope: !2275, inlinedAt: !2333)
!2337 = !DILocation(line: 187, column: 5, scope: !2284, inlinedAt: !2333)
!2338 = !DILocation(line: 188, column: 11, scope: !2275, inlinedAt: !2333)
!2339 = !DILocation(line: 946, column: 10, scope: !2259, inlinedAt: !2325)
!2340 = !DILocation(line: 947, column: 1, scope: !2259, inlinedAt: !2325)
!2341 = !DILocation(line: 960, column: 3, scope: !2317)
!2342 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !406, file: !406, line: 964, type: !2343, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2345)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!97, !429, !75, !101}
!2345 = !{!2346, !2347, !2348}
!2346 = !DILocalVariable(name: "s", arg: 1, scope: !2342, file: !406, line: 964, type: !429)
!2347 = !DILocalVariable(name: "arg", arg: 2, scope: !2342, file: !406, line: 964, type: !75)
!2348 = !DILocalVariable(name: "argsize", arg: 3, scope: !2342, file: !406, line: 964, type: !101)
!2349 = !DILocation(line: 0, scope: !2342)
!2350 = !DILocation(line: 0, scope: !2291, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 966, column: 10, scope: !2342)
!2352 = !DILocation(line: 953, column: 3, scope: !2291, inlinedAt: !2351)
!2353 = !DILocation(line: 953, column: 32, scope: !2291, inlinedAt: !2351)
!2354 = !{!2355}
!2355 = distinct !{!2355, !2356, !"quoting_options_from_style: argument 0"}
!2356 = distinct !{!2356, !"quoting_options_from_style"}
!2357 = !DILocation(line: 953, column: 36, scope: !2291, inlinedAt: !2351)
!2358 = !DILocation(line: 0, scope: !2275, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 953, column: 36, scope: !2291, inlinedAt: !2351)
!2360 = !DILocation(line: 185, column: 26, scope: !2275, inlinedAt: !2359)
!2361 = !DILocation(line: 186, column: 13, scope: !2284, inlinedAt: !2359)
!2362 = !DILocation(line: 186, column: 7, scope: !2275, inlinedAt: !2359)
!2363 = !DILocation(line: 187, column: 5, scope: !2284, inlinedAt: !2359)
!2364 = !DILocation(line: 188, column: 11, scope: !2275, inlinedAt: !2359)
!2365 = !DILocation(line: 954, column: 10, scope: !2291, inlinedAt: !2351)
!2366 = !DILocation(line: 955, column: 1, scope: !2291, inlinedAt: !2351)
!2367 = !DILocation(line: 966, column: 3, scope: !2342)
!2368 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !406, file: !406, line: 970, type: !2369, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!97, !75, !101, !4}
!2371 = !{!2372, !2373, !2374, !2375}
!2372 = !DILocalVariable(name: "arg", arg: 1, scope: !2368, file: !406, line: 970, type: !75)
!2373 = !DILocalVariable(name: "argsize", arg: 2, scope: !2368, file: !406, line: 970, type: !101)
!2374 = !DILocalVariable(name: "ch", arg: 3, scope: !2368, file: !406, line: 970, type: !4)
!2375 = !DILocalVariable(name: "options", scope: !2368, file: !406, line: 972, type: !456)
!2376 = !DILocation(line: 0, scope: !2368)
!2377 = !DILocation(line: 972, column: 3, scope: !2368)
!2378 = !DILocation(line: 972, column: 26, scope: !2368)
!2379 = !DILocation(line: 973, column: 13, scope: !2368)
!2380 = !{i64 0, i64 4, !750, i64 4, i64 4, !741, i64 8, i64 32, !750, i64 40, i64 8, !719, i64 48, i64 8, !719}
!2381 = !DILocation(line: 0, scope: !1366, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 974, column: 3, scope: !2368)
!2383 = !DILocation(line: 147, column: 41, scope: !1366, inlinedAt: !2382)
!2384 = !DILocation(line: 147, column: 62, scope: !1366, inlinedAt: !2382)
!2385 = !DILocation(line: 147, column: 57, scope: !1366, inlinedAt: !2382)
!2386 = !DILocation(line: 148, column: 15, scope: !1366, inlinedAt: !2382)
!2387 = !DILocation(line: 149, column: 21, scope: !1366, inlinedAt: !2382)
!2388 = !DILocation(line: 149, column: 24, scope: !1366, inlinedAt: !2382)
!2389 = !DILocation(line: 150, column: 19, scope: !1366, inlinedAt: !2382)
!2390 = !DILocation(line: 150, column: 24, scope: !1366, inlinedAt: !2382)
!2391 = !DILocation(line: 150, column: 6, scope: !1366, inlinedAt: !2382)
!2392 = !DILocation(line: 975, column: 10, scope: !2368)
!2393 = !DILocation(line: 976, column: 1, scope: !2368)
!2394 = !DILocation(line: 975, column: 3, scope: !2368)
!2395 = distinct !DISubprogram(name: "quotearg_char", scope: !406, file: !406, line: 979, type: !2396, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2398)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!97, !75, !4}
!2398 = !{!2399, !2400}
!2399 = !DILocalVariable(name: "arg", arg: 1, scope: !2395, file: !406, line: 979, type: !75)
!2400 = !DILocalVariable(name: "ch", arg: 2, scope: !2395, file: !406, line: 979, type: !4)
!2401 = !DILocation(line: 0, scope: !2395)
!2402 = !DILocation(line: 0, scope: !2368, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 981, column: 10, scope: !2395)
!2404 = !DILocation(line: 972, column: 3, scope: !2368, inlinedAt: !2403)
!2405 = !DILocation(line: 972, column: 26, scope: !2368, inlinedAt: !2403)
!2406 = !DILocation(line: 973, column: 13, scope: !2368, inlinedAt: !2403)
!2407 = !DILocation(line: 0, scope: !1366, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 974, column: 3, scope: !2368, inlinedAt: !2403)
!2409 = !DILocation(line: 147, column: 41, scope: !1366, inlinedAt: !2408)
!2410 = !DILocation(line: 147, column: 62, scope: !1366, inlinedAt: !2408)
!2411 = !DILocation(line: 147, column: 57, scope: !1366, inlinedAt: !2408)
!2412 = !DILocation(line: 148, column: 15, scope: !1366, inlinedAt: !2408)
!2413 = !DILocation(line: 149, column: 21, scope: !1366, inlinedAt: !2408)
!2414 = !DILocation(line: 149, column: 24, scope: !1366, inlinedAt: !2408)
!2415 = !DILocation(line: 150, column: 19, scope: !1366, inlinedAt: !2408)
!2416 = !DILocation(line: 150, column: 24, scope: !1366, inlinedAt: !2408)
!2417 = !DILocation(line: 150, column: 6, scope: !1366, inlinedAt: !2408)
!2418 = !DILocation(line: 975, column: 10, scope: !2368, inlinedAt: !2403)
!2419 = !DILocation(line: 976, column: 1, scope: !2368, inlinedAt: !2403)
!2420 = !DILocation(line: 981, column: 3, scope: !2395)
!2421 = distinct !DISubprogram(name: "quotearg_colon", scope: !406, file: !406, line: 985, type: !904, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2422)
!2422 = !{!2423}
!2423 = !DILocalVariable(name: "arg", arg: 1, scope: !2421, file: !406, line: 985, type: !75)
!2424 = !DILocation(line: 0, scope: !2421)
!2425 = !DILocation(line: 0, scope: !2395, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 987, column: 10, scope: !2421)
!2427 = !DILocation(line: 0, scope: !2368, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 981, column: 10, scope: !2395, inlinedAt: !2426)
!2429 = !DILocation(line: 972, column: 3, scope: !2368, inlinedAt: !2428)
!2430 = !DILocation(line: 972, column: 26, scope: !2368, inlinedAt: !2428)
!2431 = !DILocation(line: 973, column: 13, scope: !2368, inlinedAt: !2428)
!2432 = !DILocation(line: 0, scope: !1366, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 974, column: 3, scope: !2368, inlinedAt: !2428)
!2434 = !DILocation(line: 147, column: 57, scope: !1366, inlinedAt: !2433)
!2435 = !DILocation(line: 149, column: 21, scope: !1366, inlinedAt: !2433)
!2436 = !DILocation(line: 150, column: 6, scope: !1366, inlinedAt: !2433)
!2437 = !DILocation(line: 975, column: 10, scope: !2368, inlinedAt: !2428)
!2438 = !DILocation(line: 976, column: 1, scope: !2368, inlinedAt: !2428)
!2439 = !DILocation(line: 987, column: 3, scope: !2421)
!2440 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !406, file: !406, line: 991, type: !2249, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2441)
!2441 = !{!2442, !2443}
!2442 = !DILocalVariable(name: "arg", arg: 1, scope: !2440, file: !406, line: 991, type: !75)
!2443 = !DILocalVariable(name: "argsize", arg: 2, scope: !2440, file: !406, line: 991, type: !101)
!2444 = !DILocation(line: 0, scope: !2440)
!2445 = !DILocation(line: 0, scope: !2368, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 993, column: 10, scope: !2440)
!2447 = !DILocation(line: 972, column: 3, scope: !2368, inlinedAt: !2446)
!2448 = !DILocation(line: 972, column: 26, scope: !2368, inlinedAt: !2446)
!2449 = !DILocation(line: 973, column: 13, scope: !2368, inlinedAt: !2446)
!2450 = !DILocation(line: 0, scope: !1366, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 974, column: 3, scope: !2368, inlinedAt: !2446)
!2452 = !DILocation(line: 147, column: 57, scope: !1366, inlinedAt: !2451)
!2453 = !DILocation(line: 149, column: 21, scope: !1366, inlinedAt: !2451)
!2454 = !DILocation(line: 150, column: 6, scope: !1366, inlinedAt: !2451)
!2455 = !DILocation(line: 975, column: 10, scope: !2368, inlinedAt: !2446)
!2456 = !DILocation(line: 976, column: 1, scope: !2368, inlinedAt: !2446)
!2457 = !DILocation(line: 993, column: 3, scope: !2440)
!2458 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !406, file: !406, line: 997, type: !2260, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2459)
!2459 = !{!2460, !2461, !2462, !2463}
!2460 = !DILocalVariable(name: "n", arg: 1, scope: !2458, file: !406, line: 997, type: !99)
!2461 = !DILocalVariable(name: "s", arg: 2, scope: !2458, file: !406, line: 997, type: !429)
!2462 = !DILocalVariable(name: "arg", arg: 3, scope: !2458, file: !406, line: 997, type: !75)
!2463 = !DILocalVariable(name: "options", scope: !2458, file: !406, line: 999, type: !456)
!2464 = !DILocation(line: 185, column: 26, scope: !2275, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 1000, column: 13, scope: !2458)
!2466 = !DILocation(line: 0, scope: !2458)
!2467 = !DILocation(line: 999, column: 3, scope: !2458)
!2468 = !DILocation(line: 999, column: 26, scope: !2458)
!2469 = !DILocation(line: 0, scope: !2275, inlinedAt: !2465)
!2470 = !DILocation(line: 186, column: 13, scope: !2284, inlinedAt: !2465)
!2471 = !DILocation(line: 186, column: 7, scope: !2275, inlinedAt: !2465)
!2472 = !DILocation(line: 187, column: 5, scope: !2284, inlinedAt: !2465)
!2473 = !{!2474}
!2474 = distinct !{!2474, !2475, !"quoting_options_from_style: argument 0"}
!2475 = distinct !{!2475, !"quoting_options_from_style"}
!2476 = !DILocation(line: 1000, column: 13, scope: !2458)
!2477 = !DILocation(line: 0, scope: !1366, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 1001, column: 3, scope: !2458)
!2479 = !DILocation(line: 147, column: 57, scope: !1366, inlinedAt: !2478)
!2480 = !DILocation(line: 149, column: 21, scope: !1366, inlinedAt: !2478)
!2481 = !DILocation(line: 150, column: 6, scope: !1366, inlinedAt: !2478)
!2482 = !DILocation(line: 1002, column: 10, scope: !2458)
!2483 = !DILocation(line: 1003, column: 1, scope: !2458)
!2484 = !DILocation(line: 1002, column: 3, scope: !2458)
!2485 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !406, file: !406, line: 1006, type: !2486, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!97, !99, !75, !75, !75}
!2488 = !{!2489, !2490, !2491, !2492}
!2489 = !DILocalVariable(name: "n", arg: 1, scope: !2485, file: !406, line: 1006, type: !99)
!2490 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2485, file: !406, line: 1006, type: !75)
!2491 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2485, file: !406, line: 1007, type: !75)
!2492 = !DILocalVariable(name: "arg", arg: 4, scope: !2485, file: !406, line: 1007, type: !75)
!2493 = !DILocation(line: 0, scope: !2485)
!2494 = !DILocalVariable(name: "n", arg: 1, scope: !2495, file: !406, line: 1014, type: !99)
!2495 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !406, file: !406, line: 1014, type: !2496, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!97, !99, !75, !75, !75, !101}
!2498 = !{!2494, !2499, !2500, !2501, !2502, !2503}
!2499 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2495, file: !406, line: 1014, type: !75)
!2500 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2495, file: !406, line: 1015, type: !75)
!2501 = !DILocalVariable(name: "arg", arg: 4, scope: !2495, file: !406, line: 1016, type: !75)
!2502 = !DILocalVariable(name: "argsize", arg: 5, scope: !2495, file: !406, line: 1016, type: !101)
!2503 = !DILocalVariable(name: "o", scope: !2495, file: !406, line: 1018, type: !456)
!2504 = !DILocation(line: 0, scope: !2495, inlinedAt: !2505)
!2505 = distinct !DILocation(line: 1009, column: 10, scope: !2485)
!2506 = !DILocation(line: 1018, column: 3, scope: !2495, inlinedAt: !2505)
!2507 = !DILocation(line: 1018, column: 26, scope: !2495, inlinedAt: !2505)
!2508 = !DILocation(line: 1018, column: 30, scope: !2495, inlinedAt: !2505)
!2509 = !DILocation(line: 0, scope: !1406, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 1019, column: 3, scope: !2495, inlinedAt: !2505)
!2511 = !DILocation(line: 174, column: 12, scope: !1406, inlinedAt: !2510)
!2512 = !DILocation(line: 175, column: 8, scope: !1419, inlinedAt: !2510)
!2513 = !DILocation(line: 175, column: 19, scope: !1419, inlinedAt: !2510)
!2514 = !DILocation(line: 176, column: 5, scope: !1419, inlinedAt: !2510)
!2515 = !DILocation(line: 177, column: 6, scope: !1406, inlinedAt: !2510)
!2516 = !DILocation(line: 177, column: 17, scope: !1406, inlinedAt: !2510)
!2517 = !DILocation(line: 178, column: 6, scope: !1406, inlinedAt: !2510)
!2518 = !DILocation(line: 178, column: 18, scope: !1406, inlinedAt: !2510)
!2519 = !DILocation(line: 1020, column: 10, scope: !2495, inlinedAt: !2505)
!2520 = !DILocation(line: 1021, column: 1, scope: !2495, inlinedAt: !2505)
!2521 = !DILocation(line: 1009, column: 3, scope: !2485)
!2522 = !DILocation(line: 0, scope: !2495)
!2523 = !DILocation(line: 1018, column: 3, scope: !2495)
!2524 = !DILocation(line: 1018, column: 26, scope: !2495)
!2525 = !DILocation(line: 1018, column: 30, scope: !2495)
!2526 = !DILocation(line: 0, scope: !1406, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 1019, column: 3, scope: !2495)
!2528 = !DILocation(line: 174, column: 12, scope: !1406, inlinedAt: !2527)
!2529 = !DILocation(line: 175, column: 8, scope: !1419, inlinedAt: !2527)
!2530 = !DILocation(line: 175, column: 19, scope: !1419, inlinedAt: !2527)
!2531 = !DILocation(line: 176, column: 5, scope: !1419, inlinedAt: !2527)
!2532 = !DILocation(line: 177, column: 6, scope: !1406, inlinedAt: !2527)
!2533 = !DILocation(line: 177, column: 17, scope: !1406, inlinedAt: !2527)
!2534 = !DILocation(line: 178, column: 6, scope: !1406, inlinedAt: !2527)
!2535 = !DILocation(line: 178, column: 18, scope: !1406, inlinedAt: !2527)
!2536 = !DILocation(line: 1020, column: 10, scope: !2495)
!2537 = !DILocation(line: 1021, column: 1, scope: !2495)
!2538 = !DILocation(line: 1020, column: 3, scope: !2495)
!2539 = distinct !DISubprogram(name: "quotearg_custom", scope: !406, file: !406, line: 1024, type: !2540, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2542)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!97, !75, !75, !75}
!2542 = !{!2543, !2544, !2545}
!2543 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2539, file: !406, line: 1024, type: !75)
!2544 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2539, file: !406, line: 1024, type: !75)
!2545 = !DILocalVariable(name: "arg", arg: 3, scope: !2539, file: !406, line: 1025, type: !75)
!2546 = !DILocation(line: 0, scope: !2539)
!2547 = !DILocation(line: 0, scope: !2485, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 1027, column: 10, scope: !2539)
!2549 = !DILocation(line: 0, scope: !2495, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 1009, column: 10, scope: !2485, inlinedAt: !2548)
!2551 = !DILocation(line: 1018, column: 3, scope: !2495, inlinedAt: !2550)
!2552 = !DILocation(line: 1018, column: 26, scope: !2495, inlinedAt: !2550)
!2553 = !DILocation(line: 1018, column: 30, scope: !2495, inlinedAt: !2550)
!2554 = !DILocation(line: 0, scope: !1406, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 1019, column: 3, scope: !2495, inlinedAt: !2550)
!2556 = !DILocation(line: 174, column: 12, scope: !1406, inlinedAt: !2555)
!2557 = !DILocation(line: 175, column: 8, scope: !1419, inlinedAt: !2555)
!2558 = !DILocation(line: 175, column: 19, scope: !1419, inlinedAt: !2555)
!2559 = !DILocation(line: 176, column: 5, scope: !1419, inlinedAt: !2555)
!2560 = !DILocation(line: 177, column: 6, scope: !1406, inlinedAt: !2555)
!2561 = !DILocation(line: 177, column: 17, scope: !1406, inlinedAt: !2555)
!2562 = !DILocation(line: 178, column: 6, scope: !1406, inlinedAt: !2555)
!2563 = !DILocation(line: 178, column: 18, scope: !1406, inlinedAt: !2555)
!2564 = !DILocation(line: 1020, column: 10, scope: !2495, inlinedAt: !2550)
!2565 = !DILocation(line: 1021, column: 1, scope: !2495, inlinedAt: !2550)
!2566 = !DILocation(line: 1027, column: 3, scope: !2539)
!2567 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !406, file: !406, line: 1031, type: !2568, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2570)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!97, !75, !75, !75, !101}
!2570 = !{!2571, !2572, !2573, !2574}
!2571 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2567, file: !406, line: 1031, type: !75)
!2572 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2567, file: !406, line: 1031, type: !75)
!2573 = !DILocalVariable(name: "arg", arg: 3, scope: !2567, file: !406, line: 1032, type: !75)
!2574 = !DILocalVariable(name: "argsize", arg: 4, scope: !2567, file: !406, line: 1032, type: !101)
!2575 = !DILocation(line: 0, scope: !2567)
!2576 = !DILocation(line: 0, scope: !2495, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 1034, column: 10, scope: !2567)
!2578 = !DILocation(line: 1018, column: 3, scope: !2495, inlinedAt: !2577)
!2579 = !DILocation(line: 1018, column: 26, scope: !2495, inlinedAt: !2577)
!2580 = !DILocation(line: 1018, column: 30, scope: !2495, inlinedAt: !2577)
!2581 = !DILocation(line: 0, scope: !1406, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 1019, column: 3, scope: !2495, inlinedAt: !2577)
!2583 = !DILocation(line: 174, column: 12, scope: !1406, inlinedAt: !2582)
!2584 = !DILocation(line: 175, column: 8, scope: !1419, inlinedAt: !2582)
!2585 = !DILocation(line: 175, column: 19, scope: !1419, inlinedAt: !2582)
!2586 = !DILocation(line: 176, column: 5, scope: !1419, inlinedAt: !2582)
!2587 = !DILocation(line: 177, column: 6, scope: !1406, inlinedAt: !2582)
!2588 = !DILocation(line: 177, column: 17, scope: !1406, inlinedAt: !2582)
!2589 = !DILocation(line: 178, column: 6, scope: !1406, inlinedAt: !2582)
!2590 = !DILocation(line: 178, column: 18, scope: !1406, inlinedAt: !2582)
!2591 = !DILocation(line: 1020, column: 10, scope: !2495, inlinedAt: !2577)
!2592 = !DILocation(line: 1021, column: 1, scope: !2495, inlinedAt: !2577)
!2593 = !DILocation(line: 1034, column: 3, scope: !2567)
!2594 = distinct !DISubprogram(name: "quote_n_mem", scope: !406, file: !406, line: 1049, type: !2595, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2597)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!75, !99, !75, !101}
!2597 = !{!2598, !2599, !2600}
!2598 = !DILocalVariable(name: "n", arg: 1, scope: !2594, file: !406, line: 1049, type: !99)
!2599 = !DILocalVariable(name: "arg", arg: 2, scope: !2594, file: !406, line: 1049, type: !75)
!2600 = !DILocalVariable(name: "argsize", arg: 3, scope: !2594, file: !406, line: 1049, type: !101)
!2601 = !DILocation(line: 0, scope: !2594)
!2602 = !DILocation(line: 1051, column: 10, scope: !2594)
!2603 = !DILocation(line: 1051, column: 3, scope: !2594)
!2604 = distinct !DISubprogram(name: "quote_mem", scope: !406, file: !406, line: 1055, type: !2605, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!75, !75, !101}
!2607 = !{!2608, !2609}
!2608 = !DILocalVariable(name: "arg", arg: 1, scope: !2604, file: !406, line: 1055, type: !75)
!2609 = !DILocalVariable(name: "argsize", arg: 2, scope: !2604, file: !406, line: 1055, type: !101)
!2610 = !DILocation(line: 0, scope: !2604)
!2611 = !DILocation(line: 0, scope: !2594, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 1057, column: 10, scope: !2604)
!2613 = !DILocation(line: 1051, column: 10, scope: !2594, inlinedAt: !2612)
!2614 = !DILocation(line: 1057, column: 3, scope: !2604)
!2615 = distinct !DISubprogram(name: "quote_n", scope: !406, file: !406, line: 1061, type: !2616, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!75, !99, !75}
!2618 = !{!2619, !2620}
!2619 = !DILocalVariable(name: "n", arg: 1, scope: !2615, file: !406, line: 1061, type: !99)
!2620 = !DILocalVariable(name: "arg", arg: 2, scope: !2615, file: !406, line: 1061, type: !75)
!2621 = !DILocation(line: 0, scope: !2615)
!2622 = !DILocation(line: 0, scope: !2594, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 1063, column: 10, scope: !2615)
!2624 = !DILocation(line: 1051, column: 10, scope: !2594, inlinedAt: !2623)
!2625 = !DILocation(line: 1063, column: 3, scope: !2615)
!2626 = distinct !DISubprogram(name: "quote", scope: !406, file: !406, line: 1067, type: !2627, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !2629)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!75, !75}
!2629 = !{!2630}
!2630 = !DILocalVariable(name: "arg", arg: 1, scope: !2626, file: !406, line: 1067, type: !75)
!2631 = !DILocation(line: 0, scope: !2626)
!2632 = !DILocation(line: 0, scope: !2615, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 1069, column: 10, scope: !2626)
!2634 = !DILocation(line: 0, scope: !2594, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 1063, column: 10, scope: !2615, inlinedAt: !2633)
!2636 = !DILocation(line: 1051, column: 10, scope: !2594, inlinedAt: !2635)
!2637 = !DILocation(line: 1069, column: 3, scope: !2626)
!2638 = distinct !DISubprogram(name: "version_etc_arn", scope: !519, file: !519, line: 61, type: !2639, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !2676)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{null, !2641, !75, !75, !75, !2675, !101}
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !2643)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !2644)
!2644 = !{!2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2643, file: !235, line: 51, baseType: !99, size: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2643, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2643, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2643, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2643, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2643, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2643, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2643, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2643, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2643, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2643, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2643, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2643, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2643, file: !235, line: 70, baseType: !2659, size: 64, offset: 832)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2643, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2643, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2643, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2643, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2643, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2643, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2643, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2643, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2643, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2643, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2643, file: !235, line: 93, baseType: !2659, size: 64, offset: 1344)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2643, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2643, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2643, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2643, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!2676 = !{!2677, !2678, !2679, !2680, !2681, !2682}
!2677 = !DILocalVariable(name: "stream", arg: 1, scope: !2638, file: !519, line: 61, type: !2641)
!2678 = !DILocalVariable(name: "command_name", arg: 2, scope: !2638, file: !519, line: 62, type: !75)
!2679 = !DILocalVariable(name: "package", arg: 3, scope: !2638, file: !519, line: 62, type: !75)
!2680 = !DILocalVariable(name: "version", arg: 4, scope: !2638, file: !519, line: 63, type: !75)
!2681 = !DILocalVariable(name: "authors", arg: 5, scope: !2638, file: !519, line: 64, type: !2675)
!2682 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2638, file: !519, line: 64, type: !101)
!2683 = !DILocation(line: 0, scope: !2638)
!2684 = !DILocation(line: 66, column: 7, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2638, file: !519, line: 66, column: 7)
!2686 = !DILocation(line: 66, column: 7, scope: !2638)
!2687 = !DILocation(line: 67, column: 5, scope: !2685)
!2688 = !DILocation(line: 69, column: 5, scope: !2685)
!2689 = !DILocation(line: 83, column: 3, scope: !2638)
!2690 = !DILocation(line: 85, column: 3, scope: !2638)
!2691 = !DILocation(line: 88, column: 3, scope: !2638)
!2692 = !DILocation(line: 95, column: 3, scope: !2638)
!2693 = !DILocation(line: 97, column: 3, scope: !2638)
!2694 = !DILocation(line: 105, column: 7, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2638, file: !519, line: 98, column: 5)
!2696 = !DILocation(line: 106, column: 7, scope: !2695)
!2697 = !DILocation(line: 109, column: 7, scope: !2695)
!2698 = !DILocation(line: 110, column: 7, scope: !2695)
!2699 = !DILocation(line: 113, column: 7, scope: !2695)
!2700 = !DILocation(line: 115, column: 7, scope: !2695)
!2701 = !DILocation(line: 120, column: 7, scope: !2695)
!2702 = !DILocation(line: 122, column: 7, scope: !2695)
!2703 = !DILocation(line: 127, column: 7, scope: !2695)
!2704 = !DILocation(line: 129, column: 7, scope: !2695)
!2705 = !DILocation(line: 134, column: 7, scope: !2695)
!2706 = !DILocation(line: 137, column: 7, scope: !2695)
!2707 = !DILocation(line: 142, column: 7, scope: !2695)
!2708 = !DILocation(line: 145, column: 7, scope: !2695)
!2709 = !DILocation(line: 150, column: 7, scope: !2695)
!2710 = !DILocation(line: 154, column: 7, scope: !2695)
!2711 = !DILocation(line: 159, column: 7, scope: !2695)
!2712 = !DILocation(line: 163, column: 7, scope: !2695)
!2713 = !DILocation(line: 170, column: 7, scope: !2695)
!2714 = !DILocation(line: 174, column: 7, scope: !2695)
!2715 = !DILocation(line: 176, column: 1, scope: !2638)
!2716 = distinct !DISubprogram(name: "version_etc_ar", scope: !519, file: !519, line: 183, type: !2717, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !2719)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{null, !2641, !75, !75, !75, !2675}
!2719 = !{!2720, !2721, !2722, !2723, !2724, !2725}
!2720 = !DILocalVariable(name: "stream", arg: 1, scope: !2716, file: !519, line: 183, type: !2641)
!2721 = !DILocalVariable(name: "command_name", arg: 2, scope: !2716, file: !519, line: 184, type: !75)
!2722 = !DILocalVariable(name: "package", arg: 3, scope: !2716, file: !519, line: 184, type: !75)
!2723 = !DILocalVariable(name: "version", arg: 4, scope: !2716, file: !519, line: 185, type: !75)
!2724 = !DILocalVariable(name: "authors", arg: 5, scope: !2716, file: !519, line: 185, type: !2675)
!2725 = !DILocalVariable(name: "n_authors", scope: !2716, file: !519, line: 187, type: !101)
!2726 = !DILocation(line: 0, scope: !2716)
!2727 = !DILocation(line: 189, column: 8, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2716, file: !519, line: 189, column: 3)
!2729 = !DILocation(line: 189, scope: !2728)
!2730 = !DILocation(line: 189, column: 23, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2728, file: !519, line: 189, column: 3)
!2732 = !DILocation(line: 189, column: 3, scope: !2728)
!2733 = !DILocation(line: 189, column: 52, scope: !2731)
!2734 = distinct !{!2734, !2732, !2735, !788}
!2735 = !DILocation(line: 190, column: 5, scope: !2728)
!2736 = !DILocation(line: 191, column: 3, scope: !2716)
!2737 = !DILocation(line: 192, column: 1, scope: !2716)
!2738 = distinct !DISubprogram(name: "version_etc_va", scope: !519, file: !519, line: 199, type: !2739, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !2749)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{null, !2641, !75, !75, !75, !2741}
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2743)
!2743 = !{!2744, !2746, !2747, !2748}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2742, file: !2745, line: 192, baseType: !82, size: 32)
!2745 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2742, file: !2745, line: 192, baseType: !82, size: 32, offset: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2742, file: !2745, line: 192, baseType: !98, size: 64, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2742, file: !2745, line: 192, baseType: !98, size: 64, offset: 128)
!2749 = !{!2750, !2751, !2752, !2753, !2754, !2755, !2756}
!2750 = !DILocalVariable(name: "stream", arg: 1, scope: !2738, file: !519, line: 199, type: !2641)
!2751 = !DILocalVariable(name: "command_name", arg: 2, scope: !2738, file: !519, line: 200, type: !75)
!2752 = !DILocalVariable(name: "package", arg: 3, scope: !2738, file: !519, line: 200, type: !75)
!2753 = !DILocalVariable(name: "version", arg: 4, scope: !2738, file: !519, line: 201, type: !75)
!2754 = !DILocalVariable(name: "authors", arg: 5, scope: !2738, file: !519, line: 201, type: !2741)
!2755 = !DILocalVariable(name: "n_authors", scope: !2738, file: !519, line: 203, type: !101)
!2756 = !DILocalVariable(name: "authtab", scope: !2738, file: !519, line: 204, type: !2757)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 640, elements: !45)
!2758 = !DILocation(line: 0, scope: !2738)
!2759 = !DILocation(line: 204, column: 3, scope: !2738)
!2760 = !DILocation(line: 204, column: 15, scope: !2738)
!2761 = !DILocation(line: 208, column: 35, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !519, line: 206, column: 3)
!2763 = distinct !DILexicalBlock(scope: !2738, file: !519, line: 206, column: 3)
!2764 = !DILocation(line: 208, column: 33, scope: !2762)
!2765 = !DILocation(line: 208, column: 67, scope: !2762)
!2766 = !DILocation(line: 206, column: 3, scope: !2763)
!2767 = !DILocation(line: 208, column: 14, scope: !2762)
!2768 = !DILocation(line: 0, scope: !2763)
!2769 = !DILocation(line: 211, column: 3, scope: !2738)
!2770 = !DILocation(line: 213, column: 1, scope: !2738)
!2771 = distinct !DISubprogram(name: "version_etc", scope: !519, file: !519, line: 230, type: !2772, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !2774)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{null, !2641, !75, !75, !75, null}
!2774 = !{!2775, !2776, !2777, !2778, !2779}
!2775 = !DILocalVariable(name: "stream", arg: 1, scope: !2771, file: !519, line: 230, type: !2641)
!2776 = !DILocalVariable(name: "command_name", arg: 2, scope: !2771, file: !519, line: 231, type: !75)
!2777 = !DILocalVariable(name: "package", arg: 3, scope: !2771, file: !519, line: 231, type: !75)
!2778 = !DILocalVariable(name: "version", arg: 4, scope: !2771, file: !519, line: 232, type: !75)
!2779 = !DILocalVariable(name: "authors", scope: !2771, file: !519, line: 234, type: !2780)
!2780 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !899, line: 52, baseType: !2781)
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1193, line: 14, baseType: !2782)
!2782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2745, baseType: !2783)
!2783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2742, size: 192, elements: !40)
!2784 = !DILocation(line: 0, scope: !2771)
!2785 = !DILocation(line: 234, column: 3, scope: !2771)
!2786 = !DILocation(line: 234, column: 11, scope: !2771)
!2787 = !DILocation(line: 235, column: 3, scope: !2771)
!2788 = !DILocation(line: 236, column: 3, scope: !2771)
!2789 = !DILocation(line: 237, column: 3, scope: !2771)
!2790 = !DILocation(line: 238, column: 1, scope: !2771)
!2791 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !519, file: !519, line: 241, type: !361, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !643, retainedNodes: !733)
!2792 = !DILocation(line: 243, column: 3, scope: !2791)
!2793 = !DILocation(line: 248, column: 3, scope: !2791)
!2794 = !DILocation(line: 254, column: 3, scope: !2791)
!2795 = !DILocation(line: 259, column: 3, scope: !2791)
!2796 = !DILocation(line: 261, column: 1, scope: !2791)
!2797 = distinct !DISubprogram(name: "xnrealloc", scope: !2798, file: !2798, line: 147, type: !2799, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2801)
!2798 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!98, !98, !101, !101}
!2801 = !{!2802, !2803, !2804}
!2802 = !DILocalVariable(name: "p", arg: 1, scope: !2797, file: !2798, line: 147, type: !98)
!2803 = !DILocalVariable(name: "n", arg: 2, scope: !2797, file: !2798, line: 147, type: !101)
!2804 = !DILocalVariable(name: "s", arg: 3, scope: !2797, file: !2798, line: 147, type: !101)
!2805 = !DILocation(line: 0, scope: !2797)
!2806 = !DILocalVariable(name: "p", arg: 1, scope: !2807, file: !651, line: 83, type: !98)
!2807 = distinct !DISubprogram(name: "xreallocarray", scope: !651, file: !651, line: 83, type: !2799, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2808)
!2808 = !{!2806, !2809, !2810}
!2809 = !DILocalVariable(name: "n", arg: 2, scope: !2807, file: !651, line: 83, type: !101)
!2810 = !DILocalVariable(name: "s", arg: 3, scope: !2807, file: !651, line: 83, type: !101)
!2811 = !DILocation(line: 0, scope: !2807, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 149, column: 10, scope: !2797)
!2813 = !DILocation(line: 85, column: 25, scope: !2807, inlinedAt: !2812)
!2814 = !DILocalVariable(name: "p", arg: 1, scope: !2815, file: !651, line: 37, type: !98)
!2815 = distinct !DISubprogram(name: "check_nonnull", scope: !651, file: !651, line: 37, type: !2816, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2818)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!98, !98}
!2818 = !{!2814}
!2819 = !DILocation(line: 0, scope: !2815, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 85, column: 10, scope: !2807, inlinedAt: !2812)
!2821 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !2820)
!2822 = distinct !DILexicalBlock(scope: !2815, file: !651, line: 39, column: 7)
!2823 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !2820)
!2824 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !2820)
!2825 = !DILocation(line: 149, column: 3, scope: !2797)
!2826 = !DILocation(line: 0, scope: !2807)
!2827 = !DILocation(line: 85, column: 25, scope: !2807)
!2828 = !DILocation(line: 0, scope: !2815, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 85, column: 10, scope: !2807)
!2830 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !2829)
!2831 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !2829)
!2832 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !2829)
!2833 = !DILocation(line: 85, column: 3, scope: !2807)
!2834 = distinct !DISubprogram(name: "xmalloc", scope: !651, file: !651, line: 47, type: !2835, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2837)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!98, !101}
!2837 = !{!2838}
!2838 = !DILocalVariable(name: "s", arg: 1, scope: !2834, file: !651, line: 47, type: !101)
!2839 = !DILocation(line: 0, scope: !2834)
!2840 = !DILocation(line: 49, column: 25, scope: !2834)
!2841 = !DILocation(line: 0, scope: !2815, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 49, column: 10, scope: !2834)
!2843 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !2842)
!2844 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !2842)
!2845 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !2842)
!2846 = !DILocation(line: 49, column: 3, scope: !2834)
!2847 = !DISubprogram(name: "malloc", scope: !889, file: !889, line: 540, type: !2835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!2848 = distinct !DISubprogram(name: "ximalloc", scope: !651, file: !651, line: 53, type: !2849, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2851)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!98, !670}
!2851 = !{!2852}
!2852 = !DILocalVariable(name: "s", arg: 1, scope: !2848, file: !651, line: 53, type: !670)
!2853 = !DILocation(line: 0, scope: !2848)
!2854 = !DILocalVariable(name: "s", arg: 1, scope: !2855, file: !2856, line: 55, type: !670)
!2855 = distinct !DISubprogram(name: "imalloc", scope: !2856, file: !2856, line: 55, type: !2849, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2857)
!2856 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2857 = !{!2854}
!2858 = !DILocation(line: 0, scope: !2855, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 55, column: 25, scope: !2848)
!2860 = !DILocation(line: 57, column: 26, scope: !2855, inlinedAt: !2859)
!2861 = !DILocation(line: 0, scope: !2815, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 55, column: 10, scope: !2848)
!2863 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !2862)
!2864 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !2862)
!2865 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !2862)
!2866 = !DILocation(line: 55, column: 3, scope: !2848)
!2867 = distinct !DISubprogram(name: "xcharalloc", scope: !651, file: !651, line: 59, type: !2868, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2870)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!97, !101}
!2870 = !{!2871}
!2871 = !DILocalVariable(name: "n", arg: 1, scope: !2867, file: !651, line: 59, type: !101)
!2872 = !DILocation(line: 0, scope: !2867)
!2873 = !DILocation(line: 0, scope: !2834, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 61, column: 10, scope: !2867)
!2875 = !DILocation(line: 49, column: 25, scope: !2834, inlinedAt: !2874)
!2876 = !DILocation(line: 0, scope: !2815, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 49, column: 10, scope: !2834, inlinedAt: !2874)
!2878 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !2877)
!2879 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !2877)
!2880 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !2877)
!2881 = !DILocation(line: 61, column: 3, scope: !2867)
!2882 = distinct !DISubprogram(name: "xrealloc", scope: !651, file: !651, line: 68, type: !2883, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!98, !98, !101}
!2885 = !{!2886, !2887}
!2886 = !DILocalVariable(name: "p", arg: 1, scope: !2882, file: !651, line: 68, type: !98)
!2887 = !DILocalVariable(name: "s", arg: 2, scope: !2882, file: !651, line: 68, type: !101)
!2888 = !DILocation(line: 0, scope: !2882)
!2889 = !DILocalVariable(name: "ptr", arg: 1, scope: !2890, file: !2891, line: 2057, type: !98)
!2890 = distinct !DISubprogram(name: "rpl_realloc", scope: !2891, file: !2891, line: 2057, type: !2883, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2892)
!2891 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2892 = !{!2889, !2893}
!2893 = !DILocalVariable(name: "size", arg: 2, scope: !2890, file: !2891, line: 2057, type: !101)
!2894 = !DILocation(line: 0, scope: !2890, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 70, column: 25, scope: !2882)
!2896 = !DILocation(line: 2059, column: 24, scope: !2890, inlinedAt: !2895)
!2897 = !DILocation(line: 2059, column: 10, scope: !2890, inlinedAt: !2895)
!2898 = !DILocation(line: 0, scope: !2815, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 70, column: 10, scope: !2882)
!2900 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !2899)
!2901 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !2899)
!2902 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !2899)
!2903 = !DILocation(line: 70, column: 3, scope: !2882)
!2904 = !DISubprogram(name: "realloc", scope: !889, file: !889, line: 551, type: !2883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!2905 = distinct !DISubprogram(name: "xirealloc", scope: !651, file: !651, line: 74, type: !2906, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2908)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!98, !98, !670}
!2908 = !{!2909, !2910}
!2909 = !DILocalVariable(name: "p", arg: 1, scope: !2905, file: !651, line: 74, type: !98)
!2910 = !DILocalVariable(name: "s", arg: 2, scope: !2905, file: !651, line: 74, type: !670)
!2911 = !DILocation(line: 0, scope: !2905)
!2912 = !DILocalVariable(name: "p", arg: 1, scope: !2913, file: !2856, line: 66, type: !98)
!2913 = distinct !DISubprogram(name: "irealloc", scope: !2856, file: !2856, line: 66, type: !2906, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2914)
!2914 = !{!2912, !2915}
!2915 = !DILocalVariable(name: "s", arg: 2, scope: !2913, file: !2856, line: 66, type: !670)
!2916 = !DILocation(line: 0, scope: !2913, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 76, column: 25, scope: !2905)
!2918 = !DILocation(line: 0, scope: !2890, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 68, column: 26, scope: !2913, inlinedAt: !2917)
!2920 = !DILocation(line: 2059, column: 24, scope: !2890, inlinedAt: !2919)
!2921 = !DILocation(line: 2059, column: 10, scope: !2890, inlinedAt: !2919)
!2922 = !DILocation(line: 0, scope: !2815, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 76, column: 10, scope: !2905)
!2924 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !2923)
!2925 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !2923)
!2926 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !2923)
!2927 = !DILocation(line: 76, column: 3, scope: !2905)
!2928 = distinct !DISubprogram(name: "xireallocarray", scope: !651, file: !651, line: 89, type: !2929, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!98, !98, !670, !670}
!2931 = !{!2932, !2933, !2934}
!2932 = !DILocalVariable(name: "p", arg: 1, scope: !2928, file: !651, line: 89, type: !98)
!2933 = !DILocalVariable(name: "n", arg: 2, scope: !2928, file: !651, line: 89, type: !670)
!2934 = !DILocalVariable(name: "s", arg: 3, scope: !2928, file: !651, line: 89, type: !670)
!2935 = !DILocation(line: 0, scope: !2928)
!2936 = !DILocalVariable(name: "p", arg: 1, scope: !2937, file: !2856, line: 98, type: !98)
!2937 = distinct !DISubprogram(name: "ireallocarray", scope: !2856, file: !2856, line: 98, type: !2929, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2938)
!2938 = !{!2936, !2939, !2940}
!2939 = !DILocalVariable(name: "n", arg: 2, scope: !2937, file: !2856, line: 98, type: !670)
!2940 = !DILocalVariable(name: "s", arg: 3, scope: !2937, file: !2856, line: 98, type: !670)
!2941 = !DILocation(line: 0, scope: !2937, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 91, column: 25, scope: !2928)
!2943 = !DILocation(line: 101, column: 13, scope: !2937, inlinedAt: !2942)
!2944 = !DILocation(line: 0, scope: !2815, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 91, column: 10, scope: !2928)
!2946 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !2945)
!2947 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !2945)
!2948 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !2945)
!2949 = !DILocation(line: 91, column: 3, scope: !2928)
!2950 = distinct !DISubprogram(name: "xnmalloc", scope: !651, file: !651, line: 98, type: !2951, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!98, !101, !101}
!2953 = !{!2954, !2955}
!2954 = !DILocalVariable(name: "n", arg: 1, scope: !2950, file: !651, line: 98, type: !101)
!2955 = !DILocalVariable(name: "s", arg: 2, scope: !2950, file: !651, line: 98, type: !101)
!2956 = !DILocation(line: 0, scope: !2950)
!2957 = !DILocation(line: 0, scope: !2807, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 100, column: 10, scope: !2950)
!2959 = !DILocation(line: 85, column: 25, scope: !2807, inlinedAt: !2958)
!2960 = !DILocation(line: 0, scope: !2815, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 85, column: 10, scope: !2807, inlinedAt: !2958)
!2962 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !2961)
!2963 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !2961)
!2964 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !2961)
!2965 = !DILocation(line: 100, column: 3, scope: !2950)
!2966 = distinct !DISubprogram(name: "xinmalloc", scope: !651, file: !651, line: 104, type: !2967, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!98, !670, !670}
!2969 = !{!2970, !2971}
!2970 = !DILocalVariable(name: "n", arg: 1, scope: !2966, file: !651, line: 104, type: !670)
!2971 = !DILocalVariable(name: "s", arg: 2, scope: !2966, file: !651, line: 104, type: !670)
!2972 = !DILocation(line: 0, scope: !2966)
!2973 = !DILocation(line: 0, scope: !2928, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 106, column: 10, scope: !2966)
!2975 = !DILocation(line: 0, scope: !2937, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 91, column: 25, scope: !2928, inlinedAt: !2974)
!2977 = !DILocation(line: 101, column: 13, scope: !2937, inlinedAt: !2976)
!2978 = !DILocation(line: 0, scope: !2815, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 91, column: 10, scope: !2928, inlinedAt: !2974)
!2980 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !2979)
!2981 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !2979)
!2982 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !2979)
!2983 = !DILocation(line: 106, column: 3, scope: !2966)
!2984 = distinct !DISubprogram(name: "x2realloc", scope: !651, file: !651, line: 116, type: !2985, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!98, !98, !657}
!2987 = !{!2988, !2989}
!2988 = !DILocalVariable(name: "p", arg: 1, scope: !2984, file: !651, line: 116, type: !98)
!2989 = !DILocalVariable(name: "ps", arg: 2, scope: !2984, file: !651, line: 116, type: !657)
!2990 = !DILocation(line: 0, scope: !2984)
!2991 = !DILocation(line: 0, scope: !654, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 118, column: 10, scope: !2984)
!2993 = !DILocation(line: 178, column: 14, scope: !654, inlinedAt: !2992)
!2994 = !DILocation(line: 180, column: 9, scope: !2995, inlinedAt: !2992)
!2995 = distinct !DILexicalBlock(scope: !654, file: !651, line: 180, column: 7)
!2996 = !DILocation(line: 180, column: 7, scope: !654, inlinedAt: !2992)
!2997 = !DILocation(line: 182, column: 13, scope: !2998, inlinedAt: !2992)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !651, line: 182, column: 11)
!2999 = distinct !DILexicalBlock(scope: !2995, file: !651, line: 181, column: 5)
!3000 = !DILocation(line: 182, column: 11, scope: !2999, inlinedAt: !2992)
!3001 = !DILocation(line: 197, column: 11, scope: !3002, inlinedAt: !2992)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !651, line: 197, column: 11)
!3003 = distinct !DILexicalBlock(scope: !2995, file: !651, line: 195, column: 5)
!3004 = !DILocation(line: 197, column: 11, scope: !3003, inlinedAt: !2992)
!3005 = !DILocation(line: 198, column: 9, scope: !3002, inlinedAt: !2992)
!3006 = !DILocation(line: 0, scope: !2807, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 201, column: 7, scope: !654, inlinedAt: !2992)
!3008 = !DILocation(line: 85, column: 25, scope: !2807, inlinedAt: !3007)
!3009 = !DILocation(line: 0, scope: !2815, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 85, column: 10, scope: !2807, inlinedAt: !3007)
!3011 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !3010)
!3012 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !3010)
!3013 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !3010)
!3014 = !DILocation(line: 202, column: 7, scope: !654, inlinedAt: !2992)
!3015 = !DILocation(line: 118, column: 3, scope: !2984)
!3016 = !DILocation(line: 0, scope: !654)
!3017 = !DILocation(line: 178, column: 14, scope: !654)
!3018 = !DILocation(line: 180, column: 9, scope: !2995)
!3019 = !DILocation(line: 180, column: 7, scope: !654)
!3020 = !DILocation(line: 182, column: 13, scope: !2998)
!3021 = !DILocation(line: 182, column: 11, scope: !2999)
!3022 = !DILocation(line: 190, column: 30, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2998, file: !651, line: 183, column: 9)
!3024 = !DILocation(line: 191, column: 16, scope: !3023)
!3025 = !DILocation(line: 191, column: 13, scope: !3023)
!3026 = !DILocation(line: 192, column: 9, scope: !3023)
!3027 = !DILocation(line: 197, column: 11, scope: !3002)
!3028 = !DILocation(line: 197, column: 11, scope: !3003)
!3029 = !DILocation(line: 198, column: 9, scope: !3002)
!3030 = !DILocation(line: 0, scope: !2807, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 201, column: 7, scope: !654)
!3032 = !DILocation(line: 85, column: 25, scope: !2807, inlinedAt: !3031)
!3033 = !DILocation(line: 0, scope: !2815, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 85, column: 10, scope: !2807, inlinedAt: !3031)
!3035 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !3034)
!3036 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !3034)
!3037 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !3034)
!3038 = !DILocation(line: 202, column: 7, scope: !654)
!3039 = !DILocation(line: 203, column: 3, scope: !654)
!3040 = !DILocation(line: 0, scope: !666)
!3041 = !DILocation(line: 230, column: 14, scope: !666)
!3042 = !DILocation(line: 238, column: 7, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !666, file: !651, line: 238, column: 7)
!3044 = !DILocation(line: 238, column: 7, scope: !666)
!3045 = !DILocation(line: 240, column: 9, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !666, file: !651, line: 240, column: 7)
!3047 = !DILocation(line: 240, column: 18, scope: !3046)
!3048 = !DILocation(line: 253, column: 8, scope: !666)
!3049 = !DILocation(line: 258, column: 27, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !651, line: 257, column: 5)
!3051 = distinct !DILexicalBlock(scope: !666, file: !651, line: 256, column: 7)
!3052 = !DILocation(line: 259, column: 50, scope: !3050)
!3053 = !DILocation(line: 259, column: 32, scope: !3050)
!3054 = !DILocation(line: 260, column: 5, scope: !3050)
!3055 = !DILocation(line: 262, column: 9, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !666, file: !651, line: 262, column: 7)
!3057 = !DILocation(line: 262, column: 7, scope: !666)
!3058 = !DILocation(line: 263, column: 9, scope: !3056)
!3059 = !DILocation(line: 263, column: 5, scope: !3056)
!3060 = !DILocation(line: 264, column: 9, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !666, file: !651, line: 264, column: 7)
!3062 = !DILocation(line: 264, column: 14, scope: !3061)
!3063 = !DILocation(line: 265, column: 7, scope: !3061)
!3064 = !DILocation(line: 265, column: 11, scope: !3061)
!3065 = !DILocation(line: 266, column: 11, scope: !3061)
!3066 = !DILocation(line: 267, column: 14, scope: !3061)
!3067 = !DILocation(line: 264, column: 7, scope: !666)
!3068 = !DILocation(line: 268, column: 5, scope: !3061)
!3069 = !DILocation(line: 0, scope: !2882, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 269, column: 8, scope: !666)
!3071 = !DILocation(line: 0, scope: !2890, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 70, column: 25, scope: !2882, inlinedAt: !3070)
!3073 = !DILocation(line: 2059, column: 24, scope: !2890, inlinedAt: !3072)
!3074 = !DILocation(line: 2059, column: 10, scope: !2890, inlinedAt: !3072)
!3075 = !DILocation(line: 0, scope: !2815, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 70, column: 10, scope: !2882, inlinedAt: !3070)
!3077 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !3076)
!3078 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !3076)
!3079 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !3076)
!3080 = !DILocation(line: 270, column: 7, scope: !666)
!3081 = !DILocation(line: 271, column: 3, scope: !666)
!3082 = distinct !DISubprogram(name: "xzalloc", scope: !651, file: !651, line: 279, type: !2835, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3083)
!3083 = !{!3084}
!3084 = !DILocalVariable(name: "s", arg: 1, scope: !3082, file: !651, line: 279, type: !101)
!3085 = !DILocation(line: 0, scope: !3082)
!3086 = !DILocalVariable(name: "n", arg: 1, scope: !3087, file: !651, line: 294, type: !101)
!3087 = distinct !DISubprogram(name: "xcalloc", scope: !651, file: !651, line: 294, type: !2951, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3088)
!3088 = !{!3086, !3089}
!3089 = !DILocalVariable(name: "s", arg: 2, scope: !3087, file: !651, line: 294, type: !101)
!3090 = !DILocation(line: 0, scope: !3087, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 281, column: 10, scope: !3082)
!3092 = !DILocation(line: 296, column: 25, scope: !3087, inlinedAt: !3091)
!3093 = !DILocation(line: 0, scope: !2815, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 296, column: 10, scope: !3087, inlinedAt: !3091)
!3095 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !3094)
!3096 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !3094)
!3097 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !3094)
!3098 = !DILocation(line: 281, column: 3, scope: !3082)
!3099 = !DISubprogram(name: "calloc", scope: !889, file: !889, line: 543, type: !2951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!3100 = !DILocation(line: 0, scope: !3087)
!3101 = !DILocation(line: 296, column: 25, scope: !3087)
!3102 = !DILocation(line: 0, scope: !2815, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 296, column: 10, scope: !3087)
!3104 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !3103)
!3105 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !3103)
!3106 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !3103)
!3107 = !DILocation(line: 296, column: 3, scope: !3087)
!3108 = distinct !DISubprogram(name: "xizalloc", scope: !651, file: !651, line: 285, type: !2849, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3109)
!3109 = !{!3110}
!3110 = !DILocalVariable(name: "s", arg: 1, scope: !3108, file: !651, line: 285, type: !670)
!3111 = !DILocation(line: 0, scope: !3108)
!3112 = !DILocalVariable(name: "n", arg: 1, scope: !3113, file: !651, line: 300, type: !670)
!3113 = distinct !DISubprogram(name: "xicalloc", scope: !651, file: !651, line: 300, type: !2967, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3114)
!3114 = !{!3112, !3115}
!3115 = !DILocalVariable(name: "s", arg: 2, scope: !3113, file: !651, line: 300, type: !670)
!3116 = !DILocation(line: 0, scope: !3113, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 287, column: 10, scope: !3108)
!3118 = !DILocalVariable(name: "n", arg: 1, scope: !3119, file: !2856, line: 77, type: !670)
!3119 = distinct !DISubprogram(name: "icalloc", scope: !2856, file: !2856, line: 77, type: !2967, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3120)
!3120 = !{!3118, !3121}
!3121 = !DILocalVariable(name: "s", arg: 2, scope: !3119, file: !2856, line: 77, type: !670)
!3122 = !DILocation(line: 0, scope: !3119, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 302, column: 25, scope: !3113, inlinedAt: !3117)
!3124 = !DILocation(line: 91, column: 10, scope: !3119, inlinedAt: !3123)
!3125 = !DILocation(line: 0, scope: !2815, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 302, column: 10, scope: !3113, inlinedAt: !3117)
!3127 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !3126)
!3128 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !3126)
!3129 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !3126)
!3130 = !DILocation(line: 287, column: 3, scope: !3108)
!3131 = !DILocation(line: 0, scope: !3113)
!3132 = !DILocation(line: 0, scope: !3119, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 302, column: 25, scope: !3113)
!3134 = !DILocation(line: 91, column: 10, scope: !3119, inlinedAt: !3133)
!3135 = !DILocation(line: 0, scope: !2815, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 302, column: 10, scope: !3113)
!3137 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !3136)
!3138 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !3136)
!3139 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !3136)
!3140 = !DILocation(line: 302, column: 3, scope: !3113)
!3141 = distinct !DISubprogram(name: "xmemdup", scope: !651, file: !651, line: 310, type: !3142, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!98, !926, !101}
!3144 = !{!3145, !3146}
!3145 = !DILocalVariable(name: "p", arg: 1, scope: !3141, file: !651, line: 310, type: !926)
!3146 = !DILocalVariable(name: "s", arg: 2, scope: !3141, file: !651, line: 310, type: !101)
!3147 = !DILocation(line: 0, scope: !3141)
!3148 = !DILocation(line: 0, scope: !2834, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 312, column: 18, scope: !3141)
!3150 = !DILocation(line: 49, column: 25, scope: !2834, inlinedAt: !3149)
!3151 = !DILocation(line: 0, scope: !2815, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 49, column: 10, scope: !2834, inlinedAt: !3149)
!3153 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !3152)
!3154 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !3152)
!3155 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !3152)
!3156 = !DILocalVariable(name: "__dest", arg: 1, scope: !3157, file: !1309, line: 26, type: !3160)
!3157 = distinct !DISubprogram(name: "memcpy", scope: !1309, file: !1309, line: 26, type: !3158, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3161)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!98, !3160, !925, !101}
!3160 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!3161 = !{!3156, !3162, !3163}
!3162 = !DILocalVariable(name: "__src", arg: 2, scope: !3157, file: !1309, line: 26, type: !925)
!3163 = !DILocalVariable(name: "__len", arg: 3, scope: !3157, file: !1309, line: 26, type: !101)
!3164 = !DILocation(line: 0, scope: !3157, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 312, column: 10, scope: !3141)
!3166 = !DILocation(line: 29, column: 10, scope: !3157, inlinedAt: !3165)
!3167 = !DILocation(line: 312, column: 3, scope: !3141)
!3168 = distinct !DISubprogram(name: "ximemdup", scope: !651, file: !651, line: 316, type: !3169, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3171)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!98, !926, !670}
!3171 = !{!3172, !3173}
!3172 = !DILocalVariable(name: "p", arg: 1, scope: !3168, file: !651, line: 316, type: !926)
!3173 = !DILocalVariable(name: "s", arg: 2, scope: !3168, file: !651, line: 316, type: !670)
!3174 = !DILocation(line: 0, scope: !3168)
!3175 = !DILocation(line: 0, scope: !2848, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 318, column: 18, scope: !3168)
!3177 = !DILocation(line: 0, scope: !2855, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 55, column: 25, scope: !2848, inlinedAt: !3176)
!3179 = !DILocation(line: 57, column: 26, scope: !2855, inlinedAt: !3178)
!3180 = !DILocation(line: 0, scope: !2815, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 55, column: 10, scope: !2848, inlinedAt: !3176)
!3182 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !3181)
!3183 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !3181)
!3184 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !3181)
!3185 = !DILocation(line: 0, scope: !3157, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 318, column: 10, scope: !3168)
!3187 = !DILocation(line: 29, column: 10, scope: !3157, inlinedAt: !3186)
!3188 = !DILocation(line: 318, column: 3, scope: !3168)
!3189 = distinct !DISubprogram(name: "ximemdup0", scope: !651, file: !651, line: 325, type: !3190, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3192)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!97, !926, !670}
!3192 = !{!3193, !3194, !3195}
!3193 = !DILocalVariable(name: "p", arg: 1, scope: !3189, file: !651, line: 325, type: !926)
!3194 = !DILocalVariable(name: "s", arg: 2, scope: !3189, file: !651, line: 325, type: !670)
!3195 = !DILocalVariable(name: "result", scope: !3189, file: !651, line: 327, type: !97)
!3196 = !DILocation(line: 0, scope: !3189)
!3197 = !DILocation(line: 327, column: 30, scope: !3189)
!3198 = !DILocation(line: 0, scope: !2848, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 327, column: 18, scope: !3189)
!3200 = !DILocation(line: 0, scope: !2855, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 55, column: 25, scope: !2848, inlinedAt: !3199)
!3202 = !DILocation(line: 57, column: 26, scope: !2855, inlinedAt: !3201)
!3203 = !DILocation(line: 0, scope: !2815, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 55, column: 10, scope: !2848, inlinedAt: !3199)
!3205 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !3204)
!3206 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !3204)
!3207 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !3204)
!3208 = !DILocation(line: 328, column: 3, scope: !3189)
!3209 = !DILocation(line: 328, column: 13, scope: !3189)
!3210 = !DILocation(line: 0, scope: !3157, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 329, column: 10, scope: !3189)
!3212 = !DILocation(line: 29, column: 10, scope: !3157, inlinedAt: !3211)
!3213 = !DILocation(line: 329, column: 3, scope: !3189)
!3214 = distinct !DISubprogram(name: "xstrdup", scope: !651, file: !651, line: 335, type: !904, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !3215)
!3215 = !{!3216}
!3216 = !DILocalVariable(name: "string", arg: 1, scope: !3214, file: !651, line: 335, type: !75)
!3217 = !DILocation(line: 0, scope: !3214)
!3218 = !DILocation(line: 337, column: 27, scope: !3214)
!3219 = !DILocation(line: 337, column: 43, scope: !3214)
!3220 = !DILocation(line: 0, scope: !3141, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 337, column: 10, scope: !3214)
!3222 = !DILocation(line: 0, scope: !2834, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 312, column: 18, scope: !3141, inlinedAt: !3221)
!3224 = !DILocation(line: 49, column: 25, scope: !2834, inlinedAt: !3223)
!3225 = !DILocation(line: 0, scope: !2815, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 49, column: 10, scope: !2834, inlinedAt: !3223)
!3227 = !DILocation(line: 39, column: 8, scope: !2822, inlinedAt: !3226)
!3228 = !DILocation(line: 39, column: 7, scope: !2815, inlinedAt: !3226)
!3229 = !DILocation(line: 40, column: 5, scope: !2822, inlinedAt: !3226)
!3230 = !DILocation(line: 0, scope: !3157, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 312, column: 10, scope: !3141, inlinedAt: !3221)
!3232 = !DILocation(line: 29, column: 10, scope: !3157, inlinedAt: !3231)
!3233 = !DILocation(line: 337, column: 3, scope: !3214)
!3234 = distinct !DISubprogram(name: "xalloc_die", scope: !615, file: !615, line: 32, type: !361, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !3235)
!3235 = !{!3236}
!3236 = !DILocalVariable(name: "__errstatus", scope: !3237, file: !615, line: 34, type: !3238)
!3237 = distinct !DILexicalBlock(scope: !3234, file: !615, line: 34, column: 3)
!3238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!3239 = !DILocation(line: 34, column: 3, scope: !3237)
!3240 = !DILocation(line: 0, scope: !3237)
!3241 = !DILocation(line: 40, column: 3, scope: !3234)
!3242 = distinct !DISubprogram(name: "close_stream", scope: !687, file: !687, line: 55, type: !3243, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3279)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!99, !3245}
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3247)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3248)
!3248 = !{!3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3247, file: !235, line: 51, baseType: !99, size: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3247, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3247, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3247, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3247, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3247, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3247, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3247, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3247, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3247, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3247, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3247, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3247, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3247, file: !235, line: 70, baseType: !3263, size: 64, offset: 832)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3247, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3247, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3247, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3247, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3247, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3247, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3247, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3247, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3247, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3247, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3247, file: !235, line: 93, baseType: !3263, size: 64, offset: 1344)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3247, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3247, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3247, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3247, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!3279 = !{!3280, !3281, !3283, !3284}
!3280 = !DILocalVariable(name: "stream", arg: 1, scope: !3242, file: !687, line: 55, type: !3245)
!3281 = !DILocalVariable(name: "some_pending", scope: !3242, file: !687, line: 57, type: !3282)
!3282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!3283 = !DILocalVariable(name: "prev_fail", scope: !3242, file: !687, line: 58, type: !3282)
!3284 = !DILocalVariable(name: "fclose_fail", scope: !3242, file: !687, line: 59, type: !3282)
!3285 = !DILocation(line: 0, scope: !3242)
!3286 = !DILocation(line: 57, column: 30, scope: !3242)
!3287 = !DILocalVariable(name: "__stream", arg: 1, scope: !3288, file: !1148, line: 135, type: !3245)
!3288 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1148, file: !1148, line: 135, type: !3243, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3289)
!3289 = !{!3287}
!3290 = !DILocation(line: 0, scope: !3288, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 58, column: 27, scope: !3242)
!3292 = !DILocation(line: 137, column: 10, scope: !3288, inlinedAt: !3291)
!3293 = !{!1157, !742, i64 0}
!3294 = !DILocation(line: 58, column: 43, scope: !3242)
!3295 = !DILocation(line: 59, column: 29, scope: !3242)
!3296 = !DILocation(line: 59, column: 45, scope: !3242)
!3297 = !DILocation(line: 69, column: 17, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3242, file: !687, line: 69, column: 7)
!3299 = !DILocation(line: 57, column: 50, scope: !3242)
!3300 = !DILocation(line: 69, column: 33, scope: !3298)
!3301 = !DILocation(line: 69, column: 53, scope: !3298)
!3302 = !DILocation(line: 69, column: 59, scope: !3298)
!3303 = !DILocation(line: 69, column: 7, scope: !3242)
!3304 = !DILocation(line: 71, column: 11, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3298, file: !687, line: 70, column: 5)
!3306 = !DILocation(line: 72, column: 9, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3305, file: !687, line: 71, column: 11)
!3308 = !DILocation(line: 72, column: 15, scope: !3307)
!3309 = !DILocation(line: 77, column: 1, scope: !3242)
!3310 = !DISubprogram(name: "__fpending", scope: !3311, file: !3311, line: 75, type: !3312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!3311 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!101, !3245}
!3314 = distinct !DISubprogram(name: "rpl_fclose", scope: !689, file: !689, line: 58, type: !3315, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3351)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!99, !3317}
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3319)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3320)
!3320 = !{!3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3319, file: !235, line: 51, baseType: !99, size: 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3319, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3319, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3319, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3319, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3319, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3319, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3319, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3319, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3319, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3319, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3319, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3319, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3319, file: !235, line: 70, baseType: !3335, size: 64, offset: 832)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3319, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3319, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3319, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3319, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3319, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3319, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3319, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3319, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3319, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3319, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3319, file: !235, line: 93, baseType: !3335, size: 64, offset: 1344)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3319, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3319, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3319, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3319, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!3351 = !{!3352, !3353, !3354, !3355}
!3352 = !DILocalVariable(name: "fp", arg: 1, scope: !3314, file: !689, line: 58, type: !3317)
!3353 = !DILocalVariable(name: "saved_errno", scope: !3314, file: !689, line: 60, type: !99)
!3354 = !DILocalVariable(name: "fd", scope: !3314, file: !689, line: 63, type: !99)
!3355 = !DILocalVariable(name: "result", scope: !3314, file: !689, line: 74, type: !99)
!3356 = !DILocation(line: 0, scope: !3314)
!3357 = !DILocation(line: 63, column: 12, scope: !3314)
!3358 = !DILocation(line: 64, column: 10, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3314, file: !689, line: 64, column: 7)
!3360 = !DILocation(line: 64, column: 7, scope: !3314)
!3361 = !DILocation(line: 65, column: 12, scope: !3359)
!3362 = !DILocation(line: 65, column: 5, scope: !3359)
!3363 = !DILocation(line: 70, column: 9, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3314, file: !689, line: 70, column: 7)
!3365 = !DILocation(line: 70, column: 23, scope: !3364)
!3366 = !DILocation(line: 70, column: 33, scope: !3364)
!3367 = !DILocation(line: 70, column: 26, scope: !3364)
!3368 = !DILocation(line: 70, column: 59, scope: !3364)
!3369 = !DILocation(line: 71, column: 7, scope: !3364)
!3370 = !DILocation(line: 71, column: 10, scope: !3364)
!3371 = !DILocation(line: 70, column: 7, scope: !3314)
!3372 = !DILocation(line: 100, column: 12, scope: !3314)
!3373 = !DILocation(line: 105, column: 7, scope: !3314)
!3374 = !DILocation(line: 72, column: 19, scope: !3364)
!3375 = !DILocation(line: 105, column: 19, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3314, file: !689, line: 105, column: 7)
!3377 = !DILocation(line: 107, column: 13, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3376, file: !689, line: 106, column: 5)
!3379 = !DILocation(line: 109, column: 5, scope: !3378)
!3380 = !DILocation(line: 112, column: 1, scope: !3314)
!3381 = !DISubprogram(name: "fileno", scope: !899, file: !899, line: 809, type: !3315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!3382 = !DISubprogram(name: "fclose", scope: !899, file: !899, line: 178, type: !3315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!3383 = !DISubprogram(name: "__freading", scope: !3311, file: !3311, line: 51, type: !3315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!3384 = !DISubprogram(name: "lseek", scope: !1028, file: !1028, line: 339, type: !3385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!257, !99, !257, !99}
!3387 = distinct !DISubprogram(name: "rpl_fflush", scope: !691, file: !691, line: 130, type: !3388, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !690, retainedNodes: !3424)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!99, !3390}
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3392)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3393)
!3393 = !{!3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3392, file: !235, line: 51, baseType: !99, size: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3392, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3392, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3392, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3392, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3392, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3392, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3392, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3392, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3392, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3392, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3392, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3392, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3392, file: !235, line: 70, baseType: !3408, size: 64, offset: 832)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3392, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3392, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3392, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3392, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3392, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3392, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3392, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3392, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3392, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3392, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3392, file: !235, line: 93, baseType: !3408, size: 64, offset: 1344)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3392, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3392, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3392, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3392, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!3424 = !{!3425}
!3425 = !DILocalVariable(name: "stream", arg: 1, scope: !3387, file: !691, line: 130, type: !3390)
!3426 = !DILocation(line: 0, scope: !3387)
!3427 = !DILocation(line: 151, column: 14, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3387, file: !691, line: 151, column: 7)
!3429 = !DILocation(line: 151, column: 22, scope: !3428)
!3430 = !DILocation(line: 151, column: 27, scope: !3428)
!3431 = !DILocation(line: 151, column: 7, scope: !3387)
!3432 = !DILocation(line: 152, column: 12, scope: !3428)
!3433 = !DILocation(line: 152, column: 5, scope: !3428)
!3434 = !DILocalVariable(name: "fp", arg: 1, scope: !3435, file: !691, line: 42, type: !3390)
!3435 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !691, file: !691, line: 42, type: !3436, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !690, retainedNodes: !3438)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{null, !3390}
!3438 = !{!3434}
!3439 = !DILocation(line: 0, scope: !3435, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 157, column: 3, scope: !3387)
!3441 = !DILocation(line: 44, column: 12, scope: !3442, inlinedAt: !3440)
!3442 = distinct !DILexicalBlock(scope: !3435, file: !691, line: 44, column: 7)
!3443 = !DILocation(line: 44, column: 19, scope: !3442, inlinedAt: !3440)
!3444 = !DILocation(line: 44, column: 7, scope: !3435, inlinedAt: !3440)
!3445 = !DILocation(line: 46, column: 5, scope: !3442, inlinedAt: !3440)
!3446 = !DILocation(line: 159, column: 10, scope: !3387)
!3447 = !DILocation(line: 159, column: 3, scope: !3387)
!3448 = !DILocation(line: 236, column: 1, scope: !3387)
!3449 = !DISubprogram(name: "fflush", scope: !899, file: !899, line: 230, type: !3388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!3450 = distinct !DISubprogram(name: "rpl_fseeko", scope: !693, file: !693, line: 28, type: !3451, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3488)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!99, !3453, !3487, !99}
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3455)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3456)
!3456 = !{!3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3455, file: !235, line: 51, baseType: !99, size: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3455, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3455, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3455, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3455, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3455, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3455, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3455, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3455, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3455, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3455, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3455, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3455, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3455, file: !235, line: 70, baseType: !3471, size: 64, offset: 832)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3455, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3455, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3455, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3455, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3455, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3455, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3455, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3455, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3455, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3455, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3455, file: !235, line: 93, baseType: !3471, size: 64, offset: 1344)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3455, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3455, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3455, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3455, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!3487 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !899, line: 63, baseType: !257)
!3488 = !{!3489, !3490, !3491, !3492}
!3489 = !DILocalVariable(name: "fp", arg: 1, scope: !3450, file: !693, line: 28, type: !3453)
!3490 = !DILocalVariable(name: "offset", arg: 2, scope: !3450, file: !693, line: 28, type: !3487)
!3491 = !DILocalVariable(name: "whence", arg: 3, scope: !3450, file: !693, line: 28, type: !99)
!3492 = !DILocalVariable(name: "pos", scope: !3493, file: !693, line: 123, type: !3487)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !693, line: 119, column: 5)
!3494 = distinct !DILexicalBlock(scope: !3450, file: !693, line: 55, column: 7)
!3495 = !DILocation(line: 0, scope: !3450)
!3496 = !DILocation(line: 55, column: 12, scope: !3494)
!3497 = !{!1157, !720, i64 16}
!3498 = !DILocation(line: 55, column: 33, scope: !3494)
!3499 = !{!1157, !720, i64 8}
!3500 = !DILocation(line: 55, column: 25, scope: !3494)
!3501 = !DILocation(line: 56, column: 7, scope: !3494)
!3502 = !DILocation(line: 56, column: 15, scope: !3494)
!3503 = !DILocation(line: 56, column: 37, scope: !3494)
!3504 = !{!1157, !720, i64 32}
!3505 = !DILocation(line: 56, column: 29, scope: !3494)
!3506 = !DILocation(line: 57, column: 7, scope: !3494)
!3507 = !DILocation(line: 57, column: 15, scope: !3494)
!3508 = !{!1157, !720, i64 72}
!3509 = !DILocation(line: 57, column: 29, scope: !3494)
!3510 = !DILocation(line: 55, column: 7, scope: !3450)
!3511 = !DILocation(line: 123, column: 26, scope: !3493)
!3512 = !DILocation(line: 123, column: 19, scope: !3493)
!3513 = !DILocation(line: 0, scope: !3493)
!3514 = !DILocation(line: 124, column: 15, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3493, file: !693, line: 124, column: 11)
!3516 = !DILocation(line: 124, column: 11, scope: !3493)
!3517 = !DILocation(line: 135, column: 19, scope: !3493)
!3518 = !DILocation(line: 136, column: 12, scope: !3493)
!3519 = !DILocation(line: 136, column: 20, scope: !3493)
!3520 = !{!1157, !1158, i64 144}
!3521 = !DILocation(line: 167, column: 7, scope: !3493)
!3522 = !DILocation(line: 169, column: 10, scope: !3450)
!3523 = !DILocation(line: 169, column: 3, scope: !3450)
!3524 = !DILocation(line: 170, column: 1, scope: !3450)
!3525 = !DISubprogram(name: "fseeko", scope: !899, file: !899, line: 736, type: !3526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!99, !3453, !257, !99}
!3528 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !622, file: !622, line: 100, type: !3529, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !625, retainedNodes: !3532)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!101, !1327, !75, !101, !3531}
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!3532 = !{!3533, !3534, !3535, !3536, !3537}
!3533 = !DILocalVariable(name: "pwc", arg: 1, scope: !3528, file: !622, line: 100, type: !1327)
!3534 = !DILocalVariable(name: "s", arg: 2, scope: !3528, file: !622, line: 100, type: !75)
!3535 = !DILocalVariable(name: "n", arg: 3, scope: !3528, file: !622, line: 100, type: !101)
!3536 = !DILocalVariable(name: "ps", arg: 4, scope: !3528, file: !622, line: 100, type: !3531)
!3537 = !DILocalVariable(name: "ret", scope: !3528, file: !622, line: 130, type: !101)
!3538 = !DILocation(line: 0, scope: !3528)
!3539 = !DILocation(line: 105, column: 9, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3528, file: !622, line: 105, column: 7)
!3541 = !DILocation(line: 105, column: 7, scope: !3528)
!3542 = !DILocation(line: 117, column: 10, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3528, file: !622, line: 117, column: 7)
!3544 = !DILocation(line: 117, column: 7, scope: !3528)
!3545 = !DILocation(line: 130, column: 16, scope: !3528)
!3546 = !DILocation(line: 135, column: 11, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3528, file: !622, line: 135, column: 7)
!3548 = !DILocation(line: 135, column: 25, scope: !3547)
!3549 = !DILocation(line: 135, column: 30, scope: !3547)
!3550 = !DILocation(line: 135, column: 7, scope: !3528)
!3551 = !DILocalVariable(name: "ps", arg: 1, scope: !3552, file: !1300, line: 1135, type: !3531)
!3552 = distinct !DISubprogram(name: "mbszero", scope: !1300, file: !1300, line: 1135, type: !3553, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !625, retainedNodes: !3555)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{null, !3531}
!3555 = !{!3551}
!3556 = !DILocation(line: 0, scope: !3552, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 137, column: 5, scope: !3547)
!3558 = !DILocalVariable(name: "__dest", arg: 1, scope: !3559, file: !1309, line: 57, type: !98)
!3559 = distinct !DISubprogram(name: "memset", scope: !1309, file: !1309, line: 57, type: !1310, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !625, retainedNodes: !3560)
!3560 = !{!3558, !3561, !3562}
!3561 = !DILocalVariable(name: "__ch", arg: 2, scope: !3559, file: !1309, line: 57, type: !99)
!3562 = !DILocalVariable(name: "__len", arg: 3, scope: !3559, file: !1309, line: 57, type: !101)
!3563 = !DILocation(line: 0, scope: !3559, inlinedAt: !3564)
!3564 = distinct !DILocation(line: 1137, column: 3, scope: !3552, inlinedAt: !3557)
!3565 = !DILocation(line: 59, column: 10, scope: !3559, inlinedAt: !3564)
!3566 = !DILocation(line: 137, column: 5, scope: !3547)
!3567 = !DILocation(line: 138, column: 11, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3528, file: !622, line: 138, column: 7)
!3569 = !DILocation(line: 138, column: 7, scope: !3528)
!3570 = !DILocation(line: 139, column: 5, scope: !3568)
!3571 = !DILocation(line: 143, column: 26, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3528, file: !622, line: 143, column: 7)
!3573 = !DILocation(line: 143, column: 41, scope: !3572)
!3574 = !DILocation(line: 143, column: 7, scope: !3528)
!3575 = !DILocation(line: 145, column: 15, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !622, line: 145, column: 11)
!3577 = distinct !DILexicalBlock(scope: !3572, file: !622, line: 144, column: 5)
!3578 = !DILocation(line: 145, column: 11, scope: !3577)
!3579 = !DILocation(line: 146, column: 32, scope: !3576)
!3580 = !DILocation(line: 146, column: 16, scope: !3576)
!3581 = !DILocation(line: 146, column: 14, scope: !3576)
!3582 = !DILocation(line: 146, column: 9, scope: !3576)
!3583 = !DILocation(line: 286, column: 1, scope: !3528)
!3584 = !DISubprogram(name: "mbsinit", scope: !3585, file: !3585, line: 293, type: !3586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !733)
!3585 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!99, !3588}
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !628)
!3590 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !695, file: !695, line: 27, type: !2799, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !3591)
!3591 = !{!3592, !3593, !3594, !3595}
!3592 = !DILocalVariable(name: "ptr", arg: 1, scope: !3590, file: !695, line: 27, type: !98)
!3593 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3590, file: !695, line: 27, type: !101)
!3594 = !DILocalVariable(name: "size", arg: 3, scope: !3590, file: !695, line: 27, type: !101)
!3595 = !DILocalVariable(name: "nbytes", scope: !3590, file: !695, line: 29, type: !101)
!3596 = !DILocation(line: 0, scope: !3590)
!3597 = !DILocation(line: 30, column: 7, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3590, file: !695, line: 30, column: 7)
!3599 = !DILocalVariable(name: "ptr", arg: 1, scope: !3600, file: !2891, line: 2057, type: !98)
!3600 = distinct !DISubprogram(name: "rpl_realloc", scope: !2891, file: !2891, line: 2057, type: !2883, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !3601)
!3601 = !{!3599, !3602}
!3602 = !DILocalVariable(name: "size", arg: 2, scope: !3600, file: !2891, line: 2057, type: !101)
!3603 = !DILocation(line: 0, scope: !3600, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 37, column: 10, scope: !3590)
!3605 = !DILocation(line: 2059, column: 24, scope: !3600, inlinedAt: !3604)
!3606 = !DILocation(line: 2059, column: 10, scope: !3600, inlinedAt: !3604)
!3607 = !DILocation(line: 37, column: 3, scope: !3590)
!3608 = !DILocation(line: 32, column: 7, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3598, file: !695, line: 31, column: 5)
!3610 = !DILocation(line: 32, column: 13, scope: !3609)
!3611 = !DILocation(line: 33, column: 7, scope: !3609)
!3612 = !DILocation(line: 38, column: 1, scope: !3590)
!3613 = distinct !DISubprogram(name: "hard_locale", scope: !640, file: !640, line: 28, type: !3614, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !3616)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!218, !99}
!3616 = !{!3617, !3618}
!3617 = !DILocalVariable(name: "category", arg: 1, scope: !3613, file: !640, line: 28, type: !99)
!3618 = !DILocalVariable(name: "locale", scope: !3613, file: !640, line: 30, type: !3619)
!3619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3620)
!3620 = !{!3621}
!3621 = !DISubrange(count: 257)
!3622 = !DILocation(line: 0, scope: !3613)
!3623 = !DILocation(line: 30, column: 3, scope: !3613)
!3624 = !DILocation(line: 30, column: 8, scope: !3613)
!3625 = !DILocation(line: 32, column: 7, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3613, file: !640, line: 32, column: 7)
!3627 = !DILocation(line: 32, column: 7, scope: !3613)
!3628 = !DILocalVariable(name: "__s1", arg: 1, scope: !3629, file: !754, line: 1359, type: !75)
!3629 = distinct !DISubprogram(name: "streq", scope: !754, file: !754, line: 1359, type: !755, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !3630)
!3630 = !{!3628, !3631}
!3631 = !DILocalVariable(name: "__s2", arg: 2, scope: !3629, file: !754, line: 1359, type: !75)
!3632 = !DILocation(line: 0, scope: !3629, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 35, column: 9, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3613, file: !640, line: 35, column: 7)
!3635 = !DILocation(line: 1361, column: 11, scope: !3629, inlinedAt: !3633)
!3636 = !DILocation(line: 35, column: 29, scope: !3634)
!3637 = !DILocation(line: 0, scope: !3629, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 35, column: 32, scope: !3634)
!3639 = !DILocation(line: 1361, column: 11, scope: !3629, inlinedAt: !3638)
!3640 = !DILocation(line: 1361, column: 10, scope: !3629, inlinedAt: !3638)
!3641 = !DILocation(line: 35, column: 7, scope: !3613)
!3642 = !DILocation(line: 46, column: 3, scope: !3613)
!3643 = !DILocation(line: 47, column: 1, scope: !3613)
!3644 = distinct !DISubprogram(name: "setlocale_null_r", scope: !702, file: !702, line: 154, type: !3645, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3647)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!99, !99, !97, !101}
!3647 = !{!3648, !3649, !3650}
!3648 = !DILocalVariable(name: "category", arg: 1, scope: !3644, file: !702, line: 154, type: !99)
!3649 = !DILocalVariable(name: "buf", arg: 2, scope: !3644, file: !702, line: 154, type: !97)
!3650 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3644, file: !702, line: 154, type: !101)
!3651 = !DILocation(line: 0, scope: !3644)
!3652 = !DILocation(line: 159, column: 10, scope: !3644)
!3653 = !DILocation(line: 159, column: 3, scope: !3644)
!3654 = distinct !DISubprogram(name: "setlocale_null", scope: !702, file: !702, line: 186, type: !3655, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3657)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!75, !99}
!3657 = !{!3658}
!3658 = !DILocalVariable(name: "category", arg: 1, scope: !3654, file: !702, line: 186, type: !99)
!3659 = !DILocation(line: 0, scope: !3654)
!3660 = !DILocation(line: 189, column: 10, scope: !3654)
!3661 = !DILocation(line: 189, column: 3, scope: !3654)
!3662 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !704, file: !704, line: 35, type: !3655, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3663)
!3663 = !{!3664, !3665}
!3664 = !DILocalVariable(name: "category", arg: 1, scope: !3662, file: !704, line: 35, type: !99)
!3665 = !DILocalVariable(name: "result", scope: !3662, file: !704, line: 37, type: !75)
!3666 = !DILocation(line: 0, scope: !3662)
!3667 = !DILocation(line: 37, column: 24, scope: !3662)
!3668 = !DILocation(line: 62, column: 3, scope: !3662)
!3669 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !704, file: !704, line: 66, type: !3645, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3670)
!3670 = !{!3671, !3672, !3673, !3674, !3675}
!3671 = !DILocalVariable(name: "category", arg: 1, scope: !3669, file: !704, line: 66, type: !99)
!3672 = !DILocalVariable(name: "buf", arg: 2, scope: !3669, file: !704, line: 66, type: !97)
!3673 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3669, file: !704, line: 66, type: !101)
!3674 = !DILocalVariable(name: "result", scope: !3669, file: !704, line: 111, type: !75)
!3675 = !DILocalVariable(name: "length", scope: !3676, file: !704, line: 125, type: !101)
!3676 = distinct !DILexicalBlock(scope: !3677, file: !704, line: 124, column: 5)
!3677 = distinct !DILexicalBlock(scope: !3669, file: !704, line: 113, column: 7)
!3678 = !DILocation(line: 0, scope: !3669)
!3679 = !DILocation(line: 0, scope: !3662, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 111, column: 24, scope: !3669)
!3681 = !DILocation(line: 37, column: 24, scope: !3662, inlinedAt: !3680)
!3682 = !DILocation(line: 113, column: 14, scope: !3677)
!3683 = !DILocation(line: 113, column: 7, scope: !3669)
!3684 = !DILocation(line: 116, column: 19, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3686, file: !704, line: 116, column: 11)
!3686 = distinct !DILexicalBlock(scope: !3677, file: !704, line: 114, column: 5)
!3687 = !DILocation(line: 116, column: 11, scope: !3686)
!3688 = !DILocation(line: 120, column: 16, scope: !3685)
!3689 = !DILocation(line: 120, column: 9, scope: !3685)
!3690 = !DILocation(line: 125, column: 23, scope: !3676)
!3691 = !DILocation(line: 0, scope: !3676)
!3692 = !DILocation(line: 126, column: 18, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3676, file: !704, line: 126, column: 11)
!3694 = !DILocation(line: 126, column: 11, scope: !3676)
!3695 = !DILocation(line: 128, column: 39, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3693, file: !704, line: 127, column: 9)
!3697 = !DILocalVariable(name: "__dest", arg: 1, scope: !3698, file: !1309, line: 26, type: !3160)
!3698 = distinct !DISubprogram(name: "memcpy", scope: !1309, file: !1309, line: 26, type: !3158, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !3699)
!3699 = !{!3697, !3700, !3701}
!3700 = !DILocalVariable(name: "__src", arg: 2, scope: !3698, file: !1309, line: 26, type: !925)
!3701 = !DILocalVariable(name: "__len", arg: 3, scope: !3698, file: !1309, line: 26, type: !101)
!3702 = !DILocation(line: 0, scope: !3698, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 128, column: 11, scope: !3696)
!3704 = !DILocation(line: 29, column: 10, scope: !3698, inlinedAt: !3703)
!3705 = !DILocation(line: 129, column: 11, scope: !3696)
!3706 = !DILocation(line: 133, column: 23, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3708, file: !704, line: 133, column: 15)
!3708 = distinct !DILexicalBlock(scope: !3693, file: !704, line: 132, column: 9)
!3709 = !DILocation(line: 133, column: 15, scope: !3708)
!3710 = !DILocation(line: 138, column: 44, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3707, file: !704, line: 134, column: 13)
!3712 = !DILocation(line: 0, scope: !3698, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 138, column: 15, scope: !3711)
!3714 = !DILocation(line: 29, column: 10, scope: !3698, inlinedAt: !3713)
!3715 = !DILocation(line: 139, column: 15, scope: !3711)
!3716 = !DILocation(line: 139, column: 32, scope: !3711)
!3717 = !DILocation(line: 140, column: 13, scope: !3711)
!3718 = !DILocation(line: 0, scope: !3677)
!3719 = !DILocation(line: 145, column: 1, scope: !3669)
