; ModuleID = 'src/true.bc'
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !348
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !318
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !338
@.str.1.31 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !340
@.str.2.33 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !342
@.str.3.32 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !344
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !346
@.str.4.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !350
@.str.5.27 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !352
@.str.6.28 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !357
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !362
@.str.47 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !368
@.str.1.48 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !370
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !372
@.str.51 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !403
@.str.1.52 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !406
@.str.2.53 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !408
@.str.3.54 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !410
@.str.4.55 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !412
@.str.5.56 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !414
@.str.6.57 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !416
@.str.7.58 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !418
@.str.8.59 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !420
@.str.9.60 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !422
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.51, ptr @.str.1.52, ptr @.str.2.53, ptr @.str.3.54, ptr @.str.4.55, ptr @.str.5.56, ptr @.str.6.57, ptr @.str.7.58, ptr @.str.8.59, ptr @.str.9.60, ptr null], align 16, !dbg !424
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !449
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !463
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !501
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !508
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !465
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !510
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !453
@.str.10.63 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !470
@.str.11.61 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !472
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !474
@.str.13.62 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !476
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !478
@.str.67 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !516
@.str.1.68 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !519
@.str.2.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !521
@.str.3.70 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !523
@.str.4.71 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !525
@.str.5.72 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !527
@.str.6.73 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !532
@.str.7.74 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !537
@.str.8.75 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !539
@.str.9.76 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !544
@.str.10.77 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !549
@.str.11.78 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !554
@.str.12.79 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !559
@.str.13.80 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !561
@.str.14.81 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !563
@.str.15.82 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !568
@.str.16.83 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !573
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.88 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !578
@.str.18.89 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !580
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !582
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !584
@.str.21.90 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !586
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !588
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !593
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !598
@exit_failure = dso_local global i32 1, align 4, !dbg !606
@.str.103 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !612
@.str.1.101 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !615
@.str.2.102 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !617
@.str.114 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !619
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !622
@.str.1.119 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !637

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !711 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !715, metadata !DIExpression()), !dbg !716
  %2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !717
  %3 = load ptr, ptr @program_name, align 8, !dbg !717, !tbaa !718
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %2, ptr noundef %3, ptr noundef %3) #36, !dbg !717
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !722
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %5) #36, !dbg !722
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !723
  tail call fastcc void @oputs_(ptr noundef %7), !dbg !723
  %8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !724
  tail call fastcc void @oputs_(ptr noundef %8), !dbg !724
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #36, !dbg !725
  %10 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef nonnull @.str.3) #36, !dbg !725
  tail call fastcc void @emit_ancillary_info(), !dbg !726
  tail call void @exit(i32 noundef %0) #37, !dbg !727
  unreachable, !dbg !727
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !728 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !733 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !68 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !211, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %0, metadata !212, metadata !DIExpression()), !dbg !738
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !739, !tbaa !740
  %3 = icmp eq i32 %2, -1, !dbg !742
  br i1 %3, label %4, label %16, !dbg !743

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.14) #36, !dbg !744
  call void @llvm.dbg.value(metadata ptr %5, metadata !213, metadata !DIExpression()), !dbg !745
  %6 = icmp eq ptr %5, null, !dbg !746
  br i1 %6, label %14, label %7, !dbg !747

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !748, !tbaa !749
  %9 = icmp eq i8 %8, 0, !dbg !748
  br i1 %9, label %14, label %10, !dbg !750

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !751, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !757, metadata !DIExpression()), !dbg !758
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.15) #38, !dbg !760
  %12 = icmp eq i32 %11, 0, !dbg !761
  %13 = zext i1 %12 to i32, !dbg !750
  br label %14, !dbg !750

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !762, !tbaa !740
  br label %16, !dbg !763

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !764
  %18 = icmp eq i32 %17, 0, !dbg !764
  br i1 %18, label %22, label %19, !dbg !766

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !767, !tbaa !718
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !767
  br label %128, !dbg !769

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !216, metadata !DIExpression()), !dbg !738
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.16) #38, !dbg !770
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !771
  call void @llvm.dbg.value(metadata ptr %24, metadata !218, metadata !DIExpression()), !dbg !738
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !772
  call void @llvm.dbg.value(metadata ptr %25, metadata !219, metadata !DIExpression()), !dbg !738
  %26 = icmp eq ptr %25, null, !dbg !773
  br i1 %26, label %58, label %27, !dbg !774

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !775
  br i1 %28, label %58, label %29, !dbg !776

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !220, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata i64 0, metadata !224, metadata !DIExpression()), !dbg !777
  %30 = icmp ult ptr %24, %25, !dbg !778
  br i1 %30, label %31, label %52, !dbg !779

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !738
  %33 = load ptr, ptr %32, align 8, !tbaa !718
  br label %34, !dbg !779

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !220, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata i64 %36, metadata !224, metadata !DIExpression()), !dbg !777
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !780
  call void @llvm.dbg.value(metadata ptr %37, metadata !220, metadata !DIExpression()), !dbg !777
  %38 = load i8, ptr %35, align 1, !dbg !780, !tbaa !749
  %39 = sext i8 %38 to i64, !dbg !780
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !780
  %41 = load i16, ptr %40, align 2, !dbg !780, !tbaa !781
  %42 = freeze i16 %41, !dbg !783
  %43 = lshr i16 %42, 13, !dbg !783
  %44 = and i16 %43, 1, !dbg !783
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !784
  call void @llvm.dbg.value(metadata i64 %46, metadata !224, metadata !DIExpression()), !dbg !777
  %47 = icmp ult ptr %37, %25, !dbg !778
  %48 = icmp ult i64 %46, 2, !dbg !785
  %49 = select i1 %47, i1 %48, i1 false, !dbg !785
  br i1 %49, label %34, label %50, !dbg !779, !llvm.loop !786

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !788
  br i1 %51, label %52, label %54, !dbg !790

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !790

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !790
  call void @llvm.dbg.value(metadata i8 %57, metadata !216, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %56, metadata !219, metadata !DIExpression()), !dbg !738
  br label %58, !dbg !791

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !738
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !738
  call void @llvm.dbg.value(metadata i8 %60, metadata !216, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %59, metadata !219, metadata !DIExpression()), !dbg !738
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.17) #38, !dbg !792
  call void @llvm.dbg.value(metadata i64 %61, metadata !225, metadata !DIExpression()), !dbg !738
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !793
  call void @llvm.dbg.value(metadata ptr %62, metadata !226, metadata !DIExpression()), !dbg !738
  br label %63, !dbg !794

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !738
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !738
  call void @llvm.dbg.value(metadata i8 %65, metadata !216, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %64, metadata !226, metadata !DIExpression()), !dbg !738
  %66 = load i8, ptr %64, align 1, !dbg !795, !tbaa !749
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !796

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !797
  %69 = load i8, ptr %68, align 1, !dbg !800, !tbaa !749
  %70 = icmp eq i8 %69, 45, !dbg !801
  %71 = select i1 %70, i8 0, i8 %65, !dbg !802
  br label %72, !dbg !802

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !738
  call void @llvm.dbg.value(metadata i8 %73, metadata !216, metadata !DIExpression()), !dbg !738
  %74 = tail call ptr @__ctype_b_loc() #39, !dbg !803
  %75 = load ptr, ptr %74, align 8, !dbg !803, !tbaa !718
  %76 = sext i8 %66 to i64, !dbg !803
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !803
  %78 = load i16, ptr %77, align 2, !dbg !803, !tbaa !781
  %79 = and i16 %78, 8192, !dbg !803
  %80 = icmp eq i16 %79, 0, !dbg !803
  br i1 %80, label %96, label %81, !dbg !805

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !806
  br i1 %82, label %98, label %83, !dbg !809

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !810
  %85 = load i8, ptr %84, align 1, !dbg !810, !tbaa !749
  %86 = sext i8 %85 to i64, !dbg !810
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !810
  %88 = load i16, ptr %87, align 2, !dbg !810, !tbaa !781
  %89 = and i16 %88, 8192, !dbg !810
  %90 = icmp eq i16 %89, 0, !dbg !810
  br i1 %90, label %91, label %98, !dbg !811

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !812
  %93 = icmp ne i8 %92, 0, !dbg !812
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !814
  br i1 %95, label %96, label %98, !dbg !814

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !815
  call void @llvm.dbg.value(metadata ptr %97, metadata !226, metadata !DIExpression()), !dbg !738
  br label %63, !dbg !794, !llvm.loop !816

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !818
  %100 = load ptr, ptr @stdout, align 8, !dbg !818, !tbaa !718
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !818
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !283, metadata !DIExpression()), !dbg !738
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.10, i64 noundef 6) #38, !dbg !839
  %103 = icmp eq i32 %102, 0, !dbg !839
  br i1 %103, label %107, label %104, !dbg !841

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.11, i64 noundef 9) #38, !dbg !842
  %106 = icmp eq i32 %105, 0, !dbg !842
  br i1 %106, label %107, label %110, !dbg !843

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !844
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #36, !dbg !844
  br label %113, !dbg !846

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !847
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #36, !dbg !847
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !849, !tbaa !718
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.35, ptr noundef %114), !dbg !849
  %116 = load ptr, ptr @stdout, align 8, !dbg !850, !tbaa !718
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %116), !dbg !850
  %118 = ptrtoint ptr %64 to i64, !dbg !851
  %119 = sub i64 %118, %99, !dbg !851
  %120 = load ptr, ptr @stdout, align 8, !dbg !851, !tbaa !718
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !851
  %122 = load ptr, ptr @stdout, align 8, !dbg !852, !tbaa !718
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %122), !dbg !852
  %124 = load ptr, ptr @stdout, align 8, !dbg !853, !tbaa !718
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %124), !dbg !853
  %126 = load ptr, ptr @stdout, align 8, !dbg !854, !tbaa !718
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !854
  br label %128, !dbg !855

128:                                              ; preds = %113, %19
  ret void, !dbg !855
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #4 !dbg !856 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !860, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !868, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata ptr poison, metadata !868, metadata !DIExpression()), !dbg !873
  tail call void @emit_bug_reporting_address() #36, !dbg !874
  %1 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !875
  call void @llvm.dbg.value(metadata ptr %1, metadata !871, metadata !DIExpression()), !dbg !873
  %2 = icmp eq ptr %1, null, !dbg !876
  br i1 %2, label %10, label %3, !dbg !878

3:                                                ; preds = %0
  %4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.42, i64 noundef 3) #38, !dbg !879
  %5 = icmp eq i32 %4, 0, !dbg !879
  br i1 %5, label %10, label %6, !dbg !880

6:                                                ; preds = %3
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #36, !dbg !881
  %8 = load ptr, ptr @stdout, align 8, !dbg !881, !tbaa !718
  %9 = tail call i32 @fputs_unlocked(ptr noundef %7, ptr noundef %8), !dbg !881
  br label %10, !dbg !883

10:                                               ; preds = %6, %3, %0
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !868, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !872, metadata !DIExpression()), !dbg !873
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #36, !dbg !884
  %12 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %11, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3) #36, !dbg !884
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #36, !dbg !885
  %14 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.46) #36, !dbg !885
  ret void, !dbg !886
}

; Function Attrs: noreturn nounwind
declare !dbg !887 void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !889 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !893 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !897 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !902 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !905 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !908 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !911 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !914 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !920 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !921 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !dbg !927 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !932, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata ptr %1, metadata !933, metadata !DIExpression()), !dbg !934
  %3 = icmp eq i32 %0, 2, !dbg !935
  br i1 %3, label %4, label %22, !dbg !937

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !dbg !938, !tbaa !718
  tail call void @set_program_name(ptr noundef %5) #36, !dbg !940
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.7) #36, !dbg !941
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #36, !dbg !942
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.8) #36, !dbg !943
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !944
  %10 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !945
  %11 = load ptr, ptr %10, align 8, !dbg !945, !tbaa !718
  call void @llvm.dbg.value(metadata ptr %11, metadata !751, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !757, metadata !DIExpression()), !dbg !947
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(7) @.str.10) #38, !dbg !949
  %13 = icmp eq i32 %12, 0, !dbg !950
  br i1 %13, label %14, label %15, !dbg !951

14:                                               ; preds = %4
  tail call void @usage(i32 noundef 0) #40, !dbg !952
  unreachable, !dbg !952

15:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr %11, metadata !751, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata ptr @.str.11, metadata !757, metadata !DIExpression()), !dbg !953
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(10) @.str.11) #38, !dbg !956
  %17 = icmp eq i32 %16, 0, !dbg !957
  br i1 %17, label %18, label %22, !dbg !958

18:                                               ; preds = %15
  %19 = load ptr, ptr @stdout, align 8, !dbg !959, !tbaa !718
  %20 = load ptr, ptr @Version, align 8, !dbg !960, !tbaa !718
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #36, !dbg !961
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %20, ptr noundef %21, ptr noundef null) #36, !dbg !962
  br label %22, !dbg !962

22:                                               ; preds = %15, %18, %2
  ret i32 0, !dbg !963
}

; Function Attrs: nounwind
declare !dbg !964 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !967 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !968 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !971 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !974, metadata !DIExpression()), !dbg !975
  store ptr %0, ptr @file_name, align 8, !dbg !976, !tbaa !718
  ret void, !dbg !977
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !978 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !982, metadata !DIExpression()), !dbg !983
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !984, !tbaa !985
  ret void, !dbg !987
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !988 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !993, !tbaa !718
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !994
  %3 = icmp eq i32 %2, 0, !dbg !995
  br i1 %3, label %22, label %4, !dbg !996

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !997, !tbaa !985, !range !998, !noundef !732
  %6 = icmp eq i8 %5, 0, !dbg !997
  br i1 %6, label %11, label %7, !dbg !999

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1000
  %9 = load i32, ptr %8, align 4, !dbg !1000, !tbaa !740
  %10 = icmp eq i32 %9, 32, !dbg !1001
  br i1 %10, label %22, label %11, !dbg !1002

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1.22, i32 noundef 5) #36, !dbg !1003
  call void @llvm.dbg.value(metadata ptr %12, metadata !990, metadata !DIExpression()), !dbg !1004
  %13 = load ptr, ptr @file_name, align 8, !dbg !1005, !tbaa !718
  %14 = icmp eq ptr %13, null, !dbg !1005
  %15 = tail call ptr @__errno_location() #39, !dbg !1007
  %16 = load i32, ptr %15, align 4, !dbg !1007, !tbaa !740
  br i1 %14, label %19, label %17, !dbg !1008

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1009
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.23, ptr noundef %18, ptr noundef %12) #36, !dbg !1009
  br label %20, !dbg !1009

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.24, ptr noundef %12) #36, !dbg !1010
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1011, !tbaa !740
  tail call void @_exit(i32 noundef %21) #37, !dbg !1012
  unreachable, !dbg !1012

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1013, !tbaa !718
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1015
  %25 = icmp eq i32 %24, 0, !dbg !1016
  br i1 %25, label %28, label %26, !dbg !1017

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1018, !tbaa !740
  tail call void @_exit(i32 noundef %27) #37, !dbg !1019
  unreachable, !dbg !1019

28:                                               ; preds = %22
  ret void, !dbg !1020
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1021 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1026 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !dbg !1028 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1032, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i32 %1, metadata !1033, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata ptr %2, metadata !1034, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata ptr %3, metadata !1035, metadata !DIExpression()), !dbg !1036
  tail call fastcc void @flush_stdout(), !dbg !1037
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1038, !tbaa !718
  %6 = icmp eq ptr %5, null, !dbg !1038
  br i1 %6, label %8, label %7, !dbg !1040

7:                                                ; preds = %4
  tail call void %5() #36, !dbg !1041
  br label %12, !dbg !1041

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1042, !tbaa !718
  %10 = tail call ptr @getprogname() #38, !dbg !1042
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef %10) #36, !dbg !1042
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1044
  ret void, !dbg !1045
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1046 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1048, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i32 1, metadata !1050, metadata !DIExpression()), !dbg !1055
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1058
  %2 = icmp slt i32 %1, 0, !dbg !1059
  br i1 %2, label %6, label %3, !dbg !1060

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1061, !tbaa !718
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1061
  br label %6, !dbg !1061

6:                                                ; preds = %3, %0
  ret void, !dbg !1062
}

declare !dbg !1063 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1101 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1103, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %1, metadata !1104, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr %2, metadata !1105, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr %3, metadata !1106, metadata !DIExpression()), !dbg !1107
  %6 = load ptr, ptr @stderr, align 8, !dbg !1108, !tbaa !718
  call void @llvm.dbg.value(metadata ptr %6, metadata !1109, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata ptr %2, metadata !1114, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata ptr %3, metadata !1115, metadata !DIExpression()), !dbg !1116
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #36, !dbg !1118
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1119, !tbaa !740
  %9 = add i32 %8, 1, !dbg !1119
  store i32 %9, ptr @error_message_count, align 4, !dbg !1119, !tbaa !740
  %10 = icmp eq i32 %1, 0, !dbg !1120
  br i1 %10, label %20, label %11, !dbg !1122

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1123, metadata !DIExpression()), !dbg !1131
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1133
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1127, metadata !DIExpression()), !dbg !1134
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1135
  call void @llvm.dbg.value(metadata ptr %12, metadata !1126, metadata !DIExpression()), !dbg !1131
  %13 = icmp eq ptr %12, null, !dbg !1136
  br i1 %13, label %14, label %16, !dbg !1138

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.26, ptr noundef nonnull @.str.5.27, i32 noundef 5) #36, !dbg !1139
  call void @llvm.dbg.value(metadata ptr %15, metadata !1126, metadata !DIExpression()), !dbg !1131
  br label %16, !dbg !1140

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1131
  call void @llvm.dbg.value(metadata ptr %17, metadata !1126, metadata !DIExpression()), !dbg !1131
  %18 = load ptr, ptr @stderr, align 8, !dbg !1141, !tbaa !718
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.28, ptr noundef %17) #36, !dbg !1141
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1142
  br label %20, !dbg !1143

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1144, !tbaa !718
  call void @llvm.dbg.value(metadata i32 10, metadata !1145, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata ptr %21, metadata !1151, metadata !DIExpression()), !dbg !1152
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1154
  %23 = load ptr, ptr %22, align 8, !dbg !1154, !tbaa !1155
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1154
  %25 = load ptr, ptr %24, align 8, !dbg !1154, !tbaa !1158
  %26 = icmp ult ptr %23, %25, !dbg !1154
  br i1 %26, label %29, label %27, !dbg !1154, !prof !1159

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #36, !dbg !1154
  br label %31, !dbg !1154

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1154
  store ptr %30, ptr %22, align 8, !dbg !1154, !tbaa !1155
  store i8 10, ptr %23, align 1, !dbg !1154, !tbaa !749
  br label %31, !dbg !1154

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1160, !tbaa !718
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #36, !dbg !1160
  %34 = icmp eq i32 %0, 0, !dbg !1161
  br i1 %34, label %36, label %35, !dbg !1163

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #37, !dbg !1164
  unreachable, !dbg !1164

36:                                               ; preds = %31
  ret void, !dbg !1165
}

declare !dbg !1166 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1169 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1172 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1175 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1178 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1182 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1186, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i32 %1, metadata !1187, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr %2, metadata !1188, metadata !DIExpression()), !dbg !1195
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #36, !dbg !1196
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1189, metadata !DIExpression()), !dbg !1197
  call void @llvm.va_start(ptr nonnull %4), !dbg !1198
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #41, !dbg !1199
  call void @llvm.va_end(ptr nonnull %4), !dbg !1200
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #36, !dbg !1201
  ret void, !dbg !1201
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !320 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !332, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 %1, metadata !333, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata ptr %2, metadata !334, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 %3, metadata !335, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata ptr %4, metadata !336, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata ptr %5, metadata !337, metadata !DIExpression()), !dbg !1202
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1203, !tbaa !740
  %8 = icmp eq i32 %7, 0, !dbg !1203
  br i1 %8, label %23, label %9, !dbg !1205

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1206, !tbaa !740
  %11 = icmp eq i32 %10, %3, !dbg !1209
  br i1 %11, label %12, label %22, !dbg !1210

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1211, !tbaa !718
  %14 = icmp eq ptr %13, %2, !dbg !1212
  br i1 %14, label %36, label %15, !dbg !1213

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1214
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1215
  br i1 %18, label %19, label %22, !dbg !1215

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1216
  %21 = icmp eq i32 %20, 0, !dbg !1217
  br i1 %21, label %36, label %22, !dbg !1218

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1219, !tbaa !718
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1220, !tbaa !740
  br label %23, !dbg !1221

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1222
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1223, !tbaa !718
  %25 = icmp eq ptr %24, null, !dbg !1223
  br i1 %25, label %27, label %26, !dbg !1225

26:                                               ; preds = %23
  tail call void %24() #36, !dbg !1226
  br label %31, !dbg !1226

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1227, !tbaa !718
  %29 = tail call ptr @getprogname() #38, !dbg !1227
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.31, ptr noundef %29) #36, !dbg !1227
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1229, !tbaa !718
  %33 = icmp eq ptr %2, null, !dbg !1229
  %34 = select i1 %33, ptr @.str.3.32, ptr @.str.2.33, !dbg !1229
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #36, !dbg !1229
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1230
  br label %36, !dbg !1231

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1231
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1232 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1236, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32 %1, metadata !1237, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata ptr %2, metadata !1238, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32 %3, metadata !1239, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata ptr %4, metadata !1240, metadata !DIExpression()), !dbg !1242
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #36, !dbg !1243
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1241, metadata !DIExpression()), !dbg !1244
  call void @llvm.va_start(ptr nonnull %6), !dbg !1245
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #41, !dbg !1246
  call void @llvm.va_end(ptr nonnull %6), !dbg !1247
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #36, !dbg !1248
  ret void, !dbg !1248
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1249 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1252, !tbaa !718
  ret ptr %1, !dbg !1253
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1254 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1256, metadata !DIExpression()), !dbg !1259
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1260
  call void @llvm.dbg.value(metadata ptr %2, metadata !1257, metadata !DIExpression()), !dbg !1259
  %3 = icmp eq ptr %2, null, !dbg !1261
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1261
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1261
  call void @llvm.dbg.value(metadata ptr %5, metadata !1258, metadata !DIExpression()), !dbg !1259
  %6 = ptrtoint ptr %5 to i64, !dbg !1262
  %7 = ptrtoint ptr %0 to i64, !dbg !1262
  %8 = sub i64 %6, %7, !dbg !1262
  %9 = icmp sgt i64 %8, 6, !dbg !1264
  br i1 %9, label %10, label %19, !dbg !1265

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1266
  call void @llvm.dbg.value(metadata ptr %11, metadata !1267, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata ptr @.str.47, metadata !1272, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i64 7, metadata !1273, metadata !DIExpression()), !dbg !1274
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.47, i64 7), !dbg !1276
  %13 = icmp eq i32 %12, 0, !dbg !1277
  br i1 %13, label %14, label %19, !dbg !1278

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1256, metadata !DIExpression()), !dbg !1259
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.48, i64 noundef 3) #38, !dbg !1279
  %16 = icmp eq i32 %15, 0, !dbg !1282
  %17 = select i1 %16, i64 3, i64 0, !dbg !1283
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1283
  br label %19, !dbg !1283

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1259
  call void @llvm.dbg.value(metadata ptr %21, metadata !1258, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata ptr %20, metadata !1256, metadata !DIExpression()), !dbg !1259
  store ptr %20, ptr @program_name, align 8, !dbg !1284, !tbaa !718
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1285, !tbaa !718
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1286, !tbaa !718
  ret void, !dbg !1287
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1288 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !374 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !381, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata ptr %1, metadata !382, metadata !DIExpression()), !dbg !1289
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1290
  call void @llvm.dbg.value(metadata ptr %5, metadata !383, metadata !DIExpression()), !dbg !1289
  %6 = icmp eq ptr %5, %0, !dbg !1291
  br i1 %6, label %7, label %14, !dbg !1293

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1294
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1295
  call void @llvm.dbg.declare(metadata ptr %4, metadata !389, metadata !DIExpression()), !dbg !1296
  call void @llvm.dbg.value(metadata ptr %4, metadata !1297, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata ptr %4, metadata !1306, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i32 0, metadata !1312, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i64 8, metadata !1313, metadata !DIExpression()), !dbg !1314
  store i64 0, ptr %4, align 8, !dbg !1316
  call void @llvm.dbg.value(metadata ptr %3, metadata !384, metadata !DIExpression(DW_OP_deref)), !dbg !1289
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1317
  %9 = icmp eq i64 %8, 2, !dbg !1319
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !384, metadata !DIExpression()), !dbg !1289
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1320
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1289
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1321
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1321
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1289
  ret ptr %15, !dbg !1321
}

; Function Attrs: nounwind
declare !dbg !1322 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1328 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1333, metadata !DIExpression()), !dbg !1336
  %2 = tail call ptr @__errno_location() #39, !dbg !1337
  %3 = load i32, ptr %2, align 4, !dbg !1337, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %3, metadata !1334, metadata !DIExpression()), !dbg !1336
  %4 = icmp eq ptr %0, null, !dbg !1338
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1338
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1339
  call void @llvm.dbg.value(metadata ptr %6, metadata !1335, metadata !DIExpression()), !dbg !1336
  store i32 %3, ptr %2, align 4, !dbg !1340, !tbaa !740
  ret ptr %6, !dbg !1341
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1342 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1348, metadata !DIExpression()), !dbg !1349
  %2 = icmp eq ptr %0, null, !dbg !1350
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1350
  %4 = load i32, ptr %3, align 8, !dbg !1351, !tbaa !1352
  ret i32 %4, !dbg !1354
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1355 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1359, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i32 %1, metadata !1360, metadata !DIExpression()), !dbg !1361
  %3 = icmp eq ptr %0, null, !dbg !1362
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1362
  store i32 %1, ptr %4, align 8, !dbg !1363, !tbaa !1352
  ret void, !dbg !1364
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1365 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1369, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata i8 %1, metadata !1370, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata i32 %2, metadata !1371, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata i8 %1, metadata !1372, metadata !DIExpression()), !dbg !1377
  %4 = icmp eq ptr %0, null, !dbg !1378
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1378
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1379
  %7 = lshr i8 %1, 5, !dbg !1380
  %8 = zext i8 %7 to i64, !dbg !1380
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1381
  call void @llvm.dbg.value(metadata ptr %9, metadata !1373, metadata !DIExpression()), !dbg !1377
  %10 = and i8 %1, 31, !dbg !1382
  %11 = zext i8 %10 to i32, !dbg !1382
  call void @llvm.dbg.value(metadata i32 %11, metadata !1375, metadata !DIExpression()), !dbg !1377
  %12 = load i32, ptr %9, align 4, !dbg !1383, !tbaa !740
  %13 = lshr i32 %12, %11, !dbg !1384
  %14 = and i32 %13, 1, !dbg !1385
  call void @llvm.dbg.value(metadata i32 %14, metadata !1376, metadata !DIExpression()), !dbg !1377
  %15 = xor i32 %13, %2, !dbg !1386
  %16 = and i32 %15, 1, !dbg !1386
  %17 = shl nuw i32 %16, %11, !dbg !1387
  %18 = xor i32 %17, %12, !dbg !1388
  store i32 %18, ptr %9, align 4, !dbg !1388, !tbaa !740
  ret i32 %14, !dbg !1389
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1390 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1394, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %1, metadata !1395, metadata !DIExpression()), !dbg !1397
  %3 = icmp eq ptr %0, null, !dbg !1398
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1400
  call void @llvm.dbg.value(metadata ptr %4, metadata !1394, metadata !DIExpression()), !dbg !1397
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1401
  %6 = load i32, ptr %5, align 4, !dbg !1401, !tbaa !1402
  call void @llvm.dbg.value(metadata i32 %6, metadata !1396, metadata !DIExpression()), !dbg !1397
  store i32 %1, ptr %5, align 4, !dbg !1403, !tbaa !1402
  ret i32 %6, !dbg !1404
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1405 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1409, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata ptr %1, metadata !1410, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata ptr %2, metadata !1411, metadata !DIExpression()), !dbg !1412
  %4 = icmp eq ptr %0, null, !dbg !1413
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1415
  call void @llvm.dbg.value(metadata ptr %5, metadata !1409, metadata !DIExpression()), !dbg !1412
  store i32 10, ptr %5, align 8, !dbg !1416, !tbaa !1352
  %6 = icmp ne ptr %1, null, !dbg !1417
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1419
  br i1 %8, label %10, label %9, !dbg !1419

9:                                                ; preds = %3
  tail call void @abort() #37, !dbg !1420
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
  call void @llvm.dbg.value(metadata ptr %0, metadata !1433, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %1, metadata !1434, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata ptr %2, metadata !1435, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %3, metadata !1436, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata ptr %4, metadata !1437, metadata !DIExpression()), !dbg !1441
  %6 = icmp eq ptr %4, null, !dbg !1442
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1442
  call void @llvm.dbg.value(metadata ptr %7, metadata !1438, metadata !DIExpression()), !dbg !1441
  %8 = tail call ptr @__errno_location() #39, !dbg !1443
  %9 = load i32, ptr %8, align 4, !dbg !1443, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %9, metadata !1439, metadata !DIExpression()), !dbg !1441
  %10 = load i32, ptr %7, align 8, !dbg !1444, !tbaa !1352
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1445
  %12 = load i32, ptr %11, align 4, !dbg !1445, !tbaa !1402
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1446
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1447
  %15 = load ptr, ptr %14, align 8, !dbg !1447, !tbaa !1423
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1448
  %17 = load ptr, ptr %16, align 8, !dbg !1448, !tbaa !1426
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %18, metadata !1440, metadata !DIExpression()), !dbg !1441
  store i32 %9, ptr %8, align 4, !dbg !1450, !tbaa !740
  ret i64 %18, !dbg !1451
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1452 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1458, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %1, metadata !1459, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %2, metadata !1460, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %3, metadata !1461, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 %4, metadata !1462, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 %5, metadata !1463, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %6, metadata !1464, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %7, metadata !1465, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %8, metadata !1466, metadata !DIExpression()), !dbg !1520
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1521
  %17 = icmp eq i64 %16, 1, !dbg !1522
  call void @llvm.dbg.value(metadata i1 %17, metadata !1467, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1520
  call void @llvm.dbg.value(metadata i64 0, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 0, metadata !1469, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr null, metadata !1470, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 0, metadata !1471, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 0, metadata !1472, metadata !DIExpression()), !dbg !1520
  %18 = trunc i32 %5 to i8, !dbg !1523
  %19 = lshr i8 %18, 1, !dbg !1523
  %20 = and i8 %19, 1, !dbg !1523
  call void @llvm.dbg.value(metadata i8 %20, metadata !1473, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 0, metadata !1474, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 1, metadata !1475, metadata !DIExpression()), !dbg !1520
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1524

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !1525
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !1526
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !1527
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !1528
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !1520
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !1529
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !1530
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1459, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %39, metadata !1475, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %38, metadata !1474, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %37, metadata !1473, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %36, metadata !1472, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %35, metadata !1471, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %34, metadata !1470, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %33, metadata !1469, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 0, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %32, metadata !1461, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %31, metadata !1466, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %30, metadata !1465, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 %29, metadata !1462, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.label(metadata !1513), !dbg !1531
  call void @llvm.dbg.value(metadata i8 0, metadata !1476, metadata !DIExpression()), !dbg !1520
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
  ], !dbg !1532

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1473, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 5, metadata !1462, metadata !DIExpression()), !dbg !1520
  br label %115, !dbg !1533

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1473, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 5, metadata !1462, metadata !DIExpression()), !dbg !1520
  %43 = and i8 %37, 1, !dbg !1534
  %44 = icmp eq i8 %43, 0, !dbg !1534
  br i1 %44, label %45, label %115, !dbg !1533

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1536
  br i1 %46, label %115, label %47, !dbg !1539

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1536, !tbaa !749
  br label %115, !dbg !1536

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.61, metadata !484, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i32 %29, metadata !485, metadata !DIExpression()), !dbg !1540
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.62, ptr noundef nonnull @.str.11.61, i32 noundef 5) #36, !dbg !1544
  call void @llvm.dbg.value(metadata ptr %49, metadata !486, metadata !DIExpression()), !dbg !1540
  %50 = icmp eq ptr %49, @.str.11.61, !dbg !1545
  br i1 %50, label %51, label %60, !dbg !1547

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1548
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1549
  call void @llvm.dbg.declare(metadata ptr %13, metadata !488, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata ptr %13, metadata !1551, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata ptr %13, metadata !1559, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 0, metadata !1562, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 8, metadata !1563, metadata !DIExpression()), !dbg !1564
  store i64 0, ptr %13, align 8, !dbg !1566
  call void @llvm.dbg.value(metadata ptr %12, metadata !487, metadata !DIExpression(DW_OP_deref)), !dbg !1540
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1567
  %53 = icmp eq i64 %52, 3, !dbg !1569
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !487, metadata !DIExpression()), !dbg !1540
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1570
  %57 = icmp eq i32 %29, 9, !dbg !1570
  %58 = select i1 %57, ptr @.str.10.63, ptr @.str.12.64, !dbg !1570
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1570
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1571
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1540
  call void @llvm.dbg.value(metadata ptr %61, metadata !1465, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr @.str.12.64, metadata !484, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i32 %29, metadata !485, metadata !DIExpression()), !dbg !1572
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.62, ptr noundef nonnull @.str.12.64, i32 noundef 5) #36, !dbg !1574
  call void @llvm.dbg.value(metadata ptr %62, metadata !486, metadata !DIExpression()), !dbg !1572
  %63 = icmp eq ptr %62, @.str.12.64, !dbg !1575
  br i1 %63, label %64, label %73, !dbg !1576

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1577
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1578
  call void @llvm.dbg.declare(metadata ptr %11, metadata !488, metadata !DIExpression()), !dbg !1579
  call void @llvm.dbg.value(metadata ptr %11, metadata !1551, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata ptr %11, metadata !1559, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i32 0, metadata !1562, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i64 8, metadata !1563, metadata !DIExpression()), !dbg !1582
  store i64 0, ptr %11, align 8, !dbg !1584
  call void @llvm.dbg.value(metadata ptr %10, metadata !487, metadata !DIExpression(DW_OP_deref)), !dbg !1572
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1585
  %66 = icmp eq i64 %65, 3, !dbg !1586
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !487, metadata !DIExpression()), !dbg !1572
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1587
  %70 = icmp eq i32 %29, 9, !dbg !1587
  %71 = select i1 %70, ptr @.str.10.63, ptr @.str.12.64, !dbg !1587
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1587
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1588
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1588
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1466, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %74, metadata !1465, metadata !DIExpression()), !dbg !1520
  %76 = and i8 %37, 1, !dbg !1589
  %77 = icmp eq i8 %76, 0, !dbg !1589
  br i1 %77, label %78, label %93, !dbg !1590

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1477, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i64 0, metadata !1468, metadata !DIExpression()), !dbg !1520
  %79 = load i8, ptr %74, align 1, !dbg !1592, !tbaa !749
  %80 = icmp eq i8 %79, 0, !dbg !1594
  br i1 %80, label %93, label %81, !dbg !1594

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1477, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i64 %84, metadata !1468, metadata !DIExpression()), !dbg !1520
  %85 = icmp ult i64 %84, %40, !dbg !1595
  br i1 %85, label %86, label %88, !dbg !1598

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1595
  store i8 %82, ptr %87, align 1, !dbg !1595, !tbaa !749
  br label %88, !dbg !1595

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1598
  call void @llvm.dbg.value(metadata i64 %89, metadata !1468, metadata !DIExpression()), !dbg !1520
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1599
  call void @llvm.dbg.value(metadata ptr %90, metadata !1477, metadata !DIExpression()), !dbg !1591
  %91 = load i8, ptr %90, align 1, !dbg !1592, !tbaa !749
  %92 = icmp eq i8 %91, 0, !dbg !1594
  br i1 %92, label %93, label %81, !dbg !1594, !llvm.loop !1600

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1602
  call void @llvm.dbg.value(metadata i64 %94, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 1, metadata !1472, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %75, metadata !1470, metadata !DIExpression()), !dbg !1520
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %95, metadata !1471, metadata !DIExpression()), !dbg !1520
  br label %115, !dbg !1604

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1472, metadata !DIExpression()), !dbg !1520
  br label %97, !dbg !1605

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !1520
  call void @llvm.dbg.value(metadata i8 %98, metadata !1472, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 1, metadata !1473, metadata !DIExpression()), !dbg !1520
  br label %99, !dbg !1606

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !1528
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !1520
  call void @llvm.dbg.value(metadata i8 %101, metadata !1473, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %100, metadata !1472, metadata !DIExpression()), !dbg !1520
  %102 = and i8 %101, 1, !dbg !1607
  %103 = icmp eq i8 %102, 0, !dbg !1607
  %104 = select i1 %103, i8 1, i8 %100, !dbg !1609
  br label %105, !dbg !1609

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !1520
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !1523
  call void @llvm.dbg.value(metadata i8 %107, metadata !1473, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %106, metadata !1472, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 2, metadata !1462, metadata !DIExpression()), !dbg !1520
  %108 = and i8 %107, 1, !dbg !1610
  %109 = icmp eq i8 %108, 0, !dbg !1610
  br i1 %109, label %110, label %115, !dbg !1612

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !1613
  br i1 %111, label %115, label %112, !dbg !1616

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !1613, !tbaa !749
  br label %115, !dbg !1613

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1473, metadata !DIExpression()), !dbg !1520
  br label %115, !dbg !1617

114:                                              ; preds = %28
  call void @abort() #37, !dbg !1618
  unreachable, !dbg !1618

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !1602
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.63, %45 ], [ @.str.10.63, %47 ], [ @.str.10.63, %42 ], [ %34, %28 ], [ @.str.12.64, %110 ], [ @.str.12.64, %112 ], [ @.str.12.64, %105 ], [ @.str.10.63, %41 ], !dbg !1520
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !1520
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !1520
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !1520
  call void @llvm.dbg.value(metadata i8 %123, metadata !1473, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %122, metadata !1472, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %121, metadata !1471, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %120, metadata !1470, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %119, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %118, metadata !1466, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %117, metadata !1465, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 %116, metadata !1462, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 0, metadata !1482, metadata !DIExpression()), !dbg !1619
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
  br label %138, !dbg !1620

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !1602
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !1525
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !1529
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !1530
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !1621
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !1622
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1459, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %145, metadata !1482, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %144, metadata !1476, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %143, metadata !1475, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %142, metadata !1474, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %141, metadata !1469, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %140, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %139, metadata !1461, metadata !DIExpression()), !dbg !1520
  %147 = icmp eq i64 %139, -1, !dbg !1623
  br i1 %147, label %148, label %152, !dbg !1624

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1625
  %150 = load i8, ptr %149, align 1, !dbg !1625, !tbaa !749
  %151 = icmp eq i8 %150, 0, !dbg !1626
  br i1 %151, label %627, label %154, !dbg !1627

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1628
  br i1 %153, label %627, label %154, !dbg !1627

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1484, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 0, metadata !1487, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 0, metadata !1488, metadata !DIExpression()), !dbg !1629
  br i1 %129, label %155, label %170, !dbg !1630

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !1632
  %157 = select i1 %147, i1 %130, i1 false, !dbg !1633
  br i1 %157, label %158, label %160, !dbg !1633

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %159, metadata !1461, metadata !DIExpression()), !dbg !1520
  br label %160, !dbg !1635

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1635
  call void @llvm.dbg.value(metadata i64 %161, metadata !1461, metadata !DIExpression()), !dbg !1520
  %162 = icmp ugt i64 %156, %161, !dbg !1636
  br i1 %162, label %170, label %163, !dbg !1637

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1638
  call void @llvm.dbg.value(metadata ptr %164, metadata !1639, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata ptr %120, metadata !1642, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %121, metadata !1643, metadata !DIExpression()), !dbg !1644
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !1646
  %166 = icmp ne i32 %165, 0, !dbg !1647
  %167 = select i1 %166, i1 true, i1 %132, !dbg !1648
  %168 = xor i1 %166, true, !dbg !1648
  %169 = zext i1 %168 to i8, !dbg !1648
  br i1 %167, label %170, label %688, !dbg !1648

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1629
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1629
  call void @llvm.dbg.value(metadata i8 %173, metadata !1484, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %171, metadata !1461, metadata !DIExpression()), !dbg !1520
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1649
  %175 = load i8, ptr %174, align 1, !dbg !1649, !tbaa !749
  call void @llvm.dbg.value(metadata i8 %175, metadata !1489, metadata !DIExpression()), !dbg !1629
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
  ], !dbg !1650

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !1651

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !1652

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1487, metadata !DIExpression()), !dbg !1629
  %179 = and i8 %144, 1, !dbg !1656
  %180 = icmp eq i8 %179, 0, !dbg !1656
  %181 = select i1 %133, i1 %180, i1 false, !dbg !1656
  br i1 %181, label %182, label %198, !dbg !1656

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1658
  br i1 %183, label %184, label %186, !dbg !1662

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1658
  store i8 39, ptr %185, align 1, !dbg !1658, !tbaa !749
  br label %186, !dbg !1658

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %187, metadata !1468, metadata !DIExpression()), !dbg !1520
  %188 = icmp ult i64 %187, %146, !dbg !1663
  br i1 %188, label %189, label %191, !dbg !1666

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1663
  store i8 36, ptr %190, align 1, !dbg !1663, !tbaa !749
  br label %191, !dbg !1663

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1666
  call void @llvm.dbg.value(metadata i64 %192, metadata !1468, metadata !DIExpression()), !dbg !1520
  %193 = icmp ult i64 %192, %146, !dbg !1667
  br i1 %193, label %194, label %196, !dbg !1670

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1667
  store i8 39, ptr %195, align 1, !dbg !1667, !tbaa !749
  br label %196, !dbg !1667

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %197, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 1, metadata !1476, metadata !DIExpression()), !dbg !1520
  br label %198, !dbg !1671

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1520
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1520
  call void @llvm.dbg.value(metadata i8 %200, metadata !1476, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %199, metadata !1468, metadata !DIExpression()), !dbg !1520
  %201 = icmp ult i64 %199, %146, !dbg !1672
  br i1 %201, label %202, label %204, !dbg !1675

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1672
  store i8 92, ptr %203, align 1, !dbg !1672, !tbaa !749
  br label %204, !dbg !1672

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1675
  call void @llvm.dbg.value(metadata i64 %205, metadata !1468, metadata !DIExpression()), !dbg !1520
  br i1 %126, label %206, label %491, !dbg !1676

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1678
  %208 = icmp ult i64 %207, %171, !dbg !1679
  br i1 %208, label %209, label %480, !dbg !1680

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1681
  %211 = load i8, ptr %210, align 1, !dbg !1681, !tbaa !749
  %212 = add i8 %211, -48, !dbg !1682
  %213 = icmp ult i8 %212, 10, !dbg !1682
  br i1 %213, label %214, label %480, !dbg !1682

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1683
  br i1 %215, label %216, label %218, !dbg !1687

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1683
  store i8 48, ptr %217, align 1, !dbg !1683, !tbaa !749
  br label %218, !dbg !1683

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %219, metadata !1468, metadata !DIExpression()), !dbg !1520
  %220 = icmp ult i64 %219, %146, !dbg !1688
  br i1 %220, label %221, label %223, !dbg !1691

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1688
  store i8 48, ptr %222, align 1, !dbg !1688, !tbaa !749
  br label %223, !dbg !1688

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %224, metadata !1468, metadata !DIExpression()), !dbg !1520
  br label %480, !dbg !1692

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !1693

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1694

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !1695

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !1697

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1699
  %231 = icmp ult i64 %230, %171, !dbg !1700
  br i1 %231, label %232, label %480, !dbg !1701

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !1702
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !1703
  %235 = load i8, ptr %234, align 1, !dbg !1703, !tbaa !749
  %236 = icmp eq i8 %235, 63, !dbg !1704
  br i1 %236, label %237, label %480, !dbg !1705

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1706
  %239 = load i8, ptr %238, align 1, !dbg !1706, !tbaa !749
  %240 = sext i8 %239 to i32, !dbg !1706
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
  ], !dbg !1707

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !1708

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1489, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %230, metadata !1482, metadata !DIExpression()), !dbg !1619
  %243 = icmp ult i64 %140, %146, !dbg !1710
  br i1 %243, label %244, label %246, !dbg !1713

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1710
  store i8 63, ptr %245, align 1, !dbg !1710, !tbaa !749
  br label %246, !dbg !1710

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %247, metadata !1468, metadata !DIExpression()), !dbg !1520
  %248 = icmp ult i64 %247, %146, !dbg !1714
  br i1 %248, label %249, label %251, !dbg !1717

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !1714
  store i8 34, ptr %250, align 1, !dbg !1714, !tbaa !749
  br label %251, !dbg !1714

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %252, metadata !1468, metadata !DIExpression()), !dbg !1520
  %253 = icmp ult i64 %252, %146, !dbg !1718
  br i1 %253, label %254, label %256, !dbg !1721

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !1718
  store i8 34, ptr %255, align 1, !dbg !1718, !tbaa !749
  br label %256, !dbg !1718

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %257, metadata !1468, metadata !DIExpression()), !dbg !1520
  %258 = icmp ult i64 %257, %146, !dbg !1722
  br i1 %258, label %259, label %261, !dbg !1725

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !1722
  store i8 63, ptr %260, align 1, !dbg !1722, !tbaa !749
  br label %261, !dbg !1722

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %262, metadata !1468, metadata !DIExpression()), !dbg !1520
  br label %480, !dbg !1726

263:                                              ; preds = %170
  br label %274, !dbg !1727

264:                                              ; preds = %170
  br label %274, !dbg !1728

265:                                              ; preds = %170
  br label %272, !dbg !1729

266:                                              ; preds = %170
  br label %272, !dbg !1730

267:                                              ; preds = %170
  br label %274, !dbg !1731

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !1732

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !1733

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !1736

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !1738

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !1739
  call void @llvm.dbg.label(metadata !1514), !dbg !1740
  br i1 %134, label %274, label %670, !dbg !1741

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !1739
  call void @llvm.dbg.label(metadata !1516), !dbg !1743
  br i1 %125, label %535, label %491, !dbg !1744

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !1745

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !1746, !tbaa !749
  %279 = icmp eq i8 %278, 0, !dbg !1748
  br i1 %279, label %280, label %480, !dbg !1749

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !1750
  br i1 %281, label %282, label %480, !dbg !1752

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1488, metadata !DIExpression()), !dbg !1629
  br label %283, !dbg !1753

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !1629
  call void @llvm.dbg.value(metadata i8 %284, metadata !1488, metadata !DIExpression()), !dbg !1629
  br i1 %134, label %480, label %670, !dbg !1754

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1474, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 1, metadata !1488, metadata !DIExpression()), !dbg !1629
  br i1 %133, label %286, label %480, !dbg !1756

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !1757

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !1760
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !1762
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !1762
  %292 = select i1 %290, i64 %146, i64 0, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %292, metadata !1459, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %291, metadata !1469, metadata !DIExpression()), !dbg !1520
  %293 = icmp ult i64 %140, %292, !dbg !1763
  br i1 %293, label %294, label %296, !dbg !1766

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1763
  store i8 39, ptr %295, align 1, !dbg !1763, !tbaa !749
  br label %296, !dbg !1763

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %297, metadata !1468, metadata !DIExpression()), !dbg !1520
  %298 = icmp ult i64 %297, %292, !dbg !1767
  br i1 %298, label %299, label %301, !dbg !1770

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !1767
  store i8 92, ptr %300, align 1, !dbg !1767, !tbaa !749
  br label %301, !dbg !1767

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %302, metadata !1468, metadata !DIExpression()), !dbg !1520
  %303 = icmp ult i64 %302, %292, !dbg !1771
  br i1 %303, label %304, label %306, !dbg !1774

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !1771
  store i8 39, ptr %305, align 1, !dbg !1771, !tbaa !749
  br label %306, !dbg !1771

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !1774
  call void @llvm.dbg.value(metadata i64 %307, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 0, metadata !1476, metadata !DIExpression()), !dbg !1520
  br label %480, !dbg !1775

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !1776

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1490, metadata !DIExpression()), !dbg !1777
  %310 = tail call ptr @__ctype_b_loc() #39, !dbg !1778
  %311 = load ptr, ptr %310, align 8, !dbg !1778, !tbaa !718
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !1778
  %314 = load i16, ptr %313, align 2, !dbg !1778, !tbaa !781
  %315 = lshr i16 %314, 14, !dbg !1780
  %316 = trunc i16 %315 to i8, !dbg !1780
  %317 = and i8 %316, 1, !dbg !1780
  call void @llvm.dbg.value(metadata i8 %317, metadata !1493, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 %171, metadata !1461, metadata !DIExpression()), !dbg !1520
  %318 = icmp eq i8 %317, 0, !dbg !1781
  call void @llvm.dbg.value(metadata i1 %318, metadata !1488, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1629
  br label %368, !dbg !1782

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !1783
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1494, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata ptr %14, metadata !1551, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata ptr %14, metadata !1559, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i32 0, metadata !1562, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i64 8, metadata !1563, metadata !DIExpression()), !dbg !1787
  store i64 0, ptr %14, align 8, !dbg !1789
  call void @llvm.dbg.value(metadata i64 0, metadata !1490, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 1, metadata !1493, metadata !DIExpression()), !dbg !1777
  %320 = icmp eq i64 %171, -1, !dbg !1790
  br i1 %320, label %321, label %323, !dbg !1792

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %322, metadata !1461, metadata !DIExpression()), !dbg !1520
  br label %323, !dbg !1794

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !1629
  call void @llvm.dbg.value(metadata i64 %324, metadata !1461, metadata !DIExpression()), !dbg !1520
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !1795
  %325 = sub i64 %324, %145, !dbg !1796
  call void @llvm.dbg.value(metadata ptr %15, metadata !1497, metadata !DIExpression(DW_OP_deref)), !dbg !1797
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #36, !dbg !1798
  call void @llvm.dbg.value(metadata i64 %326, metadata !1501, metadata !DIExpression()), !dbg !1797
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !1799

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1490, metadata !DIExpression()), !dbg !1777
  %328 = icmp ugt i64 %324, %145, !dbg !1800
  br i1 %328, label %331, label %329, !dbg !1802

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1493, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 0, metadata !1490, metadata !DIExpression()), !dbg !1777
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1803
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %324, metadata !1461, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i1 true, metadata !1488, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1629
  br label %368, !dbg !1782

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1493, metadata !DIExpression()), !dbg !1777
  br label %360, !dbg !1805

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1490, metadata !DIExpression()), !dbg !1777
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !1807
  %335 = load i8, ptr %334, align 1, !dbg !1807, !tbaa !749
  %336 = icmp eq i8 %335, 0, !dbg !1802
  br i1 %336, label %363, label %337, !dbg !1808

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !1809
  call void @llvm.dbg.value(metadata i64 %338, metadata !1490, metadata !DIExpression()), !dbg !1777
  %339 = add i64 %338, %145, !dbg !1810
  %340 = icmp eq i64 %338, %325, !dbg !1800
  br i1 %340, label %363, label %331, !dbg !1802, !llvm.loop !1811

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !1812
  %344 = and i1 %343, %133, !dbg !1812
  call void @llvm.dbg.value(metadata i64 1, metadata !1502, metadata !DIExpression()), !dbg !1813
  br i1 %344, label %345, label %354, !dbg !1812

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1502, metadata !DIExpression()), !dbg !1813
  %347 = add i64 %346, %145, !dbg !1814
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !1816
  %349 = load i8, ptr %348, align 1, !dbg !1816, !tbaa !749
  %350 = sext i8 %349 to i32, !dbg !1816
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !1817

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %352, metadata !1502, metadata !DIExpression()), !dbg !1813
  %353 = icmp eq i64 %352, %326, !dbg !1819
  br i1 %353, label %354, label %345, !dbg !1820, !llvm.loop !1821

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !1823, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %355, metadata !1497, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i32 %355, metadata !1825, metadata !DIExpression()), !dbg !1833
  %356 = call i32 @iswprint(i32 noundef %355) #36, !dbg !1835
  %357 = icmp ne i32 %356, 0, !dbg !1836
  %358 = zext i1 %357 to i8, !dbg !1837
  call void @llvm.dbg.value(metadata i8 %358, metadata !1493, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 %326, metadata !1490, metadata !DIExpression()), !dbg !1777
  br label %363, !dbg !1838

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1493, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 0, metadata !1490, metadata !DIExpression()), !dbg !1777
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1803
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1804
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1493, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 0, metadata !1490, metadata !DIExpression()), !dbg !1777
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1803
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %324, metadata !1461, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i1 %361, metadata !1488, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1629
  br label %368, !dbg !1782

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1493, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 %364, metadata !1490, metadata !DIExpression()), !dbg !1777
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1803
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %324, metadata !1461, metadata !DIExpression()), !dbg !1520
  %366 = icmp eq i8 %365, 0, !dbg !1781
  call void @llvm.dbg.value(metadata i1 %366, metadata !1488, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1629
  %367 = icmp ugt i64 %364, 1, !dbg !1839
  br i1 %367, label %374, label %368, !dbg !1782

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !1840
  br i1 %373, label %374, label %480, !dbg !1840

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %379, metadata !1510, metadata !DIExpression()), !dbg !1842
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !1843

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !1520
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !1621
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !1619
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !1629
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !1844
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !1629
  call void @llvm.dbg.value(metadata i8 %387, metadata !1489, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %386, metadata !1487, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %385, metadata !1484, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %384, metadata !1482, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %383, metadata !1476, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %382, metadata !1468, metadata !DIExpression()), !dbg !1520
  br i1 %380, label %388, label %434, !dbg !1845

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !1850

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1487, metadata !DIExpression()), !dbg !1629
  %390 = and i8 %383, 1, !dbg !1853
  %391 = icmp eq i8 %390, 0, !dbg !1853
  %392 = select i1 %133, i1 %391, i1 false, !dbg !1853
  br i1 %392, label %393, label %409, !dbg !1853

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !1855
  br i1 %394, label %395, label %397, !dbg !1859

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !1855
  store i8 39, ptr %396, align 1, !dbg !1855, !tbaa !749
  br label %397, !dbg !1855

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %398, metadata !1468, metadata !DIExpression()), !dbg !1520
  %399 = icmp ult i64 %398, %146, !dbg !1860
  br i1 %399, label %400, label %402, !dbg !1863

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !1860
  store i8 36, ptr %401, align 1, !dbg !1860, !tbaa !749
  br label %402, !dbg !1860

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %403, metadata !1468, metadata !DIExpression()), !dbg !1520
  %404 = icmp ult i64 %403, %146, !dbg !1864
  br i1 %404, label %405, label %407, !dbg !1867

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !1864
  store i8 39, ptr %406, align 1, !dbg !1864, !tbaa !749
  br label %407, !dbg !1864

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !1867
  call void @llvm.dbg.value(metadata i64 %408, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 1, metadata !1476, metadata !DIExpression()), !dbg !1520
  br label %409, !dbg !1868

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !1520
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !1520
  call void @llvm.dbg.value(metadata i8 %411, metadata !1476, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %410, metadata !1468, metadata !DIExpression()), !dbg !1520
  %412 = icmp ult i64 %410, %146, !dbg !1869
  br i1 %412, label %413, label %415, !dbg !1872

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !1869
  store i8 92, ptr %414, align 1, !dbg !1869, !tbaa !749
  br label %415, !dbg !1869

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %416, metadata !1468, metadata !DIExpression()), !dbg !1520
  %417 = icmp ult i64 %416, %146, !dbg !1873
  br i1 %417, label %418, label %422, !dbg !1876

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !1873
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !1873
  store i8 %420, ptr %421, align 1, !dbg !1873, !tbaa !749
  br label %422, !dbg !1873

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !1876
  call void @llvm.dbg.value(metadata i64 %423, metadata !1468, metadata !DIExpression()), !dbg !1520
  %424 = icmp ult i64 %423, %146, !dbg !1877
  br i1 %424, label %425, label %430, !dbg !1880

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !1877
  %428 = or i8 %427, 48, !dbg !1877
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !1877
  store i8 %428, ptr %429, align 1, !dbg !1877, !tbaa !749
  br label %430, !dbg !1877

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %431, metadata !1468, metadata !DIExpression()), !dbg !1520
  %432 = and i8 %387, 7, !dbg !1881
  %433 = or i8 %432, 48, !dbg !1882
  call void @llvm.dbg.value(metadata i8 %433, metadata !1489, metadata !DIExpression()), !dbg !1629
  br label %443, !dbg !1883

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !1884
  %436 = icmp eq i8 %435, 0, !dbg !1884
  br i1 %436, label %443, label %437, !dbg !1886

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !1887
  br i1 %438, label %439, label %441, !dbg !1891

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !1887
  store i8 92, ptr %440, align 1, !dbg !1887, !tbaa !749
  br label %441, !dbg !1887

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !1891
  call void @llvm.dbg.value(metadata i64 %442, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 0, metadata !1484, metadata !DIExpression()), !dbg !1629
  br label %443, !dbg !1892

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !1520
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !1621
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !1629
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !1629
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !1629
  call void @llvm.dbg.value(metadata i8 %448, metadata !1489, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %447, metadata !1487, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %446, metadata !1484, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %445, metadata !1476, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %444, metadata !1468, metadata !DIExpression()), !dbg !1520
  %449 = add i64 %384, 1, !dbg !1893
  %450 = icmp ugt i64 %379, %449, !dbg !1895
  br i1 %450, label %451, label %478, !dbg !1896

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !1897
  %453 = icmp ne i8 %452, 0, !dbg !1897
  %454 = and i8 %447, 1, !dbg !1897
  %455 = icmp eq i8 %454, 0, !dbg !1897
  %456 = select i1 %453, i1 %455, i1 false, !dbg !1897
  br i1 %456, label %457, label %468, !dbg !1897

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !1900
  br i1 %458, label %459, label %461, !dbg !1904

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !1900
  store i8 39, ptr %460, align 1, !dbg !1900, !tbaa !749
  br label %461, !dbg !1900

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %462, metadata !1468, metadata !DIExpression()), !dbg !1520
  %463 = icmp ult i64 %462, %146, !dbg !1905
  br i1 %463, label %464, label %466, !dbg !1908

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !1905
  store i8 39, ptr %465, align 1, !dbg !1905, !tbaa !749
  br label %466, !dbg !1905

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !1908
  call void @llvm.dbg.value(metadata i64 %467, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 0, metadata !1476, metadata !DIExpression()), !dbg !1520
  br label %468, !dbg !1909

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !1910
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !1520
  call void @llvm.dbg.value(metadata i8 %470, metadata !1476, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %469, metadata !1468, metadata !DIExpression()), !dbg !1520
  %471 = icmp ult i64 %469, %146, !dbg !1911
  br i1 %471, label %472, label %474, !dbg !1914

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !1911
  store i8 %448, ptr %473, align 1, !dbg !1911, !tbaa !749
  br label %474, !dbg !1911

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %475, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %449, metadata !1482, metadata !DIExpression()), !dbg !1619
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !1915
  %477 = load i8, ptr %476, align 1, !dbg !1915, !tbaa !749
  call void @llvm.dbg.value(metadata i8 %477, metadata !1489, metadata !DIExpression()), !dbg !1629
  br label %381, !dbg !1916, !llvm.loop !1917

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !1629
  call void @llvm.dbg.value(metadata i8 %448, metadata !1489, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %479, metadata !1488, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %447, metadata !1487, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %446, metadata !1484, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %384, metadata !1482, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %445, metadata !1476, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %444, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %378, metadata !1461, metadata !DIExpression()), !dbg !1520
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !1920
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !1520
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !1525
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !1520
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !1520
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !1619
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !1629
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !1629
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !1629
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1459, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %489, metadata !1489, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %488, metadata !1488, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %487, metadata !1487, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %173, metadata !1484, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %486, metadata !1482, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %485, metadata !1476, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %484, metadata !1474, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %483, metadata !1469, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %482, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %481, metadata !1461, metadata !DIExpression()), !dbg !1520
  br i1 %127, label %502, label %491, !dbg !1921

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
  br i1 %137, label %503, label %524, !dbg !1923

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !1924

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
  %514 = lshr i8 %505, 5, !dbg !1925
  %515 = zext i8 %514 to i64, !dbg !1925
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !1926
  %517 = load i32, ptr %516, align 4, !dbg !1926, !tbaa !740
  %518 = and i8 %505, 31, !dbg !1927
  %519 = zext i8 %518 to i32, !dbg !1927
  %520 = shl nuw i32 1, %519, !dbg !1928
  %521 = and i32 %517, %520, !dbg !1928
  %522 = icmp eq i32 %521, 0, !dbg !1928
  %523 = and i1 %172, %522, !dbg !1929
  br i1 %523, label %573, label %535, !dbg !1929

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
  br i1 %172, label %573, label %535, !dbg !1930

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !1920
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !1520
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !1525
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !1529
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !1621
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !1931
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !1629
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !1629
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1459, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %543, metadata !1489, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %542, metadata !1488, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %541, metadata !1482, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %540, metadata !1476, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %539, metadata !1474, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %538, metadata !1469, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %537, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %536, metadata !1461, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.label(metadata !1517), !dbg !1932
  br i1 %132, label %545, label %674, !dbg !1933

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1487, metadata !DIExpression()), !dbg !1629
  %546 = and i8 %540, 1, !dbg !1935
  %547 = icmp eq i8 %546, 0, !dbg !1935
  %548 = select i1 %133, i1 %547, i1 false, !dbg !1935
  br i1 %548, label %549, label %565, !dbg !1935

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !1937
  br i1 %550, label %551, label %553, !dbg !1941

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !1937
  store i8 39, ptr %552, align 1, !dbg !1937, !tbaa !749
  br label %553, !dbg !1937

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %554, metadata !1468, metadata !DIExpression()), !dbg !1520
  %555 = icmp ult i64 %554, %544, !dbg !1942
  br i1 %555, label %556, label %558, !dbg !1945

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !1942
  store i8 36, ptr %557, align 1, !dbg !1942, !tbaa !749
  br label %558, !dbg !1942

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %559, metadata !1468, metadata !DIExpression()), !dbg !1520
  %560 = icmp ult i64 %559, %544, !dbg !1946
  br i1 %560, label %561, label %563, !dbg !1949

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !1946
  store i8 39, ptr %562, align 1, !dbg !1946, !tbaa !749
  br label %563, !dbg !1946

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %564, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 1, metadata !1476, metadata !DIExpression()), !dbg !1520
  br label %565, !dbg !1950

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !1629
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !1520
  call void @llvm.dbg.value(metadata i8 %567, metadata !1476, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %566, metadata !1468, metadata !DIExpression()), !dbg !1520
  %568 = icmp ult i64 %566, %544, !dbg !1951
  br i1 %568, label %569, label %571, !dbg !1954

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !1951
  store i8 92, ptr %570, align 1, !dbg !1951, !tbaa !749
  br label %571, !dbg !1951

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !1954
  call void @llvm.dbg.value(metadata i64 %544, metadata !1459, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %543, metadata !1489, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %542, metadata !1488, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 1, metadata !1487, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %541, metadata !1482, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %567, metadata !1476, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %539, metadata !1474, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %538, metadata !1469, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %572, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %536, metadata !1461, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.label(metadata !1518), !dbg !1955
  br label %600, !dbg !1956

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !1920
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !1520
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !1525
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !1529
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !1621
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !1931
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !1629
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !1629
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !1959
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1459, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %582, metadata !1489, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %581, metadata !1488, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %580, metadata !1487, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %579, metadata !1482, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %578, metadata !1476, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %577, metadata !1474, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %576, metadata !1469, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %575, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %574, metadata !1461, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.label(metadata !1518), !dbg !1955
  %584 = and i8 %578, 1, !dbg !1956
  %585 = icmp ne i8 %584, 0, !dbg !1956
  %586 = and i8 %580, 1, !dbg !1956
  %587 = icmp eq i8 %586, 0, !dbg !1956
  %588 = select i1 %585, i1 %587, i1 false, !dbg !1956
  br i1 %588, label %589, label %600, !dbg !1956

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !1960
  br i1 %590, label %591, label %593, !dbg !1964

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !1960
  store i8 39, ptr %592, align 1, !dbg !1960, !tbaa !749
  br label %593, !dbg !1960

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !1964
  call void @llvm.dbg.value(metadata i64 %594, metadata !1468, metadata !DIExpression()), !dbg !1520
  %595 = icmp ult i64 %594, %583, !dbg !1965
  br i1 %595, label %596, label %598, !dbg !1968

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !1965
  store i8 39, ptr %597, align 1, !dbg !1965, !tbaa !749
  br label %598, !dbg !1965

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %599, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 0, metadata !1476, metadata !DIExpression()), !dbg !1520
  br label %600, !dbg !1969

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !1629
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !1520
  call void @llvm.dbg.value(metadata i8 %609, metadata !1476, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %608, metadata !1468, metadata !DIExpression()), !dbg !1520
  %610 = icmp ult i64 %608, %601, !dbg !1970
  br i1 %610, label %611, label %613, !dbg !1973

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !1970
  store i8 %602, ptr %612, align 1, !dbg !1970, !tbaa !749
  br label %613, !dbg !1970

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !1973
  call void @llvm.dbg.value(metadata i64 %614, metadata !1468, metadata !DIExpression()), !dbg !1520
  %615 = icmp eq i8 %603, 0, !dbg !1974
  %616 = select i1 %615, i8 0, i8 %143, !dbg !1976
  call void @llvm.dbg.value(metadata i8 %616, metadata !1475, metadata !DIExpression()), !dbg !1520
  br label %617, !dbg !1977

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !1920
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !1520
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !1525
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !1529
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !1530
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !1621
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !1931
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1459, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %624, metadata !1482, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %623, metadata !1476, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %622, metadata !1475, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %621, metadata !1474, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %620, metadata !1469, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %619, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %618, metadata !1461, metadata !DIExpression()), !dbg !1520
  %626 = add i64 %624, 1, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %626, metadata !1482, metadata !DIExpression()), !dbg !1619
  br label %138, !dbg !1979, !llvm.loop !1980

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1459, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %143, metadata !1475, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %142, metadata !1474, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %141, metadata !1469, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %140, metadata !1468, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %139, metadata !1461, metadata !DIExpression()), !dbg !1520
  %628 = icmp eq i64 %140, 0, !dbg !1982
  %629 = and i1 %133, %628, !dbg !1984
  %630 = xor i1 %629, true, !dbg !1984
  %631 = select i1 %630, i1 true, i1 %132, !dbg !1984
  br i1 %631, label %632, label %670, !dbg !1984

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !1985
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !1985
  br i1 %636, label %637, label %646, !dbg !1985

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !1987
  %639 = icmp eq i8 %638, 0, !dbg !1987
  br i1 %639, label %642, label %640, !dbg !1990

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !1991
  br label %694, !dbg !1992

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !1993
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !1995
  br i1 %645, label %28, label %646, !dbg !1995

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !1996
  %649 = select i1 %648, i1 %647, i1 false, !dbg !1998
  br i1 %649, label %650, label %665, !dbg !1998

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1470, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %140, metadata !1468, metadata !DIExpression()), !dbg !1520
  %651 = load i8, ptr %120, align 1, !dbg !1999, !tbaa !749
  %652 = icmp eq i8 %651, 0, !dbg !2002
  br i1 %652, label %665, label %653, !dbg !2002

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1470, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %656, metadata !1468, metadata !DIExpression()), !dbg !1520
  %657 = icmp ult i64 %656, %146, !dbg !2003
  br i1 %657, label %658, label %660, !dbg !2006

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2003
  store i8 %654, ptr %659, align 1, !dbg !2003, !tbaa !749
  br label %660, !dbg !2003

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %661, metadata !1468, metadata !DIExpression()), !dbg !1520
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2007
  call void @llvm.dbg.value(metadata ptr %662, metadata !1470, metadata !DIExpression()), !dbg !1520
  %663 = load i8, ptr %662, align 1, !dbg !1999, !tbaa !749
  %664 = icmp eq i8 %663, 0, !dbg !2002
  br i1 %664, label %665, label %653, !dbg !2002, !llvm.loop !2008

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !1602
  call void @llvm.dbg.value(metadata i64 %666, metadata !1468, metadata !DIExpression()), !dbg !1520
  %667 = icmp ult i64 %666, %146, !dbg !2010
  br i1 %667, label %668, label %694, !dbg !2012

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2013
  store i8 0, ptr %669, align 1, !dbg !2014, !tbaa !749
  br label %694, !dbg !2013

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !1519), !dbg !2015
  %672 = icmp eq i8 %124, 0, !dbg !2016
  %673 = select i1 %672, i32 2, i32 4, !dbg !2016
  br label %684, !dbg !2016

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2016
  %678 = select i1 %677, i32 2, i32 4, !dbg !2016
  br label %679, !dbg !2018

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !1519), !dbg !2015
  %683 = icmp eq i32 %116, 2, !dbg !2018
  br i1 %683, label %684, label %688, !dbg !2016

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2016

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1462, metadata !DIExpression()), !dbg !1520
  %692 = and i32 %5, -3, !dbg !2019
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2020
  br label %694, !dbg !2021

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2022
}

; Function Attrs: nounwind
declare !dbg !2023 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2026 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2029 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2031 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2035, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i64 %1, metadata !2036, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata ptr %2, metadata !2037, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata ptr %0, metadata !2039, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %1, metadata !2044, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata ptr null, metadata !2045, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata ptr %2, metadata !2046, metadata !DIExpression()), !dbg !2052
  %4 = icmp eq ptr %2, null, !dbg !2054
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2054
  call void @llvm.dbg.value(metadata ptr %5, metadata !2047, metadata !DIExpression()), !dbg !2052
  %6 = tail call ptr @__errno_location() #39, !dbg !2055
  %7 = load i32, ptr %6, align 4, !dbg !2055, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %7, metadata !2048, metadata !DIExpression()), !dbg !2052
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2056
  %9 = load i32, ptr %8, align 4, !dbg !2056, !tbaa !1402
  %10 = or i32 %9, 1, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %10, metadata !2049, metadata !DIExpression()), !dbg !2052
  %11 = load i32, ptr %5, align 8, !dbg !2058, !tbaa !1352
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2059
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2060
  %14 = load ptr, ptr %13, align 8, !dbg !2060, !tbaa !1423
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2061
  %16 = load ptr, ptr %15, align 8, !dbg !2061, !tbaa !1426
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2062
  %18 = add i64 %17, 1, !dbg !2063
  call void @llvm.dbg.value(metadata i64 %18, metadata !2050, metadata !DIExpression()), !dbg !2052
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2064
  call void @llvm.dbg.value(metadata ptr %19, metadata !2051, metadata !DIExpression()), !dbg !2052
  %20 = load i32, ptr %5, align 8, !dbg !2065, !tbaa !1352
  %21 = load ptr, ptr %13, align 8, !dbg !2066, !tbaa !1423
  %22 = load ptr, ptr %15, align 8, !dbg !2067, !tbaa !1426
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2068
  store i32 %7, ptr %6, align 4, !dbg !2069, !tbaa !740
  ret ptr %19, !dbg !2070
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2040 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2039, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %1, metadata !2044, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata ptr %2, metadata !2045, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata ptr %3, metadata !2046, metadata !DIExpression()), !dbg !2071
  %5 = icmp eq ptr %3, null, !dbg !2072
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2072
  call void @llvm.dbg.value(metadata ptr %6, metadata !2047, metadata !DIExpression()), !dbg !2071
  %7 = tail call ptr @__errno_location() #39, !dbg !2073
  %8 = load i32, ptr %7, align 4, !dbg !2073, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %8, metadata !2048, metadata !DIExpression()), !dbg !2071
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2074
  %10 = load i32, ptr %9, align 4, !dbg !2074, !tbaa !1402
  %11 = icmp eq ptr %2, null, !dbg !2075
  %12 = zext i1 %11 to i32, !dbg !2075
  %13 = or i32 %10, %12, !dbg !2076
  call void @llvm.dbg.value(metadata i32 %13, metadata !2049, metadata !DIExpression()), !dbg !2071
  %14 = load i32, ptr %6, align 8, !dbg !2077, !tbaa !1352
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2078
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2079
  %17 = load ptr, ptr %16, align 8, !dbg !2079, !tbaa !1423
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2080
  %19 = load ptr, ptr %18, align 8, !dbg !2080, !tbaa !1426
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2081
  %21 = add i64 %20, 1, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %21, metadata !2050, metadata !DIExpression()), !dbg !2071
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2083
  call void @llvm.dbg.value(metadata ptr %22, metadata !2051, metadata !DIExpression()), !dbg !2071
  %23 = load i32, ptr %6, align 8, !dbg !2084, !tbaa !1352
  %24 = load ptr, ptr %16, align 8, !dbg !2085, !tbaa !1423
  %25 = load ptr, ptr %18, align 8, !dbg !2086, !tbaa !1426
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2087
  store i32 %8, ptr %7, align 4, !dbg !2088, !tbaa !740
  br i1 %11, label %28, label %27, !dbg !2089

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2090, !tbaa !2092
  br label %28, !dbg !2093

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2094
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2095 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2100, !tbaa !718
  call void @llvm.dbg.value(metadata ptr %1, metadata !2097, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 1, metadata !2098, metadata !DIExpression()), !dbg !2102
  %2 = load i32, ptr @nslots, align 4, !tbaa !740
  call void @llvm.dbg.value(metadata i32 1, metadata !2098, metadata !DIExpression()), !dbg !2102
  %3 = icmp sgt i32 %2, 1, !dbg !2103
  br i1 %3, label %4, label %6, !dbg !2105

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2103
  br label %10, !dbg !2105

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2106
  %8 = load ptr, ptr %7, align 8, !dbg !2106, !tbaa !2108
  %9 = icmp eq ptr %8, @slot0, !dbg !2110
  br i1 %9, label %17, label %16, !dbg !2111

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2098, metadata !DIExpression()), !dbg !2102
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2112
  %13 = load ptr, ptr %12, align 8, !dbg !2112, !tbaa !2108
  tail call void @free(ptr noundef %13) #36, !dbg !2113
  %14 = add nuw nsw i64 %11, 1, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %14, metadata !2098, metadata !DIExpression()), !dbg !2102
  %15 = icmp eq i64 %14, %5, !dbg !2103
  br i1 %15, label %6, label %10, !dbg !2105, !llvm.loop !2115

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2117
  store i64 256, ptr @slotvec0, align 8, !dbg !2119, !tbaa !2120
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2121, !tbaa !2108
  br label %17, !dbg !2122

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2123
  br i1 %18, label %20, label %19, !dbg !2125

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2126
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2128, !tbaa !718
  br label %20, !dbg !2129

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2130, !tbaa !740
  ret void, !dbg !2131
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2132 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2135 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2137, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata ptr %1, metadata !2138, metadata !DIExpression()), !dbg !2139
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2140
  ret ptr %3, !dbg !2141
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2142 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2146, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata ptr %1, metadata !2147, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %2, metadata !2148, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata ptr %3, metadata !2149, metadata !DIExpression()), !dbg !2162
  %6 = tail call ptr @__errno_location() #39, !dbg !2163
  %7 = load i32, ptr %6, align 4, !dbg !2163, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %7, metadata !2150, metadata !DIExpression()), !dbg !2162
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2164, !tbaa !718
  call void @llvm.dbg.value(metadata ptr %8, metadata !2151, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2152, metadata !DIExpression()), !dbg !2162
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2165
  br i1 %9, label %10, label %11, !dbg !2165

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2167
  unreachable, !dbg !2167

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2168, !tbaa !740
  %13 = icmp sgt i32 %12, %0, !dbg !2169
  br i1 %13, label %32, label %14, !dbg !2170

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2171
  call void @llvm.dbg.value(metadata i1 %15, metadata !2153, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2172
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2173
  %16 = sext i32 %12 to i64, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %16, metadata !2156, metadata !DIExpression()), !dbg !2172
  store i64 %16, ptr %5, align 8, !dbg !2175, !tbaa !2092
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2176
  %18 = add nuw nsw i32 %0, 1, !dbg !2177
  %19 = sub i32 %18, %12, !dbg !2178
  %20 = sext i32 %19 to i64, !dbg !2179
  call void @llvm.dbg.value(metadata ptr %5, metadata !2156, metadata !DIExpression(DW_OP_deref)), !dbg !2172
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2180
  call void @llvm.dbg.value(metadata ptr %21, metadata !2151, metadata !DIExpression()), !dbg !2162
  store ptr %21, ptr @slotvec, align 8, !dbg !2181, !tbaa !718
  br i1 %15, label %22, label %23, !dbg !2182

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2183, !tbaa.struct !2185
  br label %23, !dbg !2186

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2187, !tbaa !740
  %25 = sext i32 %24 to i64, !dbg !2188
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2188
  %27 = load i64, ptr %5, align 8, !dbg !2189, !tbaa !2092
  call void @llvm.dbg.value(metadata i64 %27, metadata !2156, metadata !DIExpression()), !dbg !2172
  %28 = sub nsw i64 %27, %25, !dbg !2190
  %29 = shl i64 %28, 4, !dbg !2191
  call void @llvm.dbg.value(metadata ptr %26, metadata !1559, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i32 0, metadata !1562, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %29, metadata !1563, metadata !DIExpression()), !dbg !2192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2194
  %30 = load i64, ptr %5, align 8, !dbg !2195, !tbaa !2092
  call void @llvm.dbg.value(metadata i64 %30, metadata !2156, metadata !DIExpression()), !dbg !2172
  %31 = trunc i64 %30 to i32, !dbg !2195
  store i32 %31, ptr @nslots, align 4, !dbg !2196, !tbaa !740
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2197
  br label %32, !dbg !2198

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2162
  call void @llvm.dbg.value(metadata ptr %33, metadata !2151, metadata !DIExpression()), !dbg !2162
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2199
  %36 = load i64, ptr %35, align 8, !dbg !2200, !tbaa !2120
  call void @llvm.dbg.value(metadata i64 %36, metadata !2157, metadata !DIExpression()), !dbg !2201
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2202
  %38 = load ptr, ptr %37, align 8, !dbg !2202, !tbaa !2108
  call void @llvm.dbg.value(metadata ptr %38, metadata !2159, metadata !DIExpression()), !dbg !2201
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2203
  %40 = load i32, ptr %39, align 4, !dbg !2203, !tbaa !1402
  %41 = or i32 %40, 1, !dbg !2204
  call void @llvm.dbg.value(metadata i32 %41, metadata !2160, metadata !DIExpression()), !dbg !2201
  %42 = load i32, ptr %3, align 8, !dbg !2205, !tbaa !1352
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2206
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2207
  %45 = load ptr, ptr %44, align 8, !dbg !2207, !tbaa !1423
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2208
  %47 = load ptr, ptr %46, align 8, !dbg !2208, !tbaa !1426
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2209
  call void @llvm.dbg.value(metadata i64 %48, metadata !2161, metadata !DIExpression()), !dbg !2201
  %49 = icmp ugt i64 %36, %48, !dbg !2210
  br i1 %49, label %60, label %50, !dbg !2212

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %51, metadata !2157, metadata !DIExpression()), !dbg !2201
  store i64 %51, ptr %35, align 8, !dbg !2215, !tbaa !2120
  %52 = icmp eq ptr %38, @slot0, !dbg !2216
  br i1 %52, label %54, label %53, !dbg !2218

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2219
  br label %54, !dbg !2219

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2220
  call void @llvm.dbg.value(metadata ptr %55, metadata !2159, metadata !DIExpression()), !dbg !2201
  store ptr %55, ptr %37, align 8, !dbg !2221, !tbaa !2108
  %56 = load i32, ptr %3, align 8, !dbg !2222, !tbaa !1352
  %57 = load ptr, ptr %44, align 8, !dbg !2223, !tbaa !1423
  %58 = load ptr, ptr %46, align 8, !dbg !2224, !tbaa !1426
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2225
  br label %60, !dbg !2226

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2201
  call void @llvm.dbg.value(metadata ptr %61, metadata !2159, metadata !DIExpression()), !dbg !2201
  store i32 %7, ptr %6, align 4, !dbg !2227, !tbaa !740
  ret ptr %61, !dbg !2228
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2229 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2233, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata ptr %1, metadata !2234, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %2, metadata !2235, metadata !DIExpression()), !dbg !2236
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2237
  ret ptr %4, !dbg !2238
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2239 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2241, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i32 0, metadata !2137, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata ptr %0, metadata !2138, metadata !DIExpression()), !dbg !2243
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2245
  ret ptr %2, !dbg !2246
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2247 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2251, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i64 %1, metadata !2252, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i32 0, metadata !2233, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata ptr %0, metadata !2234, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i64 %1, metadata !2235, metadata !DIExpression()), !dbg !2254
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2256
  ret ptr %3, !dbg !2257
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2258 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2262, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i32 %1, metadata !2263, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata ptr %2, metadata !2264, metadata !DIExpression()), !dbg !2266
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2267
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2265, metadata !DIExpression()), !dbg !2268
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2269), !dbg !2272
  call void @llvm.dbg.value(metadata i32 %1, metadata !2273, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2278, metadata !DIExpression()), !dbg !2281
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2281, !alias.scope !2269
  %5 = icmp eq i32 %1, 10, !dbg !2282
  br i1 %5, label %6, label %7, !dbg !2284

6:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2285, !noalias !2269
  unreachable, !dbg !2285

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2286, !tbaa !1352, !alias.scope !2269
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2287
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2288
  ret ptr %8, !dbg !2289
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2290 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2294, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i32 %1, metadata !2295, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata ptr %2, metadata !2296, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %3, metadata !2297, metadata !DIExpression()), !dbg !2299
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2300
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2298, metadata !DIExpression()), !dbg !2301
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2302), !dbg !2305
  call void @llvm.dbg.value(metadata i32 %1, metadata !2273, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2278, metadata !DIExpression()), !dbg !2308
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2308, !alias.scope !2302
  %6 = icmp eq i32 %1, 10, !dbg !2309
  br i1 %6, label %7, label %8, !dbg !2310

7:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2311, !noalias !2302
  unreachable, !dbg !2311

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2312, !tbaa !1352, !alias.scope !2302
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2313
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2314
  ret ptr %9, !dbg !2315
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2316 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2320, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata ptr %1, metadata !2321, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i32 0, metadata !2262, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i32 %0, metadata !2263, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata ptr %1, metadata !2264, metadata !DIExpression()), !dbg !2323
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2325
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2265, metadata !DIExpression()), !dbg !2326
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2327), !dbg !2330
  call void @llvm.dbg.value(metadata i32 %0, metadata !2273, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2278, metadata !DIExpression()), !dbg !2333
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2333, !alias.scope !2327
  %4 = icmp eq i32 %0, 10, !dbg !2334
  br i1 %4, label %5, label %6, !dbg !2335

5:                                                ; preds = %2
  tail call void @abort() #37, !dbg !2336, !noalias !2327
  unreachable, !dbg !2336

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2337, !tbaa !1352, !alias.scope !2327
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2338
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2339
  ret ptr %7, !dbg !2340
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2341 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2345, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata ptr %1, metadata !2346, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i64 %2, metadata !2347, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i32 0, metadata !2294, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 %0, metadata !2295, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata ptr %1, metadata !2296, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i64 %2, metadata !2297, metadata !DIExpression()), !dbg !2349
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2351
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2298, metadata !DIExpression()), !dbg !2352
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2353), !dbg !2356
  call void @llvm.dbg.value(metadata i32 %0, metadata !2273, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2278, metadata !DIExpression()), !dbg !2359
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2359, !alias.scope !2353
  %5 = icmp eq i32 %0, 10, !dbg !2360
  br i1 %5, label %6, label %7, !dbg !2361

6:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2362, !noalias !2353
  unreachable, !dbg !2362

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2363, !tbaa !1352, !alias.scope !2353
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2364
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2365
  ret ptr %8, !dbg !2366
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2367 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2371, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i64 %1, metadata !2372, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i8 %2, metadata !2373, metadata !DIExpression()), !dbg !2375
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2376
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2374, metadata !DIExpression()), !dbg !2377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2378, !tbaa.struct !2379
  call void @llvm.dbg.value(metadata ptr %4, metadata !1369, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8 %2, metadata !1370, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i32 1, metadata !1371, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8 %2, metadata !1372, metadata !DIExpression()), !dbg !2380
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2382
  %6 = lshr i8 %2, 5, !dbg !2383
  %7 = zext i8 %6 to i64, !dbg !2383
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2384
  call void @llvm.dbg.value(metadata ptr %8, metadata !1373, metadata !DIExpression()), !dbg !2380
  %9 = and i8 %2, 31, !dbg !2385
  %10 = zext i8 %9 to i32, !dbg !2385
  call void @llvm.dbg.value(metadata i32 %10, metadata !1375, metadata !DIExpression()), !dbg !2380
  %11 = load i32, ptr %8, align 4, !dbg !2386, !tbaa !740
  %12 = lshr i32 %11, %10, !dbg !2387
  call void @llvm.dbg.value(metadata i32 %12, metadata !1376, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2380
  %13 = and i32 %12, 1, !dbg !2388
  %14 = xor i32 %13, 1, !dbg !2388
  %15 = shl nuw i32 %14, %10, !dbg !2389
  %16 = xor i32 %15, %11, !dbg !2390
  store i32 %16, ptr %8, align 4, !dbg !2390, !tbaa !740
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2391
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2392
  ret ptr %17, !dbg !2393
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2394 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2398, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 %1, metadata !2399, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata ptr %0, metadata !2371, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i64 -1, metadata !2372, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 %1, metadata !2373, metadata !DIExpression()), !dbg !2401
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2403
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2374, metadata !DIExpression()), !dbg !2404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2405, !tbaa.struct !2379
  call void @llvm.dbg.value(metadata ptr %3, metadata !1369, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 %1, metadata !1370, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 1, metadata !1371, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 %1, metadata !1372, metadata !DIExpression()), !dbg !2406
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2408
  %5 = lshr i8 %1, 5, !dbg !2409
  %6 = zext i8 %5 to i64, !dbg !2409
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2410
  call void @llvm.dbg.value(metadata ptr %7, metadata !1373, metadata !DIExpression()), !dbg !2406
  %8 = and i8 %1, 31, !dbg !2411
  %9 = zext i8 %8 to i32, !dbg !2411
  call void @llvm.dbg.value(metadata i32 %9, metadata !1375, metadata !DIExpression()), !dbg !2406
  %10 = load i32, ptr %7, align 4, !dbg !2412, !tbaa !740
  %11 = lshr i32 %10, %9, !dbg !2413
  call void @llvm.dbg.value(metadata i32 %11, metadata !1376, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2406
  %12 = and i32 %11, 1, !dbg !2414
  %13 = xor i32 %12, 1, !dbg !2414
  %14 = shl nuw i32 %13, %9, !dbg !2415
  %15 = xor i32 %14, %10, !dbg !2416
  store i32 %15, ptr %7, align 4, !dbg !2416, !tbaa !740
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2417
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2418
  ret ptr %16, !dbg !2419
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2420 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2422, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata ptr %0, metadata !2398, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8 58, metadata !2399, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata ptr %0, metadata !2371, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i64 -1, metadata !2372, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i8 58, metadata !2373, metadata !DIExpression()), !dbg !2426
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2428
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2374, metadata !DIExpression()), !dbg !2429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2430, !tbaa.struct !2379
  call void @llvm.dbg.value(metadata ptr %2, metadata !1369, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i8 58, metadata !1370, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i32 1, metadata !1371, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i8 58, metadata !1372, metadata !DIExpression()), !dbg !2431
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2433
  call void @llvm.dbg.value(metadata ptr %3, metadata !1373, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i32 26, metadata !1375, metadata !DIExpression()), !dbg !2431
  %4 = load i32, ptr %3, align 4, !dbg !2434, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %4, metadata !1376, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2431
  %5 = or i32 %4, 67108864, !dbg !2435
  store i32 %5, ptr %3, align 4, !dbg !2435, !tbaa !740
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2436
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2437
  ret ptr %6, !dbg !2438
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2439 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2441, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %1, metadata !2442, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata ptr %0, metadata !2371, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i64 %1, metadata !2372, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 58, metadata !2373, metadata !DIExpression()), !dbg !2444
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2446
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2374, metadata !DIExpression()), !dbg !2447
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2448, !tbaa.struct !2379
  call void @llvm.dbg.value(metadata ptr %3, metadata !1369, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 58, metadata !1370, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i32 1, metadata !1371, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 58, metadata !1372, metadata !DIExpression()), !dbg !2449
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2451
  call void @llvm.dbg.value(metadata ptr %4, metadata !1373, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i32 26, metadata !1375, metadata !DIExpression()), !dbg !2449
  %5 = load i32, ptr %4, align 4, !dbg !2452, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %5, metadata !1376, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2449
  %6 = or i32 %5, 67108864, !dbg !2453
  store i32 %6, ptr %4, align 4, !dbg !2453, !tbaa !740
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2454
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2455
  ret ptr %7, !dbg !2456
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2457 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2278, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2463
  call void @llvm.dbg.value(metadata i32 %0, metadata !2459, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i32 %1, metadata !2460, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata ptr %2, metadata !2461, metadata !DIExpression()), !dbg !2465
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2466
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2462, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 %1, metadata !2273, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i32 0, metadata !2278, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2468
  %5 = icmp eq i32 %1, 10, !dbg !2469
  br i1 %5, label %6, label %7, !dbg !2470

6:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2471, !noalias !2472
  unreachable, !dbg !2471

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2278, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2468
  store i32 %1, ptr %4, align 8, !dbg !2475, !tbaa.struct !2379
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2475
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2475
  call void @llvm.dbg.value(metadata ptr %4, metadata !1369, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 58, metadata !1370, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i32 1, metadata !1371, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 58, metadata !1372, metadata !DIExpression()), !dbg !2476
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2478
  call void @llvm.dbg.value(metadata ptr %9, metadata !1373, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i32 26, metadata !1375, metadata !DIExpression()), !dbg !2476
  %10 = load i32, ptr %9, align 4, !dbg !2479, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %10, metadata !1376, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2476
  %11 = or i32 %10, 67108864, !dbg !2480
  store i32 %11, ptr %9, align 4, !dbg !2480, !tbaa !740
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2481
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2482
  ret ptr %12, !dbg !2483
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2484 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2488, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata ptr %1, metadata !2489, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata ptr %2, metadata !2490, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata ptr %3, metadata !2491, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i32 %0, metadata !2493, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata ptr %1, metadata !2498, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata ptr %2, metadata !2499, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata ptr %3, metadata !2500, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i64 -1, metadata !2501, metadata !DIExpression()), !dbg !2503
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2505
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2502, metadata !DIExpression()), !dbg !2506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2507, !tbaa.struct !2379
  call void @llvm.dbg.value(metadata ptr %5, metadata !1409, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata ptr %1, metadata !1410, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata ptr %2, metadata !1411, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata ptr %5, metadata !1409, metadata !DIExpression()), !dbg !2508
  store i32 10, ptr %5, align 8, !dbg !2510, !tbaa !1352
  %6 = icmp ne ptr %1, null, !dbg !2511
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2512
  br i1 %8, label %10, label %9, !dbg !2512

9:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2513
  unreachable, !dbg !2513

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2514
  store ptr %1, ptr %11, align 8, !dbg !2515, !tbaa !1423
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2516
  store ptr %2, ptr %12, align 8, !dbg !2517, !tbaa !1426
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2518
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2519
  ret ptr %13, !dbg !2520
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2494 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2493, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata ptr %1, metadata !2498, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata ptr %2, metadata !2499, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata ptr %3, metadata !2500, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i64 %4, metadata !2501, metadata !DIExpression()), !dbg !2521
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2522
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2502, metadata !DIExpression()), !dbg !2523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2524, !tbaa.struct !2379
  call void @llvm.dbg.value(metadata ptr %6, metadata !1409, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata ptr %1, metadata !1410, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata ptr %2, metadata !1411, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata ptr %6, metadata !1409, metadata !DIExpression()), !dbg !2525
  store i32 10, ptr %6, align 8, !dbg !2527, !tbaa !1352
  %7 = icmp ne ptr %1, null, !dbg !2528
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2529
  br i1 %9, label %11, label %10, !dbg !2529

10:                                               ; preds = %5
  tail call void @abort() #37, !dbg !2530
  unreachable, !dbg !2530

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2531
  store ptr %1, ptr %12, align 8, !dbg !2532, !tbaa !1423
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2533
  store ptr %2, ptr %13, align 8, !dbg !2534, !tbaa !1426
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2535
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2536
  ret ptr %14, !dbg !2537
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2538 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2542, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata ptr %1, metadata !2543, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata ptr %2, metadata !2544, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i32 0, metadata !2488, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr %0, metadata !2489, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr %1, metadata !2490, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr %2, metadata !2491, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i32 0, metadata !2493, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata ptr %0, metadata !2498, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata ptr %1, metadata !2499, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata ptr %2, metadata !2500, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 -1, metadata !2501, metadata !DIExpression()), !dbg !2548
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2550
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2502, metadata !DIExpression()), !dbg !2551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2552, !tbaa.struct !2379
  call void @llvm.dbg.value(metadata ptr %4, metadata !1409, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata ptr %0, metadata !1410, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata ptr %1, metadata !1411, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata ptr %4, metadata !1409, metadata !DIExpression()), !dbg !2553
  store i32 10, ptr %4, align 8, !dbg !2555, !tbaa !1352
  %5 = icmp ne ptr %0, null, !dbg !2556
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2557
  br i1 %7, label %9, label %8, !dbg !2557

8:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2558
  unreachable, !dbg !2558

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2559
  store ptr %0, ptr %10, align 8, !dbg !2560, !tbaa !1423
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2561
  store ptr %1, ptr %11, align 8, !dbg !2562, !tbaa !1426
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2563
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2564
  ret ptr %12, !dbg !2565
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2566 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2570, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata ptr %1, metadata !2571, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata ptr %2, metadata !2572, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i64 %3, metadata !2573, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i32 0, metadata !2493, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata ptr %0, metadata !2498, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata ptr %1, metadata !2499, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata ptr %2, metadata !2500, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i64 %3, metadata !2501, metadata !DIExpression()), !dbg !2575
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2577
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2502, metadata !DIExpression()), !dbg !2578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2579, !tbaa.struct !2379
  call void @llvm.dbg.value(metadata ptr %5, metadata !1409, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata ptr %0, metadata !1410, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata ptr %1, metadata !1411, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata ptr %5, metadata !1409, metadata !DIExpression()), !dbg !2580
  store i32 10, ptr %5, align 8, !dbg !2582, !tbaa !1352
  %6 = icmp ne ptr %0, null, !dbg !2583
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2584
  br i1 %8, label %10, label %9, !dbg !2584

9:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2585
  unreachable, !dbg !2585

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2586
  store ptr %0, ptr %11, align 8, !dbg !2587, !tbaa !1423
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2588
  store ptr %1, ptr %12, align 8, !dbg !2589, !tbaa !1426
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2590
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2591
  ret ptr %13, !dbg !2592
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2593 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2597, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata ptr %1, metadata !2598, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i64 %2, metadata !2599, metadata !DIExpression()), !dbg !2600
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2601
  ret ptr %4, !dbg !2602
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2603 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2607, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i64 %1, metadata !2608, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i32 0, metadata !2597, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %0, metadata !2598, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %1, metadata !2599, metadata !DIExpression()), !dbg !2610
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2612
  ret ptr %3, !dbg !2613
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2614 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2618, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %1, metadata !2619, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 %0, metadata !2597, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata ptr %1, metadata !2598, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i64 -1, metadata !2599, metadata !DIExpression()), !dbg !2621
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2623
  ret ptr %3, !dbg !2624
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2625 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2629, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i32 0, metadata !2618, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %0, metadata !2619, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i32 0, metadata !2597, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata ptr %0, metadata !2598, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 -1, metadata !2599, metadata !DIExpression()), !dbg !2633
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2635
  ret ptr %2, !dbg !2636
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2637 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2676, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata ptr %1, metadata !2677, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata ptr %2, metadata !2678, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata ptr %3, metadata !2679, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata ptr %4, metadata !2680, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i64 %5, metadata !2681, metadata !DIExpression()), !dbg !2682
  %7 = icmp eq ptr %1, null, !dbg !2683
  br i1 %7, label %10, label %8, !dbg !2685

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.67, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !2686
  br label %12, !dbg !2686

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.68, ptr noundef %2, ptr noundef %3) #36, !dbg !2687
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.3.70, i32 noundef 5) #36, !dbg !2688
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !2688
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %0), !dbg !2689
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.5.72, i32 noundef 5) #36, !dbg !2690
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.73) #36, !dbg !2690
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %0), !dbg !2691
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
  ], !dbg !2692

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.7.74, i32 noundef 5) #36, !dbg !2693
  %21 = load ptr, ptr %4, align 8, !dbg !2693, !tbaa !718
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !2693
  br label %147, !dbg !2695

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.8.75, i32 noundef 5) #36, !dbg !2696
  %25 = load ptr, ptr %4, align 8, !dbg !2696, !tbaa !718
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2696
  %27 = load ptr, ptr %26, align 8, !dbg !2696, !tbaa !718
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !2696
  br label %147, !dbg !2697

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.9.76, i32 noundef 5) #36, !dbg !2698
  %31 = load ptr, ptr %4, align 8, !dbg !2698, !tbaa !718
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2698
  %33 = load ptr, ptr %32, align 8, !dbg !2698, !tbaa !718
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2698
  %35 = load ptr, ptr %34, align 8, !dbg !2698, !tbaa !718
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !2698
  br label %147, !dbg !2699

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.10.77, i32 noundef 5) #36, !dbg !2700
  %39 = load ptr, ptr %4, align 8, !dbg !2700, !tbaa !718
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2700
  %41 = load ptr, ptr %40, align 8, !dbg !2700, !tbaa !718
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2700
  %43 = load ptr, ptr %42, align 8, !dbg !2700, !tbaa !718
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2700
  %45 = load ptr, ptr %44, align 8, !dbg !2700, !tbaa !718
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !2700
  br label %147, !dbg !2701

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.11.78, i32 noundef 5) #36, !dbg !2702
  %49 = load ptr, ptr %4, align 8, !dbg !2702, !tbaa !718
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2702
  %51 = load ptr, ptr %50, align 8, !dbg !2702, !tbaa !718
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2702
  %53 = load ptr, ptr %52, align 8, !dbg !2702, !tbaa !718
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2702
  %55 = load ptr, ptr %54, align 8, !dbg !2702, !tbaa !718
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2702
  %57 = load ptr, ptr %56, align 8, !dbg !2702, !tbaa !718
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !2702
  br label %147, !dbg !2703

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.12.79, i32 noundef 5) #36, !dbg !2704
  %61 = load ptr, ptr %4, align 8, !dbg !2704, !tbaa !718
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2704
  %63 = load ptr, ptr %62, align 8, !dbg !2704, !tbaa !718
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2704
  %65 = load ptr, ptr %64, align 8, !dbg !2704, !tbaa !718
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2704
  %67 = load ptr, ptr %66, align 8, !dbg !2704, !tbaa !718
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2704
  %69 = load ptr, ptr %68, align 8, !dbg !2704, !tbaa !718
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2704
  %71 = load ptr, ptr %70, align 8, !dbg !2704, !tbaa !718
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !2704
  br label %147, !dbg !2705

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.13.80, i32 noundef 5) #36, !dbg !2706
  %75 = load ptr, ptr %4, align 8, !dbg !2706, !tbaa !718
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2706
  %77 = load ptr, ptr %76, align 8, !dbg !2706, !tbaa !718
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2706
  %79 = load ptr, ptr %78, align 8, !dbg !2706, !tbaa !718
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2706
  %81 = load ptr, ptr %80, align 8, !dbg !2706, !tbaa !718
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2706
  %83 = load ptr, ptr %82, align 8, !dbg !2706, !tbaa !718
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2706
  %85 = load ptr, ptr %84, align 8, !dbg !2706, !tbaa !718
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2706
  %87 = load ptr, ptr %86, align 8, !dbg !2706, !tbaa !718
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !2706
  br label %147, !dbg !2707

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.14.81, i32 noundef 5) #36, !dbg !2708
  %91 = load ptr, ptr %4, align 8, !dbg !2708, !tbaa !718
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2708
  %93 = load ptr, ptr %92, align 8, !dbg !2708, !tbaa !718
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2708
  %95 = load ptr, ptr %94, align 8, !dbg !2708, !tbaa !718
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2708
  %97 = load ptr, ptr %96, align 8, !dbg !2708, !tbaa !718
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2708
  %99 = load ptr, ptr %98, align 8, !dbg !2708, !tbaa !718
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2708
  %101 = load ptr, ptr %100, align 8, !dbg !2708, !tbaa !718
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2708
  %103 = load ptr, ptr %102, align 8, !dbg !2708, !tbaa !718
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2708
  %105 = load ptr, ptr %104, align 8, !dbg !2708, !tbaa !718
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !2708
  br label %147, !dbg !2709

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.15.82, i32 noundef 5) #36, !dbg !2710
  %109 = load ptr, ptr %4, align 8, !dbg !2710, !tbaa !718
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2710
  %111 = load ptr, ptr %110, align 8, !dbg !2710, !tbaa !718
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2710
  %113 = load ptr, ptr %112, align 8, !dbg !2710, !tbaa !718
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2710
  %115 = load ptr, ptr %114, align 8, !dbg !2710, !tbaa !718
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2710
  %117 = load ptr, ptr %116, align 8, !dbg !2710, !tbaa !718
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2710
  %119 = load ptr, ptr %118, align 8, !dbg !2710, !tbaa !718
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2710
  %121 = load ptr, ptr %120, align 8, !dbg !2710, !tbaa !718
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2710
  %123 = load ptr, ptr %122, align 8, !dbg !2710, !tbaa !718
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2710
  %125 = load ptr, ptr %124, align 8, !dbg !2710, !tbaa !718
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !2710
  br label %147, !dbg !2711

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.16.83, i32 noundef 5) #36, !dbg !2712
  %129 = load ptr, ptr %4, align 8, !dbg !2712, !tbaa !718
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2712
  %131 = load ptr, ptr %130, align 8, !dbg !2712, !tbaa !718
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2712
  %133 = load ptr, ptr %132, align 8, !dbg !2712, !tbaa !718
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2712
  %135 = load ptr, ptr %134, align 8, !dbg !2712, !tbaa !718
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2712
  %137 = load ptr, ptr %136, align 8, !dbg !2712, !tbaa !718
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2712
  %139 = load ptr, ptr %138, align 8, !dbg !2712, !tbaa !718
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2712
  %141 = load ptr, ptr %140, align 8, !dbg !2712, !tbaa !718
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2712
  %143 = load ptr, ptr %142, align 8, !dbg !2712, !tbaa !718
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2712
  %145 = load ptr, ptr %144, align 8, !dbg !2712, !tbaa !718
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !2712
  br label %147, !dbg !2713

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2714
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2715 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2719, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata ptr %1, metadata !2720, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata ptr %2, metadata !2721, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata ptr %3, metadata !2722, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata ptr %4, metadata !2723, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i64 0, metadata !2724, metadata !DIExpression()), !dbg !2725
  br label %6, !dbg !2726

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2728
  call void @llvm.dbg.value(metadata i64 %7, metadata !2724, metadata !DIExpression()), !dbg !2725
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2729
  %9 = load ptr, ptr %8, align 8, !dbg !2729, !tbaa !718
  %10 = icmp eq ptr %9, null, !dbg !2731
  %11 = add i64 %7, 1, !dbg !2732
  call void @llvm.dbg.value(metadata i64 %11, metadata !2724, metadata !DIExpression()), !dbg !2725
  br i1 %10, label %12, label %6, !dbg !2731, !llvm.loop !2733

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2735
  ret void, !dbg !2736
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2737 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2749, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata ptr %1, metadata !2750, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata ptr %2, metadata !2751, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata ptr %3, metadata !2752, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata ptr %4, metadata !2753, metadata !DIExpression()), !dbg !2757
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !2758
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2755, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 0, metadata !2754, metadata !DIExpression()), !dbg !2757
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2754, metadata !DIExpression()), !dbg !2757
  %10 = icmp ult i32 %9, 41, !dbg !2760
  br i1 %10, label %11, label %16, !dbg !2760

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2760
  %13 = zext i32 %9 to i64, !dbg !2760
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2760
  %15 = add nuw nsw i32 %9, 8, !dbg !2760
  store i32 %15, ptr %4, align 8, !dbg !2760
  br label %19, !dbg !2760

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2760
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2760
  store ptr %18, ptr %7, align 8, !dbg !2760
  br label %19, !dbg !2760

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2760
  %22 = load ptr, ptr %21, align 8, !dbg !2760
  store ptr %22, ptr %6, align 16, !dbg !2763, !tbaa !718
  %23 = icmp eq ptr %22, null, !dbg !2764
  br i1 %23, label %128, label %24, !dbg !2765

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !2754, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 1, metadata !2754, metadata !DIExpression()), !dbg !2757
  %25 = icmp ult i32 %20, 41, !dbg !2760
  br i1 %25, label %29, label %26, !dbg !2760

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2760
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2760
  store ptr %28, ptr %7, align 8, !dbg !2760
  br label %34, !dbg !2760

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2760
  %31 = zext i32 %20 to i64, !dbg !2760
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2760
  %33 = add nuw nsw i32 %20, 8, !dbg !2760
  store i32 %33, ptr %4, align 8, !dbg !2760
  br label %34, !dbg !2760

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2760
  %37 = load ptr, ptr %36, align 8, !dbg !2760
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2766
  store ptr %37, ptr %38, align 8, !dbg !2763, !tbaa !718
  %39 = icmp eq ptr %37, null, !dbg !2764
  br i1 %39, label %128, label %40, !dbg !2765

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !2754, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 2, metadata !2754, metadata !DIExpression()), !dbg !2757
  %41 = icmp ult i32 %35, 41, !dbg !2760
  br i1 %41, label %45, label %42, !dbg !2760

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2760
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2760
  store ptr %44, ptr %7, align 8, !dbg !2760
  br label %50, !dbg !2760

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2760
  %47 = zext i32 %35 to i64, !dbg !2760
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2760
  %49 = add nuw nsw i32 %35, 8, !dbg !2760
  store i32 %49, ptr %4, align 8, !dbg !2760
  br label %50, !dbg !2760

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2760
  %53 = load ptr, ptr %52, align 8, !dbg !2760
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2766
  store ptr %53, ptr %54, align 16, !dbg !2763, !tbaa !718
  %55 = icmp eq ptr %53, null, !dbg !2764
  br i1 %55, label %128, label %56, !dbg !2765

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !2754, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 3, metadata !2754, metadata !DIExpression()), !dbg !2757
  %57 = icmp ult i32 %51, 41, !dbg !2760
  br i1 %57, label %61, label %58, !dbg !2760

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2760
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2760
  store ptr %60, ptr %7, align 8, !dbg !2760
  br label %66, !dbg !2760

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2760
  %63 = zext i32 %51 to i64, !dbg !2760
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2760
  %65 = add nuw nsw i32 %51, 8, !dbg !2760
  store i32 %65, ptr %4, align 8, !dbg !2760
  br label %66, !dbg !2760

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2760
  %69 = load ptr, ptr %68, align 8, !dbg !2760
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2766
  store ptr %69, ptr %70, align 8, !dbg !2763, !tbaa !718
  %71 = icmp eq ptr %69, null, !dbg !2764
  br i1 %71, label %128, label %72, !dbg !2765

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !2754, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 4, metadata !2754, metadata !DIExpression()), !dbg !2757
  %73 = icmp ult i32 %67, 41, !dbg !2760
  br i1 %73, label %77, label %74, !dbg !2760

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2760
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2760
  store ptr %76, ptr %7, align 8, !dbg !2760
  br label %82, !dbg !2760

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2760
  %79 = zext i32 %67 to i64, !dbg !2760
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2760
  %81 = add nuw nsw i32 %67, 8, !dbg !2760
  store i32 %81, ptr %4, align 8, !dbg !2760
  br label %82, !dbg !2760

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2760
  %85 = load ptr, ptr %84, align 8, !dbg !2760
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2766
  store ptr %85, ptr %86, align 16, !dbg !2763, !tbaa !718
  %87 = icmp eq ptr %85, null, !dbg !2764
  br i1 %87, label %128, label %88, !dbg !2765

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !2754, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 5, metadata !2754, metadata !DIExpression()), !dbg !2757
  %89 = icmp ult i32 %83, 41, !dbg !2760
  br i1 %89, label %93, label %90, !dbg !2760

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2760
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2760
  store ptr %92, ptr %7, align 8, !dbg !2760
  br label %98, !dbg !2760

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2760
  %95 = zext i32 %83 to i64, !dbg !2760
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2760
  %97 = add nuw nsw i32 %83, 8, !dbg !2760
  store i32 %97, ptr %4, align 8, !dbg !2760
  br label %98, !dbg !2760

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2760
  %100 = load ptr, ptr %99, align 8, !dbg !2760
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2766
  store ptr %100, ptr %101, align 8, !dbg !2763, !tbaa !718
  %102 = icmp eq ptr %100, null, !dbg !2764
  br i1 %102, label %128, label %103, !dbg !2765

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !2754, metadata !DIExpression()), !dbg !2757
  %104 = load ptr, ptr %7, align 8, !dbg !2760
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2760
  store ptr %105, ptr %7, align 8, !dbg !2760
  %106 = load ptr, ptr %104, align 8, !dbg !2760
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2766
  store ptr %106, ptr %107, align 16, !dbg !2763, !tbaa !718
  %108 = icmp eq ptr %106, null, !dbg !2764
  br i1 %108, label %128, label %109, !dbg !2765

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !2754, metadata !DIExpression()), !dbg !2757
  %110 = load ptr, ptr %7, align 8, !dbg !2760
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2760
  store ptr %111, ptr %7, align 8, !dbg !2760
  %112 = load ptr, ptr %110, align 8, !dbg !2760
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2766
  store ptr %112, ptr %113, align 8, !dbg !2763, !tbaa !718
  %114 = icmp eq ptr %112, null, !dbg !2764
  br i1 %114, label %128, label %115, !dbg !2765

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !2754, metadata !DIExpression()), !dbg !2757
  %116 = load ptr, ptr %7, align 8, !dbg !2760
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2760
  store ptr %117, ptr %7, align 8, !dbg !2760
  %118 = load ptr, ptr %116, align 8, !dbg !2760
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2766
  store ptr %118, ptr %119, align 16, !dbg !2763, !tbaa !718
  %120 = icmp eq ptr %118, null, !dbg !2764
  br i1 %120, label %128, label %121, !dbg !2765

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !2754, metadata !DIExpression()), !dbg !2757
  %122 = load ptr, ptr %7, align 8, !dbg !2760
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2760
  store ptr %123, ptr %7, align 8, !dbg !2760
  %124 = load ptr, ptr %122, align 8, !dbg !2760
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2766
  store ptr %124, ptr %125, align 8, !dbg !2763, !tbaa !718
  %126 = icmp eq ptr %124, null, !dbg !2764
  %127 = select i1 %126, i64 9, i64 10, !dbg !2765
  br label %128, !dbg !2765

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2767
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2768
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !2769
  ret void, !dbg !2769
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2770 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2774, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata ptr %1, metadata !2775, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata ptr %2, metadata !2776, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata ptr %3, metadata !2777, metadata !DIExpression()), !dbg !2783
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #36, !dbg !2784
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2778, metadata !DIExpression()), !dbg !2785
  call void @llvm.va_start(ptr nonnull %5), !dbg !2786
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2787
  call void @llvm.va_end(ptr nonnull %5), !dbg !2788
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #36, !dbg !2789
  ret void, !dbg !2789
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2790 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2791, !tbaa !718
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %1), !dbg !2791
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.17.88, i32 noundef 5) #36, !dbg !2792
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.89) #36, !dbg !2792
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.19, i32 noundef 5) #36, !dbg !2793
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21.90) #36, !dbg !2793
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !2794
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !2794
  ret void, !dbg !2795
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2796 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2801, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %1, metadata !2802, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %2, metadata !2803, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata ptr %0, metadata !2805, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 %1, metadata !2808, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 %2, metadata !2809, metadata !DIExpression()), !dbg !2810
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2812
  call void @llvm.dbg.value(metadata ptr %4, metadata !2813, metadata !DIExpression()), !dbg !2818
  %5 = icmp eq ptr %4, null, !dbg !2820
  br i1 %5, label %6, label %7, !dbg !2822

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !2823
  unreachable, !dbg !2823

7:                                                ; preds = %3
  ret ptr %4, !dbg !2824
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2806 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2805, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64 %1, metadata !2808, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64 %2, metadata !2809, metadata !DIExpression()), !dbg !2825
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2826
  call void @llvm.dbg.value(metadata ptr %4, metadata !2813, metadata !DIExpression()), !dbg !2827
  %5 = icmp eq ptr %4, null, !dbg !2829
  br i1 %5, label %6, label %7, !dbg !2830

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !2831
  unreachable, !dbg !2831

7:                                                ; preds = %3
  ret ptr %4, !dbg !2832
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2833 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2837, metadata !DIExpression()), !dbg !2838
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2839
  call void @llvm.dbg.value(metadata ptr %2, metadata !2813, metadata !DIExpression()), !dbg !2840
  %3 = icmp eq ptr %2, null, !dbg !2842
  br i1 %3, label %4, label %5, !dbg !2843

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !2844
  unreachable, !dbg !2844

5:                                                ; preds = %1
  ret ptr %2, !dbg !2845
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2846 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2847 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2851, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %0, metadata !2853, metadata !DIExpression()), !dbg !2857
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2859
  call void @llvm.dbg.value(metadata ptr %2, metadata !2813, metadata !DIExpression()), !dbg !2860
  %3 = icmp eq ptr %2, null, !dbg !2862
  br i1 %3, label %4, label %5, !dbg !2863

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !2864
  unreachable, !dbg !2864

5:                                                ; preds = %1
  ret ptr %2, !dbg !2865
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2866 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2870, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %0, metadata !2837, metadata !DIExpression()), !dbg !2872
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2874
  call void @llvm.dbg.value(metadata ptr %2, metadata !2813, metadata !DIExpression()), !dbg !2875
  %3 = icmp eq ptr %2, null, !dbg !2877
  br i1 %3, label %4, label %5, !dbg !2878

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !2879
  unreachable, !dbg !2879

5:                                                ; preds = %1
  ret ptr %2, !dbg !2880
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2881 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2885, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %1, metadata !2886, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata ptr %0, metadata !2888, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i64 %1, metadata !2892, metadata !DIExpression()), !dbg !2893
  %3 = icmp eq i64 %1, 0, !dbg !2895
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2895
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !2896
  call void @llvm.dbg.value(metadata ptr %5, metadata !2813, metadata !DIExpression()), !dbg !2897
  %6 = icmp eq ptr %5, null, !dbg !2899
  br i1 %6, label %7, label %8, !dbg !2900

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !2901
  unreachable, !dbg !2901

8:                                                ; preds = %2
  ret ptr %5, !dbg !2902
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2903 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2904 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2908, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %1, metadata !2909, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata ptr %0, metadata !2911, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i64 %1, metadata !2914, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata ptr %0, metadata !2888, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i64 %1, metadata !2892, metadata !DIExpression()), !dbg !2917
  %3 = icmp eq i64 %1, 0, !dbg !2919
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2919
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !2920
  call void @llvm.dbg.value(metadata ptr %5, metadata !2813, metadata !DIExpression()), !dbg !2921
  %6 = icmp eq ptr %5, null, !dbg !2923
  br i1 %6, label %7, label %8, !dbg !2924

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !2925
  unreachable, !dbg !2925

8:                                                ; preds = %2
  ret ptr %5, !dbg !2926
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2927 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2931, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i64 %1, metadata !2932, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i64 %2, metadata !2933, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata ptr %0, metadata !2935, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 %1, metadata !2938, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 %2, metadata !2939, metadata !DIExpression()), !dbg !2940
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2942
  call void @llvm.dbg.value(metadata ptr %4, metadata !2813, metadata !DIExpression()), !dbg !2943
  %5 = icmp eq ptr %4, null, !dbg !2945
  br i1 %5, label %6, label %7, !dbg !2946

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !2947
  unreachable, !dbg !2947

7:                                                ; preds = %3
  ret ptr %4, !dbg !2948
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !2949 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2953, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 %1, metadata !2954, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata ptr null, metadata !2805, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64 %0, metadata !2808, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64 %1, metadata !2809, metadata !DIExpression()), !dbg !2956
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !2958
  call void @llvm.dbg.value(metadata ptr %3, metadata !2813, metadata !DIExpression()), !dbg !2959
  %4 = icmp eq ptr %3, null, !dbg !2961
  br i1 %4, label %5, label %6, !dbg !2962

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !2963
  unreachable, !dbg !2963

6:                                                ; preds = %2
  ret ptr %3, !dbg !2964
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !2965 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2969, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %1, metadata !2970, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata ptr null, metadata !2931, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i64 %0, metadata !2932, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i64 %1, metadata !2933, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata ptr null, metadata !2935, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %0, metadata !2938, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %1, metadata !2939, metadata !DIExpression()), !dbg !2974
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !2976
  call void @llvm.dbg.value(metadata ptr %3, metadata !2813, metadata !DIExpression()), !dbg !2977
  %4 = icmp eq ptr %3, null, !dbg !2979
  br i1 %4, label %5, label %6, !dbg !2980

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !2981
  unreachable, !dbg !2981

6:                                                ; preds = %2
  ret ptr %3, !dbg !2982
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !2983 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2987, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata ptr %1, metadata !2988, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata ptr %0, metadata !658, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata ptr %1, metadata !659, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i64 1, metadata !660, metadata !DIExpression()), !dbg !2990
  %3 = load i64, ptr %1, align 8, !dbg !2992, !tbaa !2092
  call void @llvm.dbg.value(metadata i64 %3, metadata !661, metadata !DIExpression()), !dbg !2990
  %4 = icmp eq ptr %0, null, !dbg !2993
  br i1 %4, label %5, label %8, !dbg !2995

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2996
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2999
  br label %15, !dbg !2999

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3000
  %10 = add nuw i64 %9, 1, !dbg !3000
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3000
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3000
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %13, metadata !661, metadata !DIExpression()), !dbg !2990
  br i1 %12, label %14, label %15, !dbg !3003

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !3004
  unreachable, !dbg !3004

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2990
  call void @llvm.dbg.value(metadata i64 %16, metadata !661, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata ptr %0, metadata !2805, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i64 %16, metadata !2808, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i64 1, metadata !2809, metadata !DIExpression()), !dbg !3005
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3007
  call void @llvm.dbg.value(metadata ptr %17, metadata !2813, metadata !DIExpression()), !dbg !3008
  %18 = icmp eq ptr %17, null, !dbg !3010
  br i1 %18, label %19, label %20, !dbg !3011

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !3012
  unreachable, !dbg !3012

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !658, metadata !DIExpression()), !dbg !2990
  store i64 %16, ptr %1, align 8, !dbg !3013, !tbaa !2092
  ret ptr %17, !dbg !3014
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !653 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !658, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata ptr %1, metadata !659, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i64 %2, metadata !660, metadata !DIExpression()), !dbg !3015
  %4 = load i64, ptr %1, align 8, !dbg !3016, !tbaa !2092
  call void @llvm.dbg.value(metadata i64 %4, metadata !661, metadata !DIExpression()), !dbg !3015
  %5 = icmp eq ptr %0, null, !dbg !3017
  br i1 %5, label %6, label %13, !dbg !3018

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3019
  br i1 %7, label %8, label %20, !dbg !3020

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3021
  call void @llvm.dbg.value(metadata i64 %9, metadata !661, metadata !DIExpression()), !dbg !3015
  %10 = icmp ugt i64 %2, 128, !dbg !3023
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3024
  call void @llvm.dbg.value(metadata i64 %12, metadata !661, metadata !DIExpression()), !dbg !3015
  br label %20, !dbg !3025

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3026
  %15 = add nuw i64 %14, 1, !dbg !3026
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3026
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3026
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3026
  call void @llvm.dbg.value(metadata i64 %18, metadata !661, metadata !DIExpression()), !dbg !3015
  br i1 %17, label %19, label %20, !dbg !3027

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !3028
  unreachable, !dbg !3028

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3015
  call void @llvm.dbg.value(metadata i64 %21, metadata !661, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata ptr %0, metadata !2805, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %21, metadata !2808, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %2, metadata !2809, metadata !DIExpression()), !dbg !3029
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3031
  call void @llvm.dbg.value(metadata ptr %22, metadata !2813, metadata !DIExpression()), !dbg !3032
  %23 = icmp eq ptr %22, null, !dbg !3034
  br i1 %23, label %24, label %25, !dbg !3035

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !3036
  unreachable, !dbg !3036

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !658, metadata !DIExpression()), !dbg !3015
  store i64 %21, ptr %1, align 8, !dbg !3037, !tbaa !2092
  ret ptr %22, !dbg !3038
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !665 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !673, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata ptr %1, metadata !674, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64 %2, metadata !675, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64 %3, metadata !676, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64 %4, metadata !677, metadata !DIExpression()), !dbg !3039
  %6 = load i64, ptr %1, align 8, !dbg !3040, !tbaa !2092
  call void @llvm.dbg.value(metadata i64 %6, metadata !678, metadata !DIExpression()), !dbg !3039
  %7 = ashr i64 %6, 1, !dbg !3041
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3041
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3041
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3041
  call void @llvm.dbg.value(metadata i64 %10, metadata !679, metadata !DIExpression()), !dbg !3039
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3043
  call void @llvm.dbg.value(metadata i64 %11, metadata !679, metadata !DIExpression()), !dbg !3039
  %12 = icmp sgt i64 %3, -1, !dbg !3044
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3046
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3046
  call void @llvm.dbg.value(metadata i64 %15, metadata !679, metadata !DIExpression()), !dbg !3039
  %16 = icmp slt i64 %4, 0, !dbg !3047
  br i1 %16, label %17, label %30, !dbg !3047

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3047
  br i1 %18, label %19, label %24, !dbg !3047

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3047
  %21 = udiv i64 9223372036854775807, %20, !dbg !3047
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3047
  br i1 %23, label %46, label %43, !dbg !3047

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3047
  br i1 %25, label %43, label %26, !dbg !3047

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3047
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3047
  %29 = icmp ult i64 %28, %15, !dbg !3047
  br i1 %29, label %46, label %43, !dbg !3047

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3047
  br i1 %31, label %43, label %32, !dbg !3047

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3047
  br i1 %33, label %34, label %40, !dbg !3047

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3047
  br i1 %35, label %43, label %36, !dbg !3047

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3047
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3047
  %39 = icmp ult i64 %38, %4, !dbg !3047
  br i1 %39, label %46, label %43, !dbg !3047

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3047
  br i1 %42, label %46, label %43, !dbg !3047

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !680, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3039
  %44 = mul i64 %15, %4, !dbg !3047
  call void @llvm.dbg.value(metadata i64 %44, metadata !680, metadata !DIExpression()), !dbg !3039
  %45 = icmp slt i64 %44, 128, !dbg !3047
  br i1 %45, label %46, label %51, !dbg !3047

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !681, metadata !DIExpression()), !dbg !3039
  %48 = sdiv i64 %47, %4, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %48, metadata !679, metadata !DIExpression()), !dbg !3039
  %49 = srem i64 %47, %4, !dbg !3051
  %50 = sub nsw i64 %47, %49, !dbg !3052
  call void @llvm.dbg.value(metadata i64 %50, metadata !680, metadata !DIExpression()), !dbg !3039
  br label %51, !dbg !3053

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3039
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3039
  call void @llvm.dbg.value(metadata i64 %53, metadata !680, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64 %52, metadata !679, metadata !DIExpression()), !dbg !3039
  %54 = icmp eq ptr %0, null, !dbg !3054
  br i1 %54, label %55, label %56, !dbg !3056

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3057, !tbaa !2092
  br label %56, !dbg !3058

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3059
  %58 = icmp slt i64 %57, %2, !dbg !3061
  br i1 %58, label %59, label %96, !dbg !3062

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3063
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3063
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %62, metadata !679, metadata !DIExpression()), !dbg !3039
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3064
  br i1 %65, label %95, label %66, !dbg !3064

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3065

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3065
  br i1 %68, label %69, label %74, !dbg !3065

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3065
  %71 = udiv i64 9223372036854775807, %70, !dbg !3065
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3065
  br i1 %73, label %95, label %93, !dbg !3065

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3065
  br i1 %75, label %93, label %76, !dbg !3065

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3065
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3065
  %79 = icmp ult i64 %78, %62, !dbg !3065
  br i1 %79, label %95, label %93, !dbg !3065

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3065
  br i1 %81, label %93, label %82, !dbg !3065

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3065
  br i1 %83, label %84, label %90, !dbg !3065

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3065
  br i1 %85, label %93, label %86, !dbg !3065

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3065
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3065
  %89 = icmp ult i64 %88, %4, !dbg !3065
  br i1 %89, label %95, label %93, !dbg !3065

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3065
  br i1 %92, label %95, label %93, !dbg !3065

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !680, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3039
  %94 = mul i64 %62, %4, !dbg !3065
  call void @llvm.dbg.value(metadata i64 %94, metadata !680, metadata !DIExpression()), !dbg !3039
  br label %96, !dbg !3066

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #37, !dbg !3067
  unreachable, !dbg !3067

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3039
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3039
  call void @llvm.dbg.value(metadata i64 %98, metadata !680, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64 %97, metadata !679, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata ptr %0, metadata !2885, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i64 %98, metadata !2886, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata ptr %0, metadata !2888, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i64 %98, metadata !2892, metadata !DIExpression()), !dbg !3070
  %99 = icmp eq i64 %98, 0, !dbg !3072
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3072
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #42, !dbg !3073
  call void @llvm.dbg.value(metadata ptr %101, metadata !2813, metadata !DIExpression()), !dbg !3074
  %102 = icmp eq ptr %101, null, !dbg !3076
  br i1 %102, label %103, label %104, !dbg !3077

103:                                              ; preds = %96
  tail call void @xalloc_die() #37, !dbg !3078
  unreachable, !dbg !3078

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !673, metadata !DIExpression()), !dbg !3039
  store i64 %97, ptr %1, align 8, !dbg !3079, !tbaa !2092
  ret ptr %101, !dbg !3080
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3081 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3083, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 %0, metadata !3085, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i64 1, metadata !3088, metadata !DIExpression()), !dbg !3089
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3091
  call void @llvm.dbg.value(metadata ptr %2, metadata !2813, metadata !DIExpression()), !dbg !3092
  %3 = icmp eq ptr %2, null, !dbg !3094
  br i1 %3, label %4, label %5, !dbg !3095

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3096
  unreachable, !dbg !3096

5:                                                ; preds = %1
  ret ptr %2, !dbg !3097
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3098 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3086 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3085, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %1, metadata !3088, metadata !DIExpression()), !dbg !3099
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3100
  call void @llvm.dbg.value(metadata ptr %3, metadata !2813, metadata !DIExpression()), !dbg !3101
  %4 = icmp eq ptr %3, null, !dbg !3103
  br i1 %4, label %5, label %6, !dbg !3104

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3105
  unreachable, !dbg !3105

6:                                                ; preds = %2
  ret ptr %3, !dbg !3106
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3107 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3109, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %0, metadata !3111, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i64 1, metadata !3114, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i64 %0, metadata !3117, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 1, metadata !3120, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %0, metadata !3117, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 1, metadata !3120, metadata !DIExpression()), !dbg !3121
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3123
  call void @llvm.dbg.value(metadata ptr %2, metadata !2813, metadata !DIExpression()), !dbg !3124
  %3 = icmp eq ptr %2, null, !dbg !3126
  br i1 %3, label %4, label %5, !dbg !3127

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3128
  unreachable, !dbg !3128

5:                                                ; preds = %1
  ret ptr %2, !dbg !3129
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3112 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3111, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i64 %1, metadata !3114, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i64 %0, metadata !3117, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %1, metadata !3120, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %0, metadata !3117, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %1, metadata !3120, metadata !DIExpression()), !dbg !3131
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3133
  call void @llvm.dbg.value(metadata ptr %3, metadata !2813, metadata !DIExpression()), !dbg !3134
  %4 = icmp eq ptr %3, null, !dbg !3136
  br i1 %4, label %5, label %6, !dbg !3137

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3138
  unreachable, !dbg !3138

6:                                                ; preds = %2
  ret ptr %3, !dbg !3139
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3140 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3144, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i64 %1, metadata !3145, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i64 %1, metadata !2837, metadata !DIExpression()), !dbg !3147
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3149
  call void @llvm.dbg.value(metadata ptr %3, metadata !2813, metadata !DIExpression()), !dbg !3150
  %4 = icmp eq ptr %3, null, !dbg !3152
  br i1 %4, label %5, label %6, !dbg !3153

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3154
  unreachable, !dbg !3154

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3155, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata ptr %0, metadata !3161, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %1, metadata !3162, metadata !DIExpression()), !dbg !3163
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3165
  ret ptr %3, !dbg !3166
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3167 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3171, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %1, metadata !3172, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %1, metadata !2851, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i64 %1, metadata !2853, metadata !DIExpression()), !dbg !3176
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3178
  call void @llvm.dbg.value(metadata ptr %3, metadata !2813, metadata !DIExpression()), !dbg !3179
  %4 = icmp eq ptr %3, null, !dbg !3181
  br i1 %4, label %5, label %6, !dbg !3182

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3183
  unreachable, !dbg !3183

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3155, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata ptr %0, metadata !3161, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i64 %1, metadata !3162, metadata !DIExpression()), !dbg !3184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3186
  ret ptr %3, !dbg !3187
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3188 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3192, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 %1, metadata !3193, metadata !DIExpression()), !dbg !3195
  %3 = add nsw i64 %1, 1, !dbg !3196
  call void @llvm.dbg.value(metadata i64 %3, metadata !2851, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 %3, metadata !2853, metadata !DIExpression()), !dbg !3199
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3201
  call void @llvm.dbg.value(metadata ptr %4, metadata !2813, metadata !DIExpression()), !dbg !3202
  %5 = icmp eq ptr %4, null, !dbg !3204
  br i1 %5, label %6, label %7, !dbg !3205

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3206
  unreachable, !dbg !3206

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3194, metadata !DIExpression()), !dbg !3195
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3207
  store i8 0, ptr %8, align 1, !dbg !3208, !tbaa !749
  call void @llvm.dbg.value(metadata ptr %4, metadata !3155, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata ptr %0, metadata !3161, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %1, metadata !3162, metadata !DIExpression()), !dbg !3209
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3211
  ret ptr %4, !dbg !3212
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3213 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3215, metadata !DIExpression()), !dbg !3216
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3217
  %3 = add i64 %2, 1, !dbg !3218
  call void @llvm.dbg.value(metadata ptr %0, metadata !3144, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %3, metadata !3145, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %3, metadata !2837, metadata !DIExpression()), !dbg !3221
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3223
  call void @llvm.dbg.value(metadata ptr %4, metadata !2813, metadata !DIExpression()), !dbg !3224
  %5 = icmp eq ptr %4, null, !dbg !3226
  br i1 %5, label %6, label %7, !dbg !3227

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3228
  unreachable, !dbg !3228

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3155, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr %0, metadata !3161, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %3, metadata !3162, metadata !DIExpression()), !dbg !3229
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3231
  ret ptr %4, !dbg !3232
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3233 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3238, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %1, metadata !3235, metadata !DIExpression()), !dbg !3239
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.101, ptr noundef nonnull @.str.2.102, i32 noundef 5) #36, !dbg !3238
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.103, ptr noundef %2) #36, !dbg !3238
  %3 = icmp eq i32 %1, 0, !dbg !3238
  tail call void @llvm.assume(i1 %3), !dbg !3238
  tail call void @abort() #37, !dbg !3240
  unreachable, !dbg !3240
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3241 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3279, metadata !DIExpression()), !dbg !3284
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3285
  call void @llvm.dbg.value(metadata i1 poison, metadata !3280, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3284
  call void @llvm.dbg.value(metadata ptr %0, metadata !3286, metadata !DIExpression()), !dbg !3289
  %3 = load i32, ptr %0, align 8, !dbg !3291, !tbaa !3292
  %4 = and i32 %3, 32, !dbg !3293
  %5 = icmp eq i32 %4, 0, !dbg !3293
  call void @llvm.dbg.value(metadata i1 %5, metadata !3282, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3284
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3294
  %7 = icmp eq i32 %6, 0, !dbg !3295
  call void @llvm.dbg.value(metadata i1 %7, metadata !3283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3284
  br i1 %5, label %8, label %18, !dbg !3296

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3298
  call void @llvm.dbg.value(metadata i1 %9, metadata !3280, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3284
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3299
  %11 = xor i1 %7, true, !dbg !3299
  %12 = sext i1 %11 to i32, !dbg !3299
  br i1 %10, label %21, label %13, !dbg !3299

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3300
  %15 = load i32, ptr %14, align 4, !dbg !3300, !tbaa !740
  %16 = icmp ne i32 %15, 9, !dbg !3301
  %17 = sext i1 %16 to i32, !dbg !3302
  br label %21, !dbg !3302

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3303

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3305
  store i32 0, ptr %20, align 4, !dbg !3307, !tbaa !740
  br label %21, !dbg !3305

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3284
  ret i32 %22, !dbg !3308
}

; Function Attrs: nounwind
declare !dbg !3309 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3313 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3351, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i32 0, metadata !3352, metadata !DIExpression()), !dbg !3355
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3356
  call void @llvm.dbg.value(metadata i32 %2, metadata !3353, metadata !DIExpression()), !dbg !3355
  %3 = icmp slt i32 %2, 0, !dbg !3357
  br i1 %3, label %4, label %6, !dbg !3359

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3360
  br label %24, !dbg !3361

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3362
  %8 = icmp eq i32 %7, 0, !dbg !3362
  br i1 %8, label %13, label %9, !dbg !3364

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3365
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3366
  %12 = icmp eq i64 %11, -1, !dbg !3367
  br i1 %12, label %16, label %13, !dbg !3368

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3369
  %15 = icmp eq i32 %14, 0, !dbg !3369
  br i1 %15, label %16, label %18, !dbg !3370

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3352, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i32 0, metadata !3354, metadata !DIExpression()), !dbg !3355
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3371
  call void @llvm.dbg.value(metadata i32 %17, metadata !3354, metadata !DIExpression()), !dbg !3355
  br label %24, !dbg !3372

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3373
  %20 = load i32, ptr %19, align 4, !dbg !3373, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %20, metadata !3352, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i32 0, metadata !3354, metadata !DIExpression()), !dbg !3355
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3371
  call void @llvm.dbg.value(metadata i32 %21, metadata !3354, metadata !DIExpression()), !dbg !3355
  %22 = icmp eq i32 %20, 0, !dbg !3374
  br i1 %22, label %24, label %23, !dbg !3372

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3376, !tbaa !740
  call void @llvm.dbg.value(metadata i32 -1, metadata !3354, metadata !DIExpression()), !dbg !3355
  br label %24, !dbg !3378

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3355
  ret i32 %25, !dbg !3379
}

; Function Attrs: nofree nounwind
declare !dbg !3380 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !3381 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3382 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3383 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3386 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3424, metadata !DIExpression()), !dbg !3425
  %2 = icmp eq ptr %0, null, !dbg !3426
  br i1 %2, label %6, label %3, !dbg !3428

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3429
  %5 = icmp eq i32 %4, 0, !dbg !3429
  br i1 %5, label %6, label %8, !dbg !3430

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3431
  br label %16, !dbg !3432

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3433, metadata !DIExpression()), !dbg !3438
  %9 = load i32, ptr %0, align 8, !dbg !3440, !tbaa !3292
  %10 = and i32 %9, 256, !dbg !3442
  %11 = icmp eq i32 %10, 0, !dbg !3442
  br i1 %11, label %14, label %12, !dbg !3443

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3444
  br label %14, !dbg !3444

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3445
  br label %16, !dbg !3446

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3425
  ret i32 %17, !dbg !3447
}

; Function Attrs: nofree nounwind
declare !dbg !3448 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3449 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3488, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i64 %1, metadata !3489, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i32 %2, metadata !3490, metadata !DIExpression()), !dbg !3494
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3495
  %5 = load ptr, ptr %4, align 8, !dbg !3495, !tbaa !3496
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3497
  %7 = load ptr, ptr %6, align 8, !dbg !3497, !tbaa !3498
  %8 = icmp eq ptr %5, %7, !dbg !3499
  br i1 %8, label %9, label %27, !dbg !3500

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3501
  %11 = load ptr, ptr %10, align 8, !dbg !3501, !tbaa !1155
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3502
  %13 = load ptr, ptr %12, align 8, !dbg !3502, !tbaa !3503
  %14 = icmp eq ptr %11, %13, !dbg !3504
  br i1 %14, label %15, label %27, !dbg !3505

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3506
  %17 = load ptr, ptr %16, align 8, !dbg !3506, !tbaa !3507
  %18 = icmp eq ptr %17, null, !dbg !3508
  br i1 %18, label %19, label %27, !dbg !3509

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3510
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3511
  call void @llvm.dbg.value(metadata i64 %21, metadata !3491, metadata !DIExpression()), !dbg !3512
  %22 = icmp eq i64 %21, -1, !dbg !3513
  br i1 %22, label %29, label %23, !dbg !3515

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3516, !tbaa !3292
  %25 = and i32 %24, -17, !dbg !3516
  store i32 %25, ptr %0, align 8, !dbg !3516, !tbaa !3292
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3517
  store i64 %21, ptr %26, align 8, !dbg !3518, !tbaa !3519
  br label %29, !dbg !3520

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3521
  br label %29, !dbg !3522

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3494
  ret i32 %30, !dbg !3523
}

; Function Attrs: nofree nounwind
declare !dbg !3524 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3527 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3532, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata ptr %1, metadata !3533, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i64 %2, metadata !3534, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata ptr %3, metadata !3535, metadata !DIExpression()), !dbg !3537
  %5 = icmp eq ptr %1, null, !dbg !3538
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3540
  %7 = select i1 %5, ptr @.str.114, ptr %1, !dbg !3540
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3540
  call void @llvm.dbg.value(metadata i64 %8, metadata !3534, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata ptr %7, metadata !3533, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata ptr %6, metadata !3532, metadata !DIExpression()), !dbg !3537
  %9 = icmp eq ptr %3, null, !dbg !3541
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3543
  call void @llvm.dbg.value(metadata ptr %10, metadata !3535, metadata !DIExpression()), !dbg !3537
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3544
  call void @llvm.dbg.value(metadata i64 %11, metadata !3536, metadata !DIExpression()), !dbg !3537
  %12 = icmp ult i64 %11, -3, !dbg !3545
  br i1 %12, label %13, label %17, !dbg !3547

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #38, !dbg !3548
  %15 = icmp eq i32 %14, 0, !dbg !3548
  br i1 %15, label %16, label %29, !dbg !3549

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3550, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata ptr %10, metadata !3557, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 0, metadata !3560, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i64 8, metadata !3561, metadata !DIExpression()), !dbg !3562
  store i64 0, ptr %10, align 1, !dbg !3564
  br label %29, !dbg !3565

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3566
  br i1 %18, label %19, label %20, !dbg !3568

19:                                               ; preds = %17
  tail call void @abort() #37, !dbg !3569
  unreachable, !dbg !3569

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3570

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #36, !dbg !3572
  br i1 %23, label %29, label %24, !dbg !3573

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3574
  br i1 %25, label %29, label %26, !dbg !3577

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3578, !tbaa !749
  %28 = zext i8 %27 to i32, !dbg !3579
  store i32 %28, ptr %6, align 4, !dbg !3580, !tbaa !740
  br label %29, !dbg !3581

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3537
  ret i64 %30, !dbg !3582
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3583 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3589 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3591, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i64 %1, metadata !3592, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i64 %2, metadata !3593, metadata !DIExpression()), !dbg !3595
  %4 = icmp eq i64 %2, 0, !dbg !3596
  br i1 %4, label %8, label %5, !dbg !3596

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3596
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3596
  br i1 %7, label %13, label %8, !dbg !3596

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3594, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3595
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3594, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3595
  %9 = mul i64 %2, %1, !dbg !3596
  call void @llvm.dbg.value(metadata i64 %9, metadata !3594, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata ptr %0, metadata !3598, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i64 %9, metadata !3601, metadata !DIExpression()), !dbg !3602
  %10 = icmp eq i64 %9, 0, !dbg !3604
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3604
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3605
  br label %15, !dbg !3606

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3594, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3595
  %14 = tail call ptr @__errno_location() #39, !dbg !3607
  store i32 12, ptr %14, align 4, !dbg !3609, !tbaa !740
  br label %15, !dbg !3610

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3595
  ret ptr %16, !dbg !3611
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3612 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3616, metadata !DIExpression()), !dbg !3621
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !3622
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3617, metadata !DIExpression()), !dbg !3623
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !3624
  %4 = icmp eq i32 %3, 0, !dbg !3624
  br i1 %4, label %5, label %12, !dbg !3626

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3627, metadata !DIExpression()), !dbg !3631
  %6 = load i16, ptr %2, align 16, !dbg !3634
  %7 = icmp eq i16 %6, 67, !dbg !3634
  br i1 %7, label %11, label %8, !dbg !3635

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3627, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata ptr @.str.1.119, metadata !3630, metadata !DIExpression()), !dbg !3636
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.119, i64 6), !dbg !3638
  %10 = icmp eq i32 %9, 0, !dbg !3639
  br i1 %10, label %11, label %12, !dbg !3640

11:                                               ; preds = %8, %5
  br label %12, !dbg !3641

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3621
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !3642
  ret i1 %13, !dbg !3642
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3643 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3647, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata ptr %1, metadata !3648, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i64 %2, metadata !3649, metadata !DIExpression()), !dbg !3650
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !3651
  ret i32 %4, !dbg !3652
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3653 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3657, metadata !DIExpression()), !dbg !3658
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !3659
  ret ptr %2, !dbg !3660
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3661 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3663, metadata !DIExpression()), !dbg !3665
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3666
  call void @llvm.dbg.value(metadata ptr %2, metadata !3664, metadata !DIExpression()), !dbg !3665
  ret ptr %2, !dbg !3667
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3668 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3670, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata ptr %1, metadata !3671, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i64 %2, metadata !3672, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i32 %0, metadata !3663, metadata !DIExpression()), !dbg !3678
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3680
  call void @llvm.dbg.value(metadata ptr %4, metadata !3664, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata ptr %4, metadata !3673, metadata !DIExpression()), !dbg !3677
  %5 = icmp eq ptr %4, null, !dbg !3681
  br i1 %5, label %6, label %9, !dbg !3682

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3683
  br i1 %7, label %19, label %8, !dbg !3686

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3687, !tbaa !749
  br label %19, !dbg !3688

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3689
  call void @llvm.dbg.value(metadata i64 %10, metadata !3674, metadata !DIExpression()), !dbg !3690
  %11 = icmp ult i64 %10, %2, !dbg !3691
  br i1 %11, label %12, label %14, !dbg !3693

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3694
  call void @llvm.dbg.value(metadata ptr %1, metadata !3696, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata ptr %4, metadata !3699, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %13, metadata !3700, metadata !DIExpression()), !dbg !3701
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !3703
  br label %19, !dbg !3704

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3705
  br i1 %15, label %19, label %16, !dbg !3708

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3709
  call void @llvm.dbg.value(metadata ptr %1, metadata !3696, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata ptr %4, metadata !3699, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i64 %17, metadata !3700, metadata !DIExpression()), !dbg !3711
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !3713
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3714
  store i8 0, ptr %18, align 1, !dbg !3715, !tbaa !749
  br label %19, !dbg !3716

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3717
  ret i32 %20, !dbg !3718
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

!llvm.dbg.cu = !{!74, !293, !297, !312, !608, !640, !364, !378, !426, !642, !600, !649, !683, !685, !687, !689, !691, !624, !693, !696, !700, !702}
!llvm.ident = !{!704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704}
!llvm.module.flags = !{!705, !706, !707, !708, !709, !710}

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
!311 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !312, file: !313, line: 66, type: !359, isLocal: false, isDefinition: true)
!312 = distinct !DICompileUnit(language: DW_LANG_C11, file: !313, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !314, globals: !315, splitDebugInlining: false, nameTableKind: None)
!313 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!314 = !{!94, !100}
!315 = !{!316, !318, !338, !340, !342, !344, !310, !346, !348, !350, !352, !357}
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !313, line: 272, type: !9, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "old_file_name", scope: !320, file: !313, line: 304, type: !72, isLocal: true, isDefinition: true)
!320 = distinct !DISubprogram(name: "verror_at_line", scope: !313, file: !313, line: 298, type: !321, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !331)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !95, !95, !72, !78, !72, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !325)
!325 = !{!326, !328, !329, !330}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !324, file: !327, baseType: !78, size: 32)
!327 = !DIFile(filename: "lib/error.c", directory: "/src")
!328 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !324, file: !327, baseType: !78, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !324, file: !327, baseType: !94, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !324, file: !327, baseType: !94, size: 64, offset: 128)
!331 = !{!332, !333, !334, !335, !336, !337}
!332 = !DILocalVariable(name: "status", arg: 1, scope: !320, file: !313, line: 298, type: !95)
!333 = !DILocalVariable(name: "errnum", arg: 2, scope: !320, file: !313, line: 298, type: !95)
!334 = !DILocalVariable(name: "file_name", arg: 3, scope: !320, file: !313, line: 298, type: !72)
!335 = !DILocalVariable(name: "line_number", arg: 4, scope: !320, file: !313, line: 298, type: !78)
!336 = !DILocalVariable(name: "message", arg: 5, scope: !320, file: !313, line: 298, type: !72)
!337 = !DILocalVariable(name: "args", arg: 6, scope: !320, file: !313, line: 298, type: !323)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(name: "old_line_number", scope: !320, file: !313, line: 305, type: !78, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !313, line: 338, type: !108, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !313, line: 346, type: !140, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !313, line: 346, type: !118, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "error_message_count", scope: !312, file: !313, line: 69, type: !78, isLocal: false, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !312, file: !313, line: 295, type: !95, isLocal: false, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !313, line: 208, type: !51, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !313, line: 208, type: !354, isLocal: true, isDefinition: true)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 21)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !313, line: 214, type: !9, isLocal: true, isDefinition: true)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null}
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(name: "program_name", scope: !364, file: !365, line: 31, type: !72, isLocal: false, isDefinition: true)
!364 = distinct !DICompileUnit(language: DW_LANG_C11, file: !365, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !366, globals: !367, splitDebugInlining: false, nameTableKind: None)
!365 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!366 = !{!93}
!367 = !{!362, !368, !370}
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !365, line: 46, type: !140, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !365, line: 49, type: !108, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "utf07FF", scope: !374, file: !375, line: 46, type: !402, isLocal: true, isDefinition: true)
!374 = distinct !DISubprogram(name: "proper_name_lite", scope: !375, file: !375, line: 38, type: !376, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !380)
!375 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!376 = !DISubroutineType(types: !377)
!377 = !{!72, !72, !72}
!378 = distinct !DICompileUnit(language: DW_LANG_C11, file: !375, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !379, splitDebugInlining: false, nameTableKind: None)
!379 = !{!372}
!380 = !{!381, !382, !383, !384, !389}
!381 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !374, file: !375, line: 38, type: !72)
!382 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !374, file: !375, line: 38, type: !72)
!383 = !DILocalVariable(name: "translation", scope: !374, file: !375, line: 40, type: !72)
!384 = !DILocalVariable(name: "w", scope: !374, file: !375, line: 47, type: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !386, line: 37, baseType: !387)
!386 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !257, line: 57, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !257, line: 42, baseType: !78)
!389 = !DILocalVariable(name: "mbs", scope: !374, file: !375, line: 48, type: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !391, line: 6, baseType: !392)
!391 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !393, line: 21, baseType: !394)
!393 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 13, size: 64, elements: !395)
!395 = !{!396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !394, file: !393, line: 15, baseType: !95, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !394, file: !393, line: 20, baseType: !398, size: 32, offset: 32)
!398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !393, line: 16, size: 32, elements: !399)
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !398, file: !393, line: 18, baseType: !78, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !398, file: !393, line: 19, baseType: !108, size: 32)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 16, elements: !119)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !405, line: 78, type: !140, isLocal: true, isDefinition: true)
!405 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !405, line: 79, type: !113, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !405, line: 80, type: !63, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !405, line: 81, type: !63, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !405, line: 82, type: !279, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !405, line: 83, type: !118, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !405, line: 84, type: !140, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !405, line: 85, type: !51, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !405, line: 86, type: !51, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !405, line: 87, type: !140, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !426, file: !405, line: 76, type: !512, isLocal: false, isDefinition: true)
!426 = distinct !DICompileUnit(language: DW_LANG_C11, file: !405, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !427, retainedTypes: !447, globals: !448, splitDebugInlining: false, nameTableKind: None)
!427 = !{!428, !442, !76}
!428 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !429, line: 42, baseType: !78, size: 32, elements: !430)
!429 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!430 = !{!431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441}
!431 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!432 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!433 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!434 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!435 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!436 = !DIEnumerator(name: "c_quoting_style", value: 5)
!437 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!438 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!439 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!440 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!441 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!442 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !429, line: 254, baseType: !78, size: 32, elements: !443)
!443 = !{!444, !445, !446}
!444 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!445 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!446 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!447 = !{!95, !96, !97}
!448 = !{!403, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !449, !453, !463, !465, !470, !472, !474, !476, !478, !501, !508, !510}
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !426, file: !405, line: 92, type: !451, isLocal: false, isDefinition: true)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 320, elements: !42)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !426, file: !405, line: 1040, type: !455, isLocal: false, isDefinition: true)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !405, line: 56, size: 448, elements: !456)
!456 = !{!457, !458, !459, !461, !462}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !455, file: !405, line: 59, baseType: !428, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !405, line: 62, baseType: !95, size: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !455, file: !405, line: 66, baseType: !460, size: 256, offset: 64)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !141)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !455, file: !405, line: 69, baseType: !72, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !455, file: !405, line: 72, baseType: !72, size: 64, offset: 384)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !426, file: !405, line: 107, type: !455, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(name: "slot0", scope: !426, file: !405, line: 831, type: !467, isLocal: true, isDefinition: true)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 256)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !405, line: 321, type: !118, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !405, line: 357, type: !118, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !405, line: 358, type: !118, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !405, line: 199, type: !51, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(name: "quote", scope: !480, file: !405, line: 228, type: !499, isLocal: true, isDefinition: true)
!480 = distinct !DISubprogram(name: "gettext_quote", scope: !405, file: !405, line: 197, type: !481, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !483)
!481 = !DISubroutineType(types: !482)
!482 = !{!72, !72, !428}
!483 = !{!484, !485, !486, !487, !488}
!484 = !DILocalVariable(name: "msgid", arg: 1, scope: !480, file: !405, line: 197, type: !72)
!485 = !DILocalVariable(name: "s", arg: 2, scope: !480, file: !405, line: 197, type: !428)
!486 = !DILocalVariable(name: "translation", scope: !480, file: !405, line: 199, type: !72)
!487 = !DILocalVariable(name: "w", scope: !480, file: !405, line: 229, type: !385)
!488 = !DILocalVariable(name: "mbs", scope: !480, file: !405, line: 230, type: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !391, line: 6, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !393, line: 21, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 13, size: 64, elements: !492)
!492 = !{!493, !494}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !491, file: !393, line: 15, baseType: !95, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !491, file: !393, line: 20, baseType: !495, size: 32, offset: 32)
!495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !491, file: !393, line: 16, size: 32, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !495, file: !393, line: 18, baseType: !78, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !495, file: !393, line: 19, baseType: !108, size: 32)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !500)
!500 = !{!120, !110}
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(name: "slotvec", scope: !426, file: !405, line: 834, type: !503, isLocal: true, isDefinition: true)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !405, line: 823, size: 128, elements: !505)
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !504, file: !405, line: 825, baseType: !97, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !504, file: !405, line: 826, baseType: !93, size: 64, offset: 64)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "nslots", scope: !426, file: !405, line: 832, type: !95, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "slotvec0", scope: !426, file: !405, line: 833, type: !504, isLocal: true, isDefinition: true)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 704, elements: !514)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!514 = !{!515}
!515 = !DISubrange(count: 11)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !518, line: 67, type: !207, isLocal: true, isDefinition: true)
!518 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !518, line: 69, type: !51, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !518, line: 83, type: !51, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !518, line: 83, type: !108, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !518, line: 85, type: !118, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !518, line: 88, type: !529, isLocal: true, isDefinition: true)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 171)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !518, line: 88, type: !534, isLocal: true, isDefinition: true)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 34)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !518, line: 105, type: !178, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !518, line: 109, type: !541, isLocal: true, isDefinition: true)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 23)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !518, line: 113, type: !546, isLocal: true, isDefinition: true)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 28)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !518, line: 120, type: !551, isLocal: true, isDefinition: true)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 32)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !518, line: 127, type: !556, isLocal: true, isDefinition: true)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 36)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !518, line: 134, type: !158, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !518, line: 142, type: !14, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !518, line: 150, type: !565, isLocal: true, isDefinition: true)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: 48)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !518, line: 159, type: !570, isLocal: true, isDefinition: true)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 52)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !518, line: 170, type: !575, isLocal: true, isDefinition: true)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 60)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !518, line: 248, type: !279, isLocal: true, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !518, line: 248, type: !183, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !518, line: 254, type: !279, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !518, line: 254, type: !58, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !518, line: 254, type: !158, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !518, line: 259, type: !590, isLocal: true, isDefinition: true)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 39)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !518, line: 259, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 29)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !600, file: !601, line: 26, type: !603, isLocal: false, isDefinition: true)
!600 = distinct !DICompileUnit(language: DW_LANG_C11, file: !601, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !602, splitDebugInlining: false, nameTableKind: None)
!601 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!602 = !{!598}
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 376, elements: !604)
!604 = !{!605}
!605 = !DISubrange(count: 47)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(name: "exit_failure", scope: !608, file: !609, line: 24, type: !611, isLocal: false, isDefinition: true)
!608 = distinct !DICompileUnit(language: DW_LANG_C11, file: !609, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !610, splitDebugInlining: false, nameTableKind: None)
!609 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!610 = !{!606}
!611 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !95)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !614, line: 34, type: !127, isLocal: true, isDefinition: true)
!614 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !614, line: 34, type: !51, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !614, line: 34, type: !153, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !621, line: 108, type: !36, isLocal: true, isDefinition: true)
!621 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(name: "internal_state", scope: !624, file: !621, line: 97, type: !627, isLocal: true, isDefinition: true)
!624 = distinct !DICompileUnit(language: DW_LANG_C11, file: !621, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !625, globals: !626, splitDebugInlining: false, nameTableKind: None)
!625 = !{!94, !97, !100}
!626 = !{!619, !622}
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !391, line: 6, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !393, line: 21, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 13, size: 64, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !629, file: !393, line: 15, baseType: !95, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !629, file: !393, line: 20, baseType: !633, size: 32, offset: 32)
!633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !629, file: !393, line: 16, size: 32, elements: !634)
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !633, file: !393, line: 18, baseType: !78, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !633, file: !393, line: 19, baseType: !108, size: 32)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !639, line: 35, type: !113, isLocal: true, isDefinition: true)
!639 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!640 = distinct !DICompileUnit(language: DW_LANG_C11, file: !641, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!641 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!642 = distinct !DICompileUnit(language: DW_LANG_C11, file: !518, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !643, retainedTypes: !647, globals: !648, splitDebugInlining: false, nameTableKind: None)
!643 = !{!644}
!644 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !518, line: 40, baseType: !78, size: 32, elements: !645)
!645 = !{!646}
!646 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!647 = !{!94}
!648 = !{!516, !519, !521, !523, !525, !527, !532, !537, !539, !544, !549, !554, !559, !561, !563, !568, !573, !578, !580, !582, !584, !586, !588, !593}
!649 = distinct !DICompileUnit(language: DW_LANG_C11, file: !650, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !651, retainedTypes: !682, splitDebugInlining: false, nameTableKind: None)
!650 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!651 = !{!652, !664}
!652 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !653, file: !650, line: 188, baseType: !78, size: 32, elements: !662)
!653 = distinct !DISubprogram(name: "x2nrealloc", scope: !650, file: !650, line: 176, type: !654, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !657)
!654 = !DISubroutineType(types: !655)
!655 = !{!94, !94, !656, !97}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!657 = !{!658, !659, !660, !661}
!658 = !DILocalVariable(name: "p", arg: 1, scope: !653, file: !650, line: 176, type: !94)
!659 = !DILocalVariable(name: "pn", arg: 2, scope: !653, file: !650, line: 176, type: !656)
!660 = !DILocalVariable(name: "s", arg: 3, scope: !653, file: !650, line: 176, type: !97)
!661 = !DILocalVariable(name: "n", scope: !653, file: !650, line: 178, type: !97)
!662 = !{!663}
!663 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!664 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !665, file: !650, line: 228, baseType: !78, size: 32, elements: !662)
!665 = distinct !DISubprogram(name: "xpalloc", scope: !650, file: !650, line: 223, type: !666, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !672)
!666 = !DISubroutineType(types: !667)
!667 = !{!94, !94, !668, !669, !671, !669}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !670, line: 130, baseType: !671)
!670 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !98, line: 35, baseType: !258)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681}
!673 = !DILocalVariable(name: "pa", arg: 1, scope: !665, file: !650, line: 223, type: !94)
!674 = !DILocalVariable(name: "pn", arg: 2, scope: !665, file: !650, line: 223, type: !668)
!675 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !665, file: !650, line: 223, type: !669)
!676 = !DILocalVariable(name: "n_max", arg: 4, scope: !665, file: !650, line: 223, type: !671)
!677 = !DILocalVariable(name: "s", arg: 5, scope: !665, file: !650, line: 223, type: !669)
!678 = !DILocalVariable(name: "n0", scope: !665, file: !650, line: 230, type: !669)
!679 = !DILocalVariable(name: "n", scope: !665, file: !650, line: 237, type: !669)
!680 = !DILocalVariable(name: "nbytes", scope: !665, file: !650, line: 248, type: !669)
!681 = !DILocalVariable(name: "adjusted_nbytes", scope: !665, file: !650, line: 252, type: !669)
!682 = !{!93, !94, !217, !258, !99}
!683 = distinct !DICompileUnit(language: DW_LANG_C11, file: !614, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !684, splitDebugInlining: false, nameTableKind: None)
!684 = !{!612, !615, !617}
!685 = distinct !DICompileUnit(language: DW_LANG_C11, file: !686, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!686 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!687 = distinct !DICompileUnit(language: DW_LANG_C11, file: !688, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!688 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!689 = distinct !DICompileUnit(language: DW_LANG_C11, file: !690, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !647, splitDebugInlining: false, nameTableKind: None)
!690 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!691 = distinct !DICompileUnit(language: DW_LANG_C11, file: !692, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !647, splitDebugInlining: false, nameTableKind: None)
!692 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!693 = distinct !DICompileUnit(language: DW_LANG_C11, file: !694, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !695, splitDebugInlining: false, nameTableKind: None)
!694 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!695 = !{!217, !99, !94}
!696 = distinct !DICompileUnit(language: DW_LANG_C11, file: !639, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !697, splitDebugInlining: false, nameTableKind: None)
!697 = !{!698, !637}
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !639, line: 35, type: !118, isLocal: true, isDefinition: true)
!700 = distinct !DICompileUnit(language: DW_LANG_C11, file: !701, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!701 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!702 = distinct !DICompileUnit(language: DW_LANG_C11, file: !703, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !647, splitDebugInlining: false, nameTableKind: None)
!703 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!704 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!705 = !{i32 7, !"Dwarf Version", i32 5}
!706 = !{i32 2, !"Debug Info Version", i32 3}
!707 = !{i32 1, !"wchar_size", i32 4}
!708 = !{i32 8, !"PIC Level", i32 2}
!709 = !{i32 7, !"PIE Level", i32 2}
!710 = !{i32 7, !"uwtable", i32 2}
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
!728 = !DISubprogram(name: "dcgettext", scope: !729, file: !729, line: 51, type: !730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!729 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!730 = !DISubroutineType(types: !731)
!731 = !{!93, !72, !72, !95}
!732 = !{}
!733 = !DISubprogram(name: "__printf_chk", scope: !734, file: !734, line: 95, type: !735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!734 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!735 = !DISubroutineType(types: !736)
!736 = !{!95, !95, !737, null}
!737 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !72)
!738 = !DILocation(line: 0, scope: !68)
!739 = !DILocation(line: 581, column: 7, scope: !215)
!740 = !{!741, !741, i64 0}
!741 = !{!"int", !720, i64 0}
!742 = !DILocation(line: 581, column: 19, scope: !215)
!743 = !DILocation(line: 581, column: 7, scope: !68)
!744 = !DILocation(line: 585, column: 26, scope: !214)
!745 = !DILocation(line: 0, scope: !214)
!746 = !DILocation(line: 586, column: 23, scope: !214)
!747 = !DILocation(line: 586, column: 28, scope: !214)
!748 = !DILocation(line: 586, column: 32, scope: !214)
!749 = !{!720, !720, i64 0}
!750 = !DILocation(line: 586, column: 38, scope: !214)
!751 = !DILocalVariable(name: "__s1", arg: 1, scope: !752, file: !753, line: 1359, type: !72)
!752 = distinct !DISubprogram(name: "streq", scope: !753, file: !753, line: 1359, type: !754, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !756)
!753 = !DIFile(filename: "./lib/string.h", directory: "/src")
!754 = !DISubroutineType(types: !755)
!755 = !{!217, !72, !72}
!756 = !{!751, !757}
!757 = !DILocalVariable(name: "__s2", arg: 2, scope: !752, file: !753, line: 1359, type: !72)
!758 = !DILocation(line: 0, scope: !752, inlinedAt: !759)
!759 = distinct !DILocation(line: 586, column: 41, scope: !214)
!760 = !DILocation(line: 1361, column: 11, scope: !752, inlinedAt: !759)
!761 = !DILocation(line: 1361, column: 10, scope: !752, inlinedAt: !759)
!762 = !DILocation(line: 586, column: 19, scope: !214)
!763 = !DILocation(line: 587, column: 5, scope: !214)
!764 = !DILocation(line: 588, column: 7, scope: !765)
!765 = distinct !DILexicalBlock(scope: !68, file: !69, line: 588, column: 7)
!766 = !DILocation(line: 588, column: 7, scope: !68)
!767 = !DILocation(line: 590, column: 7, scope: !768)
!768 = distinct !DILexicalBlock(scope: !765, file: !69, line: 589, column: 5)
!769 = !DILocation(line: 591, column: 7, scope: !768)
!770 = !DILocation(line: 595, column: 37, scope: !68)
!771 = !DILocation(line: 595, column: 35, scope: !68)
!772 = !DILocation(line: 596, column: 29, scope: !68)
!773 = !DILocation(line: 597, column: 8, scope: !223)
!774 = !DILocation(line: 597, column: 7, scope: !68)
!775 = !DILocation(line: 604, column: 24, scope: !222)
!776 = !DILocation(line: 604, column: 12, scope: !223)
!777 = !DILocation(line: 0, scope: !221)
!778 = !DILocation(line: 610, column: 16, scope: !221)
!779 = !DILocation(line: 610, column: 7, scope: !221)
!780 = !DILocation(line: 611, column: 21, scope: !221)
!781 = !{!782, !782, i64 0}
!782 = !{!"short", !720, i64 0}
!783 = !DILocation(line: 611, column: 19, scope: !221)
!784 = !DILocation(line: 611, column: 16, scope: !221)
!785 = !DILocation(line: 610, column: 30, scope: !221)
!786 = distinct !{!786, !779, !780, !787}
!787 = !{!"llvm.loop.mustprogress"}
!788 = !DILocation(line: 612, column: 18, scope: !789)
!789 = distinct !DILexicalBlock(scope: !221, file: !69, line: 612, column: 11)
!790 = !DILocation(line: 612, column: 11, scope: !221)
!791 = !DILocation(line: 618, column: 5, scope: !221)
!792 = !DILocation(line: 620, column: 23, scope: !68)
!793 = !DILocation(line: 625, column: 39, scope: !68)
!794 = !DILocation(line: 626, column: 3, scope: !68)
!795 = !DILocation(line: 626, column: 10, scope: !68)
!796 = !DILocation(line: 626, column: 21, scope: !68)
!797 = !DILocation(line: 628, column: 44, scope: !798)
!798 = distinct !DILexicalBlock(scope: !799, file: !69, line: 628, column: 11)
!799 = distinct !DILexicalBlock(scope: !68, file: !69, line: 627, column: 5)
!800 = !DILocation(line: 628, column: 32, scope: !798)
!801 = !DILocation(line: 628, column: 49, scope: !798)
!802 = !DILocation(line: 628, column: 11, scope: !799)
!803 = !DILocation(line: 630, column: 11, scope: !804)
!804 = distinct !DILexicalBlock(scope: !799, file: !69, line: 630, column: 11)
!805 = !DILocation(line: 630, column: 11, scope: !799)
!806 = !DILocation(line: 632, column: 26, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !69, line: 632, column: 15)
!808 = distinct !DILexicalBlock(scope: !804, file: !69, line: 631, column: 9)
!809 = !DILocation(line: 632, column: 34, scope: !807)
!810 = !DILocation(line: 632, column: 37, scope: !807)
!811 = !DILocation(line: 632, column: 15, scope: !808)
!812 = !DILocation(line: 636, column: 16, scope: !813)
!813 = distinct !DILexicalBlock(scope: !808, file: !69, line: 636, column: 15)
!814 = !DILocation(line: 636, column: 29, scope: !813)
!815 = !DILocation(line: 640, column: 16, scope: !799)
!816 = distinct !{!816, !794, !817, !787}
!817 = !DILocation(line: 641, column: 5, scope: !68)
!818 = !DILocation(line: 644, column: 3, scope: !68)
!819 = !DILocation(line: 0, scope: !752, inlinedAt: !820)
!820 = distinct !DILocation(line: 648, column: 31, scope: !68)
!821 = !DILocation(line: 0, scope: !752, inlinedAt: !822)
!822 = distinct !DILocation(line: 649, column: 31, scope: !68)
!823 = !DILocation(line: 0, scope: !752, inlinedAt: !824)
!824 = distinct !DILocation(line: 650, column: 31, scope: !68)
!825 = !DILocation(line: 0, scope: !752, inlinedAt: !826)
!826 = distinct !DILocation(line: 651, column: 31, scope: !68)
!827 = !DILocation(line: 0, scope: !752, inlinedAt: !828)
!828 = distinct !DILocation(line: 652, column: 31, scope: !68)
!829 = !DILocation(line: 0, scope: !752, inlinedAt: !830)
!830 = distinct !DILocation(line: 653, column: 31, scope: !68)
!831 = !DILocation(line: 0, scope: !752, inlinedAt: !832)
!832 = distinct !DILocation(line: 654, column: 31, scope: !68)
!833 = !DILocation(line: 0, scope: !752, inlinedAt: !834)
!834 = distinct !DILocation(line: 655, column: 31, scope: !68)
!835 = !DILocation(line: 0, scope: !752, inlinedAt: !836)
!836 = distinct !DILocation(line: 656, column: 31, scope: !68)
!837 = !DILocation(line: 0, scope: !752, inlinedAt: !838)
!838 = distinct !DILocation(line: 657, column: 31, scope: !68)
!839 = !DILocation(line: 663, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !68, file: !69, line: 663, column: 7)
!841 = !DILocation(line: 664, column: 7, scope: !840)
!842 = !DILocation(line: 664, column: 10, scope: !840)
!843 = !DILocation(line: 663, column: 7, scope: !68)
!844 = !DILocation(line: 669, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !840, file: !69, line: 665, column: 5)
!846 = !DILocation(line: 671, column: 5, scope: !845)
!847 = !DILocation(line: 676, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !840, file: !69, line: 673, column: 5)
!849 = !DILocation(line: 679, column: 3, scope: !68)
!850 = !DILocation(line: 683, column: 3, scope: !68)
!851 = !DILocation(line: 686, column: 3, scope: !68)
!852 = !DILocation(line: 688, column: 3, scope: !68)
!853 = !DILocation(line: 691, column: 3, scope: !68)
!854 = !DILocation(line: 695, column: 3, scope: !68)
!855 = !DILocation(line: 696, column: 1, scope: !68)
!856 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !69, file: !69, line: 836, type: !857, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !859)
!857 = !DISubroutineType(cc: DW_CC_nocall, types: !858)
!858 = !{null, !72}
!859 = !{!860, !861, !868, !869, !871, !872}
!860 = !DILocalVariable(name: "program", arg: 1, scope: !856, file: !69, line: 836, type: !72)
!861 = !DILocalVariable(name: "infomap", scope: !856, file: !69, line: 838, type: !862)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !863, size: 896, elements: !52)
!863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !864)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !856, file: !69, line: 838, size: 128, elements: !865)
!865 = !{!866, !867}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !864, file: !69, line: 838, baseType: !72, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !864, file: !69, line: 838, baseType: !72, size: 64, offset: 64)
!868 = !DILocalVariable(name: "node", scope: !856, file: !69, line: 848, type: !72)
!869 = !DILocalVariable(name: "map_prog", scope: !856, file: !69, line: 849, type: !870)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!871 = !DILocalVariable(name: "lc_messages", scope: !856, file: !69, line: 861, type: !72)
!872 = !DILocalVariable(name: "url_program", scope: !856, file: !69, line: 874, type: !72)
!873 = !DILocation(line: 0, scope: !856)
!874 = !DILocation(line: 857, column: 3, scope: !856)
!875 = !DILocation(line: 861, column: 29, scope: !856)
!876 = !DILocation(line: 862, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !856, file: !69, line: 862, column: 7)
!878 = !DILocation(line: 862, column: 19, scope: !877)
!879 = !DILocation(line: 862, column: 22, scope: !877)
!880 = !DILocation(line: 862, column: 7, scope: !856)
!881 = !DILocation(line: 868, column: 7, scope: !882)
!882 = distinct !DILexicalBlock(scope: !877, file: !69, line: 863, column: 5)
!883 = !DILocation(line: 870, column: 5, scope: !882)
!884 = !DILocation(line: 875, column: 3, scope: !856)
!885 = !DILocation(line: 877, column: 3, scope: !856)
!886 = !DILocation(line: 879, column: 1, scope: !856)
!887 = !DISubprogram(name: "exit", scope: !888, file: !888, line: 624, type: !712, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !732)
!888 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!889 = !DISubprogram(name: "setlocale", scope: !890, file: !890, line: 122, type: !891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!890 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!891 = !DISubroutineType(types: !892)
!892 = !{!93, !95, !72}
!893 = !DISubprogram(name: "strncmp", scope: !894, file: !894, line: 159, type: !895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!894 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!895 = !DISubroutineType(types: !896)
!896 = !{!95, !72, !72, !97}
!897 = !DISubprogram(name: "fputs_unlocked", scope: !898, file: !898, line: 691, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!898 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!899 = !DISubroutineType(types: !900)
!900 = !{!95, !737, !901}
!901 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !230)
!902 = !DISubprogram(name: "getenv", scope: !888, file: !888, line: 641, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!903 = !DISubroutineType(types: !904)
!904 = !{!93, !72}
!905 = !DISubprogram(name: "strcmp", scope: !894, file: !894, line: 156, type: !906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!906 = !DISubroutineType(types: !907)
!907 = !{!95, !72, !72}
!908 = !DISubprogram(name: "strspn", scope: !894, file: !894, line: 297, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!909 = !DISubroutineType(types: !910)
!910 = !{!99, !72, !72}
!911 = !DISubprogram(name: "strchr", scope: !894, file: !894, line: 246, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!912 = !DISubroutineType(types: !913)
!913 = !{!93, !72, !95}
!914 = !DISubprogram(name: "__ctype_b_loc", scope: !77, file: !77, line: 79, type: !915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!915 = !DISubroutineType(types: !916)
!916 = !{!917}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!920 = !DISubprogram(name: "strcspn", scope: !894, file: !894, line: 293, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!921 = !DISubprogram(name: "fwrite_unlocked", scope: !898, file: !898, line: 704, type: !922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!922 = !DISubroutineType(types: !923)
!923 = !{!97, !924, !97, !97, !901}
!924 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !925)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!927 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 55, type: !928, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !931)
!928 = !DISubroutineType(types: !929)
!929 = !{!95, !95, !930}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!931 = !{!932, !933}
!932 = !DILocalVariable(name: "argc", arg: 1, scope: !927, file: !2, line: 55, type: !95)
!933 = !DILocalVariable(name: "argv", arg: 2, scope: !927, file: !2, line: 55, type: !930)
!934 = !DILocation(line: 0, scope: !927)
!935 = !DILocation(line: 59, column: 12, scope: !936)
!936 = distinct !DILexicalBlock(scope: !927, file: !2, line: 59, column: 7)
!937 = !DILocation(line: 59, column: 7, scope: !927)
!938 = !DILocation(line: 62, column: 25, scope: !939)
!939 = distinct !DILexicalBlock(scope: !936, file: !2, line: 60, column: 5)
!940 = !DILocation(line: 62, column: 7, scope: !939)
!941 = !DILocation(line: 63, column: 7, scope: !939)
!942 = !DILocation(line: 64, column: 7, scope: !939)
!943 = !DILocation(line: 65, column: 7, scope: !939)
!944 = !DILocation(line: 69, column: 7, scope: !939)
!945 = !DILocation(line: 71, column: 18, scope: !946)
!946 = distinct !DILexicalBlock(scope: !939, file: !2, line: 71, column: 11)
!947 = !DILocation(line: 0, scope: !752, inlinedAt: !948)
!948 = distinct !DILocation(line: 71, column: 11, scope: !946)
!949 = !DILocation(line: 1361, column: 11, scope: !752, inlinedAt: !948)
!950 = !DILocation(line: 1361, column: 10, scope: !752, inlinedAt: !948)
!951 = !DILocation(line: 71, column: 11, scope: !939)
!952 = !DILocation(line: 72, column: 9, scope: !946)
!953 = !DILocation(line: 0, scope: !752, inlinedAt: !954)
!954 = distinct !DILocation(line: 74, column: 11, scope: !955)
!955 = distinct !DILexicalBlock(scope: !939, file: !2, line: 74, column: 11)
!956 = !DILocation(line: 1361, column: 11, scope: !752, inlinedAt: !954)
!957 = !DILocation(line: 1361, column: 10, scope: !752, inlinedAt: !954)
!958 = !DILocation(line: 74, column: 11, scope: !939)
!959 = !DILocation(line: 75, column: 22, scope: !955)
!960 = !DILocation(line: 75, column: 58, scope: !955)
!961 = !DILocation(line: 75, column: 67, scope: !955)
!962 = !DILocation(line: 75, column: 9, scope: !955)
!963 = !DILocation(line: 79, column: 3, scope: !927)
!964 = !DISubprogram(name: "bindtextdomain", scope: !729, file: !729, line: 86, type: !965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!965 = !DISubroutineType(types: !966)
!966 = !{!93, !72, !72}
!967 = !DISubprogram(name: "textdomain", scope: !729, file: !729, line: 82, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!968 = !DISubprogram(name: "atexit", scope: !888, file: !888, line: 602, type: !969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!969 = !DISubroutineType(types: !970)
!970 = !{!95, !359}
!971 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !298, file: !298, line: 50, type: !972, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !973)
!972 = !DISubroutineType(types: !858)
!973 = !{!974}
!974 = !DILocalVariable(name: "file", arg: 1, scope: !971, file: !298, line: 50, type: !72)
!975 = !DILocation(line: 0, scope: !971)
!976 = !DILocation(line: 52, column: 13, scope: !971)
!977 = !DILocation(line: 53, column: 1, scope: !971)
!978 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !298, file: !298, line: 87, type: !979, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !981)
!979 = !DISubroutineType(types: !980)
!980 = !{null, !217}
!981 = !{!982}
!982 = !DILocalVariable(name: "ignore", arg: 1, scope: !978, file: !298, line: 87, type: !217)
!983 = !DILocation(line: 0, scope: !978)
!984 = !DILocation(line: 89, column: 16, scope: !978)
!985 = !{!986, !986, i64 0}
!986 = !{!"_Bool", !720, i64 0}
!987 = !DILocation(line: 90, column: 1, scope: !978)
!988 = distinct !DISubprogram(name: "close_stdout", scope: !298, file: !298, line: 116, type: !360, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !989)
!989 = !{!990}
!990 = !DILocalVariable(name: "write_error", scope: !991, file: !298, line: 121, type: !72)
!991 = distinct !DILexicalBlock(scope: !992, file: !298, line: 120, column: 5)
!992 = distinct !DILexicalBlock(scope: !988, file: !298, line: 118, column: 7)
!993 = !DILocation(line: 118, column: 21, scope: !992)
!994 = !DILocation(line: 118, column: 7, scope: !992)
!995 = !DILocation(line: 118, column: 29, scope: !992)
!996 = !DILocation(line: 119, column: 7, scope: !992)
!997 = !DILocation(line: 119, column: 12, scope: !992)
!998 = !{i8 0, i8 2}
!999 = !DILocation(line: 119, column: 25, scope: !992)
!1000 = !DILocation(line: 119, column: 28, scope: !992)
!1001 = !DILocation(line: 119, column: 34, scope: !992)
!1002 = !DILocation(line: 118, column: 7, scope: !988)
!1003 = !DILocation(line: 121, column: 33, scope: !991)
!1004 = !DILocation(line: 0, scope: !991)
!1005 = !DILocation(line: 122, column: 11, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !991, file: !298, line: 122, column: 11)
!1007 = !DILocation(line: 0, scope: !1006)
!1008 = !DILocation(line: 122, column: 11, scope: !991)
!1009 = !DILocation(line: 123, column: 9, scope: !1006)
!1010 = !DILocation(line: 126, column: 9, scope: !1006)
!1011 = !DILocation(line: 128, column: 14, scope: !991)
!1012 = !DILocation(line: 128, column: 7, scope: !991)
!1013 = !DILocation(line: 133, column: 42, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !988, file: !298, line: 133, column: 7)
!1015 = !DILocation(line: 133, column: 28, scope: !1014)
!1016 = !DILocation(line: 133, column: 50, scope: !1014)
!1017 = !DILocation(line: 133, column: 7, scope: !988)
!1018 = !DILocation(line: 134, column: 12, scope: !1014)
!1019 = !DILocation(line: 134, column: 5, scope: !1014)
!1020 = !DILocation(line: 135, column: 1, scope: !988)
!1021 = !DISubprogram(name: "__errno_location", scope: !1022, file: !1022, line: 37, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1022 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!1025}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!1026 = !DISubprogram(name: "_exit", scope: !1027, file: !1027, line: 624, type: !712, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1027 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1028 = distinct !DISubprogram(name: "verror", scope: !313, file: !313, line: 251, type: !1029, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1031)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !95, !95, !72, !323}
!1031 = !{!1032, !1033, !1034, !1035}
!1032 = !DILocalVariable(name: "status", arg: 1, scope: !1028, file: !313, line: 251, type: !95)
!1033 = !DILocalVariable(name: "errnum", arg: 2, scope: !1028, file: !313, line: 251, type: !95)
!1034 = !DILocalVariable(name: "message", arg: 3, scope: !1028, file: !313, line: 251, type: !72)
!1035 = !DILocalVariable(name: "args", arg: 4, scope: !1028, file: !313, line: 251, type: !323)
!1036 = !DILocation(line: 0, scope: !1028)
!1037 = !DILocation(line: 261, column: 3, scope: !1028)
!1038 = !DILocation(line: 265, column: 7, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1028, file: !313, line: 265, column: 7)
!1040 = !DILocation(line: 265, column: 7, scope: !1028)
!1041 = !DILocation(line: 266, column: 5, scope: !1039)
!1042 = !DILocation(line: 272, column: 7, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !313, line: 268, column: 5)
!1044 = !DILocation(line: 276, column: 3, scope: !1028)
!1045 = !DILocation(line: 282, column: 1, scope: !1028)
!1046 = distinct !DISubprogram(name: "flush_stdout", scope: !313, file: !313, line: 163, type: !360, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1047)
!1047 = !{!1048}
!1048 = !DILocalVariable(name: "stdout_fd", scope: !1046, file: !313, line: 166, type: !95)
!1049 = !DILocation(line: 0, scope: !1046)
!1050 = !DILocalVariable(name: "fd", arg: 1, scope: !1051, file: !313, line: 145, type: !95)
!1051 = distinct !DISubprogram(name: "is_open", scope: !313, file: !313, line: 145, type: !1052, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1054)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!95, !95}
!1054 = !{!1050}
!1055 = !DILocation(line: 0, scope: !1051, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 182, column: 25, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1046, file: !313, line: 182, column: 7)
!1058 = !DILocation(line: 157, column: 15, scope: !1051, inlinedAt: !1056)
!1059 = !DILocation(line: 157, column: 12, scope: !1051, inlinedAt: !1056)
!1060 = !DILocation(line: 182, column: 7, scope: !1046)
!1061 = !DILocation(line: 184, column: 5, scope: !1057)
!1062 = !DILocation(line: 185, column: 1, scope: !1046)
!1063 = !DISubprogram(name: "__fprintf_chk", scope: !734, file: !734, line: 93, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!95, !1066, !95, !737, null}
!1066 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1067)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !1069)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !1070)
!1070 = !{!1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1069, file: !234, line: 51, baseType: !95, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1069, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1069, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1069, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1069, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1069, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1069, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1069, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1069, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1069, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1069, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1069, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1069, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1069, file: !234, line: 70, baseType: !1085, size: 64, offset: 832)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1069, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1069, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1069, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1069, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1069, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1069, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1069, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1069, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1069, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1069, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1069, file: !234, line: 93, baseType: !1085, size: 64, offset: 1344)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1069, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1069, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1069, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1069, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!1101 = distinct !DISubprogram(name: "error_tail", scope: !313, file: !313, line: 219, type: !1029, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1102)
!1102 = !{!1103, !1104, !1105, !1106}
!1103 = !DILocalVariable(name: "status", arg: 1, scope: !1101, file: !313, line: 219, type: !95)
!1104 = !DILocalVariable(name: "errnum", arg: 2, scope: !1101, file: !313, line: 219, type: !95)
!1105 = !DILocalVariable(name: "message", arg: 3, scope: !1101, file: !313, line: 219, type: !72)
!1106 = !DILocalVariable(name: "args", arg: 4, scope: !1101, file: !313, line: 219, type: !323)
!1107 = !DILocation(line: 0, scope: !1101)
!1108 = !DILocation(line: 229, column: 13, scope: !1101)
!1109 = !DILocalVariable(name: "__stream", arg: 1, scope: !1110, file: !734, line: 132, type: !1066)
!1110 = distinct !DISubprogram(name: "vfprintf", scope: !734, file: !734, line: 132, type: !1111, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1113)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!95, !1066, !737, !323}
!1113 = !{!1109, !1114, !1115}
!1114 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1110, file: !734, line: 133, type: !737)
!1115 = !DILocalVariable(name: "__ap", arg: 3, scope: !1110, file: !734, line: 133, type: !323)
!1116 = !DILocation(line: 0, scope: !1110, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 229, column: 3, scope: !1101)
!1118 = !DILocation(line: 135, column: 10, scope: !1110, inlinedAt: !1117)
!1119 = !DILocation(line: 232, column: 3, scope: !1101)
!1120 = !DILocation(line: 233, column: 7, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1101, file: !313, line: 233, column: 7)
!1122 = !DILocation(line: 233, column: 7, scope: !1101)
!1123 = !DILocalVariable(name: "errnum", arg: 1, scope: !1124, file: !313, line: 188, type: !95)
!1124 = distinct !DISubprogram(name: "print_errno_message", scope: !313, file: !313, line: 188, type: !712, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1125)
!1125 = !{!1123, !1126, !1127}
!1126 = !DILocalVariable(name: "s", scope: !1124, file: !313, line: 190, type: !72)
!1127 = !DILocalVariable(name: "errbuf", scope: !1124, file: !313, line: 193, type: !1128)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1129)
!1129 = !{!1130}
!1130 = !DISubrange(count: 1024)
!1131 = !DILocation(line: 0, scope: !1124, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 234, column: 5, scope: !1121)
!1133 = !DILocation(line: 193, column: 3, scope: !1124, inlinedAt: !1132)
!1134 = !DILocation(line: 193, column: 8, scope: !1124, inlinedAt: !1132)
!1135 = !DILocation(line: 195, column: 7, scope: !1124, inlinedAt: !1132)
!1136 = !DILocation(line: 207, column: 9, scope: !1137, inlinedAt: !1132)
!1137 = distinct !DILexicalBlock(scope: !1124, file: !313, line: 207, column: 7)
!1138 = !DILocation(line: 207, column: 7, scope: !1124, inlinedAt: !1132)
!1139 = !DILocation(line: 208, column: 9, scope: !1137, inlinedAt: !1132)
!1140 = !DILocation(line: 208, column: 5, scope: !1137, inlinedAt: !1132)
!1141 = !DILocation(line: 214, column: 3, scope: !1124, inlinedAt: !1132)
!1142 = !DILocation(line: 216, column: 1, scope: !1124, inlinedAt: !1132)
!1143 = !DILocation(line: 234, column: 5, scope: !1121)
!1144 = !DILocation(line: 238, column: 3, scope: !1101)
!1145 = !DILocalVariable(name: "__c", arg: 1, scope: !1146, file: !1147, line: 101, type: !95)
!1146 = distinct !DISubprogram(name: "putc_unlocked", scope: !1147, file: !1147, line: 101, type: !1148, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1150)
!1147 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!95, !95, !1067}
!1150 = !{!1145, !1151}
!1151 = !DILocalVariable(name: "__stream", arg: 2, scope: !1146, file: !1147, line: 101, type: !1067)
!1152 = !DILocation(line: 0, scope: !1146, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 238, column: 3, scope: !1101)
!1154 = !DILocation(line: 103, column: 10, scope: !1146, inlinedAt: !1153)
!1155 = !{!1156, !719, i64 40}
!1156 = !{!"_IO_FILE", !741, i64 0, !719, i64 8, !719, i64 16, !719, i64 24, !719, i64 32, !719, i64 40, !719, i64 48, !719, i64 56, !719, i64 64, !719, i64 72, !719, i64 80, !719, i64 88, !719, i64 96, !719, i64 104, !741, i64 112, !741, i64 116, !1157, i64 120, !782, i64 128, !720, i64 130, !720, i64 131, !719, i64 136, !1157, i64 144, !719, i64 152, !719, i64 160, !719, i64 168, !719, i64 176, !1157, i64 184, !741, i64 192, !720, i64 196}
!1157 = !{!"long", !720, i64 0}
!1158 = !{!1156, !719, i64 48}
!1159 = !{!"branch_weights", i32 2000, i32 1}
!1160 = !DILocation(line: 240, column: 3, scope: !1101)
!1161 = !DILocation(line: 241, column: 7, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1101, file: !313, line: 241, column: 7)
!1163 = !DILocation(line: 241, column: 7, scope: !1101)
!1164 = !DILocation(line: 242, column: 5, scope: !1162)
!1165 = !DILocation(line: 243, column: 1, scope: !1101)
!1166 = !DISubprogram(name: "__vfprintf_chk", scope: !734, file: !734, line: 96, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!95, !1066, !95, !737, !323}
!1169 = !DISubprogram(name: "strerror_r", scope: !894, file: !894, line: 444, type: !1170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!93, !95, !93, !97}
!1172 = !DISubprogram(name: "__overflow", scope: !898, file: !898, line: 886, type: !1173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!95, !1067, !95}
!1175 = !DISubprogram(name: "fflush_unlocked", scope: !898, file: !898, line: 239, type: !1176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!95, !1067}
!1178 = !DISubprogram(name: "fcntl", scope: !1179, file: !1179, line: 149, type: !1180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1179 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!95, !95, !95, null}
!1182 = distinct !DISubprogram(name: "error", scope: !313, file: !313, line: 285, type: !1183, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1185)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !95, !95, !72, null}
!1185 = !{!1186, !1187, !1188, !1189}
!1186 = !DILocalVariable(name: "status", arg: 1, scope: !1182, file: !313, line: 285, type: !95)
!1187 = !DILocalVariable(name: "errnum", arg: 2, scope: !1182, file: !313, line: 285, type: !95)
!1188 = !DILocalVariable(name: "message", arg: 3, scope: !1182, file: !313, line: 285, type: !72)
!1189 = !DILocalVariable(name: "ap", scope: !1182, file: !313, line: 287, type: !1190)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !898, line: 52, baseType: !1191)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1192, line: 14, baseType: !1193)
!1192 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !327, baseType: !1194)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 192, elements: !37)
!1195 = !DILocation(line: 0, scope: !1182)
!1196 = !DILocation(line: 287, column: 3, scope: !1182)
!1197 = !DILocation(line: 287, column: 11, scope: !1182)
!1198 = !DILocation(line: 288, column: 3, scope: !1182)
!1199 = !DILocation(line: 289, column: 3, scope: !1182)
!1200 = !DILocation(line: 290, column: 3, scope: !1182)
!1201 = !DILocation(line: 291, column: 1, scope: !1182)
!1202 = !DILocation(line: 0, scope: !320)
!1203 = !DILocation(line: 302, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !320, file: !313, line: 302, column: 7)
!1205 = !DILocation(line: 302, column: 7, scope: !320)
!1206 = !DILocation(line: 307, column: 11, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !313, line: 307, column: 11)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !313, line: 303, column: 5)
!1209 = !DILocation(line: 307, column: 27, scope: !1207)
!1210 = !DILocation(line: 308, column: 11, scope: !1207)
!1211 = !DILocation(line: 308, column: 28, scope: !1207)
!1212 = !DILocation(line: 308, column: 25, scope: !1207)
!1213 = !DILocation(line: 309, column: 15, scope: !1207)
!1214 = !DILocation(line: 309, column: 33, scope: !1207)
!1215 = !DILocation(line: 310, column: 19, scope: !1207)
!1216 = !DILocation(line: 311, column: 22, scope: !1207)
!1217 = !DILocation(line: 311, column: 56, scope: !1207)
!1218 = !DILocation(line: 307, column: 11, scope: !1208)
!1219 = !DILocation(line: 316, column: 21, scope: !1208)
!1220 = !DILocation(line: 317, column: 23, scope: !1208)
!1221 = !DILocation(line: 318, column: 5, scope: !1208)
!1222 = !DILocation(line: 327, column: 3, scope: !320)
!1223 = !DILocation(line: 331, column: 7, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !320, file: !313, line: 331, column: 7)
!1225 = !DILocation(line: 331, column: 7, scope: !320)
!1226 = !DILocation(line: 332, column: 5, scope: !1224)
!1227 = !DILocation(line: 338, column: 7, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1224, file: !313, line: 334, column: 5)
!1229 = !DILocation(line: 346, column: 3, scope: !320)
!1230 = !DILocation(line: 350, column: 3, scope: !320)
!1231 = !DILocation(line: 356, column: 1, scope: !320)
!1232 = distinct !DISubprogram(name: "error_at_line", scope: !313, file: !313, line: 359, type: !1233, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1235)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !95, !95, !72, !78, !72, null}
!1235 = !{!1236, !1237, !1238, !1239, !1240, !1241}
!1236 = !DILocalVariable(name: "status", arg: 1, scope: !1232, file: !313, line: 359, type: !95)
!1237 = !DILocalVariable(name: "errnum", arg: 2, scope: !1232, file: !313, line: 359, type: !95)
!1238 = !DILocalVariable(name: "file_name", arg: 3, scope: !1232, file: !313, line: 359, type: !72)
!1239 = !DILocalVariable(name: "line_number", arg: 4, scope: !1232, file: !313, line: 360, type: !78)
!1240 = !DILocalVariable(name: "message", arg: 5, scope: !1232, file: !313, line: 360, type: !72)
!1241 = !DILocalVariable(name: "ap", scope: !1232, file: !313, line: 362, type: !1190)
!1242 = !DILocation(line: 0, scope: !1232)
!1243 = !DILocation(line: 362, column: 3, scope: !1232)
!1244 = !DILocation(line: 362, column: 11, scope: !1232)
!1245 = !DILocation(line: 363, column: 3, scope: !1232)
!1246 = !DILocation(line: 364, column: 3, scope: !1232)
!1247 = !DILocation(line: 366, column: 3, scope: !1232)
!1248 = !DILocation(line: 367, column: 1, scope: !1232)
!1249 = distinct !DISubprogram(name: "getprogname", scope: !641, file: !641, line: 54, type: !1250, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !732)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!72}
!1252 = !DILocation(line: 58, column: 10, scope: !1249)
!1253 = !DILocation(line: 58, column: 3, scope: !1249)
!1254 = distinct !DISubprogram(name: "set_program_name", scope: !365, file: !365, line: 37, type: !972, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !1255)
!1255 = !{!1256, !1257, !1258}
!1256 = !DILocalVariable(name: "argv0", arg: 1, scope: !1254, file: !365, line: 37, type: !72)
!1257 = !DILocalVariable(name: "slash", scope: !1254, file: !365, line: 44, type: !72)
!1258 = !DILocalVariable(name: "base", scope: !1254, file: !365, line: 45, type: !72)
!1259 = !DILocation(line: 0, scope: !1254)
!1260 = !DILocation(line: 44, column: 23, scope: !1254)
!1261 = !DILocation(line: 45, column: 22, scope: !1254)
!1262 = !DILocation(line: 46, column: 17, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1254, file: !365, line: 46, column: 7)
!1264 = !DILocation(line: 46, column: 9, scope: !1263)
!1265 = !DILocation(line: 46, column: 25, scope: !1263)
!1266 = !DILocation(line: 46, column: 40, scope: !1263)
!1267 = !DILocalVariable(name: "__s1", arg: 1, scope: !1268, file: !753, line: 974, type: !925)
!1268 = distinct !DISubprogram(name: "memeq", scope: !753, file: !753, line: 974, type: !1269, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !1271)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!217, !925, !925, !97}
!1271 = !{!1267, !1272, !1273}
!1272 = !DILocalVariable(name: "__s2", arg: 2, scope: !1268, file: !753, line: 974, type: !925)
!1273 = !DILocalVariable(name: "__n", arg: 3, scope: !1268, file: !753, line: 974, type: !97)
!1274 = !DILocation(line: 0, scope: !1268, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 46, column: 28, scope: !1263)
!1276 = !DILocation(line: 976, column: 11, scope: !1268, inlinedAt: !1275)
!1277 = !DILocation(line: 976, column: 10, scope: !1268, inlinedAt: !1275)
!1278 = !DILocation(line: 46, column: 7, scope: !1254)
!1279 = !DILocation(line: 49, column: 11, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !365, line: 49, column: 11)
!1281 = distinct !DILexicalBlock(scope: !1263, file: !365, line: 47, column: 5)
!1282 = !DILocation(line: 49, column: 36, scope: !1280)
!1283 = !DILocation(line: 49, column: 11, scope: !1281)
!1284 = !DILocation(line: 65, column: 16, scope: !1254)
!1285 = !DILocation(line: 71, column: 27, scope: !1254)
!1286 = !DILocation(line: 74, column: 33, scope: !1254)
!1287 = !DILocation(line: 76, column: 1, scope: !1254)
!1288 = !DISubprogram(name: "strrchr", scope: !894, file: !894, line: 273, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1289 = !DILocation(line: 0, scope: !374)
!1290 = !DILocation(line: 40, column: 29, scope: !374)
!1291 = !DILocation(line: 41, column: 19, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !374, file: !375, line: 41, column: 7)
!1293 = !DILocation(line: 41, column: 7, scope: !374)
!1294 = !DILocation(line: 47, column: 3, scope: !374)
!1295 = !DILocation(line: 48, column: 3, scope: !374)
!1296 = !DILocation(line: 48, column: 13, scope: !374)
!1297 = !DILocalVariable(name: "ps", arg: 1, scope: !1298, file: !1299, line: 1135, type: !1302)
!1298 = distinct !DISubprogram(name: "mbszero", scope: !1299, file: !1299, line: 1135, type: !1300, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !1303)
!1299 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1303 = !{!1297}
!1304 = !DILocation(line: 0, scope: !1298, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 48, column: 18, scope: !374)
!1306 = !DILocalVariable(name: "__dest", arg: 1, scope: !1307, file: !1308, line: 57, type: !94)
!1307 = distinct !DISubprogram(name: "memset", scope: !1308, file: !1308, line: 57, type: !1309, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !1311)
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
!1318 = distinct !DILexicalBlock(scope: !374, file: !375, line: 49, column: 7)
!1319 = !DILocation(line: 49, column: 39, scope: !1318)
!1320 = !DILocation(line: 49, column: 44, scope: !1318)
!1321 = !DILocation(line: 54, column: 1, scope: !374)
!1322 = !DISubprogram(name: "mbrtoc32", scope: !386, file: !386, line: 57, type: !1323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!97, !1325, !737, !97, !1327}
!1325 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1326)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1302)
!1328 = distinct !DISubprogram(name: "clone_quoting_options", scope: !405, file: !405, line: 113, type: !1329, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1332)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!1331, !1331}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!1332 = !{!1333, !1334, !1335}
!1333 = !DILocalVariable(name: "o", arg: 1, scope: !1328, file: !405, line: 113, type: !1331)
!1334 = !DILocalVariable(name: "saved_errno", scope: !1328, file: !405, line: 115, type: !95)
!1335 = !DILocalVariable(name: "p", scope: !1328, file: !405, line: 116, type: !1331)
!1336 = !DILocation(line: 0, scope: !1328)
!1337 = !DILocation(line: 115, column: 21, scope: !1328)
!1338 = !DILocation(line: 116, column: 40, scope: !1328)
!1339 = !DILocation(line: 116, column: 31, scope: !1328)
!1340 = !DILocation(line: 118, column: 9, scope: !1328)
!1341 = !DILocation(line: 119, column: 3, scope: !1328)
!1342 = distinct !DISubprogram(name: "get_quoting_style", scope: !405, file: !405, line: 124, type: !1343, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1347)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!428, !1345}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!1347 = !{!1348}
!1348 = !DILocalVariable(name: "o", arg: 1, scope: !1342, file: !405, line: 124, type: !1345)
!1349 = !DILocation(line: 0, scope: !1342)
!1350 = !DILocation(line: 126, column: 11, scope: !1342)
!1351 = !DILocation(line: 126, column: 46, scope: !1342)
!1352 = !{!1353, !720, i64 0}
!1353 = !{!"quoting_options", !720, i64 0, !741, i64 4, !720, i64 8, !719, i64 40, !719, i64 48}
!1354 = !DILocation(line: 126, column: 3, scope: !1342)
!1355 = distinct !DISubprogram(name: "set_quoting_style", scope: !405, file: !405, line: 132, type: !1356, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1358)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{null, !1331, !428}
!1358 = !{!1359, !1360}
!1359 = !DILocalVariable(name: "o", arg: 1, scope: !1355, file: !405, line: 132, type: !1331)
!1360 = !DILocalVariable(name: "s", arg: 2, scope: !1355, file: !405, line: 132, type: !428)
!1361 = !DILocation(line: 0, scope: !1355)
!1362 = !DILocation(line: 134, column: 4, scope: !1355)
!1363 = !DILocation(line: 134, column: 45, scope: !1355)
!1364 = !DILocation(line: 135, column: 1, scope: !1355)
!1365 = distinct !DISubprogram(name: "set_char_quoting", scope: !405, file: !405, line: 143, type: !1366, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1368)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!95, !1331, !4, !95}
!1368 = !{!1369, !1370, !1371, !1372, !1373, !1375, !1376}
!1369 = !DILocalVariable(name: "o", arg: 1, scope: !1365, file: !405, line: 143, type: !1331)
!1370 = !DILocalVariable(name: "c", arg: 2, scope: !1365, file: !405, line: 143, type: !4)
!1371 = !DILocalVariable(name: "i", arg: 3, scope: !1365, file: !405, line: 143, type: !95)
!1372 = !DILocalVariable(name: "uc", scope: !1365, file: !405, line: 145, type: !100)
!1373 = !DILocalVariable(name: "p", scope: !1365, file: !405, line: 146, type: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!1375 = !DILocalVariable(name: "shift", scope: !1365, file: !405, line: 148, type: !95)
!1376 = !DILocalVariable(name: "r", scope: !1365, file: !405, line: 149, type: !78)
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
!1390 = distinct !DISubprogram(name: "set_quoting_flags", scope: !405, file: !405, line: 159, type: !1391, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1393)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!95, !1331, !95}
!1393 = !{!1394, !1395, !1396}
!1394 = !DILocalVariable(name: "o", arg: 1, scope: !1390, file: !405, line: 159, type: !1331)
!1395 = !DILocalVariable(name: "i", arg: 2, scope: !1390, file: !405, line: 159, type: !95)
!1396 = !DILocalVariable(name: "r", scope: !1390, file: !405, line: 163, type: !95)
!1397 = !DILocation(line: 0, scope: !1390)
!1398 = !DILocation(line: 161, column: 8, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1390, file: !405, line: 161, column: 7)
!1400 = !DILocation(line: 161, column: 7, scope: !1390)
!1401 = !DILocation(line: 163, column: 14, scope: !1390)
!1402 = !{!1353, !741, i64 4}
!1403 = !DILocation(line: 164, column: 12, scope: !1390)
!1404 = !DILocation(line: 165, column: 3, scope: !1390)
!1405 = distinct !DISubprogram(name: "set_custom_quoting", scope: !405, file: !405, line: 169, type: !1406, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1408)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !1331, !72, !72}
!1408 = !{!1409, !1410, !1411}
!1409 = !DILocalVariable(name: "o", arg: 1, scope: !1405, file: !405, line: 169, type: !1331)
!1410 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1405, file: !405, line: 170, type: !72)
!1411 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1405, file: !405, line: 170, type: !72)
!1412 = !DILocation(line: 0, scope: !1405)
!1413 = !DILocation(line: 172, column: 8, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1405, file: !405, line: 172, column: 7)
!1415 = !DILocation(line: 172, column: 7, scope: !1405)
!1416 = !DILocation(line: 174, column: 12, scope: !1405)
!1417 = !DILocation(line: 175, column: 8, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1405, file: !405, line: 175, column: 7)
!1419 = !DILocation(line: 175, column: 19, scope: !1418)
!1420 = !DILocation(line: 176, column: 5, scope: !1418)
!1421 = !DILocation(line: 177, column: 6, scope: !1405)
!1422 = !DILocation(line: 177, column: 17, scope: !1405)
!1423 = !{!1353, !719, i64 40}
!1424 = !DILocation(line: 178, column: 6, scope: !1405)
!1425 = !DILocation(line: 178, column: 18, scope: !1405)
!1426 = !{!1353, !719, i64 48}
!1427 = !DILocation(line: 179, column: 1, scope: !1405)
!1428 = !DISubprogram(name: "abort", scope: !888, file: !888, line: 598, type: !360, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1429 = distinct !DISubprogram(name: "quotearg_buffer", scope: !405, file: !405, line: 774, type: !1430, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1432)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!97, !93, !97, !72, !97, !1345}
!1432 = !{!1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440}
!1433 = !DILocalVariable(name: "buffer", arg: 1, scope: !1429, file: !405, line: 774, type: !93)
!1434 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1429, file: !405, line: 774, type: !97)
!1435 = !DILocalVariable(name: "arg", arg: 3, scope: !1429, file: !405, line: 775, type: !72)
!1436 = !DILocalVariable(name: "argsize", arg: 4, scope: !1429, file: !405, line: 775, type: !97)
!1437 = !DILocalVariable(name: "o", arg: 5, scope: !1429, file: !405, line: 776, type: !1345)
!1438 = !DILocalVariable(name: "p", scope: !1429, file: !405, line: 778, type: !1345)
!1439 = !DILocalVariable(name: "saved_errno", scope: !1429, file: !405, line: 779, type: !95)
!1440 = !DILocalVariable(name: "r", scope: !1429, file: !405, line: 780, type: !97)
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
!1452 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !405, file: !405, line: 251, type: !1453, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1457)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!97, !93, !97, !72, !97, !428, !95, !1455, !72, !72}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!1457 = !{!1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1482, !1484, !1487, !1488, !1489, !1490, !1493, !1494, !1497, !1501, !1502, !1510, !1513, !1514, !1516, !1517, !1518, !1519}
!1458 = !DILocalVariable(name: "buffer", arg: 1, scope: !1452, file: !405, line: 251, type: !93)
!1459 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1452, file: !405, line: 251, type: !97)
!1460 = !DILocalVariable(name: "arg", arg: 3, scope: !1452, file: !405, line: 252, type: !72)
!1461 = !DILocalVariable(name: "argsize", arg: 4, scope: !1452, file: !405, line: 252, type: !97)
!1462 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1452, file: !405, line: 253, type: !428)
!1463 = !DILocalVariable(name: "flags", arg: 6, scope: !1452, file: !405, line: 253, type: !95)
!1464 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1452, file: !405, line: 254, type: !1455)
!1465 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1452, file: !405, line: 255, type: !72)
!1466 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1452, file: !405, line: 256, type: !72)
!1467 = !DILocalVariable(name: "unibyte_locale", scope: !1452, file: !405, line: 258, type: !217)
!1468 = !DILocalVariable(name: "len", scope: !1452, file: !405, line: 260, type: !97)
!1469 = !DILocalVariable(name: "orig_buffersize", scope: !1452, file: !405, line: 261, type: !97)
!1470 = !DILocalVariable(name: "quote_string", scope: !1452, file: !405, line: 262, type: !72)
!1471 = !DILocalVariable(name: "quote_string_len", scope: !1452, file: !405, line: 263, type: !97)
!1472 = !DILocalVariable(name: "backslash_escapes", scope: !1452, file: !405, line: 264, type: !217)
!1473 = !DILocalVariable(name: "elide_outer_quotes", scope: !1452, file: !405, line: 265, type: !217)
!1474 = !DILocalVariable(name: "encountered_single_quote", scope: !1452, file: !405, line: 266, type: !217)
!1475 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1452, file: !405, line: 267, type: !217)
!1476 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1452, file: !405, line: 309, type: !217)
!1477 = !DILocalVariable(name: "lq", scope: !1478, file: !405, line: 361, type: !72)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !405, line: 361, column: 11)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !405, line: 360, column: 13)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !405, line: 333, column: 7)
!1481 = distinct !DILexicalBlock(scope: !1452, file: !405, line: 312, column: 5)
!1482 = !DILocalVariable(name: "i", scope: !1483, file: !405, line: 395, type: !97)
!1483 = distinct !DILexicalBlock(scope: !1452, file: !405, line: 395, column: 3)
!1484 = !DILocalVariable(name: "is_right_quote", scope: !1485, file: !405, line: 397, type: !217)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !405, line: 396, column: 5)
!1486 = distinct !DILexicalBlock(scope: !1483, file: !405, line: 395, column: 3)
!1487 = !DILocalVariable(name: "escaping", scope: !1485, file: !405, line: 398, type: !217)
!1488 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1485, file: !405, line: 399, type: !217)
!1489 = !DILocalVariable(name: "c", scope: !1485, file: !405, line: 417, type: !100)
!1490 = !DILocalVariable(name: "m", scope: !1491, file: !405, line: 598, type: !97)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !405, line: 596, column: 11)
!1492 = distinct !DILexicalBlock(scope: !1485, file: !405, line: 419, column: 9)
!1493 = !DILocalVariable(name: "printable", scope: !1491, file: !405, line: 600, type: !217)
!1494 = !DILocalVariable(name: "mbs", scope: !1495, file: !405, line: 609, type: !489)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !405, line: 608, column: 15)
!1496 = distinct !DILexicalBlock(scope: !1491, file: !405, line: 602, column: 17)
!1497 = !DILocalVariable(name: "w", scope: !1498, file: !405, line: 618, type: !385)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !405, line: 617, column: 19)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !405, line: 616, column: 17)
!1500 = distinct !DILexicalBlock(scope: !1495, file: !405, line: 616, column: 17)
!1501 = !DILocalVariable(name: "bytes", scope: !1498, file: !405, line: 619, type: !97)
!1502 = !DILocalVariable(name: "j", scope: !1503, file: !405, line: 648, type: !97)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !405, line: 648, column: 29)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !405, line: 647, column: 27)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !405, line: 645, column: 29)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !405, line: 636, column: 23)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !405, line: 628, column: 30)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !405, line: 623, column: 30)
!1509 = distinct !DILexicalBlock(scope: !1498, file: !405, line: 621, column: 25)
!1510 = !DILocalVariable(name: "ilim", scope: !1511, file: !405, line: 674, type: !97)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !405, line: 671, column: 15)
!1512 = distinct !DILexicalBlock(scope: !1491, file: !405, line: 670, column: 17)
!1513 = !DILabel(scope: !1452, name: "process_input", file: !405, line: 308)
!1514 = !DILabel(scope: !1515, name: "c_and_shell_escape", file: !405, line: 502)
!1515 = distinct !DILexicalBlock(scope: !1492, file: !405, line: 478, column: 9)
!1516 = !DILabel(scope: !1515, name: "c_escape", file: !405, line: 507)
!1517 = !DILabel(scope: !1485, name: "store_escape", file: !405, line: 709)
!1518 = !DILabel(scope: !1485, name: "store_c", file: !405, line: 712)
!1519 = !DILabel(scope: !1452, name: "force_outer_quoting_style", file: !405, line: 753)
!1520 = !DILocation(line: 0, scope: !1452)
!1521 = !DILocation(line: 258, column: 25, scope: !1452)
!1522 = !DILocation(line: 258, column: 36, scope: !1452)
!1523 = !DILocation(line: 265, column: 8, scope: !1452)
!1524 = !DILocation(line: 267, column: 3, scope: !1452)
!1525 = !DILocation(line: 261, column: 10, scope: !1452)
!1526 = !DILocation(line: 262, column: 15, scope: !1452)
!1527 = !DILocation(line: 263, column: 10, scope: !1452)
!1528 = !DILocation(line: 264, column: 8, scope: !1452)
!1529 = !DILocation(line: 266, column: 8, scope: !1452)
!1530 = !DILocation(line: 267, column: 8, scope: !1452)
!1531 = !DILocation(line: 308, column: 2, scope: !1452)
!1532 = !DILocation(line: 311, column: 3, scope: !1452)
!1533 = !DILocation(line: 318, column: 11, scope: !1481)
!1534 = !DILocation(line: 318, column: 12, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1481, file: !405, line: 318, column: 11)
!1536 = !DILocation(line: 319, column: 9, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !405, line: 319, column: 9)
!1538 = distinct !DILexicalBlock(scope: !1535, file: !405, line: 319, column: 9)
!1539 = !DILocation(line: 319, column: 9, scope: !1538)
!1540 = !DILocation(line: 0, scope: !480, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 357, column: 26, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !405, line: 335, column: 11)
!1543 = distinct !DILexicalBlock(scope: !1480, file: !405, line: 334, column: 13)
!1544 = !DILocation(line: 199, column: 29, scope: !480, inlinedAt: !1541)
!1545 = !DILocation(line: 201, column: 19, scope: !1546, inlinedAt: !1541)
!1546 = distinct !DILexicalBlock(scope: !480, file: !405, line: 201, column: 7)
!1547 = !DILocation(line: 201, column: 7, scope: !480, inlinedAt: !1541)
!1548 = !DILocation(line: 229, column: 3, scope: !480, inlinedAt: !1541)
!1549 = !DILocation(line: 230, column: 3, scope: !480, inlinedAt: !1541)
!1550 = !DILocation(line: 230, column: 13, scope: !480, inlinedAt: !1541)
!1551 = !DILocalVariable(name: "ps", arg: 1, scope: !1552, file: !1299, line: 1135, type: !1555)
!1552 = distinct !DISubprogram(name: "mbszero", scope: !1299, file: !1299, line: 1135, type: !1553, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1556)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{null, !1555}
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!1556 = !{!1551}
!1557 = !DILocation(line: 0, scope: !1552, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 230, column: 18, scope: !480, inlinedAt: !1541)
!1559 = !DILocalVariable(name: "__dest", arg: 1, scope: !1560, file: !1308, line: 57, type: !94)
!1560 = distinct !DISubprogram(name: "memset", scope: !1308, file: !1308, line: 57, type: !1309, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1561)
!1561 = !{!1559, !1562, !1563}
!1562 = !DILocalVariable(name: "__ch", arg: 2, scope: !1560, file: !1308, line: 57, type: !95)
!1563 = !DILocalVariable(name: "__len", arg: 3, scope: !1560, file: !1308, line: 57, type: !97)
!1564 = !DILocation(line: 0, scope: !1560, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 1137, column: 3, scope: !1552, inlinedAt: !1558)
!1566 = !DILocation(line: 59, column: 10, scope: !1560, inlinedAt: !1565)
!1567 = !DILocation(line: 231, column: 7, scope: !1568, inlinedAt: !1541)
!1568 = distinct !DILexicalBlock(scope: !480, file: !405, line: 231, column: 7)
!1569 = !DILocation(line: 231, column: 40, scope: !1568, inlinedAt: !1541)
!1570 = !DILocation(line: 231, column: 45, scope: !1568, inlinedAt: !1541)
!1571 = !DILocation(line: 235, column: 1, scope: !480, inlinedAt: !1541)
!1572 = !DILocation(line: 0, scope: !480, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 358, column: 27, scope: !1542)
!1574 = !DILocation(line: 199, column: 29, scope: !480, inlinedAt: !1573)
!1575 = !DILocation(line: 201, column: 19, scope: !1546, inlinedAt: !1573)
!1576 = !DILocation(line: 201, column: 7, scope: !480, inlinedAt: !1573)
!1577 = !DILocation(line: 229, column: 3, scope: !480, inlinedAt: !1573)
!1578 = !DILocation(line: 230, column: 3, scope: !480, inlinedAt: !1573)
!1579 = !DILocation(line: 230, column: 13, scope: !480, inlinedAt: !1573)
!1580 = !DILocation(line: 0, scope: !1552, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 230, column: 18, scope: !480, inlinedAt: !1573)
!1582 = !DILocation(line: 0, scope: !1560, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 1137, column: 3, scope: !1552, inlinedAt: !1581)
!1584 = !DILocation(line: 59, column: 10, scope: !1560, inlinedAt: !1583)
!1585 = !DILocation(line: 231, column: 7, scope: !1568, inlinedAt: !1573)
!1586 = !DILocation(line: 231, column: 40, scope: !1568, inlinedAt: !1573)
!1587 = !DILocation(line: 231, column: 45, scope: !1568, inlinedAt: !1573)
!1588 = !DILocation(line: 235, column: 1, scope: !480, inlinedAt: !1573)
!1589 = !DILocation(line: 360, column: 14, scope: !1479)
!1590 = !DILocation(line: 360, column: 13, scope: !1480)
!1591 = !DILocation(line: 0, scope: !1478)
!1592 = !DILocation(line: 361, column: 45, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1478, file: !405, line: 361, column: 11)
!1594 = !DILocation(line: 361, column: 11, scope: !1478)
!1595 = !DILocation(line: 362, column: 13, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !405, line: 362, column: 13)
!1597 = distinct !DILexicalBlock(scope: !1593, file: !405, line: 362, column: 13)
!1598 = !DILocation(line: 362, column: 13, scope: !1597)
!1599 = !DILocation(line: 361, column: 52, scope: !1593)
!1600 = distinct !{!1600, !1594, !1601, !787}
!1601 = !DILocation(line: 362, column: 13, scope: !1478)
!1602 = !DILocation(line: 260, column: 10, scope: !1452)
!1603 = !DILocation(line: 365, column: 28, scope: !1480)
!1604 = !DILocation(line: 367, column: 7, scope: !1481)
!1605 = !DILocation(line: 370, column: 7, scope: !1481)
!1606 = !DILocation(line: 373, column: 7, scope: !1481)
!1607 = !DILocation(line: 376, column: 12, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1481, file: !405, line: 376, column: 11)
!1609 = !DILocation(line: 376, column: 11, scope: !1481)
!1610 = !DILocation(line: 381, column: 12, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1481, file: !405, line: 381, column: 11)
!1612 = !DILocation(line: 381, column: 11, scope: !1481)
!1613 = !DILocation(line: 382, column: 9, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !405, line: 382, column: 9)
!1615 = distinct !DILexicalBlock(scope: !1611, file: !405, line: 382, column: 9)
!1616 = !DILocation(line: 382, column: 9, scope: !1615)
!1617 = !DILocation(line: 389, column: 7, scope: !1481)
!1618 = !DILocation(line: 392, column: 7, scope: !1481)
!1619 = !DILocation(line: 0, scope: !1483)
!1620 = !DILocation(line: 395, column: 8, scope: !1483)
!1621 = !DILocation(line: 309, column: 8, scope: !1452)
!1622 = !DILocation(line: 395, scope: !1483)
!1623 = !DILocation(line: 395, column: 34, scope: !1486)
!1624 = !DILocation(line: 395, column: 26, scope: !1486)
!1625 = !DILocation(line: 395, column: 48, scope: !1486)
!1626 = !DILocation(line: 395, column: 55, scope: !1486)
!1627 = !DILocation(line: 395, column: 3, scope: !1483)
!1628 = !DILocation(line: 395, column: 67, scope: !1486)
!1629 = !DILocation(line: 0, scope: !1485)
!1630 = !DILocation(line: 402, column: 11, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1485, file: !405, line: 401, column: 11)
!1632 = !DILocation(line: 404, column: 17, scope: !1631)
!1633 = !DILocation(line: 405, column: 39, scope: !1631)
!1634 = !DILocation(line: 409, column: 32, scope: !1631)
!1635 = !DILocation(line: 405, column: 19, scope: !1631)
!1636 = !DILocation(line: 405, column: 15, scope: !1631)
!1637 = !DILocation(line: 410, column: 11, scope: !1631)
!1638 = !DILocation(line: 410, column: 25, scope: !1631)
!1639 = !DILocalVariable(name: "__s1", arg: 1, scope: !1640, file: !753, line: 974, type: !925)
!1640 = distinct !DISubprogram(name: "memeq", scope: !753, file: !753, line: 974, type: !1269, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1641)
!1641 = !{!1639, !1642, !1643}
!1642 = !DILocalVariable(name: "__s2", arg: 2, scope: !1640, file: !753, line: 974, type: !925)
!1643 = !DILocalVariable(name: "__n", arg: 3, scope: !1640, file: !753, line: 974, type: !97)
!1644 = !DILocation(line: 0, scope: !1640, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 410, column: 14, scope: !1631)
!1646 = !DILocation(line: 976, column: 11, scope: !1640, inlinedAt: !1645)
!1647 = !DILocation(line: 976, column: 10, scope: !1640, inlinedAt: !1645)
!1648 = !DILocation(line: 401, column: 11, scope: !1485)
!1649 = !DILocation(line: 417, column: 25, scope: !1485)
!1650 = !DILocation(line: 418, column: 7, scope: !1485)
!1651 = !DILocation(line: 421, column: 15, scope: !1492)
!1652 = !DILocation(line: 423, column: 15, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !405, line: 423, column: 15)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !405, line: 422, column: 13)
!1655 = distinct !DILexicalBlock(scope: !1492, file: !405, line: 421, column: 15)
!1656 = !DILocation(line: 423, column: 15, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1653, file: !405, line: 423, column: 15)
!1658 = !DILocation(line: 423, column: 15, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !405, line: 423, column: 15)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !405, line: 423, column: 15)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !405, line: 423, column: 15)
!1662 = !DILocation(line: 423, column: 15, scope: !1660)
!1663 = !DILocation(line: 423, column: 15, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !405, line: 423, column: 15)
!1665 = distinct !DILexicalBlock(scope: !1661, file: !405, line: 423, column: 15)
!1666 = !DILocation(line: 423, column: 15, scope: !1665)
!1667 = !DILocation(line: 423, column: 15, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !405, line: 423, column: 15)
!1669 = distinct !DILexicalBlock(scope: !1661, file: !405, line: 423, column: 15)
!1670 = !DILocation(line: 423, column: 15, scope: !1669)
!1671 = !DILocation(line: 423, column: 15, scope: !1661)
!1672 = !DILocation(line: 423, column: 15, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !405, line: 423, column: 15)
!1674 = distinct !DILexicalBlock(scope: !1653, file: !405, line: 423, column: 15)
!1675 = !DILocation(line: 423, column: 15, scope: !1674)
!1676 = !DILocation(line: 431, column: 19, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1654, file: !405, line: 430, column: 19)
!1678 = !DILocation(line: 431, column: 24, scope: !1677)
!1679 = !DILocation(line: 431, column: 28, scope: !1677)
!1680 = !DILocation(line: 431, column: 38, scope: !1677)
!1681 = !DILocation(line: 431, column: 48, scope: !1677)
!1682 = !DILocation(line: 431, column: 59, scope: !1677)
!1683 = !DILocation(line: 433, column: 19, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !405, line: 433, column: 19)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !405, line: 433, column: 19)
!1686 = distinct !DILexicalBlock(scope: !1677, file: !405, line: 432, column: 17)
!1687 = !DILocation(line: 433, column: 19, scope: !1685)
!1688 = !DILocation(line: 434, column: 19, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !405, line: 434, column: 19)
!1690 = distinct !DILexicalBlock(scope: !1686, file: !405, line: 434, column: 19)
!1691 = !DILocation(line: 434, column: 19, scope: !1690)
!1692 = !DILocation(line: 435, column: 17, scope: !1686)
!1693 = !DILocation(line: 442, column: 20, scope: !1655)
!1694 = !DILocation(line: 447, column: 11, scope: !1492)
!1695 = !DILocation(line: 450, column: 19, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1492, file: !405, line: 448, column: 13)
!1697 = !DILocation(line: 456, column: 19, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1696, file: !405, line: 455, column: 19)
!1699 = !DILocation(line: 456, column: 24, scope: !1698)
!1700 = !DILocation(line: 456, column: 28, scope: !1698)
!1701 = !DILocation(line: 456, column: 38, scope: !1698)
!1702 = !DILocation(line: 456, column: 47, scope: !1698)
!1703 = !DILocation(line: 456, column: 41, scope: !1698)
!1704 = !DILocation(line: 456, column: 52, scope: !1698)
!1705 = !DILocation(line: 455, column: 19, scope: !1696)
!1706 = !DILocation(line: 457, column: 25, scope: !1698)
!1707 = !DILocation(line: 457, column: 17, scope: !1698)
!1708 = !DILocation(line: 464, column: 25, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1698, file: !405, line: 458, column: 19)
!1710 = !DILocation(line: 468, column: 21, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !405, line: 468, column: 21)
!1712 = distinct !DILexicalBlock(scope: !1709, file: !405, line: 468, column: 21)
!1713 = !DILocation(line: 468, column: 21, scope: !1712)
!1714 = !DILocation(line: 469, column: 21, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !405, line: 469, column: 21)
!1716 = distinct !DILexicalBlock(scope: !1709, file: !405, line: 469, column: 21)
!1717 = !DILocation(line: 469, column: 21, scope: !1716)
!1718 = !DILocation(line: 470, column: 21, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !405, line: 470, column: 21)
!1720 = distinct !DILexicalBlock(scope: !1709, file: !405, line: 470, column: 21)
!1721 = !DILocation(line: 470, column: 21, scope: !1720)
!1722 = !DILocation(line: 471, column: 21, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !405, line: 471, column: 21)
!1724 = distinct !DILexicalBlock(scope: !1709, file: !405, line: 471, column: 21)
!1725 = !DILocation(line: 471, column: 21, scope: !1724)
!1726 = !DILocation(line: 472, column: 21, scope: !1709)
!1727 = !DILocation(line: 482, column: 33, scope: !1515)
!1728 = !DILocation(line: 483, column: 33, scope: !1515)
!1729 = !DILocation(line: 485, column: 33, scope: !1515)
!1730 = !DILocation(line: 486, column: 33, scope: !1515)
!1731 = !DILocation(line: 487, column: 33, scope: !1515)
!1732 = !DILocation(line: 490, column: 17, scope: !1515)
!1733 = !DILocation(line: 492, column: 21, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !405, line: 491, column: 15)
!1735 = distinct !DILexicalBlock(scope: !1515, file: !405, line: 490, column: 17)
!1736 = !DILocation(line: 499, column: 35, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1515, file: !405, line: 499, column: 17)
!1738 = !DILocation(line: 499, column: 57, scope: !1737)
!1739 = !DILocation(line: 0, scope: !1515)
!1740 = !DILocation(line: 502, column: 11, scope: !1515)
!1741 = !DILocation(line: 504, column: 17, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1515, file: !405, line: 503, column: 17)
!1743 = !DILocation(line: 507, column: 11, scope: !1515)
!1744 = !DILocation(line: 508, column: 17, scope: !1515)
!1745 = !DILocation(line: 517, column: 15, scope: !1492)
!1746 = !DILocation(line: 517, column: 40, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1492, file: !405, line: 517, column: 15)
!1748 = !DILocation(line: 517, column: 47, scope: !1747)
!1749 = !DILocation(line: 517, column: 18, scope: !1747)
!1750 = !DILocation(line: 521, column: 17, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1492, file: !405, line: 521, column: 15)
!1752 = !DILocation(line: 521, column: 15, scope: !1492)
!1753 = !DILocation(line: 525, column: 11, scope: !1492)
!1754 = !DILocation(line: 537, column: 15, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1492, file: !405, line: 536, column: 15)
!1756 = !DILocation(line: 544, column: 15, scope: !1492)
!1757 = !DILocation(line: 546, column: 19, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !405, line: 545, column: 13)
!1759 = distinct !DILexicalBlock(scope: !1492, file: !405, line: 544, column: 15)
!1760 = !DILocation(line: 549, column: 19, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1758, file: !405, line: 549, column: 19)
!1762 = !DILocation(line: 549, column: 30, scope: !1761)
!1763 = !DILocation(line: 558, column: 15, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !405, line: 558, column: 15)
!1765 = distinct !DILexicalBlock(scope: !1758, file: !405, line: 558, column: 15)
!1766 = !DILocation(line: 558, column: 15, scope: !1765)
!1767 = !DILocation(line: 559, column: 15, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !405, line: 559, column: 15)
!1769 = distinct !DILexicalBlock(scope: !1758, file: !405, line: 559, column: 15)
!1770 = !DILocation(line: 559, column: 15, scope: !1769)
!1771 = !DILocation(line: 560, column: 15, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !405, line: 560, column: 15)
!1773 = distinct !DILexicalBlock(scope: !1758, file: !405, line: 560, column: 15)
!1774 = !DILocation(line: 560, column: 15, scope: !1773)
!1775 = !DILocation(line: 562, column: 13, scope: !1758)
!1776 = !DILocation(line: 602, column: 17, scope: !1491)
!1777 = !DILocation(line: 0, scope: !1491)
!1778 = !DILocation(line: 605, column: 29, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1496, file: !405, line: 603, column: 15)
!1780 = !DILocation(line: 605, column: 27, scope: !1779)
!1781 = !DILocation(line: 668, column: 40, scope: !1491)
!1782 = !DILocation(line: 670, column: 23, scope: !1512)
!1783 = !DILocation(line: 609, column: 17, scope: !1495)
!1784 = !DILocation(line: 609, column: 27, scope: !1495)
!1785 = !DILocation(line: 0, scope: !1552, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 609, column: 32, scope: !1495)
!1787 = !DILocation(line: 0, scope: !1560, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 1137, column: 3, scope: !1552, inlinedAt: !1786)
!1789 = !DILocation(line: 59, column: 10, scope: !1560, inlinedAt: !1788)
!1790 = !DILocation(line: 613, column: 29, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1495, file: !405, line: 613, column: 21)
!1792 = !DILocation(line: 613, column: 21, scope: !1495)
!1793 = !DILocation(line: 614, column: 29, scope: !1791)
!1794 = !DILocation(line: 614, column: 19, scope: !1791)
!1795 = !DILocation(line: 618, column: 21, scope: !1498)
!1796 = !DILocation(line: 620, column: 54, scope: !1498)
!1797 = !DILocation(line: 0, scope: !1498)
!1798 = !DILocation(line: 619, column: 36, scope: !1498)
!1799 = !DILocation(line: 621, column: 25, scope: !1498)
!1800 = !DILocation(line: 631, column: 38, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1507, file: !405, line: 629, column: 23)
!1802 = !DILocation(line: 631, column: 48, scope: !1801)
!1803 = !DILocation(line: 665, column: 19, scope: !1499)
!1804 = !DILocation(line: 666, column: 15, scope: !1496)
!1805 = !DILocation(line: 626, column: 25, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1508, file: !405, line: 624, column: 23)
!1807 = !DILocation(line: 631, column: 51, scope: !1801)
!1808 = !DILocation(line: 631, column: 25, scope: !1801)
!1809 = !DILocation(line: 632, column: 28, scope: !1801)
!1810 = !DILocation(line: 631, column: 34, scope: !1801)
!1811 = distinct !{!1811, !1808, !1809, !787}
!1812 = !DILocation(line: 646, column: 29, scope: !1505)
!1813 = !DILocation(line: 0, scope: !1503)
!1814 = !DILocation(line: 649, column: 49, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1503, file: !405, line: 648, column: 29)
!1816 = !DILocation(line: 649, column: 39, scope: !1815)
!1817 = !DILocation(line: 649, column: 31, scope: !1815)
!1818 = !DILocation(line: 648, column: 60, scope: !1815)
!1819 = !DILocation(line: 648, column: 50, scope: !1815)
!1820 = !DILocation(line: 648, column: 29, scope: !1503)
!1821 = distinct !{!1821, !1820, !1822, !787}
!1822 = !DILocation(line: 654, column: 33, scope: !1503)
!1823 = !DILocation(line: 657, column: 43, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1506, file: !405, line: 657, column: 29)
!1825 = !DILocalVariable(name: "wc", arg: 1, scope: !1826, file: !1827, line: 865, type: !1830)
!1826 = distinct !DISubprogram(name: "c32isprint", scope: !1827, file: !1827, line: 865, type: !1828, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1832)
!1827 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!95, !1830}
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1831, line: 20, baseType: !78)
!1831 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1832 = !{!1825}
!1833 = !DILocation(line: 0, scope: !1826, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 657, column: 31, scope: !1824)
!1835 = !DILocation(line: 871, column: 10, scope: !1826, inlinedAt: !1834)
!1836 = !DILocation(line: 657, column: 31, scope: !1824)
!1837 = !DILocation(line: 657, column: 29, scope: !1506)
!1838 = !DILocation(line: 664, column: 23, scope: !1498)
!1839 = !DILocation(line: 670, column: 19, scope: !1512)
!1840 = !DILocation(line: 670, column: 45, scope: !1512)
!1841 = !DILocation(line: 674, column: 33, scope: !1511)
!1842 = !DILocation(line: 0, scope: !1511)
!1843 = !DILocation(line: 676, column: 17, scope: !1511)
!1844 = !DILocation(line: 398, column: 12, scope: !1485)
!1845 = !DILocation(line: 678, column: 43, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !405, line: 678, column: 25)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !405, line: 677, column: 19)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !405, line: 676, column: 17)
!1849 = distinct !DILexicalBlock(scope: !1511, file: !405, line: 676, column: 17)
!1850 = !DILocation(line: 680, column: 25, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !405, line: 680, column: 25)
!1852 = distinct !DILexicalBlock(scope: !1846, file: !405, line: 679, column: 23)
!1853 = !DILocation(line: 680, column: 25, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1851, file: !405, line: 680, column: 25)
!1855 = !DILocation(line: 680, column: 25, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !405, line: 680, column: 25)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !405, line: 680, column: 25)
!1858 = distinct !DILexicalBlock(scope: !1854, file: !405, line: 680, column: 25)
!1859 = !DILocation(line: 680, column: 25, scope: !1857)
!1860 = !DILocation(line: 680, column: 25, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !405, line: 680, column: 25)
!1862 = distinct !DILexicalBlock(scope: !1858, file: !405, line: 680, column: 25)
!1863 = !DILocation(line: 680, column: 25, scope: !1862)
!1864 = !DILocation(line: 680, column: 25, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !405, line: 680, column: 25)
!1866 = distinct !DILexicalBlock(scope: !1858, file: !405, line: 680, column: 25)
!1867 = !DILocation(line: 680, column: 25, scope: !1866)
!1868 = !DILocation(line: 680, column: 25, scope: !1858)
!1869 = !DILocation(line: 680, column: 25, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !405, line: 680, column: 25)
!1871 = distinct !DILexicalBlock(scope: !1851, file: !405, line: 680, column: 25)
!1872 = !DILocation(line: 680, column: 25, scope: !1871)
!1873 = !DILocation(line: 681, column: 25, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !405, line: 681, column: 25)
!1875 = distinct !DILexicalBlock(scope: !1852, file: !405, line: 681, column: 25)
!1876 = !DILocation(line: 681, column: 25, scope: !1875)
!1877 = !DILocation(line: 682, column: 25, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !405, line: 682, column: 25)
!1879 = distinct !DILexicalBlock(scope: !1852, file: !405, line: 682, column: 25)
!1880 = !DILocation(line: 682, column: 25, scope: !1879)
!1881 = !DILocation(line: 683, column: 38, scope: !1852)
!1882 = !DILocation(line: 683, column: 33, scope: !1852)
!1883 = !DILocation(line: 684, column: 23, scope: !1852)
!1884 = !DILocation(line: 685, column: 30, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1846, file: !405, line: 685, column: 30)
!1886 = !DILocation(line: 685, column: 30, scope: !1846)
!1887 = !DILocation(line: 687, column: 25, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !405, line: 687, column: 25)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !405, line: 687, column: 25)
!1890 = distinct !DILexicalBlock(scope: !1885, file: !405, line: 686, column: 23)
!1891 = !DILocation(line: 687, column: 25, scope: !1889)
!1892 = !DILocation(line: 689, column: 23, scope: !1890)
!1893 = !DILocation(line: 690, column: 35, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1847, file: !405, line: 690, column: 25)
!1895 = !DILocation(line: 690, column: 30, scope: !1894)
!1896 = !DILocation(line: 690, column: 25, scope: !1847)
!1897 = !DILocation(line: 692, column: 21, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !405, line: 692, column: 21)
!1899 = distinct !DILexicalBlock(scope: !1847, file: !405, line: 692, column: 21)
!1900 = !DILocation(line: 692, column: 21, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !405, line: 692, column: 21)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !405, line: 692, column: 21)
!1903 = distinct !DILexicalBlock(scope: !1898, file: !405, line: 692, column: 21)
!1904 = !DILocation(line: 692, column: 21, scope: !1902)
!1905 = !DILocation(line: 692, column: 21, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !405, line: 692, column: 21)
!1907 = distinct !DILexicalBlock(scope: !1903, file: !405, line: 692, column: 21)
!1908 = !DILocation(line: 692, column: 21, scope: !1907)
!1909 = !DILocation(line: 692, column: 21, scope: !1903)
!1910 = !DILocation(line: 0, scope: !1847)
!1911 = !DILocation(line: 693, column: 21, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !405, line: 693, column: 21)
!1913 = distinct !DILexicalBlock(scope: !1847, file: !405, line: 693, column: 21)
!1914 = !DILocation(line: 693, column: 21, scope: !1913)
!1915 = !DILocation(line: 694, column: 25, scope: !1847)
!1916 = !DILocation(line: 676, column: 17, scope: !1848)
!1917 = distinct !{!1917, !1918, !1919}
!1918 = !DILocation(line: 676, column: 17, scope: !1849)
!1919 = !DILocation(line: 695, column: 19, scope: !1849)
!1920 = !DILocation(line: 409, column: 30, scope: !1631)
!1921 = !DILocation(line: 702, column: 34, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1485, file: !405, line: 702, column: 11)
!1923 = !DILocation(line: 704, column: 14, scope: !1922)
!1924 = !DILocation(line: 705, column: 14, scope: !1922)
!1925 = !DILocation(line: 705, column: 35, scope: !1922)
!1926 = !DILocation(line: 705, column: 17, scope: !1922)
!1927 = !DILocation(line: 705, column: 47, scope: !1922)
!1928 = !DILocation(line: 705, column: 65, scope: !1922)
!1929 = !DILocation(line: 706, column: 11, scope: !1922)
!1930 = !DILocation(line: 702, column: 11, scope: !1485)
!1931 = !DILocation(line: 395, column: 15, scope: !1483)
!1932 = !DILocation(line: 709, column: 5, scope: !1485)
!1933 = !DILocation(line: 710, column: 7, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1485, file: !405, line: 710, column: 7)
!1935 = !DILocation(line: 710, column: 7, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1934, file: !405, line: 710, column: 7)
!1937 = !DILocation(line: 710, column: 7, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !405, line: 710, column: 7)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !405, line: 710, column: 7)
!1940 = distinct !DILexicalBlock(scope: !1936, file: !405, line: 710, column: 7)
!1941 = !DILocation(line: 710, column: 7, scope: !1939)
!1942 = !DILocation(line: 710, column: 7, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !405, line: 710, column: 7)
!1944 = distinct !DILexicalBlock(scope: !1940, file: !405, line: 710, column: 7)
!1945 = !DILocation(line: 710, column: 7, scope: !1944)
!1946 = !DILocation(line: 710, column: 7, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !405, line: 710, column: 7)
!1948 = distinct !DILexicalBlock(scope: !1940, file: !405, line: 710, column: 7)
!1949 = !DILocation(line: 710, column: 7, scope: !1948)
!1950 = !DILocation(line: 710, column: 7, scope: !1940)
!1951 = !DILocation(line: 710, column: 7, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !405, line: 710, column: 7)
!1953 = distinct !DILexicalBlock(scope: !1934, file: !405, line: 710, column: 7)
!1954 = !DILocation(line: 710, column: 7, scope: !1953)
!1955 = !DILocation(line: 712, column: 5, scope: !1485)
!1956 = !DILocation(line: 713, column: 7, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !405, line: 713, column: 7)
!1958 = distinct !DILexicalBlock(scope: !1485, file: !405, line: 713, column: 7)
!1959 = !DILocation(line: 417, column: 21, scope: !1485)
!1960 = !DILocation(line: 713, column: 7, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !405, line: 713, column: 7)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !405, line: 713, column: 7)
!1963 = distinct !DILexicalBlock(scope: !1957, file: !405, line: 713, column: 7)
!1964 = !DILocation(line: 713, column: 7, scope: !1962)
!1965 = !DILocation(line: 713, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !405, line: 713, column: 7)
!1967 = distinct !DILexicalBlock(scope: !1963, file: !405, line: 713, column: 7)
!1968 = !DILocation(line: 713, column: 7, scope: !1967)
!1969 = !DILocation(line: 713, column: 7, scope: !1963)
!1970 = !DILocation(line: 714, column: 7, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !405, line: 714, column: 7)
!1972 = distinct !DILexicalBlock(scope: !1485, file: !405, line: 714, column: 7)
!1973 = !DILocation(line: 714, column: 7, scope: !1972)
!1974 = !DILocation(line: 716, column: 13, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1485, file: !405, line: 716, column: 11)
!1976 = !DILocation(line: 716, column: 11, scope: !1485)
!1977 = !DILocation(line: 718, column: 5, scope: !1486)
!1978 = !DILocation(line: 395, column: 82, scope: !1486)
!1979 = !DILocation(line: 395, column: 3, scope: !1486)
!1980 = distinct !{!1980, !1627, !1981, !787}
!1981 = !DILocation(line: 718, column: 5, scope: !1483)
!1982 = !DILocation(line: 720, column: 11, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1452, file: !405, line: 720, column: 7)
!1984 = !DILocation(line: 720, column: 16, scope: !1983)
!1985 = !DILocation(line: 728, column: 51, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1452, file: !405, line: 728, column: 7)
!1987 = !DILocation(line: 731, column: 11, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !405, line: 731, column: 11)
!1989 = distinct !DILexicalBlock(scope: !1986, file: !405, line: 730, column: 5)
!1990 = !DILocation(line: 731, column: 11, scope: !1989)
!1991 = !DILocation(line: 732, column: 16, scope: !1988)
!1992 = !DILocation(line: 732, column: 9, scope: !1988)
!1993 = !DILocation(line: 736, column: 18, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1988, file: !405, line: 736, column: 16)
!1995 = !DILocation(line: 736, column: 29, scope: !1994)
!1996 = !DILocation(line: 745, column: 7, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1452, file: !405, line: 745, column: 7)
!1998 = !DILocation(line: 745, column: 20, scope: !1997)
!1999 = !DILocation(line: 746, column: 12, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !405, line: 746, column: 5)
!2001 = distinct !DILexicalBlock(scope: !1997, file: !405, line: 746, column: 5)
!2002 = !DILocation(line: 746, column: 5, scope: !2001)
!2003 = !DILocation(line: 747, column: 7, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !405, line: 747, column: 7)
!2005 = distinct !DILexicalBlock(scope: !2000, file: !405, line: 747, column: 7)
!2006 = !DILocation(line: 747, column: 7, scope: !2005)
!2007 = !DILocation(line: 746, column: 39, scope: !2000)
!2008 = distinct !{!2008, !2002, !2009, !787}
!2009 = !DILocation(line: 747, column: 7, scope: !2001)
!2010 = !DILocation(line: 749, column: 11, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1452, file: !405, line: 749, column: 7)
!2012 = !DILocation(line: 749, column: 7, scope: !1452)
!2013 = !DILocation(line: 750, column: 5, scope: !2011)
!2014 = !DILocation(line: 750, column: 17, scope: !2011)
!2015 = !DILocation(line: 753, column: 2, scope: !1452)
!2016 = !DILocation(line: 756, column: 51, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1452, file: !405, line: 756, column: 7)
!2018 = !DILocation(line: 756, column: 21, scope: !2017)
!2019 = !DILocation(line: 760, column: 42, scope: !1452)
!2020 = !DILocation(line: 758, column: 10, scope: !1452)
!2021 = !DILocation(line: 758, column: 3, scope: !1452)
!2022 = !DILocation(line: 762, column: 1, scope: !1452)
!2023 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !888, file: !888, line: 98, type: !2024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!97}
!2026 = !DISubprogram(name: "strlen", scope: !894, file: !894, line: 407, type: !2027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!99, !72}
!2029 = !DISubprogram(name: "iswprint", scope: !2030, file: !2030, line: 120, type: !1828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!2030 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2031 = distinct !DISubprogram(name: "quotearg_alloc", scope: !405, file: !405, line: 788, type: !2032, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2034)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!93, !72, !97, !1345}
!2034 = !{!2035, !2036, !2037}
!2035 = !DILocalVariable(name: "arg", arg: 1, scope: !2031, file: !405, line: 788, type: !72)
!2036 = !DILocalVariable(name: "argsize", arg: 2, scope: !2031, file: !405, line: 788, type: !97)
!2037 = !DILocalVariable(name: "o", arg: 3, scope: !2031, file: !405, line: 789, type: !1345)
!2038 = !DILocation(line: 0, scope: !2031)
!2039 = !DILocalVariable(name: "arg", arg: 1, scope: !2040, file: !405, line: 801, type: !72)
!2040 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !405, file: !405, line: 801, type: !2041, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2043)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!93, !72, !97, !656, !1345}
!2043 = !{!2039, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051}
!2044 = !DILocalVariable(name: "argsize", arg: 2, scope: !2040, file: !405, line: 801, type: !97)
!2045 = !DILocalVariable(name: "size", arg: 3, scope: !2040, file: !405, line: 801, type: !656)
!2046 = !DILocalVariable(name: "o", arg: 4, scope: !2040, file: !405, line: 802, type: !1345)
!2047 = !DILocalVariable(name: "p", scope: !2040, file: !405, line: 804, type: !1345)
!2048 = !DILocalVariable(name: "saved_errno", scope: !2040, file: !405, line: 805, type: !95)
!2049 = !DILocalVariable(name: "flags", scope: !2040, file: !405, line: 807, type: !95)
!2050 = !DILocalVariable(name: "bufsize", scope: !2040, file: !405, line: 808, type: !97)
!2051 = !DILocalVariable(name: "buf", scope: !2040, file: !405, line: 812, type: !93)
!2052 = !DILocation(line: 0, scope: !2040, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 791, column: 10, scope: !2031)
!2054 = !DILocation(line: 804, column: 37, scope: !2040, inlinedAt: !2053)
!2055 = !DILocation(line: 805, column: 21, scope: !2040, inlinedAt: !2053)
!2056 = !DILocation(line: 807, column: 18, scope: !2040, inlinedAt: !2053)
!2057 = !DILocation(line: 807, column: 24, scope: !2040, inlinedAt: !2053)
!2058 = !DILocation(line: 808, column: 72, scope: !2040, inlinedAt: !2053)
!2059 = !DILocation(line: 809, column: 56, scope: !2040, inlinedAt: !2053)
!2060 = !DILocation(line: 810, column: 49, scope: !2040, inlinedAt: !2053)
!2061 = !DILocation(line: 811, column: 49, scope: !2040, inlinedAt: !2053)
!2062 = !DILocation(line: 808, column: 20, scope: !2040, inlinedAt: !2053)
!2063 = !DILocation(line: 811, column: 62, scope: !2040, inlinedAt: !2053)
!2064 = !DILocation(line: 812, column: 15, scope: !2040, inlinedAt: !2053)
!2065 = !DILocation(line: 813, column: 60, scope: !2040, inlinedAt: !2053)
!2066 = !DILocation(line: 815, column: 32, scope: !2040, inlinedAt: !2053)
!2067 = !DILocation(line: 815, column: 47, scope: !2040, inlinedAt: !2053)
!2068 = !DILocation(line: 813, column: 3, scope: !2040, inlinedAt: !2053)
!2069 = !DILocation(line: 816, column: 9, scope: !2040, inlinedAt: !2053)
!2070 = !DILocation(line: 791, column: 3, scope: !2031)
!2071 = !DILocation(line: 0, scope: !2040)
!2072 = !DILocation(line: 804, column: 37, scope: !2040)
!2073 = !DILocation(line: 805, column: 21, scope: !2040)
!2074 = !DILocation(line: 807, column: 18, scope: !2040)
!2075 = !DILocation(line: 807, column: 27, scope: !2040)
!2076 = !DILocation(line: 807, column: 24, scope: !2040)
!2077 = !DILocation(line: 808, column: 72, scope: !2040)
!2078 = !DILocation(line: 809, column: 56, scope: !2040)
!2079 = !DILocation(line: 810, column: 49, scope: !2040)
!2080 = !DILocation(line: 811, column: 49, scope: !2040)
!2081 = !DILocation(line: 808, column: 20, scope: !2040)
!2082 = !DILocation(line: 811, column: 62, scope: !2040)
!2083 = !DILocation(line: 812, column: 15, scope: !2040)
!2084 = !DILocation(line: 813, column: 60, scope: !2040)
!2085 = !DILocation(line: 815, column: 32, scope: !2040)
!2086 = !DILocation(line: 815, column: 47, scope: !2040)
!2087 = !DILocation(line: 813, column: 3, scope: !2040)
!2088 = !DILocation(line: 816, column: 9, scope: !2040)
!2089 = !DILocation(line: 817, column: 7, scope: !2040)
!2090 = !DILocation(line: 818, column: 11, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2040, file: !405, line: 817, column: 7)
!2092 = !{!1157, !1157, i64 0}
!2093 = !DILocation(line: 818, column: 5, scope: !2091)
!2094 = !DILocation(line: 819, column: 3, scope: !2040)
!2095 = distinct !DISubprogram(name: "quotearg_free", scope: !405, file: !405, line: 837, type: !360, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2096)
!2096 = !{!2097, !2098}
!2097 = !DILocalVariable(name: "sv", scope: !2095, file: !405, line: 839, type: !503)
!2098 = !DILocalVariable(name: "i", scope: !2099, file: !405, line: 840, type: !95)
!2099 = distinct !DILexicalBlock(scope: !2095, file: !405, line: 840, column: 3)
!2100 = !DILocation(line: 839, column: 24, scope: !2095)
!2101 = !DILocation(line: 0, scope: !2095)
!2102 = !DILocation(line: 0, scope: !2099)
!2103 = !DILocation(line: 840, column: 21, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2099, file: !405, line: 840, column: 3)
!2105 = !DILocation(line: 840, column: 3, scope: !2099)
!2106 = !DILocation(line: 842, column: 13, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2095, file: !405, line: 842, column: 7)
!2108 = !{!2109, !719, i64 8}
!2109 = !{!"slotvec", !1157, i64 0, !719, i64 8}
!2110 = !DILocation(line: 842, column: 17, scope: !2107)
!2111 = !DILocation(line: 842, column: 7, scope: !2095)
!2112 = !DILocation(line: 841, column: 17, scope: !2104)
!2113 = !DILocation(line: 841, column: 5, scope: !2104)
!2114 = !DILocation(line: 840, column: 32, scope: !2104)
!2115 = distinct !{!2115, !2105, !2116, !787}
!2116 = !DILocation(line: 841, column: 20, scope: !2099)
!2117 = !DILocation(line: 844, column: 7, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2107, file: !405, line: 843, column: 5)
!2119 = !DILocation(line: 845, column: 21, scope: !2118)
!2120 = !{!2109, !1157, i64 0}
!2121 = !DILocation(line: 846, column: 20, scope: !2118)
!2122 = !DILocation(line: 847, column: 5, scope: !2118)
!2123 = !DILocation(line: 848, column: 10, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2095, file: !405, line: 848, column: 7)
!2125 = !DILocation(line: 848, column: 7, scope: !2095)
!2126 = !DILocation(line: 850, column: 7, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2124, file: !405, line: 849, column: 5)
!2128 = !DILocation(line: 851, column: 15, scope: !2127)
!2129 = !DILocation(line: 852, column: 5, scope: !2127)
!2130 = !DILocation(line: 853, column: 10, scope: !2095)
!2131 = !DILocation(line: 854, column: 1, scope: !2095)
!2132 = !DISubprogram(name: "free", scope: !1299, file: !1299, line: 786, type: !2133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !94}
!2135 = distinct !DISubprogram(name: "quotearg_n", scope: !405, file: !405, line: 919, type: !891, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2136)
!2136 = !{!2137, !2138}
!2137 = !DILocalVariable(name: "n", arg: 1, scope: !2135, file: !405, line: 919, type: !95)
!2138 = !DILocalVariable(name: "arg", arg: 2, scope: !2135, file: !405, line: 919, type: !72)
!2139 = !DILocation(line: 0, scope: !2135)
!2140 = !DILocation(line: 921, column: 10, scope: !2135)
!2141 = !DILocation(line: 921, column: 3, scope: !2135)
!2142 = distinct !DISubprogram(name: "quotearg_n_options", scope: !405, file: !405, line: 866, type: !2143, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2145)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!93, !95, !72, !97, !1345}
!2145 = !{!2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2156, !2157, !2159, !2160, !2161}
!2146 = !DILocalVariable(name: "n", arg: 1, scope: !2142, file: !405, line: 866, type: !95)
!2147 = !DILocalVariable(name: "arg", arg: 2, scope: !2142, file: !405, line: 866, type: !72)
!2148 = !DILocalVariable(name: "argsize", arg: 3, scope: !2142, file: !405, line: 866, type: !97)
!2149 = !DILocalVariable(name: "options", arg: 4, scope: !2142, file: !405, line: 867, type: !1345)
!2150 = !DILocalVariable(name: "saved_errno", scope: !2142, file: !405, line: 869, type: !95)
!2151 = !DILocalVariable(name: "sv", scope: !2142, file: !405, line: 871, type: !503)
!2152 = !DILocalVariable(name: "nslots_max", scope: !2142, file: !405, line: 873, type: !95)
!2153 = !DILocalVariable(name: "preallocated", scope: !2154, file: !405, line: 879, type: !217)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !405, line: 878, column: 5)
!2155 = distinct !DILexicalBlock(scope: !2142, file: !405, line: 877, column: 7)
!2156 = !DILocalVariable(name: "new_nslots", scope: !2154, file: !405, line: 880, type: !669)
!2157 = !DILocalVariable(name: "size", scope: !2158, file: !405, line: 891, type: !97)
!2158 = distinct !DILexicalBlock(scope: !2142, file: !405, line: 890, column: 3)
!2159 = !DILocalVariable(name: "val", scope: !2158, file: !405, line: 892, type: !93)
!2160 = !DILocalVariable(name: "flags", scope: !2158, file: !405, line: 894, type: !95)
!2161 = !DILocalVariable(name: "qsize", scope: !2158, file: !405, line: 895, type: !97)
!2162 = !DILocation(line: 0, scope: !2142)
!2163 = !DILocation(line: 869, column: 21, scope: !2142)
!2164 = !DILocation(line: 871, column: 24, scope: !2142)
!2165 = !DILocation(line: 874, column: 17, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2142, file: !405, line: 874, column: 7)
!2167 = !DILocation(line: 875, column: 5, scope: !2166)
!2168 = !DILocation(line: 877, column: 7, scope: !2155)
!2169 = !DILocation(line: 877, column: 14, scope: !2155)
!2170 = !DILocation(line: 877, column: 7, scope: !2142)
!2171 = !DILocation(line: 879, column: 31, scope: !2154)
!2172 = !DILocation(line: 0, scope: !2154)
!2173 = !DILocation(line: 880, column: 7, scope: !2154)
!2174 = !DILocation(line: 880, column: 26, scope: !2154)
!2175 = !DILocation(line: 880, column: 13, scope: !2154)
!2176 = !DILocation(line: 882, column: 31, scope: !2154)
!2177 = !DILocation(line: 883, column: 33, scope: !2154)
!2178 = !DILocation(line: 883, column: 42, scope: !2154)
!2179 = !DILocation(line: 883, column: 31, scope: !2154)
!2180 = !DILocation(line: 882, column: 22, scope: !2154)
!2181 = !DILocation(line: 882, column: 15, scope: !2154)
!2182 = !DILocation(line: 884, column: 11, scope: !2154)
!2183 = !DILocation(line: 885, column: 15, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2154, file: !405, line: 884, column: 11)
!2185 = !{i64 0, i64 8, !2092, i64 8, i64 8, !718}
!2186 = !DILocation(line: 885, column: 9, scope: !2184)
!2187 = !DILocation(line: 886, column: 20, scope: !2154)
!2188 = !DILocation(line: 886, column: 18, scope: !2154)
!2189 = !DILocation(line: 886, column: 32, scope: !2154)
!2190 = !DILocation(line: 886, column: 43, scope: !2154)
!2191 = !DILocation(line: 886, column: 53, scope: !2154)
!2192 = !DILocation(line: 0, scope: !1560, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 886, column: 7, scope: !2154)
!2194 = !DILocation(line: 59, column: 10, scope: !1560, inlinedAt: !2193)
!2195 = !DILocation(line: 887, column: 16, scope: !2154)
!2196 = !DILocation(line: 887, column: 14, scope: !2154)
!2197 = !DILocation(line: 888, column: 5, scope: !2155)
!2198 = !DILocation(line: 888, column: 5, scope: !2154)
!2199 = !DILocation(line: 891, column: 19, scope: !2158)
!2200 = !DILocation(line: 891, column: 25, scope: !2158)
!2201 = !DILocation(line: 0, scope: !2158)
!2202 = !DILocation(line: 892, column: 23, scope: !2158)
!2203 = !DILocation(line: 894, column: 26, scope: !2158)
!2204 = !DILocation(line: 894, column: 32, scope: !2158)
!2205 = !DILocation(line: 896, column: 55, scope: !2158)
!2206 = !DILocation(line: 897, column: 55, scope: !2158)
!2207 = !DILocation(line: 898, column: 55, scope: !2158)
!2208 = !DILocation(line: 899, column: 55, scope: !2158)
!2209 = !DILocation(line: 895, column: 20, scope: !2158)
!2210 = !DILocation(line: 901, column: 14, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2158, file: !405, line: 901, column: 9)
!2212 = !DILocation(line: 901, column: 9, scope: !2158)
!2213 = !DILocation(line: 903, column: 35, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2211, file: !405, line: 902, column: 7)
!2215 = !DILocation(line: 903, column: 20, scope: !2214)
!2216 = !DILocation(line: 904, column: 17, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2214, file: !405, line: 904, column: 13)
!2218 = !DILocation(line: 904, column: 13, scope: !2214)
!2219 = !DILocation(line: 905, column: 11, scope: !2217)
!2220 = !DILocation(line: 906, column: 27, scope: !2214)
!2221 = !DILocation(line: 906, column: 19, scope: !2214)
!2222 = !DILocation(line: 907, column: 69, scope: !2214)
!2223 = !DILocation(line: 909, column: 44, scope: !2214)
!2224 = !DILocation(line: 910, column: 44, scope: !2214)
!2225 = !DILocation(line: 907, column: 9, scope: !2214)
!2226 = !DILocation(line: 911, column: 7, scope: !2214)
!2227 = !DILocation(line: 913, column: 11, scope: !2158)
!2228 = !DILocation(line: 914, column: 5, scope: !2158)
!2229 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !405, file: !405, line: 925, type: !2230, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2232)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!93, !95, !72, !97}
!2232 = !{!2233, !2234, !2235}
!2233 = !DILocalVariable(name: "n", arg: 1, scope: !2229, file: !405, line: 925, type: !95)
!2234 = !DILocalVariable(name: "arg", arg: 2, scope: !2229, file: !405, line: 925, type: !72)
!2235 = !DILocalVariable(name: "argsize", arg: 3, scope: !2229, file: !405, line: 925, type: !97)
!2236 = !DILocation(line: 0, scope: !2229)
!2237 = !DILocation(line: 927, column: 10, scope: !2229)
!2238 = !DILocation(line: 927, column: 3, scope: !2229)
!2239 = distinct !DISubprogram(name: "quotearg", scope: !405, file: !405, line: 931, type: !903, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2240)
!2240 = !{!2241}
!2241 = !DILocalVariable(name: "arg", arg: 1, scope: !2239, file: !405, line: 931, type: !72)
!2242 = !DILocation(line: 0, scope: !2239)
!2243 = !DILocation(line: 0, scope: !2135, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 933, column: 10, scope: !2239)
!2245 = !DILocation(line: 921, column: 10, scope: !2135, inlinedAt: !2244)
!2246 = !DILocation(line: 933, column: 3, scope: !2239)
!2247 = distinct !DISubprogram(name: "quotearg_mem", scope: !405, file: !405, line: 937, type: !2248, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2250)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!93, !72, !97}
!2250 = !{!2251, !2252}
!2251 = !DILocalVariable(name: "arg", arg: 1, scope: !2247, file: !405, line: 937, type: !72)
!2252 = !DILocalVariable(name: "argsize", arg: 2, scope: !2247, file: !405, line: 937, type: !97)
!2253 = !DILocation(line: 0, scope: !2247)
!2254 = !DILocation(line: 0, scope: !2229, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 939, column: 10, scope: !2247)
!2256 = !DILocation(line: 927, column: 10, scope: !2229, inlinedAt: !2255)
!2257 = !DILocation(line: 939, column: 3, scope: !2247)
!2258 = distinct !DISubprogram(name: "quotearg_n_style", scope: !405, file: !405, line: 943, type: !2259, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2261)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!93, !95, !428, !72}
!2261 = !{!2262, !2263, !2264, !2265}
!2262 = !DILocalVariable(name: "n", arg: 1, scope: !2258, file: !405, line: 943, type: !95)
!2263 = !DILocalVariable(name: "s", arg: 2, scope: !2258, file: !405, line: 943, type: !428)
!2264 = !DILocalVariable(name: "arg", arg: 3, scope: !2258, file: !405, line: 943, type: !72)
!2265 = !DILocalVariable(name: "o", scope: !2258, file: !405, line: 945, type: !1346)
!2266 = !DILocation(line: 0, scope: !2258)
!2267 = !DILocation(line: 945, column: 3, scope: !2258)
!2268 = !DILocation(line: 945, column: 32, scope: !2258)
!2269 = !{!2270}
!2270 = distinct !{!2270, !2271, !"quoting_options_from_style: argument 0"}
!2271 = distinct !{!2271, !"quoting_options_from_style"}
!2272 = !DILocation(line: 945, column: 36, scope: !2258)
!2273 = !DILocalVariable(name: "style", arg: 1, scope: !2274, file: !405, line: 183, type: !428)
!2274 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !405, file: !405, line: 183, type: !2275, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!455, !428}
!2277 = !{!2273, !2278}
!2278 = !DILocalVariable(name: "o", scope: !2274, file: !405, line: 185, type: !455)
!2279 = !DILocation(line: 0, scope: !2274, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 945, column: 36, scope: !2258)
!2281 = !DILocation(line: 185, column: 26, scope: !2274, inlinedAt: !2280)
!2282 = !DILocation(line: 186, column: 13, scope: !2283, inlinedAt: !2280)
!2283 = distinct !DILexicalBlock(scope: !2274, file: !405, line: 186, column: 7)
!2284 = !DILocation(line: 186, column: 7, scope: !2274, inlinedAt: !2280)
!2285 = !DILocation(line: 187, column: 5, scope: !2283, inlinedAt: !2280)
!2286 = !DILocation(line: 188, column: 11, scope: !2274, inlinedAt: !2280)
!2287 = !DILocation(line: 946, column: 10, scope: !2258)
!2288 = !DILocation(line: 947, column: 1, scope: !2258)
!2289 = !DILocation(line: 946, column: 3, scope: !2258)
!2290 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !405, file: !405, line: 950, type: !2291, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2293)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!93, !95, !428, !72, !97}
!2293 = !{!2294, !2295, !2296, !2297, !2298}
!2294 = !DILocalVariable(name: "n", arg: 1, scope: !2290, file: !405, line: 950, type: !95)
!2295 = !DILocalVariable(name: "s", arg: 2, scope: !2290, file: !405, line: 950, type: !428)
!2296 = !DILocalVariable(name: "arg", arg: 3, scope: !2290, file: !405, line: 951, type: !72)
!2297 = !DILocalVariable(name: "argsize", arg: 4, scope: !2290, file: !405, line: 951, type: !97)
!2298 = !DILocalVariable(name: "o", scope: !2290, file: !405, line: 953, type: !1346)
!2299 = !DILocation(line: 0, scope: !2290)
!2300 = !DILocation(line: 953, column: 3, scope: !2290)
!2301 = !DILocation(line: 953, column: 32, scope: !2290)
!2302 = !{!2303}
!2303 = distinct !{!2303, !2304, !"quoting_options_from_style: argument 0"}
!2304 = distinct !{!2304, !"quoting_options_from_style"}
!2305 = !DILocation(line: 953, column: 36, scope: !2290)
!2306 = !DILocation(line: 0, scope: !2274, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 953, column: 36, scope: !2290)
!2308 = !DILocation(line: 185, column: 26, scope: !2274, inlinedAt: !2307)
!2309 = !DILocation(line: 186, column: 13, scope: !2283, inlinedAt: !2307)
!2310 = !DILocation(line: 186, column: 7, scope: !2274, inlinedAt: !2307)
!2311 = !DILocation(line: 187, column: 5, scope: !2283, inlinedAt: !2307)
!2312 = !DILocation(line: 188, column: 11, scope: !2274, inlinedAt: !2307)
!2313 = !DILocation(line: 954, column: 10, scope: !2290)
!2314 = !DILocation(line: 955, column: 1, scope: !2290)
!2315 = !DILocation(line: 954, column: 3, scope: !2290)
!2316 = distinct !DISubprogram(name: "quotearg_style", scope: !405, file: !405, line: 958, type: !2317, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2319)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!93, !428, !72}
!2319 = !{!2320, !2321}
!2320 = !DILocalVariable(name: "s", arg: 1, scope: !2316, file: !405, line: 958, type: !428)
!2321 = !DILocalVariable(name: "arg", arg: 2, scope: !2316, file: !405, line: 958, type: !72)
!2322 = !DILocation(line: 0, scope: !2316)
!2323 = !DILocation(line: 0, scope: !2258, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 960, column: 10, scope: !2316)
!2325 = !DILocation(line: 945, column: 3, scope: !2258, inlinedAt: !2324)
!2326 = !DILocation(line: 945, column: 32, scope: !2258, inlinedAt: !2324)
!2327 = !{!2328}
!2328 = distinct !{!2328, !2329, !"quoting_options_from_style: argument 0"}
!2329 = distinct !{!2329, !"quoting_options_from_style"}
!2330 = !DILocation(line: 945, column: 36, scope: !2258, inlinedAt: !2324)
!2331 = !DILocation(line: 0, scope: !2274, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 945, column: 36, scope: !2258, inlinedAt: !2324)
!2333 = !DILocation(line: 185, column: 26, scope: !2274, inlinedAt: !2332)
!2334 = !DILocation(line: 186, column: 13, scope: !2283, inlinedAt: !2332)
!2335 = !DILocation(line: 186, column: 7, scope: !2274, inlinedAt: !2332)
!2336 = !DILocation(line: 187, column: 5, scope: !2283, inlinedAt: !2332)
!2337 = !DILocation(line: 188, column: 11, scope: !2274, inlinedAt: !2332)
!2338 = !DILocation(line: 946, column: 10, scope: !2258, inlinedAt: !2324)
!2339 = !DILocation(line: 947, column: 1, scope: !2258, inlinedAt: !2324)
!2340 = !DILocation(line: 960, column: 3, scope: !2316)
!2341 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !405, file: !405, line: 964, type: !2342, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2344)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!93, !428, !72, !97}
!2344 = !{!2345, !2346, !2347}
!2345 = !DILocalVariable(name: "s", arg: 1, scope: !2341, file: !405, line: 964, type: !428)
!2346 = !DILocalVariable(name: "arg", arg: 2, scope: !2341, file: !405, line: 964, type: !72)
!2347 = !DILocalVariable(name: "argsize", arg: 3, scope: !2341, file: !405, line: 964, type: !97)
!2348 = !DILocation(line: 0, scope: !2341)
!2349 = !DILocation(line: 0, scope: !2290, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 966, column: 10, scope: !2341)
!2351 = !DILocation(line: 953, column: 3, scope: !2290, inlinedAt: !2350)
!2352 = !DILocation(line: 953, column: 32, scope: !2290, inlinedAt: !2350)
!2353 = !{!2354}
!2354 = distinct !{!2354, !2355, !"quoting_options_from_style: argument 0"}
!2355 = distinct !{!2355, !"quoting_options_from_style"}
!2356 = !DILocation(line: 953, column: 36, scope: !2290, inlinedAt: !2350)
!2357 = !DILocation(line: 0, scope: !2274, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 953, column: 36, scope: !2290, inlinedAt: !2350)
!2359 = !DILocation(line: 185, column: 26, scope: !2274, inlinedAt: !2358)
!2360 = !DILocation(line: 186, column: 13, scope: !2283, inlinedAt: !2358)
!2361 = !DILocation(line: 186, column: 7, scope: !2274, inlinedAt: !2358)
!2362 = !DILocation(line: 187, column: 5, scope: !2283, inlinedAt: !2358)
!2363 = !DILocation(line: 188, column: 11, scope: !2274, inlinedAt: !2358)
!2364 = !DILocation(line: 954, column: 10, scope: !2290, inlinedAt: !2350)
!2365 = !DILocation(line: 955, column: 1, scope: !2290, inlinedAt: !2350)
!2366 = !DILocation(line: 966, column: 3, scope: !2341)
!2367 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !405, file: !405, line: 970, type: !2368, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2370)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!93, !72, !97, !4}
!2370 = !{!2371, !2372, !2373, !2374}
!2371 = !DILocalVariable(name: "arg", arg: 1, scope: !2367, file: !405, line: 970, type: !72)
!2372 = !DILocalVariable(name: "argsize", arg: 2, scope: !2367, file: !405, line: 970, type: !97)
!2373 = !DILocalVariable(name: "ch", arg: 3, scope: !2367, file: !405, line: 970, type: !4)
!2374 = !DILocalVariable(name: "options", scope: !2367, file: !405, line: 972, type: !455)
!2375 = !DILocation(line: 0, scope: !2367)
!2376 = !DILocation(line: 972, column: 3, scope: !2367)
!2377 = !DILocation(line: 972, column: 26, scope: !2367)
!2378 = !DILocation(line: 973, column: 13, scope: !2367)
!2379 = !{i64 0, i64 4, !749, i64 4, i64 4, !740, i64 8, i64 32, !749, i64 40, i64 8, !718, i64 48, i64 8, !718}
!2380 = !DILocation(line: 0, scope: !1365, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 974, column: 3, scope: !2367)
!2382 = !DILocation(line: 147, column: 41, scope: !1365, inlinedAt: !2381)
!2383 = !DILocation(line: 147, column: 62, scope: !1365, inlinedAt: !2381)
!2384 = !DILocation(line: 147, column: 57, scope: !1365, inlinedAt: !2381)
!2385 = !DILocation(line: 148, column: 15, scope: !1365, inlinedAt: !2381)
!2386 = !DILocation(line: 149, column: 21, scope: !1365, inlinedAt: !2381)
!2387 = !DILocation(line: 149, column: 24, scope: !1365, inlinedAt: !2381)
!2388 = !DILocation(line: 150, column: 19, scope: !1365, inlinedAt: !2381)
!2389 = !DILocation(line: 150, column: 24, scope: !1365, inlinedAt: !2381)
!2390 = !DILocation(line: 150, column: 6, scope: !1365, inlinedAt: !2381)
!2391 = !DILocation(line: 975, column: 10, scope: !2367)
!2392 = !DILocation(line: 976, column: 1, scope: !2367)
!2393 = !DILocation(line: 975, column: 3, scope: !2367)
!2394 = distinct !DISubprogram(name: "quotearg_char", scope: !405, file: !405, line: 979, type: !2395, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!93, !72, !4}
!2397 = !{!2398, !2399}
!2398 = !DILocalVariable(name: "arg", arg: 1, scope: !2394, file: !405, line: 979, type: !72)
!2399 = !DILocalVariable(name: "ch", arg: 2, scope: !2394, file: !405, line: 979, type: !4)
!2400 = !DILocation(line: 0, scope: !2394)
!2401 = !DILocation(line: 0, scope: !2367, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 981, column: 10, scope: !2394)
!2403 = !DILocation(line: 972, column: 3, scope: !2367, inlinedAt: !2402)
!2404 = !DILocation(line: 972, column: 26, scope: !2367, inlinedAt: !2402)
!2405 = !DILocation(line: 973, column: 13, scope: !2367, inlinedAt: !2402)
!2406 = !DILocation(line: 0, scope: !1365, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 974, column: 3, scope: !2367, inlinedAt: !2402)
!2408 = !DILocation(line: 147, column: 41, scope: !1365, inlinedAt: !2407)
!2409 = !DILocation(line: 147, column: 62, scope: !1365, inlinedAt: !2407)
!2410 = !DILocation(line: 147, column: 57, scope: !1365, inlinedAt: !2407)
!2411 = !DILocation(line: 148, column: 15, scope: !1365, inlinedAt: !2407)
!2412 = !DILocation(line: 149, column: 21, scope: !1365, inlinedAt: !2407)
!2413 = !DILocation(line: 149, column: 24, scope: !1365, inlinedAt: !2407)
!2414 = !DILocation(line: 150, column: 19, scope: !1365, inlinedAt: !2407)
!2415 = !DILocation(line: 150, column: 24, scope: !1365, inlinedAt: !2407)
!2416 = !DILocation(line: 150, column: 6, scope: !1365, inlinedAt: !2407)
!2417 = !DILocation(line: 975, column: 10, scope: !2367, inlinedAt: !2402)
!2418 = !DILocation(line: 976, column: 1, scope: !2367, inlinedAt: !2402)
!2419 = !DILocation(line: 981, column: 3, scope: !2394)
!2420 = distinct !DISubprogram(name: "quotearg_colon", scope: !405, file: !405, line: 985, type: !903, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2421)
!2421 = !{!2422}
!2422 = !DILocalVariable(name: "arg", arg: 1, scope: !2420, file: !405, line: 985, type: !72)
!2423 = !DILocation(line: 0, scope: !2420)
!2424 = !DILocation(line: 0, scope: !2394, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 987, column: 10, scope: !2420)
!2426 = !DILocation(line: 0, scope: !2367, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 981, column: 10, scope: !2394, inlinedAt: !2425)
!2428 = !DILocation(line: 972, column: 3, scope: !2367, inlinedAt: !2427)
!2429 = !DILocation(line: 972, column: 26, scope: !2367, inlinedAt: !2427)
!2430 = !DILocation(line: 973, column: 13, scope: !2367, inlinedAt: !2427)
!2431 = !DILocation(line: 0, scope: !1365, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 974, column: 3, scope: !2367, inlinedAt: !2427)
!2433 = !DILocation(line: 147, column: 57, scope: !1365, inlinedAt: !2432)
!2434 = !DILocation(line: 149, column: 21, scope: !1365, inlinedAt: !2432)
!2435 = !DILocation(line: 150, column: 6, scope: !1365, inlinedAt: !2432)
!2436 = !DILocation(line: 975, column: 10, scope: !2367, inlinedAt: !2427)
!2437 = !DILocation(line: 976, column: 1, scope: !2367, inlinedAt: !2427)
!2438 = !DILocation(line: 987, column: 3, scope: !2420)
!2439 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !405, file: !405, line: 991, type: !2248, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2440)
!2440 = !{!2441, !2442}
!2441 = !DILocalVariable(name: "arg", arg: 1, scope: !2439, file: !405, line: 991, type: !72)
!2442 = !DILocalVariable(name: "argsize", arg: 2, scope: !2439, file: !405, line: 991, type: !97)
!2443 = !DILocation(line: 0, scope: !2439)
!2444 = !DILocation(line: 0, scope: !2367, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 993, column: 10, scope: !2439)
!2446 = !DILocation(line: 972, column: 3, scope: !2367, inlinedAt: !2445)
!2447 = !DILocation(line: 972, column: 26, scope: !2367, inlinedAt: !2445)
!2448 = !DILocation(line: 973, column: 13, scope: !2367, inlinedAt: !2445)
!2449 = !DILocation(line: 0, scope: !1365, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 974, column: 3, scope: !2367, inlinedAt: !2445)
!2451 = !DILocation(line: 147, column: 57, scope: !1365, inlinedAt: !2450)
!2452 = !DILocation(line: 149, column: 21, scope: !1365, inlinedAt: !2450)
!2453 = !DILocation(line: 150, column: 6, scope: !1365, inlinedAt: !2450)
!2454 = !DILocation(line: 975, column: 10, scope: !2367, inlinedAt: !2445)
!2455 = !DILocation(line: 976, column: 1, scope: !2367, inlinedAt: !2445)
!2456 = !DILocation(line: 993, column: 3, scope: !2439)
!2457 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !405, file: !405, line: 997, type: !2259, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2458)
!2458 = !{!2459, !2460, !2461, !2462}
!2459 = !DILocalVariable(name: "n", arg: 1, scope: !2457, file: !405, line: 997, type: !95)
!2460 = !DILocalVariable(name: "s", arg: 2, scope: !2457, file: !405, line: 997, type: !428)
!2461 = !DILocalVariable(name: "arg", arg: 3, scope: !2457, file: !405, line: 997, type: !72)
!2462 = !DILocalVariable(name: "options", scope: !2457, file: !405, line: 999, type: !455)
!2463 = !DILocation(line: 185, column: 26, scope: !2274, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 1000, column: 13, scope: !2457)
!2465 = !DILocation(line: 0, scope: !2457)
!2466 = !DILocation(line: 999, column: 3, scope: !2457)
!2467 = !DILocation(line: 999, column: 26, scope: !2457)
!2468 = !DILocation(line: 0, scope: !2274, inlinedAt: !2464)
!2469 = !DILocation(line: 186, column: 13, scope: !2283, inlinedAt: !2464)
!2470 = !DILocation(line: 186, column: 7, scope: !2274, inlinedAt: !2464)
!2471 = !DILocation(line: 187, column: 5, scope: !2283, inlinedAt: !2464)
!2472 = !{!2473}
!2473 = distinct !{!2473, !2474, !"quoting_options_from_style: argument 0"}
!2474 = distinct !{!2474, !"quoting_options_from_style"}
!2475 = !DILocation(line: 1000, column: 13, scope: !2457)
!2476 = !DILocation(line: 0, scope: !1365, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 1001, column: 3, scope: !2457)
!2478 = !DILocation(line: 147, column: 57, scope: !1365, inlinedAt: !2477)
!2479 = !DILocation(line: 149, column: 21, scope: !1365, inlinedAt: !2477)
!2480 = !DILocation(line: 150, column: 6, scope: !1365, inlinedAt: !2477)
!2481 = !DILocation(line: 1002, column: 10, scope: !2457)
!2482 = !DILocation(line: 1003, column: 1, scope: !2457)
!2483 = !DILocation(line: 1002, column: 3, scope: !2457)
!2484 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !405, file: !405, line: 1006, type: !2485, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2487)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!93, !95, !72, !72, !72}
!2487 = !{!2488, !2489, !2490, !2491}
!2488 = !DILocalVariable(name: "n", arg: 1, scope: !2484, file: !405, line: 1006, type: !95)
!2489 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2484, file: !405, line: 1006, type: !72)
!2490 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2484, file: !405, line: 1007, type: !72)
!2491 = !DILocalVariable(name: "arg", arg: 4, scope: !2484, file: !405, line: 1007, type: !72)
!2492 = !DILocation(line: 0, scope: !2484)
!2493 = !DILocalVariable(name: "n", arg: 1, scope: !2494, file: !405, line: 1014, type: !95)
!2494 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !405, file: !405, line: 1014, type: !2495, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2497)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!93, !95, !72, !72, !72, !97}
!2497 = !{!2493, !2498, !2499, !2500, !2501, !2502}
!2498 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2494, file: !405, line: 1014, type: !72)
!2499 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2494, file: !405, line: 1015, type: !72)
!2500 = !DILocalVariable(name: "arg", arg: 4, scope: !2494, file: !405, line: 1016, type: !72)
!2501 = !DILocalVariable(name: "argsize", arg: 5, scope: !2494, file: !405, line: 1016, type: !97)
!2502 = !DILocalVariable(name: "o", scope: !2494, file: !405, line: 1018, type: !455)
!2503 = !DILocation(line: 0, scope: !2494, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 1009, column: 10, scope: !2484)
!2505 = !DILocation(line: 1018, column: 3, scope: !2494, inlinedAt: !2504)
!2506 = !DILocation(line: 1018, column: 26, scope: !2494, inlinedAt: !2504)
!2507 = !DILocation(line: 1018, column: 30, scope: !2494, inlinedAt: !2504)
!2508 = !DILocation(line: 0, scope: !1405, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 1019, column: 3, scope: !2494, inlinedAt: !2504)
!2510 = !DILocation(line: 174, column: 12, scope: !1405, inlinedAt: !2509)
!2511 = !DILocation(line: 175, column: 8, scope: !1418, inlinedAt: !2509)
!2512 = !DILocation(line: 175, column: 19, scope: !1418, inlinedAt: !2509)
!2513 = !DILocation(line: 176, column: 5, scope: !1418, inlinedAt: !2509)
!2514 = !DILocation(line: 177, column: 6, scope: !1405, inlinedAt: !2509)
!2515 = !DILocation(line: 177, column: 17, scope: !1405, inlinedAt: !2509)
!2516 = !DILocation(line: 178, column: 6, scope: !1405, inlinedAt: !2509)
!2517 = !DILocation(line: 178, column: 18, scope: !1405, inlinedAt: !2509)
!2518 = !DILocation(line: 1020, column: 10, scope: !2494, inlinedAt: !2504)
!2519 = !DILocation(line: 1021, column: 1, scope: !2494, inlinedAt: !2504)
!2520 = !DILocation(line: 1009, column: 3, scope: !2484)
!2521 = !DILocation(line: 0, scope: !2494)
!2522 = !DILocation(line: 1018, column: 3, scope: !2494)
!2523 = !DILocation(line: 1018, column: 26, scope: !2494)
!2524 = !DILocation(line: 1018, column: 30, scope: !2494)
!2525 = !DILocation(line: 0, scope: !1405, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 1019, column: 3, scope: !2494)
!2527 = !DILocation(line: 174, column: 12, scope: !1405, inlinedAt: !2526)
!2528 = !DILocation(line: 175, column: 8, scope: !1418, inlinedAt: !2526)
!2529 = !DILocation(line: 175, column: 19, scope: !1418, inlinedAt: !2526)
!2530 = !DILocation(line: 176, column: 5, scope: !1418, inlinedAt: !2526)
!2531 = !DILocation(line: 177, column: 6, scope: !1405, inlinedAt: !2526)
!2532 = !DILocation(line: 177, column: 17, scope: !1405, inlinedAt: !2526)
!2533 = !DILocation(line: 178, column: 6, scope: !1405, inlinedAt: !2526)
!2534 = !DILocation(line: 178, column: 18, scope: !1405, inlinedAt: !2526)
!2535 = !DILocation(line: 1020, column: 10, scope: !2494)
!2536 = !DILocation(line: 1021, column: 1, scope: !2494)
!2537 = !DILocation(line: 1020, column: 3, scope: !2494)
!2538 = distinct !DISubprogram(name: "quotearg_custom", scope: !405, file: !405, line: 1024, type: !2539, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2541)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!93, !72, !72, !72}
!2541 = !{!2542, !2543, !2544}
!2542 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2538, file: !405, line: 1024, type: !72)
!2543 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2538, file: !405, line: 1024, type: !72)
!2544 = !DILocalVariable(name: "arg", arg: 3, scope: !2538, file: !405, line: 1025, type: !72)
!2545 = !DILocation(line: 0, scope: !2538)
!2546 = !DILocation(line: 0, scope: !2484, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 1027, column: 10, scope: !2538)
!2548 = !DILocation(line: 0, scope: !2494, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 1009, column: 10, scope: !2484, inlinedAt: !2547)
!2550 = !DILocation(line: 1018, column: 3, scope: !2494, inlinedAt: !2549)
!2551 = !DILocation(line: 1018, column: 26, scope: !2494, inlinedAt: !2549)
!2552 = !DILocation(line: 1018, column: 30, scope: !2494, inlinedAt: !2549)
!2553 = !DILocation(line: 0, scope: !1405, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 1019, column: 3, scope: !2494, inlinedAt: !2549)
!2555 = !DILocation(line: 174, column: 12, scope: !1405, inlinedAt: !2554)
!2556 = !DILocation(line: 175, column: 8, scope: !1418, inlinedAt: !2554)
!2557 = !DILocation(line: 175, column: 19, scope: !1418, inlinedAt: !2554)
!2558 = !DILocation(line: 176, column: 5, scope: !1418, inlinedAt: !2554)
!2559 = !DILocation(line: 177, column: 6, scope: !1405, inlinedAt: !2554)
!2560 = !DILocation(line: 177, column: 17, scope: !1405, inlinedAt: !2554)
!2561 = !DILocation(line: 178, column: 6, scope: !1405, inlinedAt: !2554)
!2562 = !DILocation(line: 178, column: 18, scope: !1405, inlinedAt: !2554)
!2563 = !DILocation(line: 1020, column: 10, scope: !2494, inlinedAt: !2549)
!2564 = !DILocation(line: 1021, column: 1, scope: !2494, inlinedAt: !2549)
!2565 = !DILocation(line: 1027, column: 3, scope: !2538)
!2566 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !405, file: !405, line: 1031, type: !2567, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2569)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!93, !72, !72, !72, !97}
!2569 = !{!2570, !2571, !2572, !2573}
!2570 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2566, file: !405, line: 1031, type: !72)
!2571 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2566, file: !405, line: 1031, type: !72)
!2572 = !DILocalVariable(name: "arg", arg: 3, scope: !2566, file: !405, line: 1032, type: !72)
!2573 = !DILocalVariable(name: "argsize", arg: 4, scope: !2566, file: !405, line: 1032, type: !97)
!2574 = !DILocation(line: 0, scope: !2566)
!2575 = !DILocation(line: 0, scope: !2494, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 1034, column: 10, scope: !2566)
!2577 = !DILocation(line: 1018, column: 3, scope: !2494, inlinedAt: !2576)
!2578 = !DILocation(line: 1018, column: 26, scope: !2494, inlinedAt: !2576)
!2579 = !DILocation(line: 1018, column: 30, scope: !2494, inlinedAt: !2576)
!2580 = !DILocation(line: 0, scope: !1405, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 1019, column: 3, scope: !2494, inlinedAt: !2576)
!2582 = !DILocation(line: 174, column: 12, scope: !1405, inlinedAt: !2581)
!2583 = !DILocation(line: 175, column: 8, scope: !1418, inlinedAt: !2581)
!2584 = !DILocation(line: 175, column: 19, scope: !1418, inlinedAt: !2581)
!2585 = !DILocation(line: 176, column: 5, scope: !1418, inlinedAt: !2581)
!2586 = !DILocation(line: 177, column: 6, scope: !1405, inlinedAt: !2581)
!2587 = !DILocation(line: 177, column: 17, scope: !1405, inlinedAt: !2581)
!2588 = !DILocation(line: 178, column: 6, scope: !1405, inlinedAt: !2581)
!2589 = !DILocation(line: 178, column: 18, scope: !1405, inlinedAt: !2581)
!2590 = !DILocation(line: 1020, column: 10, scope: !2494, inlinedAt: !2576)
!2591 = !DILocation(line: 1021, column: 1, scope: !2494, inlinedAt: !2576)
!2592 = !DILocation(line: 1034, column: 3, scope: !2566)
!2593 = distinct !DISubprogram(name: "quote_n_mem", scope: !405, file: !405, line: 1049, type: !2594, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!72, !95, !72, !97}
!2596 = !{!2597, !2598, !2599}
!2597 = !DILocalVariable(name: "n", arg: 1, scope: !2593, file: !405, line: 1049, type: !95)
!2598 = !DILocalVariable(name: "arg", arg: 2, scope: !2593, file: !405, line: 1049, type: !72)
!2599 = !DILocalVariable(name: "argsize", arg: 3, scope: !2593, file: !405, line: 1049, type: !97)
!2600 = !DILocation(line: 0, scope: !2593)
!2601 = !DILocation(line: 1051, column: 10, scope: !2593)
!2602 = !DILocation(line: 1051, column: 3, scope: !2593)
!2603 = distinct !DISubprogram(name: "quote_mem", scope: !405, file: !405, line: 1055, type: !2604, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2606)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!72, !72, !97}
!2606 = !{!2607, !2608}
!2607 = !DILocalVariable(name: "arg", arg: 1, scope: !2603, file: !405, line: 1055, type: !72)
!2608 = !DILocalVariable(name: "argsize", arg: 2, scope: !2603, file: !405, line: 1055, type: !97)
!2609 = !DILocation(line: 0, scope: !2603)
!2610 = !DILocation(line: 0, scope: !2593, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 1057, column: 10, scope: !2603)
!2612 = !DILocation(line: 1051, column: 10, scope: !2593, inlinedAt: !2611)
!2613 = !DILocation(line: 1057, column: 3, scope: !2603)
!2614 = distinct !DISubprogram(name: "quote_n", scope: !405, file: !405, line: 1061, type: !2615, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2617)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!72, !95, !72}
!2617 = !{!2618, !2619}
!2618 = !DILocalVariable(name: "n", arg: 1, scope: !2614, file: !405, line: 1061, type: !95)
!2619 = !DILocalVariable(name: "arg", arg: 2, scope: !2614, file: !405, line: 1061, type: !72)
!2620 = !DILocation(line: 0, scope: !2614)
!2621 = !DILocation(line: 0, scope: !2593, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 1063, column: 10, scope: !2614)
!2623 = !DILocation(line: 1051, column: 10, scope: !2593, inlinedAt: !2622)
!2624 = !DILocation(line: 1063, column: 3, scope: !2614)
!2625 = distinct !DISubprogram(name: "quote", scope: !405, file: !405, line: 1067, type: !2626, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2628)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!72, !72}
!2628 = !{!2629}
!2629 = !DILocalVariable(name: "arg", arg: 1, scope: !2625, file: !405, line: 1067, type: !72)
!2630 = !DILocation(line: 0, scope: !2625)
!2631 = !DILocation(line: 0, scope: !2614, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 1069, column: 10, scope: !2625)
!2633 = !DILocation(line: 0, scope: !2593, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 1063, column: 10, scope: !2614, inlinedAt: !2632)
!2635 = !DILocation(line: 1051, column: 10, scope: !2593, inlinedAt: !2634)
!2636 = !DILocation(line: 1069, column: 3, scope: !2625)
!2637 = distinct !DISubprogram(name: "version_etc_arn", scope: !518, file: !518, line: 61, type: !2638, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !642, retainedNodes: !2675)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{null, !2640, !72, !72, !72, !2674, !97}
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !2642)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !2643)
!2643 = !{!2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2642, file: !234, line: 51, baseType: !95, size: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2642, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2642, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2642, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2642, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2642, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2642, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2642, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2642, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2642, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2642, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2642, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2642, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2642, file: !234, line: 70, baseType: !2658, size: 64, offset: 832)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2642, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2642, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2642, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2642, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2642, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2642, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2642, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2642, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2642, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2642, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2642, file: !234, line: 93, baseType: !2658, size: 64, offset: 1344)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2642, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2642, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2642, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2642, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!2675 = !{!2676, !2677, !2678, !2679, !2680, !2681}
!2676 = !DILocalVariable(name: "stream", arg: 1, scope: !2637, file: !518, line: 61, type: !2640)
!2677 = !DILocalVariable(name: "command_name", arg: 2, scope: !2637, file: !518, line: 62, type: !72)
!2678 = !DILocalVariable(name: "package", arg: 3, scope: !2637, file: !518, line: 62, type: !72)
!2679 = !DILocalVariable(name: "version", arg: 4, scope: !2637, file: !518, line: 63, type: !72)
!2680 = !DILocalVariable(name: "authors", arg: 5, scope: !2637, file: !518, line: 64, type: !2674)
!2681 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2637, file: !518, line: 64, type: !97)
!2682 = !DILocation(line: 0, scope: !2637)
!2683 = !DILocation(line: 66, column: 7, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2637, file: !518, line: 66, column: 7)
!2685 = !DILocation(line: 66, column: 7, scope: !2637)
!2686 = !DILocation(line: 67, column: 5, scope: !2684)
!2687 = !DILocation(line: 69, column: 5, scope: !2684)
!2688 = !DILocation(line: 83, column: 3, scope: !2637)
!2689 = !DILocation(line: 85, column: 3, scope: !2637)
!2690 = !DILocation(line: 88, column: 3, scope: !2637)
!2691 = !DILocation(line: 95, column: 3, scope: !2637)
!2692 = !DILocation(line: 97, column: 3, scope: !2637)
!2693 = !DILocation(line: 105, column: 7, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2637, file: !518, line: 98, column: 5)
!2695 = !DILocation(line: 106, column: 7, scope: !2694)
!2696 = !DILocation(line: 109, column: 7, scope: !2694)
!2697 = !DILocation(line: 110, column: 7, scope: !2694)
!2698 = !DILocation(line: 113, column: 7, scope: !2694)
!2699 = !DILocation(line: 115, column: 7, scope: !2694)
!2700 = !DILocation(line: 120, column: 7, scope: !2694)
!2701 = !DILocation(line: 122, column: 7, scope: !2694)
!2702 = !DILocation(line: 127, column: 7, scope: !2694)
!2703 = !DILocation(line: 129, column: 7, scope: !2694)
!2704 = !DILocation(line: 134, column: 7, scope: !2694)
!2705 = !DILocation(line: 137, column: 7, scope: !2694)
!2706 = !DILocation(line: 142, column: 7, scope: !2694)
!2707 = !DILocation(line: 145, column: 7, scope: !2694)
!2708 = !DILocation(line: 150, column: 7, scope: !2694)
!2709 = !DILocation(line: 154, column: 7, scope: !2694)
!2710 = !DILocation(line: 159, column: 7, scope: !2694)
!2711 = !DILocation(line: 163, column: 7, scope: !2694)
!2712 = !DILocation(line: 170, column: 7, scope: !2694)
!2713 = !DILocation(line: 174, column: 7, scope: !2694)
!2714 = !DILocation(line: 176, column: 1, scope: !2637)
!2715 = distinct !DISubprogram(name: "version_etc_ar", scope: !518, file: !518, line: 183, type: !2716, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !642, retainedNodes: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{null, !2640, !72, !72, !72, !2674}
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2724}
!2719 = !DILocalVariable(name: "stream", arg: 1, scope: !2715, file: !518, line: 183, type: !2640)
!2720 = !DILocalVariable(name: "command_name", arg: 2, scope: !2715, file: !518, line: 184, type: !72)
!2721 = !DILocalVariable(name: "package", arg: 3, scope: !2715, file: !518, line: 184, type: !72)
!2722 = !DILocalVariable(name: "version", arg: 4, scope: !2715, file: !518, line: 185, type: !72)
!2723 = !DILocalVariable(name: "authors", arg: 5, scope: !2715, file: !518, line: 185, type: !2674)
!2724 = !DILocalVariable(name: "n_authors", scope: !2715, file: !518, line: 187, type: !97)
!2725 = !DILocation(line: 0, scope: !2715)
!2726 = !DILocation(line: 189, column: 8, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2715, file: !518, line: 189, column: 3)
!2728 = !DILocation(line: 189, scope: !2727)
!2729 = !DILocation(line: 189, column: 23, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2727, file: !518, line: 189, column: 3)
!2731 = !DILocation(line: 189, column: 3, scope: !2727)
!2732 = !DILocation(line: 189, column: 52, scope: !2730)
!2733 = distinct !{!2733, !2731, !2734, !787}
!2734 = !DILocation(line: 190, column: 5, scope: !2727)
!2735 = !DILocation(line: 191, column: 3, scope: !2715)
!2736 = !DILocation(line: 192, column: 1, scope: !2715)
!2737 = distinct !DISubprogram(name: "version_etc_va", scope: !518, file: !518, line: 199, type: !2738, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !642, retainedNodes: !2748)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{null, !2640, !72, !72, !72, !2740}
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2742)
!2742 = !{!2743, !2745, !2746, !2747}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2741, file: !2744, line: 192, baseType: !78, size: 32)
!2744 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2741, file: !2744, line: 192, baseType: !78, size: 32, offset: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2741, file: !2744, line: 192, baseType: !94, size: 64, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2741, file: !2744, line: 192, baseType: !94, size: 64, offset: 128)
!2748 = !{!2749, !2750, !2751, !2752, !2753, !2754, !2755}
!2749 = !DILocalVariable(name: "stream", arg: 1, scope: !2737, file: !518, line: 199, type: !2640)
!2750 = !DILocalVariable(name: "command_name", arg: 2, scope: !2737, file: !518, line: 200, type: !72)
!2751 = !DILocalVariable(name: "package", arg: 3, scope: !2737, file: !518, line: 200, type: !72)
!2752 = !DILocalVariable(name: "version", arg: 4, scope: !2737, file: !518, line: 201, type: !72)
!2753 = !DILocalVariable(name: "authors", arg: 5, scope: !2737, file: !518, line: 201, type: !2740)
!2754 = !DILocalVariable(name: "n_authors", scope: !2737, file: !518, line: 203, type: !97)
!2755 = !DILocalVariable(name: "authtab", scope: !2737, file: !518, line: 204, type: !2756)
!2756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 640, elements: !42)
!2757 = !DILocation(line: 0, scope: !2737)
!2758 = !DILocation(line: 204, column: 3, scope: !2737)
!2759 = !DILocation(line: 204, column: 15, scope: !2737)
!2760 = !DILocation(line: 208, column: 35, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !518, line: 206, column: 3)
!2762 = distinct !DILexicalBlock(scope: !2737, file: !518, line: 206, column: 3)
!2763 = !DILocation(line: 208, column: 33, scope: !2761)
!2764 = !DILocation(line: 208, column: 67, scope: !2761)
!2765 = !DILocation(line: 206, column: 3, scope: !2762)
!2766 = !DILocation(line: 208, column: 14, scope: !2761)
!2767 = !DILocation(line: 0, scope: !2762)
!2768 = !DILocation(line: 211, column: 3, scope: !2737)
!2769 = !DILocation(line: 213, column: 1, scope: !2737)
!2770 = distinct !DISubprogram(name: "version_etc", scope: !518, file: !518, line: 230, type: !2771, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !642, retainedNodes: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{null, !2640, !72, !72, !72, null}
!2773 = !{!2774, !2775, !2776, !2777, !2778}
!2774 = !DILocalVariable(name: "stream", arg: 1, scope: !2770, file: !518, line: 230, type: !2640)
!2775 = !DILocalVariable(name: "command_name", arg: 2, scope: !2770, file: !518, line: 231, type: !72)
!2776 = !DILocalVariable(name: "package", arg: 3, scope: !2770, file: !518, line: 231, type: !72)
!2777 = !DILocalVariable(name: "version", arg: 4, scope: !2770, file: !518, line: 232, type: !72)
!2778 = !DILocalVariable(name: "authors", scope: !2770, file: !518, line: 234, type: !2779)
!2779 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !898, line: 52, baseType: !2780)
!2780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1192, line: 14, baseType: !2781)
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2744, baseType: !2782)
!2782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2741, size: 192, elements: !37)
!2783 = !DILocation(line: 0, scope: !2770)
!2784 = !DILocation(line: 234, column: 3, scope: !2770)
!2785 = !DILocation(line: 234, column: 11, scope: !2770)
!2786 = !DILocation(line: 235, column: 3, scope: !2770)
!2787 = !DILocation(line: 236, column: 3, scope: !2770)
!2788 = !DILocation(line: 237, column: 3, scope: !2770)
!2789 = !DILocation(line: 238, column: 1, scope: !2770)
!2790 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !518, file: !518, line: 241, type: !360, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !642, retainedNodes: !732)
!2791 = !DILocation(line: 243, column: 3, scope: !2790)
!2792 = !DILocation(line: 248, column: 3, scope: !2790)
!2793 = !DILocation(line: 254, column: 3, scope: !2790)
!2794 = !DILocation(line: 259, column: 3, scope: !2790)
!2795 = !DILocation(line: 261, column: 1, scope: !2790)
!2796 = distinct !DISubprogram(name: "xnrealloc", scope: !2797, file: !2797, line: 147, type: !2798, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2800)
!2797 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!94, !94, !97, !97}
!2800 = !{!2801, !2802, !2803}
!2801 = !DILocalVariable(name: "p", arg: 1, scope: !2796, file: !2797, line: 147, type: !94)
!2802 = !DILocalVariable(name: "n", arg: 2, scope: !2796, file: !2797, line: 147, type: !97)
!2803 = !DILocalVariable(name: "s", arg: 3, scope: !2796, file: !2797, line: 147, type: !97)
!2804 = !DILocation(line: 0, scope: !2796)
!2805 = !DILocalVariable(name: "p", arg: 1, scope: !2806, file: !650, line: 83, type: !94)
!2806 = distinct !DISubprogram(name: "xreallocarray", scope: !650, file: !650, line: 83, type: !2798, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2807)
!2807 = !{!2805, !2808, !2809}
!2808 = !DILocalVariable(name: "n", arg: 2, scope: !2806, file: !650, line: 83, type: !97)
!2809 = !DILocalVariable(name: "s", arg: 3, scope: !2806, file: !650, line: 83, type: !97)
!2810 = !DILocation(line: 0, scope: !2806, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 149, column: 10, scope: !2796)
!2812 = !DILocation(line: 85, column: 25, scope: !2806, inlinedAt: !2811)
!2813 = !DILocalVariable(name: "p", arg: 1, scope: !2814, file: !650, line: 37, type: !94)
!2814 = distinct !DISubprogram(name: "check_nonnull", scope: !650, file: !650, line: 37, type: !2815, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2817)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!94, !94}
!2817 = !{!2813}
!2818 = !DILocation(line: 0, scope: !2814, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 85, column: 10, scope: !2806, inlinedAt: !2811)
!2820 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !2819)
!2821 = distinct !DILexicalBlock(scope: !2814, file: !650, line: 39, column: 7)
!2822 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !2819)
!2823 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !2819)
!2824 = !DILocation(line: 149, column: 3, scope: !2796)
!2825 = !DILocation(line: 0, scope: !2806)
!2826 = !DILocation(line: 85, column: 25, scope: !2806)
!2827 = !DILocation(line: 0, scope: !2814, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 85, column: 10, scope: !2806)
!2829 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !2828)
!2830 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !2828)
!2831 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !2828)
!2832 = !DILocation(line: 85, column: 3, scope: !2806)
!2833 = distinct !DISubprogram(name: "xmalloc", scope: !650, file: !650, line: 47, type: !2834, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!94, !97}
!2836 = !{!2837}
!2837 = !DILocalVariable(name: "s", arg: 1, scope: !2833, file: !650, line: 47, type: !97)
!2838 = !DILocation(line: 0, scope: !2833)
!2839 = !DILocation(line: 49, column: 25, scope: !2833)
!2840 = !DILocation(line: 0, scope: !2814, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 49, column: 10, scope: !2833)
!2842 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !2841)
!2843 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !2841)
!2844 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !2841)
!2845 = !DILocation(line: 49, column: 3, scope: !2833)
!2846 = !DISubprogram(name: "malloc", scope: !888, file: !888, line: 540, type: !2834, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!2847 = distinct !DISubprogram(name: "ximalloc", scope: !650, file: !650, line: 53, type: !2848, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2850)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!94, !669}
!2850 = !{!2851}
!2851 = !DILocalVariable(name: "s", arg: 1, scope: !2847, file: !650, line: 53, type: !669)
!2852 = !DILocation(line: 0, scope: !2847)
!2853 = !DILocalVariable(name: "s", arg: 1, scope: !2854, file: !2855, line: 55, type: !669)
!2854 = distinct !DISubprogram(name: "imalloc", scope: !2855, file: !2855, line: 55, type: !2848, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2856)
!2855 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2856 = !{!2853}
!2857 = !DILocation(line: 0, scope: !2854, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 55, column: 25, scope: !2847)
!2859 = !DILocation(line: 57, column: 26, scope: !2854, inlinedAt: !2858)
!2860 = !DILocation(line: 0, scope: !2814, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 55, column: 10, scope: !2847)
!2862 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !2861)
!2863 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !2861)
!2864 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !2861)
!2865 = !DILocation(line: 55, column: 3, scope: !2847)
!2866 = distinct !DISubprogram(name: "xcharalloc", scope: !650, file: !650, line: 59, type: !2867, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2869)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!93, !97}
!2869 = !{!2870}
!2870 = !DILocalVariable(name: "n", arg: 1, scope: !2866, file: !650, line: 59, type: !97)
!2871 = !DILocation(line: 0, scope: !2866)
!2872 = !DILocation(line: 0, scope: !2833, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 61, column: 10, scope: !2866)
!2874 = !DILocation(line: 49, column: 25, scope: !2833, inlinedAt: !2873)
!2875 = !DILocation(line: 0, scope: !2814, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 49, column: 10, scope: !2833, inlinedAt: !2873)
!2877 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !2876)
!2878 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !2876)
!2879 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !2876)
!2880 = !DILocation(line: 61, column: 3, scope: !2866)
!2881 = distinct !DISubprogram(name: "xrealloc", scope: !650, file: !650, line: 68, type: !2882, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!94, !94, !97}
!2884 = !{!2885, !2886}
!2885 = !DILocalVariable(name: "p", arg: 1, scope: !2881, file: !650, line: 68, type: !94)
!2886 = !DILocalVariable(name: "s", arg: 2, scope: !2881, file: !650, line: 68, type: !97)
!2887 = !DILocation(line: 0, scope: !2881)
!2888 = !DILocalVariable(name: "ptr", arg: 1, scope: !2889, file: !2890, line: 2057, type: !94)
!2889 = distinct !DISubprogram(name: "rpl_realloc", scope: !2890, file: !2890, line: 2057, type: !2882, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2891)
!2890 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2891 = !{!2888, !2892}
!2892 = !DILocalVariable(name: "size", arg: 2, scope: !2889, file: !2890, line: 2057, type: !97)
!2893 = !DILocation(line: 0, scope: !2889, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 70, column: 25, scope: !2881)
!2895 = !DILocation(line: 2059, column: 24, scope: !2889, inlinedAt: !2894)
!2896 = !DILocation(line: 2059, column: 10, scope: !2889, inlinedAt: !2894)
!2897 = !DILocation(line: 0, scope: !2814, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 70, column: 10, scope: !2881)
!2899 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !2898)
!2900 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !2898)
!2901 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !2898)
!2902 = !DILocation(line: 70, column: 3, scope: !2881)
!2903 = !DISubprogram(name: "realloc", scope: !888, file: !888, line: 551, type: !2882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!2904 = distinct !DISubprogram(name: "xirealloc", scope: !650, file: !650, line: 74, type: !2905, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2907)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!94, !94, !669}
!2907 = !{!2908, !2909}
!2908 = !DILocalVariable(name: "p", arg: 1, scope: !2904, file: !650, line: 74, type: !94)
!2909 = !DILocalVariable(name: "s", arg: 2, scope: !2904, file: !650, line: 74, type: !669)
!2910 = !DILocation(line: 0, scope: !2904)
!2911 = !DILocalVariable(name: "p", arg: 1, scope: !2912, file: !2855, line: 66, type: !94)
!2912 = distinct !DISubprogram(name: "irealloc", scope: !2855, file: !2855, line: 66, type: !2905, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2913)
!2913 = !{!2911, !2914}
!2914 = !DILocalVariable(name: "s", arg: 2, scope: !2912, file: !2855, line: 66, type: !669)
!2915 = !DILocation(line: 0, scope: !2912, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 76, column: 25, scope: !2904)
!2917 = !DILocation(line: 0, scope: !2889, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 68, column: 26, scope: !2912, inlinedAt: !2916)
!2919 = !DILocation(line: 2059, column: 24, scope: !2889, inlinedAt: !2918)
!2920 = !DILocation(line: 2059, column: 10, scope: !2889, inlinedAt: !2918)
!2921 = !DILocation(line: 0, scope: !2814, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 76, column: 10, scope: !2904)
!2923 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !2922)
!2924 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !2922)
!2925 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !2922)
!2926 = !DILocation(line: 76, column: 3, scope: !2904)
!2927 = distinct !DISubprogram(name: "xireallocarray", scope: !650, file: !650, line: 89, type: !2928, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2930)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!94, !94, !669, !669}
!2930 = !{!2931, !2932, !2933}
!2931 = !DILocalVariable(name: "p", arg: 1, scope: !2927, file: !650, line: 89, type: !94)
!2932 = !DILocalVariable(name: "n", arg: 2, scope: !2927, file: !650, line: 89, type: !669)
!2933 = !DILocalVariable(name: "s", arg: 3, scope: !2927, file: !650, line: 89, type: !669)
!2934 = !DILocation(line: 0, scope: !2927)
!2935 = !DILocalVariable(name: "p", arg: 1, scope: !2936, file: !2855, line: 98, type: !94)
!2936 = distinct !DISubprogram(name: "ireallocarray", scope: !2855, file: !2855, line: 98, type: !2928, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2937)
!2937 = !{!2935, !2938, !2939}
!2938 = !DILocalVariable(name: "n", arg: 2, scope: !2936, file: !2855, line: 98, type: !669)
!2939 = !DILocalVariable(name: "s", arg: 3, scope: !2936, file: !2855, line: 98, type: !669)
!2940 = !DILocation(line: 0, scope: !2936, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 91, column: 25, scope: !2927)
!2942 = !DILocation(line: 101, column: 13, scope: !2936, inlinedAt: !2941)
!2943 = !DILocation(line: 0, scope: !2814, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 91, column: 10, scope: !2927)
!2945 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !2944)
!2946 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !2944)
!2947 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !2944)
!2948 = !DILocation(line: 91, column: 3, scope: !2927)
!2949 = distinct !DISubprogram(name: "xnmalloc", scope: !650, file: !650, line: 98, type: !2950, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2952)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!94, !97, !97}
!2952 = !{!2953, !2954}
!2953 = !DILocalVariable(name: "n", arg: 1, scope: !2949, file: !650, line: 98, type: !97)
!2954 = !DILocalVariable(name: "s", arg: 2, scope: !2949, file: !650, line: 98, type: !97)
!2955 = !DILocation(line: 0, scope: !2949)
!2956 = !DILocation(line: 0, scope: !2806, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 100, column: 10, scope: !2949)
!2958 = !DILocation(line: 85, column: 25, scope: !2806, inlinedAt: !2957)
!2959 = !DILocation(line: 0, scope: !2814, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 85, column: 10, scope: !2806, inlinedAt: !2957)
!2961 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !2960)
!2962 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !2960)
!2963 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !2960)
!2964 = !DILocation(line: 100, column: 3, scope: !2949)
!2965 = distinct !DISubprogram(name: "xinmalloc", scope: !650, file: !650, line: 104, type: !2966, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2968)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!94, !669, !669}
!2968 = !{!2969, !2970}
!2969 = !DILocalVariable(name: "n", arg: 1, scope: !2965, file: !650, line: 104, type: !669)
!2970 = !DILocalVariable(name: "s", arg: 2, scope: !2965, file: !650, line: 104, type: !669)
!2971 = !DILocation(line: 0, scope: !2965)
!2972 = !DILocation(line: 0, scope: !2927, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 106, column: 10, scope: !2965)
!2974 = !DILocation(line: 0, scope: !2936, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 91, column: 25, scope: !2927, inlinedAt: !2973)
!2976 = !DILocation(line: 101, column: 13, scope: !2936, inlinedAt: !2975)
!2977 = !DILocation(line: 0, scope: !2814, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 91, column: 10, scope: !2927, inlinedAt: !2973)
!2979 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !2978)
!2980 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !2978)
!2981 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !2978)
!2982 = !DILocation(line: 106, column: 3, scope: !2965)
!2983 = distinct !DISubprogram(name: "x2realloc", scope: !650, file: !650, line: 116, type: !2984, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!94, !94, !656}
!2986 = !{!2987, !2988}
!2987 = !DILocalVariable(name: "p", arg: 1, scope: !2983, file: !650, line: 116, type: !94)
!2988 = !DILocalVariable(name: "ps", arg: 2, scope: !2983, file: !650, line: 116, type: !656)
!2989 = !DILocation(line: 0, scope: !2983)
!2990 = !DILocation(line: 0, scope: !653, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 118, column: 10, scope: !2983)
!2992 = !DILocation(line: 178, column: 14, scope: !653, inlinedAt: !2991)
!2993 = !DILocation(line: 180, column: 9, scope: !2994, inlinedAt: !2991)
!2994 = distinct !DILexicalBlock(scope: !653, file: !650, line: 180, column: 7)
!2995 = !DILocation(line: 180, column: 7, scope: !653, inlinedAt: !2991)
!2996 = !DILocation(line: 182, column: 13, scope: !2997, inlinedAt: !2991)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !650, line: 182, column: 11)
!2998 = distinct !DILexicalBlock(scope: !2994, file: !650, line: 181, column: 5)
!2999 = !DILocation(line: 182, column: 11, scope: !2998, inlinedAt: !2991)
!3000 = !DILocation(line: 197, column: 11, scope: !3001, inlinedAt: !2991)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !650, line: 197, column: 11)
!3002 = distinct !DILexicalBlock(scope: !2994, file: !650, line: 195, column: 5)
!3003 = !DILocation(line: 197, column: 11, scope: !3002, inlinedAt: !2991)
!3004 = !DILocation(line: 198, column: 9, scope: !3001, inlinedAt: !2991)
!3005 = !DILocation(line: 0, scope: !2806, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 201, column: 7, scope: !653, inlinedAt: !2991)
!3007 = !DILocation(line: 85, column: 25, scope: !2806, inlinedAt: !3006)
!3008 = !DILocation(line: 0, scope: !2814, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 85, column: 10, scope: !2806, inlinedAt: !3006)
!3010 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !3009)
!3011 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !3009)
!3012 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !3009)
!3013 = !DILocation(line: 202, column: 7, scope: !653, inlinedAt: !2991)
!3014 = !DILocation(line: 118, column: 3, scope: !2983)
!3015 = !DILocation(line: 0, scope: !653)
!3016 = !DILocation(line: 178, column: 14, scope: !653)
!3017 = !DILocation(line: 180, column: 9, scope: !2994)
!3018 = !DILocation(line: 180, column: 7, scope: !653)
!3019 = !DILocation(line: 182, column: 13, scope: !2997)
!3020 = !DILocation(line: 182, column: 11, scope: !2998)
!3021 = !DILocation(line: 190, column: 30, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2997, file: !650, line: 183, column: 9)
!3023 = !DILocation(line: 191, column: 16, scope: !3022)
!3024 = !DILocation(line: 191, column: 13, scope: !3022)
!3025 = !DILocation(line: 192, column: 9, scope: !3022)
!3026 = !DILocation(line: 197, column: 11, scope: !3001)
!3027 = !DILocation(line: 197, column: 11, scope: !3002)
!3028 = !DILocation(line: 198, column: 9, scope: !3001)
!3029 = !DILocation(line: 0, scope: !2806, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 201, column: 7, scope: !653)
!3031 = !DILocation(line: 85, column: 25, scope: !2806, inlinedAt: !3030)
!3032 = !DILocation(line: 0, scope: !2814, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 85, column: 10, scope: !2806, inlinedAt: !3030)
!3034 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !3033)
!3035 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !3033)
!3036 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !3033)
!3037 = !DILocation(line: 202, column: 7, scope: !653)
!3038 = !DILocation(line: 203, column: 3, scope: !653)
!3039 = !DILocation(line: 0, scope: !665)
!3040 = !DILocation(line: 230, column: 14, scope: !665)
!3041 = !DILocation(line: 238, column: 7, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !665, file: !650, line: 238, column: 7)
!3043 = !DILocation(line: 238, column: 7, scope: !665)
!3044 = !DILocation(line: 240, column: 9, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !665, file: !650, line: 240, column: 7)
!3046 = !DILocation(line: 240, column: 18, scope: !3045)
!3047 = !DILocation(line: 253, column: 8, scope: !665)
!3048 = !DILocation(line: 258, column: 27, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !650, line: 257, column: 5)
!3050 = distinct !DILexicalBlock(scope: !665, file: !650, line: 256, column: 7)
!3051 = !DILocation(line: 259, column: 50, scope: !3049)
!3052 = !DILocation(line: 259, column: 32, scope: !3049)
!3053 = !DILocation(line: 260, column: 5, scope: !3049)
!3054 = !DILocation(line: 262, column: 9, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !665, file: !650, line: 262, column: 7)
!3056 = !DILocation(line: 262, column: 7, scope: !665)
!3057 = !DILocation(line: 263, column: 9, scope: !3055)
!3058 = !DILocation(line: 263, column: 5, scope: !3055)
!3059 = !DILocation(line: 264, column: 9, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !665, file: !650, line: 264, column: 7)
!3061 = !DILocation(line: 264, column: 14, scope: !3060)
!3062 = !DILocation(line: 265, column: 7, scope: !3060)
!3063 = !DILocation(line: 265, column: 11, scope: !3060)
!3064 = !DILocation(line: 266, column: 11, scope: !3060)
!3065 = !DILocation(line: 267, column: 14, scope: !3060)
!3066 = !DILocation(line: 264, column: 7, scope: !665)
!3067 = !DILocation(line: 268, column: 5, scope: !3060)
!3068 = !DILocation(line: 0, scope: !2881, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 269, column: 8, scope: !665)
!3070 = !DILocation(line: 0, scope: !2889, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 70, column: 25, scope: !2881, inlinedAt: !3069)
!3072 = !DILocation(line: 2059, column: 24, scope: !2889, inlinedAt: !3071)
!3073 = !DILocation(line: 2059, column: 10, scope: !2889, inlinedAt: !3071)
!3074 = !DILocation(line: 0, scope: !2814, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 70, column: 10, scope: !2881, inlinedAt: !3069)
!3076 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !3075)
!3077 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !3075)
!3078 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !3075)
!3079 = !DILocation(line: 270, column: 7, scope: !665)
!3080 = !DILocation(line: 271, column: 3, scope: !665)
!3081 = distinct !DISubprogram(name: "xzalloc", scope: !650, file: !650, line: 279, type: !2834, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3082)
!3082 = !{!3083}
!3083 = !DILocalVariable(name: "s", arg: 1, scope: !3081, file: !650, line: 279, type: !97)
!3084 = !DILocation(line: 0, scope: !3081)
!3085 = !DILocalVariable(name: "n", arg: 1, scope: !3086, file: !650, line: 294, type: !97)
!3086 = distinct !DISubprogram(name: "xcalloc", scope: !650, file: !650, line: 294, type: !2950, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3087)
!3087 = !{!3085, !3088}
!3088 = !DILocalVariable(name: "s", arg: 2, scope: !3086, file: !650, line: 294, type: !97)
!3089 = !DILocation(line: 0, scope: !3086, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 281, column: 10, scope: !3081)
!3091 = !DILocation(line: 296, column: 25, scope: !3086, inlinedAt: !3090)
!3092 = !DILocation(line: 0, scope: !2814, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 296, column: 10, scope: !3086, inlinedAt: !3090)
!3094 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !3093)
!3095 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !3093)
!3096 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !3093)
!3097 = !DILocation(line: 281, column: 3, scope: !3081)
!3098 = !DISubprogram(name: "calloc", scope: !888, file: !888, line: 543, type: !2950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!3099 = !DILocation(line: 0, scope: !3086)
!3100 = !DILocation(line: 296, column: 25, scope: !3086)
!3101 = !DILocation(line: 0, scope: !2814, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 296, column: 10, scope: !3086)
!3103 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !3102)
!3104 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !3102)
!3105 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !3102)
!3106 = !DILocation(line: 296, column: 3, scope: !3086)
!3107 = distinct !DISubprogram(name: "xizalloc", scope: !650, file: !650, line: 285, type: !2848, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3108)
!3108 = !{!3109}
!3109 = !DILocalVariable(name: "s", arg: 1, scope: !3107, file: !650, line: 285, type: !669)
!3110 = !DILocation(line: 0, scope: !3107)
!3111 = !DILocalVariable(name: "n", arg: 1, scope: !3112, file: !650, line: 300, type: !669)
!3112 = distinct !DISubprogram(name: "xicalloc", scope: !650, file: !650, line: 300, type: !2966, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3113)
!3113 = !{!3111, !3114}
!3114 = !DILocalVariable(name: "s", arg: 2, scope: !3112, file: !650, line: 300, type: !669)
!3115 = !DILocation(line: 0, scope: !3112, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 287, column: 10, scope: !3107)
!3117 = !DILocalVariable(name: "n", arg: 1, scope: !3118, file: !2855, line: 77, type: !669)
!3118 = distinct !DISubprogram(name: "icalloc", scope: !2855, file: !2855, line: 77, type: !2966, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3119)
!3119 = !{!3117, !3120}
!3120 = !DILocalVariable(name: "s", arg: 2, scope: !3118, file: !2855, line: 77, type: !669)
!3121 = !DILocation(line: 0, scope: !3118, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 302, column: 25, scope: !3112, inlinedAt: !3116)
!3123 = !DILocation(line: 91, column: 10, scope: !3118, inlinedAt: !3122)
!3124 = !DILocation(line: 0, scope: !2814, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 302, column: 10, scope: !3112, inlinedAt: !3116)
!3126 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !3125)
!3127 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !3125)
!3128 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !3125)
!3129 = !DILocation(line: 287, column: 3, scope: !3107)
!3130 = !DILocation(line: 0, scope: !3112)
!3131 = !DILocation(line: 0, scope: !3118, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 302, column: 25, scope: !3112)
!3133 = !DILocation(line: 91, column: 10, scope: !3118, inlinedAt: !3132)
!3134 = !DILocation(line: 0, scope: !2814, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 302, column: 10, scope: !3112)
!3136 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !3135)
!3137 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !3135)
!3138 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !3135)
!3139 = !DILocation(line: 302, column: 3, scope: !3112)
!3140 = distinct !DISubprogram(name: "xmemdup", scope: !650, file: !650, line: 310, type: !3141, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3143)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!94, !925, !97}
!3143 = !{!3144, !3145}
!3144 = !DILocalVariable(name: "p", arg: 1, scope: !3140, file: !650, line: 310, type: !925)
!3145 = !DILocalVariable(name: "s", arg: 2, scope: !3140, file: !650, line: 310, type: !97)
!3146 = !DILocation(line: 0, scope: !3140)
!3147 = !DILocation(line: 0, scope: !2833, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 312, column: 18, scope: !3140)
!3149 = !DILocation(line: 49, column: 25, scope: !2833, inlinedAt: !3148)
!3150 = !DILocation(line: 0, scope: !2814, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 49, column: 10, scope: !2833, inlinedAt: !3148)
!3152 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !3151)
!3153 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !3151)
!3154 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !3151)
!3155 = !DILocalVariable(name: "__dest", arg: 1, scope: !3156, file: !1308, line: 26, type: !3159)
!3156 = distinct !DISubprogram(name: "memcpy", scope: !1308, file: !1308, line: 26, type: !3157, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3160)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!94, !3159, !924, !97}
!3159 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!3160 = !{!3155, !3161, !3162}
!3161 = !DILocalVariable(name: "__src", arg: 2, scope: !3156, file: !1308, line: 26, type: !924)
!3162 = !DILocalVariable(name: "__len", arg: 3, scope: !3156, file: !1308, line: 26, type: !97)
!3163 = !DILocation(line: 0, scope: !3156, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 312, column: 10, scope: !3140)
!3165 = !DILocation(line: 29, column: 10, scope: !3156, inlinedAt: !3164)
!3166 = !DILocation(line: 312, column: 3, scope: !3140)
!3167 = distinct !DISubprogram(name: "ximemdup", scope: !650, file: !650, line: 316, type: !3168, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3170)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!94, !925, !669}
!3170 = !{!3171, !3172}
!3171 = !DILocalVariable(name: "p", arg: 1, scope: !3167, file: !650, line: 316, type: !925)
!3172 = !DILocalVariable(name: "s", arg: 2, scope: !3167, file: !650, line: 316, type: !669)
!3173 = !DILocation(line: 0, scope: !3167)
!3174 = !DILocation(line: 0, scope: !2847, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 318, column: 18, scope: !3167)
!3176 = !DILocation(line: 0, scope: !2854, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 55, column: 25, scope: !2847, inlinedAt: !3175)
!3178 = !DILocation(line: 57, column: 26, scope: !2854, inlinedAt: !3177)
!3179 = !DILocation(line: 0, scope: !2814, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 55, column: 10, scope: !2847, inlinedAt: !3175)
!3181 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !3180)
!3182 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !3180)
!3183 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !3180)
!3184 = !DILocation(line: 0, scope: !3156, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 318, column: 10, scope: !3167)
!3186 = !DILocation(line: 29, column: 10, scope: !3156, inlinedAt: !3185)
!3187 = !DILocation(line: 318, column: 3, scope: !3167)
!3188 = distinct !DISubprogram(name: "ximemdup0", scope: !650, file: !650, line: 325, type: !3189, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3191)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!93, !925, !669}
!3191 = !{!3192, !3193, !3194}
!3192 = !DILocalVariable(name: "p", arg: 1, scope: !3188, file: !650, line: 325, type: !925)
!3193 = !DILocalVariable(name: "s", arg: 2, scope: !3188, file: !650, line: 325, type: !669)
!3194 = !DILocalVariable(name: "result", scope: !3188, file: !650, line: 327, type: !93)
!3195 = !DILocation(line: 0, scope: !3188)
!3196 = !DILocation(line: 327, column: 30, scope: !3188)
!3197 = !DILocation(line: 0, scope: !2847, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 327, column: 18, scope: !3188)
!3199 = !DILocation(line: 0, scope: !2854, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 55, column: 25, scope: !2847, inlinedAt: !3198)
!3201 = !DILocation(line: 57, column: 26, scope: !2854, inlinedAt: !3200)
!3202 = !DILocation(line: 0, scope: !2814, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 55, column: 10, scope: !2847, inlinedAt: !3198)
!3204 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !3203)
!3205 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !3203)
!3206 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !3203)
!3207 = !DILocation(line: 328, column: 3, scope: !3188)
!3208 = !DILocation(line: 328, column: 13, scope: !3188)
!3209 = !DILocation(line: 0, scope: !3156, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 329, column: 10, scope: !3188)
!3211 = !DILocation(line: 29, column: 10, scope: !3156, inlinedAt: !3210)
!3212 = !DILocation(line: 329, column: 3, scope: !3188)
!3213 = distinct !DISubprogram(name: "xstrdup", scope: !650, file: !650, line: 335, type: !903, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3214)
!3214 = !{!3215}
!3215 = !DILocalVariable(name: "string", arg: 1, scope: !3213, file: !650, line: 335, type: !72)
!3216 = !DILocation(line: 0, scope: !3213)
!3217 = !DILocation(line: 337, column: 27, scope: !3213)
!3218 = !DILocation(line: 337, column: 43, scope: !3213)
!3219 = !DILocation(line: 0, scope: !3140, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 337, column: 10, scope: !3213)
!3221 = !DILocation(line: 0, scope: !2833, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 312, column: 18, scope: !3140, inlinedAt: !3220)
!3223 = !DILocation(line: 49, column: 25, scope: !2833, inlinedAt: !3222)
!3224 = !DILocation(line: 0, scope: !2814, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 49, column: 10, scope: !2833, inlinedAt: !3222)
!3226 = !DILocation(line: 39, column: 8, scope: !2821, inlinedAt: !3225)
!3227 = !DILocation(line: 39, column: 7, scope: !2814, inlinedAt: !3225)
!3228 = !DILocation(line: 40, column: 5, scope: !2821, inlinedAt: !3225)
!3229 = !DILocation(line: 0, scope: !3156, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 312, column: 10, scope: !3140, inlinedAt: !3220)
!3231 = !DILocation(line: 29, column: 10, scope: !3156, inlinedAt: !3230)
!3232 = !DILocation(line: 337, column: 3, scope: !3213)
!3233 = distinct !DISubprogram(name: "xalloc_die", scope: !614, file: !614, line: 32, type: !360, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !3234)
!3234 = !{!3235}
!3235 = !DILocalVariable(name: "__errstatus", scope: !3236, file: !614, line: 34, type: !3237)
!3236 = distinct !DILexicalBlock(scope: !3233, file: !614, line: 34, column: 3)
!3237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!3238 = !DILocation(line: 34, column: 3, scope: !3236)
!3239 = !DILocation(line: 0, scope: !3236)
!3240 = !DILocation(line: 40, column: 3, scope: !3233)
!3241 = distinct !DISubprogram(name: "close_stream", scope: !686, file: !686, line: 55, type: !3242, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !685, retainedNodes: !3278)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!95, !3244}
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !3246)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !3247)
!3247 = !{!3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3246, file: !234, line: 51, baseType: !95, size: 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3246, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3246, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3246, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3246, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3246, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3246, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3246, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3246, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3246, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3246, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3246, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3246, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3246, file: !234, line: 70, baseType: !3262, size: 64, offset: 832)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3246, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3246, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3246, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3246, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3246, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3246, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3246, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3246, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3246, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3246, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3246, file: !234, line: 93, baseType: !3262, size: 64, offset: 1344)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3246, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3246, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3246, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3246, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!3278 = !{!3279, !3280, !3282, !3283}
!3279 = !DILocalVariable(name: "stream", arg: 1, scope: !3241, file: !686, line: 55, type: !3244)
!3280 = !DILocalVariable(name: "some_pending", scope: !3241, file: !686, line: 57, type: !3281)
!3281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!3282 = !DILocalVariable(name: "prev_fail", scope: !3241, file: !686, line: 58, type: !3281)
!3283 = !DILocalVariable(name: "fclose_fail", scope: !3241, file: !686, line: 59, type: !3281)
!3284 = !DILocation(line: 0, scope: !3241)
!3285 = !DILocation(line: 57, column: 30, scope: !3241)
!3286 = !DILocalVariable(name: "__stream", arg: 1, scope: !3287, file: !1147, line: 135, type: !3244)
!3287 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1147, file: !1147, line: 135, type: !3242, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !685, retainedNodes: !3288)
!3288 = !{!3286}
!3289 = !DILocation(line: 0, scope: !3287, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 58, column: 27, scope: !3241)
!3291 = !DILocation(line: 137, column: 10, scope: !3287, inlinedAt: !3290)
!3292 = !{!1156, !741, i64 0}
!3293 = !DILocation(line: 58, column: 43, scope: !3241)
!3294 = !DILocation(line: 59, column: 29, scope: !3241)
!3295 = !DILocation(line: 59, column: 45, scope: !3241)
!3296 = !DILocation(line: 69, column: 17, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3241, file: !686, line: 69, column: 7)
!3298 = !DILocation(line: 57, column: 50, scope: !3241)
!3299 = !DILocation(line: 69, column: 33, scope: !3297)
!3300 = !DILocation(line: 69, column: 53, scope: !3297)
!3301 = !DILocation(line: 69, column: 59, scope: !3297)
!3302 = !DILocation(line: 69, column: 7, scope: !3241)
!3303 = !DILocation(line: 71, column: 11, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3297, file: !686, line: 70, column: 5)
!3305 = !DILocation(line: 72, column: 9, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3304, file: !686, line: 71, column: 11)
!3307 = !DILocation(line: 72, column: 15, scope: !3306)
!3308 = !DILocation(line: 77, column: 1, scope: !3241)
!3309 = !DISubprogram(name: "__fpending", scope: !3310, file: !3310, line: 75, type: !3311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!3310 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!97, !3244}
!3313 = distinct !DISubprogram(name: "rpl_fclose", scope: !688, file: !688, line: 58, type: !3314, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3350)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!95, !3316}
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !3318)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !3319)
!3319 = !{!3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3318, file: !234, line: 51, baseType: !95, size: 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3318, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3318, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3318, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3318, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3318, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3318, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3318, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3318, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3318, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3318, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3318, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3318, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3318, file: !234, line: 70, baseType: !3334, size: 64, offset: 832)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3318, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3318, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3318, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3318, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3318, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3318, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3318, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3318, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3318, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3318, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3318, file: !234, line: 93, baseType: !3334, size: 64, offset: 1344)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3318, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3318, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3318, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3318, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!3350 = !{!3351, !3352, !3353, !3354}
!3351 = !DILocalVariable(name: "fp", arg: 1, scope: !3313, file: !688, line: 58, type: !3316)
!3352 = !DILocalVariable(name: "saved_errno", scope: !3313, file: !688, line: 60, type: !95)
!3353 = !DILocalVariable(name: "fd", scope: !3313, file: !688, line: 63, type: !95)
!3354 = !DILocalVariable(name: "result", scope: !3313, file: !688, line: 74, type: !95)
!3355 = !DILocation(line: 0, scope: !3313)
!3356 = !DILocation(line: 63, column: 12, scope: !3313)
!3357 = !DILocation(line: 64, column: 10, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3313, file: !688, line: 64, column: 7)
!3359 = !DILocation(line: 64, column: 7, scope: !3313)
!3360 = !DILocation(line: 65, column: 12, scope: !3358)
!3361 = !DILocation(line: 65, column: 5, scope: !3358)
!3362 = !DILocation(line: 70, column: 9, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3313, file: !688, line: 70, column: 7)
!3364 = !DILocation(line: 70, column: 23, scope: !3363)
!3365 = !DILocation(line: 70, column: 33, scope: !3363)
!3366 = !DILocation(line: 70, column: 26, scope: !3363)
!3367 = !DILocation(line: 70, column: 59, scope: !3363)
!3368 = !DILocation(line: 71, column: 7, scope: !3363)
!3369 = !DILocation(line: 71, column: 10, scope: !3363)
!3370 = !DILocation(line: 70, column: 7, scope: !3313)
!3371 = !DILocation(line: 100, column: 12, scope: !3313)
!3372 = !DILocation(line: 105, column: 7, scope: !3313)
!3373 = !DILocation(line: 72, column: 19, scope: !3363)
!3374 = !DILocation(line: 105, column: 19, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3313, file: !688, line: 105, column: 7)
!3376 = !DILocation(line: 107, column: 13, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3375, file: !688, line: 106, column: 5)
!3378 = !DILocation(line: 109, column: 5, scope: !3377)
!3379 = !DILocation(line: 112, column: 1, scope: !3313)
!3380 = !DISubprogram(name: "fileno", scope: !898, file: !898, line: 809, type: !3314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!3381 = !DISubprogram(name: "fclose", scope: !898, file: !898, line: 178, type: !3314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!3382 = !DISubprogram(name: "__freading", scope: !3310, file: !3310, line: 51, type: !3314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!3383 = !DISubprogram(name: "lseek", scope: !1027, file: !1027, line: 339, type: !3384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!256, !95, !256, !95}
!3386 = distinct !DISubprogram(name: "rpl_fflush", scope: !690, file: !690, line: 130, type: !3387, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3423)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!95, !3389}
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !3391)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !3392)
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3391, file: !234, line: 51, baseType: !95, size: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3391, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3391, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3391, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3391, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3391, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3391, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3391, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3391, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3391, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3391, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3391, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3391, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3391, file: !234, line: 70, baseType: !3407, size: 64, offset: 832)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3391, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3391, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3391, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3391, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3391, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3391, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3391, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3391, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3391, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3391, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3391, file: !234, line: 93, baseType: !3407, size: 64, offset: 1344)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3391, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3391, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3391, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3391, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!3423 = !{!3424}
!3424 = !DILocalVariable(name: "stream", arg: 1, scope: !3386, file: !690, line: 130, type: !3389)
!3425 = !DILocation(line: 0, scope: !3386)
!3426 = !DILocation(line: 151, column: 14, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3386, file: !690, line: 151, column: 7)
!3428 = !DILocation(line: 151, column: 22, scope: !3427)
!3429 = !DILocation(line: 151, column: 27, scope: !3427)
!3430 = !DILocation(line: 151, column: 7, scope: !3386)
!3431 = !DILocation(line: 152, column: 12, scope: !3427)
!3432 = !DILocation(line: 152, column: 5, scope: !3427)
!3433 = !DILocalVariable(name: "fp", arg: 1, scope: !3434, file: !690, line: 42, type: !3389)
!3434 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !690, file: !690, line: 42, type: !3435, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3437)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{null, !3389}
!3437 = !{!3433}
!3438 = !DILocation(line: 0, scope: !3434, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 157, column: 3, scope: !3386)
!3440 = !DILocation(line: 44, column: 12, scope: !3441, inlinedAt: !3439)
!3441 = distinct !DILexicalBlock(scope: !3434, file: !690, line: 44, column: 7)
!3442 = !DILocation(line: 44, column: 19, scope: !3441, inlinedAt: !3439)
!3443 = !DILocation(line: 44, column: 7, scope: !3434, inlinedAt: !3439)
!3444 = !DILocation(line: 46, column: 5, scope: !3441, inlinedAt: !3439)
!3445 = !DILocation(line: 159, column: 10, scope: !3386)
!3446 = !DILocation(line: 159, column: 3, scope: !3386)
!3447 = !DILocation(line: 236, column: 1, scope: !3386)
!3448 = !DISubprogram(name: "fflush", scope: !898, file: !898, line: 230, type: !3387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!3449 = distinct !DISubprogram(name: "rpl_fseeko", scope: !692, file: !692, line: 28, type: !3450, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !691, retainedNodes: !3487)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!95, !3452, !3486, !95}
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 7, baseType: !3454)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !234, line: 49, size: 1728, elements: !3455)
!3455 = !{!3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3454, file: !234, line: 51, baseType: !95, size: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3454, file: !234, line: 54, baseType: !93, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3454, file: !234, line: 55, baseType: !93, size: 64, offset: 128)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3454, file: !234, line: 56, baseType: !93, size: 64, offset: 192)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3454, file: !234, line: 57, baseType: !93, size: 64, offset: 256)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3454, file: !234, line: 58, baseType: !93, size: 64, offset: 320)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3454, file: !234, line: 59, baseType: !93, size: 64, offset: 384)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3454, file: !234, line: 60, baseType: !93, size: 64, offset: 448)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3454, file: !234, line: 61, baseType: !93, size: 64, offset: 512)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3454, file: !234, line: 64, baseType: !93, size: 64, offset: 576)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3454, file: !234, line: 65, baseType: !93, size: 64, offset: 640)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3454, file: !234, line: 66, baseType: !93, size: 64, offset: 704)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3454, file: !234, line: 68, baseType: !249, size: 64, offset: 768)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3454, file: !234, line: 70, baseType: !3470, size: 64, offset: 832)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3454, file: !234, line: 72, baseType: !95, size: 32, offset: 896)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3454, file: !234, line: 73, baseType: !95, size: 32, offset: 928)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3454, file: !234, line: 74, baseType: !256, size: 64, offset: 960)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3454, file: !234, line: 77, baseType: !96, size: 16, offset: 1024)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3454, file: !234, line: 78, baseType: !261, size: 8, offset: 1040)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3454, file: !234, line: 79, baseType: !36, size: 8, offset: 1048)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3454, file: !234, line: 81, baseType: !264, size: 64, offset: 1088)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3454, file: !234, line: 89, baseType: !267, size: 64, offset: 1152)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3454, file: !234, line: 91, baseType: !269, size: 64, offset: 1216)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3454, file: !234, line: 92, baseType: !272, size: 64, offset: 1280)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3454, file: !234, line: 93, baseType: !3470, size: 64, offset: 1344)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3454, file: !234, line: 94, baseType: !94, size: 64, offset: 1408)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3454, file: !234, line: 95, baseType: !97, size: 64, offset: 1472)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3454, file: !234, line: 96, baseType: !95, size: 32, offset: 1536)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3454, file: !234, line: 98, baseType: !279, size: 160, offset: 1568)
!3486 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !898, line: 63, baseType: !256)
!3487 = !{!3488, !3489, !3490, !3491}
!3488 = !DILocalVariable(name: "fp", arg: 1, scope: !3449, file: !692, line: 28, type: !3452)
!3489 = !DILocalVariable(name: "offset", arg: 2, scope: !3449, file: !692, line: 28, type: !3486)
!3490 = !DILocalVariable(name: "whence", arg: 3, scope: !3449, file: !692, line: 28, type: !95)
!3491 = !DILocalVariable(name: "pos", scope: !3492, file: !692, line: 123, type: !3486)
!3492 = distinct !DILexicalBlock(scope: !3493, file: !692, line: 119, column: 5)
!3493 = distinct !DILexicalBlock(scope: !3449, file: !692, line: 55, column: 7)
!3494 = !DILocation(line: 0, scope: !3449)
!3495 = !DILocation(line: 55, column: 12, scope: !3493)
!3496 = !{!1156, !719, i64 16}
!3497 = !DILocation(line: 55, column: 33, scope: !3493)
!3498 = !{!1156, !719, i64 8}
!3499 = !DILocation(line: 55, column: 25, scope: !3493)
!3500 = !DILocation(line: 56, column: 7, scope: !3493)
!3501 = !DILocation(line: 56, column: 15, scope: !3493)
!3502 = !DILocation(line: 56, column: 37, scope: !3493)
!3503 = !{!1156, !719, i64 32}
!3504 = !DILocation(line: 56, column: 29, scope: !3493)
!3505 = !DILocation(line: 57, column: 7, scope: !3493)
!3506 = !DILocation(line: 57, column: 15, scope: !3493)
!3507 = !{!1156, !719, i64 72}
!3508 = !DILocation(line: 57, column: 29, scope: !3493)
!3509 = !DILocation(line: 55, column: 7, scope: !3449)
!3510 = !DILocation(line: 123, column: 26, scope: !3492)
!3511 = !DILocation(line: 123, column: 19, scope: !3492)
!3512 = !DILocation(line: 0, scope: !3492)
!3513 = !DILocation(line: 124, column: 15, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3492, file: !692, line: 124, column: 11)
!3515 = !DILocation(line: 124, column: 11, scope: !3492)
!3516 = !DILocation(line: 135, column: 19, scope: !3492)
!3517 = !DILocation(line: 136, column: 12, scope: !3492)
!3518 = !DILocation(line: 136, column: 20, scope: !3492)
!3519 = !{!1156, !1157, i64 144}
!3520 = !DILocation(line: 167, column: 7, scope: !3492)
!3521 = !DILocation(line: 169, column: 10, scope: !3449)
!3522 = !DILocation(line: 169, column: 3, scope: !3449)
!3523 = !DILocation(line: 170, column: 1, scope: !3449)
!3524 = !DISubprogram(name: "fseeko", scope: !898, file: !898, line: 736, type: !3525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!95, !3452, !256, !95}
!3527 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !621, file: !621, line: 100, type: !3528, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !624, retainedNodes: !3531)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!97, !1326, !72, !97, !3530}
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!3531 = !{!3532, !3533, !3534, !3535, !3536}
!3532 = !DILocalVariable(name: "pwc", arg: 1, scope: !3527, file: !621, line: 100, type: !1326)
!3533 = !DILocalVariable(name: "s", arg: 2, scope: !3527, file: !621, line: 100, type: !72)
!3534 = !DILocalVariable(name: "n", arg: 3, scope: !3527, file: !621, line: 100, type: !97)
!3535 = !DILocalVariable(name: "ps", arg: 4, scope: !3527, file: !621, line: 100, type: !3530)
!3536 = !DILocalVariable(name: "ret", scope: !3527, file: !621, line: 130, type: !97)
!3537 = !DILocation(line: 0, scope: !3527)
!3538 = !DILocation(line: 105, column: 9, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3527, file: !621, line: 105, column: 7)
!3540 = !DILocation(line: 105, column: 7, scope: !3527)
!3541 = !DILocation(line: 117, column: 10, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3527, file: !621, line: 117, column: 7)
!3543 = !DILocation(line: 117, column: 7, scope: !3527)
!3544 = !DILocation(line: 130, column: 16, scope: !3527)
!3545 = !DILocation(line: 135, column: 11, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3527, file: !621, line: 135, column: 7)
!3547 = !DILocation(line: 135, column: 25, scope: !3546)
!3548 = !DILocation(line: 135, column: 30, scope: !3546)
!3549 = !DILocation(line: 135, column: 7, scope: !3527)
!3550 = !DILocalVariable(name: "ps", arg: 1, scope: !3551, file: !1299, line: 1135, type: !3530)
!3551 = distinct !DISubprogram(name: "mbszero", scope: !1299, file: !1299, line: 1135, type: !3552, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !624, retainedNodes: !3554)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{null, !3530}
!3554 = !{!3550}
!3555 = !DILocation(line: 0, scope: !3551, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 137, column: 5, scope: !3546)
!3557 = !DILocalVariable(name: "__dest", arg: 1, scope: !3558, file: !1308, line: 57, type: !94)
!3558 = distinct !DISubprogram(name: "memset", scope: !1308, file: !1308, line: 57, type: !1309, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !624, retainedNodes: !3559)
!3559 = !{!3557, !3560, !3561}
!3560 = !DILocalVariable(name: "__ch", arg: 2, scope: !3558, file: !1308, line: 57, type: !95)
!3561 = !DILocalVariable(name: "__len", arg: 3, scope: !3558, file: !1308, line: 57, type: !97)
!3562 = !DILocation(line: 0, scope: !3558, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 1137, column: 3, scope: !3551, inlinedAt: !3556)
!3564 = !DILocation(line: 59, column: 10, scope: !3558, inlinedAt: !3563)
!3565 = !DILocation(line: 137, column: 5, scope: !3546)
!3566 = !DILocation(line: 138, column: 11, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3527, file: !621, line: 138, column: 7)
!3568 = !DILocation(line: 138, column: 7, scope: !3527)
!3569 = !DILocation(line: 139, column: 5, scope: !3567)
!3570 = !DILocation(line: 143, column: 26, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3527, file: !621, line: 143, column: 7)
!3572 = !DILocation(line: 143, column: 41, scope: !3571)
!3573 = !DILocation(line: 143, column: 7, scope: !3527)
!3574 = !DILocation(line: 145, column: 15, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !621, line: 145, column: 11)
!3576 = distinct !DILexicalBlock(scope: !3571, file: !621, line: 144, column: 5)
!3577 = !DILocation(line: 145, column: 11, scope: !3576)
!3578 = !DILocation(line: 146, column: 32, scope: !3575)
!3579 = !DILocation(line: 146, column: 16, scope: !3575)
!3580 = !DILocation(line: 146, column: 14, scope: !3575)
!3581 = !DILocation(line: 146, column: 9, scope: !3575)
!3582 = !DILocation(line: 286, column: 1, scope: !3527)
!3583 = !DISubprogram(name: "mbsinit", scope: !3584, file: !3584, line: 293, type: !3585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!3584 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!95, !3587}
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!3589 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !694, file: !694, line: 27, type: !2798, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3590)
!3590 = !{!3591, !3592, !3593, !3594}
!3591 = !DILocalVariable(name: "ptr", arg: 1, scope: !3589, file: !694, line: 27, type: !94)
!3592 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3589, file: !694, line: 27, type: !97)
!3593 = !DILocalVariable(name: "size", arg: 3, scope: !3589, file: !694, line: 27, type: !97)
!3594 = !DILocalVariable(name: "nbytes", scope: !3589, file: !694, line: 29, type: !97)
!3595 = !DILocation(line: 0, scope: !3589)
!3596 = !DILocation(line: 30, column: 7, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3589, file: !694, line: 30, column: 7)
!3598 = !DILocalVariable(name: "ptr", arg: 1, scope: !3599, file: !2890, line: 2057, type: !94)
!3599 = distinct !DISubprogram(name: "rpl_realloc", scope: !2890, file: !2890, line: 2057, type: !2882, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !3600)
!3600 = !{!3598, !3601}
!3601 = !DILocalVariable(name: "size", arg: 2, scope: !3599, file: !2890, line: 2057, type: !97)
!3602 = !DILocation(line: 0, scope: !3599, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 37, column: 10, scope: !3589)
!3604 = !DILocation(line: 2059, column: 24, scope: !3599, inlinedAt: !3603)
!3605 = !DILocation(line: 2059, column: 10, scope: !3599, inlinedAt: !3603)
!3606 = !DILocation(line: 37, column: 3, scope: !3589)
!3607 = !DILocation(line: 32, column: 7, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3597, file: !694, line: 31, column: 5)
!3609 = !DILocation(line: 32, column: 13, scope: !3608)
!3610 = !DILocation(line: 33, column: 7, scope: !3608)
!3611 = !DILocation(line: 38, column: 1, scope: !3589)
!3612 = distinct !DISubprogram(name: "hard_locale", scope: !639, file: !639, line: 28, type: !3613, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3615)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!217, !95}
!3615 = !{!3616, !3617}
!3616 = !DILocalVariable(name: "category", arg: 1, scope: !3612, file: !639, line: 28, type: !95)
!3617 = !DILocalVariable(name: "locale", scope: !3612, file: !639, line: 30, type: !3618)
!3618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3619)
!3619 = !{!3620}
!3620 = !DISubrange(count: 257)
!3621 = !DILocation(line: 0, scope: !3612)
!3622 = !DILocation(line: 30, column: 3, scope: !3612)
!3623 = !DILocation(line: 30, column: 8, scope: !3612)
!3624 = !DILocation(line: 32, column: 7, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3612, file: !639, line: 32, column: 7)
!3626 = !DILocation(line: 32, column: 7, scope: !3612)
!3627 = !DILocalVariable(name: "__s1", arg: 1, scope: !3628, file: !753, line: 1359, type: !72)
!3628 = distinct !DISubprogram(name: "streq", scope: !753, file: !753, line: 1359, type: !754, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3629)
!3629 = !{!3627, !3630}
!3630 = !DILocalVariable(name: "__s2", arg: 2, scope: !3628, file: !753, line: 1359, type: !72)
!3631 = !DILocation(line: 0, scope: !3628, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 35, column: 9, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3612, file: !639, line: 35, column: 7)
!3634 = !DILocation(line: 1361, column: 11, scope: !3628, inlinedAt: !3632)
!3635 = !DILocation(line: 35, column: 29, scope: !3633)
!3636 = !DILocation(line: 0, scope: !3628, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 35, column: 32, scope: !3633)
!3638 = !DILocation(line: 1361, column: 11, scope: !3628, inlinedAt: !3637)
!3639 = !DILocation(line: 1361, column: 10, scope: !3628, inlinedAt: !3637)
!3640 = !DILocation(line: 35, column: 7, scope: !3612)
!3641 = !DILocation(line: 46, column: 3, scope: !3612)
!3642 = !DILocation(line: 47, column: 1, scope: !3612)
!3643 = distinct !DISubprogram(name: "setlocale_null_r", scope: !701, file: !701, line: 154, type: !3644, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3646)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!95, !95, !93, !97}
!3646 = !{!3647, !3648, !3649}
!3647 = !DILocalVariable(name: "category", arg: 1, scope: !3643, file: !701, line: 154, type: !95)
!3648 = !DILocalVariable(name: "buf", arg: 2, scope: !3643, file: !701, line: 154, type: !93)
!3649 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3643, file: !701, line: 154, type: !97)
!3650 = !DILocation(line: 0, scope: !3643)
!3651 = !DILocation(line: 159, column: 10, scope: !3643)
!3652 = !DILocation(line: 159, column: 3, scope: !3643)
!3653 = distinct !DISubprogram(name: "setlocale_null", scope: !701, file: !701, line: 186, type: !3654, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3656)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!72, !95}
!3656 = !{!3657}
!3657 = !DILocalVariable(name: "category", arg: 1, scope: !3653, file: !701, line: 186, type: !95)
!3658 = !DILocation(line: 0, scope: !3653)
!3659 = !DILocation(line: 189, column: 10, scope: !3653)
!3660 = !DILocation(line: 189, column: 3, scope: !3653)
!3661 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !703, file: !703, line: 35, type: !3654, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3662)
!3662 = !{!3663, !3664}
!3663 = !DILocalVariable(name: "category", arg: 1, scope: !3661, file: !703, line: 35, type: !95)
!3664 = !DILocalVariable(name: "result", scope: !3661, file: !703, line: 37, type: !72)
!3665 = !DILocation(line: 0, scope: !3661)
!3666 = !DILocation(line: 37, column: 24, scope: !3661)
!3667 = !DILocation(line: 62, column: 3, scope: !3661)
!3668 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !703, file: !703, line: 66, type: !3644, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3669)
!3669 = !{!3670, !3671, !3672, !3673, !3674}
!3670 = !DILocalVariable(name: "category", arg: 1, scope: !3668, file: !703, line: 66, type: !95)
!3671 = !DILocalVariable(name: "buf", arg: 2, scope: !3668, file: !703, line: 66, type: !93)
!3672 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3668, file: !703, line: 66, type: !97)
!3673 = !DILocalVariable(name: "result", scope: !3668, file: !703, line: 111, type: !72)
!3674 = !DILocalVariable(name: "length", scope: !3675, file: !703, line: 125, type: !97)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !703, line: 124, column: 5)
!3676 = distinct !DILexicalBlock(scope: !3668, file: !703, line: 113, column: 7)
!3677 = !DILocation(line: 0, scope: !3668)
!3678 = !DILocation(line: 0, scope: !3661, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 111, column: 24, scope: !3668)
!3680 = !DILocation(line: 37, column: 24, scope: !3661, inlinedAt: !3679)
!3681 = !DILocation(line: 113, column: 14, scope: !3676)
!3682 = !DILocation(line: 113, column: 7, scope: !3668)
!3683 = !DILocation(line: 116, column: 19, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3685, file: !703, line: 116, column: 11)
!3685 = distinct !DILexicalBlock(scope: !3676, file: !703, line: 114, column: 5)
!3686 = !DILocation(line: 116, column: 11, scope: !3685)
!3687 = !DILocation(line: 120, column: 16, scope: !3684)
!3688 = !DILocation(line: 120, column: 9, scope: !3684)
!3689 = !DILocation(line: 125, column: 23, scope: !3675)
!3690 = !DILocation(line: 0, scope: !3675)
!3691 = !DILocation(line: 126, column: 18, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3675, file: !703, line: 126, column: 11)
!3693 = !DILocation(line: 126, column: 11, scope: !3675)
!3694 = !DILocation(line: 128, column: 39, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3692, file: !703, line: 127, column: 9)
!3696 = !DILocalVariable(name: "__dest", arg: 1, scope: !3697, file: !1308, line: 26, type: !3159)
!3697 = distinct !DISubprogram(name: "memcpy", scope: !1308, file: !1308, line: 26, type: !3157, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3698)
!3698 = !{!3696, !3699, !3700}
!3699 = !DILocalVariable(name: "__src", arg: 2, scope: !3697, file: !1308, line: 26, type: !924)
!3700 = !DILocalVariable(name: "__len", arg: 3, scope: !3697, file: !1308, line: 26, type: !97)
!3701 = !DILocation(line: 0, scope: !3697, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 128, column: 11, scope: !3695)
!3703 = !DILocation(line: 29, column: 10, scope: !3697, inlinedAt: !3702)
!3704 = !DILocation(line: 129, column: 11, scope: !3695)
!3705 = !DILocation(line: 133, column: 23, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3707, file: !703, line: 133, column: 15)
!3707 = distinct !DILexicalBlock(scope: !3692, file: !703, line: 132, column: 9)
!3708 = !DILocation(line: 133, column: 15, scope: !3707)
!3709 = !DILocation(line: 138, column: 44, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3706, file: !703, line: 134, column: 13)
!3711 = !DILocation(line: 0, scope: !3697, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 138, column: 15, scope: !3710)
!3713 = !DILocation(line: 29, column: 10, scope: !3697, inlinedAt: !3712)
!3714 = !DILocation(line: 139, column: 15, scope: !3710)
!3715 = !DILocation(line: 139, column: 32, scope: !3710)
!3716 = !DILocation(line: 140, column: 13, scope: !3710)
!3717 = !DILocation(line: 0, scope: !3676)
!3718 = !DILocation(line: 145, column: 1, scope: !3668)
