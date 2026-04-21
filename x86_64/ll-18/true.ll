; ModuleID = 'src/true.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !308
@.str.21 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !300
@.str.1.22 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !302
@.str.2.23 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !304
@.str.3.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !306
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !310
@stderr = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !316
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !347
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !318
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !337
@.str.1.31 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !339
@.str.2.33 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !341
@.str.3.32 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !343
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !345
@.str.4.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !349
@.str.5.27 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !351
@.str.6.28 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !356
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !361
@.str.47 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !367
@.str.1.48 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !369
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !371
@.str.51 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !402
@.str.1.52 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !405
@.str.2.53 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !407
@.str.3.54 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !409
@.str.4.55 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !411
@.str.5.56 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !413
@.str.6.57 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !415
@.str.7.58 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !417
@.str.8.59 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !419
@.str.9.60 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !421
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.51, ptr @.str.1.52, ptr @.str.2.53, ptr @.str.3.54, ptr @.str.4.55, ptr @.str.5.56, ptr @.str.6.57, ptr @.str.7.58, ptr @.str.8.59, ptr @.str.9.60, ptr null], align 16, !dbg !423
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !448
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !462
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !500
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !507
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !464
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !509
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !452
@.str.10.63 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !469
@.str.11.61 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !471
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !473
@.str.13.62 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !475
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !477
@.str.67 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !515
@.str.1.68 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !518
@.str.2.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !520
@.str.3.70 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !522
@.str.4.71 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !524
@.str.5.72 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !526
@.str.6.73 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !531
@.str.7.74 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !536
@.str.8.75 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !538
@.str.9.76 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !543
@.str.10.77 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !548
@.str.11.78 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !553
@.str.12.79 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !558
@.str.13.80 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !560
@.str.14.81 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !562
@.str.15.82 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !567
@.str.16.83 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !572
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.88 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !577
@.str.18.89 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !579
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !581
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !583
@.str.21.90 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !585
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !587
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !592
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !597
@exit_failure = dso_local global i32 1, align 4, !dbg !605
@.str.103 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !611
@.str.1.101 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !614
@.str.2.102 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !616
@.str.114 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !618
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !621
@.str.1.119 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !636

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !711 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !715, metadata !DIExpression()), !dbg !716
  %2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !717
  %3 = load ptr, ptr @program_name, align 8, !dbg !717, !tbaa !718
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %2, ptr noundef %3, ptr noundef %3) #37, !dbg !717
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !722
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %5) #37, !dbg !722
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !723
  tail call fastcc void @oputs_(ptr noundef %7), !dbg !723
  %8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !724
  tail call fastcc void @oputs_(ptr noundef %8), !dbg !724
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !725
  %10 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef nonnull @.str.3) #37, !dbg !725
  tail call fastcc void @emit_ancillary_info(), !dbg !726
  tail call void @exit(i32 noundef %0) #38, !dbg !727
  unreachable, !dbg !727
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !728 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !732 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !68 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !211, metadata !DIExpression()), !dbg !737
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !212, metadata !DIExpression()), !dbg !737
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !738, !tbaa !739
  %3 = icmp eq i32 %2, -1, !dbg !741
  br i1 %3, label %4, label %16, !dbg !742

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.14) #37, !dbg !743
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !213, metadata !DIExpression()), !dbg !744
  %6 = icmp eq ptr %5, null, !dbg !745
  br i1 %6, label %14, label %7, !dbg !746

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !747, !tbaa !748
  %9 = icmp eq i8 %8, 0, !dbg !747
  br i1 %9, label %14, label %10, !dbg !749

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !750, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !756, metadata !DIExpression()), !dbg !757
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.15) #39, !dbg !759
  %12 = icmp eq i32 %11, 0, !dbg !760
  %13 = zext i1 %12 to i32, !dbg !749
  br label %14, !dbg !749

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !761, !tbaa !739
  br label %16, !dbg !762

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !763
  %18 = icmp eq i32 %17, 0, !dbg !763
  br i1 %18, label %22, label %19, !dbg !765

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !766, !tbaa !718
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !766
  br label %124, !dbg !768

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !216, metadata !DIExpression()), !dbg !737
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.16) #39, !dbg !769
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !770
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !218, metadata !DIExpression()), !dbg !737
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !771
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !219, metadata !DIExpression()), !dbg !737
  %26 = icmp eq ptr %25, null, !dbg !772
  br i1 %26, label %54, label %27, !dbg !773

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !774
  br i1 %28, label %54, label %29, !dbg !775

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !220, metadata !DIExpression()), !dbg !776
  tail call void @llvm.dbg.value(metadata i64 0, metadata !224, metadata !DIExpression()), !dbg !776
  %30 = icmp ult ptr %24, %25, !dbg !777
  br i1 %30, label %31, label %54, !dbg !778

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !737
  %33 = load ptr, ptr %32, align 8, !tbaa !718
  br label %34, !dbg !778

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !220, metadata !DIExpression()), !dbg !776
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !224, metadata !DIExpression()), !dbg !776
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !779
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !220, metadata !DIExpression()), !dbg !776
  %38 = load i8, ptr %35, align 1, !dbg !779, !tbaa !748
  %39 = sext i8 %38 to i64, !dbg !779
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !779
  %41 = load i16, ptr %40, align 2, !dbg !779, !tbaa !780
  %42 = freeze i16 %41, !dbg !782
  %43 = lshr i16 %42, 13, !dbg !782
  %44 = and i16 %43, 1, !dbg !782
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !783
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !224, metadata !DIExpression()), !dbg !776
  %47 = icmp ult ptr %37, %25, !dbg !777
  %48 = icmp ult i64 %46, 2, !dbg !784
  %49 = select i1 %47, i1 %48, i1 false, !dbg !784
  br i1 %49, label %34, label %50, !dbg !778, !llvm.loop !785

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !787
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !789
  %53 = zext i1 %51 to i8, !dbg !789
  br label %54, !dbg !789

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !737
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !737
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !216, metadata !DIExpression()), !dbg !737
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !219, metadata !DIExpression()), !dbg !737
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.17) #39, !dbg !790
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !225, metadata !DIExpression()), !dbg !737
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !791
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !226, metadata !DIExpression()), !dbg !737
  br label %59, !dbg !792

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !737
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !737
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !216, metadata !DIExpression()), !dbg !737
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !226, metadata !DIExpression()), !dbg !737
  %62 = load i8, ptr %60, align 1, !dbg !793, !tbaa !748
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !794

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !795
  %65 = load i8, ptr %64, align 1, !dbg !798, !tbaa !748
  %66 = icmp eq i8 %65, 45, !dbg !799
  %67 = select i1 %66, i8 0, i8 %61, !dbg !800
  br label %68, !dbg !800

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !737
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !216, metadata !DIExpression()), !dbg !737
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !801
  %71 = load ptr, ptr %70, align 8, !dbg !801, !tbaa !718
  %72 = sext i8 %62 to i64, !dbg !801
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !801
  %74 = load i16, ptr %73, align 2, !dbg !801, !tbaa !780
  %75 = and i16 %74, 8192, !dbg !801
  %76 = icmp eq i16 %75, 0, !dbg !801
  br i1 %76, label %92, label %77, !dbg !803

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !804
  br i1 %78, label %94, label %79, !dbg !807

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !808
  %81 = load i8, ptr %80, align 1, !dbg !808, !tbaa !748
  %82 = sext i8 %81 to i64, !dbg !808
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !808
  %84 = load i16, ptr %83, align 2, !dbg !808, !tbaa !780
  %85 = and i16 %84, 8192, !dbg !808
  %86 = icmp eq i16 %85, 0, !dbg !808
  br i1 %86, label %87, label %94, !dbg !809

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !810
  %89 = icmp ne i8 %88, 0, !dbg !810
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !812
  br i1 %91, label %92, label %94, !dbg !812

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !813
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !226, metadata !DIExpression()), !dbg !737
  br label %59, !dbg !792, !llvm.loop !814

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !816
  %96 = load ptr, ptr @stdout, align 8, !dbg !816, !tbaa !718
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !816
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !750, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata !819, metadata !756, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !750, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata !819, metadata !756, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !750, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata !819, metadata !756, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !750, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata !819, metadata !756, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !750, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata !819, metadata !756, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !750, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata !819, metadata !756, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !750, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata !819, metadata !756, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !750, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata !819, metadata !756, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !750, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata !819, metadata !756, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !750, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata !819, metadata !756, metadata !DIExpression()), !dbg !836
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !283, metadata !DIExpression()), !dbg !737
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.10, i64 noundef 6) #39, !dbg !838
  %99 = icmp eq i32 %98, 0, !dbg !838
  br i1 %99, label %103, label %100, !dbg !840

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.11, i64 noundef 9) #39, !dbg !841
  %102 = icmp eq i32 %101, 0, !dbg !841
  br i1 %102, label %103, label %106, !dbg !842

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !843
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #37, !dbg !843
  br label %109, !dbg !845

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !846
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #37, !dbg !846
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !848, !tbaa !718
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.35, ptr noundef %110), !dbg !848
  %112 = load ptr, ptr @stdout, align 8, !dbg !849, !tbaa !718
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %112), !dbg !849
  %114 = ptrtoint ptr %60 to i64, !dbg !850
  %115 = sub i64 %114, %95, !dbg !850
  %116 = load ptr, ptr @stdout, align 8, !dbg !850, !tbaa !718
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !850
  %118 = load ptr, ptr @stdout, align 8, !dbg !851, !tbaa !718
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %118), !dbg !851
  %120 = load ptr, ptr @stdout, align 8, !dbg !852, !tbaa !718
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %120), !dbg !852
  %122 = load ptr, ptr @stdout, align 8, !dbg !853, !tbaa !718
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !853
  br label %124, !dbg !854

124:                                              ; preds = %109, %19
  ret void, !dbg !854
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #4 !dbg !855 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !859, metadata !DIExpression()), !dbg !872
  tail call void @llvm.dbg.value(metadata !819, metadata !868, metadata !DIExpression()), !dbg !872
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !867, metadata !DIExpression()), !dbg !872
  tail call void @emit_bug_reporting_address() #37, !dbg !873
  %1 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !874
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !870, metadata !DIExpression()), !dbg !872
  %2 = icmp eq ptr %1, null, !dbg !875
  br i1 %2, label %10, label %3, !dbg !877

3:                                                ; preds = %0
  %4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.42, i64 noundef 3) #39, !dbg !878
  %5 = icmp eq i32 %4, 0, !dbg !878
  br i1 %5, label %10, label %6, !dbg !879

6:                                                ; preds = %3
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #37, !dbg !880
  %8 = load ptr, ptr @stdout, align 8, !dbg !880, !tbaa !718
  %9 = tail call i32 @fputs_unlocked(ptr noundef %7, ptr noundef %8), !dbg !880
  br label %10, !dbg !882

10:                                               ; preds = %6, %3, %0
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !867, metadata !DIExpression()), !dbg !872
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !871, metadata !DIExpression()), !dbg !872
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #37, !dbg !883
  %12 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %11, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3) #37, !dbg !883
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #37, !dbg !884
  %14 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.46) #37, !dbg !884
  ret void, !dbg !885
}

; Function Attrs: noreturn nounwind
declare !dbg !886 void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !888 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !892 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !896 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !901 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !904 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !907 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !910 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !913 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !919 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !920 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !dbg !926 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !931, metadata !DIExpression()), !dbg !933
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !932, metadata !DIExpression()), !dbg !933
  %3 = icmp eq i32 %0, 2, !dbg !934
  br i1 %3, label %4, label %22, !dbg !936

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !dbg !937, !tbaa !718
  tail call void @set_program_name(ptr noundef %5) #37, !dbg !939
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.7) #37, !dbg !940
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #37, !dbg !941
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.8) #37, !dbg !942
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !943
  %10 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !944
  %11 = load ptr, ptr %10, align 8, !dbg !944, !tbaa !718
  call void @llvm.dbg.value(metadata ptr %11, metadata !750, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !756, metadata !DIExpression()), !dbg !946
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(7) @.str.10) #39, !dbg !948
  %13 = icmp eq i32 %12, 0, !dbg !949
  br i1 %13, label %14, label %15, !dbg !950

14:                                               ; preds = %4
  tail call void @usage(i32 noundef 0) #41, !dbg !951
  unreachable, !dbg !951

15:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr %11, metadata !750, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata ptr @.str.11, metadata !756, metadata !DIExpression()), !dbg !952
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(10) @.str.11) #39, !dbg !955
  %17 = icmp eq i32 %16, 0, !dbg !956
  br i1 %17, label %18, label %22, !dbg !957

18:                                               ; preds = %15
  %19 = load ptr, ptr @stdout, align 8, !dbg !958, !tbaa !718
  %20 = load ptr, ptr @Version, align 8, !dbg !959, !tbaa !718
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #37, !dbg !960
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %20, ptr noundef %21, ptr noundef null) #37, !dbg !961
  br label %22, !dbg !961

22:                                               ; preds = %15, %18, %2
  ret i32 0, !dbg !962
}

; Function Attrs: nounwind
declare !dbg !963 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !966 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !967 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !970 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !973, metadata !DIExpression()), !dbg !974
  store ptr %0, ptr @file_name, align 8, !dbg !975, !tbaa !718
  ret void, !dbg !976
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !977 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !981, metadata !DIExpression()), !dbg !982
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !983, !tbaa !984
  ret void, !dbg !986
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !987 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !992, !tbaa !718
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !993
  %3 = icmp eq i32 %2, 0, !dbg !994
  br i1 %3, label %22, label %4, !dbg !995

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !996, !tbaa !984, !range !997, !noundef !819
  %6 = icmp eq i8 %5, 0, !dbg !996
  br i1 %6, label %11, label %7, !dbg !998

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !999
  %9 = load i32, ptr %8, align 4, !dbg !999, !tbaa !739
  %10 = icmp eq i32 %9, 32, !dbg !1000
  br i1 %10, label %22, label %11, !dbg !1001

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1.22, i32 noundef 5) #37, !dbg !1002
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !989, metadata !DIExpression()), !dbg !1003
  %13 = load ptr, ptr @file_name, align 8, !dbg !1004, !tbaa !718
  %14 = icmp eq ptr %13, null, !dbg !1004
  %15 = tail call ptr @__errno_location() #40, !dbg !1006
  %16 = load i32, ptr %15, align 4, !dbg !1006, !tbaa !739
  br i1 %14, label %19, label %17, !dbg !1007

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1008
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.23, ptr noundef %18, ptr noundef %12) #37, !dbg !1008
  br label %20, !dbg !1008

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.24, ptr noundef %12) #37, !dbg !1009
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1010, !tbaa !739
  tail call void @_exit(i32 noundef %21) #38, !dbg !1011
  unreachable, !dbg !1011

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1012, !tbaa !718
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1014
  %25 = icmp eq i32 %24, 0, !dbg !1015
  br i1 %25, label %28, label %26, !dbg !1016

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1017, !tbaa !739
  tail call void @_exit(i32 noundef %27) #38, !dbg !1018
  unreachable, !dbg !1018

28:                                               ; preds = %22
  ret void, !dbg !1019
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1020 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1025 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !dbg !1027 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1031, metadata !DIExpression()), !dbg !1035
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1032, metadata !DIExpression()), !dbg !1035
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1033, metadata !DIExpression()), !dbg !1035
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1034, metadata !DIExpression()), !dbg !1035
  tail call fastcc void @flush_stdout(), !dbg !1036
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1037, !tbaa !718
  %6 = icmp eq ptr %5, null, !dbg !1037
  br i1 %6, label %8, label %7, !dbg !1039

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !1040
  br label %12, !dbg !1040

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1041, !tbaa !718
  %10 = tail call ptr @getprogname() #39, !dbg !1041
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef %10) #37, !dbg !1041
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1043
  ret void, !dbg !1044
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1045 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1047, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 1, metadata !1049, metadata !DIExpression()), !dbg !1054
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1057
  %2 = icmp slt i32 %1, 0, !dbg !1058
  br i1 %2, label %6, label %3, !dbg !1059

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1060, !tbaa !718
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1060
  br label %6, !dbg !1060

6:                                                ; preds = %3, %0
  ret void, !dbg !1061
}

declare !dbg !1062 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1100 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1106
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1102, metadata !DIExpression()), !dbg !1107
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1103, metadata !DIExpression()), !dbg !1107
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1104, metadata !DIExpression()), !dbg !1107
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1105, metadata !DIExpression()), !dbg !1107
  %6 = load ptr, ptr @stderr, align 8, !dbg !1108, !tbaa !718
  call void @llvm.dbg.value(metadata ptr %6, metadata !1109, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata ptr %2, metadata !1114, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata ptr %3, metadata !1115, metadata !DIExpression()), !dbg !1116
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !1118
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1119, !tbaa !739
  %9 = add i32 %8, 1, !dbg !1119
  store i32 %9, ptr @error_message_count, align 4, !dbg !1119, !tbaa !739
  %10 = icmp eq i32 %1, 0, !dbg !1120
  br i1 %10, label %20, label %11, !dbg !1122

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1123, metadata !DIExpression(), metadata !1106, metadata ptr %5, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i32 %1, metadata !1126, metadata !DIExpression()), !dbg !1131
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1133
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1134
  call void @llvm.dbg.value(metadata ptr %12, metadata !1127, metadata !DIExpression()), !dbg !1131
  %13 = icmp eq ptr %12, null, !dbg !1135
  br i1 %13, label %14, label %16, !dbg !1137

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.26, ptr noundef nonnull @.str.5.27, i32 noundef 5) #37, !dbg !1138
  call void @llvm.dbg.value(metadata ptr %15, metadata !1127, metadata !DIExpression()), !dbg !1131
  br label %16, !dbg !1139

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1131
  call void @llvm.dbg.value(metadata ptr %17, metadata !1127, metadata !DIExpression()), !dbg !1131
  %18 = load ptr, ptr @stderr, align 8, !dbg !1140, !tbaa !718
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.28, ptr noundef %17) #37, !dbg !1140
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1141
  br label %20, !dbg !1142

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1143, !tbaa !718
  call void @llvm.dbg.value(metadata i32 10, metadata !1144, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata ptr %21, metadata !1150, metadata !DIExpression()), !dbg !1151
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1153
  %23 = load ptr, ptr %22, align 8, !dbg !1153, !tbaa !1154
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1153
  %25 = load ptr, ptr %24, align 8, !dbg !1153, !tbaa !1157
  %26 = icmp ult ptr %23, %25, !dbg !1153
  br i1 %26, label %29, label %27, !dbg !1153, !prof !1158

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !1153
  br label %31, !dbg !1153

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1153
  store ptr %30, ptr %22, align 8, !dbg !1153, !tbaa !1154
  store i8 10, ptr %23, align 1, !dbg !1153, !tbaa !748
  br label %31, !dbg !1153

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1159, !tbaa !718
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !1159
  %34 = icmp eq i32 %0, 0, !dbg !1160
  br i1 %34, label %36, label %35, !dbg !1162

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #38, !dbg !1163
  unreachable, !dbg !1163

36:                                               ; preds = %31
  ret void, !dbg !1164
}

declare !dbg !1165 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nounwind
declare !dbg !1168 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1171 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1174 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1177 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1181 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1194
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1188, metadata !DIExpression(), metadata !1194, metadata ptr %4, metadata !DIExpression()), !dbg !1195
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1185, metadata !DIExpression()), !dbg !1195
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1186, metadata !DIExpression()), !dbg !1195
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1187, metadata !DIExpression()), !dbg !1195
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !1196
  call void @llvm.va_start(ptr nonnull %4), !dbg !1197
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #42, !dbg !1198
  call void @llvm.va_end(ptr nonnull %4), !dbg !1199
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !1200
  ret void, !dbg !1200
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !320 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !331, metadata !DIExpression()), !dbg !1201
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !332, metadata !DIExpression()), !dbg !1201
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !333, metadata !DIExpression()), !dbg !1201
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !334, metadata !DIExpression()), !dbg !1201
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !335, metadata !DIExpression()), !dbg !1201
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !336, metadata !DIExpression()), !dbg !1201
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1202, !tbaa !739
  %8 = icmp eq i32 %7, 0, !dbg !1202
  br i1 %8, label %23, label %9, !dbg !1204

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1205, !tbaa !739
  %11 = icmp eq i32 %10, %3, !dbg !1208
  br i1 %11, label %12, label %22, !dbg !1209

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1210, !tbaa !718
  %14 = icmp eq ptr %13, %2, !dbg !1211
  br i1 %14, label %36, label %15, !dbg !1212

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1213
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1214
  br i1 %18, label %19, label %22, !dbg !1214

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1215
  %21 = icmp eq i32 %20, 0, !dbg !1216
  br i1 %21, label %36, label %22, !dbg !1217

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1218, !tbaa !718
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1219, !tbaa !739
  br label %23, !dbg !1220

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1221
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1222, !tbaa !718
  %25 = icmp eq ptr %24, null, !dbg !1222
  br i1 %25, label %27, label %26, !dbg !1224

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !1225
  br label %31, !dbg !1225

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1226, !tbaa !718
  %29 = tail call ptr @getprogname() #39, !dbg !1226
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.31, ptr noundef %29) #37, !dbg !1226
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1228, !tbaa !718
  %33 = icmp eq ptr %2, null, !dbg !1228
  %34 = select i1 %33, ptr @.str.3.32, ptr @.str.2.33, !dbg !1228
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !1228
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1229
  br label %36, !dbg !1230

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1230
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1231 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1241
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1240, metadata !DIExpression(), metadata !1241, metadata ptr %6, metadata !DIExpression()), !dbg !1242
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1235, metadata !DIExpression()), !dbg !1242
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1236, metadata !DIExpression()), !dbg !1242
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1237, metadata !DIExpression()), !dbg !1242
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1238, metadata !DIExpression()), !dbg !1242
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1239, metadata !DIExpression()), !dbg !1242
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !1243
  call void @llvm.va_start(ptr nonnull %6), !dbg !1244
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #42, !dbg !1245
  call void @llvm.va_end(ptr nonnull %6), !dbg !1246
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !1247
  ret void, !dbg !1247
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1248 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1251, !tbaa !718
  ret ptr %1, !dbg !1252
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1253 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1255, metadata !DIExpression()), !dbg !1258
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1259
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1256, metadata !DIExpression()), !dbg !1258
  %3 = icmp eq ptr %2, null, !dbg !1260
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1260
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1260
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1257, metadata !DIExpression()), !dbg !1258
  %6 = ptrtoint ptr %5 to i64, !dbg !1261
  %7 = ptrtoint ptr %0 to i64, !dbg !1261
  %8 = sub i64 %6, %7, !dbg !1261
  %9 = icmp sgt i64 %8, 6, !dbg !1263
  br i1 %9, label %10, label %19, !dbg !1264

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1265
  call void @llvm.dbg.value(metadata ptr %11, metadata !1266, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata ptr @.str.47, metadata !1271, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata i64 7, metadata !1272, metadata !DIExpression()), !dbg !1273
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.47, i64 7), !dbg !1275
  %13 = icmp eq i32 %12, 0, !dbg !1276
  br i1 %13, label %14, label %19, !dbg !1277

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1255, metadata !DIExpression()), !dbg !1258
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.48, i64 noundef 3) #39, !dbg !1278
  %16 = icmp eq i32 %15, 0, !dbg !1281
  %17 = select i1 %16, i64 3, i64 0, !dbg !1282
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1282
  br label %19, !dbg !1282

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1258
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1257, metadata !DIExpression()), !dbg !1258
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1255, metadata !DIExpression()), !dbg !1258
  store ptr %20, ptr @program_name, align 8, !dbg !1283, !tbaa !718
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1284, !tbaa !718
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1285, !tbaa !718
  ret void, !dbg !1286
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1287 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !373 {
  %3 = alloca i32, align 4, !DIAssignID !1288
  call void @llvm.dbg.assign(metadata i1 undef, metadata !383, metadata !DIExpression(), metadata !1288, metadata ptr %3, metadata !DIExpression()), !dbg !1289
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1290
  call void @llvm.dbg.assign(metadata i1 undef, metadata !388, metadata !DIExpression(), metadata !1290, metadata ptr %4, metadata !DIExpression()), !dbg !1289
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !380, metadata !DIExpression()), !dbg !1289
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !381, metadata !DIExpression()), !dbg !1289
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1291
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !382, metadata !DIExpression()), !dbg !1289
  %6 = icmp eq ptr %5, %0, !dbg !1292
  br i1 %6, label %7, label %14, !dbg !1294

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1295
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1296
  call void @llvm.dbg.value(metadata ptr %4, metadata !1297, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata ptr %4, metadata !1306, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i32 0, metadata !1312, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i64 8, metadata !1313, metadata !DIExpression()), !dbg !1314
  store i64 0, ptr %4, align 8, !dbg !1316
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1317
  %9 = icmp eq i64 %8, 2, !dbg !1319
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1320
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1289
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1321
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1321
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1289
  ret ptr %15, !dbg !1321
}

; Function Attrs: nounwind
declare !dbg !1322 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1328 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1333, metadata !DIExpression()), !dbg !1336
  %2 = tail call ptr @__errno_location() #40, !dbg !1337
  %3 = load i32, ptr %2, align 4, !dbg !1337, !tbaa !739
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1334, metadata !DIExpression()), !dbg !1336
  %4 = icmp eq ptr %0, null, !dbg !1338
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1338
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1339
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1335, metadata !DIExpression()), !dbg !1336
  store i32 %3, ptr %2, align 4, !dbg !1340, !tbaa !739
  ret ptr %6, !dbg !1341
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1342 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1348, metadata !DIExpression()), !dbg !1349
  %2 = icmp eq ptr %0, null, !dbg !1350
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1350
  %4 = load i32, ptr %3, align 8, !dbg !1351, !tbaa !1352
  ret i32 %4, !dbg !1354
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1355 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1359, metadata !DIExpression()), !dbg !1361
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1360, metadata !DIExpression()), !dbg !1361
  %3 = icmp eq ptr %0, null, !dbg !1362
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1362
  store i32 %1, ptr %4, align 8, !dbg !1363, !tbaa !1352
  ret void, !dbg !1364
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1365 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1369, metadata !DIExpression()), !dbg !1377
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1370, metadata !DIExpression()), !dbg !1377
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1371, metadata !DIExpression()), !dbg !1377
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1372, metadata !DIExpression()), !dbg !1377
  %4 = icmp eq ptr %0, null, !dbg !1378
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1378
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1379
  %7 = lshr i8 %1, 5, !dbg !1380
  %8 = zext nneg i8 %7 to i64, !dbg !1380
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1381
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1373, metadata !DIExpression()), !dbg !1377
  %10 = and i8 %1, 31, !dbg !1382
  %11 = zext nneg i8 %10 to i32, !dbg !1382
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1375, metadata !DIExpression()), !dbg !1377
  %12 = load i32, ptr %9, align 4, !dbg !1383, !tbaa !739
  %13 = lshr i32 %12, %11, !dbg !1384
  %14 = and i32 %13, 1, !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1376, metadata !DIExpression()), !dbg !1377
  %15 = xor i32 %13, %2, !dbg !1386
  %16 = and i32 %15, 1, !dbg !1386
  %17 = shl nuw i32 %16, %11, !dbg !1387
  %18 = xor i32 %17, %12, !dbg !1388
  store i32 %18, ptr %9, align 4, !dbg !1388, !tbaa !739
  ret i32 %14, !dbg !1389
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1390 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1394, metadata !DIExpression()), !dbg !1397
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1395, metadata !DIExpression()), !dbg !1397
  %3 = icmp eq ptr %0, null, !dbg !1398
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1400
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1394, metadata !DIExpression()), !dbg !1397
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1401
  %6 = load i32, ptr %5, align 4, !dbg !1401, !tbaa !1402
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1396, metadata !DIExpression()), !dbg !1397
  store i32 %1, ptr %5, align 4, !dbg !1403, !tbaa !1402
  ret i32 %6, !dbg !1404
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1405 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1409, metadata !DIExpression()), !dbg !1412
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1410, metadata !DIExpression()), !dbg !1412
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1411, metadata !DIExpression()), !dbg !1412
  %4 = icmp eq ptr %0, null, !dbg !1413
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1415
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1409, metadata !DIExpression()), !dbg !1412
  store i32 10, ptr %5, align 8, !dbg !1416, !tbaa !1352
  %6 = icmp ne ptr %1, null, !dbg !1417
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1419
  br i1 %8, label %10, label %9, !dbg !1419

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1420
  unreachable, !dbg !1420

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1421
  store ptr %1, ptr %11, align 8, !dbg !1422, !tbaa !1423
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1424
  store ptr %2, ptr %12, align 8, !dbg !1425, !tbaa !1426
  ret void, !dbg !1427
}

; Function Attrs: noreturn nounwind
declare !dbg !1428 void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1429 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1433, metadata !DIExpression()), !dbg !1441
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1434, metadata !DIExpression()), !dbg !1441
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1435, metadata !DIExpression()), !dbg !1441
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1436, metadata !DIExpression()), !dbg !1441
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1437, metadata !DIExpression()), !dbg !1441
  %6 = icmp eq ptr %4, null, !dbg !1442
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1442
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1438, metadata !DIExpression()), !dbg !1441
  %8 = tail call ptr @__errno_location() #40, !dbg !1443
  %9 = load i32, ptr %8, align 4, !dbg !1443, !tbaa !739
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1439, metadata !DIExpression()), !dbg !1441
  %10 = load i32, ptr %7, align 8, !dbg !1444, !tbaa !1352
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1445
  %12 = load i32, ptr %11, align 4, !dbg !1445, !tbaa !1402
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1446
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1447
  %15 = load ptr, ptr %14, align 8, !dbg !1447, !tbaa !1423
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1448
  %17 = load ptr, ptr %16, align 8, !dbg !1448, !tbaa !1426
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1449
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1440, metadata !DIExpression()), !dbg !1441
  store i32 %9, ptr %8, align 4, !dbg !1450, !tbaa !739
  ret i64 %18, !dbg !1451
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1452 {
  %10 = alloca i32, align 4, !DIAssignID !1520
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1521
  %12 = alloca i32, align 4, !DIAssignID !1522
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1523
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1524
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1498, metadata !DIExpression(), metadata !1524, metadata ptr %14, metadata !DIExpression()), !dbg !1525
  %15 = alloca i32, align 4, !DIAssignID !1526
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1501, metadata !DIExpression(), metadata !1526, metadata ptr %15, metadata !DIExpression()), !dbg !1527
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1458, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1459, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1460, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1461, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1462, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1463, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1464, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1465, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1466, metadata !DIExpression()), !dbg !1528
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1529
  %17 = icmp eq i64 %16, 1, !dbg !1530
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1467, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1469, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1470, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1471, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1472, metadata !DIExpression()), !dbg !1528
  %18 = trunc i32 %5 to i8, !dbg !1531
  %19 = lshr i8 %18, 1, !dbg !1531
  %20 = and i8 %19, 1, !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1473, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1474, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1475, metadata !DIExpression()), !dbg !1528
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1532

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !1533
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !1534
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !1535
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !1536
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !1528
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !1537
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !1538
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1459, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1475, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1474, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1473, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1472, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1471, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1470, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1469, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1461, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1466, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1465, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1462, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.label(metadata !1476), !dbg !1539
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1477, metadata !DIExpression()), !dbg !1528
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
  ], !dbg !1540

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1473, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1462, metadata !DIExpression()), !dbg !1528
  br label %114, !dbg !1541

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1473, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1462, metadata !DIExpression()), !dbg !1528
  %43 = and i8 %37, 1, !dbg !1542
  %44 = icmp eq i8 %43, 0, !dbg !1542
  br i1 %44, label %45, label %114, !dbg !1541

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1544
  br i1 %46, label %114, label %47, !dbg !1547

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1544, !tbaa !748
  br label %114, !dbg !1544

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !486, metadata !DIExpression(), metadata !1522, metadata ptr %12, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.assign(metadata i1 undef, metadata !487, metadata !DIExpression(), metadata !1523, metadata ptr %13, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata ptr @.str.11.61, metadata !483, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i32 %29, metadata !484, metadata !DIExpression()), !dbg !1548
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.62, ptr noundef nonnull @.str.11.61, i32 noundef 5) #37, !dbg !1552
  call void @llvm.dbg.value(metadata ptr %49, metadata !485, metadata !DIExpression()), !dbg !1548
  %50 = icmp eq ptr %49, @.str.11.61, !dbg !1553
  br i1 %50, label %51, label %60, !dbg !1555

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1556
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1557
  call void @llvm.dbg.value(metadata ptr %13, metadata !1558, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata ptr %13, metadata !1566, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i32 0, metadata !1569, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i64 8, metadata !1570, metadata !DIExpression()), !dbg !1571
  store i64 0, ptr %13, align 8, !dbg !1573
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1574
  %53 = icmp eq i64 %52, 3, !dbg !1576
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1577
  %57 = icmp eq i32 %29, 9, !dbg !1577
  %58 = select i1 %57, ptr @.str.10.63, ptr @.str.12.64, !dbg !1577
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1577
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1578
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1548
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1465, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.assign(metadata i1 undef, metadata !486, metadata !DIExpression(), metadata !1520, metadata ptr %10, metadata !DIExpression()), !dbg !1579
  call void @llvm.dbg.assign(metadata i1 undef, metadata !487, metadata !DIExpression(), metadata !1521, metadata ptr %11, metadata !DIExpression()), !dbg !1579
  call void @llvm.dbg.value(metadata ptr @.str.12.64, metadata !483, metadata !DIExpression()), !dbg !1579
  call void @llvm.dbg.value(metadata i32 %29, metadata !484, metadata !DIExpression()), !dbg !1579
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.62, ptr noundef nonnull @.str.12.64, i32 noundef 5) #37, !dbg !1581
  call void @llvm.dbg.value(metadata ptr %62, metadata !485, metadata !DIExpression()), !dbg !1579
  %63 = icmp eq ptr %62, @.str.12.64, !dbg !1582
  br i1 %63, label %64, label %73, !dbg !1583

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1584
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1585
  call void @llvm.dbg.value(metadata ptr %11, metadata !1558, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata ptr %11, metadata !1566, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.value(metadata i32 0, metadata !1569, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.value(metadata i64 8, metadata !1570, metadata !DIExpression()), !dbg !1588
  store i64 0, ptr %11, align 8, !dbg !1590
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1591
  %66 = icmp eq i64 %65, 3, !dbg !1592
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1593
  %70 = icmp eq i32 %29, 9, !dbg !1593
  %71 = select i1 %70, ptr @.str.10.63, ptr @.str.12.64, !dbg !1593
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1593
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1594
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1594
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1466, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1465, metadata !DIExpression()), !dbg !1528
  %76 = and i8 %37, 1, !dbg !1595
  %77 = icmp eq i8 %76, 0, !dbg !1595
  br i1 %77, label %78, label %93, !dbg !1596

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1478, metadata !DIExpression()), !dbg !1597
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1468, metadata !DIExpression()), !dbg !1528
  %79 = load i8, ptr %74, align 1, !dbg !1598, !tbaa !748
  %80 = icmp eq i8 %79, 0, !dbg !1600
  br i1 %80, label %93, label %81, !dbg !1600

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1478, metadata !DIExpression()), !dbg !1597
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1468, metadata !DIExpression()), !dbg !1528
  %85 = icmp ult i64 %84, %40, !dbg !1601
  br i1 %85, label %86, label %88, !dbg !1604

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1601
  store i8 %82, ptr %87, align 1, !dbg !1601, !tbaa !748
  br label %88, !dbg !1601

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1604
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1468, metadata !DIExpression()), !dbg !1528
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1605
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1478, metadata !DIExpression()), !dbg !1597
  %91 = load i8, ptr %90, align 1, !dbg !1598, !tbaa !748
  %92 = icmp eq i8 %91, 0, !dbg !1600
  br i1 %92, label %93, label %81, !dbg !1600, !llvm.loop !1606

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1608
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1472, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1470, metadata !DIExpression()), !dbg !1528
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #39, !dbg !1609
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1471, metadata !DIExpression()), !dbg !1528
  br label %114, !dbg !1610

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1472, metadata !DIExpression()), !dbg !1528
  br label %98, !dbg !1611

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1472, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1473, metadata !DIExpression()), !dbg !1528
  br label %98, !dbg !1612

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !1536
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1473, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1472, metadata !DIExpression()), !dbg !1528
  %101 = and i8 %100, 1, !dbg !1613
  %102 = icmp eq i8 %101, 0, !dbg !1613
  %103 = select i1 %102, i8 1, i8 %99, !dbg !1615
  br label %104, !dbg !1615

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !1528
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !1531
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1473, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1472, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1462, metadata !DIExpression()), !dbg !1528
  %107 = and i8 %106, 1, !dbg !1616
  %108 = icmp eq i8 %107, 0, !dbg !1616
  br i1 %108, label %109, label %114, !dbg !1618

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !1619
  br i1 %110, label %114, label %111, !dbg !1622

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !1619, !tbaa !748
  br label %114, !dbg !1619

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1473, metadata !DIExpression()), !dbg !1528
  br label %114, !dbg !1623

113:                                              ; preds = %28
  call void @abort() #38, !dbg !1624
  unreachable, !dbg !1624

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !1608
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.63, %45 ], [ @.str.10.63, %47 ], [ @.str.10.63, %42 ], [ %34, %28 ], [ @.str.12.64, %109 ], [ @.str.12.64, %111 ], [ @.str.12.64, %104 ], [ @.str.10.63, %41 ], !dbg !1528
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !1528
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !1528
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1473, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1472, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1471, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1470, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1466, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1465, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1462, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1483, metadata !DIExpression()), !dbg !1625
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
  br label %138, !dbg !1626

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !1608
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !1533
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !1537
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !1538
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !1627
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !1628
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1459, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1483, metadata !DIExpression()), !dbg !1625
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1477, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1475, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1474, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1469, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1461, metadata !DIExpression()), !dbg !1528
  %147 = icmp eq i64 %139, -1, !dbg !1629
  br i1 %147, label %148, label %152, !dbg !1630

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1631
  %150 = load i8, ptr %149, align 1, !dbg !1631, !tbaa !748
  %151 = icmp eq i8 %150, 0, !dbg !1632
  br i1 %151, label %612, label %154, !dbg !1633

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1634
  br i1 %153, label %612, label %154, !dbg !1633

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1485, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1488, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1489, metadata !DIExpression()), !dbg !1635
  br i1 %128, label %155, label %170, !dbg !1636

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !1638
  %157 = select i1 %147, i1 %129, i1 false, !dbg !1639
  br i1 %157, label %158, label %160, !dbg !1639

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1640
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1461, metadata !DIExpression()), !dbg !1528
  br label %160, !dbg !1641

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1641
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1461, metadata !DIExpression()), !dbg !1528
  %162 = icmp ugt i64 %156, %161, !dbg !1642
  br i1 %162, label %170, label %163, !dbg !1643

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1644
  call void @llvm.dbg.value(metadata ptr %164, metadata !1645, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata ptr %119, metadata !1648, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i64 %120, metadata !1649, metadata !DIExpression()), !dbg !1650
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !1652
  %166 = icmp ne i32 %165, 0, !dbg !1653
  %167 = select i1 %166, i1 true, i1 %131, !dbg !1654
  %168 = xor i1 %166, true, !dbg !1654
  %169 = zext i1 %168 to i8, !dbg !1654
  br i1 %167, label %170, label %666, !dbg !1654

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1635
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1485, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1461, metadata !DIExpression()), !dbg !1528
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1655
  %175 = load i8, ptr %174, align 1, !dbg !1655, !tbaa !748
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1490, metadata !DIExpression()), !dbg !1635
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
  ], !dbg !1656

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !1657

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !1658

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1488, metadata !DIExpression()), !dbg !1635
  %179 = and i8 %144, 1, !dbg !1662
  %180 = icmp eq i8 %179, 0, !dbg !1662
  %181 = select i1 %132, i1 %180, i1 false, !dbg !1662
  br i1 %181, label %182, label %198, !dbg !1662

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1664
  br i1 %183, label %184, label %186, !dbg !1668

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1664
  store i8 39, ptr %185, align 1, !dbg !1664, !tbaa !748
  br label %186, !dbg !1664

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1668
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1468, metadata !DIExpression()), !dbg !1528
  %188 = icmp ult i64 %187, %146, !dbg !1669
  br i1 %188, label %189, label %191, !dbg !1672

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1669
  store i8 36, ptr %190, align 1, !dbg !1669, !tbaa !748
  br label %191, !dbg !1669

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1672
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1468, metadata !DIExpression()), !dbg !1528
  %193 = icmp ult i64 %192, %146, !dbg !1673
  br i1 %193, label %194, label %196, !dbg !1676

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1673
  store i8 39, ptr %195, align 1, !dbg !1673, !tbaa !748
  br label %196, !dbg !1673

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1676
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1477, metadata !DIExpression()), !dbg !1528
  br label %198, !dbg !1677

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1528
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1477, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1468, metadata !DIExpression()), !dbg !1528
  %201 = icmp ult i64 %199, %146, !dbg !1678
  br i1 %201, label %202, label %204, !dbg !1681

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1678
  store i8 92, ptr %203, align 1, !dbg !1678, !tbaa !748
  br label %204, !dbg !1678

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1681
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1468, metadata !DIExpression()), !dbg !1528
  br i1 %125, label %206, label %476, !dbg !1682

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1684
  %208 = icmp ult i64 %207, %171, !dbg !1685
  br i1 %208, label %209, label %465, !dbg !1686

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1687
  %211 = load i8, ptr %210, align 1, !dbg !1687, !tbaa !748
  %212 = add i8 %211, -48, !dbg !1688
  %213 = icmp ult i8 %212, 10, !dbg !1688
  br i1 %213, label %214, label %465, !dbg !1688

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1689
  br i1 %215, label %216, label %218, !dbg !1693

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1689
  store i8 48, ptr %217, align 1, !dbg !1689, !tbaa !748
  br label %218, !dbg !1689

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1693
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1468, metadata !DIExpression()), !dbg !1528
  %220 = icmp ult i64 %219, %146, !dbg !1694
  br i1 %220, label %221, label %223, !dbg !1697

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1694
  store i8 48, ptr %222, align 1, !dbg !1694, !tbaa !748
  br label %223, !dbg !1694

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1697
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1468, metadata !DIExpression()), !dbg !1528
  br label %465, !dbg !1698

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !1699

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1700

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !1701

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !1703

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1705
  %231 = icmp ult i64 %230, %171, !dbg !1706
  br i1 %231, label %232, label %465, !dbg !1707

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !1708
  %234 = load i8, ptr %233, align 1, !dbg !1708, !tbaa !748
  %235 = icmp eq i8 %234, 63, !dbg !1709
  br i1 %235, label %236, label %465, !dbg !1710

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1711
  %238 = load i8, ptr %237, align 1, !dbg !1711, !tbaa !748
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
  ], !dbg !1712

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !1713

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1490, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1483, metadata !DIExpression()), !dbg !1625
  %241 = icmp ult i64 %140, %146, !dbg !1715
  br i1 %241, label %242, label %244, !dbg !1718

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1715
  store i8 63, ptr %243, align 1, !dbg !1715, !tbaa !748
  br label %244, !dbg !1715

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !1718
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1468, metadata !DIExpression()), !dbg !1528
  %246 = icmp ult i64 %245, %146, !dbg !1719
  br i1 %246, label %247, label %249, !dbg !1722

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !1719
  store i8 34, ptr %248, align 1, !dbg !1719, !tbaa !748
  br label %249, !dbg !1719

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !1722
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1468, metadata !DIExpression()), !dbg !1528
  %251 = icmp ult i64 %250, %146, !dbg !1723
  br i1 %251, label %252, label %254, !dbg !1726

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !1723
  store i8 34, ptr %253, align 1, !dbg !1723, !tbaa !748
  br label %254, !dbg !1723

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !1726
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1468, metadata !DIExpression()), !dbg !1528
  %256 = icmp ult i64 %255, %146, !dbg !1727
  br i1 %256, label %257, label %259, !dbg !1730

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !1727
  store i8 63, ptr %258, align 1, !dbg !1727, !tbaa !748
  br label %259, !dbg !1727

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !1730
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1468, metadata !DIExpression()), !dbg !1528
  br label %465, !dbg !1731

261:                                              ; preds = %170
  br label %272, !dbg !1732

262:                                              ; preds = %170
  br label %272, !dbg !1733

263:                                              ; preds = %170
  br label %270, !dbg !1734

264:                                              ; preds = %170
  br label %270, !dbg !1735

265:                                              ; preds = %170
  br label %272, !dbg !1736

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !1737

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !1738

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !1741

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !1743

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !1744
  call void @llvm.dbg.label(metadata !1491), !dbg !1745
  br i1 %133, label %272, label %655, !dbg !1746

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !1744
  call void @llvm.dbg.label(metadata !1494), !dbg !1748
  br i1 %124, label %520, label %476, !dbg !1749

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !1750

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !1751, !tbaa !748
  %277 = icmp eq i8 %276, 0, !dbg !1753
  br i1 %277, label %278, label %465, !dbg !1754

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !1755
  br i1 %279, label %280, label %465, !dbg !1757

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1489, metadata !DIExpression()), !dbg !1635
  br label %281, !dbg !1758

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1489, metadata !DIExpression()), !dbg !1635
  br i1 %133, label %465, label %655, !dbg !1759

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1474, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1489, metadata !DIExpression()), !dbg !1635
  br i1 %132, label %284, label %465, !dbg !1761

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !1762

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !1765
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !1767
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !1767
  %290 = select i1 %288, i64 %146, i64 0, !dbg !1767
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1459, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1469, metadata !DIExpression()), !dbg !1528
  %291 = icmp ult i64 %140, %290, !dbg !1768
  br i1 %291, label %292, label %294, !dbg !1771

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1768
  store i8 39, ptr %293, align 1, !dbg !1768, !tbaa !748
  br label %294, !dbg !1768

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !1771
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1468, metadata !DIExpression()), !dbg !1528
  %296 = icmp ult i64 %295, %290, !dbg !1772
  br i1 %296, label %297, label %299, !dbg !1775

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !1772
  store i8 92, ptr %298, align 1, !dbg !1772, !tbaa !748
  br label %299, !dbg !1772

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1468, metadata !DIExpression()), !dbg !1528
  %301 = icmp ult i64 %300, %290, !dbg !1776
  br i1 %301, label %302, label %304, !dbg !1779

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !1776
  store i8 39, ptr %303, align 1, !dbg !1776, !tbaa !748
  br label %304, !dbg !1776

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !1779
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1477, metadata !DIExpression()), !dbg !1528
  br label %465, !dbg !1780

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !1781

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1495, metadata !DIExpression()), !dbg !1782
  %308 = tail call ptr @__ctype_b_loc() #40, !dbg !1783
  %309 = load ptr, ptr %308, align 8, !dbg !1783, !tbaa !718
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !1783
  %312 = load i16, ptr %311, align 2, !dbg !1783, !tbaa !780
  %313 = and i16 %312, 16384, !dbg !1785
  %314 = icmp ne i16 %313, 0, !dbg !1785
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1497, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1782
  br label %355, !dbg !1786

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !1787
  call void @llvm.dbg.value(metadata ptr %14, metadata !1558, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata ptr %14, metadata !1566, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i32 0, metadata !1569, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 8, metadata !1570, metadata !DIExpression()), !dbg !1790
  store i64 0, ptr %14, align 8, !dbg !1792
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1495, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1497, metadata !DIExpression()), !dbg !1782
  %316 = icmp eq i64 %171, -1, !dbg !1793
  br i1 %316, label %317, label %319, !dbg !1795

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1796
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1461, metadata !DIExpression()), !dbg !1528
  br label %319, !dbg !1797

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1461, metadata !DIExpression()), !dbg !1528
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !1798
  %321 = sub i64 %320, %145, !dbg !1799
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #37, !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1505, metadata !DIExpression()), !dbg !1527
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !1801

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1495, metadata !DIExpression()), !dbg !1782
  %324 = icmp ult i64 %145, %320, !dbg !1802
  br i1 %324, label %326, label %351, !dbg !1804

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1497, metadata !DIExpression()), !dbg !1782
  br label %351, !dbg !1805

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1495, metadata !DIExpression()), !dbg !1782
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !1807
  %330 = load i8, ptr %329, align 1, !dbg !1807, !tbaa !748
  %331 = icmp eq i8 %330, 0, !dbg !1804
  br i1 %331, label %351, label %332, !dbg !1808

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !1809
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1495, metadata !DIExpression()), !dbg !1782
  %334 = add i64 %333, %145, !dbg !1810
  %335 = icmp eq i64 %333, %321, !dbg !1802
  br i1 %335, label %351, label %326, !dbg !1804, !llvm.loop !1811

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1506, metadata !DIExpression()), !dbg !1812
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !1813
  %339 = and i1 %338, %132, !dbg !1813
  br i1 %339, label %340, label %347, !dbg !1813

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !1506, metadata !DIExpression()), !dbg !1812
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !1814
  %343 = load i8, ptr %342, align 1, !dbg !1814, !tbaa !748
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !1816

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !1506, metadata !DIExpression()), !dbg !1812
  %346 = icmp eq i64 %345, %322, !dbg !1818
  br i1 %346, label %347, label %340, !dbg !1819, !llvm.loop !1820

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !1822, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %348, metadata !1824, metadata !DIExpression()), !dbg !1832
  %349 = call i32 @iswprint(i32 noundef %348) #37, !dbg !1834
  %350 = icmp ne i32 %349, 0, !dbg !1835
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1497, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1495, metadata !DIExpression()), !dbg !1782
  br label %351, !dbg !1836

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1497, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1495, metadata !DIExpression()), !dbg !1782
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1837
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1838
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1497, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1495, metadata !DIExpression()), !dbg !1782
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1837
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1838
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !1635
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !1839
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !1839
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1497, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1495, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1461, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1489, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1635
  %359 = icmp ult i64 %357, 2, !dbg !1840
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !1841
  br i1 %361, label %461, label %362, !dbg !1841

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !1842
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1514, metadata !DIExpression()), !dbg !1843
  br label %364, !dbg !1844

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !1528
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !1627
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !1625
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !1635
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !1845
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1490, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1488, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1485, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1483, metadata !DIExpression()), !dbg !1625
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1477, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1468, metadata !DIExpression()), !dbg !1528
  br i1 %360, label %417, label %371, !dbg !1846

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !1851

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1488, metadata !DIExpression()), !dbg !1635
  %373 = and i8 %366, 1, !dbg !1854
  %374 = icmp eq i8 %373, 0, !dbg !1854
  %375 = select i1 %132, i1 %374, i1 false, !dbg !1854
  br i1 %375, label %376, label %392, !dbg !1854

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !1856
  br i1 %377, label %378, label %380, !dbg !1860

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !1856
  store i8 39, ptr %379, align 1, !dbg !1856, !tbaa !748
  br label %380, !dbg !1856

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !1860
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1468, metadata !DIExpression()), !dbg !1528
  %382 = icmp ult i64 %381, %146, !dbg !1861
  br i1 %382, label %383, label %385, !dbg !1864

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !1861
  store i8 36, ptr %384, align 1, !dbg !1861, !tbaa !748
  br label %385, !dbg !1861

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1468, metadata !DIExpression()), !dbg !1528
  %387 = icmp ult i64 %386, %146, !dbg !1865
  br i1 %387, label %388, label %390, !dbg !1868

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !1865
  store i8 39, ptr %389, align 1, !dbg !1865, !tbaa !748
  br label %390, !dbg !1865

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !1868
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1477, metadata !DIExpression()), !dbg !1528
  br label %392, !dbg !1869

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !1528
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1477, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1468, metadata !DIExpression()), !dbg !1528
  %395 = icmp ult i64 %393, %146, !dbg !1870
  br i1 %395, label %396, label %398, !dbg !1873

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !1870
  store i8 92, ptr %397, align 1, !dbg !1870, !tbaa !748
  br label %398, !dbg !1870

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !1873
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1468, metadata !DIExpression()), !dbg !1528
  %400 = icmp ult i64 %399, %146, !dbg !1874
  br i1 %400, label %401, label %405, !dbg !1877

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !1874
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !1874
  store i8 %403, ptr %404, align 1, !dbg !1874, !tbaa !748
  br label %405, !dbg !1874

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !1877
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1468, metadata !DIExpression()), !dbg !1528
  %407 = icmp ult i64 %406, %146, !dbg !1878
  br i1 %407, label %408, label %413, !dbg !1881

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !1878
  %411 = or disjoint i8 %410, 48, !dbg !1878
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !1878
  store i8 %411, ptr %412, align 1, !dbg !1878, !tbaa !748
  br label %413, !dbg !1878

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !1881
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1468, metadata !DIExpression()), !dbg !1528
  %415 = and i8 %370, 7, !dbg !1882
  %416 = or disjoint i8 %415, 48, !dbg !1883
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1490, metadata !DIExpression()), !dbg !1635
  br label %426, !dbg !1884

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !1885
  %419 = icmp eq i8 %418, 0, !dbg !1885
  br i1 %419, label %426, label %420, !dbg !1887

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !1888
  br i1 %421, label %422, label %424, !dbg !1892

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !1888
  store i8 92, ptr %423, align 1, !dbg !1888, !tbaa !748
  br label %424, !dbg !1888

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !1892
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1485, metadata !DIExpression()), !dbg !1635
  br label %426, !dbg !1893

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !1528
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !1627
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !1635
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !1635
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1490, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1488, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1485, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1477, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1468, metadata !DIExpression()), !dbg !1528
  %432 = add i64 %367, 1, !dbg !1894
  %433 = icmp ugt i64 %363, %432, !dbg !1896
  br i1 %433, label %434, label %463, !dbg !1897

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !1898
  %436 = icmp ne i8 %435, 0, !dbg !1898
  %437 = and i8 %430, 1, !dbg !1898
  %438 = icmp eq i8 %437, 0, !dbg !1898
  %439 = select i1 %436, i1 %438, i1 false, !dbg !1898
  br i1 %439, label %440, label %451, !dbg !1898

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !1901
  br i1 %441, label %442, label %444, !dbg !1905

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !1901
  store i8 39, ptr %443, align 1, !dbg !1901, !tbaa !748
  br label %444, !dbg !1901

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !1905
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1468, metadata !DIExpression()), !dbg !1528
  %446 = icmp ult i64 %445, %146, !dbg !1906
  br i1 %446, label %447, label %449, !dbg !1909

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !1906
  store i8 39, ptr %448, align 1, !dbg !1906, !tbaa !748
  br label %449, !dbg !1906

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !1909
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1477, metadata !DIExpression()), !dbg !1528
  br label %451, !dbg !1910

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !1911
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1477, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1468, metadata !DIExpression()), !dbg !1528
  %454 = icmp ult i64 %452, %146, !dbg !1912
  br i1 %454, label %455, label %457, !dbg !1915

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !1912
  store i8 %431, ptr %456, align 1, !dbg !1912, !tbaa !748
  br label %457, !dbg !1912

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !1915
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1483, metadata !DIExpression()), !dbg !1625
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !1916
  %460 = load i8, ptr %459, align 1, !dbg !1916, !tbaa !748
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1490, metadata !DIExpression()), !dbg !1635
  br label %364, !dbg !1917, !llvm.loop !1918

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1490, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1489, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1488, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1485, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1483, metadata !DIExpression()), !dbg !1625
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1477, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1461, metadata !DIExpression()), !dbg !1528
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1490, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1489, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1488, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1485, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1483, metadata !DIExpression()), !dbg !1625
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1477, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1461, metadata !DIExpression()), !dbg !1528
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !1921
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !1528
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !1533
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !1528
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !1528
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !1625
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !1635
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !1635
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !1635
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1459, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1490, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1489, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1488, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1485, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1483, metadata !DIExpression()), !dbg !1625
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1477, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1474, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1469, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1461, metadata !DIExpression()), !dbg !1528
  br i1 %126, label %487, label %476, !dbg !1922

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
  br i1 %137, label %488, label %509, !dbg !1924

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !1925

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
  %499 = lshr i8 %490, 5, !dbg !1926
  %500 = zext nneg i8 %499 to i64, !dbg !1926
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !1927
  %502 = load i32, ptr %501, align 4, !dbg !1927, !tbaa !739
  %503 = and i8 %490, 31, !dbg !1928
  %504 = zext nneg i8 %503 to i32, !dbg !1928
  %505 = shl nuw i32 1, %504, !dbg !1929
  %506 = and i32 %502, %505, !dbg !1929
  %507 = icmp eq i32 %506, 0, !dbg !1929
  %508 = and i1 %172, %507, !dbg !1930
  br i1 %508, label %558, label %520, !dbg !1930

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
  br i1 %172, label %558, label %520, !dbg !1931

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !1921
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !1528
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !1533
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !1537
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !1627
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !1932
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !1635
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !1635
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1459, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1490, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1489, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1483, metadata !DIExpression()), !dbg !1625
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1477, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1474, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1469, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1461, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.label(metadata !1517), !dbg !1933
  br i1 %131, label %530, label %659, !dbg !1934

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1488, metadata !DIExpression()), !dbg !1635
  %531 = and i8 %525, 1, !dbg !1936
  %532 = icmp eq i8 %531, 0, !dbg !1936
  %533 = select i1 %132, i1 %532, i1 false, !dbg !1936
  br i1 %533, label %534, label %550, !dbg !1936

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !1938
  br i1 %535, label %536, label %538, !dbg !1942

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !1938
  store i8 39, ptr %537, align 1, !dbg !1938, !tbaa !748
  br label %538, !dbg !1938

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !1942
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1468, metadata !DIExpression()), !dbg !1528
  %540 = icmp ult i64 %539, %529, !dbg !1943
  br i1 %540, label %541, label %543, !dbg !1946

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !1943
  store i8 36, ptr %542, align 1, !dbg !1943, !tbaa !748
  br label %543, !dbg !1943

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !1946
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1468, metadata !DIExpression()), !dbg !1528
  %545 = icmp ult i64 %544, %529, !dbg !1947
  br i1 %545, label %546, label %548, !dbg !1950

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !1947
  store i8 39, ptr %547, align 1, !dbg !1947, !tbaa !748
  br label %548, !dbg !1947

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !1950
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1477, metadata !DIExpression()), !dbg !1528
  br label %550, !dbg !1951

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !1635
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1477, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1468, metadata !DIExpression()), !dbg !1528
  %553 = icmp ult i64 %551, %529, !dbg !1952
  br i1 %553, label %554, label %556, !dbg !1955

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !1952
  store i8 92, ptr %555, align 1, !dbg !1952, !tbaa !748
  br label %556, !dbg !1952

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !1955
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1459, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1490, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1489, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1488, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1483, metadata !DIExpression()), !dbg !1625
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1477, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1474, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1469, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1461, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.label(metadata !1518), !dbg !1956
  br label %585, !dbg !1957

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !1921
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !1528
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !1533
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !1537
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !1627
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !1932
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !1635
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !1635
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !1960
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1459, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1490, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1489, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1488, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1483, metadata !DIExpression()), !dbg !1625
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1477, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1474, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1469, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1461, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.label(metadata !1518), !dbg !1956
  %569 = and i8 %563, 1, !dbg !1957
  %570 = icmp ne i8 %569, 0, !dbg !1957
  %571 = and i8 %565, 1, !dbg !1957
  %572 = icmp eq i8 %571, 0, !dbg !1957
  %573 = select i1 %570, i1 %572, i1 false, !dbg !1957
  br i1 %573, label %574, label %585, !dbg !1957

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !1961
  br i1 %575, label %576, label %578, !dbg !1965

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !1961
  store i8 39, ptr %577, align 1, !dbg !1961, !tbaa !748
  br label %578, !dbg !1961

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1468, metadata !DIExpression()), !dbg !1528
  %580 = icmp ult i64 %579, %568, !dbg !1966
  br i1 %580, label %581, label %583, !dbg !1969

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !1966
  store i8 39, ptr %582, align 1, !dbg !1966, !tbaa !748
  br label %583, !dbg !1966

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !1969
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1477, metadata !DIExpression()), !dbg !1528
  br label %585, !dbg !1970

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !1635
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1477, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1468, metadata !DIExpression()), !dbg !1528
  %595 = icmp ult i64 %593, %586, !dbg !1971
  br i1 %595, label %596, label %598, !dbg !1974

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !1971
  store i8 %587, ptr %597, align 1, !dbg !1971, !tbaa !748
  br label %598, !dbg !1971

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !1974
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1468, metadata !DIExpression()), !dbg !1528
  %600 = icmp eq i8 %588, 0, !dbg !1975
  %601 = select i1 %600, i8 0, i8 %143, !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1475, metadata !DIExpression()), !dbg !1528
  br label %602, !dbg !1978

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !1921
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !1528
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !1533
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !1537
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !1538
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !1627
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !1932
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1459, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1483, metadata !DIExpression()), !dbg !1625
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1477, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1475, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1474, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1469, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1461, metadata !DIExpression()), !dbg !1528
  %611 = add i64 %609, 1, !dbg !1979
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1483, metadata !DIExpression()), !dbg !1625
  br label %138, !dbg !1980, !llvm.loop !1981

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1459, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1475, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1474, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1469, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1468, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1461, metadata !DIExpression()), !dbg !1528
  %613 = icmp eq i64 %140, 0, !dbg !1983
  %614 = and i1 %132, %613, !dbg !1985
  %615 = xor i1 %614, true, !dbg !1985
  %616 = select i1 %615, i1 true, i1 %131, !dbg !1985
  br i1 %616, label %617, label %655, !dbg !1985

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !1986
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !1986
  br i1 %621, label %622, label %631, !dbg !1986

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !1988
  %624 = icmp eq i8 %623, 0, !dbg !1988
  br i1 %624, label %627, label %625, !dbg !1991

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !1992
  br label %672, !dbg !1993

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !1994
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !1996
  br i1 %630, label %28, label %631, !dbg !1996

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !1997
  %634 = select i1 %633, i1 %632, i1 false, !dbg !1999
  br i1 %634, label %635, label %650, !dbg !1999

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1470, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1468, metadata !DIExpression()), !dbg !1528
  %636 = load i8, ptr %119, align 1, !dbg !2000, !tbaa !748
  %637 = icmp eq i8 %636, 0, !dbg !2003
  br i1 %637, label %650, label %638, !dbg !2003

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1470, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1468, metadata !DIExpression()), !dbg !1528
  %642 = icmp ult i64 %641, %146, !dbg !2004
  br i1 %642, label %643, label %645, !dbg !2007

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2004
  store i8 %639, ptr %644, align 1, !dbg !2004, !tbaa !748
  br label %645, !dbg !2004

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2007
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1468, metadata !DIExpression()), !dbg !1528
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2008
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1470, metadata !DIExpression()), !dbg !1528
  %648 = load i8, ptr %647, align 1, !dbg !2000, !tbaa !748
  %649 = icmp eq i8 %648, 0, !dbg !2003
  br i1 %649, label %650, label %638, !dbg !2003, !llvm.loop !2009

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !1608
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1468, metadata !DIExpression()), !dbg !1528
  %652 = icmp ult i64 %651, %146, !dbg !2011
  br i1 %652, label %653, label %672, !dbg !2013

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2014
  store i8 0, ptr %654, align 1, !dbg !2015, !tbaa !748
  br label %672, !dbg !2014

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !1519), !dbg !2016
  %657 = icmp eq i8 %123, 0, !dbg !2017
  %658 = select i1 %657, i32 2, i32 4, !dbg !2017
  br label %666, !dbg !2017

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !1519), !dbg !2016
  %662 = icmp eq i32 %115, 2, !dbg !2019
  %663 = icmp eq i8 %123, 0, !dbg !2017
  %664 = select i1 %663, i32 2, i32 4, !dbg !2017
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2017
  br label %666, !dbg !2017

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1462, metadata !DIExpression()), !dbg !1528
  %670 = and i32 %5, -3, !dbg !2020
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2021
  br label %672, !dbg !2022

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2023
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
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2032 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2036, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2037, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2038, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata ptr %0, metadata !2040, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %1, metadata !2045, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata ptr null, metadata !2046, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata ptr %2, metadata !2047, metadata !DIExpression()), !dbg !2053
  %4 = icmp eq ptr %2, null, !dbg !2055
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2055
  call void @llvm.dbg.value(metadata ptr %5, metadata !2048, metadata !DIExpression()), !dbg !2053
  %6 = tail call ptr @__errno_location() #40, !dbg !2056
  %7 = load i32, ptr %6, align 4, !dbg !2056, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %7, metadata !2049, metadata !DIExpression()), !dbg !2053
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2057
  %9 = load i32, ptr %8, align 4, !dbg !2057, !tbaa !1402
  %10 = or i32 %9, 1, !dbg !2058
  call void @llvm.dbg.value(metadata i32 %10, metadata !2050, metadata !DIExpression()), !dbg !2053
  %11 = load i32, ptr %5, align 8, !dbg !2059, !tbaa !1352
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2060
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2061
  %14 = load ptr, ptr %13, align 8, !dbg !2061, !tbaa !1423
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2062
  %16 = load ptr, ptr %15, align 8, !dbg !2062, !tbaa !1426
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2063
  %18 = add i64 %17, 1, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %18, metadata !2051, metadata !DIExpression()), !dbg !2053
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2065
  call void @llvm.dbg.value(metadata ptr %19, metadata !2052, metadata !DIExpression()), !dbg !2053
  %20 = load i32, ptr %5, align 8, !dbg !2066, !tbaa !1352
  %21 = load ptr, ptr %13, align 8, !dbg !2067, !tbaa !1423
  %22 = load ptr, ptr %15, align 8, !dbg !2068, !tbaa !1426
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2069
  store i32 %7, ptr %6, align 4, !dbg !2070, !tbaa !739
  ret ptr %19, !dbg !2071
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2041 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2040, metadata !DIExpression()), !dbg !2072
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2045, metadata !DIExpression()), !dbg !2072
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2046, metadata !DIExpression()), !dbg !2072
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2047, metadata !DIExpression()), !dbg !2072
  %5 = icmp eq ptr %3, null, !dbg !2073
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2073
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2048, metadata !DIExpression()), !dbg !2072
  %7 = tail call ptr @__errno_location() #40, !dbg !2074
  %8 = load i32, ptr %7, align 4, !dbg !2074, !tbaa !739
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2049, metadata !DIExpression()), !dbg !2072
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2075
  %10 = load i32, ptr %9, align 4, !dbg !2075, !tbaa !1402
  %11 = icmp eq ptr %2, null, !dbg !2076
  %12 = zext i1 %11 to i32, !dbg !2076
  %13 = or i32 %10, %12, !dbg !2077
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2050, metadata !DIExpression()), !dbg !2072
  %14 = load i32, ptr %6, align 8, !dbg !2078, !tbaa !1352
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2079
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2080
  %17 = load ptr, ptr %16, align 8, !dbg !2080, !tbaa !1423
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2081
  %19 = load ptr, ptr %18, align 8, !dbg !2081, !tbaa !1426
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2082
  %21 = add i64 %20, 1, !dbg !2083
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2051, metadata !DIExpression()), !dbg !2072
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2084
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2052, metadata !DIExpression()), !dbg !2072
  %23 = load i32, ptr %6, align 8, !dbg !2085, !tbaa !1352
  %24 = load ptr, ptr %16, align 8, !dbg !2086, !tbaa !1423
  %25 = load ptr, ptr %18, align 8, !dbg !2087, !tbaa !1426
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2088
  store i32 %8, ptr %7, align 4, !dbg !2089, !tbaa !739
  br i1 %11, label %28, label %27, !dbg !2090

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2091, !tbaa !2093
  br label %28, !dbg !2094

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2095
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2096 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2101, !tbaa !718
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2098, metadata !DIExpression()), !dbg !2102
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2099, metadata !DIExpression()), !dbg !2103
  %2 = load i32, ptr @nslots, align 4, !tbaa !739
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2099, metadata !DIExpression()), !dbg !2103
  %3 = icmp sgt i32 %2, 1, !dbg !2104
  br i1 %3, label %4, label %6, !dbg !2106

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2104
  br label %10, !dbg !2106

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2107
  %8 = load ptr, ptr %7, align 8, !dbg !2107, !tbaa !2109
  %9 = icmp eq ptr %8, @slot0, !dbg !2111
  br i1 %9, label %17, label %16, !dbg !2112

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2099, metadata !DIExpression()), !dbg !2103
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2113
  %13 = load ptr, ptr %12, align 8, !dbg !2113, !tbaa !2109
  tail call void @free(ptr noundef %13) #37, !dbg !2114
  %14 = add nuw nsw i64 %11, 1, !dbg !2115
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2099, metadata !DIExpression()), !dbg !2103
  %15 = icmp eq i64 %14, %5, !dbg !2104
  br i1 %15, label %6, label %10, !dbg !2106, !llvm.loop !2116

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2118
  store i64 256, ptr @slotvec0, align 8, !dbg !2120, !tbaa !2121
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2122, !tbaa !2109
  br label %17, !dbg !2123

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2124
  br i1 %18, label %20, label %19, !dbg !2126

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2127
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2129, !tbaa !718
  br label %20, !dbg !2130

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2131, !tbaa !739
  ret void, !dbg !2132
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2133 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2136 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2138, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2139, metadata !DIExpression()), !dbg !2140
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2141
  ret ptr %3, !dbg !2142
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2143 {
  %5 = alloca i64, align 8, !DIAssignID !2163
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2157, metadata !DIExpression(), metadata !2163, metadata ptr %5, metadata !DIExpression()), !dbg !2164
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2147, metadata !DIExpression()), !dbg !2165
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2148, metadata !DIExpression()), !dbg !2165
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2149, metadata !DIExpression()), !dbg !2165
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2150, metadata !DIExpression()), !dbg !2165
  %6 = tail call ptr @__errno_location() #40, !dbg !2166
  %7 = load i32, ptr %6, align 4, !dbg !2166, !tbaa !739
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2151, metadata !DIExpression()), !dbg !2165
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2167, !tbaa !718
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2152, metadata !DIExpression()), !dbg !2165
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2153, metadata !DIExpression()), !dbg !2165
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2168
  br i1 %9, label %10, label %11, !dbg !2168

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2170
  unreachable, !dbg !2170

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2171, !tbaa !739
  %13 = icmp sgt i32 %12, %0, !dbg !2172
  br i1 %13, label %32, label %14, !dbg !2173

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2174
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2154, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2164
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2175
  %16 = sext i32 %12 to i64, !dbg !2176
  store i64 %16, ptr %5, align 8, !dbg !2177, !tbaa !2093, !DIAssignID !2178
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2157, metadata !DIExpression(), metadata !2178, metadata ptr %5, metadata !DIExpression()), !dbg !2164
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2179
  %18 = add nuw nsw i32 %0, 1, !dbg !2180
  %19 = sub i32 %18, %12, !dbg !2181
  %20 = sext i32 %19 to i64, !dbg !2182
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2183
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2152, metadata !DIExpression()), !dbg !2165
  store ptr %21, ptr @slotvec, align 8, !dbg !2184, !tbaa !718
  br i1 %15, label %22, label %23, !dbg !2185

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2186, !tbaa.struct !2188
  br label %23, !dbg !2189

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2190, !tbaa !739
  %25 = sext i32 %24 to i64, !dbg !2191
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2191
  %27 = load i64, ptr %5, align 8, !dbg !2192, !tbaa !2093
  %28 = sub nsw i64 %27, %25, !dbg !2193
  %29 = shl i64 %28, 4, !dbg !2194
  call void @llvm.dbg.value(metadata ptr %26, metadata !1566, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i32 0, metadata !1569, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i64 %29, metadata !1570, metadata !DIExpression()), !dbg !2195
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2197
  %30 = load i64, ptr %5, align 8, !dbg !2198, !tbaa !2093
  %31 = trunc i64 %30 to i32, !dbg !2198
  store i32 %31, ptr @nslots, align 4, !dbg !2199, !tbaa !739
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2200
  br label %32, !dbg !2201

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2165
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2152, metadata !DIExpression()), !dbg !2165
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2202
  %36 = load i64, ptr %35, align 8, !dbg !2203, !tbaa !2121
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2158, metadata !DIExpression()), !dbg !2204
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2205
  %38 = load ptr, ptr %37, align 8, !dbg !2205, !tbaa !2109
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2160, metadata !DIExpression()), !dbg !2204
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2206
  %40 = load i32, ptr %39, align 4, !dbg !2206, !tbaa !1402
  %41 = or i32 %40, 1, !dbg !2207
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2161, metadata !DIExpression()), !dbg !2204
  %42 = load i32, ptr %3, align 8, !dbg !2208, !tbaa !1352
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2209
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2210
  %45 = load ptr, ptr %44, align 8, !dbg !2210, !tbaa !1423
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2211
  %47 = load ptr, ptr %46, align 8, !dbg !2211, !tbaa !1426
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2212
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2162, metadata !DIExpression()), !dbg !2204
  %49 = icmp ugt i64 %36, %48, !dbg !2213
  br i1 %49, label %60, label %50, !dbg !2215

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2216
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2158, metadata !DIExpression()), !dbg !2204
  store i64 %51, ptr %35, align 8, !dbg !2218, !tbaa !2121
  %52 = icmp eq ptr %38, @slot0, !dbg !2219
  br i1 %52, label %54, label %53, !dbg !2221

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2222
  br label %54, !dbg !2222

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2223
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2160, metadata !DIExpression()), !dbg !2204
  store ptr %55, ptr %37, align 8, !dbg !2224, !tbaa !2109
  %56 = load i32, ptr %3, align 8, !dbg !2225, !tbaa !1352
  %57 = load ptr, ptr %44, align 8, !dbg !2226, !tbaa !1423
  %58 = load ptr, ptr %46, align 8, !dbg !2227, !tbaa !1426
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2228
  br label %60, !dbg !2229

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2204
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2160, metadata !DIExpression()), !dbg !2204
  store i32 %7, ptr %6, align 4, !dbg !2230, !tbaa !739
  ret ptr %61, !dbg !2231
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2232 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2236, metadata !DIExpression()), !dbg !2239
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2237, metadata !DIExpression()), !dbg !2239
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2238, metadata !DIExpression()), !dbg !2239
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2240
  ret ptr %4, !dbg !2241
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2242 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2244, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 0, metadata !2138, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata ptr %0, metadata !2139, metadata !DIExpression()), !dbg !2246
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2248
  ret ptr %2, !dbg !2249
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2250 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2254, metadata !DIExpression()), !dbg !2256
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2255, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i32 0, metadata !2236, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata ptr %0, metadata !2237, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i64 %1, metadata !2238, metadata !DIExpression()), !dbg !2257
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2259
  ret ptr %3, !dbg !2260
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2261 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2269
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2268, metadata !DIExpression(), metadata !2269, metadata ptr %4, metadata !DIExpression()), !dbg !2270
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2265, metadata !DIExpression()), !dbg !2270
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2266, metadata !DIExpression()), !dbg !2270
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2267, metadata !DIExpression()), !dbg !2270
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2272), !dbg !2275
  call void @llvm.dbg.value(metadata i32 %1, metadata !2276, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2281, metadata !DIExpression()), !dbg !2284
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2284, !alias.scope !2272, !DIAssignID !2285
  call void @llvm.dbg.assign(metadata i8 0, metadata !2268, metadata !DIExpression(), metadata !2285, metadata ptr %4, metadata !DIExpression()), !dbg !2270
  %5 = icmp eq i32 %1, 10, !dbg !2286
  br i1 %5, label %6, label %7, !dbg !2288

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2289, !noalias !2272
  unreachable, !dbg !2289

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2290, !tbaa !1352, !alias.scope !2272, !DIAssignID !2291
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2268, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2291, metadata ptr %4, metadata !DIExpression()), !dbg !2270
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2292
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2293
  ret ptr %8, !dbg !2294
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2295 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2304
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2303, metadata !DIExpression(), metadata !2304, metadata ptr %5, metadata !DIExpression()), !dbg !2305
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2299, metadata !DIExpression()), !dbg !2305
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2300, metadata !DIExpression()), !dbg !2305
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2301, metadata !DIExpression()), !dbg !2305
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2302, metadata !DIExpression()), !dbg !2305
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2306
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2307), !dbg !2310
  call void @llvm.dbg.value(metadata i32 %1, metadata !2276, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2281, metadata !DIExpression()), !dbg !2313
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2313, !alias.scope !2307, !DIAssignID !2314
  call void @llvm.dbg.assign(metadata i8 0, metadata !2303, metadata !DIExpression(), metadata !2314, metadata ptr %5, metadata !DIExpression()), !dbg !2305
  %6 = icmp eq i32 %1, 10, !dbg !2315
  br i1 %6, label %7, label %8, !dbg !2316

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2317, !noalias !2307
  unreachable, !dbg !2317

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2318, !tbaa !1352, !alias.scope !2307, !DIAssignID !2319
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2303, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2319, metadata ptr %5, metadata !DIExpression()), !dbg !2305
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2320
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2321
  ret ptr %9, !dbg !2322
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2323 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2329
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2327, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2328, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2268, metadata !DIExpression(), metadata !2329, metadata ptr %3, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32 0, metadata !2265, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32 %0, metadata !2266, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata ptr %1, metadata !2267, metadata !DIExpression()), !dbg !2331
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2333
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2334), !dbg !2337
  call void @llvm.dbg.value(metadata i32 %0, metadata !2276, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2281, metadata !DIExpression()), !dbg !2340
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2340, !alias.scope !2334, !DIAssignID !2341
  call void @llvm.dbg.assign(metadata i8 0, metadata !2268, metadata !DIExpression(), metadata !2341, metadata ptr %3, metadata !DIExpression()), !dbg !2331
  %4 = icmp eq i32 %0, 10, !dbg !2342
  br i1 %4, label %5, label %6, !dbg !2343

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2344, !noalias !2334
  unreachable, !dbg !2344

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2345, !tbaa !1352, !alias.scope !2334, !DIAssignID !2346
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2268, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2346, metadata ptr %3, metadata !DIExpression()), !dbg !2331
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2347
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2348
  ret ptr %7, !dbg !2349
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2350 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2357
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2354, metadata !DIExpression()), !dbg !2358
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2355, metadata !DIExpression()), !dbg !2358
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2356, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2303, metadata !DIExpression(), metadata !2357, metadata ptr %4, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i32 0, metadata !2299, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i32 %0, metadata !2300, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata ptr %1, metadata !2301, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i64 %2, metadata !2302, metadata !DIExpression()), !dbg !2359
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2361
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2362), !dbg !2365
  call void @llvm.dbg.value(metadata i32 %0, metadata !2276, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2281, metadata !DIExpression()), !dbg !2368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2368, !alias.scope !2362, !DIAssignID !2369
  call void @llvm.dbg.assign(metadata i8 0, metadata !2303, metadata !DIExpression(), metadata !2369, metadata ptr %4, metadata !DIExpression()), !dbg !2359
  %5 = icmp eq i32 %0, 10, !dbg !2370
  br i1 %5, label %6, label %7, !dbg !2371

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2372, !noalias !2362
  unreachable, !dbg !2372

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2373, !tbaa !1352, !alias.scope !2362, !DIAssignID !2374
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2303, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2374, metadata ptr %4, metadata !DIExpression()), !dbg !2359
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2375
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2376
  ret ptr %8, !dbg !2377
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2378 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2386
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2385, metadata !DIExpression(), metadata !2386, metadata ptr %4, metadata !DIExpression()), !dbg !2387
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2382, metadata !DIExpression()), !dbg !2387
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2383, metadata !DIExpression()), !dbg !2387
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2384, metadata !DIExpression()), !dbg !2387
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2389, !tbaa.struct !2390, !DIAssignID !2391
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2385, metadata !DIExpression(), metadata !2391, metadata ptr %4, metadata !DIExpression()), !dbg !2387
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1369, metadata !DIExpression()), !dbg !2392
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1370, metadata !DIExpression()), !dbg !2392
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1371, metadata !DIExpression()), !dbg !2392
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1372, metadata !DIExpression()), !dbg !2392
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2394
  %6 = lshr i8 %2, 5, !dbg !2395
  %7 = zext nneg i8 %6 to i64, !dbg !2395
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2396
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1373, metadata !DIExpression()), !dbg !2392
  %9 = and i8 %2, 31, !dbg !2397
  %10 = zext nneg i8 %9 to i32, !dbg !2397
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1375, metadata !DIExpression()), !dbg !2392
  %11 = load i32, ptr %8, align 4, !dbg !2398, !tbaa !739
  %12 = lshr i32 %11, %10, !dbg !2399
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1376, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2392
  %13 = and i32 %12, 1, !dbg !2400
  %14 = xor i32 %13, 1, !dbg !2400
  %15 = shl nuw i32 %14, %10, !dbg !2401
  %16 = xor i32 %15, %11, !dbg !2402
  store i32 %16, ptr %8, align 4, !dbg !2402, !tbaa !739
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2403
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2404
  ret ptr %17, !dbg !2405
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2406 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2412
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2410, metadata !DIExpression()), !dbg !2413
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2411, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2385, metadata !DIExpression(), metadata !2412, metadata ptr %3, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata ptr %0, metadata !2382, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i64 -1, metadata !2383, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 %1, metadata !2384, metadata !DIExpression()), !dbg !2414
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2417, !tbaa.struct !2390, !DIAssignID !2418
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2385, metadata !DIExpression(), metadata !2418, metadata ptr %3, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata ptr %3, metadata !1369, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8 %1, metadata !1370, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i32 1, metadata !1371, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8 %1, metadata !1372, metadata !DIExpression()), !dbg !2419
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2421
  %5 = lshr i8 %1, 5, !dbg !2422
  %6 = zext nneg i8 %5 to i64, !dbg !2422
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2423
  call void @llvm.dbg.value(metadata ptr %7, metadata !1373, metadata !DIExpression()), !dbg !2419
  %8 = and i8 %1, 31, !dbg !2424
  %9 = zext nneg i8 %8 to i32, !dbg !2424
  call void @llvm.dbg.value(metadata i32 %9, metadata !1375, metadata !DIExpression()), !dbg !2419
  %10 = load i32, ptr %7, align 4, !dbg !2425, !tbaa !739
  %11 = lshr i32 %10, %9, !dbg !2426
  call void @llvm.dbg.value(metadata i32 %11, metadata !1376, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2419
  %12 = and i32 %11, 1, !dbg !2427
  %13 = xor i32 %12, 1, !dbg !2427
  %14 = shl nuw i32 %13, %9, !dbg !2428
  %15 = xor i32 %14, %10, !dbg !2429
  store i32 %15, ptr %7, align 4, !dbg !2429, !tbaa !739
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2430
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2431
  ret ptr %16, !dbg !2432
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2433 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2436
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2435, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata ptr %0, metadata !2410, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i8 58, metadata !2411, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2385, metadata !DIExpression(), metadata !2436, metadata ptr %2, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata ptr %0, metadata !2382, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i64 -1, metadata !2383, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8 58, metadata !2384, metadata !DIExpression()), !dbg !2440
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2443, !tbaa.struct !2390, !DIAssignID !2444
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2385, metadata !DIExpression(), metadata !2444, metadata ptr %2, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata ptr %2, metadata !1369, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 58, metadata !1370, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i32 1, metadata !1371, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 58, metadata !1372, metadata !DIExpression()), !dbg !2445
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2447
  call void @llvm.dbg.value(metadata ptr %3, metadata !1373, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i32 26, metadata !1375, metadata !DIExpression()), !dbg !2445
  %4 = load i32, ptr %3, align 4, !dbg !2448, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %4, metadata !1376, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2445
  %5 = or i32 %4, 67108864, !dbg !2449
  store i32 %5, ptr %3, align 4, !dbg !2449, !tbaa !739
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2450
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2451
  ret ptr %6, !dbg !2452
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2453 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2457
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2455, metadata !DIExpression()), !dbg !2458
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2456, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2385, metadata !DIExpression(), metadata !2457, metadata ptr %3, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata ptr %0, metadata !2382, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i64 %1, metadata !2383, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8 58, metadata !2384, metadata !DIExpression()), !dbg !2459
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2462, !tbaa.struct !2390, !DIAssignID !2463
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2385, metadata !DIExpression(), metadata !2463, metadata ptr %3, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata ptr %3, metadata !1369, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i8 58, metadata !1370, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i32 1, metadata !1371, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i8 58, metadata !1372, metadata !DIExpression()), !dbg !2464
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2466
  call void @llvm.dbg.value(metadata ptr %4, metadata !1373, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i32 26, metadata !1375, metadata !DIExpression()), !dbg !2464
  %5 = load i32, ptr %4, align 4, !dbg !2467, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %5, metadata !1376, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2464
  %6 = or i32 %5, 67108864, !dbg !2468
  store i32 %6, ptr %4, align 4, !dbg !2468, !tbaa !739
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2469
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2470
  ret ptr %7, !dbg !2471
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2472 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2478
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2477, metadata !DIExpression(), metadata !2478, metadata ptr %4, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2281, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2480
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2474, metadata !DIExpression()), !dbg !2479
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2475, metadata !DIExpression()), !dbg !2479
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2476, metadata !DIExpression()), !dbg !2479
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2482
  call void @llvm.dbg.value(metadata i32 %1, metadata !2276, metadata !DIExpression()), !dbg !2483
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2281, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2483
  %5 = icmp eq i32 %1, 10, !dbg !2484
  br i1 %5, label %6, label %7, !dbg !2485

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2486, !noalias !2487
  unreachable, !dbg !2486

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2281, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2483
  store i32 %1, ptr %4, align 8, !dbg !2490, !tbaa.struct !2390, !DIAssignID !2491
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2490
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2490
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2477, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2491, metadata ptr %4, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2477, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2492, metadata ptr %8, metadata !DIExpression()), !dbg !2479
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1369, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1370, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1371, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1372, metadata !DIExpression()), !dbg !2493
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2495
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1373, metadata !DIExpression()), !dbg !2493
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1375, metadata !DIExpression()), !dbg !2493
  %10 = load i32, ptr %9, align 4, !dbg !2496, !tbaa !739
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1376, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2493
  %11 = or i32 %10, 67108864, !dbg !2497
  store i32 %11, ptr %9, align 4, !dbg !2497, !tbaa !739, !DIAssignID !2498
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2477, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2498, metadata ptr %9, metadata !DIExpression()), !dbg !2479
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2499
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2500
  ret ptr %12, !dbg !2501
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2502 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2510
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2506, metadata !DIExpression()), !dbg !2511
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2507, metadata !DIExpression()), !dbg !2511
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2508, metadata !DIExpression()), !dbg !2511
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2509, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2512, metadata !DIExpression(), metadata !2510, metadata ptr %5, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i32 %0, metadata !2517, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata ptr %1, metadata !2518, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata ptr %2, metadata !2519, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata ptr %3, metadata !2520, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i64 -1, metadata !2521, metadata !DIExpression()), !dbg !2522
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2525, !tbaa.struct !2390, !DIAssignID !2526
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2512, metadata !DIExpression(), metadata !2526, metadata ptr %5, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2527, metadata ptr undef, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata ptr %5, metadata !1409, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata ptr %1, metadata !1410, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata ptr %2, metadata !1411, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata ptr %5, metadata !1409, metadata !DIExpression()), !dbg !2528
  store i32 10, ptr %5, align 8, !dbg !2530, !tbaa !1352, !DIAssignID !2531
  call void @llvm.dbg.assign(metadata i32 10, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2531, metadata ptr %5, metadata !DIExpression()), !dbg !2522
  %6 = icmp ne ptr %1, null, !dbg !2532
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2533
  br i1 %8, label %10, label %9, !dbg !2533

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2534
  unreachable, !dbg !2534

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2535
  store ptr %1, ptr %11, align 8, !dbg !2536, !tbaa !1423, !DIAssignID !2537
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2537, metadata ptr %11, metadata !DIExpression()), !dbg !2522
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2538
  store ptr %2, ptr %12, align 8, !dbg !2539, !tbaa !1426, !DIAssignID !2540
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2540, metadata ptr %12, metadata !DIExpression()), !dbg !2522
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2541
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2542
  ret ptr %13, !dbg !2543
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2513 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2544
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2512, metadata !DIExpression(), metadata !2544, metadata ptr %6, metadata !DIExpression()), !dbg !2545
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2517, metadata !DIExpression()), !dbg !2545
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2518, metadata !DIExpression()), !dbg !2545
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2519, metadata !DIExpression()), !dbg !2545
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2520, metadata !DIExpression()), !dbg !2545
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2521, metadata !DIExpression()), !dbg !2545
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2546
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2547, !tbaa.struct !2390, !DIAssignID !2548
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2512, metadata !DIExpression(), metadata !2548, metadata ptr %6, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2549, metadata ptr undef, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata ptr %6, metadata !1409, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata ptr %1, metadata !1410, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata ptr %2, metadata !1411, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata ptr %6, metadata !1409, metadata !DIExpression()), !dbg !2550
  store i32 10, ptr %6, align 8, !dbg !2552, !tbaa !1352, !DIAssignID !2553
  call void @llvm.dbg.assign(metadata i32 10, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2553, metadata ptr %6, metadata !DIExpression()), !dbg !2545
  %7 = icmp ne ptr %1, null, !dbg !2554
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2555
  br i1 %9, label %11, label %10, !dbg !2555

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2556
  unreachable, !dbg !2556

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2557
  store ptr %1, ptr %12, align 8, !dbg !2558, !tbaa !1423, !DIAssignID !2559
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2559, metadata ptr %12, metadata !DIExpression()), !dbg !2545
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2560
  store ptr %2, ptr %13, align 8, !dbg !2561, !tbaa !1426, !DIAssignID !2562
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2562, metadata ptr %13, metadata !DIExpression()), !dbg !2545
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2563
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2564
  ret ptr %14, !dbg !2565
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2566 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2573
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2570, metadata !DIExpression()), !dbg !2574
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2571, metadata !DIExpression()), !dbg !2574
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2572, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i32 0, metadata !2506, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata ptr %0, metadata !2507, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata ptr %1, metadata !2508, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata ptr %2, metadata !2509, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2512, metadata !DIExpression(), metadata !2573, metadata ptr %4, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 0, metadata !2517, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata ptr %0, metadata !2518, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata ptr %1, metadata !2519, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata ptr %2, metadata !2520, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 -1, metadata !2521, metadata !DIExpression()), !dbg !2577
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2580, !tbaa.struct !2390, !DIAssignID !2581
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2512, metadata !DIExpression(), metadata !2581, metadata ptr %4, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2582, metadata ptr undef, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata ptr %4, metadata !1409, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata ptr %0, metadata !1410, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata ptr %1, metadata !1411, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata ptr %4, metadata !1409, metadata !DIExpression()), !dbg !2583
  store i32 10, ptr %4, align 8, !dbg !2585, !tbaa !1352, !DIAssignID !2586
  call void @llvm.dbg.assign(metadata i32 10, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2586, metadata ptr %4, metadata !DIExpression()), !dbg !2577
  %5 = icmp ne ptr %0, null, !dbg !2587
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2588
  br i1 %7, label %9, label %8, !dbg !2588

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2589
  unreachable, !dbg !2589

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2590
  store ptr %0, ptr %10, align 8, !dbg !2591, !tbaa !1423, !DIAssignID !2592
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2592, metadata ptr %10, metadata !DIExpression()), !dbg !2577
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2593
  store ptr %1, ptr %11, align 8, !dbg !2594, !tbaa !1426, !DIAssignID !2595
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2595, metadata ptr %11, metadata !DIExpression()), !dbg !2577
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2596
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2597
  ret ptr %12, !dbg !2598
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2599 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2607
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2603, metadata !DIExpression()), !dbg !2608
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2604, metadata !DIExpression()), !dbg !2608
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2605, metadata !DIExpression()), !dbg !2608
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2606, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2512, metadata !DIExpression(), metadata !2607, metadata ptr %5, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i32 0, metadata !2517, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata ptr %0, metadata !2518, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata ptr %1, metadata !2519, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata ptr %2, metadata !2520, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i64 %3, metadata !2521, metadata !DIExpression()), !dbg !2609
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2612, !tbaa.struct !2390, !DIAssignID !2613
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2512, metadata !DIExpression(), metadata !2613, metadata ptr %5, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2614, metadata ptr undef, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata ptr %5, metadata !1409, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr %0, metadata !1410, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr %1, metadata !1411, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr %5, metadata !1409, metadata !DIExpression()), !dbg !2615
  store i32 10, ptr %5, align 8, !dbg !2617, !tbaa !1352, !DIAssignID !2618
  call void @llvm.dbg.assign(metadata i32 10, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2618, metadata ptr %5, metadata !DIExpression()), !dbg !2609
  %6 = icmp ne ptr %0, null, !dbg !2619
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2620
  br i1 %8, label %10, label %9, !dbg !2620

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2621
  unreachable, !dbg !2621

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2622
  store ptr %0, ptr %11, align 8, !dbg !2623, !tbaa !1423, !DIAssignID !2624
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2624, metadata ptr %11, metadata !DIExpression()), !dbg !2609
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2625
  store ptr %1, ptr %12, align 8, !dbg !2626, !tbaa !1426, !DIAssignID !2627
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2512, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2627, metadata ptr %12, metadata !DIExpression()), !dbg !2609
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2628
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2629
  ret ptr %13, !dbg !2630
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2631 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2635, metadata !DIExpression()), !dbg !2638
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2636, metadata !DIExpression()), !dbg !2638
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2637, metadata !DIExpression()), !dbg !2638
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2639
  ret ptr %4, !dbg !2640
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2641 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2645, metadata !DIExpression()), !dbg !2647
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2646, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i32 0, metadata !2635, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata ptr %0, metadata !2636, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i64 %1, metadata !2637, metadata !DIExpression()), !dbg !2648
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2650
  ret ptr %3, !dbg !2651
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2652 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2656, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2657, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i32 %0, metadata !2635, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata ptr %1, metadata !2636, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i64 -1, metadata !2637, metadata !DIExpression()), !dbg !2659
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2661
  ret ptr %3, !dbg !2662
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2663 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2667, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i32 0, metadata !2656, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata ptr %0, metadata !2657, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i32 0, metadata !2635, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata ptr %0, metadata !2636, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i64 -1, metadata !2637, metadata !DIExpression()), !dbg !2671
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2673
  ret ptr %2, !dbg !2674
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2675 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2714, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2715, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2716, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2717, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2718, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2719, metadata !DIExpression()), !dbg !2720
  %7 = icmp eq ptr %1, null, !dbg !2721
  br i1 %7, label %10, label %8, !dbg !2723

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.67, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2724
  br label %12, !dbg !2724

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.68, ptr noundef %2, ptr noundef %3) #37, !dbg !2725
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.3.70, i32 noundef 5) #37, !dbg !2726
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2726
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %0), !dbg !2727
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.5.72, i32 noundef 5) #37, !dbg !2728
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.73) #37, !dbg !2728
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %0), !dbg !2729
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
  ], !dbg !2730

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.7.74, i32 noundef 5) #37, !dbg !2731
  %21 = load ptr, ptr %4, align 8, !dbg !2731, !tbaa !718
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2731
  br label %147, !dbg !2733

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.8.75, i32 noundef 5) #37, !dbg !2734
  %25 = load ptr, ptr %4, align 8, !dbg !2734, !tbaa !718
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2734
  %27 = load ptr, ptr %26, align 8, !dbg !2734, !tbaa !718
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2734
  br label %147, !dbg !2735

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.9.76, i32 noundef 5) #37, !dbg !2736
  %31 = load ptr, ptr %4, align 8, !dbg !2736, !tbaa !718
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2736
  %33 = load ptr, ptr %32, align 8, !dbg !2736, !tbaa !718
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2736
  %35 = load ptr, ptr %34, align 8, !dbg !2736, !tbaa !718
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2736
  br label %147, !dbg !2737

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.10.77, i32 noundef 5) #37, !dbg !2738
  %39 = load ptr, ptr %4, align 8, !dbg !2738, !tbaa !718
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2738
  %41 = load ptr, ptr %40, align 8, !dbg !2738, !tbaa !718
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2738
  %43 = load ptr, ptr %42, align 8, !dbg !2738, !tbaa !718
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2738
  %45 = load ptr, ptr %44, align 8, !dbg !2738, !tbaa !718
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2738
  br label %147, !dbg !2739

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.11.78, i32 noundef 5) #37, !dbg !2740
  %49 = load ptr, ptr %4, align 8, !dbg !2740, !tbaa !718
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2740
  %51 = load ptr, ptr %50, align 8, !dbg !2740, !tbaa !718
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2740
  %53 = load ptr, ptr %52, align 8, !dbg !2740, !tbaa !718
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2740
  %55 = load ptr, ptr %54, align 8, !dbg !2740, !tbaa !718
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2740
  %57 = load ptr, ptr %56, align 8, !dbg !2740, !tbaa !718
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2740
  br label %147, !dbg !2741

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.12.79, i32 noundef 5) #37, !dbg !2742
  %61 = load ptr, ptr %4, align 8, !dbg !2742, !tbaa !718
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2742
  %63 = load ptr, ptr %62, align 8, !dbg !2742, !tbaa !718
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2742
  %65 = load ptr, ptr %64, align 8, !dbg !2742, !tbaa !718
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2742
  %67 = load ptr, ptr %66, align 8, !dbg !2742, !tbaa !718
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2742
  %69 = load ptr, ptr %68, align 8, !dbg !2742, !tbaa !718
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2742
  %71 = load ptr, ptr %70, align 8, !dbg !2742, !tbaa !718
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2742
  br label %147, !dbg !2743

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.13.80, i32 noundef 5) #37, !dbg !2744
  %75 = load ptr, ptr %4, align 8, !dbg !2744, !tbaa !718
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2744
  %77 = load ptr, ptr %76, align 8, !dbg !2744, !tbaa !718
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2744
  %79 = load ptr, ptr %78, align 8, !dbg !2744, !tbaa !718
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2744
  %81 = load ptr, ptr %80, align 8, !dbg !2744, !tbaa !718
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2744
  %83 = load ptr, ptr %82, align 8, !dbg !2744, !tbaa !718
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2744
  %85 = load ptr, ptr %84, align 8, !dbg !2744, !tbaa !718
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2744
  %87 = load ptr, ptr %86, align 8, !dbg !2744, !tbaa !718
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2744
  br label %147, !dbg !2745

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.14.81, i32 noundef 5) #37, !dbg !2746
  %91 = load ptr, ptr %4, align 8, !dbg !2746, !tbaa !718
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2746
  %93 = load ptr, ptr %92, align 8, !dbg !2746, !tbaa !718
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2746
  %95 = load ptr, ptr %94, align 8, !dbg !2746, !tbaa !718
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2746
  %97 = load ptr, ptr %96, align 8, !dbg !2746, !tbaa !718
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2746
  %99 = load ptr, ptr %98, align 8, !dbg !2746, !tbaa !718
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2746
  %101 = load ptr, ptr %100, align 8, !dbg !2746, !tbaa !718
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2746
  %103 = load ptr, ptr %102, align 8, !dbg !2746, !tbaa !718
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2746
  %105 = load ptr, ptr %104, align 8, !dbg !2746, !tbaa !718
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2746
  br label %147, !dbg !2747

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.15.82, i32 noundef 5) #37, !dbg !2748
  %109 = load ptr, ptr %4, align 8, !dbg !2748, !tbaa !718
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2748
  %111 = load ptr, ptr %110, align 8, !dbg !2748, !tbaa !718
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2748
  %113 = load ptr, ptr %112, align 8, !dbg !2748, !tbaa !718
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2748
  %115 = load ptr, ptr %114, align 8, !dbg !2748, !tbaa !718
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2748
  %117 = load ptr, ptr %116, align 8, !dbg !2748, !tbaa !718
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2748
  %119 = load ptr, ptr %118, align 8, !dbg !2748, !tbaa !718
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2748
  %121 = load ptr, ptr %120, align 8, !dbg !2748, !tbaa !718
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2748
  %123 = load ptr, ptr %122, align 8, !dbg !2748, !tbaa !718
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2748
  %125 = load ptr, ptr %124, align 8, !dbg !2748, !tbaa !718
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2748
  br label %147, !dbg !2749

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.16.83, i32 noundef 5) #37, !dbg !2750
  %129 = load ptr, ptr %4, align 8, !dbg !2750, !tbaa !718
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2750
  %131 = load ptr, ptr %130, align 8, !dbg !2750, !tbaa !718
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2750
  %133 = load ptr, ptr %132, align 8, !dbg !2750, !tbaa !718
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2750
  %135 = load ptr, ptr %134, align 8, !dbg !2750, !tbaa !718
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2750
  %137 = load ptr, ptr %136, align 8, !dbg !2750, !tbaa !718
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2750
  %139 = load ptr, ptr %138, align 8, !dbg !2750, !tbaa !718
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2750
  %141 = load ptr, ptr %140, align 8, !dbg !2750, !tbaa !718
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2750
  %143 = load ptr, ptr %142, align 8, !dbg !2750, !tbaa !718
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2750
  %145 = load ptr, ptr %144, align 8, !dbg !2750, !tbaa !718
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2750
  br label %147, !dbg !2751

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2752
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2753 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2757, metadata !DIExpression()), !dbg !2763
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2758, metadata !DIExpression()), !dbg !2763
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2759, metadata !DIExpression()), !dbg !2763
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2760, metadata !DIExpression()), !dbg !2763
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2761, metadata !DIExpression()), !dbg !2763
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2762, metadata !DIExpression()), !dbg !2763
  br label %6, !dbg !2764

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2766
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2762, metadata !DIExpression()), !dbg !2763
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2767
  %9 = load ptr, ptr %8, align 8, !dbg !2767, !tbaa !718
  %10 = icmp eq ptr %9, null, !dbg !2769
  %11 = add i64 %7, 1, !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2762, metadata !DIExpression()), !dbg !2763
  br i1 %10, label %12, label %6, !dbg !2769, !llvm.loop !2771

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2773
  ret void, !dbg !2774
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2775 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !2794
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2792, metadata !DIExpression(), metadata !2794, metadata ptr %6, metadata !DIExpression()), !dbg !2795
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2786, metadata !DIExpression()), !dbg !2795
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2787, metadata !DIExpression()), !dbg !2795
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2788, metadata !DIExpression()), !dbg !2795
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2789, metadata !DIExpression()), !dbg !2795
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2790, metadata !DIExpression()), !dbg !2795
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !2796
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2791, metadata !DIExpression()), !dbg !2795
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2791, metadata !DIExpression()), !dbg !2795
  %10 = icmp ult i32 %9, 41, !dbg !2797
  br i1 %10, label %11, label %16, !dbg !2797

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2797
  %13 = zext nneg i32 %9 to i64, !dbg !2797
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2797
  %15 = add nuw nsw i32 %9, 8, !dbg !2797
  store i32 %15, ptr %4, align 8, !dbg !2797
  br label %19, !dbg !2797

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2797
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2797
  store ptr %18, ptr %7, align 8, !dbg !2797
  br label %19, !dbg !2797

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2797
  %22 = load ptr, ptr %21, align 8, !dbg !2797
  store ptr %22, ptr %6, align 16, !dbg !2800, !tbaa !718
  %23 = icmp eq ptr %22, null, !dbg !2801
  br i1 %23, label %128, label %24, !dbg !2802

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2791, metadata !DIExpression()), !dbg !2795
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2791, metadata !DIExpression()), !dbg !2795
  %25 = icmp ult i32 %20, 41, !dbg !2797
  br i1 %25, label %29, label %26, !dbg !2797

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2797
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2797
  store ptr %28, ptr %7, align 8, !dbg !2797
  br label %34, !dbg !2797

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2797
  %31 = zext nneg i32 %20 to i64, !dbg !2797
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2797
  %33 = add nuw nsw i32 %20, 8, !dbg !2797
  store i32 %33, ptr %4, align 8, !dbg !2797
  br label %34, !dbg !2797

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2797
  %37 = load ptr, ptr %36, align 8, !dbg !2797
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2803
  store ptr %37, ptr %38, align 8, !dbg !2800, !tbaa !718
  %39 = icmp eq ptr %37, null, !dbg !2801
  br i1 %39, label %128, label %40, !dbg !2802

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2791, metadata !DIExpression()), !dbg !2795
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2791, metadata !DIExpression()), !dbg !2795
  %41 = icmp ult i32 %35, 41, !dbg !2797
  br i1 %41, label %45, label %42, !dbg !2797

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2797
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2797
  store ptr %44, ptr %7, align 8, !dbg !2797
  br label %50, !dbg !2797

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2797
  %47 = zext nneg i32 %35 to i64, !dbg !2797
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2797
  %49 = add nuw nsw i32 %35, 8, !dbg !2797
  store i32 %49, ptr %4, align 8, !dbg !2797
  br label %50, !dbg !2797

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2797
  %53 = load ptr, ptr %52, align 8, !dbg !2797
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2803
  store ptr %53, ptr %54, align 16, !dbg !2800, !tbaa !718
  %55 = icmp eq ptr %53, null, !dbg !2801
  br i1 %55, label %128, label %56, !dbg !2802

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2791, metadata !DIExpression()), !dbg !2795
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2791, metadata !DIExpression()), !dbg !2795
  %57 = icmp ult i32 %51, 41, !dbg !2797
  br i1 %57, label %61, label %58, !dbg !2797

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2797
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2797
  store ptr %60, ptr %7, align 8, !dbg !2797
  br label %66, !dbg !2797

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2797
  %63 = zext nneg i32 %51 to i64, !dbg !2797
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2797
  %65 = add nuw nsw i32 %51, 8, !dbg !2797
  store i32 %65, ptr %4, align 8, !dbg !2797
  br label %66, !dbg !2797

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2797
  %69 = load ptr, ptr %68, align 8, !dbg !2797
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2803
  store ptr %69, ptr %70, align 8, !dbg !2800, !tbaa !718
  %71 = icmp eq ptr %69, null, !dbg !2801
  br i1 %71, label %128, label %72, !dbg !2802

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2791, metadata !DIExpression()), !dbg !2795
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2791, metadata !DIExpression()), !dbg !2795
  %73 = icmp ult i32 %67, 41, !dbg !2797
  br i1 %73, label %77, label %74, !dbg !2797

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2797
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2797
  store ptr %76, ptr %7, align 8, !dbg !2797
  br label %82, !dbg !2797

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2797
  %79 = zext nneg i32 %67 to i64, !dbg !2797
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2797
  %81 = add nuw nsw i32 %67, 8, !dbg !2797
  store i32 %81, ptr %4, align 8, !dbg !2797
  br label %82, !dbg !2797

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2797
  %85 = load ptr, ptr %84, align 8, !dbg !2797
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2803
  store ptr %85, ptr %86, align 16, !dbg !2800, !tbaa !718
  %87 = icmp eq ptr %85, null, !dbg !2801
  br i1 %87, label %128, label %88, !dbg !2802

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2791, metadata !DIExpression()), !dbg !2795
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2791, metadata !DIExpression()), !dbg !2795
  %89 = icmp ult i32 %83, 41, !dbg !2797
  br i1 %89, label %93, label %90, !dbg !2797

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2797
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2797
  store ptr %92, ptr %7, align 8, !dbg !2797
  br label %98, !dbg !2797

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2797
  %95 = zext nneg i32 %83 to i64, !dbg !2797
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2797
  %97 = add nuw nsw i32 %83, 8, !dbg !2797
  store i32 %97, ptr %4, align 8, !dbg !2797
  br label %98, !dbg !2797

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2797
  %100 = load ptr, ptr %99, align 8, !dbg !2797
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2803
  store ptr %100, ptr %101, align 8, !dbg !2800, !tbaa !718
  %102 = icmp eq ptr %100, null, !dbg !2801
  br i1 %102, label %128, label %103, !dbg !2802

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2791, metadata !DIExpression()), !dbg !2795
  %104 = load ptr, ptr %7, align 8, !dbg !2797
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2797
  store ptr %105, ptr %7, align 8, !dbg !2797
  %106 = load ptr, ptr %104, align 8, !dbg !2797
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2803
  store ptr %106, ptr %107, align 16, !dbg !2800, !tbaa !718
  %108 = icmp eq ptr %106, null, !dbg !2801
  br i1 %108, label %128, label %109, !dbg !2802

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2791, metadata !DIExpression()), !dbg !2795
  %110 = load ptr, ptr %7, align 8, !dbg !2797
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2797
  store ptr %111, ptr %7, align 8, !dbg !2797
  %112 = load ptr, ptr %110, align 8, !dbg !2797
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2803
  store ptr %112, ptr %113, align 8, !dbg !2800, !tbaa !718
  %114 = icmp eq ptr %112, null, !dbg !2801
  br i1 %114, label %128, label %115, !dbg !2802

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2791, metadata !DIExpression()), !dbg !2795
  %116 = load ptr, ptr %7, align 8, !dbg !2797
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2797
  store ptr %117, ptr %7, align 8, !dbg !2797
  %118 = load ptr, ptr %116, align 8, !dbg !2797
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2803
  store ptr %118, ptr %119, align 16, !dbg !2800, !tbaa !718
  %120 = icmp eq ptr %118, null, !dbg !2801
  br i1 %120, label %128, label %121, !dbg !2802

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2791, metadata !DIExpression()), !dbg !2795
  %122 = load ptr, ptr %7, align 8, !dbg !2797
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2797
  store ptr %123, ptr %7, align 8, !dbg !2797
  %124 = load ptr, ptr %122, align 8, !dbg !2797
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2803
  store ptr %124, ptr %125, align 8, !dbg !2800, !tbaa !718
  %126 = icmp eq ptr %124, null, !dbg !2801
  %127 = select i1 %126, i64 9, i64 10, !dbg !2802
  br label %128, !dbg !2802

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2804
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2805
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !2806
  ret void, !dbg !2806
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2807 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2820
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2815, metadata !DIExpression(), metadata !2820, metadata ptr %5, metadata !DIExpression()), !dbg !2821
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2811, metadata !DIExpression()), !dbg !2821
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2812, metadata !DIExpression()), !dbg !2821
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2813, metadata !DIExpression()), !dbg !2821
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2814, metadata !DIExpression()), !dbg !2821
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !2822
  call void @llvm.va_start(ptr nonnull %5), !dbg !2823
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2824
  call void @llvm.va_end(ptr nonnull %5), !dbg !2825
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !2826
  ret void, !dbg !2826
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2827 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2828, !tbaa !718
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %1), !dbg !2828
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.17.88, i32 noundef 5) #37, !dbg !2829
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.89) #37, !dbg !2829
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.19, i32 noundef 5) #37, !dbg !2830
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21.90) #37, !dbg !2830
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !2831
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !2831
  ret void, !dbg !2832
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2833 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2838, metadata !DIExpression()), !dbg !2841
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2839, metadata !DIExpression()), !dbg !2841
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2840, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata ptr %0, metadata !2842, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 %1, metadata !2845, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 %2, metadata !2846, metadata !DIExpression()), !dbg !2847
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2849
  call void @llvm.dbg.value(metadata ptr %4, metadata !2850, metadata !DIExpression()), !dbg !2855
  %5 = icmp eq ptr %4, null, !dbg !2857
  br i1 %5, label %6, label %7, !dbg !2859

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2860
  unreachable, !dbg !2860

7:                                                ; preds = %3
  ret ptr %4, !dbg !2861
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2843 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2842, metadata !DIExpression()), !dbg !2862
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2845, metadata !DIExpression()), !dbg !2862
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2846, metadata !DIExpression()), !dbg !2862
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2863
  call void @llvm.dbg.value(metadata ptr %4, metadata !2850, metadata !DIExpression()), !dbg !2864
  %5 = icmp eq ptr %4, null, !dbg !2866
  br i1 %5, label %6, label %7, !dbg !2867

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2868
  unreachable, !dbg !2868

7:                                                ; preds = %3
  ret ptr %4, !dbg !2869
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2870 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2874, metadata !DIExpression()), !dbg !2875
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2876
  call void @llvm.dbg.value(metadata ptr %2, metadata !2850, metadata !DIExpression()), !dbg !2877
  %3 = icmp eq ptr %2, null, !dbg !2879
  br i1 %3, label %4, label %5, !dbg !2880

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2881
  unreachable, !dbg !2881

5:                                                ; preds = %1
  ret ptr %2, !dbg !2882
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2883 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2884 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2888, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i64 %0, metadata !2890, metadata !DIExpression()), !dbg !2894
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2896
  call void @llvm.dbg.value(metadata ptr %2, metadata !2850, metadata !DIExpression()), !dbg !2897
  %3 = icmp eq ptr %2, null, !dbg !2899
  br i1 %3, label %4, label %5, !dbg !2900

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2901
  unreachable, !dbg !2901

5:                                                ; preds = %1
  ret ptr %2, !dbg !2902
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2903 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2907, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i64 %0, metadata !2874, metadata !DIExpression()), !dbg !2909
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2911
  call void @llvm.dbg.value(metadata ptr %2, metadata !2850, metadata !DIExpression()), !dbg !2912
  %3 = icmp eq ptr %2, null, !dbg !2914
  br i1 %3, label %4, label %5, !dbg !2915

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2916
  unreachable, !dbg !2916

5:                                                ; preds = %1
  ret ptr %2, !dbg !2917
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2918 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2922, metadata !DIExpression()), !dbg !2924
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2923, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata ptr %0, metadata !2925, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %1, metadata !2929, metadata !DIExpression()), !dbg !2930
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !2932
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !2933
  call void @llvm.dbg.value(metadata ptr %4, metadata !2850, metadata !DIExpression()), !dbg !2934
  %5 = icmp eq ptr %4, null, !dbg !2936
  br i1 %5, label %6, label %7, !dbg !2937

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !2938
  unreachable, !dbg !2938

7:                                                ; preds = %2
  ret ptr %4, !dbg !2939
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2940 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2941 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2945, metadata !DIExpression()), !dbg !2947
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2946, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata ptr %0, metadata !2948, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i64 %1, metadata !2951, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata ptr %0, metadata !2925, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i64 %1, metadata !2929, metadata !DIExpression()), !dbg !2954
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !2956
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !2957
  call void @llvm.dbg.value(metadata ptr %4, metadata !2850, metadata !DIExpression()), !dbg !2958
  %5 = icmp eq ptr %4, null, !dbg !2960
  br i1 %5, label %6, label %7, !dbg !2961

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !2962
  unreachable, !dbg !2962

7:                                                ; preds = %2
  ret ptr %4, !dbg !2963
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2964 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2968, metadata !DIExpression()), !dbg !2971
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2969, metadata !DIExpression()), !dbg !2971
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2970, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata ptr %0, metadata !2972, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %1, metadata !2975, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %2, metadata !2976, metadata !DIExpression()), !dbg !2977
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2979
  call void @llvm.dbg.value(metadata ptr %4, metadata !2850, metadata !DIExpression()), !dbg !2980
  %5 = icmp eq ptr %4, null, !dbg !2982
  br i1 %5, label %6, label %7, !dbg !2983

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2984
  unreachable, !dbg !2984

7:                                                ; preds = %3
  ret ptr %4, !dbg !2985
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !2986 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2990, metadata !DIExpression()), !dbg !2992
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2991, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr null, metadata !2842, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i64 %0, metadata !2845, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i64 %1, metadata !2846, metadata !DIExpression()), !dbg !2993
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !2995
  call void @llvm.dbg.value(metadata ptr %3, metadata !2850, metadata !DIExpression()), !dbg !2996
  %4 = icmp eq ptr %3, null, !dbg !2998
  br i1 %4, label %5, label %6, !dbg !2999

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3000
  unreachable, !dbg !3000

6:                                                ; preds = %2
  ret ptr %3, !dbg !3001
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3002 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3006, metadata !DIExpression()), !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3007, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata ptr null, metadata !2968, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i64 %0, metadata !2969, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i64 %1, metadata !2970, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata ptr null, metadata !2972, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i64 %0, metadata !2975, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i64 %1, metadata !2976, metadata !DIExpression()), !dbg !3011
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3013
  call void @llvm.dbg.value(metadata ptr %3, metadata !2850, metadata !DIExpression()), !dbg !3014
  %4 = icmp eq ptr %3, null, !dbg !3016
  br i1 %4, label %5, label %6, !dbg !3017

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3018
  unreachable, !dbg !3018

6:                                                ; preds = %2
  ret ptr %3, !dbg !3019
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3020 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3024, metadata !DIExpression()), !dbg !3026
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3025, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata ptr %0, metadata !657, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata ptr %1, metadata !658, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 1, metadata !659, metadata !DIExpression()), !dbg !3027
  %3 = load i64, ptr %1, align 8, !dbg !3029, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 %3, metadata !660, metadata !DIExpression()), !dbg !3027
  %4 = icmp eq ptr %0, null, !dbg !3030
  br i1 %4, label %5, label %8, !dbg !3032

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3033
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3036
  br label %15, !dbg !3036

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3037
  %10 = add nuw i64 %9, 1, !dbg !3037
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3037
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3037
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3037
  call void @llvm.dbg.value(metadata i64 %13, metadata !660, metadata !DIExpression()), !dbg !3027
  br i1 %12, label %14, label %15, !dbg !3040

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3041
  unreachable, !dbg !3041

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3027
  call void @llvm.dbg.value(metadata i64 %16, metadata !660, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata ptr %0, metadata !2842, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64 %16, metadata !2845, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64 1, metadata !2846, metadata !DIExpression()), !dbg !3042
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3044
  call void @llvm.dbg.value(metadata ptr %17, metadata !2850, metadata !DIExpression()), !dbg !3045
  %18 = icmp eq ptr %17, null, !dbg !3047
  br i1 %18, label %19, label %20, !dbg !3048

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3049
  unreachable, !dbg !3049

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !657, metadata !DIExpression()), !dbg !3027
  store i64 %16, ptr %1, align 8, !dbg !3050, !tbaa !2093
  ret ptr %17, !dbg !3051
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !652 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !657, metadata !DIExpression()), !dbg !3052
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !658, metadata !DIExpression()), !dbg !3052
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !659, metadata !DIExpression()), !dbg !3052
  %4 = load i64, ptr %1, align 8, !dbg !3053, !tbaa !2093
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !660, metadata !DIExpression()), !dbg !3052
  %5 = icmp eq ptr %0, null, !dbg !3054
  br i1 %5, label %6, label %13, !dbg !3055

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3056
  br i1 %7, label %8, label %20, !dbg !3057

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !660, metadata !DIExpression()), !dbg !3052
  %10 = icmp ugt i64 %2, 128, !dbg !3060
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3061
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !660, metadata !DIExpression()), !dbg !3052
  br label %20, !dbg !3062

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3063
  %15 = add nuw i64 %14, 1, !dbg !3063
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3063
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3063
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !660, metadata !DIExpression()), !dbg !3052
  br i1 %17, label %19, label %20, !dbg !3064

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3065
  unreachable, !dbg !3065

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3052
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !660, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata ptr %0, metadata !2842, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64 %21, metadata !2845, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64 %2, metadata !2846, metadata !DIExpression()), !dbg !3066
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3068
  call void @llvm.dbg.value(metadata ptr %22, metadata !2850, metadata !DIExpression()), !dbg !3069
  %23 = icmp eq ptr %22, null, !dbg !3071
  br i1 %23, label %24, label %25, !dbg !3072

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3073
  unreachable, !dbg !3073

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !657, metadata !DIExpression()), !dbg !3052
  store i64 %21, ptr %1, align 8, !dbg !3074, !tbaa !2093
  ret ptr %22, !dbg !3075
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !664 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !673, metadata !DIExpression()), !dbg !3076
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !674, metadata !DIExpression()), !dbg !3076
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !675, metadata !DIExpression()), !dbg !3076
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !676, metadata !DIExpression()), !dbg !3076
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !677, metadata !DIExpression()), !dbg !3076
  %6 = load i64, ptr %1, align 8, !dbg !3077, !tbaa !2093
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !678, metadata !DIExpression()), !dbg !3076
  %7 = ashr i64 %6, 1, !dbg !3078
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3078
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3078
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3078
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !679, metadata !DIExpression()), !dbg !3076
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3080
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !679, metadata !DIExpression()), !dbg !3076
  %12 = icmp sgt i64 %3, -1, !dbg !3081
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3083
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3083
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !679, metadata !DIExpression()), !dbg !3076
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3084
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3084
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3084
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !680, metadata !DIExpression()), !dbg !3076
  %18 = icmp slt i64 %17, 128, !dbg !3084
  %19 = select i1 %18, i64 128, i64 0, !dbg !3084
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3084
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !681, metadata !DIExpression()), !dbg !3076
  %21 = icmp eq i64 %20, 0, !dbg !3085
  br i1 %21, label %26, label %22, !dbg !3087

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3088
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !679, metadata !DIExpression()), !dbg !3076
  %24 = srem i64 %20, %4, !dbg !3090
  %25 = sub nsw i64 %20, %24, !dbg !3091
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !680, metadata !DIExpression()), !dbg !3076
  br label %26, !dbg !3092

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3076
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3076
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !680, metadata !DIExpression()), !dbg !3076
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !679, metadata !DIExpression()), !dbg !3076
  %29 = icmp eq ptr %0, null, !dbg !3093
  br i1 %29, label %30, label %31, !dbg !3095

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3096, !tbaa !2093
  br label %31, !dbg !3097

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3098
  %33 = icmp slt i64 %32, %2, !dbg !3100
  br i1 %33, label %34, label %46, !dbg !3101

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3102
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3102
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3102
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !679, metadata !DIExpression()), !dbg !3076
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3103
  br i1 %40, label %45, label %41, !dbg !3103

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3104
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3104
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3104
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !680, metadata !DIExpression()), !dbg !3076
  br i1 %43, label %45, label %46, !dbg !3105

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #38, !dbg !3106
  unreachable, !dbg !3106

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3076
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3076
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !680, metadata !DIExpression()), !dbg !3076
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !679, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata ptr %0, metadata !2922, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i64 %48, metadata !2923, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata ptr %0, metadata !2925, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 %48, metadata !2929, metadata !DIExpression()), !dbg !3109
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3111
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #43, !dbg !3112
  call void @llvm.dbg.value(metadata ptr %50, metadata !2850, metadata !DIExpression()), !dbg !3113
  %51 = icmp eq ptr %50, null, !dbg !3115
  br i1 %51, label %52, label %53, !dbg !3116

52:                                               ; preds = %46
  tail call void @xalloc_die() #38, !dbg !3117
  unreachable, !dbg !3117

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !673, metadata !DIExpression()), !dbg !3076
  store i64 %47, ptr %1, align 8, !dbg !3118, !tbaa !2093
  ret ptr %50, !dbg !3119
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3120 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3122, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i64 %0, metadata !3124, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 1, metadata !3127, metadata !DIExpression()), !dbg !3128
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3130
  call void @llvm.dbg.value(metadata ptr %2, metadata !2850, metadata !DIExpression()), !dbg !3131
  %3 = icmp eq ptr %2, null, !dbg !3133
  br i1 %3, label %4, label %5, !dbg !3134

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3135
  unreachable, !dbg !3135

5:                                                ; preds = %1
  ret ptr %2, !dbg !3136
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3137 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3125 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3124, metadata !DIExpression()), !dbg !3138
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3127, metadata !DIExpression()), !dbg !3138
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3139
  call void @llvm.dbg.value(metadata ptr %3, metadata !2850, metadata !DIExpression()), !dbg !3140
  %4 = icmp eq ptr %3, null, !dbg !3142
  br i1 %4, label %5, label %6, !dbg !3143

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3144
  unreachable, !dbg !3144

6:                                                ; preds = %2
  ret ptr %3, !dbg !3145
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3146 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3148, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i64 %0, metadata !3150, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i64 1, metadata !3153, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i64 %0, metadata !3156, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 1, metadata !3159, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 %0, metadata !3156, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 1, metadata !3159, metadata !DIExpression()), !dbg !3160
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3162
  call void @llvm.dbg.value(metadata ptr %2, metadata !2850, metadata !DIExpression()), !dbg !3163
  %3 = icmp eq ptr %2, null, !dbg !3165
  br i1 %3, label %4, label %5, !dbg !3166

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3167
  unreachable, !dbg !3167

5:                                                ; preds = %1
  ret ptr %2, !dbg !3168
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3151 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3150, metadata !DIExpression()), !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3153, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i64 %0, metadata !3156, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 %1, metadata !3159, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 %0, metadata !3156, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 %1, metadata !3159, metadata !DIExpression()), !dbg !3170
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3172
  call void @llvm.dbg.value(metadata ptr %3, metadata !2850, metadata !DIExpression()), !dbg !3173
  %4 = icmp eq ptr %3, null, !dbg !3175
  br i1 %4, label %5, label %6, !dbg !3176

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3177
  unreachable, !dbg !3177

6:                                                ; preds = %2
  ret ptr %3, !dbg !3178
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3179 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3183, metadata !DIExpression()), !dbg !3185
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3184, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %1, metadata !2874, metadata !DIExpression()), !dbg !3186
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3188
  call void @llvm.dbg.value(metadata ptr %3, metadata !2850, metadata !DIExpression()), !dbg !3189
  %4 = icmp eq ptr %3, null, !dbg !3191
  br i1 %4, label %5, label %6, !dbg !3192

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3193
  unreachable, !dbg !3193

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3194, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata ptr %0, metadata !3200, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i64 %1, metadata !3201, metadata !DIExpression()), !dbg !3202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3204
  ret ptr %3, !dbg !3205
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3206 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3210, metadata !DIExpression()), !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3211, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %1, metadata !2888, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %1, metadata !2890, metadata !DIExpression()), !dbg !3215
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3217
  call void @llvm.dbg.value(metadata ptr %3, metadata !2850, metadata !DIExpression()), !dbg !3218
  %4 = icmp eq ptr %3, null, !dbg !3220
  br i1 %4, label %5, label %6, !dbg !3221

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3222
  unreachable, !dbg !3222

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3194, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata ptr %0, metadata !3200, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 %1, metadata !3201, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3225
  ret ptr %3, !dbg !3226
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3227 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3231, metadata !DIExpression()), !dbg !3234
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3232, metadata !DIExpression()), !dbg !3234
  %3 = add nsw i64 %1, 1, !dbg !3235
  call void @llvm.dbg.value(metadata i64 %3, metadata !2888, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i64 %3, metadata !2890, metadata !DIExpression()), !dbg !3238
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3240
  call void @llvm.dbg.value(metadata ptr %4, metadata !2850, metadata !DIExpression()), !dbg !3241
  %5 = icmp eq ptr %4, null, !dbg !3243
  br i1 %5, label %6, label %7, !dbg !3244

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3245
  unreachable, !dbg !3245

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3233, metadata !DIExpression()), !dbg !3234
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3246
  store i8 0, ptr %8, align 1, !dbg !3247, !tbaa !748
  call void @llvm.dbg.value(metadata ptr %4, metadata !3194, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata ptr %0, metadata !3200, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i64 %1, metadata !3201, metadata !DIExpression()), !dbg !3248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3250
  ret ptr %4, !dbg !3251
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3252 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3254, metadata !DIExpression()), !dbg !3255
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3256
  %3 = add i64 %2, 1, !dbg !3257
  call void @llvm.dbg.value(metadata ptr %0, metadata !3183, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %3, metadata !3184, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %3, metadata !2874, metadata !DIExpression()), !dbg !3260
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3262
  call void @llvm.dbg.value(metadata ptr %4, metadata !2850, metadata !DIExpression()), !dbg !3263
  %5 = icmp eq ptr %4, null, !dbg !3265
  br i1 %5, label %6, label %7, !dbg !3266

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3267
  unreachable, !dbg !3267

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3194, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata ptr %0, metadata !3200, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i64 %3, metadata !3201, metadata !DIExpression()), !dbg !3268
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3270
  ret ptr %4, !dbg !3271
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3272 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3277, !tbaa !739
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3274, metadata !DIExpression()), !dbg !3278
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.101, ptr noundef nonnull @.str.2.102, i32 noundef 5) #37, !dbg !3277
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.103, ptr noundef %2) #37, !dbg !3277
  %3 = icmp eq i32 %1, 0, !dbg !3277
  tail call void @llvm.assume(i1 %3), !dbg !3277
  tail call void @abort() #38, !dbg !3279
  unreachable, !dbg !3279
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3280 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3318, metadata !DIExpression()), !dbg !3323
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3324
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3319, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3323
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3325, metadata !DIExpression()), !dbg !3328
  %3 = load i32, ptr %0, align 8, !dbg !3330, !tbaa !3331
  %4 = and i32 %3, 32, !dbg !3332
  %5 = icmp eq i32 %4, 0, !dbg !3332
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3321, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3323
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3333
  %7 = icmp eq i32 %6, 0, !dbg !3334
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3322, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3323
  br i1 %5, label %8, label %18, !dbg !3335

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3337
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3319, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3323
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3338
  %11 = xor i1 %7, true, !dbg !3338
  %12 = sext i1 %11 to i32, !dbg !3338
  br i1 %10, label %21, label %13, !dbg !3338

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3339
  %15 = load i32, ptr %14, align 4, !dbg !3339, !tbaa !739
  %16 = icmp ne i32 %15, 9, !dbg !3340
  %17 = sext i1 %16 to i32, !dbg !3341
  br label %21, !dbg !3341

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3342

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3344
  store i32 0, ptr %20, align 4, !dbg !3346, !tbaa !739
  br label %21, !dbg !3344

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3323
  ret i32 %22, !dbg !3347
}

; Function Attrs: nounwind
declare !dbg !3348 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3352 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3390, metadata !DIExpression()), !dbg !3394
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3391, metadata !DIExpression()), !dbg !3394
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3395
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3392, metadata !DIExpression()), !dbg !3394
  %3 = icmp slt i32 %2, 0, !dbg !3396
  br i1 %3, label %4, label %6, !dbg !3398

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3399
  br label %24, !dbg !3400

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3401
  %8 = icmp eq i32 %7, 0, !dbg !3401
  br i1 %8, label %13, label %9, !dbg !3403

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3404
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3405
  %12 = icmp eq i64 %11, -1, !dbg !3406
  br i1 %12, label %16, label %13, !dbg !3407

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3408
  %15 = icmp eq i32 %14, 0, !dbg !3408
  br i1 %15, label %16, label %18, !dbg !3409

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3391, metadata !DIExpression()), !dbg !3394
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3393, metadata !DIExpression()), !dbg !3394
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3410
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3393, metadata !DIExpression()), !dbg !3394
  br label %24, !dbg !3411

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3412
  %20 = load i32, ptr %19, align 4, !dbg !3412, !tbaa !739
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3391, metadata !DIExpression()), !dbg !3394
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3393, metadata !DIExpression()), !dbg !3394
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3410
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3393, metadata !DIExpression()), !dbg !3394
  %22 = icmp eq i32 %20, 0, !dbg !3413
  br i1 %22, label %24, label %23, !dbg !3411

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3415, !tbaa !739
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3393, metadata !DIExpression()), !dbg !3394
  br label %24, !dbg !3417

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3394
  ret i32 %25, !dbg !3418
}

; Function Attrs: nofree nounwind
declare !dbg !3419 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !3420 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3421 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3422 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3425 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3463, metadata !DIExpression()), !dbg !3464
  %2 = icmp eq ptr %0, null, !dbg !3465
  br i1 %2, label %6, label %3, !dbg !3467

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3468
  %5 = icmp eq i32 %4, 0, !dbg !3468
  br i1 %5, label %6, label %8, !dbg !3469

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3470
  br label %16, !dbg !3471

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3472, metadata !DIExpression()), !dbg !3477
  %9 = load i32, ptr %0, align 8, !dbg !3479, !tbaa !3331
  %10 = and i32 %9, 256, !dbg !3481
  %11 = icmp eq i32 %10, 0, !dbg !3481
  br i1 %11, label %14, label %12, !dbg !3482

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3483
  br label %14, !dbg !3483

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3484
  br label %16, !dbg !3485

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3464
  ret i32 %17, !dbg !3486
}

; Function Attrs: nofree nounwind
declare !dbg !3487 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3488 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3527, metadata !DIExpression()), !dbg !3533
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3528, metadata !DIExpression()), !dbg !3533
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3529, metadata !DIExpression()), !dbg !3533
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3534
  %5 = load ptr, ptr %4, align 8, !dbg !3534, !tbaa !3535
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3536
  %7 = load ptr, ptr %6, align 8, !dbg !3536, !tbaa !3537
  %8 = icmp eq ptr %5, %7, !dbg !3538
  br i1 %8, label %9, label %27, !dbg !3539

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3540
  %11 = load ptr, ptr %10, align 8, !dbg !3540, !tbaa !1154
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3541
  %13 = load ptr, ptr %12, align 8, !dbg !3541, !tbaa !3542
  %14 = icmp eq ptr %11, %13, !dbg !3543
  br i1 %14, label %15, label %27, !dbg !3544

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3545
  %17 = load ptr, ptr %16, align 8, !dbg !3545, !tbaa !3546
  %18 = icmp eq ptr %17, null, !dbg !3547
  br i1 %18, label %19, label %27, !dbg !3548

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3549
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3550
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3530, metadata !DIExpression()), !dbg !3551
  %22 = icmp eq i64 %21, -1, !dbg !3552
  br i1 %22, label %29, label %23, !dbg !3554

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3555, !tbaa !3331
  %25 = and i32 %24, -17, !dbg !3555
  store i32 %25, ptr %0, align 8, !dbg !3555, !tbaa !3331
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3556
  store i64 %21, ptr %26, align 8, !dbg !3557, !tbaa !3558
  br label %29, !dbg !3559

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3560
  br label %29, !dbg !3561

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3533
  ret i32 %30, !dbg !3562
}

; Function Attrs: nofree nounwind
declare !dbg !3563 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3566 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3571, metadata !DIExpression()), !dbg !3576
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3572, metadata !DIExpression()), !dbg !3576
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3573, metadata !DIExpression()), !dbg !3576
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3574, metadata !DIExpression()), !dbg !3576
  %5 = icmp eq ptr %1, null, !dbg !3577
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3579
  %7 = select i1 %5, ptr @.str.114, ptr %1, !dbg !3579
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3579
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3573, metadata !DIExpression()), !dbg !3576
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3572, metadata !DIExpression()), !dbg !3576
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3571, metadata !DIExpression()), !dbg !3576
  %9 = icmp eq ptr %3, null, !dbg !3580
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3582
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3574, metadata !DIExpression()), !dbg !3576
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3583
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3575, metadata !DIExpression()), !dbg !3576
  %12 = icmp ult i64 %11, -3, !dbg !3584
  br i1 %12, label %13, label %17, !dbg !3586

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #39, !dbg !3587
  %15 = icmp eq i32 %14, 0, !dbg !3587
  br i1 %15, label %16, label %29, !dbg !3588

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3589, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata ptr %10, metadata !3596, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 0, metadata !3599, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 8, metadata !3600, metadata !DIExpression()), !dbg !3601
  store i64 0, ptr %10, align 1, !dbg !3603
  br label %29, !dbg !3604

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3605
  br i1 %18, label %19, label %20, !dbg !3607

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3608
  unreachable, !dbg !3608

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3609

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !3611
  br i1 %23, label %29, label %24, !dbg !3612

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3613
  br i1 %25, label %29, label %26, !dbg !3616

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3617, !tbaa !748
  %28 = zext i8 %27 to i32, !dbg !3618
  store i32 %28, ptr %6, align 4, !dbg !3619, !tbaa !739
  br label %29, !dbg !3620

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3576
  ret i64 %30, !dbg !3621
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3622 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3628 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3630, metadata !DIExpression()), !dbg !3634
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3631, metadata !DIExpression()), !dbg !3634
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3632, metadata !DIExpression()), !dbg !3634
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3635
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3635
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3633, metadata !DIExpression()), !dbg !3634
  br i1 %5, label %6, label %8, !dbg !3637

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3638
  store i32 12, ptr %7, align 4, !dbg !3640, !tbaa !739
  br label %12, !dbg !3641

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3635
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3633, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata ptr %0, metadata !3642, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %9, metadata !3645, metadata !DIExpression()), !dbg !3646
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3648
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3649
  br label %12, !dbg !3650

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3634
  ret ptr %13, !dbg !3651
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3652 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !3661
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3657, metadata !DIExpression(), metadata !3661, metadata ptr %2, metadata !DIExpression()), !dbg !3662
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3656, metadata !DIExpression()), !dbg !3662
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3663
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3664
  %4 = icmp eq i32 %3, 0, !dbg !3664
  br i1 %4, label %5, label %12, !dbg !3666

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3667, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata !819, metadata !3670, metadata !DIExpression()), !dbg !3671
  %6 = load i16, ptr %2, align 16, !dbg !3674
  %7 = icmp eq i16 %6, 67, !dbg !3674
  br i1 %7, label %11, label %8, !dbg !3675

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3667, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata ptr @.str.1.119, metadata !3670, metadata !DIExpression()), !dbg !3676
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.119, i64 6), !dbg !3678
  %10 = icmp eq i32 %9, 0, !dbg !3679
  br i1 %10, label %11, label %12, !dbg !3680

11:                                               ; preds = %8, %5
  br label %12, !dbg !3681

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3662
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3682
  ret i1 %13, !dbg !3682
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3683 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3687, metadata !DIExpression()), !dbg !3690
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3688, metadata !DIExpression()), !dbg !3690
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3689, metadata !DIExpression()), !dbg !3690
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3691
  ret i32 %4, !dbg !3692
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3693 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3697, metadata !DIExpression()), !dbg !3698
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3699
  ret ptr %2, !dbg !3700
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3701 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3703, metadata !DIExpression()), !dbg !3705
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3706
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3704, metadata !DIExpression()), !dbg !3705
  ret ptr %2, !dbg !3707
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3708 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3710, metadata !DIExpression()), !dbg !3717
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3711, metadata !DIExpression()), !dbg !3717
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3712, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i32 %0, metadata !3703, metadata !DIExpression()), !dbg !3718
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3720
  call void @llvm.dbg.value(metadata ptr %4, metadata !3704, metadata !DIExpression()), !dbg !3718
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3713, metadata !DIExpression()), !dbg !3717
  %5 = icmp eq ptr %4, null, !dbg !3721
  br i1 %5, label %6, label %9, !dbg !3722

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3723
  br i1 %7, label %19, label %8, !dbg !3726

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3727, !tbaa !748
  br label %19, !dbg !3728

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !3729
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3714, metadata !DIExpression()), !dbg !3730
  %11 = icmp ult i64 %10, %2, !dbg !3731
  br i1 %11, label %12, label %14, !dbg !3733

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3734
  call void @llvm.dbg.value(metadata ptr %1, metadata !3736, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata ptr %4, metadata !3739, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 %13, metadata !3740, metadata !DIExpression()), !dbg !3741
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !3743
  br label %19, !dbg !3744

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3745
  br i1 %15, label %19, label %16, !dbg !3748

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3749
  call void @llvm.dbg.value(metadata ptr %1, metadata !3736, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr %4, metadata !3739, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i64 %17, metadata !3740, metadata !DIExpression()), !dbg !3751
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3753
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3754
  store i8 0, ptr %18, align 1, !dbg !3755, !tbaa !748
  br label %19, !dbg !3756

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3757
  ret i32 %20, !dbg !3758
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!74, !293, !297, !312, !607, !639, !363, !377, !425, !641, !599, !648, !683, !685, !687, !689, !691, !623, !693, !695, !699, !701}
!llvm.ident = !{!703, !703, !703, !703, !703, !703, !703, !703, !703, !703, !703, !703, !703, !703, !703, !703, !703, !703, !703, !703, !703, !703}
!llvm.module.flags = !{!704, !705, !706, !707, !708, !709, !710}

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
!232 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !235)
!234 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!257 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!311 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !312, file: !313, line: 66, type: !358, isLocal: false, isDefinition: true)
!312 = distinct !DICompileUnit(language: DW_LANG_C11, file: !313, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !314, globals: !315, splitDebugInlining: false, nameTableKind: None)
!313 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!314 = !{!94, !100}
!315 = !{!316, !318, !337, !339, !341, !343, !310, !345, !347, !349, !351, !356}
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !313, line: 272, type: !9, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "old_file_name", scope: !320, file: !313, line: 304, type: !72, isLocal: true, isDefinition: true)
!320 = distinct !DISubprogram(name: "verror_at_line", scope: !313, file: !313, line: 298, type: !321, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !330)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !95, !95, !72, !78, !72, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !325)
!325 = !{!326, !327, !328, !329}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !324, file: !313, baseType: !78, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !324, file: !313, baseType: !78, size: 32, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !324, file: !313, baseType: !94, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !324, file: !313, baseType: !94, size: 64, offset: 128)
!330 = !{!331, !332, !333, !334, !335, !336}
!331 = !DILocalVariable(name: "status", arg: 1, scope: !320, file: !313, line: 298, type: !95)
!332 = !DILocalVariable(name: "errnum", arg: 2, scope: !320, file: !313, line: 298, type: !95)
!333 = !DILocalVariable(name: "file_name", arg: 3, scope: !320, file: !313, line: 298, type: !72)
!334 = !DILocalVariable(name: "line_number", arg: 4, scope: !320, file: !313, line: 298, type: !78)
!335 = !DILocalVariable(name: "message", arg: 5, scope: !320, file: !313, line: 298, type: !72)
!336 = !DILocalVariable(name: "args", arg: 6, scope: !320, file: !313, line: 298, type: !323)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "old_line_number", scope: !320, file: !313, line: 305, type: !78, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !313, line: 338, type: !108, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !313, line: 346, type: !140, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !313, line: 346, type: !118, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "error_message_count", scope: !312, file: !313, line: 69, type: !78, isLocal: false, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !312, file: !313, line: 295, type: !95, isLocal: false, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !313, line: 208, type: !51, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !313, line: 208, type: !353, isLocal: true, isDefinition: true)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 21)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !313, line: 214, type: !9, isLocal: true, isDefinition: true)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{null}
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "program_name", scope: !363, file: !364, line: 31, type: !72, isLocal: false, isDefinition: true)
!363 = distinct !DICompileUnit(language: DW_LANG_C11, file: !364, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !365, globals: !366, splitDebugInlining: false, nameTableKind: None)
!364 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!365 = !{!94, !93}
!366 = !{!361, !367, !369}
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !364, line: 46, type: !140, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !364, line: 49, type: !108, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "utf07FF", scope: !373, file: !374, line: 46, type: !401, isLocal: true, isDefinition: true)
!373 = distinct !DISubprogram(name: "proper_name_lite", scope: !374, file: !374, line: 38, type: !375, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !379)
!374 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!375 = !DISubroutineType(types: !376)
!376 = !{!72, !72, !72}
!377 = distinct !DICompileUnit(language: DW_LANG_C11, file: !374, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !378, splitDebugInlining: false, nameTableKind: None)
!378 = !{!371}
!379 = !{!380, !381, !382, !383, !388}
!380 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !373, file: !374, line: 38, type: !72)
!381 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !373, file: !374, line: 38, type: !72)
!382 = !DILocalVariable(name: "translation", scope: !373, file: !374, line: 40, type: !72)
!383 = !DILocalVariable(name: "w", scope: !373, file: !374, line: 47, type: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !385, line: 37, baseType: !386)
!385 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !257, line: 57, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !257, line: 42, baseType: !78)
!388 = !DILocalVariable(name: "mbs", scope: !373, file: !374, line: 48, type: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !390, line: 6, baseType: !391)
!390 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !392, line: 21, baseType: !393)
!392 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 13, size: 64, elements: !394)
!394 = !{!395, !396}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !393, file: !392, line: 15, baseType: !95, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !393, file: !392, line: 20, baseType: !397, size: 32, offset: 32)
!397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !392, line: 16, size: 32, elements: !398)
!398 = !{!399, !400}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !397, file: !392, line: 18, baseType: !78, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !397, file: !392, line: 19, baseType: !108, size: 32)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 16, elements: !119)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !404, line: 78, type: !140, isLocal: true, isDefinition: true)
!404 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !404, line: 79, type: !113, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !404, line: 80, type: !63, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !404, line: 81, type: !63, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !404, line: 82, type: !279, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !404, line: 83, type: !118, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !404, line: 84, type: !140, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !404, line: 85, type: !51, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !404, line: 86, type: !51, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !404, line: 87, type: !140, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !425, file: !404, line: 76, type: !511, isLocal: false, isDefinition: true)
!425 = distinct !DICompileUnit(language: DW_LANG_C11, file: !404, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !426, retainedTypes: !446, globals: !447, splitDebugInlining: false, nameTableKind: None)
!426 = !{!427, !441, !76}
!427 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !428, line: 42, baseType: !78, size: 32, elements: !429)
!428 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!429 = !{!430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440}
!430 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!431 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!432 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!433 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!434 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!435 = !DIEnumerator(name: "c_quoting_style", value: 5)
!436 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!437 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!438 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!439 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!440 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!441 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !428, line: 254, baseType: !78, size: 32, elements: !442)
!442 = !{!443, !444, !445}
!443 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!444 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!445 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!446 = !{!94, !95, !96, !97}
!447 = !{!402, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !448, !452, !462, !464, !469, !471, !473, !475, !477, !500, !507, !509}
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !425, file: !404, line: 92, type: !450, isLocal: false, isDefinition: true)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 320, elements: !42)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !425, file: !404, line: 1040, type: !454, isLocal: false, isDefinition: true)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !404, line: 56, size: 448, elements: !455)
!455 = !{!456, !457, !458, !460, !461}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !454, file: !404, line: 59, baseType: !427, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !454, file: !404, line: 62, baseType: !95, size: 32, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !454, file: !404, line: 66, baseType: !459, size: 256, offset: 64)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !141)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !454, file: !404, line: 69, baseType: !72, size: 64, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !454, file: !404, line: 72, baseType: !72, size: 64, offset: 384)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !425, file: !404, line: 107, type: !454, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "slot0", scope: !425, file: !404, line: 831, type: !466, isLocal: true, isDefinition: true)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 256)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !404, line: 321, type: !118, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !404, line: 357, type: !118, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !404, line: 358, type: !118, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !404, line: 199, type: !51, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(name: "quote", scope: !479, file: !404, line: 228, type: !498, isLocal: true, isDefinition: true)
!479 = distinct !DISubprogram(name: "gettext_quote", scope: !404, file: !404, line: 197, type: !480, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !482)
!480 = !DISubroutineType(types: !481)
!481 = !{!72, !72, !427}
!482 = !{!483, !484, !485, !486, !487}
!483 = !DILocalVariable(name: "msgid", arg: 1, scope: !479, file: !404, line: 197, type: !72)
!484 = !DILocalVariable(name: "s", arg: 2, scope: !479, file: !404, line: 197, type: !427)
!485 = !DILocalVariable(name: "translation", scope: !479, file: !404, line: 199, type: !72)
!486 = !DILocalVariable(name: "w", scope: !479, file: !404, line: 229, type: !384)
!487 = !DILocalVariable(name: "mbs", scope: !479, file: !404, line: 230, type: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !390, line: 6, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !392, line: 21, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 13, size: 64, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !490, file: !392, line: 15, baseType: !95, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !490, file: !392, line: 20, baseType: !494, size: 32, offset: 32)
!494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !392, line: 16, size: 32, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !494, file: !392, line: 18, baseType: !78, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !494, file: !392, line: 19, baseType: !108, size: 32)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !499)
!499 = !{!120, !110}
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "slotvec", scope: !425, file: !404, line: 834, type: !502, isLocal: true, isDefinition: true)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !404, line: 823, size: 128, elements: !504)
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !503, file: !404, line: 825, baseType: !97, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !503, file: !404, line: 826, baseType: !93, size: 64, offset: 64)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "nslots", scope: !425, file: !404, line: 832, type: !95, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "slotvec0", scope: !425, file: !404, line: 833, type: !503, isLocal: true, isDefinition: true)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 704, elements: !513)
!512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!513 = !{!514}
!514 = !DISubrange(count: 11)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !517, line: 67, type: !207, isLocal: true, isDefinition: true)
!517 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !517, line: 69, type: !51, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !517, line: 83, type: !51, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !517, line: 83, type: !108, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !517, line: 85, type: !118, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !517, line: 88, type: !528, isLocal: true, isDefinition: true)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 171)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !517, line: 88, type: !533, isLocal: true, isDefinition: true)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 34)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !517, line: 105, type: !178, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !517, line: 109, type: !540, isLocal: true, isDefinition: true)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 23)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !517, line: 113, type: !545, isLocal: true, isDefinition: true)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !546)
!546 = !{!547}
!547 = !DISubrange(count: 28)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !517, line: 120, type: !550, isLocal: true, isDefinition: true)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: 32)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !517, line: 127, type: !555, isLocal: true, isDefinition: true)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 36)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !517, line: 134, type: !158, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !517, line: 142, type: !14, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !517, line: 150, type: !564, isLocal: true, isDefinition: true)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 48)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !517, line: 159, type: !569, isLocal: true, isDefinition: true)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 52)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !517, line: 170, type: !574, isLocal: true, isDefinition: true)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: 60)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !517, line: 248, type: !279, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !517, line: 248, type: !183, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !517, line: 254, type: !279, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !517, line: 254, type: !58, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !517, line: 254, type: !158, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !517, line: 259, type: !589, isLocal: true, isDefinition: true)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !590)
!590 = !{!591}
!591 = !DISubrange(count: 39)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !517, line: 259, type: !594, isLocal: true, isDefinition: true)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 29)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !599, file: !600, line: 26, type: !602, isLocal: false, isDefinition: true)
!599 = distinct !DICompileUnit(language: DW_LANG_C11, file: !600, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !601, splitDebugInlining: false, nameTableKind: None)
!600 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!601 = !{!597}
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 376, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 47)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(name: "exit_failure", scope: !607, file: !608, line: 24, type: !610, isLocal: false, isDefinition: true)
!607 = distinct !DICompileUnit(language: DW_LANG_C11, file: !608, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !609, splitDebugInlining: false, nameTableKind: None)
!608 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!609 = !{!605}
!610 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !95)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !613, line: 34, type: !127, isLocal: true, isDefinition: true)
!613 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !613, line: 34, type: !51, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !613, line: 34, type: !153, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !620, line: 108, type: !36, isLocal: true, isDefinition: true)
!620 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(name: "internal_state", scope: !623, file: !620, line: 97, type: !626, isLocal: true, isDefinition: true)
!623 = distinct !DICompileUnit(language: DW_LANG_C11, file: !620, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !624, globals: !625, splitDebugInlining: false, nameTableKind: None)
!624 = !{!94, !97, !100}
!625 = !{!618, !621}
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !390, line: 6, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !392, line: 21, baseType: !628)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 13, size: 64, elements: !629)
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !628, file: !392, line: 15, baseType: !95, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !628, file: !392, line: 20, baseType: !632, size: 32, offset: 32)
!632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !628, file: !392, line: 16, size: 32, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !632, file: !392, line: 18, baseType: !78, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !632, file: !392, line: 19, baseType: !108, size: 32)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !638, line: 35, type: !113, isLocal: true, isDefinition: true)
!638 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!639 = distinct !DICompileUnit(language: DW_LANG_C11, file: !640, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!640 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!641 = distinct !DICompileUnit(language: DW_LANG_C11, file: !517, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !642, retainedTypes: !646, globals: !647, splitDebugInlining: false, nameTableKind: None)
!642 = !{!643}
!643 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !517, line: 40, baseType: !78, size: 32, elements: !644)
!644 = !{!645}
!645 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!646 = !{!94}
!647 = !{!515, !518, !520, !522, !524, !526, !531, !536, !538, !543, !548, !553, !558, !560, !562, !567, !572, !577, !579, !581, !583, !585, !587, !592}
!648 = distinct !DICompileUnit(language: DW_LANG_C11, file: !649, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !650, retainedTypes: !682, splitDebugInlining: false, nameTableKind: None)
!649 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!650 = !{!651, !663}
!651 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !652, file: !649, line: 188, baseType: !78, size: 32, elements: !661)
!652 = distinct !DISubprogram(name: "x2nrealloc", scope: !649, file: !649, line: 176, type: !653, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !656)
!653 = !DISubroutineType(types: !654)
!654 = !{!94, !94, !655, !97}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!656 = !{!657, !658, !659, !660}
!657 = !DILocalVariable(name: "p", arg: 1, scope: !652, file: !649, line: 176, type: !94)
!658 = !DILocalVariable(name: "pn", arg: 2, scope: !652, file: !649, line: 176, type: !655)
!659 = !DILocalVariable(name: "s", arg: 3, scope: !652, file: !649, line: 176, type: !97)
!660 = !DILocalVariable(name: "n", scope: !652, file: !649, line: 178, type: !97)
!661 = !{!662}
!662 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!663 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !664, file: !649, line: 228, baseType: !78, size: 32, elements: !661)
!664 = distinct !DISubprogram(name: "xpalloc", scope: !649, file: !649, line: 223, type: !665, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !672)
!665 = !DISubroutineType(types: !666)
!666 = !{!94, !94, !667, !668, !670, !668}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !669, line: 130, baseType: !670)
!669 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !671, line: 18, baseType: !258)
!671 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681}
!673 = !DILocalVariable(name: "pa", arg: 1, scope: !664, file: !649, line: 223, type: !94)
!674 = !DILocalVariable(name: "pn", arg: 2, scope: !664, file: !649, line: 223, type: !667)
!675 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !664, file: !649, line: 223, type: !668)
!676 = !DILocalVariable(name: "n_max", arg: 4, scope: !664, file: !649, line: 223, type: !670)
!677 = !DILocalVariable(name: "s", arg: 5, scope: !664, file: !649, line: 223, type: !668)
!678 = !DILocalVariable(name: "n0", scope: !664, file: !649, line: 230, type: !668)
!679 = !DILocalVariable(name: "n", scope: !664, file: !649, line: 237, type: !668)
!680 = !DILocalVariable(name: "nbytes", scope: !664, file: !649, line: 248, type: !668)
!681 = !DILocalVariable(name: "adjusted_nbytes", scope: !664, file: !649, line: 252, type: !668)
!682 = !{!93, !94}
!683 = distinct !DICompileUnit(language: DW_LANG_C11, file: !613, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !684, splitDebugInlining: false, nameTableKind: None)
!684 = !{!611, !614, !616}
!685 = distinct !DICompileUnit(language: DW_LANG_C11, file: !686, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!686 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!687 = distinct !DICompileUnit(language: DW_LANG_C11, file: !688, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!688 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!689 = distinct !DICompileUnit(language: DW_LANG_C11, file: !690, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !646, splitDebugInlining: false, nameTableKind: None)
!690 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!691 = distinct !DICompileUnit(language: DW_LANG_C11, file: !692, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !646, splitDebugInlining: false, nameTableKind: None)
!692 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!693 = distinct !DICompileUnit(language: DW_LANG_C11, file: !694, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !646, splitDebugInlining: false, nameTableKind: None)
!694 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!695 = distinct !DICompileUnit(language: DW_LANG_C11, file: !638, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !696, splitDebugInlining: false, nameTableKind: None)
!696 = !{!697, !636}
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !638, line: 35, type: !118, isLocal: true, isDefinition: true)
!699 = distinct !DICompileUnit(language: DW_LANG_C11, file: !700, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!700 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!701 = distinct !DICompileUnit(language: DW_LANG_C11, file: !702, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !646, splitDebugInlining: false, nameTableKind: None)
!702 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!703 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!704 = !{i32 7, !"Dwarf Version", i32 5}
!705 = !{i32 2, !"Debug Info Version", i32 3}
!706 = !{i32 1, !"wchar_size", i32 4}
!707 = !{i32 8, !"PIC Level", i32 2}
!708 = !{i32 7, !"PIE Level", i32 2}
!709 = !{i32 7, !"uwtable", i32 2}
!710 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!711 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 36, type: !712, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !714)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !95}
!714 = !{!715}
!715 = !DILocalVariable(name: "status", arg: 1, scope: !711, file: !2, line: 36, type: !95)
!716 = !DILocation(line: 0, scope: !711)
!717 = !DILocation(line: 38, column: 3, scope: !711)
!718 = !{!719, !719, i64 0}
!719 = !{!"any pointer", !720, i64 0}
!720 = !{!"omnipotent char", !721, i64 0}
!721 = !{!"Simple C/C++ TBAA"}
!722 = !DILocation(line: 43, column: 3, scope: !711)
!723 = !DILocation(line: 47, column: 3, scope: !711)
!724 = !DILocation(line: 48, column: 3, scope: !711)
!725 = !DILocation(line: 49, column: 3, scope: !711)
!726 = !DILocation(line: 50, column: 3, scope: !711)
!727 = !DILocation(line: 51, column: 3, scope: !711)
!728 = !DISubprogram(name: "dcgettext", scope: !729, file: !729, line: 51, type: !730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!729 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!730 = !DISubroutineType(types: !731)
!731 = !{!93, !72, !72, !95}
!732 = !DISubprogram(name: "__printf_chk", scope: !733, file: !733, line: 95, type: !734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!733 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!734 = !DISubroutineType(types: !735)
!735 = !{!95, !95, !736, null}
!736 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !72)
!737 = !DILocation(line: 0, scope: !68)
!738 = !DILocation(line: 581, column: 7, scope: !215)
!739 = !{!740, !740, i64 0}
!740 = !{!"int", !720, i64 0}
!741 = !DILocation(line: 581, column: 19, scope: !215)
!742 = !DILocation(line: 581, column: 7, scope: !68)
!743 = !DILocation(line: 585, column: 26, scope: !214)
!744 = !DILocation(line: 0, scope: !214)
!745 = !DILocation(line: 586, column: 23, scope: !214)
!746 = !DILocation(line: 586, column: 28, scope: !214)
!747 = !DILocation(line: 586, column: 32, scope: !214)
!748 = !{!720, !720, i64 0}
!749 = !DILocation(line: 586, column: 38, scope: !214)
!750 = !DILocalVariable(name: "__s1", arg: 1, scope: !751, file: !752, line: 1359, type: !72)
!751 = distinct !DISubprogram(name: "streq", scope: !752, file: !752, line: 1359, type: !753, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !755)
!752 = !DIFile(filename: "./lib/string.h", directory: "/src")
!753 = !DISubroutineType(types: !754)
!754 = !{!217, !72, !72}
!755 = !{!750, !756}
!756 = !DILocalVariable(name: "__s2", arg: 2, scope: !751, file: !752, line: 1359, type: !72)
!757 = !DILocation(line: 0, scope: !751, inlinedAt: !758)
!758 = distinct !DILocation(line: 586, column: 41, scope: !214)
!759 = !DILocation(line: 1361, column: 11, scope: !751, inlinedAt: !758)
!760 = !DILocation(line: 1361, column: 10, scope: !751, inlinedAt: !758)
!761 = !DILocation(line: 586, column: 19, scope: !214)
!762 = !DILocation(line: 587, column: 5, scope: !214)
!763 = !DILocation(line: 588, column: 7, scope: !764)
!764 = distinct !DILexicalBlock(scope: !68, file: !69, line: 588, column: 7)
!765 = !DILocation(line: 588, column: 7, scope: !68)
!766 = !DILocation(line: 590, column: 7, scope: !767)
!767 = distinct !DILexicalBlock(scope: !764, file: !69, line: 589, column: 5)
!768 = !DILocation(line: 591, column: 7, scope: !767)
!769 = !DILocation(line: 595, column: 37, scope: !68)
!770 = !DILocation(line: 595, column: 35, scope: !68)
!771 = !DILocation(line: 596, column: 29, scope: !68)
!772 = !DILocation(line: 597, column: 8, scope: !223)
!773 = !DILocation(line: 597, column: 7, scope: !68)
!774 = !DILocation(line: 604, column: 24, scope: !222)
!775 = !DILocation(line: 604, column: 12, scope: !223)
!776 = !DILocation(line: 0, scope: !221)
!777 = !DILocation(line: 610, column: 16, scope: !221)
!778 = !DILocation(line: 610, column: 7, scope: !221)
!779 = !DILocation(line: 611, column: 21, scope: !221)
!780 = !{!781, !781, i64 0}
!781 = !{!"short", !720, i64 0}
!782 = !DILocation(line: 611, column: 19, scope: !221)
!783 = !DILocation(line: 611, column: 16, scope: !221)
!784 = !DILocation(line: 610, column: 30, scope: !221)
!785 = distinct !{!785, !778, !779, !786}
!786 = !{!"llvm.loop.mustprogress"}
!787 = !DILocation(line: 612, column: 18, scope: !788)
!788 = distinct !DILexicalBlock(scope: !221, file: !69, line: 612, column: 11)
!789 = !DILocation(line: 612, column: 11, scope: !221)
!790 = !DILocation(line: 620, column: 23, scope: !68)
!791 = !DILocation(line: 625, column: 39, scope: !68)
!792 = !DILocation(line: 626, column: 3, scope: !68)
!793 = !DILocation(line: 626, column: 10, scope: !68)
!794 = !DILocation(line: 626, column: 21, scope: !68)
!795 = !DILocation(line: 628, column: 44, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !69, line: 628, column: 11)
!797 = distinct !DILexicalBlock(scope: !68, file: !69, line: 627, column: 5)
!798 = !DILocation(line: 628, column: 32, scope: !796)
!799 = !DILocation(line: 628, column: 49, scope: !796)
!800 = !DILocation(line: 628, column: 11, scope: !797)
!801 = !DILocation(line: 630, column: 11, scope: !802)
!802 = distinct !DILexicalBlock(scope: !797, file: !69, line: 630, column: 11)
!803 = !DILocation(line: 630, column: 11, scope: !797)
!804 = !DILocation(line: 632, column: 26, scope: !805)
!805 = distinct !DILexicalBlock(scope: !806, file: !69, line: 632, column: 15)
!806 = distinct !DILexicalBlock(scope: !802, file: !69, line: 631, column: 9)
!807 = !DILocation(line: 632, column: 34, scope: !805)
!808 = !DILocation(line: 632, column: 37, scope: !805)
!809 = !DILocation(line: 632, column: 15, scope: !806)
!810 = !DILocation(line: 636, column: 16, scope: !811)
!811 = distinct !DILexicalBlock(scope: !806, file: !69, line: 636, column: 15)
!812 = !DILocation(line: 636, column: 29, scope: !811)
!813 = !DILocation(line: 640, column: 16, scope: !797)
!814 = distinct !{!814, !792, !815, !786}
!815 = !DILocation(line: 641, column: 5, scope: !68)
!816 = !DILocation(line: 644, column: 3, scope: !68)
!817 = !DILocation(line: 0, scope: !751, inlinedAt: !818)
!818 = distinct !DILocation(line: 648, column: 31, scope: !68)
!819 = !{}
!820 = !DILocation(line: 0, scope: !751, inlinedAt: !821)
!821 = distinct !DILocation(line: 649, column: 31, scope: !68)
!822 = !DILocation(line: 0, scope: !751, inlinedAt: !823)
!823 = distinct !DILocation(line: 650, column: 31, scope: !68)
!824 = !DILocation(line: 0, scope: !751, inlinedAt: !825)
!825 = distinct !DILocation(line: 651, column: 31, scope: !68)
!826 = !DILocation(line: 0, scope: !751, inlinedAt: !827)
!827 = distinct !DILocation(line: 652, column: 31, scope: !68)
!828 = !DILocation(line: 0, scope: !751, inlinedAt: !829)
!829 = distinct !DILocation(line: 653, column: 31, scope: !68)
!830 = !DILocation(line: 0, scope: !751, inlinedAt: !831)
!831 = distinct !DILocation(line: 654, column: 31, scope: !68)
!832 = !DILocation(line: 0, scope: !751, inlinedAt: !833)
!833 = distinct !DILocation(line: 655, column: 31, scope: !68)
!834 = !DILocation(line: 0, scope: !751, inlinedAt: !835)
!835 = distinct !DILocation(line: 656, column: 31, scope: !68)
!836 = !DILocation(line: 0, scope: !751, inlinedAt: !837)
!837 = distinct !DILocation(line: 657, column: 31, scope: !68)
!838 = !DILocation(line: 663, column: 7, scope: !839)
!839 = distinct !DILexicalBlock(scope: !68, file: !69, line: 663, column: 7)
!840 = !DILocation(line: 664, column: 7, scope: !839)
!841 = !DILocation(line: 664, column: 10, scope: !839)
!842 = !DILocation(line: 663, column: 7, scope: !68)
!843 = !DILocation(line: 669, column: 7, scope: !844)
!844 = distinct !DILexicalBlock(scope: !839, file: !69, line: 665, column: 5)
!845 = !DILocation(line: 671, column: 5, scope: !844)
!846 = !DILocation(line: 676, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !839, file: !69, line: 673, column: 5)
!848 = !DILocation(line: 679, column: 3, scope: !68)
!849 = !DILocation(line: 683, column: 3, scope: !68)
!850 = !DILocation(line: 686, column: 3, scope: !68)
!851 = !DILocation(line: 688, column: 3, scope: !68)
!852 = !DILocation(line: 691, column: 3, scope: !68)
!853 = !DILocation(line: 695, column: 3, scope: !68)
!854 = !DILocation(line: 696, column: 1, scope: !68)
!855 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !69, file: !69, line: 836, type: !856, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !858)
!856 = !DISubroutineType(cc: DW_CC_nocall, types: !857)
!857 = !{null, !72}
!858 = !{!859, !860, !867, !868, !870, !871}
!859 = !DILocalVariable(name: "program", arg: 1, scope: !855, file: !69, line: 836, type: !72)
!860 = !DILocalVariable(name: "infomap", scope: !855, file: !69, line: 838, type: !861)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !862, size: 896, elements: !52)
!862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !863)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !855, file: !69, line: 838, size: 128, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !863, file: !69, line: 838, baseType: !72, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !863, file: !69, line: 838, baseType: !72, size: 64, offset: 64)
!867 = !DILocalVariable(name: "node", scope: !855, file: !69, line: 848, type: !72)
!868 = !DILocalVariable(name: "map_prog", scope: !855, file: !69, line: 849, type: !869)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!870 = !DILocalVariable(name: "lc_messages", scope: !855, file: !69, line: 861, type: !72)
!871 = !DILocalVariable(name: "url_program", scope: !855, file: !69, line: 874, type: !72)
!872 = !DILocation(line: 0, scope: !855)
!873 = !DILocation(line: 857, column: 3, scope: !855)
!874 = !DILocation(line: 861, column: 29, scope: !855)
!875 = !DILocation(line: 862, column: 7, scope: !876)
!876 = distinct !DILexicalBlock(scope: !855, file: !69, line: 862, column: 7)
!877 = !DILocation(line: 862, column: 19, scope: !876)
!878 = !DILocation(line: 862, column: 22, scope: !876)
!879 = !DILocation(line: 862, column: 7, scope: !855)
!880 = !DILocation(line: 868, column: 7, scope: !881)
!881 = distinct !DILexicalBlock(scope: !876, file: !69, line: 863, column: 5)
!882 = !DILocation(line: 870, column: 5, scope: !881)
!883 = !DILocation(line: 875, column: 3, scope: !855)
!884 = !DILocation(line: 877, column: 3, scope: !855)
!885 = !DILocation(line: 879, column: 1, scope: !855)
!886 = !DISubprogram(name: "exit", scope: !887, file: !887, line: 624, type: !712, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!887 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!888 = !DISubprogram(name: "setlocale", scope: !889, file: !889, line: 122, type: !890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!889 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!890 = !DISubroutineType(types: !891)
!891 = !{!93, !95, !72}
!892 = !DISubprogram(name: "strncmp", scope: !893, file: !893, line: 159, type: !894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!893 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!894 = !DISubroutineType(types: !895)
!895 = !{!95, !72, !72, !97}
!896 = !DISubprogram(name: "fputs_unlocked", scope: !897, file: !897, line: 691, type: !898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!897 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!898 = !DISubroutineType(types: !899)
!899 = !{!95, !736, !900}
!900 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !230)
!901 = !DISubprogram(name: "getenv", scope: !887, file: !887, line: 641, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!902 = !DISubroutineType(types: !903)
!903 = !{!93, !72}
!904 = !DISubprogram(name: "strcmp", scope: !893, file: !893, line: 156, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!905 = !DISubroutineType(types: !906)
!906 = !{!95, !72, !72}
!907 = !DISubprogram(name: "strspn", scope: !893, file: !893, line: 297, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!908 = !DISubroutineType(types: !909)
!909 = !{!99, !72, !72}
!910 = !DISubprogram(name: "strchr", scope: !893, file: !893, line: 246, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!911 = !DISubroutineType(types: !912)
!912 = !{!93, !72, !95}
!913 = !DISubprogram(name: "__ctype_b_loc", scope: !77, file: !77, line: 79, type: !914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!914 = !DISubroutineType(types: !915)
!915 = !{!916}
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!919 = !DISubprogram(name: "strcspn", scope: !893, file: !893, line: 293, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!920 = !DISubprogram(name: "fwrite_unlocked", scope: !897, file: !897, line: 704, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!921 = !DISubroutineType(types: !922)
!922 = !{!97, !923, !97, !97, !900}
!923 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !924)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!926 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 55, type: !927, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !930)
!927 = !DISubroutineType(types: !928)
!928 = !{!95, !95, !929}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!930 = !{!931, !932}
!931 = !DILocalVariable(name: "argc", arg: 1, scope: !926, file: !2, line: 55, type: !95)
!932 = !DILocalVariable(name: "argv", arg: 2, scope: !926, file: !2, line: 55, type: !929)
!933 = !DILocation(line: 0, scope: !926)
!934 = !DILocation(line: 59, column: 12, scope: !935)
!935 = distinct !DILexicalBlock(scope: !926, file: !2, line: 59, column: 7)
!936 = !DILocation(line: 59, column: 7, scope: !926)
!937 = !DILocation(line: 62, column: 25, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !2, line: 60, column: 5)
!939 = !DILocation(line: 62, column: 7, scope: !938)
!940 = !DILocation(line: 63, column: 7, scope: !938)
!941 = !DILocation(line: 64, column: 7, scope: !938)
!942 = !DILocation(line: 65, column: 7, scope: !938)
!943 = !DILocation(line: 69, column: 7, scope: !938)
!944 = !DILocation(line: 71, column: 18, scope: !945)
!945 = distinct !DILexicalBlock(scope: !938, file: !2, line: 71, column: 11)
!946 = !DILocation(line: 0, scope: !751, inlinedAt: !947)
!947 = distinct !DILocation(line: 71, column: 11, scope: !945)
!948 = !DILocation(line: 1361, column: 11, scope: !751, inlinedAt: !947)
!949 = !DILocation(line: 1361, column: 10, scope: !751, inlinedAt: !947)
!950 = !DILocation(line: 71, column: 11, scope: !938)
!951 = !DILocation(line: 72, column: 9, scope: !945)
!952 = !DILocation(line: 0, scope: !751, inlinedAt: !953)
!953 = distinct !DILocation(line: 74, column: 11, scope: !954)
!954 = distinct !DILexicalBlock(scope: !938, file: !2, line: 74, column: 11)
!955 = !DILocation(line: 1361, column: 11, scope: !751, inlinedAt: !953)
!956 = !DILocation(line: 1361, column: 10, scope: !751, inlinedAt: !953)
!957 = !DILocation(line: 74, column: 11, scope: !938)
!958 = !DILocation(line: 75, column: 22, scope: !954)
!959 = !DILocation(line: 75, column: 58, scope: !954)
!960 = !DILocation(line: 75, column: 67, scope: !954)
!961 = !DILocation(line: 75, column: 9, scope: !954)
!962 = !DILocation(line: 79, column: 3, scope: !926)
!963 = !DISubprogram(name: "bindtextdomain", scope: !729, file: !729, line: 86, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!964 = !DISubroutineType(types: !965)
!965 = !{!93, !72, !72}
!966 = !DISubprogram(name: "textdomain", scope: !729, file: !729, line: 82, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!967 = !DISubprogram(name: "atexit", scope: !887, file: !887, line: 602, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!968 = !DISubroutineType(types: !969)
!969 = !{!95, !358}
!970 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !298, file: !298, line: 50, type: !971, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !972)
!971 = !DISubroutineType(types: !857)
!972 = !{!973}
!973 = !DILocalVariable(name: "file", arg: 1, scope: !970, file: !298, line: 50, type: !72)
!974 = !DILocation(line: 0, scope: !970)
!975 = !DILocation(line: 52, column: 13, scope: !970)
!976 = !DILocation(line: 53, column: 1, scope: !970)
!977 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !298, file: !298, line: 87, type: !978, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !980)
!978 = !DISubroutineType(types: !979)
!979 = !{null, !217}
!980 = !{!981}
!981 = !DILocalVariable(name: "ignore", arg: 1, scope: !977, file: !298, line: 87, type: !217)
!982 = !DILocation(line: 0, scope: !977)
!983 = !DILocation(line: 89, column: 16, scope: !977)
!984 = !{!985, !985, i64 0}
!985 = !{!"_Bool", !720, i64 0}
!986 = !DILocation(line: 90, column: 1, scope: !977)
!987 = distinct !DISubprogram(name: "close_stdout", scope: !298, file: !298, line: 116, type: !359, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !988)
!988 = !{!989}
!989 = !DILocalVariable(name: "write_error", scope: !990, file: !298, line: 121, type: !72)
!990 = distinct !DILexicalBlock(scope: !991, file: !298, line: 120, column: 5)
!991 = distinct !DILexicalBlock(scope: !987, file: !298, line: 118, column: 7)
!992 = !DILocation(line: 118, column: 21, scope: !991)
!993 = !DILocation(line: 118, column: 7, scope: !991)
!994 = !DILocation(line: 118, column: 29, scope: !991)
!995 = !DILocation(line: 119, column: 7, scope: !991)
!996 = !DILocation(line: 119, column: 12, scope: !991)
!997 = !{i8 0, i8 2}
!998 = !DILocation(line: 119, column: 25, scope: !991)
!999 = !DILocation(line: 119, column: 28, scope: !991)
!1000 = !DILocation(line: 119, column: 34, scope: !991)
!1001 = !DILocation(line: 118, column: 7, scope: !987)
!1002 = !DILocation(line: 121, column: 33, scope: !990)
!1003 = !DILocation(line: 0, scope: !990)
!1004 = !DILocation(line: 122, column: 11, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !990, file: !298, line: 122, column: 11)
!1006 = !DILocation(line: 0, scope: !1005)
!1007 = !DILocation(line: 122, column: 11, scope: !990)
!1008 = !DILocation(line: 123, column: 9, scope: !1005)
!1009 = !DILocation(line: 126, column: 9, scope: !1005)
!1010 = !DILocation(line: 128, column: 14, scope: !990)
!1011 = !DILocation(line: 128, column: 7, scope: !990)
!1012 = !DILocation(line: 133, column: 42, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !987, file: !298, line: 133, column: 7)
!1014 = !DILocation(line: 133, column: 28, scope: !1013)
!1015 = !DILocation(line: 133, column: 50, scope: !1013)
!1016 = !DILocation(line: 133, column: 7, scope: !987)
!1017 = !DILocation(line: 134, column: 12, scope: !1013)
!1018 = !DILocation(line: 134, column: 5, scope: !1013)
!1019 = !DILocation(line: 135, column: 1, scope: !987)
!1020 = !DISubprogram(name: "__errno_location", scope: !1021, file: !1021, line: 37, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1021 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!1024}
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!1025 = !DISubprogram(name: "_exit", scope: !1026, file: !1026, line: 624, type: !712, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1026 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1027 = distinct !DISubprogram(name: "verror", scope: !313, file: !313, line: 251, type: !1028, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1030)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !95, !95, !72, !323}
!1030 = !{!1031, !1032, !1033, !1034}
!1031 = !DILocalVariable(name: "status", arg: 1, scope: !1027, file: !313, line: 251, type: !95)
!1032 = !DILocalVariable(name: "errnum", arg: 2, scope: !1027, file: !313, line: 251, type: !95)
!1033 = !DILocalVariable(name: "message", arg: 3, scope: !1027, file: !313, line: 251, type: !72)
!1034 = !DILocalVariable(name: "args", arg: 4, scope: !1027, file: !313, line: 251, type: !323)
!1035 = !DILocation(line: 0, scope: !1027)
!1036 = !DILocation(line: 261, column: 3, scope: !1027)
!1037 = !DILocation(line: 265, column: 7, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1027, file: !313, line: 265, column: 7)
!1039 = !DILocation(line: 265, column: 7, scope: !1027)
!1040 = !DILocation(line: 266, column: 5, scope: !1038)
!1041 = !DILocation(line: 272, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1038, file: !313, line: 268, column: 5)
!1043 = !DILocation(line: 276, column: 3, scope: !1027)
!1044 = !DILocation(line: 282, column: 1, scope: !1027)
!1045 = distinct !DISubprogram(name: "flush_stdout", scope: !313, file: !313, line: 163, type: !359, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1046)
!1046 = !{!1047}
!1047 = !DILocalVariable(name: "stdout_fd", scope: !1045, file: !313, line: 166, type: !95)
!1048 = !DILocation(line: 0, scope: !1045)
!1049 = !DILocalVariable(name: "fd", arg: 1, scope: !1050, file: !313, line: 145, type: !95)
!1050 = distinct !DISubprogram(name: "is_open", scope: !313, file: !313, line: 145, type: !1051, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1053)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!95, !95}
!1053 = !{!1049}
!1054 = !DILocation(line: 0, scope: !1050, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 182, column: 25, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1045, file: !313, line: 182, column: 7)
!1057 = !DILocation(line: 157, column: 15, scope: !1050, inlinedAt: !1055)
!1058 = !DILocation(line: 157, column: 12, scope: !1050, inlinedAt: !1055)
!1059 = !DILocation(line: 182, column: 7, scope: !1045)
!1060 = !DILocation(line: 184, column: 5, scope: !1056)
!1061 = !DILocation(line: 185, column: 1, scope: !1045)
!1062 = !DISubprogram(name: "__fprintf_chk", scope: !733, file: !733, line: 93, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!95, !1065, !95, !736, null}
!1065 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1066)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !1069)
!1069 = !{!1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1068, file: !234, line: 51, baseType: !95, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1068, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1068, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1068, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1068, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1068, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1068, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1068, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1068, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1068, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1068, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1068, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1068, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1068, file: !234, line: 70, baseType: !1084, size: 64, offset: 832)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1068, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1068, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1068, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1068, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1068, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1068, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1068, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1068, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1068, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1068, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1068, file: !234, line: 93, baseType: !1084, size: 64, offset: 1344)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1068, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1068, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1068, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1068, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!1100 = distinct !DISubprogram(name: "error_tail", scope: !313, file: !313, line: 219, type: !1028, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1101)
!1101 = !{!1102, !1103, !1104, !1105}
!1102 = !DILocalVariable(name: "status", arg: 1, scope: !1100, file: !313, line: 219, type: !95)
!1103 = !DILocalVariable(name: "errnum", arg: 2, scope: !1100, file: !313, line: 219, type: !95)
!1104 = !DILocalVariable(name: "message", arg: 3, scope: !1100, file: !313, line: 219, type: !72)
!1105 = !DILocalVariable(name: "args", arg: 4, scope: !1100, file: !313, line: 219, type: !323)
!1106 = distinct !DIAssignID()
!1107 = !DILocation(line: 0, scope: !1100)
!1108 = !DILocation(line: 229, column: 13, scope: !1100)
!1109 = !DILocalVariable(name: "__stream", arg: 1, scope: !1110, file: !733, line: 132, type: !1065)
!1110 = distinct !DISubprogram(name: "vfprintf", scope: !733, file: !733, line: 132, type: !1111, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1113)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!95, !1065, !736, !323}
!1113 = !{!1109, !1114, !1115}
!1114 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1110, file: !733, line: 133, type: !736)
!1115 = !DILocalVariable(name: "__ap", arg: 3, scope: !1110, file: !733, line: 133, type: !323)
!1116 = !DILocation(line: 0, scope: !1110, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 229, column: 3, scope: !1100)
!1118 = !DILocation(line: 135, column: 10, scope: !1110, inlinedAt: !1117)
!1119 = !DILocation(line: 232, column: 3, scope: !1100)
!1120 = !DILocation(line: 233, column: 7, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1100, file: !313, line: 233, column: 7)
!1122 = !DILocation(line: 233, column: 7, scope: !1100)
!1123 = !DILocalVariable(name: "errbuf", scope: !1124, file: !313, line: 193, type: !1128)
!1124 = distinct !DISubprogram(name: "print_errno_message", scope: !313, file: !313, line: 188, type: !712, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1125)
!1125 = !{!1126, !1127, !1123}
!1126 = !DILocalVariable(name: "errnum", arg: 1, scope: !1124, file: !313, line: 188, type: !95)
!1127 = !DILocalVariable(name: "s", scope: !1124, file: !313, line: 190, type: !72)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1129)
!1129 = !{!1130}
!1130 = !DISubrange(count: 1024)
!1131 = !DILocation(line: 0, scope: !1124, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 234, column: 5, scope: !1121)
!1133 = !DILocation(line: 193, column: 3, scope: !1124, inlinedAt: !1132)
!1134 = !DILocation(line: 195, column: 7, scope: !1124, inlinedAt: !1132)
!1135 = !DILocation(line: 207, column: 9, scope: !1136, inlinedAt: !1132)
!1136 = distinct !DILexicalBlock(scope: !1124, file: !313, line: 207, column: 7)
!1137 = !DILocation(line: 207, column: 7, scope: !1124, inlinedAt: !1132)
!1138 = !DILocation(line: 208, column: 9, scope: !1136, inlinedAt: !1132)
!1139 = !DILocation(line: 208, column: 5, scope: !1136, inlinedAt: !1132)
!1140 = !DILocation(line: 214, column: 3, scope: !1124, inlinedAt: !1132)
!1141 = !DILocation(line: 216, column: 1, scope: !1124, inlinedAt: !1132)
!1142 = !DILocation(line: 234, column: 5, scope: !1121)
!1143 = !DILocation(line: 238, column: 3, scope: !1100)
!1144 = !DILocalVariable(name: "__c", arg: 1, scope: !1145, file: !1146, line: 101, type: !95)
!1145 = distinct !DISubprogram(name: "putc_unlocked", scope: !1146, file: !1146, line: 101, type: !1147, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1149)
!1146 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!95, !95, !1066}
!1149 = !{!1144, !1150}
!1150 = !DILocalVariable(name: "__stream", arg: 2, scope: !1145, file: !1146, line: 101, type: !1066)
!1151 = !DILocation(line: 0, scope: !1145, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 238, column: 3, scope: !1100)
!1153 = !DILocation(line: 103, column: 10, scope: !1145, inlinedAt: !1152)
!1154 = !{!1155, !719, i64 40}
!1155 = !{!"_IO_FILE", !740, i64 0, !719, i64 8, !719, i64 16, !719, i64 24, !719, i64 32, !719, i64 40, !719, i64 48, !719, i64 56, !719, i64 64, !719, i64 72, !719, i64 80, !719, i64 88, !719, i64 96, !719, i64 104, !740, i64 112, !740, i64 116, !1156, i64 120, !781, i64 128, !720, i64 130, !720, i64 131, !719, i64 136, !1156, i64 144, !719, i64 152, !719, i64 160, !719, i64 168, !719, i64 176, !1156, i64 184, !740, i64 192, !720, i64 196}
!1156 = !{!"long", !720, i64 0}
!1157 = !{!1155, !719, i64 48}
!1158 = !{!"branch_weights", i32 2000, i32 1}
!1159 = !DILocation(line: 240, column: 3, scope: !1100)
!1160 = !DILocation(line: 241, column: 7, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1100, file: !313, line: 241, column: 7)
!1162 = !DILocation(line: 241, column: 7, scope: !1100)
!1163 = !DILocation(line: 242, column: 5, scope: !1161)
!1164 = !DILocation(line: 243, column: 1, scope: !1100)
!1165 = !DISubprogram(name: "__vfprintf_chk", scope: !733, file: !733, line: 96, type: !1166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!95, !1065, !95, !736, !323}
!1168 = !DISubprogram(name: "strerror_r", scope: !893, file: !893, line: 444, type: !1169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!93, !95, !93, !97}
!1171 = !DISubprogram(name: "__overflow", scope: !897, file: !897, line: 886, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!95, !1066, !95}
!1174 = !DISubprogram(name: "fflush_unlocked", scope: !897, file: !897, line: 239, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!95, !1066}
!1177 = !DISubprogram(name: "fcntl", scope: !1178, file: !1178, line: 149, type: !1179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1178 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!95, !95, !95, null}
!1181 = distinct !DISubprogram(name: "error", scope: !313, file: !313, line: 285, type: !1182, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1184)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !95, !95, !72, null}
!1184 = !{!1185, !1186, !1187, !1188}
!1185 = !DILocalVariable(name: "status", arg: 1, scope: !1181, file: !313, line: 285, type: !95)
!1186 = !DILocalVariable(name: "errnum", arg: 2, scope: !1181, file: !313, line: 285, type: !95)
!1187 = !DILocalVariable(name: "message", arg: 3, scope: !1181, file: !313, line: 285, type: !72)
!1188 = !DILocalVariable(name: "ap", scope: !1181, file: !313, line: 287, type: !1189)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !897, line: 52, baseType: !1190)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1191, line: 12, baseType: !1192)
!1191 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !313, baseType: !1193)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 192, elements: !37)
!1194 = distinct !DIAssignID()
!1195 = !DILocation(line: 0, scope: !1181)
!1196 = !DILocation(line: 287, column: 3, scope: !1181)
!1197 = !DILocation(line: 288, column: 3, scope: !1181)
!1198 = !DILocation(line: 289, column: 3, scope: !1181)
!1199 = !DILocation(line: 290, column: 3, scope: !1181)
!1200 = !DILocation(line: 291, column: 1, scope: !1181)
!1201 = !DILocation(line: 0, scope: !320)
!1202 = !DILocation(line: 302, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !320, file: !313, line: 302, column: 7)
!1204 = !DILocation(line: 302, column: 7, scope: !320)
!1205 = !DILocation(line: 307, column: 11, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !313, line: 307, column: 11)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !313, line: 303, column: 5)
!1208 = !DILocation(line: 307, column: 27, scope: !1206)
!1209 = !DILocation(line: 308, column: 11, scope: !1206)
!1210 = !DILocation(line: 308, column: 28, scope: !1206)
!1211 = !DILocation(line: 308, column: 25, scope: !1206)
!1212 = !DILocation(line: 309, column: 15, scope: !1206)
!1213 = !DILocation(line: 309, column: 33, scope: !1206)
!1214 = !DILocation(line: 310, column: 19, scope: !1206)
!1215 = !DILocation(line: 311, column: 22, scope: !1206)
!1216 = !DILocation(line: 311, column: 56, scope: !1206)
!1217 = !DILocation(line: 307, column: 11, scope: !1207)
!1218 = !DILocation(line: 316, column: 21, scope: !1207)
!1219 = !DILocation(line: 317, column: 23, scope: !1207)
!1220 = !DILocation(line: 318, column: 5, scope: !1207)
!1221 = !DILocation(line: 327, column: 3, scope: !320)
!1222 = !DILocation(line: 331, column: 7, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !320, file: !313, line: 331, column: 7)
!1224 = !DILocation(line: 331, column: 7, scope: !320)
!1225 = !DILocation(line: 332, column: 5, scope: !1223)
!1226 = !DILocation(line: 338, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1223, file: !313, line: 334, column: 5)
!1228 = !DILocation(line: 346, column: 3, scope: !320)
!1229 = !DILocation(line: 350, column: 3, scope: !320)
!1230 = !DILocation(line: 356, column: 1, scope: !320)
!1231 = distinct !DISubprogram(name: "error_at_line", scope: !313, file: !313, line: 359, type: !1232, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1234)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{null, !95, !95, !72, !78, !72, null}
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240}
!1235 = !DILocalVariable(name: "status", arg: 1, scope: !1231, file: !313, line: 359, type: !95)
!1236 = !DILocalVariable(name: "errnum", arg: 2, scope: !1231, file: !313, line: 359, type: !95)
!1237 = !DILocalVariable(name: "file_name", arg: 3, scope: !1231, file: !313, line: 359, type: !72)
!1238 = !DILocalVariable(name: "line_number", arg: 4, scope: !1231, file: !313, line: 360, type: !78)
!1239 = !DILocalVariable(name: "message", arg: 5, scope: !1231, file: !313, line: 360, type: !72)
!1240 = !DILocalVariable(name: "ap", scope: !1231, file: !313, line: 362, type: !1189)
!1241 = distinct !DIAssignID()
!1242 = !DILocation(line: 0, scope: !1231)
!1243 = !DILocation(line: 362, column: 3, scope: !1231)
!1244 = !DILocation(line: 363, column: 3, scope: !1231)
!1245 = !DILocation(line: 364, column: 3, scope: !1231)
!1246 = !DILocation(line: 366, column: 3, scope: !1231)
!1247 = !DILocation(line: 367, column: 1, scope: !1231)
!1248 = distinct !DISubprogram(name: "getprogname", scope: !640, file: !640, line: 54, type: !1249, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !639)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!72}
!1251 = !DILocation(line: 58, column: 10, scope: !1248)
!1252 = !DILocation(line: 58, column: 3, scope: !1248)
!1253 = distinct !DISubprogram(name: "set_program_name", scope: !364, file: !364, line: 37, type: !971, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !363, retainedNodes: !1254)
!1254 = !{!1255, !1256, !1257}
!1255 = !DILocalVariable(name: "argv0", arg: 1, scope: !1253, file: !364, line: 37, type: !72)
!1256 = !DILocalVariable(name: "slash", scope: !1253, file: !364, line: 44, type: !72)
!1257 = !DILocalVariable(name: "base", scope: !1253, file: !364, line: 45, type: !72)
!1258 = !DILocation(line: 0, scope: !1253)
!1259 = !DILocation(line: 44, column: 23, scope: !1253)
!1260 = !DILocation(line: 45, column: 22, scope: !1253)
!1261 = !DILocation(line: 46, column: 17, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1253, file: !364, line: 46, column: 7)
!1263 = !DILocation(line: 46, column: 9, scope: !1262)
!1264 = !DILocation(line: 46, column: 25, scope: !1262)
!1265 = !DILocation(line: 46, column: 40, scope: !1262)
!1266 = !DILocalVariable(name: "__s1", arg: 1, scope: !1267, file: !752, line: 974, type: !924)
!1267 = distinct !DISubprogram(name: "memeq", scope: !752, file: !752, line: 974, type: !1268, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !363, retainedNodes: !1270)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!217, !924, !924, !97}
!1270 = !{!1266, !1271, !1272}
!1271 = !DILocalVariable(name: "__s2", arg: 2, scope: !1267, file: !752, line: 974, type: !924)
!1272 = !DILocalVariable(name: "__n", arg: 3, scope: !1267, file: !752, line: 974, type: !97)
!1273 = !DILocation(line: 0, scope: !1267, inlinedAt: !1274)
!1274 = distinct !DILocation(line: 46, column: 28, scope: !1262)
!1275 = !DILocation(line: 976, column: 11, scope: !1267, inlinedAt: !1274)
!1276 = !DILocation(line: 976, column: 10, scope: !1267, inlinedAt: !1274)
!1277 = !DILocation(line: 46, column: 7, scope: !1253)
!1278 = !DILocation(line: 49, column: 11, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !364, line: 49, column: 11)
!1280 = distinct !DILexicalBlock(scope: !1262, file: !364, line: 47, column: 5)
!1281 = !DILocation(line: 49, column: 36, scope: !1279)
!1282 = !DILocation(line: 49, column: 11, scope: !1280)
!1283 = !DILocation(line: 65, column: 16, scope: !1253)
!1284 = !DILocation(line: 71, column: 27, scope: !1253)
!1285 = !DILocation(line: 74, column: 33, scope: !1253)
!1286 = !DILocation(line: 76, column: 1, scope: !1253)
!1287 = !DISubprogram(name: "strrchr", scope: !893, file: !893, line: 273, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1288 = distinct !DIAssignID()
!1289 = !DILocation(line: 0, scope: !373)
!1290 = distinct !DIAssignID()
!1291 = !DILocation(line: 40, column: 29, scope: !373)
!1292 = !DILocation(line: 41, column: 19, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !373, file: !374, line: 41, column: 7)
!1294 = !DILocation(line: 41, column: 7, scope: !373)
!1295 = !DILocation(line: 47, column: 3, scope: !373)
!1296 = !DILocation(line: 48, column: 3, scope: !373)
!1297 = !DILocalVariable(name: "ps", arg: 1, scope: !1298, file: !1299, line: 1135, type: !1302)
!1298 = distinct !DISubprogram(name: "mbszero", scope: !1299, file: !1299, line: 1135, type: !1300, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1303)
!1299 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!1303 = !{!1297}
!1304 = !DILocation(line: 0, scope: !1298, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 48, column: 18, scope: !373)
!1306 = !DILocalVariable(name: "__dest", arg: 1, scope: !1307, file: !1308, line: 57, type: !94)
!1307 = distinct !DISubprogram(name: "memset", scope: !1308, file: !1308, line: 57, type: !1309, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1311)
!1308 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!94, !94, !95, !97}
!1311 = !{!1306, !1312, !1313}
!1312 = !DILocalVariable(name: "__ch", arg: 2, scope: !1307, file: !1308, line: 57, type: !95)
!1313 = !DILocalVariable(name: "__len", arg: 3, scope: !1307, file: !1308, line: 57, type: !97)
!1314 = !DILocation(line: 0, scope: !1307, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 1137, column: 3, scope: !1298, inlinedAt: !1305)
!1316 = !DILocation(line: 59, column: 10, scope: !1307, inlinedAt: !1315)
!1317 = !DILocation(line: 49, column: 7, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !373, file: !374, line: 49, column: 7)
!1319 = !DILocation(line: 49, column: 39, scope: !1318)
!1320 = !DILocation(line: 49, column: 44, scope: !1318)
!1321 = !DILocation(line: 54, column: 1, scope: !373)
!1322 = !DISubprogram(name: "mbrtoc32", scope: !385, file: !385, line: 57, type: !1323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!97, !1325, !736, !97, !1327}
!1325 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1326)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1302)
!1328 = distinct !DISubprogram(name: "clone_quoting_options", scope: !404, file: !404, line: 113, type: !1329, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1332)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!1331, !1331}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!1332 = !{!1333, !1334, !1335}
!1333 = !DILocalVariable(name: "o", arg: 1, scope: !1328, file: !404, line: 113, type: !1331)
!1334 = !DILocalVariable(name: "saved_errno", scope: !1328, file: !404, line: 115, type: !95)
!1335 = !DILocalVariable(name: "p", scope: !1328, file: !404, line: 116, type: !1331)
!1336 = !DILocation(line: 0, scope: !1328)
!1337 = !DILocation(line: 115, column: 21, scope: !1328)
!1338 = !DILocation(line: 116, column: 40, scope: !1328)
!1339 = !DILocation(line: 116, column: 31, scope: !1328)
!1340 = !DILocation(line: 118, column: 9, scope: !1328)
!1341 = !DILocation(line: 119, column: 3, scope: !1328)
!1342 = distinct !DISubprogram(name: "get_quoting_style", scope: !404, file: !404, line: 124, type: !1343, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1347)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!427, !1345}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!1347 = !{!1348}
!1348 = !DILocalVariable(name: "o", arg: 1, scope: !1342, file: !404, line: 124, type: !1345)
!1349 = !DILocation(line: 0, scope: !1342)
!1350 = !DILocation(line: 126, column: 11, scope: !1342)
!1351 = !DILocation(line: 126, column: 46, scope: !1342)
!1352 = !{!1353, !740, i64 0}
!1353 = !{!"quoting_options", !740, i64 0, !740, i64 4, !720, i64 8, !719, i64 40, !719, i64 48}
!1354 = !DILocation(line: 126, column: 3, scope: !1342)
!1355 = distinct !DISubprogram(name: "set_quoting_style", scope: !404, file: !404, line: 132, type: !1356, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1358)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{null, !1331, !427}
!1358 = !{!1359, !1360}
!1359 = !DILocalVariable(name: "o", arg: 1, scope: !1355, file: !404, line: 132, type: !1331)
!1360 = !DILocalVariable(name: "s", arg: 2, scope: !1355, file: !404, line: 132, type: !427)
!1361 = !DILocation(line: 0, scope: !1355)
!1362 = !DILocation(line: 134, column: 4, scope: !1355)
!1363 = !DILocation(line: 134, column: 45, scope: !1355)
!1364 = !DILocation(line: 135, column: 1, scope: !1355)
!1365 = distinct !DISubprogram(name: "set_char_quoting", scope: !404, file: !404, line: 143, type: !1366, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1368)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!95, !1331, !4, !95}
!1368 = !{!1369, !1370, !1371, !1372, !1373, !1375, !1376}
!1369 = !DILocalVariable(name: "o", arg: 1, scope: !1365, file: !404, line: 143, type: !1331)
!1370 = !DILocalVariable(name: "c", arg: 2, scope: !1365, file: !404, line: 143, type: !4)
!1371 = !DILocalVariable(name: "i", arg: 3, scope: !1365, file: !404, line: 143, type: !95)
!1372 = !DILocalVariable(name: "uc", scope: !1365, file: !404, line: 145, type: !100)
!1373 = !DILocalVariable(name: "p", scope: !1365, file: !404, line: 146, type: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!1375 = !DILocalVariable(name: "shift", scope: !1365, file: !404, line: 148, type: !95)
!1376 = !DILocalVariable(name: "r", scope: !1365, file: !404, line: 149, type: !78)
!1377 = !DILocation(line: 0, scope: !1365)
!1378 = !DILocation(line: 147, column: 6, scope: !1365)
!1379 = !DILocation(line: 147, column: 41, scope: !1365)
!1380 = !DILocation(line: 147, column: 62, scope: !1365)
!1381 = !DILocation(line: 147, column: 57, scope: !1365)
!1382 = !DILocation(line: 148, column: 15, scope: !1365)
!1383 = !DILocation(line: 149, column: 21, scope: !1365)
!1384 = !DILocation(line: 149, column: 24, scope: !1365)
!1385 = !DILocation(line: 149, column: 34, scope: !1365)
!1386 = !DILocation(line: 150, column: 19, scope: !1365)
!1387 = !DILocation(line: 150, column: 24, scope: !1365)
!1388 = !DILocation(line: 150, column: 6, scope: !1365)
!1389 = !DILocation(line: 151, column: 3, scope: !1365)
!1390 = distinct !DISubprogram(name: "set_quoting_flags", scope: !404, file: !404, line: 159, type: !1391, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1393)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!95, !1331, !95}
!1393 = !{!1394, !1395, !1396}
!1394 = !DILocalVariable(name: "o", arg: 1, scope: !1390, file: !404, line: 159, type: !1331)
!1395 = !DILocalVariable(name: "i", arg: 2, scope: !1390, file: !404, line: 159, type: !95)
!1396 = !DILocalVariable(name: "r", scope: !1390, file: !404, line: 163, type: !95)
!1397 = !DILocation(line: 0, scope: !1390)
!1398 = !DILocation(line: 161, column: 8, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1390, file: !404, line: 161, column: 7)
!1400 = !DILocation(line: 161, column: 7, scope: !1390)
!1401 = !DILocation(line: 163, column: 14, scope: !1390)
!1402 = !{!1353, !740, i64 4}
!1403 = !DILocation(line: 164, column: 12, scope: !1390)
!1404 = !DILocation(line: 165, column: 3, scope: !1390)
!1405 = distinct !DISubprogram(name: "set_custom_quoting", scope: !404, file: !404, line: 169, type: !1406, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1408)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !1331, !72, !72}
!1408 = !{!1409, !1410, !1411}
!1409 = !DILocalVariable(name: "o", arg: 1, scope: !1405, file: !404, line: 169, type: !1331)
!1410 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1405, file: !404, line: 170, type: !72)
!1411 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1405, file: !404, line: 170, type: !72)
!1412 = !DILocation(line: 0, scope: !1405)
!1413 = !DILocation(line: 172, column: 8, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1405, file: !404, line: 172, column: 7)
!1415 = !DILocation(line: 172, column: 7, scope: !1405)
!1416 = !DILocation(line: 174, column: 12, scope: !1405)
!1417 = !DILocation(line: 175, column: 8, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1405, file: !404, line: 175, column: 7)
!1419 = !DILocation(line: 175, column: 19, scope: !1418)
!1420 = !DILocation(line: 176, column: 5, scope: !1418)
!1421 = !DILocation(line: 177, column: 6, scope: !1405)
!1422 = !DILocation(line: 177, column: 17, scope: !1405)
!1423 = !{!1353, !719, i64 40}
!1424 = !DILocation(line: 178, column: 6, scope: !1405)
!1425 = !DILocation(line: 178, column: 18, scope: !1405)
!1426 = !{!1353, !719, i64 48}
!1427 = !DILocation(line: 179, column: 1, scope: !1405)
!1428 = !DISubprogram(name: "abort", scope: !887, file: !887, line: 598, type: !359, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1429 = distinct !DISubprogram(name: "quotearg_buffer", scope: !404, file: !404, line: 774, type: !1430, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1432)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!97, !93, !97, !72, !97, !1345}
!1432 = !{!1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440}
!1433 = !DILocalVariable(name: "buffer", arg: 1, scope: !1429, file: !404, line: 774, type: !93)
!1434 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1429, file: !404, line: 774, type: !97)
!1435 = !DILocalVariable(name: "arg", arg: 3, scope: !1429, file: !404, line: 775, type: !72)
!1436 = !DILocalVariable(name: "argsize", arg: 4, scope: !1429, file: !404, line: 775, type: !97)
!1437 = !DILocalVariable(name: "o", arg: 5, scope: !1429, file: !404, line: 776, type: !1345)
!1438 = !DILocalVariable(name: "p", scope: !1429, file: !404, line: 778, type: !1345)
!1439 = !DILocalVariable(name: "saved_errno", scope: !1429, file: !404, line: 779, type: !95)
!1440 = !DILocalVariable(name: "r", scope: !1429, file: !404, line: 780, type: !97)
!1441 = !DILocation(line: 0, scope: !1429)
!1442 = !DILocation(line: 778, column: 37, scope: !1429)
!1443 = !DILocation(line: 779, column: 21, scope: !1429)
!1444 = !DILocation(line: 781, column: 43, scope: !1429)
!1445 = !DILocation(line: 781, column: 53, scope: !1429)
!1446 = !DILocation(line: 781, column: 63, scope: !1429)
!1447 = !DILocation(line: 782, column: 43, scope: !1429)
!1448 = !DILocation(line: 782, column: 58, scope: !1429)
!1449 = !DILocation(line: 780, column: 14, scope: !1429)
!1450 = !DILocation(line: 783, column: 9, scope: !1429)
!1451 = !DILocation(line: 784, column: 3, scope: !1429)
!1452 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !404, file: !404, line: 251, type: !1453, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1457)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!97, !93, !97, !72, !97, !427, !95, !1455, !72, !72}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!1457 = !{!1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1483, !1485, !1488, !1489, !1490, !1491, !1494, !1495, !1497, !1498, !1501, !1505, !1506, !1514, !1517, !1518, !1519}
!1458 = !DILocalVariable(name: "buffer", arg: 1, scope: !1452, file: !404, line: 251, type: !93)
!1459 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1452, file: !404, line: 251, type: !97)
!1460 = !DILocalVariable(name: "arg", arg: 3, scope: !1452, file: !404, line: 252, type: !72)
!1461 = !DILocalVariable(name: "argsize", arg: 4, scope: !1452, file: !404, line: 252, type: !97)
!1462 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1452, file: !404, line: 253, type: !427)
!1463 = !DILocalVariable(name: "flags", arg: 6, scope: !1452, file: !404, line: 253, type: !95)
!1464 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1452, file: !404, line: 254, type: !1455)
!1465 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1452, file: !404, line: 255, type: !72)
!1466 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1452, file: !404, line: 256, type: !72)
!1467 = !DILocalVariable(name: "unibyte_locale", scope: !1452, file: !404, line: 258, type: !217)
!1468 = !DILocalVariable(name: "len", scope: !1452, file: !404, line: 260, type: !97)
!1469 = !DILocalVariable(name: "orig_buffersize", scope: !1452, file: !404, line: 261, type: !97)
!1470 = !DILocalVariable(name: "quote_string", scope: !1452, file: !404, line: 262, type: !72)
!1471 = !DILocalVariable(name: "quote_string_len", scope: !1452, file: !404, line: 263, type: !97)
!1472 = !DILocalVariable(name: "backslash_escapes", scope: !1452, file: !404, line: 264, type: !217)
!1473 = !DILocalVariable(name: "elide_outer_quotes", scope: !1452, file: !404, line: 265, type: !217)
!1474 = !DILocalVariable(name: "encountered_single_quote", scope: !1452, file: !404, line: 266, type: !217)
!1475 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1452, file: !404, line: 267, type: !217)
!1476 = !DILabel(scope: !1452, name: "process_input", file: !404, line: 308)
!1477 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1452, file: !404, line: 309, type: !217)
!1478 = !DILocalVariable(name: "lq", scope: !1479, file: !404, line: 361, type: !72)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !404, line: 361, column: 11)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !404, line: 360, column: 13)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !404, line: 333, column: 7)
!1482 = distinct !DILexicalBlock(scope: !1452, file: !404, line: 312, column: 5)
!1483 = !DILocalVariable(name: "i", scope: !1484, file: !404, line: 395, type: !97)
!1484 = distinct !DILexicalBlock(scope: !1452, file: !404, line: 395, column: 3)
!1485 = !DILocalVariable(name: "is_right_quote", scope: !1486, file: !404, line: 397, type: !217)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !404, line: 396, column: 5)
!1487 = distinct !DILexicalBlock(scope: !1484, file: !404, line: 395, column: 3)
!1488 = !DILocalVariable(name: "escaping", scope: !1486, file: !404, line: 398, type: !217)
!1489 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1486, file: !404, line: 399, type: !217)
!1490 = !DILocalVariable(name: "c", scope: !1486, file: !404, line: 417, type: !100)
!1491 = !DILabel(scope: !1492, name: "c_and_shell_escape", file: !404, line: 502)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !404, line: 478, column: 9)
!1493 = distinct !DILexicalBlock(scope: !1486, file: !404, line: 419, column: 9)
!1494 = !DILabel(scope: !1492, name: "c_escape", file: !404, line: 507)
!1495 = !DILocalVariable(name: "m", scope: !1496, file: !404, line: 598, type: !97)
!1496 = distinct !DILexicalBlock(scope: !1493, file: !404, line: 596, column: 11)
!1497 = !DILocalVariable(name: "printable", scope: !1496, file: !404, line: 600, type: !217)
!1498 = !DILocalVariable(name: "mbs", scope: !1499, file: !404, line: 609, type: !488)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !404, line: 608, column: 15)
!1500 = distinct !DILexicalBlock(scope: !1496, file: !404, line: 602, column: 17)
!1501 = !DILocalVariable(name: "w", scope: !1502, file: !404, line: 618, type: !384)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !404, line: 617, column: 19)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !404, line: 616, column: 17)
!1504 = distinct !DILexicalBlock(scope: !1499, file: !404, line: 616, column: 17)
!1505 = !DILocalVariable(name: "bytes", scope: !1502, file: !404, line: 619, type: !97)
!1506 = !DILocalVariable(name: "j", scope: !1507, file: !404, line: 648, type: !97)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !404, line: 648, column: 29)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !404, line: 647, column: 27)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !404, line: 645, column: 29)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !404, line: 636, column: 23)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !404, line: 628, column: 30)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !404, line: 623, column: 30)
!1513 = distinct !DILexicalBlock(scope: !1502, file: !404, line: 621, column: 25)
!1514 = !DILocalVariable(name: "ilim", scope: !1515, file: !404, line: 674, type: !97)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !404, line: 671, column: 15)
!1516 = distinct !DILexicalBlock(scope: !1496, file: !404, line: 670, column: 17)
!1517 = !DILabel(scope: !1486, name: "store_escape", file: !404, line: 709)
!1518 = !DILabel(scope: !1486, name: "store_c", file: !404, line: 712)
!1519 = !DILabel(scope: !1452, name: "force_outer_quoting_style", file: !404, line: 753)
!1520 = distinct !DIAssignID()
!1521 = distinct !DIAssignID()
!1522 = distinct !DIAssignID()
!1523 = distinct !DIAssignID()
!1524 = distinct !DIAssignID()
!1525 = !DILocation(line: 0, scope: !1499)
!1526 = distinct !DIAssignID()
!1527 = !DILocation(line: 0, scope: !1502)
!1528 = !DILocation(line: 0, scope: !1452)
!1529 = !DILocation(line: 258, column: 25, scope: !1452)
!1530 = !DILocation(line: 258, column: 36, scope: !1452)
!1531 = !DILocation(line: 265, column: 8, scope: !1452)
!1532 = !DILocation(line: 267, column: 3, scope: !1452)
!1533 = !DILocation(line: 261, column: 10, scope: !1452)
!1534 = !DILocation(line: 262, column: 15, scope: !1452)
!1535 = !DILocation(line: 263, column: 10, scope: !1452)
!1536 = !DILocation(line: 264, column: 8, scope: !1452)
!1537 = !DILocation(line: 266, column: 8, scope: !1452)
!1538 = !DILocation(line: 267, column: 8, scope: !1452)
!1539 = !DILocation(line: 308, column: 2, scope: !1452)
!1540 = !DILocation(line: 311, column: 3, scope: !1452)
!1541 = !DILocation(line: 318, column: 11, scope: !1482)
!1542 = !DILocation(line: 318, column: 12, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1482, file: !404, line: 318, column: 11)
!1544 = !DILocation(line: 319, column: 9, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !404, line: 319, column: 9)
!1546 = distinct !DILexicalBlock(scope: !1543, file: !404, line: 319, column: 9)
!1547 = !DILocation(line: 319, column: 9, scope: !1546)
!1548 = !DILocation(line: 0, scope: !479, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 357, column: 26, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !404, line: 335, column: 11)
!1551 = distinct !DILexicalBlock(scope: !1481, file: !404, line: 334, column: 13)
!1552 = !DILocation(line: 199, column: 29, scope: !479, inlinedAt: !1549)
!1553 = !DILocation(line: 201, column: 19, scope: !1554, inlinedAt: !1549)
!1554 = distinct !DILexicalBlock(scope: !479, file: !404, line: 201, column: 7)
!1555 = !DILocation(line: 201, column: 7, scope: !479, inlinedAt: !1549)
!1556 = !DILocation(line: 229, column: 3, scope: !479, inlinedAt: !1549)
!1557 = !DILocation(line: 230, column: 3, scope: !479, inlinedAt: !1549)
!1558 = !DILocalVariable(name: "ps", arg: 1, scope: !1559, file: !1299, line: 1135, type: !1562)
!1559 = distinct !DISubprogram(name: "mbszero", scope: !1299, file: !1299, line: 1135, type: !1560, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1563)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{null, !1562}
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!1563 = !{!1558}
!1564 = !DILocation(line: 0, scope: !1559, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 230, column: 18, scope: !479, inlinedAt: !1549)
!1566 = !DILocalVariable(name: "__dest", arg: 1, scope: !1567, file: !1308, line: 57, type: !94)
!1567 = distinct !DISubprogram(name: "memset", scope: !1308, file: !1308, line: 57, type: !1309, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1568)
!1568 = !{!1566, !1569, !1570}
!1569 = !DILocalVariable(name: "__ch", arg: 2, scope: !1567, file: !1308, line: 57, type: !95)
!1570 = !DILocalVariable(name: "__len", arg: 3, scope: !1567, file: !1308, line: 57, type: !97)
!1571 = !DILocation(line: 0, scope: !1567, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 1137, column: 3, scope: !1559, inlinedAt: !1565)
!1573 = !DILocation(line: 59, column: 10, scope: !1567, inlinedAt: !1572)
!1574 = !DILocation(line: 231, column: 7, scope: !1575, inlinedAt: !1549)
!1575 = distinct !DILexicalBlock(scope: !479, file: !404, line: 231, column: 7)
!1576 = !DILocation(line: 231, column: 40, scope: !1575, inlinedAt: !1549)
!1577 = !DILocation(line: 231, column: 45, scope: !1575, inlinedAt: !1549)
!1578 = !DILocation(line: 235, column: 1, scope: !479, inlinedAt: !1549)
!1579 = !DILocation(line: 0, scope: !479, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 358, column: 27, scope: !1550)
!1581 = !DILocation(line: 199, column: 29, scope: !479, inlinedAt: !1580)
!1582 = !DILocation(line: 201, column: 19, scope: !1554, inlinedAt: !1580)
!1583 = !DILocation(line: 201, column: 7, scope: !479, inlinedAt: !1580)
!1584 = !DILocation(line: 229, column: 3, scope: !479, inlinedAt: !1580)
!1585 = !DILocation(line: 230, column: 3, scope: !479, inlinedAt: !1580)
!1586 = !DILocation(line: 0, scope: !1559, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 230, column: 18, scope: !479, inlinedAt: !1580)
!1588 = !DILocation(line: 0, scope: !1567, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 1137, column: 3, scope: !1559, inlinedAt: !1587)
!1590 = !DILocation(line: 59, column: 10, scope: !1567, inlinedAt: !1589)
!1591 = !DILocation(line: 231, column: 7, scope: !1575, inlinedAt: !1580)
!1592 = !DILocation(line: 231, column: 40, scope: !1575, inlinedAt: !1580)
!1593 = !DILocation(line: 231, column: 45, scope: !1575, inlinedAt: !1580)
!1594 = !DILocation(line: 235, column: 1, scope: !479, inlinedAt: !1580)
!1595 = !DILocation(line: 360, column: 14, scope: !1480)
!1596 = !DILocation(line: 360, column: 13, scope: !1481)
!1597 = !DILocation(line: 0, scope: !1479)
!1598 = !DILocation(line: 361, column: 45, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1479, file: !404, line: 361, column: 11)
!1600 = !DILocation(line: 361, column: 11, scope: !1479)
!1601 = !DILocation(line: 362, column: 13, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !404, line: 362, column: 13)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !404, line: 362, column: 13)
!1604 = !DILocation(line: 362, column: 13, scope: !1603)
!1605 = !DILocation(line: 361, column: 52, scope: !1599)
!1606 = distinct !{!1606, !1600, !1607, !786}
!1607 = !DILocation(line: 362, column: 13, scope: !1479)
!1608 = !DILocation(line: 260, column: 10, scope: !1452)
!1609 = !DILocation(line: 365, column: 28, scope: !1481)
!1610 = !DILocation(line: 367, column: 7, scope: !1482)
!1611 = !DILocation(line: 370, column: 7, scope: !1482)
!1612 = !DILocation(line: 373, column: 7, scope: !1482)
!1613 = !DILocation(line: 376, column: 12, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1482, file: !404, line: 376, column: 11)
!1615 = !DILocation(line: 376, column: 11, scope: !1482)
!1616 = !DILocation(line: 381, column: 12, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1482, file: !404, line: 381, column: 11)
!1618 = !DILocation(line: 381, column: 11, scope: !1482)
!1619 = !DILocation(line: 382, column: 9, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !404, line: 382, column: 9)
!1621 = distinct !DILexicalBlock(scope: !1617, file: !404, line: 382, column: 9)
!1622 = !DILocation(line: 382, column: 9, scope: !1621)
!1623 = !DILocation(line: 389, column: 7, scope: !1482)
!1624 = !DILocation(line: 392, column: 7, scope: !1482)
!1625 = !DILocation(line: 0, scope: !1484)
!1626 = !DILocation(line: 395, column: 8, scope: !1484)
!1627 = !DILocation(line: 309, column: 8, scope: !1452)
!1628 = !DILocation(line: 395, scope: !1484)
!1629 = !DILocation(line: 395, column: 34, scope: !1487)
!1630 = !DILocation(line: 395, column: 26, scope: !1487)
!1631 = !DILocation(line: 395, column: 48, scope: !1487)
!1632 = !DILocation(line: 395, column: 55, scope: !1487)
!1633 = !DILocation(line: 395, column: 3, scope: !1484)
!1634 = !DILocation(line: 395, column: 67, scope: !1487)
!1635 = !DILocation(line: 0, scope: !1486)
!1636 = !DILocation(line: 402, column: 11, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1486, file: !404, line: 401, column: 11)
!1638 = !DILocation(line: 404, column: 17, scope: !1637)
!1639 = !DILocation(line: 405, column: 39, scope: !1637)
!1640 = !DILocation(line: 409, column: 32, scope: !1637)
!1641 = !DILocation(line: 405, column: 19, scope: !1637)
!1642 = !DILocation(line: 405, column: 15, scope: !1637)
!1643 = !DILocation(line: 410, column: 11, scope: !1637)
!1644 = !DILocation(line: 410, column: 25, scope: !1637)
!1645 = !DILocalVariable(name: "__s1", arg: 1, scope: !1646, file: !752, line: 974, type: !924)
!1646 = distinct !DISubprogram(name: "memeq", scope: !752, file: !752, line: 974, type: !1268, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1647)
!1647 = !{!1645, !1648, !1649}
!1648 = !DILocalVariable(name: "__s2", arg: 2, scope: !1646, file: !752, line: 974, type: !924)
!1649 = !DILocalVariable(name: "__n", arg: 3, scope: !1646, file: !752, line: 974, type: !97)
!1650 = !DILocation(line: 0, scope: !1646, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 410, column: 14, scope: !1637)
!1652 = !DILocation(line: 976, column: 11, scope: !1646, inlinedAt: !1651)
!1653 = !DILocation(line: 976, column: 10, scope: !1646, inlinedAt: !1651)
!1654 = !DILocation(line: 401, column: 11, scope: !1486)
!1655 = !DILocation(line: 417, column: 25, scope: !1486)
!1656 = !DILocation(line: 418, column: 7, scope: !1486)
!1657 = !DILocation(line: 421, column: 15, scope: !1493)
!1658 = !DILocation(line: 423, column: 15, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !404, line: 423, column: 15)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !404, line: 422, column: 13)
!1661 = distinct !DILexicalBlock(scope: !1493, file: !404, line: 421, column: 15)
!1662 = !DILocation(line: 423, column: 15, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !404, line: 423, column: 15)
!1664 = !DILocation(line: 423, column: 15, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !404, line: 423, column: 15)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !404, line: 423, column: 15)
!1667 = distinct !DILexicalBlock(scope: !1663, file: !404, line: 423, column: 15)
!1668 = !DILocation(line: 423, column: 15, scope: !1666)
!1669 = !DILocation(line: 423, column: 15, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !404, line: 423, column: 15)
!1671 = distinct !DILexicalBlock(scope: !1667, file: !404, line: 423, column: 15)
!1672 = !DILocation(line: 423, column: 15, scope: !1671)
!1673 = !DILocation(line: 423, column: 15, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !404, line: 423, column: 15)
!1675 = distinct !DILexicalBlock(scope: !1667, file: !404, line: 423, column: 15)
!1676 = !DILocation(line: 423, column: 15, scope: !1675)
!1677 = !DILocation(line: 423, column: 15, scope: !1667)
!1678 = !DILocation(line: 423, column: 15, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !404, line: 423, column: 15)
!1680 = distinct !DILexicalBlock(scope: !1659, file: !404, line: 423, column: 15)
!1681 = !DILocation(line: 423, column: 15, scope: !1680)
!1682 = !DILocation(line: 431, column: 19, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1660, file: !404, line: 430, column: 19)
!1684 = !DILocation(line: 431, column: 24, scope: !1683)
!1685 = !DILocation(line: 431, column: 28, scope: !1683)
!1686 = !DILocation(line: 431, column: 38, scope: !1683)
!1687 = !DILocation(line: 431, column: 48, scope: !1683)
!1688 = !DILocation(line: 431, column: 59, scope: !1683)
!1689 = !DILocation(line: 433, column: 19, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !404, line: 433, column: 19)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !404, line: 433, column: 19)
!1692 = distinct !DILexicalBlock(scope: !1683, file: !404, line: 432, column: 17)
!1693 = !DILocation(line: 433, column: 19, scope: !1691)
!1694 = !DILocation(line: 434, column: 19, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !404, line: 434, column: 19)
!1696 = distinct !DILexicalBlock(scope: !1692, file: !404, line: 434, column: 19)
!1697 = !DILocation(line: 434, column: 19, scope: !1696)
!1698 = !DILocation(line: 435, column: 17, scope: !1692)
!1699 = !DILocation(line: 442, column: 20, scope: !1661)
!1700 = !DILocation(line: 447, column: 11, scope: !1493)
!1701 = !DILocation(line: 450, column: 19, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1493, file: !404, line: 448, column: 13)
!1703 = !DILocation(line: 456, column: 19, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1702, file: !404, line: 455, column: 19)
!1705 = !DILocation(line: 456, column: 24, scope: !1704)
!1706 = !DILocation(line: 456, column: 28, scope: !1704)
!1707 = !DILocation(line: 456, column: 38, scope: !1704)
!1708 = !DILocation(line: 456, column: 41, scope: !1704)
!1709 = !DILocation(line: 456, column: 52, scope: !1704)
!1710 = !DILocation(line: 455, column: 19, scope: !1702)
!1711 = !DILocation(line: 457, column: 25, scope: !1704)
!1712 = !DILocation(line: 457, column: 17, scope: !1704)
!1713 = !DILocation(line: 464, column: 25, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1704, file: !404, line: 458, column: 19)
!1715 = !DILocation(line: 468, column: 21, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !404, line: 468, column: 21)
!1717 = distinct !DILexicalBlock(scope: !1714, file: !404, line: 468, column: 21)
!1718 = !DILocation(line: 468, column: 21, scope: !1717)
!1719 = !DILocation(line: 469, column: 21, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !404, line: 469, column: 21)
!1721 = distinct !DILexicalBlock(scope: !1714, file: !404, line: 469, column: 21)
!1722 = !DILocation(line: 469, column: 21, scope: !1721)
!1723 = !DILocation(line: 470, column: 21, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !404, line: 470, column: 21)
!1725 = distinct !DILexicalBlock(scope: !1714, file: !404, line: 470, column: 21)
!1726 = !DILocation(line: 470, column: 21, scope: !1725)
!1727 = !DILocation(line: 471, column: 21, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !404, line: 471, column: 21)
!1729 = distinct !DILexicalBlock(scope: !1714, file: !404, line: 471, column: 21)
!1730 = !DILocation(line: 471, column: 21, scope: !1729)
!1731 = !DILocation(line: 472, column: 21, scope: !1714)
!1732 = !DILocation(line: 482, column: 33, scope: !1492)
!1733 = !DILocation(line: 483, column: 33, scope: !1492)
!1734 = !DILocation(line: 485, column: 33, scope: !1492)
!1735 = !DILocation(line: 486, column: 33, scope: !1492)
!1736 = !DILocation(line: 487, column: 33, scope: !1492)
!1737 = !DILocation(line: 490, column: 17, scope: !1492)
!1738 = !DILocation(line: 492, column: 21, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !404, line: 491, column: 15)
!1740 = distinct !DILexicalBlock(scope: !1492, file: !404, line: 490, column: 17)
!1741 = !DILocation(line: 499, column: 35, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1492, file: !404, line: 499, column: 17)
!1743 = !DILocation(line: 499, column: 57, scope: !1742)
!1744 = !DILocation(line: 0, scope: !1492)
!1745 = !DILocation(line: 502, column: 11, scope: !1492)
!1746 = !DILocation(line: 504, column: 17, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1492, file: !404, line: 503, column: 17)
!1748 = !DILocation(line: 507, column: 11, scope: !1492)
!1749 = !DILocation(line: 508, column: 17, scope: !1492)
!1750 = !DILocation(line: 517, column: 15, scope: !1493)
!1751 = !DILocation(line: 517, column: 40, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1493, file: !404, line: 517, column: 15)
!1753 = !DILocation(line: 517, column: 47, scope: !1752)
!1754 = !DILocation(line: 517, column: 18, scope: !1752)
!1755 = !DILocation(line: 521, column: 17, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1493, file: !404, line: 521, column: 15)
!1757 = !DILocation(line: 521, column: 15, scope: !1493)
!1758 = !DILocation(line: 525, column: 11, scope: !1493)
!1759 = !DILocation(line: 537, column: 15, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1493, file: !404, line: 536, column: 15)
!1761 = !DILocation(line: 544, column: 15, scope: !1493)
!1762 = !DILocation(line: 546, column: 19, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !404, line: 545, column: 13)
!1764 = distinct !DILexicalBlock(scope: !1493, file: !404, line: 544, column: 15)
!1765 = !DILocation(line: 549, column: 19, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1763, file: !404, line: 549, column: 19)
!1767 = !DILocation(line: 549, column: 30, scope: !1766)
!1768 = !DILocation(line: 558, column: 15, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !404, line: 558, column: 15)
!1770 = distinct !DILexicalBlock(scope: !1763, file: !404, line: 558, column: 15)
!1771 = !DILocation(line: 558, column: 15, scope: !1770)
!1772 = !DILocation(line: 559, column: 15, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !404, line: 559, column: 15)
!1774 = distinct !DILexicalBlock(scope: !1763, file: !404, line: 559, column: 15)
!1775 = !DILocation(line: 559, column: 15, scope: !1774)
!1776 = !DILocation(line: 560, column: 15, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !404, line: 560, column: 15)
!1778 = distinct !DILexicalBlock(scope: !1763, file: !404, line: 560, column: 15)
!1779 = !DILocation(line: 560, column: 15, scope: !1778)
!1780 = !DILocation(line: 562, column: 13, scope: !1763)
!1781 = !DILocation(line: 602, column: 17, scope: !1496)
!1782 = !DILocation(line: 0, scope: !1496)
!1783 = !DILocation(line: 605, column: 29, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1500, file: !404, line: 603, column: 15)
!1785 = !DILocation(line: 605, column: 27, scope: !1784)
!1786 = !DILocation(line: 606, column: 15, scope: !1784)
!1787 = !DILocation(line: 609, column: 17, scope: !1499)
!1788 = !DILocation(line: 0, scope: !1559, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 609, column: 32, scope: !1499)
!1790 = !DILocation(line: 0, scope: !1567, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 1137, column: 3, scope: !1559, inlinedAt: !1789)
!1792 = !DILocation(line: 59, column: 10, scope: !1567, inlinedAt: !1791)
!1793 = !DILocation(line: 613, column: 29, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1499, file: !404, line: 613, column: 21)
!1795 = !DILocation(line: 613, column: 21, scope: !1499)
!1796 = !DILocation(line: 614, column: 29, scope: !1794)
!1797 = !DILocation(line: 614, column: 19, scope: !1794)
!1798 = !DILocation(line: 618, column: 21, scope: !1502)
!1799 = !DILocation(line: 620, column: 54, scope: !1502)
!1800 = !DILocation(line: 619, column: 36, scope: !1502)
!1801 = !DILocation(line: 621, column: 25, scope: !1502)
!1802 = !DILocation(line: 631, column: 38, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1511, file: !404, line: 629, column: 23)
!1804 = !DILocation(line: 631, column: 48, scope: !1803)
!1805 = !DILocation(line: 626, column: 25, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1512, file: !404, line: 624, column: 23)
!1807 = !DILocation(line: 631, column: 51, scope: !1803)
!1808 = !DILocation(line: 631, column: 25, scope: !1803)
!1809 = !DILocation(line: 632, column: 28, scope: !1803)
!1810 = !DILocation(line: 631, column: 34, scope: !1803)
!1811 = distinct !{!1811, !1808, !1809, !786}
!1812 = !DILocation(line: 0, scope: !1507)
!1813 = !DILocation(line: 646, column: 29, scope: !1509)
!1814 = !DILocation(line: 649, column: 39, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1507, file: !404, line: 648, column: 29)
!1816 = !DILocation(line: 649, column: 31, scope: !1815)
!1817 = !DILocation(line: 648, column: 60, scope: !1815)
!1818 = !DILocation(line: 648, column: 50, scope: !1815)
!1819 = !DILocation(line: 648, column: 29, scope: !1507)
!1820 = distinct !{!1820, !1819, !1821, !786}
!1821 = !DILocation(line: 654, column: 33, scope: !1507)
!1822 = !DILocation(line: 657, column: 43, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1510, file: !404, line: 657, column: 29)
!1824 = !DILocalVariable(name: "wc", arg: 1, scope: !1825, file: !1826, line: 865, type: !1829)
!1825 = distinct !DISubprogram(name: "c32isprint", scope: !1826, file: !1826, line: 865, type: !1827, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1831)
!1826 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!95, !1829}
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1830, line: 20, baseType: !78)
!1830 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1831 = !{!1824}
!1832 = !DILocation(line: 0, scope: !1825, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 657, column: 31, scope: !1823)
!1834 = !DILocation(line: 871, column: 10, scope: !1825, inlinedAt: !1833)
!1835 = !DILocation(line: 657, column: 31, scope: !1823)
!1836 = !DILocation(line: 664, column: 23, scope: !1502)
!1837 = !DILocation(line: 665, column: 19, scope: !1503)
!1838 = !DILocation(line: 666, column: 15, scope: !1500)
!1839 = !DILocation(line: 0, scope: !1500)
!1840 = !DILocation(line: 670, column: 19, scope: !1516)
!1841 = !DILocation(line: 670, column: 23, scope: !1516)
!1842 = !DILocation(line: 674, column: 33, scope: !1515)
!1843 = !DILocation(line: 0, scope: !1515)
!1844 = !DILocation(line: 676, column: 17, scope: !1515)
!1845 = !DILocation(line: 398, column: 12, scope: !1486)
!1846 = !DILocation(line: 678, column: 43, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !404, line: 678, column: 25)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !404, line: 677, column: 19)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !404, line: 676, column: 17)
!1850 = distinct !DILexicalBlock(scope: !1515, file: !404, line: 676, column: 17)
!1851 = !DILocation(line: 680, column: 25, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !404, line: 680, column: 25)
!1853 = distinct !DILexicalBlock(scope: !1847, file: !404, line: 679, column: 23)
!1854 = !DILocation(line: 680, column: 25, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1852, file: !404, line: 680, column: 25)
!1856 = !DILocation(line: 680, column: 25, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !404, line: 680, column: 25)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !404, line: 680, column: 25)
!1859 = distinct !DILexicalBlock(scope: !1855, file: !404, line: 680, column: 25)
!1860 = !DILocation(line: 680, column: 25, scope: !1858)
!1861 = !DILocation(line: 680, column: 25, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !404, line: 680, column: 25)
!1863 = distinct !DILexicalBlock(scope: !1859, file: !404, line: 680, column: 25)
!1864 = !DILocation(line: 680, column: 25, scope: !1863)
!1865 = !DILocation(line: 680, column: 25, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !404, line: 680, column: 25)
!1867 = distinct !DILexicalBlock(scope: !1859, file: !404, line: 680, column: 25)
!1868 = !DILocation(line: 680, column: 25, scope: !1867)
!1869 = !DILocation(line: 680, column: 25, scope: !1859)
!1870 = !DILocation(line: 680, column: 25, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !404, line: 680, column: 25)
!1872 = distinct !DILexicalBlock(scope: !1852, file: !404, line: 680, column: 25)
!1873 = !DILocation(line: 680, column: 25, scope: !1872)
!1874 = !DILocation(line: 681, column: 25, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !404, line: 681, column: 25)
!1876 = distinct !DILexicalBlock(scope: !1853, file: !404, line: 681, column: 25)
!1877 = !DILocation(line: 681, column: 25, scope: !1876)
!1878 = !DILocation(line: 682, column: 25, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !404, line: 682, column: 25)
!1880 = distinct !DILexicalBlock(scope: !1853, file: !404, line: 682, column: 25)
!1881 = !DILocation(line: 682, column: 25, scope: !1880)
!1882 = !DILocation(line: 683, column: 38, scope: !1853)
!1883 = !DILocation(line: 683, column: 33, scope: !1853)
!1884 = !DILocation(line: 684, column: 23, scope: !1853)
!1885 = !DILocation(line: 685, column: 30, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1847, file: !404, line: 685, column: 30)
!1887 = !DILocation(line: 685, column: 30, scope: !1847)
!1888 = !DILocation(line: 687, column: 25, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !404, line: 687, column: 25)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !404, line: 687, column: 25)
!1891 = distinct !DILexicalBlock(scope: !1886, file: !404, line: 686, column: 23)
!1892 = !DILocation(line: 687, column: 25, scope: !1890)
!1893 = !DILocation(line: 689, column: 23, scope: !1891)
!1894 = !DILocation(line: 690, column: 35, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1848, file: !404, line: 690, column: 25)
!1896 = !DILocation(line: 690, column: 30, scope: !1895)
!1897 = !DILocation(line: 690, column: 25, scope: !1848)
!1898 = !DILocation(line: 692, column: 21, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !404, line: 692, column: 21)
!1900 = distinct !DILexicalBlock(scope: !1848, file: !404, line: 692, column: 21)
!1901 = !DILocation(line: 692, column: 21, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !404, line: 692, column: 21)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !404, line: 692, column: 21)
!1904 = distinct !DILexicalBlock(scope: !1899, file: !404, line: 692, column: 21)
!1905 = !DILocation(line: 692, column: 21, scope: !1903)
!1906 = !DILocation(line: 692, column: 21, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !404, line: 692, column: 21)
!1908 = distinct !DILexicalBlock(scope: !1904, file: !404, line: 692, column: 21)
!1909 = !DILocation(line: 692, column: 21, scope: !1908)
!1910 = !DILocation(line: 692, column: 21, scope: !1904)
!1911 = !DILocation(line: 0, scope: !1848)
!1912 = !DILocation(line: 693, column: 21, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !404, line: 693, column: 21)
!1914 = distinct !DILexicalBlock(scope: !1848, file: !404, line: 693, column: 21)
!1915 = !DILocation(line: 693, column: 21, scope: !1914)
!1916 = !DILocation(line: 694, column: 25, scope: !1848)
!1917 = !DILocation(line: 676, column: 17, scope: !1849)
!1918 = distinct !{!1918, !1919, !1920}
!1919 = !DILocation(line: 676, column: 17, scope: !1850)
!1920 = !DILocation(line: 695, column: 19, scope: !1850)
!1921 = !DILocation(line: 409, column: 30, scope: !1637)
!1922 = !DILocation(line: 702, column: 34, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1486, file: !404, line: 702, column: 11)
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
!1935 = distinct !DILexicalBlock(scope: !1486, file: !404, line: 710, column: 7)
!1936 = !DILocation(line: 710, column: 7, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1935, file: !404, line: 710, column: 7)
!1938 = !DILocation(line: 710, column: 7, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !404, line: 710, column: 7)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !404, line: 710, column: 7)
!1941 = distinct !DILexicalBlock(scope: !1937, file: !404, line: 710, column: 7)
!1942 = !DILocation(line: 710, column: 7, scope: !1940)
!1943 = !DILocation(line: 710, column: 7, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !404, line: 710, column: 7)
!1945 = distinct !DILexicalBlock(scope: !1941, file: !404, line: 710, column: 7)
!1946 = !DILocation(line: 710, column: 7, scope: !1945)
!1947 = !DILocation(line: 710, column: 7, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !404, line: 710, column: 7)
!1949 = distinct !DILexicalBlock(scope: !1941, file: !404, line: 710, column: 7)
!1950 = !DILocation(line: 710, column: 7, scope: !1949)
!1951 = !DILocation(line: 710, column: 7, scope: !1941)
!1952 = !DILocation(line: 710, column: 7, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !404, line: 710, column: 7)
!1954 = distinct !DILexicalBlock(scope: !1935, file: !404, line: 710, column: 7)
!1955 = !DILocation(line: 710, column: 7, scope: !1954)
!1956 = !DILocation(line: 712, column: 5, scope: !1486)
!1957 = !DILocation(line: 713, column: 7, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !404, line: 713, column: 7)
!1959 = distinct !DILexicalBlock(scope: !1486, file: !404, line: 713, column: 7)
!1960 = !DILocation(line: 417, column: 21, scope: !1486)
!1961 = !DILocation(line: 713, column: 7, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !404, line: 713, column: 7)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !404, line: 713, column: 7)
!1964 = distinct !DILexicalBlock(scope: !1958, file: !404, line: 713, column: 7)
!1965 = !DILocation(line: 713, column: 7, scope: !1963)
!1966 = !DILocation(line: 713, column: 7, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !404, line: 713, column: 7)
!1968 = distinct !DILexicalBlock(scope: !1964, file: !404, line: 713, column: 7)
!1969 = !DILocation(line: 713, column: 7, scope: !1968)
!1970 = !DILocation(line: 713, column: 7, scope: !1964)
!1971 = !DILocation(line: 714, column: 7, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !404, line: 714, column: 7)
!1973 = distinct !DILexicalBlock(scope: !1486, file: !404, line: 714, column: 7)
!1974 = !DILocation(line: 714, column: 7, scope: !1973)
!1975 = !DILocation(line: 716, column: 13, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1486, file: !404, line: 716, column: 11)
!1977 = !DILocation(line: 716, column: 11, scope: !1486)
!1978 = !DILocation(line: 718, column: 5, scope: !1487)
!1979 = !DILocation(line: 395, column: 82, scope: !1487)
!1980 = !DILocation(line: 395, column: 3, scope: !1487)
!1981 = distinct !{!1981, !1633, !1982, !786}
!1982 = !DILocation(line: 718, column: 5, scope: !1484)
!1983 = !DILocation(line: 720, column: 11, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1452, file: !404, line: 720, column: 7)
!1985 = !DILocation(line: 720, column: 16, scope: !1984)
!1986 = !DILocation(line: 728, column: 51, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1452, file: !404, line: 728, column: 7)
!1988 = !DILocation(line: 731, column: 11, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !404, line: 731, column: 11)
!1990 = distinct !DILexicalBlock(scope: !1987, file: !404, line: 730, column: 5)
!1991 = !DILocation(line: 731, column: 11, scope: !1990)
!1992 = !DILocation(line: 732, column: 16, scope: !1989)
!1993 = !DILocation(line: 732, column: 9, scope: !1989)
!1994 = !DILocation(line: 736, column: 18, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1989, file: !404, line: 736, column: 16)
!1996 = !DILocation(line: 736, column: 29, scope: !1995)
!1997 = !DILocation(line: 745, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1452, file: !404, line: 745, column: 7)
!1999 = !DILocation(line: 745, column: 20, scope: !1998)
!2000 = !DILocation(line: 746, column: 12, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !404, line: 746, column: 5)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !404, line: 746, column: 5)
!2003 = !DILocation(line: 746, column: 5, scope: !2002)
!2004 = !DILocation(line: 747, column: 7, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !404, line: 747, column: 7)
!2006 = distinct !DILexicalBlock(scope: !2001, file: !404, line: 747, column: 7)
!2007 = !DILocation(line: 747, column: 7, scope: !2006)
!2008 = !DILocation(line: 746, column: 39, scope: !2001)
!2009 = distinct !{!2009, !2003, !2010, !786}
!2010 = !DILocation(line: 747, column: 7, scope: !2002)
!2011 = !DILocation(line: 749, column: 11, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1452, file: !404, line: 749, column: 7)
!2013 = !DILocation(line: 749, column: 7, scope: !1452)
!2014 = !DILocation(line: 750, column: 5, scope: !2012)
!2015 = !DILocation(line: 750, column: 17, scope: !2012)
!2016 = !DILocation(line: 753, column: 2, scope: !1452)
!2017 = !DILocation(line: 756, column: 51, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1452, file: !404, line: 756, column: 7)
!2019 = !DILocation(line: 756, column: 21, scope: !2018)
!2020 = !DILocation(line: 760, column: 42, scope: !1452)
!2021 = !DILocation(line: 758, column: 10, scope: !1452)
!2022 = !DILocation(line: 758, column: 3, scope: !1452)
!2023 = !DILocation(line: 762, column: 1, scope: !1452)
!2024 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !887, file: !887, line: 98, type: !2025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!97}
!2027 = !DISubprogram(name: "strlen", scope: !893, file: !893, line: 407, type: !2028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!99, !72}
!2030 = !DISubprogram(name: "iswprint", scope: !2031, file: !2031, line: 120, type: !1827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2031 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2032 = distinct !DISubprogram(name: "quotearg_alloc", scope: !404, file: !404, line: 788, type: !2033, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2035)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!93, !72, !97, !1345}
!2035 = !{!2036, !2037, !2038}
!2036 = !DILocalVariable(name: "arg", arg: 1, scope: !2032, file: !404, line: 788, type: !72)
!2037 = !DILocalVariable(name: "argsize", arg: 2, scope: !2032, file: !404, line: 788, type: !97)
!2038 = !DILocalVariable(name: "o", arg: 3, scope: !2032, file: !404, line: 789, type: !1345)
!2039 = !DILocation(line: 0, scope: !2032)
!2040 = !DILocalVariable(name: "arg", arg: 1, scope: !2041, file: !404, line: 801, type: !72)
!2041 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !404, file: !404, line: 801, type: !2042, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!93, !72, !97, !655, !1345}
!2044 = !{!2040, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052}
!2045 = !DILocalVariable(name: "argsize", arg: 2, scope: !2041, file: !404, line: 801, type: !97)
!2046 = !DILocalVariable(name: "size", arg: 3, scope: !2041, file: !404, line: 801, type: !655)
!2047 = !DILocalVariable(name: "o", arg: 4, scope: !2041, file: !404, line: 802, type: !1345)
!2048 = !DILocalVariable(name: "p", scope: !2041, file: !404, line: 804, type: !1345)
!2049 = !DILocalVariable(name: "saved_errno", scope: !2041, file: !404, line: 805, type: !95)
!2050 = !DILocalVariable(name: "flags", scope: !2041, file: !404, line: 807, type: !95)
!2051 = !DILocalVariable(name: "bufsize", scope: !2041, file: !404, line: 808, type: !97)
!2052 = !DILocalVariable(name: "buf", scope: !2041, file: !404, line: 812, type: !93)
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
!2092 = distinct !DILexicalBlock(scope: !2041, file: !404, line: 817, column: 7)
!2093 = !{!1156, !1156, i64 0}
!2094 = !DILocation(line: 818, column: 5, scope: !2092)
!2095 = !DILocation(line: 819, column: 3, scope: !2041)
!2096 = distinct !DISubprogram(name: "quotearg_free", scope: !404, file: !404, line: 837, type: !359, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2097)
!2097 = !{!2098, !2099}
!2098 = !DILocalVariable(name: "sv", scope: !2096, file: !404, line: 839, type: !502)
!2099 = !DILocalVariable(name: "i", scope: !2100, file: !404, line: 840, type: !95)
!2100 = distinct !DILexicalBlock(scope: !2096, file: !404, line: 840, column: 3)
!2101 = !DILocation(line: 839, column: 24, scope: !2096)
!2102 = !DILocation(line: 0, scope: !2096)
!2103 = !DILocation(line: 0, scope: !2100)
!2104 = !DILocation(line: 840, column: 21, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2100, file: !404, line: 840, column: 3)
!2106 = !DILocation(line: 840, column: 3, scope: !2100)
!2107 = !DILocation(line: 842, column: 13, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2096, file: !404, line: 842, column: 7)
!2109 = !{!2110, !719, i64 8}
!2110 = !{!"slotvec", !1156, i64 0, !719, i64 8}
!2111 = !DILocation(line: 842, column: 17, scope: !2108)
!2112 = !DILocation(line: 842, column: 7, scope: !2096)
!2113 = !DILocation(line: 841, column: 17, scope: !2105)
!2114 = !DILocation(line: 841, column: 5, scope: !2105)
!2115 = !DILocation(line: 840, column: 32, scope: !2105)
!2116 = distinct !{!2116, !2106, !2117, !786}
!2117 = !DILocation(line: 841, column: 20, scope: !2100)
!2118 = !DILocation(line: 844, column: 7, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2108, file: !404, line: 843, column: 5)
!2120 = !DILocation(line: 845, column: 21, scope: !2119)
!2121 = !{!2110, !1156, i64 0}
!2122 = !DILocation(line: 846, column: 20, scope: !2119)
!2123 = !DILocation(line: 847, column: 5, scope: !2119)
!2124 = !DILocation(line: 848, column: 10, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2096, file: !404, line: 848, column: 7)
!2126 = !DILocation(line: 848, column: 7, scope: !2096)
!2127 = !DILocation(line: 850, column: 7, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2125, file: !404, line: 849, column: 5)
!2129 = !DILocation(line: 851, column: 15, scope: !2128)
!2130 = !DILocation(line: 852, column: 5, scope: !2128)
!2131 = !DILocation(line: 853, column: 10, scope: !2096)
!2132 = !DILocation(line: 854, column: 1, scope: !2096)
!2133 = !DISubprogram(name: "free", scope: !1299, file: !1299, line: 786, type: !2134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{null, !94}
!2136 = distinct !DISubprogram(name: "quotearg_n", scope: !404, file: !404, line: 919, type: !890, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2137)
!2137 = !{!2138, !2139}
!2138 = !DILocalVariable(name: "n", arg: 1, scope: !2136, file: !404, line: 919, type: !95)
!2139 = !DILocalVariable(name: "arg", arg: 2, scope: !2136, file: !404, line: 919, type: !72)
!2140 = !DILocation(line: 0, scope: !2136)
!2141 = !DILocation(line: 921, column: 10, scope: !2136)
!2142 = !DILocation(line: 921, column: 3, scope: !2136)
!2143 = distinct !DISubprogram(name: "quotearg_n_options", scope: !404, file: !404, line: 866, type: !2144, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2146)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!93, !95, !72, !97, !1345}
!2146 = !{!2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2157, !2158, !2160, !2161, !2162}
!2147 = !DILocalVariable(name: "n", arg: 1, scope: !2143, file: !404, line: 866, type: !95)
!2148 = !DILocalVariable(name: "arg", arg: 2, scope: !2143, file: !404, line: 866, type: !72)
!2149 = !DILocalVariable(name: "argsize", arg: 3, scope: !2143, file: !404, line: 866, type: !97)
!2150 = !DILocalVariable(name: "options", arg: 4, scope: !2143, file: !404, line: 867, type: !1345)
!2151 = !DILocalVariable(name: "saved_errno", scope: !2143, file: !404, line: 869, type: !95)
!2152 = !DILocalVariable(name: "sv", scope: !2143, file: !404, line: 871, type: !502)
!2153 = !DILocalVariable(name: "nslots_max", scope: !2143, file: !404, line: 873, type: !95)
!2154 = !DILocalVariable(name: "preallocated", scope: !2155, file: !404, line: 879, type: !217)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !404, line: 878, column: 5)
!2156 = distinct !DILexicalBlock(scope: !2143, file: !404, line: 877, column: 7)
!2157 = !DILocalVariable(name: "new_nslots", scope: !2155, file: !404, line: 880, type: !668)
!2158 = !DILocalVariable(name: "size", scope: !2159, file: !404, line: 891, type: !97)
!2159 = distinct !DILexicalBlock(scope: !2143, file: !404, line: 890, column: 3)
!2160 = !DILocalVariable(name: "val", scope: !2159, file: !404, line: 892, type: !93)
!2161 = !DILocalVariable(name: "flags", scope: !2159, file: !404, line: 894, type: !95)
!2162 = !DILocalVariable(name: "qsize", scope: !2159, file: !404, line: 895, type: !97)
!2163 = distinct !DIAssignID()
!2164 = !DILocation(line: 0, scope: !2155)
!2165 = !DILocation(line: 0, scope: !2143)
!2166 = !DILocation(line: 869, column: 21, scope: !2143)
!2167 = !DILocation(line: 871, column: 24, scope: !2143)
!2168 = !DILocation(line: 874, column: 17, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2143, file: !404, line: 874, column: 7)
!2170 = !DILocation(line: 875, column: 5, scope: !2169)
!2171 = !DILocation(line: 877, column: 7, scope: !2156)
!2172 = !DILocation(line: 877, column: 14, scope: !2156)
!2173 = !DILocation(line: 877, column: 7, scope: !2143)
!2174 = !DILocation(line: 879, column: 31, scope: !2155)
!2175 = !DILocation(line: 880, column: 7, scope: !2155)
!2176 = !DILocation(line: 880, column: 26, scope: !2155)
!2177 = !DILocation(line: 880, column: 13, scope: !2155)
!2178 = distinct !DIAssignID()
!2179 = !DILocation(line: 882, column: 31, scope: !2155)
!2180 = !DILocation(line: 883, column: 33, scope: !2155)
!2181 = !DILocation(line: 883, column: 42, scope: !2155)
!2182 = !DILocation(line: 883, column: 31, scope: !2155)
!2183 = !DILocation(line: 882, column: 22, scope: !2155)
!2184 = !DILocation(line: 882, column: 15, scope: !2155)
!2185 = !DILocation(line: 884, column: 11, scope: !2155)
!2186 = !DILocation(line: 885, column: 15, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2155, file: !404, line: 884, column: 11)
!2188 = !{i64 0, i64 8, !2093, i64 8, i64 8, !718}
!2189 = !DILocation(line: 885, column: 9, scope: !2187)
!2190 = !DILocation(line: 886, column: 20, scope: !2155)
!2191 = !DILocation(line: 886, column: 18, scope: !2155)
!2192 = !DILocation(line: 886, column: 32, scope: !2155)
!2193 = !DILocation(line: 886, column: 43, scope: !2155)
!2194 = !DILocation(line: 886, column: 53, scope: !2155)
!2195 = !DILocation(line: 0, scope: !1567, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 886, column: 7, scope: !2155)
!2197 = !DILocation(line: 59, column: 10, scope: !1567, inlinedAt: !2196)
!2198 = !DILocation(line: 887, column: 16, scope: !2155)
!2199 = !DILocation(line: 887, column: 14, scope: !2155)
!2200 = !DILocation(line: 888, column: 5, scope: !2156)
!2201 = !DILocation(line: 888, column: 5, scope: !2155)
!2202 = !DILocation(line: 891, column: 19, scope: !2159)
!2203 = !DILocation(line: 891, column: 25, scope: !2159)
!2204 = !DILocation(line: 0, scope: !2159)
!2205 = !DILocation(line: 892, column: 23, scope: !2159)
!2206 = !DILocation(line: 894, column: 26, scope: !2159)
!2207 = !DILocation(line: 894, column: 32, scope: !2159)
!2208 = !DILocation(line: 896, column: 55, scope: !2159)
!2209 = !DILocation(line: 897, column: 55, scope: !2159)
!2210 = !DILocation(line: 898, column: 55, scope: !2159)
!2211 = !DILocation(line: 899, column: 55, scope: !2159)
!2212 = !DILocation(line: 895, column: 20, scope: !2159)
!2213 = !DILocation(line: 901, column: 14, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2159, file: !404, line: 901, column: 9)
!2215 = !DILocation(line: 901, column: 9, scope: !2159)
!2216 = !DILocation(line: 903, column: 35, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2214, file: !404, line: 902, column: 7)
!2218 = !DILocation(line: 903, column: 20, scope: !2217)
!2219 = !DILocation(line: 904, column: 17, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2217, file: !404, line: 904, column: 13)
!2221 = !DILocation(line: 904, column: 13, scope: !2217)
!2222 = !DILocation(line: 905, column: 11, scope: !2220)
!2223 = !DILocation(line: 906, column: 27, scope: !2217)
!2224 = !DILocation(line: 906, column: 19, scope: !2217)
!2225 = !DILocation(line: 907, column: 69, scope: !2217)
!2226 = !DILocation(line: 909, column: 44, scope: !2217)
!2227 = !DILocation(line: 910, column: 44, scope: !2217)
!2228 = !DILocation(line: 907, column: 9, scope: !2217)
!2229 = !DILocation(line: 911, column: 7, scope: !2217)
!2230 = !DILocation(line: 913, column: 11, scope: !2159)
!2231 = !DILocation(line: 914, column: 5, scope: !2159)
!2232 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !404, file: !404, line: 925, type: !2233, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2235)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!93, !95, !72, !97}
!2235 = !{!2236, !2237, !2238}
!2236 = !DILocalVariable(name: "n", arg: 1, scope: !2232, file: !404, line: 925, type: !95)
!2237 = !DILocalVariable(name: "arg", arg: 2, scope: !2232, file: !404, line: 925, type: !72)
!2238 = !DILocalVariable(name: "argsize", arg: 3, scope: !2232, file: !404, line: 925, type: !97)
!2239 = !DILocation(line: 0, scope: !2232)
!2240 = !DILocation(line: 927, column: 10, scope: !2232)
!2241 = !DILocation(line: 927, column: 3, scope: !2232)
!2242 = distinct !DISubprogram(name: "quotearg", scope: !404, file: !404, line: 931, type: !902, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2243)
!2243 = !{!2244}
!2244 = !DILocalVariable(name: "arg", arg: 1, scope: !2242, file: !404, line: 931, type: !72)
!2245 = !DILocation(line: 0, scope: !2242)
!2246 = !DILocation(line: 0, scope: !2136, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 933, column: 10, scope: !2242)
!2248 = !DILocation(line: 921, column: 10, scope: !2136, inlinedAt: !2247)
!2249 = !DILocation(line: 933, column: 3, scope: !2242)
!2250 = distinct !DISubprogram(name: "quotearg_mem", scope: !404, file: !404, line: 937, type: !2251, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2253)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!93, !72, !97}
!2253 = !{!2254, !2255}
!2254 = !DILocalVariable(name: "arg", arg: 1, scope: !2250, file: !404, line: 937, type: !72)
!2255 = !DILocalVariable(name: "argsize", arg: 2, scope: !2250, file: !404, line: 937, type: !97)
!2256 = !DILocation(line: 0, scope: !2250)
!2257 = !DILocation(line: 0, scope: !2232, inlinedAt: !2258)
!2258 = distinct !DILocation(line: 939, column: 10, scope: !2250)
!2259 = !DILocation(line: 927, column: 10, scope: !2232, inlinedAt: !2258)
!2260 = !DILocation(line: 939, column: 3, scope: !2250)
!2261 = distinct !DISubprogram(name: "quotearg_n_style", scope: !404, file: !404, line: 943, type: !2262, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!93, !95, !427, !72}
!2264 = !{!2265, !2266, !2267, !2268}
!2265 = !DILocalVariable(name: "n", arg: 1, scope: !2261, file: !404, line: 943, type: !95)
!2266 = !DILocalVariable(name: "s", arg: 2, scope: !2261, file: !404, line: 943, type: !427)
!2267 = !DILocalVariable(name: "arg", arg: 3, scope: !2261, file: !404, line: 943, type: !72)
!2268 = !DILocalVariable(name: "o", scope: !2261, file: !404, line: 945, type: !1346)
!2269 = distinct !DIAssignID()
!2270 = !DILocation(line: 0, scope: !2261)
!2271 = !DILocation(line: 945, column: 3, scope: !2261)
!2272 = !{!2273}
!2273 = distinct !{!2273, !2274, !"quoting_options_from_style: argument 0"}
!2274 = distinct !{!2274, !"quoting_options_from_style"}
!2275 = !DILocation(line: 945, column: 36, scope: !2261)
!2276 = !DILocalVariable(name: "style", arg: 1, scope: !2277, file: !404, line: 183, type: !427)
!2277 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !404, file: !404, line: 183, type: !2278, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2280)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!454, !427}
!2280 = !{!2276, !2281}
!2281 = !DILocalVariable(name: "o", scope: !2277, file: !404, line: 185, type: !454)
!2282 = !DILocation(line: 0, scope: !2277, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 945, column: 36, scope: !2261)
!2284 = !DILocation(line: 185, column: 26, scope: !2277, inlinedAt: !2283)
!2285 = distinct !DIAssignID()
!2286 = !DILocation(line: 186, column: 13, scope: !2287, inlinedAt: !2283)
!2287 = distinct !DILexicalBlock(scope: !2277, file: !404, line: 186, column: 7)
!2288 = !DILocation(line: 186, column: 7, scope: !2277, inlinedAt: !2283)
!2289 = !DILocation(line: 187, column: 5, scope: !2287, inlinedAt: !2283)
!2290 = !DILocation(line: 188, column: 11, scope: !2277, inlinedAt: !2283)
!2291 = distinct !DIAssignID()
!2292 = !DILocation(line: 946, column: 10, scope: !2261)
!2293 = !DILocation(line: 947, column: 1, scope: !2261)
!2294 = !DILocation(line: 946, column: 3, scope: !2261)
!2295 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !404, file: !404, line: 950, type: !2296, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2298)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!93, !95, !427, !72, !97}
!2298 = !{!2299, !2300, !2301, !2302, !2303}
!2299 = !DILocalVariable(name: "n", arg: 1, scope: !2295, file: !404, line: 950, type: !95)
!2300 = !DILocalVariable(name: "s", arg: 2, scope: !2295, file: !404, line: 950, type: !427)
!2301 = !DILocalVariable(name: "arg", arg: 3, scope: !2295, file: !404, line: 951, type: !72)
!2302 = !DILocalVariable(name: "argsize", arg: 4, scope: !2295, file: !404, line: 951, type: !97)
!2303 = !DILocalVariable(name: "o", scope: !2295, file: !404, line: 953, type: !1346)
!2304 = distinct !DIAssignID()
!2305 = !DILocation(line: 0, scope: !2295)
!2306 = !DILocation(line: 953, column: 3, scope: !2295)
!2307 = !{!2308}
!2308 = distinct !{!2308, !2309, !"quoting_options_from_style: argument 0"}
!2309 = distinct !{!2309, !"quoting_options_from_style"}
!2310 = !DILocation(line: 953, column: 36, scope: !2295)
!2311 = !DILocation(line: 0, scope: !2277, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 953, column: 36, scope: !2295)
!2313 = !DILocation(line: 185, column: 26, scope: !2277, inlinedAt: !2312)
!2314 = distinct !DIAssignID()
!2315 = !DILocation(line: 186, column: 13, scope: !2287, inlinedAt: !2312)
!2316 = !DILocation(line: 186, column: 7, scope: !2277, inlinedAt: !2312)
!2317 = !DILocation(line: 187, column: 5, scope: !2287, inlinedAt: !2312)
!2318 = !DILocation(line: 188, column: 11, scope: !2277, inlinedAt: !2312)
!2319 = distinct !DIAssignID()
!2320 = !DILocation(line: 954, column: 10, scope: !2295)
!2321 = !DILocation(line: 955, column: 1, scope: !2295)
!2322 = !DILocation(line: 954, column: 3, scope: !2295)
!2323 = distinct !DISubprogram(name: "quotearg_style", scope: !404, file: !404, line: 958, type: !2324, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2326)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!93, !427, !72}
!2326 = !{!2327, !2328}
!2327 = !DILocalVariable(name: "s", arg: 1, scope: !2323, file: !404, line: 958, type: !427)
!2328 = !DILocalVariable(name: "arg", arg: 2, scope: !2323, file: !404, line: 958, type: !72)
!2329 = distinct !DIAssignID()
!2330 = !DILocation(line: 0, scope: !2323)
!2331 = !DILocation(line: 0, scope: !2261, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 960, column: 10, scope: !2323)
!2333 = !DILocation(line: 945, column: 3, scope: !2261, inlinedAt: !2332)
!2334 = !{!2335}
!2335 = distinct !{!2335, !2336, !"quoting_options_from_style: argument 0"}
!2336 = distinct !{!2336, !"quoting_options_from_style"}
!2337 = !DILocation(line: 945, column: 36, scope: !2261, inlinedAt: !2332)
!2338 = !DILocation(line: 0, scope: !2277, inlinedAt: !2339)
!2339 = distinct !DILocation(line: 945, column: 36, scope: !2261, inlinedAt: !2332)
!2340 = !DILocation(line: 185, column: 26, scope: !2277, inlinedAt: !2339)
!2341 = distinct !DIAssignID()
!2342 = !DILocation(line: 186, column: 13, scope: !2287, inlinedAt: !2339)
!2343 = !DILocation(line: 186, column: 7, scope: !2277, inlinedAt: !2339)
!2344 = !DILocation(line: 187, column: 5, scope: !2287, inlinedAt: !2339)
!2345 = !DILocation(line: 188, column: 11, scope: !2277, inlinedAt: !2339)
!2346 = distinct !DIAssignID()
!2347 = !DILocation(line: 946, column: 10, scope: !2261, inlinedAt: !2332)
!2348 = !DILocation(line: 947, column: 1, scope: !2261, inlinedAt: !2332)
!2349 = !DILocation(line: 960, column: 3, scope: !2323)
!2350 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !404, file: !404, line: 964, type: !2351, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!93, !427, !72, !97}
!2353 = !{!2354, !2355, !2356}
!2354 = !DILocalVariable(name: "s", arg: 1, scope: !2350, file: !404, line: 964, type: !427)
!2355 = !DILocalVariable(name: "arg", arg: 2, scope: !2350, file: !404, line: 964, type: !72)
!2356 = !DILocalVariable(name: "argsize", arg: 3, scope: !2350, file: !404, line: 964, type: !97)
!2357 = distinct !DIAssignID()
!2358 = !DILocation(line: 0, scope: !2350)
!2359 = !DILocation(line: 0, scope: !2295, inlinedAt: !2360)
!2360 = distinct !DILocation(line: 966, column: 10, scope: !2350)
!2361 = !DILocation(line: 953, column: 3, scope: !2295, inlinedAt: !2360)
!2362 = !{!2363}
!2363 = distinct !{!2363, !2364, !"quoting_options_from_style: argument 0"}
!2364 = distinct !{!2364, !"quoting_options_from_style"}
!2365 = !DILocation(line: 953, column: 36, scope: !2295, inlinedAt: !2360)
!2366 = !DILocation(line: 0, scope: !2277, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 953, column: 36, scope: !2295, inlinedAt: !2360)
!2368 = !DILocation(line: 185, column: 26, scope: !2277, inlinedAt: !2367)
!2369 = distinct !DIAssignID()
!2370 = !DILocation(line: 186, column: 13, scope: !2287, inlinedAt: !2367)
!2371 = !DILocation(line: 186, column: 7, scope: !2277, inlinedAt: !2367)
!2372 = !DILocation(line: 187, column: 5, scope: !2287, inlinedAt: !2367)
!2373 = !DILocation(line: 188, column: 11, scope: !2277, inlinedAt: !2367)
!2374 = distinct !DIAssignID()
!2375 = !DILocation(line: 954, column: 10, scope: !2295, inlinedAt: !2360)
!2376 = !DILocation(line: 955, column: 1, scope: !2295, inlinedAt: !2360)
!2377 = !DILocation(line: 966, column: 3, scope: !2350)
!2378 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !404, file: !404, line: 970, type: !2379, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!93, !72, !97, !4}
!2381 = !{!2382, !2383, !2384, !2385}
!2382 = !DILocalVariable(name: "arg", arg: 1, scope: !2378, file: !404, line: 970, type: !72)
!2383 = !DILocalVariable(name: "argsize", arg: 2, scope: !2378, file: !404, line: 970, type: !97)
!2384 = !DILocalVariable(name: "ch", arg: 3, scope: !2378, file: !404, line: 970, type: !4)
!2385 = !DILocalVariable(name: "options", scope: !2378, file: !404, line: 972, type: !454)
!2386 = distinct !DIAssignID()
!2387 = !DILocation(line: 0, scope: !2378)
!2388 = !DILocation(line: 972, column: 3, scope: !2378)
!2389 = !DILocation(line: 973, column: 13, scope: !2378)
!2390 = !{i64 0, i64 4, !739, i64 4, i64 4, !739, i64 8, i64 32, !748, i64 40, i64 8, !718, i64 48, i64 8, !718}
!2391 = distinct !DIAssignID()
!2392 = !DILocation(line: 0, scope: !1365, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 974, column: 3, scope: !2378)
!2394 = !DILocation(line: 147, column: 41, scope: !1365, inlinedAt: !2393)
!2395 = !DILocation(line: 147, column: 62, scope: !1365, inlinedAt: !2393)
!2396 = !DILocation(line: 147, column: 57, scope: !1365, inlinedAt: !2393)
!2397 = !DILocation(line: 148, column: 15, scope: !1365, inlinedAt: !2393)
!2398 = !DILocation(line: 149, column: 21, scope: !1365, inlinedAt: !2393)
!2399 = !DILocation(line: 149, column: 24, scope: !1365, inlinedAt: !2393)
!2400 = !DILocation(line: 150, column: 19, scope: !1365, inlinedAt: !2393)
!2401 = !DILocation(line: 150, column: 24, scope: !1365, inlinedAt: !2393)
!2402 = !DILocation(line: 150, column: 6, scope: !1365, inlinedAt: !2393)
!2403 = !DILocation(line: 975, column: 10, scope: !2378)
!2404 = !DILocation(line: 976, column: 1, scope: !2378)
!2405 = !DILocation(line: 975, column: 3, scope: !2378)
!2406 = distinct !DISubprogram(name: "quotearg_char", scope: !404, file: !404, line: 979, type: !2407, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2409)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!93, !72, !4}
!2409 = !{!2410, !2411}
!2410 = !DILocalVariable(name: "arg", arg: 1, scope: !2406, file: !404, line: 979, type: !72)
!2411 = !DILocalVariable(name: "ch", arg: 2, scope: !2406, file: !404, line: 979, type: !4)
!2412 = distinct !DIAssignID()
!2413 = !DILocation(line: 0, scope: !2406)
!2414 = !DILocation(line: 0, scope: !2378, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 981, column: 10, scope: !2406)
!2416 = !DILocation(line: 972, column: 3, scope: !2378, inlinedAt: !2415)
!2417 = !DILocation(line: 973, column: 13, scope: !2378, inlinedAt: !2415)
!2418 = distinct !DIAssignID()
!2419 = !DILocation(line: 0, scope: !1365, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 974, column: 3, scope: !2378, inlinedAt: !2415)
!2421 = !DILocation(line: 147, column: 41, scope: !1365, inlinedAt: !2420)
!2422 = !DILocation(line: 147, column: 62, scope: !1365, inlinedAt: !2420)
!2423 = !DILocation(line: 147, column: 57, scope: !1365, inlinedAt: !2420)
!2424 = !DILocation(line: 148, column: 15, scope: !1365, inlinedAt: !2420)
!2425 = !DILocation(line: 149, column: 21, scope: !1365, inlinedAt: !2420)
!2426 = !DILocation(line: 149, column: 24, scope: !1365, inlinedAt: !2420)
!2427 = !DILocation(line: 150, column: 19, scope: !1365, inlinedAt: !2420)
!2428 = !DILocation(line: 150, column: 24, scope: !1365, inlinedAt: !2420)
!2429 = !DILocation(line: 150, column: 6, scope: !1365, inlinedAt: !2420)
!2430 = !DILocation(line: 975, column: 10, scope: !2378, inlinedAt: !2415)
!2431 = !DILocation(line: 976, column: 1, scope: !2378, inlinedAt: !2415)
!2432 = !DILocation(line: 981, column: 3, scope: !2406)
!2433 = distinct !DISubprogram(name: "quotearg_colon", scope: !404, file: !404, line: 985, type: !902, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2434)
!2434 = !{!2435}
!2435 = !DILocalVariable(name: "arg", arg: 1, scope: !2433, file: !404, line: 985, type: !72)
!2436 = distinct !DIAssignID()
!2437 = !DILocation(line: 0, scope: !2433)
!2438 = !DILocation(line: 0, scope: !2406, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 987, column: 10, scope: !2433)
!2440 = !DILocation(line: 0, scope: !2378, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 981, column: 10, scope: !2406, inlinedAt: !2439)
!2442 = !DILocation(line: 972, column: 3, scope: !2378, inlinedAt: !2441)
!2443 = !DILocation(line: 973, column: 13, scope: !2378, inlinedAt: !2441)
!2444 = distinct !DIAssignID()
!2445 = !DILocation(line: 0, scope: !1365, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 974, column: 3, scope: !2378, inlinedAt: !2441)
!2447 = !DILocation(line: 147, column: 57, scope: !1365, inlinedAt: !2446)
!2448 = !DILocation(line: 149, column: 21, scope: !1365, inlinedAt: !2446)
!2449 = !DILocation(line: 150, column: 6, scope: !1365, inlinedAt: !2446)
!2450 = !DILocation(line: 975, column: 10, scope: !2378, inlinedAt: !2441)
!2451 = !DILocation(line: 976, column: 1, scope: !2378, inlinedAt: !2441)
!2452 = !DILocation(line: 987, column: 3, scope: !2433)
!2453 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !404, file: !404, line: 991, type: !2251, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2454)
!2454 = !{!2455, !2456}
!2455 = !DILocalVariable(name: "arg", arg: 1, scope: !2453, file: !404, line: 991, type: !72)
!2456 = !DILocalVariable(name: "argsize", arg: 2, scope: !2453, file: !404, line: 991, type: !97)
!2457 = distinct !DIAssignID()
!2458 = !DILocation(line: 0, scope: !2453)
!2459 = !DILocation(line: 0, scope: !2378, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 993, column: 10, scope: !2453)
!2461 = !DILocation(line: 972, column: 3, scope: !2378, inlinedAt: !2460)
!2462 = !DILocation(line: 973, column: 13, scope: !2378, inlinedAt: !2460)
!2463 = distinct !DIAssignID()
!2464 = !DILocation(line: 0, scope: !1365, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 974, column: 3, scope: !2378, inlinedAt: !2460)
!2466 = !DILocation(line: 147, column: 57, scope: !1365, inlinedAt: !2465)
!2467 = !DILocation(line: 149, column: 21, scope: !1365, inlinedAt: !2465)
!2468 = !DILocation(line: 150, column: 6, scope: !1365, inlinedAt: !2465)
!2469 = !DILocation(line: 975, column: 10, scope: !2378, inlinedAt: !2460)
!2470 = !DILocation(line: 976, column: 1, scope: !2378, inlinedAt: !2460)
!2471 = !DILocation(line: 993, column: 3, scope: !2453)
!2472 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !404, file: !404, line: 997, type: !2262, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2473)
!2473 = !{!2474, !2475, !2476, !2477}
!2474 = !DILocalVariable(name: "n", arg: 1, scope: !2472, file: !404, line: 997, type: !95)
!2475 = !DILocalVariable(name: "s", arg: 2, scope: !2472, file: !404, line: 997, type: !427)
!2476 = !DILocalVariable(name: "arg", arg: 3, scope: !2472, file: !404, line: 997, type: !72)
!2477 = !DILocalVariable(name: "options", scope: !2472, file: !404, line: 999, type: !454)
!2478 = distinct !DIAssignID()
!2479 = !DILocation(line: 0, scope: !2472)
!2480 = !DILocation(line: 185, column: 26, scope: !2277, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 1000, column: 13, scope: !2472)
!2482 = !DILocation(line: 999, column: 3, scope: !2472)
!2483 = !DILocation(line: 0, scope: !2277, inlinedAt: !2481)
!2484 = !DILocation(line: 186, column: 13, scope: !2287, inlinedAt: !2481)
!2485 = !DILocation(line: 186, column: 7, scope: !2277, inlinedAt: !2481)
!2486 = !DILocation(line: 187, column: 5, scope: !2287, inlinedAt: !2481)
!2487 = !{!2488}
!2488 = distinct !{!2488, !2489, !"quoting_options_from_style: argument 0"}
!2489 = distinct !{!2489, !"quoting_options_from_style"}
!2490 = !DILocation(line: 1000, column: 13, scope: !2472)
!2491 = distinct !DIAssignID()
!2492 = distinct !DIAssignID()
!2493 = !DILocation(line: 0, scope: !1365, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 1001, column: 3, scope: !2472)
!2495 = !DILocation(line: 147, column: 57, scope: !1365, inlinedAt: !2494)
!2496 = !DILocation(line: 149, column: 21, scope: !1365, inlinedAt: !2494)
!2497 = !DILocation(line: 150, column: 6, scope: !1365, inlinedAt: !2494)
!2498 = distinct !DIAssignID()
!2499 = !DILocation(line: 1002, column: 10, scope: !2472)
!2500 = !DILocation(line: 1003, column: 1, scope: !2472)
!2501 = !DILocation(line: 1002, column: 3, scope: !2472)
!2502 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !404, file: !404, line: 1006, type: !2503, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2505)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!93, !95, !72, !72, !72}
!2505 = !{!2506, !2507, !2508, !2509}
!2506 = !DILocalVariable(name: "n", arg: 1, scope: !2502, file: !404, line: 1006, type: !95)
!2507 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2502, file: !404, line: 1006, type: !72)
!2508 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2502, file: !404, line: 1007, type: !72)
!2509 = !DILocalVariable(name: "arg", arg: 4, scope: !2502, file: !404, line: 1007, type: !72)
!2510 = distinct !DIAssignID()
!2511 = !DILocation(line: 0, scope: !2502)
!2512 = !DILocalVariable(name: "o", scope: !2513, file: !404, line: 1018, type: !454)
!2513 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !404, file: !404, line: 1014, type: !2514, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2516)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!93, !95, !72, !72, !72, !97}
!2516 = !{!2517, !2518, !2519, !2520, !2521, !2512}
!2517 = !DILocalVariable(name: "n", arg: 1, scope: !2513, file: !404, line: 1014, type: !95)
!2518 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2513, file: !404, line: 1014, type: !72)
!2519 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2513, file: !404, line: 1015, type: !72)
!2520 = !DILocalVariable(name: "arg", arg: 4, scope: !2513, file: !404, line: 1016, type: !72)
!2521 = !DILocalVariable(name: "argsize", arg: 5, scope: !2513, file: !404, line: 1016, type: !97)
!2522 = !DILocation(line: 0, scope: !2513, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 1009, column: 10, scope: !2502)
!2524 = !DILocation(line: 1018, column: 3, scope: !2513, inlinedAt: !2523)
!2525 = !DILocation(line: 1018, column: 30, scope: !2513, inlinedAt: !2523)
!2526 = distinct !DIAssignID()
!2527 = distinct !DIAssignID()
!2528 = !DILocation(line: 0, scope: !1405, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 1019, column: 3, scope: !2513, inlinedAt: !2523)
!2530 = !DILocation(line: 174, column: 12, scope: !1405, inlinedAt: !2529)
!2531 = distinct !DIAssignID()
!2532 = !DILocation(line: 175, column: 8, scope: !1418, inlinedAt: !2529)
!2533 = !DILocation(line: 175, column: 19, scope: !1418, inlinedAt: !2529)
!2534 = !DILocation(line: 176, column: 5, scope: !1418, inlinedAt: !2529)
!2535 = !DILocation(line: 177, column: 6, scope: !1405, inlinedAt: !2529)
!2536 = !DILocation(line: 177, column: 17, scope: !1405, inlinedAt: !2529)
!2537 = distinct !DIAssignID()
!2538 = !DILocation(line: 178, column: 6, scope: !1405, inlinedAt: !2529)
!2539 = !DILocation(line: 178, column: 18, scope: !1405, inlinedAt: !2529)
!2540 = distinct !DIAssignID()
!2541 = !DILocation(line: 1020, column: 10, scope: !2513, inlinedAt: !2523)
!2542 = !DILocation(line: 1021, column: 1, scope: !2513, inlinedAt: !2523)
!2543 = !DILocation(line: 1009, column: 3, scope: !2502)
!2544 = distinct !DIAssignID()
!2545 = !DILocation(line: 0, scope: !2513)
!2546 = !DILocation(line: 1018, column: 3, scope: !2513)
!2547 = !DILocation(line: 1018, column: 30, scope: !2513)
!2548 = distinct !DIAssignID()
!2549 = distinct !DIAssignID()
!2550 = !DILocation(line: 0, scope: !1405, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 1019, column: 3, scope: !2513)
!2552 = !DILocation(line: 174, column: 12, scope: !1405, inlinedAt: !2551)
!2553 = distinct !DIAssignID()
!2554 = !DILocation(line: 175, column: 8, scope: !1418, inlinedAt: !2551)
!2555 = !DILocation(line: 175, column: 19, scope: !1418, inlinedAt: !2551)
!2556 = !DILocation(line: 176, column: 5, scope: !1418, inlinedAt: !2551)
!2557 = !DILocation(line: 177, column: 6, scope: !1405, inlinedAt: !2551)
!2558 = !DILocation(line: 177, column: 17, scope: !1405, inlinedAt: !2551)
!2559 = distinct !DIAssignID()
!2560 = !DILocation(line: 178, column: 6, scope: !1405, inlinedAt: !2551)
!2561 = !DILocation(line: 178, column: 18, scope: !1405, inlinedAt: !2551)
!2562 = distinct !DIAssignID()
!2563 = !DILocation(line: 1020, column: 10, scope: !2513)
!2564 = !DILocation(line: 1021, column: 1, scope: !2513)
!2565 = !DILocation(line: 1020, column: 3, scope: !2513)
!2566 = distinct !DISubprogram(name: "quotearg_custom", scope: !404, file: !404, line: 1024, type: !2567, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2569)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!93, !72, !72, !72}
!2569 = !{!2570, !2571, !2572}
!2570 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2566, file: !404, line: 1024, type: !72)
!2571 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2566, file: !404, line: 1024, type: !72)
!2572 = !DILocalVariable(name: "arg", arg: 3, scope: !2566, file: !404, line: 1025, type: !72)
!2573 = distinct !DIAssignID()
!2574 = !DILocation(line: 0, scope: !2566)
!2575 = !DILocation(line: 0, scope: !2502, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 1027, column: 10, scope: !2566)
!2577 = !DILocation(line: 0, scope: !2513, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 1009, column: 10, scope: !2502, inlinedAt: !2576)
!2579 = !DILocation(line: 1018, column: 3, scope: !2513, inlinedAt: !2578)
!2580 = !DILocation(line: 1018, column: 30, scope: !2513, inlinedAt: !2578)
!2581 = distinct !DIAssignID()
!2582 = distinct !DIAssignID()
!2583 = !DILocation(line: 0, scope: !1405, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 1019, column: 3, scope: !2513, inlinedAt: !2578)
!2585 = !DILocation(line: 174, column: 12, scope: !1405, inlinedAt: !2584)
!2586 = distinct !DIAssignID()
!2587 = !DILocation(line: 175, column: 8, scope: !1418, inlinedAt: !2584)
!2588 = !DILocation(line: 175, column: 19, scope: !1418, inlinedAt: !2584)
!2589 = !DILocation(line: 176, column: 5, scope: !1418, inlinedAt: !2584)
!2590 = !DILocation(line: 177, column: 6, scope: !1405, inlinedAt: !2584)
!2591 = !DILocation(line: 177, column: 17, scope: !1405, inlinedAt: !2584)
!2592 = distinct !DIAssignID()
!2593 = !DILocation(line: 178, column: 6, scope: !1405, inlinedAt: !2584)
!2594 = !DILocation(line: 178, column: 18, scope: !1405, inlinedAt: !2584)
!2595 = distinct !DIAssignID()
!2596 = !DILocation(line: 1020, column: 10, scope: !2513, inlinedAt: !2578)
!2597 = !DILocation(line: 1021, column: 1, scope: !2513, inlinedAt: !2578)
!2598 = !DILocation(line: 1027, column: 3, scope: !2566)
!2599 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !404, file: !404, line: 1031, type: !2600, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2602)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!93, !72, !72, !72, !97}
!2602 = !{!2603, !2604, !2605, !2606}
!2603 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2599, file: !404, line: 1031, type: !72)
!2604 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2599, file: !404, line: 1031, type: !72)
!2605 = !DILocalVariable(name: "arg", arg: 3, scope: !2599, file: !404, line: 1032, type: !72)
!2606 = !DILocalVariable(name: "argsize", arg: 4, scope: !2599, file: !404, line: 1032, type: !97)
!2607 = distinct !DIAssignID()
!2608 = !DILocation(line: 0, scope: !2599)
!2609 = !DILocation(line: 0, scope: !2513, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 1034, column: 10, scope: !2599)
!2611 = !DILocation(line: 1018, column: 3, scope: !2513, inlinedAt: !2610)
!2612 = !DILocation(line: 1018, column: 30, scope: !2513, inlinedAt: !2610)
!2613 = distinct !DIAssignID()
!2614 = distinct !DIAssignID()
!2615 = !DILocation(line: 0, scope: !1405, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 1019, column: 3, scope: !2513, inlinedAt: !2610)
!2617 = !DILocation(line: 174, column: 12, scope: !1405, inlinedAt: !2616)
!2618 = distinct !DIAssignID()
!2619 = !DILocation(line: 175, column: 8, scope: !1418, inlinedAt: !2616)
!2620 = !DILocation(line: 175, column: 19, scope: !1418, inlinedAt: !2616)
!2621 = !DILocation(line: 176, column: 5, scope: !1418, inlinedAt: !2616)
!2622 = !DILocation(line: 177, column: 6, scope: !1405, inlinedAt: !2616)
!2623 = !DILocation(line: 177, column: 17, scope: !1405, inlinedAt: !2616)
!2624 = distinct !DIAssignID()
!2625 = !DILocation(line: 178, column: 6, scope: !1405, inlinedAt: !2616)
!2626 = !DILocation(line: 178, column: 18, scope: !1405, inlinedAt: !2616)
!2627 = distinct !DIAssignID()
!2628 = !DILocation(line: 1020, column: 10, scope: !2513, inlinedAt: !2610)
!2629 = !DILocation(line: 1021, column: 1, scope: !2513, inlinedAt: !2610)
!2630 = !DILocation(line: 1034, column: 3, scope: !2599)
!2631 = distinct !DISubprogram(name: "quote_n_mem", scope: !404, file: !404, line: 1049, type: !2632, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2634)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!72, !95, !72, !97}
!2634 = !{!2635, !2636, !2637}
!2635 = !DILocalVariable(name: "n", arg: 1, scope: !2631, file: !404, line: 1049, type: !95)
!2636 = !DILocalVariable(name: "arg", arg: 2, scope: !2631, file: !404, line: 1049, type: !72)
!2637 = !DILocalVariable(name: "argsize", arg: 3, scope: !2631, file: !404, line: 1049, type: !97)
!2638 = !DILocation(line: 0, scope: !2631)
!2639 = !DILocation(line: 1051, column: 10, scope: !2631)
!2640 = !DILocation(line: 1051, column: 3, scope: !2631)
!2641 = distinct !DISubprogram(name: "quote_mem", scope: !404, file: !404, line: 1055, type: !2642, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2644)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!72, !72, !97}
!2644 = !{!2645, !2646}
!2645 = !DILocalVariable(name: "arg", arg: 1, scope: !2641, file: !404, line: 1055, type: !72)
!2646 = !DILocalVariable(name: "argsize", arg: 2, scope: !2641, file: !404, line: 1055, type: !97)
!2647 = !DILocation(line: 0, scope: !2641)
!2648 = !DILocation(line: 0, scope: !2631, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 1057, column: 10, scope: !2641)
!2650 = !DILocation(line: 1051, column: 10, scope: !2631, inlinedAt: !2649)
!2651 = !DILocation(line: 1057, column: 3, scope: !2641)
!2652 = distinct !DISubprogram(name: "quote_n", scope: !404, file: !404, line: 1061, type: !2653, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2655)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!72, !95, !72}
!2655 = !{!2656, !2657}
!2656 = !DILocalVariable(name: "n", arg: 1, scope: !2652, file: !404, line: 1061, type: !95)
!2657 = !DILocalVariable(name: "arg", arg: 2, scope: !2652, file: !404, line: 1061, type: !72)
!2658 = !DILocation(line: 0, scope: !2652)
!2659 = !DILocation(line: 0, scope: !2631, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 1063, column: 10, scope: !2652)
!2661 = !DILocation(line: 1051, column: 10, scope: !2631, inlinedAt: !2660)
!2662 = !DILocation(line: 1063, column: 3, scope: !2652)
!2663 = distinct !DISubprogram(name: "quote", scope: !404, file: !404, line: 1067, type: !2664, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!72, !72}
!2666 = !{!2667}
!2667 = !DILocalVariable(name: "arg", arg: 1, scope: !2663, file: !404, line: 1067, type: !72)
!2668 = !DILocation(line: 0, scope: !2663)
!2669 = !DILocation(line: 0, scope: !2652, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 1069, column: 10, scope: !2663)
!2671 = !DILocation(line: 0, scope: !2631, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 1063, column: 10, scope: !2652, inlinedAt: !2670)
!2673 = !DILocation(line: 1051, column: 10, scope: !2631, inlinedAt: !2672)
!2674 = !DILocation(line: 1069, column: 3, scope: !2663)
!2675 = distinct !DISubprogram(name: "version_etc_arn", scope: !517, file: !517, line: 61, type: !2676, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !641, retainedNodes: !2713)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{null, !2678, !72, !72, !72, !2712, !97}
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !2680)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !2681)
!2681 = !{!2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2680, file: !234, line: 51, baseType: !95, size: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2680, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2680, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2680, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2680, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2680, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2680, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2680, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2680, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2680, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2680, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2680, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2680, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2680, file: !234, line: 70, baseType: !2696, size: 64, offset: 832)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2680, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2680, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2680, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2680, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2680, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2680, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2680, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2680, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2680, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2680, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2680, file: !234, line: 93, baseType: !2696, size: 64, offset: 1344)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2680, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2680, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2680, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2680, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!2713 = !{!2714, !2715, !2716, !2717, !2718, !2719}
!2714 = !DILocalVariable(name: "stream", arg: 1, scope: !2675, file: !517, line: 61, type: !2678)
!2715 = !DILocalVariable(name: "command_name", arg: 2, scope: !2675, file: !517, line: 62, type: !72)
!2716 = !DILocalVariable(name: "package", arg: 3, scope: !2675, file: !517, line: 62, type: !72)
!2717 = !DILocalVariable(name: "version", arg: 4, scope: !2675, file: !517, line: 63, type: !72)
!2718 = !DILocalVariable(name: "authors", arg: 5, scope: !2675, file: !517, line: 64, type: !2712)
!2719 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2675, file: !517, line: 64, type: !97)
!2720 = !DILocation(line: 0, scope: !2675)
!2721 = !DILocation(line: 66, column: 7, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2675, file: !517, line: 66, column: 7)
!2723 = !DILocation(line: 66, column: 7, scope: !2675)
!2724 = !DILocation(line: 67, column: 5, scope: !2722)
!2725 = !DILocation(line: 69, column: 5, scope: !2722)
!2726 = !DILocation(line: 83, column: 3, scope: !2675)
!2727 = !DILocation(line: 85, column: 3, scope: !2675)
!2728 = !DILocation(line: 88, column: 3, scope: !2675)
!2729 = !DILocation(line: 95, column: 3, scope: !2675)
!2730 = !DILocation(line: 97, column: 3, scope: !2675)
!2731 = !DILocation(line: 105, column: 7, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2675, file: !517, line: 98, column: 5)
!2733 = !DILocation(line: 106, column: 7, scope: !2732)
!2734 = !DILocation(line: 109, column: 7, scope: !2732)
!2735 = !DILocation(line: 110, column: 7, scope: !2732)
!2736 = !DILocation(line: 113, column: 7, scope: !2732)
!2737 = !DILocation(line: 115, column: 7, scope: !2732)
!2738 = !DILocation(line: 120, column: 7, scope: !2732)
!2739 = !DILocation(line: 122, column: 7, scope: !2732)
!2740 = !DILocation(line: 127, column: 7, scope: !2732)
!2741 = !DILocation(line: 129, column: 7, scope: !2732)
!2742 = !DILocation(line: 134, column: 7, scope: !2732)
!2743 = !DILocation(line: 137, column: 7, scope: !2732)
!2744 = !DILocation(line: 142, column: 7, scope: !2732)
!2745 = !DILocation(line: 145, column: 7, scope: !2732)
!2746 = !DILocation(line: 150, column: 7, scope: !2732)
!2747 = !DILocation(line: 154, column: 7, scope: !2732)
!2748 = !DILocation(line: 159, column: 7, scope: !2732)
!2749 = !DILocation(line: 163, column: 7, scope: !2732)
!2750 = !DILocation(line: 170, column: 7, scope: !2732)
!2751 = !DILocation(line: 174, column: 7, scope: !2732)
!2752 = !DILocation(line: 176, column: 1, scope: !2675)
!2753 = distinct !DISubprogram(name: "version_etc_ar", scope: !517, file: !517, line: 183, type: !2754, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !641, retainedNodes: !2756)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{null, !2678, !72, !72, !72, !2712}
!2756 = !{!2757, !2758, !2759, !2760, !2761, !2762}
!2757 = !DILocalVariable(name: "stream", arg: 1, scope: !2753, file: !517, line: 183, type: !2678)
!2758 = !DILocalVariable(name: "command_name", arg: 2, scope: !2753, file: !517, line: 184, type: !72)
!2759 = !DILocalVariable(name: "package", arg: 3, scope: !2753, file: !517, line: 184, type: !72)
!2760 = !DILocalVariable(name: "version", arg: 4, scope: !2753, file: !517, line: 185, type: !72)
!2761 = !DILocalVariable(name: "authors", arg: 5, scope: !2753, file: !517, line: 185, type: !2712)
!2762 = !DILocalVariable(name: "n_authors", scope: !2753, file: !517, line: 187, type: !97)
!2763 = !DILocation(line: 0, scope: !2753)
!2764 = !DILocation(line: 189, column: 8, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2753, file: !517, line: 189, column: 3)
!2766 = !DILocation(line: 189, scope: !2765)
!2767 = !DILocation(line: 189, column: 23, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2765, file: !517, line: 189, column: 3)
!2769 = !DILocation(line: 189, column: 3, scope: !2765)
!2770 = !DILocation(line: 189, column: 52, scope: !2768)
!2771 = distinct !{!2771, !2769, !2772, !786}
!2772 = !DILocation(line: 190, column: 5, scope: !2765)
!2773 = !DILocation(line: 191, column: 3, scope: !2753)
!2774 = !DILocation(line: 192, column: 1, scope: !2753)
!2775 = distinct !DISubprogram(name: "version_etc_va", scope: !517, file: !517, line: 199, type: !2776, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !641, retainedNodes: !2785)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{null, !2678, !72, !72, !72, !2778}
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2780)
!2780 = !{!2781, !2782, !2783, !2784}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2779, file: !517, line: 192, baseType: !78, size: 32)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2779, file: !517, line: 192, baseType: !78, size: 32, offset: 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2779, file: !517, line: 192, baseType: !94, size: 64, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2779, file: !517, line: 192, baseType: !94, size: 64, offset: 128)
!2785 = !{!2786, !2787, !2788, !2789, !2790, !2791, !2792}
!2786 = !DILocalVariable(name: "stream", arg: 1, scope: !2775, file: !517, line: 199, type: !2678)
!2787 = !DILocalVariable(name: "command_name", arg: 2, scope: !2775, file: !517, line: 200, type: !72)
!2788 = !DILocalVariable(name: "package", arg: 3, scope: !2775, file: !517, line: 200, type: !72)
!2789 = !DILocalVariable(name: "version", arg: 4, scope: !2775, file: !517, line: 201, type: !72)
!2790 = !DILocalVariable(name: "authors", arg: 5, scope: !2775, file: !517, line: 201, type: !2778)
!2791 = !DILocalVariable(name: "n_authors", scope: !2775, file: !517, line: 203, type: !97)
!2792 = !DILocalVariable(name: "authtab", scope: !2775, file: !517, line: 204, type: !2793)
!2793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 640, elements: !42)
!2794 = distinct !DIAssignID()
!2795 = !DILocation(line: 0, scope: !2775)
!2796 = !DILocation(line: 204, column: 3, scope: !2775)
!2797 = !DILocation(line: 208, column: 35, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !517, line: 206, column: 3)
!2799 = distinct !DILexicalBlock(scope: !2775, file: !517, line: 206, column: 3)
!2800 = !DILocation(line: 208, column: 33, scope: !2798)
!2801 = !DILocation(line: 208, column: 67, scope: !2798)
!2802 = !DILocation(line: 206, column: 3, scope: !2799)
!2803 = !DILocation(line: 208, column: 14, scope: !2798)
!2804 = !DILocation(line: 0, scope: !2799)
!2805 = !DILocation(line: 211, column: 3, scope: !2775)
!2806 = !DILocation(line: 213, column: 1, scope: !2775)
!2807 = distinct !DISubprogram(name: "version_etc", scope: !517, file: !517, line: 230, type: !2808, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !641, retainedNodes: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{null, !2678, !72, !72, !72, null}
!2810 = !{!2811, !2812, !2813, !2814, !2815}
!2811 = !DILocalVariable(name: "stream", arg: 1, scope: !2807, file: !517, line: 230, type: !2678)
!2812 = !DILocalVariable(name: "command_name", arg: 2, scope: !2807, file: !517, line: 231, type: !72)
!2813 = !DILocalVariable(name: "package", arg: 3, scope: !2807, file: !517, line: 231, type: !72)
!2814 = !DILocalVariable(name: "version", arg: 4, scope: !2807, file: !517, line: 232, type: !72)
!2815 = !DILocalVariable(name: "authors", scope: !2807, file: !517, line: 234, type: !2816)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !897, line: 52, baseType: !2817)
!2817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1191, line: 12, baseType: !2818)
!2818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !517, baseType: !2819)
!2819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2779, size: 192, elements: !37)
!2820 = distinct !DIAssignID()
!2821 = !DILocation(line: 0, scope: !2807)
!2822 = !DILocation(line: 234, column: 3, scope: !2807)
!2823 = !DILocation(line: 235, column: 3, scope: !2807)
!2824 = !DILocation(line: 236, column: 3, scope: !2807)
!2825 = !DILocation(line: 237, column: 3, scope: !2807)
!2826 = !DILocation(line: 238, column: 1, scope: !2807)
!2827 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !517, file: !517, line: 241, type: !359, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !641)
!2828 = !DILocation(line: 243, column: 3, scope: !2827)
!2829 = !DILocation(line: 248, column: 3, scope: !2827)
!2830 = !DILocation(line: 254, column: 3, scope: !2827)
!2831 = !DILocation(line: 259, column: 3, scope: !2827)
!2832 = !DILocation(line: 261, column: 1, scope: !2827)
!2833 = distinct !DISubprogram(name: "xnrealloc", scope: !2834, file: !2834, line: 147, type: !2835, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2837)
!2834 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!94, !94, !97, !97}
!2837 = !{!2838, !2839, !2840}
!2838 = !DILocalVariable(name: "p", arg: 1, scope: !2833, file: !2834, line: 147, type: !94)
!2839 = !DILocalVariable(name: "n", arg: 2, scope: !2833, file: !2834, line: 147, type: !97)
!2840 = !DILocalVariable(name: "s", arg: 3, scope: !2833, file: !2834, line: 147, type: !97)
!2841 = !DILocation(line: 0, scope: !2833)
!2842 = !DILocalVariable(name: "p", arg: 1, scope: !2843, file: !649, line: 83, type: !94)
!2843 = distinct !DISubprogram(name: "xreallocarray", scope: !649, file: !649, line: 83, type: !2835, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2844)
!2844 = !{!2842, !2845, !2846}
!2845 = !DILocalVariable(name: "n", arg: 2, scope: !2843, file: !649, line: 83, type: !97)
!2846 = !DILocalVariable(name: "s", arg: 3, scope: !2843, file: !649, line: 83, type: !97)
!2847 = !DILocation(line: 0, scope: !2843, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 149, column: 10, scope: !2833)
!2849 = !DILocation(line: 85, column: 25, scope: !2843, inlinedAt: !2848)
!2850 = !DILocalVariable(name: "p", arg: 1, scope: !2851, file: !649, line: 37, type: !94)
!2851 = distinct !DISubprogram(name: "check_nonnull", scope: !649, file: !649, line: 37, type: !2852, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2854)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!94, !94}
!2854 = !{!2850}
!2855 = !DILocation(line: 0, scope: !2851, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 85, column: 10, scope: !2843, inlinedAt: !2848)
!2857 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !2856)
!2858 = distinct !DILexicalBlock(scope: !2851, file: !649, line: 39, column: 7)
!2859 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !2856)
!2860 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !2856)
!2861 = !DILocation(line: 149, column: 3, scope: !2833)
!2862 = !DILocation(line: 0, scope: !2843)
!2863 = !DILocation(line: 85, column: 25, scope: !2843)
!2864 = !DILocation(line: 0, scope: !2851, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 85, column: 10, scope: !2843)
!2866 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !2865)
!2867 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !2865)
!2868 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !2865)
!2869 = !DILocation(line: 85, column: 3, scope: !2843)
!2870 = distinct !DISubprogram(name: "xmalloc", scope: !649, file: !649, line: 47, type: !2871, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2873)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!94, !97}
!2873 = !{!2874}
!2874 = !DILocalVariable(name: "s", arg: 1, scope: !2870, file: !649, line: 47, type: !97)
!2875 = !DILocation(line: 0, scope: !2870)
!2876 = !DILocation(line: 49, column: 25, scope: !2870)
!2877 = !DILocation(line: 0, scope: !2851, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 49, column: 10, scope: !2870)
!2879 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !2878)
!2880 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !2878)
!2881 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !2878)
!2882 = !DILocation(line: 49, column: 3, scope: !2870)
!2883 = !DISubprogram(name: "malloc", scope: !887, file: !887, line: 540, type: !2871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2884 = distinct !DISubprogram(name: "ximalloc", scope: !649, file: !649, line: 53, type: !2885, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2887)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!94, !668}
!2887 = !{!2888}
!2888 = !DILocalVariable(name: "s", arg: 1, scope: !2884, file: !649, line: 53, type: !668)
!2889 = !DILocation(line: 0, scope: !2884)
!2890 = !DILocalVariable(name: "s", arg: 1, scope: !2891, file: !2892, line: 55, type: !668)
!2891 = distinct !DISubprogram(name: "imalloc", scope: !2892, file: !2892, line: 55, type: !2885, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2893)
!2892 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2893 = !{!2890}
!2894 = !DILocation(line: 0, scope: !2891, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 55, column: 25, scope: !2884)
!2896 = !DILocation(line: 57, column: 26, scope: !2891, inlinedAt: !2895)
!2897 = !DILocation(line: 0, scope: !2851, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 55, column: 10, scope: !2884)
!2899 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !2898)
!2900 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !2898)
!2901 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !2898)
!2902 = !DILocation(line: 55, column: 3, scope: !2884)
!2903 = distinct !DISubprogram(name: "xcharalloc", scope: !649, file: !649, line: 59, type: !2904, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2906)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!93, !97}
!2906 = !{!2907}
!2907 = !DILocalVariable(name: "n", arg: 1, scope: !2903, file: !649, line: 59, type: !97)
!2908 = !DILocation(line: 0, scope: !2903)
!2909 = !DILocation(line: 0, scope: !2870, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 61, column: 10, scope: !2903)
!2911 = !DILocation(line: 49, column: 25, scope: !2870, inlinedAt: !2910)
!2912 = !DILocation(line: 0, scope: !2851, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 49, column: 10, scope: !2870, inlinedAt: !2910)
!2914 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !2913)
!2915 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !2913)
!2916 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !2913)
!2917 = !DILocation(line: 61, column: 3, scope: !2903)
!2918 = distinct !DISubprogram(name: "xrealloc", scope: !649, file: !649, line: 68, type: !2919, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!94, !94, !97}
!2921 = !{!2922, !2923}
!2922 = !DILocalVariable(name: "p", arg: 1, scope: !2918, file: !649, line: 68, type: !94)
!2923 = !DILocalVariable(name: "s", arg: 2, scope: !2918, file: !649, line: 68, type: !97)
!2924 = !DILocation(line: 0, scope: !2918)
!2925 = !DILocalVariable(name: "ptr", arg: 1, scope: !2926, file: !2927, line: 2057, type: !94)
!2926 = distinct !DISubprogram(name: "rpl_realloc", scope: !2927, file: !2927, line: 2057, type: !2919, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2928)
!2927 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2928 = !{!2925, !2929}
!2929 = !DILocalVariable(name: "size", arg: 2, scope: !2926, file: !2927, line: 2057, type: !97)
!2930 = !DILocation(line: 0, scope: !2926, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 70, column: 25, scope: !2918)
!2932 = !DILocation(line: 2059, column: 24, scope: !2926, inlinedAt: !2931)
!2933 = !DILocation(line: 2059, column: 10, scope: !2926, inlinedAt: !2931)
!2934 = !DILocation(line: 0, scope: !2851, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 70, column: 10, scope: !2918)
!2936 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !2935)
!2937 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !2935)
!2938 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !2935)
!2939 = !DILocation(line: 70, column: 3, scope: !2918)
!2940 = !DISubprogram(name: "realloc", scope: !887, file: !887, line: 551, type: !2919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2941 = distinct !DISubprogram(name: "xirealloc", scope: !649, file: !649, line: 74, type: !2942, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2944)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!94, !94, !668}
!2944 = !{!2945, !2946}
!2945 = !DILocalVariable(name: "p", arg: 1, scope: !2941, file: !649, line: 74, type: !94)
!2946 = !DILocalVariable(name: "s", arg: 2, scope: !2941, file: !649, line: 74, type: !668)
!2947 = !DILocation(line: 0, scope: !2941)
!2948 = !DILocalVariable(name: "p", arg: 1, scope: !2949, file: !2892, line: 66, type: !94)
!2949 = distinct !DISubprogram(name: "irealloc", scope: !2892, file: !2892, line: 66, type: !2942, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2950)
!2950 = !{!2948, !2951}
!2951 = !DILocalVariable(name: "s", arg: 2, scope: !2949, file: !2892, line: 66, type: !668)
!2952 = !DILocation(line: 0, scope: !2949, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 76, column: 25, scope: !2941)
!2954 = !DILocation(line: 0, scope: !2926, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 68, column: 26, scope: !2949, inlinedAt: !2953)
!2956 = !DILocation(line: 2059, column: 24, scope: !2926, inlinedAt: !2955)
!2957 = !DILocation(line: 2059, column: 10, scope: !2926, inlinedAt: !2955)
!2958 = !DILocation(line: 0, scope: !2851, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 76, column: 10, scope: !2941)
!2960 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !2959)
!2961 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !2959)
!2962 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !2959)
!2963 = !DILocation(line: 76, column: 3, scope: !2941)
!2964 = distinct !DISubprogram(name: "xireallocarray", scope: !649, file: !649, line: 89, type: !2965, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2967)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!94, !94, !668, !668}
!2967 = !{!2968, !2969, !2970}
!2968 = !DILocalVariable(name: "p", arg: 1, scope: !2964, file: !649, line: 89, type: !94)
!2969 = !DILocalVariable(name: "n", arg: 2, scope: !2964, file: !649, line: 89, type: !668)
!2970 = !DILocalVariable(name: "s", arg: 3, scope: !2964, file: !649, line: 89, type: !668)
!2971 = !DILocation(line: 0, scope: !2964)
!2972 = !DILocalVariable(name: "p", arg: 1, scope: !2973, file: !2892, line: 98, type: !94)
!2973 = distinct !DISubprogram(name: "ireallocarray", scope: !2892, file: !2892, line: 98, type: !2965, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2974)
!2974 = !{!2972, !2975, !2976}
!2975 = !DILocalVariable(name: "n", arg: 2, scope: !2973, file: !2892, line: 98, type: !668)
!2976 = !DILocalVariable(name: "s", arg: 3, scope: !2973, file: !2892, line: 98, type: !668)
!2977 = !DILocation(line: 0, scope: !2973, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 91, column: 25, scope: !2964)
!2979 = !DILocation(line: 101, column: 13, scope: !2973, inlinedAt: !2978)
!2980 = !DILocation(line: 0, scope: !2851, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 91, column: 10, scope: !2964)
!2982 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !2981)
!2983 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !2981)
!2984 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !2981)
!2985 = !DILocation(line: 91, column: 3, scope: !2964)
!2986 = distinct !DISubprogram(name: "xnmalloc", scope: !649, file: !649, line: 98, type: !2987, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!94, !97, !97}
!2989 = !{!2990, !2991}
!2990 = !DILocalVariable(name: "n", arg: 1, scope: !2986, file: !649, line: 98, type: !97)
!2991 = !DILocalVariable(name: "s", arg: 2, scope: !2986, file: !649, line: 98, type: !97)
!2992 = !DILocation(line: 0, scope: !2986)
!2993 = !DILocation(line: 0, scope: !2843, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 100, column: 10, scope: !2986)
!2995 = !DILocation(line: 85, column: 25, scope: !2843, inlinedAt: !2994)
!2996 = !DILocation(line: 0, scope: !2851, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 85, column: 10, scope: !2843, inlinedAt: !2994)
!2998 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !2997)
!2999 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !2997)
!3000 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !2997)
!3001 = !DILocation(line: 100, column: 3, scope: !2986)
!3002 = distinct !DISubprogram(name: "xinmalloc", scope: !649, file: !649, line: 104, type: !3003, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3005)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!94, !668, !668}
!3005 = !{!3006, !3007}
!3006 = !DILocalVariable(name: "n", arg: 1, scope: !3002, file: !649, line: 104, type: !668)
!3007 = !DILocalVariable(name: "s", arg: 2, scope: !3002, file: !649, line: 104, type: !668)
!3008 = !DILocation(line: 0, scope: !3002)
!3009 = !DILocation(line: 0, scope: !2964, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 106, column: 10, scope: !3002)
!3011 = !DILocation(line: 0, scope: !2973, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 91, column: 25, scope: !2964, inlinedAt: !3010)
!3013 = !DILocation(line: 101, column: 13, scope: !2973, inlinedAt: !3012)
!3014 = !DILocation(line: 0, scope: !2851, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 91, column: 10, scope: !2964, inlinedAt: !3010)
!3016 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !3015)
!3017 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !3015)
!3018 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !3015)
!3019 = !DILocation(line: 106, column: 3, scope: !3002)
!3020 = distinct !DISubprogram(name: "x2realloc", scope: !649, file: !649, line: 116, type: !3021, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3023)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!94, !94, !655}
!3023 = !{!3024, !3025}
!3024 = !DILocalVariable(name: "p", arg: 1, scope: !3020, file: !649, line: 116, type: !94)
!3025 = !DILocalVariable(name: "ps", arg: 2, scope: !3020, file: !649, line: 116, type: !655)
!3026 = !DILocation(line: 0, scope: !3020)
!3027 = !DILocation(line: 0, scope: !652, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 118, column: 10, scope: !3020)
!3029 = !DILocation(line: 178, column: 14, scope: !652, inlinedAt: !3028)
!3030 = !DILocation(line: 180, column: 9, scope: !3031, inlinedAt: !3028)
!3031 = distinct !DILexicalBlock(scope: !652, file: !649, line: 180, column: 7)
!3032 = !DILocation(line: 180, column: 7, scope: !652, inlinedAt: !3028)
!3033 = !DILocation(line: 182, column: 13, scope: !3034, inlinedAt: !3028)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !649, line: 182, column: 11)
!3035 = distinct !DILexicalBlock(scope: !3031, file: !649, line: 181, column: 5)
!3036 = !DILocation(line: 182, column: 11, scope: !3035, inlinedAt: !3028)
!3037 = !DILocation(line: 197, column: 11, scope: !3038, inlinedAt: !3028)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !649, line: 197, column: 11)
!3039 = distinct !DILexicalBlock(scope: !3031, file: !649, line: 195, column: 5)
!3040 = !DILocation(line: 197, column: 11, scope: !3039, inlinedAt: !3028)
!3041 = !DILocation(line: 198, column: 9, scope: !3038, inlinedAt: !3028)
!3042 = !DILocation(line: 0, scope: !2843, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 201, column: 7, scope: !652, inlinedAt: !3028)
!3044 = !DILocation(line: 85, column: 25, scope: !2843, inlinedAt: !3043)
!3045 = !DILocation(line: 0, scope: !2851, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 85, column: 10, scope: !2843, inlinedAt: !3043)
!3047 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !3046)
!3048 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !3046)
!3049 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !3046)
!3050 = !DILocation(line: 202, column: 7, scope: !652, inlinedAt: !3028)
!3051 = !DILocation(line: 118, column: 3, scope: !3020)
!3052 = !DILocation(line: 0, scope: !652)
!3053 = !DILocation(line: 178, column: 14, scope: !652)
!3054 = !DILocation(line: 180, column: 9, scope: !3031)
!3055 = !DILocation(line: 180, column: 7, scope: !652)
!3056 = !DILocation(line: 182, column: 13, scope: !3034)
!3057 = !DILocation(line: 182, column: 11, scope: !3035)
!3058 = !DILocation(line: 190, column: 30, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3034, file: !649, line: 183, column: 9)
!3060 = !DILocation(line: 191, column: 16, scope: !3059)
!3061 = !DILocation(line: 191, column: 13, scope: !3059)
!3062 = !DILocation(line: 192, column: 9, scope: !3059)
!3063 = !DILocation(line: 197, column: 11, scope: !3038)
!3064 = !DILocation(line: 197, column: 11, scope: !3039)
!3065 = !DILocation(line: 198, column: 9, scope: !3038)
!3066 = !DILocation(line: 0, scope: !2843, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 201, column: 7, scope: !652)
!3068 = !DILocation(line: 85, column: 25, scope: !2843, inlinedAt: !3067)
!3069 = !DILocation(line: 0, scope: !2851, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 85, column: 10, scope: !2843, inlinedAt: !3067)
!3071 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !3070)
!3072 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !3070)
!3073 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !3070)
!3074 = !DILocation(line: 202, column: 7, scope: !652)
!3075 = !DILocation(line: 203, column: 3, scope: !652)
!3076 = !DILocation(line: 0, scope: !664)
!3077 = !DILocation(line: 230, column: 14, scope: !664)
!3078 = !DILocation(line: 238, column: 7, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !664, file: !649, line: 238, column: 7)
!3080 = !DILocation(line: 238, column: 7, scope: !664)
!3081 = !DILocation(line: 240, column: 9, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !664, file: !649, line: 240, column: 7)
!3083 = !DILocation(line: 240, column: 18, scope: !3082)
!3084 = !DILocation(line: 253, column: 8, scope: !664)
!3085 = !DILocation(line: 256, column: 7, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !664, file: !649, line: 256, column: 7)
!3087 = !DILocation(line: 256, column: 7, scope: !664)
!3088 = !DILocation(line: 258, column: 27, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3086, file: !649, line: 257, column: 5)
!3090 = !DILocation(line: 259, column: 50, scope: !3089)
!3091 = !DILocation(line: 259, column: 32, scope: !3089)
!3092 = !DILocation(line: 260, column: 5, scope: !3089)
!3093 = !DILocation(line: 262, column: 9, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !664, file: !649, line: 262, column: 7)
!3095 = !DILocation(line: 262, column: 7, scope: !664)
!3096 = !DILocation(line: 263, column: 9, scope: !3094)
!3097 = !DILocation(line: 263, column: 5, scope: !3094)
!3098 = !DILocation(line: 264, column: 9, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !664, file: !649, line: 264, column: 7)
!3100 = !DILocation(line: 264, column: 14, scope: !3099)
!3101 = !DILocation(line: 265, column: 7, scope: !3099)
!3102 = !DILocation(line: 265, column: 11, scope: !3099)
!3103 = !DILocation(line: 266, column: 11, scope: !3099)
!3104 = !DILocation(line: 267, column: 14, scope: !3099)
!3105 = !DILocation(line: 264, column: 7, scope: !664)
!3106 = !DILocation(line: 268, column: 5, scope: !3099)
!3107 = !DILocation(line: 0, scope: !2918, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 269, column: 8, scope: !664)
!3109 = !DILocation(line: 0, scope: !2926, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 70, column: 25, scope: !2918, inlinedAt: !3108)
!3111 = !DILocation(line: 2059, column: 24, scope: !2926, inlinedAt: !3110)
!3112 = !DILocation(line: 2059, column: 10, scope: !2926, inlinedAt: !3110)
!3113 = !DILocation(line: 0, scope: !2851, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 70, column: 10, scope: !2918, inlinedAt: !3108)
!3115 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !3114)
!3116 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !3114)
!3117 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !3114)
!3118 = !DILocation(line: 270, column: 7, scope: !664)
!3119 = !DILocation(line: 271, column: 3, scope: !664)
!3120 = distinct !DISubprogram(name: "xzalloc", scope: !649, file: !649, line: 279, type: !2871, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3121)
!3121 = !{!3122}
!3122 = !DILocalVariable(name: "s", arg: 1, scope: !3120, file: !649, line: 279, type: !97)
!3123 = !DILocation(line: 0, scope: !3120)
!3124 = !DILocalVariable(name: "n", arg: 1, scope: !3125, file: !649, line: 294, type: !97)
!3125 = distinct !DISubprogram(name: "xcalloc", scope: !649, file: !649, line: 294, type: !2987, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3126)
!3126 = !{!3124, !3127}
!3127 = !DILocalVariable(name: "s", arg: 2, scope: !3125, file: !649, line: 294, type: !97)
!3128 = !DILocation(line: 0, scope: !3125, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 281, column: 10, scope: !3120)
!3130 = !DILocation(line: 296, column: 25, scope: !3125, inlinedAt: !3129)
!3131 = !DILocation(line: 0, scope: !2851, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 296, column: 10, scope: !3125, inlinedAt: !3129)
!3133 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !3132)
!3134 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !3132)
!3135 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !3132)
!3136 = !DILocation(line: 281, column: 3, scope: !3120)
!3137 = !DISubprogram(name: "calloc", scope: !887, file: !887, line: 543, type: !2987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3138 = !DILocation(line: 0, scope: !3125)
!3139 = !DILocation(line: 296, column: 25, scope: !3125)
!3140 = !DILocation(line: 0, scope: !2851, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 296, column: 10, scope: !3125)
!3142 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !3141)
!3143 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !3141)
!3144 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !3141)
!3145 = !DILocation(line: 296, column: 3, scope: !3125)
!3146 = distinct !DISubprogram(name: "xizalloc", scope: !649, file: !649, line: 285, type: !2885, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3147)
!3147 = !{!3148}
!3148 = !DILocalVariable(name: "s", arg: 1, scope: !3146, file: !649, line: 285, type: !668)
!3149 = !DILocation(line: 0, scope: !3146)
!3150 = !DILocalVariable(name: "n", arg: 1, scope: !3151, file: !649, line: 300, type: !668)
!3151 = distinct !DISubprogram(name: "xicalloc", scope: !649, file: !649, line: 300, type: !3003, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3152)
!3152 = !{!3150, !3153}
!3153 = !DILocalVariable(name: "s", arg: 2, scope: !3151, file: !649, line: 300, type: !668)
!3154 = !DILocation(line: 0, scope: !3151, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 287, column: 10, scope: !3146)
!3156 = !DILocalVariable(name: "n", arg: 1, scope: !3157, file: !2892, line: 77, type: !668)
!3157 = distinct !DISubprogram(name: "icalloc", scope: !2892, file: !2892, line: 77, type: !3003, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3158)
!3158 = !{!3156, !3159}
!3159 = !DILocalVariable(name: "s", arg: 2, scope: !3157, file: !2892, line: 77, type: !668)
!3160 = !DILocation(line: 0, scope: !3157, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 302, column: 25, scope: !3151, inlinedAt: !3155)
!3162 = !DILocation(line: 91, column: 10, scope: !3157, inlinedAt: !3161)
!3163 = !DILocation(line: 0, scope: !2851, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 302, column: 10, scope: !3151, inlinedAt: !3155)
!3165 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !3164)
!3166 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !3164)
!3167 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !3164)
!3168 = !DILocation(line: 287, column: 3, scope: !3146)
!3169 = !DILocation(line: 0, scope: !3151)
!3170 = !DILocation(line: 0, scope: !3157, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 302, column: 25, scope: !3151)
!3172 = !DILocation(line: 91, column: 10, scope: !3157, inlinedAt: !3171)
!3173 = !DILocation(line: 0, scope: !2851, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 302, column: 10, scope: !3151)
!3175 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !3174)
!3176 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !3174)
!3177 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !3174)
!3178 = !DILocation(line: 302, column: 3, scope: !3151)
!3179 = distinct !DISubprogram(name: "xmemdup", scope: !649, file: !649, line: 310, type: !3180, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3182)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!94, !924, !97}
!3182 = !{!3183, !3184}
!3183 = !DILocalVariable(name: "p", arg: 1, scope: !3179, file: !649, line: 310, type: !924)
!3184 = !DILocalVariable(name: "s", arg: 2, scope: !3179, file: !649, line: 310, type: !97)
!3185 = !DILocation(line: 0, scope: !3179)
!3186 = !DILocation(line: 0, scope: !2870, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 312, column: 18, scope: !3179)
!3188 = !DILocation(line: 49, column: 25, scope: !2870, inlinedAt: !3187)
!3189 = !DILocation(line: 0, scope: !2851, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 49, column: 10, scope: !2870, inlinedAt: !3187)
!3191 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !3190)
!3192 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !3190)
!3193 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !3190)
!3194 = !DILocalVariable(name: "__dest", arg: 1, scope: !3195, file: !1308, line: 26, type: !3198)
!3195 = distinct !DISubprogram(name: "memcpy", scope: !1308, file: !1308, line: 26, type: !3196, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3199)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!94, !3198, !923, !97}
!3198 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!3199 = !{!3194, !3200, !3201}
!3200 = !DILocalVariable(name: "__src", arg: 2, scope: !3195, file: !1308, line: 26, type: !923)
!3201 = !DILocalVariable(name: "__len", arg: 3, scope: !3195, file: !1308, line: 26, type: !97)
!3202 = !DILocation(line: 0, scope: !3195, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 312, column: 10, scope: !3179)
!3204 = !DILocation(line: 29, column: 10, scope: !3195, inlinedAt: !3203)
!3205 = !DILocation(line: 312, column: 3, scope: !3179)
!3206 = distinct !DISubprogram(name: "ximemdup", scope: !649, file: !649, line: 316, type: !3207, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3209)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!94, !924, !668}
!3209 = !{!3210, !3211}
!3210 = !DILocalVariable(name: "p", arg: 1, scope: !3206, file: !649, line: 316, type: !924)
!3211 = !DILocalVariable(name: "s", arg: 2, scope: !3206, file: !649, line: 316, type: !668)
!3212 = !DILocation(line: 0, scope: !3206)
!3213 = !DILocation(line: 0, scope: !2884, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 318, column: 18, scope: !3206)
!3215 = !DILocation(line: 0, scope: !2891, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 55, column: 25, scope: !2884, inlinedAt: !3214)
!3217 = !DILocation(line: 57, column: 26, scope: !2891, inlinedAt: !3216)
!3218 = !DILocation(line: 0, scope: !2851, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 55, column: 10, scope: !2884, inlinedAt: !3214)
!3220 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !3219)
!3221 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !3219)
!3222 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !3219)
!3223 = !DILocation(line: 0, scope: !3195, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 318, column: 10, scope: !3206)
!3225 = !DILocation(line: 29, column: 10, scope: !3195, inlinedAt: !3224)
!3226 = !DILocation(line: 318, column: 3, scope: !3206)
!3227 = distinct !DISubprogram(name: "ximemdup0", scope: !649, file: !649, line: 325, type: !3228, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3230)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!93, !924, !668}
!3230 = !{!3231, !3232, !3233}
!3231 = !DILocalVariable(name: "p", arg: 1, scope: !3227, file: !649, line: 325, type: !924)
!3232 = !DILocalVariable(name: "s", arg: 2, scope: !3227, file: !649, line: 325, type: !668)
!3233 = !DILocalVariable(name: "result", scope: !3227, file: !649, line: 327, type: !93)
!3234 = !DILocation(line: 0, scope: !3227)
!3235 = !DILocation(line: 327, column: 30, scope: !3227)
!3236 = !DILocation(line: 0, scope: !2884, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 327, column: 18, scope: !3227)
!3238 = !DILocation(line: 0, scope: !2891, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 55, column: 25, scope: !2884, inlinedAt: !3237)
!3240 = !DILocation(line: 57, column: 26, scope: !2891, inlinedAt: !3239)
!3241 = !DILocation(line: 0, scope: !2851, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 55, column: 10, scope: !2884, inlinedAt: !3237)
!3243 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !3242)
!3244 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !3242)
!3245 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !3242)
!3246 = !DILocation(line: 328, column: 3, scope: !3227)
!3247 = !DILocation(line: 328, column: 13, scope: !3227)
!3248 = !DILocation(line: 0, scope: !3195, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 329, column: 10, scope: !3227)
!3250 = !DILocation(line: 29, column: 10, scope: !3195, inlinedAt: !3249)
!3251 = !DILocation(line: 329, column: 3, scope: !3227)
!3252 = distinct !DISubprogram(name: "xstrdup", scope: !649, file: !649, line: 335, type: !902, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3253)
!3253 = !{!3254}
!3254 = !DILocalVariable(name: "string", arg: 1, scope: !3252, file: !649, line: 335, type: !72)
!3255 = !DILocation(line: 0, scope: !3252)
!3256 = !DILocation(line: 337, column: 27, scope: !3252)
!3257 = !DILocation(line: 337, column: 43, scope: !3252)
!3258 = !DILocation(line: 0, scope: !3179, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 337, column: 10, scope: !3252)
!3260 = !DILocation(line: 0, scope: !2870, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 312, column: 18, scope: !3179, inlinedAt: !3259)
!3262 = !DILocation(line: 49, column: 25, scope: !2870, inlinedAt: !3261)
!3263 = !DILocation(line: 0, scope: !2851, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 49, column: 10, scope: !2870, inlinedAt: !3261)
!3265 = !DILocation(line: 39, column: 8, scope: !2858, inlinedAt: !3264)
!3266 = !DILocation(line: 39, column: 7, scope: !2851, inlinedAt: !3264)
!3267 = !DILocation(line: 40, column: 5, scope: !2858, inlinedAt: !3264)
!3268 = !DILocation(line: 0, scope: !3195, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 312, column: 10, scope: !3179, inlinedAt: !3259)
!3270 = !DILocation(line: 29, column: 10, scope: !3195, inlinedAt: !3269)
!3271 = !DILocation(line: 337, column: 3, scope: !3252)
!3272 = distinct !DISubprogram(name: "xalloc_die", scope: !613, file: !613, line: 32, type: !359, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !3273)
!3273 = !{!3274}
!3274 = !DILocalVariable(name: "__errstatus", scope: !3275, file: !613, line: 34, type: !3276)
!3275 = distinct !DILexicalBlock(scope: !3272, file: !613, line: 34, column: 3)
!3276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!3277 = !DILocation(line: 34, column: 3, scope: !3275)
!3278 = !DILocation(line: 0, scope: !3275)
!3279 = !DILocation(line: 40, column: 3, scope: !3272)
!3280 = distinct !DISubprogram(name: "close_stream", scope: !686, file: !686, line: 55, type: !3281, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !685, retainedNodes: !3317)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!95, !3283}
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !3285)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !3286)
!3286 = !{!3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3285, file: !234, line: 51, baseType: !95, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3285, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3285, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3285, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3285, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3285, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3285, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3285, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3285, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3285, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3285, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3285, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3285, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3285, file: !234, line: 70, baseType: !3301, size: 64, offset: 832)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3285, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3285, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3285, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3285, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3285, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3285, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3285, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3285, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3285, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3285, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3285, file: !234, line: 93, baseType: !3301, size: 64, offset: 1344)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3285, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3285, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3285, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3285, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!3317 = !{!3318, !3319, !3321, !3322}
!3318 = !DILocalVariable(name: "stream", arg: 1, scope: !3280, file: !686, line: 55, type: !3283)
!3319 = !DILocalVariable(name: "some_pending", scope: !3280, file: !686, line: 57, type: !3320)
!3320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!3321 = !DILocalVariable(name: "prev_fail", scope: !3280, file: !686, line: 58, type: !3320)
!3322 = !DILocalVariable(name: "fclose_fail", scope: !3280, file: !686, line: 59, type: !3320)
!3323 = !DILocation(line: 0, scope: !3280)
!3324 = !DILocation(line: 57, column: 30, scope: !3280)
!3325 = !DILocalVariable(name: "__stream", arg: 1, scope: !3326, file: !1146, line: 135, type: !3283)
!3326 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1146, file: !1146, line: 135, type: !3281, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !685, retainedNodes: !3327)
!3327 = !{!3325}
!3328 = !DILocation(line: 0, scope: !3326, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 58, column: 27, scope: !3280)
!3330 = !DILocation(line: 137, column: 10, scope: !3326, inlinedAt: !3329)
!3331 = !{!1155, !740, i64 0}
!3332 = !DILocation(line: 58, column: 43, scope: !3280)
!3333 = !DILocation(line: 59, column: 29, scope: !3280)
!3334 = !DILocation(line: 59, column: 45, scope: !3280)
!3335 = !DILocation(line: 69, column: 17, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3280, file: !686, line: 69, column: 7)
!3337 = !DILocation(line: 57, column: 50, scope: !3280)
!3338 = !DILocation(line: 69, column: 33, scope: !3336)
!3339 = !DILocation(line: 69, column: 53, scope: !3336)
!3340 = !DILocation(line: 69, column: 59, scope: !3336)
!3341 = !DILocation(line: 69, column: 7, scope: !3280)
!3342 = !DILocation(line: 71, column: 11, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3336, file: !686, line: 70, column: 5)
!3344 = !DILocation(line: 72, column: 9, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3343, file: !686, line: 71, column: 11)
!3346 = !DILocation(line: 72, column: 15, scope: !3345)
!3347 = !DILocation(line: 77, column: 1, scope: !3280)
!3348 = !DISubprogram(name: "__fpending", scope: !3349, file: !3349, line: 75, type: !3350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3349 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!97, !3283}
!3352 = distinct !DISubprogram(name: "rpl_fclose", scope: !688, file: !688, line: 58, type: !3353, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3389)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!95, !3355}
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !3357)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !3358)
!3358 = !{!3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3357, file: !234, line: 51, baseType: !95, size: 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3357, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3357, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3357, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3357, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3357, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3357, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3357, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3357, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3357, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3357, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3357, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3357, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3357, file: !234, line: 70, baseType: !3373, size: 64, offset: 832)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3357, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3357, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3357, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3357, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3357, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3357, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3357, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3357, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3357, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3357, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3357, file: !234, line: 93, baseType: !3373, size: 64, offset: 1344)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3357, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3357, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3357, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3357, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!3389 = !{!3390, !3391, !3392, !3393}
!3390 = !DILocalVariable(name: "fp", arg: 1, scope: !3352, file: !688, line: 58, type: !3355)
!3391 = !DILocalVariable(name: "saved_errno", scope: !3352, file: !688, line: 60, type: !95)
!3392 = !DILocalVariable(name: "fd", scope: !3352, file: !688, line: 63, type: !95)
!3393 = !DILocalVariable(name: "result", scope: !3352, file: !688, line: 74, type: !95)
!3394 = !DILocation(line: 0, scope: !3352)
!3395 = !DILocation(line: 63, column: 12, scope: !3352)
!3396 = !DILocation(line: 64, column: 10, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3352, file: !688, line: 64, column: 7)
!3398 = !DILocation(line: 64, column: 7, scope: !3352)
!3399 = !DILocation(line: 65, column: 12, scope: !3397)
!3400 = !DILocation(line: 65, column: 5, scope: !3397)
!3401 = !DILocation(line: 70, column: 9, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3352, file: !688, line: 70, column: 7)
!3403 = !DILocation(line: 70, column: 23, scope: !3402)
!3404 = !DILocation(line: 70, column: 33, scope: !3402)
!3405 = !DILocation(line: 70, column: 26, scope: !3402)
!3406 = !DILocation(line: 70, column: 59, scope: !3402)
!3407 = !DILocation(line: 71, column: 7, scope: !3402)
!3408 = !DILocation(line: 71, column: 10, scope: !3402)
!3409 = !DILocation(line: 70, column: 7, scope: !3352)
!3410 = !DILocation(line: 100, column: 12, scope: !3352)
!3411 = !DILocation(line: 105, column: 7, scope: !3352)
!3412 = !DILocation(line: 72, column: 19, scope: !3402)
!3413 = !DILocation(line: 105, column: 19, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3352, file: !688, line: 105, column: 7)
!3415 = !DILocation(line: 107, column: 13, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3414, file: !688, line: 106, column: 5)
!3417 = !DILocation(line: 109, column: 5, scope: !3416)
!3418 = !DILocation(line: 112, column: 1, scope: !3352)
!3419 = !DISubprogram(name: "fileno", scope: !897, file: !897, line: 809, type: !3353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3420 = !DISubprogram(name: "fclose", scope: !897, file: !897, line: 178, type: !3353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3421 = !DISubprogram(name: "__freading", scope: !3349, file: !3349, line: 51, type: !3353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3422 = !DISubprogram(name: "lseek", scope: !1026, file: !1026, line: 339, type: !3423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!256, !95, !256, !95}
!3425 = distinct !DISubprogram(name: "rpl_fflush", scope: !690, file: !690, line: 130, type: !3426, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3462)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!95, !3428}
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !3430)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !3431)
!3431 = !{!3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3430, file: !234, line: 51, baseType: !95, size: 32)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3430, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3430, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3430, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3430, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3430, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3430, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3430, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3430, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3430, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3430, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3430, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3430, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3430, file: !234, line: 70, baseType: !3446, size: 64, offset: 832)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3430, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3430, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3430, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3430, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3430, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3430, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3430, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3430, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3430, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3430, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3430, file: !234, line: 93, baseType: !3446, size: 64, offset: 1344)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3430, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3430, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3430, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3430, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!3462 = !{!3463}
!3463 = !DILocalVariable(name: "stream", arg: 1, scope: !3425, file: !690, line: 130, type: !3428)
!3464 = !DILocation(line: 0, scope: !3425)
!3465 = !DILocation(line: 151, column: 14, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3425, file: !690, line: 151, column: 7)
!3467 = !DILocation(line: 151, column: 22, scope: !3466)
!3468 = !DILocation(line: 151, column: 27, scope: !3466)
!3469 = !DILocation(line: 151, column: 7, scope: !3425)
!3470 = !DILocation(line: 152, column: 12, scope: !3466)
!3471 = !DILocation(line: 152, column: 5, scope: !3466)
!3472 = !DILocalVariable(name: "fp", arg: 1, scope: !3473, file: !690, line: 42, type: !3428)
!3473 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !690, file: !690, line: 42, type: !3474, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3476)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{null, !3428}
!3476 = !{!3472}
!3477 = !DILocation(line: 0, scope: !3473, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 157, column: 3, scope: !3425)
!3479 = !DILocation(line: 44, column: 12, scope: !3480, inlinedAt: !3478)
!3480 = distinct !DILexicalBlock(scope: !3473, file: !690, line: 44, column: 7)
!3481 = !DILocation(line: 44, column: 19, scope: !3480, inlinedAt: !3478)
!3482 = !DILocation(line: 44, column: 7, scope: !3473, inlinedAt: !3478)
!3483 = !DILocation(line: 46, column: 5, scope: !3480, inlinedAt: !3478)
!3484 = !DILocation(line: 159, column: 10, scope: !3425)
!3485 = !DILocation(line: 159, column: 3, scope: !3425)
!3486 = !DILocation(line: 236, column: 1, scope: !3425)
!3487 = !DISubprogram(name: "fflush", scope: !897, file: !897, line: 230, type: !3426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3488 = distinct !DISubprogram(name: "rpl_fseeko", scope: !692, file: !692, line: 28, type: !3489, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !3526)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!95, !3491, !3525, !95}
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !3493)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3493, file: !234, line: 51, baseType: !95, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3493, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3493, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3493, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3493, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3493, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3493, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3493, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3493, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3493, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3493, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3493, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3493, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3493, file: !234, line: 70, baseType: !3509, size: 64, offset: 832)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3493, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3493, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3493, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3493, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3493, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3493, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3493, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3493, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3493, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3493, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3493, file: !234, line: 93, baseType: !3509, size: 64, offset: 1344)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3493, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3493, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3493, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3493, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!3525 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !897, line: 63, baseType: !256)
!3526 = !{!3527, !3528, !3529, !3530}
!3527 = !DILocalVariable(name: "fp", arg: 1, scope: !3488, file: !692, line: 28, type: !3491)
!3528 = !DILocalVariable(name: "offset", arg: 2, scope: !3488, file: !692, line: 28, type: !3525)
!3529 = !DILocalVariable(name: "whence", arg: 3, scope: !3488, file: !692, line: 28, type: !95)
!3530 = !DILocalVariable(name: "pos", scope: !3531, file: !692, line: 123, type: !3525)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !692, line: 119, column: 5)
!3532 = distinct !DILexicalBlock(scope: !3488, file: !692, line: 55, column: 7)
!3533 = !DILocation(line: 0, scope: !3488)
!3534 = !DILocation(line: 55, column: 12, scope: !3532)
!3535 = !{!1155, !719, i64 16}
!3536 = !DILocation(line: 55, column: 33, scope: !3532)
!3537 = !{!1155, !719, i64 8}
!3538 = !DILocation(line: 55, column: 25, scope: !3532)
!3539 = !DILocation(line: 56, column: 7, scope: !3532)
!3540 = !DILocation(line: 56, column: 15, scope: !3532)
!3541 = !DILocation(line: 56, column: 37, scope: !3532)
!3542 = !{!1155, !719, i64 32}
!3543 = !DILocation(line: 56, column: 29, scope: !3532)
!3544 = !DILocation(line: 57, column: 7, scope: !3532)
!3545 = !DILocation(line: 57, column: 15, scope: !3532)
!3546 = !{!1155, !719, i64 72}
!3547 = !DILocation(line: 57, column: 29, scope: !3532)
!3548 = !DILocation(line: 55, column: 7, scope: !3488)
!3549 = !DILocation(line: 123, column: 26, scope: !3531)
!3550 = !DILocation(line: 123, column: 19, scope: !3531)
!3551 = !DILocation(line: 0, scope: !3531)
!3552 = !DILocation(line: 124, column: 15, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3531, file: !692, line: 124, column: 11)
!3554 = !DILocation(line: 124, column: 11, scope: !3531)
!3555 = !DILocation(line: 135, column: 19, scope: !3531)
!3556 = !DILocation(line: 136, column: 12, scope: !3531)
!3557 = !DILocation(line: 136, column: 20, scope: !3531)
!3558 = !{!1155, !1156, i64 144}
!3559 = !DILocation(line: 167, column: 7, scope: !3531)
!3560 = !DILocation(line: 169, column: 10, scope: !3488)
!3561 = !DILocation(line: 169, column: 3, scope: !3488)
!3562 = !DILocation(line: 170, column: 1, scope: !3488)
!3563 = !DISubprogram(name: "fseeko", scope: !897, file: !897, line: 736, type: !3564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!95, !3491, !256, !95}
!3566 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !620, file: !620, line: 100, type: !3567, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3570)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!97, !1326, !72, !97, !3569}
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!3570 = !{!3571, !3572, !3573, !3574, !3575}
!3571 = !DILocalVariable(name: "pwc", arg: 1, scope: !3566, file: !620, line: 100, type: !1326)
!3572 = !DILocalVariable(name: "s", arg: 2, scope: !3566, file: !620, line: 100, type: !72)
!3573 = !DILocalVariable(name: "n", arg: 3, scope: !3566, file: !620, line: 100, type: !97)
!3574 = !DILocalVariable(name: "ps", arg: 4, scope: !3566, file: !620, line: 100, type: !3569)
!3575 = !DILocalVariable(name: "ret", scope: !3566, file: !620, line: 130, type: !97)
!3576 = !DILocation(line: 0, scope: !3566)
!3577 = !DILocation(line: 105, column: 9, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3566, file: !620, line: 105, column: 7)
!3579 = !DILocation(line: 105, column: 7, scope: !3566)
!3580 = !DILocation(line: 117, column: 10, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3566, file: !620, line: 117, column: 7)
!3582 = !DILocation(line: 117, column: 7, scope: !3566)
!3583 = !DILocation(line: 130, column: 16, scope: !3566)
!3584 = !DILocation(line: 135, column: 11, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3566, file: !620, line: 135, column: 7)
!3586 = !DILocation(line: 135, column: 25, scope: !3585)
!3587 = !DILocation(line: 135, column: 30, scope: !3585)
!3588 = !DILocation(line: 135, column: 7, scope: !3566)
!3589 = !DILocalVariable(name: "ps", arg: 1, scope: !3590, file: !1299, line: 1135, type: !3569)
!3590 = distinct !DISubprogram(name: "mbszero", scope: !1299, file: !1299, line: 1135, type: !3591, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3593)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{null, !3569}
!3593 = !{!3589}
!3594 = !DILocation(line: 0, scope: !3590, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 137, column: 5, scope: !3585)
!3596 = !DILocalVariable(name: "__dest", arg: 1, scope: !3597, file: !1308, line: 57, type: !94)
!3597 = distinct !DISubprogram(name: "memset", scope: !1308, file: !1308, line: 57, type: !1309, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3598)
!3598 = !{!3596, !3599, !3600}
!3599 = !DILocalVariable(name: "__ch", arg: 2, scope: !3597, file: !1308, line: 57, type: !95)
!3600 = !DILocalVariable(name: "__len", arg: 3, scope: !3597, file: !1308, line: 57, type: !97)
!3601 = !DILocation(line: 0, scope: !3597, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 1137, column: 3, scope: !3590, inlinedAt: !3595)
!3603 = !DILocation(line: 59, column: 10, scope: !3597, inlinedAt: !3602)
!3604 = !DILocation(line: 137, column: 5, scope: !3585)
!3605 = !DILocation(line: 138, column: 11, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3566, file: !620, line: 138, column: 7)
!3607 = !DILocation(line: 138, column: 7, scope: !3566)
!3608 = !DILocation(line: 139, column: 5, scope: !3606)
!3609 = !DILocation(line: 143, column: 26, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3566, file: !620, line: 143, column: 7)
!3611 = !DILocation(line: 143, column: 41, scope: !3610)
!3612 = !DILocation(line: 143, column: 7, scope: !3566)
!3613 = !DILocation(line: 145, column: 15, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !620, line: 145, column: 11)
!3615 = distinct !DILexicalBlock(scope: !3610, file: !620, line: 144, column: 5)
!3616 = !DILocation(line: 145, column: 11, scope: !3615)
!3617 = !DILocation(line: 146, column: 32, scope: !3614)
!3618 = !DILocation(line: 146, column: 16, scope: !3614)
!3619 = !DILocation(line: 146, column: 14, scope: !3614)
!3620 = !DILocation(line: 146, column: 9, scope: !3614)
!3621 = !DILocation(line: 286, column: 1, scope: !3566)
!3622 = !DISubprogram(name: "mbsinit", scope: !3623, file: !3623, line: 293, type: !3624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3623 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!95, !3626}
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!3628 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !694, file: !694, line: 27, type: !2835, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3629)
!3629 = !{!3630, !3631, !3632, !3633}
!3630 = !DILocalVariable(name: "ptr", arg: 1, scope: !3628, file: !694, line: 27, type: !94)
!3631 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3628, file: !694, line: 27, type: !97)
!3632 = !DILocalVariable(name: "size", arg: 3, scope: !3628, file: !694, line: 27, type: !97)
!3633 = !DILocalVariable(name: "nbytes", scope: !3628, file: !694, line: 29, type: !97)
!3634 = !DILocation(line: 0, scope: !3628)
!3635 = !DILocation(line: 30, column: 7, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3628, file: !694, line: 30, column: 7)
!3637 = !DILocation(line: 30, column: 7, scope: !3628)
!3638 = !DILocation(line: 32, column: 7, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3636, file: !694, line: 31, column: 5)
!3640 = !DILocation(line: 32, column: 13, scope: !3639)
!3641 = !DILocation(line: 33, column: 7, scope: !3639)
!3642 = !DILocalVariable(name: "ptr", arg: 1, scope: !3643, file: !2927, line: 2057, type: !94)
!3643 = distinct !DISubprogram(name: "rpl_realloc", scope: !2927, file: !2927, line: 2057, type: !2919, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3644)
!3644 = !{!3642, !3645}
!3645 = !DILocalVariable(name: "size", arg: 2, scope: !3643, file: !2927, line: 2057, type: !97)
!3646 = !DILocation(line: 0, scope: !3643, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 37, column: 10, scope: !3628)
!3648 = !DILocation(line: 2059, column: 24, scope: !3643, inlinedAt: !3647)
!3649 = !DILocation(line: 2059, column: 10, scope: !3643, inlinedAt: !3647)
!3650 = !DILocation(line: 37, column: 3, scope: !3628)
!3651 = !DILocation(line: 38, column: 1, scope: !3628)
!3652 = distinct !DISubprogram(name: "hard_locale", scope: !638, file: !638, line: 28, type: !3653, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3655)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!217, !95}
!3655 = !{!3656, !3657}
!3656 = !DILocalVariable(name: "category", arg: 1, scope: !3652, file: !638, line: 28, type: !95)
!3657 = !DILocalVariable(name: "locale", scope: !3652, file: !638, line: 30, type: !3658)
!3658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3659)
!3659 = !{!3660}
!3660 = !DISubrange(count: 257)
!3661 = distinct !DIAssignID()
!3662 = !DILocation(line: 0, scope: !3652)
!3663 = !DILocation(line: 30, column: 3, scope: !3652)
!3664 = !DILocation(line: 32, column: 7, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3652, file: !638, line: 32, column: 7)
!3666 = !DILocation(line: 32, column: 7, scope: !3652)
!3667 = !DILocalVariable(name: "__s1", arg: 1, scope: !3668, file: !752, line: 1359, type: !72)
!3668 = distinct !DISubprogram(name: "streq", scope: !752, file: !752, line: 1359, type: !753, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !3669)
!3669 = !{!3667, !3670}
!3670 = !DILocalVariable(name: "__s2", arg: 2, scope: !3668, file: !752, line: 1359, type: !72)
!3671 = !DILocation(line: 0, scope: !3668, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 35, column: 9, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3652, file: !638, line: 35, column: 7)
!3674 = !DILocation(line: 1361, column: 11, scope: !3668, inlinedAt: !3672)
!3675 = !DILocation(line: 35, column: 29, scope: !3673)
!3676 = !DILocation(line: 0, scope: !3668, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 35, column: 32, scope: !3673)
!3678 = !DILocation(line: 1361, column: 11, scope: !3668, inlinedAt: !3677)
!3679 = !DILocation(line: 1361, column: 10, scope: !3668, inlinedAt: !3677)
!3680 = !DILocation(line: 35, column: 7, scope: !3652)
!3681 = !DILocation(line: 46, column: 3, scope: !3652)
!3682 = !DILocation(line: 47, column: 1, scope: !3652)
!3683 = distinct !DISubprogram(name: "setlocale_null_r", scope: !700, file: !700, line: 154, type: !3684, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3686)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!95, !95, !93, !97}
!3686 = !{!3687, !3688, !3689}
!3687 = !DILocalVariable(name: "category", arg: 1, scope: !3683, file: !700, line: 154, type: !95)
!3688 = !DILocalVariable(name: "buf", arg: 2, scope: !3683, file: !700, line: 154, type: !93)
!3689 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3683, file: !700, line: 154, type: !97)
!3690 = !DILocation(line: 0, scope: !3683)
!3691 = !DILocation(line: 159, column: 10, scope: !3683)
!3692 = !DILocation(line: 159, column: 3, scope: !3683)
!3693 = distinct !DISubprogram(name: "setlocale_null", scope: !700, file: !700, line: 186, type: !3694, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3696)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!72, !95}
!3696 = !{!3697}
!3697 = !DILocalVariable(name: "category", arg: 1, scope: !3693, file: !700, line: 186, type: !95)
!3698 = !DILocation(line: 0, scope: !3693)
!3699 = !DILocation(line: 189, column: 10, scope: !3693)
!3700 = !DILocation(line: 189, column: 3, scope: !3693)
!3701 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !702, file: !702, line: 35, type: !3694, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3702)
!3702 = !{!3703, !3704}
!3703 = !DILocalVariable(name: "category", arg: 1, scope: !3701, file: !702, line: 35, type: !95)
!3704 = !DILocalVariable(name: "result", scope: !3701, file: !702, line: 37, type: !72)
!3705 = !DILocation(line: 0, scope: !3701)
!3706 = !DILocation(line: 37, column: 24, scope: !3701)
!3707 = !DILocation(line: 62, column: 3, scope: !3701)
!3708 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !702, file: !702, line: 66, type: !3684, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3709)
!3709 = !{!3710, !3711, !3712, !3713, !3714}
!3710 = !DILocalVariable(name: "category", arg: 1, scope: !3708, file: !702, line: 66, type: !95)
!3711 = !DILocalVariable(name: "buf", arg: 2, scope: !3708, file: !702, line: 66, type: !93)
!3712 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3708, file: !702, line: 66, type: !97)
!3713 = !DILocalVariable(name: "result", scope: !3708, file: !702, line: 111, type: !72)
!3714 = !DILocalVariable(name: "length", scope: !3715, file: !702, line: 125, type: !97)
!3715 = distinct !DILexicalBlock(scope: !3716, file: !702, line: 124, column: 5)
!3716 = distinct !DILexicalBlock(scope: !3708, file: !702, line: 113, column: 7)
!3717 = !DILocation(line: 0, scope: !3708)
!3718 = !DILocation(line: 0, scope: !3701, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 111, column: 24, scope: !3708)
!3720 = !DILocation(line: 37, column: 24, scope: !3701, inlinedAt: !3719)
!3721 = !DILocation(line: 113, column: 14, scope: !3716)
!3722 = !DILocation(line: 113, column: 7, scope: !3708)
!3723 = !DILocation(line: 116, column: 19, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3725, file: !702, line: 116, column: 11)
!3725 = distinct !DILexicalBlock(scope: !3716, file: !702, line: 114, column: 5)
!3726 = !DILocation(line: 116, column: 11, scope: !3725)
!3727 = !DILocation(line: 120, column: 16, scope: !3724)
!3728 = !DILocation(line: 120, column: 9, scope: !3724)
!3729 = !DILocation(line: 125, column: 23, scope: !3715)
!3730 = !DILocation(line: 0, scope: !3715)
!3731 = !DILocation(line: 126, column: 18, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3715, file: !702, line: 126, column: 11)
!3733 = !DILocation(line: 126, column: 11, scope: !3715)
!3734 = !DILocation(line: 128, column: 39, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3732, file: !702, line: 127, column: 9)
!3736 = !DILocalVariable(name: "__dest", arg: 1, scope: !3737, file: !1308, line: 26, type: !3198)
!3737 = distinct !DISubprogram(name: "memcpy", scope: !1308, file: !1308, line: 26, type: !3196, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3738)
!3738 = !{!3736, !3739, !3740}
!3739 = !DILocalVariable(name: "__src", arg: 2, scope: !3737, file: !1308, line: 26, type: !923)
!3740 = !DILocalVariable(name: "__len", arg: 3, scope: !3737, file: !1308, line: 26, type: !97)
!3741 = !DILocation(line: 0, scope: !3737, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 128, column: 11, scope: !3735)
!3743 = !DILocation(line: 29, column: 10, scope: !3737, inlinedAt: !3742)
!3744 = !DILocation(line: 129, column: 11, scope: !3735)
!3745 = !DILocation(line: 133, column: 23, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3747, file: !702, line: 133, column: 15)
!3747 = distinct !DILexicalBlock(scope: !3732, file: !702, line: 132, column: 9)
!3748 = !DILocation(line: 133, column: 15, scope: !3747)
!3749 = !DILocation(line: 138, column: 44, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3746, file: !702, line: 134, column: 13)
!3751 = !DILocation(line: 0, scope: !3737, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 138, column: 15, scope: !3750)
!3753 = !DILocation(line: 29, column: 10, scope: !3737, inlinedAt: !3752)
!3754 = !DILocation(line: 139, column: 15, scope: !3750)
!3755 = !DILocation(line: 139, column: 32, scope: !3750)
!3756 = !DILocation(line: 140, column: 13, scope: !3750)
!3757 = !DILocation(line: 0, scope: !3716)
!3758 = !DILocation(line: 145, column: 1, scope: !3708)
