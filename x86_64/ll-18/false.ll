; ModuleID = 'src/false.bc'
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !348
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !319
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
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !712 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !716, metadata !DIExpression()), !dbg !717
  %2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !718
  %3 = load ptr, ptr @program_name, align 8, !dbg !718, !tbaa !719
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %2, ptr noundef %3, ptr noundef %3) #37, !dbg !718
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !723
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %5) #37, !dbg !723
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !724
  tail call fastcc void @oputs_(ptr noundef %7), !dbg !724
  %8 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !725
  tail call fastcc void @oputs_(ptr noundef %8), !dbg !725
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !726
  %10 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef nonnull @.str.3) #37, !dbg !726
  tail call fastcc void @emit_ancillary_info(), !dbg !727
  tail call void @exit(i32 noundef %0) #38, !dbg !728
  unreachable, !dbg !728
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !729 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !733 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !71 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !212, metadata !DIExpression()), !dbg !738
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !213, metadata !DIExpression()), !dbg !738
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !739, !tbaa !740
  %3 = icmp eq i32 %2, -1, !dbg !742
  br i1 %3, label %4, label %16, !dbg !743

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.14) #37, !dbg !744
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !214, metadata !DIExpression()), !dbg !745
  %6 = icmp eq ptr %5, null, !dbg !746
  br i1 %6, label %14, label %7, !dbg !747

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !748, !tbaa !749
  %9 = icmp eq i8 %8, 0, !dbg !748
  br i1 %9, label %14, label %10, !dbg !750

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !751, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !757, metadata !DIExpression()), !dbg !758
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.15) #39, !dbg !760
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
  %20 = load ptr, ptr @stdout, align 8, !dbg !767, !tbaa !719
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !767
  br label %124, !dbg !769

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !217, metadata !DIExpression()), !dbg !738
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.16) #39, !dbg !770
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !771
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !219, metadata !DIExpression()), !dbg !738
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !772
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !220, metadata !DIExpression()), !dbg !738
  %26 = icmp eq ptr %25, null, !dbg !773
  br i1 %26, label %54, label %27, !dbg !774

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !775
  br i1 %28, label %54, label %29, !dbg !776

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !221, metadata !DIExpression()), !dbg !777
  tail call void @llvm.dbg.value(metadata i64 0, metadata !225, metadata !DIExpression()), !dbg !777
  %30 = icmp ult ptr %24, %25, !dbg !778
  br i1 %30, label %31, label %54, !dbg !779

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !738
  %33 = load ptr, ptr %32, align 8, !tbaa !719
  br label %34, !dbg !779

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !221, metadata !DIExpression()), !dbg !777
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !225, metadata !DIExpression()), !dbg !777
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !780
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !221, metadata !DIExpression()), !dbg !777
  %38 = load i8, ptr %35, align 1, !dbg !780, !tbaa !749
  %39 = sext i8 %38 to i64, !dbg !780
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !780
  %41 = load i16, ptr %40, align 2, !dbg !780, !tbaa !781
  %42 = freeze i16 %41, !dbg !783
  %43 = lshr i16 %42, 13, !dbg !783
  %44 = and i16 %43, 1, !dbg !783
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !784
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !225, metadata !DIExpression()), !dbg !777
  %47 = icmp ult ptr %37, %25, !dbg !778
  %48 = icmp ult i64 %46, 2, !dbg !785
  %49 = select i1 %47, i1 %48, i1 false, !dbg !785
  br i1 %49, label %34, label %50, !dbg !779, !llvm.loop !786

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !788
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !790
  %53 = zext i1 %51 to i8, !dbg !790
  br label %54, !dbg !790

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !738
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !738
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !217, metadata !DIExpression()), !dbg !738
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !220, metadata !DIExpression()), !dbg !738
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.17) #39, !dbg !791
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !226, metadata !DIExpression()), !dbg !738
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !792
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !227, metadata !DIExpression()), !dbg !738
  br label %59, !dbg !793

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !738
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !738
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !217, metadata !DIExpression()), !dbg !738
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !227, metadata !DIExpression()), !dbg !738
  %62 = load i8, ptr %60, align 1, !dbg !794, !tbaa !749
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !795

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !796
  %65 = load i8, ptr %64, align 1, !dbg !799, !tbaa !749
  %66 = icmp eq i8 %65, 45, !dbg !800
  %67 = select i1 %66, i8 0, i8 %61, !dbg !801
  br label %68, !dbg !801

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !738
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !217, metadata !DIExpression()), !dbg !738
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !802
  %71 = load ptr, ptr %70, align 8, !dbg !802, !tbaa !719
  %72 = sext i8 %62 to i64, !dbg !802
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !802
  %74 = load i16, ptr %73, align 2, !dbg !802, !tbaa !781
  %75 = and i16 %74, 8192, !dbg !802
  %76 = icmp eq i16 %75, 0, !dbg !802
  br i1 %76, label %92, label %77, !dbg !804

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !805
  br i1 %78, label %94, label %79, !dbg !808

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !809
  %81 = load i8, ptr %80, align 1, !dbg !809, !tbaa !749
  %82 = sext i8 %81 to i64, !dbg !809
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !809
  %84 = load i16, ptr %83, align 2, !dbg !809, !tbaa !781
  %85 = and i16 %84, 8192, !dbg !809
  %86 = icmp eq i16 %85, 0, !dbg !809
  br i1 %86, label %87, label %94, !dbg !810

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !811
  %89 = icmp ne i8 %88, 0, !dbg !811
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !813
  br i1 %91, label %92, label %94, !dbg !813

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !814
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !227, metadata !DIExpression()), !dbg !738
  br label %59, !dbg !793, !llvm.loop !815

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !817
  %96 = load ptr, ptr @stdout, align 8, !dbg !817, !tbaa !719
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !817
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata !820, metadata !757, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata !820, metadata !757, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata !820, metadata !757, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata !820, metadata !757, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata !820, metadata !757, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata !820, metadata !757, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata !820, metadata !757, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata !820, metadata !757, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata !820, metadata !757, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !751, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata !820, metadata !757, metadata !DIExpression()), !dbg !837
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !284, metadata !DIExpression()), !dbg !738
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.10, i64 noundef 6) #39, !dbg !839
  %99 = icmp eq i32 %98, 0, !dbg !839
  br i1 %99, label %103, label %100, !dbg !841

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.11, i64 noundef 9) #39, !dbg !842
  %102 = icmp eq i32 %101, 0, !dbg !842
  br i1 %102, label %103, label %106, !dbg !843

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !844
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #37, !dbg !844
  br label %109, !dbg !846

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !847
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #37, !dbg !847
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !849, !tbaa !719
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.35, ptr noundef %110), !dbg !849
  %112 = load ptr, ptr @stdout, align 8, !dbg !850, !tbaa !719
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %112), !dbg !850
  %114 = ptrtoint ptr %60 to i64, !dbg !851
  %115 = sub i64 %114, %95, !dbg !851
  %116 = load ptr, ptr @stdout, align 8, !dbg !851, !tbaa !719
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !851
  %118 = load ptr, ptr @stdout, align 8, !dbg !852, !tbaa !719
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %118), !dbg !852
  %120 = load ptr, ptr @stdout, align 8, !dbg !853, !tbaa !719
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %120), !dbg !853
  %122 = load ptr, ptr @stdout, align 8, !dbg !854, !tbaa !719
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !854
  br label %124, !dbg !855

124:                                              ; preds = %109, %19
  ret void, !dbg !855
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #4 !dbg !856 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !860, metadata !DIExpression()), !dbg !873
  tail call void @llvm.dbg.value(metadata !820, metadata !869, metadata !DIExpression()), !dbg !873
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !868, metadata !DIExpression()), !dbg !873
  tail call void @emit_bug_reporting_address() #37, !dbg !874
  %1 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !875
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !871, metadata !DIExpression()), !dbg !873
  %2 = icmp eq ptr %1, null, !dbg !876
  br i1 %2, label %10, label %3, !dbg !878

3:                                                ; preds = %0
  %4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.42, i64 noundef 3) #39, !dbg !879
  %5 = icmp eq i32 %4, 0, !dbg !879
  br i1 %5, label %10, label %6, !dbg !880

6:                                                ; preds = %3
  %7 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #37, !dbg !881
  %8 = load ptr, ptr @stdout, align 8, !dbg !881, !tbaa !719
  %9 = tail call i32 @fputs_unlocked(ptr noundef %7, ptr noundef %8), !dbg !881
  br label %10, !dbg !883

10:                                               ; preds = %6, %3, %0
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !868, metadata !DIExpression()), !dbg !873
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !872, metadata !DIExpression()), !dbg !873
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #37, !dbg !884
  %12 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %11, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3) #37, !dbg !884
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #37, !dbg !885
  %14 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.46) #37, !dbg !885
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
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !dbg !927 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !932, metadata !DIExpression()), !dbg !934
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !933, metadata !DIExpression()), !dbg !934
  %3 = icmp eq i32 %0, 2, !dbg !935
  br i1 %3, label %4, label %22, !dbg !937

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !dbg !938, !tbaa !719
  tail call void @set_program_name(ptr noundef %5) #37, !dbg !940
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.7) #37, !dbg !941
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #37, !dbg !942
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.8) #37, !dbg !943
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !944
  %10 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !945
  %11 = load ptr, ptr %10, align 8, !dbg !945, !tbaa !719
  call void @llvm.dbg.value(metadata ptr %11, metadata !751, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !757, metadata !DIExpression()), !dbg !947
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(7) @.str.10) #39, !dbg !949
  %13 = icmp eq i32 %12, 0, !dbg !950
  br i1 %13, label %14, label %15, !dbg !951

14:                                               ; preds = %4
  tail call void @usage(i32 noundef 1) #41, !dbg !952
  unreachable, !dbg !952

15:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr %11, metadata !751, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata ptr @.str.11, metadata !757, metadata !DIExpression()), !dbg !953
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(10) @.str.11) #39, !dbg !956
  %17 = icmp eq i32 %16, 0, !dbg !957
  br i1 %17, label %18, label %22, !dbg !958

18:                                               ; preds = %15
  %19 = load ptr, ptr @stdout, align 8, !dbg !959, !tbaa !719
  %20 = load ptr, ptr @Version, align 8, !dbg !960, !tbaa !719
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #37, !dbg !961
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %20, ptr noundef %21, ptr noundef null) #37, !dbg !962
  br label %22, !dbg !962

22:                                               ; preds = %15, %18, %2
  ret i32 1, !dbg !963
}

; Function Attrs: nounwind
declare !dbg !964 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !967 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !968 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !971 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !974, metadata !DIExpression()), !dbg !975
  store ptr %0, ptr @file_name, align 8, !dbg !976, !tbaa !719
  ret void, !dbg !977
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !978 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !982, metadata !DIExpression()), !dbg !983
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !984, !tbaa !985
  ret void, !dbg !987
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !988 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !993, !tbaa !719
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !994
  %3 = icmp eq i32 %2, 0, !dbg !995
  br i1 %3, label %22, label %4, !dbg !996

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !997, !tbaa !985, !range !998, !noundef !820
  %6 = icmp eq i8 %5, 0, !dbg !997
  br i1 %6, label %11, label %7, !dbg !999

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1000
  %9 = load i32, ptr %8, align 4, !dbg !1000, !tbaa !740
  %10 = icmp eq i32 %9, 32, !dbg !1001
  br i1 %10, label %22, label %11, !dbg !1002

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1.22, i32 noundef 5) #37, !dbg !1003
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !990, metadata !DIExpression()), !dbg !1004
  %13 = load ptr, ptr @file_name, align 8, !dbg !1005, !tbaa !719
  %14 = icmp eq ptr %13, null, !dbg !1005
  %15 = tail call ptr @__errno_location() #40, !dbg !1007
  %16 = load i32, ptr %15, align 4, !dbg !1007, !tbaa !740
  br i1 %14, label %19, label %17, !dbg !1008

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1009
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.23, ptr noundef %18, ptr noundef %12) #37, !dbg !1009
  br label %20, !dbg !1009

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.24, ptr noundef %12) #37, !dbg !1010
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1011, !tbaa !740
  tail call void @_exit(i32 noundef %21) #38, !dbg !1012
  unreachable, !dbg !1012

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1013, !tbaa !719
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1015
  %25 = icmp eq i32 %24, 0, !dbg !1016
  br i1 %25, label %28, label %26, !dbg !1017

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1018, !tbaa !740
  tail call void @_exit(i32 noundef %27) #38, !dbg !1019
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
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1032, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1033, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1034, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1035, metadata !DIExpression()), !dbg !1036
  tail call fastcc void @flush_stdout(), !dbg !1037
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1038, !tbaa !719
  %6 = icmp eq ptr %5, null, !dbg !1038
  br i1 %6, label %8, label %7, !dbg !1040

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !1041
  br label %12, !dbg !1041

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1042, !tbaa !719
  %10 = tail call ptr @getprogname() #39, !dbg !1042
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef %10) #37, !dbg !1042
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1044
  ret void, !dbg !1045
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1046 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1048, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i32 1, metadata !1050, metadata !DIExpression()), !dbg !1055
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1058
  %2 = icmp slt i32 %1, 0, !dbg !1059
  br i1 %2, label %6, label %3, !dbg !1060

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1061, !tbaa !719
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1061
  br label %6, !dbg !1061

6:                                                ; preds = %3, %0
  ret void, !dbg !1062
}

declare !dbg !1063 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1101 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1107
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1103, metadata !DIExpression()), !dbg !1108
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1104, metadata !DIExpression()), !dbg !1108
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1105, metadata !DIExpression()), !dbg !1108
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1106, metadata !DIExpression()), !dbg !1108
  %6 = load ptr, ptr @stderr, align 8, !dbg !1109, !tbaa !719
  call void @llvm.dbg.value(metadata ptr %6, metadata !1110, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata ptr %2, metadata !1115, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata ptr %3, metadata !1116, metadata !DIExpression()), !dbg !1117
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !1119
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1120, !tbaa !740
  %9 = add i32 %8, 1, !dbg !1120
  store i32 %9, ptr @error_message_count, align 4, !dbg !1120, !tbaa !740
  %10 = icmp eq i32 %1, 0, !dbg !1121
  br i1 %10, label %20, label %11, !dbg !1123

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1124, metadata !DIExpression(), metadata !1107, metadata ptr %5, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 %1, metadata !1127, metadata !DIExpression()), !dbg !1132
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1134
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1135
  call void @llvm.dbg.value(metadata ptr %12, metadata !1128, metadata !DIExpression()), !dbg !1132
  %13 = icmp eq ptr %12, null, !dbg !1136
  br i1 %13, label %14, label %16, !dbg !1138

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.26, ptr noundef nonnull @.str.5.27, i32 noundef 5) #37, !dbg !1139
  call void @llvm.dbg.value(metadata ptr %15, metadata !1128, metadata !DIExpression()), !dbg !1132
  br label %16, !dbg !1140

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1132
  call void @llvm.dbg.value(metadata ptr %17, metadata !1128, metadata !DIExpression()), !dbg !1132
  %18 = load ptr, ptr @stderr, align 8, !dbg !1141, !tbaa !719
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.28, ptr noundef %17) #37, !dbg !1141
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1142
  br label %20, !dbg !1143

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1144, !tbaa !719
  call void @llvm.dbg.value(metadata i32 10, metadata !1145, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata ptr %21, metadata !1151, metadata !DIExpression()), !dbg !1152
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1154
  %23 = load ptr, ptr %22, align 8, !dbg !1154, !tbaa !1155
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1154
  %25 = load ptr, ptr %24, align 8, !dbg !1154, !tbaa !1158
  %26 = icmp ult ptr %23, %25, !dbg !1154
  br i1 %26, label %29, label %27, !dbg !1154, !prof !1159

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !1154
  br label %31, !dbg !1154

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1154
  store ptr %30, ptr %22, align 8, !dbg !1154, !tbaa !1155
  store i8 10, ptr %23, align 1, !dbg !1154, !tbaa !749
  br label %31, !dbg !1154

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1160, !tbaa !719
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !1160
  %34 = icmp eq i32 %0, 0, !dbg !1161
  br i1 %34, label %36, label %35, !dbg !1163

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #38, !dbg !1164
  unreachable, !dbg !1164

36:                                               ; preds = %31
  ret void, !dbg !1165
}

declare !dbg !1166 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nounwind
declare !dbg !1169 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1172 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1175 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1178 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1182 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1195
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1189, metadata !DIExpression(), metadata !1195, metadata ptr %4, metadata !DIExpression()), !dbg !1196
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1186, metadata !DIExpression()), !dbg !1196
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1187, metadata !DIExpression()), !dbg !1196
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1188, metadata !DIExpression()), !dbg !1196
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !1197
  call void @llvm.va_start(ptr nonnull %4), !dbg !1198
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #42, !dbg !1199
  call void @llvm.va_end(ptr nonnull %4), !dbg !1200
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !1201
  ret void, !dbg !1201
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !321 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !332, metadata !DIExpression()), !dbg !1202
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !333, metadata !DIExpression()), !dbg !1202
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !334, metadata !DIExpression()), !dbg !1202
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !335, metadata !DIExpression()), !dbg !1202
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !336, metadata !DIExpression()), !dbg !1202
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !337, metadata !DIExpression()), !dbg !1202
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1203, !tbaa !740
  %8 = icmp eq i32 %7, 0, !dbg !1203
  br i1 %8, label %23, label %9, !dbg !1205

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1206, !tbaa !740
  %11 = icmp eq i32 %10, %3, !dbg !1209
  br i1 %11, label %12, label %22, !dbg !1210

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1211, !tbaa !719
  %14 = icmp eq ptr %13, %2, !dbg !1212
  br i1 %14, label %36, label %15, !dbg !1213

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1214
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1215
  br i1 %18, label %19, label %22, !dbg !1215

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1216
  %21 = icmp eq i32 %20, 0, !dbg !1217
  br i1 %21, label %36, label %22, !dbg !1218

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1219, !tbaa !719
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1220, !tbaa !740
  br label %23, !dbg !1221

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1222
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1223, !tbaa !719
  %25 = icmp eq ptr %24, null, !dbg !1223
  br i1 %25, label %27, label %26, !dbg !1225

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !1226
  br label %31, !dbg !1226

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1227, !tbaa !719
  %29 = tail call ptr @getprogname() #39, !dbg !1227
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.31, ptr noundef %29) #37, !dbg !1227
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1229, !tbaa !719
  %33 = icmp eq ptr %2, null, !dbg !1229
  %34 = select i1 %33, ptr @.str.3.32, ptr @.str.2.33, !dbg !1229
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !1229
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1230
  br label %36, !dbg !1231

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1231
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1232 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1242
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1241, metadata !DIExpression(), metadata !1242, metadata ptr %6, metadata !DIExpression()), !dbg !1243
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1236, metadata !DIExpression()), !dbg !1243
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1237, metadata !DIExpression()), !dbg !1243
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1238, metadata !DIExpression()), !dbg !1243
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1239, metadata !DIExpression()), !dbg !1243
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1240, metadata !DIExpression()), !dbg !1243
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !1244
  call void @llvm.va_start(ptr nonnull %6), !dbg !1245
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #42, !dbg !1246
  call void @llvm.va_end(ptr nonnull %6), !dbg !1247
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !1248
  ret void, !dbg !1248
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1249 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1252, !tbaa !719
  ret ptr %1, !dbg !1253
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1254 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1256, metadata !DIExpression()), !dbg !1259
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1260
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1257, metadata !DIExpression()), !dbg !1259
  %3 = icmp eq ptr %2, null, !dbg !1261
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1261
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1261
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1258, metadata !DIExpression()), !dbg !1259
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
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1256, metadata !DIExpression()), !dbg !1259
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.48, i64 noundef 3) #39, !dbg !1279
  %16 = icmp eq i32 %15, 0, !dbg !1282
  %17 = select i1 %16, i64 3, i64 0, !dbg !1283
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1283
  br label %19, !dbg !1283

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1259
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1258, metadata !DIExpression()), !dbg !1259
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1256, metadata !DIExpression()), !dbg !1259
  store ptr %20, ptr @program_name, align 8, !dbg !1284, !tbaa !719
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1285, !tbaa !719
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1286, !tbaa !719
  ret void, !dbg !1287
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1288 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !374 {
  %3 = alloca i32, align 4, !DIAssignID !1289
  call void @llvm.dbg.assign(metadata i1 undef, metadata !384, metadata !DIExpression(), metadata !1289, metadata ptr %3, metadata !DIExpression()), !dbg !1290
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1291
  call void @llvm.dbg.assign(metadata i1 undef, metadata !389, metadata !DIExpression(), metadata !1291, metadata ptr %4, metadata !DIExpression()), !dbg !1290
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !381, metadata !DIExpression()), !dbg !1290
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !382, metadata !DIExpression()), !dbg !1290
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1292
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !383, metadata !DIExpression()), !dbg !1290
  %6 = icmp eq ptr %5, %0, !dbg !1293
  br i1 %6, label %7, label %14, !dbg !1295

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1296
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1297
  call void @llvm.dbg.value(metadata ptr %4, metadata !1298, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata ptr %4, metadata !1307, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i32 0, metadata !1313, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i64 8, metadata !1314, metadata !DIExpression()), !dbg !1315
  store i64 0, ptr %4, align 8, !dbg !1317
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1318
  %9 = icmp eq i64 %8, 2, !dbg !1320
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1321
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1290
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1322
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1322
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1290
  ret ptr %15, !dbg !1322
}

; Function Attrs: nounwind
declare !dbg !1323 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1329 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1334, metadata !DIExpression()), !dbg !1337
  %2 = tail call ptr @__errno_location() #40, !dbg !1338
  %3 = load i32, ptr %2, align 4, !dbg !1338, !tbaa !740
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1335, metadata !DIExpression()), !dbg !1337
  %4 = icmp eq ptr %0, null, !dbg !1339
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1339
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1340
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1336, metadata !DIExpression()), !dbg !1337
  store i32 %3, ptr %2, align 4, !dbg !1341, !tbaa !740
  ret ptr %6, !dbg !1342
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1343 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1349, metadata !DIExpression()), !dbg !1350
  %2 = icmp eq ptr %0, null, !dbg !1351
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1351
  %4 = load i32, ptr %3, align 8, !dbg !1352, !tbaa !1353
  ret i32 %4, !dbg !1355
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1356 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1360, metadata !DIExpression()), !dbg !1362
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1361, metadata !DIExpression()), !dbg !1362
  %3 = icmp eq ptr %0, null, !dbg !1363
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1363
  store i32 %1, ptr %4, align 8, !dbg !1364, !tbaa !1353
  ret void, !dbg !1365
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1366 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1370, metadata !DIExpression()), !dbg !1378
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1371, metadata !DIExpression()), !dbg !1378
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1372, metadata !DIExpression()), !dbg !1378
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1373, metadata !DIExpression()), !dbg !1378
  %4 = icmp eq ptr %0, null, !dbg !1379
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1379
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1380
  %7 = lshr i8 %1, 5, !dbg !1381
  %8 = zext nneg i8 %7 to i64, !dbg !1381
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1382
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1374, metadata !DIExpression()), !dbg !1378
  %10 = and i8 %1, 31, !dbg !1383
  %11 = zext nneg i8 %10 to i32, !dbg !1383
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1376, metadata !DIExpression()), !dbg !1378
  %12 = load i32, ptr %9, align 4, !dbg !1384, !tbaa !740
  %13 = lshr i32 %12, %11, !dbg !1385
  %14 = and i32 %13, 1, !dbg !1386
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1377, metadata !DIExpression()), !dbg !1378
  %15 = xor i32 %13, %2, !dbg !1387
  %16 = and i32 %15, 1, !dbg !1387
  %17 = shl nuw i32 %16, %11, !dbg !1388
  %18 = xor i32 %17, %12, !dbg !1389
  store i32 %18, ptr %9, align 4, !dbg !1389, !tbaa !740
  ret i32 %14, !dbg !1390
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1391 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1395, metadata !DIExpression()), !dbg !1398
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1396, metadata !DIExpression()), !dbg !1398
  %3 = icmp eq ptr %0, null, !dbg !1399
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1401
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1395, metadata !DIExpression()), !dbg !1398
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1402
  %6 = load i32, ptr %5, align 4, !dbg !1402, !tbaa !1403
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1397, metadata !DIExpression()), !dbg !1398
  store i32 %1, ptr %5, align 4, !dbg !1404, !tbaa !1403
  ret i32 %6, !dbg !1405
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1406 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1410, metadata !DIExpression()), !dbg !1413
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1411, metadata !DIExpression()), !dbg !1413
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1412, metadata !DIExpression()), !dbg !1413
  %4 = icmp eq ptr %0, null, !dbg !1414
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1416
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1410, metadata !DIExpression()), !dbg !1413
  store i32 10, ptr %5, align 8, !dbg !1417, !tbaa !1353
  %6 = icmp ne ptr %1, null, !dbg !1418
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1420
  br i1 %8, label %10, label %9, !dbg !1420

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1421
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
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1434, metadata !DIExpression()), !dbg !1442
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1435, metadata !DIExpression()), !dbg !1442
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1436, metadata !DIExpression()), !dbg !1442
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1437, metadata !DIExpression()), !dbg !1442
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1438, metadata !DIExpression()), !dbg !1442
  %6 = icmp eq ptr %4, null, !dbg !1443
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1443
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1439, metadata !DIExpression()), !dbg !1442
  %8 = tail call ptr @__errno_location() #40, !dbg !1444
  %9 = load i32, ptr %8, align 4, !dbg !1444, !tbaa !740
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1440, metadata !DIExpression()), !dbg !1442
  %10 = load i32, ptr %7, align 8, !dbg !1445, !tbaa !1353
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1446
  %12 = load i32, ptr %11, align 4, !dbg !1446, !tbaa !1403
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1447
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1448
  %15 = load ptr, ptr %14, align 8, !dbg !1448, !tbaa !1424
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1449
  %17 = load ptr, ptr %16, align 8, !dbg !1449, !tbaa !1427
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1450
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1441, metadata !DIExpression()), !dbg !1442
  store i32 %9, ptr %8, align 4, !dbg !1451, !tbaa !740
  ret i64 %18, !dbg !1452
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1453 {
  %10 = alloca i32, align 4, !DIAssignID !1521
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1522
  %12 = alloca i32, align 4, !DIAssignID !1523
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1524
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1525
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1499, metadata !DIExpression(), metadata !1525, metadata ptr %14, metadata !DIExpression()), !dbg !1526
  %15 = alloca i32, align 4, !DIAssignID !1527
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1502, metadata !DIExpression(), metadata !1527, metadata ptr %15, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1459, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1460, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1461, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1462, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1463, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1464, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1465, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1466, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1467, metadata !DIExpression()), !dbg !1529
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1530
  %17 = icmp eq i64 %16, 1, !dbg !1531
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1468, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1470, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1471, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1472, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1473, metadata !DIExpression()), !dbg !1529
  %18 = trunc i32 %5 to i8, !dbg !1532
  %19 = lshr i8 %18, 1, !dbg !1532
  %20 = and i8 %19, 1, !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1474, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1475, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1476, metadata !DIExpression()), !dbg !1529
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1533

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !1534
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !1535
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !1536
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !1537
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !1529
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !1538
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !1539
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1460, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1476, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1475, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1474, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1473, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1472, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1471, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1470, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1462, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1467, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1466, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1463, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.label(metadata !1477), !dbg !1540
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1478, metadata !DIExpression()), !dbg !1529
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
  ], !dbg !1541

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1474, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1463, metadata !DIExpression()), !dbg !1529
  br label %114, !dbg !1542

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1474, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1463, metadata !DIExpression()), !dbg !1529
  %43 = and i8 %37, 1, !dbg !1543
  %44 = icmp eq i8 %43, 0, !dbg !1543
  br i1 %44, label %45, label %114, !dbg !1542

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1545
  br i1 %46, label %114, label %47, !dbg !1548

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1545, !tbaa !749
  br label %114, !dbg !1545

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !487, metadata !DIExpression(), metadata !1523, metadata ptr %12, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.assign(metadata i1 undef, metadata !488, metadata !DIExpression(), metadata !1524, metadata ptr %13, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata ptr @.str.11.61, metadata !484, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 %29, metadata !485, metadata !DIExpression()), !dbg !1549
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.62, ptr noundef nonnull @.str.11.61, i32 noundef 5) #37, !dbg !1553
  call void @llvm.dbg.value(metadata ptr %49, metadata !486, metadata !DIExpression()), !dbg !1549
  %50 = icmp eq ptr %49, @.str.11.61, !dbg !1554
  br i1 %50, label %51, label %60, !dbg !1556

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1557
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1558
  call void @llvm.dbg.value(metadata ptr %13, metadata !1559, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata ptr %13, metadata !1567, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i32 0, metadata !1570, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 8, metadata !1571, metadata !DIExpression()), !dbg !1572
  store i64 0, ptr %13, align 8, !dbg !1574
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1575
  %53 = icmp eq i64 %52, 3, !dbg !1577
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1578
  %57 = icmp eq i32 %29, 9, !dbg !1578
  %58 = select i1 %57, ptr @.str.10.63, ptr @.str.12.64, !dbg !1578
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1579
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1579
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1549
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1466, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.assign(metadata i1 undef, metadata !487, metadata !DIExpression(), metadata !1521, metadata ptr %10, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.assign(metadata i1 undef, metadata !488, metadata !DIExpression(), metadata !1522, metadata ptr %11, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata ptr @.str.12.64, metadata !484, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata i32 %29, metadata !485, metadata !DIExpression()), !dbg !1580
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.62, ptr noundef nonnull @.str.12.64, i32 noundef 5) #37, !dbg !1582
  call void @llvm.dbg.value(metadata ptr %62, metadata !486, metadata !DIExpression()), !dbg !1580
  %63 = icmp eq ptr %62, @.str.12.64, !dbg !1583
  br i1 %63, label %64, label %73, !dbg !1584

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1585
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1586
  call void @llvm.dbg.value(metadata ptr %11, metadata !1559, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata ptr %11, metadata !1567, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 0, metadata !1570, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 8, metadata !1571, metadata !DIExpression()), !dbg !1589
  store i64 0, ptr %11, align 8, !dbg !1591
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1592
  %66 = icmp eq i64 %65, 3, !dbg !1593
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1594
  %70 = icmp eq i32 %29, 9, !dbg !1594
  %71 = select i1 %70, ptr @.str.10.63, ptr @.str.12.64, !dbg !1594
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1594
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1595
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1595
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1467, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1466, metadata !DIExpression()), !dbg !1529
  %76 = and i8 %37, 1, !dbg !1596
  %77 = icmp eq i8 %76, 0, !dbg !1596
  br i1 %77, label %78, label %93, !dbg !1597

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1479, metadata !DIExpression()), !dbg !1598
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1469, metadata !DIExpression()), !dbg !1529
  %79 = load i8, ptr %74, align 1, !dbg !1599, !tbaa !749
  %80 = icmp eq i8 %79, 0, !dbg !1601
  br i1 %80, label %93, label %81, !dbg !1601

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1479, metadata !DIExpression()), !dbg !1598
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1469, metadata !DIExpression()), !dbg !1529
  %85 = icmp ult i64 %84, %40, !dbg !1602
  br i1 %85, label %86, label %88, !dbg !1605

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1602
  store i8 %82, ptr %87, align 1, !dbg !1602, !tbaa !749
  br label %88, !dbg !1602

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1469, metadata !DIExpression()), !dbg !1529
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1606
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1479, metadata !DIExpression()), !dbg !1598
  %91 = load i8, ptr %90, align 1, !dbg !1599, !tbaa !749
  %92 = icmp eq i8 %91, 0, !dbg !1601
  br i1 %92, label %93, label %81, !dbg !1601, !llvm.loop !1607

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1609
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1473, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1471, metadata !DIExpression()), !dbg !1529
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #39, !dbg !1610
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1472, metadata !DIExpression()), !dbg !1529
  br label %114, !dbg !1611

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1473, metadata !DIExpression()), !dbg !1529
  br label %98, !dbg !1612

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1473, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1474, metadata !DIExpression()), !dbg !1529
  br label %98, !dbg !1613

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !1537
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1474, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1473, metadata !DIExpression()), !dbg !1529
  %101 = and i8 %100, 1, !dbg !1614
  %102 = icmp eq i8 %101, 0, !dbg !1614
  %103 = select i1 %102, i8 1, i8 %99, !dbg !1616
  br label %104, !dbg !1616

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !1529
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !1532
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1474, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1473, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1463, metadata !DIExpression()), !dbg !1529
  %107 = and i8 %106, 1, !dbg !1617
  %108 = icmp eq i8 %107, 0, !dbg !1617
  br i1 %108, label %109, label %114, !dbg !1619

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !1620
  br i1 %110, label %114, label %111, !dbg !1623

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !1620, !tbaa !749
  br label %114, !dbg !1620

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1474, metadata !DIExpression()), !dbg !1529
  br label %114, !dbg !1624

113:                                              ; preds = %28
  call void @abort() #38, !dbg !1625
  unreachable, !dbg !1625

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !1609
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.63, %45 ], [ @.str.10.63, %47 ], [ @.str.10.63, %42 ], [ %34, %28 ], [ @.str.12.64, %109 ], [ @.str.12.64, %111 ], [ @.str.12.64, %104 ], [ @.str.10.63, %41 ], !dbg !1529
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !1529
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !1529
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1474, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1473, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1472, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1471, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1467, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1466, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1463, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1484, metadata !DIExpression()), !dbg !1626
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
  br label %138, !dbg !1627

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !1609
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !1534
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !1538
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !1539
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !1628
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !1629
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1460, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1484, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1478, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1476, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1475, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1470, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1462, metadata !DIExpression()), !dbg !1529
  %147 = icmp eq i64 %139, -1, !dbg !1630
  br i1 %147, label %148, label %152, !dbg !1631

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1632
  %150 = load i8, ptr %149, align 1, !dbg !1632, !tbaa !749
  %151 = icmp eq i8 %150, 0, !dbg !1633
  br i1 %151, label %612, label %154, !dbg !1634

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1635
  br i1 %153, label %612, label %154, !dbg !1634

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1486, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1489, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1490, metadata !DIExpression()), !dbg !1636
  br i1 %128, label %155, label %170, !dbg !1637

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !1639
  %157 = select i1 %147, i1 %129, i1 false, !dbg !1640
  br i1 %157, label %158, label %160, !dbg !1640

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1641
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1462, metadata !DIExpression()), !dbg !1529
  br label %160, !dbg !1642

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1462, metadata !DIExpression()), !dbg !1529
  %162 = icmp ugt i64 %156, %161, !dbg !1643
  br i1 %162, label %170, label %163, !dbg !1644

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1645
  call void @llvm.dbg.value(metadata ptr %164, metadata !1646, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata ptr %119, metadata !1649, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %120, metadata !1650, metadata !DIExpression()), !dbg !1651
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !1653
  %166 = icmp ne i32 %165, 0, !dbg !1654
  %167 = select i1 %166, i1 true, i1 %131, !dbg !1655
  %168 = xor i1 %166, true, !dbg !1655
  %169 = zext i1 %168 to i8, !dbg !1655
  br i1 %167, label %170, label %666, !dbg !1655

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1636
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1486, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1462, metadata !DIExpression()), !dbg !1529
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1656
  %175 = load i8, ptr %174, align 1, !dbg !1656, !tbaa !749
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1491, metadata !DIExpression()), !dbg !1636
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
  ], !dbg !1657

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !1658

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !1659

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1489, metadata !DIExpression()), !dbg !1636
  %179 = and i8 %144, 1, !dbg !1663
  %180 = icmp eq i8 %179, 0, !dbg !1663
  %181 = select i1 %132, i1 %180, i1 false, !dbg !1663
  br i1 %181, label %182, label %198, !dbg !1663

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1665
  br i1 %183, label %184, label %186, !dbg !1669

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1665
  store i8 39, ptr %185, align 1, !dbg !1665, !tbaa !749
  br label %186, !dbg !1665

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1669
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1469, metadata !DIExpression()), !dbg !1529
  %188 = icmp ult i64 %187, %146, !dbg !1670
  br i1 %188, label %189, label %191, !dbg !1673

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1670
  store i8 36, ptr %190, align 1, !dbg !1670, !tbaa !749
  br label %191, !dbg !1670

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1673
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1469, metadata !DIExpression()), !dbg !1529
  %193 = icmp ult i64 %192, %146, !dbg !1674
  br i1 %193, label %194, label %196, !dbg !1677

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1674
  store i8 39, ptr %195, align 1, !dbg !1674, !tbaa !749
  br label %196, !dbg !1674

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1677
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1478, metadata !DIExpression()), !dbg !1529
  br label %198, !dbg !1678

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1529
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1478, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1469, metadata !DIExpression()), !dbg !1529
  %201 = icmp ult i64 %199, %146, !dbg !1679
  br i1 %201, label %202, label %204, !dbg !1682

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1679
  store i8 92, ptr %203, align 1, !dbg !1679, !tbaa !749
  br label %204, !dbg !1679

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1682
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1469, metadata !DIExpression()), !dbg !1529
  br i1 %125, label %206, label %476, !dbg !1683

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1685
  %208 = icmp ult i64 %207, %171, !dbg !1686
  br i1 %208, label %209, label %465, !dbg !1687

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1688
  %211 = load i8, ptr %210, align 1, !dbg !1688, !tbaa !749
  %212 = add i8 %211, -48, !dbg !1689
  %213 = icmp ult i8 %212, 10, !dbg !1689
  br i1 %213, label %214, label %465, !dbg !1689

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1690
  br i1 %215, label %216, label %218, !dbg !1694

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1690
  store i8 48, ptr %217, align 1, !dbg !1690, !tbaa !749
  br label %218, !dbg !1690

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1694
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1469, metadata !DIExpression()), !dbg !1529
  %220 = icmp ult i64 %219, %146, !dbg !1695
  br i1 %220, label %221, label %223, !dbg !1698

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1695
  store i8 48, ptr %222, align 1, !dbg !1695, !tbaa !749
  br label %223, !dbg !1695

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1698
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1469, metadata !DIExpression()), !dbg !1529
  br label %465, !dbg !1699

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !1700

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1701

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !1702

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !1704

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1706
  %231 = icmp ult i64 %230, %171, !dbg !1707
  br i1 %231, label %232, label %465, !dbg !1708

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !1709
  %234 = load i8, ptr %233, align 1, !dbg !1709, !tbaa !749
  %235 = icmp eq i8 %234, 63, !dbg !1710
  br i1 %235, label %236, label %465, !dbg !1711

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1712
  %238 = load i8, ptr %237, align 1, !dbg !1712, !tbaa !749
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
  ], !dbg !1713

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !1714

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1491, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1484, metadata !DIExpression()), !dbg !1626
  %241 = icmp ult i64 %140, %146, !dbg !1716
  br i1 %241, label %242, label %244, !dbg !1719

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1716
  store i8 63, ptr %243, align 1, !dbg !1716, !tbaa !749
  br label %244, !dbg !1716

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !1719
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1469, metadata !DIExpression()), !dbg !1529
  %246 = icmp ult i64 %245, %146, !dbg !1720
  br i1 %246, label %247, label %249, !dbg !1723

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !1720
  store i8 34, ptr %248, align 1, !dbg !1720, !tbaa !749
  br label %249, !dbg !1720

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !1723
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1469, metadata !DIExpression()), !dbg !1529
  %251 = icmp ult i64 %250, %146, !dbg !1724
  br i1 %251, label %252, label %254, !dbg !1727

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !1724
  store i8 34, ptr %253, align 1, !dbg !1724, !tbaa !749
  br label %254, !dbg !1724

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !1727
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1469, metadata !DIExpression()), !dbg !1529
  %256 = icmp ult i64 %255, %146, !dbg !1728
  br i1 %256, label %257, label %259, !dbg !1731

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !1728
  store i8 63, ptr %258, align 1, !dbg !1728, !tbaa !749
  br label %259, !dbg !1728

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !1731
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1469, metadata !DIExpression()), !dbg !1529
  br label %465, !dbg !1732

261:                                              ; preds = %170
  br label %272, !dbg !1733

262:                                              ; preds = %170
  br label %272, !dbg !1734

263:                                              ; preds = %170
  br label %270, !dbg !1735

264:                                              ; preds = %170
  br label %270, !dbg !1736

265:                                              ; preds = %170
  br label %272, !dbg !1737

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !1738

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !1739

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !1742

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !1744

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !1745
  call void @llvm.dbg.label(metadata !1492), !dbg !1746
  br i1 %133, label %272, label %655, !dbg !1747

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !1745
  call void @llvm.dbg.label(metadata !1495), !dbg !1749
  br i1 %124, label %520, label %476, !dbg !1750

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !1751

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !1752, !tbaa !749
  %277 = icmp eq i8 %276, 0, !dbg !1754
  br i1 %277, label %278, label %465, !dbg !1755

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !1756
  br i1 %279, label %280, label %465, !dbg !1758

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1490, metadata !DIExpression()), !dbg !1636
  br label %281, !dbg !1759

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1490, metadata !DIExpression()), !dbg !1636
  br i1 %133, label %465, label %655, !dbg !1760

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1475, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1490, metadata !DIExpression()), !dbg !1636
  br i1 %132, label %284, label %465, !dbg !1762

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !1763

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !1766
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !1768
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !1768
  %290 = select i1 %288, i64 %146, i64 0, !dbg !1768
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1460, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1470, metadata !DIExpression()), !dbg !1529
  %291 = icmp ult i64 %140, %290, !dbg !1769
  br i1 %291, label %292, label %294, !dbg !1772

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1769
  store i8 39, ptr %293, align 1, !dbg !1769, !tbaa !749
  br label %294, !dbg !1769

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1469, metadata !DIExpression()), !dbg !1529
  %296 = icmp ult i64 %295, %290, !dbg !1773
  br i1 %296, label %297, label %299, !dbg !1776

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !1773
  store i8 92, ptr %298, align 1, !dbg !1773, !tbaa !749
  br label %299, !dbg !1773

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !1776
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1469, metadata !DIExpression()), !dbg !1529
  %301 = icmp ult i64 %300, %290, !dbg !1777
  br i1 %301, label %302, label %304, !dbg !1780

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !1777
  store i8 39, ptr %303, align 1, !dbg !1777, !tbaa !749
  br label %304, !dbg !1777

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !1780
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1478, metadata !DIExpression()), !dbg !1529
  br label %465, !dbg !1781

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !1782

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1496, metadata !DIExpression()), !dbg !1783
  %308 = tail call ptr @__ctype_b_loc() #40, !dbg !1784
  %309 = load ptr, ptr %308, align 8, !dbg !1784, !tbaa !719
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !1784
  %312 = load i16, ptr %311, align 2, !dbg !1784, !tbaa !781
  %313 = and i16 %312, 16384, !dbg !1786
  %314 = icmp ne i16 %313, 0, !dbg !1786
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1498, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1783
  br label %355, !dbg !1787

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !1788
  call void @llvm.dbg.value(metadata ptr %14, metadata !1559, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata ptr %14, metadata !1567, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i32 0, metadata !1570, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i64 8, metadata !1571, metadata !DIExpression()), !dbg !1791
  store i64 0, ptr %14, align 8, !dbg !1793
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1496, metadata !DIExpression()), !dbg !1783
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1498, metadata !DIExpression()), !dbg !1783
  %316 = icmp eq i64 %171, -1, !dbg !1794
  br i1 %316, label %317, label %319, !dbg !1796

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1797
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1462, metadata !DIExpression()), !dbg !1529
  br label %319, !dbg !1798

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1462, metadata !DIExpression()), !dbg !1529
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !1799
  %321 = sub i64 %320, %145, !dbg !1800
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #37, !dbg !1801
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1506, metadata !DIExpression()), !dbg !1528
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !1802

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1496, metadata !DIExpression()), !dbg !1783
  %324 = icmp ult i64 %145, %320, !dbg !1803
  br i1 %324, label %326, label %351, !dbg !1805

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1498, metadata !DIExpression()), !dbg !1783
  br label %351, !dbg !1806

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1496, metadata !DIExpression()), !dbg !1783
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !1808
  %330 = load i8, ptr %329, align 1, !dbg !1808, !tbaa !749
  %331 = icmp eq i8 %330, 0, !dbg !1805
  br i1 %331, label %351, label %332, !dbg !1809

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !1810
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1496, metadata !DIExpression()), !dbg !1783
  %334 = add i64 %333, %145, !dbg !1811
  %335 = icmp eq i64 %333, %321, !dbg !1803
  br i1 %335, label %351, label %326, !dbg !1805, !llvm.loop !1812

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1507, metadata !DIExpression()), !dbg !1813
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !1814
  %339 = and i1 %338, %132, !dbg !1814
  br i1 %339, label %340, label %347, !dbg !1814

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !1507, metadata !DIExpression()), !dbg !1813
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !1815
  %343 = load i8, ptr %342, align 1, !dbg !1815, !tbaa !749
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !1817

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !1818
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !1507, metadata !DIExpression()), !dbg !1813
  %346 = icmp eq i64 %345, %322, !dbg !1819
  br i1 %346, label %347, label %340, !dbg !1820, !llvm.loop !1821

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !1823, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %348, metadata !1825, metadata !DIExpression()), !dbg !1833
  %349 = call i32 @iswprint(i32 noundef %348) #37, !dbg !1835
  %350 = icmp ne i32 %349, 0, !dbg !1836
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1498, metadata !DIExpression()), !dbg !1783
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1496, metadata !DIExpression()), !dbg !1783
  br label %351, !dbg !1837

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1498, metadata !DIExpression()), !dbg !1783
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1496, metadata !DIExpression()), !dbg !1783
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1838
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1839
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1498, metadata !DIExpression()), !dbg !1783
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1496, metadata !DIExpression()), !dbg !1783
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1838
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1839
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !1636
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !1840
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !1840
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1498, metadata !DIExpression()), !dbg !1783
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1496, metadata !DIExpression()), !dbg !1783
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1462, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1490, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1636
  %359 = icmp ult i64 %357, 2, !dbg !1841
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !1842
  br i1 %361, label %461, label %362, !dbg !1842

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !1843
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1515, metadata !DIExpression()), !dbg !1844
  br label %364, !dbg !1845

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !1529
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !1628
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !1626
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !1636
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !1846
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1491, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1489, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1486, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1484, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1478, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1469, metadata !DIExpression()), !dbg !1529
  br i1 %360, label %417, label %371, !dbg !1847

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !1852

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1489, metadata !DIExpression()), !dbg !1636
  %373 = and i8 %366, 1, !dbg !1855
  %374 = icmp eq i8 %373, 0, !dbg !1855
  %375 = select i1 %132, i1 %374, i1 false, !dbg !1855
  br i1 %375, label %376, label %392, !dbg !1855

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !1857
  br i1 %377, label %378, label %380, !dbg !1861

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !1857
  store i8 39, ptr %379, align 1, !dbg !1857, !tbaa !749
  br label %380, !dbg !1857

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !1861
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1469, metadata !DIExpression()), !dbg !1529
  %382 = icmp ult i64 %381, %146, !dbg !1862
  br i1 %382, label %383, label %385, !dbg !1865

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !1862
  store i8 36, ptr %384, align 1, !dbg !1862, !tbaa !749
  br label %385, !dbg !1862

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !1865
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1469, metadata !DIExpression()), !dbg !1529
  %387 = icmp ult i64 %386, %146, !dbg !1866
  br i1 %387, label %388, label %390, !dbg !1869

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !1866
  store i8 39, ptr %389, align 1, !dbg !1866, !tbaa !749
  br label %390, !dbg !1866

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1478, metadata !DIExpression()), !dbg !1529
  br label %392, !dbg !1870

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !1529
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1478, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1469, metadata !DIExpression()), !dbg !1529
  %395 = icmp ult i64 %393, %146, !dbg !1871
  br i1 %395, label %396, label %398, !dbg !1874

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !1871
  store i8 92, ptr %397, align 1, !dbg !1871, !tbaa !749
  br label %398, !dbg !1871

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !1874
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1469, metadata !DIExpression()), !dbg !1529
  %400 = icmp ult i64 %399, %146, !dbg !1875
  br i1 %400, label %401, label %405, !dbg !1878

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !1875
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !1875
  store i8 %403, ptr %404, align 1, !dbg !1875, !tbaa !749
  br label %405, !dbg !1875

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !1878
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1469, metadata !DIExpression()), !dbg !1529
  %407 = icmp ult i64 %406, %146, !dbg !1879
  br i1 %407, label %408, label %413, !dbg !1882

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !1879
  %411 = or disjoint i8 %410, 48, !dbg !1879
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !1879
  store i8 %411, ptr %412, align 1, !dbg !1879, !tbaa !749
  br label %413, !dbg !1879

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !1882
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1469, metadata !DIExpression()), !dbg !1529
  %415 = and i8 %370, 7, !dbg !1883
  %416 = or disjoint i8 %415, 48, !dbg !1884
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1491, metadata !DIExpression()), !dbg !1636
  br label %426, !dbg !1885

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !1886
  %419 = icmp eq i8 %418, 0, !dbg !1886
  br i1 %419, label %426, label %420, !dbg !1888

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !1889
  br i1 %421, label %422, label %424, !dbg !1893

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !1889
  store i8 92, ptr %423, align 1, !dbg !1889, !tbaa !749
  br label %424, !dbg !1889

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !1893
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1486, metadata !DIExpression()), !dbg !1636
  br label %426, !dbg !1894

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !1529
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !1628
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !1636
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !1636
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1491, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1489, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1486, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1478, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1469, metadata !DIExpression()), !dbg !1529
  %432 = add i64 %367, 1, !dbg !1895
  %433 = icmp ugt i64 %363, %432, !dbg !1897
  br i1 %433, label %434, label %463, !dbg !1898

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !1899
  %436 = icmp ne i8 %435, 0, !dbg !1899
  %437 = and i8 %430, 1, !dbg !1899
  %438 = icmp eq i8 %437, 0, !dbg !1899
  %439 = select i1 %436, i1 %438, i1 false, !dbg !1899
  br i1 %439, label %440, label %451, !dbg !1899

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !1902
  br i1 %441, label %442, label %444, !dbg !1906

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !1902
  store i8 39, ptr %443, align 1, !dbg !1902, !tbaa !749
  br label %444, !dbg !1902

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !1906
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1469, metadata !DIExpression()), !dbg !1529
  %446 = icmp ult i64 %445, %146, !dbg !1907
  br i1 %446, label %447, label %449, !dbg !1910

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !1907
  store i8 39, ptr %448, align 1, !dbg !1907, !tbaa !749
  br label %449, !dbg !1907

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !1910
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1478, metadata !DIExpression()), !dbg !1529
  br label %451, !dbg !1911

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !1912
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1478, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1469, metadata !DIExpression()), !dbg !1529
  %454 = icmp ult i64 %452, %146, !dbg !1913
  br i1 %454, label %455, label %457, !dbg !1916

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !1913
  store i8 %431, ptr %456, align 1, !dbg !1913, !tbaa !749
  br label %457, !dbg !1913

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !1916
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1484, metadata !DIExpression()), !dbg !1626
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !1917
  %460 = load i8, ptr %459, align 1, !dbg !1917, !tbaa !749
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1491, metadata !DIExpression()), !dbg !1636
  br label %364, !dbg !1918, !llvm.loop !1919

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1491, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1490, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1489, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1486, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1484, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1478, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1462, metadata !DIExpression()), !dbg !1529
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1491, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1490, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1489, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1486, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1484, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1478, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1462, metadata !DIExpression()), !dbg !1529
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !1922
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !1529
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !1534
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !1529
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !1529
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !1626
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !1636
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !1636
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !1636
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1460, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1491, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1490, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1489, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1486, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1484, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1478, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1475, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1470, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1462, metadata !DIExpression()), !dbg !1529
  br i1 %126, label %487, label %476, !dbg !1923

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
  br i1 %137, label %488, label %509, !dbg !1925

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !1926

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
  %499 = lshr i8 %490, 5, !dbg !1927
  %500 = zext nneg i8 %499 to i64, !dbg !1927
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !1928
  %502 = load i32, ptr %501, align 4, !dbg !1928, !tbaa !740
  %503 = and i8 %490, 31, !dbg !1929
  %504 = zext nneg i8 %503 to i32, !dbg !1929
  %505 = shl nuw i32 1, %504, !dbg !1930
  %506 = and i32 %502, %505, !dbg !1930
  %507 = icmp eq i32 %506, 0, !dbg !1930
  %508 = and i1 %172, %507, !dbg !1931
  br i1 %508, label %558, label %520, !dbg !1931

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
  br i1 %172, label %558, label %520, !dbg !1932

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !1922
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !1529
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !1534
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !1538
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !1628
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !1933
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !1636
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !1636
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1460, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1491, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1490, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1484, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1478, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1475, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1470, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1462, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.label(metadata !1518), !dbg !1934
  br i1 %131, label %530, label %659, !dbg !1935

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1489, metadata !DIExpression()), !dbg !1636
  %531 = and i8 %525, 1, !dbg !1937
  %532 = icmp eq i8 %531, 0, !dbg !1937
  %533 = select i1 %132, i1 %532, i1 false, !dbg !1937
  br i1 %533, label %534, label %550, !dbg !1937

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !1939
  br i1 %535, label %536, label %538, !dbg !1943

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !1939
  store i8 39, ptr %537, align 1, !dbg !1939, !tbaa !749
  br label %538, !dbg !1939

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !1943
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1469, metadata !DIExpression()), !dbg !1529
  %540 = icmp ult i64 %539, %529, !dbg !1944
  br i1 %540, label %541, label %543, !dbg !1947

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !1944
  store i8 36, ptr %542, align 1, !dbg !1944, !tbaa !749
  br label %543, !dbg !1944

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !1947
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1469, metadata !DIExpression()), !dbg !1529
  %545 = icmp ult i64 %544, %529, !dbg !1948
  br i1 %545, label %546, label %548, !dbg !1951

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !1948
  store i8 39, ptr %547, align 1, !dbg !1948, !tbaa !749
  br label %548, !dbg !1948

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !1951
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1478, metadata !DIExpression()), !dbg !1529
  br label %550, !dbg !1952

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !1636
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1478, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1469, metadata !DIExpression()), !dbg !1529
  %553 = icmp ult i64 %551, %529, !dbg !1953
  br i1 %553, label %554, label %556, !dbg !1956

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !1953
  store i8 92, ptr %555, align 1, !dbg !1953, !tbaa !749
  br label %556, !dbg !1953

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !1956
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1460, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1491, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1490, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1489, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1484, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1478, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1475, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1470, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1462, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.label(metadata !1519), !dbg !1957
  br label %585, !dbg !1958

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !1922
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !1529
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !1534
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !1538
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !1628
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !1933
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !1636
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !1636
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !1961
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1460, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1491, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1490, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1489, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1484, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1478, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1475, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1470, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1462, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.label(metadata !1519), !dbg !1957
  %569 = and i8 %563, 1, !dbg !1958
  %570 = icmp ne i8 %569, 0, !dbg !1958
  %571 = and i8 %565, 1, !dbg !1958
  %572 = icmp eq i8 %571, 0, !dbg !1958
  %573 = select i1 %570, i1 %572, i1 false, !dbg !1958
  br i1 %573, label %574, label %585, !dbg !1958

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !1962
  br i1 %575, label %576, label %578, !dbg !1966

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !1962
  store i8 39, ptr %577, align 1, !dbg !1962, !tbaa !749
  br label %578, !dbg !1962

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !1966
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1469, metadata !DIExpression()), !dbg !1529
  %580 = icmp ult i64 %579, %568, !dbg !1967
  br i1 %580, label %581, label %583, !dbg !1970

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !1967
  store i8 39, ptr %582, align 1, !dbg !1967, !tbaa !749
  br label %583, !dbg !1967

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !1970
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1478, metadata !DIExpression()), !dbg !1529
  br label %585, !dbg !1971

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !1636
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1478, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1469, metadata !DIExpression()), !dbg !1529
  %595 = icmp ult i64 %593, %586, !dbg !1972
  br i1 %595, label %596, label %598, !dbg !1975

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !1972
  store i8 %587, ptr %597, align 1, !dbg !1972, !tbaa !749
  br label %598, !dbg !1972

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !1975
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1469, metadata !DIExpression()), !dbg !1529
  %600 = icmp eq i8 %588, 0, !dbg !1976
  %601 = select i1 %600, i8 0, i8 %143, !dbg !1978
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1476, metadata !DIExpression()), !dbg !1529
  br label %602, !dbg !1979

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !1922
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !1529
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !1534
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !1538
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !1539
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !1628
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !1933
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1460, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1484, metadata !DIExpression()), !dbg !1626
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1478, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1476, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1475, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1470, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1462, metadata !DIExpression()), !dbg !1529
  %611 = add i64 %609, 1, !dbg !1980
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1484, metadata !DIExpression()), !dbg !1626
  br label %138, !dbg !1981, !llvm.loop !1982

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1460, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1476, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1475, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1470, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1469, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1462, metadata !DIExpression()), !dbg !1529
  %613 = icmp eq i64 %140, 0, !dbg !1984
  %614 = and i1 %132, %613, !dbg !1986
  %615 = xor i1 %614, true, !dbg !1986
  %616 = select i1 %615, i1 true, i1 %131, !dbg !1986
  br i1 %616, label %617, label %655, !dbg !1986

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !1987
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !1987
  br i1 %621, label %622, label %631, !dbg !1987

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !1989
  %624 = icmp eq i8 %623, 0, !dbg !1989
  br i1 %624, label %627, label %625, !dbg !1992

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !1993
  br label %672, !dbg !1994

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !1995
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !1997
  br i1 %630, label %28, label %631, !dbg !1997

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !1998
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2000
  br i1 %634, label %635, label %650, !dbg !2000

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1471, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1469, metadata !DIExpression()), !dbg !1529
  %636 = load i8, ptr %119, align 1, !dbg !2001, !tbaa !749
  %637 = icmp eq i8 %636, 0, !dbg !2004
  br i1 %637, label %650, label %638, !dbg !2004

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1471, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1469, metadata !DIExpression()), !dbg !1529
  %642 = icmp ult i64 %641, %146, !dbg !2005
  br i1 %642, label %643, label %645, !dbg !2008

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2005
  store i8 %639, ptr %644, align 1, !dbg !2005, !tbaa !749
  br label %645, !dbg !2005

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2008
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1469, metadata !DIExpression()), !dbg !1529
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2009
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1471, metadata !DIExpression()), !dbg !1529
  %648 = load i8, ptr %647, align 1, !dbg !2001, !tbaa !749
  %649 = icmp eq i8 %648, 0, !dbg !2004
  br i1 %649, label %650, label %638, !dbg !2004, !llvm.loop !2010

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !1609
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1469, metadata !DIExpression()), !dbg !1529
  %652 = icmp ult i64 %651, %146, !dbg !2012
  br i1 %652, label %653, label %672, !dbg !2014

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2015
  store i8 0, ptr %654, align 1, !dbg !2016, !tbaa !749
  br label %672, !dbg !2015

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !1520), !dbg !2017
  %657 = icmp eq i8 %123, 0, !dbg !2018
  %658 = select i1 %657, i32 2, i32 4, !dbg !2018
  br label %666, !dbg !2018

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !1520), !dbg !2017
  %662 = icmp eq i32 %115, 2, !dbg !2020
  %663 = icmp eq i8 %123, 0, !dbg !2018
  %664 = select i1 %663, i32 2, i32 4, !dbg !2018
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2018
  br label %666, !dbg !2018

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1463, metadata !DIExpression()), !dbg !1529
  %670 = and i32 %5, -3, !dbg !2021
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2022
  br label %672, !dbg !2023

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2024
}

; Function Attrs: nounwind
declare !dbg !2025 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2028 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2031 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2033 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2037, metadata !DIExpression()), !dbg !2040
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2038, metadata !DIExpression()), !dbg !2040
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2039, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata ptr %0, metadata !2041, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 %1, metadata !2046, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata ptr null, metadata !2047, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata ptr %2, metadata !2048, metadata !DIExpression()), !dbg !2054
  %4 = icmp eq ptr %2, null, !dbg !2056
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2056
  call void @llvm.dbg.value(metadata ptr %5, metadata !2049, metadata !DIExpression()), !dbg !2054
  %6 = tail call ptr @__errno_location() #40, !dbg !2057
  %7 = load i32, ptr %6, align 4, !dbg !2057, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %7, metadata !2050, metadata !DIExpression()), !dbg !2054
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2058
  %9 = load i32, ptr %8, align 4, !dbg !2058, !tbaa !1403
  %10 = or i32 %9, 1, !dbg !2059
  call void @llvm.dbg.value(metadata i32 %10, metadata !2051, metadata !DIExpression()), !dbg !2054
  %11 = load i32, ptr %5, align 8, !dbg !2060, !tbaa !1353
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2061
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2062
  %14 = load ptr, ptr %13, align 8, !dbg !2062, !tbaa !1424
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2063
  %16 = load ptr, ptr %15, align 8, !dbg !2063, !tbaa !1427
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2064
  %18 = add i64 %17, 1, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %18, metadata !2052, metadata !DIExpression()), !dbg !2054
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2066
  call void @llvm.dbg.value(metadata ptr %19, metadata !2053, metadata !DIExpression()), !dbg !2054
  %20 = load i32, ptr %5, align 8, !dbg !2067, !tbaa !1353
  %21 = load ptr, ptr %13, align 8, !dbg !2068, !tbaa !1424
  %22 = load ptr, ptr %15, align 8, !dbg !2069, !tbaa !1427
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2070
  store i32 %7, ptr %6, align 4, !dbg !2071, !tbaa !740
  ret ptr %19, !dbg !2072
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2042 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2041, metadata !DIExpression()), !dbg !2073
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2046, metadata !DIExpression()), !dbg !2073
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2047, metadata !DIExpression()), !dbg !2073
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2048, metadata !DIExpression()), !dbg !2073
  %5 = icmp eq ptr %3, null, !dbg !2074
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2074
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2049, metadata !DIExpression()), !dbg !2073
  %7 = tail call ptr @__errno_location() #40, !dbg !2075
  %8 = load i32, ptr %7, align 4, !dbg !2075, !tbaa !740
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2050, metadata !DIExpression()), !dbg !2073
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2076
  %10 = load i32, ptr %9, align 4, !dbg !2076, !tbaa !1403
  %11 = icmp eq ptr %2, null, !dbg !2077
  %12 = zext i1 %11 to i32, !dbg !2077
  %13 = or i32 %10, %12, !dbg !2078
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2051, metadata !DIExpression()), !dbg !2073
  %14 = load i32, ptr %6, align 8, !dbg !2079, !tbaa !1353
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2080
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2081
  %17 = load ptr, ptr %16, align 8, !dbg !2081, !tbaa !1424
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2082
  %19 = load ptr, ptr %18, align 8, !dbg !2082, !tbaa !1427
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2083
  %21 = add i64 %20, 1, !dbg !2084
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2052, metadata !DIExpression()), !dbg !2073
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2085
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2053, metadata !DIExpression()), !dbg !2073
  %23 = load i32, ptr %6, align 8, !dbg !2086, !tbaa !1353
  %24 = load ptr, ptr %16, align 8, !dbg !2087, !tbaa !1424
  %25 = load ptr, ptr %18, align 8, !dbg !2088, !tbaa !1427
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2089
  store i32 %8, ptr %7, align 4, !dbg !2090, !tbaa !740
  br i1 %11, label %28, label %27, !dbg !2091

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2092, !tbaa !2094
  br label %28, !dbg !2095

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2096
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2097 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2102, !tbaa !719
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2099, metadata !DIExpression()), !dbg !2103
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2100, metadata !DIExpression()), !dbg !2104
  %2 = load i32, ptr @nslots, align 4, !tbaa !740
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2100, metadata !DIExpression()), !dbg !2104
  %3 = icmp sgt i32 %2, 1, !dbg !2105
  br i1 %3, label %4, label %6, !dbg !2107

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2105
  br label %10, !dbg !2107

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2108
  %8 = load ptr, ptr %7, align 8, !dbg !2108, !tbaa !2110
  %9 = icmp eq ptr %8, @slot0, !dbg !2112
  br i1 %9, label %17, label %16, !dbg !2113

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2100, metadata !DIExpression()), !dbg !2104
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2114
  %13 = load ptr, ptr %12, align 8, !dbg !2114, !tbaa !2110
  tail call void @free(ptr noundef %13) #37, !dbg !2115
  %14 = add nuw nsw i64 %11, 1, !dbg !2116
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2100, metadata !DIExpression()), !dbg !2104
  %15 = icmp eq i64 %14, %5, !dbg !2105
  br i1 %15, label %6, label %10, !dbg !2107, !llvm.loop !2117

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2119
  store i64 256, ptr @slotvec0, align 8, !dbg !2121, !tbaa !2122
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2123, !tbaa !2110
  br label %17, !dbg !2124

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2125
  br i1 %18, label %20, label %19, !dbg !2127

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2128
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2130, !tbaa !719
  br label %20, !dbg !2131

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2132, !tbaa !740
  ret void, !dbg !2133
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2134 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2137 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2139, metadata !DIExpression()), !dbg !2141
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2140, metadata !DIExpression()), !dbg !2141
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2142
  ret ptr %3, !dbg !2143
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2144 {
  %5 = alloca i64, align 8, !DIAssignID !2164
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2158, metadata !DIExpression(), metadata !2164, metadata ptr %5, metadata !DIExpression()), !dbg !2165
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2148, metadata !DIExpression()), !dbg !2166
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2149, metadata !DIExpression()), !dbg !2166
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2150, metadata !DIExpression()), !dbg !2166
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2151, metadata !DIExpression()), !dbg !2166
  %6 = tail call ptr @__errno_location() #40, !dbg !2167
  %7 = load i32, ptr %6, align 4, !dbg !2167, !tbaa !740
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2152, metadata !DIExpression()), !dbg !2166
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2168, !tbaa !719
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2153, metadata !DIExpression()), !dbg !2166
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2154, metadata !DIExpression()), !dbg !2166
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2169
  br i1 %9, label %10, label %11, !dbg !2169

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2171
  unreachable, !dbg !2171

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2172, !tbaa !740
  %13 = icmp sgt i32 %12, %0, !dbg !2173
  br i1 %13, label %32, label %14, !dbg !2174

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2175
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2155, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2165
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2176
  %16 = sext i32 %12 to i64, !dbg !2177
  store i64 %16, ptr %5, align 8, !dbg !2178, !tbaa !2094, !DIAssignID !2179
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2158, metadata !DIExpression(), metadata !2179, metadata ptr %5, metadata !DIExpression()), !dbg !2165
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2180
  %18 = add nuw nsw i32 %0, 1, !dbg !2181
  %19 = sub i32 %18, %12, !dbg !2182
  %20 = sext i32 %19 to i64, !dbg !2183
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2184
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2153, metadata !DIExpression()), !dbg !2166
  store ptr %21, ptr @slotvec, align 8, !dbg !2185, !tbaa !719
  br i1 %15, label %22, label %23, !dbg !2186

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2187, !tbaa.struct !2189
  br label %23, !dbg !2190

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2191, !tbaa !740
  %25 = sext i32 %24 to i64, !dbg !2192
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2192
  %27 = load i64, ptr %5, align 8, !dbg !2193, !tbaa !2094
  %28 = sub nsw i64 %27, %25, !dbg !2194
  %29 = shl i64 %28, 4, !dbg !2195
  call void @llvm.dbg.value(metadata ptr %26, metadata !1567, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32 0, metadata !1570, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 %29, metadata !1571, metadata !DIExpression()), !dbg !2196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2198
  %30 = load i64, ptr %5, align 8, !dbg !2199, !tbaa !2094
  %31 = trunc i64 %30 to i32, !dbg !2199
  store i32 %31, ptr @nslots, align 4, !dbg !2200, !tbaa !740
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2201
  br label %32, !dbg !2202

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2166
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2153, metadata !DIExpression()), !dbg !2166
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2203
  %36 = load i64, ptr %35, align 8, !dbg !2204, !tbaa !2122
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2159, metadata !DIExpression()), !dbg !2205
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2206
  %38 = load ptr, ptr %37, align 8, !dbg !2206, !tbaa !2110
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2161, metadata !DIExpression()), !dbg !2205
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2207
  %40 = load i32, ptr %39, align 4, !dbg !2207, !tbaa !1403
  %41 = or i32 %40, 1, !dbg !2208
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2162, metadata !DIExpression()), !dbg !2205
  %42 = load i32, ptr %3, align 8, !dbg !2209, !tbaa !1353
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2210
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2211
  %45 = load ptr, ptr %44, align 8, !dbg !2211, !tbaa !1424
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2212
  %47 = load ptr, ptr %46, align 8, !dbg !2212, !tbaa !1427
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2163, metadata !DIExpression()), !dbg !2205
  %49 = icmp ugt i64 %36, %48, !dbg !2214
  br i1 %49, label %60, label %50, !dbg !2216

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2217
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2159, metadata !DIExpression()), !dbg !2205
  store i64 %51, ptr %35, align 8, !dbg !2219, !tbaa !2122
  %52 = icmp eq ptr %38, @slot0, !dbg !2220
  br i1 %52, label %54, label %53, !dbg !2222

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2223
  br label %54, !dbg !2223

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2224
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2161, metadata !DIExpression()), !dbg !2205
  store ptr %55, ptr %37, align 8, !dbg !2225, !tbaa !2110
  %56 = load i32, ptr %3, align 8, !dbg !2226, !tbaa !1353
  %57 = load ptr, ptr %44, align 8, !dbg !2227, !tbaa !1424
  %58 = load ptr, ptr %46, align 8, !dbg !2228, !tbaa !1427
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2229
  br label %60, !dbg !2230

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2205
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2161, metadata !DIExpression()), !dbg !2205
  store i32 %7, ptr %6, align 4, !dbg !2231, !tbaa !740
  ret ptr %61, !dbg !2232
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2233 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2237, metadata !DIExpression()), !dbg !2240
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2238, metadata !DIExpression()), !dbg !2240
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2239, metadata !DIExpression()), !dbg !2240
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2241
  ret ptr %4, !dbg !2242
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2243 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2245, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 0, metadata !2139, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata ptr %0, metadata !2140, metadata !DIExpression()), !dbg !2247
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2249
  ret ptr %2, !dbg !2250
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2251 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2255, metadata !DIExpression()), !dbg !2257
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2256, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i32 0, metadata !2237, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata ptr %0, metadata !2238, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i64 %1, metadata !2239, metadata !DIExpression()), !dbg !2258
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2260
  ret ptr %3, !dbg !2261
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2262 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2270
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2269, metadata !DIExpression(), metadata !2270, metadata ptr %4, metadata !DIExpression()), !dbg !2271
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2266, metadata !DIExpression()), !dbg !2271
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2267, metadata !DIExpression()), !dbg !2271
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2268, metadata !DIExpression()), !dbg !2271
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2273), !dbg !2276
  call void @llvm.dbg.value(metadata i32 %1, metadata !2277, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2282, metadata !DIExpression()), !dbg !2285
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2285, !alias.scope !2273, !DIAssignID !2286
  call void @llvm.dbg.assign(metadata i8 0, metadata !2269, metadata !DIExpression(), metadata !2286, metadata ptr %4, metadata !DIExpression()), !dbg !2271
  %5 = icmp eq i32 %1, 10, !dbg !2287
  br i1 %5, label %6, label %7, !dbg !2289

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2290, !noalias !2273
  unreachable, !dbg !2290

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2291, !tbaa !1353, !alias.scope !2273, !DIAssignID !2292
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2292, metadata ptr %4, metadata !DIExpression()), !dbg !2271
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2293
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2294
  ret ptr %8, !dbg !2295
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2296 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2305
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2304, metadata !DIExpression(), metadata !2305, metadata ptr %5, metadata !DIExpression()), !dbg !2306
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2300, metadata !DIExpression()), !dbg !2306
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2301, metadata !DIExpression()), !dbg !2306
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2302, metadata !DIExpression()), !dbg !2306
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2303, metadata !DIExpression()), !dbg !2306
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2307
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2308), !dbg !2311
  call void @llvm.dbg.value(metadata i32 %1, metadata !2277, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2282, metadata !DIExpression()), !dbg !2314
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2314, !alias.scope !2308, !DIAssignID !2315
  call void @llvm.dbg.assign(metadata i8 0, metadata !2304, metadata !DIExpression(), metadata !2315, metadata ptr %5, metadata !DIExpression()), !dbg !2306
  %6 = icmp eq i32 %1, 10, !dbg !2316
  br i1 %6, label %7, label %8, !dbg !2317

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2318, !noalias !2308
  unreachable, !dbg !2318

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2319, !tbaa !1353, !alias.scope !2308, !DIAssignID !2320
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2304, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2320, metadata ptr %5, metadata !DIExpression()), !dbg !2306
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2321
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2322
  ret ptr %9, !dbg !2323
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2324 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2330
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2328, metadata !DIExpression()), !dbg !2331
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2329, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2269, metadata !DIExpression(), metadata !2330, metadata ptr %3, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i32 0, metadata !2266, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i32 %0, metadata !2267, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata ptr %1, metadata !2268, metadata !DIExpression()), !dbg !2332
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2335), !dbg !2338
  call void @llvm.dbg.value(metadata i32 %0, metadata !2277, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2282, metadata !DIExpression()), !dbg !2341
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2341, !alias.scope !2335, !DIAssignID !2342
  call void @llvm.dbg.assign(metadata i8 0, metadata !2269, metadata !DIExpression(), metadata !2342, metadata ptr %3, metadata !DIExpression()), !dbg !2332
  %4 = icmp eq i32 %0, 10, !dbg !2343
  br i1 %4, label %5, label %6, !dbg !2344

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2345, !noalias !2335
  unreachable, !dbg !2345

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2346, !tbaa !1353, !alias.scope !2335, !DIAssignID !2347
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2347, metadata ptr %3, metadata !DIExpression()), !dbg !2332
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2348
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2349
  ret ptr %7, !dbg !2350
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2351 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2358
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2355, metadata !DIExpression()), !dbg !2359
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2356, metadata !DIExpression()), !dbg !2359
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2357, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2304, metadata !DIExpression(), metadata !2358, metadata ptr %4, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i32 0, metadata !2300, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i32 %0, metadata !2301, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata ptr %1, metadata !2302, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i64 %2, metadata !2303, metadata !DIExpression()), !dbg !2360
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2362
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2363), !dbg !2366
  call void @llvm.dbg.value(metadata i32 %0, metadata !2277, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2282, metadata !DIExpression()), !dbg !2369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2369, !alias.scope !2363, !DIAssignID !2370
  call void @llvm.dbg.assign(metadata i8 0, metadata !2304, metadata !DIExpression(), metadata !2370, metadata ptr %4, metadata !DIExpression()), !dbg !2360
  %5 = icmp eq i32 %0, 10, !dbg !2371
  br i1 %5, label %6, label %7, !dbg !2372

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2373, !noalias !2363
  unreachable, !dbg !2373

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2374, !tbaa !1353, !alias.scope !2363, !DIAssignID !2375
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2304, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2375, metadata ptr %4, metadata !DIExpression()), !dbg !2360
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2376
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2377
  ret ptr %8, !dbg !2378
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2379 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2387
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2386, metadata !DIExpression(), metadata !2387, metadata ptr %4, metadata !DIExpression()), !dbg !2388
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2383, metadata !DIExpression()), !dbg !2388
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2384, metadata !DIExpression()), !dbg !2388
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2385, metadata !DIExpression()), !dbg !2388
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2390, !tbaa.struct !2391, !DIAssignID !2392
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2386, metadata !DIExpression(), metadata !2392, metadata ptr %4, metadata !DIExpression()), !dbg !2388
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1370, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1371, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1373, metadata !DIExpression()), !dbg !2393
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2395
  %6 = lshr i8 %2, 5, !dbg !2396
  %7 = zext nneg i8 %6 to i64, !dbg !2396
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2397
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1374, metadata !DIExpression()), !dbg !2393
  %9 = and i8 %2, 31, !dbg !2398
  %10 = zext nneg i8 %9 to i32, !dbg !2398
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1376, metadata !DIExpression()), !dbg !2393
  %11 = load i32, ptr %8, align 4, !dbg !2399, !tbaa !740
  %12 = lshr i32 %11, %10, !dbg !2400
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1377, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2393
  %13 = and i32 %12, 1, !dbg !2401
  %14 = xor i32 %13, 1, !dbg !2401
  %15 = shl nuw i32 %14, %10, !dbg !2402
  %16 = xor i32 %15, %11, !dbg !2403
  store i32 %16, ptr %8, align 4, !dbg !2403, !tbaa !740
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2404
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2405
  ret ptr %17, !dbg !2406
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2407 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2413
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2411, metadata !DIExpression()), !dbg !2414
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2412, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2386, metadata !DIExpression(), metadata !2413, metadata ptr %3, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata ptr %0, metadata !2383, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i64 -1, metadata !2384, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i8 %1, metadata !2385, metadata !DIExpression()), !dbg !2415
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2418, !tbaa.struct !2391, !DIAssignID !2419
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2386, metadata !DIExpression(), metadata !2419, metadata ptr %3, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata ptr %3, metadata !1370, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8 %1, metadata !1371, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8 %1, metadata !1373, metadata !DIExpression()), !dbg !2420
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2422
  %5 = lshr i8 %1, 5, !dbg !2423
  %6 = zext nneg i8 %5 to i64, !dbg !2423
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2424
  call void @llvm.dbg.value(metadata ptr %7, metadata !1374, metadata !DIExpression()), !dbg !2420
  %8 = and i8 %1, 31, !dbg !2425
  %9 = zext nneg i8 %8 to i32, !dbg !2425
  call void @llvm.dbg.value(metadata i32 %9, metadata !1376, metadata !DIExpression()), !dbg !2420
  %10 = load i32, ptr %7, align 4, !dbg !2426, !tbaa !740
  %11 = lshr i32 %10, %9, !dbg !2427
  call void @llvm.dbg.value(metadata i32 %11, metadata !1377, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2420
  %12 = and i32 %11, 1, !dbg !2428
  %13 = xor i32 %12, 1, !dbg !2428
  %14 = shl nuw i32 %13, %9, !dbg !2429
  %15 = xor i32 %14, %10, !dbg !2430
  store i32 %15, ptr %7, align 4, !dbg !2430, !tbaa !740
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2431
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2432
  ret ptr %16, !dbg !2433
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2434 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2437
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2436, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata ptr %0, metadata !2411, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 58, metadata !2412, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2386, metadata !DIExpression(), metadata !2437, metadata ptr %2, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata ptr %0, metadata !2383, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 -1, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 58, metadata !2385, metadata !DIExpression()), !dbg !2441
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2444, !tbaa.struct !2391, !DIAssignID !2445
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2386, metadata !DIExpression(), metadata !2445, metadata ptr %2, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata ptr %2, metadata !1370, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 58, metadata !1371, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 58, metadata !1373, metadata !DIExpression()), !dbg !2446
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2448
  call void @llvm.dbg.value(metadata ptr %3, metadata !1374, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i32 26, metadata !1376, metadata !DIExpression()), !dbg !2446
  %4 = load i32, ptr %3, align 4, !dbg !2449, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %4, metadata !1377, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2446
  %5 = or i32 %4, 67108864, !dbg !2450
  store i32 %5, ptr %3, align 4, !dbg !2450, !tbaa !740
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2451
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2452
  ret ptr %6, !dbg !2453
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2454 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2458
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2456, metadata !DIExpression()), !dbg !2459
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2457, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2386, metadata !DIExpression(), metadata !2458, metadata ptr %3, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata ptr %0, metadata !2383, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i64 %1, metadata !2384, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8 58, metadata !2385, metadata !DIExpression()), !dbg !2460
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2463, !tbaa.struct !2391, !DIAssignID !2464
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2386, metadata !DIExpression(), metadata !2464, metadata ptr %3, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata ptr %3, metadata !1370, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8 58, metadata !1371, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8 58, metadata !1373, metadata !DIExpression()), !dbg !2465
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2467
  call void @llvm.dbg.value(metadata ptr %4, metadata !1374, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i32 26, metadata !1376, metadata !DIExpression()), !dbg !2465
  %5 = load i32, ptr %4, align 4, !dbg !2468, !tbaa !740
  call void @llvm.dbg.value(metadata i32 %5, metadata !1377, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2465
  %6 = or i32 %5, 67108864, !dbg !2469
  store i32 %6, ptr %4, align 4, !dbg !2469, !tbaa !740
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2470
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2471
  ret ptr %7, !dbg !2472
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2473 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2479
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2478, metadata !DIExpression(), metadata !2479, metadata ptr %4, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2282, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2481
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2475, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2476, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2477, metadata !DIExpression()), !dbg !2480
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2483
  call void @llvm.dbg.value(metadata i32 %1, metadata !2277, metadata !DIExpression()), !dbg !2484
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2282, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2484
  %5 = icmp eq i32 %1, 10, !dbg !2485
  br i1 %5, label %6, label %7, !dbg !2486

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2487, !noalias !2488
  unreachable, !dbg !2487

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2282, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2484
  store i32 %1, ptr %4, align 8, !dbg !2491, !tbaa.struct !2391, !DIAssignID !2492
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2491
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2491
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2478, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2492, metadata ptr %4, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2478, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2493, metadata ptr %8, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1370, metadata !DIExpression()), !dbg !2494
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1371, metadata !DIExpression()), !dbg !2494
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !2494
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1373, metadata !DIExpression()), !dbg !2494
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2496
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1374, metadata !DIExpression()), !dbg !2494
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1376, metadata !DIExpression()), !dbg !2494
  %10 = load i32, ptr %9, align 4, !dbg !2497, !tbaa !740
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1377, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2494
  %11 = or i32 %10, 67108864, !dbg !2498
  store i32 %11, ptr %9, align 4, !dbg !2498, !tbaa !740, !DIAssignID !2499
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2478, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2499, metadata ptr %9, metadata !DIExpression()), !dbg !2480
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2500
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2501
  ret ptr %12, !dbg !2502
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2503 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2511
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2507, metadata !DIExpression()), !dbg !2512
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2508, metadata !DIExpression()), !dbg !2512
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2509, metadata !DIExpression()), !dbg !2512
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2510, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(), metadata !2511, metadata ptr %5, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i32 %0, metadata !2518, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata ptr %1, metadata !2519, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata ptr %2, metadata !2520, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata ptr %3, metadata !2521, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i64 -1, metadata !2522, metadata !DIExpression()), !dbg !2523
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2526, !tbaa.struct !2391, !DIAssignID !2527
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(), metadata !2527, metadata ptr %5, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2528, metadata ptr undef, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata ptr %5, metadata !1410, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata ptr %1, metadata !1411, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata ptr %2, metadata !1412, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata ptr %5, metadata !1410, metadata !DIExpression()), !dbg !2529
  store i32 10, ptr %5, align 8, !dbg !2531, !tbaa !1353, !DIAssignID !2532
  call void @llvm.dbg.assign(metadata i32 10, metadata !2513, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2532, metadata ptr %5, metadata !DIExpression()), !dbg !2523
  %6 = icmp ne ptr %1, null, !dbg !2533
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2534
  br i1 %8, label %10, label %9, !dbg !2534

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2535
  unreachable, !dbg !2535

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2536
  store ptr %1, ptr %11, align 8, !dbg !2537, !tbaa !1424, !DIAssignID !2538
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2513, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2538, metadata ptr %11, metadata !DIExpression()), !dbg !2523
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2539
  store ptr %2, ptr %12, align 8, !dbg !2540, !tbaa !1427, !DIAssignID !2541
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2513, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2541, metadata ptr %12, metadata !DIExpression()), !dbg !2523
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2542
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2543
  ret ptr %13, !dbg !2544
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2514 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2545
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(), metadata !2545, metadata ptr %6, metadata !DIExpression()), !dbg !2546
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2518, metadata !DIExpression()), !dbg !2546
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2519, metadata !DIExpression()), !dbg !2546
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2520, metadata !DIExpression()), !dbg !2546
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2521, metadata !DIExpression()), !dbg !2546
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2522, metadata !DIExpression()), !dbg !2546
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2548, !tbaa.struct !2391, !DIAssignID !2549
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(), metadata !2549, metadata ptr %6, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2550, metadata ptr undef, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr %6, metadata !1410, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata ptr %1, metadata !1411, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata ptr %2, metadata !1412, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata ptr %6, metadata !1410, metadata !DIExpression()), !dbg !2551
  store i32 10, ptr %6, align 8, !dbg !2553, !tbaa !1353, !DIAssignID !2554
  call void @llvm.dbg.assign(metadata i32 10, metadata !2513, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2554, metadata ptr %6, metadata !DIExpression()), !dbg !2546
  %7 = icmp ne ptr %1, null, !dbg !2555
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2556
  br i1 %9, label %11, label %10, !dbg !2556

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2557
  unreachable, !dbg !2557

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2558
  store ptr %1, ptr %12, align 8, !dbg !2559, !tbaa !1424, !DIAssignID !2560
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2513, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2560, metadata ptr %12, metadata !DIExpression()), !dbg !2546
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2561
  store ptr %2, ptr %13, align 8, !dbg !2562, !tbaa !1427, !DIAssignID !2563
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2513, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2563, metadata ptr %13, metadata !DIExpression()), !dbg !2546
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2564
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2565
  ret ptr %14, !dbg !2566
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2567 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2574
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2571, metadata !DIExpression()), !dbg !2575
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2572, metadata !DIExpression()), !dbg !2575
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2573, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 0, metadata !2507, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata ptr %0, metadata !2508, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata ptr %1, metadata !2509, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata ptr %2, metadata !2510, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(), metadata !2574, metadata ptr %4, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i32 0, metadata !2518, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata ptr %0, metadata !2519, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata ptr %1, metadata !2520, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata ptr %2, metadata !2521, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 -1, metadata !2522, metadata !DIExpression()), !dbg !2578
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2581, !tbaa.struct !2391, !DIAssignID !2582
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(), metadata !2582, metadata ptr %4, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2583, metadata ptr undef, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata ptr %4, metadata !1410, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata ptr %0, metadata !1411, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata ptr %1, metadata !1412, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata ptr %4, metadata !1410, metadata !DIExpression()), !dbg !2584
  store i32 10, ptr %4, align 8, !dbg !2586, !tbaa !1353, !DIAssignID !2587
  call void @llvm.dbg.assign(metadata i32 10, metadata !2513, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2587, metadata ptr %4, metadata !DIExpression()), !dbg !2578
  %5 = icmp ne ptr %0, null, !dbg !2588
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2589
  br i1 %7, label %9, label %8, !dbg !2589

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2590
  unreachable, !dbg !2590

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2591
  store ptr %0, ptr %10, align 8, !dbg !2592, !tbaa !1424, !DIAssignID !2593
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2513, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2593, metadata ptr %10, metadata !DIExpression()), !dbg !2578
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2594
  store ptr %1, ptr %11, align 8, !dbg !2595, !tbaa !1427, !DIAssignID !2596
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2513, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2596, metadata ptr %11, metadata !DIExpression()), !dbg !2578
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2597
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2598
  ret ptr %12, !dbg !2599
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2600 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2608
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2604, metadata !DIExpression()), !dbg !2609
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2605, metadata !DIExpression()), !dbg !2609
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2606, metadata !DIExpression()), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2607, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(), metadata !2608, metadata ptr %5, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 0, metadata !2518, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %0, metadata !2519, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %1, metadata !2520, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %2, metadata !2521, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %3, metadata !2522, metadata !DIExpression()), !dbg !2610
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2613, !tbaa.struct !2391, !DIAssignID !2614
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(), metadata !2614, metadata ptr %5, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2615, metadata ptr undef, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %5, metadata !1410, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %0, metadata !1411, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %1, metadata !1412, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %5, metadata !1410, metadata !DIExpression()), !dbg !2616
  store i32 10, ptr %5, align 8, !dbg !2618, !tbaa !1353, !DIAssignID !2619
  call void @llvm.dbg.assign(metadata i32 10, metadata !2513, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2619, metadata ptr %5, metadata !DIExpression()), !dbg !2610
  %6 = icmp ne ptr %0, null, !dbg !2620
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2621
  br i1 %8, label %10, label %9, !dbg !2621

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2622
  unreachable, !dbg !2622

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2623
  store ptr %0, ptr %11, align 8, !dbg !2624, !tbaa !1424, !DIAssignID !2625
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2513, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2625, metadata ptr %11, metadata !DIExpression()), !dbg !2610
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2626
  store ptr %1, ptr %12, align 8, !dbg !2627, !tbaa !1427, !DIAssignID !2628
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2513, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2628, metadata ptr %12, metadata !DIExpression()), !dbg !2610
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2629
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2630
  ret ptr %13, !dbg !2631
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2632 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2636, metadata !DIExpression()), !dbg !2639
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2637, metadata !DIExpression()), !dbg !2639
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2638, metadata !DIExpression()), !dbg !2639
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2640
  ret ptr %4, !dbg !2641
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2642 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2646, metadata !DIExpression()), !dbg !2648
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2647, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i32 0, metadata !2636, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata ptr %0, metadata !2637, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i64 %1, metadata !2638, metadata !DIExpression()), !dbg !2649
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2651
  ret ptr %3, !dbg !2652
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2653 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2657, metadata !DIExpression()), !dbg !2659
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2658, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i32 %0, metadata !2636, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata ptr %1, metadata !2637, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i64 -1, metadata !2638, metadata !DIExpression()), !dbg !2660
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2662
  ret ptr %3, !dbg !2663
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2664 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2668, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i32 0, metadata !2657, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata ptr %0, metadata !2658, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i32 0, metadata !2636, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %0, metadata !2637, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i64 -1, metadata !2638, metadata !DIExpression()), !dbg !2672
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2674
  ret ptr %2, !dbg !2675
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2676 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2715, metadata !DIExpression()), !dbg !2721
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2716, metadata !DIExpression()), !dbg !2721
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2717, metadata !DIExpression()), !dbg !2721
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2718, metadata !DIExpression()), !dbg !2721
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2719, metadata !DIExpression()), !dbg !2721
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2720, metadata !DIExpression()), !dbg !2721
  %7 = icmp eq ptr %1, null, !dbg !2722
  br i1 %7, label %10, label %8, !dbg !2724

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.67, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2725
  br label %12, !dbg !2725

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.68, ptr noundef %2, ptr noundef %3) #37, !dbg !2726
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.3.70, i32 noundef 5) #37, !dbg !2727
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2727
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %0), !dbg !2728
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.5.72, i32 noundef 5) #37, !dbg !2729
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.73) #37, !dbg !2729
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %0), !dbg !2730
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
  ], !dbg !2731

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.7.74, i32 noundef 5) #37, !dbg !2732
  %21 = load ptr, ptr %4, align 8, !dbg !2732, !tbaa !719
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2732
  br label %147, !dbg !2734

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.8.75, i32 noundef 5) #37, !dbg !2735
  %25 = load ptr, ptr %4, align 8, !dbg !2735, !tbaa !719
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2735
  %27 = load ptr, ptr %26, align 8, !dbg !2735, !tbaa !719
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2735
  br label %147, !dbg !2736

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.9.76, i32 noundef 5) #37, !dbg !2737
  %31 = load ptr, ptr %4, align 8, !dbg !2737, !tbaa !719
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2737
  %33 = load ptr, ptr %32, align 8, !dbg !2737, !tbaa !719
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2737
  %35 = load ptr, ptr %34, align 8, !dbg !2737, !tbaa !719
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2737
  br label %147, !dbg !2738

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.10.77, i32 noundef 5) #37, !dbg !2739
  %39 = load ptr, ptr %4, align 8, !dbg !2739, !tbaa !719
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2739
  %41 = load ptr, ptr %40, align 8, !dbg !2739, !tbaa !719
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2739
  %43 = load ptr, ptr %42, align 8, !dbg !2739, !tbaa !719
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2739
  %45 = load ptr, ptr %44, align 8, !dbg !2739, !tbaa !719
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2739
  br label %147, !dbg !2740

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.11.78, i32 noundef 5) #37, !dbg !2741
  %49 = load ptr, ptr %4, align 8, !dbg !2741, !tbaa !719
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2741
  %51 = load ptr, ptr %50, align 8, !dbg !2741, !tbaa !719
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2741
  %53 = load ptr, ptr %52, align 8, !dbg !2741, !tbaa !719
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2741
  %55 = load ptr, ptr %54, align 8, !dbg !2741, !tbaa !719
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2741
  %57 = load ptr, ptr %56, align 8, !dbg !2741, !tbaa !719
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2741
  br label %147, !dbg !2742

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.12.79, i32 noundef 5) #37, !dbg !2743
  %61 = load ptr, ptr %4, align 8, !dbg !2743, !tbaa !719
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2743
  %63 = load ptr, ptr %62, align 8, !dbg !2743, !tbaa !719
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2743
  %65 = load ptr, ptr %64, align 8, !dbg !2743, !tbaa !719
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2743
  %67 = load ptr, ptr %66, align 8, !dbg !2743, !tbaa !719
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2743
  %69 = load ptr, ptr %68, align 8, !dbg !2743, !tbaa !719
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2743
  %71 = load ptr, ptr %70, align 8, !dbg !2743, !tbaa !719
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2743
  br label %147, !dbg !2744

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.13.80, i32 noundef 5) #37, !dbg !2745
  %75 = load ptr, ptr %4, align 8, !dbg !2745, !tbaa !719
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2745
  %77 = load ptr, ptr %76, align 8, !dbg !2745, !tbaa !719
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2745
  %79 = load ptr, ptr %78, align 8, !dbg !2745, !tbaa !719
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2745
  %81 = load ptr, ptr %80, align 8, !dbg !2745, !tbaa !719
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2745
  %83 = load ptr, ptr %82, align 8, !dbg !2745, !tbaa !719
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2745
  %85 = load ptr, ptr %84, align 8, !dbg !2745, !tbaa !719
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2745
  %87 = load ptr, ptr %86, align 8, !dbg !2745, !tbaa !719
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2745
  br label %147, !dbg !2746

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.14.81, i32 noundef 5) #37, !dbg !2747
  %91 = load ptr, ptr %4, align 8, !dbg !2747, !tbaa !719
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2747
  %93 = load ptr, ptr %92, align 8, !dbg !2747, !tbaa !719
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2747
  %95 = load ptr, ptr %94, align 8, !dbg !2747, !tbaa !719
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2747
  %97 = load ptr, ptr %96, align 8, !dbg !2747, !tbaa !719
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2747
  %99 = load ptr, ptr %98, align 8, !dbg !2747, !tbaa !719
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2747
  %101 = load ptr, ptr %100, align 8, !dbg !2747, !tbaa !719
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2747
  %103 = load ptr, ptr %102, align 8, !dbg !2747, !tbaa !719
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2747
  %105 = load ptr, ptr %104, align 8, !dbg !2747, !tbaa !719
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2747
  br label %147, !dbg !2748

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.15.82, i32 noundef 5) #37, !dbg !2749
  %109 = load ptr, ptr %4, align 8, !dbg !2749, !tbaa !719
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2749
  %111 = load ptr, ptr %110, align 8, !dbg !2749, !tbaa !719
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2749
  %113 = load ptr, ptr %112, align 8, !dbg !2749, !tbaa !719
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2749
  %115 = load ptr, ptr %114, align 8, !dbg !2749, !tbaa !719
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2749
  %117 = load ptr, ptr %116, align 8, !dbg !2749, !tbaa !719
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2749
  %119 = load ptr, ptr %118, align 8, !dbg !2749, !tbaa !719
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2749
  %121 = load ptr, ptr %120, align 8, !dbg !2749, !tbaa !719
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2749
  %123 = load ptr, ptr %122, align 8, !dbg !2749, !tbaa !719
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2749
  %125 = load ptr, ptr %124, align 8, !dbg !2749, !tbaa !719
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2749
  br label %147, !dbg !2750

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.16.83, i32 noundef 5) #37, !dbg !2751
  %129 = load ptr, ptr %4, align 8, !dbg !2751, !tbaa !719
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2751
  %131 = load ptr, ptr %130, align 8, !dbg !2751, !tbaa !719
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2751
  %133 = load ptr, ptr %132, align 8, !dbg !2751, !tbaa !719
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2751
  %135 = load ptr, ptr %134, align 8, !dbg !2751, !tbaa !719
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2751
  %137 = load ptr, ptr %136, align 8, !dbg !2751, !tbaa !719
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2751
  %139 = load ptr, ptr %138, align 8, !dbg !2751, !tbaa !719
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2751
  %141 = load ptr, ptr %140, align 8, !dbg !2751, !tbaa !719
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2751
  %143 = load ptr, ptr %142, align 8, !dbg !2751, !tbaa !719
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2751
  %145 = load ptr, ptr %144, align 8, !dbg !2751, !tbaa !719
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2751
  br label %147, !dbg !2752

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2753
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2754 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2758, metadata !DIExpression()), !dbg !2764
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2759, metadata !DIExpression()), !dbg !2764
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2760, metadata !DIExpression()), !dbg !2764
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2761, metadata !DIExpression()), !dbg !2764
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2762, metadata !DIExpression()), !dbg !2764
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2763, metadata !DIExpression()), !dbg !2764
  br label %6, !dbg !2765

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2767
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2763, metadata !DIExpression()), !dbg !2764
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2768
  %9 = load ptr, ptr %8, align 8, !dbg !2768, !tbaa !719
  %10 = icmp eq ptr %9, null, !dbg !2770
  %11 = add i64 %7, 1, !dbg !2771
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2763, metadata !DIExpression()), !dbg !2764
  br i1 %10, label %12, label %6, !dbg !2770, !llvm.loop !2772

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2774
  ret void, !dbg !2775
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2776 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !2795
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2793, metadata !DIExpression(), metadata !2795, metadata ptr %6, metadata !DIExpression()), !dbg !2796
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2787, metadata !DIExpression()), !dbg !2796
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2788, metadata !DIExpression()), !dbg !2796
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2789, metadata !DIExpression()), !dbg !2796
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2790, metadata !DIExpression()), !dbg !2796
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2791, metadata !DIExpression()), !dbg !2796
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2792, metadata !DIExpression()), !dbg !2796
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2792, metadata !DIExpression()), !dbg !2796
  %10 = icmp ult i32 %9, 41, !dbg !2798
  br i1 %10, label %11, label %16, !dbg !2798

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2798
  %13 = zext nneg i32 %9 to i64, !dbg !2798
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2798
  %15 = add nuw nsw i32 %9, 8, !dbg !2798
  store i32 %15, ptr %4, align 8, !dbg !2798
  br label %19, !dbg !2798

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2798
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2798
  store ptr %18, ptr %7, align 8, !dbg !2798
  br label %19, !dbg !2798

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2798
  %22 = load ptr, ptr %21, align 8, !dbg !2798
  store ptr %22, ptr %6, align 16, !dbg !2801, !tbaa !719
  %23 = icmp eq ptr %22, null, !dbg !2802
  br i1 %23, label %128, label %24, !dbg !2803

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2792, metadata !DIExpression()), !dbg !2796
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2792, metadata !DIExpression()), !dbg !2796
  %25 = icmp ult i32 %20, 41, !dbg !2798
  br i1 %25, label %29, label %26, !dbg !2798

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2798
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2798
  store ptr %28, ptr %7, align 8, !dbg !2798
  br label %34, !dbg !2798

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2798
  %31 = zext nneg i32 %20 to i64, !dbg !2798
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2798
  %33 = add nuw nsw i32 %20, 8, !dbg !2798
  store i32 %33, ptr %4, align 8, !dbg !2798
  br label %34, !dbg !2798

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2798
  %37 = load ptr, ptr %36, align 8, !dbg !2798
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2804
  store ptr %37, ptr %38, align 8, !dbg !2801, !tbaa !719
  %39 = icmp eq ptr %37, null, !dbg !2802
  br i1 %39, label %128, label %40, !dbg !2803

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2792, metadata !DIExpression()), !dbg !2796
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2792, metadata !DIExpression()), !dbg !2796
  %41 = icmp ult i32 %35, 41, !dbg !2798
  br i1 %41, label %45, label %42, !dbg !2798

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2798
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2798
  store ptr %44, ptr %7, align 8, !dbg !2798
  br label %50, !dbg !2798

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2798
  %47 = zext nneg i32 %35 to i64, !dbg !2798
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2798
  %49 = add nuw nsw i32 %35, 8, !dbg !2798
  store i32 %49, ptr %4, align 8, !dbg !2798
  br label %50, !dbg !2798

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2798
  %53 = load ptr, ptr %52, align 8, !dbg !2798
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2804
  store ptr %53, ptr %54, align 16, !dbg !2801, !tbaa !719
  %55 = icmp eq ptr %53, null, !dbg !2802
  br i1 %55, label %128, label %56, !dbg !2803

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2792, metadata !DIExpression()), !dbg !2796
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2792, metadata !DIExpression()), !dbg !2796
  %57 = icmp ult i32 %51, 41, !dbg !2798
  br i1 %57, label %61, label %58, !dbg !2798

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2798
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2798
  store ptr %60, ptr %7, align 8, !dbg !2798
  br label %66, !dbg !2798

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2798
  %63 = zext nneg i32 %51 to i64, !dbg !2798
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2798
  %65 = add nuw nsw i32 %51, 8, !dbg !2798
  store i32 %65, ptr %4, align 8, !dbg !2798
  br label %66, !dbg !2798

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2798
  %69 = load ptr, ptr %68, align 8, !dbg !2798
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2804
  store ptr %69, ptr %70, align 8, !dbg !2801, !tbaa !719
  %71 = icmp eq ptr %69, null, !dbg !2802
  br i1 %71, label %128, label %72, !dbg !2803

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2792, metadata !DIExpression()), !dbg !2796
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2792, metadata !DIExpression()), !dbg !2796
  %73 = icmp ult i32 %67, 41, !dbg !2798
  br i1 %73, label %77, label %74, !dbg !2798

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2798
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2798
  store ptr %76, ptr %7, align 8, !dbg !2798
  br label %82, !dbg !2798

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2798
  %79 = zext nneg i32 %67 to i64, !dbg !2798
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2798
  %81 = add nuw nsw i32 %67, 8, !dbg !2798
  store i32 %81, ptr %4, align 8, !dbg !2798
  br label %82, !dbg !2798

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2798
  %85 = load ptr, ptr %84, align 8, !dbg !2798
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2804
  store ptr %85, ptr %86, align 16, !dbg !2801, !tbaa !719
  %87 = icmp eq ptr %85, null, !dbg !2802
  br i1 %87, label %128, label %88, !dbg !2803

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2792, metadata !DIExpression()), !dbg !2796
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2792, metadata !DIExpression()), !dbg !2796
  %89 = icmp ult i32 %83, 41, !dbg !2798
  br i1 %89, label %93, label %90, !dbg !2798

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2798
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2798
  store ptr %92, ptr %7, align 8, !dbg !2798
  br label %98, !dbg !2798

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2798
  %95 = zext nneg i32 %83 to i64, !dbg !2798
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2798
  %97 = add nuw nsw i32 %83, 8, !dbg !2798
  store i32 %97, ptr %4, align 8, !dbg !2798
  br label %98, !dbg !2798

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2798
  %100 = load ptr, ptr %99, align 8, !dbg !2798
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2804
  store ptr %100, ptr %101, align 8, !dbg !2801, !tbaa !719
  %102 = icmp eq ptr %100, null, !dbg !2802
  br i1 %102, label %128, label %103, !dbg !2803

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2792, metadata !DIExpression()), !dbg !2796
  %104 = load ptr, ptr %7, align 8, !dbg !2798
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2798
  store ptr %105, ptr %7, align 8, !dbg !2798
  %106 = load ptr, ptr %104, align 8, !dbg !2798
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2804
  store ptr %106, ptr %107, align 16, !dbg !2801, !tbaa !719
  %108 = icmp eq ptr %106, null, !dbg !2802
  br i1 %108, label %128, label %109, !dbg !2803

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2792, metadata !DIExpression()), !dbg !2796
  %110 = load ptr, ptr %7, align 8, !dbg !2798
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2798
  store ptr %111, ptr %7, align 8, !dbg !2798
  %112 = load ptr, ptr %110, align 8, !dbg !2798
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2804
  store ptr %112, ptr %113, align 8, !dbg !2801, !tbaa !719
  %114 = icmp eq ptr %112, null, !dbg !2802
  br i1 %114, label %128, label %115, !dbg !2803

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2792, metadata !DIExpression()), !dbg !2796
  %116 = load ptr, ptr %7, align 8, !dbg !2798
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2798
  store ptr %117, ptr %7, align 8, !dbg !2798
  %118 = load ptr, ptr %116, align 8, !dbg !2798
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2804
  store ptr %118, ptr %119, align 16, !dbg !2801, !tbaa !719
  %120 = icmp eq ptr %118, null, !dbg !2802
  br i1 %120, label %128, label %121, !dbg !2803

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2792, metadata !DIExpression()), !dbg !2796
  %122 = load ptr, ptr %7, align 8, !dbg !2798
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2798
  store ptr %123, ptr %7, align 8, !dbg !2798
  %124 = load ptr, ptr %122, align 8, !dbg !2798
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2804
  store ptr %124, ptr %125, align 8, !dbg !2801, !tbaa !719
  %126 = icmp eq ptr %124, null, !dbg !2802
  %127 = select i1 %126, i64 9, i64 10, !dbg !2803
  br label %128, !dbg !2803

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2805
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2806
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !2807
  ret void, !dbg !2807
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2808 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2821
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2816, metadata !DIExpression(), metadata !2821, metadata ptr %5, metadata !DIExpression()), !dbg !2822
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2812, metadata !DIExpression()), !dbg !2822
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2813, metadata !DIExpression()), !dbg !2822
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2814, metadata !DIExpression()), !dbg !2822
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2815, metadata !DIExpression()), !dbg !2822
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !2823
  call void @llvm.va_start(ptr nonnull %5), !dbg !2824
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2825
  call void @llvm.va_end(ptr nonnull %5), !dbg !2826
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !2827
  ret void, !dbg !2827
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2828 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2829, !tbaa !719
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.71, ptr noundef %1), !dbg !2829
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.17.88, i32 noundef 5) #37, !dbg !2830
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.89) #37, !dbg !2830
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.19, i32 noundef 5) #37, !dbg !2831
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21.90) #37, !dbg !2831
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.69, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !2832
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !2832
  ret void, !dbg !2833
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2834 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2839, metadata !DIExpression()), !dbg !2842
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2840, metadata !DIExpression()), !dbg !2842
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2841, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata ptr %0, metadata !2843, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %1, metadata !2846, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %2, metadata !2847, metadata !DIExpression()), !dbg !2848
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2850
  call void @llvm.dbg.value(metadata ptr %4, metadata !2851, metadata !DIExpression()), !dbg !2856
  %5 = icmp eq ptr %4, null, !dbg !2858
  br i1 %5, label %6, label %7, !dbg !2860

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2861
  unreachable, !dbg !2861

7:                                                ; preds = %3
  ret ptr %4, !dbg !2862
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2844 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2843, metadata !DIExpression()), !dbg !2863
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2846, metadata !DIExpression()), !dbg !2863
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2847, metadata !DIExpression()), !dbg !2863
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2864
  call void @llvm.dbg.value(metadata ptr %4, metadata !2851, metadata !DIExpression()), !dbg !2865
  %5 = icmp eq ptr %4, null, !dbg !2867
  br i1 %5, label %6, label %7, !dbg !2868

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2869
  unreachable, !dbg !2869

7:                                                ; preds = %3
  ret ptr %4, !dbg !2870
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2871 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2875, metadata !DIExpression()), !dbg !2876
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2877
  call void @llvm.dbg.value(metadata ptr %2, metadata !2851, metadata !DIExpression()), !dbg !2878
  %3 = icmp eq ptr %2, null, !dbg !2880
  br i1 %3, label %4, label %5, !dbg !2881

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2882
  unreachable, !dbg !2882

5:                                                ; preds = %1
  ret ptr %2, !dbg !2883
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2884 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2885 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2889, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i64 %0, metadata !2891, metadata !DIExpression()), !dbg !2895
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2897
  call void @llvm.dbg.value(metadata ptr %2, metadata !2851, metadata !DIExpression()), !dbg !2898
  %3 = icmp eq ptr %2, null, !dbg !2900
  br i1 %3, label %4, label %5, !dbg !2901

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2902
  unreachable, !dbg !2902

5:                                                ; preds = %1
  ret ptr %2, !dbg !2903
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2904 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2908, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i64 %0, metadata !2875, metadata !DIExpression()), !dbg !2910
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2912
  call void @llvm.dbg.value(metadata ptr %2, metadata !2851, metadata !DIExpression()), !dbg !2913
  %3 = icmp eq ptr %2, null, !dbg !2915
  br i1 %3, label %4, label %5, !dbg !2916

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2917
  unreachable, !dbg !2917

5:                                                ; preds = %1
  ret ptr %2, !dbg !2918
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2919 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2923, metadata !DIExpression()), !dbg !2925
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2924, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata ptr %0, metadata !2926, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i64 %1, metadata !2930, metadata !DIExpression()), !dbg !2931
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !2933
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !2934
  call void @llvm.dbg.value(metadata ptr %4, metadata !2851, metadata !DIExpression()), !dbg !2935
  %5 = icmp eq ptr %4, null, !dbg !2937
  br i1 %5, label %6, label %7, !dbg !2938

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !2939
  unreachable, !dbg !2939

7:                                                ; preds = %2
  ret ptr %4, !dbg !2940
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2941 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2942 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2946, metadata !DIExpression()), !dbg !2948
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2947, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata ptr %0, metadata !2949, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 %1, metadata !2952, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata ptr %0, metadata !2926, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 %1, metadata !2930, metadata !DIExpression()), !dbg !2955
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !2957
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !2958
  call void @llvm.dbg.value(metadata ptr %4, metadata !2851, metadata !DIExpression()), !dbg !2959
  %5 = icmp eq ptr %4, null, !dbg !2961
  br i1 %5, label %6, label %7, !dbg !2962

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !2963
  unreachable, !dbg !2963

7:                                                ; preds = %2
  ret ptr %4, !dbg !2964
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2965 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2969, metadata !DIExpression()), !dbg !2972
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2970, metadata !DIExpression()), !dbg !2972
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2971, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata ptr %0, metadata !2973, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i64 %1, metadata !2976, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i64 %2, metadata !2977, metadata !DIExpression()), !dbg !2978
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2980
  call void @llvm.dbg.value(metadata ptr %4, metadata !2851, metadata !DIExpression()), !dbg !2981
  %5 = icmp eq ptr %4, null, !dbg !2983
  br i1 %5, label %6, label %7, !dbg !2984

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2985
  unreachable, !dbg !2985

7:                                                ; preds = %3
  ret ptr %4, !dbg !2986
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !2987 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2991, metadata !DIExpression()), !dbg !2993
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2992, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata ptr null, metadata !2843, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i64 %0, metadata !2846, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i64 %1, metadata !2847, metadata !DIExpression()), !dbg !2994
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !2996
  call void @llvm.dbg.value(metadata ptr %3, metadata !2851, metadata !DIExpression()), !dbg !2997
  %4 = icmp eq ptr %3, null, !dbg !2999
  br i1 %4, label %5, label %6, !dbg !3000

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3001
  unreachable, !dbg !3001

6:                                                ; preds = %2
  ret ptr %3, !dbg !3002
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3003 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3007, metadata !DIExpression()), !dbg !3009
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3008, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata ptr null, metadata !2969, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %0, metadata !2970, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %1, metadata !2971, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata ptr null, metadata !2973, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i64 %0, metadata !2976, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i64 %1, metadata !2977, metadata !DIExpression()), !dbg !3012
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3014
  call void @llvm.dbg.value(metadata ptr %3, metadata !2851, metadata !DIExpression()), !dbg !3015
  %4 = icmp eq ptr %3, null, !dbg !3017
  br i1 %4, label %5, label %6, !dbg !3018

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3019
  unreachable, !dbg !3019

6:                                                ; preds = %2
  ret ptr %3, !dbg !3020
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3021 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3025, metadata !DIExpression()), !dbg !3027
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3026, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata ptr %0, metadata !658, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %1, metadata !659, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 1, metadata !660, metadata !DIExpression()), !dbg !3028
  %3 = load i64, ptr %1, align 8, !dbg !3030, !tbaa !2094
  call void @llvm.dbg.value(metadata i64 %3, metadata !661, metadata !DIExpression()), !dbg !3028
  %4 = icmp eq ptr %0, null, !dbg !3031
  br i1 %4, label %5, label %8, !dbg !3033

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3034
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3037
  br label %15, !dbg !3037

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3038
  %10 = add nuw i64 %9, 1, !dbg !3038
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3038
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3038
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %13, metadata !661, metadata !DIExpression()), !dbg !3028
  br i1 %12, label %14, label %15, !dbg !3041

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3042
  unreachable, !dbg !3042

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3028
  call void @llvm.dbg.value(metadata i64 %16, metadata !661, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %0, metadata !2843, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %16, metadata !2846, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 1, metadata !2847, metadata !DIExpression()), !dbg !3043
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3045
  call void @llvm.dbg.value(metadata ptr %17, metadata !2851, metadata !DIExpression()), !dbg !3046
  %18 = icmp eq ptr %17, null, !dbg !3048
  br i1 %18, label %19, label %20, !dbg !3049

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3050
  unreachable, !dbg !3050

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !658, metadata !DIExpression()), !dbg !3028
  store i64 %16, ptr %1, align 8, !dbg !3051, !tbaa !2094
  ret ptr %17, !dbg !3052
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !653 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !658, metadata !DIExpression()), !dbg !3053
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !659, metadata !DIExpression()), !dbg !3053
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !660, metadata !DIExpression()), !dbg !3053
  %4 = load i64, ptr %1, align 8, !dbg !3054, !tbaa !2094
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !661, metadata !DIExpression()), !dbg !3053
  %5 = icmp eq ptr %0, null, !dbg !3055
  br i1 %5, label %6, label %13, !dbg !3056

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3057
  br i1 %7, label %8, label %20, !dbg !3058

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3059
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !661, metadata !DIExpression()), !dbg !3053
  %10 = icmp ugt i64 %2, 128, !dbg !3061
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !661, metadata !DIExpression()), !dbg !3053
  br label %20, !dbg !3063

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3064
  %15 = add nuw i64 %14, 1, !dbg !3064
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3064
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3064
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !661, metadata !DIExpression()), !dbg !3053
  br i1 %17, label %19, label %20, !dbg !3065

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3066
  unreachable, !dbg !3066

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3053
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !661, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %0, metadata !2843, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i64 %21, metadata !2846, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i64 %2, metadata !2847, metadata !DIExpression()), !dbg !3067
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3069
  call void @llvm.dbg.value(metadata ptr %22, metadata !2851, metadata !DIExpression()), !dbg !3070
  %23 = icmp eq ptr %22, null, !dbg !3072
  br i1 %23, label %24, label %25, !dbg !3073

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3074
  unreachable, !dbg !3074

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !658, metadata !DIExpression()), !dbg !3053
  store i64 %21, ptr %1, align 8, !dbg !3075, !tbaa !2094
  ret ptr %22, !dbg !3076
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !665 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !674, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !675, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !676, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !677, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !678, metadata !DIExpression()), !dbg !3077
  %6 = load i64, ptr %1, align 8, !dbg !3078, !tbaa !2094
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !679, metadata !DIExpression()), !dbg !3077
  %7 = ashr i64 %6, 1, !dbg !3079
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3079
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3079
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3079
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !680, metadata !DIExpression()), !dbg !3077
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3081
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !680, metadata !DIExpression()), !dbg !3077
  %12 = icmp sgt i64 %3, -1, !dbg !3082
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3084
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3084
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !680, metadata !DIExpression()), !dbg !3077
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3085
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3085
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3085
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !681, metadata !DIExpression()), !dbg !3077
  %18 = icmp slt i64 %17, 128, !dbg !3085
  %19 = select i1 %18, i64 128, i64 0, !dbg !3085
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3085
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !682, metadata !DIExpression()), !dbg !3077
  %21 = icmp eq i64 %20, 0, !dbg !3086
  br i1 %21, label %26, label %22, !dbg !3088

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3089
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !680, metadata !DIExpression()), !dbg !3077
  %24 = srem i64 %20, %4, !dbg !3091
  %25 = sub nsw i64 %20, %24, !dbg !3092
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !681, metadata !DIExpression()), !dbg !3077
  br label %26, !dbg !3093

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3077
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !681, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !680, metadata !DIExpression()), !dbg !3077
  %29 = icmp eq ptr %0, null, !dbg !3094
  br i1 %29, label %30, label %31, !dbg !3096

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3097, !tbaa !2094
  br label %31, !dbg !3098

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3099
  %33 = icmp slt i64 %32, %2, !dbg !3101
  br i1 %33, label %34, label %46, !dbg !3102

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3103
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3103
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3103
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !680, metadata !DIExpression()), !dbg !3077
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3104
  br i1 %40, label %45, label %41, !dbg !3104

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3105
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3105
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3105
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !681, metadata !DIExpression()), !dbg !3077
  br i1 %43, label %45, label %46, !dbg !3106

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #38, !dbg !3107
  unreachable, !dbg !3107

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3077
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !681, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !680, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata ptr %0, metadata !2923, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %48, metadata !2924, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr %0, metadata !2926, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %48, metadata !2930, metadata !DIExpression()), !dbg !3110
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3112
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #43, !dbg !3113
  call void @llvm.dbg.value(metadata ptr %50, metadata !2851, metadata !DIExpression()), !dbg !3114
  %51 = icmp eq ptr %50, null, !dbg !3116
  br i1 %51, label %52, label %53, !dbg !3117

52:                                               ; preds = %46
  tail call void @xalloc_die() #38, !dbg !3118
  unreachable, !dbg !3118

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !674, metadata !DIExpression()), !dbg !3077
  store i64 %47, ptr %1, align 8, !dbg !3119, !tbaa !2094
  ret ptr %50, !dbg !3120
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3121 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3123, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %0, metadata !3125, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 1, metadata !3128, metadata !DIExpression()), !dbg !3129
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3131
  call void @llvm.dbg.value(metadata ptr %2, metadata !2851, metadata !DIExpression()), !dbg !3132
  %3 = icmp eq ptr %2, null, !dbg !3134
  br i1 %3, label %4, label %5, !dbg !3135

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3136
  unreachable, !dbg !3136

5:                                                ; preds = %1
  ret ptr %2, !dbg !3137
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3138 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3126 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3125, metadata !DIExpression()), !dbg !3139
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3128, metadata !DIExpression()), !dbg !3139
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3140
  call void @llvm.dbg.value(metadata ptr %3, metadata !2851, metadata !DIExpression()), !dbg !3141
  %4 = icmp eq ptr %3, null, !dbg !3143
  br i1 %4, label %5, label %6, !dbg !3144

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3145
  unreachable, !dbg !3145

6:                                                ; preds = %2
  ret ptr %3, !dbg !3146
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3147 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3149, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 %0, metadata !3151, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 1, metadata !3154, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 %0, metadata !3157, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 1, metadata !3160, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %0, metadata !3157, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 1, metadata !3160, metadata !DIExpression()), !dbg !3161
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3163
  call void @llvm.dbg.value(metadata ptr %2, metadata !2851, metadata !DIExpression()), !dbg !3164
  %3 = icmp eq ptr %2, null, !dbg !3166
  br i1 %3, label %4, label %5, !dbg !3167

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3168
  unreachable, !dbg !3168

5:                                                ; preds = %1
  ret ptr %2, !dbg !3169
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3152 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3151, metadata !DIExpression()), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3154, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 %0, metadata !3157, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i64 %1, metadata !3160, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i64 %0, metadata !3157, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i64 %1, metadata !3160, metadata !DIExpression()), !dbg !3171
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3173
  call void @llvm.dbg.value(metadata ptr %3, metadata !2851, metadata !DIExpression()), !dbg !3174
  %4 = icmp eq ptr %3, null, !dbg !3176
  br i1 %4, label %5, label %6, !dbg !3177

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3178
  unreachable, !dbg !3178

6:                                                ; preds = %2
  ret ptr %3, !dbg !3179
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3180 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3184, metadata !DIExpression()), !dbg !3186
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3185, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i64 %1, metadata !2875, metadata !DIExpression()), !dbg !3187
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3189
  call void @llvm.dbg.value(metadata ptr %3, metadata !2851, metadata !DIExpression()), !dbg !3190
  %4 = icmp eq ptr %3, null, !dbg !3192
  br i1 %4, label %5, label %6, !dbg !3193

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3194
  unreachable, !dbg !3194

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3195, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata ptr %0, metadata !3201, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %1, metadata !3202, metadata !DIExpression()), !dbg !3203
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3205
  ret ptr %3, !dbg !3206
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3207 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3211, metadata !DIExpression()), !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3212, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %1, metadata !2889, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 %1, metadata !2891, metadata !DIExpression()), !dbg !3216
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3218
  call void @llvm.dbg.value(metadata ptr %3, metadata !2851, metadata !DIExpression()), !dbg !3219
  %4 = icmp eq ptr %3, null, !dbg !3221
  br i1 %4, label %5, label %6, !dbg !3222

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3223
  unreachable, !dbg !3223

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3195, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata ptr %0, metadata !3201, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 %1, metadata !3202, metadata !DIExpression()), !dbg !3224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3226
  ret ptr %3, !dbg !3227
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3228 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3232, metadata !DIExpression()), !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3233, metadata !DIExpression()), !dbg !3235
  %3 = add nsw i64 %1, 1, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %3, metadata !2889, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i64 %3, metadata !2891, metadata !DIExpression()), !dbg !3239
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3241
  call void @llvm.dbg.value(metadata ptr %4, metadata !2851, metadata !DIExpression()), !dbg !3242
  %5 = icmp eq ptr %4, null, !dbg !3244
  br i1 %5, label %6, label %7, !dbg !3245

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3246
  unreachable, !dbg !3246

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3234, metadata !DIExpression()), !dbg !3235
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3247
  store i8 0, ptr %8, align 1, !dbg !3248, !tbaa !749
  call void @llvm.dbg.value(metadata ptr %4, metadata !3195, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata ptr %0, metadata !3201, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %1, metadata !3202, metadata !DIExpression()), !dbg !3249
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3251
  ret ptr %4, !dbg !3252
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3253 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3255, metadata !DIExpression()), !dbg !3256
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3257
  %3 = add i64 %2, 1, !dbg !3258
  call void @llvm.dbg.value(metadata ptr %0, metadata !3184, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i64 %3, metadata !3185, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i64 %3, metadata !2875, metadata !DIExpression()), !dbg !3261
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3263
  call void @llvm.dbg.value(metadata ptr %4, metadata !2851, metadata !DIExpression()), !dbg !3264
  %5 = icmp eq ptr %4, null, !dbg !3266
  br i1 %5, label %6, label %7, !dbg !3267

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3268
  unreachable, !dbg !3268

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3195, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata ptr %0, metadata !3201, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i64 %3, metadata !3202, metadata !DIExpression()), !dbg !3269
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3271
  ret ptr %4, !dbg !3272
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3273 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3278, !tbaa !740
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3275, metadata !DIExpression()), !dbg !3279
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.101, ptr noundef nonnull @.str.2.102, i32 noundef 5) #37, !dbg !3278
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.103, ptr noundef %2) #37, !dbg !3278
  %3 = icmp eq i32 %1, 0, !dbg !3278
  tail call void @llvm.assume(i1 %3), !dbg !3278
  tail call void @abort() #38, !dbg !3280
  unreachable, !dbg !3280
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3281 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3319, metadata !DIExpression()), !dbg !3324
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3325
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3320, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3324
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3326, metadata !DIExpression()), !dbg !3329
  %3 = load i32, ptr %0, align 8, !dbg !3331, !tbaa !3332
  %4 = and i32 %3, 32, !dbg !3333
  %5 = icmp eq i32 %4, 0, !dbg !3333
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3322, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3324
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3334
  %7 = icmp eq i32 %6, 0, !dbg !3335
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3323, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3324
  br i1 %5, label %8, label %18, !dbg !3336

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3338
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3320, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3324
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3339
  %11 = xor i1 %7, true, !dbg !3339
  %12 = sext i1 %11 to i32, !dbg !3339
  br i1 %10, label %21, label %13, !dbg !3339

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3340
  %15 = load i32, ptr %14, align 4, !dbg !3340, !tbaa !740
  %16 = icmp ne i32 %15, 9, !dbg !3341
  %17 = sext i1 %16 to i32, !dbg !3342
  br label %21, !dbg !3342

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3343

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3345
  store i32 0, ptr %20, align 4, !dbg !3347, !tbaa !740
  br label %21, !dbg !3345

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3324
  ret i32 %22, !dbg !3348
}

; Function Attrs: nounwind
declare !dbg !3349 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3353 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3391, metadata !DIExpression()), !dbg !3395
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3392, metadata !DIExpression()), !dbg !3395
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3396
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3393, metadata !DIExpression()), !dbg !3395
  %3 = icmp slt i32 %2, 0, !dbg !3397
  br i1 %3, label %4, label %6, !dbg !3399

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3400
  br label %24, !dbg !3401

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3402
  %8 = icmp eq i32 %7, 0, !dbg !3402
  br i1 %8, label %13, label %9, !dbg !3404

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3405
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3406
  %12 = icmp eq i64 %11, -1, !dbg !3407
  br i1 %12, label %16, label %13, !dbg !3408

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3409
  %15 = icmp eq i32 %14, 0, !dbg !3409
  br i1 %15, label %16, label %18, !dbg !3410

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3392, metadata !DIExpression()), !dbg !3395
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3394, metadata !DIExpression()), !dbg !3395
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3411
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3394, metadata !DIExpression()), !dbg !3395
  br label %24, !dbg !3412

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3413
  %20 = load i32, ptr %19, align 4, !dbg !3413, !tbaa !740
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3392, metadata !DIExpression()), !dbg !3395
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3394, metadata !DIExpression()), !dbg !3395
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3411
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3394, metadata !DIExpression()), !dbg !3395
  %22 = icmp eq i32 %20, 0, !dbg !3414
  br i1 %22, label %24, label %23, !dbg !3412

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3416, !tbaa !740
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3394, metadata !DIExpression()), !dbg !3395
  br label %24, !dbg !3418

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3395
  ret i32 %25, !dbg !3419
}

; Function Attrs: nofree nounwind
declare !dbg !3420 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !3421 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3422 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3423 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3426 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3464, metadata !DIExpression()), !dbg !3465
  %2 = icmp eq ptr %0, null, !dbg !3466
  br i1 %2, label %6, label %3, !dbg !3468

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3469
  %5 = icmp eq i32 %4, 0, !dbg !3469
  br i1 %5, label %6, label %8, !dbg !3470

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3471
  br label %16, !dbg !3472

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3473, metadata !DIExpression()), !dbg !3478
  %9 = load i32, ptr %0, align 8, !dbg !3480, !tbaa !3332
  %10 = and i32 %9, 256, !dbg !3482
  %11 = icmp eq i32 %10, 0, !dbg !3482
  br i1 %11, label %14, label %12, !dbg !3483

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3484
  br label %14, !dbg !3484

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3485
  br label %16, !dbg !3486

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3465
  ret i32 %17, !dbg !3487
}

; Function Attrs: nofree nounwind
declare !dbg !3488 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3489 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3528, metadata !DIExpression()), !dbg !3534
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3529, metadata !DIExpression()), !dbg !3534
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3530, metadata !DIExpression()), !dbg !3534
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3535
  %5 = load ptr, ptr %4, align 8, !dbg !3535, !tbaa !3536
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3537
  %7 = load ptr, ptr %6, align 8, !dbg !3537, !tbaa !3538
  %8 = icmp eq ptr %5, %7, !dbg !3539
  br i1 %8, label %9, label %27, !dbg !3540

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3541
  %11 = load ptr, ptr %10, align 8, !dbg !3541, !tbaa !1155
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3542
  %13 = load ptr, ptr %12, align 8, !dbg !3542, !tbaa !3543
  %14 = icmp eq ptr %11, %13, !dbg !3544
  br i1 %14, label %15, label %27, !dbg !3545

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3546
  %17 = load ptr, ptr %16, align 8, !dbg !3546, !tbaa !3547
  %18 = icmp eq ptr %17, null, !dbg !3548
  br i1 %18, label %19, label %27, !dbg !3549

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3550
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3551
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3531, metadata !DIExpression()), !dbg !3552
  %22 = icmp eq i64 %21, -1, !dbg !3553
  br i1 %22, label %29, label %23, !dbg !3555

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3556, !tbaa !3332
  %25 = and i32 %24, -17, !dbg !3556
  store i32 %25, ptr %0, align 8, !dbg !3556, !tbaa !3332
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3557
  store i64 %21, ptr %26, align 8, !dbg !3558, !tbaa !3559
  br label %29, !dbg !3560

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3561
  br label %29, !dbg !3562

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3534
  ret i32 %30, !dbg !3563
}

; Function Attrs: nofree nounwind
declare !dbg !3564 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3567 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3572, metadata !DIExpression()), !dbg !3577
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3573, metadata !DIExpression()), !dbg !3577
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3574, metadata !DIExpression()), !dbg !3577
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3575, metadata !DIExpression()), !dbg !3577
  %5 = icmp eq ptr %1, null, !dbg !3578
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3580
  %7 = select i1 %5, ptr @.str.114, ptr %1, !dbg !3580
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3580
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3574, metadata !DIExpression()), !dbg !3577
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3573, metadata !DIExpression()), !dbg !3577
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3572, metadata !DIExpression()), !dbg !3577
  %9 = icmp eq ptr %3, null, !dbg !3581
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3583
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3575, metadata !DIExpression()), !dbg !3577
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3584
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3576, metadata !DIExpression()), !dbg !3577
  %12 = icmp ult i64 %11, -3, !dbg !3585
  br i1 %12, label %13, label %17, !dbg !3587

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #39, !dbg !3588
  %15 = icmp eq i32 %14, 0, !dbg !3588
  br i1 %15, label %16, label %29, !dbg !3589

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3590, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata ptr %10, metadata !3597, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 0, metadata !3600, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i64 8, metadata !3601, metadata !DIExpression()), !dbg !3602
  store i64 0, ptr %10, align 1, !dbg !3604
  br label %29, !dbg !3605

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3606
  br i1 %18, label %19, label %20, !dbg !3608

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3609
  unreachable, !dbg !3609

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3610

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !3612
  br i1 %23, label %29, label %24, !dbg !3613

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3614
  br i1 %25, label %29, label %26, !dbg !3617

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3618, !tbaa !749
  %28 = zext i8 %27 to i32, !dbg !3619
  store i32 %28, ptr %6, align 4, !dbg !3620, !tbaa !740
  br label %29, !dbg !3621

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3577
  ret i64 %30, !dbg !3622
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3623 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3629 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3631, metadata !DIExpression()), !dbg !3635
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3632, metadata !DIExpression()), !dbg !3635
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3633, metadata !DIExpression()), !dbg !3635
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3636
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3636
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3634, metadata !DIExpression()), !dbg !3635
  br i1 %5, label %6, label %8, !dbg !3638

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3639
  store i32 12, ptr %7, align 4, !dbg !3641, !tbaa !740
  br label %12, !dbg !3642

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3636
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3634, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata ptr %0, metadata !3643, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i64 %9, metadata !3646, metadata !DIExpression()), !dbg !3647
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3649
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3650
  br label %12, !dbg !3651

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3635
  ret ptr %13, !dbg !3652
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3653 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !3662
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3658, metadata !DIExpression(), metadata !3662, metadata ptr %2, metadata !DIExpression()), !dbg !3663
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3657, metadata !DIExpression()), !dbg !3663
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3664
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3665
  %4 = icmp eq i32 %3, 0, !dbg !3665
  br i1 %4, label %5, label %12, !dbg !3667

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3668, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata !820, metadata !3671, metadata !DIExpression()), !dbg !3672
  %6 = load i16, ptr %2, align 16, !dbg !3675
  %7 = icmp eq i16 %6, 67, !dbg !3675
  br i1 %7, label %11, label %8, !dbg !3676

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3668, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata ptr @.str.1.119, metadata !3671, metadata !DIExpression()), !dbg !3677
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.119, i64 6), !dbg !3679
  %10 = icmp eq i32 %9, 0, !dbg !3680
  br i1 %10, label %11, label %12, !dbg !3681

11:                                               ; preds = %8, %5
  br label %12, !dbg !3682

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3663
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3683
  ret i1 %13, !dbg !3683
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3684 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3688, metadata !DIExpression()), !dbg !3691
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3689, metadata !DIExpression()), !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3690, metadata !DIExpression()), !dbg !3691
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3692
  ret i32 %4, !dbg !3693
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3694 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3698, metadata !DIExpression()), !dbg !3699
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3700
  ret ptr %2, !dbg !3701
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3702 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3704, metadata !DIExpression()), !dbg !3706
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3707
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3705, metadata !DIExpression()), !dbg !3706
  ret ptr %2, !dbg !3708
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3709 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3711, metadata !DIExpression()), !dbg !3718
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3712, metadata !DIExpression()), !dbg !3718
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3713, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i32 %0, metadata !3704, metadata !DIExpression()), !dbg !3719
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3721
  call void @llvm.dbg.value(metadata ptr %4, metadata !3705, metadata !DIExpression()), !dbg !3719
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3714, metadata !DIExpression()), !dbg !3718
  %5 = icmp eq ptr %4, null, !dbg !3722
  br i1 %5, label %6, label %9, !dbg !3723

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3724
  br i1 %7, label %19, label %8, !dbg !3727

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3728, !tbaa !749
  br label %19, !dbg !3729

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !3730
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3715, metadata !DIExpression()), !dbg !3731
  %11 = icmp ult i64 %10, %2, !dbg !3732
  br i1 %11, label %12, label %14, !dbg !3734

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3735
  call void @llvm.dbg.value(metadata ptr %1, metadata !3737, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata ptr %4, metadata !3740, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i64 %13, metadata !3741, metadata !DIExpression()), !dbg !3742
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !3744
  br label %19, !dbg !3745

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3746
  br i1 %15, label %19, label %16, !dbg !3749

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3750
  call void @llvm.dbg.value(metadata ptr %1, metadata !3737, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata ptr %4, metadata !3740, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i64 %17, metadata !3741, metadata !DIExpression()), !dbg !3752
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3754
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3755
  store i8 0, ptr %18, align 1, !dbg !3756, !tbaa !749
  br label %19, !dbg !3757

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3758
  ret i32 %20, !dbg !3759
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

!llvm.dbg.cu = !{!77, !294, !298, !313, !608, !640, !364, !378, !426, !642, !600, !649, !684, !686, !688, !690, !692, !624, !694, !696, !700, !702}
!llvm.ident = !{!704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704, !704}
!llvm.module.flags = !{!705, !706, !707, !708, !709, !710, !711}

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
!312 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !313, file: !314, line: 66, type: !359, isLocal: false, isDefinition: true)
!313 = distinct !DICompileUnit(language: DW_LANG_C11, file: !314, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !315, globals: !316, splitDebugInlining: false, nameTableKind: None)
!314 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!315 = !{!98, !104}
!316 = !{!317, !319, !338, !340, !342, !344, !311, !346, !348, !350, !352, !357}
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !314, line: 272, type: !9, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "old_file_name", scope: !321, file: !314, line: 304, type: !75, isLocal: true, isDefinition: true)
!321 = distinct !DISubprogram(name: "verror_at_line", scope: !314, file: !314, line: 298, type: !322, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !331)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !99, !99, !75, !82, !75, !324}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !326)
!326 = !{!327, !328, !329, !330}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !325, file: !314, baseType: !82, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !325, file: !314, baseType: !82, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !325, file: !314, baseType: !98, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !325, file: !314, baseType: !98, size: 64, offset: 128)
!331 = !{!332, !333, !334, !335, !336, !337}
!332 = !DILocalVariable(name: "status", arg: 1, scope: !321, file: !314, line: 298, type: !99)
!333 = !DILocalVariable(name: "errnum", arg: 2, scope: !321, file: !314, line: 298, type: !99)
!334 = !DILocalVariable(name: "file_name", arg: 3, scope: !321, file: !314, line: 298, type: !75)
!335 = !DILocalVariable(name: "line_number", arg: 4, scope: !321, file: !314, line: 298, type: !82)
!336 = !DILocalVariable(name: "message", arg: 5, scope: !321, file: !314, line: 298, type: !75)
!337 = !DILocalVariable(name: "args", arg: 6, scope: !321, file: !314, line: 298, type: !324)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(name: "old_line_number", scope: !321, file: !314, line: 305, type: !82, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !314, line: 338, type: !112, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !314, line: 346, type: !141, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !314, line: 346, type: !119, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "error_message_count", scope: !313, file: !314, line: 69, type: !82, isLocal: false, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !313, file: !314, line: 295, type: !99, isLocal: false, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !314, line: 208, type: !54, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !314, line: 208, type: !354, isLocal: true, isDefinition: true)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 21)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !314, line: 214, type: !9, isLocal: true, isDefinition: true)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null}
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(name: "program_name", scope: !364, file: !365, line: 31, type: !75, isLocal: false, isDefinition: true)
!364 = distinct !DICompileUnit(language: DW_LANG_C11, file: !365, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !366, globals: !367, splitDebugInlining: false, nameTableKind: None)
!365 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!366 = !{!98, !97}
!367 = !{!362, !368, !370}
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !365, line: 46, type: !141, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !365, line: 49, type: !112, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "utf07FF", scope: !374, file: !375, line: 46, type: !402, isLocal: true, isDefinition: true)
!374 = distinct !DISubprogram(name: "proper_name_lite", scope: !375, file: !375, line: 38, type: !376, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !380)
!375 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!376 = !DISubroutineType(types: !377)
!377 = !{!75, !75, !75}
!378 = distinct !DICompileUnit(language: DW_LANG_C11, file: !375, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !379, splitDebugInlining: false, nameTableKind: None)
!379 = !{!372}
!380 = !{!381, !382, !383, !384, !389}
!381 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !374, file: !375, line: 38, type: !75)
!382 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !374, file: !375, line: 38, type: !75)
!383 = !DILocalVariable(name: "translation", scope: !374, file: !375, line: 40, type: !75)
!384 = !DILocalVariable(name: "w", scope: !374, file: !375, line: 47, type: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !386, line: 37, baseType: !387)
!386 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !258, line: 57, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !258, line: 42, baseType: !82)
!389 = !DILocalVariable(name: "mbs", scope: !374, file: !375, line: 48, type: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !391, line: 6, baseType: !392)
!391 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !393, line: 21, baseType: !394)
!393 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 13, size: 64, elements: !395)
!395 = !{!396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !394, file: !393, line: 15, baseType: !99, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !394, file: !393, line: 20, baseType: !398, size: 32, offset: 32)
!398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !393, line: 16, size: 32, elements: !399)
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !398, file: !393, line: 18, baseType: !82, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !398, file: !393, line: 19, baseType: !112, size: 32)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 16, elements: !120)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !405, line: 78, type: !141, isLocal: true, isDefinition: true)
!405 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !405, line: 79, type: !19, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !405, line: 80, type: !66, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !405, line: 81, type: !66, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !405, line: 82, type: !280, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !405, line: 83, type: !119, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !405, line: 84, type: !141, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !405, line: 85, type: !54, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !405, line: 86, type: !54, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !405, line: 87, type: !141, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !426, file: !405, line: 76, type: !512, isLocal: false, isDefinition: true)
!426 = distinct !DICompileUnit(language: DW_LANG_C11, file: !405, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !427, retainedTypes: !447, globals: !448, splitDebugInlining: false, nameTableKind: None)
!427 = !{!428, !442, !80}
!428 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !429, line: 42, baseType: !82, size: 32, elements: !430)
!429 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
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
!442 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !429, line: 254, baseType: !82, size: 32, elements: !443)
!443 = !{!444, !445, !446}
!444 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!445 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!446 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!447 = !{!98, !99, !100, !101}
!448 = !{!403, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !449, !453, !463, !465, !470, !472, !474, !476, !478, !501, !508, !510}
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !426, file: !405, line: 92, type: !451, isLocal: false, isDefinition: true)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 320, elements: !45)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !426, file: !405, line: 1040, type: !455, isLocal: false, isDefinition: true)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !405, line: 56, size: 448, elements: !456)
!456 = !{!457, !458, !459, !461, !462}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !455, file: !405, line: 59, baseType: !428, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !405, line: 62, baseType: !99, size: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !455, file: !405, line: 66, baseType: !460, size: 256, offset: 64)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 256, elements: !142)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !455, file: !405, line: 69, baseType: !75, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !455, file: !405, line: 72, baseType: !75, size: 64, offset: 384)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !426, file: !405, line: 107, type: !455, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(name: "slot0", scope: !426, file: !405, line: 831, type: !467, isLocal: true, isDefinition: true)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 256)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !405, line: 321, type: !119, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !405, line: 357, type: !119, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !405, line: 358, type: !119, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !405, line: 199, type: !54, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(name: "quote", scope: !480, file: !405, line: 228, type: !499, isLocal: true, isDefinition: true)
!480 = distinct !DISubprogram(name: "gettext_quote", scope: !405, file: !405, line: 197, type: !481, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !483)
!481 = !DISubroutineType(types: !482)
!482 = !{!75, !75, !428}
!483 = !{!484, !485, !486, !487, !488}
!484 = !DILocalVariable(name: "msgid", arg: 1, scope: !480, file: !405, line: 197, type: !75)
!485 = !DILocalVariable(name: "s", arg: 2, scope: !480, file: !405, line: 197, type: !428)
!486 = !DILocalVariable(name: "translation", scope: !480, file: !405, line: 199, type: !75)
!487 = !DILocalVariable(name: "w", scope: !480, file: !405, line: 229, type: !385)
!488 = !DILocalVariable(name: "mbs", scope: !480, file: !405, line: 230, type: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !391, line: 6, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !393, line: 21, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 13, size: 64, elements: !492)
!492 = !{!493, !494}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !491, file: !393, line: 15, baseType: !99, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !491, file: !393, line: 20, baseType: !495, size: 32, offset: 32)
!495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !491, file: !393, line: 16, size: 32, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !495, file: !393, line: 18, baseType: !82, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !495, file: !393, line: 19, baseType: !112, size: 32)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 64, elements: !500)
!500 = !{!121, !114}
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(name: "slotvec", scope: !426, file: !405, line: 834, type: !503, isLocal: true, isDefinition: true)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !405, line: 823, size: 128, elements: !505)
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !504, file: !405, line: 825, baseType: !101, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !504, file: !405, line: 826, baseType: !97, size: 64, offset: 64)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "nslots", scope: !426, file: !405, line: 832, type: !99, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "slotvec0", scope: !426, file: !405, line: 833, type: !504, isLocal: true, isDefinition: true)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 704, elements: !514)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!514 = !{!515}
!515 = !DISubrange(count: 11)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !518, line: 67, type: !208, isLocal: true, isDefinition: true)
!518 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !518, line: 69, type: !54, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !518, line: 83, type: !54, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !518, line: 83, type: !112, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !518, line: 85, type: !119, isLocal: true, isDefinition: true)
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
!538 = distinct !DIGlobalVariable(scope: null, file: !518, line: 105, type: !179, isLocal: true, isDefinition: true)
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
!560 = distinct !DIGlobalVariable(scope: null, file: !518, line: 134, type: !159, isLocal: true, isDefinition: true)
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
!579 = distinct !DIGlobalVariable(scope: null, file: !518, line: 248, type: !280, isLocal: true, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !518, line: 248, type: !184, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !518, line: 254, type: !280, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !518, line: 254, type: !61, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !518, line: 254, type: !159, isLocal: true, isDefinition: true)
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
!600 = distinct !DICompileUnit(language: DW_LANG_C11, file: !601, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !602, splitDebugInlining: false, nameTableKind: None)
!601 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!602 = !{!598}
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 376, elements: !604)
!604 = !{!605}
!605 = !DISubrange(count: 47)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(name: "exit_failure", scope: !608, file: !609, line: 24, type: !611, isLocal: false, isDefinition: true)
!608 = distinct !DICompileUnit(language: DW_LANG_C11, file: !609, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !610, splitDebugInlining: false, nameTableKind: None)
!609 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!610 = !{!606}
!611 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !99)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !614, line: 34, type: !128, isLocal: true, isDefinition: true)
!614 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !614, line: 34, type: !54, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !614, line: 34, type: !154, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !621, line: 108, type: !39, isLocal: true, isDefinition: true)
!621 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(name: "internal_state", scope: !624, file: !621, line: 97, type: !627, isLocal: true, isDefinition: true)
!624 = distinct !DICompileUnit(language: DW_LANG_C11, file: !621, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !625, globals: !626, splitDebugInlining: false, nameTableKind: None)
!625 = !{!98, !101, !104}
!626 = !{!619, !622}
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !391, line: 6, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !393, line: 21, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 13, size: 64, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !629, file: !393, line: 15, baseType: !99, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !629, file: !393, line: 20, baseType: !633, size: 32, offset: 32)
!633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !629, file: !393, line: 16, size: 32, elements: !634)
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !633, file: !393, line: 18, baseType: !82, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !633, file: !393, line: 19, baseType: !112, size: 32)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !639, line: 35, type: !19, isLocal: true, isDefinition: true)
!639 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!640 = distinct !DICompileUnit(language: DW_LANG_C11, file: !641, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!641 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!642 = distinct !DICompileUnit(language: DW_LANG_C11, file: !518, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !643, retainedTypes: !647, globals: !648, splitDebugInlining: false, nameTableKind: None)
!643 = !{!644}
!644 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !518, line: 40, baseType: !82, size: 32, elements: !645)
!645 = !{!646}
!646 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!647 = !{!98}
!648 = !{!516, !519, !521, !523, !525, !527, !532, !537, !539, !544, !549, !554, !559, !561, !563, !568, !573, !578, !580, !582, !584, !586, !588, !593}
!649 = distinct !DICompileUnit(language: DW_LANG_C11, file: !650, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !651, retainedTypes: !683, splitDebugInlining: false, nameTableKind: None)
!650 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!651 = !{!652, !664}
!652 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !653, file: !650, line: 188, baseType: !82, size: 32, elements: !662)
!653 = distinct !DISubprogram(name: "x2nrealloc", scope: !650, file: !650, line: 176, type: !654, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !657)
!654 = !DISubroutineType(types: !655)
!655 = !{!98, !98, !656, !101}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!657 = !{!658, !659, !660, !661}
!658 = !DILocalVariable(name: "p", arg: 1, scope: !653, file: !650, line: 176, type: !98)
!659 = !DILocalVariable(name: "pn", arg: 2, scope: !653, file: !650, line: 176, type: !656)
!660 = !DILocalVariable(name: "s", arg: 3, scope: !653, file: !650, line: 176, type: !101)
!661 = !DILocalVariable(name: "n", scope: !653, file: !650, line: 178, type: !101)
!662 = !{!663}
!663 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!664 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !665, file: !650, line: 228, baseType: !82, size: 32, elements: !662)
!665 = distinct !DISubprogram(name: "xpalloc", scope: !650, file: !650, line: 223, type: !666, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !673)
!666 = !DISubroutineType(types: !667)
!667 = !{!98, !98, !668, !669, !671, !669}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !670, line: 130, baseType: !671)
!670 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !672, line: 18, baseType: !259)
!672 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!673 = !{!674, !675, !676, !677, !678, !679, !680, !681, !682}
!674 = !DILocalVariable(name: "pa", arg: 1, scope: !665, file: !650, line: 223, type: !98)
!675 = !DILocalVariable(name: "pn", arg: 2, scope: !665, file: !650, line: 223, type: !668)
!676 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !665, file: !650, line: 223, type: !669)
!677 = !DILocalVariable(name: "n_max", arg: 4, scope: !665, file: !650, line: 223, type: !671)
!678 = !DILocalVariable(name: "s", arg: 5, scope: !665, file: !650, line: 223, type: !669)
!679 = !DILocalVariable(name: "n0", scope: !665, file: !650, line: 230, type: !669)
!680 = !DILocalVariable(name: "n", scope: !665, file: !650, line: 237, type: !669)
!681 = !DILocalVariable(name: "nbytes", scope: !665, file: !650, line: 248, type: !669)
!682 = !DILocalVariable(name: "adjusted_nbytes", scope: !665, file: !650, line: 252, type: !669)
!683 = !{!97, !98}
!684 = distinct !DICompileUnit(language: DW_LANG_C11, file: !614, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !685, splitDebugInlining: false, nameTableKind: None)
!685 = !{!612, !615, !617}
!686 = distinct !DICompileUnit(language: DW_LANG_C11, file: !687, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!687 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!688 = distinct !DICompileUnit(language: DW_LANG_C11, file: !689, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!689 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!690 = distinct !DICompileUnit(language: DW_LANG_C11, file: !691, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !647, splitDebugInlining: false, nameTableKind: None)
!691 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!692 = distinct !DICompileUnit(language: DW_LANG_C11, file: !693, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !647, splitDebugInlining: false, nameTableKind: None)
!693 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!694 = distinct !DICompileUnit(language: DW_LANG_C11, file: !695, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !647, splitDebugInlining: false, nameTableKind: None)
!695 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!696 = distinct !DICompileUnit(language: DW_LANG_C11, file: !639, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !697, splitDebugInlining: false, nameTableKind: None)
!697 = !{!698, !637}
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !639, line: 35, type: !119, isLocal: true, isDefinition: true)
!700 = distinct !DICompileUnit(language: DW_LANG_C11, file: !701, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!701 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!702 = distinct !DICompileUnit(language: DW_LANG_C11, file: !703, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !647, splitDebugInlining: false, nameTableKind: None)
!703 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!704 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!705 = !{i32 7, !"Dwarf Version", i32 5}
!706 = !{i32 2, !"Debug Info Version", i32 3}
!707 = !{i32 1, !"wchar_size", i32 4}
!708 = !{i32 8, !"PIC Level", i32 2}
!709 = !{i32 7, !"PIE Level", i32 2}
!710 = !{i32 7, !"uwtable", i32 2}
!711 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
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
!729 = !DISubprogram(name: "dcgettext", scope: !730, file: !730, line: 51, type: !731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!730 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!731 = !DISubroutineType(types: !732)
!732 = !{!97, !75, !75, !99}
!733 = !DISubprogram(name: "__printf_chk", scope: !734, file: !734, line: 95, type: !735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!734 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!735 = !DISubroutineType(types: !736)
!736 = !{!99, !99, !737, null}
!737 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!738 = !DILocation(line: 0, scope: !71)
!739 = !DILocation(line: 581, column: 7, scope: !216)
!740 = !{!741, !741, i64 0}
!741 = !{!"int", !721, i64 0}
!742 = !DILocation(line: 581, column: 19, scope: !216)
!743 = !DILocation(line: 581, column: 7, scope: !71)
!744 = !DILocation(line: 585, column: 26, scope: !215)
!745 = !DILocation(line: 0, scope: !215)
!746 = !DILocation(line: 586, column: 23, scope: !215)
!747 = !DILocation(line: 586, column: 28, scope: !215)
!748 = !DILocation(line: 586, column: 32, scope: !215)
!749 = !{!721, !721, i64 0}
!750 = !DILocation(line: 586, column: 38, scope: !215)
!751 = !DILocalVariable(name: "__s1", arg: 1, scope: !752, file: !753, line: 1359, type: !75)
!752 = distinct !DISubprogram(name: "streq", scope: !753, file: !753, line: 1359, type: !754, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !756)
!753 = !DIFile(filename: "./lib/string.h", directory: "/src")
!754 = !DISubroutineType(types: !755)
!755 = !{!218, !75, !75}
!756 = !{!751, !757}
!757 = !DILocalVariable(name: "__s2", arg: 2, scope: !752, file: !753, line: 1359, type: !75)
!758 = !DILocation(line: 0, scope: !752, inlinedAt: !759)
!759 = distinct !DILocation(line: 586, column: 41, scope: !215)
!760 = !DILocation(line: 1361, column: 11, scope: !752, inlinedAt: !759)
!761 = !DILocation(line: 1361, column: 10, scope: !752, inlinedAt: !759)
!762 = !DILocation(line: 586, column: 19, scope: !215)
!763 = !DILocation(line: 587, column: 5, scope: !215)
!764 = !DILocation(line: 588, column: 7, scope: !765)
!765 = distinct !DILexicalBlock(scope: !71, file: !72, line: 588, column: 7)
!766 = !DILocation(line: 588, column: 7, scope: !71)
!767 = !DILocation(line: 590, column: 7, scope: !768)
!768 = distinct !DILexicalBlock(scope: !765, file: !72, line: 589, column: 5)
!769 = !DILocation(line: 591, column: 7, scope: !768)
!770 = !DILocation(line: 595, column: 37, scope: !71)
!771 = !DILocation(line: 595, column: 35, scope: !71)
!772 = !DILocation(line: 596, column: 29, scope: !71)
!773 = !DILocation(line: 597, column: 8, scope: !224)
!774 = !DILocation(line: 597, column: 7, scope: !71)
!775 = !DILocation(line: 604, column: 24, scope: !223)
!776 = !DILocation(line: 604, column: 12, scope: !224)
!777 = !DILocation(line: 0, scope: !222)
!778 = !DILocation(line: 610, column: 16, scope: !222)
!779 = !DILocation(line: 610, column: 7, scope: !222)
!780 = !DILocation(line: 611, column: 21, scope: !222)
!781 = !{!782, !782, i64 0}
!782 = !{!"short", !721, i64 0}
!783 = !DILocation(line: 611, column: 19, scope: !222)
!784 = !DILocation(line: 611, column: 16, scope: !222)
!785 = !DILocation(line: 610, column: 30, scope: !222)
!786 = distinct !{!786, !779, !780, !787}
!787 = !{!"llvm.loop.mustprogress"}
!788 = !DILocation(line: 612, column: 18, scope: !789)
!789 = distinct !DILexicalBlock(scope: !222, file: !72, line: 612, column: 11)
!790 = !DILocation(line: 612, column: 11, scope: !222)
!791 = !DILocation(line: 620, column: 23, scope: !71)
!792 = !DILocation(line: 625, column: 39, scope: !71)
!793 = !DILocation(line: 626, column: 3, scope: !71)
!794 = !DILocation(line: 626, column: 10, scope: !71)
!795 = !DILocation(line: 626, column: 21, scope: !71)
!796 = !DILocation(line: 628, column: 44, scope: !797)
!797 = distinct !DILexicalBlock(scope: !798, file: !72, line: 628, column: 11)
!798 = distinct !DILexicalBlock(scope: !71, file: !72, line: 627, column: 5)
!799 = !DILocation(line: 628, column: 32, scope: !797)
!800 = !DILocation(line: 628, column: 49, scope: !797)
!801 = !DILocation(line: 628, column: 11, scope: !798)
!802 = !DILocation(line: 630, column: 11, scope: !803)
!803 = distinct !DILexicalBlock(scope: !798, file: !72, line: 630, column: 11)
!804 = !DILocation(line: 630, column: 11, scope: !798)
!805 = !DILocation(line: 632, column: 26, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !72, line: 632, column: 15)
!807 = distinct !DILexicalBlock(scope: !803, file: !72, line: 631, column: 9)
!808 = !DILocation(line: 632, column: 34, scope: !806)
!809 = !DILocation(line: 632, column: 37, scope: !806)
!810 = !DILocation(line: 632, column: 15, scope: !807)
!811 = !DILocation(line: 636, column: 16, scope: !812)
!812 = distinct !DILexicalBlock(scope: !807, file: !72, line: 636, column: 15)
!813 = !DILocation(line: 636, column: 29, scope: !812)
!814 = !DILocation(line: 640, column: 16, scope: !798)
!815 = distinct !{!815, !793, !816, !787}
!816 = !DILocation(line: 641, column: 5, scope: !71)
!817 = !DILocation(line: 644, column: 3, scope: !71)
!818 = !DILocation(line: 0, scope: !752, inlinedAt: !819)
!819 = distinct !DILocation(line: 648, column: 31, scope: !71)
!820 = !{}
!821 = !DILocation(line: 0, scope: !752, inlinedAt: !822)
!822 = distinct !DILocation(line: 649, column: 31, scope: !71)
!823 = !DILocation(line: 0, scope: !752, inlinedAt: !824)
!824 = distinct !DILocation(line: 650, column: 31, scope: !71)
!825 = !DILocation(line: 0, scope: !752, inlinedAt: !826)
!826 = distinct !DILocation(line: 651, column: 31, scope: !71)
!827 = !DILocation(line: 0, scope: !752, inlinedAt: !828)
!828 = distinct !DILocation(line: 652, column: 31, scope: !71)
!829 = !DILocation(line: 0, scope: !752, inlinedAt: !830)
!830 = distinct !DILocation(line: 653, column: 31, scope: !71)
!831 = !DILocation(line: 0, scope: !752, inlinedAt: !832)
!832 = distinct !DILocation(line: 654, column: 31, scope: !71)
!833 = !DILocation(line: 0, scope: !752, inlinedAt: !834)
!834 = distinct !DILocation(line: 655, column: 31, scope: !71)
!835 = !DILocation(line: 0, scope: !752, inlinedAt: !836)
!836 = distinct !DILocation(line: 656, column: 31, scope: !71)
!837 = !DILocation(line: 0, scope: !752, inlinedAt: !838)
!838 = distinct !DILocation(line: 657, column: 31, scope: !71)
!839 = !DILocation(line: 663, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !71, file: !72, line: 663, column: 7)
!841 = !DILocation(line: 664, column: 7, scope: !840)
!842 = !DILocation(line: 664, column: 10, scope: !840)
!843 = !DILocation(line: 663, column: 7, scope: !71)
!844 = !DILocation(line: 669, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !840, file: !72, line: 665, column: 5)
!846 = !DILocation(line: 671, column: 5, scope: !845)
!847 = !DILocation(line: 676, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !840, file: !72, line: 673, column: 5)
!849 = !DILocation(line: 679, column: 3, scope: !71)
!850 = !DILocation(line: 683, column: 3, scope: !71)
!851 = !DILocation(line: 686, column: 3, scope: !71)
!852 = !DILocation(line: 688, column: 3, scope: !71)
!853 = !DILocation(line: 691, column: 3, scope: !71)
!854 = !DILocation(line: 695, column: 3, scope: !71)
!855 = !DILocation(line: 696, column: 1, scope: !71)
!856 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !72, file: !72, line: 836, type: !857, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !859)
!857 = !DISubroutineType(cc: DW_CC_nocall, types: !858)
!858 = !{null, !75}
!859 = !{!860, !861, !868, !869, !871, !872}
!860 = !DILocalVariable(name: "program", arg: 1, scope: !856, file: !72, line: 836, type: !75)
!861 = !DILocalVariable(name: "infomap", scope: !856, file: !72, line: 838, type: !862)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !863, size: 896, elements: !55)
!863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !864)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !856, file: !72, line: 838, size: 128, elements: !865)
!865 = !{!866, !867}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !864, file: !72, line: 838, baseType: !75, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !864, file: !72, line: 838, baseType: !75, size: 64, offset: 64)
!868 = !DILocalVariable(name: "node", scope: !856, file: !72, line: 848, type: !75)
!869 = !DILocalVariable(name: "map_prog", scope: !856, file: !72, line: 849, type: !870)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!871 = !DILocalVariable(name: "lc_messages", scope: !856, file: !72, line: 861, type: !75)
!872 = !DILocalVariable(name: "url_program", scope: !856, file: !72, line: 874, type: !75)
!873 = !DILocation(line: 0, scope: !856)
!874 = !DILocation(line: 857, column: 3, scope: !856)
!875 = !DILocation(line: 861, column: 29, scope: !856)
!876 = !DILocation(line: 862, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !856, file: !72, line: 862, column: 7)
!878 = !DILocation(line: 862, column: 19, scope: !877)
!879 = !DILocation(line: 862, column: 22, scope: !877)
!880 = !DILocation(line: 862, column: 7, scope: !856)
!881 = !DILocation(line: 868, column: 7, scope: !882)
!882 = distinct !DILexicalBlock(scope: !877, file: !72, line: 863, column: 5)
!883 = !DILocation(line: 870, column: 5, scope: !882)
!884 = !DILocation(line: 875, column: 3, scope: !856)
!885 = !DILocation(line: 877, column: 3, scope: !856)
!886 = !DILocation(line: 879, column: 1, scope: !856)
!887 = !DISubprogram(name: "exit", scope: !888, file: !888, line: 624, type: !713, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!888 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!889 = !DISubprogram(name: "setlocale", scope: !890, file: !890, line: 122, type: !891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!890 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!891 = !DISubroutineType(types: !892)
!892 = !{!97, !99, !75}
!893 = !DISubprogram(name: "strncmp", scope: !894, file: !894, line: 159, type: !895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!894 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!895 = !DISubroutineType(types: !896)
!896 = !{!99, !75, !75, !101}
!897 = !DISubprogram(name: "fputs_unlocked", scope: !898, file: !898, line: 691, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!898 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!899 = !DISubroutineType(types: !900)
!900 = !{!99, !737, !901}
!901 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !231)
!902 = !DISubprogram(name: "getenv", scope: !888, file: !888, line: 641, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!903 = !DISubroutineType(types: !904)
!904 = !{!97, !75}
!905 = !DISubprogram(name: "strcmp", scope: !894, file: !894, line: 156, type: !906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!906 = !DISubroutineType(types: !907)
!907 = !{!99, !75, !75}
!908 = !DISubprogram(name: "strspn", scope: !894, file: !894, line: 297, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!909 = !DISubroutineType(types: !910)
!910 = !{!103, !75, !75}
!911 = !DISubprogram(name: "strchr", scope: !894, file: !894, line: 246, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!912 = !DISubroutineType(types: !913)
!913 = !{!97, !75, !99}
!914 = !DISubprogram(name: "__ctype_b_loc", scope: !81, file: !81, line: 79, type: !915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!915 = !DISubroutineType(types: !916)
!916 = !{!917}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!920 = !DISubprogram(name: "strcspn", scope: !894, file: !894, line: 293, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!921 = !DISubprogram(name: "fwrite_unlocked", scope: !898, file: !898, line: 704, type: !922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!922 = !DISubroutineType(types: !923)
!923 = !{!101, !924, !101, !101, !901}
!924 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !925)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!927 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 55, type: !928, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !931)
!928 = !DISubroutineType(types: !929)
!929 = !{!99, !99, !930}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!931 = !{!932, !933}
!932 = !DILocalVariable(name: "argc", arg: 1, scope: !927, file: !2, line: 55, type: !99)
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
!964 = !DISubprogram(name: "bindtextdomain", scope: !730, file: !730, line: 86, type: !965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!965 = !DISubroutineType(types: !966)
!966 = !{!97, !75, !75}
!967 = !DISubprogram(name: "textdomain", scope: !730, file: !730, line: 82, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!968 = !DISubprogram(name: "atexit", scope: !888, file: !888, line: 602, type: !969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!969 = !DISubroutineType(types: !970)
!970 = !{!99, !359}
!971 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !299, file: !299, line: 50, type: !972, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !298, retainedNodes: !973)
!972 = !DISubroutineType(types: !858)
!973 = !{!974}
!974 = !DILocalVariable(name: "file", arg: 1, scope: !971, file: !299, line: 50, type: !75)
!975 = !DILocation(line: 0, scope: !971)
!976 = !DILocation(line: 52, column: 13, scope: !971)
!977 = !DILocation(line: 53, column: 1, scope: !971)
!978 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !299, file: !299, line: 87, type: !979, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !298, retainedNodes: !981)
!979 = !DISubroutineType(types: !980)
!980 = !{null, !218}
!981 = !{!982}
!982 = !DILocalVariable(name: "ignore", arg: 1, scope: !978, file: !299, line: 87, type: !218)
!983 = !DILocation(line: 0, scope: !978)
!984 = !DILocation(line: 89, column: 16, scope: !978)
!985 = !{!986, !986, i64 0}
!986 = !{!"_Bool", !721, i64 0}
!987 = !DILocation(line: 90, column: 1, scope: !978)
!988 = distinct !DISubprogram(name: "close_stdout", scope: !299, file: !299, line: 116, type: !360, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !298, retainedNodes: !989)
!989 = !{!990}
!990 = !DILocalVariable(name: "write_error", scope: !991, file: !299, line: 121, type: !75)
!991 = distinct !DILexicalBlock(scope: !992, file: !299, line: 120, column: 5)
!992 = distinct !DILexicalBlock(scope: !988, file: !299, line: 118, column: 7)
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
!1006 = distinct !DILexicalBlock(scope: !991, file: !299, line: 122, column: 11)
!1007 = !DILocation(line: 0, scope: !1006)
!1008 = !DILocation(line: 122, column: 11, scope: !991)
!1009 = !DILocation(line: 123, column: 9, scope: !1006)
!1010 = !DILocation(line: 126, column: 9, scope: !1006)
!1011 = !DILocation(line: 128, column: 14, scope: !991)
!1012 = !DILocation(line: 128, column: 7, scope: !991)
!1013 = !DILocation(line: 133, column: 42, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !988, file: !299, line: 133, column: 7)
!1015 = !DILocation(line: 133, column: 28, scope: !1014)
!1016 = !DILocation(line: 133, column: 50, scope: !1014)
!1017 = !DILocation(line: 133, column: 7, scope: !988)
!1018 = !DILocation(line: 134, column: 12, scope: !1014)
!1019 = !DILocation(line: 134, column: 5, scope: !1014)
!1020 = !DILocation(line: 135, column: 1, scope: !988)
!1021 = !DISubprogram(name: "__errno_location", scope: !1022, file: !1022, line: 37, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1022 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!1025}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!1026 = !DISubprogram(name: "_exit", scope: !1027, file: !1027, line: 624, type: !713, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1027 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1028 = distinct !DISubprogram(name: "verror", scope: !314, file: !314, line: 251, type: !1029, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1031)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !99, !99, !75, !324}
!1031 = !{!1032, !1033, !1034, !1035}
!1032 = !DILocalVariable(name: "status", arg: 1, scope: !1028, file: !314, line: 251, type: !99)
!1033 = !DILocalVariable(name: "errnum", arg: 2, scope: !1028, file: !314, line: 251, type: !99)
!1034 = !DILocalVariable(name: "message", arg: 3, scope: !1028, file: !314, line: 251, type: !75)
!1035 = !DILocalVariable(name: "args", arg: 4, scope: !1028, file: !314, line: 251, type: !324)
!1036 = !DILocation(line: 0, scope: !1028)
!1037 = !DILocation(line: 261, column: 3, scope: !1028)
!1038 = !DILocation(line: 265, column: 7, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1028, file: !314, line: 265, column: 7)
!1040 = !DILocation(line: 265, column: 7, scope: !1028)
!1041 = !DILocation(line: 266, column: 5, scope: !1039)
!1042 = !DILocation(line: 272, column: 7, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !314, line: 268, column: 5)
!1044 = !DILocation(line: 276, column: 3, scope: !1028)
!1045 = !DILocation(line: 282, column: 1, scope: !1028)
!1046 = distinct !DISubprogram(name: "flush_stdout", scope: !314, file: !314, line: 163, type: !360, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1047)
!1047 = !{!1048}
!1048 = !DILocalVariable(name: "stdout_fd", scope: !1046, file: !314, line: 166, type: !99)
!1049 = !DILocation(line: 0, scope: !1046)
!1050 = !DILocalVariable(name: "fd", arg: 1, scope: !1051, file: !314, line: 145, type: !99)
!1051 = distinct !DISubprogram(name: "is_open", scope: !314, file: !314, line: 145, type: !1052, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1054)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!99, !99}
!1054 = !{!1050}
!1055 = !DILocation(line: 0, scope: !1051, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 182, column: 25, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1046, file: !314, line: 182, column: 7)
!1058 = !DILocation(line: 157, column: 15, scope: !1051, inlinedAt: !1056)
!1059 = !DILocation(line: 157, column: 12, scope: !1051, inlinedAt: !1056)
!1060 = !DILocation(line: 182, column: 7, scope: !1046)
!1061 = !DILocation(line: 184, column: 5, scope: !1057)
!1062 = !DILocation(line: 185, column: 1, scope: !1046)
!1063 = !DISubprogram(name: "__fprintf_chk", scope: !734, file: !734, line: 93, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!99, !1066, !99, !737, null}
!1066 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1067)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !1069)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !1070)
!1070 = !{!1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1069, file: !235, line: 51, baseType: !99, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1069, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1069, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1069, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1069, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1069, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1069, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1069, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1069, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1069, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1069, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1069, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1069, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1069, file: !235, line: 70, baseType: !1085, size: 64, offset: 832)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1069, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1069, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1069, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1069, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1069, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1069, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1069, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1069, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1069, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1069, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1069, file: !235, line: 93, baseType: !1085, size: 64, offset: 1344)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1069, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1069, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1069, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1069, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!1101 = distinct !DISubprogram(name: "error_tail", scope: !314, file: !314, line: 219, type: !1029, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1102)
!1102 = !{!1103, !1104, !1105, !1106}
!1103 = !DILocalVariable(name: "status", arg: 1, scope: !1101, file: !314, line: 219, type: !99)
!1104 = !DILocalVariable(name: "errnum", arg: 2, scope: !1101, file: !314, line: 219, type: !99)
!1105 = !DILocalVariable(name: "message", arg: 3, scope: !1101, file: !314, line: 219, type: !75)
!1106 = !DILocalVariable(name: "args", arg: 4, scope: !1101, file: !314, line: 219, type: !324)
!1107 = distinct !DIAssignID()
!1108 = !DILocation(line: 0, scope: !1101)
!1109 = !DILocation(line: 229, column: 13, scope: !1101)
!1110 = !DILocalVariable(name: "__stream", arg: 1, scope: !1111, file: !734, line: 132, type: !1066)
!1111 = distinct !DISubprogram(name: "vfprintf", scope: !734, file: !734, line: 132, type: !1112, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1114)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!99, !1066, !737, !324}
!1114 = !{!1110, !1115, !1116}
!1115 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1111, file: !734, line: 133, type: !737)
!1116 = !DILocalVariable(name: "__ap", arg: 3, scope: !1111, file: !734, line: 133, type: !324)
!1117 = !DILocation(line: 0, scope: !1111, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 229, column: 3, scope: !1101)
!1119 = !DILocation(line: 135, column: 10, scope: !1111, inlinedAt: !1118)
!1120 = !DILocation(line: 232, column: 3, scope: !1101)
!1121 = !DILocation(line: 233, column: 7, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1101, file: !314, line: 233, column: 7)
!1123 = !DILocation(line: 233, column: 7, scope: !1101)
!1124 = !DILocalVariable(name: "errbuf", scope: !1125, file: !314, line: 193, type: !1129)
!1125 = distinct !DISubprogram(name: "print_errno_message", scope: !314, file: !314, line: 188, type: !713, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1126)
!1126 = !{!1127, !1128, !1124}
!1127 = !DILocalVariable(name: "errnum", arg: 1, scope: !1125, file: !314, line: 188, type: !99)
!1128 = !DILocalVariable(name: "s", scope: !1125, file: !314, line: 190, type: !75)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1130)
!1130 = !{!1131}
!1131 = !DISubrange(count: 1024)
!1132 = !DILocation(line: 0, scope: !1125, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 234, column: 5, scope: !1122)
!1134 = !DILocation(line: 193, column: 3, scope: !1125, inlinedAt: !1133)
!1135 = !DILocation(line: 195, column: 7, scope: !1125, inlinedAt: !1133)
!1136 = !DILocation(line: 207, column: 9, scope: !1137, inlinedAt: !1133)
!1137 = distinct !DILexicalBlock(scope: !1125, file: !314, line: 207, column: 7)
!1138 = !DILocation(line: 207, column: 7, scope: !1125, inlinedAt: !1133)
!1139 = !DILocation(line: 208, column: 9, scope: !1137, inlinedAt: !1133)
!1140 = !DILocation(line: 208, column: 5, scope: !1137, inlinedAt: !1133)
!1141 = !DILocation(line: 214, column: 3, scope: !1125, inlinedAt: !1133)
!1142 = !DILocation(line: 216, column: 1, scope: !1125, inlinedAt: !1133)
!1143 = !DILocation(line: 234, column: 5, scope: !1122)
!1144 = !DILocation(line: 238, column: 3, scope: !1101)
!1145 = !DILocalVariable(name: "__c", arg: 1, scope: !1146, file: !1147, line: 101, type: !99)
!1146 = distinct !DISubprogram(name: "putc_unlocked", scope: !1147, file: !1147, line: 101, type: !1148, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1150)
!1147 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!99, !99, !1067}
!1150 = !{!1145, !1151}
!1151 = !DILocalVariable(name: "__stream", arg: 2, scope: !1146, file: !1147, line: 101, type: !1067)
!1152 = !DILocation(line: 0, scope: !1146, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 238, column: 3, scope: !1101)
!1154 = !DILocation(line: 103, column: 10, scope: !1146, inlinedAt: !1153)
!1155 = !{!1156, !720, i64 40}
!1156 = !{!"_IO_FILE", !741, i64 0, !720, i64 8, !720, i64 16, !720, i64 24, !720, i64 32, !720, i64 40, !720, i64 48, !720, i64 56, !720, i64 64, !720, i64 72, !720, i64 80, !720, i64 88, !720, i64 96, !720, i64 104, !741, i64 112, !741, i64 116, !1157, i64 120, !782, i64 128, !721, i64 130, !721, i64 131, !720, i64 136, !1157, i64 144, !720, i64 152, !720, i64 160, !720, i64 168, !720, i64 176, !1157, i64 184, !741, i64 192, !721, i64 196}
!1157 = !{!"long", !721, i64 0}
!1158 = !{!1156, !720, i64 48}
!1159 = !{!"branch_weights", i32 2000, i32 1}
!1160 = !DILocation(line: 240, column: 3, scope: !1101)
!1161 = !DILocation(line: 241, column: 7, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1101, file: !314, line: 241, column: 7)
!1163 = !DILocation(line: 241, column: 7, scope: !1101)
!1164 = !DILocation(line: 242, column: 5, scope: !1162)
!1165 = !DILocation(line: 243, column: 1, scope: !1101)
!1166 = !DISubprogram(name: "__vfprintf_chk", scope: !734, file: !734, line: 96, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!99, !1066, !99, !737, !324}
!1169 = !DISubprogram(name: "strerror_r", scope: !894, file: !894, line: 444, type: !1170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!97, !99, !97, !101}
!1172 = !DISubprogram(name: "__overflow", scope: !898, file: !898, line: 886, type: !1173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!99, !1067, !99}
!1175 = !DISubprogram(name: "fflush_unlocked", scope: !898, file: !898, line: 239, type: !1176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!99, !1067}
!1178 = !DISubprogram(name: "fcntl", scope: !1179, file: !1179, line: 149, type: !1180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1179 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!99, !99, !99, null}
!1182 = distinct !DISubprogram(name: "error", scope: !314, file: !314, line: 285, type: !1183, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1185)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !99, !99, !75, null}
!1185 = !{!1186, !1187, !1188, !1189}
!1186 = !DILocalVariable(name: "status", arg: 1, scope: !1182, file: !314, line: 285, type: !99)
!1187 = !DILocalVariable(name: "errnum", arg: 2, scope: !1182, file: !314, line: 285, type: !99)
!1188 = !DILocalVariable(name: "message", arg: 3, scope: !1182, file: !314, line: 285, type: !75)
!1189 = !DILocalVariable(name: "ap", scope: !1182, file: !314, line: 287, type: !1190)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !898, line: 52, baseType: !1191)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1192, line: 12, baseType: !1193)
!1192 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !314, baseType: !1194)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 192, elements: !40)
!1195 = distinct !DIAssignID()
!1196 = !DILocation(line: 0, scope: !1182)
!1197 = !DILocation(line: 287, column: 3, scope: !1182)
!1198 = !DILocation(line: 288, column: 3, scope: !1182)
!1199 = !DILocation(line: 289, column: 3, scope: !1182)
!1200 = !DILocation(line: 290, column: 3, scope: !1182)
!1201 = !DILocation(line: 291, column: 1, scope: !1182)
!1202 = !DILocation(line: 0, scope: !321)
!1203 = !DILocation(line: 302, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !321, file: !314, line: 302, column: 7)
!1205 = !DILocation(line: 302, column: 7, scope: !321)
!1206 = !DILocation(line: 307, column: 11, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !314, line: 307, column: 11)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !314, line: 303, column: 5)
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
!1222 = !DILocation(line: 327, column: 3, scope: !321)
!1223 = !DILocation(line: 331, column: 7, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !321, file: !314, line: 331, column: 7)
!1225 = !DILocation(line: 331, column: 7, scope: !321)
!1226 = !DILocation(line: 332, column: 5, scope: !1224)
!1227 = !DILocation(line: 338, column: 7, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1224, file: !314, line: 334, column: 5)
!1229 = !DILocation(line: 346, column: 3, scope: !321)
!1230 = !DILocation(line: 350, column: 3, scope: !321)
!1231 = !DILocation(line: 356, column: 1, scope: !321)
!1232 = distinct !DISubprogram(name: "error_at_line", scope: !314, file: !314, line: 359, type: !1233, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !1235)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !99, !99, !75, !82, !75, null}
!1235 = !{!1236, !1237, !1238, !1239, !1240, !1241}
!1236 = !DILocalVariable(name: "status", arg: 1, scope: !1232, file: !314, line: 359, type: !99)
!1237 = !DILocalVariable(name: "errnum", arg: 2, scope: !1232, file: !314, line: 359, type: !99)
!1238 = !DILocalVariable(name: "file_name", arg: 3, scope: !1232, file: !314, line: 359, type: !75)
!1239 = !DILocalVariable(name: "line_number", arg: 4, scope: !1232, file: !314, line: 360, type: !82)
!1240 = !DILocalVariable(name: "message", arg: 5, scope: !1232, file: !314, line: 360, type: !75)
!1241 = !DILocalVariable(name: "ap", scope: !1232, file: !314, line: 362, type: !1190)
!1242 = distinct !DIAssignID()
!1243 = !DILocation(line: 0, scope: !1232)
!1244 = !DILocation(line: 362, column: 3, scope: !1232)
!1245 = !DILocation(line: 363, column: 3, scope: !1232)
!1246 = !DILocation(line: 364, column: 3, scope: !1232)
!1247 = !DILocation(line: 366, column: 3, scope: !1232)
!1248 = !DILocation(line: 367, column: 1, scope: !1232)
!1249 = distinct !DISubprogram(name: "getprogname", scope: !641, file: !641, line: 54, type: !1250, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!75}
!1252 = !DILocation(line: 58, column: 10, scope: !1249)
!1253 = !DILocation(line: 58, column: 3, scope: !1249)
!1254 = distinct !DISubprogram(name: "set_program_name", scope: !365, file: !365, line: 37, type: !972, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !1255)
!1255 = !{!1256, !1257, !1258}
!1256 = !DILocalVariable(name: "argv0", arg: 1, scope: !1254, file: !365, line: 37, type: !75)
!1257 = !DILocalVariable(name: "slash", scope: !1254, file: !365, line: 44, type: !75)
!1258 = !DILocalVariable(name: "base", scope: !1254, file: !365, line: 45, type: !75)
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
!1270 = !{!218, !925, !925, !101}
!1271 = !{!1267, !1272, !1273}
!1272 = !DILocalVariable(name: "__s2", arg: 2, scope: !1268, file: !753, line: 974, type: !925)
!1273 = !DILocalVariable(name: "__n", arg: 3, scope: !1268, file: !753, line: 974, type: !101)
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
!1288 = !DISubprogram(name: "strrchr", scope: !894, file: !894, line: 273, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1289 = distinct !DIAssignID()
!1290 = !DILocation(line: 0, scope: !374)
!1291 = distinct !DIAssignID()
!1292 = !DILocation(line: 40, column: 29, scope: !374)
!1293 = !DILocation(line: 41, column: 19, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !374, file: !375, line: 41, column: 7)
!1295 = !DILocation(line: 41, column: 7, scope: !374)
!1296 = !DILocation(line: 47, column: 3, scope: !374)
!1297 = !DILocation(line: 48, column: 3, scope: !374)
!1298 = !DILocalVariable(name: "ps", arg: 1, scope: !1299, file: !1300, line: 1135, type: !1303)
!1299 = distinct !DISubprogram(name: "mbszero", scope: !1300, file: !1300, line: 1135, type: !1301, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !1304)
!1300 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !1303}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1304 = !{!1298}
!1305 = !DILocation(line: 0, scope: !1299, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 48, column: 18, scope: !374)
!1307 = !DILocalVariable(name: "__dest", arg: 1, scope: !1308, file: !1309, line: 57, type: !98)
!1308 = distinct !DISubprogram(name: "memset", scope: !1309, file: !1309, line: 57, type: !1310, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !1312)
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
!1319 = distinct !DILexicalBlock(scope: !374, file: !375, line: 49, column: 7)
!1320 = !DILocation(line: 49, column: 39, scope: !1319)
!1321 = !DILocation(line: 49, column: 44, scope: !1319)
!1322 = !DILocation(line: 54, column: 1, scope: !374)
!1323 = !DISubprogram(name: "mbrtoc32", scope: !386, file: !386, line: 57, type: !1324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!101, !1326, !737, !101, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1327)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1303)
!1329 = distinct !DISubprogram(name: "clone_quoting_options", scope: !405, file: !405, line: 113, type: !1330, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1333)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!1332, !1332}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!1333 = !{!1334, !1335, !1336}
!1334 = !DILocalVariable(name: "o", arg: 1, scope: !1329, file: !405, line: 113, type: !1332)
!1335 = !DILocalVariable(name: "saved_errno", scope: !1329, file: !405, line: 115, type: !99)
!1336 = !DILocalVariable(name: "p", scope: !1329, file: !405, line: 116, type: !1332)
!1337 = !DILocation(line: 0, scope: !1329)
!1338 = !DILocation(line: 115, column: 21, scope: !1329)
!1339 = !DILocation(line: 116, column: 40, scope: !1329)
!1340 = !DILocation(line: 116, column: 31, scope: !1329)
!1341 = !DILocation(line: 118, column: 9, scope: !1329)
!1342 = !DILocation(line: 119, column: 3, scope: !1329)
!1343 = distinct !DISubprogram(name: "get_quoting_style", scope: !405, file: !405, line: 124, type: !1344, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1348)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!428, !1346}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!1348 = !{!1349}
!1349 = !DILocalVariable(name: "o", arg: 1, scope: !1343, file: !405, line: 124, type: !1346)
!1350 = !DILocation(line: 0, scope: !1343)
!1351 = !DILocation(line: 126, column: 11, scope: !1343)
!1352 = !DILocation(line: 126, column: 46, scope: !1343)
!1353 = !{!1354, !741, i64 0}
!1354 = !{!"quoting_options", !741, i64 0, !741, i64 4, !721, i64 8, !720, i64 40, !720, i64 48}
!1355 = !DILocation(line: 126, column: 3, scope: !1343)
!1356 = distinct !DISubprogram(name: "set_quoting_style", scope: !405, file: !405, line: 132, type: !1357, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1359)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !1332, !428}
!1359 = !{!1360, !1361}
!1360 = !DILocalVariable(name: "o", arg: 1, scope: !1356, file: !405, line: 132, type: !1332)
!1361 = !DILocalVariable(name: "s", arg: 2, scope: !1356, file: !405, line: 132, type: !428)
!1362 = !DILocation(line: 0, scope: !1356)
!1363 = !DILocation(line: 134, column: 4, scope: !1356)
!1364 = !DILocation(line: 134, column: 45, scope: !1356)
!1365 = !DILocation(line: 135, column: 1, scope: !1356)
!1366 = distinct !DISubprogram(name: "set_char_quoting", scope: !405, file: !405, line: 143, type: !1367, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1369)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!99, !1332, !4, !99}
!1369 = !{!1370, !1371, !1372, !1373, !1374, !1376, !1377}
!1370 = !DILocalVariable(name: "o", arg: 1, scope: !1366, file: !405, line: 143, type: !1332)
!1371 = !DILocalVariable(name: "c", arg: 2, scope: !1366, file: !405, line: 143, type: !4)
!1372 = !DILocalVariable(name: "i", arg: 3, scope: !1366, file: !405, line: 143, type: !99)
!1373 = !DILocalVariable(name: "uc", scope: !1366, file: !405, line: 145, type: !104)
!1374 = !DILocalVariable(name: "p", scope: !1366, file: !405, line: 146, type: !1375)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1376 = !DILocalVariable(name: "shift", scope: !1366, file: !405, line: 148, type: !99)
!1377 = !DILocalVariable(name: "r", scope: !1366, file: !405, line: 149, type: !82)
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
!1391 = distinct !DISubprogram(name: "set_quoting_flags", scope: !405, file: !405, line: 159, type: !1392, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1394)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!99, !1332, !99}
!1394 = !{!1395, !1396, !1397}
!1395 = !DILocalVariable(name: "o", arg: 1, scope: !1391, file: !405, line: 159, type: !1332)
!1396 = !DILocalVariable(name: "i", arg: 2, scope: !1391, file: !405, line: 159, type: !99)
!1397 = !DILocalVariable(name: "r", scope: !1391, file: !405, line: 163, type: !99)
!1398 = !DILocation(line: 0, scope: !1391)
!1399 = !DILocation(line: 161, column: 8, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1391, file: !405, line: 161, column: 7)
!1401 = !DILocation(line: 161, column: 7, scope: !1391)
!1402 = !DILocation(line: 163, column: 14, scope: !1391)
!1403 = !{!1354, !741, i64 4}
!1404 = !DILocation(line: 164, column: 12, scope: !1391)
!1405 = !DILocation(line: 165, column: 3, scope: !1391)
!1406 = distinct !DISubprogram(name: "set_custom_quoting", scope: !405, file: !405, line: 169, type: !1407, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1409)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !1332, !75, !75}
!1409 = !{!1410, !1411, !1412}
!1410 = !DILocalVariable(name: "o", arg: 1, scope: !1406, file: !405, line: 169, type: !1332)
!1411 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1406, file: !405, line: 170, type: !75)
!1412 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1406, file: !405, line: 170, type: !75)
!1413 = !DILocation(line: 0, scope: !1406)
!1414 = !DILocation(line: 172, column: 8, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1406, file: !405, line: 172, column: 7)
!1416 = !DILocation(line: 172, column: 7, scope: !1406)
!1417 = !DILocation(line: 174, column: 12, scope: !1406)
!1418 = !DILocation(line: 175, column: 8, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1406, file: !405, line: 175, column: 7)
!1420 = !DILocation(line: 175, column: 19, scope: !1419)
!1421 = !DILocation(line: 176, column: 5, scope: !1419)
!1422 = !DILocation(line: 177, column: 6, scope: !1406)
!1423 = !DILocation(line: 177, column: 17, scope: !1406)
!1424 = !{!1354, !720, i64 40}
!1425 = !DILocation(line: 178, column: 6, scope: !1406)
!1426 = !DILocation(line: 178, column: 18, scope: !1406)
!1427 = !{!1354, !720, i64 48}
!1428 = !DILocation(line: 179, column: 1, scope: !1406)
!1429 = !DISubprogram(name: "abort", scope: !888, file: !888, line: 598, type: !360, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1430 = distinct !DISubprogram(name: "quotearg_buffer", scope: !405, file: !405, line: 774, type: !1431, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1433)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!101, !97, !101, !75, !101, !1346}
!1433 = !{!1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441}
!1434 = !DILocalVariable(name: "buffer", arg: 1, scope: !1430, file: !405, line: 774, type: !97)
!1435 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1430, file: !405, line: 774, type: !101)
!1436 = !DILocalVariable(name: "arg", arg: 3, scope: !1430, file: !405, line: 775, type: !75)
!1437 = !DILocalVariable(name: "argsize", arg: 4, scope: !1430, file: !405, line: 775, type: !101)
!1438 = !DILocalVariable(name: "o", arg: 5, scope: !1430, file: !405, line: 776, type: !1346)
!1439 = !DILocalVariable(name: "p", scope: !1430, file: !405, line: 778, type: !1346)
!1440 = !DILocalVariable(name: "saved_errno", scope: !1430, file: !405, line: 779, type: !99)
!1441 = !DILocalVariable(name: "r", scope: !1430, file: !405, line: 780, type: !101)
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
!1453 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !405, file: !405, line: 251, type: !1454, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1458)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!101, !97, !101, !75, !101, !428, !99, !1456, !75, !75}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!1458 = !{!1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1484, !1486, !1489, !1490, !1491, !1492, !1495, !1496, !1498, !1499, !1502, !1506, !1507, !1515, !1518, !1519, !1520}
!1459 = !DILocalVariable(name: "buffer", arg: 1, scope: !1453, file: !405, line: 251, type: !97)
!1460 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1453, file: !405, line: 251, type: !101)
!1461 = !DILocalVariable(name: "arg", arg: 3, scope: !1453, file: !405, line: 252, type: !75)
!1462 = !DILocalVariable(name: "argsize", arg: 4, scope: !1453, file: !405, line: 252, type: !101)
!1463 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1453, file: !405, line: 253, type: !428)
!1464 = !DILocalVariable(name: "flags", arg: 6, scope: !1453, file: !405, line: 253, type: !99)
!1465 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1453, file: !405, line: 254, type: !1456)
!1466 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1453, file: !405, line: 255, type: !75)
!1467 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1453, file: !405, line: 256, type: !75)
!1468 = !DILocalVariable(name: "unibyte_locale", scope: !1453, file: !405, line: 258, type: !218)
!1469 = !DILocalVariable(name: "len", scope: !1453, file: !405, line: 260, type: !101)
!1470 = !DILocalVariable(name: "orig_buffersize", scope: !1453, file: !405, line: 261, type: !101)
!1471 = !DILocalVariable(name: "quote_string", scope: !1453, file: !405, line: 262, type: !75)
!1472 = !DILocalVariable(name: "quote_string_len", scope: !1453, file: !405, line: 263, type: !101)
!1473 = !DILocalVariable(name: "backslash_escapes", scope: !1453, file: !405, line: 264, type: !218)
!1474 = !DILocalVariable(name: "elide_outer_quotes", scope: !1453, file: !405, line: 265, type: !218)
!1475 = !DILocalVariable(name: "encountered_single_quote", scope: !1453, file: !405, line: 266, type: !218)
!1476 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1453, file: !405, line: 267, type: !218)
!1477 = !DILabel(scope: !1453, name: "process_input", file: !405, line: 308)
!1478 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1453, file: !405, line: 309, type: !218)
!1479 = !DILocalVariable(name: "lq", scope: !1480, file: !405, line: 361, type: !75)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !405, line: 361, column: 11)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !405, line: 360, column: 13)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !405, line: 333, column: 7)
!1483 = distinct !DILexicalBlock(scope: !1453, file: !405, line: 312, column: 5)
!1484 = !DILocalVariable(name: "i", scope: !1485, file: !405, line: 395, type: !101)
!1485 = distinct !DILexicalBlock(scope: !1453, file: !405, line: 395, column: 3)
!1486 = !DILocalVariable(name: "is_right_quote", scope: !1487, file: !405, line: 397, type: !218)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !405, line: 396, column: 5)
!1488 = distinct !DILexicalBlock(scope: !1485, file: !405, line: 395, column: 3)
!1489 = !DILocalVariable(name: "escaping", scope: !1487, file: !405, line: 398, type: !218)
!1490 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1487, file: !405, line: 399, type: !218)
!1491 = !DILocalVariable(name: "c", scope: !1487, file: !405, line: 417, type: !104)
!1492 = !DILabel(scope: !1493, name: "c_and_shell_escape", file: !405, line: 502)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !405, line: 478, column: 9)
!1494 = distinct !DILexicalBlock(scope: !1487, file: !405, line: 419, column: 9)
!1495 = !DILabel(scope: !1493, name: "c_escape", file: !405, line: 507)
!1496 = !DILocalVariable(name: "m", scope: !1497, file: !405, line: 598, type: !101)
!1497 = distinct !DILexicalBlock(scope: !1494, file: !405, line: 596, column: 11)
!1498 = !DILocalVariable(name: "printable", scope: !1497, file: !405, line: 600, type: !218)
!1499 = !DILocalVariable(name: "mbs", scope: !1500, file: !405, line: 609, type: !489)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !405, line: 608, column: 15)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !405, line: 602, column: 17)
!1502 = !DILocalVariable(name: "w", scope: !1503, file: !405, line: 618, type: !385)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !405, line: 617, column: 19)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !405, line: 616, column: 17)
!1505 = distinct !DILexicalBlock(scope: !1500, file: !405, line: 616, column: 17)
!1506 = !DILocalVariable(name: "bytes", scope: !1503, file: !405, line: 619, type: !101)
!1507 = !DILocalVariable(name: "j", scope: !1508, file: !405, line: 648, type: !101)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !405, line: 648, column: 29)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !405, line: 647, column: 27)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !405, line: 645, column: 29)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !405, line: 636, column: 23)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !405, line: 628, column: 30)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !405, line: 623, column: 30)
!1514 = distinct !DILexicalBlock(scope: !1503, file: !405, line: 621, column: 25)
!1515 = !DILocalVariable(name: "ilim", scope: !1516, file: !405, line: 674, type: !101)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !405, line: 671, column: 15)
!1517 = distinct !DILexicalBlock(scope: !1497, file: !405, line: 670, column: 17)
!1518 = !DILabel(scope: !1487, name: "store_escape", file: !405, line: 709)
!1519 = !DILabel(scope: !1487, name: "store_c", file: !405, line: 712)
!1520 = !DILabel(scope: !1453, name: "force_outer_quoting_style", file: !405, line: 753)
!1521 = distinct !DIAssignID()
!1522 = distinct !DIAssignID()
!1523 = distinct !DIAssignID()
!1524 = distinct !DIAssignID()
!1525 = distinct !DIAssignID()
!1526 = !DILocation(line: 0, scope: !1500)
!1527 = distinct !DIAssignID()
!1528 = !DILocation(line: 0, scope: !1503)
!1529 = !DILocation(line: 0, scope: !1453)
!1530 = !DILocation(line: 258, column: 25, scope: !1453)
!1531 = !DILocation(line: 258, column: 36, scope: !1453)
!1532 = !DILocation(line: 265, column: 8, scope: !1453)
!1533 = !DILocation(line: 267, column: 3, scope: !1453)
!1534 = !DILocation(line: 261, column: 10, scope: !1453)
!1535 = !DILocation(line: 262, column: 15, scope: !1453)
!1536 = !DILocation(line: 263, column: 10, scope: !1453)
!1537 = !DILocation(line: 264, column: 8, scope: !1453)
!1538 = !DILocation(line: 266, column: 8, scope: !1453)
!1539 = !DILocation(line: 267, column: 8, scope: !1453)
!1540 = !DILocation(line: 308, column: 2, scope: !1453)
!1541 = !DILocation(line: 311, column: 3, scope: !1453)
!1542 = !DILocation(line: 318, column: 11, scope: !1483)
!1543 = !DILocation(line: 318, column: 12, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1483, file: !405, line: 318, column: 11)
!1545 = !DILocation(line: 319, column: 9, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !405, line: 319, column: 9)
!1547 = distinct !DILexicalBlock(scope: !1544, file: !405, line: 319, column: 9)
!1548 = !DILocation(line: 319, column: 9, scope: !1547)
!1549 = !DILocation(line: 0, scope: !480, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 357, column: 26, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !405, line: 335, column: 11)
!1552 = distinct !DILexicalBlock(scope: !1482, file: !405, line: 334, column: 13)
!1553 = !DILocation(line: 199, column: 29, scope: !480, inlinedAt: !1550)
!1554 = !DILocation(line: 201, column: 19, scope: !1555, inlinedAt: !1550)
!1555 = distinct !DILexicalBlock(scope: !480, file: !405, line: 201, column: 7)
!1556 = !DILocation(line: 201, column: 7, scope: !480, inlinedAt: !1550)
!1557 = !DILocation(line: 229, column: 3, scope: !480, inlinedAt: !1550)
!1558 = !DILocation(line: 230, column: 3, scope: !480, inlinedAt: !1550)
!1559 = !DILocalVariable(name: "ps", arg: 1, scope: !1560, file: !1300, line: 1135, type: !1563)
!1560 = distinct !DISubprogram(name: "mbszero", scope: !1300, file: !1300, line: 1135, type: !1561, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1564)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !1563}
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!1564 = !{!1559}
!1565 = !DILocation(line: 0, scope: !1560, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 230, column: 18, scope: !480, inlinedAt: !1550)
!1567 = !DILocalVariable(name: "__dest", arg: 1, scope: !1568, file: !1309, line: 57, type: !98)
!1568 = distinct !DISubprogram(name: "memset", scope: !1309, file: !1309, line: 57, type: !1310, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1569)
!1569 = !{!1567, !1570, !1571}
!1570 = !DILocalVariable(name: "__ch", arg: 2, scope: !1568, file: !1309, line: 57, type: !99)
!1571 = !DILocalVariable(name: "__len", arg: 3, scope: !1568, file: !1309, line: 57, type: !101)
!1572 = !DILocation(line: 0, scope: !1568, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 1137, column: 3, scope: !1560, inlinedAt: !1566)
!1574 = !DILocation(line: 59, column: 10, scope: !1568, inlinedAt: !1573)
!1575 = !DILocation(line: 231, column: 7, scope: !1576, inlinedAt: !1550)
!1576 = distinct !DILexicalBlock(scope: !480, file: !405, line: 231, column: 7)
!1577 = !DILocation(line: 231, column: 40, scope: !1576, inlinedAt: !1550)
!1578 = !DILocation(line: 231, column: 45, scope: !1576, inlinedAt: !1550)
!1579 = !DILocation(line: 235, column: 1, scope: !480, inlinedAt: !1550)
!1580 = !DILocation(line: 0, scope: !480, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 358, column: 27, scope: !1551)
!1582 = !DILocation(line: 199, column: 29, scope: !480, inlinedAt: !1581)
!1583 = !DILocation(line: 201, column: 19, scope: !1555, inlinedAt: !1581)
!1584 = !DILocation(line: 201, column: 7, scope: !480, inlinedAt: !1581)
!1585 = !DILocation(line: 229, column: 3, scope: !480, inlinedAt: !1581)
!1586 = !DILocation(line: 230, column: 3, scope: !480, inlinedAt: !1581)
!1587 = !DILocation(line: 0, scope: !1560, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 230, column: 18, scope: !480, inlinedAt: !1581)
!1589 = !DILocation(line: 0, scope: !1568, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 1137, column: 3, scope: !1560, inlinedAt: !1588)
!1591 = !DILocation(line: 59, column: 10, scope: !1568, inlinedAt: !1590)
!1592 = !DILocation(line: 231, column: 7, scope: !1576, inlinedAt: !1581)
!1593 = !DILocation(line: 231, column: 40, scope: !1576, inlinedAt: !1581)
!1594 = !DILocation(line: 231, column: 45, scope: !1576, inlinedAt: !1581)
!1595 = !DILocation(line: 235, column: 1, scope: !480, inlinedAt: !1581)
!1596 = !DILocation(line: 360, column: 14, scope: !1481)
!1597 = !DILocation(line: 360, column: 13, scope: !1482)
!1598 = !DILocation(line: 0, scope: !1480)
!1599 = !DILocation(line: 361, column: 45, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1480, file: !405, line: 361, column: 11)
!1601 = !DILocation(line: 361, column: 11, scope: !1480)
!1602 = !DILocation(line: 362, column: 13, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !405, line: 362, column: 13)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !405, line: 362, column: 13)
!1605 = !DILocation(line: 362, column: 13, scope: !1604)
!1606 = !DILocation(line: 361, column: 52, scope: !1600)
!1607 = distinct !{!1607, !1601, !1608, !787}
!1608 = !DILocation(line: 362, column: 13, scope: !1480)
!1609 = !DILocation(line: 260, column: 10, scope: !1453)
!1610 = !DILocation(line: 365, column: 28, scope: !1482)
!1611 = !DILocation(line: 367, column: 7, scope: !1483)
!1612 = !DILocation(line: 370, column: 7, scope: !1483)
!1613 = !DILocation(line: 373, column: 7, scope: !1483)
!1614 = !DILocation(line: 376, column: 12, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1483, file: !405, line: 376, column: 11)
!1616 = !DILocation(line: 376, column: 11, scope: !1483)
!1617 = !DILocation(line: 381, column: 12, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1483, file: !405, line: 381, column: 11)
!1619 = !DILocation(line: 381, column: 11, scope: !1483)
!1620 = !DILocation(line: 382, column: 9, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !405, line: 382, column: 9)
!1622 = distinct !DILexicalBlock(scope: !1618, file: !405, line: 382, column: 9)
!1623 = !DILocation(line: 382, column: 9, scope: !1622)
!1624 = !DILocation(line: 389, column: 7, scope: !1483)
!1625 = !DILocation(line: 392, column: 7, scope: !1483)
!1626 = !DILocation(line: 0, scope: !1485)
!1627 = !DILocation(line: 395, column: 8, scope: !1485)
!1628 = !DILocation(line: 309, column: 8, scope: !1453)
!1629 = !DILocation(line: 395, scope: !1485)
!1630 = !DILocation(line: 395, column: 34, scope: !1488)
!1631 = !DILocation(line: 395, column: 26, scope: !1488)
!1632 = !DILocation(line: 395, column: 48, scope: !1488)
!1633 = !DILocation(line: 395, column: 55, scope: !1488)
!1634 = !DILocation(line: 395, column: 3, scope: !1485)
!1635 = !DILocation(line: 395, column: 67, scope: !1488)
!1636 = !DILocation(line: 0, scope: !1487)
!1637 = !DILocation(line: 402, column: 11, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1487, file: !405, line: 401, column: 11)
!1639 = !DILocation(line: 404, column: 17, scope: !1638)
!1640 = !DILocation(line: 405, column: 39, scope: !1638)
!1641 = !DILocation(line: 409, column: 32, scope: !1638)
!1642 = !DILocation(line: 405, column: 19, scope: !1638)
!1643 = !DILocation(line: 405, column: 15, scope: !1638)
!1644 = !DILocation(line: 410, column: 11, scope: !1638)
!1645 = !DILocation(line: 410, column: 25, scope: !1638)
!1646 = !DILocalVariable(name: "__s1", arg: 1, scope: !1647, file: !753, line: 974, type: !925)
!1647 = distinct !DISubprogram(name: "memeq", scope: !753, file: !753, line: 974, type: !1269, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1648)
!1648 = !{!1646, !1649, !1650}
!1649 = !DILocalVariable(name: "__s2", arg: 2, scope: !1647, file: !753, line: 974, type: !925)
!1650 = !DILocalVariable(name: "__n", arg: 3, scope: !1647, file: !753, line: 974, type: !101)
!1651 = !DILocation(line: 0, scope: !1647, inlinedAt: !1652)
!1652 = distinct !DILocation(line: 410, column: 14, scope: !1638)
!1653 = !DILocation(line: 976, column: 11, scope: !1647, inlinedAt: !1652)
!1654 = !DILocation(line: 976, column: 10, scope: !1647, inlinedAt: !1652)
!1655 = !DILocation(line: 401, column: 11, scope: !1487)
!1656 = !DILocation(line: 417, column: 25, scope: !1487)
!1657 = !DILocation(line: 418, column: 7, scope: !1487)
!1658 = !DILocation(line: 421, column: 15, scope: !1494)
!1659 = !DILocation(line: 423, column: 15, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !405, line: 423, column: 15)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !405, line: 422, column: 13)
!1662 = distinct !DILexicalBlock(scope: !1494, file: !405, line: 421, column: 15)
!1663 = !DILocation(line: 423, column: 15, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1660, file: !405, line: 423, column: 15)
!1665 = !DILocation(line: 423, column: 15, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !405, line: 423, column: 15)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !405, line: 423, column: 15)
!1668 = distinct !DILexicalBlock(scope: !1664, file: !405, line: 423, column: 15)
!1669 = !DILocation(line: 423, column: 15, scope: !1667)
!1670 = !DILocation(line: 423, column: 15, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !405, line: 423, column: 15)
!1672 = distinct !DILexicalBlock(scope: !1668, file: !405, line: 423, column: 15)
!1673 = !DILocation(line: 423, column: 15, scope: !1672)
!1674 = !DILocation(line: 423, column: 15, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !405, line: 423, column: 15)
!1676 = distinct !DILexicalBlock(scope: !1668, file: !405, line: 423, column: 15)
!1677 = !DILocation(line: 423, column: 15, scope: !1676)
!1678 = !DILocation(line: 423, column: 15, scope: !1668)
!1679 = !DILocation(line: 423, column: 15, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !405, line: 423, column: 15)
!1681 = distinct !DILexicalBlock(scope: !1660, file: !405, line: 423, column: 15)
!1682 = !DILocation(line: 423, column: 15, scope: !1681)
!1683 = !DILocation(line: 431, column: 19, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1661, file: !405, line: 430, column: 19)
!1685 = !DILocation(line: 431, column: 24, scope: !1684)
!1686 = !DILocation(line: 431, column: 28, scope: !1684)
!1687 = !DILocation(line: 431, column: 38, scope: !1684)
!1688 = !DILocation(line: 431, column: 48, scope: !1684)
!1689 = !DILocation(line: 431, column: 59, scope: !1684)
!1690 = !DILocation(line: 433, column: 19, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !405, line: 433, column: 19)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !405, line: 433, column: 19)
!1693 = distinct !DILexicalBlock(scope: !1684, file: !405, line: 432, column: 17)
!1694 = !DILocation(line: 433, column: 19, scope: !1692)
!1695 = !DILocation(line: 434, column: 19, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !405, line: 434, column: 19)
!1697 = distinct !DILexicalBlock(scope: !1693, file: !405, line: 434, column: 19)
!1698 = !DILocation(line: 434, column: 19, scope: !1697)
!1699 = !DILocation(line: 435, column: 17, scope: !1693)
!1700 = !DILocation(line: 442, column: 20, scope: !1662)
!1701 = !DILocation(line: 447, column: 11, scope: !1494)
!1702 = !DILocation(line: 450, column: 19, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1494, file: !405, line: 448, column: 13)
!1704 = !DILocation(line: 456, column: 19, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1703, file: !405, line: 455, column: 19)
!1706 = !DILocation(line: 456, column: 24, scope: !1705)
!1707 = !DILocation(line: 456, column: 28, scope: !1705)
!1708 = !DILocation(line: 456, column: 38, scope: !1705)
!1709 = !DILocation(line: 456, column: 41, scope: !1705)
!1710 = !DILocation(line: 456, column: 52, scope: !1705)
!1711 = !DILocation(line: 455, column: 19, scope: !1703)
!1712 = !DILocation(line: 457, column: 25, scope: !1705)
!1713 = !DILocation(line: 457, column: 17, scope: !1705)
!1714 = !DILocation(line: 464, column: 25, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1705, file: !405, line: 458, column: 19)
!1716 = !DILocation(line: 468, column: 21, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !405, line: 468, column: 21)
!1718 = distinct !DILexicalBlock(scope: !1715, file: !405, line: 468, column: 21)
!1719 = !DILocation(line: 468, column: 21, scope: !1718)
!1720 = !DILocation(line: 469, column: 21, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !405, line: 469, column: 21)
!1722 = distinct !DILexicalBlock(scope: !1715, file: !405, line: 469, column: 21)
!1723 = !DILocation(line: 469, column: 21, scope: !1722)
!1724 = !DILocation(line: 470, column: 21, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !405, line: 470, column: 21)
!1726 = distinct !DILexicalBlock(scope: !1715, file: !405, line: 470, column: 21)
!1727 = !DILocation(line: 470, column: 21, scope: !1726)
!1728 = !DILocation(line: 471, column: 21, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !405, line: 471, column: 21)
!1730 = distinct !DILexicalBlock(scope: !1715, file: !405, line: 471, column: 21)
!1731 = !DILocation(line: 471, column: 21, scope: !1730)
!1732 = !DILocation(line: 472, column: 21, scope: !1715)
!1733 = !DILocation(line: 482, column: 33, scope: !1493)
!1734 = !DILocation(line: 483, column: 33, scope: !1493)
!1735 = !DILocation(line: 485, column: 33, scope: !1493)
!1736 = !DILocation(line: 486, column: 33, scope: !1493)
!1737 = !DILocation(line: 487, column: 33, scope: !1493)
!1738 = !DILocation(line: 490, column: 17, scope: !1493)
!1739 = !DILocation(line: 492, column: 21, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !405, line: 491, column: 15)
!1741 = distinct !DILexicalBlock(scope: !1493, file: !405, line: 490, column: 17)
!1742 = !DILocation(line: 499, column: 35, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1493, file: !405, line: 499, column: 17)
!1744 = !DILocation(line: 499, column: 57, scope: !1743)
!1745 = !DILocation(line: 0, scope: !1493)
!1746 = !DILocation(line: 502, column: 11, scope: !1493)
!1747 = !DILocation(line: 504, column: 17, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1493, file: !405, line: 503, column: 17)
!1749 = !DILocation(line: 507, column: 11, scope: !1493)
!1750 = !DILocation(line: 508, column: 17, scope: !1493)
!1751 = !DILocation(line: 517, column: 15, scope: !1494)
!1752 = !DILocation(line: 517, column: 40, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1494, file: !405, line: 517, column: 15)
!1754 = !DILocation(line: 517, column: 47, scope: !1753)
!1755 = !DILocation(line: 517, column: 18, scope: !1753)
!1756 = !DILocation(line: 521, column: 17, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1494, file: !405, line: 521, column: 15)
!1758 = !DILocation(line: 521, column: 15, scope: !1494)
!1759 = !DILocation(line: 525, column: 11, scope: !1494)
!1760 = !DILocation(line: 537, column: 15, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1494, file: !405, line: 536, column: 15)
!1762 = !DILocation(line: 544, column: 15, scope: !1494)
!1763 = !DILocation(line: 546, column: 19, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !405, line: 545, column: 13)
!1765 = distinct !DILexicalBlock(scope: !1494, file: !405, line: 544, column: 15)
!1766 = !DILocation(line: 549, column: 19, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1764, file: !405, line: 549, column: 19)
!1768 = !DILocation(line: 549, column: 30, scope: !1767)
!1769 = !DILocation(line: 558, column: 15, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !405, line: 558, column: 15)
!1771 = distinct !DILexicalBlock(scope: !1764, file: !405, line: 558, column: 15)
!1772 = !DILocation(line: 558, column: 15, scope: !1771)
!1773 = !DILocation(line: 559, column: 15, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !405, line: 559, column: 15)
!1775 = distinct !DILexicalBlock(scope: !1764, file: !405, line: 559, column: 15)
!1776 = !DILocation(line: 559, column: 15, scope: !1775)
!1777 = !DILocation(line: 560, column: 15, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !405, line: 560, column: 15)
!1779 = distinct !DILexicalBlock(scope: !1764, file: !405, line: 560, column: 15)
!1780 = !DILocation(line: 560, column: 15, scope: !1779)
!1781 = !DILocation(line: 562, column: 13, scope: !1764)
!1782 = !DILocation(line: 602, column: 17, scope: !1497)
!1783 = !DILocation(line: 0, scope: !1497)
!1784 = !DILocation(line: 605, column: 29, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1501, file: !405, line: 603, column: 15)
!1786 = !DILocation(line: 605, column: 27, scope: !1785)
!1787 = !DILocation(line: 606, column: 15, scope: !1785)
!1788 = !DILocation(line: 609, column: 17, scope: !1500)
!1789 = !DILocation(line: 0, scope: !1560, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 609, column: 32, scope: !1500)
!1791 = !DILocation(line: 0, scope: !1568, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 1137, column: 3, scope: !1560, inlinedAt: !1790)
!1793 = !DILocation(line: 59, column: 10, scope: !1568, inlinedAt: !1792)
!1794 = !DILocation(line: 613, column: 29, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1500, file: !405, line: 613, column: 21)
!1796 = !DILocation(line: 613, column: 21, scope: !1500)
!1797 = !DILocation(line: 614, column: 29, scope: !1795)
!1798 = !DILocation(line: 614, column: 19, scope: !1795)
!1799 = !DILocation(line: 618, column: 21, scope: !1503)
!1800 = !DILocation(line: 620, column: 54, scope: !1503)
!1801 = !DILocation(line: 619, column: 36, scope: !1503)
!1802 = !DILocation(line: 621, column: 25, scope: !1503)
!1803 = !DILocation(line: 631, column: 38, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1512, file: !405, line: 629, column: 23)
!1805 = !DILocation(line: 631, column: 48, scope: !1804)
!1806 = !DILocation(line: 626, column: 25, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1513, file: !405, line: 624, column: 23)
!1808 = !DILocation(line: 631, column: 51, scope: !1804)
!1809 = !DILocation(line: 631, column: 25, scope: !1804)
!1810 = !DILocation(line: 632, column: 28, scope: !1804)
!1811 = !DILocation(line: 631, column: 34, scope: !1804)
!1812 = distinct !{!1812, !1809, !1810, !787}
!1813 = !DILocation(line: 0, scope: !1508)
!1814 = !DILocation(line: 646, column: 29, scope: !1510)
!1815 = !DILocation(line: 649, column: 39, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1508, file: !405, line: 648, column: 29)
!1817 = !DILocation(line: 649, column: 31, scope: !1816)
!1818 = !DILocation(line: 648, column: 60, scope: !1816)
!1819 = !DILocation(line: 648, column: 50, scope: !1816)
!1820 = !DILocation(line: 648, column: 29, scope: !1508)
!1821 = distinct !{!1821, !1820, !1822, !787}
!1822 = !DILocation(line: 654, column: 33, scope: !1508)
!1823 = !DILocation(line: 657, column: 43, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1511, file: !405, line: 657, column: 29)
!1825 = !DILocalVariable(name: "wc", arg: 1, scope: !1826, file: !1827, line: 865, type: !1830)
!1826 = distinct !DISubprogram(name: "c32isprint", scope: !1827, file: !1827, line: 865, type: !1828, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1832)
!1827 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!99, !1830}
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1831, line: 20, baseType: !82)
!1831 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1832 = !{!1825}
!1833 = !DILocation(line: 0, scope: !1826, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 657, column: 31, scope: !1824)
!1835 = !DILocation(line: 871, column: 10, scope: !1826, inlinedAt: !1834)
!1836 = !DILocation(line: 657, column: 31, scope: !1824)
!1837 = !DILocation(line: 664, column: 23, scope: !1503)
!1838 = !DILocation(line: 665, column: 19, scope: !1504)
!1839 = !DILocation(line: 666, column: 15, scope: !1501)
!1840 = !DILocation(line: 0, scope: !1501)
!1841 = !DILocation(line: 670, column: 19, scope: !1517)
!1842 = !DILocation(line: 670, column: 23, scope: !1517)
!1843 = !DILocation(line: 674, column: 33, scope: !1516)
!1844 = !DILocation(line: 0, scope: !1516)
!1845 = !DILocation(line: 676, column: 17, scope: !1516)
!1846 = !DILocation(line: 398, column: 12, scope: !1487)
!1847 = !DILocation(line: 678, column: 43, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !405, line: 678, column: 25)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !405, line: 677, column: 19)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !405, line: 676, column: 17)
!1851 = distinct !DILexicalBlock(scope: !1516, file: !405, line: 676, column: 17)
!1852 = !DILocation(line: 680, column: 25, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !405, line: 680, column: 25)
!1854 = distinct !DILexicalBlock(scope: !1848, file: !405, line: 679, column: 23)
!1855 = !DILocation(line: 680, column: 25, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1853, file: !405, line: 680, column: 25)
!1857 = !DILocation(line: 680, column: 25, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !405, line: 680, column: 25)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !405, line: 680, column: 25)
!1860 = distinct !DILexicalBlock(scope: !1856, file: !405, line: 680, column: 25)
!1861 = !DILocation(line: 680, column: 25, scope: !1859)
!1862 = !DILocation(line: 680, column: 25, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !405, line: 680, column: 25)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !405, line: 680, column: 25)
!1865 = !DILocation(line: 680, column: 25, scope: !1864)
!1866 = !DILocation(line: 680, column: 25, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !405, line: 680, column: 25)
!1868 = distinct !DILexicalBlock(scope: !1860, file: !405, line: 680, column: 25)
!1869 = !DILocation(line: 680, column: 25, scope: !1868)
!1870 = !DILocation(line: 680, column: 25, scope: !1860)
!1871 = !DILocation(line: 680, column: 25, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !405, line: 680, column: 25)
!1873 = distinct !DILexicalBlock(scope: !1853, file: !405, line: 680, column: 25)
!1874 = !DILocation(line: 680, column: 25, scope: !1873)
!1875 = !DILocation(line: 681, column: 25, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !405, line: 681, column: 25)
!1877 = distinct !DILexicalBlock(scope: !1854, file: !405, line: 681, column: 25)
!1878 = !DILocation(line: 681, column: 25, scope: !1877)
!1879 = !DILocation(line: 682, column: 25, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !405, line: 682, column: 25)
!1881 = distinct !DILexicalBlock(scope: !1854, file: !405, line: 682, column: 25)
!1882 = !DILocation(line: 682, column: 25, scope: !1881)
!1883 = !DILocation(line: 683, column: 38, scope: !1854)
!1884 = !DILocation(line: 683, column: 33, scope: !1854)
!1885 = !DILocation(line: 684, column: 23, scope: !1854)
!1886 = !DILocation(line: 685, column: 30, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1848, file: !405, line: 685, column: 30)
!1888 = !DILocation(line: 685, column: 30, scope: !1848)
!1889 = !DILocation(line: 687, column: 25, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !405, line: 687, column: 25)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !405, line: 687, column: 25)
!1892 = distinct !DILexicalBlock(scope: !1887, file: !405, line: 686, column: 23)
!1893 = !DILocation(line: 687, column: 25, scope: !1891)
!1894 = !DILocation(line: 689, column: 23, scope: !1892)
!1895 = !DILocation(line: 690, column: 35, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1849, file: !405, line: 690, column: 25)
!1897 = !DILocation(line: 690, column: 30, scope: !1896)
!1898 = !DILocation(line: 690, column: 25, scope: !1849)
!1899 = !DILocation(line: 692, column: 21, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !405, line: 692, column: 21)
!1901 = distinct !DILexicalBlock(scope: !1849, file: !405, line: 692, column: 21)
!1902 = !DILocation(line: 692, column: 21, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !405, line: 692, column: 21)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !405, line: 692, column: 21)
!1905 = distinct !DILexicalBlock(scope: !1900, file: !405, line: 692, column: 21)
!1906 = !DILocation(line: 692, column: 21, scope: !1904)
!1907 = !DILocation(line: 692, column: 21, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !405, line: 692, column: 21)
!1909 = distinct !DILexicalBlock(scope: !1905, file: !405, line: 692, column: 21)
!1910 = !DILocation(line: 692, column: 21, scope: !1909)
!1911 = !DILocation(line: 692, column: 21, scope: !1905)
!1912 = !DILocation(line: 0, scope: !1849)
!1913 = !DILocation(line: 693, column: 21, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !405, line: 693, column: 21)
!1915 = distinct !DILexicalBlock(scope: !1849, file: !405, line: 693, column: 21)
!1916 = !DILocation(line: 693, column: 21, scope: !1915)
!1917 = !DILocation(line: 694, column: 25, scope: !1849)
!1918 = !DILocation(line: 676, column: 17, scope: !1850)
!1919 = distinct !{!1919, !1920, !1921}
!1920 = !DILocation(line: 676, column: 17, scope: !1851)
!1921 = !DILocation(line: 695, column: 19, scope: !1851)
!1922 = !DILocation(line: 409, column: 30, scope: !1638)
!1923 = !DILocation(line: 702, column: 34, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1487, file: !405, line: 702, column: 11)
!1925 = !DILocation(line: 704, column: 14, scope: !1924)
!1926 = !DILocation(line: 705, column: 14, scope: !1924)
!1927 = !DILocation(line: 705, column: 35, scope: !1924)
!1928 = !DILocation(line: 705, column: 17, scope: !1924)
!1929 = !DILocation(line: 705, column: 47, scope: !1924)
!1930 = !DILocation(line: 705, column: 65, scope: !1924)
!1931 = !DILocation(line: 706, column: 11, scope: !1924)
!1932 = !DILocation(line: 702, column: 11, scope: !1487)
!1933 = !DILocation(line: 395, column: 15, scope: !1485)
!1934 = !DILocation(line: 709, column: 5, scope: !1487)
!1935 = !DILocation(line: 710, column: 7, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1487, file: !405, line: 710, column: 7)
!1937 = !DILocation(line: 710, column: 7, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1936, file: !405, line: 710, column: 7)
!1939 = !DILocation(line: 710, column: 7, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !405, line: 710, column: 7)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !405, line: 710, column: 7)
!1942 = distinct !DILexicalBlock(scope: !1938, file: !405, line: 710, column: 7)
!1943 = !DILocation(line: 710, column: 7, scope: !1941)
!1944 = !DILocation(line: 710, column: 7, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !405, line: 710, column: 7)
!1946 = distinct !DILexicalBlock(scope: !1942, file: !405, line: 710, column: 7)
!1947 = !DILocation(line: 710, column: 7, scope: !1946)
!1948 = !DILocation(line: 710, column: 7, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !405, line: 710, column: 7)
!1950 = distinct !DILexicalBlock(scope: !1942, file: !405, line: 710, column: 7)
!1951 = !DILocation(line: 710, column: 7, scope: !1950)
!1952 = !DILocation(line: 710, column: 7, scope: !1942)
!1953 = !DILocation(line: 710, column: 7, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !405, line: 710, column: 7)
!1955 = distinct !DILexicalBlock(scope: !1936, file: !405, line: 710, column: 7)
!1956 = !DILocation(line: 710, column: 7, scope: !1955)
!1957 = !DILocation(line: 712, column: 5, scope: !1487)
!1958 = !DILocation(line: 713, column: 7, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !405, line: 713, column: 7)
!1960 = distinct !DILexicalBlock(scope: !1487, file: !405, line: 713, column: 7)
!1961 = !DILocation(line: 417, column: 21, scope: !1487)
!1962 = !DILocation(line: 713, column: 7, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !405, line: 713, column: 7)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !405, line: 713, column: 7)
!1965 = distinct !DILexicalBlock(scope: !1959, file: !405, line: 713, column: 7)
!1966 = !DILocation(line: 713, column: 7, scope: !1964)
!1967 = !DILocation(line: 713, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !405, line: 713, column: 7)
!1969 = distinct !DILexicalBlock(scope: !1965, file: !405, line: 713, column: 7)
!1970 = !DILocation(line: 713, column: 7, scope: !1969)
!1971 = !DILocation(line: 713, column: 7, scope: !1965)
!1972 = !DILocation(line: 714, column: 7, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !405, line: 714, column: 7)
!1974 = distinct !DILexicalBlock(scope: !1487, file: !405, line: 714, column: 7)
!1975 = !DILocation(line: 714, column: 7, scope: !1974)
!1976 = !DILocation(line: 716, column: 13, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1487, file: !405, line: 716, column: 11)
!1978 = !DILocation(line: 716, column: 11, scope: !1487)
!1979 = !DILocation(line: 718, column: 5, scope: !1488)
!1980 = !DILocation(line: 395, column: 82, scope: !1488)
!1981 = !DILocation(line: 395, column: 3, scope: !1488)
!1982 = distinct !{!1982, !1634, !1983, !787}
!1983 = !DILocation(line: 718, column: 5, scope: !1485)
!1984 = !DILocation(line: 720, column: 11, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1453, file: !405, line: 720, column: 7)
!1986 = !DILocation(line: 720, column: 16, scope: !1985)
!1987 = !DILocation(line: 728, column: 51, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1453, file: !405, line: 728, column: 7)
!1989 = !DILocation(line: 731, column: 11, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !405, line: 731, column: 11)
!1991 = distinct !DILexicalBlock(scope: !1988, file: !405, line: 730, column: 5)
!1992 = !DILocation(line: 731, column: 11, scope: !1991)
!1993 = !DILocation(line: 732, column: 16, scope: !1990)
!1994 = !DILocation(line: 732, column: 9, scope: !1990)
!1995 = !DILocation(line: 736, column: 18, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1990, file: !405, line: 736, column: 16)
!1997 = !DILocation(line: 736, column: 29, scope: !1996)
!1998 = !DILocation(line: 745, column: 7, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1453, file: !405, line: 745, column: 7)
!2000 = !DILocation(line: 745, column: 20, scope: !1999)
!2001 = !DILocation(line: 746, column: 12, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !405, line: 746, column: 5)
!2003 = distinct !DILexicalBlock(scope: !1999, file: !405, line: 746, column: 5)
!2004 = !DILocation(line: 746, column: 5, scope: !2003)
!2005 = !DILocation(line: 747, column: 7, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !405, line: 747, column: 7)
!2007 = distinct !DILexicalBlock(scope: !2002, file: !405, line: 747, column: 7)
!2008 = !DILocation(line: 747, column: 7, scope: !2007)
!2009 = !DILocation(line: 746, column: 39, scope: !2002)
!2010 = distinct !{!2010, !2004, !2011, !787}
!2011 = !DILocation(line: 747, column: 7, scope: !2003)
!2012 = !DILocation(line: 749, column: 11, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1453, file: !405, line: 749, column: 7)
!2014 = !DILocation(line: 749, column: 7, scope: !1453)
!2015 = !DILocation(line: 750, column: 5, scope: !2013)
!2016 = !DILocation(line: 750, column: 17, scope: !2013)
!2017 = !DILocation(line: 753, column: 2, scope: !1453)
!2018 = !DILocation(line: 756, column: 51, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1453, file: !405, line: 756, column: 7)
!2020 = !DILocation(line: 756, column: 21, scope: !2019)
!2021 = !DILocation(line: 760, column: 42, scope: !1453)
!2022 = !DILocation(line: 758, column: 10, scope: !1453)
!2023 = !DILocation(line: 758, column: 3, scope: !1453)
!2024 = !DILocation(line: 762, column: 1, scope: !1453)
!2025 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !888, file: !888, line: 98, type: !2026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!101}
!2028 = !DISubprogram(name: "strlen", scope: !894, file: !894, line: 407, type: !2029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!103, !75}
!2031 = !DISubprogram(name: "iswprint", scope: !2032, file: !2032, line: 120, type: !1828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2032 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2033 = distinct !DISubprogram(name: "quotearg_alloc", scope: !405, file: !405, line: 788, type: !2034, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2036)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!97, !75, !101, !1346}
!2036 = !{!2037, !2038, !2039}
!2037 = !DILocalVariable(name: "arg", arg: 1, scope: !2033, file: !405, line: 788, type: !75)
!2038 = !DILocalVariable(name: "argsize", arg: 2, scope: !2033, file: !405, line: 788, type: !101)
!2039 = !DILocalVariable(name: "o", arg: 3, scope: !2033, file: !405, line: 789, type: !1346)
!2040 = !DILocation(line: 0, scope: !2033)
!2041 = !DILocalVariable(name: "arg", arg: 1, scope: !2042, file: !405, line: 801, type: !75)
!2042 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !405, file: !405, line: 801, type: !2043, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2045)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!97, !75, !101, !656, !1346}
!2045 = !{!2041, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053}
!2046 = !DILocalVariable(name: "argsize", arg: 2, scope: !2042, file: !405, line: 801, type: !101)
!2047 = !DILocalVariable(name: "size", arg: 3, scope: !2042, file: !405, line: 801, type: !656)
!2048 = !DILocalVariable(name: "o", arg: 4, scope: !2042, file: !405, line: 802, type: !1346)
!2049 = !DILocalVariable(name: "p", scope: !2042, file: !405, line: 804, type: !1346)
!2050 = !DILocalVariable(name: "saved_errno", scope: !2042, file: !405, line: 805, type: !99)
!2051 = !DILocalVariable(name: "flags", scope: !2042, file: !405, line: 807, type: !99)
!2052 = !DILocalVariable(name: "bufsize", scope: !2042, file: !405, line: 808, type: !101)
!2053 = !DILocalVariable(name: "buf", scope: !2042, file: !405, line: 812, type: !97)
!2054 = !DILocation(line: 0, scope: !2042, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 791, column: 10, scope: !2033)
!2056 = !DILocation(line: 804, column: 37, scope: !2042, inlinedAt: !2055)
!2057 = !DILocation(line: 805, column: 21, scope: !2042, inlinedAt: !2055)
!2058 = !DILocation(line: 807, column: 18, scope: !2042, inlinedAt: !2055)
!2059 = !DILocation(line: 807, column: 24, scope: !2042, inlinedAt: !2055)
!2060 = !DILocation(line: 808, column: 72, scope: !2042, inlinedAt: !2055)
!2061 = !DILocation(line: 809, column: 56, scope: !2042, inlinedAt: !2055)
!2062 = !DILocation(line: 810, column: 49, scope: !2042, inlinedAt: !2055)
!2063 = !DILocation(line: 811, column: 49, scope: !2042, inlinedAt: !2055)
!2064 = !DILocation(line: 808, column: 20, scope: !2042, inlinedAt: !2055)
!2065 = !DILocation(line: 811, column: 62, scope: !2042, inlinedAt: !2055)
!2066 = !DILocation(line: 812, column: 15, scope: !2042, inlinedAt: !2055)
!2067 = !DILocation(line: 813, column: 60, scope: !2042, inlinedAt: !2055)
!2068 = !DILocation(line: 815, column: 32, scope: !2042, inlinedAt: !2055)
!2069 = !DILocation(line: 815, column: 47, scope: !2042, inlinedAt: !2055)
!2070 = !DILocation(line: 813, column: 3, scope: !2042, inlinedAt: !2055)
!2071 = !DILocation(line: 816, column: 9, scope: !2042, inlinedAt: !2055)
!2072 = !DILocation(line: 791, column: 3, scope: !2033)
!2073 = !DILocation(line: 0, scope: !2042)
!2074 = !DILocation(line: 804, column: 37, scope: !2042)
!2075 = !DILocation(line: 805, column: 21, scope: !2042)
!2076 = !DILocation(line: 807, column: 18, scope: !2042)
!2077 = !DILocation(line: 807, column: 27, scope: !2042)
!2078 = !DILocation(line: 807, column: 24, scope: !2042)
!2079 = !DILocation(line: 808, column: 72, scope: !2042)
!2080 = !DILocation(line: 809, column: 56, scope: !2042)
!2081 = !DILocation(line: 810, column: 49, scope: !2042)
!2082 = !DILocation(line: 811, column: 49, scope: !2042)
!2083 = !DILocation(line: 808, column: 20, scope: !2042)
!2084 = !DILocation(line: 811, column: 62, scope: !2042)
!2085 = !DILocation(line: 812, column: 15, scope: !2042)
!2086 = !DILocation(line: 813, column: 60, scope: !2042)
!2087 = !DILocation(line: 815, column: 32, scope: !2042)
!2088 = !DILocation(line: 815, column: 47, scope: !2042)
!2089 = !DILocation(line: 813, column: 3, scope: !2042)
!2090 = !DILocation(line: 816, column: 9, scope: !2042)
!2091 = !DILocation(line: 817, column: 7, scope: !2042)
!2092 = !DILocation(line: 818, column: 11, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2042, file: !405, line: 817, column: 7)
!2094 = !{!1157, !1157, i64 0}
!2095 = !DILocation(line: 818, column: 5, scope: !2093)
!2096 = !DILocation(line: 819, column: 3, scope: !2042)
!2097 = distinct !DISubprogram(name: "quotearg_free", scope: !405, file: !405, line: 837, type: !360, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2098)
!2098 = !{!2099, !2100}
!2099 = !DILocalVariable(name: "sv", scope: !2097, file: !405, line: 839, type: !503)
!2100 = !DILocalVariable(name: "i", scope: !2101, file: !405, line: 840, type: !99)
!2101 = distinct !DILexicalBlock(scope: !2097, file: !405, line: 840, column: 3)
!2102 = !DILocation(line: 839, column: 24, scope: !2097)
!2103 = !DILocation(line: 0, scope: !2097)
!2104 = !DILocation(line: 0, scope: !2101)
!2105 = !DILocation(line: 840, column: 21, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2101, file: !405, line: 840, column: 3)
!2107 = !DILocation(line: 840, column: 3, scope: !2101)
!2108 = !DILocation(line: 842, column: 13, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2097, file: !405, line: 842, column: 7)
!2110 = !{!2111, !720, i64 8}
!2111 = !{!"slotvec", !1157, i64 0, !720, i64 8}
!2112 = !DILocation(line: 842, column: 17, scope: !2109)
!2113 = !DILocation(line: 842, column: 7, scope: !2097)
!2114 = !DILocation(line: 841, column: 17, scope: !2106)
!2115 = !DILocation(line: 841, column: 5, scope: !2106)
!2116 = !DILocation(line: 840, column: 32, scope: !2106)
!2117 = distinct !{!2117, !2107, !2118, !787}
!2118 = !DILocation(line: 841, column: 20, scope: !2101)
!2119 = !DILocation(line: 844, column: 7, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2109, file: !405, line: 843, column: 5)
!2121 = !DILocation(line: 845, column: 21, scope: !2120)
!2122 = !{!2111, !1157, i64 0}
!2123 = !DILocation(line: 846, column: 20, scope: !2120)
!2124 = !DILocation(line: 847, column: 5, scope: !2120)
!2125 = !DILocation(line: 848, column: 10, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2097, file: !405, line: 848, column: 7)
!2127 = !DILocation(line: 848, column: 7, scope: !2097)
!2128 = !DILocation(line: 850, column: 7, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2126, file: !405, line: 849, column: 5)
!2130 = !DILocation(line: 851, column: 15, scope: !2129)
!2131 = !DILocation(line: 852, column: 5, scope: !2129)
!2132 = !DILocation(line: 853, column: 10, scope: !2097)
!2133 = !DILocation(line: 854, column: 1, scope: !2097)
!2134 = !DISubprogram(name: "free", scope: !1300, file: !1300, line: 786, type: !2135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null, !98}
!2137 = distinct !DISubprogram(name: "quotearg_n", scope: !405, file: !405, line: 919, type: !891, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2138)
!2138 = !{!2139, !2140}
!2139 = !DILocalVariable(name: "n", arg: 1, scope: !2137, file: !405, line: 919, type: !99)
!2140 = !DILocalVariable(name: "arg", arg: 2, scope: !2137, file: !405, line: 919, type: !75)
!2141 = !DILocation(line: 0, scope: !2137)
!2142 = !DILocation(line: 921, column: 10, scope: !2137)
!2143 = !DILocation(line: 921, column: 3, scope: !2137)
!2144 = distinct !DISubprogram(name: "quotearg_n_options", scope: !405, file: !405, line: 866, type: !2145, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!97, !99, !75, !101, !1346}
!2147 = !{!2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2158, !2159, !2161, !2162, !2163}
!2148 = !DILocalVariable(name: "n", arg: 1, scope: !2144, file: !405, line: 866, type: !99)
!2149 = !DILocalVariable(name: "arg", arg: 2, scope: !2144, file: !405, line: 866, type: !75)
!2150 = !DILocalVariable(name: "argsize", arg: 3, scope: !2144, file: !405, line: 866, type: !101)
!2151 = !DILocalVariable(name: "options", arg: 4, scope: !2144, file: !405, line: 867, type: !1346)
!2152 = !DILocalVariable(name: "saved_errno", scope: !2144, file: !405, line: 869, type: !99)
!2153 = !DILocalVariable(name: "sv", scope: !2144, file: !405, line: 871, type: !503)
!2154 = !DILocalVariable(name: "nslots_max", scope: !2144, file: !405, line: 873, type: !99)
!2155 = !DILocalVariable(name: "preallocated", scope: !2156, file: !405, line: 879, type: !218)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !405, line: 878, column: 5)
!2157 = distinct !DILexicalBlock(scope: !2144, file: !405, line: 877, column: 7)
!2158 = !DILocalVariable(name: "new_nslots", scope: !2156, file: !405, line: 880, type: !669)
!2159 = !DILocalVariable(name: "size", scope: !2160, file: !405, line: 891, type: !101)
!2160 = distinct !DILexicalBlock(scope: !2144, file: !405, line: 890, column: 3)
!2161 = !DILocalVariable(name: "val", scope: !2160, file: !405, line: 892, type: !97)
!2162 = !DILocalVariable(name: "flags", scope: !2160, file: !405, line: 894, type: !99)
!2163 = !DILocalVariable(name: "qsize", scope: !2160, file: !405, line: 895, type: !101)
!2164 = distinct !DIAssignID()
!2165 = !DILocation(line: 0, scope: !2156)
!2166 = !DILocation(line: 0, scope: !2144)
!2167 = !DILocation(line: 869, column: 21, scope: !2144)
!2168 = !DILocation(line: 871, column: 24, scope: !2144)
!2169 = !DILocation(line: 874, column: 17, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2144, file: !405, line: 874, column: 7)
!2171 = !DILocation(line: 875, column: 5, scope: !2170)
!2172 = !DILocation(line: 877, column: 7, scope: !2157)
!2173 = !DILocation(line: 877, column: 14, scope: !2157)
!2174 = !DILocation(line: 877, column: 7, scope: !2144)
!2175 = !DILocation(line: 879, column: 31, scope: !2156)
!2176 = !DILocation(line: 880, column: 7, scope: !2156)
!2177 = !DILocation(line: 880, column: 26, scope: !2156)
!2178 = !DILocation(line: 880, column: 13, scope: !2156)
!2179 = distinct !DIAssignID()
!2180 = !DILocation(line: 882, column: 31, scope: !2156)
!2181 = !DILocation(line: 883, column: 33, scope: !2156)
!2182 = !DILocation(line: 883, column: 42, scope: !2156)
!2183 = !DILocation(line: 883, column: 31, scope: !2156)
!2184 = !DILocation(line: 882, column: 22, scope: !2156)
!2185 = !DILocation(line: 882, column: 15, scope: !2156)
!2186 = !DILocation(line: 884, column: 11, scope: !2156)
!2187 = !DILocation(line: 885, column: 15, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2156, file: !405, line: 884, column: 11)
!2189 = !{i64 0, i64 8, !2094, i64 8, i64 8, !719}
!2190 = !DILocation(line: 885, column: 9, scope: !2188)
!2191 = !DILocation(line: 886, column: 20, scope: !2156)
!2192 = !DILocation(line: 886, column: 18, scope: !2156)
!2193 = !DILocation(line: 886, column: 32, scope: !2156)
!2194 = !DILocation(line: 886, column: 43, scope: !2156)
!2195 = !DILocation(line: 886, column: 53, scope: !2156)
!2196 = !DILocation(line: 0, scope: !1568, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 886, column: 7, scope: !2156)
!2198 = !DILocation(line: 59, column: 10, scope: !1568, inlinedAt: !2197)
!2199 = !DILocation(line: 887, column: 16, scope: !2156)
!2200 = !DILocation(line: 887, column: 14, scope: !2156)
!2201 = !DILocation(line: 888, column: 5, scope: !2157)
!2202 = !DILocation(line: 888, column: 5, scope: !2156)
!2203 = !DILocation(line: 891, column: 19, scope: !2160)
!2204 = !DILocation(line: 891, column: 25, scope: !2160)
!2205 = !DILocation(line: 0, scope: !2160)
!2206 = !DILocation(line: 892, column: 23, scope: !2160)
!2207 = !DILocation(line: 894, column: 26, scope: !2160)
!2208 = !DILocation(line: 894, column: 32, scope: !2160)
!2209 = !DILocation(line: 896, column: 55, scope: !2160)
!2210 = !DILocation(line: 897, column: 55, scope: !2160)
!2211 = !DILocation(line: 898, column: 55, scope: !2160)
!2212 = !DILocation(line: 899, column: 55, scope: !2160)
!2213 = !DILocation(line: 895, column: 20, scope: !2160)
!2214 = !DILocation(line: 901, column: 14, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2160, file: !405, line: 901, column: 9)
!2216 = !DILocation(line: 901, column: 9, scope: !2160)
!2217 = !DILocation(line: 903, column: 35, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2215, file: !405, line: 902, column: 7)
!2219 = !DILocation(line: 903, column: 20, scope: !2218)
!2220 = !DILocation(line: 904, column: 17, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2218, file: !405, line: 904, column: 13)
!2222 = !DILocation(line: 904, column: 13, scope: !2218)
!2223 = !DILocation(line: 905, column: 11, scope: !2221)
!2224 = !DILocation(line: 906, column: 27, scope: !2218)
!2225 = !DILocation(line: 906, column: 19, scope: !2218)
!2226 = !DILocation(line: 907, column: 69, scope: !2218)
!2227 = !DILocation(line: 909, column: 44, scope: !2218)
!2228 = !DILocation(line: 910, column: 44, scope: !2218)
!2229 = !DILocation(line: 907, column: 9, scope: !2218)
!2230 = !DILocation(line: 911, column: 7, scope: !2218)
!2231 = !DILocation(line: 913, column: 11, scope: !2160)
!2232 = !DILocation(line: 914, column: 5, scope: !2160)
!2233 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !405, file: !405, line: 925, type: !2234, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2236)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!97, !99, !75, !101}
!2236 = !{!2237, !2238, !2239}
!2237 = !DILocalVariable(name: "n", arg: 1, scope: !2233, file: !405, line: 925, type: !99)
!2238 = !DILocalVariable(name: "arg", arg: 2, scope: !2233, file: !405, line: 925, type: !75)
!2239 = !DILocalVariable(name: "argsize", arg: 3, scope: !2233, file: !405, line: 925, type: !101)
!2240 = !DILocation(line: 0, scope: !2233)
!2241 = !DILocation(line: 927, column: 10, scope: !2233)
!2242 = !DILocation(line: 927, column: 3, scope: !2233)
!2243 = distinct !DISubprogram(name: "quotearg", scope: !405, file: !405, line: 931, type: !903, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2244)
!2244 = !{!2245}
!2245 = !DILocalVariable(name: "arg", arg: 1, scope: !2243, file: !405, line: 931, type: !75)
!2246 = !DILocation(line: 0, scope: !2243)
!2247 = !DILocation(line: 0, scope: !2137, inlinedAt: !2248)
!2248 = distinct !DILocation(line: 933, column: 10, scope: !2243)
!2249 = !DILocation(line: 921, column: 10, scope: !2137, inlinedAt: !2248)
!2250 = !DILocation(line: 933, column: 3, scope: !2243)
!2251 = distinct !DISubprogram(name: "quotearg_mem", scope: !405, file: !405, line: 937, type: !2252, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2254)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!97, !75, !101}
!2254 = !{!2255, !2256}
!2255 = !DILocalVariable(name: "arg", arg: 1, scope: !2251, file: !405, line: 937, type: !75)
!2256 = !DILocalVariable(name: "argsize", arg: 2, scope: !2251, file: !405, line: 937, type: !101)
!2257 = !DILocation(line: 0, scope: !2251)
!2258 = !DILocation(line: 0, scope: !2233, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 939, column: 10, scope: !2251)
!2260 = !DILocation(line: 927, column: 10, scope: !2233, inlinedAt: !2259)
!2261 = !DILocation(line: 939, column: 3, scope: !2251)
!2262 = distinct !DISubprogram(name: "quotearg_n_style", scope: !405, file: !405, line: 943, type: !2263, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2265)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!97, !99, !428, !75}
!2265 = !{!2266, !2267, !2268, !2269}
!2266 = !DILocalVariable(name: "n", arg: 1, scope: !2262, file: !405, line: 943, type: !99)
!2267 = !DILocalVariable(name: "s", arg: 2, scope: !2262, file: !405, line: 943, type: !428)
!2268 = !DILocalVariable(name: "arg", arg: 3, scope: !2262, file: !405, line: 943, type: !75)
!2269 = !DILocalVariable(name: "o", scope: !2262, file: !405, line: 945, type: !1347)
!2270 = distinct !DIAssignID()
!2271 = !DILocation(line: 0, scope: !2262)
!2272 = !DILocation(line: 945, column: 3, scope: !2262)
!2273 = !{!2274}
!2274 = distinct !{!2274, !2275, !"quoting_options_from_style: argument 0"}
!2275 = distinct !{!2275, !"quoting_options_from_style"}
!2276 = !DILocation(line: 945, column: 36, scope: !2262)
!2277 = !DILocalVariable(name: "style", arg: 1, scope: !2278, file: !405, line: 183, type: !428)
!2278 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !405, file: !405, line: 183, type: !2279, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2281)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!455, !428}
!2281 = !{!2277, !2282}
!2282 = !DILocalVariable(name: "o", scope: !2278, file: !405, line: 185, type: !455)
!2283 = !DILocation(line: 0, scope: !2278, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 945, column: 36, scope: !2262)
!2285 = !DILocation(line: 185, column: 26, scope: !2278, inlinedAt: !2284)
!2286 = distinct !DIAssignID()
!2287 = !DILocation(line: 186, column: 13, scope: !2288, inlinedAt: !2284)
!2288 = distinct !DILexicalBlock(scope: !2278, file: !405, line: 186, column: 7)
!2289 = !DILocation(line: 186, column: 7, scope: !2278, inlinedAt: !2284)
!2290 = !DILocation(line: 187, column: 5, scope: !2288, inlinedAt: !2284)
!2291 = !DILocation(line: 188, column: 11, scope: !2278, inlinedAt: !2284)
!2292 = distinct !DIAssignID()
!2293 = !DILocation(line: 946, column: 10, scope: !2262)
!2294 = !DILocation(line: 947, column: 1, scope: !2262)
!2295 = !DILocation(line: 946, column: 3, scope: !2262)
!2296 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !405, file: !405, line: 950, type: !2297, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2299)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!97, !99, !428, !75, !101}
!2299 = !{!2300, !2301, !2302, !2303, !2304}
!2300 = !DILocalVariable(name: "n", arg: 1, scope: !2296, file: !405, line: 950, type: !99)
!2301 = !DILocalVariable(name: "s", arg: 2, scope: !2296, file: !405, line: 950, type: !428)
!2302 = !DILocalVariable(name: "arg", arg: 3, scope: !2296, file: !405, line: 951, type: !75)
!2303 = !DILocalVariable(name: "argsize", arg: 4, scope: !2296, file: !405, line: 951, type: !101)
!2304 = !DILocalVariable(name: "o", scope: !2296, file: !405, line: 953, type: !1347)
!2305 = distinct !DIAssignID()
!2306 = !DILocation(line: 0, scope: !2296)
!2307 = !DILocation(line: 953, column: 3, scope: !2296)
!2308 = !{!2309}
!2309 = distinct !{!2309, !2310, !"quoting_options_from_style: argument 0"}
!2310 = distinct !{!2310, !"quoting_options_from_style"}
!2311 = !DILocation(line: 953, column: 36, scope: !2296)
!2312 = !DILocation(line: 0, scope: !2278, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 953, column: 36, scope: !2296)
!2314 = !DILocation(line: 185, column: 26, scope: !2278, inlinedAt: !2313)
!2315 = distinct !DIAssignID()
!2316 = !DILocation(line: 186, column: 13, scope: !2288, inlinedAt: !2313)
!2317 = !DILocation(line: 186, column: 7, scope: !2278, inlinedAt: !2313)
!2318 = !DILocation(line: 187, column: 5, scope: !2288, inlinedAt: !2313)
!2319 = !DILocation(line: 188, column: 11, scope: !2278, inlinedAt: !2313)
!2320 = distinct !DIAssignID()
!2321 = !DILocation(line: 954, column: 10, scope: !2296)
!2322 = !DILocation(line: 955, column: 1, scope: !2296)
!2323 = !DILocation(line: 954, column: 3, scope: !2296)
!2324 = distinct !DISubprogram(name: "quotearg_style", scope: !405, file: !405, line: 958, type: !2325, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2327)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!97, !428, !75}
!2327 = !{!2328, !2329}
!2328 = !DILocalVariable(name: "s", arg: 1, scope: !2324, file: !405, line: 958, type: !428)
!2329 = !DILocalVariable(name: "arg", arg: 2, scope: !2324, file: !405, line: 958, type: !75)
!2330 = distinct !DIAssignID()
!2331 = !DILocation(line: 0, scope: !2324)
!2332 = !DILocation(line: 0, scope: !2262, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 960, column: 10, scope: !2324)
!2334 = !DILocation(line: 945, column: 3, scope: !2262, inlinedAt: !2333)
!2335 = !{!2336}
!2336 = distinct !{!2336, !2337, !"quoting_options_from_style: argument 0"}
!2337 = distinct !{!2337, !"quoting_options_from_style"}
!2338 = !DILocation(line: 945, column: 36, scope: !2262, inlinedAt: !2333)
!2339 = !DILocation(line: 0, scope: !2278, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 945, column: 36, scope: !2262, inlinedAt: !2333)
!2341 = !DILocation(line: 185, column: 26, scope: !2278, inlinedAt: !2340)
!2342 = distinct !DIAssignID()
!2343 = !DILocation(line: 186, column: 13, scope: !2288, inlinedAt: !2340)
!2344 = !DILocation(line: 186, column: 7, scope: !2278, inlinedAt: !2340)
!2345 = !DILocation(line: 187, column: 5, scope: !2288, inlinedAt: !2340)
!2346 = !DILocation(line: 188, column: 11, scope: !2278, inlinedAt: !2340)
!2347 = distinct !DIAssignID()
!2348 = !DILocation(line: 946, column: 10, scope: !2262, inlinedAt: !2333)
!2349 = !DILocation(line: 947, column: 1, scope: !2262, inlinedAt: !2333)
!2350 = !DILocation(line: 960, column: 3, scope: !2324)
!2351 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !405, file: !405, line: 964, type: !2352, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2354)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!97, !428, !75, !101}
!2354 = !{!2355, !2356, !2357}
!2355 = !DILocalVariable(name: "s", arg: 1, scope: !2351, file: !405, line: 964, type: !428)
!2356 = !DILocalVariable(name: "arg", arg: 2, scope: !2351, file: !405, line: 964, type: !75)
!2357 = !DILocalVariable(name: "argsize", arg: 3, scope: !2351, file: !405, line: 964, type: !101)
!2358 = distinct !DIAssignID()
!2359 = !DILocation(line: 0, scope: !2351)
!2360 = !DILocation(line: 0, scope: !2296, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 966, column: 10, scope: !2351)
!2362 = !DILocation(line: 953, column: 3, scope: !2296, inlinedAt: !2361)
!2363 = !{!2364}
!2364 = distinct !{!2364, !2365, !"quoting_options_from_style: argument 0"}
!2365 = distinct !{!2365, !"quoting_options_from_style"}
!2366 = !DILocation(line: 953, column: 36, scope: !2296, inlinedAt: !2361)
!2367 = !DILocation(line: 0, scope: !2278, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 953, column: 36, scope: !2296, inlinedAt: !2361)
!2369 = !DILocation(line: 185, column: 26, scope: !2278, inlinedAt: !2368)
!2370 = distinct !DIAssignID()
!2371 = !DILocation(line: 186, column: 13, scope: !2288, inlinedAt: !2368)
!2372 = !DILocation(line: 186, column: 7, scope: !2278, inlinedAt: !2368)
!2373 = !DILocation(line: 187, column: 5, scope: !2288, inlinedAt: !2368)
!2374 = !DILocation(line: 188, column: 11, scope: !2278, inlinedAt: !2368)
!2375 = distinct !DIAssignID()
!2376 = !DILocation(line: 954, column: 10, scope: !2296, inlinedAt: !2361)
!2377 = !DILocation(line: 955, column: 1, scope: !2296, inlinedAt: !2361)
!2378 = !DILocation(line: 966, column: 3, scope: !2351)
!2379 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !405, file: !405, line: 970, type: !2380, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2382)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!97, !75, !101, !4}
!2382 = !{!2383, !2384, !2385, !2386}
!2383 = !DILocalVariable(name: "arg", arg: 1, scope: !2379, file: !405, line: 970, type: !75)
!2384 = !DILocalVariable(name: "argsize", arg: 2, scope: !2379, file: !405, line: 970, type: !101)
!2385 = !DILocalVariable(name: "ch", arg: 3, scope: !2379, file: !405, line: 970, type: !4)
!2386 = !DILocalVariable(name: "options", scope: !2379, file: !405, line: 972, type: !455)
!2387 = distinct !DIAssignID()
!2388 = !DILocation(line: 0, scope: !2379)
!2389 = !DILocation(line: 972, column: 3, scope: !2379)
!2390 = !DILocation(line: 973, column: 13, scope: !2379)
!2391 = !{i64 0, i64 4, !740, i64 4, i64 4, !740, i64 8, i64 32, !749, i64 40, i64 8, !719, i64 48, i64 8, !719}
!2392 = distinct !DIAssignID()
!2393 = !DILocation(line: 0, scope: !1366, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 974, column: 3, scope: !2379)
!2395 = !DILocation(line: 147, column: 41, scope: !1366, inlinedAt: !2394)
!2396 = !DILocation(line: 147, column: 62, scope: !1366, inlinedAt: !2394)
!2397 = !DILocation(line: 147, column: 57, scope: !1366, inlinedAt: !2394)
!2398 = !DILocation(line: 148, column: 15, scope: !1366, inlinedAt: !2394)
!2399 = !DILocation(line: 149, column: 21, scope: !1366, inlinedAt: !2394)
!2400 = !DILocation(line: 149, column: 24, scope: !1366, inlinedAt: !2394)
!2401 = !DILocation(line: 150, column: 19, scope: !1366, inlinedAt: !2394)
!2402 = !DILocation(line: 150, column: 24, scope: !1366, inlinedAt: !2394)
!2403 = !DILocation(line: 150, column: 6, scope: !1366, inlinedAt: !2394)
!2404 = !DILocation(line: 975, column: 10, scope: !2379)
!2405 = !DILocation(line: 976, column: 1, scope: !2379)
!2406 = !DILocation(line: 975, column: 3, scope: !2379)
!2407 = distinct !DISubprogram(name: "quotearg_char", scope: !405, file: !405, line: 979, type: !2408, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!97, !75, !4}
!2410 = !{!2411, !2412}
!2411 = !DILocalVariable(name: "arg", arg: 1, scope: !2407, file: !405, line: 979, type: !75)
!2412 = !DILocalVariable(name: "ch", arg: 2, scope: !2407, file: !405, line: 979, type: !4)
!2413 = distinct !DIAssignID()
!2414 = !DILocation(line: 0, scope: !2407)
!2415 = !DILocation(line: 0, scope: !2379, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 981, column: 10, scope: !2407)
!2417 = !DILocation(line: 972, column: 3, scope: !2379, inlinedAt: !2416)
!2418 = !DILocation(line: 973, column: 13, scope: !2379, inlinedAt: !2416)
!2419 = distinct !DIAssignID()
!2420 = !DILocation(line: 0, scope: !1366, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 974, column: 3, scope: !2379, inlinedAt: !2416)
!2422 = !DILocation(line: 147, column: 41, scope: !1366, inlinedAt: !2421)
!2423 = !DILocation(line: 147, column: 62, scope: !1366, inlinedAt: !2421)
!2424 = !DILocation(line: 147, column: 57, scope: !1366, inlinedAt: !2421)
!2425 = !DILocation(line: 148, column: 15, scope: !1366, inlinedAt: !2421)
!2426 = !DILocation(line: 149, column: 21, scope: !1366, inlinedAt: !2421)
!2427 = !DILocation(line: 149, column: 24, scope: !1366, inlinedAt: !2421)
!2428 = !DILocation(line: 150, column: 19, scope: !1366, inlinedAt: !2421)
!2429 = !DILocation(line: 150, column: 24, scope: !1366, inlinedAt: !2421)
!2430 = !DILocation(line: 150, column: 6, scope: !1366, inlinedAt: !2421)
!2431 = !DILocation(line: 975, column: 10, scope: !2379, inlinedAt: !2416)
!2432 = !DILocation(line: 976, column: 1, scope: !2379, inlinedAt: !2416)
!2433 = !DILocation(line: 981, column: 3, scope: !2407)
!2434 = distinct !DISubprogram(name: "quotearg_colon", scope: !405, file: !405, line: 985, type: !903, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2435)
!2435 = !{!2436}
!2436 = !DILocalVariable(name: "arg", arg: 1, scope: !2434, file: !405, line: 985, type: !75)
!2437 = distinct !DIAssignID()
!2438 = !DILocation(line: 0, scope: !2434)
!2439 = !DILocation(line: 0, scope: !2407, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 987, column: 10, scope: !2434)
!2441 = !DILocation(line: 0, scope: !2379, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 981, column: 10, scope: !2407, inlinedAt: !2440)
!2443 = !DILocation(line: 972, column: 3, scope: !2379, inlinedAt: !2442)
!2444 = !DILocation(line: 973, column: 13, scope: !2379, inlinedAt: !2442)
!2445 = distinct !DIAssignID()
!2446 = !DILocation(line: 0, scope: !1366, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 974, column: 3, scope: !2379, inlinedAt: !2442)
!2448 = !DILocation(line: 147, column: 57, scope: !1366, inlinedAt: !2447)
!2449 = !DILocation(line: 149, column: 21, scope: !1366, inlinedAt: !2447)
!2450 = !DILocation(line: 150, column: 6, scope: !1366, inlinedAt: !2447)
!2451 = !DILocation(line: 975, column: 10, scope: !2379, inlinedAt: !2442)
!2452 = !DILocation(line: 976, column: 1, scope: !2379, inlinedAt: !2442)
!2453 = !DILocation(line: 987, column: 3, scope: !2434)
!2454 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !405, file: !405, line: 991, type: !2252, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2455)
!2455 = !{!2456, !2457}
!2456 = !DILocalVariable(name: "arg", arg: 1, scope: !2454, file: !405, line: 991, type: !75)
!2457 = !DILocalVariable(name: "argsize", arg: 2, scope: !2454, file: !405, line: 991, type: !101)
!2458 = distinct !DIAssignID()
!2459 = !DILocation(line: 0, scope: !2454)
!2460 = !DILocation(line: 0, scope: !2379, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 993, column: 10, scope: !2454)
!2462 = !DILocation(line: 972, column: 3, scope: !2379, inlinedAt: !2461)
!2463 = !DILocation(line: 973, column: 13, scope: !2379, inlinedAt: !2461)
!2464 = distinct !DIAssignID()
!2465 = !DILocation(line: 0, scope: !1366, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 974, column: 3, scope: !2379, inlinedAt: !2461)
!2467 = !DILocation(line: 147, column: 57, scope: !1366, inlinedAt: !2466)
!2468 = !DILocation(line: 149, column: 21, scope: !1366, inlinedAt: !2466)
!2469 = !DILocation(line: 150, column: 6, scope: !1366, inlinedAt: !2466)
!2470 = !DILocation(line: 975, column: 10, scope: !2379, inlinedAt: !2461)
!2471 = !DILocation(line: 976, column: 1, scope: !2379, inlinedAt: !2461)
!2472 = !DILocation(line: 993, column: 3, scope: !2454)
!2473 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !405, file: !405, line: 997, type: !2263, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2474)
!2474 = !{!2475, !2476, !2477, !2478}
!2475 = !DILocalVariable(name: "n", arg: 1, scope: !2473, file: !405, line: 997, type: !99)
!2476 = !DILocalVariable(name: "s", arg: 2, scope: !2473, file: !405, line: 997, type: !428)
!2477 = !DILocalVariable(name: "arg", arg: 3, scope: !2473, file: !405, line: 997, type: !75)
!2478 = !DILocalVariable(name: "options", scope: !2473, file: !405, line: 999, type: !455)
!2479 = distinct !DIAssignID()
!2480 = !DILocation(line: 0, scope: !2473)
!2481 = !DILocation(line: 185, column: 26, scope: !2278, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 1000, column: 13, scope: !2473)
!2483 = !DILocation(line: 999, column: 3, scope: !2473)
!2484 = !DILocation(line: 0, scope: !2278, inlinedAt: !2482)
!2485 = !DILocation(line: 186, column: 13, scope: !2288, inlinedAt: !2482)
!2486 = !DILocation(line: 186, column: 7, scope: !2278, inlinedAt: !2482)
!2487 = !DILocation(line: 187, column: 5, scope: !2288, inlinedAt: !2482)
!2488 = !{!2489}
!2489 = distinct !{!2489, !2490, !"quoting_options_from_style: argument 0"}
!2490 = distinct !{!2490, !"quoting_options_from_style"}
!2491 = !DILocation(line: 1000, column: 13, scope: !2473)
!2492 = distinct !DIAssignID()
!2493 = distinct !DIAssignID()
!2494 = !DILocation(line: 0, scope: !1366, inlinedAt: !2495)
!2495 = distinct !DILocation(line: 1001, column: 3, scope: !2473)
!2496 = !DILocation(line: 147, column: 57, scope: !1366, inlinedAt: !2495)
!2497 = !DILocation(line: 149, column: 21, scope: !1366, inlinedAt: !2495)
!2498 = !DILocation(line: 150, column: 6, scope: !1366, inlinedAt: !2495)
!2499 = distinct !DIAssignID()
!2500 = !DILocation(line: 1002, column: 10, scope: !2473)
!2501 = !DILocation(line: 1003, column: 1, scope: !2473)
!2502 = !DILocation(line: 1002, column: 3, scope: !2473)
!2503 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !405, file: !405, line: 1006, type: !2504, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2506)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!97, !99, !75, !75, !75}
!2506 = !{!2507, !2508, !2509, !2510}
!2507 = !DILocalVariable(name: "n", arg: 1, scope: !2503, file: !405, line: 1006, type: !99)
!2508 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2503, file: !405, line: 1006, type: !75)
!2509 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2503, file: !405, line: 1007, type: !75)
!2510 = !DILocalVariable(name: "arg", arg: 4, scope: !2503, file: !405, line: 1007, type: !75)
!2511 = distinct !DIAssignID()
!2512 = !DILocation(line: 0, scope: !2503)
!2513 = !DILocalVariable(name: "o", scope: !2514, file: !405, line: 1018, type: !455)
!2514 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !405, file: !405, line: 1014, type: !2515, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2517)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!97, !99, !75, !75, !75, !101}
!2517 = !{!2518, !2519, !2520, !2521, !2522, !2513}
!2518 = !DILocalVariable(name: "n", arg: 1, scope: !2514, file: !405, line: 1014, type: !99)
!2519 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2514, file: !405, line: 1014, type: !75)
!2520 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2514, file: !405, line: 1015, type: !75)
!2521 = !DILocalVariable(name: "arg", arg: 4, scope: !2514, file: !405, line: 1016, type: !75)
!2522 = !DILocalVariable(name: "argsize", arg: 5, scope: !2514, file: !405, line: 1016, type: !101)
!2523 = !DILocation(line: 0, scope: !2514, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 1009, column: 10, scope: !2503)
!2525 = !DILocation(line: 1018, column: 3, scope: !2514, inlinedAt: !2524)
!2526 = !DILocation(line: 1018, column: 30, scope: !2514, inlinedAt: !2524)
!2527 = distinct !DIAssignID()
!2528 = distinct !DIAssignID()
!2529 = !DILocation(line: 0, scope: !1406, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 1019, column: 3, scope: !2514, inlinedAt: !2524)
!2531 = !DILocation(line: 174, column: 12, scope: !1406, inlinedAt: !2530)
!2532 = distinct !DIAssignID()
!2533 = !DILocation(line: 175, column: 8, scope: !1419, inlinedAt: !2530)
!2534 = !DILocation(line: 175, column: 19, scope: !1419, inlinedAt: !2530)
!2535 = !DILocation(line: 176, column: 5, scope: !1419, inlinedAt: !2530)
!2536 = !DILocation(line: 177, column: 6, scope: !1406, inlinedAt: !2530)
!2537 = !DILocation(line: 177, column: 17, scope: !1406, inlinedAt: !2530)
!2538 = distinct !DIAssignID()
!2539 = !DILocation(line: 178, column: 6, scope: !1406, inlinedAt: !2530)
!2540 = !DILocation(line: 178, column: 18, scope: !1406, inlinedAt: !2530)
!2541 = distinct !DIAssignID()
!2542 = !DILocation(line: 1020, column: 10, scope: !2514, inlinedAt: !2524)
!2543 = !DILocation(line: 1021, column: 1, scope: !2514, inlinedAt: !2524)
!2544 = !DILocation(line: 1009, column: 3, scope: !2503)
!2545 = distinct !DIAssignID()
!2546 = !DILocation(line: 0, scope: !2514)
!2547 = !DILocation(line: 1018, column: 3, scope: !2514)
!2548 = !DILocation(line: 1018, column: 30, scope: !2514)
!2549 = distinct !DIAssignID()
!2550 = distinct !DIAssignID()
!2551 = !DILocation(line: 0, scope: !1406, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 1019, column: 3, scope: !2514)
!2553 = !DILocation(line: 174, column: 12, scope: !1406, inlinedAt: !2552)
!2554 = distinct !DIAssignID()
!2555 = !DILocation(line: 175, column: 8, scope: !1419, inlinedAt: !2552)
!2556 = !DILocation(line: 175, column: 19, scope: !1419, inlinedAt: !2552)
!2557 = !DILocation(line: 176, column: 5, scope: !1419, inlinedAt: !2552)
!2558 = !DILocation(line: 177, column: 6, scope: !1406, inlinedAt: !2552)
!2559 = !DILocation(line: 177, column: 17, scope: !1406, inlinedAt: !2552)
!2560 = distinct !DIAssignID()
!2561 = !DILocation(line: 178, column: 6, scope: !1406, inlinedAt: !2552)
!2562 = !DILocation(line: 178, column: 18, scope: !1406, inlinedAt: !2552)
!2563 = distinct !DIAssignID()
!2564 = !DILocation(line: 1020, column: 10, scope: !2514)
!2565 = !DILocation(line: 1021, column: 1, scope: !2514)
!2566 = !DILocation(line: 1020, column: 3, scope: !2514)
!2567 = distinct !DISubprogram(name: "quotearg_custom", scope: !405, file: !405, line: 1024, type: !2568, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2570)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!97, !75, !75, !75}
!2570 = !{!2571, !2572, !2573}
!2571 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2567, file: !405, line: 1024, type: !75)
!2572 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2567, file: !405, line: 1024, type: !75)
!2573 = !DILocalVariable(name: "arg", arg: 3, scope: !2567, file: !405, line: 1025, type: !75)
!2574 = distinct !DIAssignID()
!2575 = !DILocation(line: 0, scope: !2567)
!2576 = !DILocation(line: 0, scope: !2503, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 1027, column: 10, scope: !2567)
!2578 = !DILocation(line: 0, scope: !2514, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 1009, column: 10, scope: !2503, inlinedAt: !2577)
!2580 = !DILocation(line: 1018, column: 3, scope: !2514, inlinedAt: !2579)
!2581 = !DILocation(line: 1018, column: 30, scope: !2514, inlinedAt: !2579)
!2582 = distinct !DIAssignID()
!2583 = distinct !DIAssignID()
!2584 = !DILocation(line: 0, scope: !1406, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 1019, column: 3, scope: !2514, inlinedAt: !2579)
!2586 = !DILocation(line: 174, column: 12, scope: !1406, inlinedAt: !2585)
!2587 = distinct !DIAssignID()
!2588 = !DILocation(line: 175, column: 8, scope: !1419, inlinedAt: !2585)
!2589 = !DILocation(line: 175, column: 19, scope: !1419, inlinedAt: !2585)
!2590 = !DILocation(line: 176, column: 5, scope: !1419, inlinedAt: !2585)
!2591 = !DILocation(line: 177, column: 6, scope: !1406, inlinedAt: !2585)
!2592 = !DILocation(line: 177, column: 17, scope: !1406, inlinedAt: !2585)
!2593 = distinct !DIAssignID()
!2594 = !DILocation(line: 178, column: 6, scope: !1406, inlinedAt: !2585)
!2595 = !DILocation(line: 178, column: 18, scope: !1406, inlinedAt: !2585)
!2596 = distinct !DIAssignID()
!2597 = !DILocation(line: 1020, column: 10, scope: !2514, inlinedAt: !2579)
!2598 = !DILocation(line: 1021, column: 1, scope: !2514, inlinedAt: !2579)
!2599 = !DILocation(line: 1027, column: 3, scope: !2567)
!2600 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !405, file: !405, line: 1031, type: !2601, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2603)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!97, !75, !75, !75, !101}
!2603 = !{!2604, !2605, !2606, !2607}
!2604 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2600, file: !405, line: 1031, type: !75)
!2605 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2600, file: !405, line: 1031, type: !75)
!2606 = !DILocalVariable(name: "arg", arg: 3, scope: !2600, file: !405, line: 1032, type: !75)
!2607 = !DILocalVariable(name: "argsize", arg: 4, scope: !2600, file: !405, line: 1032, type: !101)
!2608 = distinct !DIAssignID()
!2609 = !DILocation(line: 0, scope: !2600)
!2610 = !DILocation(line: 0, scope: !2514, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 1034, column: 10, scope: !2600)
!2612 = !DILocation(line: 1018, column: 3, scope: !2514, inlinedAt: !2611)
!2613 = !DILocation(line: 1018, column: 30, scope: !2514, inlinedAt: !2611)
!2614 = distinct !DIAssignID()
!2615 = distinct !DIAssignID()
!2616 = !DILocation(line: 0, scope: !1406, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 1019, column: 3, scope: !2514, inlinedAt: !2611)
!2618 = !DILocation(line: 174, column: 12, scope: !1406, inlinedAt: !2617)
!2619 = distinct !DIAssignID()
!2620 = !DILocation(line: 175, column: 8, scope: !1419, inlinedAt: !2617)
!2621 = !DILocation(line: 175, column: 19, scope: !1419, inlinedAt: !2617)
!2622 = !DILocation(line: 176, column: 5, scope: !1419, inlinedAt: !2617)
!2623 = !DILocation(line: 177, column: 6, scope: !1406, inlinedAt: !2617)
!2624 = !DILocation(line: 177, column: 17, scope: !1406, inlinedAt: !2617)
!2625 = distinct !DIAssignID()
!2626 = !DILocation(line: 178, column: 6, scope: !1406, inlinedAt: !2617)
!2627 = !DILocation(line: 178, column: 18, scope: !1406, inlinedAt: !2617)
!2628 = distinct !DIAssignID()
!2629 = !DILocation(line: 1020, column: 10, scope: !2514, inlinedAt: !2611)
!2630 = !DILocation(line: 1021, column: 1, scope: !2514, inlinedAt: !2611)
!2631 = !DILocation(line: 1034, column: 3, scope: !2600)
!2632 = distinct !DISubprogram(name: "quote_n_mem", scope: !405, file: !405, line: 1049, type: !2633, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2635)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!75, !99, !75, !101}
!2635 = !{!2636, !2637, !2638}
!2636 = !DILocalVariable(name: "n", arg: 1, scope: !2632, file: !405, line: 1049, type: !99)
!2637 = !DILocalVariable(name: "arg", arg: 2, scope: !2632, file: !405, line: 1049, type: !75)
!2638 = !DILocalVariable(name: "argsize", arg: 3, scope: !2632, file: !405, line: 1049, type: !101)
!2639 = !DILocation(line: 0, scope: !2632)
!2640 = !DILocation(line: 1051, column: 10, scope: !2632)
!2641 = !DILocation(line: 1051, column: 3, scope: !2632)
!2642 = distinct !DISubprogram(name: "quote_mem", scope: !405, file: !405, line: 1055, type: !2643, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2645)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!75, !75, !101}
!2645 = !{!2646, !2647}
!2646 = !DILocalVariable(name: "arg", arg: 1, scope: !2642, file: !405, line: 1055, type: !75)
!2647 = !DILocalVariable(name: "argsize", arg: 2, scope: !2642, file: !405, line: 1055, type: !101)
!2648 = !DILocation(line: 0, scope: !2642)
!2649 = !DILocation(line: 0, scope: !2632, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 1057, column: 10, scope: !2642)
!2651 = !DILocation(line: 1051, column: 10, scope: !2632, inlinedAt: !2650)
!2652 = !DILocation(line: 1057, column: 3, scope: !2642)
!2653 = distinct !DISubprogram(name: "quote_n", scope: !405, file: !405, line: 1061, type: !2654, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!75, !99, !75}
!2656 = !{!2657, !2658}
!2657 = !DILocalVariable(name: "n", arg: 1, scope: !2653, file: !405, line: 1061, type: !99)
!2658 = !DILocalVariable(name: "arg", arg: 2, scope: !2653, file: !405, line: 1061, type: !75)
!2659 = !DILocation(line: 0, scope: !2653)
!2660 = !DILocation(line: 0, scope: !2632, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 1063, column: 10, scope: !2653)
!2662 = !DILocation(line: 1051, column: 10, scope: !2632, inlinedAt: !2661)
!2663 = !DILocation(line: 1063, column: 3, scope: !2653)
!2664 = distinct !DISubprogram(name: "quote", scope: !405, file: !405, line: 1067, type: !2665, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!75, !75}
!2667 = !{!2668}
!2668 = !DILocalVariable(name: "arg", arg: 1, scope: !2664, file: !405, line: 1067, type: !75)
!2669 = !DILocation(line: 0, scope: !2664)
!2670 = !DILocation(line: 0, scope: !2653, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 1069, column: 10, scope: !2664)
!2672 = !DILocation(line: 0, scope: !2632, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 1063, column: 10, scope: !2653, inlinedAt: !2671)
!2674 = !DILocation(line: 1051, column: 10, scope: !2632, inlinedAt: !2673)
!2675 = !DILocation(line: 1069, column: 3, scope: !2664)
!2676 = distinct !DISubprogram(name: "version_etc_arn", scope: !518, file: !518, line: 61, type: !2677, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !642, retainedNodes: !2714)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{null, !2679, !75, !75, !75, !2713, !101}
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !2681)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !2682)
!2682 = !{!2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2681, file: !235, line: 51, baseType: !99, size: 32)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2681, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2681, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2681, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2681, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2681, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2681, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2681, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2681, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2681, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2681, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2681, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2681, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2681, file: !235, line: 70, baseType: !2697, size: 64, offset: 832)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2681, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2681, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2681, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2681, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2681, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2681, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2681, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2681, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2681, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2681, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2681, file: !235, line: 93, baseType: !2697, size: 64, offset: 1344)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2681, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2681, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2681, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2681, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!2714 = !{!2715, !2716, !2717, !2718, !2719, !2720}
!2715 = !DILocalVariable(name: "stream", arg: 1, scope: !2676, file: !518, line: 61, type: !2679)
!2716 = !DILocalVariable(name: "command_name", arg: 2, scope: !2676, file: !518, line: 62, type: !75)
!2717 = !DILocalVariable(name: "package", arg: 3, scope: !2676, file: !518, line: 62, type: !75)
!2718 = !DILocalVariable(name: "version", arg: 4, scope: !2676, file: !518, line: 63, type: !75)
!2719 = !DILocalVariable(name: "authors", arg: 5, scope: !2676, file: !518, line: 64, type: !2713)
!2720 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2676, file: !518, line: 64, type: !101)
!2721 = !DILocation(line: 0, scope: !2676)
!2722 = !DILocation(line: 66, column: 7, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2676, file: !518, line: 66, column: 7)
!2724 = !DILocation(line: 66, column: 7, scope: !2676)
!2725 = !DILocation(line: 67, column: 5, scope: !2723)
!2726 = !DILocation(line: 69, column: 5, scope: !2723)
!2727 = !DILocation(line: 83, column: 3, scope: !2676)
!2728 = !DILocation(line: 85, column: 3, scope: !2676)
!2729 = !DILocation(line: 88, column: 3, scope: !2676)
!2730 = !DILocation(line: 95, column: 3, scope: !2676)
!2731 = !DILocation(line: 97, column: 3, scope: !2676)
!2732 = !DILocation(line: 105, column: 7, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2676, file: !518, line: 98, column: 5)
!2734 = !DILocation(line: 106, column: 7, scope: !2733)
!2735 = !DILocation(line: 109, column: 7, scope: !2733)
!2736 = !DILocation(line: 110, column: 7, scope: !2733)
!2737 = !DILocation(line: 113, column: 7, scope: !2733)
!2738 = !DILocation(line: 115, column: 7, scope: !2733)
!2739 = !DILocation(line: 120, column: 7, scope: !2733)
!2740 = !DILocation(line: 122, column: 7, scope: !2733)
!2741 = !DILocation(line: 127, column: 7, scope: !2733)
!2742 = !DILocation(line: 129, column: 7, scope: !2733)
!2743 = !DILocation(line: 134, column: 7, scope: !2733)
!2744 = !DILocation(line: 137, column: 7, scope: !2733)
!2745 = !DILocation(line: 142, column: 7, scope: !2733)
!2746 = !DILocation(line: 145, column: 7, scope: !2733)
!2747 = !DILocation(line: 150, column: 7, scope: !2733)
!2748 = !DILocation(line: 154, column: 7, scope: !2733)
!2749 = !DILocation(line: 159, column: 7, scope: !2733)
!2750 = !DILocation(line: 163, column: 7, scope: !2733)
!2751 = !DILocation(line: 170, column: 7, scope: !2733)
!2752 = !DILocation(line: 174, column: 7, scope: !2733)
!2753 = !DILocation(line: 176, column: 1, scope: !2676)
!2754 = distinct !DISubprogram(name: "version_etc_ar", scope: !518, file: !518, line: 183, type: !2755, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !642, retainedNodes: !2757)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{null, !2679, !75, !75, !75, !2713}
!2757 = !{!2758, !2759, !2760, !2761, !2762, !2763}
!2758 = !DILocalVariable(name: "stream", arg: 1, scope: !2754, file: !518, line: 183, type: !2679)
!2759 = !DILocalVariable(name: "command_name", arg: 2, scope: !2754, file: !518, line: 184, type: !75)
!2760 = !DILocalVariable(name: "package", arg: 3, scope: !2754, file: !518, line: 184, type: !75)
!2761 = !DILocalVariable(name: "version", arg: 4, scope: !2754, file: !518, line: 185, type: !75)
!2762 = !DILocalVariable(name: "authors", arg: 5, scope: !2754, file: !518, line: 185, type: !2713)
!2763 = !DILocalVariable(name: "n_authors", scope: !2754, file: !518, line: 187, type: !101)
!2764 = !DILocation(line: 0, scope: !2754)
!2765 = !DILocation(line: 189, column: 8, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2754, file: !518, line: 189, column: 3)
!2767 = !DILocation(line: 189, scope: !2766)
!2768 = !DILocation(line: 189, column: 23, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2766, file: !518, line: 189, column: 3)
!2770 = !DILocation(line: 189, column: 3, scope: !2766)
!2771 = !DILocation(line: 189, column: 52, scope: !2769)
!2772 = distinct !{!2772, !2770, !2773, !787}
!2773 = !DILocation(line: 190, column: 5, scope: !2766)
!2774 = !DILocation(line: 191, column: 3, scope: !2754)
!2775 = !DILocation(line: 192, column: 1, scope: !2754)
!2776 = distinct !DISubprogram(name: "version_etc_va", scope: !518, file: !518, line: 199, type: !2777, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !642, retainedNodes: !2786)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{null, !2679, !75, !75, !75, !2779}
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2781)
!2781 = !{!2782, !2783, !2784, !2785}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2780, file: !518, line: 192, baseType: !82, size: 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2780, file: !518, line: 192, baseType: !82, size: 32, offset: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2780, file: !518, line: 192, baseType: !98, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2780, file: !518, line: 192, baseType: !98, size: 64, offset: 128)
!2786 = !{!2787, !2788, !2789, !2790, !2791, !2792, !2793}
!2787 = !DILocalVariable(name: "stream", arg: 1, scope: !2776, file: !518, line: 199, type: !2679)
!2788 = !DILocalVariable(name: "command_name", arg: 2, scope: !2776, file: !518, line: 200, type: !75)
!2789 = !DILocalVariable(name: "package", arg: 3, scope: !2776, file: !518, line: 200, type: !75)
!2790 = !DILocalVariable(name: "version", arg: 4, scope: !2776, file: !518, line: 201, type: !75)
!2791 = !DILocalVariable(name: "authors", arg: 5, scope: !2776, file: !518, line: 201, type: !2779)
!2792 = !DILocalVariable(name: "n_authors", scope: !2776, file: !518, line: 203, type: !101)
!2793 = !DILocalVariable(name: "authtab", scope: !2776, file: !518, line: 204, type: !2794)
!2794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 640, elements: !45)
!2795 = distinct !DIAssignID()
!2796 = !DILocation(line: 0, scope: !2776)
!2797 = !DILocation(line: 204, column: 3, scope: !2776)
!2798 = !DILocation(line: 208, column: 35, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !518, line: 206, column: 3)
!2800 = distinct !DILexicalBlock(scope: !2776, file: !518, line: 206, column: 3)
!2801 = !DILocation(line: 208, column: 33, scope: !2799)
!2802 = !DILocation(line: 208, column: 67, scope: !2799)
!2803 = !DILocation(line: 206, column: 3, scope: !2800)
!2804 = !DILocation(line: 208, column: 14, scope: !2799)
!2805 = !DILocation(line: 0, scope: !2800)
!2806 = !DILocation(line: 211, column: 3, scope: !2776)
!2807 = !DILocation(line: 213, column: 1, scope: !2776)
!2808 = distinct !DISubprogram(name: "version_etc", scope: !518, file: !518, line: 230, type: !2809, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !642, retainedNodes: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{null, !2679, !75, !75, !75, null}
!2811 = !{!2812, !2813, !2814, !2815, !2816}
!2812 = !DILocalVariable(name: "stream", arg: 1, scope: !2808, file: !518, line: 230, type: !2679)
!2813 = !DILocalVariable(name: "command_name", arg: 2, scope: !2808, file: !518, line: 231, type: !75)
!2814 = !DILocalVariable(name: "package", arg: 3, scope: !2808, file: !518, line: 231, type: !75)
!2815 = !DILocalVariable(name: "version", arg: 4, scope: !2808, file: !518, line: 232, type: !75)
!2816 = !DILocalVariable(name: "authors", scope: !2808, file: !518, line: 234, type: !2817)
!2817 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !898, line: 52, baseType: !2818)
!2818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1192, line: 12, baseType: !2819)
!2819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !518, baseType: !2820)
!2820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2780, size: 192, elements: !40)
!2821 = distinct !DIAssignID()
!2822 = !DILocation(line: 0, scope: !2808)
!2823 = !DILocation(line: 234, column: 3, scope: !2808)
!2824 = !DILocation(line: 235, column: 3, scope: !2808)
!2825 = !DILocation(line: 236, column: 3, scope: !2808)
!2826 = !DILocation(line: 237, column: 3, scope: !2808)
!2827 = !DILocation(line: 238, column: 1, scope: !2808)
!2828 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !518, file: !518, line: 241, type: !360, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !642)
!2829 = !DILocation(line: 243, column: 3, scope: !2828)
!2830 = !DILocation(line: 248, column: 3, scope: !2828)
!2831 = !DILocation(line: 254, column: 3, scope: !2828)
!2832 = !DILocation(line: 259, column: 3, scope: !2828)
!2833 = !DILocation(line: 261, column: 1, scope: !2828)
!2834 = distinct !DISubprogram(name: "xnrealloc", scope: !2835, file: !2835, line: 147, type: !2836, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2838)
!2835 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!98, !98, !101, !101}
!2838 = !{!2839, !2840, !2841}
!2839 = !DILocalVariable(name: "p", arg: 1, scope: !2834, file: !2835, line: 147, type: !98)
!2840 = !DILocalVariable(name: "n", arg: 2, scope: !2834, file: !2835, line: 147, type: !101)
!2841 = !DILocalVariable(name: "s", arg: 3, scope: !2834, file: !2835, line: 147, type: !101)
!2842 = !DILocation(line: 0, scope: !2834)
!2843 = !DILocalVariable(name: "p", arg: 1, scope: !2844, file: !650, line: 83, type: !98)
!2844 = distinct !DISubprogram(name: "xreallocarray", scope: !650, file: !650, line: 83, type: !2836, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2845)
!2845 = !{!2843, !2846, !2847}
!2846 = !DILocalVariable(name: "n", arg: 2, scope: !2844, file: !650, line: 83, type: !101)
!2847 = !DILocalVariable(name: "s", arg: 3, scope: !2844, file: !650, line: 83, type: !101)
!2848 = !DILocation(line: 0, scope: !2844, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 149, column: 10, scope: !2834)
!2850 = !DILocation(line: 85, column: 25, scope: !2844, inlinedAt: !2849)
!2851 = !DILocalVariable(name: "p", arg: 1, scope: !2852, file: !650, line: 37, type: !98)
!2852 = distinct !DISubprogram(name: "check_nonnull", scope: !650, file: !650, line: 37, type: !2853, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2855)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!98, !98}
!2855 = !{!2851}
!2856 = !DILocation(line: 0, scope: !2852, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 85, column: 10, scope: !2844, inlinedAt: !2849)
!2858 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !2857)
!2859 = distinct !DILexicalBlock(scope: !2852, file: !650, line: 39, column: 7)
!2860 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !2857)
!2861 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !2857)
!2862 = !DILocation(line: 149, column: 3, scope: !2834)
!2863 = !DILocation(line: 0, scope: !2844)
!2864 = !DILocation(line: 85, column: 25, scope: !2844)
!2865 = !DILocation(line: 0, scope: !2852, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 85, column: 10, scope: !2844)
!2867 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !2866)
!2868 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !2866)
!2869 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !2866)
!2870 = !DILocation(line: 85, column: 3, scope: !2844)
!2871 = distinct !DISubprogram(name: "xmalloc", scope: !650, file: !650, line: 47, type: !2872, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!98, !101}
!2874 = !{!2875}
!2875 = !DILocalVariable(name: "s", arg: 1, scope: !2871, file: !650, line: 47, type: !101)
!2876 = !DILocation(line: 0, scope: !2871)
!2877 = !DILocation(line: 49, column: 25, scope: !2871)
!2878 = !DILocation(line: 0, scope: !2852, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 49, column: 10, scope: !2871)
!2880 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !2879)
!2881 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !2879)
!2882 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !2879)
!2883 = !DILocation(line: 49, column: 3, scope: !2871)
!2884 = !DISubprogram(name: "malloc", scope: !888, file: !888, line: 540, type: !2872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2885 = distinct !DISubprogram(name: "ximalloc", scope: !650, file: !650, line: 53, type: !2886, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!98, !669}
!2888 = !{!2889}
!2889 = !DILocalVariable(name: "s", arg: 1, scope: !2885, file: !650, line: 53, type: !669)
!2890 = !DILocation(line: 0, scope: !2885)
!2891 = !DILocalVariable(name: "s", arg: 1, scope: !2892, file: !2893, line: 55, type: !669)
!2892 = distinct !DISubprogram(name: "imalloc", scope: !2893, file: !2893, line: 55, type: !2886, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2894)
!2893 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2894 = !{!2891}
!2895 = !DILocation(line: 0, scope: !2892, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 55, column: 25, scope: !2885)
!2897 = !DILocation(line: 57, column: 26, scope: !2892, inlinedAt: !2896)
!2898 = !DILocation(line: 0, scope: !2852, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 55, column: 10, scope: !2885)
!2900 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !2899)
!2901 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !2899)
!2902 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !2899)
!2903 = !DILocation(line: 55, column: 3, scope: !2885)
!2904 = distinct !DISubprogram(name: "xcharalloc", scope: !650, file: !650, line: 59, type: !2905, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2907)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!97, !101}
!2907 = !{!2908}
!2908 = !DILocalVariable(name: "n", arg: 1, scope: !2904, file: !650, line: 59, type: !101)
!2909 = !DILocation(line: 0, scope: !2904)
!2910 = !DILocation(line: 0, scope: !2871, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 61, column: 10, scope: !2904)
!2912 = !DILocation(line: 49, column: 25, scope: !2871, inlinedAt: !2911)
!2913 = !DILocation(line: 0, scope: !2852, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 49, column: 10, scope: !2871, inlinedAt: !2911)
!2915 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !2914)
!2916 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !2914)
!2917 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !2914)
!2918 = !DILocation(line: 61, column: 3, scope: !2904)
!2919 = distinct !DISubprogram(name: "xrealloc", scope: !650, file: !650, line: 68, type: !2920, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2922)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!98, !98, !101}
!2922 = !{!2923, !2924}
!2923 = !DILocalVariable(name: "p", arg: 1, scope: !2919, file: !650, line: 68, type: !98)
!2924 = !DILocalVariable(name: "s", arg: 2, scope: !2919, file: !650, line: 68, type: !101)
!2925 = !DILocation(line: 0, scope: !2919)
!2926 = !DILocalVariable(name: "ptr", arg: 1, scope: !2927, file: !2928, line: 2057, type: !98)
!2927 = distinct !DISubprogram(name: "rpl_realloc", scope: !2928, file: !2928, line: 2057, type: !2920, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2929)
!2928 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2929 = !{!2926, !2930}
!2930 = !DILocalVariable(name: "size", arg: 2, scope: !2927, file: !2928, line: 2057, type: !101)
!2931 = !DILocation(line: 0, scope: !2927, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 70, column: 25, scope: !2919)
!2933 = !DILocation(line: 2059, column: 24, scope: !2927, inlinedAt: !2932)
!2934 = !DILocation(line: 2059, column: 10, scope: !2927, inlinedAt: !2932)
!2935 = !DILocation(line: 0, scope: !2852, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 70, column: 10, scope: !2919)
!2937 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !2936)
!2938 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !2936)
!2939 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !2936)
!2940 = !DILocation(line: 70, column: 3, scope: !2919)
!2941 = !DISubprogram(name: "realloc", scope: !888, file: !888, line: 551, type: !2920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2942 = distinct !DISubprogram(name: "xirealloc", scope: !650, file: !650, line: 74, type: !2943, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!98, !98, !669}
!2945 = !{!2946, !2947}
!2946 = !DILocalVariable(name: "p", arg: 1, scope: !2942, file: !650, line: 74, type: !98)
!2947 = !DILocalVariable(name: "s", arg: 2, scope: !2942, file: !650, line: 74, type: !669)
!2948 = !DILocation(line: 0, scope: !2942)
!2949 = !DILocalVariable(name: "p", arg: 1, scope: !2950, file: !2893, line: 66, type: !98)
!2950 = distinct !DISubprogram(name: "irealloc", scope: !2893, file: !2893, line: 66, type: !2943, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2951)
!2951 = !{!2949, !2952}
!2952 = !DILocalVariable(name: "s", arg: 2, scope: !2950, file: !2893, line: 66, type: !669)
!2953 = !DILocation(line: 0, scope: !2950, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 76, column: 25, scope: !2942)
!2955 = !DILocation(line: 0, scope: !2927, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 68, column: 26, scope: !2950, inlinedAt: !2954)
!2957 = !DILocation(line: 2059, column: 24, scope: !2927, inlinedAt: !2956)
!2958 = !DILocation(line: 2059, column: 10, scope: !2927, inlinedAt: !2956)
!2959 = !DILocation(line: 0, scope: !2852, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 76, column: 10, scope: !2942)
!2961 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !2960)
!2962 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !2960)
!2963 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !2960)
!2964 = !DILocation(line: 76, column: 3, scope: !2942)
!2965 = distinct !DISubprogram(name: "xireallocarray", scope: !650, file: !650, line: 89, type: !2966, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2968)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!98, !98, !669, !669}
!2968 = !{!2969, !2970, !2971}
!2969 = !DILocalVariable(name: "p", arg: 1, scope: !2965, file: !650, line: 89, type: !98)
!2970 = !DILocalVariable(name: "n", arg: 2, scope: !2965, file: !650, line: 89, type: !669)
!2971 = !DILocalVariable(name: "s", arg: 3, scope: !2965, file: !650, line: 89, type: !669)
!2972 = !DILocation(line: 0, scope: !2965)
!2973 = !DILocalVariable(name: "p", arg: 1, scope: !2974, file: !2893, line: 98, type: !98)
!2974 = distinct !DISubprogram(name: "ireallocarray", scope: !2893, file: !2893, line: 98, type: !2966, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2975)
!2975 = !{!2973, !2976, !2977}
!2976 = !DILocalVariable(name: "n", arg: 2, scope: !2974, file: !2893, line: 98, type: !669)
!2977 = !DILocalVariable(name: "s", arg: 3, scope: !2974, file: !2893, line: 98, type: !669)
!2978 = !DILocation(line: 0, scope: !2974, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 91, column: 25, scope: !2965)
!2980 = !DILocation(line: 101, column: 13, scope: !2974, inlinedAt: !2979)
!2981 = !DILocation(line: 0, scope: !2852, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 91, column: 10, scope: !2965)
!2983 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !2982)
!2984 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !2982)
!2985 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !2982)
!2986 = !DILocation(line: 91, column: 3, scope: !2965)
!2987 = distinct !DISubprogram(name: "xnmalloc", scope: !650, file: !650, line: 98, type: !2988, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !2990)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!98, !101, !101}
!2990 = !{!2991, !2992}
!2991 = !DILocalVariable(name: "n", arg: 1, scope: !2987, file: !650, line: 98, type: !101)
!2992 = !DILocalVariable(name: "s", arg: 2, scope: !2987, file: !650, line: 98, type: !101)
!2993 = !DILocation(line: 0, scope: !2987)
!2994 = !DILocation(line: 0, scope: !2844, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 100, column: 10, scope: !2987)
!2996 = !DILocation(line: 85, column: 25, scope: !2844, inlinedAt: !2995)
!2997 = !DILocation(line: 0, scope: !2852, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 85, column: 10, scope: !2844, inlinedAt: !2995)
!2999 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !2998)
!3000 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !2998)
!3001 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !2998)
!3002 = !DILocation(line: 100, column: 3, scope: !2987)
!3003 = distinct !DISubprogram(name: "xinmalloc", scope: !650, file: !650, line: 104, type: !3004, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!98, !669, !669}
!3006 = !{!3007, !3008}
!3007 = !DILocalVariable(name: "n", arg: 1, scope: !3003, file: !650, line: 104, type: !669)
!3008 = !DILocalVariable(name: "s", arg: 2, scope: !3003, file: !650, line: 104, type: !669)
!3009 = !DILocation(line: 0, scope: !3003)
!3010 = !DILocation(line: 0, scope: !2965, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 106, column: 10, scope: !3003)
!3012 = !DILocation(line: 0, scope: !2974, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 91, column: 25, scope: !2965, inlinedAt: !3011)
!3014 = !DILocation(line: 101, column: 13, scope: !2974, inlinedAt: !3013)
!3015 = !DILocation(line: 0, scope: !2852, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 91, column: 10, scope: !2965, inlinedAt: !3011)
!3017 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !3016)
!3018 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !3016)
!3019 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !3016)
!3020 = !DILocation(line: 106, column: 3, scope: !3003)
!3021 = distinct !DISubprogram(name: "x2realloc", scope: !650, file: !650, line: 116, type: !3022, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3024)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!98, !98, !656}
!3024 = !{!3025, !3026}
!3025 = !DILocalVariable(name: "p", arg: 1, scope: !3021, file: !650, line: 116, type: !98)
!3026 = !DILocalVariable(name: "ps", arg: 2, scope: !3021, file: !650, line: 116, type: !656)
!3027 = !DILocation(line: 0, scope: !3021)
!3028 = !DILocation(line: 0, scope: !653, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 118, column: 10, scope: !3021)
!3030 = !DILocation(line: 178, column: 14, scope: !653, inlinedAt: !3029)
!3031 = !DILocation(line: 180, column: 9, scope: !3032, inlinedAt: !3029)
!3032 = distinct !DILexicalBlock(scope: !653, file: !650, line: 180, column: 7)
!3033 = !DILocation(line: 180, column: 7, scope: !653, inlinedAt: !3029)
!3034 = !DILocation(line: 182, column: 13, scope: !3035, inlinedAt: !3029)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !650, line: 182, column: 11)
!3036 = distinct !DILexicalBlock(scope: !3032, file: !650, line: 181, column: 5)
!3037 = !DILocation(line: 182, column: 11, scope: !3036, inlinedAt: !3029)
!3038 = !DILocation(line: 197, column: 11, scope: !3039, inlinedAt: !3029)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !650, line: 197, column: 11)
!3040 = distinct !DILexicalBlock(scope: !3032, file: !650, line: 195, column: 5)
!3041 = !DILocation(line: 197, column: 11, scope: !3040, inlinedAt: !3029)
!3042 = !DILocation(line: 198, column: 9, scope: !3039, inlinedAt: !3029)
!3043 = !DILocation(line: 0, scope: !2844, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 201, column: 7, scope: !653, inlinedAt: !3029)
!3045 = !DILocation(line: 85, column: 25, scope: !2844, inlinedAt: !3044)
!3046 = !DILocation(line: 0, scope: !2852, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 85, column: 10, scope: !2844, inlinedAt: !3044)
!3048 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !3047)
!3049 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !3047)
!3050 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !3047)
!3051 = !DILocation(line: 202, column: 7, scope: !653, inlinedAt: !3029)
!3052 = !DILocation(line: 118, column: 3, scope: !3021)
!3053 = !DILocation(line: 0, scope: !653)
!3054 = !DILocation(line: 178, column: 14, scope: !653)
!3055 = !DILocation(line: 180, column: 9, scope: !3032)
!3056 = !DILocation(line: 180, column: 7, scope: !653)
!3057 = !DILocation(line: 182, column: 13, scope: !3035)
!3058 = !DILocation(line: 182, column: 11, scope: !3036)
!3059 = !DILocation(line: 190, column: 30, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3035, file: !650, line: 183, column: 9)
!3061 = !DILocation(line: 191, column: 16, scope: !3060)
!3062 = !DILocation(line: 191, column: 13, scope: !3060)
!3063 = !DILocation(line: 192, column: 9, scope: !3060)
!3064 = !DILocation(line: 197, column: 11, scope: !3039)
!3065 = !DILocation(line: 197, column: 11, scope: !3040)
!3066 = !DILocation(line: 198, column: 9, scope: !3039)
!3067 = !DILocation(line: 0, scope: !2844, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 201, column: 7, scope: !653)
!3069 = !DILocation(line: 85, column: 25, scope: !2844, inlinedAt: !3068)
!3070 = !DILocation(line: 0, scope: !2852, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 85, column: 10, scope: !2844, inlinedAt: !3068)
!3072 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !3071)
!3073 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !3071)
!3074 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !3071)
!3075 = !DILocation(line: 202, column: 7, scope: !653)
!3076 = !DILocation(line: 203, column: 3, scope: !653)
!3077 = !DILocation(line: 0, scope: !665)
!3078 = !DILocation(line: 230, column: 14, scope: !665)
!3079 = !DILocation(line: 238, column: 7, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !665, file: !650, line: 238, column: 7)
!3081 = !DILocation(line: 238, column: 7, scope: !665)
!3082 = !DILocation(line: 240, column: 9, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !665, file: !650, line: 240, column: 7)
!3084 = !DILocation(line: 240, column: 18, scope: !3083)
!3085 = !DILocation(line: 253, column: 8, scope: !665)
!3086 = !DILocation(line: 256, column: 7, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !665, file: !650, line: 256, column: 7)
!3088 = !DILocation(line: 256, column: 7, scope: !665)
!3089 = !DILocation(line: 258, column: 27, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3087, file: !650, line: 257, column: 5)
!3091 = !DILocation(line: 259, column: 50, scope: !3090)
!3092 = !DILocation(line: 259, column: 32, scope: !3090)
!3093 = !DILocation(line: 260, column: 5, scope: !3090)
!3094 = !DILocation(line: 262, column: 9, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !665, file: !650, line: 262, column: 7)
!3096 = !DILocation(line: 262, column: 7, scope: !665)
!3097 = !DILocation(line: 263, column: 9, scope: !3095)
!3098 = !DILocation(line: 263, column: 5, scope: !3095)
!3099 = !DILocation(line: 264, column: 9, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !665, file: !650, line: 264, column: 7)
!3101 = !DILocation(line: 264, column: 14, scope: !3100)
!3102 = !DILocation(line: 265, column: 7, scope: !3100)
!3103 = !DILocation(line: 265, column: 11, scope: !3100)
!3104 = !DILocation(line: 266, column: 11, scope: !3100)
!3105 = !DILocation(line: 267, column: 14, scope: !3100)
!3106 = !DILocation(line: 264, column: 7, scope: !665)
!3107 = !DILocation(line: 268, column: 5, scope: !3100)
!3108 = !DILocation(line: 0, scope: !2919, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 269, column: 8, scope: !665)
!3110 = !DILocation(line: 0, scope: !2927, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 70, column: 25, scope: !2919, inlinedAt: !3109)
!3112 = !DILocation(line: 2059, column: 24, scope: !2927, inlinedAt: !3111)
!3113 = !DILocation(line: 2059, column: 10, scope: !2927, inlinedAt: !3111)
!3114 = !DILocation(line: 0, scope: !2852, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 70, column: 10, scope: !2919, inlinedAt: !3109)
!3116 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !3115)
!3117 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !3115)
!3118 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !3115)
!3119 = !DILocation(line: 270, column: 7, scope: !665)
!3120 = !DILocation(line: 271, column: 3, scope: !665)
!3121 = distinct !DISubprogram(name: "xzalloc", scope: !650, file: !650, line: 279, type: !2872, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3122)
!3122 = !{!3123}
!3123 = !DILocalVariable(name: "s", arg: 1, scope: !3121, file: !650, line: 279, type: !101)
!3124 = !DILocation(line: 0, scope: !3121)
!3125 = !DILocalVariable(name: "n", arg: 1, scope: !3126, file: !650, line: 294, type: !101)
!3126 = distinct !DISubprogram(name: "xcalloc", scope: !650, file: !650, line: 294, type: !2988, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3127)
!3127 = !{!3125, !3128}
!3128 = !DILocalVariable(name: "s", arg: 2, scope: !3126, file: !650, line: 294, type: !101)
!3129 = !DILocation(line: 0, scope: !3126, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 281, column: 10, scope: !3121)
!3131 = !DILocation(line: 296, column: 25, scope: !3126, inlinedAt: !3130)
!3132 = !DILocation(line: 0, scope: !2852, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 296, column: 10, scope: !3126, inlinedAt: !3130)
!3134 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !3133)
!3135 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !3133)
!3136 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !3133)
!3137 = !DILocation(line: 281, column: 3, scope: !3121)
!3138 = !DISubprogram(name: "calloc", scope: !888, file: !888, line: 543, type: !2988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3139 = !DILocation(line: 0, scope: !3126)
!3140 = !DILocation(line: 296, column: 25, scope: !3126)
!3141 = !DILocation(line: 0, scope: !2852, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 296, column: 10, scope: !3126)
!3143 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !3142)
!3144 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !3142)
!3145 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !3142)
!3146 = !DILocation(line: 296, column: 3, scope: !3126)
!3147 = distinct !DISubprogram(name: "xizalloc", scope: !650, file: !650, line: 285, type: !2886, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3148)
!3148 = !{!3149}
!3149 = !DILocalVariable(name: "s", arg: 1, scope: !3147, file: !650, line: 285, type: !669)
!3150 = !DILocation(line: 0, scope: !3147)
!3151 = !DILocalVariable(name: "n", arg: 1, scope: !3152, file: !650, line: 300, type: !669)
!3152 = distinct !DISubprogram(name: "xicalloc", scope: !650, file: !650, line: 300, type: !3004, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3153)
!3153 = !{!3151, !3154}
!3154 = !DILocalVariable(name: "s", arg: 2, scope: !3152, file: !650, line: 300, type: !669)
!3155 = !DILocation(line: 0, scope: !3152, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 287, column: 10, scope: !3147)
!3157 = !DILocalVariable(name: "n", arg: 1, scope: !3158, file: !2893, line: 77, type: !669)
!3158 = distinct !DISubprogram(name: "icalloc", scope: !2893, file: !2893, line: 77, type: !3004, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3159)
!3159 = !{!3157, !3160}
!3160 = !DILocalVariable(name: "s", arg: 2, scope: !3158, file: !2893, line: 77, type: !669)
!3161 = !DILocation(line: 0, scope: !3158, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 302, column: 25, scope: !3152, inlinedAt: !3156)
!3163 = !DILocation(line: 91, column: 10, scope: !3158, inlinedAt: !3162)
!3164 = !DILocation(line: 0, scope: !2852, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 302, column: 10, scope: !3152, inlinedAt: !3156)
!3166 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !3165)
!3167 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !3165)
!3168 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !3165)
!3169 = !DILocation(line: 287, column: 3, scope: !3147)
!3170 = !DILocation(line: 0, scope: !3152)
!3171 = !DILocation(line: 0, scope: !3158, inlinedAt: !3172)
!3172 = distinct !DILocation(line: 302, column: 25, scope: !3152)
!3173 = !DILocation(line: 91, column: 10, scope: !3158, inlinedAt: !3172)
!3174 = !DILocation(line: 0, scope: !2852, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 302, column: 10, scope: !3152)
!3176 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !3175)
!3177 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !3175)
!3178 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !3175)
!3179 = !DILocation(line: 302, column: 3, scope: !3152)
!3180 = distinct !DISubprogram(name: "xmemdup", scope: !650, file: !650, line: 310, type: !3181, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3183)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!98, !925, !101}
!3183 = !{!3184, !3185}
!3184 = !DILocalVariable(name: "p", arg: 1, scope: !3180, file: !650, line: 310, type: !925)
!3185 = !DILocalVariable(name: "s", arg: 2, scope: !3180, file: !650, line: 310, type: !101)
!3186 = !DILocation(line: 0, scope: !3180)
!3187 = !DILocation(line: 0, scope: !2871, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 312, column: 18, scope: !3180)
!3189 = !DILocation(line: 49, column: 25, scope: !2871, inlinedAt: !3188)
!3190 = !DILocation(line: 0, scope: !2852, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 49, column: 10, scope: !2871, inlinedAt: !3188)
!3192 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !3191)
!3193 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !3191)
!3194 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !3191)
!3195 = !DILocalVariable(name: "__dest", arg: 1, scope: !3196, file: !1309, line: 26, type: !3199)
!3196 = distinct !DISubprogram(name: "memcpy", scope: !1309, file: !1309, line: 26, type: !3197, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3200)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!98, !3199, !924, !101}
!3199 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!3200 = !{!3195, !3201, !3202}
!3201 = !DILocalVariable(name: "__src", arg: 2, scope: !3196, file: !1309, line: 26, type: !924)
!3202 = !DILocalVariable(name: "__len", arg: 3, scope: !3196, file: !1309, line: 26, type: !101)
!3203 = !DILocation(line: 0, scope: !3196, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 312, column: 10, scope: !3180)
!3205 = !DILocation(line: 29, column: 10, scope: !3196, inlinedAt: !3204)
!3206 = !DILocation(line: 312, column: 3, scope: !3180)
!3207 = distinct !DISubprogram(name: "ximemdup", scope: !650, file: !650, line: 316, type: !3208, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3210)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!98, !925, !669}
!3210 = !{!3211, !3212}
!3211 = !DILocalVariable(name: "p", arg: 1, scope: !3207, file: !650, line: 316, type: !925)
!3212 = !DILocalVariable(name: "s", arg: 2, scope: !3207, file: !650, line: 316, type: !669)
!3213 = !DILocation(line: 0, scope: !3207)
!3214 = !DILocation(line: 0, scope: !2885, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 318, column: 18, scope: !3207)
!3216 = !DILocation(line: 0, scope: !2892, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 55, column: 25, scope: !2885, inlinedAt: !3215)
!3218 = !DILocation(line: 57, column: 26, scope: !2892, inlinedAt: !3217)
!3219 = !DILocation(line: 0, scope: !2852, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 55, column: 10, scope: !2885, inlinedAt: !3215)
!3221 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !3220)
!3222 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !3220)
!3223 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !3220)
!3224 = !DILocation(line: 0, scope: !3196, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 318, column: 10, scope: !3207)
!3226 = !DILocation(line: 29, column: 10, scope: !3196, inlinedAt: !3225)
!3227 = !DILocation(line: 318, column: 3, scope: !3207)
!3228 = distinct !DISubprogram(name: "ximemdup0", scope: !650, file: !650, line: 325, type: !3229, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3231)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!97, !925, !669}
!3231 = !{!3232, !3233, !3234}
!3232 = !DILocalVariable(name: "p", arg: 1, scope: !3228, file: !650, line: 325, type: !925)
!3233 = !DILocalVariable(name: "s", arg: 2, scope: !3228, file: !650, line: 325, type: !669)
!3234 = !DILocalVariable(name: "result", scope: !3228, file: !650, line: 327, type: !97)
!3235 = !DILocation(line: 0, scope: !3228)
!3236 = !DILocation(line: 327, column: 30, scope: !3228)
!3237 = !DILocation(line: 0, scope: !2885, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 327, column: 18, scope: !3228)
!3239 = !DILocation(line: 0, scope: !2892, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 55, column: 25, scope: !2885, inlinedAt: !3238)
!3241 = !DILocation(line: 57, column: 26, scope: !2892, inlinedAt: !3240)
!3242 = !DILocation(line: 0, scope: !2852, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 55, column: 10, scope: !2885, inlinedAt: !3238)
!3244 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !3243)
!3245 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !3243)
!3246 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !3243)
!3247 = !DILocation(line: 328, column: 3, scope: !3228)
!3248 = !DILocation(line: 328, column: 13, scope: !3228)
!3249 = !DILocation(line: 0, scope: !3196, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 329, column: 10, scope: !3228)
!3251 = !DILocation(line: 29, column: 10, scope: !3196, inlinedAt: !3250)
!3252 = !DILocation(line: 329, column: 3, scope: !3228)
!3253 = distinct !DISubprogram(name: "xstrdup", scope: !650, file: !650, line: 335, type: !903, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3254)
!3254 = !{!3255}
!3255 = !DILocalVariable(name: "string", arg: 1, scope: !3253, file: !650, line: 335, type: !75)
!3256 = !DILocation(line: 0, scope: !3253)
!3257 = !DILocation(line: 337, column: 27, scope: !3253)
!3258 = !DILocation(line: 337, column: 43, scope: !3253)
!3259 = !DILocation(line: 0, scope: !3180, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 337, column: 10, scope: !3253)
!3261 = !DILocation(line: 0, scope: !2871, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 312, column: 18, scope: !3180, inlinedAt: !3260)
!3263 = !DILocation(line: 49, column: 25, scope: !2871, inlinedAt: !3262)
!3264 = !DILocation(line: 0, scope: !2852, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 49, column: 10, scope: !2871, inlinedAt: !3262)
!3266 = !DILocation(line: 39, column: 8, scope: !2859, inlinedAt: !3265)
!3267 = !DILocation(line: 39, column: 7, scope: !2852, inlinedAt: !3265)
!3268 = !DILocation(line: 40, column: 5, scope: !2859, inlinedAt: !3265)
!3269 = !DILocation(line: 0, scope: !3196, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 312, column: 10, scope: !3180, inlinedAt: !3260)
!3271 = !DILocation(line: 29, column: 10, scope: !3196, inlinedAt: !3270)
!3272 = !DILocation(line: 337, column: 3, scope: !3253)
!3273 = distinct !DISubprogram(name: "xalloc_die", scope: !614, file: !614, line: 32, type: !360, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !3274)
!3274 = !{!3275}
!3275 = !DILocalVariable(name: "__errstatus", scope: !3276, file: !614, line: 34, type: !3277)
!3276 = distinct !DILexicalBlock(scope: !3273, file: !614, line: 34, column: 3)
!3277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!3278 = !DILocation(line: 34, column: 3, scope: !3276)
!3279 = !DILocation(line: 0, scope: !3276)
!3280 = !DILocation(line: 40, column: 3, scope: !3273)
!3281 = distinct !DISubprogram(name: "close_stream", scope: !687, file: !687, line: 55, type: !3282, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3318)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!99, !3284}
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3286)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3287)
!3287 = !{!3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3286, file: !235, line: 51, baseType: !99, size: 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3286, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3286, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3286, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3286, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3286, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3286, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3286, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3286, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3286, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3286, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3286, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3286, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3286, file: !235, line: 70, baseType: !3302, size: 64, offset: 832)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3286, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3286, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3286, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3286, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3286, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3286, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3286, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3286, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3286, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3286, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3286, file: !235, line: 93, baseType: !3302, size: 64, offset: 1344)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3286, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3286, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3286, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3286, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!3318 = !{!3319, !3320, !3322, !3323}
!3319 = !DILocalVariable(name: "stream", arg: 1, scope: !3281, file: !687, line: 55, type: !3284)
!3320 = !DILocalVariable(name: "some_pending", scope: !3281, file: !687, line: 57, type: !3321)
!3321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!3322 = !DILocalVariable(name: "prev_fail", scope: !3281, file: !687, line: 58, type: !3321)
!3323 = !DILocalVariable(name: "fclose_fail", scope: !3281, file: !687, line: 59, type: !3321)
!3324 = !DILocation(line: 0, scope: !3281)
!3325 = !DILocation(line: 57, column: 30, scope: !3281)
!3326 = !DILocalVariable(name: "__stream", arg: 1, scope: !3327, file: !1147, line: 135, type: !3284)
!3327 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1147, file: !1147, line: 135, type: !3282, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3328)
!3328 = !{!3326}
!3329 = !DILocation(line: 0, scope: !3327, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 58, column: 27, scope: !3281)
!3331 = !DILocation(line: 137, column: 10, scope: !3327, inlinedAt: !3330)
!3332 = !{!1156, !741, i64 0}
!3333 = !DILocation(line: 58, column: 43, scope: !3281)
!3334 = !DILocation(line: 59, column: 29, scope: !3281)
!3335 = !DILocation(line: 59, column: 45, scope: !3281)
!3336 = !DILocation(line: 69, column: 17, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3281, file: !687, line: 69, column: 7)
!3338 = !DILocation(line: 57, column: 50, scope: !3281)
!3339 = !DILocation(line: 69, column: 33, scope: !3337)
!3340 = !DILocation(line: 69, column: 53, scope: !3337)
!3341 = !DILocation(line: 69, column: 59, scope: !3337)
!3342 = !DILocation(line: 69, column: 7, scope: !3281)
!3343 = !DILocation(line: 71, column: 11, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3337, file: !687, line: 70, column: 5)
!3345 = !DILocation(line: 72, column: 9, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3344, file: !687, line: 71, column: 11)
!3347 = !DILocation(line: 72, column: 15, scope: !3346)
!3348 = !DILocation(line: 77, column: 1, scope: !3281)
!3349 = !DISubprogram(name: "__fpending", scope: !3350, file: !3350, line: 75, type: !3351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3350 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!101, !3284}
!3353 = distinct !DISubprogram(name: "rpl_fclose", scope: !689, file: !689, line: 58, type: !3354, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3390)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!99, !3356}
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3358)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3359)
!3359 = !{!3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3358, file: !235, line: 51, baseType: !99, size: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3358, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3358, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3358, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3358, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3358, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3358, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3358, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3358, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3358, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3358, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3358, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3358, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3358, file: !235, line: 70, baseType: !3374, size: 64, offset: 832)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3358, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3358, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3358, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3358, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3358, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3358, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3358, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3358, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3358, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3358, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3358, file: !235, line: 93, baseType: !3374, size: 64, offset: 1344)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3358, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3358, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3358, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3358, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!3390 = !{!3391, !3392, !3393, !3394}
!3391 = !DILocalVariable(name: "fp", arg: 1, scope: !3353, file: !689, line: 58, type: !3356)
!3392 = !DILocalVariable(name: "saved_errno", scope: !3353, file: !689, line: 60, type: !99)
!3393 = !DILocalVariable(name: "fd", scope: !3353, file: !689, line: 63, type: !99)
!3394 = !DILocalVariable(name: "result", scope: !3353, file: !689, line: 74, type: !99)
!3395 = !DILocation(line: 0, scope: !3353)
!3396 = !DILocation(line: 63, column: 12, scope: !3353)
!3397 = !DILocation(line: 64, column: 10, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3353, file: !689, line: 64, column: 7)
!3399 = !DILocation(line: 64, column: 7, scope: !3353)
!3400 = !DILocation(line: 65, column: 12, scope: !3398)
!3401 = !DILocation(line: 65, column: 5, scope: !3398)
!3402 = !DILocation(line: 70, column: 9, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3353, file: !689, line: 70, column: 7)
!3404 = !DILocation(line: 70, column: 23, scope: !3403)
!3405 = !DILocation(line: 70, column: 33, scope: !3403)
!3406 = !DILocation(line: 70, column: 26, scope: !3403)
!3407 = !DILocation(line: 70, column: 59, scope: !3403)
!3408 = !DILocation(line: 71, column: 7, scope: !3403)
!3409 = !DILocation(line: 71, column: 10, scope: !3403)
!3410 = !DILocation(line: 70, column: 7, scope: !3353)
!3411 = !DILocation(line: 100, column: 12, scope: !3353)
!3412 = !DILocation(line: 105, column: 7, scope: !3353)
!3413 = !DILocation(line: 72, column: 19, scope: !3403)
!3414 = !DILocation(line: 105, column: 19, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3353, file: !689, line: 105, column: 7)
!3416 = !DILocation(line: 107, column: 13, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3415, file: !689, line: 106, column: 5)
!3418 = !DILocation(line: 109, column: 5, scope: !3417)
!3419 = !DILocation(line: 112, column: 1, scope: !3353)
!3420 = !DISubprogram(name: "fileno", scope: !898, file: !898, line: 809, type: !3354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3421 = !DISubprogram(name: "fclose", scope: !898, file: !898, line: 178, type: !3354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3422 = !DISubprogram(name: "__freading", scope: !3350, file: !3350, line: 51, type: !3354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3423 = !DISubprogram(name: "lseek", scope: !1027, file: !1027, line: 339, type: !3424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!257, !99, !257, !99}
!3426 = distinct !DISubprogram(name: "rpl_fflush", scope: !691, file: !691, line: 130, type: !3427, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !690, retainedNodes: !3463)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!99, !3429}
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3431)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3432)
!3432 = !{!3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3431, file: !235, line: 51, baseType: !99, size: 32)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3431, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3431, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3431, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3431, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3431, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3431, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3431, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3431, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3431, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3431, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3431, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3431, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3431, file: !235, line: 70, baseType: !3447, size: 64, offset: 832)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3431, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3431, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3431, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3431, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3431, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3431, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3431, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3431, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3431, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3431, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3431, file: !235, line: 93, baseType: !3447, size: 64, offset: 1344)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3431, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3431, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3431, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3431, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!3463 = !{!3464}
!3464 = !DILocalVariable(name: "stream", arg: 1, scope: !3426, file: !691, line: 130, type: !3429)
!3465 = !DILocation(line: 0, scope: !3426)
!3466 = !DILocation(line: 151, column: 14, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3426, file: !691, line: 151, column: 7)
!3468 = !DILocation(line: 151, column: 22, scope: !3467)
!3469 = !DILocation(line: 151, column: 27, scope: !3467)
!3470 = !DILocation(line: 151, column: 7, scope: !3426)
!3471 = !DILocation(line: 152, column: 12, scope: !3467)
!3472 = !DILocation(line: 152, column: 5, scope: !3467)
!3473 = !DILocalVariable(name: "fp", arg: 1, scope: !3474, file: !691, line: 42, type: !3429)
!3474 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !691, file: !691, line: 42, type: !3475, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !690, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{null, !3429}
!3477 = !{!3473}
!3478 = !DILocation(line: 0, scope: !3474, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 157, column: 3, scope: !3426)
!3480 = !DILocation(line: 44, column: 12, scope: !3481, inlinedAt: !3479)
!3481 = distinct !DILexicalBlock(scope: !3474, file: !691, line: 44, column: 7)
!3482 = !DILocation(line: 44, column: 19, scope: !3481, inlinedAt: !3479)
!3483 = !DILocation(line: 44, column: 7, scope: !3474, inlinedAt: !3479)
!3484 = !DILocation(line: 46, column: 5, scope: !3481, inlinedAt: !3479)
!3485 = !DILocation(line: 159, column: 10, scope: !3426)
!3486 = !DILocation(line: 159, column: 3, scope: !3426)
!3487 = !DILocation(line: 236, column: 1, scope: !3426)
!3488 = !DISubprogram(name: "fflush", scope: !898, file: !898, line: 230, type: !3427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3489 = distinct !DISubprogram(name: "rpl_fseeko", scope: !693, file: !693, line: 28, type: !3490, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !692, retainedNodes: !3527)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!99, !3492, !3526, !99}
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3494)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3495)
!3495 = !{!3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3494, file: !235, line: 51, baseType: !99, size: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3494, file: !235, line: 54, baseType: !97, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3494, file: !235, line: 55, baseType: !97, size: 64, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3494, file: !235, line: 56, baseType: !97, size: 64, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3494, file: !235, line: 57, baseType: !97, size: 64, offset: 256)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3494, file: !235, line: 58, baseType: !97, size: 64, offset: 320)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3494, file: !235, line: 59, baseType: !97, size: 64, offset: 384)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3494, file: !235, line: 60, baseType: !97, size: 64, offset: 448)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3494, file: !235, line: 61, baseType: !97, size: 64, offset: 512)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3494, file: !235, line: 64, baseType: !97, size: 64, offset: 576)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3494, file: !235, line: 65, baseType: !97, size: 64, offset: 640)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3494, file: !235, line: 66, baseType: !97, size: 64, offset: 704)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3494, file: !235, line: 68, baseType: !250, size: 64, offset: 768)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3494, file: !235, line: 70, baseType: !3510, size: 64, offset: 832)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3494, file: !235, line: 72, baseType: !99, size: 32, offset: 896)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3494, file: !235, line: 73, baseType: !99, size: 32, offset: 928)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3494, file: !235, line: 74, baseType: !257, size: 64, offset: 960)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3494, file: !235, line: 77, baseType: !100, size: 16, offset: 1024)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3494, file: !235, line: 78, baseType: !262, size: 8, offset: 1040)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3494, file: !235, line: 79, baseType: !39, size: 8, offset: 1048)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3494, file: !235, line: 81, baseType: !265, size: 64, offset: 1088)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3494, file: !235, line: 89, baseType: !268, size: 64, offset: 1152)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3494, file: !235, line: 91, baseType: !270, size: 64, offset: 1216)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3494, file: !235, line: 92, baseType: !273, size: 64, offset: 1280)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3494, file: !235, line: 93, baseType: !3510, size: 64, offset: 1344)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3494, file: !235, line: 94, baseType: !98, size: 64, offset: 1408)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3494, file: !235, line: 95, baseType: !101, size: 64, offset: 1472)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3494, file: !235, line: 96, baseType: !99, size: 32, offset: 1536)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3494, file: !235, line: 98, baseType: !280, size: 160, offset: 1568)
!3526 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !898, line: 63, baseType: !257)
!3527 = !{!3528, !3529, !3530, !3531}
!3528 = !DILocalVariable(name: "fp", arg: 1, scope: !3489, file: !693, line: 28, type: !3492)
!3529 = !DILocalVariable(name: "offset", arg: 2, scope: !3489, file: !693, line: 28, type: !3526)
!3530 = !DILocalVariable(name: "whence", arg: 3, scope: !3489, file: !693, line: 28, type: !99)
!3531 = !DILocalVariable(name: "pos", scope: !3532, file: !693, line: 123, type: !3526)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !693, line: 119, column: 5)
!3533 = distinct !DILexicalBlock(scope: !3489, file: !693, line: 55, column: 7)
!3534 = !DILocation(line: 0, scope: !3489)
!3535 = !DILocation(line: 55, column: 12, scope: !3533)
!3536 = !{!1156, !720, i64 16}
!3537 = !DILocation(line: 55, column: 33, scope: !3533)
!3538 = !{!1156, !720, i64 8}
!3539 = !DILocation(line: 55, column: 25, scope: !3533)
!3540 = !DILocation(line: 56, column: 7, scope: !3533)
!3541 = !DILocation(line: 56, column: 15, scope: !3533)
!3542 = !DILocation(line: 56, column: 37, scope: !3533)
!3543 = !{!1156, !720, i64 32}
!3544 = !DILocation(line: 56, column: 29, scope: !3533)
!3545 = !DILocation(line: 57, column: 7, scope: !3533)
!3546 = !DILocation(line: 57, column: 15, scope: !3533)
!3547 = !{!1156, !720, i64 72}
!3548 = !DILocation(line: 57, column: 29, scope: !3533)
!3549 = !DILocation(line: 55, column: 7, scope: !3489)
!3550 = !DILocation(line: 123, column: 26, scope: !3532)
!3551 = !DILocation(line: 123, column: 19, scope: !3532)
!3552 = !DILocation(line: 0, scope: !3532)
!3553 = !DILocation(line: 124, column: 15, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3532, file: !693, line: 124, column: 11)
!3555 = !DILocation(line: 124, column: 11, scope: !3532)
!3556 = !DILocation(line: 135, column: 19, scope: !3532)
!3557 = !DILocation(line: 136, column: 12, scope: !3532)
!3558 = !DILocation(line: 136, column: 20, scope: !3532)
!3559 = !{!1156, !1157, i64 144}
!3560 = !DILocation(line: 167, column: 7, scope: !3532)
!3561 = !DILocation(line: 169, column: 10, scope: !3489)
!3562 = !DILocation(line: 169, column: 3, scope: !3489)
!3563 = !DILocation(line: 170, column: 1, scope: !3489)
!3564 = !DISubprogram(name: "fseeko", scope: !898, file: !898, line: 736, type: !3565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!99, !3492, !257, !99}
!3567 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !621, file: !621, line: 100, type: !3568, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !624, retainedNodes: !3571)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!101, !1327, !75, !101, !3570}
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!3571 = !{!3572, !3573, !3574, !3575, !3576}
!3572 = !DILocalVariable(name: "pwc", arg: 1, scope: !3567, file: !621, line: 100, type: !1327)
!3573 = !DILocalVariable(name: "s", arg: 2, scope: !3567, file: !621, line: 100, type: !75)
!3574 = !DILocalVariable(name: "n", arg: 3, scope: !3567, file: !621, line: 100, type: !101)
!3575 = !DILocalVariable(name: "ps", arg: 4, scope: !3567, file: !621, line: 100, type: !3570)
!3576 = !DILocalVariable(name: "ret", scope: !3567, file: !621, line: 130, type: !101)
!3577 = !DILocation(line: 0, scope: !3567)
!3578 = !DILocation(line: 105, column: 9, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3567, file: !621, line: 105, column: 7)
!3580 = !DILocation(line: 105, column: 7, scope: !3567)
!3581 = !DILocation(line: 117, column: 10, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3567, file: !621, line: 117, column: 7)
!3583 = !DILocation(line: 117, column: 7, scope: !3567)
!3584 = !DILocation(line: 130, column: 16, scope: !3567)
!3585 = !DILocation(line: 135, column: 11, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3567, file: !621, line: 135, column: 7)
!3587 = !DILocation(line: 135, column: 25, scope: !3586)
!3588 = !DILocation(line: 135, column: 30, scope: !3586)
!3589 = !DILocation(line: 135, column: 7, scope: !3567)
!3590 = !DILocalVariable(name: "ps", arg: 1, scope: !3591, file: !1300, line: 1135, type: !3570)
!3591 = distinct !DISubprogram(name: "mbszero", scope: !1300, file: !1300, line: 1135, type: !3592, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !624, retainedNodes: !3594)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{null, !3570}
!3594 = !{!3590}
!3595 = !DILocation(line: 0, scope: !3591, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 137, column: 5, scope: !3586)
!3597 = !DILocalVariable(name: "__dest", arg: 1, scope: !3598, file: !1309, line: 57, type: !98)
!3598 = distinct !DISubprogram(name: "memset", scope: !1309, file: !1309, line: 57, type: !1310, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !624, retainedNodes: !3599)
!3599 = !{!3597, !3600, !3601}
!3600 = !DILocalVariable(name: "__ch", arg: 2, scope: !3598, file: !1309, line: 57, type: !99)
!3601 = !DILocalVariable(name: "__len", arg: 3, scope: !3598, file: !1309, line: 57, type: !101)
!3602 = !DILocation(line: 0, scope: !3598, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 1137, column: 3, scope: !3591, inlinedAt: !3596)
!3604 = !DILocation(line: 59, column: 10, scope: !3598, inlinedAt: !3603)
!3605 = !DILocation(line: 137, column: 5, scope: !3586)
!3606 = !DILocation(line: 138, column: 11, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3567, file: !621, line: 138, column: 7)
!3608 = !DILocation(line: 138, column: 7, scope: !3567)
!3609 = !DILocation(line: 139, column: 5, scope: !3607)
!3610 = !DILocation(line: 143, column: 26, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3567, file: !621, line: 143, column: 7)
!3612 = !DILocation(line: 143, column: 41, scope: !3611)
!3613 = !DILocation(line: 143, column: 7, scope: !3567)
!3614 = !DILocation(line: 145, column: 15, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !621, line: 145, column: 11)
!3616 = distinct !DILexicalBlock(scope: !3611, file: !621, line: 144, column: 5)
!3617 = !DILocation(line: 145, column: 11, scope: !3616)
!3618 = !DILocation(line: 146, column: 32, scope: !3615)
!3619 = !DILocation(line: 146, column: 16, scope: !3615)
!3620 = !DILocation(line: 146, column: 14, scope: !3615)
!3621 = !DILocation(line: 146, column: 9, scope: !3615)
!3622 = !DILocation(line: 286, column: 1, scope: !3567)
!3623 = !DISubprogram(name: "mbsinit", scope: !3624, file: !3624, line: 293, type: !3625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3624 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!99, !3627}
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!3629 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !695, file: !695, line: 27, type: !2836, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !3630)
!3630 = !{!3631, !3632, !3633, !3634}
!3631 = !DILocalVariable(name: "ptr", arg: 1, scope: !3629, file: !695, line: 27, type: !98)
!3632 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3629, file: !695, line: 27, type: !101)
!3633 = !DILocalVariable(name: "size", arg: 3, scope: !3629, file: !695, line: 27, type: !101)
!3634 = !DILocalVariable(name: "nbytes", scope: !3629, file: !695, line: 29, type: !101)
!3635 = !DILocation(line: 0, scope: !3629)
!3636 = !DILocation(line: 30, column: 7, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3629, file: !695, line: 30, column: 7)
!3638 = !DILocation(line: 30, column: 7, scope: !3629)
!3639 = !DILocation(line: 32, column: 7, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3637, file: !695, line: 31, column: 5)
!3641 = !DILocation(line: 32, column: 13, scope: !3640)
!3642 = !DILocation(line: 33, column: 7, scope: !3640)
!3643 = !DILocalVariable(name: "ptr", arg: 1, scope: !3644, file: !2928, line: 2057, type: !98)
!3644 = distinct !DISubprogram(name: "rpl_realloc", scope: !2928, file: !2928, line: 2057, type: !2920, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !3645)
!3645 = !{!3643, !3646}
!3646 = !DILocalVariable(name: "size", arg: 2, scope: !3644, file: !2928, line: 2057, type: !101)
!3647 = !DILocation(line: 0, scope: !3644, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 37, column: 10, scope: !3629)
!3649 = !DILocation(line: 2059, column: 24, scope: !3644, inlinedAt: !3648)
!3650 = !DILocation(line: 2059, column: 10, scope: !3644, inlinedAt: !3648)
!3651 = !DILocation(line: 37, column: 3, scope: !3629)
!3652 = !DILocation(line: 38, column: 1, scope: !3629)
!3653 = distinct !DISubprogram(name: "hard_locale", scope: !639, file: !639, line: 28, type: !3654, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3656)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!218, !99}
!3656 = !{!3657, !3658}
!3657 = !DILocalVariable(name: "category", arg: 1, scope: !3653, file: !639, line: 28, type: !99)
!3658 = !DILocalVariable(name: "locale", scope: !3653, file: !639, line: 30, type: !3659)
!3659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3660)
!3660 = !{!3661}
!3661 = !DISubrange(count: 257)
!3662 = distinct !DIAssignID()
!3663 = !DILocation(line: 0, scope: !3653)
!3664 = !DILocation(line: 30, column: 3, scope: !3653)
!3665 = !DILocation(line: 32, column: 7, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3653, file: !639, line: 32, column: 7)
!3667 = !DILocation(line: 32, column: 7, scope: !3653)
!3668 = !DILocalVariable(name: "__s1", arg: 1, scope: !3669, file: !753, line: 1359, type: !75)
!3669 = distinct !DISubprogram(name: "streq", scope: !753, file: !753, line: 1359, type: !754, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !3670)
!3670 = !{!3668, !3671}
!3671 = !DILocalVariable(name: "__s2", arg: 2, scope: !3669, file: !753, line: 1359, type: !75)
!3672 = !DILocation(line: 0, scope: !3669, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 35, column: 9, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3653, file: !639, line: 35, column: 7)
!3675 = !DILocation(line: 1361, column: 11, scope: !3669, inlinedAt: !3673)
!3676 = !DILocation(line: 35, column: 29, scope: !3674)
!3677 = !DILocation(line: 0, scope: !3669, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 35, column: 32, scope: !3674)
!3679 = !DILocation(line: 1361, column: 11, scope: !3669, inlinedAt: !3678)
!3680 = !DILocation(line: 1361, column: 10, scope: !3669, inlinedAt: !3678)
!3681 = !DILocation(line: 35, column: 7, scope: !3653)
!3682 = !DILocation(line: 46, column: 3, scope: !3653)
!3683 = !DILocation(line: 47, column: 1, scope: !3653)
!3684 = distinct !DISubprogram(name: "setlocale_null_r", scope: !701, file: !701, line: 154, type: !3685, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3687)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!99, !99, !97, !101}
!3687 = !{!3688, !3689, !3690}
!3688 = !DILocalVariable(name: "category", arg: 1, scope: !3684, file: !701, line: 154, type: !99)
!3689 = !DILocalVariable(name: "buf", arg: 2, scope: !3684, file: !701, line: 154, type: !97)
!3690 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3684, file: !701, line: 154, type: !101)
!3691 = !DILocation(line: 0, scope: !3684)
!3692 = !DILocation(line: 159, column: 10, scope: !3684)
!3693 = !DILocation(line: 159, column: 3, scope: !3684)
!3694 = distinct !DISubprogram(name: "setlocale_null", scope: !701, file: !701, line: 186, type: !3695, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !3697)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!75, !99}
!3697 = !{!3698}
!3698 = !DILocalVariable(name: "category", arg: 1, scope: !3694, file: !701, line: 186, type: !99)
!3699 = !DILocation(line: 0, scope: !3694)
!3700 = !DILocation(line: 189, column: 10, scope: !3694)
!3701 = !DILocation(line: 189, column: 3, scope: !3694)
!3702 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !703, file: !703, line: 35, type: !3695, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3703)
!3703 = !{!3704, !3705}
!3704 = !DILocalVariable(name: "category", arg: 1, scope: !3702, file: !703, line: 35, type: !99)
!3705 = !DILocalVariable(name: "result", scope: !3702, file: !703, line: 37, type: !75)
!3706 = !DILocation(line: 0, scope: !3702)
!3707 = !DILocation(line: 37, column: 24, scope: !3702)
!3708 = !DILocation(line: 62, column: 3, scope: !3702)
!3709 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !703, file: !703, line: 66, type: !3685, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3710)
!3710 = !{!3711, !3712, !3713, !3714, !3715}
!3711 = !DILocalVariable(name: "category", arg: 1, scope: !3709, file: !703, line: 66, type: !99)
!3712 = !DILocalVariable(name: "buf", arg: 2, scope: !3709, file: !703, line: 66, type: !97)
!3713 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3709, file: !703, line: 66, type: !101)
!3714 = !DILocalVariable(name: "result", scope: !3709, file: !703, line: 111, type: !75)
!3715 = !DILocalVariable(name: "length", scope: !3716, file: !703, line: 125, type: !101)
!3716 = distinct !DILexicalBlock(scope: !3717, file: !703, line: 124, column: 5)
!3717 = distinct !DILexicalBlock(scope: !3709, file: !703, line: 113, column: 7)
!3718 = !DILocation(line: 0, scope: !3709)
!3719 = !DILocation(line: 0, scope: !3702, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 111, column: 24, scope: !3709)
!3721 = !DILocation(line: 37, column: 24, scope: !3702, inlinedAt: !3720)
!3722 = !DILocation(line: 113, column: 14, scope: !3717)
!3723 = !DILocation(line: 113, column: 7, scope: !3709)
!3724 = !DILocation(line: 116, column: 19, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3726, file: !703, line: 116, column: 11)
!3726 = distinct !DILexicalBlock(scope: !3717, file: !703, line: 114, column: 5)
!3727 = !DILocation(line: 116, column: 11, scope: !3726)
!3728 = !DILocation(line: 120, column: 16, scope: !3725)
!3729 = !DILocation(line: 120, column: 9, scope: !3725)
!3730 = !DILocation(line: 125, column: 23, scope: !3716)
!3731 = !DILocation(line: 0, scope: !3716)
!3732 = !DILocation(line: 126, column: 18, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3716, file: !703, line: 126, column: 11)
!3734 = !DILocation(line: 126, column: 11, scope: !3716)
!3735 = !DILocation(line: 128, column: 39, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3733, file: !703, line: 127, column: 9)
!3737 = !DILocalVariable(name: "__dest", arg: 1, scope: !3738, file: !1309, line: 26, type: !3199)
!3738 = distinct !DISubprogram(name: "memcpy", scope: !1309, file: !1309, line: 26, type: !3197, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3739)
!3739 = !{!3737, !3740, !3741}
!3740 = !DILocalVariable(name: "__src", arg: 2, scope: !3738, file: !1309, line: 26, type: !924)
!3741 = !DILocalVariable(name: "__len", arg: 3, scope: !3738, file: !1309, line: 26, type: !101)
!3742 = !DILocation(line: 0, scope: !3738, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 128, column: 11, scope: !3736)
!3744 = !DILocation(line: 29, column: 10, scope: !3738, inlinedAt: !3743)
!3745 = !DILocation(line: 129, column: 11, scope: !3736)
!3746 = !DILocation(line: 133, column: 23, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3748, file: !703, line: 133, column: 15)
!3748 = distinct !DILexicalBlock(scope: !3733, file: !703, line: 132, column: 9)
!3749 = !DILocation(line: 133, column: 15, scope: !3748)
!3750 = !DILocation(line: 138, column: 44, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3747, file: !703, line: 134, column: 13)
!3752 = !DILocation(line: 0, scope: !3738, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 138, column: 15, scope: !3751)
!3754 = !DILocation(line: 29, column: 10, scope: !3738, inlinedAt: !3753)
!3755 = !DILocation(line: 139, column: 15, scope: !3751)
!3756 = !DILocation(line: 139, column: 32, scope: !3751)
!3757 = !DILocation(line: 140, column: 13, scope: !3751)
!3758 = !DILocation(line: 0, scope: !3717)
!3759 = !DILocation(line: 145, column: 1, scope: !3709)
